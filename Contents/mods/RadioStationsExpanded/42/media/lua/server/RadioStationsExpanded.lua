-- Initialize mod namespace
local RadioStationsExpanded = RadioStationsExpanded or {}

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
    -- Get the player and their coordinates
    local player = getPlayer()
    local playerX = player:getX()
    local playerY = player:getY()
    local playerZ = player:getZ()
    
    -- Get the player's cell (though we'll use it indirectly via getCell())
    local cell = getPlayer():getCell()

    -- Define the search radius (adjust based on signal range or performance needs)
    local radius = 10

    -- Iterate over a square area around the player
    for dx = -radius, radius do
        for dy = -radius, radius do
            -- Calculate the coordinates and get the grid square
            local square = cell:getGridSquare(playerX + dx, playerY + dy, playerZ)
            if square then
                -- Get all objects in the square
                local objects = square:getObjects()
                for i = 0, objects:size() - 1 do
                    local obj = objects:get(i)
                    -- Check if the object is an IsoWaveSignal
                    if instanceof(obj, "IsoWaveSignal") then
                        -- Call HasPlayerInRange() to check if the player is in range
                        local deviceData = obj:getDeviceData()
                        if obj:HasPlayerInRange() and deviceData:getIsTurnedOn() then
                            if obj:getSayLine() then
                            print("Line text: " .. obj:getSayLine())
                            print("On frequency: " .. deviceData:getChannel() .. " MhZ")
                            print("Paying on: " .. deviceData:getDeviceName())
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

    local complexMessages = {
    { -- Message 1: A Survivor’s Regret
        RadioLine.new("My name is Daniel.", 200, 200, 200), -- Padrão
        RadioLine.new("I have been hiding in the attic of a house off Route 42 for... God, I do not even know how long.", 200, 200, 200), -- Padrão
        RadioLine.new("There is a family downstairs - well, what is left of them.", 200, 200, 200), -- Padrão
        RadioLine.new("I could have helped.", 150, 150, 150), -- Emocional: culpa
        RadioLine.new("...", 150, 150, 150), -- Silêncio emocional
        RadioLine.new("<bzzt>", 50, 50, 50), -- Interferência
        RadioLine.new("I heard them screaming two nights ago, clawing at the door I barricaded.", 150, 150, 150), -- Emocional: trauma
        RadioLine.new("I just... froze.", 150, 150, 150), -- Emocional: paralisia
        RadioLine.new("WHAT COULD I HAVE POSSIBLY DONE? [...]", 100, 100, 100), -- Emocional: colapso
        RadioLine.new("Now it is quiet, except for the groans.", 150, 150, 150), -- Emocional: reflexão
        RadioLine.new("If anyone is out there, do not come here.", 200, 200, 200), -- Padrão: aviso
        RadioLine.new("But if you have got a spare bullet... maybe I would take it.", 100, 100, 100), -- Emocional: desespero
        RadioLine.new("As you might be judging by now, I deserve it...", 100, 100, 100), -- Emocional: autojulgamento
        RadioLine.new("There is no more value in me...", 100, 100, 100), -- Emocional: desespero final
        RadioLine.new("Over.", 200, 200, 200) -- assaultrifledistant8
    },
    { -- Message 2: A Parent’s Plea
        RadioLine.new("This is Maria, broadcasting from somewhere near Rosewood.", 200, 200, 200), -- Padrão
        RadioLine.new("I probably should not say exactly where we are...", 200, 200, 200), -- Padrão
        RadioLine.new("But... I... We... But...", 150, 150, 150), -- Emocional: hesitação
        RadioLine.new("I have got my little girl with me, Sofia. She is six years old.", 150, 150, 150), -- Emocional: vulnerabilidade
        RadioLine.new("We are running low on everything - food, water, hope.", 150, 150, 150), -- Emocional: desespero
        RadioLine.new("The pharmacy on Main Street has been picked clean, and the dead are everywhere.", 150, 150, 150), -- Emocional: urgência
        RadioLine.new("If you have got a safe place, please, we will do anything.", 100, 100, 100), -- Emocional: súplica
        RadioLine.new("She is all I have left.", 100, 100, 100), -- Emocional: peso emocional
        RadioLine.new("THANKS GOD... FINALLY, COPY.", 100, 100, 100), -- Emocional: alívio momentâneo
        RadioLine.new("Its...", 150, 150, 150), -- Emocional: interrupção
        RadioLine.new("<bzzt>", 50, 50, 50), -- Interferência
        RadioLine.new("Its horrible, they surrounded our house", 100, 100, 100), -- Emocional: pânico
        RadioLine.new("I am trying to, but they somehow got a way in all of my neighbors houses...", 100, 100, 100), -- Emocional: desespero
        RadioLine.new("<bzzt>", 50, 50, 50), -- Interferência
        RadioLine.new("<fzzt>", 50, 50, 50), -- Interferência
        RadioLine.new("Hey, where are you?", 100, 100, 100), -- Emocional: súplica
        RadioLine.new("<bzzt>", 50, 50, 50), -- Interferência
        RadioLine.new("Please, dont leave us...", 100, 100, 100) -- distscream4
    },
    { --Info about assets
        RadioLine.new("I am not going to say who I am", 150, 150, 150),
        RadioLine.new("But I will give out some information that might help you", 150, 150, 150),
        RadioLine.new("<bzzt>", 50, 50, 50),
        RadioLine.new("There are valuable assets on a specific region", 150, 150, 150),
        RadioLine.new("<fzzt>", 50, 50, 50),
        RadioLine.new("Check out this coords", 150, 150, 150),
        RadioLine.new("<bzzt>", 50, 50, 50),
        RadioLine.new("Longitude 10089", 150,150,150),
        RadioLine.new("<fzzt>", 50, 50, 50),
        RadioLine.new("Latitude 8245", 150, 150, 150)
    }
}

    local bc = RadioBroadCast.new("SURV-" .. tostring(ZombRand(100000, 999999)), -1, -1)
    if not bc then
        print("RadioStationsExpanded: Failed to create Survivor Tales broadcast")
        return
    end
    local messageIndex = ZombRand(1, #complexMessages + 1)
    local AiredMessage = complexMessages[messageIndex]
    for _, line in ipairs(AiredMessage) do
        bc:AddRadioLine(line)
        survChannel:setAiringBroadcast(bc)
    end

    print("RadioStationsExpanded: Survivor Tales broadcast created")
end

-- Schedule broadcasts every hour
local function scheduleBroadcasts()
    createSurvivorTalesBroadcast()
end
local function verifyEquipedRadio()
    local player = getPlayer()
    local radio = player:getEquipedRadio()
    local cell = player:getCell()
    local waveSignal = IsoWaveSignal.new(cell)
    waveSignal:setDeviceData(radioDeviceData)
                            
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
                            if waveSignal then
                                waveSignal:update()
                                print("We have waveSignal!!!")
                            end
                        end
                    end
                else
                    print("The radio is turned off!")
                end
            end
        else
            print ("No radio equipped")
        end
end

-- Add to DynamicRadio.scripts for custom hourly updates (optional)
DynamicRadio.scripts[#DynamicRadio.scripts + 1] = {
    channelUUID = "SURV-001",
    OnEveryHour = createSurvivorTalesBroadcast
}

-- Hook into the EveryHours event
Events.EveryHours.Add(scheduleBroadcasts)
Events.OnDeviceText.Add(verifyRadio)
Events.OnDeviceText.Add(verifyEquipedRadio)

