local QBCore = exports['qb-core']:GetCoreObject()

local Motel3131 = nil
local currentmotel = nil
local closestroom = nil
local pinkcagecoord = vector3(415.75, -28.52, 99.65)
local pinkcage = {
    [1] = { stash = vector3(434.07, -7.86, 99.65), obj = nil, clothe = vector3(433.1, -4.92, 99.65), locked = true },
    [2] = { stash = vector3(430.58, -14.29, 99.65), obj = nil, clothe = vector3(429.38, -11.47, 99.65), locked = true },
    [3] = { stash = vector3(425.42, -24.01, 99.65), obj = nil, clothe = vector3(422.11, -24.04, 99.65), locked = true },
    [4] = { stash = vector3(421.36, -30.07, 99.65), obj = nil, clothe = vector3(420.05, -27.52, 99.88), locked = true, },
    [5] = { stash = vector3(408.19, -33.4, 99.65), obj = nil, clothe = vector3(407.48, -30.05, 99.65), locked = true },
    [6] = { stash = vector3(401.84, -29.46, 99.65), obj = nil, clothe = vector3(405.02, -28.66, 99.65), locked = true },
    [7] = { stash = vector3(392.69, -23.38, 99.65), obj = nil, clothe = vector3(391.68, -20.92, 99.65), locked = true },
    [8] = { stash = vector3(393.04, -11.83, 99.65), obj = nil, clothe = vector3(396.49, -11.22, 99.65), locked = true },
    [9] = { stash = vector3(397.04, -5.68, 99.65), obj = nil, clothe = vector3(398.13, -8.31, 99.65), locked = true },
    [10] = { stash = vector3(402.43, 3.81, 99.65), obj = nil, clothe = vector3(405.18, 3.84, 99.65), locked = true },
    [11] = { stash = vector3(415.05, 10.82, 99.65), obj = nil, clothe = vector3(414.82, 7.97, 99.64), locked = true },
    [12] = { stash = vector3(421.56, 6.73, 99.65), obj = nil, clothe = vector3(418.34, 5.97, 99.65), locked = true, },
    [13] = { stash = vector3(430.7, 1.67, 99.65), obj = nil, clothe = vector3(430.69, -1.19, 99.65), locked = true },
}

local firstSpawn = true
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    if firstSpawn then
        currentmotel = math.random(1, #pinkcage)
        QBCore.Functions.Notify("Yeni motel odası verildi! Oda numaran: " .. 200 + currentmotel, 'success', 5000)
        firstSpawn = false
    end
end)

RegisterCommand('yenimotelodasi', function()
    currentmotel = math.random(1, #pinkcage)
    QBCore.Functions.Notify("Yeni motel odası verildi! Oda numaran: " .. 200 + currentmotel, 'success', 5000)
end)

RegisterCommand('motelcik', function()
    local player = PlayerPedId()
    local playercoords = GetEntityCoords(player)
    local moteldistance = #(playercoords - pinkcagecoord)

    if moteldistance <= 45.0 then
        SetEntityCoords(player, 311.491, -206.25, 58.0151, 0, 0, 0, 0)
        SetEntityHeading(player, 242.37)
        QBCore.Functions.Notify("Odadan ayrıldın", 'error', 5000)

    end
end)

RegisterNetEvent('m3:motel:client:sendDoorlockState')
AddEventHandler('m3:motel:client:sendDoorlockState', function(doorlocktable)
    for i = 1, #pinkcage, 1 do
        pinkcage[i].locked = doorlocktable[i].locked
    end
end)

RegisterNetEvent('m3:motel:client:sendDoorlockState2')
AddEventHandler('m3:motel:client:sendDoorlockState2', function(doorid, lockstate)
    pinkcage[doorid].locked = lockstate
end)

Citizen.CreateThread(function()
    local gblip = AddBlipForCoord(pinkcagecoord)
    SetBlipSprite(gblip, 609)
    SetBlipDisplay(gblip, 4)
    SetBlipScale(gblip, 0.7)
    -- SetBlipColour(gblip, 47)
    SetBlipAsShortRange(gblip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("LS Continental")
    EndTextCommandSetBlipName(gblip)
end)

Citizen.CreateThread(function()
    while true do
        if currentmotel ~= nil then
            local player = PlayerPedId()
            local playercoords = GetEntityCoords(player)
            local stashdistance = #(playercoords - pinkcage[currentmotel].stash)
            local clothedistance = #(playercoords - pinkcage[currentmotel].clothe)
            local moteldistance = #(playercoords - pinkcagecoord)
            local doordistance = #(playercoords)
            if moteldistance <= 45.0 then
                if doordistance <= 3 then
                    exports['drawtext']:showUI('Oda No: ' .. currentmotel)
                end
                if stashdistance <= 1.5 then
                    exports['drawtext']:showUI('[E] - Sandık')


                    if IsControlJustReleased(0, 38) then
                        OpenMotelInventory()
                    end

                else if clothedistance <= 1.5 then
                        exports['drawtext']:showUI('[E] - Gardrop')

                        if IsControlJustReleased(0, 38) then
                            OpenMotelWardrobe()
                        end
                    else
                        exports['drawtext']:hideUI()
                    end

                end
            else
                Citizen.Wait(500)
            end
        end
        Citizen.Wait(5)
    end
end)

function openHouseAnim()
    loadAnimDict("anim@heists@keycard@")
    TaskPlayAnim(PlayerPedId(), "anim@heists@keycard@", "exit", 5.0, 1.0, -1, 16, 0, 0, 0, 0)
    Citizen.Wait(400)
    ClearPedTasks(PlayerPedId())
end

function loadAnimDict(dict)
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Wait(5)
    end
end

function OpenMotelWardrobe()
    print('test')
    TriggerEvent('qb-clothing:client:openOutfitMenu')
end

function OpenMotelInventory()

    TriggerServerEvent("inventory:server:OpenInventory", "stash", "" .. QBCore.Functions.GetPlayerData().citizenid)
    TriggerEvent("inventory:client:SetCurrentStash", "" .. QBCore.Functions.GetPlayerData().citizenid)

end
