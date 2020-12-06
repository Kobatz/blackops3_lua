-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Footer.FooterButtonDoublePrompts")
require("ui.uieditor.widgets.FooterButtonPrompt")
local function __FUNC_26F_(arg0, arg1, arg2)
	arg0:setForceMouseEventDispatch(true)
end

local function __FUNC_2C8_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_26F_(arg0, arg1, arg2)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.fe_RightContainerWithHeroesHead = registerVal3
local function __FUNC_33B_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.fe_RightContainerWithHeroesHead)
	registerVal2.id = "fe_RightContainerWithHeroesHead"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 870.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 867.000000, 870.000000)
	registerVal3:setTopBottom(true, false, -36.000000, 92.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Image00 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 851.000000, 867.000000)
	registerVal4:setTopBottom(true, false, -36.000000, 92.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Image0 = registerVal4
	local registerVal5 = CoD.FooterButtonDoublePrompts.new(arg0, arg1)
	registerVal5:setLeftRight(false, true, -421.000000, -239.000000)
	registerVal5:setTopBottom(false, true, -32.000000, 0.000000)
	registerVal5.label:setText(Engine.Localize(""))
	local function __FUNC_ED1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "Controller", "left_shoulder_button_image", __FUNC_ED1_)
	local function __FUNC_FAB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.buttonPromptImage1:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "Controller", "right_shoulder_button_image", __FUNC_FAB_)
	local function __FUNC_1084_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, ("" .. Enum.LUIButton.LUI_KEY_LB), false, __FUNC_1084_)
	registerVal2:addElement(registerVal5)
	registerVal2.FooterButtonDoublePrompts = registerVal5
	local registerVal6 = CoD.FooterButtonPrompt.new(arg0, arg1)
	registerVal6:setLeftRight(false, true, -581.500000, -421.000000)
	registerVal6:setTopBottom(false, true, -32.000000, 0.000000)
	registerVal6.label:setText(Engine.Localize(""))
	registerVal6.keyPrompt.keybind:setText(Engine.Localize(""))
	local function __FUNC_10D6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "Controller", "back_button_image", __FUNC_10D6_)
	local function __FUNC_11AF_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, ("" .. Enum.LUIButton.LUI_KEY_BACK), false, __FUNC_11AF_)
	registerVal2:addElement(registerVal6)
	registerVal2.Padbtn = registerVal6
	local registerVal7 = CoD.FooterButtonPrompt.new(arg0, arg1)
	registerVal7:setLeftRight(false, true, -672.500000, -581.500000)
	registerVal7:setTopBottom(false, true, -32.000000, 0.000000)
	registerVal7.label:setText(Engine.Localize(""))
	registerVal7.keyPrompt.keybind:setText(Engine.Localize(""))
	local function __FUNC_11FE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "Controller", "move_right_stick_button_image", __FUNC_11FE_)
	local function __FUNC_12D7_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, ("" .. Enum.LUIButton.LUI_KEY_RSTICK_PRESSED), false, __FUNC_12D7_)
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "DisabledPC"
	local function __FUNC_1326_(arg0, arg2, arg3)
		local registerVal3 = ShouldHideButtonPromptForPC(arg2, arg1)
		if not registerVal3 then
			registerVal3 = AlwaysFalse()
		else
		end
		return true
	end

	registerVal11.condition = __FUNC_1326_
	local registerVal12 = {}
	registerVal12.stateName = "EnabledPC"
	local function __FUNC_13BA_(arg0, arg2, arg3)
		local registerVal3 = ShouldHideButtonPromptForPC(arg2, arg1)
		if not registerVal3 then
			registerVal3 = AlwaysFalse()
		else
		end
		return true
	end

	registerVal12.condition = __FUNC_13BA_
	registerVal10 = {registerVal11, registerVal12}
	registerVal7:mergeStateConditions(registerVal10)
	local function __FUNC_144E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:linkToElementModel(registerVal7, nil, true, __FUNC_144E_)
	if registerVal7.m_eventHandlers.input_source_changed then
		local function __FUNC_1559_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal7.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal7:registerEventHandler("input_source_changed", __FUNC_1559_)
	else
		registerVal7:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "LastInput")
	local function __FUNC_15E3_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:subscribeToModel(registerVal10, __FUNC_15E3_)
	registerVal2:addElement(registerVal7)
	registerVal2.RJoystickbtn = registerVal7
	local function __FUNC_16FF_(arg0)
		arg0.FooterButtonDoublePrompts:close()
		arg0.Padbtn:close()
		arg0.RJoystickbtn:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_16FF_)
	if __FUNC_2C8_ then
		__FUNC_2C8_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.fe_RightContainerWithHeroesHead.new = __FUNC_33B_
