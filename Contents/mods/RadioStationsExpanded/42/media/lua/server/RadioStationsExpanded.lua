local RadioStationsExpanded = RadioStationsExpanded or {}
RadioStationsExpanded.currentMessage = nil
RadioStationsExpanded.deviceData = nil -- Global for device data.
RadioStationsExpanded.currentBroadcast = nil

local RadioExpandedCache = {}
local complexMessages = require("Messages")
local lastBroadcastDay = -1

-- ===================================================================|
-- 1. Add your survivor channel                                       |
-- ===================================================================|
DynamicRadio.channels = DynamicRadio.channels or {}
table.insert(DynamicRadio.channels, {
    name = "KY Simplex Calling",
    freq = 88000,
    category = "Survivor",
    uuid = "SURV-001",
    register = true,
    airCounterMultiplier = 1.5
})

-- ===================================================================|
-- 2. ModData (played & spawned tracking)                             |
-- ===================================================================|
local function initModData()
    local modData = ModData.getOrCreate("RadioStationsExpanded")
    modData.playedMessages = modData.playedMessages or {}
    modData.spawnedMessages = modData.spawnedMessages or {}
    RadioExpandedCache = modData
end

local function resetForNewGame()
    local modData = ModData.getOrCreate("RadioStationsExpanded")
    modData.playedMessages = {}
    modData.spawnedMessages = {}
    RadioExpandedCache = modData
end

-- ===================================================================|
-- 3. Item / zombie spawning                                          |
-- ===================================================================|
local function createSpawns(message)
    local key = message.messageKey
    if RadioExpandedCache.spawnedMessages[key] then
        return
    end

    if not message.coordinates then
        RadioExpandedCache.spawnedMessages[key] = true
        return
    end

    local x, y, z = message.coordinates.x, message.coordinates.y, message.coordinates.z
    local square = getSquare(x, y, z)
    if not square then
        RadioExpandedCache.spawnedMessages[key] = true
        return
    end

    -- Items
    if message.spawnedItems then
        for _, itemType in ipairs(message.spawnedItems) do
            local offX = ZombRand(11) / 10 -- 0.0–1.0
            local offY = ZombRand(11) / 10
            square:AddWorldInventoryItem(itemType, offX, offY, 0)
        end
    end

    -- Zombies / corpses
    if message.spawnsZombies and message.amountZombies and message.amountZombies > 0 then
        local room = square:getRoom()
        if room then
            VirtualZombieManager.instance:addZombiesToMap(message.amountZombies, room:getRoomDef(), false)
        else
            for i = 1, message.amountZombies do
                local zx = x + ZombRand(-1, 2)
                local zy = y + ZombRand(-1, 2)
                VirtualZombieManager.instance:createRealZombieNow(zx, zy, z)
            end
        end
    end

    RadioExpandedCache.spawnedMessages[key] = true
    ModData.transmit("RadioStationsExpanded")
end

-- =================================================================================|
-- 4. MAIN: Playing sounds through radio. Please God, make this work.               |
-- =================================================================================|
local function playingSoundsThroughRadio(deviceData, soundsToPlay)
    local count = 1;
    if not deviceData then
        print("No device data available for playing sounds.")
        return
    end

    for _, soundName in ipairs(soundsToPlay) do
        deviceData:playSoundSend(soundName, true)
        count = count + 1
    end
    print("Played " .. tostring(count - 1) .. " sounds through the radio.")
end

-- ==================================================================================|
-- 5. MAIN: Called every time a radio displays a line of our broadcast               |
-- ==================================================================================|
-- ==================================================================================|
-- 5. MAIN: Called every time a radio displays a line of our broadcast               |
-- ==================================================================================|
local function onDeviceText(guid, codes, x, y, z, text, device)
    local channel = DynamicRadio.cache["SURV-001"]
    local deviceData = device:getDeviceData()
    local msg = RadioStationsExpanded.currentMessage

    -- Logic for equipped radio device on player
    if deviceData:getChannel() == 88000 and deviceData:isReceivingSignal() then

        if channel:getAiringBroadcast() then
            print("A broadcast is airing on SURV-001")
            RadioStationsExpanded.currentBroadcast = channel:getAiringBroadcast()
            
            if msg and msg.triggeringSpawns then
                createSpawns(msg)
            end
            
            local broadcastTotalLines = channel:getAiringBroadcast():getLines():size()
            local broadcastCurrentLine = channel:getAiringBroadcast():getCurrentLineNumber() + 1
            
            if broadcastCurrentLine == broadcastTotalLines then
                print("Broadcast has reached the final line. BOOM")
                print("These are the sounds we want to play:" ..
                          tostring(RadioStationsExpanded.currentMessage.soundsToPlay))

                -- 4.1 Play sounds through radio
                playingSoundsThroughRadio(RadioStationsExpanded.deviceData,
                    RadioStationsExpanded.currentMessage.soundsToPlay)
                
                -- 4.3 Mark message as played e SINCRONIZA
                if msg and msg.messageKey then
                    RadioExpandedCache.playedMessages[msg.messageKey] = true
                    ModData.transmit("RadioStationsExpanded")
                end
            end

            if not RadioStationsExpanded.currentBroadcast:getNextLine() then
                print("This broadcast has no next line.")
            end
            
        else
            RadioStationsExpanded.currentBroadcast = nil
            print("No broadcast is airing on SURV-001")
            return
        end

    -- Logic for radio in the world (on a square)
    else
        local square = getCell():getOrCreateGridSquare(x, y, z)
        if square then
            for i = 0, square:getSpecialObjects():size() - 1 do
                local obj = square:getSpecialObjects():get(i)
                if obj and obj:getDeviceData() then
                    RadioStationsExpanded.deviceData = obj:getDeviceData()
                    print("Device data found from square objects. [using square]")
                    break
                end
            end
        else
            print("No square found at coordinates: " .. tostring(x) .. ", " .. tostring(y) .. ", " .. tostring(z))
            return
        end
        
        local deviceDataSquare = RadioStationsExpanded.deviceData
        if deviceDataSquare and deviceDataSquare:getChannel() == 88000 and deviceDataSquare:isReceivingSignal() then
            if channel:getAiringBroadcast() then
                print("A broadcast is airing on SURV-001 [using square]")
                RadioStationsExpanded.currentBroadcast = channel:getAiringBroadcast()

                if msg and msg.triggeringSpawns then
                    createSpawns(msg)
                end

                local broadcastTotalLines = channel:getAiringBroadcast():getLines():size()
                local broadcastCurrentLine = channel:getAiringBroadcast():getCurrentLineNumber() + 1
                
                if broadcastCurrentLine == broadcastTotalLines then
                    print("Broadcast has reached the final line. BOOM [using square]")
                    print("These are the sounds we want to play:" ..
                              tostring(RadioStationsExpanded.currentMessage.soundsToPlay))

                    -- Play sounds
                    playingSoundsThroughRadio(RadioStationsExpanded.deviceData,
                        RadioStationsExpanded.currentMessage.soundsToPlay)
                    
                    -- Mark as played e SINCRONIZA
                    if msg and msg.messageKey then
                        RadioExpandedCache.playedMessages[msg.messageKey] = true
                        ModData.transmit("RadioStationsExpanded")
                    end
                end

                if not RadioStationsExpanded.currentBroadcast:getNextLine() then
                    print("This broadcast has no next line. [using square]")
                end
                
            else
                RadioStationsExpanded.currentBroadcast = nil
                print("No broadcast is airing on SURV-001 [using square]")
                return
            end
        end
    end
end

-- ==================================================================================|
-- 5. Normal scheduled broadcast                                                     |
-- ==================================================================================|

local function scheduledBroadcast()
    local gt = getGameTime()
    local day = gt:getDay()
    local hour = gt:getHour()
    local minute = gt:getMinutes()

    if day ~= lastBroadcastDay and hour >= 8 and hour < 11 and minute < 10 and ZombRand(20) == 0 then
        lastBroadcastDay = day

        local channel = DynamicRadio.cache["SURV-001"]
        if not channel then
            return
        end

        local unplayed = {}
        for _, m in ipairs(complexMessages) do
            if m.messageKey and not RadioExpandedCache.playedMessages[m.messageKey] then
                table.insert(unplayed, m)
            end
        end
        if #unplayed == 0 then
            return
        end

        local template = unplayed[ZombRand(#unplayed) + 1]
        local instance = {}
        for k, v in pairs(template) do
            instance[k] = v
        end

        instance.triggeringSpawns = template.triggeringSpawns or false
        instance.soundsToPlay = template.soundsToPlay -- can be nil or { "MetaPistol1", "MetaHelicopter" }

        local bc = RadioBroadCast.new("KY Simplex – " .. ZombRand(10000, 99999), -1, -1)
        for _, line in ipairs(instance.lines or {}) do
            bc:AddRadioLine(line)
        end
        RadioStationsExpanded.currentMessage = instance

        channel:setAiringBroadcast(bc)
    end
end

-- ==================================================================================|
-- 6. Force message (debug / quests)                                                 |
-- ==================================================================================|
function RadioStationsExpanded.ForceMessage(index)
    local channel = DynamicRadio.cache["SURV-001"]
    if not channel then
        print("[RSE] Channel missing");
        return
    end

    local template = complexMessages[index]
    if not template then
        print("[RSE] Message index " .. index .. " missing");
        return
    end

    local instance = {}
    for k, v in pairs(template) do
        instance[k] = v
    end

    instance.triggeringSpawns = template.triggeringSpawns or false
    instance.soundsToPlay = template.soundsToPlay or nil

    local bc = RadioBroadCast.new("FORCED – " .. (template.messageKey or "Unknown"), -1, -1)
    for _, line in ipairs(instance.lines or {}) do
        bc:AddRadioLine(line)
    end

    RadioStationsExpanded.currentMessage = instance
    channel:setAiringBroadcast(bc)
    print("[RSE] Forced broadcast: " .. RadioStationsExpanded.currentMessage.messageKey .. " with sounds: " ..
              tostring(RadioStationsExpanded.currentMessage.soundsToPlay))
end

-- ==================================================================================|
-- 6. Reset All Messages (debug)                                                     |
-- ==================================================================================|
function RadioStationsExpanded.ResetAllMessages()
    local modData = ModData.getOrCreate("RadioStationsExpanded")

    -- Clear the tracking tables
    modData.playedMessages = {}
    modData.spawnedMessages = {}

    -- Force refresh the local cache
    RadioExpandedCache = modData

    -- Clear current broadcast so it doesn't glitch
    local channel = DynamicRadio.cache["SURV-001"]
    if channel and channel:getAiringBroadcast() then
        channel:setAiringBroadcast(nil)
    end

    RadioStationsExpanded.currentMessage = nil
    RadioStationsExpanded.currentBroadcast = nil
    RadioStationsExpanded.deviceData = nil

    print("[RadioStationsExpanded] All messages have been reset! Every broadcast can play and spawn again.")
end

-- ==================================================================================|
-- 7. Events                                                                         |
-- ==================================================================================|
Events.OnGameStart.Add(initModData)
Events.OnNewGame.Add(resetForNewGame)
Events.EveryTenMinutes.Add(scheduledBroadcast)
Events.OnDeviceText.Add(onDeviceText)
_G.rse = function(n)
    RadioStationsExpanded.ForceMessage(n)
end
_G.rse_reset = function()
    RadioStationsExpanded.ResetAllMessages()
end

