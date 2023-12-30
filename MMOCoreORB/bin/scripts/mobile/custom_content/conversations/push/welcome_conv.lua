welcome_convo_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "welcome_convo_handler",
	screens = {}
}

first_screen = ConvoScreen:new {
	id = "first_screen",
	-- leftDialog = "",
	customDialogText = "Welcome to our little experment, SwgPush. Enjoy your time here and have a look around. We are still very much under construction.",
	stopConversation = "false",
	options = {
		{"What do you offer here?", "what"},
		{"What? Not another test server.", "exit_one"}
	}
}
welcome_convo_template:addScreen(first_screen);

exit_one = ConvoScreen:new {
	id = "exit_one",
	customDialogText = "I am sorry you feel that way. Feel free to log out and have a nice day! Should you change your mind, we will be right here.",
	stopConversation = "true",
	options = {}
}
welcome_convo_template:addScreen(exit_one);

what = ConvoScreen:new {
	id = "what",
	customDialogText = "We have most of the NGE housing, vehicles, weapons and other items. None of this is possible without the work done by the SwgEmu team past and present. Other items are ideas brought over from other private servers such as EiF, and Bloodfin. Not to mention SwgEmu forums and MTG forums. This is a one person project so it is a little slow going.",
	stopConversation = "false",
	options = {
		{"Sounds interesting, I think i will go check it out!", "great"},
		{"Yeah I'm not really sold on all of this.", "exit_one"}
	}
}
welcome_convo_template:addScreen(what);

great = ConvoScreen:new {
	id = "great",
	customDialogText = "I am happy to hear that, the more the merrier! I do have one small favor I need you to handle for me.",
	stopConversation = "false",
	options = {
		{"Sure thing, what do you ned from me?", "cantina"}
	}
}
welcome_convo_template:addScreen(great);

cantina = ConvoScreen:new {
	id = "cantina",
	customDialogText = "I've got an aquaintence over in the cantina, a Bothan smuggler. Let him know I sent you and he will get you what you need. Of course he's a smuggler and not a spy. Bothans can't be spies because they suck at it... Many bothans died trying to be spies.",
	stopConversation = "false",
	options = {
		{"Well ok then", "active_area"}
	}
}
welcome_convo_template:addScreen(cantina);

active_area = ConvoScreen:new {
	id = "active_area",
	customDialogText = "Best get moving to the cantina, before he gets impatient and leaves.",
	stopConversation = "false",
	options = {
		{"I'm on my way", "accept_task_one"}
	}
}
welcome_convo_template:addScreen(active_area)

accept_task_one = ConvoScreen:new {
	id = "accept_task_one",
	customDialogText = "You have made a wise choice.",
	stopConversation = "true",
	options = {}
}
welcome_convo_template:addScreen(accept_task_one);

task_one_active = ConvoScreen:new {
	id = "task_one_active",
	customDialogText = "Have you made it to the cantina yet? It's litterally around the corner...",
	stopConversation = "true",
	options = {}
}
welcome_convo_template:addScreen(task_one_active);

task_one_complete = ConvoScreen:new {
	id = "task_one_complete",
	customDialogText = "You did well, I see a bright future ahead for you here. Here's a reward to get you started. Unfortunately my friend could not wait to meet you, perhaps next time.",
	stopConversation = "true",
	options = {}
}
welcome_convo_template:addScreen(task_one_complete);

quest_complete = ConvoScreen:new {
	id = "quest_complete",
	customDialogText = "Welcome to SwgPush!",
	stopConversation = "true",
	options = {}
}
welcome_convo_template:addScreen(quest_complete);

addConversationTemplate("welcome_convo_template", welcome_convo_template);
