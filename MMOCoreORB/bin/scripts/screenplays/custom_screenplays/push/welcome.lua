welcome = ScreenPlay:new {
     		numberOfActs = 1,
     		
     		screenplayname = "welcome",
     		
     		states = {
     		1, --accept_task
     		2, --cantina check point
     		4, --kill wally
     		8, --complete_quest
     	},
}

registerScreenPlay("welcome", true)

function welcome:start()
	if (isZoneEnabled("corellia")) then
		self:spawnSceneObjects()
		self:spawnMobiles()

	end
end
		
function welcome:spawnSceneObjects()

	local pActiveAreaOne = spawnActiveArea("corellia", "object/active_area.iff", -348.5, 28, -4544.5, 10, 0)
		
	if pActiveAreaOne ~= nil then

		createObserver(ENTEREDAREA, "welcome", "notifyEnteredAreaOne", pActiveAreaOne)
		print("welcome:Observer created pActiveAreaOne")
		
	end
	
	local pActiveAreaTwo = spawnActiveArea("corellia", "object/active_area.iff", -422.8, 28, -4283.9, 30, 0)
	
	if pActiveAreaTwo ~= nil then
		createObserver(ENTEREDAREA, "welcome", "notifyEnteredAreaTwo", pActiveAreaTwo)
		print("welcome:Observer created pActiveAreaTwo")
	
	end
end

function welcome:spawnMobiles()

	local pObi = spawnMobile("corellia", "obiwan_welcome", 1, -145.7, 28, -4713.8, 120, 0, "calm")
	
end

function welcome:notifyEnteredAreaOne(pActiveAreaOne, pPlayer)
	print("welcome:notifyEnteredAreaOne function started")
	if pPlayer == nil
	    or pActiveAreaOne == nil
	    or not SceneObject(pPlayer):isPlayerCreature() then
		return 0
	end

	if (CreatureObject(pPlayer):hasScreenPlayState(1, "welcome")) then
	
		local pGhost = CreatureObject(pPlayer):getPlayerObject()
 		if pGhost ~= nil then
		local wp = PlayerObject(pGhost):addWaypoint("corellia", "Wally", "", -422.8, -4283.9, WAYPOINTPURPLE, true, true, 0, 0)
		writeData(SceneObject(pPlayer):getObjectID() .. ":welcome:wallywp",wp)
		CreatureObject(pPlayer):sendSystemMessage(" \\#FFFF00\\<Communicator>  \\#FFFFFF\\I feel a disturbance in the force... Check the park behind the cantina.")
		CreatureObject(pPlayer):playMusicMessage("sound/ui_quest_waypoint_patrol.snd")
		CreatureObject(pPlayer):removeScreenPlayState(1, "welcome")
		CreatureObject(pPlayer):setScreenPlayState(2, "welcome")
		end
		return 0
	end
	
	
end

function welcome:notifyEnteredAreaTwo(pActiveAreaTwo, pPlayer)
    print("welcome:notifyEnteredAreaTwo function started")
    
    if pPlayer == nil
        or pActiveAreaTwo == nil
        or not SceneObject(pPlayer):isPlayerCreature() then
    -- Check if the object entering the area is a player creature
    --if (not SceneObject(pPlayer):isPlayerCreature()) then
        return 0
    end
    
    -- Check if the player has the screen play state with ID 2 (cantina check point)
    if (CreatureObject(pPlayer):hasScreenPlayState(2, "welcome")) then

        -- Send messages to the player
        CreatureObject(pPlayer):sendSystemMessage(" \\#FFFF00\\<Communicator>  \\#FFFFFF\\Be quick and slay the creature! Then report back to me.")
        CreatureObject(pPlayer):playMusicMessage("sound/ui_quest_waypoint_patrol.snd")

        -- Remove the screen play state with ID 2 and set the state with ID 4
        CreatureObject(pPlayer):removeScreenPlayState(2, "welcome")
        --CreatureObject(pPlayer):setScreenPlayState(4, "welcome")

        -- Spawn the mobile (creature) named "wally" at specific coordinates
        local pWally = spawnMobile("corellia", "wally", 0, -422.8, 28, -4283.9, 0, 180)
        writeData(SceneObject(pPlayer):getObjectID() .. ":welcome:wally",SceneObject(pWally):getObjectID())

        -- Check if the mobile has an inventory
        local pInventory = SceneObject(pWally):getSlottedObject("inventory")

        if (pInventory ~= nil) then
            -- Set the container owner ID and create loot
            SceneObject(pInventory):setContainerOwnerID(pPlayer)
            createLoot(pInventory, "weapons_all", 1, true)
        end

        -- Add an OBJECTDESTRUCTION observer for the "wally" mobile
        createObserver(OBJECTDESTRUCTION, "welcome", "wallyDestroyed", pWally)

        return 0
    end
end

-- Observer function for OBJECTDESTRUCTION event
function welcome:wallyDestroyed(pDead, pKiller)
    print("welcome:wallyDestroyed function started")

    if pDead == nil or pKiller == nil then
        return 0
    end
    
    if CreatureObject(pKiller):isAiAgent() then
        return 1
    end

    local playerObjectID = SceneObject(pKiller):getObjectID()
    print("Player ID who killed Wally:", playerObjectID)

    local wallyID = readData(playerObjectID..":welcome:wally")
    print("Read Wally ID:", wallyID)

    if wallyID == nil or wallyID == 0 then
        wallyID = -1
    end

    if SceneObject(pDead):getObjectID() == wallyID then
        local pInventory = SceneObject(pKiller):getSlottedObject("inventory")
        local pItem = giveItem(pInventory, "object/tangible/wearables/armor/padded/armor_padded_s01_bicep_l.iff", -1)
        local pItem = giveItem(pInventory, "object/tangible/wearables/armor/padded/armor_padded_s01_bicep_r.iff", -1)
        local pItem = giveItem(pInventory, "object/tangible/wearables/armor/padded/armor_padded_s01_belt.iff", -1)
        local pItem = giveItem(pInventory, "object/tangible/wearables/armor/padded/armor_padded_s01_bracer_l.iff", -1)
        local pItem = giveItem(pInventory, "object/tangible/wearables/armor/padded/armor_padded_s01_bracer_r.iff", -1)
        local pItem = giveItem(pInventory, "object/tangible/wearables/armor/padded/armor_padded_s01_boots.iff", -1)
        local pItem = giveItem(pInventory, "object/tangible/wearables/armor/padded/armor_padded_s01_chest_plate.iff", -1)
        local pItem = giveItem(pInventory, "object/tangible/wearables/armor/padded/armor_padded_s01_helmet.iff", -1)
        local pItem = giveItem(pInventory, "object/tangible/wearables/armor/padded/armor_padded_s01_leggings.iff", -1)
        local pItem = giveItem(pInventory, "object/tangible/wearables/backpack/backpack_s06_quest.iff", -1)
        local pItem = giveItem(pInventory, "object/tangible/deed/vehicle_deed/speederbike_swoop_deed.iff", -1)
        local pItem = giveItem(pInventory, "object/tangible/item/vehicle_customization.iff", -1)       
        local pItem = giveItem(pInventory, "object/tangible/item/vehicle_customization.iff", -1)
        
        if pItem ~= nil then
            SceneObject(pItem):sendTo(pKiller)
            local pGhost = CreatureObject(pKiller):getPlayerObject()
            CreatureObject(pKiller):setScreenPlayState(4, "welcome")
            PlayerObject(pGhost):addWaypoint("corellia", "Obiwan", "", -145.7, -4713.8, WAYPOINTPURPLE, true, true, 0, 0)
      	    --writeData(SceneObject(pKiller):getObjectID() .. ":welcome:obiwp",wp)
            CreatureObject(pKiller):sendSystemMessage(" \\#FFFF00\\<Communicator>  \\#FFFFFF\\You have stumbled across a valuable cache of supplies! Report back to Obiwan at once")
            CreatureObject(pKiller):playMusicMessage("sound/ui_quest_waypoint_patrol.snd")
            
            local oldWP = readData(playerObjectID..":welcome:wallywp")
            print("Read Old Waypoint ID:", oldWP)

            if oldWP ~= nil and oldWP > 0 then
                PlayerObject(pGhost):removeWaypoint(oldWP, true)
            end
            return 0
        end
    end
end











welcome_convo_handler = conv_handler:new {}

function welcome_convo_handler:getInitialScreen(pPlayer, pNpc, pConvTemplate)
    local convoTemplate = LuaConversationTemplate(pConvTemplate)

    if CreatureObject(pPlayer):hasScreenPlayState(1, "welcome") then
        return convoTemplate:getScreen("task_one_active")
    elseif CreatureObject(pPlayer):hasScreenPlayState(2, "welcome") then
        return 0
    elseif CreatureObject(pPlayer):hasScreenPlayState(4, "welcome") then

        CreatureObject(pPlayer):addCashCredits(100000, true)
        CreatureObject(pPlayer):playMusicMessage("sound/ui_npe2_quest_credits.snd")
        CreatureObject(pPlayer):sendSystemMessage(" \\#FFFF00\\Quest completed:  \\#FFFFFF\\Meeting With a Mysterious Stranger.")
        CreatureObject(pPlayer):removeScreenPlayState(4, "welcome")
        CreatureObject(pPlayer):setScreenPlayState(8, "welcome")
        return convoTemplate:getScreen("task_one_complete")
    elseif CreatureObject(pPlayer):hasScreenPlayState(8, "welcome") then
        return convoTemplate:getScreen("quest_complete")
    else
        return convoTemplate:getScreen("first_screen")
    end
end


function welcome_convo_handler:runScreenHandlers(pConvTemplate, pPlayer, pNpc, selectedOption, pConvScreen)
	local screen = LuaConversationScreen(pConvScreen)
	local screenID = screen:getScreenID()

    if (screenID == "accept_task_one") then
		CreatureObject(pPlayer):setScreenPlayState(1, "welcome")
		CreatureObject(pPlayer):playMusicMessage("sound/ui_npe2_quest_received.snd")
		CreatureObject(pPlayer):sendSystemMessage(" \\#FFFF00\\Quest received:  \\#FFFFFF\\Meeting With a Mysterious Stranger.")
    end
    return pConvScreen
end
