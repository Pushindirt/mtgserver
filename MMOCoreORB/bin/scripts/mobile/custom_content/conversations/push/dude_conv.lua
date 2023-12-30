dude_convoTemplate = ConvoTemplate:new{ 
    iniitalScreen = "init", 
    templateType = "Lua",
    luaClassHandler = "dude_convoHandler", 
    screens = {}
}

init = ConvoScreen:new{
    id="init",
    customDialogueText = "Hey man, have you seen my rug?",
    stopConversation = "false",
    options = {
        {"No, I can help you though","help1"},
        {"No, I also don’t care","end1"}
    }
}
dude_convoTemplate:addScreen(init);

help1 = ConvoScreen:new{
    id = "help1",
    customDialogueText = "A thug took it from me, Here’s a waypoint, I think he is there",
    stopConversation = "true",
}
dude_convoTemplate:addScreen(help1)

working1 = ConvoScreen:new{
    id = "working1",
    customDialogueText = "I gave you the waypoint, man. Here it is again, please go get my rug back!",
    stopConversation = "true",
}
dude_convoTemplate:addScreen(working1)

end1 = ConvoScreen:new{
    id = "end1",
    customDialogueText = "Shame, that rug really tied the room together...",
    stopConversation = "true",
}
dude_convoTemplate:addScreen(end1)

addConversationTemplate("dude_conversationTemplate", dude_conversationTemplate)
