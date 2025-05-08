---placeholder file for github
local DynamicRadio = require "radio/ISDynamicRadio"

-- Creating the two radio stations
DynamicRadio.channels = DynamicRadio.channels or {}
table.insert(DynamicRadio.channels, {
    name = "Survivor Tales",
    freq = 88000,
    category = "Survivor",
    uuid = "SURV-001",
    register = true,
    airCounterMultiplier = 1.0
})
table.insert(DynamicRadio.channels, {
    name = "Apocalypse Updates",
    freq = 89000,
    category = "Survivor",
    uuid = "APOC-002",
    register = true,
    airCounterMultiplier = 1.0
})

-- Start the channels when game runs
local function initRadioChannels()
    local radio = getZomboidRadio()
    local scriptManager = radio:getScriptManager()
    -- Survivor Tales Channel
    local survChannel = DynamicRadioChannel.new("Survivor Tales", 88000, "Survivor", "SURV-001")
    survChannel:setAirCounterMultiplier(1.0)
    scriptManager:AddChannel(survChannel)
    DynamicRadio.cache["SURV-001"] = survChannel

    -- Apocalypse Updates Channel
    local apocChannel = DynamicRadioChannel.new("Apocalypse Updates", 89000, "Survivor", "APOC-002")
    apocChannel:setAirCounterMultiplier(1.0)
    scriptManager:AddChannel(apocChannel)
    DynamicRadio.cache["APOC-002"] = apocChannel
end
Events.OnGameStart.Add(initRadioChannels)

local function createSurvivorTalesBroadcast()
    local survLines = {RadioLine.new("Found a can of beans in an old diner. Thought I was done for!", 1, 1, 1),
                       RadioLine.new("Barely escaped a horde last night. My heart’s still racing.", 1, 1, 1),
                       RadioLine.new("Met another survivor today. Traded some ammo for bandages.", 1, 1, 1),
                       RadioLine.new("Hiding in a barn. The zombies are close, but I’m safe… for now.", 1, 1, 1)}
    local bc = RadioBroadCast.new("SURV-" .. tostring(ZombRand(100000, 999999)), -1, -1)
    bc:AddRadioLine(survLines[ZombRand(1, #survLines + 1)])
    local survChannel = DynamicRadio.cache["SURV-001"]
    survChannel:setAiringBroadcast(bc)
end

local function createApocalypseUpdatesBroadcast()
    local apocLines = {RadioLine.new("Power’s out across Muldraugh. Generators are our only hope now.", 1, 1, 1),
                       RadioLine.new("Heavy fog rolling in. Stay cautious, visibility’s low.", 1, 1, 1),
                       RadioLine.new("Heard a helicopter overhead. Could mean trouble… or help.", 1, 1, 1),
                       RadioLine.new("Zombie hordes spotted near West Point. Avoid the main roads.", 1, 1, 1)}
    local bc = RadioBroadCast.new("APOC-" .. tostring(ZombRand(100000, 999999)), -1, -1)
    bc:AddRadioLine(apocLines[ZombRand(1, #apocLines + 1)])
    local apocChannel = DynamicRadio.cache["APOC-002"]
    apocChannel:setAiringBroadcast(bc)
end
local function scheduleBroadcasts()
    createSurvivorTalesBroadcast()
    createApocalypseUpdatesBroadcast()
end

Events.EveryHours.Add(scheduleBroadcasts)
