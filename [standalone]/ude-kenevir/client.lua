QBCore = nil
Citizen.CreateThread(
    function()
        while QBCore == nil do
            TriggerEvent(
                "QBCore:GetObject",
                function(obj)
                    QBCore = obj
                end
            )
            Citizen.Wait(200)
        end
    end
)

-- KENEVIR SATMA

Citizen.CreateThread(
    function()
        while true do
            local sleep = 2000
            local player = PlayerPedId()
            local playercoords = GetEntityCoords(player)
            local dst = GetDistanceBetweenCoords(playercoords, Config.sell.x, Config.sell.y, Config.sell.z, true)
            local dst2 = GetDistanceBetweenCoords(playercoords, Config.sell.x, Config.sell.y, Config.sell.z, true)
            if dst2 < 4 then
                sleep = 2
                DrawMarker(
                    2,
                    Config.sell.x,
                    Config.sell.y,
                    Config.sell.z,
                    0.0,
                    0.0,
                    0.0,
                    0.0,
                    0.0,
                    0.0,
                    0.4,
                    0.4,
                    0.4,
                    255,
                    0,
                    0,
                    255,
                    0,
                    0,
                    0,
                    1,
                    0,
                    0,
                    0
                )
                DrawText3Ds(Config.sell.x, Config.sell.y, Config.sell.z + 0.4, "[E] Kenevir Sat")
                if dst2 < 1 then
                    if IsControlJustReleased(0, 38) then
                        weedSell()
                    end
                end
            end
            Citizen.Wait(sleep)
        end
    end
)

function weedSell()
    if not is_selling then
        is_selling = true
        exports["mythic_progbar"]:Progress(
            {
                name = "weedSell",
                duration = 1000,
                label = "Kenevir satıyorsun...",
                useWhileDead = false,
                canCancel = false,
                controlDisables = {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true
                },
                animation = {
                    animDict = "mp_arresting",
                    anim = "a_uncuff",
                    flags = 49
                }
            },
            function(cancelled)
                if not cancelled then
                    local dialog =
                        exports["qb-input"]:ShowInput(
                        {
                            header = "İllegal Satış",
                            submitText = "Sat",
                            inputs = {
                                {
                                    text = "Kaç adet satmak istiyorsun?",
                                    name = "amount",
                                    type = "text",
                                    isRequired = true
                                }
                            }
                        }
                    )

                    if dialog ~= nil then
                        TriggerServerEvent("ude-kenevir:weedSell", dialog.amount)
                    end
                    is_selling = false
                else
                end
            end
        )
    end
end

-- KENEVIR ISLEME

Citizen.CreateThread(
    function()
        while true do
            local sleep = 2000
            local player = PlayerPedId()
            local playercoords = GetEntityCoords(player)
            local dst =
                GetDistanceBetweenCoords(playercoords, Config.process.x, Config.process.y, Config.process.z, true)
            local dst2 =
                GetDistanceBetweenCoords(playercoords, Config.process.x, Config.process.y, Config.process.z, true)
            if dst2 < 5 then
                sleep = 2
                DrawMarker(
                    2,
                    Config.process.x,
                    Config.process.y,
                    Config.process.z,
                    0.0,
                    0.0,
                    0.0,
                    0.0,
                    0.0,
                    0.0,
                    0.4,
                    0.4,
                    0.4,
                    255,
                    0,
                    0,
                    255,
                    0,
                    0,
                    0,
                    1,
                    0,
                    0,
                    0
                )
                DrawText3Ds(Config.process.x, Config.process.y, Config.process.z + 0.4, "[E] Kenevir İşle")
                if dst2 < 2 then
                    if IsControlJustReleased(0, 38) then
                        processWeed()
                    end
                end
            end
            Citizen.Wait(sleep)
        end
    end
)

function processWeed()
    if not is_processing then
        is_processing = true
        exports["mythic_progbar"]:Progress(
            {
                name = "processWeed",
                duration = 1000,
                label = "Kenevir isliyorsun...",
                useWhileDead = false,
                canCancel = false,
                controlDisables = {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true
                },
                animation = {
                    animDict = "mp_arresting",
                    anim = "a_uncuff",
                    flags = 49
                }
            },
            function(cancelled)
                if not cancelled then
                    TriggerServerEvent("ude-kenevir:processWeed")
                    is_processing = false
                else
                end
            end
        )
    end
end

-- KENEVIR TOPLAMA

local LastWeedLocation = 1

Citizen.CreateThread(
    function()
        while true do
            local sleep = 2000
            local player = PlayerPedId()
            local playercoords = GetEntityCoords(player)
            local dst =
                GetDistanceBetweenCoords(
                playercoords,
                Config.WeedLocation[LastWeedLocation].x,
                Config.WeedLocation[LastWeedLocation].y,
                Config.WeedLocation[LastWeedLocation].z,
                true
            )
            local dst2 =
                GetDistanceBetweenCoords(
                playercoords,
                Config.WeedLocation[LastWeedLocation].x,
                Config.WeedLocation[LastWeedLocation].y,
                Config.WeedLocation[LastWeedLocation].z,
                true
            )
            if dst2 < 4 then
                sleep = 2
                DrawMarker(
                    2,
                    Config.WeedLocation[LastWeedLocation].x,
                    Config.WeedLocation[LastWeedLocation].y,
                    Config.WeedLocation[LastWeedLocation].z,
                    0.0,
                    0.0,
                    0.0,
                    0.0,
                    0.0,
                    0.0,
                    0.3,
                    0.3,
                    0.3,
                    100,
                    0,
                    254,
                    150,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0
                )
                DrawText3Ds(
                    Config.WeedLocation[LastWeedLocation].x,
                    Config.WeedLocation[LastWeedLocation].y,
                    Config.WeedLocation[LastWeedLocation].z + 0.3,
                    "[E] Kenevir Topla"
                )
                if dst2 < 1 then
                    if IsControlJustReleased(0, 38) then
                        LastWeedLocation = math.random(1, #Config.WeedLocation)
                        gatherWeed()
                    end
                end
            end
            Citizen.Wait(sleep)
        end
    end
)

function gatherWeed()
    if not is_gathering then
        is_gathering = true
        exports["mythic_progbar"]:Progress(
            {
                name = "gatherWeed",
                duration = 7000,
                label = "Kenevir topluyorsun...",
                useWhileDead = false,
                canCancel = false,
                controlDisables = {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true
                },
                animation = {
                    animDict = "mp_arresting",
                    anim = "a_uncuff",
                    flags = 49
                }
            },
            function(cancelled)
                if not cancelled then
                    TriggerServerEvent("ude-kenevir:gatherWeed")
                    is_gathering = false
                else
                end
            end
        )
    end
end

-- ELLEME

function DrawText3Ds(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local px, py, pz = table.unpack(GetGameplayCamCoords())
    SetTextScale(0.30, 0.30)
    SetTextFont(0)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x, _y)
    local factor = (string.len(text)) / 250
    DrawRect(_x, _y + 0.0125, 0.015 + factor, 0.03, 0, 0, 0, 75)
end

Citizen.CreateThread(
    function()
        for _, info in pairs(Config.Blips) do
            info.blip = AddBlipForCoord(info.x, info.y, info.z)
            SetBlipSprite(info.blip, info.id)
            SetBlipDisplay(info.blip, 4)
            SetBlipScale(info.blip, 0.7) -- BURASI HARİTADAKİ BLİP BÜYÜKLÜĞÜ
            SetBlipColour(info.blip, info.colour)
            SetBlipAsShortRange(info.blip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(info.title)
            EndTextCommandSetBlipName(info.blip)
        end
    end
)
