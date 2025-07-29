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
    }
}

return complexMessages