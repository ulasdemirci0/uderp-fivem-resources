local QBCore = exports["qb-core"]:GetCoreObject()
-- KENEVIR SATMA

RegisterNetEvent("ude-portakal:weedSell")
AddEventHandler(
        "ude-portakal:weedSell",
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

-- KENEVIR TOPLAMA

RegisterNetEvent("ude-portakal:gatherWeed")
AddEventHandler(
        "ude-portakal:gatherWeed",
        function()
            local xPlayer = QBCore.Functions.GetPlayer(source)
            xPlayer.Functions.AddItem(Config.drugBaseName, 1)
            TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.drugBaseName], "add", 1)
        end
)
