QBShared = QBShared or {}
QBShared.ForceJobDefaultDutyAtLogin = true -- true: Force duty state to jobdefaultDuty | false: set duty state from database last saved
QBShared.Jobs = {
    ['unemployed'] = {
        label = 'Sivil',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Serbest Meslek',
                payment = 10
            },
        },
    },
    ['police'] = {
        label = 'LSPD',
        type = "leo",
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 50
            },
            ['1'] = {
                name = 'Officer',
                payment = 75
            },
            ['2'] = {
                name = 'Sergeant',
                payment = 100
            },
            ['3'] = {
                name = 'Lieutenant',
                payment = 125
            },
            ['4'] = {
                name = 'Chief',
                isboss = true,
                payment = 150
            },
        },
    },
    ['ambulance'] = {
        label = 'EMS',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 50
            },
            ['1'] = {
                name = 'Paramedic',
                payment = 75
            },
            ['2'] = {
                name = 'Doctor',
                payment = 100
            },
            ['3'] = {
                name = 'Surgeon',
                payment = 125
            },
            ['4'] = {
                name = 'Chief',
                isboss = true,
                payment = 150
            },
        },
    },
    ['realestate'] = {
        label = 'Emlak',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 50
            },
            ['1'] = {
                name = 'House Sales',
                payment = 75
            },
            ['2'] = {
                name = 'Business Sales',
                payment = 100
            },
            ['3'] = {
                name = 'Broker',
                payment = 125
            },
            ['4'] = {
                name = 'Manager',
                isboss = true,
                payment = 150
            },
        },
    },
    ['taxi'] = {
        label = 'Taksi',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 50
            },
            ['1'] = {
                name = 'Driver',
                payment = 75
            },
            ['2'] = {
                name = 'Event Driver',
                payment = 100
            },
            ['3'] = {
                name = 'Sales',
                payment = 125
            },
            ['4'] = {
                name = 'Manager',
                isboss = true,
                payment = 150
            },
        },
    },
    ['bus'] = {
        label = 'Otobüs',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Şoför',
                payment = 50
            },
        },
    },
    ['mechanic'] = {
        label = 'Mekanik',
        type = "mechanic",
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 50
            },
            ['1'] = {
                name = 'Novice',
                payment = 75
            },
            ['2'] = {
                name = 'Experienced',
                payment = 100
            },
            ['3'] = {
                name = 'Advanced',
                payment = 125
            },
            ['4'] = {
                name = 'Manager',
                isboss = true,
                payment = 150
            },
        },
    },
    ['judge'] = {
        label = 'Adalet Bakanlığı',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Yargıç',
                payment = 100
            },
        },
    },
    ['lawyer'] = {
        label = 'Avukatlık Firması',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Avukat',
                payment = 50
            },
        },
    },
    ['trucker'] = {
        label = 'Tır Firması',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Şoför',
                payment = 50
            },
        },
    },
    ['garbage'] = {
        label = 'Çöpçülük',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Toplayıcı',
                payment = 50
            },
        },
    },
    ['lumberjack'] = {
        label = 'Oduncu',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Oduncu',
                payment = 50
            },
        },
    },
}
