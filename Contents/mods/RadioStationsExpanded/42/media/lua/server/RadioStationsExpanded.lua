-- Initialize mod namespace
local RadioStationsExpanded = RadioStationsExpanded or {}
RadioStationsExpanded.currentMessage = nil -- Store the currently airing message

-- Initializing cache
local RadioExpandedCache = {}

-- Load messages from Messages.lua
local complexMessages = require("Messages")

-- Add custom channels to DynamicRadio.channels
DynamicRadio.channels = DynamicRadio.channels or {} -- Preserve existing channels
table.insert(DynamicRadio.channels, {
    name = "KY Simplex Calling",
    freq = 88000, -- 88.0 MHz
    category = "Survivor", -- Maps to ChannelCategory.Other
    uuid = "SURV-001",
    register = true,
    airCounterMultiplier = 1.5
})

-- Helper: table.contains (for arrays; we use sets now, but backward compat)
local function tableContains(tbl, value)
    for _, v in ipairs(tbl) do
        if v == value then
            return true
        end
    end
    return false
end

-- Helper: table size for sets
local function tableSize(tbl)
    local count = 0
    for _ in pairs(tbl) do
        count = count + 1
    end
    return count
end

local function initModData()
    local modData = ModData.getOrCreate("RadioStationsExpanded")
    if not modData.playedMessages then
        modData.playedMessages = {} -- Now a set { [key] = true }
    end
    if not modData.spawnedMessages then
        modData.spawnedMessages = {} -- Per-key spawn flags { [key] = true }
    end
    print("Initialized RadioStationsExpanded mod data.")
    print("Played messages count: " .. tableSize(modData.playedMessages))
    RadioExpandedCache = modData
end

local function onNewGameReset()
    local modData = ModData.getOrCreate("RadioStationsExpanded")
    modData.playedMessages = {}
    modData.spawnedMessages = {}
    ModData.getOrCreate("RadioStationsExpanded").playedMessages = modData.playedMessages
    ModData.getOrCreate("RadioStationsExpanded").spawnedMessages = modData.spawnedMessages
    print("RSE: Reset data for new game.")
    initModData() -- Re-cache
end

local function createSpawns(_airedMessage)
    local messageSpawn = _airedMessage -- Assume copy from playMessage
    local key = messageSpawn.messageKey
    local modData = RadioExpandedCache

    -- Check if already spawned (persists across restarts)
    if modData.spawnedMessages[key] then
        print("RSE: Spawns for key " .. key .. " already done; skipping.")
        return
    end

    if messageSpawn and messageSpawn.coordinates and messageSpawn.spawnedItems then
        local square = getSquare(messageSpawn.coordinates.x, messageSpawn.coordinates.y, messageSpawn.coordinates.z)
        if square then
            local currentBroadcast = DynamicRadio.cache["SURV-001"]:getAiringBroadcast()
            if currentBroadcast then
                local totalLines = currentBroadcast:getLines():size()
                local currentLineNum = currentBroadcast:getCurrentLineNumber()

                if currentLineNum > 0 and currentLineNum == totalLines then

                    -- Som final
                    if current.triggeringSounds and current.metaSoundId then
                        getSoundManager():PlayWorldSound(current.metaSoundId, false, square, 0.0, 350, 1.0, false)
                    end

                    -- Spawn
                    if current.triggeringSpawns then
                        createSpawns(current)
                    end

                    -- Marca como concluída
                    local key = current.messageKey
                    if key and not RadioExpandedCache.playedMessages[key] then
                        RadioExpandedCache.playedMessages[key] = true
                        ModData.getOrCreate("RadioStationsExpanded").playedMessages = RadioExpandedCache.playedMessages
                    end

                    -- Limpa a transmissão
                    RadioStationsExpanded.currentMessage = nil
                end
            end
        end
    else
        print("No items to spawn for key " .. key)
    end

    -- Mark spawns done (persists)
    modData.spawnedMessages[key] = true
    ModData.getOrCreate("RadioStationsExpanded").spawnedMessages = modData.spawnedMessages
    print("RSE: Marked spawns for key " .. key .. " as done.")

end

local function verifyRadioMessage()
    local current = RadioStationsExpanded.currentMessage
    if current then -- Always check if broadcast is active
        if current.triggeringSpawns then
            createSpawns(current)
        end
        current.triggeringSpawns = false -- Reset on copy (safe)
        if current.triggeringSounds and current.metaSoundId then
            local player = getPlayer() -- funciona em SP e MP (client-side)
            -- Em servidor dedicado use: getSpecificPlayer(0) ou loop por players
            if player and player:isAlive() then
                local square = player:getSquare() -- <-- ISSO AQUI É OBRIGATÓRIO
                if square then
                    local currentBroadcast = DynamicRadio.cache["SURV-001"]:getAiringBroadcast()
                    if currentBroadcast then
                        local totalLines = currentBroadcast:getLines():size()
                        local currentLineNumber = currentBroadcast:getCurrentLineNumber()

                        -- Quando a linha atual for igual ao total → acabamos de tocar a última
                        if currentLineNumber > 0 and currentLineNumber == totalLines then

                            print("[RSE] FIM DA TRANSMISSÃO DETECTADO (key " .. current.messageKey .. ")")

                            -- Som final
                            if current.triggeringSounds and current.metaSoundId then
                                getSoundManager():PlayWorldSound(
                                current.metaSoundId,
                                false, -- loop
                                square, -- square
                                0.0, -- pitch
                                10, -- radius
                                0.5, -- volume
                                false -- isAmbient
                                )
                                print("[RSE] Som final executado: " .. current.metaSoundId)
                            end

                            -- Spawn
                            if current.triggeringSpawns then
                                createSpawns(current)
                            end

                            -- Marca como tocada
                            local key = current.messageKey
                            local modData = RadioExpandedCache
                            if key and not modData.playedMessages[key] then
                                modData.playedMessages[key] = true
                                ModData.getOrCreate("RadioStationsExpanded").playedMessages = modData.playedMessages
                            end

                            -- Limpa
                            RadioStationsExpanded.currentMessage = nil
                        end
                    end
                end
            end
        end
        -- Mark as played post-air (completion)
        local key = current.messageKey
        local modData = RadioExpandedCache
        if not modData.playedMessages[key] then -- Double-check (edge: multi-call)
            modData.playedMessages[key] = true
            ModData.getOrCreate("RadioStationsExpanded").playedMessages = modData.playedMessages
            print("RSE: Completed/Marked key " .. key .. " as played.")
        end

        -- Optional: Clear currentMessage after full broadcast (prevents stale)
        -- RadioStationsExpanded.currentMessage = nil  -- Uncomment if broadcasts overlap rarely
    end
end

local function playMessage()
    local radioChannel = DynamicRadio.cache["SURV-001"]
    if not radioChannel then
        print("Failed to instance the channel.")
        return
    end
    print("Channel ready.")

    local modData = RadioExpandedCache
    -- Filter unplayed (avoids loop/re-picks)
    local unplayed = {}
    for _, msg in ipairs(complexMessages) do
        local key = msg.messageKey
        if key and not modData.playedMessages[key] then
            table.insert(unplayed, msg)
        end
    end

    if #unplayed == 0 then
        print("RSE: All messages played; skipping.")
        -- Optional cycle reset: modData.playedMessages = {}; ModData.getOrCreate("RadioStationsExpanded").playedMessages = modData.playedMessages
        return
    end

    -- Random from unplayed
    local randIndex = ZombRand(#unplayed) + 1
    local originalMsg = unplayed[randIndex]
    local key = originalMsg.messageKey

    -- NO pre-air mark here (moved to verify for completion)

    -- Copy for runtime flags (no global mutation)
    local airedMessage = {}
    for k, v in pairs(originalMsg) do
        airedMessage[k] = v
    end
    airedMessage.triggeringSpawns = originalMsg.triggeringSpawns or false

    local broadCast = RadioBroadCast.new("SURV channel - ID: " .. tostring(ZombRand(1, 99999)), -1, -1)
    if not broadCast then
        print("Failed to create broadcast.")
        return -- No unmark needed (wasn't marked)
    end

    RadioStationsExpanded.currentMessage = airedMessage -- Update global
    for _, line in ipairs(airedMessage.lines) do
        if line then
            broadCast:AddRadioLine(line)
        end
    end
    radioChannel:setAiringBroadcast(broadCast)

    print("RSE: Aired key " .. key .. " (" .. (#unplayed - 1) .. " left; marking on completion).")
end

local lastBroadcastDay = -1
local function scheduledBroadcast()
    local gameTime = getGameTime()
    local day = gameTime:getDay()
    local hour = gameTime:getHour()
    local minute = gameTime:getMinutes()

    -- Precise: 8-11 AM window, once per day
    if day ~= lastBroadcastDay and hour >= 8 and hour < 11 and minute == 0 and ZombRand(1, 20) == 1 then
        lastBroadcastDay = day
        playMessage()
    end
end

-- this is only for debug purpose please don't fuck up my code I love u'RSE: All messages played; skipping.

function forceRadioMessage(key)
    key = tonumber(key)
    if not key then
        print("RSE Debug: key inválida! Use forceRadioMessage(4)")
        return
    end

    local radioChannel = DynamicRadio.cache["SURV-001"]
    if not radioChannel then
        print("RSE Debug: Canal SURV-001 não encontrado! Tá sem o mod ativado?")
        return
    end

    local msg = nil
    for _, m in ipairs(complexMessages) do
        if m.messageKey == key then
            msg = m
            break
        end
    end

    if not msg then
        print("RSE Debug: Mensagem com key " .. key .. " não existe! Total: " .. #complexMessages)
        return
    end

    -- Cópia limpa pra não sujar o original
    local airedMessage = {}
    for k, v in pairs(msg) do
        airedMessage[k] = v
    end
    airedMessage.triggeringSpawns = msg.triggeringSpawns or false
    airedMessage.triggeringSounds = msg.triggeringSounds or false

    -- Cria broadcast
    local broadcast = RadioBroadCast.new("DEBUG RSE - Key " .. key, -1, -1)
    for _, line in ipairs(airedMessage.lines) do
        broadcast:AddRadioLine(line)
    end

    -- Força transmissão (mesmo se já tiver algo tocando)
    radioChannel:setAiringBroadcast(broadcast)
    RadioStationsExpanded.currentMessage = airedMessage

    print("RSE DEBUG: Mensagem key " .. key .. " forçada com sucesso!")
    print("   → Spawns: " .. tostring(airedMessage.triggeringSpawns))
    print("   → Som: " .. tostring(airedMessage.metaSoundId or "nenhum"))
end

-- Alias mais curto (opcional)
forceMessage = forceRadioMessage

-- Events (using named functions)
Events.OnGameStart.Add(initModData)
Events.OnNewGame.Add(onNewGameReset)
Events.EveryTenMinutes.Add(scheduledBroadcast)
Events.OnDeviceText.Add(verifyRadioMessage)
