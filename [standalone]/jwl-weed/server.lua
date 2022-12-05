--[[
              # #     # #                  # #     # #   
              # #     # #	    # # #      # #     # #
              # #     # #	   # # # #     # #     # #
         	  # #     # #     # #   # #    # #     # #
              # # 	  # #    # #     # #   # #     # #
        # #	  # #	  # #   # #       # #  # #     # #
        # # # # #	   # # # #         # # # #     # # # # # #
         # # # #        # # #           # # #      # # # # # #        
--]]

local QBCore = exports['qb-core']:GetCoreObject()

-- KENEVIR SATMA

RegisterNetEvent("jwl-weed:kenevirsat")
AddEventHandler("jwl-weed:kenevirsat", function()
    local src = source
     local xPlayer = QBCore.Functions.GetPlayer(source)

    if xPlayer.Functions.GetItemByName("weed_islenmis").amount >= 1 then
        xPlayer.Functions.RemoveItem("weed_islenmis", 1)
        Citizen.Wait(500)
        xPlayer.Functions.AddMoney('cash', 500, "Bank deposit") -- banka
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['weed'], "remove", 1)
    else
        TriggerClientEvent("QBCore:Notify", source, "Üzerinde Kenevir paketi yok!", "error")
    end
end)

-- KENEVIR ISLEME

RegisterNetEvent("jwl-weed:kenevirisle")
AddEventHandler("jwl-weed:kenevirisle", function()
    local xPlayer = QBCore.Functions.GetPlayer(source)

    if xPlayer.Functions.GetItemByName("weed").amount >= 4 then
        xPlayer.Functions.RemoveItem("weed", 4)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['weed'], "remove", 4)
        Citizen.Wait(500)
        xPlayer.Functions.AddItem('weed_islenmis', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['weed_islenmis'], "add", 1)
    else
        TriggerClientEvent("QBCore:Notify", source, "En az 4 adet Kenevir otu getirmelisin!", "error")
    end
end)

-- KENEVIR TOPLAMA

RegisterNetEvent("jwl-weed:kenevirtopla")
AddEventHandler("jwl-weed:kenevirtopla", function()
    local xPlayer = QBCore.Functions.GetPlayer(source)
    xPlayer.Functions.AddItem("weed", 1)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['weed'], "add", 1)

end)
