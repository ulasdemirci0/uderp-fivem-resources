--[[
    ['Innocence'] = {
    settings = {
        label = 'Bennys Motorworks', -- Text label for anything that wants it
        welcomeLabel = "Welcome to Benny's Motorworks!", -- Welcome label in the UI
        enabled = true, -- If the location can be used at all
    },
    blip = {
        label = 'Bennys Motorworks',
        coords = vector3(-205.6992, -1312.7377, 31.1588),
        sprite = 446,
        scale = 0.65,
        color = 0,
        display = 4,
        enabled = true,
    },
    categories = { -- Only include the categories you want. A category not listed defaults to FALSE.
        mods = true, -- Performance Mods
        repair = true,
        armor = true,
        respray = true,
        liveries = true,
        wheels = true,
        tint = true,
        plate = true,
        extras = true,
        neons = true,
        xenons = true,
        horn = true,
        turbo = true,
        cosmetics = true, -- Cosmetic Mods
    },
    drawtextui = {
        text = "Bennys Motorworks",
    },
    restrictions = { -- A person must pass ALL the restriction checks. Remove an item below to automatically pass that check.
        job = "any", -- Allowed job. Can be an array of strings for multiple jobs. Any for all jobs
        gang = "any", -- Allowed gang. Can be an array of strings for multiple gangs. Any for all gangs
        allowedClasses = {}, -- Array of allowed classes. Empty will allow any but denied classes.
        deniedClasses = {}, -- Array of denied classes.
    },
    zones = {
        { coords = vector3(-212.55, -1320.56, 31.0), length = 6.0, width = 4.0, heading = 270.0, minZ = 29.88, maxZ = 33.48 },
        { coords = vector3(-222.47, -1329.73, 31.0), length = 6.0, width = 4.4, heading = 270.0, minZ = 29.88, maxZ = 33.48 },
    }
},

Vehicle Classes:
0: Compacts     1: Sedans       2: SUVs         3: Coupes       4: Muscle       5: Sports Classics
6: Sports       7: Super        8: Motorcycles  9: Off-road     10: Industrial  11: Utility
12: Vans        13: Cycles      14: Boats       15: Helicopters 16: Planes      17: Service
18: Emergency   19: Military    20: Commercial  21: Trains
 ]]

Config = Config or {}

Config.Locations = {
    ['mechanic1'] = {
        settings = {
            label = '[SATILIK] Mekanik 1',
            welcomeLabel = "Mekaniğimize Hoş Geldiniz!",
            enabled = true,
        },
        blip = {
            label = '[SATILIK] Mekanik 1',
            coords = vector3(-361.96, -132.59, 38.26),
            sprite = 446,
            scale = 0.65,
            color = 0,
            display = 4,
            enabled = true,
        },
        categories = {
            mods = true,
            turbo = true,
            repair = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = true,
            cosmetics = true,
        },
        drawtextui = {
            text = "Bennys Motorworks"
        },
        restrictions = { deniedClasses = { 18 }, job = { "mechanic" } },
        zones = {
            { coords = vector3(-323.77, -133.49, 38.56), length = 6.0, width = 4.0, heading = 270.0, minZ = 29.88,
                maxZ = 33.48 },
            { coords = vector3(-337.14, -135.56, 38.59), length = 6.0, width = 4.0, heading = 270.0, minZ = 29.88,
                maxZ = 33.48 },
        }
    }, ['mechanic2'] = {
        settings = {
            label = '[SATILIK] Mekanik 2',
            welcomeLabel = "Mekaniğimize Hoş Geldiniz!",
            enabled = true,
        },
        blip = {
            label = '[SATILIK] Mekanik 2',
            coords = vector3(-32.0, -1065.56, 28.4),
            sprite = 446,
            scale = 0.65,
            color = 0,
            display = 4,
            enabled = true,
        },
        categories = {
            mods = true,
            turbo = true,
            repair = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = true,
            cosmetics = true,
        },
        drawtextui = {
            text = "Bennys Motorworks"
        },
        restrictions = { deniedClasses = { 18 }, job = { "mechanic" } },
        zones = {
            { coords = vector3(-32.0, -1065.56, 28.4), length = 6.0, width = 4.0, heading = 270.0, minZ = 26.88,
                maxZ = 33.48 },
            { coords = vector3(-32.7, -1049.38, 27.97), length = 6.0, width = 4.0, heading = 270.0, minZ = 26.88,
                maxZ = 33.48 },
        }
    }, ['mechanic3'] = {
        settings = {
            label = '[SATILIK] Mekanik 3',
            welcomeLabel = "Mekaniğimize Hoş Geldiniz!",
            enabled = true,
        },
        blip = {
            label = '[SATILIK] Mekanik 3',
            coords = vector3(-205.4, -1306.01, 30.87),
            sprite = 446,
            scale = 0.65,
            color = 0,
            display = 4,
            enabled = true,
        },
        categories = {
            mods = true,
            turbo = true,
            repair = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = true,
            cosmetics = true,
        },
        drawtextui = {
            text = "Bennys Motorworks"
        },
        restrictions = { deniedClasses = { 18 }, job = { "mechanic" } },
        zones = {
            { coords = vector3(-213.77, -1319.66, 30.89), length = 6.0, width = 4.0, heading = 270.0, minZ = 29.88,
                maxZ = 33.48 },
            { coords = vector3(-223.15, -1330.03, 30.89), length = 6.0, width = 4.0, heading = 270.0, minZ = 29.88,
                maxZ = 33.48 },
        }
    }, ['mechanic4'] = {
        settings = {
            label = '[SATILIK] Mekanik 4',
            welcomeLabel = "Mekaniğimize Hoş Geldiniz!",
            enabled = true,
        },
        blip = {
            label = '[SATILIK] Mekanik 4',
            coords = vector3(722.81, -1088.92, 21.78),
            sprite = 446,
            scale = 0.65,
            color = 0,
            display = 4,
            enabled = true,
        },
        categories = {
            mods = true,
            turbo = true,
            repair = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = true,
            cosmetics = true,
        },
        drawtextui = {
            text = "Bennys Motorworks"
        },
        restrictions = { deniedClasses = { 18 }, job = { "mechanic" } },
        zones = {
            { coords = vector3(733.43, -1090.33, 21.75), length = 6.0, width = 4.0, heading = 270.0, minZ = 29.88,
                maxZ = 33.48 },
            { coords = vector3(735.48, -1079.93, 21.74), length = 6.0, width = 4.0, heading = 270.0, minZ = 29.88,
                maxZ = 33.48 },
        }
    },

    ['MRPD'] = {
        settings = {
            label = 'LSPD Mekanik',
            welcomeLabel = "LSPD Mekanik!",
            enabled = true,
        },
        categories = {
            mods = true,
            turbo = true,
            repair = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = true,
            cosmetics = true,

        },
        drawtextui = {
            text = "MRPD Motorworks",
        },
        restrictions = {
            job = { 'police', 'bcso', 'sasp' },
            allowedClasses = { 18 },
        },
        zones = {
            { coords = vector3(450.09, -975.92, 25.7), length = 9.0, width = 4.0, heading = 90.0, minZ = 24.5,
                maxZ = 28.5 },
            { coords = vector3(435.53, -975.97, 25.7), length = 9.0, width = 4.0, heading = 90.0, minZ = 24.5,
                maxZ = 28.5 },
            { coords = vector3(462.62, -1019.56, 27.85), length = 9.0, width = 4.0, heading = 90.0, minZ = 24.5,
                maxZ = 28.5, },
            { coords = vector3(462.82, -1014.96, 27.83), length = 9.0, width = 4.0, heading = 90.0, minZ = 24.5,
                maxZ = 28.5 },
        }
    },

    ['Pillbox'] = {
        settings = {
            label = 'EMS Mekanik',
            welcomeLabel = "Welcome to Pillbox Motorworks!",
            enabled = true,
        },
        categories = {
            repair = true,
            respray = true,
            liveries = true,
            tint = true,
            extras = true,
            plate = true,
            cosmetics = true,
        },
        drawtextui = {
            text = "Pillbox Motorworks"
        },
        restrictions = {
            job = { 'ambulance' },
            allowedClasses = { 18 },
        },
        zones = {
            { coords = vector3(337.2, -579.6, 28.8), length = 9.4, width = 4.2, heading = 340.0, minZ = 27.5, maxZ = 31.5 },
            { coords = vector3(340.38, -570.8, 28.8), length = 8.8, width = 4.2, heading = 340.0, minZ = 27.5,
                maxZ = 31.5 },
        }
    },
}
