ripper = Creature:new {
	objectName = "",
	socialGroup = "jabba",
	faction = "jabba",
	mobType = MOB_NPC,
	level = 8,
	chanceHit = 0.27,
	damageMin = 70,
	damageMax = 75,
	baseXp = 235,
	baseHAM = 405,
	baseHAMmax = 495,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_tatooine_jabba_swooper.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 1500000},
				{group = "wearables_common", chance = 2000000},
				{group = "pistols", chance = 2000000},
				{group = "tailor_components", chance = 1500000},
				{group = "loot_kit_parts", chance = 1500000},
				{group = "jabba_common", chance = 1500000}
			}
		}				
	},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "pirate_weapons_light",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",
	
	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = merge(brawlernovice,marksmannovice),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(ripper, "ripper")
