object_building_player_junkshop_watto = object_building_player_shared_junkshop_watto:new {
	lotSize = 5,
	baseMaintenanceRate = 80,
	allowedZones = {"corellia", "dantooine", "lok", "naboo", "rori", "talus", "tatooine", "yavin4", "dathomir", "endor"},
	publicStructure = 0,
	constructionMarker = "object/building/player/construction/construction_player_house_tatooine_small_style_01.iff",
	length = 2,
	width = 2,
	skillMods = {
		{"private_medical_rating", 100},
		{"private_buff_mind", 100},
		{"private_med_battle_fatigue", 5},
		{"private_safe_logout", 1},
	},
	childObjects = {
			{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = -12, z = 0, y = 1.6, ow = -0.566406, ox = 0, oz = 0, oy = -0.1, cellid = 1, containmentType = -1},
			{templateFile = "object/tangible/sign/streetsign_upright_style_01.iff", x = -12, z = 0, y = 17, ow = 1, ox = 0, oz = 0, oy = 0, cellid = -1, containmentType = -1}
	},
	shopSigns = {
			{templateFile = "object/tangible/sign/streetsign_upright_style_01.iff", x = -12, z = 0, y = 17, ow = 1, ox = 0, oz = 0, oy = 0, ow = 1, ox = 0, oz = 0, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:house_address"},
			{templateFile = "object/tangible/sign/player/shop_sign_s01.iff", x = -12, z = 0, y = 17, ow = 1, ox = 0, oz = 0, oy = 0, ow = 1, ox = 0, oz = 0, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_01", suiItem = "@player_structure:shop_sign1"},
			{templateFile = "object/tangible/sign/player/shop_sign_s02.iff", x = -12, z = 0, y = 17, ow = 1, ox = 0, oz = 0, oy = 0, ow = 1, ox = 0, oz = 0, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_02", suiItem = "@player_structure:shop_sign2"},
			{templateFile = "object/tangible/sign/player/shop_sign_s03.iff", x = -12, z = 0, y = 17, ow = 1, ox = 0, oz = 0, oy = 0, ow = 1, ox = 0, oz = 0, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_03", suiItem = "@player_structure:shop_sign3"},
			{templateFile = "object/tangible/sign/player/shop_sign_s04.iff", x = -12, z = 0, y = 17, ow = 1, ox = 0, oz = 0, oy = 0, ow = 1, ox = 0, oz = 0, oy = 0, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_04", suiItem = "@player_structure:shop_sign4"},
	},
}

ObjectTemplates:addTemplate(object_building_player_junkshop_watto, "object/building/player/junkshop_watto.iff")
