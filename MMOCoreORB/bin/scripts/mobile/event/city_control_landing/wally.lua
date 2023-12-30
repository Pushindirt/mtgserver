wally = Creature:new {
	customName = "Wally",
	socialGroup = "boss",
	faction = "",
	mobType = MOB_CARNIVORE,
	level = 10,
	chanceHit = 30.0,
	damageMin = 10,
	damageMax = 50,
	baseXp = 500,
	baseHAM = 150,
	baseHAMmax = 200,
	armor = 0,
	resists = {-1,-1,-1,-1,-1,-1,-1,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 30,
	pvpBitmask = ATTACKABLE + ENEMY,
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	scale = 1.75,
	tauntable = true,

	templates = {"object/mobile/kaadu.iff"},
	lootGroups = {
		{
		groups = {
			
				--{group = "lightsaber_polearm_pvp_bf_gen5", chance = 1000000},
				--{group = "lightsaber_one_handed_pvp_bf_gen5", chance = 1000000},
				--{group = "lightsaber_gen6", chance = 5000000},
				--{group = "lightsaber_two_handed_pvp_bf_gen5", chance = 1000000},
				--{group = "lightsaber_two_handed_gen6_must", chance = 1000000},
				--{group = "lightsaber_polearm_gen6", chance = 1000000}
			},
			--lootChance = 10000000
			}
		},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "unarmed",
	secondaryWeapon = "none",
	conversationTemplate = "",

	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = { {"posturedownattack","stateAccuracyBonus=50"}, {"creatureareacombo","stateAccuracyBonus=50"} },
	secondaryAttacks = {}
}

CreatureTemplates:addCreatureTemplate(wally, "wally")
