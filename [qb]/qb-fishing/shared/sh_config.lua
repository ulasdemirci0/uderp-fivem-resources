Shared = {} or Shared

Shared.CastTimeMin = 10 -- Minimum Time in seconds between fishing and minigame
Shared.CastTimeMax = 25 -- Maximum Time in seconds between fishing and minigame

Shared.MinigameCirclesMin = 5 -- Minigame: Minimum amount of circles
Shared.MinigameCirclesMax = 7 -- Minigame: Maximum amount of circles
Shared.MinigameTime = 20 -- Minigame: Amount of time in seconds

Shared.SellLocation = vector4(-1840.67, -1234.63, 12.02, 322.28)

Shared.FishingZones = {
    -- [1] = { -- Example of a BoxZone (box = true)
    --     coords = vector3(-1870.22, -1249.6, 8.62),
    --     heading = 230,
    --     length = 100,
    --     width = 40,
    --     minZ = 0.78,
    --     maxZ = 100.98,
    --     box = true,
    --     debugPoly = true
    -- },
    [2] = { -- Example of a PolyZone (box = false)
        points = {
            vector2(-1825.94, -1273.17),
            vector2(-1820.5, -1266.72),
            vector2(-1862.16, -1231.59),
            vector2(-1867.45, -1237.37)
        },
        minZ = 6.43,
        maxZ = 12.6,
        box = false,
        debugPoly = true
    }
}
