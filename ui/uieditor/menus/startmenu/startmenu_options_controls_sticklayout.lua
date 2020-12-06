-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Options_Slider")
require("ui.uieditor.widgets.StartMenu.StartMenu_Options_Controls_GenericControllerItem")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.PC.StartMenu.Dropdown.OptionDropdown")
local function __FUNC_623_(arg0)
	local registerVal1 = tonumber(Engine.ProfileValueAsString(arg0, "input_invertpitch"))
	if registerVal1 ~= 1.000000 then
	end
	return true
end

local registerVal3 = {}
local function __FUNC_6E4_(arg0)
	DataSources.StickLayoutLabels.m_lastController = arg0
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal1 = Engine.GetModel(registerVal2, "StickLayoutLabels")
	if registerVal1 == nil then
		local registerVal3 = Engine.GetModelForController(arg0)
		registerVal2 = Engine.CreateModel(registerVal3, "StickLayoutLabels")
		local function __FUNC_97D_(arg0)
			Engine.CreateModel(registerVal2, (arg0 .. ".text"))
			Engine.CreateModel(registerVal2, (arg0 .. ".isDefault"))
		end

		Engine.CreateModel(registerVal2, "leftStickImg")
		Engine.CreateModel(registerVal2, "rightStickImg")
		__FUNC_97D_("leftStickUp")
		__FUNC_97D_("leftStickDown")
		__FUNC_97D_("leftStickLeftRight")
		__FUNC_97D_("rightStickUp")
		__FUNC_97D_("rightStickDown")
		__FUNC_97D_("rightStickLeftRight")
	end
	return registerVal2
end

registerVal3.getModel = __FUNC_6E4_
local function __FUNC_A38_(arg0, arg1, arg2, arg3, arg4)
	local registerVal6 = Engine.CreateModel(arg1, (arg3 .. ".text"))
	Engine.SetModelValue(registerVal6, arg2[arg4])
	registerVal6 = Engine.CreateModel(arg1, (arg3 .. ".isDefault"))
	if arg2[arg4] ~= arg0[arg4] then
	end
	Engine.SetModelValue(registerVal6, true)
end

registerVal3.setStickModel = __FUNC_A38_
local function __FUNC_B67_(arg0)
	local registerVal3 = Engine.GetModelForController(DataSources.StickLayoutLabels.m_lastController)
	local registerVal2 = Engine.GetModel(registerVal3, "StickLayoutLabels")
	registerVal3 = {}[(CoD.THUMBSTICK_DEFAULT + 1.000000)](__FUNC_623_(DataSources.StickLayoutLabels.m_lastController))
	if DataSources.StickLayoutLabels.m_lastController or not arg0 then
		return 
	end
	local registerVal5 = Engine.GetModel(registerVal2, "leftStickImg")
	Engine.SetModelValue(registerVal5, arg0.STICK_L_IMG)
	registerVal5 = Engine.GetModel(registerVal2, "rightStickImg")
	Engine.SetModelValue(registerVal5, arg0.STICK_R_IMG)
	DataSources.StickLayoutLabels.setStickModel(registerVal3, registerVal2, arg0, "leftStickUp", "STICK_L_UP")
	DataSources.StickLayoutLabels.setStickModel(registerVal3, registerVal2, arg0, "leftStickDown", "STICK_L_DOWN")
	DataSources.StickLayoutLabels.setStickModel(registerVal3, registerVal2, arg0, "leftStickLeftRight", "STICK_L_LR")
	DataSources.StickLayoutLabels.setStickModel(registerVal3, registerVal2, arg0, "rightStickUp", "STICK_R_UP")
	DataSources.StickLayoutLabels.setStickModel(registerVal3, registerVal2, arg0, "rightStickDown", "STICK_R_DOWN")
	DataSources.StickLayoutLabels.setStickModel(registerVal3, registerVal2, arg0, "rightStickLeftRight", "STICK_R_LR")
end

registerVal3.setModels = __FUNC_B67_
DataSources.StickLayoutLabels = registerVal3
local function __FUNC_1021_(arg0)
	local registerVal1 = {}
	registerVal1.STICK_L_IMG = "xenon_stick_move"
	registerVal1.STICK_L_UP = "MENU_MOVE_FORWARD"
	registerVal1.STICK_L_DOWN = "MENU_MOVE_BACK"
	registerVal1.STICK_L_LR = "MENU_STRAFE_LEFT_RIGHT"
	registerVal1.STICK_R_IMG = "xenon_stick_turn"
	registerVal1.STICK_R_UP = "MENU_LOOK_UP"
	registerVal1.STICK_R_DOWN = "MENU_LOOK_DOWN"
	registerVal1.STICK_R_LR = "MENU_ROTATE_LEFT_RIGHT"
	if arg0 then
		registerVal1.STICK_R_UP = "MENU_LOOK_DOWN"
		registerVal1.STICK_R_DOWN = "MENU_LOOK_UP"
	end
	return registerVal1
end

local function __FUNC_11FF_(arg0)
	local registerVal1 = {}
	registerVal1.STICK_L_IMG = "xenon_stick_turn"
	registerVal1.STICK_L_UP = "MENU_LOOK_UP"
	registerVal1.STICK_L_DOWN = "MENU_LOOK_DOWN"
	registerVal1.STICK_L_LR = "MENU_ROTATE_LEFT_RIGHT"
	registerVal1.STICK_R_IMG = "xenon_stick_move"
	registerVal1.STICK_R_UP = "MENU_MOVE_FORWARD"
	registerVal1.STICK_R_DOWN = "MENU_MOVE_BACK"
	registerVal1.STICK_R_LR = "MENU_STRAFE_LEFT_RIGHT"
	if arg0 then
		registerVal1.STICK_L_UP = "MENU_LOOK_DOWN"
		registerVal1.STICK_L_DOWN = "MENU_LOOK_UP"
	end
	return registerVal1
end

local function __FUNC_13DB_(arg0)
	local registerVal1 = {}
	registerVal1.STICK_L_IMG = "xenon_stick_move_turn"
	registerVal1.STICK_L_UP = "MENU_MOVE_FORWARD"
	registerVal1.STICK_L_DOWN = "MENU_MOVE_BACK"
	registerVal1.STICK_L_LR = "MENU_ROTATE_LEFT_RIGHT"
	registerVal1.STICK_R_IMG = "xenon_stick_move_look"
	registerVal1.STICK_R_UP = "MENU_LOOK_UP"
	registerVal1.STICK_R_DOWN = "MENU_LOOK_DOWN"
	registerVal1.STICK_R_LR = "MENU_STRAFE_LEFT_RIGHT"
	if arg0 then
		registerVal1.STICK_R_UP = "MENU_LOOK_DOWN"
		registerVal1.STICK_R_DOWN = "MENU_LOOK_UP"
	end
	return registerVal1
end

local function __FUNC_15C1_(arg0)
	local registerVal1 = {}
	registerVal1.STICK_L_IMG = "xenon_stick_move_look"
	registerVal1.STICK_L_UP = "MENU_LOOK_UP"
	registerVal1.STICK_L_DOWN = "MENU_LOOK_DOWN"
	registerVal1.STICK_L_LR = "MENU_STRAFE_LEFT_RIGHT"
	registerVal1.STICK_R_IMG = "xenon_stick_move_turn"
	registerVal1.STICK_R_UP = "MENU_MOVE_FORWARD"
	registerVal1.STICK_R_DOWN = "MENU_MOVE_BACK"
	registerVal1.STICK_R_LR = "MENU_ROTATE_LEFT_RIGHT"
	if arg0 then
		registerVal1.STICK_L_UP = "MENU_LOOK_DOWN"
		registerVal1.STICK_L_DOWN = "MENU_LOOK_UP"
	end
	return registerVal1
end

{}[(CoD.THUMBSTICK_DEFAULT + 1.000000)] = __FUNC_1021_
{}[(CoD.THUMBSTICK_SOUTHPAW + 1.000000)] = __FUNC_11FF_
{}[(CoD.THUMBSTICK_LEGACY + 1.000000)] = __FUNC_13DB_
{}[(CoD.THUMBSTICK_LEGACYSOUTHPAW + 1.000000)] = __FUNC_15C1_
local function __FUNC_17A9_(arg0)
	local registerVal2 = __FUNC_623_(DataSources.StickLayoutLabels.m_lastController)
	DataSources.StickLayoutLabels.setModels({}[(arg0 + 1.000000)](registerVal2))
end

local function __FUNC_189E_(arg0)
	local registerVal2 = {}
	local registerVal3 = {}
	local registerVal4 = Engine.Localize("MENU_DEFAULT_CAPS")
	registerVal3.name = registerVal4
	registerVal3.value = CoD.THUMBSTICK_DEFAULT
	registerVal4 = {}
	local registerVal5 = Engine.Localize("MENU_SOUTHPAW_CAPS")
	registerVal4.name = registerVal5
	registerVal4.value = CoD.THUMBSTICK_SOUTHPAW
	registerVal5 = {}
	local registerVal6 = Engine.Localize("MENU_LEGACY_CAPS")
	registerVal5.name = registerVal6
	registerVal5.value = CoD.THUMBSTICK_LEGACY
	registerVal6 = {}
	local registerVal7 = Engine.Localize("MENU_LEGACY_SOUTHPAW_CAPS")
	registerVal6.name = registerVal7
	registerVal6.value = CoD.THUMBSTICK_LEGACYSOUTHPAW
	registerVal2 = {registerVal3, registerVal4, registerVal5, registerVal6}
	registerVal3 = {}
	registerVal4 = {}
	registerVal4.name = "PLATFORM_STICK_LAYOUT_CAPS"
	registerVal5 = CoD.OptionsUtility.CreateCustomOptionDataSource(arg0, "StickLayoutOptions_StickLayout", registerVal2, "gpad_sticksConfig", __FUNC_17A9_, nil, nil)
	registerVal4.optionsDatasource = registerVal5
	registerVal5 = CoD.OptionsUtility.GetProfileSelection(arg0, registerVal2, "gpad_sticksConfig")
	registerVal4.currentSelection = registerVal5
	registerVal3.models = registerVal4
	registerVal3.properties = {}
	return registerVal3
end

local function __FUNC_1C7E_(arg0)
	table.insert({}, __FUNC_189E_(arg0))
	return {}
end

local registerVal9 = DataSourceHelpers.ListSetup("StickLayout", __FUNC_1C7E_, true)
DataSources.StickLayout = registerVal9
if CoD.isPC then
	local function __FUNC_1CF3_(arg0)
		local registerVal4 = {}
		local registerVal5 = {}
		registerVal5.value = CoD.THUMBSTICK_DEFAULT
		registerVal5.valueDisplay = "MENU_DEFAULT_CAPS"
		registerVal4.models = registerVal5
		table.insert({}, registerVal4)
		registerVal4 = {}
		registerVal5 = {}
		registerVal5.value = CoD.THUMBSTICK_SOUTHPAW
		registerVal5.valueDisplay = "MENU_SOUTHPAW_CAPS"
		registerVal4.models = registerVal5
		table.insert({}, registerVal4)
		registerVal4 = {}
		registerVal5 = {}
		registerVal5.value = CoD.THUMBSTICK_LEGACY
		registerVal5.valueDisplay = "MENU_LEGACY_CAPS"
		registerVal4.models = registerVal5
		table.insert({}, registerVal4)
		registerVal4 = {}
		registerVal5 = {}
		registerVal5.value = CoD.THUMBSTICK_LEGACYSOUTHPAW
		registerVal5.valueDisplay = "MENU_LEGACY_SOUTHPAW_CAPS"
		registerVal4.models = registerVal5
		table.insert({}, registerVal4)
		return {}
	end

	registerVal9 = DataSourceHelpers.ListSetup("PC.StickLayoutDropdownPresets", __FUNC_1CF3_, true)
	DataSources.StickLayoutDropdownPresets = registerVal9
	local function __FUNC_1F60_(arg0)
		local registerVal4 = {}
		local registerVal5 = {}
		registerVal5.label = "PLATFORM_STICK_LAYOUT"
		registerVal5.profileVarName = "gpad_sticksConfig"
		registerVal5.profileType = "user"
		registerVal5.datasource = "StickLayoutDropdownPresets"
		registerVal5.widgetType = "dropdown"
		registerVal4.models = registerVal5
		registerVal4.properties = CoD.PCUtil.OptionsGenericDropdownProperties
		table.insert({}, registerVal4)
		return {}
	end

	registerVal9 = DataSourceHelpers.ListSetup("StickLayoutDropdown", __FUNC_1F60_, true)
	DataSources.StickLayoutDropdown = registerVal9
	function DataSources.StickLayoutDropdown.getWidgetTypeForItem(arg0, arg1, arg2)
		local registerVal3 = Engine.GetModelValue(Engine.GetModel(arg1, "widgetType"))
		if arg1 and registerVal3 == "dropdown" then
			return CoD.OptionDropdown
		end
		return nil
	end

end
local function __FUNC_2264_(arg0, arg1, arg2)
	local registerVal5 = {}
	registerVal5.name = "options_refresh"
	registerVal5.controller = arg1
	arg0:dispatchEventToChildren(registerVal5)
	local function __FUNC_2467_(arg0, arg1)
		for index2=1.000000, arg0.stickLayoutDropdownList.requestedRowCount, 1.000000 do
			local registerVal6 = arg0.stickLayoutDropdownList:getItemAtPosition(index2, 1.000000)
			if arg1.inUse then
				if registerVal6 ~= arg1.widget then
					registerVal6.m_inputDisabled = true
				else
					registerVal6.m_inputDisabled = nil
				end
			end
		end
	end

	arg0:registerEventHandler("dropdown_triggered", __FUNC_2467_)
	arg0.stickLayoutDropdownList.m_managedItemPriority = true
	local function __FUNC_259F_(arg0, arg2)
		if not arg2.inUse then
			local registerVal2 = arg2.widget.dropDownCurrentValue(arg1, arg0)
			__FUNC_17A9_(registerVal2)
		end
		arg0:dispatchEventToParent(arg2)
	end

	arg0.stickLayoutDropdownList:registerEventHandler("dropdown_triggered", __FUNC_259F_)
	local function __FUNC_2674_(arg2, arg3)
		arg0:updateState(arg3)
		arg0.stickLayoutButtonList:updateDataSource()
		arg0.stickLayoutDropdownList:updateDataSource()
		local registerVal2 = Engine.LastInput_Gamepad()
		if registerVal2 then
			local registerVal4 = {}
			registerVal4.name = "gain_focus"
			registerVal4.controller = arg1
			arg0.stickLayoutButtonList:processEvent(registerVal4)
			registerVal4 = {}
			registerVal4.name = "lose_focus"
			registerVal4.controller = arg1
			arg0.stickLayoutDropdownList:processEvent(registerVal4)
		else
			registerVal4 = {}
			registerVal4.name = "lose_focus"
			registerVal4.controller = arg1
			arg0.stickLayoutButtonList:processEvent(registerVal4)
			registerVal4 = {}
			registerVal4.name = "gain_focus"
			registerVal4.controller = arg1
			arg0.stickLayoutDropdownList:processEvent(registerVal4)
		end
		registerVal4 = {}
		registerVal4.name = "options_refresh"
		registerVal4.controller = arg1
		arg0:dispatchEventToChildren(registerVal4)
	end

	arg0:registerEventHandler("input_source_changed", __FUNC_2674_)
	local function __FUNC_28F0_()
		CoD.PCUtil.RefreshAllOptions(arg0, arg1)
	end

	LUI.OverrideFunction_CallOriginalSecond(arg0, "close", __FUNC_28F0_)
end

local function __FUNC_297C_(arg0, arg1, arg2)
	local registerVal3 = tonumber(Engine.ProfileValueAsString(arg1, "gpad_sticksConfig"))
	__FUNC_17A9_(registerVal3)
	arg0.stickLayoutButtonList.navigation = nil
	arg0.stickLayoutDropdownList.navigation = nil
	if CoD.isPC then
		__FUNC_2264_(arg0, arg1, arg2)
	end
	local function __FUNC_2B5C_()
		Engine.UnsubscribeAndFreeModel(DataSources.StickLayoutLabels.getModel(arg1))
	end

	LUI.OverrideFunction_CallOriginalSecond(arg0, "close", __FUNC_2B5C_)
end

local function __FUNC_2C33_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("StartMenu_Options_Controls_StickLayout")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "StartMenu_Options_Controls_StickLayout.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3:setRGB(0.060000, 0.060000, 0.060000)
	registerVal1:addElement(registerVal3)
	registerVal1.Background = registerVal3
	local registerVal4 = LUI.UIList.new(registerVal1, arg0, 1.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(true, false, 219.000000, 889.000000)
	registerVal4:setTopBottom(true, false, 102.500000, 157.500000)
	registerVal4:setWidgetType(CoD.StartMenu_Options_Slider)
	registerVal4:setSpacing(1.000000)
	registerVal4:setDataSource("StickLayout")
	registerVal1:addElement(registerVal4)
	registerVal1.stickLayoutButtonList = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 415.000000, 865.000000)
	registerVal5:setTopBottom(true, false, 224.000000, 674.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_xenonone_controller_top"))
	registerVal1:addElement(registerVal5)
	registerVal1.durangoControllerImage = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 377.000000, 889.000000)
	registerVal6:setTopBottom(true, false, 183.500000, 695.500000)
	registerVal6:setImage(RegisterImage("uie_ps4_controller_top"))
	registerVal1:addElement(registerVal6)
	registerVal1.orbisControllerImage = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 64.000000, 1216.000000)
	registerVal7:setTopBottom(true, false, 174.500000, 689.220000)
	registerVal7:setImage(RegisterImage("uie_img_t7_menu_startmenu_option_psvita_single"))
	registerVal1:addElement(registerVal7)
	registerVal1.vitaControllerImage = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 432.000000, 532.000000)
	registerVal8:setTopBottom(true, false, 378.000000, 478.000000)
	local function __FUNC_4792_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg0, "StickLayoutLabels", "leftStickImg", __FUNC_4792_)
	registerVal1:addElement(registerVal8)
	registerVal1.leftStickOverlay = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 654.000000, 754.000000)
	registerVal9:setTopBottom(true, false, 462.000000, 562.000000)
	local function __FUNC_4844_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg0, "StickLayoutLabels", "rightStickImg", __FUNC_4844_)
	registerVal1:addElement(registerVal9)
	registerVal1.rightStickOverlay = registerVal9
	local registerVal10 = CoD.StartMenu_Options_Controls_GenericControllerItem.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 382.000000, 582.000000)
	registerVal10:setTopBottom(true, false, 360.000000, 378.000000)
	registerVal10.defaultText:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	local function __FUNC_48F8_(arg1)
		registerVal10:setModel(arg1, arg0)
	end

	registerVal10:subscribeToGlobalModel(arg0, "StickLayoutLabels", "leftStickUp", __FUNC_48F8_)
	registerVal1:addElement(registerVal10)
	registerVal1.leftStickUpText = registerVal10
	local registerVal11 = CoD.StartMenu_Options_Controls_GenericControllerItem.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 382.000000, 582.000000)
	registerVal11:setTopBottom(true, false, 478.000000, 496.000000)
	registerVal11.defaultText:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	local function __FUNC_494A_(arg1)
		registerVal11:setModel(arg1, arg0)
	end

	registerVal11:subscribeToGlobalModel(arg0, "StickLayoutLabels", "leftStickDown", __FUNC_494A_)
	registerVal1:addElement(registerVal11)
	registerVal1.leftStickDownText = registerVal11
	local registerVal12 = CoD.StartMenu_Options_Controls_GenericControllerItem.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 226.000000, 426.000000)
	registerVal12:setTopBottom(true, false, 419.000000, 437.000000)
	registerVal12.defaultText:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	local function __FUNC_499A_(arg1)
		registerVal12:setModel(arg1, arg0)
	end

	registerVal12:subscribeToGlobalModel(arg0, "StickLayoutLabels", "leftStickLeftRight", __FUNC_499A_)
	registerVal1:addElement(registerVal12)
	registerVal1.leftStickLeftRightText = registerVal12
	local registerVal13 = CoD.StartMenu_Options_Controls_GenericControllerItem.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 604.000000, 804.000000)
	registerVal13:setTopBottom(true, false, 444.000000, 462.000000)
	registerVal13.defaultText:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	local function __FUNC_49EA_(arg1)
		registerVal13:setModel(arg1, arg0)
	end

	registerVal13:subscribeToGlobalModel(arg0, "StickLayoutLabels", "rightStickUp", __FUNC_49EA_)
	registerVal1:addElement(registerVal13)
	registerVal1.rightStickUpText = registerVal13
	local registerVal14 = CoD.StartMenu_Options_Controls_GenericControllerItem.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 604.000000, 804.000000)
	registerVal14:setTopBottom(true, false, 562.000000, 580.000000)
	registerVal14.defaultText:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	local function __FUNC_4A3A_(arg1)
		registerVal14:setModel(arg1, arg0)
	end

	registerVal14:subscribeToGlobalModel(arg0, "StickLayoutLabels", "rightStickDown", __FUNC_4A3A_)
	registerVal1:addElement(registerVal14)
	registerVal1.rightStickDownText = registerVal14
	local registerVal15 = CoD.StartMenu_Options_Controls_GenericControllerItem.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, false, 754.000000, 954.000000)
	registerVal15:setTopBottom(true, false, 503.000000, 521.000000)
	registerVal15.defaultText:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local function __FUNC_4A8A_(arg1)
		registerVal15:setModel(arg1, arg0)
	end

	registerVal15:subscribeToGlobalModel(arg0, "StickLayoutLabels", "rightStickLeftRight", __FUNC_4A8A_)
	registerVal1:addElement(registerVal15)
	registerVal1.rightStickLeftRightText = registerVal15
	local registerVal16 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal16:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal16:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal16.titleLabel:setText(Engine.Localize("PLATFORM_STICK_LAYOUT_CAPS"))
	registerVal16.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("PLATFORM_STICK_LAYOUT_CAPS"))
	registerVal16.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_option"))
	registerVal1:addElement(registerVal16)
	registerVal1.MenuFrame = registerVal16
	local registerVal17 = LUI.UIList.new(registerVal1, arg0, 0.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal17:makeFocusable()
	registerVal17:setLeftRight(true, false, 261.000000, 761.000000)
	registerVal17:setTopBottom(true, false, 157.500000, 191.500000)
	registerVal17:setAlpha(0.000000)
	registerVal17:setWidgetType(CoD.OptionDropdown)
	registerVal17:setSpacing(0.000000)
	registerVal17:setDataSource("StickLayoutDropdown")
	registerVal1:addElement(registerVal17)
	registerVal1.stickLayoutDropdownList = registerVal17
	local registerVal18 = {}
	registerVal18.down = registerVal17
	registerVal4.navigation = registerVal18
	registerVal18 = {}
	registerVal18.up = registerVal4
	registerVal17.navigation = registerVal18
	registerVal18 = {}
	local registerVal19 = {}
	local function __FUNC_4ADA_()
		registerVal1:setupElementClipCounter(13.000000)
		registerVal4:completeAnimation()
		registerVal1.stickLayoutButtonList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.durangoControllerImage:setLeftRight(true, false, 415.000000, 865.000000)
		registerVal1.durangoControllerImage:setTopBottom(true, false, 224.000000, 674.000000)
		registerVal1.durangoControllerImage:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.orbisControllerImage:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.vitaControllerImage:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.leftStickOverlay:setLeftRight(true, false, 504.000000, 604.000000)
		registerVal1.leftStickOverlay:setTopBottom(true, false, 463.000000, 563.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.rightStickOverlay:setLeftRight(true, false, 654.000000, 754.000000)
		registerVal1.rightStickOverlay:setTopBottom(true, false, 462.000000, 562.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.leftStickUpText:setLeftRight(true, false, 454.000000, 654.000000)
		registerVal1.leftStickUpText:setTopBottom(true, false, 445.000000, 463.000000)
		registerVal1.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal1.leftStickDownText:setLeftRight(true, false, 454.000000, 654.000000)
		registerVal1.leftStickDownText:setTopBottom(true, false, 563.000000, 581.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.leftStickLeftRightText:setLeftRight(true, false, 298.000000, 498.000000)
		registerVal1.leftStickLeftRightText:setTopBottom(true, false, 504.000000, 522.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.rightStickUpText:setLeftRight(true, false, 604.000000, 804.000000)
		registerVal1.rightStickUpText:setTopBottom(true, false, 444.000000, 462.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.rightStickDownText:setLeftRight(true, false, 604.000000, 804.000000)
		registerVal1.rightStickDownText:setTopBottom(true, false, 562.000000, 580.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.rightStickLeftRightText:setLeftRight(true, false, 754.000000, 954.000000)
		registerVal1.rightStickLeftRightText:setTopBottom(true, false, 503.000000, 521.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal17:completeAnimation()
		registerVal1.stickLayoutDropdownList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_4ADA_
	registerVal18.DefaultState = registerVal19
	registerVal19 = {}
	local function __FUNC_530A_()
		registerVal1:setupElementClipCounter(13.000000)
		registerVal4:completeAnimation()
		registerVal1.stickLayoutButtonList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.durangoControllerImage:setLeftRight(true, false, 415.000000, 865.000000)
		registerVal1.durangoControllerImage:setTopBottom(true, false, 224.000000, 674.000000)
		registerVal1.durangoControllerImage:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.orbisControllerImage:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.vitaControllerImage:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.leftStickOverlay:setLeftRight(true, false, 504.000000, 604.000000)
		registerVal1.leftStickOverlay:setTopBottom(true, false, 463.000000, 563.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.rightStickOverlay:setLeftRight(true, false, 654.000000, 754.000000)
		registerVal1.rightStickOverlay:setTopBottom(true, false, 462.000000, 562.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.leftStickUpText:setLeftRight(true, false, 454.000000, 654.000000)
		registerVal1.leftStickUpText:setTopBottom(true, false, 445.000000, 463.000000)
		registerVal1.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal1.leftStickDownText:setLeftRight(true, false, 454.000000, 654.000000)
		registerVal1.leftStickDownText:setTopBottom(true, false, 563.000000, 581.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.leftStickLeftRightText:setLeftRight(true, false, 298.000000, 498.000000)
		registerVal1.leftStickLeftRightText:setTopBottom(true, false, 504.000000, 522.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.rightStickUpText:setLeftRight(true, false, 604.000000, 804.000000)
		registerVal1.rightStickUpText:setTopBottom(true, false, 444.000000, 462.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.rightStickDownText:setLeftRight(true, false, 604.000000, 804.000000)
		registerVal1.rightStickDownText:setTopBottom(true, false, 562.000000, 580.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.rightStickLeftRightText:setLeftRight(true, false, 754.000000, 954.000000)
		registerVal1.rightStickLeftRightText:setTopBottom(true, false, 503.000000, 521.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal17:completeAnimation()
		registerVal1.stickLayoutDropdownList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_530A_
	registerVal18.Orbis = registerVal19
	registerVal19 = {}
	local function __FUNC_5B3A_()
		registerVal1:setupElementClipCounter(13.000000)
		registerVal4:completeAnimation()
		registerVal1.stickLayoutButtonList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.durangoControllerImage:setLeftRight(true, false, 363.500000, 895.500000)
		registerVal1.durangoControllerImage:setTopBottom(true, false, 170.500000, 702.500000)
		registerVal1.durangoControllerImage:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.orbisControllerImage:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.vitaControllerImage:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.leftStickOverlay:setLeftRight(true, false, 434.000000, 534.000000)
		registerVal1.leftStickOverlay:setTopBottom(true, false, 388.500000, 488.500000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.rightStickOverlay:setLeftRight(true, false, 654.000000, 754.000000)
		registerVal1.rightStickOverlay:setTopBottom(true, false, 462.000000, 562.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.leftStickUpText:setLeftRight(true, false, 384.000000, 584.000000)
		registerVal1.leftStickUpText:setTopBottom(true, false, 370.500000, 388.500000)
		registerVal1.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal1.leftStickDownText:setLeftRight(true, false, 384.000000, 584.000000)
		registerVal1.leftStickDownText:setTopBottom(true, false, 488.500000, 506.500000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.leftStickLeftRightText:setLeftRight(true, false, 228.000000, 428.000000)
		registerVal1.leftStickLeftRightText:setTopBottom(true, false, 429.500000, 447.500000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.rightStickUpText:setLeftRight(true, false, 604.000000, 804.000000)
		registerVal1.rightStickUpText:setTopBottom(true, false, 444.000000, 462.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.rightStickDownText:setLeftRight(true, false, 604.000000, 804.000000)
		registerVal1.rightStickDownText:setTopBottom(true, false, 562.000000, 580.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.rightStickLeftRightText:setLeftRight(true, false, 754.000000, 954.000000)
		registerVal1.rightStickLeftRightText:setTopBottom(true, false, 503.000000, 521.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal17:completeAnimation()
		registerVal1.stickLayoutDropdownList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_5B3A_
	registerVal18.Durango = registerVal19
	registerVal19 = {}
	local function __FUNC_6379_()
		registerVal1:setupElementClipCounter(13.000000)
		registerVal4:completeAnimation()
		registerVal1.stickLayoutButtonList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.durangoControllerImage:setLeftRight(true, false, 415.000000, 865.000000)
		registerVal1.durangoControllerImage:setTopBottom(true, false, 224.000000, 674.000000)
		registerVal1.durangoControllerImage:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.orbisControllerImage:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.vitaControllerImage:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.leftStickOverlay:setLeftRight(true, false, 360.500000, 435.500000)
		registerVal1.leftStickOverlay:setTopBottom(true, false, 435.000000, 510.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.rightStickOverlay:setLeftRight(true, false, 843.000000, 917.000000)
		registerVal1.rightStickOverlay:setTopBottom(true, false, 436.500000, 510.500000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.leftStickUpText:setLeftRight(true, false, 367.000000, 567.000000)
		registerVal1.leftStickUpText:setTopBottom(true, false, 427.000000, 445.000000)
		registerVal1.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal1.leftStickDownText:setLeftRight(true, false, 377.000000, 577.000000)
		registerVal1.leftStickDownText:setTopBottom(true, false, 510.000000, 528.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.leftStickLeftRightText:setLeftRight(true, false, 155.000000, 355.000000)
		registerVal1.leftStickLeftRightText:setTopBottom(true, false, 463.500000, 481.500000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.rightStickUpText:setLeftRight(true, false, 717.000000, 917.000000)
		registerVal1.rightStickUpText:setTopBottom(true, false, 426.000000, 444.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.rightStickDownText:setLeftRight(true, false, 707.000000, 907.000000)
		registerVal1.rightStickDownText:setTopBottom(true, false, 513.500000, 531.500000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.rightStickLeftRightText:setLeftRight(true, false, 917.000000, 1117.000000)
		registerVal1.rightStickLeftRightText:setTopBottom(true, false, 463.500000, 481.500000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal17:completeAnimation()
		registerVal1.stickLayoutDropdownList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_6379_
	registerVal18.Vita = registerVal19
	registerVal19 = {}
	local function __FUNC_6BCD_()
		registerVal1:setupElementClipCounter(13.000000)
		registerVal4:completeAnimation()
		registerVal1.stickLayoutButtonList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.durangoControllerImage:setLeftRight(true, false, 415.000000, 865.000000)
		registerVal1.durangoControllerImage:setTopBottom(true, false, 224.000000, 674.000000)
		registerVal1.durangoControllerImage:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.orbisControllerImage:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.vitaControllerImage:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.leftStickOverlay:setLeftRight(true, false, 504.000000, 604.000000)
		registerVal1.leftStickOverlay:setTopBottom(true, false, 463.000000, 563.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.rightStickOverlay:setLeftRight(true, false, 654.000000, 754.000000)
		registerVal1.rightStickOverlay:setTopBottom(true, false, 462.000000, 562.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.leftStickUpText:setLeftRight(true, false, 454.000000, 654.000000)
		registerVal1.leftStickUpText:setTopBottom(true, false, 445.000000, 463.000000)
		registerVal1.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal1.leftStickDownText:setLeftRight(true, false, 454.000000, 654.000000)
		registerVal1.leftStickDownText:setTopBottom(true, false, 563.000000, 581.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.leftStickLeftRightText:setLeftRight(true, false, 298.000000, 498.000000)
		registerVal1.leftStickLeftRightText:setTopBottom(true, false, 504.000000, 522.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.rightStickUpText:setLeftRight(true, false, 604.000000, 804.000000)
		registerVal1.rightStickUpText:setTopBottom(true, false, 444.000000, 462.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.rightStickDownText:setLeftRight(true, false, 604.000000, 804.000000)
		registerVal1.rightStickDownText:setTopBottom(true, false, 562.000000, 580.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.rightStickLeftRightText:setLeftRight(true, false, 754.000000, 954.000000)
		registerVal1.rightStickLeftRightText:setTopBottom(true, false, 503.000000, 521.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal17:completeAnimation()
		registerVal1.stickLayoutDropdownList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_6BCD_
	registerVal18.PC = registerVal19
	registerVal1.clipsPerState = registerVal18
	local registerVal20 = {}
	local registerVal21 = {}
	registerVal21.stateName = "Orbis"
	local function __FUNC_73FE_(arg1, arg2, arg3)
		return IsOrbisGamepad(arg0)
	end

	registerVal21.condition = __FUNC_73FE_
	local registerVal22 = {}
	registerVal22.stateName = "Durango"
	local function __FUNC_7450_(arg1, arg2, arg3)
		return IsDurangoGamepad(arg0)
	end

	registerVal22.condition = __FUNC_7450_
	local registerVal23 = {}
	registerVal23.stateName = "Vita"
	local function __FUNC_74A6_(arg1, arg2, arg3)
		return IsVitaGamepad(arg0)
	end

	registerVal23.condition = __FUNC_74A6_
	local registerVal24 = {}
	registerVal24.stateName = "PC"
	local function __FUNC_74F7_(arg0, arg1, arg2)
		return IsPC()
	end

	registerVal24.condition = __FUNC_74F7_
	registerVal20 = {registerVal21, registerVal22, registerVal23, registerVal24}
	registerVal1:mergeStateConditions(registerVal20)
	if registerVal1.m_eventHandlers.input_source_changed then
		local function __FUNC_753A_(arg0, arg1)
			if not arg1.menu then
			end
			arg1.menu = registerVal1
			arg0:updateState(arg1)
			return registerVal1.m_eventHandlers.input_source_changed(arg0, arg1)
		end

		registerVal1:registerEventHandler("input_source_changed", __FUNC_753A_)
	else
		registerVal1:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal21 = Engine.GetModelForController(arg0)
	registerVal20 = Engine.GetModel(registerVal21, "LastInput")
	local function __FUNC_75C3_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal20, __FUNC_75C3_)
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_76DF_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		ForceNotifyControllerModel(arg2, "forceUpdateVehicleBindings")
		UpdateGamerprofile(registerVal1, arg0, arg2)
		ClearSavedState(registerVal1, arg2)
		return true
	end

	local function __FUNC_77E1_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_76DF_, __FUNC_77E1_, false)
	local function __FUNC_78DD_(arg1, arg2)
		local registerVal2 = IsMenuInState(registerVal1, "PC")
		if registerVal2 then
			SetFocusToElement(registerVal1, "buttonLayoutDropdownList", arg0)
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal1, "setState", __FUNC_78DD_)
	registerVal4.id = "stickLayoutButtonList"
	registerVal16:setModel(registerVal1.buttonModel, arg0)
	registerVal17.id = "stickLayoutDropdownList"
	registerVal20 = {}
	registerVal20.name = "menu_loaded"
	registerVal20.controller = arg0
	registerVal1:processEvent(registerVal20)
	registerVal20 = {}
	registerVal20.name = "update_state"
	registerVal20.menu = registerVal1
	registerVal1:processEvent(registerVal20)
	registerVal18 = registerVal1:restoreState()
	if not registerVal18 then
		registerVal20 = {}
		registerVal20.name = "gain_focus"
		registerVal20.controller = arg0
		registerVal1.stickLayoutButtonList:processEvent(registerVal20)
	end
	local function __FUNC_7994_(arg1)
		arg1.stickLayoutButtonList:close()
		arg1.leftStickUpText:close()
		arg1.leftStickDownText:close()
		arg1.leftStickLeftRightText:close()
		arg1.rightStickUpText:close()
		arg1.rightStickDownText:close()
		arg1.rightStickLeftRightText:close()
		arg1.MenuFrame:close()
		arg1.stickLayoutDropdownList:close()
		arg1.leftStickOverlay:close()
		arg1.rightStickOverlay:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "StartMenu_Options_Controls_StickLayout.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_7994_)
	if __FUNC_297C_ then
		__FUNC_297C_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.StartMenu_Options_Controls_StickLayout = __FUNC_2C33_
