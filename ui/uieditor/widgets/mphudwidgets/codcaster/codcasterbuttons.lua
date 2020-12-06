-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.FooterButtonPrompt")
require("ui.uieditor.widgets.CodCaster.CodCasterKeyboardShortcutButtonPrompt")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CodCasterButtons = registerVal1
function CoD.CodCasterButtons.new(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 0.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Left)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CodCasterButtons)
	registerVal2.id = "CodCasterButtons"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -640.000000, -596.000000)
	registerVal3:setTopBottom(false, false, -16.000000, 16.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.spacer0 = registerVal3
	local registerVal4 = CoD.FooterButtonPrompt.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 44.000000, 162.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal4.label:setText(Engine.Localize("CODCASTER_SELECT_PLAYER"))
	registerVal4.keyPrompt.keybind:setText(Engine.Localize("KEY_ENTER"))
	local function __FUNC_1EF6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "Controller", "primary_button_image", __FUNC_1EF6_)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Enabled"
	local function __FUNC_1FCF_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		if registerVal3 then
			registerVal3 = AlwaysTrue()
		end
		return registerVal3
	end

	registerVal8.condition = __FUNC_1FCF_
	local registerVal9 = {}
	registerVal9.stateName = "EnabledPC"
	local function __FUNC_203F_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		if not registerVal3 then
			registerVal3 = ShouldHideButtonPromptForPC(arg2, arg1)
		else
		end
		return true
	end

	registerVal9.condition = __FUNC_203F_
	registerVal7 = {registerVal8, registerVal9}
	registerVal4:mergeStateConditions(registerVal7)
	local function __FUNC_20D8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:linkToElementModel(registerVal4, nil, true, __FUNC_20D8_)
	if registerVal4.m_eventHandlers.input_source_changed then
		local function __FUNC_21E5_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal4.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal4:registerEventHandler("input_source_changed", __FUNC_21E5_)
	else
		registerVal4:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "LastInput")
	local function __FUNC_226F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_226F_)
	registerVal2:addElement(registerVal4)
	registerVal2.SelectPlayer = registerVal4
	local registerVal5 = CoD.FooterButtonPrompt.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 162.000000, 293.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal5.label:setText(Engine.Localize("CODCASTER_HIGHLIGHT_PLAYER"))
	registerVal5.keyPrompt.keybind:setText(Engine.Localize("KEY_ARROWS"))
	local function __FUNC_238B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "Controller", "dpad_ud_button_image", __FUNC_238B_)
	registerVal8 = {}
	registerVal9 = {}
	registerVal9.stateName = "Enabled"
	local function __FUNC_2463_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		if registerVal3 then
			registerVal3 = AlwaysTrue()
		end
		return registerVal3
	end

	registerVal9.condition = __FUNC_2463_
	local registerVal10 = {}
	registerVal10.stateName = "EnabledPC"
	local function __FUNC_24D3_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		if not registerVal3 then
			registerVal3 = ShouldHideButtonPromptForPC(arg2, arg1)
		else
		end
		return true
	end

	registerVal10.condition = __FUNC_24D3_
	registerVal8 = {registerVal9, registerVal10}
	registerVal5:mergeStateConditions(registerVal8)
	local function __FUNC_256C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, nil, true, __FUNC_256C_)
	if registerVal5.m_eventHandlers.input_source_changed then
		local function __FUNC_2679_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal5.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal5:registerEventHandler("input_source_changed", __FUNC_2679_)
	else
		registerVal5:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "LastInput")
	local function __FUNC_2703_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_2703_)
	registerVal2:addElement(registerVal5)
	registerVal2.HighlightPlayer = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -347.000000, -255.000000)
	registerVal6:setTopBottom(false, false, -16.000000, 16.000000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.spacer = registerVal6
	registerVal7 = CoD.FooterButtonPrompt.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 385.000000, 517.250000)
	registerVal7:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal7.label:setText(Engine.Localize("CODCASTER_QUICK_SETTINGS"))
	registerVal7.keyPrompt.keybind:setText(Engine.Localize("Q"))
	local function __FUNC_281F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "Controller", "left_trigger_button_image", __FUNC_281F_)
	registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Enabled"
	local function __FUNC_28F7_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		if registerVal3 then
			registerVal3 = AlwaysTrue()
		end
		return registerVal3
	end

	registerVal11.condition = __FUNC_28F7_
	local registerVal12 = {}
	registerVal12.stateName = "EnabledPC"
	local function __FUNC_2967_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		if not registerVal3 then
			registerVal3 = ShouldHideButtonPromptForPC(arg2, arg1)
		else
		end
		return true
	end

	registerVal12.condition = __FUNC_2967_
	registerVal10 = {registerVal11, registerVal12}
	registerVal7:mergeStateConditions(registerVal10)
	local function __FUNC_2A00_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:linkToElementModel(registerVal7, nil, true, __FUNC_2A00_)
	if registerVal7.m_eventHandlers.input_source_changed then
		local function __FUNC_2B0D_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal7.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal7:registerEventHandler("input_source_changed", __FUNC_2B0D_)
	else
		registerVal7:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "LastInput")
	local function __FUNC_2B97_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:subscribeToModel(registerVal10, __FUNC_2B97_)
	registerVal2:addElement(registerVal7)
	registerVal2.QuickSettingsSideBar = registerVal7
	registerVal8 = CoD.FooterButtonPrompt.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 517.250000, 616.250000)
	registerVal8:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal8.label:setText(Engine.Localize("CODCASTER_SETTINGS"))
	registerVal8.keyPrompt.keybind:setText(Engine.Localize("S"))
	local function __FUNC_2CB3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "Controller", "right_trigger_button_image", __FUNC_2CB3_)
	registerVal11 = {}
	registerVal12 = {}
	registerVal12.stateName = "Enabled"
	local function __FUNC_2D8B_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		if registerVal3 then
			registerVal3 = AlwaysTrue()
		end
		return registerVal3
	end

	registerVal12.condition = __FUNC_2D8B_
	local registerVal13 = {}
	registerVal13.stateName = "EnabledPC"
	local function __FUNC_2DFB_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		if not registerVal3 then
			registerVal3 = ShouldHideButtonPromptForPC(arg2, arg1)
		else
		end
		return true
	end

	registerVal13.condition = __FUNC_2DFB_
	registerVal11 = {registerVal12, registerVal13}
	registerVal8:mergeStateConditions(registerVal11)
	local function __FUNC_2E94_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:linkToElementModel(registerVal8, nil, true, __FUNC_2E94_)
	if registerVal8.m_eventHandlers.input_source_changed then
		local function __FUNC_2FA1_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal8.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal8:registerEventHandler("input_source_changed", __FUNC_2FA1_)
	else
		registerVal8:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "LastInput")
	local function __FUNC_302B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_302B_)
	registerVal2:addElement(registerVal8)
	registerVal2.SettingsSideBar = registerVal8
	registerVal9 = CoD.FooterButtonPrompt.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 616.250000, 758.250000)
	registerVal9:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal9.label:setText(Engine.Localize("CODCASTER_DS_TOOLBAR"))
	registerVal9.keyPrompt.keybind:setText(Engine.Localize("KEY_SPACE"))
	local function __FUNC_3147_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "Controller", "secondary_button_image", __FUNC_3147_)
	registerVal12 = {}
	registerVal13 = {}
	registerVal13.stateName = "Enabled"
	local function __FUNC_321F_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		if registerVal3 then
			registerVal3 = AlwaysTrue()
		end
		return registerVal3
	end

	registerVal13.condition = __FUNC_321F_
	local registerVal14 = {}
	registerVal14.stateName = "EnabledPC"
	local function __FUNC_328F_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		if not registerVal3 then
			registerVal3 = ShouldHideButtonPromptForPC(arg2, arg1)
		else
		end
		return true
	end

	registerVal14.condition = __FUNC_328F_
	registerVal12 = {registerVal13, registerVal14}
	registerVal9:mergeStateConditions(registerVal12)
	local function __FUNC_3328_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:linkToElementModel(registerVal9, nil, true, __FUNC_3328_)
	if registerVal9.m_eventHandlers.input_source_changed then
		local function __FUNC_3435_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal9.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal9:registerEventHandler("input_source_changed", __FUNC_3435_)
	else
		registerVal9:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, "LastInput")
	local function __FUNC_34BF_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_34BF_)
	registerVal2:addElement(registerVal9)
	registerVal2.Toolbar = registerVal9
	registerVal10 = CoD.FooterButtonPrompt.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 758.250000, 845.250000)
	registerVal10:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal10.label:setText(Engine.Localize("MENU_MAP"))
	registerVal10.keyPrompt.keybind:setText(Engine.Localize("M"))
	local function __FUNC_35DB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "Controller", "alt1_button_image", __FUNC_35DB_)
	registerVal13 = {}
	registerVal14 = {}
	registerVal14.stateName = "Enabled"
	local function __FUNC_36B3_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		if registerVal3 then
			registerVal3 = AlwaysTrue()
		end
		return registerVal3
	end

	registerVal14.condition = __FUNC_36B3_
	local registerVal15 = {}
	registerVal15.stateName = "EnabledPC"
	local function __FUNC_3723_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		if not registerVal3 then
			registerVal3 = ShouldHideButtonPromptForPC(arg2, arg1)
		else
		end
		return true
	end

	registerVal15.condition = __FUNC_3723_
	registerVal13 = {registerVal14, registerVal15}
	registerVal10:mergeStateConditions(registerVal13)
	local function __FUNC_37BC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:linkToElementModel(registerVal10, nil, true, __FUNC_37BC_)
	if registerVal10.m_eventHandlers.input_source_changed then
		local function __FUNC_38C9_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal10.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal10:registerEventHandler("input_source_changed", __FUNC_38C9_)
	else
		registerVal10:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, "LastInput")
	local function __FUNC_3953_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:subscribeToModel(registerVal13, __FUNC_3953_)
	registerVal2:addElement(registerVal10)
	registerVal2.Map = registerVal10
	registerVal11 = CoD.FooterButtonPrompt.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 845.250000, 985.250000)
	registerVal11:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal11.label:setText(Engine.Localize("CODCASTER_LOADOUT"))
	registerVal11.keyPrompt.keybind:setText(Engine.Localize("R"))
	local function __FUNC_3A6F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal11:subscribeToGlobalModel(arg1, "Controller", "alt2_button_image", __FUNC_3A6F_)
	registerVal14 = {}
	registerVal15 = {}
	registerVal15.stateName = "Enabled"
	local function __FUNC_3B47_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		if registerVal3 then
			registerVal3 = AlwaysTrue()
		end
		return registerVal3
	end

	registerVal15.condition = __FUNC_3B47_
	local registerVal16 = {}
	registerVal16.stateName = "EnabledPC"
	local function __FUNC_3BB7_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		if not registerVal3 then
			registerVal3 = ShouldHideButtonPromptForPC(arg2, arg1)
		else
		end
		return true
	end

	registerVal16.condition = __FUNC_3BB7_
	registerVal14 = {registerVal15, registerVal16}
	registerVal11:mergeStateConditions(registerVal14)
	local function __FUNC_3C50_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		arg0:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:linkToElementModel(registerVal11, nil, true, __FUNC_3C50_)
	if registerVal11.m_eventHandlers.input_source_changed then
		local function __FUNC_3D5D_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal11.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal11:registerEventHandler("input_source_changed", __FUNC_3D5D_)
	else
		registerVal11:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal15 = Engine.GetModelForController(arg1)
	registerVal14 = Engine.GetModel(registerVal15, "LastInput")
	local function __FUNC_3DE7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:subscribeToModel(registerVal14, __FUNC_3DE7_)
	registerVal2:addElement(registerVal11)
	registerVal2.LoadoutView = registerVal11
	registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, false, 345.250000, 462.250000)
	registerVal12:setTopBottom(false, false, -16.000000, 16.000000)
	registerVal12:setAlpha(0.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.spacer2 = registerVal12
	registerVal13 = CoD.CodCasterKeyboardShortcutButtonPrompt.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 1102.250000, 1242.250000)
	registerVal13:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.CodCasterKeyboardShortcutButtonPrompt0 = registerVal13
	registerVal14 = {}
	registerVal15 = {}
	local function __FUNC_3F03_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal4:completeAnimation()
		registerVal2.SelectPlayer:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.SelectPlayer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.HighlightPlayer:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.HighlightPlayer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.QuickSettingsSideBar:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.QuickSettingsSideBar:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.SettingsSideBar:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.SettingsSideBar:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Toolbar:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Toolbar:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Map:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Map:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.LoadoutView:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.LoadoutView:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal15.DefaultClip = __FUNC_3F03_
	registerVal14.DefaultState = registerVal15
	registerVal15 = {}
	local function __FUNC_432B_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal4:completeAnimation()
		registerVal2.SelectPlayer:setRGB(ColorSet.CodCaster.r, ColorSet.CodCaster.g, ColorSet.CodCaster.b)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.HighlightPlayer:setRGB(ColorSet.CodCaster.r, ColorSet.CodCaster.g, ColorSet.CodCaster.b)
		registerVal2.clipFinished(registerVal5, {})
		registerVal8:completeAnimation()
		registerVal2.SettingsSideBar:setRGB(ColorSet.CodCaster.r, ColorSet.CodCaster.g, ColorSet.CodCaster.b)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Toolbar:setRGB(ColorSet.CodCaster.r, ColorSet.CodCaster.g, ColorSet.CodCaster.b)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Map:setRGB(ColorSet.CodCaster.r, ColorSet.CodCaster.g, ColorSet.CodCaster.b)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.LoadoutView:setRGB(ColorSet.CodCaster.r, ColorSet.CodCaster.g, ColorSet.CodCaster.b)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal15.DefaultClip = __FUNC_432B_
	registerVal14.QuickSettingsSideBarOpened = registerVal15
	registerVal15 = {}
	local function __FUNC_4804_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal4:completeAnimation()
		registerVal2.SelectPlayer:setRGB(ColorSet.CodCaster.r, ColorSet.CodCaster.g, ColorSet.CodCaster.b)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.HighlightPlayer:setRGB(ColorSet.CodCaster.r, ColorSet.CodCaster.g, ColorSet.CodCaster.b)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.QuickSettingsSideBar:setRGB(ColorSet.CodCaster.r, ColorSet.CodCaster.g, ColorSet.CodCaster.b)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.SettingsSideBar:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Toolbar:setRGB(ColorSet.CodCaster.r, ColorSet.CodCaster.g, ColorSet.CodCaster.b)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Map:setRGB(ColorSet.CodCaster.r, ColorSet.CodCaster.g, ColorSet.CodCaster.b)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.LoadoutView:setRGB(ColorSet.CodCaster.r, ColorSet.CodCaster.g, ColorSet.CodCaster.b)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal15.DefaultClip = __FUNC_4804_
	registerVal14.SettingsSideBarOpened = registerVal15
	registerVal15 = {}
	local function __FUNC_4D4F_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal4:completeAnimation()
		registerVal2.SelectPlayer:setRGB(ColorSet.WaypointNeutral.r, ColorSet.WaypointNeutral.g, ColorSet.WaypointNeutral.b)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.HighlightPlayer:setRGB(ColorSet.WaypointNeutral.r, ColorSet.WaypointNeutral.g, ColorSet.WaypointNeutral.b)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.QuickSettingsSideBar:setRGB(0.370000, 0.370000, 0.360000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.SettingsSideBar:setRGB(ColorSet.CodCaster.r, ColorSet.CodCaster.g, ColorSet.CodCaster.b)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Toolbar:setRGB(ColorSet.WaypointNeutral.r, ColorSet.WaypointNeutral.g, ColorSet.WaypointNeutral.b)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Map:setRGB(ColorSet.CodCaster.r, ColorSet.CodCaster.g, ColorSet.CodCaster.b)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.LoadoutView:setRGB(ColorSet.CodCaster.r, ColorSet.CodCaster.g, ColorSet.CodCaster.b)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal15.DefaultClip = __FUNC_4D4F_
	registerVal14.ScoreboardOpened = registerVal15
	registerVal2.clipsPerState = registerVal14
	registerVal16 = {}
	local registerVal17 = {}
	registerVal17.stateName = "QuickSettingsSideBarOpened"
	local function __FUNC_52B5_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "CodCaster.showQuickSettingsSideBar", 1.000000)
	end

	registerVal17.condition = __FUNC_52B5_
	local registerVal18 = {}
	registerVal18.stateName = "SettingsSideBarOpened"
	local function __FUNC_5346_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "CodCaster.showSettingsSideBar", 1.000000)
	end

	registerVal18.condition = __FUNC_5346_
	local registerVal19 = {}
	registerVal19.stateName = "ScoreboardOpened"
	local function __FUNC_53D1_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
		return registerVal3
	end

	registerVal19.condition = __FUNC_53D1_
	registerVal16 = {registerVal17, registerVal18, registerVal19}
	registerVal2:mergeStateConditions(registerVal16)
	registerVal17 = Engine.GetModelForController(arg1)
	registerVal16 = Engine.GetModel(registerVal17, "CodCaster.showQuickSettingsSideBar")
	local function __FUNC_54A4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CodCaster.showQuickSettingsSideBar"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal16, __FUNC_54A4_)
	registerVal17 = Engine.GetModelForController(arg1)
	registerVal16 = Engine.GetModel(registerVal17, "CodCaster.showSettingsSideBar")
	local function __FUNC_55DC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CodCaster.showSettingsSideBar"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal16, __FUNC_55DC_)
	registerVal17 = Engine.GetModelForController(arg1)
	registerVal16 = Engine.GetModel(registerVal17, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN))
	local function __FUNC_570F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal16, __FUNC_570F_)
	local function __FUNC_589A_(arg0)
		arg0.SelectPlayer:close()
		arg0.HighlightPlayer:close()
		arg0.QuickSettingsSideBar:close()
		arg0.SettingsSideBar:close()
		arg0.Toolbar:close()
		arg0.Map:close()
		arg0.LoadoutView:close()
		arg0.CodCasterKeyboardShortcutButtonPrompt0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_589A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

