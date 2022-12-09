RegisterServerEvent('qb-hud:syncCarLights')
AddEventHandler('qb-hud:syncCarLights', function(status)
	TriggerClientEvent('qb-hud:syncCarLights', -1, source, status)
end)

RegisterNetEvent('QBCore:Server:OnPlayerLoaded')
AddEventHandler('QBCore:Server:OnPlayerLoaded', function()
    local source = source
    TriggerClientEvent('playerLoaded', source)
end)

Citizen.CreateThread(function()
    Citizen.Wait(2000)
    for _,v in pairs(GetPlayers()) do
        TriggerClientEvent('playerLoaded', tonumber(v))
        Citizen.Wait(25)
    end
end)