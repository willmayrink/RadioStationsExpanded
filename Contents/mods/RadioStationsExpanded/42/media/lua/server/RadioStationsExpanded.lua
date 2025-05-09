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
        RadioLine.new("There is no more value in me...", 153, 0, 0)  -- Final despair
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
        RadioLine.new("I will keep this channel open as long as the battery holds.", 255, 255, 255)
    },
    { -- Message 3: Tension in the Ranks
        RadioLine.new("This is Carter, speaking for the River Crew.", 255, 255, 255),
        RadioLine.new("We are holed up near the old lumber mill.", 255, 255, 255),
        RadioLine.new("Supplies are tight, and tempers are tighter.", 255, 255, 255),
        RadioLine.new("Jess thinks we should move south, hit the farms for food.", 255, 255, 255),
        RadioLine.new("Mike says it is suicide - too many zeds.", 255, 255, 255),
        RadioLine.new("Me? I just want us to stop arguing long enough to survive the night.", 153, 0, 0),  -- Emotional tension
        RadioLine.new("If you are nearby, we could use a hand.", 255, 255, 255),
        RadioLine.new("Bring something useful, or do not bother.", 255, 255, 255),
        RadioLine.new("[muffled shouting in background]", 255, 255, 255),
        RadioLine.new("We have to go.", 255, 255, 255)
    },
    { -- Message 4: Recruitment Call
        RadioLine.new("To anyone still breathing out there, this is the Knox Resistance.", 255, 255, 255),
        RadioLine.new("We are building something real - fortified walls, food stores, a chance.", 255, 255, 255),
        RadioLine.new("We are based near the old prison.", 255, 255, 255),
        RadioLine.new("If you can fight, fix, or grow, we want you.", 255, 255, 255),
        RadioLine.new("No freeloaders.", 255, 255, 255),
        RadioLine.new("Meet us at the crossroads west of town at dusk.", 255, 255, 255),
        RadioLine.new("Say ‘bluebird’ so we know you are not one of them.", 255, 255, 255),
        RadioLine.new("Stay sharp - trust is a luxury we cannot afford.", 255, 255, 255)
    },
    { -- Message 5: Corrupted Official Broadcast
        RadioLine.new("This is the Kentucky State Emergency Network.", 255, 255, 255),
        RadioLine.new("[static]", 255, 255, 255),
        RadioLine.new("All citizens must report to designated safe zones immediately.", 255, 255, 255),
        RadioLine.new("Relief efforts are underway in Louisville, West Point, and—", 255, 255, 255),
        RadioLine.new("[distorted voice]", 255, 255, 255),
        RadioLine.new("They are gone. It is all gone.", 153, 0, 0),  -- Emotional revelation
        RadioLine.new("[static]", 255, 255, 255),
        RadioLine.new("Do not approach infected individuals. Stay indoors. Await further—", 255, 255, 255),
        RadioLine.new("[loop restarts]", 255, 255, 255),
        RadioLine.new("This is the Kentucky State…", 255, 255, 255)
    },
    { -- Message 6: A Soldier’s Last Stand
        RadioLine.new("This is Private Ellis, 101st Airborne.", 255, 255, 255),
        RadioLine.new("We were supposed to hold the line at Fort Knox.", 255, 255, 255),
        RadioLine.new("Orders came to pull back, but the choppers never showed.", 255, 255, 255),
        RadioLine.new("I am the last one.", 153, 0, 0),  -- Emotional isolation
        RadioLine.new("Got a busted radio, half a mag, and a horde outside the gate.", 255, 255, 255),
        RadioLine.new("If anyone is listening, tell my wife in Lexington I tried.", 153, 0, 0),  -- Emotional farewell
        RadioLine.new("[gunshot in distance]", 255, 255, 255),
        RadioLine.new("Shit, they are through.", 153, 0, 0),  -- Panic
        RadioLine.new("Signing off.", 255, 255, 255)
    },
    { -- Message 7: The Preacher’s Delusion
        RadioLine.new("Hear me, sinners. This is Brother Amos, voice of the righteous.", 153, 0, 0),
        RadioLine.new("The dead rise because of our sins - greed, pride, all of it.", 153, 0, 0),
        RadioLine.new("I have seen the truth in the flames of Muldraugh’s church.", 255, 255, 255),
        RadioLine.new("Repent, and you will be spared.", 153, 0, 0),
        RadioLine.new("I am here, waiting for the faithful.", 255, 255, 255),
        RadioLine.new("The rest... you will burn with them.", 153, 0, 0),
        RadioLine.new("[maniacal laughter fades into static]", 255, 255, 255)
    },
    { -- Message 8: A Fading Memory
        RadioLine.new("Hey, uh, this is... who am I?", 179, 179, 179),
        RadioLine.new("Right, Paul. Paul from West Point.", 255, 255, 255),
        RadioLine.new("Used to work at the hardware store. Loved fishing on Sundays.", 255, 255, 255),
        RadioLine.new("Now I just... sit here.", 153, 0, 0),
        RadioLine.new("Got a radio, some batteries, and a bottle of bourbon.", 255, 255, 255),
        RadioLine.new("Think I will play a song next.", 255, 255, 255),
        RadioLine.new("Something to keep the quiet away.", 153, 0, 0),
        RadioLine.new("[soft humming]", 255, 255, 255),
        RadioLine.new("Yes, that is nice.", 255, 255, 255)
    },
    { -- Message 9: Broken Transmission
        RadioLine.new("Mayday, mayday - this is Lisa from the trailer park east of-", 153, 0, 0),
        RadioLine.new("[static]", 255, 255, 255),
        RadioLine.new("We have got kids here, no weapons, and they are-", 153, 0, 0),
        RadioLine.new("[static]", 255, 255, 255),
        RadioLine.new("Breaking through the fence.", 255, 255, 255),
        RadioLine.new("Please, if you are near-", 153, 0, 0),
        RadioLine.new("[static]", 255, 255, 255),
        RadioLine.new("Coordinates are 34-", 255, 255, 255),
        RadioLine.new("[signal cuts out]", 255, 255, 255)
    },
    { -- Message 10: Survivor’s Log
        RadioLine.new("Day 47. This is Owen, somewhere north of Riverside.", 255, 255, 255),
        RadioLine.new("Spotted a group moving through the woods today - five, maybe six.", 255, 255, 255),
        RadioLine.new("Looked armed. Did not approach. Too risky.", 255, 255, 255),
        RadioLine.new("Zeds are quieter lately, like they are waiting.", 153, 0, 0),
        RadioLine.new("Battery is dying, so this might be my last-", 153, 0, 0),
        RadioLine.new("[static]", 255, 255, 255),
        RadioLine.new("If you find this, keep moving. Do not stop.", 153, 0, 0)
    },
    { -- Message 11: The Scavenger’s Dilemma
        RadioLine.new("This is Riley, out near the Dixie Mobile Park.", 255, 255, 255),
        RadioLine.new("Found a stash in a wrecked truck - canned goods, a medkit, even a loaded pistol.", 255, 255, 255),
        RadioLine.new("Problem is, it is in the middle of a damn horde.", 153, 0, 0),
        RadioLine.new("I have been watching from the trees for hours, waiting for them to move.", 255, 255, 255),
        RadioLine.new("...", 255, 255, 255),
        RadioLine.new("I am starving, but I do not know if I am brave enough to try for it.", 153, 0, 0),
        RadioLine.new("If you are around, maybe we can team up.", 255, 255, 255),
        RadioLine.new("I will split the loot. Just... do not leave me out here alone.", 153, 0, 0),
        RadioLine.new(".....", 255, 255, 255),
        RadioLine.new("They are starting to wander off. I might not have a choice soon.", 255, 255, 255)
    },
    { -- Message 12: A Doctor’s Desperation
        RadioLine.new("This is Doctor Elena Carter, formerly of Muldraugh General.", 255, 255, 255),
        RadioLine.new("I have got a makeshift clinic set up in a barn off Highway 31.", 255, 255, 255),
        RadioLine.new("I am trying to help survivors, but I am down to my last suture kit.", 153, 0, 0),
        RadioLine.new("There is a kid here - Jacob, 14. Took a bad fall running from zeds.", 255, 255, 255),
        RadioLine.new("He has got a compound fracture, and I cannot stop the infection without antibiotics.", 153, 0, 0),
        RadioLine.new("...", 255, 255, 255),
        RadioLine.new("If you have got any meds - penicillin, anything - I will trade what I can.", 153, 0, 0),
        RadioLine.new("Please. He does not have much time.", 153, 0, 0),
        RadioLine.new("[soft sob]", 153, 0, 0)
    },
    { -- Message 13: The Loner’s Observation
        RadioLine.new("This is... call me Ghost. Do not need to know more than that.", 179, 179, 179),
        RadioLine.new("Been tracking a group of zeds moving through the woods south of West Point.", 255, 255, 255),
        RadioLine.new("They are acting strange - not just wandering.", 153, 0, 0),
        RadioLine.new("It is like they are following something, or someone.", 153, 0, 0),
        RadioLine.new("Saw a flare go up last night, about a mile east.", 255, 255, 255),
        RadioLine.new("...", 255, 255, 255),
        RadioLine.new("Whoever is out there, you are drawing a crowd.", 153, 0, 0),
        RadioLine.new("I am not coming for you - do not work well with others.", 255, 255, 255),
        RadioLine.new("But if you are smart, you will douse your lights and move fast.", 153, 0, 0)
    },
    { -- Message 14: A Trader’s Offer
        RadioLine.new("Hey there, this is Big Tom, running a little trade post near the Riverside bridge.", 255, 255, 255),
        RadioLine.new("Got some goods to barter - batteries, canned soup, even a couple of baseball bats.", 255, 255, 255),
        RadioLine.new("Looking for ammo, 9mm or shotgun shells, and any spare gas cans.", 255, 255, 255),
        RadioLine.new("I do not deal with raiders or thieves, so do not try anything funny.", 153, 0, 0),
        RadioLine.new("...", 255, 255, 255),
        RadioLine.new("Swing by at dawn. Flash your light three times so I know it is you.", 255, 255, 255),
        RadioLine.new("We can help each other out. That is how we survive this mess.", 255, 255, 255),
        RadioLine.new("[sound of a hammer striking wood]", 255, 255, 255)
    },
    { -- Message 15: A Child’s Voice
        RadioLine.new("[small voice] Um, hello? My name is Emily.", 255, 255, 255),
        RadioLine.new("I found this radio in Daddy’s truck. He... he is not here anymore.", 153, 0, 0),
        RadioLine.new("I am hiding in a treehouse near a big red barn.", 255, 255, 255),
        RadioLine.new("There are monsters down there. They keep walking around.", 153, 0, 0),
        RadioLine.new("...", 255, 255, 255),
        RadioLine.new("I have got some cookies and a water bottle, but I am really scared.", 153, 0, 0),
        RadioLine.new("Can someone come get me? Please?", 153, 0, 0),
        RadioLine.new("[soft sniffling]", 153, 0, 0),
        RadioLine.new("I do not want to be alone anymore.", 153, 0, 0)
    },
    { -- Message 16: The Optimist’s Hope
        RadioLine.new("This is Clara, broadcasting from a rooftop in downtown Louisville.", 255, 255, 255),
        RadioLine.new("I know things look bad, but I saw something today that gave me hope.", 153, 0, 0),
        RadioLine.new("A little garden, growing in a cracked parking lot - tomatoes, still red and ripe.", 255, 255, 255),
        RadioLine.new("If nature can keep going, so can we, right?", 153, 0, 0),
        RadioLine.new("...", 255, 255, 255),
        RadioLine.new("I have got a few seeds left. Thinking of planting them somewhere safer.", 255, 255, 255),
        RadioLine.new("If you are out there, let us find a spot together.", 153, 0, 0),
        RadioLine.new("We can rebuild, one little patch at a time.", 153, 0, 0)
    },
    { -- Message 17: The Betrayed Survivor
        RadioLine.new("This is Nate. I trusted someone yesterday, and it cost me everything.", 153, 0, 0),
        RadioLine.new("Said his name was Kyle. We scavenged a grocery store together.", 255, 255, 255),
        RadioLine.new("He seemed decent - shared a can of peaches, even laughed a bit.", 255, 255, 255),
        RadioLine.new("Then he waited until I was asleep, took my pack, my axe, everything.", 153, 0, 0),
        RadioLine.new("...", 255, 255, 255),
        RadioLine.new("I am in a shed near the train tracks outside Muldraugh.", 255, 255, 255),
        RadioLine.new("If you see a guy with a green backpack, watch your back.", 153, 0, 0),
        RadioLine.new("And if you have got a spare weapon... I could really use it.", 153, 0, 0)
    },
    { -- Message 18: The Weather Warning
        RadioLine.new("This is Harper, somewhere near the Ohio River.", 255, 255, 255),
        RadioLine.new("Storm is rolling in - big one, by the looks of it.", 255, 255, 255),
        RadioLine.new("Sky is turning black, and the wind is picking up something fierce.", 255, 255, 255),
        RadioLine.new("Last time it rained like this, the zeds got real quiet... then came in droves.", 153, 0, 0),
        RadioLine.new("...", 255, 255, 255),
        RadioLine.new("Find shelter, and board it up tight.", 153, 0, 0),
        RadioLine.new("Do not let the rain fool you into thinking it is safe.", 153, 0, 0),
        RadioLine.new("[distant thunder]", 255, 255, 255)
    },
    { -- Message 19: The Mechanic’s Plan
        RadioLine.new("This is Jamal, used to fix cars at the garage in Riverside.", 255, 255, 255),
        RadioLine.new("I have been working on a van - got it running, mostly.", 255, 255, 255),
        RadioLine.new("Needs a new battery and some fuel, but it could get us out of here.", 153, 0, 0),
        RadioLine.new("I am thinking north, maybe toward the border. Less zeds up there, I hear.", 255, 255, 255),
        RadioLine.new("...", 255, 255, 255),
        RadioLine.new("I could use a hand getting the parts. And someone to watch my back.", 153, 0, 0),
        RadioLine.new("Meet me at the gas station on 5th Street tomorrow morning.", 255, 255, 255),
        RadioLine.new("Bring tools if you have got them.", 255, 255, 255),
        RadioLine.new("[sound of a wrench clanging]", 255, 255, 255)
    },
    { -- Message 20: The Philosopher’s Reflection
        RadioLine.new("This is Evelyn, speaking from... somewhere dark.", 255, 255, 255),
        RadioLine.new("I used to teach philosophy at the community college in Rosewood.", 255, 255, 255),
        RadioLine.new("Thought I understood life - meaning, purpose, all that.", 255, 255, 255),
        RadioLine.new("Now I am hiding in a closet, listening to the dead scratch at the walls.", 153, 0, 0),
        RadioLine.new("...", 255, 255, 255),
        RadioLine.new("Maybe there is no meaning anymore. Just survival.", 153, 0, 0),
        RadioLine.new("But if you are out there, fighting, maybe that is enough.", 153, 0, 0),
        RadioLine.new("Keep going. For me.", 153, 0, 0),
        RadioLine.new("[faint sound of scratching]", 255, 255, 255)
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
    end
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
    local apocLines = {RadioLine.new("Power’s out across Muldraugh. Generators are our only hope now.", 1, 1, 1),
                       RadioLine.new("Heavy fog rolling in. Stay cautious, visibility’s low.", 1, 1, 1),
                       RadioLine.new("Heard a helicopter overhead. Could mean trouble… or help.", 1, 1, 1),
                       RadioLine.new("Zombie hordes spotted near West Point. Avoid the main roads.", 1, 1, 1)}

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
