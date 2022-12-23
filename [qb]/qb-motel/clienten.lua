local QBCore = exports['qb-core']:GetCoreObject()

local Motel3131 = nil
local currentmotel = nil
local closestroom = nil
local pinkcagecoord = vector3(326.747, -208.35, 54.0866)
local pinkcage = {
    [1] = { door = "motel-1",
            stash = vector3(306.71, -208.50, 54.22), obj = nil,
            clothe = vector3(302.58, -207.35, 54.22), locked = true },
    [2] = { door = "motel-2",
            stash = vector3(310.51, -198.61, 54.22), obj = nil,
            clothe = vector3(306.32, -197.45, 54.22), locked = true },
    [3] = { door = "motel-3",
            stash = vector3(320.45, -194.13, 54.22), obj = nil,
            clothe = vector3(321.79, -189.81, 54.22), locked = true },
    [4] = { door = "motel-4",
            stash = vector3(310.17, -220.36, 58.02), obj = nil,
            clothe = vector3(308.85, -224.63, 58.02), locked = true },
    [5] = { door = "motel-5",
            stash = vector3(306.78, -208.53, 58.02), obj = nil,
            clothe = vector3(302.52, -207.23, 58.02), locked = true },
    [6] = { door = "motel-6",
            stash = vector3(310.64, -198.74, 58.02), obj = nil,
            clothe = vector3(306.33, -197.41, 58.02), locked = true },
    [7] = { door = "motel-7",
            stash = vector3(320.51, -194.11, 58.02), obj = nil,
            clothe = vector3(321.73, -189.70, 58.02), locked = true },
    [8] = { door = "motel-8",
            stash = vector3(339.93, -224.19, 54.22), obj = nil,
            clothe = vector3(344.24, -225.47, 54.22), locked = true },
    [9] = { door = "motel-9",
            stash = vector3(343.61, -214.35, 54.22), obj = nil,
            clothe = vector3(348.01, -215.56, 54.22), locked = true },
    [10] = { door = "motel-10",
             stash = vector3(347.34, -204.44, 54.22), obj = nil,
             clothe = vector3(351.86, -205.67, 54.22), locked = true },
    [11] = { door = "motel-11",
             stash = vector3(330.27, -228.04, 58.02), obj = nil,
             clothe = vector3(328.99, -232.40, 58.02), locked = true },
    [12] = { door = "motel-12",
             stash = vector3(339.85, -224.16, 58.02), obj = nil,
             clothe = vector3(344.21, -225.51, 58.02), locked = true },
    [13] = { door = "motel-13",
             stash = vector3(343.63, -214.27, 58.02), obj = nil,
             clothe = vector3(347.95, -215.52, 58.02), locked = true },

}

local firstSpawn = true
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    if firstSpawn then
        currentmotel = math.random(1, #pinkcage)
        QBCore.Functions.Notify("New Motel room given! Your room number: " .. currentmotel, 'success', 5000)
        firstSpawn = false
    end
end)

RegisterCommand('newmotel', function()
    currentmotel = math.random(1, #pinkcage)
    QBCore.Functions.Notify("New Motel room given! Your room number: " .. currentmotel, 'success', 5000)
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
    SetBlipSprite(gblip, 475)
    SetBlipDisplay(gblip, 4)
    SetBlipScale(gblip, 0.6)
    SetBlipColour(gblip, 27)
    SetBlipAsShortRange(gblip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Pink Cage Motel")
    EndTextCommandSetBlipName(gblip)
end)

Citizen.CreateThread(function()
    while true do
        local player = PlayerPedId()
        local playercoords = GetEntityCoords(player)
        local moteldistance = #(playercoords - pinkcagecoord)

        if moteldistance <= 30.0 then
            for j = 1, #pinkcage, 1 do
                if (doordistance <= 3 and currentmotel == j) then
                    if IsControlJustReleased(0, 38) then
                        TriggerServerEvent('qb-doorlock:server:updateState', currentmotel.door, not pinkcage[currentmotel].locked, false, false, false)
                        openHouseAnim()
                    end
                else
                end
                if (doordistance <= 1.5) then
                else
                    exports['drawtext']:hideUI('hide')
                end
            end
        end
    end
    Citizen.Wait(5)
end)

Citizen.CreateThread(function()
    while true do
        if currentmotel ~= nil then
            local player = PlayerPedId()
            local playercoords = GetEntityCoords(player)
            local stashdistance = #(playercoords - pinkcage[currentmotel].stash)
            local clothedistance = #(playercoords - pinkcage[currentmotel].clothe)
            local doordistance = #(playercoords - pinkcage[currentmotel].doortext)
            local moteldistance = #(playercoords - pinkcagecoord)

            if moteldistance <= 45.0 then
                if doordistance <= 30.0 then
                    DrawMarker(2, pinkcage[currentmotel].doortext.x, pinkcage[currentmotel].doortext.y,

                            pinkcage[currentmotel].doortext.z - 0.3, 0, 0, 0, 0, 0, 0, 0.2, 0.2, 0.2, 32, 236, 54, 100, 0, 0
                    , 0, 1, 0, 0, 0)
                end

                if stashdistance <= 1.5 then
                    exports['drawtext']:showUI('[E] - Stash')

                    if IsControlJustReleased(0, 38) then
                        OpenMotelInventory()
                    end
                end

                if clothedistance <= 1.5 then
                    exports['drawtext']:showUI('[E] - Outfits')

                    if IsControlJustReleased(0, 38) then
                        OpenMotelWardrobe()
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
    TriggerEvent('qb-clothing:client:openOutfitMenu')
end

function OpenMotelInventory()
    print('hello')
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "" .. QBCore.Functions.GetPlayerData().citizenid)
    TriggerEvent("inventory:client:SetCurrentStash", "" .. QBCore.Functions.GetPlayerData().citizenid)

end
