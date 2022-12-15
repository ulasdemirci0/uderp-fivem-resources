Config = {

BlipSprite = 237,
BlipColor = 26,
BlipText = 'Workbench',

UseLimitSystem = false, -- Enable if your esx uses limit system

CraftingStopWithDistance = true, -- Crafting will stop when not near workbench

ExperiancePerCraft = 100, -- The amount of experiance added per craft (100 Experiance is 1 level)

HideWhenCantCraft = false, -- Instead of lowering the opacity it hides the item that is not craftable due to low level or wrong job

Categories = {

MechCategories = {
['mechanic'] = {
	Label = 'MECHANICS',
	Image = 'advancedkit',
	Jobs = {}
}
},

GunCategories = {
['closerange'] = {
	Label = 'Yakın dövüş silahları',
	Image = 'weapon_knife',
	Jobs = {}
},
['pistol'] = {
	Label = 'Tabanca',
	Image = 'weapon_pistol',
	Jobs = {}
}
['smg'] = {
	Label = 'Hafif makinalı',
	Image = 'weapon_smg',
	Jobs = {}
}
['rifle'] = {
	Label = 'Ağır makinalı',
	Image = 'weapon_smg',
	Jobs = {}
}
['attachments'] = {
	Label = 'Eklentiler',
	Image = 'smg_scope',
	Jobs = {}
}
['components'] = {
	Label = 'Parçalar',
	Image = 'screwdriverset',
	Jobs = {}
}
['ammo'] = {
	Label = 'Mermi',
	Image = 'weapon_smg',
	Jobs = {}
}
},


Recipes = { -- Enter Item name and then the speed value! The higher the value the more torque

-- Close Range

['weapon_bottle'] = {
	ItemName = 'Kırık Şişe',
	Level = 0, -- From what level this item will be craftable
	Category = 'closerange', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		["glass"] = 100,
	}
},
['weapon_knuckle'] = {
	ItemName = 'Muşta',
	Level = 0, -- From what level this item will be craftable
	Category = 'closerange', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		["iron"] = 60,
		["steel"] = 20,
		["metalscrap"] = 20,
	}
},
['weapon_bat'] = {
	ItemName = 'Beyzbol sopası',
	Level = 0, -- From what level this item will be craftable
	Category = 'closerange', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		["iron"] = 100,
	}
},

['weapon_hammer'] = {
	ItemName = 'Çekiç',
	Level = 0, -- From what level this item will be craftable
	Category = 'closerange', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		["iron"] = 100,
	}
},
['weapon_crowbar'] = {
	ItemName = 'Levye',
	Level = 0, -- From what level this item will be craftable
	Category = 'closerange', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		["iron"] = 100,
	}
},
['weapon_pipewrench'] = {
	ItemName = 'İngiliz Anahtarı',
	Level = 0, -- From what level this item will be craftable
	Category = 'closerange', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		["iron"] = 100,
	}
},
['weapon_knife'] = {
	ItemName = 'Bıçak',
	Level = 0, -- From what level this item will be craftable
	Category = 'closerange', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		["iron"] = 100,
	}
},
['weapon_dagger'] = {
	ItemName = 'Hançer',
	Level = 0, -- From what level this item will be craftable
	Category = 'closerange', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		["iron"] = 100,
	}
},

['weapon_hatchet'] = {
	ItemName = 'Balta',
	Level = 0, -- From what level this item will be craftable
	Category = 'closerange', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		["iron"] = 100,
	}
},
['weapon_switchblade'] = {
	ItemName = 'Sustalı',
	Level = 0, -- From what level this item will be craftable
	Category = 'closerange', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		["iron"] = 100,
	}
},

['weapon_machete'] = {
	ItemName = 'Pala',
	Level = 0, -- From what level this item will be craftable
	Category = 'closerange', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		["iron"] = 100,
	}
},

-- Pistol

['weapon_fnx45'] = {
	ItemName = 'FN FNX-45',
	Level = 0, -- From what level this item will be craftable
	Category = 'pistol', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 300, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		["metalscrap"] = 35,
		["steel"] = 100,
		["iron"] = 85,
	}
},
['weapon_ceramicpistol'] = {
	ItemName = 'Seramik Pistol',
	Level = 0, -- From what level this item will be craftable
	Category = 'pistol', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 300, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		["metalscrap"] = 50,
		["steel"] = 125,
		["iron"] = 95,
	
	}
},
['weapon_combatpistol'] = {
	ItemName = 'Combat Pistol',
	Level = 0, -- From what level this item will be craftable
	Category = 'pistol', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 300, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		["metalscrap"] = 35,
		["steel"] = 100,
		["iron"] = 85,
	}
},
['weapon_gadgetpistol'] = {
	ItemName = 'Perico Pistol',
	Level = 0, -- From what level this item will be craftable
	Category = 'pistol', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 300, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		["metalscrap"] = 35,
		["steel"] = 100,
		["iron"] = 85,
	}
},
['weapon_doubleaction'] = {
	ItemName = 'Double-Action Revolver',
	Level = 0, -- From what level this item will be craftable
	Category = 'pistol', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 300, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		["metalscrap"] = 35,
		["steel"] = 100,
		["iron"] = 85,
	}
},
['weapon_pistol50'] = {
	ItemName = 'Pistol .50',
	Level = 0, -- From what level this item will be craftable
	Category = 'pistol', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 300, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		["metalscrap"] = 50,
		["steel"] = 125,
		["iron"] = 95,
	
	}
},

-- SMG(SMALL MACHİNE GUN)

['weapon_mac10'] = {
	ItemName = 'Mac-10',
	Level = 0, -- From what level this item will be craftable
	Category = 'smg', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 600, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		["metalscrap"] = 35,
		["steel"] = 100,
		["iron"] = 85,
	}
},
['weapon_gusenberg'] = {
	ItemName = 'Mac-10',
	Level = 0, -- From what level this item will be craftable
	Category = 'smg', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 600, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		["metalscrap"] = 35,
		["steel"] = 100,
		["iron"] = 85,
	}
},

-- RİFLE(Machine Guns)

['weapon_assaultrifle'] = {
	ItemName = 'Assault Rifle',
	Level = 0, -- From what level this item will be craftable
	Category = 'weapons', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 950, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
	["steel"] = 25,
	["aluminum"] = 70,
	["plastic"] = 80
	}
},
['weapon_carbinerifle'] = {
	ItemName = 'Carbine Rifle',
	Level = 0, -- From what level this item will be craftable
	Category = 'weapons', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 950, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
	["steel"] = 25,
	["aluminum"] = 70,
	["plastic"] = 80
	}
},
['weapon_advancedrifle'] = {
	ItemName = 'Advanced Rifle',
	Level = 0, -- From what level this item will be craftable
	Category = 'weapons', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 950, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
	["steel"] = 25,
	["aluminum"] = 70,
	["plastic"] = 80
	}
},
['weapon_specialcarbine'] = {
	ItemName = 'HK-G33',
	Level = 0, -- From what level this item will be craftable
	Category = 'weapons', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 950, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
	["steel"] = 25,
	["aluminum"] = 70,
	["plastic"] = 80
	}
},
['weapon_bullpuprifle'] = {
	ItemName = 'Famas',
	Level = 0, -- From what level this item will be craftable
	Category = 'weapons', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 950, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
	["steel"] = 25,
	["aluminum"] = 70,
	["plastic"] = 80
	}
},
['weapon_ak47'] = {
	ItemName = 'Ak-47',
	Level = 0, -- From what level this item will be craftable
	Category = 'weapons', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 950, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
	["steel"] = 25,
	["aluminum"] = 70,
	["plastic"] = 80
	}
},
['weapon_scarh'] = {
	ItemName = 'Scar-H',
	Level = 0, -- From what level this item will be craftable
	Category = 'weapons', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 950, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
	["steel"] = 25,
	["aluminum"] = 70,
	["plastic"] = 80
	}
},
['weapon_m70'] = {
	ItemName = 'M70',
	Level = 0, -- From what level this item will be craftable
	Category = 'weapons', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 950, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
	["steel"] = 25,
	["aluminum"] = 70,
	["plastic"] = 80
	}
},


-
['smg_ammo'] = {
	ItemName = 'SMG Ammo',
	Level = 0, -- From what level this item will be craftable
	Category = 'weapons', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 5, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		["steel"] = 55,
		["aluminum"] = 80,
		["copper"] = 60
	}
},
['rifle_ammo'] = {
	ItemName = 'Rifle Ammo',
	Level = 0, -- From what level this item will be craftable
	Category = 'weapons', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 5, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		["steel"] = 50,
		["aluminum"] = 75,
		["copper"] = 50
	}
},

-- // mech stuff

['mechanic_tools'] = {
	ItemName = 'Mechanic tools',
	Level = 0, -- From what level this item will be craftable
	Category = 'mechanic', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = 'mechanic, mechanic2, mechanic3, mechanic4, mechanic5, mechanic6, mechanic7', -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 90, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		["metalscrap"] = 30,
        ["steel"] = 49,
        ["aluminum"] = 10,
	}
},
['mech_toolbox'] = {
	ItemName = 'mech_toolbox',
	Level = 0, -- From what level this item will be craftable
	Category = 'mechanic', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = 'mechanic, mechanic2, mechanic3, mechanic4, mechanic5, mechanic6, mechanic7', -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 90, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		["metalscrap"] = 40,
        ["steel"] = 19,
        ["iron"] = 180,
        ["rubber"] = 9
	}
},
['turbo_lvl_1'] = {
	ItemName = 'Turbo Level 1',
	Level = 3, -- From what level this item will be craftable
	Category = 'mechanic', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = 'mechanic, mechanic2, mechanic3, mechanic4, mechanic5, mechanic6, mechanic7', -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 90, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		["metalscrap"] = 100,
        ["steel"] = 509,
        ["iron"] = 180,
        ["rubber"] = 30
	}
},
['stock_transmission'] = {
	ItemName = 'Stock Transmission',
	Level = 2, -- From what level this item will be craftable
	Category = 'mechanic', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = 'mechanic, mechanic2, mechanic3, mechanic4, mechanic5, mechanic6, mechanic7', -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 90, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
        ["steel"] = 469,
        ["iron"] = 180,
        ["rubber"] = 10
	}
},
['race_transmission'] = {
	ItemName = 'Race Transmission',
	Level = 2, -- From what level this item will be craftable
	Category = 'mechanic', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = 'mechanic, mechanic2, mechanic3, mechanic4, mechanic5, mechanic6, mechanic7', -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 90, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		["metalscrap"] = 300,
        ["steel"] = 469,
        ["iron"] = 180,
        ["copper"] = 100,
        ["rubber"] = 70  -- item name and count, adding items that dont exist in database will crash the script
	}
},
['race_transmission_4wd'] = {
	ItemName = 'Race Transmission 4WD',
	Level = 2, -- From what level this item will be craftable
	Category = 'mechanic', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = 'mechanic, mechanic2, mechanic3, mechanic4, mechanic5, mechanic6, mechanic7', -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 90, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		["metalscrap"] = 150,
        ["steel"] = 469,
        ["aluminum"] = 25,
        ["iron"] = 180,
        ["copper"] = 100,
        ["rubber"] = 111 -- item name and count, adding items that dont exist in database will crash the script
	}
},
['race_transmission_fwd'] = {
	ItemName = 'Race Transmission FWD',
	Level = 2, -- From what level this item will be craftable
	Category = 'mechanic', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = 'mechanic, mechanic2, mechanic3, mechanic4, mechanic5, mechanic6, mechanic7', -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 90, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		["metalscrap"] = 165,
        ["steel"] = 105,
        ["aluminum"] = 30,
        ["iron"] = 180,
        ["copper"] = 100,
        ["rubber"] = 60 -- item name and count, adding items that dont exist in database will crash the script
	}
},
['stock_suspension'] = {
	ItemName = 'Stock Suspension',
	Level = 2, -- From what level this item will be craftable
	Category = 'mechanic', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = 'mechanic, mechanic2, mechanic3, mechanic4, mechanic5, mechanic6, mechanic7', -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 90, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		["metalscrap"] = 10,
        ["iron"] = 180,
        ["copper"] = 100, -- item name and count, adding items that dont exist in database will crash the script
	}
},
['race_suspension'] = {
	ItemName = 'Race Suspension',
	Level = 2, -- From what level this item will be craftable
	Category = 'mechanic', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = 'mechanic, mechanic2, mechanic3, mechanic4, mechanic5, mechanic6, mechanic7', -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 90, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
        ["steel"] = 149,
        ["aluminum"] = 120,
        ["iron"] = 180,
        ["copper"] = 100,
        ["rubber"] = 70 -- item name and count, adding items that dont exist in database will crash the script
	}
},
['stock_engine'] = {
	ItemName = 'Stock Engine',
	Level = 1, -- From what level this item will be craftable
	Category = 'mechanic', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = 'mechanic, mechanic2, mechanic3, mechanic4, mechanic5, mechanic6, mechanic7', -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 90, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		["metalscrap"] = 25,
        ["iron"] = 100,
        ["copper"] = 80,
        ["rubber"] = 10,
        ["plastic"] = 60 -- item name and count, adding items that dont exist in database will crash the script
	}
},
['v8engine'] = {
	ItemName = 'v8engine',
	Level = 2, -- From what level this item will be craftable
	Category = 'mechanic', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = 'mechanic, mechanic2, mechanic3, mechanic4, mechanic5, mechanic6, mechanic7', -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 90, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		["metalscrap"] = 165,
        ["steel"] = 105,
        ["aluminum"] = 30,
        ["iron"] = 180,
        ["copper"] = 100,
        ["rubber"] = 60,
        ["plastic"] = 60 -- item name and count, adding items that dont exist in database will crash the script
	}
},
['2jzengine'] = {  -- toyota engine
	ItemName = '2jzengine',
	Level = 3, -- From what level this item will be craftable
	Category = 'mechanic', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = 'mechanic, mechanic2, mechanic3, mechanic4, mechanic5, mechanic6, mechanic7', -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 90, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		["metalscrap"] = 195,
        ["steel"] = 115,
        ["aluminum"] = 90,
        ["iron"] = 80,
        ["copper"] = 90,
        ["rubber"] = 20,  -- item name and count, adding items that dont exist in database will crash the script
	}
},
['lambov10'] = {
	ItemName = 'lambov10',
	Level = 4, -- From what level this item will be craftable
	Category = 'mechanic', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = 'mechanic, mechanic2, mechanic3, mechanic4, mechanic5, mechanic6, mechanic7', -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 90, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		["metalscrap"] = 150,
        ["steel"] = 115,
        ["aluminum"] = 225,
        ["iron"] = 110,
        ["copper"] = 100,
        ["rubber"] = 60, -- item name and count, adding items that dont exist in database will crash the script
	}
},
['musv8'] = { 
	ItemName = 'musv8',
	Level = 4, -- From what level this item will be craftable
	Category = 'mechanic', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = 'mechanic, mechanic2, mechanic3, mechanic4, mechanic5, mechanic6, mechanic7', -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 90, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		["metalscrap"] = 185,
        ["steel"] = 115,
        ["aluminum"] = 210,
        ["iron"] = 180,
        ["copper"] = 150,
        ["rubber"] = 60, -- item name and count, adding items that dont exist in database will crash the script
	}
},
['shonen'] = { -- japanese 'lambo' type engine
	ItemName = 'shonen',
	Level = 5, -- From what level this item will be craftable
	Category = 'mechanic', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = 'mechanic, mechanic2, mechanic3, mechanic4, mechanic5, mechanic6, mechanic7', -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 90, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		["metalscrap"] = 265,
        ["steel"] = 125,
        ["aluminum"] = 240,
        ["iron"] = 190,
        ["copper"] = 150,
        ["rubber"] = 80, -- item name and count, adding items that dont exist in database will crash the script
	}
},
['rb26det'] = {  -- nissan skyline engine
	ItemName = 'rb26det',
	Level = 4, -- From what level this item will be craftable
	Category = 'mechanic', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = 'mechanic, mechanic2, mechanic3, mechanic4, mechanic5, mechanic6, mechanic7', -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 90, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		["metalscrap"] = 265,
        ["steel"] = 115,
        ["aluminum"] = 230,
        ["iron"] = 90,
        ["copper"] = 180,
        ["rubber"] = 70, -- item name and count, adding items that dont exist in database will crash the script
	}
},
['rotary7'] = { -- 
	ItemName = 'rotary7',
	Level = 5, -- From what level this item will be craftable
	Category = 'mechanic', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = 'mechanic, mechanic2, mechanic3, mechanic4, mechanic5, mechanic6, mechanic7', -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 90, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		["metalscrap"] = 295,
        ["steel"] = 235,
        ["aluminum"] = 230,
        ["iron"] = 680,
        ["copper"] = 280,
        ["rubber"] = 180, -- item name and count, adding items that dont exist in database will crash the script
	}
},
['m297zonda'] = { -- supercar engine
	ItemName = 'm297zonda',
	Level = 6, -- From what level this item will be craftable
	Category = 'mechanic', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = 'mechanic, mechanic2, mechanic3, mechanic4, mechanic5, mechanic6, mechanic7', -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 90, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		["metalscrap"] = 365,
        ["steel"] = 245,
        ["aluminum"] = 230,
        ["iron"] = 160,
        ["copper"] = 400,
        ["rubber"] = 160, -- item name and count, adding items that dont exist in database will crash the script
	}
},
['m158huayra'] = { -- supercar mercedes
	ItemName = 'm158huayra',
	Level = 6, -- From what level this item will be craftable
	Category = 'mechanic', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = 'mechanic, mechanic2, mechanic3, mechanic4, mechanic5, mechanic6, mechanic7', -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 90, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		["metalscrap"] = 375,
        ["steel"] = 225,
        ["aluminum"] = 260,
        ["iron"] = 180,
        ["copper"] = 600,
        ["rubber"] = 180, -- item name and count, adding items that dont exist in database will crash the script
	}
},
['k20a'] = { -- v8engine 
	ItemName = 'k20a',
	Level = 4, -- From what level this item will be craftable
	Category = 'mechanic', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = 'mechanic, mechanic2, mechanic3, mechanic4, mechanic5, mechanic6, mechanic7', -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 90, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		["metalscrap"] = 265,
        ["steel"] = 115,
        ["aluminum"] = 230,
        ["iron"] = 90,
        ["copper"] = 180,
        ["rubber"] = 70, -- item name and count, adding items that dont exist in database will crash the script
	}
},
['gt3flat6'] = {
	ItemName = 'gt3flat6',
	Level = 3, -- From what level this item will be craftable
	Category = 'mechanic', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = 'mechanic, mechanic2, mechanic3, mechanic4, mechanic5, mechanic6, mechanic7', -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 90, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		["metalscrap"] = 165,
        ["steel"] = 115,
        ["aluminum"] = 140,
        ["iron"] = 90,
        ["copper"] = 170,
        ["rubber"] = 40, -- item name and count, adding items that dont exist in database will crash the script
	}
},
['predatorv8'] = {
	ItemName = 'predatorv8',
	Level = 4, -- From what level this item will be craftable
	Category = 'mechanic', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = 'mechanic, mechanic2, mechanic3, mechanic4, mechanic5, mechanic6, mechanic7', -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 90, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		["metalscrap"] = 265,
        ["steel"] = 115,
        ["aluminum"] = 130,
        ["iron"] = 90,
        ["copper"] = 180,
        ["rubber"] = 70, -- item name and count, adding items that dont exist in database will crash the script
	}
},
['p60b40'] = { -- BMW v8engine
	ItemName = 'p60b40',
	Level = 4, -- From what level this item will be craftable
	Category = 'mechanic', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = 'mechanic, mechanic2, mechanic3, mechanic4, mechanic5, mechanic6, mechanic7', -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 90, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		["metalscrap"] = 165,
        ["steel"] = 95,
        ["aluminum"] = 140,
        ["iron"] = 90,
        ["copper"] = 110,
        ["rubber"] = 20,-- item name and count, adding items that dont exist in database will crash the script
	}
},
['michelin_tires'] = {
	ItemName = 'Michelin Tires',
	Level = 2, -- From what level this item will be craftable
	Category = 'mechanic', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = 'mechanic, mechanic2, mechanic3, mechanic4, mechanic5, mechanic6, mechanic7', -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 90, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
        ["iron"] = 180,
        ["rubber"] = 50,
        ["plastic"] = 60  -- item name and count, adding items that dont exist in database will crash the script
	}
},
['stock_brakes'] = {
	ItemName = 'Stock Brakes',
	Level = 1, -- From what level this item will be craftable
	Category = 'mechanic', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = 'mechanic, mechanic2, mechanic3, mechanic4, mechanic5, mechanic6, mechanic7', -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 90, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		["metalscrap"] = 65,
        ["steel"] = 105,
        ["aluminum"] = 30,
        ["rubber"] = 60, -- item name and count, adding items that dont exist in database will crash the script
	}
},
['race_brakes'] = {
	ItemName = 'Race Brakes',
	Level = 2, -- From what level this item will be craftable
	Category = 'mechanic', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = 'mechanic, mechanic2, mechanic3, mechanic4, mechanic5, mechanic6, mechanic7', -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 90, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
        ["steel"] = 205,
        ["aluminum"] = 230,
		["steel"] = 105,
        ["rubber"] = 160, -- item name and count, adding items that dont exist in database will crash the script
	}
},
['stock_sparkplugs'] = {
	ItemName = 'Stock Sparkplugs',
	Level = 2, -- From what level this item will be craftable
	Category = 'mechanic', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = 'mechanic, mechanic2, mechanic3, mechanic4, mechanic5, mechanic6, mechanic7', -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 90, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
        ["steel"] = 50,
        ["iron"] = 280,
        ["copper"] = 400, -- item name and count, adding items that dont exist in database will crash the script
	}
},
['ngk_sparkplugs'] = {
	ItemName = 'Ngk Sparkplugs',
	Level = 2, -- From what level this item will be craftable
	Category = 'mechanic', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = 'mechanic, mechanic2, mechanic3, mechanic4, mechanic5, mechanic6, mechanic7', -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 90, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
        ["steel"] = 100,
        ["iron"] = 480,
        ["copper"] = 600, -- item name and count, adding items that dont exist in database will crash the script
	}
}

},
Workbenches = { -- Every workbench location, leave {} for jobs if you want everybody to access
		
		{coords = vector3(-196.3735,-1318.485,32.08951), jobs = 'mechanic', Categories = 'MechCategories', blip = false, recipes = {}, radius = 3.0 },       					--bennys 1 
		{coords = vector3(101.26113891602,6615.810546875,33.58126831054), jobs = 'mechanic', Categories = 'MechCategories', blip = false, recipes = {}, radius = 3.0 },      	--North LS customs
		{coords = vector3(-522.86, 4194.35, 193.73), jobs = {}, Categories = 'GunCategories', blip = false, recipes = {}, radius = 3.0 }, --Gun crafting 1 
		{coords = vector3(93.65, 3754.39, 40.77), jobs = {}, Categories = 'GunCategories', blip = false, recipes = {}, radius = 3.0} --Gun crafting 2 
		{coords = vector3(-2079.94, 2609.28, 3.08), jobs = {}, Categories = 'GunCategories', blip = false, recipes = {}, radius = 3.0 }, --Gun crafting 3 
		{coords = vector3(-441.1, 1595.31, 358.47), jobs = {}, Categories = 'GunCategories', blip = false, recipes = {}, radius = 3.0 }, --Gun crafting 4 

},
 

Text = {

    ['not_enough_ingredients'] = 'You dont have enough ingredients',
    ['you_cant_hold_item'] = 'You cant hold the item',
    ['item_crafted'] = 'Item crafted!',
    ['wrong_job'] = 'You cant open this workbench',
    ['workbench_hologram'] = '[~b~E~w~] Workbench',
    ['wrong_usage'] = 'Wrong usage of command',
    ['inv_limit_exceed'] = 'Inventory limit exceeded! Clean up before you lose more',
    ['crafting_failed'] = 'You failed to craft the item!'

}

}



function SendTextMessage(msg)

        SetNotificationTextEntry('STRING')
        AddTextComponentString(msg)
        DrawNotification(0,1)

        --EXAMPLE USED IN VIDEO
        --exports['mythic_notify']:SendAlert('inform', msg)

end
