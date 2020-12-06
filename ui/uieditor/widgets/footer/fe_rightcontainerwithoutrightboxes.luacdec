-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Footer.FooterButtonDoublePrompts")
require("ui.uieditor.widgets.FooterButtonPrompt")
local function __FUNC_272_(arg0, arg1, arg2)
	arg0:setForceMouseEventDispatch(true)
end

local function __FUNC_2CC_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_272_(arg0, arg1, arg2)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.fe_RightContainerWithoutRightBoxes = registerVal3
local function __FUNC_33F_(arg0, arg1)
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
	registerVal2:setAlignment(LUI.Alignment.Right)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.fe_RightContainerWithoutRightBoxes)
	registerVal2.id = "fe_RightContainerWithoutRightBoxes"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 870.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
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
	registerVal5:setLeftRight(false, true, -201.000000, -19.000000)
	registerVal5:setTopBottom(false, true, -32.000000, 0.000000)
	registerVal5.label:setText(Engine.Localize(""))
	local function __FUNC_1075_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "Controller", "left_shoulder_button_image", __FUNC_1075_)
	local function __FUNC_114F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.buttonPromptImage1:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "Controller", "right_shoulder_button_image", __FUNC_114F_)
	local function __FUNC_1228_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, ("" .. Enum.LUIButton.LUI_KEY_LB), false, __FUNC_1228_)
	registerVal2:addElement(registerVal5)
	registerVal2.FooterButtonDoublePrompts = registerVal5
	local registerVal6 = CoD.FooterButtonPrompt.new(arg0, arg1)
	registerVal6:setLeftRight(false, true, -361.500000, -201.000000)
	registerVal6:setTopBottom(false, true, -32.000000, 0.000000)
	registerVal6.label:setText(Engine.Localize(""))
	registerVal6.keyPrompt.keybind:setText(Engine.Localize(""))
	local function __FUNC_127A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "Controller", "back_button_image", __FUNC_127A_)
	local function __FUNC_1353_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, ("" .. Enum.LUIButton.LUI_KEY_BACK), false, __FUNC_1353_)
	registerVal2:addElement(registerVal6)
	registerVal2.Padbtn = registerVal6
	local registerVal7 = CoD.FooterButtonPrompt.new(arg0, arg1)
	registerVal7:setLeftRight(false, true, -452.500000, -361.500000)
	registerVal7:setTopBottom(false, true, -32.000000, 0.000000)
	registerVal7.label:setText(Engine.Localize(""))
	registerVal7.keyPrompt.keybind:setText(Engine.Localize(""))
	local function __FUNC_13A2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "Controller", "move_right_stick_button_image", __FUNC_13A2_)
	local function __FUNC_147B_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, ("" .. Enum.LUIButton.LUI_KEY_RSTICK_PRESSED), false, __FUNC_147B_)
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "DisabledPC"
	local function __FUNC_14CA_(arg0, arg2, arg3)
		local registerVal3 = ShouldHideButtonPromptForPC(arg2, arg1)
		if not registerVal3 then
			registerVal3 = AlwaysFalse()
		else
		end
		return true
	end

	registerVal11.condition = __FUNC_14CA_
	local registerVal12 = {}
	registerVal12.stateName = "EnabledPC"
	local function __FUNC_155E_(arg0, arg2, arg3)
		local registerVal3 = ShouldHideButtonPromptForPC(arg2, arg1)
		if not registerVal3 then
			registerVal3 = AlwaysFalse()
		else
		end
		return true
	end

	registerVal12.condition = __FUNC_155E_
	registerVal10 = {registerVal11, registerVal12}
	registerVal7:mergeStateConditions(registerVal10)
	local function __FUNC_15F2_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:linkToElementModel(registerVal7, nil, true, __FUNC_15F2_)
	if registerVal7.m_eventHandlers.input_source_changed then
		local function __FUNC_16FD_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal7.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal7:registerEventHandler("input_source_changed", __FUNC_16FD_)
	else
		registerVal7:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "LastInput")
	local function __FUNC_1787_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:subscribeToModel(registerVal10, __FUNC_1787_)
	registerVal2:addElement(registerVal7)
	registerVal2.RJoystickbtn = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_18A3_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal7:completeAnimation()
		registerVal2.RJoystickbtn:setLeftRight(false, true, -450.500000, -361.500000)
		registerVal2.RJoystickbtn:setTopBottom(false, true, -32.000000, 0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_18A3_
	registerVal8.DefaultState = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_1A01_(arg0)
		arg0.FooterButtonDoublePrompts:close()
		arg0.Padbtn:close()
		arg0.RJoystickbtn:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1A01_)
	if __FUNC_2CC_ then
		__FUNC_2CC_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.fe_RightContainerWithoutRightBoxes.new = __FUNC_33F_
