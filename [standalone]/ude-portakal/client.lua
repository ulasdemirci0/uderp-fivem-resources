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

-- Portakal SATMA
RegisterNetEvent("ude-portakal:weedSellTarget")
AddEventHandler("ude-portakal:weedSellTarget", function()
    weedSell()
end)
function weedSell()
    if not is_selling then
        is_selling = true
        exports["mythic_progbar"]:Progress(
                {
                    name = "weedSell",
                    duration = 3500,
                    label = "Portakal satıyorsun...",
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
                        local dialog = exports["qb-input"]:ShowInput(
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
                            TriggerServerEvent("ude-portakal:weedSell", dialog.amount)
                        end
                        is_selling = false
                    else
                    end
                end
        )
    end
end

function processWeed()
    if not is_processing then
        is_processing = true
        exports["mythic_progbar"]:Progress(
                {
                    name = "processWeed",
                    duration = 3500,
                    label = "Portakal isliyorsun...",
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
                        TriggerServerEvent("ude-portakal:processWeed")
                    end
                    is_processing = false
                end
        )
    end
end

RegisterNetEvent('ude-portakal:gatherWeedTarget')
AddEventHandler('ude-portakal:gatherWeedTarget', function()
    gatherWeed()
end)

function gatherWeed()
    if not is_gathering then
        is_gathering = true
        exports["mythic_progbar"]:Progress(
                {
                    name = "gatherWeed",
                    duration = 7000,
                    label = "Portakal topluyorsun...",
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
                        TriggerServerEvent("ude-portakal:gatherWeed")
                        is_gathering = false
                    else
                    end
                end
        )
    end
end

-- ELLEME


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
            PropSpawn()
        end
)
function PropSpawn()
    for k,v in pairs (Config.Props) do
        RequestModel(v.model)
        local iter_for_request = 1
        while not HasModelLoaded(v.model) and iter_for_request < 5 do
            Wait(500)
            iter_for_request = iter_for_request + 1
        end
        if not HasModelLoaded(v.model) then
            SetModelAsNoLongerNeeded(v.model)
        else
            local ped = PlayerPedId()
            local created_object = CreateObjectNoOffset(v.model, v.coords.x, v.coords.y, v.coords.z - 1, 1, 0, 1)
            PlaceObjectOnGroundProperly(created_object)
            SetEntityHeading(created_object, v.coords.w)
            FreezeEntityPosition(created_object, true)
            SetModelAsNoLongerNeeded(v.model)
        end
    end
end
