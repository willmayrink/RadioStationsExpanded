-- Initialize mod namespace
local RadioStationsExpanded = RadioStationsExpanded or {}
RadioStationsExpanded.currentMessage = nil -- Store the currently airing message

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

local hearingMessage = RadioStationsExpanded.currentMessage

local function createSpawns(_airedMessage)
    local messageSpawn = _airedMessage
    if messageSpawn and messageSpawn.coordinates and messageSpawn.spawnedItems then
        local square = getSquare(messageSpawn.coordinates.x, messageSpawn.coordinates.y, messageSpawn.coordinates.z)
        if square then

            for _, itemId in ipairs(messageSpawn.spawnedItems) do
                local spotX = (ZombRand(1, 35)) / 10
                local spotY = (ZombRand(1, 35)) / 10
                print("spotX is: " .. spotX) -- Randomize the X coordinate within the square
                print("spotY is: " .. spotY) -- Randomize the Y coordinate within the square
                if square:AddWorldInventoryItem(itemId, spotX, spotY, 0) then
                    print("Spawned item: " .. itemId .. " at coordinates X: " .. messageSpawn.coordinates.x .. " Y: " ..
                              messageSpawn.coordinates.y)
                end

            end
            messageSpawn.triggeringSpawns = false -- Reset the triggering flag after spawning
            local zombieChance = ZombRand(1, 10)
            if messageSpawn.spawnsCorpses then
                if zombieChance % 2 == 0 then
                    local virtualManager = getVirtualZombieManager():createRealZombieNow(messageSpawn.coordinates.x,
                        messageSpawn.coordinates.y, messageSpawn.coordinates.z)
                else
                    for numberCorpses = 1, messageSpawn.amountCorpses + 1, 1 do
                        createRandomDeadBody(square, 10)
                    end

                end
                messageSpawn.spawnsCorpses = false
            end
        else
            print("Invalid grid square at X: " .. messageSpawn.coordinates.x .. " Y: " .. messageSpawn.coordinates.y)
        end
    else
        print("There were no items to be spawned... nO lOoT 4 LOosERs.")
    end
end

local function verifyRadioMessage()
    if hearingMessage then
        if hearingMessage.triggeringSpawns then
            createSpawns(hearingMessage)
        end
    end
end

local function playMessage()
    local radioChannel = DynamicRadio.cache["SURV-001"]
    if not radioChannel then
        print("Failed to instance the channel.")
    else
        print("Channel successfully created with uuid SURV-001.")
    end
    local broadCast = RadioBroadCast.new("SURV channel - ID: " .. tostring(ZombRand(1, 99999)), -1, -1)
    if not broadCast then
        print("Failed to create a broadcast.")
        return
    end
    local messageIndex = ZombRand(1, #complexMessages)
    local airedMessage = complexMessages[messageIndex]
    hearingMessage = airedMessage
    for _, line in ipairs(airedMessage.lines) do
        if line then
            broadCast:AddRadioLine(line)
        end
    end
    radioChannel:setAiringBroadcast(broadCast)
end

local function scheduledBroadcast()

    local messageChance = ZombRand(1, 20)
    local dayTime = math.floor(getGameTime():getHour())
    if messageChance == 1 and dayTime >= 8 and dayTime <= 11 then
        playMessage()
    end
end

Events.EveryHours.Add(scheduledBroadcast)
Events.OnDeviceText.Add(verifyRadioMessage)
