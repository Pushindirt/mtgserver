object_building_player_diner = object_building_player_shared_diner:new {
	lotSize = 2,
	baseMaintenanceRate = 80,
	allowedZones = {"corellia", "dantooine", "lok", "naboo", "rori", "talus", "tatooine", "yavin4", "dathomir", "endor"},
	publicStructure = 0,
	--constructionMarker = "object/building/player/construction/construction_player_diner.iff",
	constructionMarker = "object/building/player/construction/construction_player_house_tatooine_small_style_01.iff",
	length = 1,
	width = 1,
	skillMods = {
		{"private_medical_rating", 100},
		{"private_buff_mind", 100},
		{"private_med_battle_fatigue", 5},
		{"private_safe_logout", 1},
	},
	childObjects = {
			{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = 1.0, z = 0.1, y = -8.9, ow = 0, ox = 0, oz = 0, oy = 0, cellid = 1, containmentType = -1},
			{templateFile = "object/tangible/sign/player/house_address.iff", x = 3.3, z = 2.5, y = 5.5, ow = 0, ox = 0, oz = 0, oy = 0, cellid = -1, containmentType = -1}
	},
	
}

ObjectTemplates:addTemplate(object_building_player_diner, "object/building/player/diner.iff")
