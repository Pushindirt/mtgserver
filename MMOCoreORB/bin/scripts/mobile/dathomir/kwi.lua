kwi = Creature:new {
	objectName = "@mob/creature_names:kwi",
	socialGroup = "kwi",
	faction = "",
	mobType = MOB_HERBIVORE,
	level = 10,
	chanceHit = 0.27,
	damageMin = 90,
	damageMax = 110,
	baseXp = 356,
	baseHAM = 270,
	baseHAMmax = 330,
	armor = 0,
	resists = {110,110,0,0,0,0,0,-1,-1},
	meatType = "meat_herbivore",
	meatAmount = 100,
	hideType = "hide_leathery",
	hideAmount = 85,
	boneType = "bone_mammal",
	boneAmount = 75,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 2,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/kwi_hue.iff"},
	hues = { 16, 17, 18, 19, 20, 21, 22, 23 },
	controlDeviceTemplate = "object/intangible/pet/kwi_hue.iff",
	lootGroups = {},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "unarmed",
	secondaryWeapon = "none",
	conversationTemplate = "",
	
	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = { {"",""}, {"intimidationattack",""} },
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(kwi, "kwi")
