Config = {}

Config.PlateLetters  = 4
Config.PlateNumbers  = 4
Config.PlateUseSpace = false

Config.SpawnVehicle = true  -- TRUE if you want spawn vehicle when buy

Config.TestDrive = true     -- TRUE if you want enable test drive
Config.TestDriveTime = 30   -- TIME in SEC

Config.Blips = {
    [1] = {
        blip = vector3(-56.49, -1096.58, 26.42),
        blipname = 'Premium Deluxe Motorsport',
        blipsprite = 326,
        blipcolor = 3
    },
    [2] = {
        blip = vector3(-773.7, -1495.2, 2.6),
        blipname = 'Boat Shop',
        blipsprite = 427,
        blipcolor = 3
    }
}

Config.Shops = {
    [1] = {
        category = 'pdm', -- Change ["shop"] in qb-core/shared.lua to match this for the vehicles you want
        coords = vector3(-56.49, -1096.58, 26.42), -- For Marker
        spawnvehicle = vector4(978.19, -3001.99, -40.62, 89.5), -- Display Point
        cameracoords = vector3(974.1, -2997.94, -39.00), -- Where To Create Camera
        pointcamera = vector3(979.1, -3003.00, -40.50), -- Where To Point Camera
        buyspawn = vector4(-11.87, -1080.87, 25.71, 132.0), -- Where Vehicle Spawns on Buy
        testdrive = vector4(-11.87, -1080.87, 25.71, 132.0) -- Where Vehicle Spawns on Test Drive
    },
    [2] = {
        category = 'police',
        coords = vector3(454.6, -1017.4, 28.4),
        spawnvehicle = vector4(228.28, -992.3, -99.39, 204.73), -- Display Point
        cameracoords = vector3(227.41, -999.59, -99.0), -- Where To Create Camera
        pointcamera = vector3(228.28, -992.3, -99.39), -- Where To Point Camera
        buyspawn = vector4(-11.87, -1080.87, 25.71, 132.0), -- Where Vehicle Spawns on Buy
        testdrive = vector4(-11.87, -1080.87, 25.71, 132.0) -- Where Vehicle Spawns on Test Drive
    },
<<<<<<< Updated upstream
    ['air'] = {
        ['Type'] = 'managed', -- no player interaction is required to purchase a vehicle
        ['Zone'] = {
            ['Shape'] = {--polygon that surrounds the shop
                vector2(-1607.58, -3141.7),
                vector2(-1672.54, -3103.87),
                vector2(-1703.49, -3158.02),
                vector2(-1646.03, -3190.84)
            },
            ['minZ'] = 12.99, -- min height of the shop zone
            ['maxZ'] = 16.99, -- max height of the shop zone
            ['size'] = 7.0, -- size of the vehicles zones
        },
        ['Job'] = 'cardealer', -- Name of job or none
        ['ShopLabel'] = 'Air Shop', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 251, -- Blip sprite
        ['blipColor'] = 3, -- Blip color
        ['TestDriveTimeLimit'] = 1.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-1652.76, -3143.4, 13.99), -- Blip Location
        ['ReturnLocation'] = vector3(-1628.44, -3104.7, 13.94), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-1617.49, -3086.17, 13.94, 329.2), -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(-1625.19, -3103.47, 13.94, 330.28), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-1651.36, -3162.66, 12.99, 346.89), -- where the vehicle will spawn on display
                defaultVehicle = 'volatus', -- Default display vehicle
                chosenVehicle = 'volatus' -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-1668.53, -3152.56, 12.99, 303.22),
                defaultVehicle = 'luxor2',
                chosenVehicle = 'luxor2'
            },
            [3] = {
                coords = vector4(-1632.02, -3144.48, 12.99, 31.08),
                defaultVehicle = 'nimbus',
                chosenVehicle = 'nimbus'
            },
            [4] = {
                coords = vector4(-1663.74, -3126.32, 12.99, 275.03),
                defaultVehicle = 'frogger',
                chosenVehicle = 'frogger'
            },
        },
=======
    [3] = {
        category = 'ambulance',
        coords = vector3(0, 0, 0), -- Marker Point
        spawnvehicle = vector4(0, 0, 0, 0), -- Display Point
        cameracoords = vector3(0, 0, 0), -- Where To Create Camera
        pointcamera = vector3(0, 0, 0), -- Where To Point Camera
        buyspawn = vector4(0, 0, 0, 0), -- Where Vehicle Spawns on Buy
        testdrive = vector4(0, 0, 0, 0) -- Where Vehicle Spawns on Test Drive
>>>>>>> Stashed changes
    },
    [4] = {
        category = 'mechanic',
        coords = vector3(0, 0, 0), -- Marker Point
        spawnvehicle = vector4(0, 0, 0, 0), -- Display Point
        cameracoords = vector3(0, 0, 0), -- Where To Create Camera
        pointcamera = vector3(0, 0, 0), -- Where To Point Camera
        buyspawn = vector4(0, 0, 0, 0), -- Where Vehicle Spawns on Buy
        testdrive = vector4(0, 0, 0, 0) -- Where Vehicle Spawns on Test Drive
    },
    [5] = {
        category = 'motorcycle',
        coords = vector3(0, 0, 0), -- Marker Point
        spawnvehicle = vector4(0, 0, 0, 0), -- Display Point
        cameracoords = vector3(0, 0, 0), -- Where To Create Camera
        pointcamera = vector3(0, 0, 0), -- Where To Point Camera
        buyspawn = vector4(0, 0, 0, 0), -- Where Vehicle Spawns on Buy
        testdrive = vector4(0, 0, 0, 0) -- Where Vehicle Spawns on Test Drive
    },
    [6] = {
        category = 'offroad',
        coords = vector3(0, 0, 0), -- Marker Point
        spawnvehicle = vector4(0, 0, 0, 0), -- Display Point
        cameracoords = vector3(0, 0, 0), -- Where To Create Camera
        pointcamera = vector3(0, 0, 0), -- Where To Point Camera
        buyspawn = vector4(0, 0, 0, 0), -- Where Vehicle Spawns on Buy
        testdrive = vector4(0, 0, 0, 0) -- Where Vehicle Spawns on Test Drive
    },
    [7] = {
        category = 'boat',
        coords = vector3(-773.7, -1495.2, 2.6), -- Marker Point
        spawnvehicle = vector4(-801.36, -1504.19, -0.09, 290.76), -- Display Point
        cameracoords = vector3(-789.71, -1501.12, 4.59), -- Where To Create Camera
        pointcamera = vector3(-801.36, -1504.19, -0.09), -- Where To Point Camera
        buyspawn = vector4(-801.36, -1504.19, -0.09, 290.76), -- Where Vehicle Spawns on Buy
        testdrive = vector4(-801.36, -1504.19, -0.09, 290.76) -- Where Vehicle Spawns on Test Drive
    },
    [8] = {
        category = 'donator',
        coords = vector3(0, 0, 0), -- Marker Point
        spawnvehicle = vector4(0, 0, 0, 0), -- Display Point
        cameracoords = vector3(0, 0, 0), -- Where To Create Camera
        pointcamera = vector3(0, 0, 0), -- Where To Point Camera
        buyspawn = vector4(0, 0, 0, 0), -- Where Vehicle Spawns on Buy
        testdrive = vector4(0, 0, 0, 0) -- Where Vehicle Spawns on Test Drive
    },
    [9] = {
        category = 'airplane',
        coords = vector3(0, 0, 0), -- Marker Point
        spawnvehicle = vector4(0, 0, 0, 0), -- Display Point
        cameracoords = vector3(0, 0, 0), -- Where To Create Camera
        pointcamera = vector3(0, 0, 0), -- Where To Point Camera
        buyspawn = vector4(0, 0, 0, 0), -- Where Vehicle Spawns on Buy
        testdrive = vector4(0, 0, 0, 0) -- Where Vehicle Spawns on Test Drive
    }
}