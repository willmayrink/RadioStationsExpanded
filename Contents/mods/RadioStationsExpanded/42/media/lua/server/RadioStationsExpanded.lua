-- Initialize mod namespace
local RadioStationsExpanded = RadioStationsExpanded or {}
RadioStationsExpanded.currentMessage = nil -- Store the currently airing message

-- Initializing cache
local RadioExpandedCache = {}

-- Load messages from Messages.lua
local complexMessages = require("Messages")

-- Add custom channels to DynamicRadio.channels
DynamicRadio.channels = DynamicRadio.channels or {} -- Preserve existing channels
table.insert(DynamicRadio.channels, {
    name = "KY Simplex Calling",
    freq = 88000, -- 88.0 MHz
    category = "Survivor", -- Maps to ChannelCategory.Other
    uuid = "SURV-001",
    register = true,
    airCounterMultiplier = 1.5
})

-- Helper: table.contains (for arrays; we use sets now, but backward compat)
local function tableContains(tbl, value)
    for _, v in ipairs(tbl) do
        if v == value then
            return true
        end
    end
    return false
end

-- Helper: table size for sets
local function tableSize(tbl)
    local count = 0
    for _ in pairs(tbl) do
        count = count + 1
    end
    return count
end

local function initModData()
    local modData = ModData.getOrCreate("RadioStationsExpanded") 
    if not modData.gameStage then
        modData.gameStage = "early"
    end
    if not modData.playedMessages then
        modData.playedMessages = {} -- Now a set { [key] = true }
    end
    if not modData.spawnedMessages then
        modData.spawnedMessages = {} -- Per-key spawn flags { [key] = true }
    end
    print("Initialized RadioStationsExpanded mod data.")
    print("Played messages count: " .. tableSize(modData.playedMessages))
    RadioExpandedCache = modData
end

local function calcGameStage(days)
    if days <= 3 then
        return "early"
    elseif days <= 14 then
        return "mid"
    elseif days <= 60 then
        return "late"
    else
        return "ultralate"
    end
end

local function updateGameStage()
    local daysSurvived = getGameTime():getDaysSurvived()
    local gameStage = calcGameStage(daysSurvived) 
    local modData = ModData.getOrCreate("RadioStationsExpanded")
    
    -- Only update and transmit if the stage actually changed (saves minor overhead in MP)
    if modData.gameStage ~= gameStage then
        modData.gameStage = gameStage
        ModData.transmit("RadioStationsExpanded")  -- Important for multiplayer sync
    end
end

local function onNewGameReset()
    local modData = ModData.getOrCreate("RadioStationsExpanded")
    modData.playedMessages = {}
    modData.spawnedMessages = {}
    modData.gameStage = "early"
    ModData.getOrCreate("RadioStationsExpanded").playedMessages = modData.playedMessages
    ModData.getOrCreate("RadioStationsExpanded").spawnedMessages = modData.spawnedMessages
    print("RSE: Reset data for new game.")
    initModData() -- Re-cache
end

local function createSpawns(_airedMessage)
    local messageSpawn = _airedMessage -- Assume copy from playMessage
    local key = messageSpawn.messageKey
    local modData = RadioExpandedCache

    -- Check if already spawned (persists across restarts)
    if modData.spawnedMessages[key] then
        print("RSE: Spawns for key " .. key .. " already done; skipping.")
        return
    end

    if messageSpawn and messageSpawn.coordinates and messageSpawn.spawnedItems then
        local square = getSquare(messageSpawn.coordinates.x, messageSpawn.coordinates.y, messageSpawn.coordinates.z)
        if square then
            for _, itemId in ipairs(messageSpawn.spawnedItems) do
                local spotX = (ZombRand(1, 35)) / 10
                local spotY = (ZombRand(1, 35)) / 10
                print("spotX is: " .. spotX .. " spotY is: " .. spotY)
                if square:AddWorldInventoryItem(itemId, spotX, spotY, 0) then
                    print("Spawned item: " .. itemId .. " at X: " .. messageSpawn.coordinates.x .. " Y: " ..
                              messageSpawn.coordinates.y)
                end
            end
            if messageSpawn.spawnsCorpses then
                local roomDef = square:getRoom():getRoomDef()
                if roomDef then
                    print("Spawning " .. messageSpawn.amountCorpses .. " corpses in room: " .. tostring(roomDef))
                    VirtualZombieManager.instance:addZombiesToMap(messageSpawn.amountCorpses, roomDef, false)
                else
                    for i = 1, messageSpawn.amountCorpses do
                        print("It's a world zombie spawn at " .. messageSpawn.coordinates.x .. "," ..
                                  messageSpawn.coordinates.y .. ", current zombie count: " .. i)
                        VirtualZombieManager.instance:createRealZombieNow(messageSpawn.coordinates.x,
                            messageSpawn.coordinates.y, messageSpawn.coordinates.z)
                    end
                end
            end
        else
            print("Invalid square at X: " .. messageSpawn.coordinates.x .. " Y: " .. messageSpawn.coordinates.y)
        end
    else
        print("No items to spawn for key " .. key)
    end

    -- Mark spawns done (persists)
    modData.spawnedMessages[key] = true
    ModData.getOrCreate("RadioStationsExpanded").spawnedMessages = modData.spawnedMessages
    print("RSE: Marked spawns for key " .. key .. " as done.")
end

local function verifyRadioMessage()
    local current = RadioStationsExpanded.currentMessage
    if current then -- Always check if broadcast is active
        if current.triggeringSpawns then
            createSpawns(current)
        end
        current.triggeringSpawns = false -- Reset on copy (safe)

        -- Mark as played post-air (completion)
        local key = current.messageKey
        local modData = RadioExpandedCache
        if not modData.playedMessages[key] then -- Double-check (edge: multi-call)
            modData.playedMessages[key] = true
            ModData.getOrCreate("RadioStationsExpanded").playedMessages = modData.playedMessages
            print("RSE: Completed/Marked key " .. key .. " as played.")
        end
        -- Optional: Clear currentMessage after full broadcast (prevents stale)
        -- RadioStationsExpanded.currentMessage = nil  -- Uncomment if broadcasts overlap rarely
    end
end

local function playMessage()
    local radioChannel = DynamicRadio.cache["SURV-001"]
    if not radioChannel then
        print("Failed to instance the channel.")
        return
    end
    print("Channel ready.")

    local modData = RadioExpandedCache
    -- Filter unplayed (avoids loop/re-picks)
    local unplayed = {}
    for _, msg in ipairs(complexMessages) do
        local key = msg.messageKey
        if key and not modData.playedMessages[key] then
            table.insert(unplayed, msg)
        end
    end

    if #unplayed == 0 then
        print("RSE: All messages played; skipping.")
        -- Optional cycle reset: modData.playedMessages = {}; ModData.getOrCreate("RadioStationsExpanded").playedMessages = modData.playedMessages
        return
    end

    -- Random from unplayed
    local randIndex = ZombRand(1, #unplayed + 1)
    local originalMsg = unplayed[randIndex]
    local key = originalMsg.messageKey

    -- NO pre-air mark here (moved to verify for completion)

    -- Copy for runtime flags (no global mutation)
    local airedMessage = {}
    for k, v in pairs(originalMsg) do
        airedMessage[k] = v
    end
    airedMessage.triggeringSpawns = originalMsg.triggeringSpawns or false

    local broadCast = RadioBroadCast.new("SURV channel - ID: " .. tostring(ZombRand(1, 99999)), -1, -1)
    if not broadCast then
        print("Failed to create broadcast.")
        return -- No unmark needed (wasn't marked)
    end

    RadioStationsExpanded.currentMessage = airedMessage -- Update global
    for _, line in ipairs(airedMessage.lines) do
        if line then
            broadCast:AddRadioLine(line)
        end
    end
    radioChannel:setAiringBroadcast(broadCast)
    print("RSE: Aired key " .. key .. " (" .. (#unplayed - 1) .. " left; marking on completion).")
end

local lastBroadcastDay = -1
local function scheduledBroadcast()
    local gameTime = getGameTime()
    local day = gameTime:getDay()
    local hour = gameTime:getHour()
    local minute = gameTime:getMinutes()

    -- Precise: 8-11 AM window, once per day
    if day ~= lastBroadcastDay and hour >= 8 and hour < 11 and minute == 0 and ZombRand(1, 20) == 1 then
        lastBroadcastDay = day
        playMessage()
    end
end

-- Events (using named functions)
Events.OnGameStart.Add(initModData)
Events.OnNewGame.Add(onNewGameReset)
Events.EveryTenMinutes.Add(scheduledBroadcast)
Events.OnDeviceText.Add(verifyRadioMessage)
