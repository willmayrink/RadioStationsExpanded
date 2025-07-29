local complexMessages = {
    {
        messageKey = 1,
        triggeringSpawns = true,
        spawnsGroup = "guns",
        spawnedItems = {"Base.AssaultRifle", "Base.Pistol3"},
        coordinates = { x = 8066, y = 11722, z = 0 }, -- Rosewood police armory
        lines = {
            RadioLine.new("I am not going to say who I am", 150, 150, 150),
            RadioLine.new("But I will give out some information that might help you", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("There are valuable assets on a specific region", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("Check out this coords", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("X...8660", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("Y...11722", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("Over.", 50, 50, 50)
        }
    },
    {
        messageKey = 2,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("This is a test broadcast", 150, 150, 150),
            RadioLine.new("No valuable assets here", 150, 150, 150),
            RadioLine.new("Stay safe out there.", 150, 150, 150)
        }
    },
    {
        messageKey = 3,
        triggeringSpawns = true,
        spawnsGroup = "medical",
        spawnedItems = {"Base.Painkiller", "Base.Bandage"},
        coordinates = { x = 8500, y = 11800, z = 0 }, -- Example coordinates
        lines = {
            RadioLine.new("Survivors, listen up!", 150, 150, 150),
            RadioLine.new("Medical supplies have been spotted.", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("Check these coordinates:", 150, 150, 150),
            RadioLine.new("X...8500", 150, 150, 150),
            RadioLine.new("Y...11800", 150, 150, 150),
            RadioLine.new("Over.", 50, 50, 50)
        }
    },
    {
        messageKey = 4,
        triggeringSpawns = true,
        spawnsGroup = "guns",
        spawnedItems = {"Base.AssaultRifle", "Base.Pistol3","Base.Shotgun"},
        coordinates = {x = 8600, y = 11200, z = 0},
        lines = {
            RadioLine.new("What a shame...", 150, 150, 150),
            RadioLine.new("Even tho I had all these weapons...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("I couldn't take them...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("FUCK!", 150, 150, 150),
            RadioLine.new("I'm on West Point Police Department, use these to send as many as you can to hell...", 150, 150, 150),
            RadioLine.new("...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("I'll start...", 50, 50, 50),
            RadioLine.new("*loud gunfire*", 50, 50, 50)
        }
    },
    {
        messageKey = 5,
        triggeringSpawns = true,
        spawnsGroup = "tools",
        spawnedItems = {"Base.Hammer", "Base.Axe"},
        coordinates = { x = 8066, y = 11722, z = 0 },
        lines = {
            RadioLine.new("Fled a mob, dropped my hammer and axe.", 150, 150, 150),
            RadioLine.new("Find them at X...8066, Y...11722.", 150, 150, 150),
            RadioLine.new("Use them to fight back!", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50)
        }
    },
    {
        messageKey = 6,
        triggeringSpawns = true,
        spawnsGroup = "bags",
        spawnedItems = {"Base.Bag_HydrationBackpack", "Base.Bag_Satchel_Medical"},
        coordinates = { x = 8500, y = 11800, z = 0 },
        lines = {
            RadioLine.new("I’m Rajiv, a nomad—lost my packs escaping.", 150, 150, 150),
            RadioLine.new("They’re at X...8500, Y...11800.", 150, 150, 150),
            RadioLine.new("Hydration and med satchel—take them!", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("Run before they’re gone!", 150, 150, 150)
        }
    },
    {
        messageKey = 7,
        triggeringSpawns = true,
        spawnsGroup = "literature",
        spawnedItems = {"Base.BookCooking1", "Base.Map_Riverside"},
        coordinates = { x = 8066, y = 11722, z = 0 },
        lines = {
            RadioLine.new("Clara here—left my cookbook and map behind.", 150, 150, 150),
            RadioLine.new("X...8066, Y...11722 is where they lie.", 150, 150, 150),
            RadioLine.new("Cook and navigate to survive!", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("My gift to you.", 150, 150, 150)
        }
    },
    {
        messageKey = 8,
        triggeringSpawns = true,
        spawnsGroup = "mementos",
        spawnedItems = {"Base.Necklace_YinYang", "Base.Hat_SantaHat"},
        coordinates = { x = 8500, y = 11800, z = 0 },
        lines = {
            RadioLine.new("Abandoned a necklace and Santa hat in panic.", 150, 150, 150),
            RadioLine.new("Look at X...8500, Y...11800.", 150, 150, 150),
            RadioLine.new("Wear them for luck or spirit!", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50)
        }
    },
    {
        messageKey = 9,
        triggeringSpawns = true,
        spawnsGroup = "tools",
        spawnedItems = {"Base.Saw", "Base.Crowbar"},
        coordinates = { x = 8066, y = 11722, z = 0 },
        lines = {
            RadioLine.new("Theo, tinkerer—tossed my saw and crowbar.", 150, 150, 150),
            RadioLine.new("They’re at X...8066, Y...11722.", 150, 150, 150),
            RadioLine.new("Pry open a new life!", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("Hurry, they’re waiting!", 150, 150, 150),
            RadioLine.new("Go now!", 150, 150, 150)
        }
    },
    {
        messageKey = 10,
        triggeringSpawns = true,
        spawnsGroup = "bags",
        spawnedItems = {"Base.Bag_GolfBag", "Base.Bag_PicnicBasket"},
        coordinates = { x = 8500, y = 11800, z = 0 },
        lines = {
            RadioLine.new("Nadia, caddy—left my golf bag and basket.", 150, 150, 150),
            RadioLine.new("Find them at X...8500, Y...11800.", 150, 150, 150),
            RadioLine.new("Swing or snack to survive!", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("They’re yours—take care!", 150, 150, 150)
        }
    },

    -- No-Loot Messages (80%) - Vague, Short Storytelling (3-8 Lines)
    {
        messageKey = 11,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("Wind whispers through empty streets...", 150, 150, 150),
            RadioLine.new("...", 150, 150, 150),
            RadioLine.new("A faint hum lingers.", 150, 150, 150)
        }
    },
    {
        messageKey = 12,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("Once danced under moonlight...", 150, 150, 150),
            RadioLine.new("Now shadows chase me.", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("Steps fade away.", 150, 150, 150)
        }
    },
    {
        messageKey = 13,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("Heard a bird sing today...", 150, 150, 150),
            RadioLine.new("First in months.", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("Clung to that sound...", 150, 150, 150),
            RadioLine.new("Like hope.", 150, 150, 150),
            RadioLine.new("Gone now.", 50, 50, 50)
        }
    },
    {
        messageKey = 14,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("Saw a tree still green...", 150, 150, 150),
            RadioLine.new("...", 150, 150, 150),
            RadioLine.new("Touched its leaves...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("Felt alive again.", 150, 150, 150),
            RadioLine.new("Briefly.", 50, 50, 50)
        }
    },
    {
        messageKey = 15,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("A zombie shuffled by...", 150, 150, 150),
            RadioLine.new("Wearing a chef’s hat!", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("Stirring an imaginary pot...", 150, 150, 150),
            RadioLine.new("Laughed till I cried.", 150, 150, 150),
            RadioLine.new("Odd relief.", 50, 50, 50)
        }
    },
    {
        messageKey = 16,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("Built a fire last night...", 150, 150, 150),
            RadioLine.new("Watched sparks rise...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("Dreamed of home.", 150, 150, 150)
        }
    },
    {
        messageKey = 17,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("Found an old shoe...", 150, 150, 150),
            RadioLine.new("...", 150, 150, 150),
            RadioLine.new("Wore it anyway.", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("Feels like armor.", 150, 150, 150),
            RadioLine.new("Silly, but true.", 50, 50, 50)
        }
    },
    {
        messageKey = 18,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("Rain fell soft today...", 150, 150, 150),
            RadioLine.new("Caught it in my hands...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("Tasted life again...", 150, 150, 150),
            RadioLine.new("Briefly.", 150, 150, 150),
            RadioLine.new("Then it stopped.", 50, 50, 50)
        }
    },
    {
        messageKey = 19,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("A zombie limped past...", 150, 150, 150),
            RadioLine.new("Looked like Paula Abdul!", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("Doing ‘Opposites Attract’ moves...", 150, 150, 150),
            RadioLine.new("Choked on a laugh...", 150, 150, 150),
            RadioLine.new("Surreal day.", 50, 50, 50)
        }
    },
    {
        messageKey = 20,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("Heard a distant laugh...", 150, 150, 150),
            RadioLine.new("...", 150, 150, 150),
            RadioLine.new("Wondered if I’m mad.", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50)
        }
    },
    {
        messageKey = 21,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("Painted a wall red...", 150, 150, 150),
            RadioLine.new("With berry juice.", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("Feels like art...", 150, 150, 150),
            RadioLine.new("Or a warning.", 150, 150, 150),
            RadioLine.new("Who knows?", 50, 50, 50)
        }
    },
    {
        messageKey = 22,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("Saw a dog yesterday...", 150, 150, 150),
            RadioLine.new("...", 150, 150, 150),
            RadioLine.new("Tail wagged at me.", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("Chased it, but...", 150, 150, 150),
            RadioLine.new("Gone now.", 50, 50, 50)
        }
    },
    {
        messageKey = 23,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("A zombie staggered...", 150, 150, 150),
            RadioLine.new("Looked like Salt-N-Pepa!", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("Rapping ‘Push It’...", 150, 150, 150),
            RadioLine.new("Nearly fell laughing...", 150, 150, 150),
            RadioLine.new("Wild world!", 50, 50, 50),
            RadioLine.new("Still grinning.", 150, 150, 150)
        }
    },
    {
        messageKey = 24,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("Found a cracked mirror...", 150, 150, 150),
            RadioLine.new("Stared at my face.", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("Saw a stranger...", 150, 150, 150),
            RadioLine.new("Not me anymore.", 150, 150, 150)
        }
    },
    {
        messageKey = 25,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("Whistled a tune...", 150, 150, 150),
            RadioLine.new("Old song from youth.", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("Echoed back...", 150, 150, 150),
            RadioLine.new("Felt alive.", 150, 150, 150),
            RadioLine.new("For a moment.", 50, 50, 50)
        }
    },
    {
        messageKey = 26,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("A zombie lurched...", 150, 150, 150),
            RadioLine.new("Looked like En Vogue!", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("Harmonizing ‘Free Your Mind’...", 150, 150, 150),
            RadioLine.new("Laughed so hard...", 150, 150, 150),
            RadioLine.new("Absurd beauty.", 50, 50, 50),
            RadioLine.new("Still smiling.", 150, 150, 150)
        }
    },
    {
        messageKey = 27,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("Climbed a hill...", 150, 150, 150),
            RadioLine.new("Saw the horizon.", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("Dreamed of tomorrow...", 150, 150, 150)
        }
    },
    {
        messageKey = 28,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("Heard a creak...", 150, 150, 150),
            RadioLine.new("Old house groaning.", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("Felt like company...", 150, 150, 150),
            RadioLine.new("Lonely friend.", 150, 150, 150)
        }
    },
    {
        messageKey = 29,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("Saw a kite stuck...", 150, 150, 150),
            RadioLine.new("In a dead tree.", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("Thought of kids...", 150, 150, 150),
            RadioLine.new("Flying high once.", 150, 150, 150),
            RadioLine.new("Tears fell.", 50, 50, 50),
            RadioLine.new("Quiet now.", 150, 150, 150)
        }
    },
    {
        messageKey = 30,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("Smelled rain coming...", 150, 150, 150),
            RadioLine.new("Rushed to catch it.", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("Slipped in mud...", 150, 150, 150),
            RadioLine.new("Laughed at myself.", 150, 150, 150)
        }
    },
    {
        messageKey = 31,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("A zombie shuffled...", 150, 150, 150),
            RadioLine.new("Looked like Aaliyah!", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("Floating like ‘Try Again’...", 150, 150, 150),
            RadioLine.new("Grinned through fear...", 150, 150, 150),
            RadioLine.new("Eerie charm.", 50, 50, 50),
            RadioLine.new("Still here.", 150, 150, 150)
        }
    },
    {
        messageKey = 32,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("Found a button...", 150, 150, 150),
            RadioLine.new("From an old coat.", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("Held it tight...", 150, 150, 150),
            RadioLine.new("Like a talisman.", 150, 150, 150)
        }
    },
    {
        messageKey = 33,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("Watched clouds drift...", 150, 150, 150),
            RadioLine.new("Shaped like faces.", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("Imagined voices...", 150, 150, 150),
            RadioLine.new("Calling me home.", 150, 150, 150),
            RadioLine.new("Faded away.", 50, 50, 50)
        }
    },
    {
        messageKey = 34,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("Heard a crack...", 150, 150, 150),
            RadioLine.new("Tree falling nearby.", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("Ran toward it...", 150, 150, 150),
            RadioLine.new("Found shelter.", 150, 150, 150),
            RadioLine.new("Safe for now.", 50, 50, 50),
            RadioLine.new("Breathing easy.", 150, 150, 150)
        }
    }
}

return complexMessages