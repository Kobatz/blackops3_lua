-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.KeyPrompt")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FooterButtonPromptWithPCKey = registerVal1
function CoD.FooterButtonPromptWithPCKey.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FooterButtonPromptWithPCKey)
	registerVal2.id = "FooterButtonPromptWithPCKey"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 100.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 14.000000, 38.000000)
	registerVal3:setTopBottom(true, false, 4.000000, 28.000000)
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
	registerVal3:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.buttonPromptImage = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 42.000000, 88.000000)
	registerVal4:setTopBottom(true, false, 7.000000, 25.000000)
	registerVal4:setText(Engine.Localize("Select"))
	registerVal4:setTTF("fonts/default.ttf")
	local function __FUNC_CC7_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, -40.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_CC7_)
	registerVal2:addElement(registerVal4)
	registerVal2.label = registerVal4
	local registerVal5 = CoD.KeyPrompt.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 14.000000, 38.000000)
	registerVal5:setTopBottom(true, false, 4.000000, 28.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5.keybind:setText(Engine.Localize(""))
	registerVal2:addElement(registerVal5)
	registerVal2.keyPrompt = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_D25_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.buttonPromptImage:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.buttonPromptImage:setAlpha(0.000000)
		registerVal2.buttonPromptImage:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
		registerVal2.buttonPromptImage:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.label:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.label:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.keyPrompt:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_D25_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_1022_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.buttonPromptImage:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.buttonPromptImage:setAlpha(0.500000)
		registerVal2.buttonPromptImage:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
		registerVal2.buttonPromptImage:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.label:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.label:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.keyPrompt:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1022_
	registerVal6.Disabled = registerVal7
	registerVal7 = {}
	local function __FUNC_131E_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.buttonPromptImage:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.buttonPromptImage:setAlpha(1.000000)
		registerVal2.buttonPromptImage:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
		registerVal2.buttonPromptImage:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.label:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.label:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.keyPrompt:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_131E_
	local function __FUNC_161A_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.buttonPromptImage:setLeftRight(true, false, 0.000000, 32.000000)
		registerVal2.buttonPromptImage:setTopBottom(true, false, 0.000000, 31.000000)
		registerVal2.buttonPromptImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.label:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.label:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal7.Hide = __FUNC_161A_
	local function __FUNC_1833_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.buttonPromptImage:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.buttonPromptImage:setAlpha(1.000000)
		registerVal2.buttonPromptImage:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
		registerVal2.buttonPromptImage:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.label:setRGB(0.870000, 0.370000, 0.000000)
		registerVal2.label:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal7.Over = __FUNC_1833_
	registerVal6.Enabled = registerVal7
	registerVal7 = {}
	local function __FUNC_1AE1_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.buttonPromptImage:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.buttonPromptImage:setAlpha(0.000000)
		registerVal2.buttonPromptImage:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
		registerVal2.buttonPromptImage:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.label:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.label:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.keyPrompt:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1AE1_
	registerVal6.DisabledPC = registerVal7
	registerVal7 = {}
	local function __FUNC_1DDE_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.buttonPromptImage:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.buttonPromptImage:setAlpha(0.000000)
		registerVal2.buttonPromptImage:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
		registerVal2.buttonPromptImage:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.label:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.label:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.keyPrompt:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1DDE_
	local function __FUNC_20DA_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.buttonPromptImage:setLeftRight(true, false, 0.000000, 32.000000)
		registerVal2.buttonPromptImage:setTopBottom(true, false, 0.000000, 31.000000)
		registerVal2.buttonPromptImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.label:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.label:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal7.Hide = __FUNC_20DA_
	local function __FUNC_22F3_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.buttonPromptImage:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.buttonPromptImage:setAlpha(0.000000)
		registerVal2.buttonPromptImage:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
		registerVal2.buttonPromptImage:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.label:setRGB(0.870000, 0.370000, 0.000000)
		registerVal2.label:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal7.Over = __FUNC_22F3_
	registerVal6.EnabledPC = registerVal7
	registerVal7 = {}
	local function __FUNC_25A1_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_25A1_
	registerVal6.InitialState = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Disabled"
	local function __FUNC_2602_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualToEnum(arg2, arg1, "", Enum.LUIButtonPromptStates.FLAG_DISABLE_PROMPTS)
		if registerVal3 then
			registerVal3 = IsGamepad(arg1)
		end
		return registerVal3
	end

	registerVal9.condition = __FUNC_2602_
	local registerVal10 = {}
	registerVal10.stateName = "Enabled"
	local function __FUNC_2701_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualToEnum(arg2, arg1, "", Enum.LUIButtonPromptStates.FLAG_ENABLE_PROMPTS)
		if registerVal3 then
			registerVal3 = IsGamepad(arg1)
		end
		return registerVal3
	end

	registerVal10.condition = __FUNC_2701_
	local registerVal11 = {}
	registerVal11.stateName = "DisabledPC"
	local function __FUNC_2800_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualToEnum(arg2, arg1, "", Enum.LUIButtonPromptStates.FLAG_DISABLE_PROMPTS)
		if registerVal3 then
			registerVal3 = IsGamepad(arg1)
			if not registerVal3 then
				registerVal3 = ShouldHideButtonPromptForPC(arg2, arg1)
			else
			end
		end
		return true
	end

	registerVal11.condition = __FUNC_2800_
	local registerVal12 = {}
	registerVal12.stateName = "EnabledPC"
	local function __FUNC_294E_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualToEnum(arg2, arg1, "", Enum.LUIButtonPromptStates.FLAG_ENABLE_PROMPTS)
		if registerVal3 then
			registerVal3 = IsGamepad(arg1)
			if not registerVal3 then
				registerVal3 = ShouldHideButtonPromptForPC(arg2, arg1)
			else
			end
		end
		return true
	end

	registerVal12.condition = __FUNC_294E_
	local registerVal13 = {}
	registerVal13.stateName = "InitialState"
	local function __FUNC_2A99_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal13.condition = __FUNC_2A99_
	registerVal8 = {registerVal9, registerVal10, registerVal11, registerVal12, registerVal13}
	registerVal2:mergeStateConditions(registerVal8)
	local function __FUNC_2AE5_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, nil, true, __FUNC_2AE5_)
	if registerVal2.m_eventHandlers.input_source_changed then
		local function __FUNC_2BF1_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal2:registerEventHandler("input_source_changed", __FUNC_2BF1_)
	else
		registerVal2:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "LastInput")
	local function __FUNC_2C7B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_2C7B_)
	local function __FUNC_2D97_(arg0, arg2)
		local registerVal2 = IsElementInState(arg0, "DefaultState")
		if registerVal2 then
			OverrideWidgetWidth(registerVal2, "0")
			DisableMouseButton(registerVal2, arg1)
		else
			RestoreWidgetWidth(registerVal2)
			EnableMouseButton(registerVal2, arg1)
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_2D97_)
	local function __FUNC_2EC3_(arg0)
		arg0.keyPrompt:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2EC3_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

