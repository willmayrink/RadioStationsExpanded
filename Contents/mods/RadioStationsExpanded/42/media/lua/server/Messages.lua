--https://b42map.com?9056x12185
local complexMessages = {
    {
        messageKey = 1,
        triggeringSpawns = true,
        spawnsGroup = "guns",
        spawnedItems = {"AssaultRifle","556Clip", "Pistol3","Shotgun","ShotgunShellsBox","ShotgunShells","ShotgunShells","ShotgunShells","ShotgunShells","ShotgunShells","ShotgunShells"},
        coordinates = { x = 8066, y = 11723, z = 0 }, -- Rosewood police armory
        lines = {
            RadioLine.new("I am not going to say who I am", 150, 150, 150),
            RadioLine.new("But I will give out some information that might help...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("There are some guns left in Rosewood PD Armory...", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("If you are not from here...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("Longitude...8660", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("Latitude...11723", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("Godspeed...", 50, 50, 50)
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
        spawnedItems = {"Painkiller", "Bandage"},
        coordinates = { x = 9056, y = 12185, z = 0 }, -- Example coordinates
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
        spawnedItems = {"AssaultRifle", "Pistol3","Shotgun","CorpseMale"},
        coordinates = {x = 7253, y = 8379, z = 0},
        lines = {
            RadioLine.new("What a shame...", 150, 150, 150),
            RadioLine.new("Even tho I had all these weapons...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("I couldn't take them...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("FUCK!", 150, 150, 150),
            RadioLine.new("I'm on Fallas Lake Police Department, use these to send as many as you can to hell...", 150, 150, 150),
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
        spawnedItems = {"Hammer", "Axe"},
        coordinates = { x = 10136, y = 11186, z = 0 },
        lines = {
            RadioLine.new("Fled a mob, dropped my hammer and axe.", 150, 150, 150),
            RadioLine.new("Find them close to the cross road...", 150, 150, 150),
            RadioLine.new("<bzzt>", 150, 150, 150),
            RadioLine.new("Going south, from Rosewood to Muldraugh", 150, 150, 150),
            RadioLine.new("Use them to fight back!", 150, 150, 150),
            RadioLine.new("<fzzt>", 150, 150, 150),
            RadioLine.new("You will definitely need them...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50)
        }
    },
    {
        messageKey = 6,
        triggeringSpawns = true,
        spawnsGroup = "bags",
        spawnedItems = {"Bag_HydrationBackpack", "Bag_Satchel_Medical"},
        coordinates = { x = 9056, y = 12185, z = 0 },
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
        spawnedItems = {"BookCooking1", "Map_Riverside"},
        coordinates = { x = 9056, y = 12185, z = 0 },
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
        spawnedItems = {"Necklace_YinYang", "Hat_SantaHat"},
        coordinates = { x = 9056, y = 12185, z = 0 },
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
        spawnedItems = {"Saw", "Crowbar"},
        coordinates = { x = 9056, y = 12185, z = 0 },
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
        spawnedItems = {"Bag_GolfBag", "Bag_PicnicBasket"},
        coordinates = { x = 9056, y = 12185, z = 0 },
        lines = {
            RadioLine.new("Nadia, caddy—left my golf bag and basket.", 150, 150, 150),
            RadioLine.new("Find them at X...8500, Y...11800.", 150, 150, 150),
            RadioLine.new("Swing or snack to survive!", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("They’re yours—take care!", 150, 150, 150)
        }
    
    }
}

return complexMessages