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
    airCounterMultiplier = 1.0
})

-- Debug logging
print("RadioStationsExpanded: Custom channels added")

-- Create broadcasts for Survivor Tales
local function createSurvivorTalesBroadcast()
    local survChannel = DynamicRadio.cache["SURV-001"]
    if not survChannel then
        print("RadioStationsExpanded: Survivor Tales channel not found in cache")
        return
    end
    
    local complexMessages = {
                            { -- Message 1: A Survivor’s Regret
        RadioLine.new("My name is Daniel.", 255, 255, 255),
        RadioLine.new("I have been hiding in the attic of a house off Route 42 for... God, I do not even know how long.", 255, 255, 255),
        RadioLine.new("There is a family downstairs - well, what is left of them.", 255, 255, 255),
        RadioLine.new("I could have helped.", 153, 0, 0),  -- Emotional guilt
        RadioLine.new("...", 255, 255, 255),
        RadioLine.new("<bzzt>", 255, 255, 255),
        RadioLine.new("I heard them screaming two nights ago, clawing at the door I barricaded.", 255, 255, 255),
        RadioLine.new("I just... froze.", 153, 0, 0),  -- Emotional paralysis
        RadioLine.new("WHAT COULD I HAVE POSSIBLY DONE? [...]", 153, 0, 0),  -- Emotional breakdown
        RadioLine.new("Now it is quiet, except for the groans.", 255, 255, 255),
        RadioLine.new("If anyone is out there, do not come here.", 255, 255, 255),
        RadioLine.new("But if you have got a spare bullet... maybe I would take it.", 153, 0, 0),  -- Emotional despair
        RadioLine.new("As you might be judging by now, I deserve it...", 255, 255, 255),
        RadioLine.new("There is no more value in me...", 153, 0, 0),  -- Final despair
        RadioLine.new("Over.", 255, 255, 255)
    },
    { -- Message 2: A Parent’s Plea
        RadioLine.new("This is Maria, broadcasting from somewhere near Rosewood.", 255, 255, 255),
        RadioLine.new("I probably should not say exactly where we are...", 179, 179, 179),
        RadioLine.new("But... I... We... But...", 179, 179, 179),
        RadioLine.new("I have got my little girl with me, Sofia. She is six years old.", 255, 255, 255),
        RadioLine.new("We are running low on everything - food, water, hope.", 153, 0, 0),  -- Emotional vulnerability
        RadioLine.new("The pharmacy on Main Street has been picked clean, and the dead are everywhere.", 255, 255, 255),
        RadioLine.new("If you have got a safe place, please, we will do anything.", 153, 0, 0),  -- Emotional plea
        RadioLine.new("She is all I have left.", 153, 0, 0),  -- Emotional weight
        RadioLine.new("...", 255, 255, 255),
        RadioLine.new("Tell her... tell her ‘Your mother is trying, baby.’", 153, 0, 0),  -- Emotional moment
        RadioLine.new("I will keep this channel open as long as the battery holds.", 255, 255, 255),
        RadioLine.new("Over.", 255, 255, 255)
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

local function verifyLastMsg()
    local survChannel = DynamicRadio.cache["SURV-001"]
    print(survChannel:getLastAiredLine())
    ---Correct print(survChannel:getAiringBroadcast():getCurrentLine():getText())
end
-- Schedule broadcasts every hour
local function scheduleBroadcasts()
    if not DynamicRadio.valid then
        print("RadioStationsExpanded: DynamicRadio is not valid, skipping broadcast")
        return
    end
    createSurvivorTalesBroadcast()
end
local function playerAnswer()
    local survChannel = DynamicRadio.cache["SURV-001"]
    if survChannel:getLastAiredLine() == "WHAT COULD I HAVE POSSIBLY DONE? [...]" then
        getPlayer():Say("Save them, you prick...")
        getPlayer():Say("That is what we were supposed to do")
        elseif survChannel:getLastAiredLine() == "I will keep this channel open as long as the battery holds." then
            getPlayer():SayShout("Hey? Do you copy?")
    end
    
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
Events.OnDeviceText.Add(verifyLastMsg)
Events.OnDeviceText.Add(playerAnswer)