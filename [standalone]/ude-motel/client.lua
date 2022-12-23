local QBCore = exports['qb-core']:GetCoreObject()

local blipCoords = vector3(326.747, -208.35, 54.0866)
local currentRoom = nil
local roomDoors = {
    [1] = { door = "motel-1", locked = true },
    [2] = { door = "motel-2", locked = true },
    [3] = { door = "motel-3", locked = true },
    [4] = { door = "motel-4", locked = true },
    [5] = { door = "motel-5", locked = true },
    [6] = { door = "motel-6", locked = true },
    [7] = { door = "motel-7", locked = true },
    [8] = { door = "motel-8", locked = true },
    [9] = { door = "motel-9", locked = true },
    [10] = { door = "motel-10", locked = true },
    [11] = { door = "motel-11", locked = true },
    [12] = { door = "motel-12", locked = true },
    [13] = { door = "motel-13", locked = true },

}

--[[AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    currentRoom = math.random(1, #roomDoors)
    QBCore.Functions.Notify("New Motel room given! Your room number: " .. currentRoom, 'success', 5000)
end)]]

RegisterCommand('newmotel', function()
    currentRoom = math.random(1, #roomDoors)
    QBCore.Functions.Notify("New Motel room given! Your room number: " .. currentRoom, 'success', 5000)
end)

RegisterNetEvent('qb-motel:client:openMotelRoom')
AddEventHandler('qb-motel:client:openMotelRoom', function()
    local src = src
    local qbPlayer = QBCore.Functions.GetPlayerData()
    TriggerServerEvent('qb-doorlock:server:updateState', not roomDoors[currentRoom].locked, false, false, true, false) -- Broadcast new state of the door to everyone

end)


function OpenMotelWardrobe()
    TriggerEvent('qb-clothing:client:openOutfitMenu')
end

function OpenMotelInventory()
    print('hello')
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "" .. QBCore.Functions.GetPlayerData().citizenid)
    TriggerEvent("inventory:client:SetCurrentStash", "" .. QBCore.Functions.GetPlayerData().citizenid)

end
