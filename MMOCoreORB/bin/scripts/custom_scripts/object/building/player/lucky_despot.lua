
object_building_player_lucky_despot = object_building_player_shared_lucky_despot:new {
	lotSize = 5,
	baseMaintenanceRate = 80,
	allowedZones = {"corellia", "dantooine", "lok", "naboo", "rori", "talus", "tatooine", "yavin4", "dathomir", "endor"},
	publicStructure = 0,
	constructionMarker = "object/building/player/construction/construction_player_house_corellia_medium_style_01.iff",
	length = 5,
	width = 5,
	skillMods = {
		{"private_medical_rating", 300},
		{"private_buff_mind", 300},
		{"private_med_battle_fatigue", 15},
		{"private_safe_logout", 1},
	},
	childObjects = {
			--{templateFile = "object/tangible/terminal/terminal_guild.iff", x = -0.0201342, z = -32.9999, y = 14.85, ow = -4.37114e-08, ox = 0, oz = 0, oy = -1, cellid = 8, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_elevator_up.iff", x = -7.53905, z = 0.01, y = -21.428, ow = 0, ox = 0, oy = 0, oz = 0, cellid = 28, containmentType = -1}, --Elevator 1
			{templateFile = "object/tangible/terminal/terminal_elevator_up.iff", x = -3.52306, z = 0.01, y = -21.428, ow = 0, ox = 0, oy = 0, oz = 0, cellid = 29, containmentType = -1}, --Elevator 2
			{templateFile = "object/tangible/terminal/terminal_elevator_up.iff", x = 0.528777, z = 0.01, y = -21.428, ow = 0, ox = 0, oy = 0, oz = 0, cellid = 30, containmentType = -1}, --Elevator 3
			{templateFile = "object/tangible/terminal/terminal_elevator_up.iff", x = 13.4956, z = 7.01, y = -17.9, ow = 0, ox = 0, oy = 0, oz = 0, cellid = 31, containmentType = -1}, --Elevator 4
			{templateFile = "object/tangible/terminal/terminal_elevator_down.iff", x = -7.53905, z = 9.01, y = -21.428, ow = 0, ox = 0, oy = 0, oz = 0, cellid = 28, containmentType = -1}, --Elevator 1
			{templateFile = "object/tangible/terminal/terminal_elevator_down.iff", x = -3.52306, z = 9.01, y = -21.428, ow = 0, ox = 0, oy = 0, oz = 0, cellid = 29, containmentType = -1}, --Elevator 2
			{templateFile = "object/tangible/terminal/terminal_elevator_down.iff", x = 0.528777, z = 9.01, y = -21.428, ow = 0, ox = 0, oy = 0, oz = 0, cellid = 30, containmentType = -1}, --Elevator 3
			{templateFile = "object/tangible/terminal/terminal_elevator_down.iff", x = 13.4956, z = 15.01, y = -17.9466, ow = 0, ox = 0, oy = 0, oz = 0, cellid = 31, containmentType = -1}, --Elevator 4
			{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = -15.2, z = 9.0, y = 14.9, ow = 0, ox = 0, oz = 0, oy = 1, cellid = 1, containmentType = -1},
			--{templateFile = "object/tangible/sign/player/house_address.iff", x = -2.73606, z = 2.46955, y = 11.9769, ow = 0, ox = 0, oz = 0, oy = 1, cellid = -1, containmentType = -1}
	},
	shopSigns = {
			{templateFile = "object/tangible/sign/player/house_address.iff", x = -3.17249, z = 1.96954, y = 11.8851, ow = 1.31134e-07, ox = 0, oz = -0, oy = -1, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:house_address"},
			{templateFile = "object/tangible/sign/player/shop_sign_s01.iff", x = -2.93747, z = 2.16974, y = 11.4647, ow = 0.5, ox = 0.5, oz = 0.5, oy = 0.5, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_01", suiItem = "@player_structure:shop_sign1"},
			{templateFile = "object/tangible/sign/player/shop_sign_s02.iff", x = -2.93747, z = 2.16974, y = 11.4647, ow = 0.5, ox = 0.5, oz = 0.5, oy = 0.5, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_02", suiItem = "@player_structure:shop_sign2"},
			{templateFile = "object/tangible/sign/player/shop_sign_s03.iff", x = -2.93747, z = 2.16974, y = 11.4647, ow = 0.5, ox = 0.5, oz = 0.5, oy = 0.5, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_03", suiItem = "@player_structure:shop_sign3"},
			{templateFile = "object/tangible/sign/player/shop_sign_s04.iff", x = -2.93747, z = 2.16974, y = 11.4647, ow = 0.5, ox = 0.5, oz = 0.5, oy = 0.5, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_04", suiItem = "@player_structure:shop_sign4"},
--Custom Signs
--Standing
		{templateFile = "object/tangible/tcg/series5/house_sign_tcg_standing.iff", x = -2.93747, z = 2.16974, y = 11.4647, ow = 0.5, ox = 0.5, oz = 0.5, oy = 0.5, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "TCG - Diner Sign Standing"},
		{templateFile = "object/tangible/tcg/series3/house_sign_tcg_s02.iff", x = -2.93747, z = 2.16974, y = 11.4647, ow = 0.5, ox = 0.5, oz = 0.5, oy = 0.5, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "TCG - Oval Standing"},
		{templateFile = "object/tangible/sign/player/wod_sm_banner_sign_02.iff", x = -2.93747, z = 2.16974, y = 11.4647, ow = 0.5, ox = 0.5, oz = 0.5, oy = 0.5, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "Nightsister Banner Sign 1"},
		{templateFile = "object/tangible/sign/player/wod_sm_banner_sign_03.iff", x = -2.93747, z = 2.16974, y = 11.4647, ow = 0.5, ox = 0.5, oz = 0.5, oy = 0.5, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "Nightsister Banner Sign 2"},
		{templateFile = "object/tangible/sign/player/wod_sm_banner_sign_01.iff", x = -2.93747, z = 2.16974, y = 11.4647, ow = 0.5, ox = 0.5, oz = 0.5, oy = 0.5, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "Nightsister Banner Sign 3"},
		{templateFile = "object/tangible/sign/player/wod_sm_standing_sign_01.iff", x = -2.93747, z = 2.16974, y = 11.4647, ow = 0.5, ox = 0.5, oz = 0.5, oy = 0.5, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "Nightsister Stone Sign Standing"},
		{templateFile = "object/tangible/sign/player/imperial_empire_day_2009_sign_standing.iff", x = -2.93747, z = 2.16974, y = 11.4647, ow = 0.5, ox = 0.5, oz = 0.5, oy = 0.5, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "Imperial Emblem Sign Standing"},
		{templateFile = "object/tangible/sign/player/rebel_remembrance_day_2009_sign_standing.iff", x = -2.93747, z = 2.16974, y = 11.4647, ow = 0.5, ox = 0.5, oz = 0.5, oy = 0.5, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "Rebel Sign Standing"},
		{templateFile = "object/tangible/sign/player/pgc_sign_standing.iff", x = -2.93747, z = 2.16974, y = 11.4647, ow = 0.5, ox = 0.5, oz = 0.5, oy = 0.5, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "Hologram Sign Standing"},
		{templateFile = "object/tangible/sign/player/efol_standing_sign_01.iff", x = -2.93747, z = 2.16974, y = 11.4647, ow = 0.5, ox = 0.5, oz = 0.5, oy = 0.5, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "Heart Sign Standing"},


--Hanging
		{templateFile = "object/tangible/tcg/series5/house_sign_tcg_hanging.iff", x = -3.17249, z = 1.96954, y = 11.8851, ow = 1.31134e-07, ox = 0, oz = -0, oy = -1, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "TCG - Diner Sign Hanging"},
		{templateFile = "object/tangible/tcg/series3/house_sign_tcg_s01.iff", x = -3.17249, z = 1.96954, y = 11.8851, ow = 1.31134e-07, ox = 0, oz = -0, oy = -1, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "TCG - Oval Hanging"},
		{templateFile = "object/tangible/sign/player/wod_sm_hanging_sign_01.iff", x = -3.17249, z = 1.96954, y = 11.8851, ow = 1.31134e-07, ox = 0, oz = -0, oy = -1, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "Nightsister Stone Sign Hanging"},
		{templateFile = "object/tangible/sign/player/efol_hanging_sign_01.iff", x = -3.17249, z = 1.96954, y = 11.8851, ow = 1.31134e-07, ox = 0, oz = -0, oy = -1, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "Heart Sign Hanging"},
		{templateFile = "object/tangible/sign/player/house_address_halloween_sign.iff", x = -3.17249, z = 1.96954, y = 11.8851, ow = 1.31134e-07, ox = 0, oz = -0, oy = -1, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "Halloween Sign Hanging"},
		{templateFile = "object/tangible/sign/player/imperial_empire_day_2009_sign_hanging.iff", x = -3.17249, z = 1.96954, y = 11.8851, ow = 1.31134e-07, ox = 0, oz = -0, oy = -1, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "Imperial Emblem Sign Hanging"},
		{templateFile = "object/tangible/sign/player/rebel_remembrance_day_2009_sign_hanging.iff", x = -3.17249, z = 1.96954, y = 11.8851, ow = 1.31134e-07, ox = 0, oz = -0, oy = -1, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "Rebel Emblem Sign Hanging"},
	},
}

ObjectTemplates:addTemplate(object_building_player_lucky_despot, "object/building/player/lucky_despot.iff")
