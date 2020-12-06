-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.FooterButtonPrompt")
local function __FUNC_219_(arg0, arg1, arg2)
	local function __FUNC_2B3_(arg1, arg2)
		local registerVal4 = {}
		registerVal4.name = "resize_prompt"
		arg0:processEvent(registerVal4)
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "setState", __FUNC_2B3_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.DemoPlaybackControlsButtons = registerVal2
local function __FUNC_32B_(arg0, arg1)
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
	registerVal2:setClass(CoD.DemoPlaybackControlsButtons)
	registerVal2.id = "DemoPlaybackControlsButtons"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1200.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = CoD.FooterButtonPrompt.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 102.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal3.label:setText(Engine.Localize("MENU_SELECT"))
	registerVal3.keyPrompt.keybind:setText(Engine.Localize("KEY_ENTER"))
	local function __FUNC_338F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "Controller", "primary_button_image", __FUNC_338F_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Enabled"
	local function __FUNC_3467_(arg0, arg2, arg3)
		return IsGamepad(arg1)
	end

	registerVal7.condition = __FUNC_3467_
	local registerVal8 = {}
	registerVal8.stateName = "EnabledPC"
	local function __FUNC_34B3_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		if not registerVal3 then
			registerVal3 = ShouldHideButtonPromptForPC(arg2, arg1, arg0)
		else
		end
		return true
	end

	registerVal8.condition = __FUNC_34B3_
	registerVal6 = {registerVal7, registerVal8}
	registerVal3:mergeStateConditions(registerVal6)
	local function __FUNC_3550_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:linkToElementModel(registerVal3, nil, true, __FUNC_3550_)
	if registerVal3.m_eventHandlers.input_source_changed then
		local function __FUNC_365D_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal3.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal3:registerEventHandler("input_source_changed", __FUNC_365D_)
	else
		registerVal3:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "LastInput")
	local function __FUNC_36E7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_36E7_)
	registerVal2:addElement(registerVal3)
	registerVal2.Select = registerVal3
	local registerVal4 = CoD.FooterButtonPrompt.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 102.000000, 218.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal4.label:setText(Engine.Localize("MENU_CONTROLS"))
	registerVal4.keyPrompt.keybind:setText(Engine.Localize("KEY_ARROWS"))
	local function __FUNC_3803_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "Controller", "dpad_all_button_image", __FUNC_3803_)
	registerVal7 = {}
	registerVal8 = {}
	registerVal8.stateName = "Enabled"
	local function __FUNC_38DB_(arg0, arg2, arg3)
		return IsGamepad(arg1)
	end

	registerVal8.condition = __FUNC_38DB_
	local registerVal9 = {}
	registerVal9.stateName = "EnabledPC"
	local function __FUNC_3927_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		if not registerVal3 then
			registerVal3 = ShouldHideButtonPromptForPC(arg2, arg1, arg0)
		else
		end
		return true
	end

	registerVal9.condition = __FUNC_3927_
	registerVal7 = {registerVal8, registerVal9}
	registerVal4:mergeStateConditions(registerVal7)
	local function __FUNC_39C4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:linkToElementModel(registerVal4, nil, true, __FUNC_39C4_)
	if registerVal4.m_eventHandlers.input_source_changed then
		local function __FUNC_3AD1_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal4.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal4:registerEventHandler("input_source_changed", __FUNC_3AD1_)
	else
		registerVal4:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "LastInput")
	local function __FUNC_3B5B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_3B5B_)
	registerVal2:addElement(registerVal4)
	registerVal2.Controls = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 218.000000, 238.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.alignment1 = registerVal5
	registerVal6 = CoD.FooterButtonPrompt.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 238.000000, 370.250000)
	registerVal6:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal6.label:setText(Engine.Localize("DEMO_CHOOSE_MODE"))
	registerVal6.keyPrompt.keybind:setText(Engine.Localize("M"))
	local function __FUNC_3C77_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "Controller", "alt1_button_image", __FUNC_3C77_)
	registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Enabled"
	local function __FUNC_3D4F_(arg0, arg2, arg3)
		return IsGamepad(arg1)
	end

	registerVal10.condition = __FUNC_3D4F_
	local registerVal11 = {}
	registerVal11.stateName = "EnabledPC"
	local function __FUNC_3D9B_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		if not registerVal3 then
			registerVal3 = ShouldHideButtonPromptForPC(arg2, arg1, arg0)
		else
		end
		return true
	end

	registerVal11.condition = __FUNC_3D9B_
	registerVal9 = {registerVal10, registerVal11}
	registerVal6:mergeStateConditions(registerVal9)
	local function __FUNC_3E38_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:linkToElementModel(registerVal6, nil, true, __FUNC_3E38_)
	if registerVal6.m_eventHandlers.input_source_changed then
		local function __FUNC_3F45_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal6.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal6:registerEventHandler("input_source_changed", __FUNC_3F45_)
	else
		registerVal6:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "LastInput")
	local function __FUNC_3FCF_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:subscribeToModel(registerVal9, __FUNC_3FCF_)
	registerVal2:addElement(registerVal6)
	registerVal2.ChooseMode = registerVal6
	registerVal7 = CoD.FooterButtonPrompt.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 370.250000, 479.250000)
	registerVal7:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal7.label:setText(Engine.Localize("MENU_DEMO_CONTROLS_PLAY_PAUSE"))
	registerVal7.keyPrompt.keybind:setText(Engine.Localize("H"))
	local function __FUNC_40EB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "Controller", "secondary_button_image", __FUNC_40EB_)
	registerVal10 = {}
	registerVal11 = {}
	registerVal11.stateName = "Enabled"
	local function __FUNC_41C3_(arg0, arg2, arg3)
		return IsGamepad(arg1)
	end

	registerVal11.condition = __FUNC_41C3_
	local registerVal12 = {}
	registerVal12.stateName = "EnabledPC"
	local function __FUNC_420F_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		if not registerVal3 then
			registerVal3 = ShouldHideButtonPromptForPC(arg2, arg1, arg0)
		else
		end
		return true
	end

	registerVal12.condition = __FUNC_420F_
	registerVal10 = {registerVal11, registerVal12}
	registerVal7:mergeStateConditions(registerVal10)
	local function __FUNC_42AC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:linkToElementModel(registerVal7, nil, true, __FUNC_42AC_)
	if registerVal7.m_eventHandlers.input_source_changed then
		local function __FUNC_43B9_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal7.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal7:registerEventHandler("input_source_changed", __FUNC_43B9_)
	else
		registerVal7:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "LastInput")
	local function __FUNC_4443_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:subscribeToModel(registerVal10, __FUNC_4443_)
	registerVal2:addElement(registerVal7)
	registerVal2.TogglePlayPause = registerVal7
	registerVal8 = CoD.FooterButtonPrompt.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 479.250000, 615.250000)
	registerVal8:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal8.label:setText(Engine.Localize("DEMO_CHANGE_CAMERA"))
	registerVal8.keyPrompt.keybind:setText(Engine.Localize("X"))
	local function __FUNC_455F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "Controller", "alt2_button_image", __FUNC_455F_)
	registerVal11 = {}
	registerVal12 = {}
	registerVal12.stateName = "Enabled"
	local function __FUNC_4637_(arg0, arg2, arg3)
		return IsGamepad(arg1)
	end

	registerVal12.condition = __FUNC_4637_
	local registerVal13 = {}
	registerVal13.stateName = "EnabledPC"
	local function __FUNC_4683_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		if not registerVal3 then
			registerVal3 = ShouldHideButtonPromptForPC(arg2, arg1, arg0)
		else
		end
		return true
	end

	registerVal13.condition = __FUNC_4683_
	registerVal11 = {registerVal12, registerVal13}
	registerVal8:mergeStateConditions(registerVal11)
	local function __FUNC_4720_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:linkToElementModel(registerVal8, nil, true, __FUNC_4720_)
	if registerVal8.m_eventHandlers.input_source_changed then
		local function __FUNC_482D_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal8.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal8:registerEventHandler("input_source_changed", __FUNC_482D_)
	else
		registerVal8:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "LastInput")
	local function __FUNC_48B7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_48B7_)
	registerVal2:addElement(registerVal8)
	registerVal2.ChangeCamera = registerVal8
	registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 615.250000, 635.250000)
	registerVal9:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal9:setAlpha(0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.alignment2 = registerVal9
	registerVal10 = CoD.FooterButtonPrompt.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 635.250000, 757.250000)
	registerVal10:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal10.label:setText(Engine.Localize("DEMO_JUMP_BACK"))
	registerVal10.keyPrompt.keybind:setText(Engine.Localize("Q"))
	local function __FUNC_49D3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "Controller", "left_trigger_button_image", __FUNC_49D3_)
	registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "Enabled"
	local function __FUNC_4AAB_(arg0, arg2, arg3)
		return IsGamepad(arg1)
	end

	registerVal14.condition = __FUNC_4AAB_
	local registerVal15 = {}
	registerVal15.stateName = "EnabledPC"
	local function __FUNC_4AF7_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		if not registerVal3 then
			registerVal3 = ShouldHideButtonPromptForPC(arg2, arg1, arg0)
		else
		end
		return true
	end

	registerVal15.condition = __FUNC_4AF7_
	registerVal13 = {registerVal14, registerVal15}
	registerVal10:mergeStateConditions(registerVal13)
	local function __FUNC_4B94_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:linkToElementModel(registerVal10, nil, true, __FUNC_4B94_)
	if registerVal10.m_eventHandlers.input_source_changed then
		local function __FUNC_4CA1_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal10.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal10:registerEventHandler("input_source_changed", __FUNC_4CA1_)
	else
		registerVal10:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, "LastInput")
	local function __FUNC_4D2B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:subscribeToModel(registerVal13, __FUNC_4D2B_)
	registerVal2:addElement(registerVal10)
	registerVal2.SkipBack = registerVal10
	registerVal11 = CoD.FooterButtonPrompt.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 757.250000, 887.750000)
	registerVal11:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal11.label:setText(Engine.Localize("DEMO_FAST_FORWARD"))
	registerVal11.keyPrompt.keybind:setText(Engine.Localize("E"))
	local function __FUNC_4E47_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal11:subscribeToGlobalModel(arg1, "Controller", "right_trigger_button_image", __FUNC_4E47_)
	registerVal14 = {}
	registerVal15 = {}
	registerVal15.stateName = "Enabled"
	local function __FUNC_4F1F_(arg0, arg2, arg3)
		return IsGamepad(arg1)
	end

	registerVal15.condition = __FUNC_4F1F_
	local registerVal16 = {}
	registerVal16.stateName = "EnabledPC"
	local function __FUNC_4F6B_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		if not registerVal3 then
			registerVal3 = ShouldHideButtonPromptForPC(arg2, arg1, arg0)
		else
		end
		return true
	end

	registerVal16.condition = __FUNC_4F6B_
	registerVal14 = {registerVal15, registerVal16}
	registerVal11:mergeStateConditions(registerVal14)
	local function __FUNC_5008_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		arg0:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:linkToElementModel(registerVal11, nil, true, __FUNC_5008_)
	if registerVal11.m_eventHandlers.input_source_changed then
		local function __FUNC_5115_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal11.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal11:registerEventHandler("input_source_changed", __FUNC_5115_)
	else
		registerVal11:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal15 = Engine.GetModelForController(arg1)
	registerVal14 = Engine.GetModel(registerVal15, "LastInput")
	local function __FUNC_519F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:subscribeToModel(registerVal14, __FUNC_519F_)
	registerVal2:addElement(registerVal11)
	registerVal2.FastForward = registerVal11
	registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 887.750000, 907.750000)
	registerVal12:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal12:setAlpha(0.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.alignment3 = registerVal12
	registerVal13 = CoD.FooterButtonPrompt.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 907.750000, 1047.750000)
	registerVal13:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal13.label:setText(Engine.Localize("DEMO_TOGGLE_CONTROLS"))
	registerVal13.keyPrompt.keybind:setText(Engine.Localize("T"))
	local function __FUNC_52BB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal13:subscribeToGlobalModel(arg1, "Controller", "left_stick_button_image", __FUNC_52BB_)
	registerVal16 = {}
	local registerVal17 = {}
	registerVal17.stateName = "Enabled"
	local function __FUNC_5393_(arg0, arg2, arg3)
		return IsGamepad(arg1)
	end

	registerVal17.condition = __FUNC_5393_
	local registerVal18 = {}
	registerVal18.stateName = "EnabledPC"
	local function __FUNC_53DF_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		if not registerVal3 then
			registerVal3 = ShouldHideButtonPromptForPC(arg2, arg1, arg0)
		else
		end
		return true
	end

	registerVal18.condition = __FUNC_53DF_
	registerVal16 = {registerVal17, registerVal18}
	registerVal13:mergeStateConditions(registerVal16)
	local function __FUNC_547C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		arg0:updateElementState(registerVal13, registerVal4)
	end

	registerVal13:linkToElementModel(registerVal13, nil, true, __FUNC_547C_)
	if registerVal13.m_eventHandlers.input_source_changed then
		local function __FUNC_5589_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal13.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal13:registerEventHandler("input_source_changed", __FUNC_5589_)
	else
		registerVal13:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal17 = Engine.GetModelForController(arg1)
	registerVal16 = Engine.GetModel(registerVal17, "LastInput")
	local function __FUNC_5613_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal13, registerVal4)
	end

	registerVal13:subscribeToModel(registerVal16, __FUNC_5613_)
	registerVal2:addElement(registerVal13)
	registerVal2.ToggleControls = registerVal13
	registerVal14 = CoD.FooterButtonPrompt.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 1047.750000, 1146.750000)
	registerVal14:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal14:setAlpha(0.000000)
	registerVal14.label:setText(Engine.Localize("DEMO_ADD_KEYFRAME"))
	registerVal14.keyPrompt.keybind:setText(Engine.Localize("F"))
	local function __FUNC_572F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal14:subscribeToGlobalModel(arg1, "Controller", "right_stick_button_image", __FUNC_572F_)
	registerVal17 = {}
	registerVal18 = {}
	registerVal18.stateName = "Enabled"
	local function __FUNC_5807_(arg0, arg2, arg3)
		return IsGamepad(arg1)
	end

	registerVal18.condition = __FUNC_5807_
	local registerVal19 = {}
	registerVal19.stateName = "EnabledPC"
	local function __FUNC_5853_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		if not registerVal3 then
			registerVal3 = ShouldHideButtonPromptForPC(arg2, arg1, arg0)
		else
		end
		return true
	end

	registerVal19.condition = __FUNC_5853_
	registerVal17 = {registerVal18, registerVal19}
	registerVal14:mergeStateConditions(registerVal17)
	local function __FUNC_58F0_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		arg0:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:linkToElementModel(registerVal14, nil, true, __FUNC_58F0_)
	if registerVal14.m_eventHandlers.input_source_changed then
		local function __FUNC_59FD_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal14.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal14:registerEventHandler("input_source_changed", __FUNC_59FD_)
	else
		registerVal14:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal18 = Engine.GetModelForController(arg1)
	registerVal17 = Engine.GetModel(registerVal18, "LastInput")
	local function __FUNC_5A87_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:subscribeToModel(registerVal17, __FUNC_5A87_)
	registerVal2:addElement(registerVal14)
	registerVal2.KeyFrameAction = registerVal14
	registerVal15 = CoD.FooterButtonPrompt.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 1146.750000, 1189.750000)
	registerVal15:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal15.label:setText(Engine.Localize(""))
	registerVal15.keyPrompt.keybind:setText(Engine.Localize(""))
	local function __FUNC_5BA3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal15:subscribeToGlobalModel(arg1, "Controller", "left_shoulder_button_image", __FUNC_5BA3_)
	registerVal18 = {}
	registerVal19 = {}
	registerVal19.stateName = "Enabled"
	local function __FUNC_5C7B_(arg0, arg2, arg3)
		return IsGamepad(arg1)
	end

	registerVal19.condition = __FUNC_5C7B_
	local registerVal20 = {}
	registerVal20.stateName = "DisabledPC"
	local function __FUNC_5CC7_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal20.condition = __FUNC_5CC7_
	local registerVal21 = {}
	registerVal21.stateName = "EnabledPC"
	local function __FUNC_5D11_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal21.condition = __FUNC_5D11_
	registerVal18 = {registerVal19, registerVal20, registerVal21}
	registerVal15:mergeStateConditions(registerVal18)
	local function __FUNC_5D5D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		arg0:updateElementState(registerVal15, registerVal4)
	end

	registerVal15:linkToElementModel(registerVal15, nil, true, __FUNC_5D5D_)
	if registerVal15.m_eventHandlers.input_source_changed then
		local function __FUNC_5E69_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal15.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal15:registerEventHandler("input_source_changed", __FUNC_5E69_)
	else
		registerVal15:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal19 = Engine.GetModelForController(arg1)
	registerVal18 = Engine.GetModel(registerVal19, "LastInput")
	local function __FUNC_5EF3_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal15, registerVal4)
	end

	registerVal15:subscribeToModel(registerVal18, __FUNC_5EF3_)
	registerVal2:addElement(registerVal15)
	registerVal2.LB = registerVal15
	registerVal16 = CoD.FooterButtonPrompt.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, 1189.750000, 1232.750000)
	registerVal16:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal16.label:setText(Engine.Localize("DEMO_CAMERA_DOWN_UP"))
	registerVal16.keyPrompt.keybind:setText(Engine.Localize("PLATFORM_BIND_DEMO_CAMARA_DOWN_UP"))
	local function __FUNC_600F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal16:subscribeToGlobalModel(arg1, "Controller", "right_shoulder_button_image", __FUNC_600F_)
	registerVal19 = {}
	registerVal20 = {}
	registerVal20.stateName = "Enabled"
	local function __FUNC_60E7_(arg0, arg2, arg3)
		return IsGamepad(arg1)
	end

	registerVal20.condition = __FUNC_60E7_
	registerVal21 = {}
	registerVal21.stateName = "EnabledPC"
	local function __FUNC_6133_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		if not registerVal3 then
			registerVal3 = ShouldHideButtonPromptForPC(arg2, arg1, arg0)
		else
		end
		return true
	end

	registerVal21.condition = __FUNC_6133_
	registerVal19 = {registerVal20, registerVal21}
	registerVal16:mergeStateConditions(registerVal19)
	local function __FUNC_61D0_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		arg0:updateElementState(registerVal16, registerVal4)
	end

	registerVal16:linkToElementModel(registerVal16, nil, true, __FUNC_61D0_)
	if registerVal16.m_eventHandlers.input_source_changed then
		local function __FUNC_62DD_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal16.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal16:registerEventHandler("input_source_changed", __FUNC_62DD_)
	else
		registerVal16:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal20 = Engine.GetModelForController(arg1)
	registerVal19 = Engine.GetModel(registerVal20, "LastInput")
	local function __FUNC_6367_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal16, registerVal4)
	end

	registerVal16:subscribeToModel(registerVal19, __FUNC_6367_)
	registerVal2:addElement(registerVal16)
	registerVal2.RBHint = registerVal16
	registerVal17 = {}
	registerVal18 = {}
	local function __FUNC_6483_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal18.DefaultClip = __FUNC_6483_
	registerVal17.DefaultState = registerVal18
	registerVal18 = {}
	local function __FUNC_64E2_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal6:completeAnimation()
		registerVal2.ChooseMode:setLeftRight(true, false, 235.000000, 367.250000)
		registerVal2.ChooseMode:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ChooseMode:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.TogglePlayPause:setLeftRight(true, false, 367.250000, 488.250000)
		registerVal2.TogglePlayPause:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.TogglePlayPause:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.ChangeCamera:setLeftRight(true, false, 508.250000, 644.250000)
		registerVal2.ChangeCamera:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ChangeCamera:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.SkipBack:setLeftRight(true, false, 229.000000, 351.000000)
		registerVal2.SkipBack:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.SkipBack:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FastForward:setLeftRight(true, false, 766.250000, 896.750000)
		registerVal2.FastForward:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.FastForward:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.ToggleControls:setLeftRight(true, false, 357.750000, 497.750000)
		registerVal2.ToggleControls:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ToggleControls:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.KeyFrameAction:setLeftRight(true, false, 1039.750000, 1164.750000)
		registerVal2.KeyFrameAction:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.KeyFrameAction:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.LB:setLeftRight(true, false, 1027.250000, 1070.250000)
		registerVal2.LB:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.LB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.RBHint:setLeftRight(true, false, 1059.250000, 1102.250000)
		registerVal2.RBHint:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.RBHint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_64E2_
	registerVal17.PlaybackMode = registerVal18
	registerVal18 = {}
	local function __FUNC_6BFF_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal6:completeAnimation()
		registerVal2.ChooseMode:setLeftRight(true, false, 235.000000, 367.250000)
		registerVal2.ChooseMode:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ChooseMode:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal7.label:completeAnimation()
		registerVal2.TogglePlayPause:setLeftRight(true, false, 367.250000, 488.250000)
		registerVal2.TogglePlayPause:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.TogglePlayPause:setAlpha(1.000000)
		registerVal2.TogglePlayPause.label:setText(Engine.Localize("MENU_DEMO_CONTROLS_PLAY_PAUSE"))
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.ChangeCamera:setLeftRight(true, false, 508.250000, 644.250000)
		registerVal2.ChangeCamera:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ChangeCamera:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.SkipBack:setLeftRight(true, false, 644.250000, 766.250000)
		registerVal2.SkipBack:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.SkipBack:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FastForward:setLeftRight(true, false, 766.250000, 896.750000)
		registerVal2.FastForward:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.FastForward:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.ToggleControls:setLeftRight(true, false, 896.750000, 1036.750000)
		registerVal2.ToggleControls:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ToggleControls:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.KeyFrameAction:setLeftRight(true, false, 1039.750000, 1164.750000)
		registerVal2.KeyFrameAction:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.KeyFrameAction:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.LB:setLeftRight(true, false, 1027.250000, 1070.250000)
		registerVal2.LB:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.LB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.RBHint:setLeftRight(true, false, 1059.250000, 1102.250000)
		registerVal2.RBHint:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.RBHint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_6BFF_
	registerVal17.BasicMode = registerVal18
	registerVal18 = {}
	local function __FUNC_73C9_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal6:completeAnimation()
		registerVal2.ChooseMode:setLeftRight(true, false, 235.000000, 367.250000)
		registerVal2.ChooseMode:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ChooseMode:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.TogglePlayPause:setLeftRight(true, false, 367.250000, 488.250000)
		registerVal2.TogglePlayPause:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.TogglePlayPause:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.ChangeCamera:setLeftRight(true, false, 508.250000, 644.250000)
		registerVal2.ChangeCamera:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ChangeCamera:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.SkipBack:setLeftRight(true, false, 644.250000, 766.250000)
		registerVal2.SkipBack:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.SkipBack:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FastForward:setLeftRight(true, false, 766.250000, 896.750000)
		registerVal2.FastForward:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.FastForward:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.ToggleControls:setLeftRight(true, false, 896.750000, 1036.750000)
		registerVal2.ToggleControls:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ToggleControls:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.KeyFrameAction:setLeftRight(true, false, 1039.750000, 1164.750000)
		registerVal2.KeyFrameAction:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.KeyFrameAction:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.LB:setLeftRight(true, false, 1027.250000, 1070.250000)
		registerVal2.LB:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.LB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.RBHint:setLeftRight(true, false, 1059.250000, 1102.250000)
		registerVal2.RBHint:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.RBHint:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_73C9_
	registerVal17.BasicModeFreeCamera = registerVal18
	registerVal18 = {}
	local function __FUNC_7AD8_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal6:completeAnimation()
		registerVal2.ChooseMode:setLeftRight(true, false, 235.000000, 367.250000)
		registerVal2.ChooseMode:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ChooseMode:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal7.label:completeAnimation()
		registerVal2.TogglePlayPause:setLeftRight(true, false, 367.250000, 488.250000)
		registerVal2.TogglePlayPause:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.TogglePlayPause:setAlpha(1.000000)
		registerVal2.TogglePlayPause.label:setText(Engine.Localize("MENU_DEMO_CONTROLS_PLAY_PAUSE"))
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.ChangeCamera:setLeftRight(true, false, 508.250000, 644.250000)
		registerVal2.ChangeCamera:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ChangeCamera:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.SkipBack:setLeftRight(true, false, 510.250000, 632.250000)
		registerVal2.SkipBack:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.SkipBack:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FastForward:setLeftRight(true, false, 632.250000, 762.750000)
		registerVal2.FastForward:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.FastForward:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.ToggleControls:setLeftRight(true, false, 762.750000, 902.750000)
		registerVal2.ToggleControls:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ToggleControls:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal14.label:completeAnimation()
		registerVal2.KeyFrameAction:setLeftRight(true, false, 900.250000, 1025.250000)
		registerVal2.KeyFrameAction:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.KeyFrameAction:setRGB(ColorSet.White.r, ColorSet.White.g, ColorSet.White.b)
		registerVal2.KeyFrameAction:setAlpha(1.000000)
		registerVal2.KeyFrameAction.label:setText(Engine.Localize("DEMO_ADD_KEYFRAME"))
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.LB:setLeftRight(true, false, 1027.250000, 1070.250000)
		registerVal2.LB:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.LB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.RBHint:setLeftRight(true, false, 1059.250000, 1102.250000)
		registerVal2.RBHint:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.RBHint:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_7AD8_
	registerVal17.DirectorMode = registerVal18
	registerVal18 = {}
	local function __FUNC_83D7_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal6:completeAnimation()
		registerVal2.ChooseMode:setLeftRight(true, false, 235.000000, 367.250000)
		registerVal2.ChooseMode:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ChooseMode:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal7.label:completeAnimation()
		registerVal2.TogglePlayPause:setLeftRight(true, false, 367.250000, 488.250000)
		registerVal2.TogglePlayPause:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.TogglePlayPause:setAlpha(1.000000)
		registerVal2.TogglePlayPause.label:setText(Engine.Localize("MENU_DEMO_CONTROLS_PLAY_PAUSE"))
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.ChangeCamera:setLeftRight(true, false, 508.250000, 644.250000)
		registerVal2.ChangeCamera:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ChangeCamera:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.SkipBack:setLeftRight(true, false, 510.250000, 632.250000)
		registerVal2.SkipBack:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.SkipBack:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FastForward:setLeftRight(true, false, 632.250000, 762.750000)
		registerVal2.FastForward:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.FastForward:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.ToggleControls:setLeftRight(true, false, 762.750000, 902.750000)
		registerVal2.ToggleControls:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ToggleControls:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal14.label:completeAnimation()
		registerVal2.KeyFrameAction:setLeftRight(true, false, 900.250000, 1025.250000)
		registerVal2.KeyFrameAction:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.KeyFrameAction:setRGB(ColorSet.White.r, ColorSet.White.g, ColorSet.White.b)
		registerVal2.KeyFrameAction:setAlpha(1.000000)
		registerVal2.KeyFrameAction.label:setText(Engine.Localize("DEMO_START_AUTO_DOLLY"))
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.LB:setLeftRight(true, false, 1027.250000, 1070.250000)
		registerVal2.LB:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.LB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.RBHint:setLeftRight(true, false, 1059.250000, 1102.250000)
		registerVal2.RBHint:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.RBHint:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_83D7_
	registerVal17.DirectorModeStartAutoDolly = registerVal18
	registerVal18 = {}
	local function __FUNC_8CD7_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal6:completeAnimation()
		registerVal2.ChooseMode:setLeftRight(true, false, 235.000000, 367.250000)
		registerVal2.ChooseMode:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ChooseMode:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal7.label:completeAnimation()
		registerVal2.TogglePlayPause:setLeftRight(true, false, 367.250000, 488.250000)
		registerVal2.TogglePlayPause:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.TogglePlayPause:setAlpha(1.000000)
		registerVal2.TogglePlayPause.label:setText(Engine.Localize("MENU_DEMO_CONTROLS_PLAY_PAUSE"))
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.ChangeCamera:setLeftRight(true, false, 508.250000, 644.250000)
		registerVal2.ChangeCamera:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ChangeCamera:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.SkipBack:setLeftRight(true, false, 510.250000, 632.250000)
		registerVal2.SkipBack:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.SkipBack:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FastForward:setLeftRight(true, false, 632.250000, 762.750000)
		registerVal2.FastForward:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.FastForward:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.ToggleControls:setLeftRight(true, false, 762.750000, 902.750000)
		registerVal2.ToggleControls:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ToggleControls:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal14.label:completeAnimation()
		registerVal2.KeyFrameAction:setLeftRight(true, false, 900.250000, 1025.250000)
		registerVal2.KeyFrameAction:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.KeyFrameAction:setRGB(ColorSet.White.r, ColorSet.White.g, ColorSet.White.b)
		registerVal2.KeyFrameAction:setAlpha(1.000000)
		registerVal2.KeyFrameAction.label:setText(Engine.Localize("DEMO_STOP_AUTO_DOLLY"))
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.LB:setLeftRight(true, false, 1027.250000, 1070.250000)
		registerVal2.LB:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.LB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.RBHint:setLeftRight(true, false, 1059.250000, 1102.250000)
		registerVal2.RBHint:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.RBHint:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_8CD7_
	registerVal17.DirectorModeStopAutoDolly = registerVal18
	registerVal18 = {}
	local function __FUNC_95D6_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal6:completeAnimation()
		registerVal2.ChooseMode:setLeftRight(true, false, 235.000000, 367.250000)
		registerVal2.ChooseMode:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ChooseMode:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal7.label:completeAnimation()
		registerVal2.TogglePlayPause:setLeftRight(true, false, 367.250000, 488.250000)
		registerVal2.TogglePlayPause:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.TogglePlayPause:setAlpha(1.000000)
		registerVal2.TogglePlayPause.label:setText(Engine.Localize("MENU_DEMO_CONTROLS_PLAY_PAUSE"))
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.ChangeCamera:setLeftRight(true, false, 508.250000, 644.250000)
		registerVal2.ChangeCamera:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ChangeCamera:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.SkipBack:setLeftRight(true, false, 510.250000, 632.250000)
		registerVal2.SkipBack:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.SkipBack:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FastForward:setLeftRight(true, false, 632.250000, 762.750000)
		registerVal2.FastForward:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.FastForward:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.ToggleControls:setLeftRight(true, false, 762.750000, 902.750000)
		registerVal2.ToggleControls:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ToggleControls:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal14.label:completeAnimation()
		registerVal2.KeyFrameAction:setLeftRight(true, false, 900.250000, 1025.250000)
		registerVal2.KeyFrameAction:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.KeyFrameAction:setRGB(ColorSet.White.r, ColorSet.White.g, ColorSet.White.b)
		registerVal2.KeyFrameAction:setAlpha(1.000000)
		registerVal2.KeyFrameAction.label:setText(Engine.Localize("DEMO_EDIT_KEYFRAME"))
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.LB:setLeftRight(true, false, 1027.250000, 1070.250000)
		registerVal2.LB:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.LB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.RBHint:setLeftRight(true, false, 1059.250000, 1102.250000)
		registerVal2.RBHint:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.RBHint:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_95D6_
	registerVal17.DirectorModeEditKeyFrame = registerVal18
	registerVal18 = {}
	local function __FUNC_9ED4_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal6:completeAnimation()
		registerVal2.ChooseMode:setLeftRight(true, false, 235.000000, 367.250000)
		registerVal2.ChooseMode:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ChooseMode:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.TogglePlayPause:setLeftRight(true, false, 367.250000, 488.250000)
		registerVal2.TogglePlayPause:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.TogglePlayPause:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.ChangeCamera:setLeftRight(true, false, 508.250000, 644.250000)
		registerVal2.ChangeCamera:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ChangeCamera:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.SkipBack:setLeftRight(true, false, 644.250000, 766.250000)
		registerVal2.SkipBack:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.SkipBack:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FastForward:setLeftRight(true, false, 766.250000, 896.750000)
		registerVal2.FastForward:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.FastForward:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.ToggleControls:setLeftRight(true, false, 229.000000, 369.000000)
		registerVal2.ToggleControls:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ToggleControls:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal14.label:completeAnimation()
		registerVal2.KeyFrameAction:setLeftRight(true, false, 367.250000, 492.250000)
		registerVal2.KeyFrameAction:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.KeyFrameAction:setRGB(ColorSet.White.r, ColorSet.White.g, ColorSet.White.b)
		registerVal2.KeyFrameAction:setAlpha(1.000000)
		registerVal2.KeyFrameAction.label:setText(Engine.Localize("DEMO_EXIT_EDIT_KEYFRAME"))
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.LB:setLeftRight(true, false, 1027.250000, 1070.250000)
		registerVal2.LB:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.LB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.RBHint:setLeftRight(true, false, 1059.250000, 1102.250000)
		registerVal2.RBHint:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.RBHint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_9ED4_
	registerVal17.DirectorModeEditingKeyFrame = registerVal18
	registerVal18 = {}
	local function __FUNC_A759_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal6:completeAnimation()
		registerVal2.ChooseMode:setLeftRight(true, false, 235.000000, 367.250000)
		registerVal2.ChooseMode:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ChooseMode:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal7.label:completeAnimation()
		registerVal2.TogglePlayPause:setLeftRight(true, false, 229.000000, 350.000000)
		registerVal2.TogglePlayPause:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.TogglePlayPause:setAlpha(1.000000)
		registerVal2.TogglePlayPause.label:setText(Engine.Localize("MENU_CANCEL"))
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.ChangeCamera:setLeftRight(true, false, 508.250000, 644.250000)
		registerVal2.ChangeCamera:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ChangeCamera:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.SkipBack:setLeftRight(true, false, 644.250000, 766.250000)
		registerVal2.SkipBack:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.SkipBack:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FastForward:setLeftRight(true, false, 766.250000, 896.750000)
		registerVal2.FastForward:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.FastForward:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.ToggleControls:setLeftRight(true, false, 333.750000, 473.750000)
		registerVal2.ToggleControls:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ToggleControls:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal14.label:completeAnimation()
		registerVal2.KeyFrameAction:setLeftRight(true, false, 486.750000, 611.750000)
		registerVal2.KeyFrameAction:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.KeyFrameAction:setRGB(ColorSet.White.r, ColorSet.White.g, ColorSet.White.b)
		registerVal2.KeyFrameAction:setAlpha(1.000000)
		registerVal2.KeyFrameAction.label:setText(Engine.Localize("DEMO_PLACE_KEYFRAME"))
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.LB:setLeftRight(true, false, 630.250000, 673.250000)
		registerVal2.LB:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.LB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.RBHint:setLeftRight(true, false, 662.250000, 705.250000)
		registerVal2.RBHint:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.RBHint:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_A759_
	registerVal17.DirectorModeMoveKeyFrame = registerVal18
	registerVal18 = {}
	local function __FUNC_B04C_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal6:completeAnimation()
		registerVal2.ChooseMode:setLeftRight(true, false, 235.000000, 367.250000)
		registerVal2.ChooseMode:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ChooseMode:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal7.label:completeAnimation()
		registerVal2.TogglePlayPause:setLeftRight(true, false, 367.250000, 488.250000)
		registerVal2.TogglePlayPause:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.TogglePlayPause:setAlpha(1.000000)
		registerVal2.TogglePlayPause.label:setText(Engine.Localize("MENU_DEMO_CONTROLS_PLAY_PAUSE"))
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.ChangeCamera:setLeftRight(true, false, 508.250000, 644.250000)
		registerVal2.ChangeCamera:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ChangeCamera:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.SkipBack:setLeftRight(true, false, 510.250000, 632.250000)
		registerVal2.SkipBack:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.SkipBack:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FastForward:setLeftRight(true, false, 632.250000, 762.750000)
		registerVal2.FastForward:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.FastForward:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.ToggleControls:setLeftRight(true, false, 762.750000, 902.750000)
		registerVal2.ToggleControls:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ToggleControls:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal14.label:completeAnimation()
		registerVal2.KeyFrameAction:setLeftRight(true, false, 900.250000, 1025.250000)
		registerVal2.KeyFrameAction:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.KeyFrameAction:setRGB(ColorSet.Disabled.r, ColorSet.Disabled.g, ColorSet.Disabled.b)
		registerVal2.KeyFrameAction:setAlpha(1.000000)
		registerVal2.KeyFrameAction.label:setText(Engine.Localize("DEMO_LINK_TO_OBJECT"))
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.LB:setLeftRight(true, false, 1027.250000, 1070.250000)
		registerVal2.LB:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.LB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.RBHint:setLeftRight(true, false, 1059.250000, 1102.250000)
		registerVal2.RBHint:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.RBHint:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_B04C_
	registerVal17.ObjectLinkMode = registerVal18
	registerVal18 = {}
	local function __FUNC_B950_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal6:completeAnimation()
		registerVal2.ChooseMode:setLeftRight(true, false, 235.000000, 367.250000)
		registerVal2.ChooseMode:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ChooseMode:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal7.label:completeAnimation()
		registerVal2.TogglePlayPause:setLeftRight(true, false, 367.250000, 488.250000)
		registerVal2.TogglePlayPause:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.TogglePlayPause:setAlpha(1.000000)
		registerVal2.TogglePlayPause.label:setText(Engine.Localize("MENU_DEMO_CONTROLS_PLAY_PAUSE"))
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.ChangeCamera:setLeftRight(true, false, 508.250000, 644.250000)
		registerVal2.ChangeCamera:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ChangeCamera:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.SkipBack:setLeftRight(true, false, 510.250000, 632.250000)
		registerVal2.SkipBack:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.SkipBack:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FastForward:setLeftRight(true, false, 632.250000, 762.750000)
		registerVal2.FastForward:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.FastForward:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.ToggleControls:setLeftRight(true, false, 762.750000, 902.750000)
		registerVal2.ToggleControls:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ToggleControls:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal14.label:completeAnimation()
		registerVal2.KeyFrameAction:setLeftRight(true, false, 900.250000, 1025.250000)
		registerVal2.KeyFrameAction:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.KeyFrameAction:setRGB(ColorSet.White.r, ColorSet.White.g, ColorSet.White.b)
		registerVal2.KeyFrameAction:setAlpha(1.000000)
		registerVal2.KeyFrameAction.label:setText(Engine.Localize("DEMO_LINK_TO_OBJECT"))
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.LB:setLeftRight(true, false, 1027.250000, 1070.250000)
		registerVal2.LB:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.LB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.RBHint:setLeftRight(true, false, 1059.250000, 1102.250000)
		registerVal2.RBHint:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.RBHint:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_B950_
	registerVal17.ObjectLinkModeLinkToObject = registerVal18
	registerVal18 = {}
	local function __FUNC_C251_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal6:completeAnimation()
		registerVal2.ChooseMode:setLeftRight(true, false, 235.000000, 367.250000)
		registerVal2.ChooseMode:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ChooseMode:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal7.label:completeAnimation()
		registerVal2.TogglePlayPause:setLeftRight(true, false, 367.250000, 488.250000)
		registerVal2.TogglePlayPause:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.TogglePlayPause:setAlpha(1.000000)
		registerVal2.TogglePlayPause.label:setText(Engine.Localize("MENU_DEMO_CONTROLS_PLAY_PAUSE"))
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.ChangeCamera:setLeftRight(true, false, 508.250000, 644.250000)
		registerVal2.ChangeCamera:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ChangeCamera:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.SkipBack:setLeftRight(true, false, 510.250000, 632.250000)
		registerVal2.SkipBack:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.SkipBack:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FastForward:setLeftRight(true, false, 632.250000, 762.750000)
		registerVal2.FastForward:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.FastForward:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.ToggleControls:setLeftRight(true, false, 762.750000, 902.750000)
		registerVal2.ToggleControls:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ToggleControls:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal14.label:completeAnimation()
		registerVal2.KeyFrameAction:setLeftRight(true, false, 900.250000, 1025.250000)
		registerVal2.KeyFrameAction:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.KeyFrameAction:setRGB(ColorSet.White.r, ColorSet.White.g, ColorSet.White.b)
		registerVal2.KeyFrameAction:setAlpha(1.000000)
		registerVal2.KeyFrameAction.label:setText(Engine.Localize("DEMO_UNLINK_OBJECT"))
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.LB:setLeftRight(true, false, 1027.250000, 1070.250000)
		registerVal2.LB:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.LB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.RBHint:setLeftRight(true, false, 1059.250000, 1102.250000)
		registerVal2.RBHint:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.RBHint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_C251_
	registerVal17.ObjectLinkModeUnlinkObject = registerVal18
	registerVal18 = {}
	local function __FUNC_CB50_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal6:completeAnimation()
		registerVal2.ChooseMode:setLeftRight(true, false, 235.000000, 367.250000)
		registerVal2.ChooseMode:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ChooseMode:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal7.label:completeAnimation()
		registerVal2.TogglePlayPause:setLeftRight(true, false, 367.250000, 488.250000)
		registerVal2.TogglePlayPause:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.TogglePlayPause:setAlpha(1.000000)
		registerVal2.TogglePlayPause.label:setText(Engine.Localize("MENU_DEMO_CONTROLS_PLAY_PAUSE"))
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.ChangeCamera:setLeftRight(true, false, 508.250000, 644.250000)
		registerVal2.ChangeCamera:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ChangeCamera:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.SkipBack:setLeftRight(true, false, 510.250000, 632.250000)
		registerVal2.SkipBack:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.SkipBack:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FastForward:setLeftRight(true, false, 632.250000, 762.750000)
		registerVal2.FastForward:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.FastForward:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.ToggleControls:setLeftRight(true, false, 762.750000, 902.750000)
		registerVal2.ToggleControls:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ToggleControls:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal14.label:completeAnimation()
		registerVal2.KeyFrameAction:setLeftRight(true, false, 900.250000, 1025.250000)
		registerVal2.KeyFrameAction:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.KeyFrameAction:setRGB(ColorSet.White.r, ColorSet.White.g, ColorSet.White.b)
		registerVal2.KeyFrameAction:setAlpha(1.000000)
		registerVal2.KeyFrameAction.label:setText(Engine.Localize("DEMO_ADD_LIGHT"))
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.LB:setLeftRight(true, false, 1027.250000, 1070.250000)
		registerVal2.LB:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.LB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.RBHint:setLeftRight(true, false, 1059.250000, 1102.250000)
		registerVal2.RBHint:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.RBHint:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_CB50_
	registerVal17.LighterMode = registerVal18
	registerVal18 = {}
	local function __FUNC_D44C_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal6:completeAnimation()
		registerVal2.ChooseMode:setLeftRight(true, false, 235.000000, 367.250000)
		registerVal2.ChooseMode:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ChooseMode:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal7.label:completeAnimation()
		registerVal2.TogglePlayPause:setLeftRight(true, false, 367.250000, 488.250000)
		registerVal2.TogglePlayPause:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.TogglePlayPause:setAlpha(1.000000)
		registerVal2.TogglePlayPause.label:setText(Engine.Localize("MENU_DEMO_CONTROLS_PLAY_PAUSE"))
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.ChangeCamera:setLeftRight(true, false, 508.250000, 644.250000)
		registerVal2.ChangeCamera:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ChangeCamera:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.SkipBack:setLeftRight(true, false, 510.250000, 632.250000)
		registerVal2.SkipBack:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.SkipBack:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FastForward:setLeftRight(true, false, 632.250000, 762.750000)
		registerVal2.FastForward:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.FastForward:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.ToggleControls:setLeftRight(true, false, 762.750000, 902.750000)
		registerVal2.ToggleControls:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ToggleControls:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal14.label:completeAnimation()
		registerVal2.KeyFrameAction:setLeftRight(true, false, 900.250000, 1025.250000)
		registerVal2.KeyFrameAction:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.KeyFrameAction:setRGB(ColorSet.White.r, ColorSet.White.g, ColorSet.White.b)
		registerVal2.KeyFrameAction:setAlpha(1.000000)
		registerVal2.KeyFrameAction.label:setText(Engine.Localize("DEMO_EDIT_LIGHT"))
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.LB:setLeftRight(true, false, 1027.250000, 1070.250000)
		registerVal2.LB:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.LB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.RBHint:setLeftRight(true, false, 1059.250000, 1102.250000)
		registerVal2.RBHint:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.RBHint:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_D44C_
	registerVal17.LighterModeEditLight = registerVal18
	registerVal18 = {}
	local function __FUNC_DD49_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal6:completeAnimation()
		registerVal2.ChooseMode:setLeftRight(true, false, 235.000000, 367.250000)
		registerVal2.ChooseMode:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ChooseMode:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.TogglePlayPause:setLeftRight(true, false, 367.250000, 488.250000)
		registerVal2.TogglePlayPause:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.TogglePlayPause:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.ChangeCamera:setLeftRight(true, false, 508.250000, 644.250000)
		registerVal2.ChangeCamera:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ChangeCamera:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.SkipBack:setLeftRight(true, false, 510.250000, 632.250000)
		registerVal2.SkipBack:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.SkipBack:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FastForward:setLeftRight(true, false, 766.250000, 896.750000)
		registerVal2.FastForward:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.FastForward:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.ToggleControls:setLeftRight(true, false, 229.000000, 369.000000)
		registerVal2.ToggleControls:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ToggleControls:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal14.label:completeAnimation()
		registerVal2.KeyFrameAction:setLeftRight(true, false, 367.250000, 492.250000)
		registerVal2.KeyFrameAction:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.KeyFrameAction:setRGB(ColorSet.White.r, ColorSet.White.g, ColorSet.White.b)
		registerVal2.KeyFrameAction:setAlpha(1.000000)
		registerVal2.KeyFrameAction.label:setText(Engine.Localize("DEMO_EXIT_EDIT_LIGHT"))
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.LB:setLeftRight(true, false, 1027.250000, 1070.250000)
		registerVal2.LB:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.LB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.RBHint:setLeftRight(true, false, 1059.250000, 1102.250000)
		registerVal2.RBHint:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.RBHint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_DD49_
	registerVal17.LighterModeEditingLight = registerVal18
	registerVal18 = {}
	local function __FUNC_E5D4_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal6:completeAnimation()
		registerVal2.ChooseMode:setLeftRight(true, false, 235.000000, 367.250000)
		registerVal2.ChooseMode:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ChooseMode:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal7.label:completeAnimation()
		registerVal2.TogglePlayPause:setLeftRight(true, false, 229.000000, 350.000000)
		registerVal2.TogglePlayPause:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.TogglePlayPause:setAlpha(1.000000)
		registerVal2.TogglePlayPause.label:setText(Engine.Localize("MENU_CANCEL"))
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.ChangeCamera:setLeftRight(true, false, 508.250000, 644.250000)
		registerVal2.ChangeCamera:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ChangeCamera:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.SkipBack:setLeftRight(true, false, 644.250000, 766.250000)
		registerVal2.SkipBack:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.SkipBack:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FastForward:setLeftRight(true, false, 766.250000, 896.750000)
		registerVal2.FastForward:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.FastForward:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.ToggleControls:setLeftRight(true, false, 333.750000, 473.750000)
		registerVal2.ToggleControls:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ToggleControls:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal14.label:completeAnimation()
		registerVal2.KeyFrameAction:setLeftRight(true, false, 486.750000, 611.750000)
		registerVal2.KeyFrameAction:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.KeyFrameAction:setRGB(ColorSet.White.r, ColorSet.White.g, ColorSet.White.b)
		registerVal2.KeyFrameAction:setAlpha(1.000000)
		registerVal2.KeyFrameAction.label:setText(Engine.Localize("DEMO_PLACE_LIGHT"))
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.LB:setLeftRight(true, false, 630.250000, 673.250000)
		registerVal2.LB:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.LB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.RBHint:setLeftRight(true, false, 662.250000, 705.250000)
		registerVal2.RBHint:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.RBHint:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_E5D4_
	registerVal17.LighterModeMoveLight = registerVal18
	registerVal18 = {}
	local function __FUNC_EEC5_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal6:completeAnimation()
		registerVal2.ChooseMode:setLeftRight(true, false, 235.000000, 367.250000)
		registerVal2.ChooseMode:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ChooseMode:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal7.label:completeAnimation()
		registerVal2.TogglePlayPause:setLeftRight(true, false, 229.000000, 350.000000)
		registerVal2.TogglePlayPause:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.TogglePlayPause:setAlpha(1.000000)
		registerVal2.TogglePlayPause.label:setText(Engine.Localize("MENU_CANCEL"))
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.ChangeCamera:setLeftRight(true, false, 508.250000, 644.250000)
		registerVal2.ChangeCamera:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ChangeCamera:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.SkipBack:setLeftRight(true, false, 644.250000, 766.250000)
		registerVal2.SkipBack:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.SkipBack:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FastForward:setLeftRight(true, false, 766.250000, 896.750000)
		registerVal2.FastForward:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.FastForward:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.ToggleControls:setLeftRight(true, false, 333.750000, 473.750000)
		registerVal2.ToggleControls:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ToggleControls:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal14.label:completeAnimation()
		registerVal2.KeyFrameAction:setLeftRight(true, false, 486.750000, 611.750000)
		registerVal2.KeyFrameAction:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.KeyFrameAction:setRGB(ColorSet.White.r, ColorSet.White.g, ColorSet.White.b)
		registerVal2.KeyFrameAction:setAlpha(0.000000)
		registerVal2.KeyFrameAction.label:setText(Engine.Localize("DEMO_PLACE_LIGHT"))
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.LB:setLeftRight(true, false, 630.250000, 673.250000)
		registerVal2.LB:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.LB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.RBHint:setLeftRight(true, false, 662.250000, 705.250000)
		registerVal2.RBHint:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.RBHint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_EEC5_
	registerVal17.LighterModeLightColorPicker = registerVal18
	registerVal18 = {}
	local function __FUNC_F7B5_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal6:completeAnimation()
		registerVal2.ChooseMode:setLeftRight(true, false, 235.000000, 367.250000)
		registerVal2.ChooseMode:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ChooseMode:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal7.label:completeAnimation()
		registerVal2.TogglePlayPause:setLeftRight(true, false, 367.250000, 488.250000)
		registerVal2.TogglePlayPause:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.TogglePlayPause:setAlpha(1.000000)
		registerVal2.TogglePlayPause.label:setText(Engine.Localize("MENU_DEMO_CONTROLS_PLAY_PAUSE"))
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.ChangeCamera:setLeftRight(true, false, 508.250000, 644.250000)
		registerVal2.ChangeCamera:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ChangeCamera:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.SkipBack:setLeftRight(true, false, 644.250000, 766.250000)
		registerVal2.SkipBack:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.SkipBack:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FastForward:setLeftRight(true, false, 766.250000, 896.750000)
		registerVal2.FastForward:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.FastForward:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.ToggleControls:setLeftRight(true, false, 896.750000, 1036.750000)
		registerVal2.ToggleControls:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ToggleControls:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.KeyFrameAction:setLeftRight(true, false, 1039.750000, 1164.750000)
		registerVal2.KeyFrameAction:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.KeyFrameAction:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.LB:setLeftRight(true, false, 1027.250000, 1070.250000)
		registerVal2.LB:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.LB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.RBHint:setLeftRight(true, false, 1059.250000, 1102.250000)
		registerVal2.RBHint:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.RBHint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_F7B5_
	registerVal17.HighlightReelMode = registerVal18
	registerVal18 = {}
	local function __FUNC_FF81_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal6:completeAnimation()
		registerVal2.ChooseMode:setLeftRight(true, false, 235.000000, 367.250000)
		registerVal2.ChooseMode:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ChooseMode:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal7.label:completeAnimation()
		registerVal2.TogglePlayPause:setLeftRight(true, false, 367.250000, 488.250000)
		registerVal2.TogglePlayPause:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.TogglePlayPause:setAlpha(1.000000)
		registerVal2.TogglePlayPause.label:setText(Engine.Localize("MENU_DEMO_CONTROLS_PLAY_PAUSE"))
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.ChangeCamera:setLeftRight(true, false, 508.250000, 644.250000)
		registerVal2.ChangeCamera:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ChangeCamera:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.SkipBack:setLeftRight(true, false, 644.250000, 766.250000)
		registerVal2.SkipBack:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.SkipBack:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FastForward:setLeftRight(true, false, 766.250000, 896.750000)
		registerVal2.FastForward:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.FastForward:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.ToggleControls:setLeftRight(true, false, 896.750000, 1036.750000)
		registerVal2.ToggleControls:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ToggleControls:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.KeyFrameAction:setLeftRight(true, false, 1039.750000, 1164.750000)
		registerVal2.KeyFrameAction:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.KeyFrameAction:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.LB:setLeftRight(true, false, 1027.250000, 1070.250000)
		registerVal2.LB:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.LB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.RBHint:setLeftRight(true, false, 1059.250000, 1102.250000)
		registerVal2.RBHint:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.RBHint:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_FF81_
	registerVal17.HighlightReelModeFreeCamera = registerVal18
	registerVal18 = {}
	local function __FUNC_1074D_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal6:completeAnimation()
		registerVal2.ChooseMode:setLeftRight(true, false, 235.000000, 367.250000)
		registerVal2.ChooseMode:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ChooseMode:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.TogglePlayPause:setLeftRight(true, false, 367.250000, 488.250000)
		registerVal2.TogglePlayPause:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.TogglePlayPause:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.ChangeCamera:setLeftRight(true, false, 508.250000, 644.250000)
		registerVal2.ChangeCamera:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ChangeCamera:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.SkipBack:setLeftRight(true, false, 229.000000, 351.000000)
		registerVal2.SkipBack:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.SkipBack:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FastForward:setLeftRight(true, false, 766.250000, 896.750000)
		registerVal2.FastForward:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.FastForward:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.ToggleControls:setLeftRight(true, false, 357.750000, 497.750000)
		registerVal2.ToggleControls:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ToggleControls:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.KeyFrameAction:setLeftRight(true, false, 1039.750000, 1164.750000)
		registerVal2.KeyFrameAction:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.KeyFrameAction:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.LB:setLeftRight(true, false, 1027.250000, 1070.250000)
		registerVal2.LB:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.LB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.RBHint:setLeftRight(true, false, 1059.250000, 1102.250000)
		registerVal2.RBHint:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.RBHint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_1074D_
	registerVal17.NetworkProfiling = registerVal18
	registerVal2.clipsPerState = registerVal17
	registerVal19 = {}
	registerVal20 = {}
	registerVal20.stateName = "PlaybackMode"
	local function __FUNC_10E6B_(arg0, arg1, arg2)
		return IsDemoContextPlaybackMode()
	end

	registerVal20.condition = __FUNC_10E6B_
	registerVal21 = {}
	registerVal21.stateName = "BasicMode"
	local function __FUNC_10EC3_(arg0, arg2, arg3)
		local registerVal3 = IsDemoContextBasicMode()
		if registerVal3 then
			registerVal3 = IsGlobalModelValueEqualToEnum(arg2, arg1, "demo.cameraMode", Enum.demoCameraMode.DEMO_CAMERA_MODE_FREECAM)
			registerVal3 = IsDemoRestrictedBasicMode()
			if not registerVal3 and not registerVal3 then
				registerVal3 = IsGlobalModelValueTrue(arg2, arg1, "demo.networkProfiling")
			else
			end
		end
		return true
	end

	registerVal21.condition = __FUNC_10EC3_
	local registerVal22 = {}
	registerVal22.stateName = "BasicModeFreeCamera"
	local function __FUNC_11076_(arg0, arg2, arg3)
		local registerVal3 = IsDemoContextBasicMode()
		registerVal3 = IsGlobalModelValueEqualToEnum(arg2, arg1, "demo.cameraMode", Enum.demoCameraMode.DEMO_CAMERA_MODE_FREECAM)
		if registerVal3 and registerVal3 then
			registerVal3 = IsDemoRestrictedBasicMode()
			if not registerVal3 then
				registerVal3 = IsGlobalModelValueTrue(arg2, arg1, "demo.networkProfiling")
			else
			end
		end
		return true
	end

	registerVal22.condition = __FUNC_11076_
	local registerVal23 = {}
	registerVal23.stateName = "DirectorMode"
	local function __FUNC_1122A_(arg0, arg2, arg3)
		local registerVal3 = IsDemoContextDirectorMode()
		if registerVal3 then
			registerVal3 = ShouldAddDollyCameraMarker(arg1)
		end
		return registerVal3
	end

	registerVal23.condition = __FUNC_1122A_
	local registerVal24 = {}
	registerVal24.stateName = "DirectorModeStartAutoDolly"
	local function __FUNC_112BB_(arg0, arg2, arg3)
		local registerVal3 = IsDemoContextDirectorMode()
		if registerVal3 then
			registerVal3 = ShouldStartAutoDollyCamera(arg1)
		end
		return registerVal3
	end

	registerVal24.condition = __FUNC_112BB_
	local registerVal25 = {}
	registerVal25.stateName = "DirectorModeStopAutoDolly"
	local function __FUNC_1134B_(arg0, arg2, arg3)
		local registerVal3 = IsDemoContextDirectorMode()
		if registerVal3 then
			registerVal3 = ShouldStopAutoDollyCamera(arg1)
		end
		return registerVal3
	end

	registerVal25.condition = __FUNC_1134B_
	local registerVal26 = {}
	registerVal26.stateName = "DirectorModeEditKeyFrame"
	local function __FUNC_113DA_(arg0, arg2, arg3)
		local registerVal3 = IsDemoContextDirectorMode()
		if registerVal3 then
			registerVal3 = ShouldEditDollyCameraMarker(arg1)
		end
		return registerVal3
	end

	registerVal26.condition = __FUNC_113DA_
	local registerVal27 = {}
	registerVal27.stateName = "DirectorModeEditingKeyFrame"
	local function __FUNC_1146C_(arg0, arg2, arg3)
		local registerVal3 = IsDemoContextDirectorMode()
		registerVal3 = IsEditingDollyCameraMarker(arg1)
		if registerVal3 and registerVal3 then
			registerVal3 = IsRepositioningDollyCameraMarker(arg1)
		end
		return (not registerVal3)
	end

	registerVal27.condition = __FUNC_1146C_
	local registerVal28 = {}
	registerVal28.stateName = "DirectorModeMoveKeyFrame"
	local function __FUNC_11541_(arg0, arg2, arg3)
		local registerVal3 = IsDemoContextDirectorMode()
		if registerVal3 then
			registerVal3 = IsRepositioningDollyCameraMarker(arg1)
		end
		return registerVal3
	end

	registerVal28.condition = __FUNC_11541_
	local registerVal29 = {}
	registerVal29.stateName = "ObjectLinkMode"
	local function __FUNC_115D9_(arg0, arg2, arg3)
		local registerVal3 = IsDemoContextObjectLinkMode()
		if registerVal3 then
			registerVal3 = CanFreeCameraLockOnEntity(arg1)
			if not registerVal3 then
				registerVal3 = IsFreeCameraLockedOnEntity(arg1)
			else
			end
		end
		return true
	end

	registerVal29.condition = __FUNC_115D9_
	local registerVal30 = {}
	registerVal30.stateName = "ObjectLinkModeLinkToObject"
	local function __FUNC_116B4_(arg0, arg2, arg3)
		local registerVal3 = IsDemoContextObjectLinkMode()
		registerVal3 = CanFreeCameraLockOnEntity(arg1)
		if registerVal3 and registerVal3 then
			registerVal3 = IsFreeCameraLockedOnEntity(arg1)
		end
		return (not registerVal3)
	end

	registerVal30.condition = __FUNC_116B4_
	local registerVal31 = {}
	registerVal31.stateName = "ObjectLinkModeUnlinkObject"
	local function __FUNC_11784_(arg0, arg2, arg3)
		local registerVal3 = IsDemoContextObjectLinkMode()
		if registerVal3 then
			registerVal3 = IsFreeCameraLockedOnEntity(arg1)
		end
		return registerVal3
	end

	registerVal31.condition = __FUNC_11784_
	local registerVal32 = {}
	registerVal32.stateName = "LighterMode"
	local function __FUNC_11819_(arg0, arg2, arg3)
		local registerVal3 = IsDemoContextLighterMode()
		if registerVal3 then
			registerVal3 = ShouldAddLightmanMarker(arg1)
		end
		return registerVal3
	end

	registerVal32.condition = __FUNC_11819_
	local registerVal33 = {}
	registerVal33.stateName = "LighterModeEditLight"
	local function __FUNC_118A7_(arg0, arg2, arg3)
		local registerVal3 = IsDemoContextLighterMode()
		if registerVal3 then
			registerVal3 = ShouldEditLightmanMarker(arg1)
		end
		return registerVal3
	end

	registerVal33.condition = __FUNC_118A7_
	local registerVal34 = {}
	registerVal34.stateName = "LighterModeEditingLight"
	local function __FUNC_11934_(arg0, arg2, arg3)
		local registerVal3 = IsDemoContextLighterMode()
		registerVal3 = IsEditingLightmanMarker(arg1)
		if registerVal3 and registerVal3 then
			registerVal3 = IsRepositioningLightmanMarker(arg1)
			if not registerVal3 then
				registerVal3 = IsInLightmanColorPicker(arg1)
			else
			end
		end
		return true
	end

	registerVal34.condition = __FUNC_11934_
	local registerVal35 = {}
	registerVal35.stateName = "LighterModeMoveLight"
	local function __FUNC_11A43_(arg0, arg2, arg3)
		local registerVal3 = IsDemoContextLighterMode()
		if registerVal3 then
			registerVal3 = IsRepositioningLightmanMarker(arg1)
		end
		return registerVal3
	end

	registerVal35.condition = __FUNC_11A43_
	local registerVal36 = {}
	registerVal36.stateName = "LighterModeLightColorPicker"
	local function __FUNC_11AD5_(arg0, arg2, arg3)
		local registerVal3 = IsDemoContextLighterMode()
		registerVal3 = IsEditingLightmanMarker(arg1)
		if registerVal3 and registerVal3 then
			registerVal3 = IsRepositioningLightmanMarker(arg1)
			if not registerVal3 then
				registerVal3 = IsInLightmanColorPicker(arg1)
			else
			end
		end
		return true
	end

	registerVal36.condition = __FUNC_11AD5_
	local registerVal37 = {}
	registerVal37.stateName = "HighlightReelMode"
	local function __FUNC_11BDF_(arg0, arg2, arg3)
		local registerVal3 = IsDemoContextHighlightReelMode()
		if registerVal3 then
			registerVal3 = IsGlobalModelValueEqualToEnum(arg2, arg1, "demo.cameraMode", Enum.demoCameraMode.DEMO_CAMERA_MODE_FREECAM)
		end
		return (not registerVal3)
	end

	registerVal37.condition = __FUNC_11BDF_
	local registerVal38 = {}
	registerVal38.stateName = "HighlightReelModeFreeCamera"
	local function __FUNC_11D00_(arg0, arg2, arg3)
		local registerVal3 = IsDemoContextHighlightReelMode()
		if registerVal3 then
			registerVal3 = IsGlobalModelValueEqualToEnum(arg2, arg1, "demo.cameraMode", Enum.demoCameraMode.DEMO_CAMERA_MODE_FREECAM)
		end
		return registerVal3
	end

	registerVal38.condition = __FUNC_11D00_
	local registerVal39 = {}
	registerVal39.stateName = "NetworkProfiling"
	local function __FUNC_11E20_(arg0, arg2, arg3)
		return IsGlobalModelValueTrue(arg2, arg1, "demo.networkProfiling")
	end

	registerVal39.condition = __FUNC_11E20_
	registerVal19 = {registerVal20, registerVal21, registerVal22, registerVal23, registerVal24, registerVal25, registerVal26, registerVal27, registerVal28, registerVal29, registerVal30, registerVal31, registerVal32, registerVal33, registerVal34, registerVal35, registerVal36, registerVal37, registerVal38, registerVal39}
	registerVal2:mergeStateConditions(registerVal19)
	registerVal20 = Engine.GetGlobalModel()
	registerVal19 = Engine.GetModel(registerVal20, "demo.contextMode")
	local function __FUNC_11EA3_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "demo.contextMode"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal19, __FUNC_11EA3_)
	registerVal20 = Engine.GetGlobalModel()
	registerVal19 = Engine.GetModel(registerVal20, "demo.cameraMode")
	local function __FUNC_11FC6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "demo.cameraMode"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal19, __FUNC_11FC6_)
	registerVal20 = Engine.GetGlobalModel()
	registerVal19 = Engine.GetModel(registerVal20, "demo.networkProfiling")
	local function __FUNC_120E9_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "demo.networkProfiling"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal19, __FUNC_120E9_)
	registerVal20 = Engine.GetGlobalModel()
	registerVal19 = Engine.GetModel(registerVal20, "demo.highlightedDollyCamMarker")
	local function __FUNC_12213_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "demo.highlightedDollyCamMarker"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal19, __FUNC_12213_)
	registerVal20 = Engine.GetGlobalModel()
	registerVal19 = Engine.GetModel(registerVal20, "demo.isRecordingDollyCameraPath")
	local function __FUNC_12344_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "demo.isRecordingDollyCameraPath"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal19, __FUNC_12344_)
	registerVal20 = Engine.GetGlobalModel()
	registerVal19 = Engine.GetModel(registerVal20, "demo.editingDollyCameraMarker")
	local function __FUNC_12479_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "demo.editingDollyCameraMarker"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal19, __FUNC_12479_)
	registerVal20 = Engine.GetGlobalModel()
	registerVal19 = Engine.GetModel(registerVal20, "demo.isRepositioningDollyCamMarker")
	local function __FUNC_125AB_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "demo.isRepositioningDollyCamMarker"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal19, __FUNC_125AB_)
	registerVal20 = Engine.GetGlobalModel()
	registerVal19 = Engine.GetModel(registerVal20, "demo.isFreeCameraLockedOnEntity")
	local function __FUNC_126E0_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "demo.isFreeCameraLockedOnEntity"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal19, __FUNC_126E0_)
	registerVal20 = Engine.GetGlobalModel()
	registerVal19 = Engine.GetModel(registerVal20, "demo.highlightedFreeCameraLockOnEntity")
	local function __FUNC_12815_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "demo.highlightedFreeCameraLockOnEntity"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal19, __FUNC_12815_)
	registerVal20 = Engine.GetGlobalModel()
	registerVal19 = Engine.GetModel(registerVal20, "demo.isFreeCameraLockedOnEntityActive")
	local function __FUNC_12950_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "demo.isFreeCameraLockedOnEntityActive"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal19, __FUNC_12950_)
	registerVal20 = Engine.GetGlobalModel()
	registerVal19 = Engine.GetModel(registerVal20, "demo.highlightedLightmanMarker")
	local function __FUNC_12A8B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "demo.highlightedLightmanMarker"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal19, __FUNC_12A8B_)
	registerVal20 = Engine.GetGlobalModel()
	registerVal19 = Engine.GetModel(registerVal20, "demo.editingLightmanMarker")
	local function __FUNC_12BBC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "demo.editingLightmanMarker"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal19, __FUNC_12BBC_)
	registerVal20 = Engine.GetGlobalModel()
	registerVal19 = Engine.GetModel(registerVal20, "demo.isRepositioningLightmanMarker")
	local function __FUNC_12CEC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "demo.isRepositioningLightmanMarker"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal19, __FUNC_12CEC_)
	registerVal20 = Engine.GetGlobalModel()
	registerVal19 = Engine.GetModel(registerVal20, "demo.showLightmanColorPicker")
	local function __FUNC_12E24_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "demo.showLightmanColorPicker"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal19, __FUNC_12E24_)
	local function __FUNC_12F56_(arg0)
		arg0.Select:close()
		arg0.Controls:close()
		arg0.ChooseMode:close()
		arg0.TogglePlayPause:close()
		arg0.ChangeCamera:close()
		arg0.SkipBack:close()
		arg0.FastForward:close()
		arg0.ToggleControls:close()
		arg0.KeyFrameAction:close()
		arg0.LB:close()
		arg0.RBHint:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_12F56_)
	if __FUNC_219_ then
		__FUNC_219_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.DemoPlaybackControlsButtons.new = __FUNC_32B_
