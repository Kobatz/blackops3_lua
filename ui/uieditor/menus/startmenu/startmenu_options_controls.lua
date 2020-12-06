-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Options_Slider")
require("ui.uieditor.widgets.StartMenu.StartMenu_OptionHighlight")
require("ui.uieditor.widgets.StartMenu.StartMenu_Option_IconContainer")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
local function __FUNC_3E2_(arg0, arg1)
	local function __FUNC_42A_(arg0)
		if LUI.savedMenuStates[arg0.id] ~= nil and LUI.savedMenuStates[arg0.id].id then
			LUI.savedMenuStates[arg0.id].saveEvent.originalEvent = nil
			local registerVal4 = {}
			registerVal4.name = "restore_focus"
			registerVal4.id = LUI.savedMenuStates[arg0.id].id
			registerVal4.data = LUI.savedMenuStates[arg0.id].data
			registerVal4.saveEvent = LUI.savedMenuStates[arg0.id].saveEvent
			return arg0:processEvent(registerVal4)
		end
	end

	arg0.restoreState = __FUNC_42A_
end

local function __FUNC_592_(arg0)
	local registerVal2 = {}
	local registerVal3 = {}
	local registerVal4 = Engine.Localize("MENU_NOT_INVERTED")
	registerVal3.name = registerVal4
	registerVal3.value = 0.000000
	registerVal4 = {}
	local registerVal5 = Engine.Localize("MENU_INVERTED")
	registerVal4.name = registerVal5
	registerVal4.value = 1.000000
	registerVal2 = {registerVal3, registerVal4}
	registerVal3 = {}
	registerVal4 = {}
	registerVal5 = Engine.Localize("MENU_LOOK_INVERSION")
	registerVal4.name = registerVal5
	registerVal5 = Engine.Localize("MENU_LOOK_INVERSION_DESC")
	registerVal4.desc = registerVal5
	registerVal5 = RegisterMaterial("")
	registerVal4.image = registerVal5
	registerVal5 = CoD.OptionsUtility.CreateOptionDataSource(arg0, "ControllerOptions_LookInversion", registerVal2, "input_invertpitch")
	registerVal4.optionsDatasource = registerVal5
	registerVal5 = CoD.OptionsUtility.GetProfileSelection(arg0, registerVal2, "input_invertpitch")
	registerVal4.currentSelection = registerVal5
	registerVal3.models = registerVal4
	registerVal3.properties = {}
	return registerVal3
end

local function __FUNC_8CE_(arg0)
	local registerVal2 = {}
	local registerVal3 = {}
	local registerVal4 = Engine.Localize("MENU_SENSITIVITY_VERY_LOW_CAPS")
	registerVal3.name = registerVal4
	registerVal3.value = CoD.SENSITIVITY_1
	registerVal4 = {}
	local registerVal5 = Engine.Localize("MENU_SENSITIVITY_LOW_CAPS")
	registerVal4.name = registerVal5
	registerVal4.value = CoD.SENSITIVITY_2
	registerVal5 = {}
	registerVal5.name = "3"
	registerVal5.value = CoD.SENSITIVITY_3
	local registerVal6 = {}
	local registerVal7 = Engine.Localize("MENU_SENSITIVITY_MEDIUM_CAPS")
	registerVal6.name = registerVal7
	registerVal6.value = CoD.SENSITIVITY_4
	registerVal7 = {}
	registerVal7.name = "5"
	registerVal7.value = CoD.SENSITIVITY_5
	local registerVal8 = {}
	registerVal8.name = "6"
	registerVal8.value = CoD.SENSITIVITY_6
	local registerVal9 = {}
	registerVal9.name = "7"
	registerVal9.value = CoD.SENSITIVITY_7
	local registerVal10 = {}
	local registerVal11 = Engine.Localize("MENU_SENSITIVITY_HIGH_CAPS")
	registerVal10.name = registerVal11
	registerVal10.value = CoD.SENSITIVITY_8
	registerVal11 = {}
	registerVal11.name = "9"
	registerVal11.value = CoD.SENSITIVITY_9
	local registerVal12 = {}
	registerVal12.name = "10"
	registerVal12.value = CoD.SENSITIVITY_10
	local registerVal13 = {}
	local registerVal14 = Engine.Localize("MENU_SENSITIVITY_VERY_HIGH_CAPS")
	registerVal13.name = registerVal14
	registerVal13.value = CoD.SENSITIVITY_11
	registerVal14 = {}
	registerVal14.name = "12"
	registerVal14.value = CoD.SENSITIVITY_12
	local registerVal15 = {}
	registerVal15.name = "13"
	registerVal15.value = CoD.SENSITIVITY_13
	local registerVal16 = {}
	local registerVal17 = Engine.Localize("MENU_SENSITIVITY_INSANE_CAPS")
	registerVal16.name = registerVal17
	registerVal16.value = CoD.SENSITIVITY_14
	registerVal2 = {registerVal3, registerVal4, registerVal5, registerVal6, registerVal7, registerVal8, registerVal9, registerVal10, registerVal11, registerVal12, registerVal13, registerVal14, registerVal15, registerVal16}
	registerVal3 = {}
	registerVal4 = {}
	registerVal5 = Engine.Localize("MENU_LOOK_SENSITIVITY_HORIZONTAL")
	registerVal4.name = registerVal5
	registerVal5 = Engine.Localize("MENU_LOOK_SENSITIVITY_HORIZONTAL_DESC")
	registerVal4.desc = registerVal5
	registerVal5 = RegisterMaterial("")
	registerVal4.image = registerVal5
	registerVal5 = CoD.OptionsUtility.CreateOptionDataSource(arg0, "ControllerOptions_LookSensitivity_Horizontal", registerVal2, "input_viewSensitivityHorizontal")
	registerVal4.optionsDatasource = registerVal5
	registerVal5 = CoD.OptionsUtility.GetProfileSelection(arg0, registerVal2, "input_viewSensitivityHorizontal")
	registerVal4.currentSelection = registerVal5
	registerVal3.models = registerVal4
	registerVal3.properties = {}
	return registerVal3
end

local function __FUNC_1059_(arg0)
	local registerVal2 = {}
	local registerVal3 = {}
	local registerVal4 = Engine.Localize("MENU_SENSITIVITY_VERY_LOW_CAPS")
	registerVal3.name = registerVal4
	registerVal3.value = CoD.SENSITIVITY_1
	registerVal4 = {}
	local registerVal5 = Engine.Localize("MENU_SENSITIVITY_LOW_CAPS")
	registerVal4.name = registerVal5
	registerVal4.value = CoD.SENSITIVITY_2
	registerVal5 = {}
	registerVal5.name = "3"
	registerVal5.value = CoD.SENSITIVITY_3
	local registerVal6 = {}
	local registerVal7 = Engine.Localize("MENU_SENSITIVITY_MEDIUM_CAPS")
	registerVal6.name = registerVal7
	registerVal6.value = CoD.SENSITIVITY_4
	registerVal7 = {}
	registerVal7.name = "5"
	registerVal7.value = CoD.SENSITIVITY_5
	local registerVal8 = {}
	registerVal8.name = "6"
	registerVal8.value = CoD.SENSITIVITY_6
	local registerVal9 = {}
	registerVal9.name = "7"
	registerVal9.value = CoD.SENSITIVITY_7
	local registerVal10 = {}
	local registerVal11 = Engine.Localize("MENU_SENSITIVITY_HIGH_CAPS")
	registerVal10.name = registerVal11
	registerVal10.value = CoD.SENSITIVITY_8
	registerVal11 = {}
	registerVal11.name = "9"
	registerVal11.value = CoD.SENSITIVITY_9
	local registerVal12 = {}
	registerVal12.name = "10"
	registerVal12.value = CoD.SENSITIVITY_10
	local registerVal13 = {}
	local registerVal14 = Engine.Localize("MENU_SENSITIVITY_VERY_HIGH_CAPS")
	registerVal13.name = registerVal14
	registerVal13.value = CoD.SENSITIVITY_11
	registerVal14 = {}
	registerVal14.name = "12"
	registerVal14.value = CoD.SENSITIVITY_12
	local registerVal15 = {}
	registerVal15.name = "13"
	registerVal15.value = CoD.SENSITIVITY_13
	local registerVal16 = {}
	local registerVal17 = Engine.Localize("MENU_SENSITIVITY_INSANE_CAPS")
	registerVal16.name = registerVal17
	registerVal16.value = CoD.SENSITIVITY_14
	registerVal2 = {registerVal3, registerVal4, registerVal5, registerVal6, registerVal7, registerVal8, registerVal9, registerVal10, registerVal11, registerVal12, registerVal13, registerVal14, registerVal15, registerVal16}
	registerVal3 = {}
	registerVal4 = {}
	registerVal5 = Engine.Localize("MENU_LOOK_SENSITIVITY_VERTICAL")
	registerVal4.name = registerVal5
	registerVal5 = Engine.Localize("MENU_LOOK_SENSITIVITY_VERTICAL_DESC")
	registerVal4.desc = registerVal5
	registerVal5 = RegisterMaterial("")
	registerVal4.image = registerVal5
	registerVal5 = CoD.OptionsUtility.CreateOptionDataSource(arg0, "ControllerOptions_LookSensitivity_Vertical", registerVal2, "input_viewSensitivityVertical")
	registerVal4.optionsDatasource = registerVal5
	registerVal5 = CoD.OptionsUtility.GetProfileSelection(arg0, registerVal2, "input_viewSensitivityVertical")
	registerVal4.currentSelection = registerVal5
	registerVal3.models = registerVal4
	registerVal3.properties = {}
	return registerVal3
end

local function __FUNC_17DD_(arg0)
	local registerVal2 = {}
	local registerVal3 = {}
	local registerVal4 = Engine.Localize("MENU_ENABLED")
	registerVal3.name = registerVal4
	registerVal3.value = 1.000000
	registerVal4 = {}
	local registerVal5 = Engine.Localize("MENU_DISABLED")
	registerVal4.name = registerVal5
	registerVal4.value = 0.000000
	registerVal2 = {registerVal3, registerVal4}
	registerVal3 = {}
	registerVal4 = {}
	registerVal5 = Engine.Localize("PLATFORM_CONTROLLER_VIBRATION")
	registerVal4.name = registerVal5
	registerVal5 = Engine.Localize("PLATFORM_CONTROLLER_VIBRATION_DESC")
	registerVal4.desc = registerVal5
	registerVal5 = RegisterMaterial("")
	registerVal4.image = registerVal5
	registerVal5 = CoD.OptionsUtility.CreateOptionDataSource(arg0, "ControllerOptions_Vibration", registerVal2, "gpad_rumble")
	registerVal4.optionsDatasource = registerVal5
	registerVal5 = CoD.OptionsUtility.GetProfileSelection(arg0, registerVal2, "gpad_rumble")
	registerVal4.currentSelection = registerVal5
	registerVal3.models = registerVal4
	registerVal3.properties = {}
	return registerVal3
end

local function __FUNC_1B1F_(arg0)
	local registerVal2 = {}
	local registerVal3 = {}
	local registerVal4 = Engine.Localize("MENU_ENABLED")
	registerVal3.name = registerVal4
	registerVal3.value = 1.000000
	registerVal4 = {}
	local registerVal5 = Engine.Localize("MENU_DISABLED")
	registerVal4.name = registerVal5
	registerVal4.value = 0.000000
	registerVal2 = {registerVal3, registerVal4}
	registerVal3 = {}
	registerVal4 = {}
	registerVal5 = Engine.Localize("MENU_TARGET_ASSIST")
	registerVal4.name = registerVal5
	registerVal5 = Engine.Localize("MENU_TARGET_ASSIST_DESC")
	registerVal4.desc = registerVal5
	registerVal5 = RegisterMaterial("")
	registerVal4.image = registerVal5
	registerVal5 = CoD.OptionsUtility.CreateOptionDataSource(arg0, "ControllerOptions_AimAssist", registerVal2, "input_targetassist")
	registerVal4.optionsDatasource = registerVal5
	registerVal5 = CoD.OptionsUtility.GetProfileSelection(arg0, registerVal2, "input_targetassist")
	registerVal4.currentSelection = registerVal5
	registerVal3.models = registerVal4
	registerVal3.properties = {}
	return registerVal3
end

local function __FUNC_1E50_(arg0)
	local registerVal2 = {}
	local registerVal3 = {}
	local registerVal4 = Engine.Localize("MENU_ENABLED")
	registerVal3.name = registerVal4
	registerVal3.value = 1.000000
	registerVal4 = {}
	local registerVal5 = Engine.Localize("MENU_DISABLED")
	registerVal4.name = registerVal5
	registerVal4.value = 0.000000
	registerVal2 = {registerVal3, registerVal4}
	registerVal3 = {}
	registerVal4 = {}
	registerVal5 = Engine.Localize("MENU_AIM_ASSIST")
	registerVal4.name = registerVal5
	registerVal5 = Engine.Localize("MENU_AIM_DOWN_THE_SIGHT_AUTOAIM")
	registerVal4.desc = registerVal5
	registerVal5 = RegisterMaterial("")
	registerVal4.image = registerVal5
	registerVal5 = CoD.OptionsUtility.CreateOptionDataSource(arg0, "ControllerOptions_AutoAim", registerVal2, "input_autoaim")
	registerVal4.optionsDatasource = registerVal5
	registerVal5 = CoD.OptionsUtility.GetProfileSelection(arg0, registerVal2, "input_autoaim")
	registerVal4.currentSelection = registerVal5
	registerVal3.models = registerVal4
	registerVal3.properties = {}
	return registerVal3
end

local function __FUNC_2182_(arg0)
	local registerVal2 = {}
	local registerVal4 = Engine.Localize("MENU_DEFAULT")
	registerVal2[CoD.BUTTONS_DEFAULT] = registerVal4
	registerVal4 = Engine.Localize("MENU_TACTICAL")
	registerVal2[CoD.BUTTONS_EXPERIMENTAL] = registerVal4
	registerVal4 = Engine.Localize("MENU_LEFTY")
	registerVal2[CoD.BUTTONS_LEFTY] = registerVal4
	registerVal4 = Engine.Localize("MENU_NOMAD")
	registerVal2[CoD.BUTTONS_NOMAD] = registerVal4
	registerVal4 = Engine.Localize("MENU_CHARLIE")
	registerVal2[CoD.BUTTONS_CHARLIE] = registerVal4
	registerVal4 = Engine.Localize("MENU_BUMPERJUMPER")
	registerVal2[CoD.BUTTONS_BUMPERJUMPER] = registerVal4
	registerVal4 = Engine.Localize("MENU_BUMPERTACTICAL")
	registerVal2[CoD.BUTTONS_BUMPERTACTICAL] = registerVal4
	registerVal4 = Engine.Localize("MENU_GUNSLINGER")
	registerVal2[CoD.BUTTONS_GUNSLINGER] = registerVal4
	registerVal4 = Engine.Localize("MENU_STICKMOVE")
	registerVal2[CoD.BUTTONS_STICKMOVE] = registerVal4
	local registerVal3 = {}
	registerVal4 = {}
	local registerVal5 = Engine.Localize("PLATFORM_BUTTON_LAYOUT")
	registerVal4.name = registerVal5
	registerVal5 = Engine.Localize("PLATFORM_BUTTON_LAYOUT_DESC")
	registerVal4.desc = registerVal5
	registerVal5 = RegisterMaterial("")
	registerVal4.image = registerVal5
	registerVal5 = tonumber(Engine.ProfileValueAsString(arg0, "gpad_buttonsConfig"))
	if not registerVal5 then
	end
	registerVal4.altText = registerVal2[0.000000]
	registerVal3.models = registerVal4
	registerVal4 = {}
	local function __FUNC_2708_(arg0, arg1, arg2, arg3, arg4)
		NavigateToMenu(arg4, "StartMenu_Options_Controls_ButtonLayout", true, arg2)
	end

	registerVal4.action = __FUNC_2708_
	registerVal3.properties = registerVal4
	return registerVal3
end

local function __FUNC_2795_(arg0)
	local registerVal2 = {}
	local registerVal4 = Engine.Localize("MENU_DEFAULT")
	registerVal2[CoD.THUMBSTICK_DEFAULT] = registerVal4
	registerVal4 = Engine.Localize("MENU_SOUTHPAW")
	registerVal2[CoD.THUMBSTICK_SOUTHPAW] = registerVal4
	registerVal4 = Engine.Localize("MENU_LEGACY")
	registerVal2[CoD.THUMBSTICK_LEGACY] = registerVal4
	registerVal4 = Engine.Localize("MENU_LEGACY_SOUTHPAW")
	registerVal2[CoD.THUMBSTICK_LEGACYSOUTHPAW] = registerVal4
	local registerVal3 = {}
	registerVal4 = {}
	local registerVal5 = Engine.Localize("PLATFORM_STICK_LAYOUT")
	registerVal4.name = registerVal5
	registerVal5 = Engine.Localize("PLATFORM_STICK_LAYOUT_DESC")
	registerVal4.desc = registerVal5
	registerVal5 = RegisterMaterial("")
	registerVal4.image = registerVal5
	registerVal5 = tonumber(Engine.ProfileValueAsString(arg0, "gpad_sticksConfig"))
	if not registerVal5 then
	end
	registerVal4.altText = registerVal2[0.000000]
	registerVal3.models = registerVal4
	registerVal4 = {}
	local function __FUNC_2B4D_(arg0, arg1, arg2, arg3, arg4)
		NavigateToMenu(arg4, "StartMenu_Options_Controls_StickLayout", true, arg2)
	end

	registerVal4.action = __FUNC_2B4D_
	registerVal3.properties = registerVal4
	return registerVal3
end

local function __FUNC_2BD8_(arg0)
	local registerVal1 = {}
	local registerVal2 = {}
	local registerVal3 = Engine.Localize("MENU_RESET")
	registerVal2.name = registerVal3
	registerVal2.value = CoD.THUMBSTICK_DEFAULT
	registerVal1 = {registerVal2}
	registerVal2 = {}
	registerVal3 = {}
	local registerVal4 = Engine.Localize("MENU_RESET_TO_DEFAULT")
	registerVal3.name = registerVal4
	registerVal4 = Engine.Localize("MENU_RESET_TO_DEFAULT_DESC")
	registerVal3.desc = registerVal4
	registerVal4 = RegisterMaterial("")
	registerVal3.image = registerVal4
	registerVal4 = CoD.OptionsUtility.CreateOptionDataSource(arg0, "ControllerOptions_ResetToDefault", registerVal1)
	registerVal3.optionsDatasource = registerVal4
	registerVal2.models = registerVal3
	registerVal3 = {}
	registerVal3.hideArrows = true
	local function __FUNC_2EA3_(arg0, arg1, arg2, arg3, arg4)
		ResetControlsToDefault(arg0, arg1, arg2, arg4)
	end

	registerVal3.action = __FUNC_2EA3_
	registerVal2.properties = registerVal3
	return registerVal2
end

local function __FUNC_2F04_(arg0)
	local registerVal2 = Dvar.ui_execdemo_gamescom:get()
	if registerVal2 then
		table.insert({}, __FUNC_2BD8_(arg0))
	end
	table.insert({}, __FUNC_592_(arg0))
	table.insert({}, __FUNC_8CE_(arg0))
	table.insert({}, __FUNC_1059_(arg0))
	table.insert({}, __FUNC_17DD_(arg0))
	table.insert({}, __FUNC_1B1F_(arg0))
	table.insert({}, __FUNC_1E50_(arg0))
	registerVal2 = Engine.IsDemoPlaying()
	if not registerVal2 then
		table.insert({}, __FUNC_2182_(arg0))
	end
	table.insert({}, __FUNC_2795_(arg0))
	return {}
end

local registerVal12 = DataSourceHelpers.ListSetup("OptionControlsList", __FUNC_2F04_, true)
DataSources.OptionControlsList = registerVal12
local function __FUNC_3137_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("StartMenu_Options_Controls")
	if __FUNC_3E2_ then
		__FUNC_3E2_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "StartMenu_Options_Controls.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.060000, 0.060000, 0.060000)
	registerVal1:addElement(registerVal3)
	registerVal1.Background = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_fe_cp_background"))
	registerVal1:addElement(registerVal4)
	registerVal1.BlackBG = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -750.000000, 750.000000)
	registerVal5:setTopBottom(false, false, 297.000000, 360.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.FooterBacking = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(false, false, 133.000000, 490.000000)
	registerVal6:setTopBottom(true, false, 181.000000, 203.000000)
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal6)
	registerVal1.Desc = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, -11.000000, 13.000000)
	registerVal7:setTopBottom(true, false, 80.000000, 88.000000)
	registerVal7:setRGB(0.900000, 0.900000, 0.900000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal7)
	registerVal1.CategoryListLine = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, -9.000000, 5.000000)
	registerVal8:setTopBottom(false, false, -361.000000, -275.000000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.TitleBacking0 = registerVal8
	local registerVal9 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal9:makeFocusable()
	registerVal9:setLeftRight(false, false, -608.000000, 62.000000)
	registerVal9:setTopBottom(true, false, 137.500000, 648.500000)
	registerVal9:setDataSource("OptionControlsList")
	registerVal9:setWidgetType(CoD.StartMenu_Options_Slider)
	registerVal9:setVerticalCount(9.000000)
	local function __FUNC_4496_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal9:registerEventHandler("gain_focus", __FUNC_4496_)
	local function __FUNC_4627_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("lose_focus", __FUNC_4627_)
	local function __FUNC_46F6_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_4757_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal9, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_46F6_, __FUNC_4757_, false)
	registerVal1:addElement(registerVal9)
	registerVal1.ButtonList = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, -11.000000, 13.000000)
	registerVal10:setTopBottom(true, false, 80.000000, 88.000000)
	registerVal10:setRGB(0.900000, 0.900000, 0.900000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal10)
	registerVal1.CategoryListLine0 = registerVal10
	local registerVal11 = CoD.StartMenu_OptionHighlight.new(registerVal1, arg0)
	registerVal11:setLeftRight(false, false, 133.000000, 279.000000)
	registerVal11:setTopBottom(true, false, 140.500000, 180.500000)
	registerVal11:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal11)
	registerVal1.StartMenuOptionHighlight = registerVal11
	local registerVal12 = CoD.StartMenu_Option_IconContainer.new(registerVal1, arg0)
	registerVal12:setLeftRight(false, false, 19.000000, 126.000000)
	registerVal12:setTopBottom(true, false, 139.500000, 246.500000)
	registerVal1:addElement(registerVal12)
	registerVal1.StartMenuOptionIconContainer = registerVal12
	local registerVal13 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal13:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal13.titleLabel:setText(Engine.Localize("MENU_CONTROLS_CAPS"))
	registerVal13.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_CONTROLS_CAPS"))
	registerVal13.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_option"))
	registerVal1:addElement(registerVal13)
	registerVal1.MenuFrame = registerVal13
	local registerVal14 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal14:setTopBottom(true, false, 86.000000, 703.250000)
	registerVal1:addElement(registerVal14)
	registerVal1.FEMenuLeftGraphics0 = registerVal14
	local function __FUNC_4852_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal9, "desc", true, __FUNC_4852_)
	local function __FUNC_490A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.DescTitle:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal9, "name", true, __FUNC_490A_)
	local function __FUNC_49E1_(arg1, arg2)
		ShowHeaderIconOnly(registerVal1)
		SetElementStateByElementName(registerVal1, "GenericMenuFrame0", arg0, "Update")
		local registerVal5 = {}
		registerVal5.elementName = "StartMenu_Options_Controls"
		registerVal5.clipName = "intro"
		PlayClipOnElement(registerVal1, registerVal5, arg0)
		PlayClip(registerVal1, "intro", arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_49E1_)
	local function __FUNC_4B95_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		UpdateGamerprofile(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_4C18_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_4B95_, __FUNC_4C18_, false)
	local function __FUNC_4D15_(arg0, arg1, arg2, arg3)
		CloseStartMenu(arg1, arg2)
		return true
	end

	local function __FUNC_4D70_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_DISMISS_MENU")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_START, "M", __FUNC_4D15_, __FUNC_4D70_, false)
	registerVal9.id = "ButtonList"
	registerVal13:setModel(registerVal1.buttonModel, arg0)
	local registerVal17 = {}
	registerVal17.name = "menu_loaded"
	registerVal17.controller = arg0
	registerVal1:processEvent(registerVal17)
	registerVal17 = {}
	registerVal17.name = "update_state"
	registerVal17.menu = registerVal1
	registerVal1:processEvent(registerVal17)
	local registerVal15 = registerVal1:restoreState()
	if not registerVal15 then
		registerVal17 = {}
		registerVal17.name = "gain_focus"
		registerVal17.controller = arg0
		registerVal1.ButtonList:processEvent(registerVal17)
	end
	local function __FUNC_4E6E_(arg1)
		arg1.ButtonList:close()
		arg1.StartMenuOptionHighlight:close()
		arg1.StartMenuOptionIconContainer:close()
		arg1.MenuFrame:close()
		arg1.FEMenuLeftGraphics0:close()
		arg1.Desc:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "StartMenu_Options_Controls.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_4E6E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.StartMenu_Options_Controls = __FUNC_3137_
