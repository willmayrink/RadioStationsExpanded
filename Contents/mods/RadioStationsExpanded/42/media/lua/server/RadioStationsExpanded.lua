-- Initialize mod namespace
local RadioStationsExpanded = RadioStationsExpanded or {}

-- Add custom channels to DynamicRadio.channels
DynamicRadio.channels = DynamicRadio.channels or {} -- Preserve existing channels

table.insert(DynamicRadio.channels, {
    name = "Survivor Tales",
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
    uuid = "APOC-002",
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
    local survLines = {
        RadioLine.new("Found a can of beans in an old diner. Thought I was done for!", 1, 1, 1),
        RadioLine.new("Barely escaped a horde last night. My heart’s still racing.", 1, 1, 1),
        RadioLine.new("Met another survivor today. Traded some ammo for bandages.", 1, 1, 1),
        RadioLine.new("Hiding in a barn. The zombies are close, but I’m safe… for now.", 1, 1, 1)
    }
    local bc = RadioBroadCast.new("SURV-" .. tostring(ZombRand(100000, 999999)), -1, -1)
    if not bc then
        print("RadioStationsExpanded: Failed to create Survivor Tales broadcast")
        return
    end
    bc:AddRadioLine(survLines[ZombRand(1, #survLines)])
    survChannel:setAiringBroadcast(bc)
    print("RadioStationsExpanded: Survivor Tales broadcast created")
end

-- Create broadcasts for Apocalypse Updates
local function createApocalypseUpdatesBroadcast()
    local apocChannel = DynamicRadio.cache["APOC-002"]
    if not apocChannel then
        print("RadioStationsExpanded: Apocalypse Updates channel not found in cache")
        return
    end
    local apocLines = {
        RadioLine.new("Power’s out across Muldraugh. Generators are our only hope now.", 1, 1, 1),
        RadioLine.new("Heavy fog rolling in. Stay cautious, visibility’s low.", 1, 1, 1),
        RadioLine.new("Heard a helicopter overhead. Could mean trouble… or help.", 1, 1, 1),
        RadioLine.new("Zombie hordes spotted near West Point. Avoid the main roads.", 1, 1, 1)
    }
    local bc = RadioBroadCast.new("APOC-" .. tostring(ZombRand(100000, 999999)), -1, -1)
    if not bc then
        print("RadioStationsExpanded: Failed to create Apocalypse Updates broadcast")
        return
    end
    bc:AddRadioLine(apocLines[ZombRand(1, #apocLines)])
    apocChannel:setAiringBroadcast(bc)
    print("RadioStationsExpanded: Apocalypse Updates broadcast created")
end

-- Schedule broadcasts every hour
local function scheduleBroadcasts()
    if not DynamicRadio.valid then
        print("RadioStationsExpanded: DynamicRadio is not valid, skipping broadcast")
        return
    end
    createSurvivorTalesBroadcast()
    createApocalypseUpdatesBroadcast()
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