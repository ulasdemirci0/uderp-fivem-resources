--[[
           _______________________________________________
  ________|                 Jewell Scripts               |_______
  \       |              Developed by Zelensky#1881      |      /
   \      |          Discord: discord.gg/contralera      |     /
   /      |______________________________________________|     \
  /__________)                                        (_________\

]]--

local relationshipTypes = {
	'GANG_1',
	'GANG_2',
	'GANG_9',
	'GANG_10',
	'AMBIENT_GANG_LOST',
	'AMBIENT_GANG_MEXICAN',
	'AMBIENT_GANG_FAMILY',
	'AMBIENT_GANG_BALLAS',
	'AMBIENT_GANG_MARABUNTE',
	'AMBIENT_GANG_CULT',
	'AMBIENT_GANG_SALVA',
	'AMBIENT_GANG_WEICHENG',
	'AMBIENT_GANG_HILLBILLY',
	'DEALER',
	'COP',
	'PRIVATE_SECURITY',
	'SECURITY_GUARD',
	'ARMY',
	'MEDIC',
	'FIREMAN',
	'HATES_PLAYER',
	'NO_RELATIONSHIP',
	'SPECIAL',
	'MISSION2',
	'MISSION3',
	'MISSION4',
	'MISSION5',
	'MISSION6',
	'MISSION7',
	'MISSION8'
}

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(5000)

		for _, group in ipairs(relationshipTypes) do
			SetRelationshipBetweenGroups(1, GetHashKey('PLAYER'), GetHashKey(group))
			SetRelationshipBetweenGroups(1, GetHashKey(group), GetHashKey('PLAYER'))
		end
	end
end)

Citizen.CreateThread(function()
   while true do
     Citizen.Wait(1)
     RemoveAllPickupsOfType(0xDF711959)
     RemoveAllPickupsOfType(0xF9AFB48F)
     RemoveAllPickupsOfType(0xA9355DCD)
   end
end)

-- AYAR KISMI

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0) -- crash engelleme

		SetVehicleDensityMultiplierThisFrame(0.01) -- trafik yoğunluğunu ayarla (max 1)
		SetPedDensityMultiplierThisFrame(0.0) -- npc yoğunluğunu ayarla (max 1)
		SetRandomVehicleDensityMultiplierThisFrame(0.0) -- rastgele araçları (araba senaryoları / park yerinden çıkan arabalar vb.) ayarla (max 1)
		SetParkedVehicleDensityMultiplierThisFrame(0.0) -- rastgele park etmiş araçları (park etmiş araba senaryoları) ayarla (max 1)
		SetScenarioPedDensityMultiplierThisFrame(0.0, 0.0) -- rastgele npc pedlerini veya senaryo pedlerini ayarla (max 1)
		SetGarbageTrucks(false) -- çöp kamyonlarının rastgele spawnlanmasını durdurun (true/false)
		SetRandomBoats(false) -- rastgele teknelerin suda spawnlanmasını durdurun (true/false)
		SetCreateRandomCops(false) -- etrafta dolaşan / araba kullanan rastgele polisleri devre dışı bırakın (true/false)
		SetCreateRandomCopsNotOnScenarios(false) -- rastgele polislerin (bir senaryoda değil) ortaya çıkmasını durdurun (true/false)
		SetCreateRandomCopsOnScenarios(false) -- rastgele polislerin (bir senaryoda) spawnlanmasını durdurun (true/false)
		
		local x,y,z = table.unpack(GetEntityCoords(PlayerPedId()))
		ClearAreaOfVehicles(x, y, z, 1000, false, false, false, false, false)
		RemoveVehiclesFromGeneratorsInArea(x - 500.0, y - 500.0, z - 500.0, x + 500.0, y + 500.0, z + 500.0);
	end
end) 