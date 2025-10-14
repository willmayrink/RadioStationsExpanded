local complexMessages = {
    {
        messageKey = 1,
        triggeringSpawns = true,
        spawnsCorpses = false,
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
        spawnsCorpses = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("Hey, is this thing work?...", 150, 150, 150),
            RadioLine.new("<fzzt>", 150, 150, 150),
            RadioLine.new("<bzzt>", 150, 150, 150),
            RadioLine.new("I think it is...", 150, 150, 150),
            RadioLine.new("<bzzt>", 150, 150, 150),
            RadioLine.new("To be honest, I dont even know what to say...", 150, 150, 150),
            RadioLine.new("I heard a guy saying something about the Rosewood situation", 150, 150, 150),
            RadioLine.new("<fzzt>", 150, 150, 150),
            RadioLine.new("I used to work there...", 150, 150, 150),
            RadioLine.new("You know the Auto Shop?... Its close to the Gigamart...", 150, 150, 150),
            RadioLine.new("<bzzt>", 150, 150, 150),
            RadioLine.new("Thats how I got to know my girlfriend Lisa, going for a cigarette...", 150, 150, 150),
            RadioLine.new("<fzzt>", 150, 150, 150),
            RadioLine.new("*muffled crying sound*", 150, 150, 150),
            RadioLine.new("Those were good great cigarettes we shared...", 150, 150, 150),
            RadioLine.new("Stay safe out there.", 150, 150, 150)
        }
    },
    {
        messageKey = 3,
        triggeringSpawns = true,
        spawnsCorpses = true,
        amountCorpses = 2,
        spawnsGroup = "medical",
        spawnedItems = {"Pills", "Bandage"},
        coordinates = { x = 10748, y = 10560, z = 0 }, -- Muldraugh's Tavern
        lines = {
            RadioLine.new("Can somebody help?", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("I think I left some medical equipment behind...", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("It was somewhere around Muldraugh's Tavern...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("My sister really needs it...", 150, 150, 150),
            RadioLine.new("I'm heading towards the Police Department...", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50)
        }
    },
    {
        messageKey = 4,
        triggeringSpawns = true,
        spawnsCorpses = true,
        amountCorpses = 1,
        spawnsGroup = "guns",
        spawnedItems = {"AssaultRifle", "Pistol3","Shotgun","ShotgunShellsBox","Bullets9mm"},
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
        spawnsCorpses = false,
        spawnsGroup = "food",
        spawnedItems = {"JuiceOrange","CannedPeaches_Box", "OatsRaw", "TinnedBeans","CannedChilli","CannedFruitCocktail","JuiceGrape"},
        coordinates = {x = 8137, y = 11739, z = 1},
        lines = {
            RadioLine.new("Can't we go back there?",150,150,150),
            RadioLine.new("<fzzt>",150,150,150),
            RadioLine.new("Are you nuts?",150,150,150),
            RadioLine.new("Blake, thats basically all of our resources...",150,150,150),
            RadioLine.new("<bzzt>",150,150,150),
            RadioLine.new("We got this car, dont over react over some leftovers...",150,150,150),
            RadioLine.new("<fzzt>",150,150,150),
            RadioLine.new("No one will think of looking for it, we can come back after the horde goes away...",150,150,150),
            RadioLine.new("Yes, absolutely nobody would look for anything inside a f*cking Fire Deparment...",150,150,150),
            RadioLine.new("<fzzt>",150,150,150),
            RadioLine.new("Why is the 2Way red light on this thing...?",150,150,150),
            RadioLine.new("<bzzt>",150,150,150),
            RadioLine.new("Dammit...",150,150,150),
            RadioLine.new("<fzzt>",150,150,150)
        }
    },
    {
        messageKey = 6,
        triggeringSpawns = true,
        spawnsCorpses = false,
        spawnsGroup = "tools",
        spawnedItems = {"Saw","Hammer","Crowbar"},
        coordinates = {x = 7986, y = 11036, z = 0},
        lines = {
            RadioLine.new("Brendon, do you copy?",150,150,150),
            RadioLine.new("<fzzt>",150,150,150),
            RadioLine.new("Brendon... copy?",150,150,150),
            RadioLine.new("I know you probably slept on duty again...",150,150,150),
            RadioLine.new("<bzzt>",150,150,150),
            RadioLine.new("BRENDON DO YOU FUCKING COPY?",150,150,150),
            RadioLine.new("<fzzt>",150,150,150),
            RadioLine.new("Yes, copy. I- I.. do.",150,150,150),
            RadioLine.new("<bzzt>",150,150,150),
            RadioLine.new("<fzzt>",150,150,150),
            RadioLine.new("I spotted some tools on that farm going north from Rosewood",150,150,150),
            RadioLine.new("<bzzt>",150,150,150),
            RadioLine.new("Sure, I will se what I can do about it...later.",150,150,150),
            RadioLine.new("<fzzt>",150,150,150),
            RadioLine.new("This lazy bastard... Roger.",150,150,150)
        }
    },
    {
        messageKey = 7,
        triggeringSpawns = true,
        spawnsCorpses = true,
        amountCorpses = 3,
        spawnsGroup = "guns",
        spawnedItems = {"Pistol", "Bullets9mm", "Pistol2", "Bullets45LC", "Shotgun", "ShotgunShellsBox", "AssaultRifle", "556Clip"},
        coordinates = { x = 11902, y = 6945, z = 0 }, -- West Point Police Station
        lines = {
            RadioLine.new("This is... Officer Hale... or what's left of me...", 150, 150, 150),
            RadioLine.new("West Point PD... the armory's full, but so's the morgue now...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("My wife... she worked dispatch here, you know? Always nagging me about overtime...", 150, 150, 150),
            RadioLine.new("Said it'd kill me one day. Guess she was half right...", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("The kids were at school when it hit. Little Timmy wanted to be a cop like his old man...", 150, 150, 150),
            RadioLine.new("I locked the doors, barricaded with everything we had, but they came through the windows...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("Pistols, shotguns, even the AR... all yours now. Coords: 11900 north, 6950 east...", 150, 150, 150),
            RadioLine.new("Make it count for the families we couldn't save...", 150, 150, 150),
            RadioLine.new("Sarah... Timmy... I'm sorry...", 100, 100, 100),
            RadioLine.new("*choked sob*", 50, 50, 50),
            RadioLine.new("<gunshot>", 50, 50, 50)
        }
    },
    {
        messageKey = 8,
        triggeringSpawns = false,
        spawnsCorpses = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("Muldraugh dispatch... or ex-dispatch, I suppose...", 150, 150, 150),
            RadioLine.new("<fzzt>", 150, 150, 150),
            RadioLine.new("Used to be non-stop chatter on these frequencies... DUIs, domestics, the usual small-town BS...", 150, 150, 150),
            RadioLine.new("Now? Just static and screams...", 150, 150, 150),
            RadioLine.new("<bzzt>", 150, 150, 150),
            RadioLine.new("I remember my first call... kid stuck in a well out by the Bobcats stadium. Whole town turned out...", 150, 150, 150),
            RadioLine.new("We pulled him out, covered in mud, grinning like an idiot. His ma baked pies for a week...", 150, 150, 150),
            RadioLine.new("<fzzt>", 150, 150, 150),
            RadioLine.new("That was before the Knox Event. Before everything went to hell...", 150, 150, 150),
            RadioLine.new("If you're hearing this, remember the good ones. The pies. The grins...", 150, 150, 150),
            RadioLine.new("Might be all we've got left...", 150, 150, 150),
            RadioLine.new("<bzzt>", 150, 150, 150),
            RadioLine.new("Dispatch out.", 100, 100, 100)
        }
    },
    {
        messageKey = 9,
        triggeringSpawns = true,
        spawnsCorpses = true,
        amountCorpses = 2,
        spawnsGroup = "medical",
        spawnedItems = {"FirstAidKit", "Pills", "Bandage", "Disinfectant", "SuturingKit", "Painkillers"},
        coordinates = { x = 10649, y = 10421, z = 0 }, -- Muldraugh Police Department
        lines = {
            RadioLine.new("Help... anyone... this is Sergeant Ruiz, Muldraugh PD...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("We had a med kit here, full stock... bandages, sutures, the works...", 150, 150, 150),
            RadioLine.new("My rookie partner's bit... bad. Real bad. I patched him best I could...", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("He was fresh out of the academy, talked nonstop about his abuela's tamales back home...", 150, 150, 150),
            RadioLine.new("Said he'd take me to her place in Louisville once things quieted down...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("But the fever... it's got him now. He's turning, I can see it in his eyes...", 150, 150, 150),
            RadioLine.new("I can't... I can't do it. Take the supplies, around 10650 by 10420...", 150, 150, 150),
            RadioLine.new("Save who you can, for him. For abuela...", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("*agonized scream*", 100, 100, 100),
            RadioLine.new("Lo siento, kid...", 50, 50, 50),
            RadioLine.new("<gunshot>", 50, 50, 50)
        }
    },
    {
        messageKey = 10,
        triggeringSpawns = true,
        spawnsCorpses = false,
        spawnsGroup = "food",
        spawnedItems = {"CannedTomato","TinnedBeans","CannedCorn","CannedMushrooms","OatsRaw","JuiceApple","Cereal", "CannedPeaches_Box", "TinnedFish"},
        coordinates = { x = 6515, y = 5350, z = 0 }, -- Riverside GigaMart
        lines = {
            RadioLine.new("Riverside survivors... if anyone's left...", 150, 150, 150),
            RadioLine.new("This is Marty from the GigaMart night shift...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("We loaded up the back room with cans... beans, tomatoes, all the shelf-stable stuff...", 150, 150, 150),
            RadioLine.new("Me and the crew thought it'd last us through the storm...", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("Storm? Hell, this is the apocalypse. My buddy Lenny, he was the stock guy...", 150, 150, 150),
            RadioLine.new("Always sneaking extra peaches into my cart 'cause he knew they were my favorite...", 150, 150, 150),
            RadioLine.new("Said life's too short for bland food, even in the end times...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("The dead got him in the loading dock. I hid, heard it all...", 150, 150, 150),
            RadioLine.new("Take the stash, 6510 north, 5350 east. Eat those peaches for Lenny...", 150, 150, 150),
            RadioLine.new("And if you find a quiet spot... say a prayer for the night owls who kept the shelves full...", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50)
        }
    },
    {
        messageKey = 11,
        triggeringSpawns = true,
        spawnsCorpses = true,
        amountCorpses = 1,
        spawnsGroup = "tools",
        spawnedItems = {"Screwdriver","Wrench","Drill","NailsBox","ScrewsBox", "Hammer", "Saw"},
        coordinates = { x = 548, y = 9894, z = 0 }, -- Ekron Industrial
        lines = {
            RadioLine.new("Ekron factory line... this is shift supervisor Ellis...", 150, 150, 150),
            RadioLine.new("<fzzt>", 150, 150, 150),
            RadioLine.new("The welders left their tools scattered... wrenches, drills, everything...", 150, 150, 150),
            RadioLine.new("We were cranking out parts for the army when the alarms went off...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("My foreman, old man Hargrove... tough as nails, that one. Lost his boy in 'Nam...", 150, 150, 150),
            RadioLine.new("Taught me everything: how to torque a bolt just right, how to spot a weak weld before it snaps...", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("He went down swinging with a crowbar when they breached the shop floor...", 150, 150, 150),
            RadioLine.new("Bought me time to grab the radio and run...", 150, 150, 150),
            RadioLine.new("Coords: 550 north, 9890 east. Use 'em to build something unbreakable...", 150, 150, 150),
            RadioLine.new("A wall. A fort. Whatever keeps the world out...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("Hargrove'd approve. Steady hands now...", 100, 100, 100),
            RadioLine.new("*heavy breathing*", 50, 50, 50)
        }
    },
    {
        messageKey = 12,
        triggeringSpawns = true,
        spawnsCorpses = false,
        spawnsGroup = "medical",
        spawnedItems = {"Bandage", "Pills", "FirstAidKit", "Antibiotics"},
        coordinates = { x = 10619, y = 9966, z = 0 }, -- Muldraugh Clinic or nearby
        lines = {
            RadioLine.new("Muldraugh Medical... Doctor Elena speaking... or whispering, I guess...", 150, 150, 150),
            RadioLine.new("<fzzt>", 150, 150, 150),
            RadioLine.new("The clinic's supply closet... bandages, antibiotics... I restocked it myself this morning...", 150, 150, 150),
            RadioLine.new("Before the patients started... changing...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("Mrs. Whitaker came in for her arthritis meds. Sweet lady, baked the best apple pies for bake sales...", 150, 150, 150),
            RadioLine.new("She bit her husband in the waiting room. Turned on a dime...", 150, 150, 150),
            RadioLine.new("I locked myself in the pharmacy, heard the screams fade to gurgles...", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("This infection... it's not just viral. It's erasing us...", 150, 150, 150),
            RadioLine.new("Take the meds, around 10620 by 9970. Patch up, fight the fever...", 150, 150, 150),
            RadioLine.new("For the Whitakers of the world. The ones who made pie when life hurt...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("Stay human out there...", 100, 100, 100),
            RadioLine.new("*soft weeping*", 50, 50, 50)
        }
    }
}

return complexMessages