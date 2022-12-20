local QBCore = exports['qb-core']:GetCoreObject()

local Webhooks = {
    ['default'] = 'https://discord.com/api/webhooks/1054801050504273940/zffXSjSu-slJfylxgh7TYbys0vupL6IE4VE1Zr3yCMDGNKssrv6CJ3F7nPAIiAsA-jPo',
    ['testwebhook'] = 'https://discord.com/api/webhooks/1054801050504273940/zffXSjSu-slJfylxgh7TYbys0vupL6IE4VE1Zr3yCMDGNKssrv6CJ3F7nPAIiAsA-jPo',
    ['playermoney'] = 'https://discord.com/api/webhooks/1054801322722983936/8ICjqwEkhc0y9asJ4fVFaMP96fV8V3Je3eL_RqqylrZXdRqkuzU6P95haXABYnXGPztw',
    ['playerinventory'] = 'https://discord.com/api/webhooks/1054801322722983936/8ICjqwEkhc0y9asJ4fVFaMP96fV8V3Je3eL_RqqylrZXdRqkuzU6P95haXABYnXGPztw',
    ['robbing'] = 'https://discord.com/api/webhooks/1054801592764870706/px4h68fcK0zPl1Ux987vk4NHua8WD3d95eSfsIw444nFM0QTF6YaoO5AIWeR7JS3R5Yx',
    ['cuffing'] = '',
    ['drop'] = 'https://discord.com/api/webhooks/1054801783580540959/j6rf501kOnGAhGcqvBG8O0FhCvX3qZJfFPz7fmXIsHGQrYg_syiB6eVpolE0-V-IlUZc',
    ['trunk'] = 'https://discord.com/api/webhooks/1054801850823618630/xxRVEAei55rwpodoFjhoq99lDbodJ2yJT0ryuO03kfpkXWrFpMr6Cw7Gnq-aOMd3yqGn',
    ['stash'] = 'https://discord.com/api/webhooks/1054801937192714350/B6tcBUGRV_A9jMCFUO_fiDFzishzLxW4dBiaej7VzRgPnSGavoRIyZ9xG3-ec-LzR1jK',
    ['glovebox'] = 'https://discord.com/api/webhooks/1054801850823618630/xxRVEAei55rwpodoFjhoq99lDbodJ2yJT0ryuO03kfpkXWrFpMr6Cw7Gnq-aOMd3yqGn',
    ['banking'] = 'https://discord.com/api/webhooks/1054802107275948192/Y4-nokzfd75wMa39Oz0fOy80lZp5JUmf4tyNirP9DF-jwAE8mIRov2wQH8u_fH_qFD-s',
    ['vehicleshop'] = 'https://discord.com/api/webhooks/1054802186846089308/Wd9CNB8QHLVYxx0FwEjfb2dbPFTPsHGR8ZcF77LMRQN98PwdqCb-I-_D5MXPnZDHf-VK',
    ['vehicleupgrades'] = 'https://discord.com/api/webhooks/1054802186846089308/Wd9CNB8QHLVYxx0FwEjfb2dbPFTPsHGR8ZcF77LMRQN98PwdqCb-I-_D5MXPnZDHf-VK',
    ['shops'] = 'https://discord.com/api/webhooks/1054802419684479177/ofanlNvMtV6dtd1kk32Y45zdSnpYKjDqyqZooFRkPaVaWDis6pNm6Hhi1hwvY3x_GrId',
    ['dealers'] = '',
    ['storerobbery'] = 'https://discord.com/api/webhooks/1054801592764870706/px4h68fcK0zPl1Ux987vk4NHua8WD3d95eSfsIw444nFM0QTF6YaoO5AIWeR7JS3R5Yx',
    ['bankrobbery'] = 'https://discord.com/api/webhooks/1054801592764870706/px4h68fcK0zPl1Ux987vk4NHua8WD3d95eSfsIw444nFM0QTF6YaoO5AIWeR7JS3R5Yx',
    ['powerplants'] = 'https://discord.com/api/webhooks/1054804046835372152/MaALKe-tgZ_Tp47JrXbs8yOUzFV67mWmHPo7l_58kb7a7_PTV7KO6QZM1bkP2kqYNSDa',
    ['death'] = '',
    ['joinleave'] = '',
    ['ooc'] = '',
    ['report'] = 'https://discord.com/api/webhooks/1054804100816056391/E_sIlFfKup7Lkkc-u0xXFszqN0kuC4j_qsJOvXpTdWWCV90qhxGoywx_tdX1A1ny86QB',
    ['me'] = 'https://discord.com/api/webhooks/1054804684298256435/C3X6gDV0ue8YE0m3Uy3H3nzuhVsI0BgBZK0lB1gS7ETvI3NLgVxogzQzTXjbla9xx59v',
    ['pmelding'] = '',
    ['112'] = '',
    ['bans'] = '',
    ['anticheat'] = 'https://discord.com/api/webhooks/1054803415085101126/OZkplqBJVNxAEgjZ9aohOIc_H48-5cSdPtHknwazdSM7PMQ19xRbpqjf-rMiedo2TvDW',
    ['weather'] = '',
    ['moneysafes'] = 'https://discord.com/api/webhooks/1054802417687986207/csgxCHlOGyUmIdOina17QqHlBT4p_cMPCP5RIT1Pwq5hCdXfzTfwcFSIzkGjzk52Oh5Y',
    ['bennys'] = '',
    ['bossmenu'] = '',
    ['robbery'] = 'https://discord.com/api/webhooks/1054801592764870706/px4h68fcK0zPl1Ux987vk4NHua8WD3d95eSfsIw444nFM0QTF6YaoO5AIWeR7JS3R5Yx',
    ['casino'] = '',
    ['traphouse'] = '',
    ['911'] = '',
    ['palert'] = 'https://discord.com/api/webhooks/1054801957119856761/9hJzl9JdRCbk8mt1qXzKEBvKmkdu4kRrpGIOWi8QjM1oBYZIx7VUsphPUax-rkTpiy4V',
    ['house'] = 'https://discord.com/api/webhooks/1054801903122387104/d4Y0RlZSkby1wBILi1xl993sbH_o2MBQuhSx3z5eJxzOF7-XY2nHHjJYnVrfF1d2GML_',
}

local Colors = { -- https://www.spycolor.com/
    ['default'] = 14423100,
    ['blue'] = 255,
    ['red'] = 16711680,
    ['green'] = 65280,
    ['white'] = 16777215,
    ['black'] = 0,
    ['orange'] = 16744192,
    ['yellow'] = 16776960,
    ['pink'] = 16761035,
    ["lightgreen"] = 65309,
}

RegisterNetEvent('qb-log:server:CreateLog', function(name, title, color, message, tagEveryone)
    local tag = tagEveryone or false
    local webHook = Webhooks[name] or Webhooks['default']
    local embedData = {
        {
            ['title'] = title,
            ['color'] = Colors[color] or Colors['default'],
            ['footer'] = {
                ['text'] = os.date('%c'),
            },
            ['description'] = message,
            ['author'] = {
                ['name'] = 'QBCore Logs',
                ['icon_url'] = 'https://media.discordapp.net/attachments/870094209783308299/870104331142189126/Logo_-_Display_Picture_-_Stylized_-_Red.png?width=670&height=670',
            },
        }
    }
    PerformHttpRequest(webHook, function() end, 'POST', json.encode({ username = 'QB Logs', embeds = embedData }),
        { ['Content-Type'] = 'application/json' })
    Citizen.Wait(100)
    if tag then
        PerformHttpRequest(webHook, function() end, 'POST', json.encode({ username = 'QB Logs', content = '@everyone' })
            , { ['Content-Type'] = 'application/json' })
    end
end)

QBCore.Commands.Add('testwebhook', 'Test Your Discord Webhook For Logs (God Only)', {}, false, function()
    TriggerEvent('qb-log:server:CreateLog', 'testwebhook', 'Test Webhook', 'default', 'Webhook setup successfully')
end, 'god')
