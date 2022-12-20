Config = {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'

Config.PoliceOpen = true -- Can Police open all stashes

Config.Stashes = {
    -- ["stash1"] = {
    --     canAnyoneOpen = false,
    --     stashName = "stash1",
    --     coords = vector3(-1730.5, 358.6, 88.73),
    --     requirecid = false,
    --     jobrequired = false,
    --     gangrequired = false,
    --     gang = "",
    --     job = "",
    --     cid = {""},
    --     stashSize = 1250000,
    --     stashSlots = 125,
    -- }

    ["pdm_gunshop-public"] = {
        canAnyoneOpen = true,
        stashName = "Tepsi",
        coords = vector3(22.65, -1106.23, 29.39),
        requirecid = false,
        jobrequired = false,
        gangrequired = false,
        gang = "",
        job = "",
        cid = { "" },
        stashSize = 1250000,
        stashSlots = 125,
    },
    ["pdm_gunshop-private"] = {
        canAnyoneOpen = false,
        stashName = "Silah Deposu",
        coords = vector3(25.19, -1106.72, 29.54),
        requirecid = false,
        jobrequired = true,
        gangrequired = false,
        gang = "",
        job = "pdm_gunshop",
        cid = { "" },
        stashSize = 1250000,
        stashSlots = 125,
    },
}
