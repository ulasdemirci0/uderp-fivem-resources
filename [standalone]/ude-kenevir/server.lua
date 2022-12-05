drugBaseName = "weed"
drugProcessedName = "weed_islenmis"
local QBCore = exports["qb-core"]:GetCoreObject()
drugPerPrice = 500
-- KENEVIR SATMA

RegisterNetEvent("ude-kenevir:weedSell")
AddEventHandler(
    "ude-kenevir:weedSell",
    function(weedAmount)
        local src = source
        local Player = QBCore.Functions.GetPlayer(source)
        print(QBCore.Debug(Player))
    end
)

-- KENEVIR ISLEME

RegisterNetEvent("ude-kenevir:processWeed")
AddEventHandler(
    "ude-kenevir:processWeed",
    function()
        local xPlayer = QBCore.Functions.GetPlayer(source)

        if xPlayer.Functions.GetItemByName(drugBaseName).amount >= 4 then
            xPlayer.Functions.RemoveItem(drugBaseName, 4)
            TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[drugBaseName], "remove", 4)
            Citizen.Wait(500)
            xPlayer.Functions.AddItem(drugProcessedName, 1)
            TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[drugProcessedName], "add", 1)
        else
            TriggerClientEvent("QBCore:Notify", source, "En az 4 adet Kenevir otu getirmelisin!", "error")
        end
    end
)

-- KENEVIR TOPLAMA

RegisterNetEvent("ude-kenevir:gatherWeed")
AddEventHandler(
    "ude-kenevir:gatherWeed",
    function()
        local xPlayer = QBCore.Functions.GetPlayer(source)
        xPlayer.Functions.AddItem(drugBaseName, 1)
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[drugBaseName], "add", 1)
    end
)
