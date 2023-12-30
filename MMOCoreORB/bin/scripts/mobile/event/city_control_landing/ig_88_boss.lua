ig_88_boss = Creature:new {
	objectName = "@mob/creature_names:ig_88",
	socialGroup = "boss",
	faction = "",
	mobType = MOB_NPC,
	level = 350,
	chanceHit = 30.0,
	damageMin = 2000,
	damageMax = 3500,
	baseXp = 100000,
	baseHAM = 700000,
	baseHAMmax = 750000,
	armor = 3,
	resists = {195,195,195,195,165,195,195,195,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 30,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.25,
	customAiMap = "crackdown",

	templates = {"object/mobile/ig_88.iff"},
	lootGroups = {
		{
		groups = {
			
				{group = "power_crystals", chance = 900000},
				{group = "krayt_pearls", chance = 2600000},
				{group = "pistols", chance = 1000000},
				{group = "rifles", chance = 1000000},
				{group = "carbines", chance = 1000000},
				{group = "melee_weapons", chance = 2000000},
				{group = "armor_attachments", chance = 500000},
				{group = "clothing_attachments", chance = 500000},
				{group = "wearables_rare", chance = 500000}
			},
			lootChance = 10000000
			}
		},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "boba_fett_weapons",
	secondaryWeapon = "none",
	conversationTemplate = "",

	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = merge(bountyhuntermaster,carbineermaster),
	secondaryAttacks = {}
}

CreatureTemplates:addCreatureTemplate(ig_88_boss, "ig_88_boss")
