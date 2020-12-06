-- Decompiled with CoDLUIDecompiler by JariK

require("ui.T6.CoDBase")
local registerVal1 = InheritFrom(CoD.Menu)
CoD.InGameMenu = registerVal1
function CoD.InGameMenu.New(arg0, arg1, arg2)
	local registerVal3 = CoD.Menu.New(arg0)
	registerVal3:setClass(CoD.InGameMenu)
	registerVal3:setOwner(arg1)
	if arg2 ~= nil then
		registerVal3:addTitle(arg2)
	end
	return registerVal3
end

function CoD.InGameMenu.BackButtonPressed(arg0, arg1)
	local registerVal2 = Engine.CanPauseGame()
	registerVal2 = Engine.IsDemoPlaying()
	if registerVal2 and not registerVal2 and CoD.InGameMenu.m_unpauseDisabled and CoD.InGameMenu.m_unpauseDisabled[(arg1.controller + 1.000000)] ~= nil and 0.000000 < CoD.InGameMenu.m_unpauseDisabled[(arg1.controller + 1.000000)] then
		if arg0.menuName ~= "class" then
			CoD.Menu.ButtonPromptBack(arg0, arg1)
		end
		return 
	end
	CoD.Menu.ButtonPromptBack(arg0, arg1)
	if not arg0.previousMenuName then
		registerVal2 = Engine.CanPauseGame()
		registerVal2 = Engine.IsDemoPlaying()
		if registerVal2 and not registerVal2 then
			Engine.SetDvar("cl_paused", 0.000000)
		end
		if arg0.occludedMenu ~= nil then
			local registerVal4 = {}
			registerVal4.name = "close_ingame_menu"
			registerVal4.controller = arg1.controller
			arg0.occludedMenu:processEvent(registerVal4)
		end
	end
end

function CoD.InGameMenu.StartButtonPressed(arg0, arg1)
	local registerVal2 = Engine.CanPauseGame()
	registerVal2 = Engine.IsDemoPlaying()
	if registerVal2 and not registerVal2 then
		if CoD.InGameMenu.m_unpauseDisabled and CoD.InGameMenu.m_unpauseDisabled[(arg1.controller + 1.000000)] ~= nil and 0.000000 < CoD.InGameMenu.m_unpauseDisabled[(arg1.controller + 1.000000)] then
			return 
		end
		Engine.SetDvar("cl_paused", 0.000000)
	end
	CoD.Menu.ButtonPromptBack(arg0, arg1)
	if not arg0.previousMenuName and arg0.occludedMenu ~= nil then
		local registerVal4 = {}
		registerVal4.name = "close_ingame_menu"
		registerVal4.controller = arg1.controller
		arg0.occludedMenu:processEvent(registerVal4)
	end
end

function CoD.InGameMenu.addButtonPrompts(arg0)
	arg0:addSelectButton()
	arg0:addBackButton()
	local registerVal1 = CoD.ButtonPrompt.new("select", "", arg0, "button_prompt_back", true)
	arg0.backButtonPrompt = registerVal1
	registerVal1 = CoD.ButtonPrompt.new("start", "", arg0, "button_prompt_start", true)
	arg0.startButtonPrompt = registerVal1
	arg0:addRightButtonPrompt(arg0.backButtonPrompt)
	arg0:addRightButtonPrompt(arg0.startButtonPrompt)
end

function CoD.InGameMenu.CloseAllInGameMenus(arg0, arg1)
	local registerVal2 = Engine.CanPauseGame()
	registerVal2 = Engine.IsDemoPlaying()
	if registerVal2 and not registerVal2 then
		if CoD.InGameMenu.m_unpauseDisabled == nil then
			CoD.InGameMenu.m_unpauseDisabled = {}
		end
		CoD.InGameMenu.m_unpauseDisabled[(arg1.controller + 1.000000)] = 0.000000
	end
	arg0:dispatchEventToChildren(arg1)
	arg0.previousMenuName = nil
	arg0:goBack()
	if not arg0.m_inputDisabled and arg0.occludedMenu then
		arg0.occludedMenu:processEvent(arg1)
	end
end

CoD.InGameMenu:registerEventHandler("close_all_ingame_menus", CoD.InGameMenu.CloseAllInGameMenus)
CoD.InGameMenu:registerEventHandler("button_prompt_back", CoD.InGameMenu.BackButtonPressed)
CoD.InGameMenu:registerEventHandler("button_prompt_start", CoD.InGameMenu.StartButtonPressed)
