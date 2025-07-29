-- Initialize mod namespace
local RadioStationsExpanded = RadioStationsExpanded or {}
RadioStationsExpanded.currentMessage = nil -- Store the currently airing message

-- Load messages from Messages.lua
local complexMessages = require("RadioStationsExpanded.Messages")

-- Add custom channels to DynamicRadio.channels
DynamicRadio.channels = DynamicRadio.channels or {} -- Preserve existing channels
table.insert(DynamicRadio.channels, {
    name = "Community Radio Frequency",
    freq = 88000, -- 88.0 MHz
    category = "Survivor", -- Maps to ChannelCategory.Other
    uuid = "SURV-001",
    register = true,
    airCounterMultiplier = 1.1
})

local function verifyRadio()
    local player = getPlayer()
    local playerX = player:getX()
    local playerY = player:getY()
    local playerZ = player:getZ()
    local cell = player:getCell()
    local radius = 10

    for dx = -radius, radius do
        for dy = -radius, radius do
            local square = cell:getGridSquare(playerX + dx, playerY + dy, playerZ)
            if square then
                local objects = square:getObjects()
                for i = 0, objects:size() - 1 do
                    local obj = objects:get(i)
                    if instanceof(obj, "IsoWaveSignal") then
                        local deviceData = obj:getDeviceData()
                        if obj:HasPlayerInRange() and deviceData:getIsTurnedOn() then
                            if obj:getSayLine() then
                                print("Line text: " .. obj:getSayLine())
                                print("On frequency: " .. deviceData:getChannel() .. " MhZ")
                                print("Playing on: " .. deviceData:getDeviceName())
                            end
                        end
                    end
                end
            end
        end
    end
end

-- Create broadcasts for Survivor Tales
local function createSurvivorTalesBroadcast()
    local survChannel = DynamicRadio.cache["SURV-001"]
    if not survChannel then
        print("RadioStationsExpanded: Survivor Tales channel not found in cache")
        return
    end

    local bc = RadioBroadCast.new("SURV-" .. tostring(ZombRand(100000, 999999)), -1, -1)
    if not bc then
        print("RadioStationsExpanded: Failed to create Survivor Tales broadcast")
        return
    end

    local messageIndex = ZombRand(1, #complexMessages)
    local airedMessage = complexMessages[messageIndex]
    RadioStationsExpanded.currentMessage = airedMessage -- Store the current message

    for _, line in ipairs(airedMessage.lines) do
        bc:AddRadioLine(line)
    end
    survChannel:setAiringBroadcast(bc)

    print("RadioStationsExpanded: Survivor Tales broadcast created with spawnsGroup: " ..
              (airedMessage.spawnsGroup or "none"))
end

local function daysChecker()
    local dayCounter = math.floor(getGameTime():getWorldAgeDaysSinceBegin())
    return dayCounter
end

local function spawningItems(_x, _y, _z, _spawnsGroup, _messageKey)
    local x = _x
    local y = _y
    local z = _z
    local spawnsGroup = _spawnsGroup
    local messageKey = _messageKey

    local square = getWorld():getCell():getGridSquare(x, y, z)
    if square then
        if spawnsGroup == "guns" then
            if messageKey == 1 then
                square:AddWorldInventoryItem("Base.AssaultRifle", 0.5, 0.5, 0.0)
                print("Spawned AssaultRifle at (" .. x .. ", " .. y .. ", " .. z .. ")")
            end
        elseif spawnsGroup == "medical" then
            if messageKey == 3 then
                square:AddWorldInventoryItem("Base.Bandage", 0.5, 0.5, 0.0)
                print("Spawned Bandage at (" .. x .. ", " .. y .. ", " .. z .. ")")
            end
        else
            print("Unknown spawnsGroup: " .. (spawnsGroup or "nil"))
        end
    else
        print("Failed to spawn: Invalid square at (" .. x .. ", " .. y .. ", " .. z .. ")")
    end
end

local function listeningToSpawns(_guid, _line, _codes, _device)
    if not RadioStationsExpanded.currentMessage then
        return
    end

    local currentDay = daysChecker()
    local message = RadioStationsExpanded.currentMessage
    if message.triggeringSpawns then
        print("Heard a triggering message with spawnsGroup: " .. (message.spawnsGroup or "none"))
        if _line and _line:getText() == "Over." then -- Trigger on the final line
            spawningItems(message.coordinates.x, message.coordinates.y, message.coordinates.z, message.spawnsGroup,
                message.messageKey)
        end
    end
end

local function verifyEquipedRadio()
    local player = getPlayer()
    local radio = player:getEquipedRadio()
    local cell = player:getCell()

    if radio then
        print("There's a radio equipped!")
        local radioDeviceData = radio:getDeviceData()
        if radioDeviceData then
            if radioDeviceData:getIsTurnedOn() then
                print("The radio is turned on!")
                if radioDeviceData:isReceivingSignal() then
                    print("We have signal!")
                    if cell then
                        print("We have a cell, finally!")
                        local waveSignal = IsoWaveSignal.new(cell)
                        waveSignal:setDeviceData(radioDeviceData)
                        waveSignal:update()
                        print("We have waveSignal!!!")
                    end
                end
            else
                print("The radio is turned off!")
            end
        end
    else
        print("No radio equipped")
    end
end

-- Schedule broadcasts every hour
local function scheduleBroadcasts()
    createSurvivorTalesBroadcast()
end

-- Add to DynamicRadio.scripts for custom hourly updates
DynamicRadio.scripts[#DynamicRadio.scripts + 1] = {
    channelUUID = "SURV-001",
    OnEveryHour = createSurvivorTalesBroadcast
}

Events.OnDeviceText.Add(listeningToSpawns)
Events.EveryHours.Add(scheduleBroadcasts)
Events.OnDeviceText.Add(verifyRadio)
Events.OnDeviceText.Add(verifyEquipedRadio)
