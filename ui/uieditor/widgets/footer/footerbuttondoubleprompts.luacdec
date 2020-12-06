-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BumperButtonWithKeyMouse")
local function __FUNC_231_(arg0)
	local registerVal1 = IsElementInState(arg0, "DefaultState")
	if registerVal1 then
		OverrideWidgetWidth(arg0, 0.000000)
	else
		registerVal1 = Engine.LastInput_Gamepad()
		local registerVal9, registerVal10, registerVal11, registerVal12 = arg0.BumperButtonWithKeyMouseLeft:getLocalLeftRight()
		registerVal9, registerVal10 = arg0.BumperButtonWithKeyMouseLeft:getLocalSize()
		registerVal9, registerVal10, registerVal11, registerVal12 = arg0.BumperButtonWithKeyMouseRight:getLocalLeftRight()
		registerVal9, registerVal10 = arg0.BumperButtonWithKeyMouseRight:getLocalSize()
		registerVal9, registerVal10, registerVal11, registerVal12 = arg0.label:getLocalLeftRight()
		local registerVal13 = arg0.label:getTextWidth()
		arg0.label:setLeftRight(registerVal9, registerVal10, ((registerVal11 + registerVal9) + 4.000000), (((registerVal11 + registerVal9) + 4.000000) + registerVal13))
		if registerVal1 then
			arg0.buttonPromptImage1:setLeftRight(registerVal9, registerVal10, ((((registerVal11 + registerVal9) + 4.000000) + registerVal13) + 4.000000), (((((registerVal11 + registerVal9) + 4.000000) + registerVal13) + 4.000000) + registerVal9))
		else
			arg0.BumperButtonWithKeyMouseRight:setLeftRight(registerVal9, registerVal10, ((((registerVal11 + registerVal9) + 4.000000) + registerVal13) + 4.000000), (((((registerVal11 + registerVal9) + 4.000000) + registerVal13) + 4.000000) + registerVal9))
		end
		local registerVal17, registerVal18, registerVal19, registerVal20 = arg0:getLocalLeftRight()
		arg0:setLeftRight(registerVal17, registerVal18, registerVal19, (registerVal19 + (((((registerVal11 + registerVal9) + 4.000000) + registerVal13) + 4.000000) + registerVal9)))
	end
	registerVal1 = arg0:getParent()
	if registerVal1 then
		registerVal1:setLayoutCached(false)
	end
end

local function __FUNC_597_(arg0, arg1, arg2)
	arg0:setForceMouseEventDispatch(true)
	local function __FUNC_663_(arg1, arg2)
		__FUNC_231_(arg0)
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "setState", __FUNC_663_)
end

local function __FUNC_698_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_597_(arg0, arg1, arg2)
	end
	local function __FUNC_771_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		arg0.label:setText(Engine.Localize(registerVal1))
		if registerVal1 and CoD.isPC then
			__FUNC_231_(arg0)
		end
	end

	arg0.label:linkToElementModel(arg0, "Label", true, __FUNC_771_)
end

local registerVal4 = InheritFrom(LUI.UIElement)
CoD.FooterButtonDoublePrompts = registerVal4
local function __FUNC_884_(arg0, arg1)
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
	registerVal2:setClass(CoD.FooterButtonDoublePrompts)
	registerVal2.id = "FooterButtonDoublePrompts"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 189.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = CoD.BumperButtonWithKeyMouse.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 45.000000)
	registerVal3:setTopBottom(true, false, 1.000000, 31.000000)
	local function __FUNC_149D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.ControllerImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "Controller", "left_shoulder_button_image", __FUNC_149D_)
	local function __FUNC_1575_(arg2, arg3)
		SendButtonPressToMenuEx(arg0, arg1, Enum.LUIButton.LUI_KEY_LB)
		if not nil then
			local registerVal3 = arg2:dispatchEventToChildren(arg3)
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("button_action", __FUNC_1575_)
	registerVal2:addElement(registerVal3)
	registerVal2.BumperButtonWithKeyMouseLeft = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 45.000000, 45.000000)
	registerVal4:setTopBottom(true, false, 7.000000, 25.000000)
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
	registerVal4:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.buttonPromptImage = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 45.000000, 158.000000)
	registerVal5:setTopBottom(true, false, 7.000000, 25.000000)
	registerVal5:setText(Engine.Localize("MPUI_CHANGE_ROLE"))
	registerVal5:setTTF("fonts/default.ttf")
	local function __FUNC_1663_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, -10.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal5, "setText", __FUNC_1663_)
	registerVal2:addElement(registerVal5)
	registerVal2.label = registerVal5
	local registerVal6 = CoD.BumperButtonWithKeyMouse.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 158.000000, 203.000000)
	registerVal6:setTopBottom(true, false, 1.000000, 31.000000)
	registerVal6.KeyMouseImage:setImage(RegisterImage("uie_bumperright"))
	local function __FUNC_16C1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.ControllerImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "Controller", "right_shoulder_button_image", __FUNC_16C1_)
	local function __FUNC_1799_(arg2, arg3)
		SendButtonPressToMenuEx(arg0, arg1, Enum.LUIButton.LUI_KEY_RB)
		if not nil then
			local registerVal3 = arg2:dispatchEventToChildren(arg3)
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("button_action", __FUNC_1799_)
	registerVal2:addElement(registerVal6)
	registerVal2.BumperButtonWithKeyMouseRight = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 203.000000, 203.000000)
	registerVal7:setTopBottom(true, false, 7.000000, 25.000000)
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
	registerVal7:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.buttonPromptImage1 = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_1887_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BumperButtonWithKeyMouseLeft:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.buttonPromptImage:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.buttonPromptImage:setAlpha(0.000000)
		registerVal2.buttonPromptImage:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
		registerVal2.buttonPromptImage:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.label:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.label:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BumperButtonWithKeyMouseRight:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.buttonPromptImage1:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.buttonPromptImage1:setAlpha(0.000000)
		registerVal2.buttonPromptImage1:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
		registerVal2.buttonPromptImage1:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_1887_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_1CEC_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BumperButtonWithKeyMouseLeft:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.buttonPromptImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.label:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.label:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BumperButtonWithKeyMouseRight:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.buttonPromptImage1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_1CEC_
	registerVal8.Disabled = registerVal9
	registerVal9 = {}
	local function __FUNC_1FB6_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BumperButtonWithKeyMouseLeft:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.buttonPromptImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.label:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.label:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BumperButtonWithKeyMouseRight:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.buttonPromptImage1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_1FB6_
	local function __FUNC_227E_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BumperButtonWithKeyMouseLeft:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.buttonPromptImage:setLeftRight(true, false, 0.000000, 32.000000)
		registerVal2.buttonPromptImage:setTopBottom(true, false, 0.000000, 31.000000)
		registerVal2.buttonPromptImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.label:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BumperButtonWithKeyMouseRight:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.buttonPromptImage1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.Hide = __FUNC_227E_
	registerVal8.Enabled = registerVal9
	registerVal2.clipsPerState = registerVal8
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Disabled"
	local function __FUNC_2593_(arg0, arg2, arg3)
		return IsSelfModelValueEqualToEnum(arg2, arg1, "", Enum.LUIButtonPromptStates.FLAG_DISABLE_PROMPTS)
	end

	registerVal11.condition = __FUNC_2593_
	local registerVal12 = {}
	registerVal12.stateName = "Enabled"
	local function __FUNC_266A_(arg0, arg2, arg3)
		return IsSelfModelValueEqualToEnum(arg2, arg1, "", Enum.LUIButtonPromptStates.FLAG_ENABLE_PROMPTS)
	end

	registerVal12.condition = __FUNC_266A_
	registerVal10 = {registerVal11, registerVal12}
	registerVal2:mergeStateConditions(registerVal10)
	local function __FUNC_2741_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, nil, true, __FUNC_2741_)
	local function __FUNC_284D_(arg0, arg1)
		local registerVal2 = IsElementInState(arg0, "DefaultState")
		if registerVal2 then
			OverrideWidgetWidth(registerVal2, "0")
		else
			RestoreWidgetWidth(registerVal2)
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_284D_)
	local function __FUNC_2924_(arg0)
		arg0.BumperButtonWithKeyMouseLeft:close()
		arg0.BumperButtonWithKeyMouseRight:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2924_)
	if __FUNC_698_ then
		__FUNC_698_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.FooterButtonDoublePrompts.new = __FUNC_884_
