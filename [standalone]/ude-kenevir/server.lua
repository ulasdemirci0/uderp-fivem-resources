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
        if Player.Functions.GetItemByName(Config.drugProcessedName).amount >= tonumber(weedAmount) then
            Player.Functions.RemoveItem(Config.drugProcessedName, tonumber(weedAmount))
            Citizen.Wait(500)
            local drugPrice = tonumber(Config.drugPerPrice) * tonumber(weedAmount)
            Player.Functions.AddMoney('cash', drugPrice, "Bank deposit")
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[Config.drugProcessedName], "remove", tonumber(weedAmount))
        else
            TriggerClientEvent("QBCore:Notify", source, "Üzerinde belirttiğin kadar ürün yok!", "error")
        end
    end
)

-- KENEVIR ISLEME

RegisterNetEvent("ude-kenevir:processWeed")
AddEventHandler(
    "ude-kenevir:processWeed",
    function()
        local xPlayer = QBCore.Functions.GetPlayer(source)
        if xPlayer.Functions.GetItemByName(Config.drugBaseName).amount >= 4 then
            xPlayer.Functions.RemoveItem(Config.drugBaseName, 4)
            TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.drugBaseName], "remove", 4)
            Citizen.Wait(500)
            xPlayer.Functions.AddItem(Config.drugProcessedName, 1)
            TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.drugProcessedName], "add", 1)
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
