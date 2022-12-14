
-------------------------------------------- General --------------------------------------------
Config = {}
Config.Framework = "newqb" -- newqb, oldqb, esx
Config.Mysql = "oxmysql" -- mysql-async, ghmattimysql, oxmysql
Config.DefaultHud = "radial" -- Default hud when player first login avaliable huds [radial, classic, text]
Config.DefaultSpeedUnit = "kmh" -- Default speed unit when player first login avaliable speed units [kmh, mph]
Config.HudSettingsCommand = 'hud' -- Command for open hud settings
Config.DisplayMapOnWalk = false -- true - Show map when walking | false - Hide map when walking
Config.DisplayRealTime = false -- if you set this to true will show the real time according to player local time | if false it will show the game time
Config.EnableSpamNotification = true -- Spam preventation for seatbelt, cruise etc.
Config.EnableDateDisplay = true -- Determines if display date or nor
Config.DefaultMap = "rectangle" -- rectangle, radial
Config.DefaultSpeedometerSize = 1.0 -- 0.5 - 1.3
Config.DefaultHudSize = 1.0 -- 0.5 - 1.3
Config.EnableAmmoHud = true -- Determines if display ammo hud or nor
Config.DefaultRefreshRate = 200 -- Refresh rate for vehicle hud
Config.EnableHealth = true
Config.EnableHunger = true
Config.EnableThirst = true
Config.EnableHud = true
Config.EnableArmor = true
Config.EnableStamina = true
Config.EnableSpeedometer = true



Config.DefaultHudColors = {
    ["radial"] = {
        ["health"] = "#FF4848ac",
        ["armor"] = "#FFFFFFac",
        ["hunger"] = "#FFA048ac",
        ["thirst"] = "#4886FFac", 
        ["stress"] = "#48A7FFac",
        ["stamina"] = "#C4FF48ac",
        ["oxy"] = "#48A7FFac",
        ["parachute"] = "#48FFBDac", 
        ["nitro"] = "#AFFF48ac", 
        ["altitude"] = "#00FFF0ac", 
    },
    ["text"] = {
        ["health"] = "#FF4848ac",
        ["armor"] = "#FFFFFFac",
        ["hunger"] = "#FFA048ac",
        ["thirst"] = "#4886FFac", 
        ["stress"] = "#48A7FFac",
        ["stamina"] = "#C4FF48ac",
        ["parachute"] = "#48FFBDac", 
        ["oxy"] = "#48A7FFac",
        ["nitro"] = "#AFFF48ac", 
        ["altitude"] = "#00FFF0ac", 
    },    
    ["classic"] = {
        ["health"] = "#9F2929",
        ["armor"] = "#2E3893",
        ["hunger"] = "#B3743A",
        ["thirst"] = "#2F549C", 
        ["stress"] = "#AA35A6",
        ["oxy"] = "#48A7FFac",
        ["stamina"] = "#c4ff48",
        ["parachute"] = "#48ffde", 
        ["nitro"] = "#8eff48", 
        ["altitude"] = "#48deff", 
    },      
}


-------------------------------------------- Watermark hud --------------------------------------------
Config.DisableWaterMarkTextAndLogo = true -- true - Disable watermark text and logo 
Config.UseWaterMarkText = false -- if true text will be shown | if  false logo will be shown
Config.WaterMarkText1 = "" -- Top right server text
Config.WaterMarkText2 = ""  -- Top right server text
Config.WaterMarkLogo = "" -- Logo url
Config.LogoWidth = "0"
Config.LogoHeight = "0"
Config.EnableId = true -- Determines if display server id or nor
Config.EnableWatermarkCash = true -- Determines if display cash or nor
Config.EnableWatermarkBankMoney = true -- Determines if display bank money or nor
Config.EnableWatermarkJob = true -- Determines if display job or nor
Config.EnableWatermarkWeaponImage = true -- Determines if display weapon image or nor
Config.EnableWaterMarkHud = true -- Determines if right-top hud is enabled or not

Config.Text1Style = {
    ["color"] = '#e960c7',
    ["text-shadow"] = "0px 0.38rem 2.566rem rgba(116, 5, 147, 0.55)",
}

Config.Text2Style = {
    ["color"] = "#ffffff",
}

-------------------------------------------- Keys --------------------------------------------
Config.DefaultCruiseControlKey = "Y" -- Default control key for cruise. Players can change the key according to their desire 
Config.DefaultSeatbeltControlKey = "B" -- Default control key for seatbelt. Players can change the key according to their desire 
Config.VehicleEngineToggleKey = "G" -- Default control key for toggle engine. Players can change the key according to their desire 
Config.NitroKey = "SHIFT" -- Default control key for use nitro. Players can change the key according to their desire 

-------------------------------------------- Nitro --------------------------------------------
Config.RemoveNitroOnpress = 2 -- Determines of how much you want to remove nitro when player press nitro key
Config.NitroItem = "nitro" -- item to install nitro to a vehicle
Config.EnableNitro = false -- Determines if nitro system is enabled or not
Config.NitroForce = 50.0 -- Nitro force when player using nitro

-------------------------------------------- Money commands --------------------------------------------
Config.EnableCashAndBankCommands = true -- Determines if money commands are enabled or not
Config.CashCommand = "cash"  -- command to see cash
Config.BankCommand = "bank" -- command to see bank money

-------------------------------------------- Engine Toggle --------------------------------------------
Config.EnableEngineToggle = true -- Determines if engine toggle is enabled or not

-------------------------------------------- Vehicle Functionality --------------------------------------------
Config.EnableCruise = true -- Determines if cruise mode is active
Config.EnableSeatbelt = true -- Determines if seatbelt is active

-------------------------------------------- Settings text --------------------------------------------
Config.SettingsLocale = { -- Settings texts
    ["text_hud_1"] = "yazi",
    ["text_hud_2"] = "hud",
    ["classic_hud_1"] = "klasik",
    ["classic_hud_2"] = "hud",
    ["radial_hud_1"] = "yuvarlak",
    ["radial_hud_2"] = "hud",
    ["hide_hud"] = "Hud'u Gizle",
    ["health"] = "Sağlık",
    ["armor"] = "Zırh",
    ["thirst"] = "Susuzluk",
    ["stress"] = "Stres",
    ["oxy"] = "Nefes",
    ["hunger"] = "Açlık",
    ["show_hud"] = "Hud'u Göster",
    ["stamina"] = "Stamina",
    ["nitro"] = "Nitro",
    ["Altitude"] = "Rakım",
    ["Parachute"] = "Paraşüt",
    ["enable_cinematicmode"] = "Sinematik'i Etkinleştir",
    ["disable_cinematicmode"] = "Sinematiği Devre Dışı Bırak",
    ["exit_settings_1"] = "CIKIS YAP",
    ["exit_settings_2"] = "AYARLAR",
    ["speedometer"] = "HIZ",
    ["map"] = "HARITA",
    ["show_compass"] = "Saati/Tarihi Göster",
    ["hide_compass"] = "Saati/Tarihi Gizle",
    ["rectangle"] = "Kare",
    ["radial"] = "Yuvarlak",
    ["dynamic"] = "dinamik",
    ["status"] = "DURUM",
    ["enable"] = "Etkinleştir",
    ["hud_size"] = "Arayüz Boyutu",
    ["disable"] = "Devre Dışı Bırak",
    ["hide_at"] = "Gizle",
    ["and_above"] = "Yukarıda",
    ["enable_edit_mode"] = "HUD'u Hareket Ettir (Tek Simge)",
    ["enable_edit_mode_2"] = "HUD'u Hareket Ettir (Blok)",
    ["change_status_size"] = "HUD Boyutunu Değiştirin",
    ["change_color"] = "HUD Rengini Değiştir",
    ["disable_edit_mode"] = "Düzenleme Modunu Devre Dışı Bırak",
    ["reset_hud_positions"] = "HUD Pozisyonunu Sıfırla",
    ["info_text"] = "Yenileme hızını artırmanın oyun performansını azaltabileceğini unutmayın.!",
    ["speedometer_size"] = "Gösterge Boyutu",
    ["refresh_rate"] = "Yenileme Hızı",
    ["esc_to_exit"] = "DUZENLEME MODUNDAN CIKMAK ICIN ESC"
}

-------------------------------------------- Fuel --------------------------------------------
Config.UseLegacyFuel = true --Enable this if you use legacy fuel

Config.GetVehicleFuel = function(vehicle) -- you can change LegacyFuel export if you use another fuel system 
    if Config.UseLegacyFuel then
        return exports["LegacyFuel"]:GetFuel(vehicle)
    else
        return GetVehicleFuelLevel(vehicle)
    end
end

-------------------------------------------- Stress --------------------------------------------

Config.UseStress = false -- if you set this to false the stress hud will be removed
Config.StressWhitelistJobs = { -- Add here jobs you want to disable stress 
    'police', 'ambulance'
}

Config.WhitelistedWeaponStress = {
    `weapon_petrolcan`,
    `weapon_hazardcan`,
    `weapon_fireextinguisher`
}

Config.AddStress = {
    ["on_shoot"] = {
        min = 1,
        max = 3,
        enable = true,
    },
    ["on_fastdrive"] = {
        min = 1,
        max = 3,
        enable = true,
    },
}

Config.RemoveStress = { -- You can set here amounts by your desire
    ["on_eat"] = {
        min = 5,
        max = 10,
        enable = true,

    },
    ["on_drink"] = {
        min = 5,
        max = 10,
        enable = true,

    },
    ["on_swimming"] = {
        min = 5,
        max = 10,
        enable = true,

    },
    ["on_running"] = {
        min = 5,
        max = 10,
        enable = true,
    },

}



-------------------------------------------- Notifications --------------------------------------------

Config.Notifications = { -- Notifications
    ["stress_gained"] = {
        message = 'Stres Olmaya Başladın',
        type = "error",
        time = 5000
    },
    ["stress_relive"] = {
        message =  'Sakinleşiyorsun',
        type = "success",
        time = 5000
    },
    ["took_off_seatbelt"] = {
        type = "error",
        message = "Kemeri Çıkardın.",
        time = 5000
    },
    ["took_seatbelt"] = {
        type = "success",
        message = "Kemeri Taktınız.",
        time = 5000
    },
    ["cruise_actived"] = {
        type = "success",
        message = "Hız Sabitleyici Açıldı.",
        time = 5000
    },
    ["cruise_disabled"] = {
        type = "error",
        message = "Hız Sabitleyici Kapandı.",
        time = 5000
    },
    ["spam"] = {
        type = "error",
        message = "Birkaç Saniye Bekleyin.",
        time = 5000
    },
    ["engine_on"] = {
        type = "success",
        message = "Motor Çalıştı.",
        time = 5000
    }, 
    ["engine_off"] = {
        type = "success",
        message = "Motor Durdu.",
        time = 5000
    }, 
    ["cant_install_nitro"] = {
        type = "error",
        message = "Nitro'yu aracın içinden kullanamazsın.",
        time = 5000
    }, 
    ["no_veh_nearby"] = {
        type = "error",
        message = "Yakınlarda araç yok.",
        time = 5000
    }, 
    ["cash_display"] = {
        type = "success",
        message = "Cebinde $%s paran var.",
        time = 5000
    }, 
    ["bank_display"] = {
        type = "success",
        message = "Bankanda $%s paran var.",
        time = 5000
    }, 
}

Config.Notification = function(message, type, isServer, src) -- You can change here events for notifications
    if isServer then
        if Config.Framework == "esx" then
            TriggerClientEvent('okokNotify:Alert', src, "HUD", message, 3000, type)
        else
            TriggerClientEvent('QBCore:Notify', src, message, type, 1500)
        end
    else
        if Config.Framework == "esx" then
            exports["okokNotify"]:Alert("HUD", message, 3000, type)
        else
            TriggerEvent('QBCore:Notify', message, type, 1500)
        end
    end
end 