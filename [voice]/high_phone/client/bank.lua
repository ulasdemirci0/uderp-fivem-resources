local QBCore = exports['qb-core']:GetCoreObject()
local PlayerData = {}

RegisterNetEvent("high_phone:updateBankData")
AddEventHandler("high_phone:updateBankData", function(source)
    Config.FrameworkFunctions.triggerCallback("high_phone:getBankData", function(bankData)
        if bankData then
            
            SendNUIMessage({
                action = "updateBank",
                data = bankData
            })
        end
    end, source)
end)

RegisterNetEvent("high_phone:addMoneyRequest")
AddEventHandler("high_phone:addMoneyRequest", function(callback)
    local list = {
        request = callback
    }
    

    SendNUIMessage({
        action = "addMoneyRequest",
        data = list
    })
end)

RegisterNUICallback("updateBank", function(source)
    TriggerEvent("high_phone:updateBankData", source)
end)

RegisterNUICallback("transferMoney", function(data, cb)
    Config.FrameworkFunctions.triggerCallback("high_phone:transferMoney", function(result)
        cb(result)
    end, data.id, data.amount, data.purpose)
end)

RegisterNUICallback("acceptRequest", function(data, cb)
    Config.FrameworkFunctions.triggerCallback("high_phone:acceptRequest", function(result)
        cb(result)
    end, data.id)
end)

RegisterNUICallback("requestMoney", function(data, cb)
    Config.FrameworkFunctions.triggerCallback("high_phone:requestMoney", function(result)
        cb(result)
    end, data.id, data.amount, data.purpose)
end)