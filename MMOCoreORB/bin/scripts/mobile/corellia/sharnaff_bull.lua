sharnaff_bull = Creature:new {
	objectName = "@mob/creature_names:sharnaff_bull",
	socialGroup = "sharnaff",
	faction = "",
	mobType = MOB_HERBIVORE,
	level = 38,
	chanceHit = 0.41,
	damageMin = 335,
	damageMax = 380,
	baseXp = 3733,
	baseHAM = 9400,
	baseHAMmax = 11400,
	armor = 0,
	resists = {25,25,25,120,120,120,120,150,-1},
	meatType = "meat_carnivore",
	meatAmount = 482,
	hideType = "hide_scaley",
	hideAmount = 335,
	boneType = "bone_mammal",
	boneAmount = 200,
	milk = 0,
	tamingChance = 0,
	ferocity = 8,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/sharnaff_bull.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	lootGroups = {
		{
			groups = {
				{group = "sharnaff_common", chance = 10000000}
			},
			lootChance = 1760000
		}
	},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "unarmed",
	secondaryWeapon = "none",
	conversationTemplate = "",
	
	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = { {"dizzyattack",""}, {"stunattack",""} },
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(sharnaff_bull, "sharnaff_bull")
