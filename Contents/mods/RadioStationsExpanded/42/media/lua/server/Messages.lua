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
    
    -- Loot Messages (20%) - Survivors Giving Directions
    {
        messageKey = 5,
        triggeringSpawns = true,
        spawnsGroup = "tools",
        spawnedItems = {"Base.Hammer", "Base.Axe"},
        coordinates = { x = 8066, y = 11722, z = 0 },
        lines = {
            RadioLine.new("I’m Lila, a sculptor gone rogue...", 150, 150, 150),
            RadioLine.new("Smashed my way out, left my hammer and axe.", 150, 150, 150),
            RadioLine.new("Seek them at X...8066, Y...11722.", 150, 150, 150),
            RadioLine.new("Carve your survival!", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("They’re yours now—go!", 150, 150, 150)
        }
    },
    {
        messageKey = 6,
        triggeringSpawns = true,
        spawnsGroup = "bags",
        spawnedItems = {"Base.Bag_HydrationBackpack", "Base.Bag_Satchel_Medical"},
        coordinates = { x = 8500, y = 11800, z = 0 },
        lines = {
            RadioLine.new("I’m Rajiv, a nomad with a limp...", 150, 150, 150),
            RadioLine.new("Dropped my hydration pack and med satchel mid-flight.", 150, 150, 150),
            RadioLine.new("They’re at X...8500, Y...11800.", 150, 150, 150),
            RadioLine.new("Snatch them before the crows do!", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("Run, friend!", 150, 150, 150)
        }
    },
    {
        messageKey = 7,
        triggeringSpawns = true,
        spawnsGroup = "literature",
        spawnedItems = {"Base.BookCooking1", "Base.Map_Riverside"},
        coordinates = { x = 8066, y = 11722, z = 0 },
        lines = {
            RadioLine.new("I’m Clara, a storyteller on the run...", 150, 150, 150),
            RadioLine.new("Lost my cookbook and a map in a sprint.", 150, 150, 150),
            RadioLine.new("Find them at X...8066, Y...11722.", 150, 150, 150),
            RadioLine.new("Cook and navigate your way out!", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("Take my legacy!", 150, 150, 150)
        }
    },
    {
        messageKey = 8,
        triggeringSpawns = true,
        spawnsGroup = "mementos",
        spawnedItems = {"Base.Necklace_YinYang", "Base.Hat_SantaHat"},
        coordinates = { x = 8500, y = 11800, z = 0 },
        lines = {
            RadioLine.new("I’m Elias, a monk turned wanderer...", 150, 150, 150),
            RadioLine.new("Abandoned my yin-yang necklace and Santa hat.", 150, 150, 150),
            RadioLine.new("They’re at X...8500, Y...11800.", 150, 150, 150),
            RadioLine.new("Wear them for luck or laughs!", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("Peace be with you.", 150, 150, 150)
        }
    },
    {
        messageKey = 9,
        triggeringSpawns = true,
        spawnsGroup = "tools",
        spawnedItems = {"Base.Saw", "Base.Crowbar"},
        coordinates = { x = 8066, y = 11722, z = 0 },
        lines = {
            RadioLine.new("I’m Theo, a tinkerer with no time...", 150, 150, 150),
            RadioLine.new("Tossed my saw and crowbar to distract them.", 150, 150, 150),
            RadioLine.new("Look at X...8066, Y...11722.", 150, 150, 150),
            RadioLine.new("Pry open your future!", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("Hurry up!", 150, 150, 150)
        }
    },
    {
        messageKey = 10,
        triggeringSpawns = true,
        spawnsGroup = "bags",
        spawnedItems = {"Base.Bag_GolfBag", "Base.Bag_PicnicBasket"},
        coordinates = { x = 8500, y = 11800, z = 0 },
        lines = {
            RadioLine.new("I’m Nadia, a caddy with a twist...", 150, 150, 150),
            RadioLine.new("Left my golf bag and picnic basket behind.", 150, 150, 150),
            RadioLine.new("They’re at X...8500, Y...11800.", 150, 150, 150),
            RadioLine.new("Swing or snack your way out!", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("Go get ‘em!", 150, 150, 150)
        }
    },

    -- No-Loot Messages (80%) - Vague, Short Storytelling (Up to 8 Lines)
    {
        messageKey = 11,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("I’m Kofi, a drummer...", 150, 150, 150),
            RadioLine.new("...", 150, 150, 150),
            RadioLine.new("Beats echo in my head...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("No sticks left...", 150, 150, 150),
            RadioLine.new("Just rhythm.", 50, 50, 50)
        }
    },
    {
        messageKey = 12,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("I’m Hana, a gardener...", 150, 150, 150),
            RadioLine.new("...", 150, 150, 150),
            RadioLine.new("Planted roses once...", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("Now I grow hope...", 150, 150, 150),
            RadioLine.new("In dirt.", 50, 50, 50)
        }
    },
    {
        messageKey = 13,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("I’m Javier, a barber...", 150, 150, 150),
            RadioLine.new("...", 150, 150, 150),
            RadioLine.new("Shaved heads daily...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("Now my mirror’s cracked...", 150, 150, 150),
            RadioLine.new("Wild hair!", 50, 50, 50)
        }
    },
    {
        messageKey = 14,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("I’m Zoya, a librarian...", 150, 150, 150),
            RadioLine.new("...", 150, 150, 150),
            RadioLine.new("Cataloged books for years...", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("Now I read ashes...", 150, 150, 150),
            RadioLine.new("Silent pages.", 50, 50, 50)
        }
    },
    {
        messageKey = 15,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("I’m Finn, a juggler...", 150, 150, 150),
            RadioLine.new("...", 150, 150, 150),
            RadioLine.new("Tossed balls in the air...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("Now I dodge teeth...", 150, 150, 150),
            RadioLine.new("Clumsy days.", 50, 50, 50)
        }
    },
    {
        messageKey = 16,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("I’m Leila, a tailor...", 150, 150, 150),
            RadioLine.new("...", 150, 150, 150),
            RadioLine.new("Sewed dresses with love...", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("Now I patch wounds...", 150, 150, 150),
            RadioLine.new("With thread.", 50, 50, 50)
        }
    },
    {
        messageKey = 17,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("I’m Amos, a clockmaker...", 150, 150, 150),
            RadioLine.new("...", 150, 150, 150),
            RadioLine.new("Timed every tick...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("Now I count heartbeats...", 150, 150, 150),
            RadioLine.new("Slowing.", 50, 50, 50)
        }
    },
    {
        messageKey = 18,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("I’m Priya, a dancer...", 150, 150, 150),
            RadioLine.new("...", 150, 150, 150),
            RadioLine.new("Twirled on stages...", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("Now I step over bones...", 150, 150, 150),
            RadioLine.new("Grace gone.", 50, 50, 50)
        }
    },
    {
        messageKey = 19,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("I’m Otto, a brewer...", 150, 150, 150),
            RadioLine.new("...", 150, 150, 150),
            RadioLine.new("Crafted ales for cheers...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("Now I sip dew...", 150, 150, 150),
            RadioLine.new("Bitter taste.", 50, 50, 50)
        }
    },
    {
        messageKey = 20,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("I’m Selma, a poet...", 150, 150, 150),
            RadioLine.new("...", 150, 150, 150),
            RadioLine.new("Wrote verses of love...", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("Now I rhyme survival...", 150, 150, 150),
            RadioLine.new("In whispers.", 50, 50, 50)
        }
    },
    {
        messageKey = 21,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("I’m Yuri, a chess player...", 150, 150, 150),
            RadioLine.new("...", 150, 150, 150),
            RadioLine.new("Outsmarted opponents...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("Now I plan moves...", 150, 150, 150),
            RadioLine.new("Against death.", 50, 50, 50)
        }
    },
    {
        messageKey = 22,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("I’m Mira, a glassblower...", 150, 150, 150),
            RadioLine.new("...", 150, 150, 150),
            RadioLine.new("Shaped beauty from heat...", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("Now I melt fear...", 150, 150, 150),
            RadioLine.new("With breath.", 50, 50, 50)
        }
    },
    {
        messageKey = 23,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("I’m Bruno, a hiker...", 150, 150, 150),
            RadioLine.new("...", 150, 150, 150),
            RadioLine.new("Spotted a zombie today...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("Looked like Vanilla Ice!", 150, 150, 150),
            RadioLine.new("Rapping ‘Ice Ice Baby’...", 150, 150, 150),
            RadioLine.new("Cracked me up!", 50, 50, 50)
        }
    },
    {
        messageKey = 24,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("I’m Lila, a cashier...", 150, 150, 150),
            RadioLine.new("...", 150, 150, 150),
            RadioLine.new("Saw a ghoul yesterday...", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("Looked like MC Hammer!", 150, 150, 150),
            RadioLine.new("Can’t touch this pose...", 150, 150, 150),
            RadioLine.new("Hilarious chaos!", 50, 50, 50)
        }
    },
    {
        messageKey = 25,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("I’m Kai, a surfer...", 150, 150, 150),
            RadioLine.new("...", 150, 150, 150),
            RadioLine.new("Caught a wave once...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("Now I ride rooftops...", 150, 150, 150),
            RadioLine.new("For safety.", 50, 50, 50)
        }
    },
    {
        messageKey = 26,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("I’m Petra, a jeweler...", 150, 150, 150),
            RadioLine.new("...", 150, 150, 150),
            RadioLine.new("Crafted rings of gold...", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("Now I polish memories...", 150, 150, 150),
            RadioLine.new("In silence.", 50, 50, 50)
        }
    },
    {
        messageKey = 27,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("I’m Soren, a blacksmith...", 150, 150, 150),
            RadioLine.new("...", 150, 150, 150),
            RadioLine.new("Forged steel daily...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("Now I hammer hope...", 150, 150, 150),
            RadioLine.new("With words.", 50, 50, 50)
        }
    },
    {
        messageKey = 28,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("I’m Uma, a astronomer...", 150, 150, 150),
            RadioLine.new("...", 150, 150, 150),
            RadioLine.new("Stared at stars nightly...", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("Now I track constellations...", 150, 150, 150),
            RadioLine.new("For guidance.", 50, 50, 50)
        }
    },
    {
        messageKey = 29,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("I’m Tasha, a clown...", 150, 150, 150),
            RadioLine.new("...", 150, 150, 150),
            RadioLine.new("Made kids laugh once...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("Now I juggle survival...", 150, 150, 150),
            RadioLine.new("With tears.", 50, 50, 50)
        }
    },
    {
        messageKey = 30,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("I’m Vikram, a potter...", 150, 150, 150),
            RadioLine.new("...", 150, 150, 150),
            RadioLine.new("Shaped clay with care...", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("Now I mold courage...", 150, 150, 150),
            RadioLine.new("From mud.", 50, 50, 50)
        }
    }
}
return complexMessages