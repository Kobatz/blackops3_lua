-- Decompiled with CoDLUIDecompiler by JariK

require("ui.T6.Line")
CoD.ButtonLayout = {}
CoD.ButtonLayout.LineWidth = 2.000000
local registerVal1 = {}
registerVal1 = {CoD.offWhite.r, CoD.offWhite.g, CoD.offWhite.b, 1.000000}
CoD.ButtonLayout.LineColor = registerVal1
registerVal1 = {}
registerVal1 = {"BUTTON_A", "BUTTON_B", "BUTTON_X", "BUTTON_Y", "BUTTON_LBUMP", "BUTTON_RBUMP", "BUTTON_UP", "BUTTON_DOWN", "BUTTON_LEFT", "BUTTON_RIGHT", "BUTTON_LTRIG", "BUTTON_RTRIG", "BUTTON_START", "BUTTON_BACK", "BUTTON_LSTICK", "BUTTON_RSTICK"}
CoD.ButtonLayout.ButtonRefs = registerVal1
CoD.ButtonLayout.ButtonStrings = {}
CoD.ButtonLayout.FragGrenadeString = "MENU_THROW_FRAG_GRENADE"
if CoD.isSinglePlayer then
	CoD.ButtonLayout.FragGrenadeString = "MENU_THROW_PRIMARY"
end
CoD.ButtonLayout.SpecialGrenadeString = "MENU_THROW_SPECIAL_GRENADE"
if CoD.isSinglePlayer then
	CoD.ButtonLayout.SpecialGrenadeString = "MENU_THROW_SECONDARY"
end
local registerVal2 = {}
registerVal2.BUTTON_A = "MENU_JUMP"
registerVal2.BUTTON_B = "MENU_CROUCH_PRONE"
registerVal2.BUTTON_X = "MENU_USE_RELOAD"
registerVal2.BUTTON_Y = "MENU_SWITCH_WEAPON"
registerVal2.BUTTON_LBUMP = CoD.ButtonLayout.SpecialGrenadeString
registerVal2.BUTTON_RBUMP = CoD.ButtonLayout.FragGrenadeString
local registerVal3 = CoD.MPZM("MENU_SCORESTREAK_SELECTION", "MENU_ACCESS_EQUIPMENT_INVENTORY")
registerVal2.BUTTON_UP = registerVal3
registerVal3 = CoD.MPZM("MENU_SCORESTREAK_SELECTION", "MENU_NONE")
registerVal2.BUTTON_DOWN = registerVal3
registerVal2.BUTTON_LEFT = "MENU_ATTACHMENTS"
registerVal3 = CoD.MPZM("MENU_USE_SCORESTREAK", "MENU_EQUIP_CLAYMORES")
registerVal2.BUTTON_RIGHT = registerVal3
registerVal2.BUTTON_LTRIG = "MENU_AIM_DOWN_SIGHT"
registerVal2.BUTTON_RTRIG = "MENU_FIRE_WEAPON"
registerVal2.BUTTON_START = "MENU_OBJECTIVES_MENU"
registerVal2.BUTTON_BACK = "MENU_SCOREBOARD"
registerVal2.BUTTON_LSTICK = "MENU_SPRINT_HOLD_BREATH"
registerVal2.BUTTON_RSTICK = "MENU_MELEE_ATTACK"
CoD.ButtonLayout.ButtonStrings[(CoD.BUTTONS_DEFAULT + 1.000000)] = registerVal2
registerVal2 = {}
registerVal2.BUTTON_A = "MENU_JUMP"
registerVal2.BUTTON_B = "MENU_MELEE_ATTACK"
registerVal2.BUTTON_X = "MENU_USE_RELOAD"
registerVal2.BUTTON_Y = "MENU_SWITCH_WEAPON"
registerVal2.BUTTON_LBUMP = CoD.ButtonLayout.SpecialGrenadeString
registerVal2.BUTTON_RBUMP = CoD.ButtonLayout.FragGrenadeString
registerVal3 = CoD.MPZM("MENU_SCORESTREAK_SELECTION", "MENU_ACCESS_EQUIPMENT_INVENTORY")
registerVal2.BUTTON_UP = registerVal3
registerVal3 = CoD.MPZM("MENU_SCORESTREAK_SELECTION", "MENU_NONE")
registerVal2.BUTTON_DOWN = registerVal3
registerVal2.BUTTON_LEFT = "MENU_ATTACHMENTS"
registerVal3 = CoD.MPZM("MENU_USE_SCORESTREAK", "MENU_EQUIP_CLAYMORES")
registerVal2.BUTTON_RIGHT = registerVal3
registerVal2.BUTTON_LTRIG = "MENU_AIM_DOWN_SIGHT"
registerVal2.BUTTON_RTRIG = "MENU_FIRE_WEAPON"
registerVal2.BUTTON_START = "MENU_OBJECTIVES_MENU"
registerVal2.BUTTON_BACK = "MENU_SCOREBOARD"
registerVal2.BUTTON_LSTICK = "MENU_SPRINT_HOLD_BREATH"
registerVal2.BUTTON_RSTICK = "MENU_CROUCH_PRONE"
CoD.ButtonLayout.ButtonStrings[(CoD.BUTTONS_EXPERIMENTAL + 1.000000)] = registerVal2
registerVal2 = {}
registerVal2.BUTTON_A = "MENU_JUMP"
registerVal2.BUTTON_B = "MENU_CROUCH_PRONE"
registerVal2.BUTTON_X = "MENU_USE_RELOAD"
registerVal2.BUTTON_Y = "MENU_SWITCH_WEAPON"
registerVal2.BUTTON_LBUMP = CoD.ButtonLayout.FragGrenadeString
registerVal2.BUTTON_RBUMP = CoD.ButtonLayout.SpecialGrenadeString
registerVal3 = CoD.MPZM("MENU_SCORESTREAK_SELECTION", "MENU_ACCESS_EQUIPMENT_INVENTORY")
registerVal2.BUTTON_UP = registerVal3
registerVal3 = CoD.MPZM("MENU_SCORESTREAK_SELECTION", "MENU_NONE")
registerVal2.BUTTON_DOWN = registerVal3
registerVal2.BUTTON_LEFT = "MENU_ATTACHMENTS"
registerVal3 = CoD.MPZM("MENU_USE_SCORESTREAK", "MENU_EQUIP_CLAYMORES")
registerVal2.BUTTON_RIGHT = registerVal3
registerVal2.BUTTON_LTRIG = "MENU_FIRE_WEAPON"
registerVal2.BUTTON_RTRIG = "MENU_AIM_DOWN_SIGHT"
registerVal2.BUTTON_START = "MENU_OBJECTIVES_MENU"
registerVal2.BUTTON_BACK = "MENU_SCOREBOARD"
registerVal2.BUTTON_LSTICK = "MENU_MELEE_ATTACK"
registerVal2.BUTTON_RSTICK = "MENU_SPRINT_HOLD_BREATH"
CoD.ButtonLayout.ButtonStrings[(CoD.BUTTONS_LEFTY + 1.000000)] = registerVal2
registerVal2 = {}
registerVal2.BUTTON_A = "MENU_JUMP"
registerVal2.BUTTON_B = "MENU_MELEE_ATTACK"
registerVal2.BUTTON_X = "MENU_USE_RELOAD"
registerVal2.BUTTON_Y = "MENU_SWITCH_WEAPON"
registerVal2.BUTTON_LBUMP = CoD.ButtonLayout.SpecialGrenadeString
registerVal2.BUTTON_RBUMP = CoD.ButtonLayout.FragGrenadeString
registerVal3 = CoD.MPZM("MENU_SCORESTREAK_SELECTION", "MENU_ACCESS_EQUIPMENT_INVENTORY")
registerVal2.BUTTON_UP = registerVal3
registerVal3 = CoD.MPZM("MENU_SCORESTREAK_SELECTION", "MENU_NONE")
registerVal2.BUTTON_DOWN = registerVal3
registerVal2.BUTTON_LEFT = "MENU_ATTACHMENTS"
registerVal3 = CoD.MPZM("MENU_USE_SCORESTREAK", "MENU_EQUIP_CLAYMORES")
registerVal2.BUTTON_RIGHT = registerVal3
registerVal2.BUTTON_LTRIG = "MENU_TOGGLE_AIM_DOWN_THE_SIGHT"
registerVal2.BUTTON_RTRIG = "MENU_FIRE_WEAPON"
registerVal2.BUTTON_START = "MENU_OBJECTIVES_MENU"
registerVal2.BUTTON_BACK = "MENU_SCOREBOARD"
registerVal2.BUTTON_LSTICK = "MENU_SPRINT_HOLD_BREATH"
registerVal2.BUTTON_RSTICK = "MENU_CROUCH_PRONE"
CoD.ButtonLayout.ButtonStrings[(CoD.BUTTONS_NOMAD + 1.000000)] = registerVal2
registerVal2 = {}
registerVal2.BUTTON_A = "MENU_JUMP"
registerVal2.BUTTON_B = "MENU_CROUCH_PRONE"
registerVal2.BUTTON_X = "MENU_USE_RELOAD"
registerVal2.BUTTON_Y = "MENU_SWITCH_WEAPON"
registerVal2.BUTTON_LBUMP = CoD.ButtonLayout.SpecialGrenadeString
registerVal2.BUTTON_RBUMP = "MENU_TOGGLE_AIM_DOWN_THE_SIGHT"
registerVal3 = CoD.MPZM("MENU_SCORESTREAK_SELECTION", "MENU_ACCESS_EQUIPMENT_INVENTORY")
registerVal2.BUTTON_UP = registerVal3
registerVal3 = CoD.MPZM("MENU_SCORESTREAK_SELECTION", "MENU_NONE")
registerVal2.BUTTON_DOWN = registerVal3
registerVal2.BUTTON_LEFT = "MENU_ATTACHMENTS"
registerVal3 = CoD.MPZM("MENU_USE_SCORESTREAK", "MENU_EQUIP_CLAYMORES")
registerVal2.BUTTON_RIGHT = registerVal3
registerVal2.BUTTON_LTRIG = CoD.ButtonLayout.FragGrenadeString
registerVal2.BUTTON_RTRIG = "MENU_FIRE_WEAPON"
registerVal2.BUTTON_START = "MENU_OBJECTIVES_MENU"
registerVal2.BUTTON_BACK = "MENU_SCOREBOARD"
registerVal2.BUTTON_LSTICK = "MENU_SPRINT_HOLD_BREATH"
registerVal2.BUTTON_RSTICK = "MENU_MELEE_ATTACK"
CoD.ButtonLayout.ButtonStrings[(CoD.BUTTONS_CHARLIE + 1.000000)] = registerVal2
registerVal2 = {}
registerVal2.BUTTON_A = CoD.ButtonLayout.SpecialGrenadeString
registerVal2.BUTTON_B = "MENU_CROUCH_PRONE"
registerVal2.BUTTON_X = "MENU_USE_RELOAD"
registerVal2.BUTTON_Y = "MENU_SWITCH_WEAPON"
registerVal2.BUTTON_LBUMP = "MENU_JUMP"
registerVal2.BUTTON_RBUMP = CoD.ButtonLayout.FragGrenadeString
registerVal3 = CoD.MPZM("MENU_SCORESTREAK_SELECTION", "MENU_ACCESS_EQUIPMENT_INVENTORY")
registerVal2.BUTTON_UP = registerVal3
registerVal3 = CoD.MPZM("MENU_SCORESTREAK_SELECTION", "MENU_NONE")
registerVal2.BUTTON_DOWN = registerVal3
registerVal2.BUTTON_LEFT = "MENU_ATTACHMENTS"
registerVal3 = CoD.MPZM("MENU_USE_SCORESTREAK", "MENU_EQUIP_CLAYMORES")
registerVal2.BUTTON_RIGHT = registerVal3
registerVal2.BUTTON_LTRIG = "MENU_AIM_DOWN_SIGHT"
registerVal2.BUTTON_RTRIG = "MENU_FIRE_WEAPON"
registerVal2.BUTTON_START = "MENU_OBJECTIVES_MENU"
registerVal2.BUTTON_BACK = "MENU_SCOREBOARD"
registerVal2.BUTTON_LSTICK = "MENU_SPRINT_HOLD_BREATH"
registerVal2.BUTTON_RSTICK = "MENU_MELEE_ATTACK"
CoD.ButtonLayout.ButtonStrings[(CoD.BUTTONS_BUMPERJUMPER + 1.000000)] = registerVal2
registerVal2 = {}
registerVal2.BUTTON_A = "MENU_MELEE_ATTACK"
registerVal2.BUTTON_B = "MENU_CROUCH_PRONE"
registerVal2.BUTTON_X = "MENU_USE_RELOAD"
registerVal2.BUTTON_Y = "MENU_SWITCH_WEAPON"
registerVal2.BUTTON_LBUMP = CoD.ButtonLayout.SpecialGrenadeString
registerVal2.BUTTON_RBUMP = CoD.ButtonLayout.FragGrenadeString
registerVal3 = CoD.MPZM("MENU_SCORESTREAK_SELECTION", "MENU_ACCESS_EQUIPMENT_INVENTORY")
registerVal2.BUTTON_UP = registerVal3
registerVal3 = CoD.MPZM("MENU_SCORESTREAK_SELECTION", "MENU_NONE")
registerVal2.BUTTON_DOWN = registerVal3
registerVal2.BUTTON_LEFT = "MENU_ATTACHMENTS"
registerVal3 = CoD.MPZM("MENU_USE_SCORESTREAK", "MENU_EQUIP_CLAYMORES")
registerVal2.BUTTON_RIGHT = registerVal3
registerVal2.BUTTON_LTRIG = "MENU_AIM_DOWN_SIGHT"
registerVal2.BUTTON_RTRIG = "MENU_FIRE_WEAPON"
registerVal2.BUTTON_START = "MENU_OBJECTIVES_MENU"
registerVal2.BUTTON_BACK = "MENU_SCOREBOARD"
registerVal2.BUTTON_LSTICK = "MENU_SPRINT_HOLD_BREATH"
registerVal2.BUTTON_RSTICK = "MENU_JUMP"
CoD.ButtonLayout.ButtonStrings[(CoD.BUTTONS_STICKMOVE + 1.000000)] = registerVal2
registerVal2 = {}
registerVal2.BUTTON_A = "MENU_JUMP"
registerVal2.BUTTON_B = "MENU_CROUCH_PRONE"
registerVal2.BUTTON_X = "MENU_USE_RELOAD"
registerVal2.BUTTON_Y = "MENU_SWITCH_WEAPON"
registerVal2.BUTTON_LBUMP = "MENU_FIRE_WEAPON"
registerVal2.BUTTON_RBUMP = CoD.ButtonLayout.SpecialGrenadeString
registerVal3 = CoD.MPZM("MENU_SCORESTREAK_SELECTION", "MENU_ACCESS_EQUIPMENT_INVENTORY")
registerVal2.BUTTON_UP = registerVal3
registerVal3 = CoD.MPZM("MENU_SCORESTREAK_SELECTION", "MENU_NONE")
registerVal2.BUTTON_DOWN = registerVal3
registerVal2.BUTTON_LEFT = "MENU_ATTACHMENTS"
registerVal3 = CoD.MPZM("MENU_USE_SCORESTREAK", "MENU_EQUIP_CLAYMORES")
registerVal2.BUTTON_RIGHT = registerVal3
registerVal2.BUTTON_LTRIG = "MENU_AIM_DOWN_SIGHT"
registerVal2.BUTTON_RTRIG = CoD.ButtonLayout.FragGrenadeString
registerVal2.BUTTON_START = "MENU_OBJECTIVES_MENU"
registerVal2.BUTTON_BACK = "MENU_SCOREBOARD"
registerVal2.BUTTON_LSTICK = "MENU_SPRINT_HOLD_BREATH"
registerVal2.BUTTON_RSTICK = "MENU_MELEE_ATTACK"
CoD.ButtonLayout.ButtonStrings[(CoD.BUTTONS_GUNSLINGER + 1.000000)] = registerVal2
registerVal2 = {}
registerVal2.BUTTON_A = CoD.ButtonLayout.SpecialGrenadeString
registerVal2.BUTTON_B = "MENU_MELEE_ATTACK"
registerVal2.BUTTON_X = "MENU_USE_RELOAD"
registerVal2.BUTTON_Y = "MENU_SWITCH_WEAPON"
registerVal2.BUTTON_LBUMP = "MENU_JUMP"
registerVal2.BUTTON_RBUMP = CoD.ButtonLayout.FragGrenadeString
registerVal3 = CoD.MPZM("MENU_SCORESTREAK_SELECTION", "MENU_ACCESS_EQUIPMENT_INVENTORY")
registerVal2.BUTTON_UP = registerVal3
registerVal3 = CoD.MPZM("MENU_SCORESTREAK_SELECTION", "MENU_NONE")
registerVal2.BUTTON_DOWN = registerVal3
registerVal2.BUTTON_LEFT = "MENU_ATTACHMENTS"
registerVal3 = CoD.MPZM("MENU_USE_SCORESTREAK", "MENU_EQUIP_CLAYMORES")
registerVal2.BUTTON_RIGHT = registerVal3
registerVal2.BUTTON_LTRIG = "MENU_AIM_DOWN_SIGHT"
registerVal2.BUTTON_RTRIG = "MENU_FIRE_WEAPON"
registerVal2.BUTTON_START = "MENU_OBJECTIVES_MENU"
registerVal2.BUTTON_BACK = "MENU_SCOREBOARD"
registerVal2.BUTTON_LSTICK = "MENU_SPRINT_HOLD_BREATH"
registerVal2.BUTTON_RSTICK = "MENU_CROUCH_PRONE"
CoD.ButtonLayout.ButtonStrings[(CoD.BUTTONS_BUMPERTACTICAL + 1.000000)] = registerVal2
CoD.ButtonLayout.TheaterButtonStrings = {}
registerVal2 = {}
registerVal2.BUTTON_A = "MENU_DEMO_CONTROLS_PLAY_PAUSE"
registerVal2.BUTTON_B = "MENU_DEMO_CONTROLS_TOGGLE_HUD"
registerVal2.BUTTON_X = "MENU_DEMO_CONTROLS_RECORD"
registerVal2.BUTTON_Y = "MENU_DEMO_CONTROLS_SWITCH_CAMERA"
registerVal2.BUTTON_LBUMP = "MENU_DEMO_CONTROLS_PREV_PLAYER"
registerVal2.BUTTON_RBUMP = "MENU_DEMO_CONTROLS_NEXT_PLAYER"
registerVal2.BUTTON_UP = ""
registerVal2.BUTTON_DOWN = ""
registerVal2.BUTTON_LEFT = ""
registerVal2.BUTTON_RIGHT = "MENU_DEMO_CONTROLS_JUMP_FORWARD"
registerVal2.BUTTON_LTRIG = "MENU_DEMO_CONTROLS_JUMP_BACK"
registerVal2.BUTTON_RTRIG = "MENU_DEMO_CONTROLS_PLAYBACK_SPEED"
registerVal2.BUTTON_START = "MENU_DEMO_CONTROLS_PAUSE_MENU"
registerVal2.BUTTON_BACK = "MENU_SCOREBOARD"
registerVal2.BUTTON_LSTICK = "MENU_DEMO_CONTROLS_TOGGLE_CONTROLS"
registerVal2.BUTTON_RSTICK = ""
CoD.ButtonLayout.TheaterButtonStrings[(CoD.DEMO_CONTROLLER_CONFIG_DEFAULT + 1.000000)] = registerVal2
registerVal2 = {}
registerVal2.BUTTON_A = "MENU_DEMO_CONTROLS_PLAY_PAUSE"
registerVal2.BUTTON_B = "MENU_DEMO_CONTROLS_TOGGLE_HUD"
registerVal2.BUTTON_X = "MENU_DEMO_CONTROLS_RECORD"
registerVal2.BUTTON_Y = "MENU_DEMO_CONTROLS_SWITCH_CAMERA"
registerVal2.BUTTON_LBUMP = "MENU_DEMO_CONTROLS_PREV_PLAYER"
registerVal2.BUTTON_RBUMP = "MENU_DEMO_CONTROLS_NEXT_PLAYER"
registerVal2.BUTTON_UP = ""
registerVal2.BUTTON_DOWN = ""
registerVal2.BUTTON_LEFT = "MENU_DEMO_CONTROLS_JUMP_BACK"
registerVal2.BUTTON_RIGHT = "MENU_DEMO_CONTROLS_JUMP_FORWARD"
registerVal2.BUTTON_LTRIG = "MENU_DEMO_CONTROLS_SLOW_MO"
registerVal2.BUTTON_RTRIG = "MENU_DEMO_CONTROLS_FAST_MO"
registerVal2.BUTTON_START = "MENU_DEMO_CONTROLS_PAUSE_MENU"
registerVal2.BUTTON_BACK = "MENU_SCOREBOARD"
registerVal2.BUTTON_LSTICK = "MENU_DEMO_CONTROLS_TOGGLE_CONTROLS"
registerVal2.BUTTON_RSTICK = ""
CoD.ButtonLayout.TheaterButtonStrings[(CoD.DEMO_CONTROLLER_CONFIG_DIGITAL + 1.000000)] = registerVal2
registerVal2 = {}
registerVal2.BUTTON_A = "MENU_DEMO_CONTROLS_PLAY_PAUSE"
registerVal2.BUTTON_B = "MENU_DEMO_CONTROLS_TOGGLE_HUD"
registerVal2.BUTTON_X = "MENU_DEMO_CONTROLS_RECORD"
registerVal2.BUTTON_Y = "MENU_DEMO_CONTROLS_SWITCH_CAMERA"
registerVal2.BUTTON_LBUMP = "MENU_DEMO_CONTROLS_PREV_PLAYER"
registerVal2.BUTTON_RBUMP = "MENU_DEMO_CONTROLS_NEXT_PLAYER"
registerVal2.BUTTON_UP = "MENU_DEMO_CONTROLS_INCREASE_PLAYBACK_SPEED_SMALL"
registerVal2.BUTTON_DOWN = "MENU_DEMO_CONTROLS_DECREASE_PLAYBACK_SPEED_SMALL"
registerVal2.BUTTON_LEFT = "MENU_DEMO_CONTROLS_DECREASE_PLAYBACK_SPEED_LARGE"
registerVal2.BUTTON_RIGHT = "MENU_DEMO_CONTROLS_INCREASE_PLAYBACK_SPEED_LARGE"
registerVal2.BUTTON_LTRIG = "MENU_DEMO_CONTROLS_JUMP_BACK"
registerVal2.BUTTON_RTRIG = "MENU_DEMO_CONTROLS_JUMP_FORWARD"
registerVal2.BUTTON_START = "MENU_DEMO_CONTROLS_PAUSE_MENU"
registerVal2.BUTTON_BACK = "MENU_SCOREBOARD"
registerVal2.BUTTON_LSTICK = "MENU_DEMO_CONTROLS_TOGGLE_CONTROLS"
registerVal2.BUTTON_RSTICK = ""
CoD.ButtonLayout.TheaterButtonStrings[(CoD.DEMO_CONTROLLER_CONFIG_BADBOT + 1.000000)] = registerVal2
function CoD.ButtonLayout.GetProfileVar(arg0)
	local registerVal2 = Engine.IsDemoPlaying()
	if registerVal2 then
	end
	return "demo_controllerconfig"
end

function CoD.ButtonLayout.SelectionChanged(arg0, arg1)
	if arg1 then
		Engine.SetProfileVar(arg0.parentSelectorButton.m_currentController, arg0.parentSelectorButton.m_profileVarName, arg0.value)
	end
	local registerVal4 = {}
	registerVal4.name = "button_layout_selection_changed"
	registerVal4.choiceParams = arg0
	arg0.parentSelectorButton:dispatchEventToParent(registerVal4)
end

function CoD.ButtonLayout.TriggerSelectionChanged(arg0)
	Engine.SetProfileVar(arg0.parentSelectorButton.m_currentController, arg0.parentSelectorButton.m_profileVarName, arg0.value)
	local registerVal3 = {}
	registerVal3.name = "button_layout_selection_changed"
	registerVal3.controller = arg0.controller
	arg0.parentSelectorButton:dispatchEventToParent(registerVal3)
end

function CoD.ButtonLayout.Button_AddChoices(arg0, arg1)
	if arg0.strings == nil or #arg0.strings == 0.000000 then
		return 
	end
	for index2=1.000000, #arg0.strings, 1.000000 do
		arg0:addChoice(arg0.strings[index2], arg0.values[index2], nil, arg1)
	end
end

function CoD.ButtonLayout.AddChoices(arg0, arg1)
	local registerVal2 = Engine.IsDemoPlaying()
	if registerVal2 then
		registerVal2 = {}
		local registerVal3 = Engine.ToUpper(Engine.Localize("MENU_DEMO_CONTROLS_DEFAULT"))
		local registerVal4 = Engine.ToUpper(Engine.Localize("MENU_DEMO_CONTROLS_DIGITAL"))
		Engine.ToUpper(Engine.Localize("MENU_DEMO_CONTROLS_BADBOT"))
		registerVal2 = {}
		arg0.strings = registerVal2
		registerVal2 = {}
		registerVal2 = {CoD.DEMO_CONTROLLER_CONFIG_DEFAULT, CoD.DEMO_CONTROLLER_CONFIG_DIGITAL, CoD.DEMO_CONTROLLER_CONFIG_BADBOT}
		arg0.values = registerVal2
	else
		registerVal2 = {}
		registerVal3 = Engine.Localize("MENU_DEFAULT_CAPS")
		registerVal4 = Engine.Localize("MENU_TACTICAL_CAPS")
		local registerVal5 = Engine.Localize("MENU_LEFTY_CAPS")
		local registerVal6 = Engine.Localize("MENU_NOMAD")
		local registerVal7 = Engine.Localize("MENU_CHARLIE_CAPS")
		local registerVal8 = Engine.Localize("MENU_GUNSLINGER_CAPS")
		local registerVal9 = Engine.Localize("MENU_BUMPERJUMPER_CAPS")
		local registerVal10 = Engine.Localize("MENU_BUMPERTACTICAL_CAPS")
		Engine.Localize("MENU_STICKMOVE_CAPS")
		registerVal2 = {}
		arg0.strings = registerVal2
		registerVal2 = {}
		registerVal2 = {CoD.BUTTONS_DEFAULT, CoD.BUTTONS_EXPERIMENTAL, CoD.BUTTONS_LEFTY, CoD.BUTTONS_NOMAD, CoD.BUTTONS_CHARLIE, CoD.BUTTONS_GUNSLINGER, CoD.BUTTONS_BUMPERJUMPER, CoD.BUTTONS_BUMPERTACTICAL, CoD.BUTTONS_STICKMOVE}
		arg0.values = registerVal2
	end
	CoD.ButtonLayout.Button_AddChoices(arg0, CoD.ButtonLayout.SelectionChanged)
end

function CoD.ButtonLayout.CloseMenu(arg0)
	local registerVal1 = Engine.IsInGame()
	if registerVal1 then
		local registerVal2 = arg0:getOwner()
		Engine.Exec(registerVal2, "updateVehicleBindings")
	end
	Engine.PlaySound("uin_cmn_backout")
	registerVal2 = arg0:getOwner()
	Engine.Exec(registerVal2, "updategamerprofile")
	if CoD.isCampaign == false then
		arg0:saveState()
	end
	CoD.Menu.close(arg0)
end

function CoD.ButtonLayout.StreamedImageReady(arg0, arg1)
	arg0:beginAnimation("fade_in", 250.000000)
	arg0:setAlpha(1.000000)
end

function CoD.ButtonLayout.AddBackButtonTimer(arg0, arg1)
	arg0:addBackButton()
	arg0.backButtonTimer:close()
	arg0.backButtonTimer = nil
end

function LUI.createMenu.ButtonLayout(arg0, arg1)
	local registerVal4 = Engine.IsDemoPlaying()
	local registerVal5 = Engine.IsInGame()
	if registerVal5 then
		if registerVal4 then
			registerVal5 = Engine.Localize("PLATFORM_THEATER_BUTTON_LAYOUT_CAPS")
		else
			registerVal5 = Engine.Localize("PLATFORM_BUTTON_LAYOUT_CAPS")
		end
		registerVal5 = CoD.InGameMenu.New("ButtonLayout", arg0, registerVal5, CoD.isSinglePlayer)
		registerVal5 = Engine.IsInGame()
		registerVal5 = Engine.IsSplitscreen()
		registerVal5:sizeToSafeArea(arg0)
		registerVal5:updateTitleForSplitscreen()
		registerVal5:updateButtonPromptBarsForSplitscreen()
		registerVal5 = CoD.Menu.New("ButtonLayout")
		registerVal5:setOwner(arg0)
		registerVal5:addTitle(Engine.Localize("PLATFORM_BUTTON_LAYOUT_CAPS"))
		local registerVal6 = {}
		registerVal6.leftAnchor = false
		registerVal6.rightAnchor = false
		registerVal6.left = -640.000000
		registerVal6.right = 640.000000
		registerVal6.topAnchor = false
		registerVal6.bottomAnchor = false
		registerVal6.top = -360.000000
		registerVal6.bottom = 360.000000
		registerVal6.red = 0.000000
		registerVal6.green = 0.000000
		registerVal6.blue = 0.000000
		registerVal6.alpha = 1.000000
		registerVal5 = LUI.UIImage.new(registerVal6)
		registerVal5:setPriority(-100.000000)
		registerVal5:addElement(registerVal5)
		if CoD.isSinglePlayer == false and registerVal5 and registerVal5 and CoD.isSinglePlayer == false then
			registerVal5:addLargePopupBackground()
			registerVal5:registerEventHandler("signed_out", CoD.Menu.SignedOut)
		end
	end
	registerVal5.close = CoD.ButtonLayout.CloseMenu
	registerVal5.controller = arg0
	if CoD.isSinglePlayer == true then
		registerVal5:addBackButton()
	else
		registerVal5:registerEventHandler("add_back_button", CoD.ButtonLayout.AddBackButtonTimer)
		local registerVal7 = {}
		registerVal7.name = "add_back_button"
		registerVal7.controller = arg0
		registerVal5 = LUI.UITimer.new(350.000000, registerVal7)
		registerVal5.backButtonTimer = registerVal5
		registerVal5:addElement(registerVal5.backButtonTimer)
	end
	registerVal5:registerEventHandler("button_layout_selection_changed", CoD.ButtonLayout.ButtonLayoutSelectionChanged)
	registerVal6 = Engine.IsInGame()
	registerVal6 = Engine.IsSplitscreen()
	if registerVal6 and CoD.isSinglePlayer == false and registerVal6 then
	end
	registerVal6 = CoD.ButtonList.new()
	registerVal5.buttonLayoutButtonList = registerVal6
	registerVal5.buttonLayoutButtonList:setLeftRight(true, false, CoD.Menu.SplitscreenSideOffset, ((CoD.Menu.SplitscreenSideOffset + CoD.ButtonList.DefaultWidth) - 20.000000))
	registerVal5.buttonLayoutButtonList:setTopBottom(true, false, CoD.Menu.TitleHeight, (CoD.Menu.TitleHeight + 720.000000))
	if CoD.isSinglePlayer and not CoD.isPS4 then
		registerVal5:addElement(registerVal5.buttonLayoutButtonList)
		if arg1 and arg1.height ~= nil then
			registerVal5.buttonLayoutButtonList:setLeftRight(false, false, (-CoD.Options.Width / 2.000000), (CoD.Options.Width / 2.000000))
			registerVal5.buttonLayoutButtonList:setTopBottom(false, false, (-arg1.height / 2.000000), (arg1.height / 2.000000))
		else
			registerVal6 = CoD.SplitscreenScaler.new(nil, 1.500000)
			registerVal6:setLeftRight(true, false, 0.000000, 0.000000)
			registerVal6:setTopBottom(true, false, 0.000000, 0.000000)
			registerVal5:addElement(registerVal6)
			registerVal6:addElement(registerVal5.buttonLayoutButtonList)
		end
	end
	registerVal6 = CoD.ButtonLayout.GetProfileVar(arg0)
	local registerVal10 = Engine.Localize("PLATFORM_BUTTON_LAYOUT_CAPS")
	registerVal7 = registerVal5.buttonLayoutButtonList:addProfileLeftRightSelector(arg0, registerVal10, registerVal6)
	registerVal5.buttonLayoutSelector = registerVal7
	CoD.ButtonLayout.AddChoices(registerVal5.buttonLayoutSelector, arg0)
	if not arg1 or CoD.isPC then
		if not registerVal4 then
			registerVal10 = Engine.Localize("MENU_TRIGGER_CONFIG_CAPS")
			registerVal7 = registerVal5.buttonLayoutButtonList:addProfileLeftRightSelector(arg0, registerVal10, "flipped_control_config")
			registerVal5.buttonFlippedSelector = registerVal7
			local registerVal8 = {}
			local registerVal9 = Engine.Localize("MENU_DEFAULT_CAPS")
			Engine.Localize("MENU_FLIPPED_CAPS")
			registerVal8 = {}
			registerVal5.buttonFlippedSelector.strings = registerVal8
			registerVal8 = {}
			registerVal8 = {CoD.TRIGGERS_DEFAULT, CoD.TRIGGERS_FLIPPED}
			registerVal5.buttonFlippedSelector.values = registerVal8
			CoD.ButtonLayout.Button_AddChoices(registerVal5.buttonFlippedSelector, CoD.ButtonLayout.TriggerSelectionChanged)
		end
	end
	registerVal7 = LUI.UIElement.new()
	registerVal5.buttonLayoutImageContainer = registerVal7
	registerVal5.buttonLayoutImageContainer:setLeftRight(false, false, 0.000000, 0.000000)
	registerVal5.buttonLayoutImageContainer:setTopBottom(false, false, -50.000000, -50.000000)
	registerVal5.buttonLayoutImageContainer.priority = -100.000000
	registerVal5.buttonLayoutImageContainer.isTheaterButtonlayout = registerVal4
	registerVal5:addElement(registerVal5.buttonLayoutImageContainer)
	if CoD.isPS4 then
	else
		if CoD.isPC then
		else
		end
	end
	if CoD.isPS4 == true or CoD.isDurango == true then
		registerVal8 = LUI.UIStreamedImage.new()
		registerVal5.controllerImage = registerVal8
		registerVal5.controllerImage:setAlpha(0.000000)
		registerVal5.controllerImage:registerEventHandler("streamed_image_ready", CoD.ButtonLayout.StreamedImageReady)
	else
		registerVal8 = LUI.UIImage.new()
		registerVal5.controllerImage = registerVal8
	end
	if not arg1 or CoD.isPC then
		registerVal5.controllerImage:setLeftRight(false, false, -225.000000, 225.000000)
		registerVal5.controllerImage:setTopBottom(false, false, -130.000000, 320.000000)
	else
		registerVal5.controllerImage:setLeftRight(false, false, -250.000000, 240.000000)
		registerVal5.controllerImage:setTopBottom(false, false, -140.000000, 350.000000)
	end
	registerVal5.controllerImage:setImage(RegisterMaterial("xenon_controller_top"))
	registerVal5.buttonLayoutImageContainer:addElement(registerVal5.controllerImage)
	CoD.ButtonLayout.AddLinesAndLabels(registerVal5.buttonLayoutImageContainer, arg0)
	registerVal8 = Engine.ProfileValueAsString(arg0, registerVal6)
	CoD.ButtonLayout.UpdateButtonLinesAndLabels(registerVal5.buttonLayoutImageContainer, registerVal8, arg0)
	local registerVal11 = {}
	registerVal11.name = "gain_focus"
	registerVal5.buttonLayoutSelector:processEvent(registerVal11)
	return registerVal5
end

function CoD.ButtonLayout.AddLine(arg0, arg1, arg2)
	local registerVal3 = CoD.Line.new(arg1, arg2, CoD.ButtonLayout.LineWidth, CoD.ButtonLayout.LineColor)
	arg0:addElement(registerVal3)
	return registerVal3
end

function CoD.ButtonLayout.AddLeftAlignLabel(arg0, arg1, arg2)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, arg1, (arg1 + 1.000000))
	registerVal3:setTopBottom(true, false, arg2, (arg2 + CoD.textSize.Default))
	registerVal3:setRGB(CoD.ButtonLayout.LineColor[1.000000], CoD.ButtonLayout.LineColor[2.000000], CoD.ButtonLayout.LineColor[3.000000])
	registerVal3:setFont(CoD.fonts.Default)
	arg0:addElement(registerVal3)
	return registerVal3
end

function CoD.ButtonLayout.AddRightAlignLabel(arg0, arg1, arg2)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(false, true, arg1, (arg1 - 1.000000))
	registerVal3:setTopBottom(true, false, arg2, (arg2 + CoD.textSize.Default))
	registerVal3:setRGB(CoD.ButtonLayout.LineColor[1.000000], CoD.ButtonLayout.LineColor[2.000000], CoD.ButtonLayout.LineColor[3.000000])
	registerVal3:setFont(CoD.fonts.Default)
	arg0:addElement(registerVal3)
	return registerVal3
end

function CoD.ButtonLayout.AddCenterAlignLabel(arg0, arg1, arg2)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(false, false, (arg1 - 1.000000), (arg1 + 1.000000))
	registerVal3:setTopBottom(true, false, arg2, (arg2 + CoD.textSize.Default))
	registerVal3:setRGB(CoD.ButtonLayout.LineColor[1.000000], CoD.ButtonLayout.LineColor[2.000000], CoD.ButtonLayout.LineColor[3.000000])
	registerVal3:setFont(CoD.fonts.Default)
	arg0:addElement(registerVal3)
	return registerVal3
end

function CoD.ButtonLayout.AddLinesAndLabels(arg0, arg1)
	if CoD.isPS4 then
		CoD.ButtonLayout.AddPS4LinesAndLabels(arg0, arg1)
	else
		if CoD.isPC then
			CoD.ButtonLayout.AddPS4LinesAndLabels(arg0, arg1)
		else
			CoD.ButtonLayout.AddXenonLinesAndLabels(arg0)
		end
	end
end

function CoD.ButtonLayout.UpdateButtonLinesAndLabels(arg0, arg1, arg2)
	if arg0 == nil then
		return 
	end
	local registerVal4 = Engine.IsDemoPlaying()
	if registerVal4 then
	else
		registerVal4 = Engine.ProfileBool(arg2, "flipped_control_config")
	end
	registerVal4, registerVal5, registerVal6 = pairs(CoD.ButtonLayout.ButtonRefs)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		if CoD.isPS4 and registerVal4 == true then
			if value8 == "BUTTON_LTRIG" then
			end
			if value8 == "BUTTON_RTRIG" then
			end
			if value8 == "BUTTON_LBUMP" then
			end
			if value8 == "BUTTON_RBUMP" then
			end
		end
		if arg0.buttonLabels ~= nil and arg0.buttonLabels["BUTTON_RTRIG"] ~= nil then
			if arg0.isTheaterButtonlayout then
			else
			end
			if arg0.buttonLines[value8] then
				if CoD.ButtonLayout.ButtonStrings[(arg1 + 1.000000)]["BUTTON_RTRIG"] ~= "" then
					arg0.buttonLines[value8]:setAlpha(1.000000)
				else
					arg0.buttonLines[value8]:setAlpha(0.000000)
				end
			end
			arg0.buttonLabels[value8]:setText(Engine.Localize(CoD.ButtonLayout.ButtonStrings[(arg1 + 1.000000)]["BUTTON_RTRIG"]))
		end
	end
end

function CoD.ButtonLayout.ButtonLayoutSelectionChanged(arg0, arg1)
	local registerVal2 = CoD.ButtonLayout.GetProfileVar(arg0.m_ownerController)
	local registerVal3 = Engine.ProfileValueAsString(arg0.m_ownerController, registerVal2)
	CoD.ButtonLayout.UpdateButtonLinesAndLabels(arg0.buttonLayoutImageContainer, registerVal3, arg0.m_ownerController)
end

function CoD.ButtonLayout.AddPS4LinesAndLabels(arg0, arg1)
	arg0.buttonLabels = {}
	arg0.buttonLines = {}
	local function __FUNC_5B1D_(arg0)
		return ((arg0 * 0.976563) - 250.000000)
	end

	local function __FUNC_5B5E_(arg0)
		return ((arg0 * 0.976563) - 175.000000)
	end

	local registerVal5 = __FUNC_5B1D_(460.000000)
	local registerVal6 = __FUNC_5B5E_(345.000000)
	local registerVal10 = {}
	local registerVal11 = __FUNC_5B1D_(395.000000)
	__FUNC_5B5E_(300.000000)
	registerVal10 = {}
	registerVal11 = {}
	registerVal11 = {registerVal5, registerVal6}
	local registerVal8 = CoD.ButtonLayout.AddLine(arg0, registerVal10, registerVal11)
	arg0.buttonLines.BUTTON_A = registerVal8
	registerVal8 = CoD.ButtonLayout.AddLeftAlignLabel(arg0, (registerVal5 + 5.000000), (registerVal6 + -10.000000))
	arg0.buttonLabels.BUTTON_A = registerVal8
	local registerVal7 = __FUNC_5B1D_(460.000000)
	registerVal8 = __FUNC_5B5E_(272.000000)
	local registerVal12 = {}
	local registerVal13 = __FUNC_5B1D_(425.000000)
	__FUNC_5B5E_(272.000000)
	registerVal12 = {}
	registerVal13 = {}
	registerVal13 = {registerVal7, registerVal8}
	registerVal10 = CoD.ButtonLayout.AddLine(arg0, registerVal12, registerVal13)
	arg0.buttonLines.BUTTON_B = registerVal10
	registerVal10 = CoD.ButtonLayout.AddLeftAlignLabel(arg0, (registerVal7 + 5.000000), (registerVal8 + -10.000000))
	arg0.buttonLabels.BUTTON_B = registerVal10
	local registerVal9 = __FUNC_5B1D_(460.000000)
	registerVal10 = __FUNC_5B5E_(310.000000)
	local registerVal14 = {}
	local registerVal15 = __FUNC_5B1D_(360.000000)
	__FUNC_5B5E_(272.000000)
	registerVal14 = {}
	registerVal15 = {}
	registerVal15 = {registerVal9, registerVal10}
	registerVal12 = CoD.ButtonLayout.AddLine(arg0, registerVal14, registerVal15)
	arg0.buttonLines.BUTTON_X = registerVal12
	registerVal12 = CoD.ButtonLayout.AddLeftAlignLabel(arg0, (registerVal9 + 5.000000), (registerVal10 + -10.000000))
	arg0.buttonLabels.BUTTON_X = registerVal12
	registerVal11 = __FUNC_5B1D_(460.000000)
	registerVal12 = __FUNC_5B5E_(245.000000)
	local registerVal16 = {}
	local registerVal17 = __FUNC_5B1D_(395.000000)
	__FUNC_5B5E_(245.000000)
	registerVal16 = {}
	registerVal17 = {}
	registerVal17 = {registerVal11, registerVal12}
	registerVal14 = CoD.ButtonLayout.AddLine(arg0, registerVal16, registerVal17)
	arg0.buttonLines.BUTTON_Y = registerVal14
	registerVal14 = CoD.ButtonLayout.AddLeftAlignLabel(arg0, (registerVal11 + 5.000000), (registerVal12 + -10.000000))
	arg0.buttonLabels.BUTTON_Y = registerVal14
	registerVal13 = __FUNC_5B1D_(65.000000)
	registerVal14 = __FUNC_5B5E_(160.000000)
	local registerVal18 = {}
	registerVal18 = {registerVal13, registerVal14}
	local registerVal19 = {}
	local registerVal20 = __FUNC_5B1D_(105.000000)
	__FUNC_5B5E_(160.000000)
	registerVal19 = {}
	registerVal16 = CoD.ButtonLayout.AddLine(arg0, registerVal18, registerVal19)
	arg0.buttonLines.BUTTON_LBUMP = registerVal16
	registerVal16 = CoD.ButtonLayout.AddRightAlignLabel(arg0, (registerVal13 - 5.000000), (registerVal14 + -10.000000))
	arg0.buttonLabels.BUTTON_LBUMP = registerVal16
	registerVal15 = __FUNC_5B1D_(445.000000)
	registerVal16 = __FUNC_5B5E_(160.000000)
	registerVal20 = {}
	local registerVal21 = __FUNC_5B1D_(405.000000)
	__FUNC_5B5E_(160.000000)
	registerVal20 = {}
	registerVal21 = {}
	registerVal21 = {registerVal15, registerVal16}
	registerVal18 = CoD.ButtonLayout.AddLine(arg0, registerVal20, registerVal21)
	arg0.buttonLines.BUTTON_RBUMP = registerVal18
	registerVal18 = CoD.ButtonLayout.AddLeftAlignLabel(arg0, (registerVal15 + 5.000000), (registerVal16 + -10.000000))
	arg0.buttonLabels.BUTTON_RBUMP = registerVal18
	if not CoD.isSinglePlayer then
		registerVal17 = __FUNC_5B1D_(50.000000)
		registerVal18 = __FUNC_5B5E_(250.000000)
		local registerVal22 = {}
		registerVal22 = {registerVal17, registerVal18}
		local registerVal23 = {}
		local registerVal24 = __FUNC_5B1D_(115.000000)
		__FUNC_5B5E_(250.000000)
		registerVal23 = {}
		registerVal20 = CoD.ButtonLayout.AddLine(arg0, registerVal22, registerVal23)
		arg0.buttonLines.BUTTON_UP = registerVal20
		registerVal20 = CoD.ButtonLayout.AddRightAlignLabel(arg0, (registerVal17 - 5.000000), (registerVal18 + -10.000000))
		arg0.buttonLabels.BUTTON_UP = registerVal20
	end
	if not CoD.isSinglePlayer then
		registerVal17 = __FUNC_5B1D_(50.000000)
		registerVal18 = __FUNC_5B5E_(345.000000)
		registerVal22 = {}
		registerVal22 = {registerVal17, registerVal18}
		registerVal23 = {}
		registerVal24 = __FUNC_5B1D_(115.000000)
		__FUNC_5B5E_(300.000000)
		registerVal23 = {}
		registerVal20 = CoD.ButtonLayout.AddLine(arg0, registerVal22, registerVal23)
		arg0.buttonLines.BUTTON_DOWN = registerVal20
		registerVal20 = CoD.ButtonLayout.AddRightAlignLabel(arg0, (registerVal17 - 5.000000), (registerVal18 + -10.000000))
		arg0.buttonLabels.BUTTON_DOWN = registerVal20
	end
	registerVal17 = __FUNC_5B1D_(50.000000)
	registerVal18 = __FUNC_5B5E_(274.000000)
	registerVal22 = {}
	registerVal22 = {registerVal17, registerVal18}
	registerVal23 = {}
	registerVal24 = __FUNC_5B1D_(94.000000)
	__FUNC_5B5E_(274.000000)
	registerVal23 = {}
	registerVal20 = CoD.ButtonLayout.AddLine(arg0, registerVal22, registerVal23)
	arg0.buttonLines.BUTTON_LEFT = registerVal20
	registerVal20 = CoD.ButtonLayout.AddRightAlignLabel(arg0, (registerVal17 - 5.000000), (registerVal18 + -10.000000))
	arg0.buttonLabels.BUTTON_LEFT = registerVal20
	if not CoD.isSinglePlayer then
		registerVal19 = __FUNC_5B1D_(50.000000)
		registerVal20 = __FUNC_5B5E_(310.000000)
		registerVal24 = {}
		local registerVal25 = __FUNC_5B1D_(140.000000)
		__FUNC_5B5E_(274.000000)
		registerVal24 = {}
		registerVal25 = {}
		registerVal25 = {registerVal19, registerVal20}
		registerVal22 = CoD.ButtonLayout.AddLine(arg0, registerVal24, registerVal25)
		arg0.buttonLines.BUTTON_RIGHT = registerVal22
		registerVal22 = CoD.ButtonLayout.AddRightAlignLabel(arg0, (registerVal19 - 5.000000), (registerVal20 + -10.000000))
		arg0.buttonLabels.BUTTON_RIGHT = registerVal22
	end
	registerVal19 = __FUNC_5B1D_(92.000000)
	registerVal20 = __FUNC_5B5E_(108.000000)
	registerVal24 = {}
	registerVal24 = {registerVal19, registerVal20}
	registerVal25 = {}
	local registerVal26 = __FUNC_5B1D_(115.000000)
	__FUNC_5B5E_(130.000000)
	registerVal25 = {}
	registerVal22 = CoD.ButtonLayout.AddLine(arg0, registerVal24, registerVal25)
	arg0.buttonLines.BUTTON_LTRIG = registerVal22
	registerVal22 = CoD.ButtonLayout.AddRightAlignLabel(arg0, (registerVal19 - 5.000000), (registerVal20 + -10.000000))
	arg0.buttonLabels.BUTTON_LTRIG = registerVal22
	registerVal21 = __FUNC_5B1D_(420.000000)
	registerVal22 = __FUNC_5B5E_(108.000000)
	registerVal26 = {}
	local registerVal27 = __FUNC_5B1D_(395.000000)
	__FUNC_5B5E_(130.000000)
	registerVal26 = {}
	registerVal27 = {}
	registerVal27 = {registerVal21, registerVal22}
	registerVal24 = CoD.ButtonLayout.AddLine(arg0, registerVal26, registerVal27)
	arg0.buttonLines.BUTTON_RTRIG = registerVal24
	registerVal24 = CoD.ButtonLayout.AddLeftAlignLabel(arg0, (registerVal21 + 5.000000), (registerVal22 + -10.000000))
	arg0.buttonLabels.BUTTON_RTRIG = registerVal24
	if not CoD.isSinglePlayer then
		registerVal23 = __FUNC_5B1D_(255.000000)
		registerVal24 = __FUNC_5B5E_(140.000000)
		local registerVal28 = {}
		local registerVal29 = __FUNC_5B1D_(255.000000)
		__FUNC_5B5E_(220.000000)
		registerVal28 = {}
		registerVal29 = {}
		registerVal29 = {registerVal23, registerVal24}
		registerVal26 = CoD.ButtonLayout.AddLine(arg0, registerVal28, registerVal29)
		arg0.buttonLines.BUTTON_BACK = registerVal26
		registerVal26 = CoD.ButtonLayout.AddCenterAlignLabel(arg0, registerVal23, (registerVal24 - CoD.textSize.Default))
		arg0.buttonLabels.BUTTON_BACK = registerVal26
	end
	registerVal23 = __FUNC_5B1D_(342.000000)
	registerVal24 = __FUNC_5B5E_(110.000000)
	registerVal28 = {}
	registerVal29 = __FUNC_5B1D_(342.000000)
	__FUNC_5B5E_(218.000000)
	registerVal28 = {}
	registerVal29 = {}
	registerVal29 = {registerVal23, registerVal24}
	registerVal26 = CoD.ButtonLayout.AddLine(arg0, registerVal28, registerVal29)
	arg0.buttonLines.BUTTON_START = registerVal26
	registerVal26 = CoD.ButtonLayout.AddCenterAlignLabel(arg0, registerVal23, (registerVal24 - CoD.textSize.Default))
	arg0.buttonLabels.BUTTON_START = registerVal26
	registerVal25 = __FUNC_5B1D_(185.000000)
	registerVal26 = __FUNC_5B5E_(405.000000)
	local registerVal30 = {}
	registerVal30 = {registerVal25, registerVal26}
	local registerVal31 = {}
	local registerVal32 = __FUNC_5B1D_(185.000000)
	__FUNC_5B5E_(344.000000)
	registerVal31 = {}
	registerVal28 = CoD.ButtonLayout.AddLine(arg0, registerVal30, registerVal31)
	arg0.buttonLines.BUTTON_LSTICK = registerVal28
	registerVal28 = CoD.ButtonLayout.AddCenterAlignLabel(arg0, registerVal25, registerVal26)
	arg0.buttonLabels.BUTTON_LSTICK = registerVal28
	registerVal27 = __FUNC_5B1D_(323.000000)
	registerVal28 = __FUNC_5B5E_(375.000000)
	registerVal32 = {}
	local registerVal33 = __FUNC_5B1D_(323.000000)
	__FUNC_5B5E_(344.000000)
	registerVal32 = {}
	registerVal33 = {}
	registerVal33 = {registerVal27, registerVal28}
	registerVal30 = CoD.ButtonLayout.AddLine(arg0, registerVal32, registerVal33)
	arg0.buttonLines.BUTTON_RSTICK = registerVal30
	registerVal30 = CoD.ButtonLayout.AddCenterAlignLabel(arg0, registerVal27, registerVal28)
	arg0.buttonLabels.BUTTON_RSTICK = registerVal30
end

function CoD.ButtonLayout.AddXenonLinesAndLabels(arg0)
	arg0.buttonLabels = {}
	arg0.buttonLines = {}
	local registerVal7 = {}
	registerVal7 = {120.000000, 88.000000}
	local registerVal8 = {}
	registerVal8 = {200.000000, 130.000000}
	local registerVal5 = CoD.ButtonLayout.AddLine(arg0, registerVal7, registerVal8)
	arg0.buttonLines.BUTTON_A = registerVal5
	registerVal5 = CoD.ButtonLayout.AddLeftAlignLabel(arg0, (200.000000 + 5.000000), (130.000000 + -10.000000))
	arg0.buttonLabels.BUTTON_A = registerVal5
	local registerVal9 = {}
	registerVal9 = {163.000000, 44.000000}
	local registerVal10 = {}
	registerVal10 = {200.000000, 60.000000}
	registerVal7 = CoD.ButtonLayout.AddLine(arg0, registerVal9, registerVal10)
	arg0.buttonLines.BUTTON_B = registerVal7
	registerVal7 = CoD.ButtonLayout.AddLeftAlignLabel(arg0, (200.000000 + 5.000000), (60.000000 + -10.000000))
	arg0.buttonLabels.BUTTON_B = registerVal7
	local registerVal11 = {}
	registerVal11 = {100.000000, 44.000000}
	local registerVal12 = {}
	registerVal12 = {205.000000, 95.000000}
	registerVal9 = CoD.ButtonLayout.AddLine(arg0, registerVal11, registerVal12)
	arg0.buttonLines.BUTTON_X = registerVal9
	registerVal9 = CoD.ButtonLayout.AddLeftAlignLabel(arg0, (205.000000 + 5.000000), (95.000000 + -10.000000))
	arg0.buttonLabels.BUTTON_X = registerVal9
	local registerVal13 = {}
	registerVal13 = {132.000000, 10.000000}
	local registerVal14 = {}
	registerVal14 = {195.000000, 25.000000}
	registerVal11 = CoD.ButtonLayout.AddLine(arg0, registerVal13, registerVal14)
	arg0.buttonLines.BUTTON_Y = registerVal11
	registerVal11 = CoD.ButtonLayout.AddLeftAlignLabel(arg0, (195.000000 + 5.000000), (25.000000 + -10.000000))
	arg0.buttonLabels.BUTTON_Y = registerVal11
	local registerVal15 = {}
	registerVal15 = {-170.000000, -23.000000}
	local registerVal16 = {}
	registerVal16 = {-130.000000, -23.000000}
	registerVal13 = CoD.ButtonLayout.AddLine(arg0, registerVal15, registerVal16)
	arg0.buttonLines.BUTTON_LBUMP = registerVal13
	registerVal13 = CoD.ButtonLayout.AddRightAlignLabel(arg0, (-170.000000 - 5.000000), (-23.000000 + -10.000000))
	arg0.buttonLabels.BUTTON_LBUMP = registerVal13
	local registerVal17 = {}
	registerVal17 = {130.000000, -23.000000}
	local registerVal18 = {}
	registerVal18 = {170.000000, -23.000000}
	registerVal15 = CoD.ButtonLayout.AddLine(arg0, registerVal17, registerVal18)
	arg0.buttonLines.BUTTON_RBUMP = registerVal15
	registerVal15 = CoD.ButtonLayout.AddLeftAlignLabel(arg0, (170.000000 + 5.000000), (-23.000000 + -10.000000))
	arg0.buttonLabels.BUTTON_RBUMP = registerVal15
	if not CoD.isSinglePlayer then
		local registerVal19 = {}
		registerVal19 = {-205.000000, 110.000000}
		local registerVal20 = {}
		registerVal20 = {-62.000000, 95.000000}
		registerVal17 = CoD.ButtonLayout.AddLine(arg0, registerVal19, registerVal20)
		arg0.buttonLines.BUTTON_UP = registerVal17
		registerVal17 = CoD.ButtonLayout.AddRightAlignLabel(arg0, (-205.000000 - 5.000000), (110.000000 + -10.000000))
		arg0.buttonLabels.BUTTON_UP = registerVal17
	end
	if not CoD.isSinglePlayer then
		registerVal19 = {}
		registerVal19 = {-205.000000, 180.000000}
		registerVal20 = {}
		registerVal20 = {-62.000000, 140.000000}
		registerVal17 = CoD.ButtonLayout.AddLine(arg0, registerVal19, registerVal20)
		arg0.buttonLines.BUTTON_DOWN = registerVal17
		registerVal17 = CoD.ButtonLayout.AddRightAlignLabel(arg0, (-205.000000 - 5.000000), (180.000000 + -10.000000))
		arg0.buttonLabels.BUTTON_DOWN = registerVal17
	end
	registerVal19 = {}
	registerVal19 = {-210.000000, 145.000000}
	registerVal20 = {}
	registerVal20 = {-83.000000, 119.000000}
	registerVal17 = CoD.ButtonLayout.AddLine(arg0, registerVal19, registerVal20)
	arg0.buttonLines.BUTTON_LEFT = registerVal17
	registerVal17 = CoD.ButtonLayout.AddRightAlignLabel(arg0, (-210.000000 - 5.000000), (145.000000 + -10.000000))
	arg0.buttonLabels.BUTTON_LEFT = registerVal17
	if not CoD.isSinglePlayer then
		local registerVal21 = {}
		registerVal21 = {-38.000000, 119.000000}
		local registerVal22 = {}
		registerVal22 = {-38.000000, 250.000000}
		registerVal19 = CoD.ButtonLayout.AddLine(arg0, registerVal21, registerVal22)
		arg0.buttonLines.BUTTON_RIGHT = registerVal19
		registerVal19 = CoD.ButtonLayout.AddCenterAlignLabel(arg0, -38.000000, 250.000000)
		arg0.buttonLabels.BUTTON_RIGHT = registerVal19
	end
	registerVal21 = {}
	registerVal21 = {-160.000000, -70.000000}
	registerVal22 = {}
	registerVal22 = {-108.000000, -40.000000}
	registerVal19 = CoD.ButtonLayout.AddLine(arg0, registerVal21, registerVal22)
	arg0.buttonLines.BUTTON_LTRIG = registerVal19
	registerVal19 = CoD.ButtonLayout.AddRightAlignLabel(arg0, (-160.000000 - 5.000000), (-70.000000 + -10.000000))
	arg0.buttonLabels.BUTTON_LTRIG = registerVal19
	local registerVal23 = {}
	registerVal23 = {108.000000, -40.000000}
	local registerVal24 = {}
	registerVal24 = {160.000000, -70.000000}
	registerVal21 = CoD.ButtonLayout.AddLine(arg0, registerVal23, registerVal24)
	arg0.buttonLines.BUTTON_RTRIG = registerVal21
	registerVal21 = CoD.ButtonLayout.AddLeftAlignLabel(arg0, (160.000000 + 5.000000), (-70.000000 + -10.000000))
	arg0.buttonLabels.BUTTON_RTRIG = registerVal21
	if not CoD.isSinglePlayer then
		local registerVal25 = {}
		registerVal25 = {-42.000000, 48.000000}
		local registerVal26 = {}
		registerVal26 = {-42.000000, -135.000000}
		registerVal23 = CoD.ButtonLayout.AddLine(arg0, registerVal25, registerVal26)
		arg0.buttonLines.BUTTON_BACK = registerVal23
		registerVal23 = CoD.ButtonLayout.AddCenterAlignLabel(arg0, -42.000000, (-135.000000 - CoD.textSize.Default))
		arg0.buttonLabels.BUTTON_BACK = registerVal23
	end
	registerVal25 = {}
	registerVal25 = {42.000000, 48.000000}
	registerVal26 = {}
	registerVal26 = {42.000000, -100.000000}
	registerVal23 = CoD.ButtonLayout.AddLine(arg0, registerVal25, registerVal26)
	arg0.buttonLines.BUTTON_START = registerVal23
	registerVal23 = CoD.ButtonLayout.AddCenterAlignLabel(arg0, 42.000000, (-100.000000 - CoD.textSize.Default))
	arg0.buttonLabels.BUTTON_START = registerVal23
	local registerVal27 = {}
	registerVal27 = {-190.000000, 52.000000}
	local registerVal28 = {}
	registerVal28 = {-120.000000, 52.000000}
	registerVal25 = CoD.ButtonLayout.AddLine(arg0, registerVal27, registerVal28)
	arg0.buttonLines.BUTTON_LSTICK = registerVal25
	registerVal25 = CoD.ButtonLayout.AddRightAlignLabel(arg0, (-190.000000 - 5.000000), (52.000000 + -10.000000))
	arg0.buttonLabels.BUTTON_LSTICK = registerVal25
	local registerVal29 = {}
	registerVal29 = {56.000000, 123.000000}
	local registerVal30 = {}
	registerVal30 = {56.000000, 220.000000}
	registerVal27 = CoD.ButtonLayout.AddLine(arg0, registerVal29, registerVal30)
	arg0.buttonLines.BUTTON_RSTICK = registerVal27
	registerVal27 = CoD.ButtonLayout.AddCenterAlignLabel(arg0, 56.000000, 220.000000)
	arg0.buttonLabels.BUTTON_RSTICK = registerVal27
end

