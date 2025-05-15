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
    airCounterMultiplier = 1.0
})

table.insert(DynamicRadio.channels, {
    name = "Apocalypse Updates",
    freq = 89000, -- 89.0 MHz
    category = "Survivor", -- Maps to ChannelCategory.Other
    uuid = "SURV-002",
    register = true,
    airCounterMultiplier = 2.0
})

local triggeringMessages = 
                            {'WHAT COULD I HAVE POSSIBLY DONE? [...]','You could have saved them, that is what we are supposed to do...',
                            'She is all I have left.','Hey, do you copy?',
                            'THANKS GOD... FINALLY, COPY.', 'How is your situation?',
                            'Its horrible, they surrounded our house','Dammit, do you have anywhere else to shelter?',
                            'I am trying to, but they somehow got a way in all of my neighbors houses...','<fzzt>',
                            'Hey, where are you?','<bzzt>',
                            'Please, dont leave us...',' I am sorry... good luck...'
                            }
                            
local function NPCAnswer(waveSignal)
    local sayLine = waveSignal:getSayLine()
    if not sayLine then
        print("Error: getSayLine returned nil")
        return
    end
    for i = 1, #triggeringMessages, 2 do
        if sayLine == triggeringMessages[i] then
            waveSignal:AddDeviceText(triggeringMessages[i + 1], 51, 153, 255, nil, nil, 0)
            break -- Exit loop after finding a match
        end
    end
end
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
                            print("Line text: " .. obj:getSayLine())
                            print("On frequency: " .. deviceData:getChannel() .. " MhZ")
                            print("Paying on: " .. deviceData:getDeviceName())
                                NPCAnswer(obj)
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

    local complexMessages = {{ -- Message 1: A Survivor’s Regret
    RadioLine.new("My name is Daniel.",255, 204, 0),
    RadioLine.new("I have been hiding in the attic of a house off Route 42 for... God, I do not even know how long.",255, 204, 0), 
    RadioLine.new("There is a family downstairs - well, what is left of them.",255, 204, 0),
    RadioLine.new("I could have helped.",255, 204, 0), -- Emotional guilt
    RadioLine.new("...",255, 204, 0), 
    RadioLine.new("<bzzt>",255, 204, 0),
    RadioLine.new("I heard them screaming two nights ago, clawing at the door I barricaded.",255, 204, 0),
    RadioLine.new("I just... froze.",255, 204, 0), -- Emotional paralysis
    RadioLine.new("WHAT COULD I HAVE POSSIBLY DONE? [...]",255, 204, 0), -- Emotional breakdown
    RadioLine.new("Now it is quiet, except for the groans.",255, 204, 0),
    RadioLine.new("If anyone is out there, do not come here.",255, 204, 0),
    RadioLine.new("But if you have got a spare bullet... maybe I would take it.",255, 204, 0), -- Emotional despair
    RadioLine.new("As you might be judging by now, I deserve it...",255, 204, 0),
    RadioLine.new("There is no more value in me...",255, 204, 0), -- Final despair
    RadioLine.new("Over.",255, 204, 0)
    },
    { -- Message 2: A Parent’s Plea
    RadioLine.new("This is Maria, broadcasting from somewhere near Rosewood.",255, 204, 0),
    RadioLine.new("I probably should not say exactly where we are...",255, 204, 0),
    RadioLine.new("But... I... We... But...",255, 204, 0),
    RadioLine.new("I have got my little girl with me, Sofia. She is six years old.",255, 204, 0),
    RadioLine.new("We are running low on everything - food, water, hope.",255, 204, 0), -- Emotional vulnerability
    RadioLine.new("The pharmacy on Main Street has been picked clean, and the dead are everywhere.",255, 204, 0),
    RadioLine.new("If you have got a safe place, please, we will do anything.",255, 204, 0), -- Emotional plea
    RadioLine.new("She is all I have left.",255, 204, 0), -- Emotional weight
    RadioLine.new("THANKS GOD... FINALLY, COPY.",255, 204, 0), 
    RadioLine.new("Its...",255, 204, 0),
    RadioLine.new("<bzzt>",255, 204, 0), 
    RadioLine.new("Its horrible, they surrounded our house",255, 204, 0),
    RadioLine.new("I am trying to, but they somehow got a way in all of my neighbors houses...",255, 204, 0),
    RadioLine.new("<bzzt>", 255, 204, 0),
    RadioLine.new("<fzzt>", 255, 204, 0),
    RadioLine.new("Hey, where are you?",255, 204, 0),
    RadioLine.new("<bzzt>", 255, 204, 0),
    RadioLine.new("Please, dont leave us...",255, 204, 0)
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
-- Add to DynamicRadio.scripts for custom hourly updates (optional)
DynamicRadio.scripts[#DynamicRadio.scripts + 1] = {
    channelUUID = "SURV-001",
    OnEveryHour = createSurvivorTalesBroadcast
}
DynamicRadio.scripts[#DynamicRadio.scripts + 1] = {
    channelUUID = "APOC-002",
    OnEveryHour = createApocalypseUpdatesBroadcast
}

-- Hook into the EveryHours event
Events.EveryHours.Add(scheduleBroadcasts)
Events.OnDeviceText.Add(verifyRadio)

