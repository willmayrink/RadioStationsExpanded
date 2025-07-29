local complexMessages = {
    -- Loot Messages (20%)
    {
        messageKey = 5,
        triggeringSpawns = true,
        spawnsGroup = "tools",
        spawnedItems = {"Base.Hammer", "Base.Screwdriver"},
        coordinates = { x = 8066, y = 11722, z = 0 },
        lines = {
            RadioLine.new("This is a survivor’s call...", 150, 150, 150),
            RadioLine.new("Left some tools behind in a rush.", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("X...8066, Y...11722.", 150, 150, 150),
            RadioLine.new("Grab them quick!", 50, 50, 50)
        }
    },
    {
        messageKey = 6,
        triggeringSpawns = true,
        spawnsGroup = "bags",
        spawnedItems = {"Base.Bag_Schoolbag", "Base.Bag_Satchel"},
        coordinates = { x = 8500, y = 11800, z = 0 },
        lines = {
            RadioLine.new("Attention, folks!", 150, 150, 150),
            RadioLine.new("Dropped my bags with supplies.", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("Coords: X...8500, Y...11800.", 150, 150, 150),
            RadioLine.new("Hurry, they’re yours!", 50, 50, 50)
        }
    },
    {
        messageKey = 7,
        triggeringSpawns = true,
        spawnsGroup = "literature",
        spawnedItems = {"Base.Newspaper", "Base.BookCarpentry1"},
        coordinates = { x = 8066, y = 11722, z = 0 },
        lines = {
            RadioLine.new("To any listeners...", 150, 150, 150),
            RadioLine.new("Left some reading material behind.", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("At X...8066, Y...11722.", 150, 150, 150),
            RadioLine.new("Knowledge is power!", 50, 50, 50)
        }
    },
    {
        messageKey = 8,
        triggeringSpawns = true,
        spawnsGroup = "mementos",
        spawnedItems = {"Base.WeddingVeil", "Base.Necklace_Crucifix"},
        coordinates = { x = 8500, y = 11800, z = 0 },
        lines = {
            RadioLine.new("A somber broadcast...", 150, 150, 150),
            RadioLine.new("My keepsakes are at these coords.", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("X...8500, Y...11800.", 150, 150, 150),
            RadioLine.new("Take them with care.", 50, 50, 50)
        }
    },
    {
        messageKey = 9,
        triggeringSpawns = true,
        spawnsGroup = "tools",
        spawnedItems = {"Base.Wrench", "Base.Saw"},
        coordinates = { x = 8066, y = 11722, z = 0 },
        lines = {
            RadioLine.new("Survivors, listen close!", 150, 150, 150),
            RadioLine.new("Tools abandoned in a fight.", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("X...8066, Y...11722.", 150, 150, 150),
            RadioLine.new("Use them well!", 50, 50, 50)
        }
    },
    {
        messageKey = 10,
        triggeringSpawns = true,
        spawnsGroup = "bags",
        spawnedItems = {"Base.Bag_DuffelBag", "Base.Bag_FannyPackBack"},
        coordinates = { x = 8500, y = 11800, z = 0 },
        lines = {
            RadioLine.new("This is a desperate plea...", 150, 150, 150),
            RadioLine.new("Left my bags behind.", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("X...8500, Y...11800.", 150, 150, 150),
            RadioLine.new("Save what you can!", 50, 50, 50)
        }
    },

    -- No-Loot Messages (80%)
    {
        messageKey = 11,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("Static on the line...", 150, 150, 150),
            RadioLine.new("No help here, just noise.", 150, 150, 150),
            RadioLine.new("Stay vigilant.", 150, 150, 150)
        }
    },
    {
        messageKey = 12,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("A lone voice here...", 150, 150, 150),
            RadioLine.new("Nothing to offer today.", 150, 150, 150),
            RadioLine.new("Keep moving.", 150, 150, 150)
        }
    },
    {
        messageKey = 13,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("Crackling through...", 150, 150, 150),
            RadioLine.new("No goods, just static.", 150, 150, 150),
            RadioLine.new("Good luck out there.", 150, 150, 150)
        }
    },
    {
        messageKey = 14,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("This is a warning...", 150, 150, 150),
            RadioLine.new("No supplies to share.", 150, 150, 150),
            RadioLine.new("Stay safe.", 150, 150, 150)
        }
    },
    {
        messageKey = 15,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("Faint signal here...", 150, 150, 150),
            RadioLine.new("Empty hands, empty words.", 150, 150, 150),
            RadioLine.new("Hold on somehow.", 150, 150, 150)
        }
    },
    {
        messageKey = 16,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("Echoes on the air...", 150, 150, 150),
            RadioLine.new("No loot, just silence.", 150, 150, 150),
            RadioLine.new("Keep fighting.", 150, 150, 150)
        }
    },
    {
        messageKey = 17,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("A broken transmission...", 150, 150, 150),
            RadioLine.new("Nothing useful here.", 150, 150, 150),
            RadioLine.new("Survive another day.", 150, 150, 150)
        }
    },
    {
        messageKey = 18,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("Static fills the void...", 150, 150, 150),
            RadioLine.new("No items to give.", 150, 150, 150),
            RadioLine.new("Stay alive.", 150, 150, 150)
        }
    },
    {
        messageKey = 19,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("Fading signal ahead...", 150, 150, 150),
            RadioLine.new("No treasures today.", 150, 150, 150),
            RadioLine.new("Press on.", 150, 150, 150)
        }
    },
    {
        messageKey = 20,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("A weary voice speaks...", 150, 150, 150),
            RadioLine.new("Nothing left to share.", 150, 150, 150),
            RadioLine.new("Hold the line.", 150, 150, 150)
        }
    },
    {
        messageKey = 21,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("Crackle of the dead air...", 150, 150, 150),
            RadioLine.new("No loot in sight.", 150, 150, 150),
            RadioLine.new("Keep going.", 150, 150, 150)
        }
    },
    {
        messageKey = 22,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("A hollow broadcast...", 150, 150, 150),
            RadioLine.new("Empty hands here.", 150, 150, 150),
            RadioLine.new("Stay strong.", 150, 150, 150)
        }
    },
    {
        messageKey = 23,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("Faint hope on the waves...", 150, 150, 150),
            RadioLine.new("No supplies to offer.", 150, 150, 150),
            RadioLine.new("Survive somehow.", 150, 150, 150)
        }
    },
    {
        messageKey = 24,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("Static hums low...", 150, 150, 150),
            RadioLine.new("Nothing to find.", 150, 150, 150),
            RadioLine.new("Keep pushing.", 150, 150, 150)
        }
    },
    {
        messageKey = 25,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("A lonely signal...", 150, 150, 150),
            RadioLine.new("No goods today.", 150, 150, 150),
            RadioLine.new("Hold fast.", 150, 150, 150)
        }
    },
    {
        messageKey = 26,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("Dead air speaks...", 150, 150, 150),
            RadioLine.new("No loot to give.", 150, 150, 150),
            RadioLine.new("Stay alive.", 150, 150, 150)
        }
    },
    {
        messageKey = 27,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("Crackling silence...", 150, 150, 150),
            RadioLine.new("Empty broadcast.", 150, 150, 150),
            RadioLine.new("Keep surviving.", 150, 150, 150)
        }
    },
    {
        messageKey = 28,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("A faint whisper...", 150, 150, 150),
            RadioLine.new("No items here.", 150, 150, 150),
            RadioLine.new("Press forward.", 150, 150, 150)
        }
    },
    {
        messageKey = 29,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("Static fills the air...", 150, 150, 150),
            RadioLine.new("Nothing to share.", 150, 150, 150),
            RadioLine.new("Stay strong.", 150, 150, 150)
        }
    },
    {
        messageKey = 30,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("A quiet hum...", 150, 150, 150),
            RadioLine.new("No loot today.", 150, 150, 150),
            RadioLine.new("Keep going.", 150, 150, 150)
        }
    },
    {
        messageKey = 31,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("Broken signal ahead...", 150, 150, 150),
            RadioLine.new("Empty hands.", 150, 150, 150),
            RadioLine.new("Survive on.", 150, 150, 150)
        }
    },
    {
        messageKey = 32,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("Fading voice here...", 150, 150, 150),
            RadioLine.new("No supplies.", 150, 150, 150),
            RadioLine.new("Hold the line.", 150, 150, 150)
        }
    },
    {
        messageKey = 33,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("Static reigns...", 150, 150, 150),
            RadioLine.new("No loot to find.", 150, 150, 150),
            RadioLine.new("Keep alive.", 150, 150, 150)
        }
    },
    {
        messageKey = 34,
        triggeringSpawns = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("A muted call...", 150, 150, 150),
            RadioLine.new("Nothing here.", 150, 150, 150),
            RadioLine.new("Stay safe.", 150, 150, 150)
        }
    }
}

return complexMessages