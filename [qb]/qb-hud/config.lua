Config = {}

function GetFramework()
	return exports["qb-core"]:GetCoreObject()
end

Config.Locale = {
	['you_are_on_location'] = 'Şu anda buradasınız -> <strong>%s</strong>',

	['date_format'] = {
		default = 'Tarih: <strong>%s %s, %s</strong>',
		simple = '<strong>%s, %s</strong>',
		simpleWithHours = 'Tarih: <strong>%s</strong>, <strong>%s, %s</strong>',
		withWeekday = '<strong>%s, %s of %s, %s</strong>',
		withHours = 'Tarih: <strong>%s</strong>, <strong>%s of %s, %s</strong>',
		withWeekdayAndHours = 'Tarih: <strong>%s</strong>, <strong>%s, %s of %s, %s</strong>'
	},

	['weekDay_0'] = 'Pazar',
	['weekDay_1'] = 'Pazartesi',
	['weekDay_2'] = 'Salı',
	['weekDay_3'] = 'Çarşamba',
	['weekDay_4'] = 'Perşembe',
	['weekDay_5'] = 'Cuma',
	['weekDay_6'] = 'Cumartesi',

	['day_1'] = '1',
	['day_2'] = '2',
	['day_3'] = '3',
	['day_4'] = '4',
	['day_5'] = '5',
	['day_6'] = '6',
	['day_7'] = '7',
	['day_8'] = '8',
	['day_9'] = '9',

	['day_10'] = '10',
	['day_11'] = '11',
	['day_12'] = '12',
	['day_13'] = '13',
	['day_14'] = '14',
	['day_15'] = '15',
	['day_16'] = '16',
	['day_17'] = '17',
	['day_18'] = '18',
	['day_19'] = '19',

	['day_20'] = '20',
	['day_21'] = '21',
	['day_22'] = '22',
	['day_23'] = '23',
	['day_24'] = '24',
	['day_25'] = '25',
	['day_26'] = '26',
	['day_27'] = '27',
	['day_28'] = '28',
	['day_29'] = '29',

	['day_30'] = '30',
	['day_31'] = '31',

	['month_0'] = 'Ocak',
	['month_1'] = 'Şubat',
	['month_2'] = 'Mart',
	['month_3'] = 'Nisan',
	['month_4'] = 'Mayıs',
	['month_5'] = 'Haziran',
	['month_6'] = 'Temmuz',
	['month_7'] = 'Ağustos',
	['month_8'] = 'Eylül',
	['month_9'] = 'Ekim',
	['month_10'] = 'Kasım',
	['month_11'] = 'Aralık',

	['toggleui'] = 'Hud Aç/Kapat',

}

Config.serverLogo = 'https://i.imgur.com/AcgDL9f.png'

Config.font = {
	name 	= 'Montserrat',
	url 	= 'https://fonts.googleapis.com/css?family=Montserrat:300,400,700,900&display=swap'
}

Config.date = {
	format	 	= 'default',
	AmPm		= false
}

Config.voice = {

	levels = {
		default = 5.0,
		shout = 12.0,
		whisper = 1.0,
		current = 0
	},
	
	keys = {
		distance 	= '~',
	}
}


Config.vehicle = {
	speedUnit = 'KMH',
	maxSpeed = 240,

	keys = {
		seatbelt 	= 'K',
		cruiser		= 'CAPS',
		signalLeft	= 'LEFT',
		signalRight	= 'RIGHT',
		signalBoth	= 'DOWN',
	}
}

Config.ui = {
	toggleui = true,
	
	showServerLogo		= true,

	showJob		 		= true,

	showWalletMoney 	= true,
	showBankMoney 		= true,
	showBlackMoney 		= false,
	showSocietyMoney	= false,

	showDate 			= false,
	showLocation 		= true,
	showVoice	 		= true,

	showHealth			= true,
	showArmor	 		= true,
	showStamina	 		= true,

	showHunger 			= true,
	showThirst	 		= true,

	showMinimap			= false,

	showWeapons			= true,	
}
