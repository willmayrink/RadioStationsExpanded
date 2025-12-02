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
        spawnedItems = {"AssaultRifle", "Pistol3","Shotgun","ShotgunShellsBox","Bullets9mm","WalkieTalkie4","Bag_DuffelBag"},
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
        spawnedItems = {"Bandage", "Pills", "FirstAidKit", "Antibiotics","Bag_Schoolbag_Medical"},
        coordinates = { x = 10619, y = 9966, z = 0 }, -- Muldraugh Clinic or nearby
        lines = {
            RadioLine.new("Muldraugh Medical... Doctor Elena speaking... or whispering, I guess...", 150, 150, 150),
            RadioLine.new("<fzzt>", 150, 150, 150),
            RadioLine.new("The clinic's supply closet... bandages, antibiotics... I restocked it myself few days ago...", 150, 150, 150),
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
    },
    {
        messageKey = 13,
        triggeringSpawns = true,
        spawnsCorpses = true,
        amountCorpses = 4,
        spawnsGroup = "medical",
        spawnedItems = {"FirstAidKit", "SutureNeedle", "Antibiotics", "Disinfectant", "Bandage", "Pills", "PillsBeta"},
        coordinates = { x = 10882, y = 10037, z = 0 }, -- Cortman Medical, Muldraugh
        lines = {
            RadioLine.new("This is Dr. Harlan from Cortman Medical... if anyone's listening...", 150, 150, 150),
            RadioLine.new("The ER's a slaughterhouse now... bodies everywhere, the ones that used to be patients...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("I came here straight out of med school, full of that savior complex...", 150, 150, 150),
            RadioLine.new("My first shift, we lost a kid to a tractor accident. Farmer's boy, all scraped up from the fields...", 150, 150, 150),
            RadioLine.new("His dad waited in the hall, clutching a greasy John Deere cap, eyes like he was already burying him...", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("We fought for hours, stitched him up, pumped him full of antibiotics... he pulled through...", 150, 150, 150),
            RadioLine.new("Last I saw, that dad was teaching him to drive that same tractor, both grinning like fools...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("Now? The supplies are still here, sutures, painkillers, the works... around 10880 by 10040...", 150, 150, 150),
            RadioLine.new("But the fight's different. This thing... it doesn't care about stitches...", 150, 150, 150),
            RadioLine.new("Take it all. Fight for your tractor boys, your pie-baking grannies...", 150, 150, 150),
            RadioLine.new("Someone's gotta remember how to save 'em...", 100, 100, 100),
            RadioLine.new("*distant moans and shuffling*", 50, 50, 50),
            RadioLine.new("<door creaking open>", 50, 50, 50)
        }
    },
    {
        messageKey = 14,
        triggeringSpawns = true,
        spawnsCorpses = false,
        spawnsGroup = "guns",
        spawnedItems = {"Pistol", "Bullets9mm", "Pistol2", "Shotgun", "ShotgunShells", "Bullets45LC"},
        coordinates = { x = 11850, y = 7000, z = 0 }, -- West Point Medical Clinic
        lines = {
            RadioLine.new("West Point Clinic... Nurse Carla here... radio check, anyone?", 150, 150, 150),
            RadioLine.new("God, the static's the only company I've got left...", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("We kept a stash of sidearms in the office safe... doc's orders, after that break-in last year...", 150, 150, 150),
            RadioLine.new("Pistols, a shotgun for the real crazies... shells and all...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("Remember old Mr. Jenkins? Came in every Tuesday for his blood pressure meds...", 150, 150, 150),
            RadioLine.new("Grumpy as hell, but he'd slip the kids lollipops from his pocket...", 150, 150, 150),
            RadioLine.new("Told me once, after losing his wife, 'Carla, life's too short for frowns. Smile, even when it hurts.'...", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("He turned first. Bit the receptionist before we could react...", 150, 150, 150),
            RadioLine.new("I locked the safe, but... I can't hold out much longer...", 150, 150, 150),
            RadioLine.new("Coords: 11850 north, 7000 east. Use 'em to keep smiling, Jenkins...", 150, 150, 150),
            RadioLine.new("For the Tuesdays that won't come...", 100, 100, 100),
            RadioLine.new("*whimpering*", 50, 50, 50),
            RadioLine.new("<scratching at door>", 50, 50, 50)
        }
    },
    {
        messageKey = 15,
        triggeringSpawns = true,
        spawnsCorpses = true,
        amountCorpses = 2,
        spawnsGroup = "food",
        spawnedItems = {"CannedFood", "TinnedBeans", "CannedCorn", "OatsRaw", "JuiceBox", "Cereal", "CannedPeaches"},
        coordinates = { x = 250, y = 9600, z = 0 }, -- Ekron Community College
        lines = {
            RadioLine.new("Ekron Community College... Professor Langford, history department...", 150, 150, 150),
            RadioLine.new("The cafeteria's pantry... we stocked it for the storm warning yesterday...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("Cans, cereals... enough for the whole faculty lounge to hole up...", 150, 150, 150),
            RadioLine.new("But the students... they came shambling through the quad like it was finals week from hell...", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("My TA, young Sarah... bright kid, always arguing manifest destiny in class...", 150, 150, 150),
            RadioLine.new("Wanted to be a teacher, said history was about not repeating mistakes...", 150, 150, 150),
            RadioLine.new("She barricaded the library door, bought us time... but they dragged her out...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("I ran here, to the kitchen. Locked in with ghosts and canned corn...", 150, 150, 150),
            RadioLine.new("Take the food, around 250 north, 9600 east. Learn from it, Sarah...", 150, 150, 150),
            RadioLine.new("Don't repeat this mistake. Teach 'em better...", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("*book pages rustling*", 50, 50, 50),
            RadioLine.new("Class dismissed...", 50, 50, 50)
        }
    },
    {
        messageKey = 16,
        triggeringSpawns = true,
        spawnsCorpses = true,
        amountCorpses = 3,
        spawnsGroup = "guns",
        spawnedItems = {"Pistol3", "Bullets9mm", "AssaultRifle", "556Clip", "Shotgun", "ShotgunShellsBox", "Pistol", "Bullets45LC"},
        coordinates = { x = 12940, y = 2076, z = 0 }, -- Louisville Central Hospital (adapted for guns in security)
        lines = {
            RadioLine.new("Central Hospital... this is Security Chief Ramirez... or was...", 150, 150, 150),
            RadioLine.new("The lockdown failed... patients turning faster than we could sedate 'em...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("I started here as a candy striper, back when I was sixteen... scrubbing floors, fetching bedpans...", 150, 150, 150),
            RadioLine.new("Fell for a nurse, married her after a decade of shifts and stolen kisses in the linen closet...", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("Our boy was born in this very ER... cried like a banshee while the doc joked about football scholarships...", 150, 150, 150),
            RadioLine.new("Now the halls echo with different screams... and he's out there somewhere, God help him...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("The security locker... sidearms, the riot shotgun... it's all there. Around 12940 north, 2075 east...", 150, 150, 150),
            RadioLine.new("Use 'em to protect the ones still breathing... tell 'em Ramirez said so...", 150, 150, 150),
            RadioLine.new("Maria... if you hear this... I love you. Always did.", 100, 100, 100),
            RadioLine.new("*static crackle, fading heartbeat*", 50, 50, 50),
            RadioLine.new("<final breath>", 50, 50, 50)
        }
    },
    {
        messageKey = 17,
        triggeringSpawns = false,
        spawnsCorpses = false,
        spawnsGroup = nil,
        coordinates = nil,
        spawnedItems = nil,
        lines = {
            RadioLine.new("Brandenburg dispatch... picking up echoes on the wire...", 150, 150, 150),
            RadioLine.new("<fzzt>", 150, 150, 150),
            RadioLine.new("This town's got history, you know? Founded by Germans in the 1700s... breweries, brass bands, potlucks after church...", 150, 150, 150),
            RadioLine.new("I grew up on stories from my granddad... he lost an arm in the mill, but he'd arm-wrestle anyone with the other...", 150, 150, 150),
            RadioLine.new("<bzzt>", 150, 150, 150),
            RadioLine.new("Took me fishing on the Ohio, taught me to tie flies that'd fool any bass... said life's like that—hook 'em quick or they slip away...", 150, 150, 150),
            RadioLine.new("Now the river's choked with floaters, and the band's instruments are just debris...", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("If you're near the old bridge... watch the currents. They carry more than water these days...", 150, 150, 150),
            RadioLine.new("Granddad'd say tie a stronger knot... but some things, you just let go...", 150, 150, 150),
            RadioLine.new("Tight lines, folks... wherever you're casting...", 100, 100, 100),
            RadioLine.new("<distant banjo strum, cut short>", 50, 50, 50)
        }
    },
    {
        messageKey = 18,
        triggeringSpawns = true,
        spawnsCorpses = true,
        amountCorpses = 2,
        spawnsGroup = "medical",
        spawnedItems = {"FirstAidKit", "Antibiotics", "SutureNeedle", "Disinfectant", "Bandage", "Pills"},
        coordinates = { x = 12458, y = 3702, z = 0 }, -- St. Peregrin Hospital
        lines = {
            RadioLine.new("St. Peregrine's... Father Michael here... not the priest, the orderly...", 150, 150, 150),
            RadioLine.new("We patched up the broken, the addicted... gave 'em a cot and a prayer if they needed it...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("Sister Agnes ran triage like a general... lost her husband to the bottle, but she'd nurse anyone back...", 150, 150, 150),
            RadioLine.new("Whispered rosaries over the dying, baked communion wafers that tasted like hope...", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("She went down in the chapel, holding vespers for the infected... wouldn't let go of her beads...", 150, 150, 150),
            RadioLine.new("The supply room's untouched... kits, sutures, whatever's left of mercy... 12460 north, 3700 east...", 150, 150, 150),
            RadioLine.new("Take it. Bind wounds, not just bodies... souls too, if you can...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("Agnes... rest easy. I'll see you on the other side...", 100, 100, 100),
            RadioLine.new("*Ave Maria, hummed faintly*", 50, 50, 50),
            RadioLine.new("<glass shattering nearby>", 50, 50, 50)
        }
    },
    {
        messageKey = 19,
        triggeringSpawns = true,
        spawnsCorpses = false,
        spawnsGroup = "food",
        spawnedItems = {"CannedChilli", "TinnedBeans", "Cereal", "OatsRaw", "CannedFruitCocktail", "JuiceGrape", "CannedTomato", "CannedPeaches_Box"},
        coordinates = { x = 13330, y = 1242, z = 0 }, -- Chugg's Beverage Factory
        lines = {
            RadioLine.new("Chugg's Factory... this is line worker Eddie... or the ghost of one...", 150, 150, 150),
            RadioLine.new("We bottled the buzz... beer, soda, whatever kept the parties flowing...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("My pops ran the yeast vats... taught me to sneak sips, said it built character... and a tolerance...", 150, 150, 150),
            RadioLine.new("We'd crack cold ones after shifts, him telling tales of bootlegging in the hills during Prohibition...", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("The outbreak hit during inventory... pallets of cans toppled like dominoes, and the dead rose with hangovers...", 150, 150, 150),
            RadioLine.new("Pops barricaded the cooler, went down buying time for the newbies...", 150, 150, 150),
            RadioLine.new("The stockroom's full... chilis, beans, fruits in tins... 13330 north, 1240 east. Toast to the old man...", 150, 150, 150),
            RadioLine.new("To the hills, and the hooch that got us through...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("Bottoms up... while you still can...", 100, 100, 100),
            RadioLine.new("*clink of cans, echoing empty>", 50, 50, 50)
        }
    },
    {
        messageKey = 20,
        triggeringSpawns = true,
        spawnsCorpses = true,
        amountCorpses = 1,
        spawnsGroup = "tools",
        spawnedItems = {"Hammer", "Saw", "NailsBox", "ScrewsBox", "Wrench", "Drill", "Crowbar","EletronicsMag4"},
        coordinates = { x = 13682, y = 1572, z = 0 }, -- Office Furniture Store
        lines = {
            RadioLine.new("Office Outfitters... Foreman Jake broadcasting... from under a desk, probably...", 150, 150, 150),
            RadioLine.new("We furnished the grind... desks for the drones, chairs for the chains...", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("My crew... bunch of ex-cons I hired 'cause who else wants to haul particle board at dawn?...", 150, 150, 150),
            RadioLine.new("Big Tony, did time for boosting cars... built birdhouses in the joint, dreamed of a shop...", 150, 150, 150),
            RadioLine.new("I'd front him the tools if he stayed straight... he did, for three years...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("The horde smashed through the loading bay... Tony held the forklift like a chariot, crushed a dozen before they swarmed...", 150, 150, 150),
            RadioLine.new("Left the hammers, saws, nails... all scattered in the showroom. 13680 north, 1570 east...", 150, 150, 150),
            RadioLine.new("Build something solid, for the dreamers who didn't make it...", 150, 150, 150),
            RadioLine.new("Tony... your shop's waiting. Just on the other side...", 100, 100, 100),
            RadioLine.new("*wood creaking, under strain>", 50, 50, 50),
            RadioLine.new("<thud of falling shelf>", 50, 50, 50)
        }
    },
    {
        messageKey = 21,
        triggeringSpawns = true,
        spawnsCorpses = false,
        spawnsGroup = "guns",
        spawnedItems = {"Pistol2", "Bullets45LC", "Shotgun", "ShotgunShells", "AssaultRifle", "556Clip", "Pistol", "Bullets9mm"},
        coordinates = { x = 12090, y = 6783, z = 0 }, -- Stendo's Firearms Emporium
        lines = {
            RadioLine.new("Stendo's... Dale Stendo signing off... for good, looks like...", 150, 150, 150),
            RadioLine.new("This shop's been in the family since granddad slung squirrels post-Depression...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("I'd bring my first buck here, antlers scraping the rafters... he'd clean it, tell yarns of moonshiners and possum hunts...", 150, 150, 150),
            RadioLine.new("Mounted the head over the counter—'Stendo's Guarantee: If it don't shoot straight, it'll scare 'em stiff'...", 150, 150, 150),
            RadioLine.new("<fzzt>", 50, 50, 50),
            RadioLine.new("The wife's been nagging to sell... too many break-ins, not enough Sundays at church...", 150, 150, 150),
            RadioLine.new("Last night, the windows blew in... customers turning on each other mid-browse...", 150, 150, 150),
            RadioLine.new("The back room's loaded... revolvers, scatterguns, the AR for 'those days'... 12090 north, 6780 east...", 150, 150, 150),
            RadioLine.new("Hunt smart. For the stories we won't tell anymore...", 150, 150, 150),
            RadioLine.new("<bzzt>", 50, 50, 50),
            RadioLine.new("Wife... if you're out there... the deer's on you tonight...", 100, 100, 100),
            RadioLine.new("*bolt chambering>", 50, 50, 50),
            RadioLine.new("<rapid fire, then silence>", 50, 50, 50)
        }
    }
}

return complexMessages