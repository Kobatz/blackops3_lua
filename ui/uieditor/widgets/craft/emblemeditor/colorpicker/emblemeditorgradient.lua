-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Craft.EmblemEditor.EmblemEditorFrame")
require("ui.uieditor.widgets.Craft.EmblemEditor.ColorPicker.EmblemGradientColorButton")
require("ui.uieditor.widgets.Craft.EmblemEditor.ColorPicker.EmblemEditorGradientSliderBar")
require("ui.uieditor.widgets.Craft.EmblemEditor.ColorPicker.EmblemEditorGradientTypeButton")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.EmblemEditorGradient = registerVal1
function CoD.EmblemEditorGradient.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.EmblemEditorGradient)
	registerVal2.id = "EmblemEditorGradient"
	registerVal2.soundSet = "SelectColor_ColorSwatchPicker"
	registerVal2:setLeftRight(true, false, 0.000000, 671.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 175.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.090000, 0.100000, 0.120000)
	registerVal3:setZRot(180.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.ColorPickerBkgd0 = registerVal3
	local registerVal4 = CoD.EmblemEditorFrame.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 671.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 175.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.EmblemEditorFrame0 = registerVal4
	local registerVal5 = CoD.EmblemGradientColorButton.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 21.730000, 336.730000)
	registerVal5:setTopBottom(true, false, 6.420000, 38.420000)
	registerVal5.colorName:setText(Engine.Localize("MENU_EMBLEM_COLOR_1"))
	registerVal5.buttonBorder:setAlpha(1.000000)
	local function __FUNC_163D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.color:setRGB(registerVal1)
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "EmblemSelectedLayerColor", "color", __FUNC_163D_)
	local function __FUNC_16EA_(arg0, arg2)
		if arg0.gainFocus then
			local registerVal3 = arg0.gainFocus(arg0, arg2)
		else
			if arg0.super.gainFocus then
				registerVal3 = arg0.super.gainFocus(arg0, arg2)
			end
		end
		EmblemGradient_Color0GainFocus(registerVal2, arg0, arg1)
		return registerVal3
	end

	registerVal5:registerEventHandler("gain_focus", __FUNC_16EA_)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "NoColor"
	local function __FUNC_17F6_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "Emblem.EmblemProperties.isColor0NoColor", 1.000000)
	end

	registerVal9.condition = __FUNC_17F6_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "Emblem.EmblemProperties.isColor0NoColor")
	local function __FUNC_188B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "Emblem.EmblemProperties.isColor0NoColor"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_188B_)
	registerVal2:addElement(registerVal5)
	registerVal2.gradientColor0 = registerVal5
	local registerVal6 = CoD.EmblemGradientColorButton.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 339.890000, 654.890000)
	registerVal6:setTopBottom(true, false, 6.420000, 38.420000)
	registerVal6.colorName:setText(Engine.Localize("MENU_EMBLEM_COLOR_2"))
	registerVal6.buttonBorder:setAlpha(1.000000)
	local function __FUNC_19C5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.color:setRGB(registerVal1)
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "EmblemSelectedLayerColor1", "color", __FUNC_19C5_)
	local function __FUNC_1A72_(arg0, arg2)
		if arg0.gainFocus then
			local registerVal3 = arg0.gainFocus(arg0, arg2)
		else
			if arg0.super.gainFocus then
				registerVal3 = arg0.super.gainFocus(arg0, arg2)
			end
		end
		EmblemGradient_Color1GainFocus(registerVal2, arg0, arg1)
		return registerVal3
	end

	registerVal6:registerEventHandler("gain_focus", __FUNC_1A72_)
	registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "NoColor"
	local function __FUNC_1B7E_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "Emblem.EmblemProperties.isColor1NoColor", 1.000000)
	end

	registerVal10.condition = __FUNC_1B7E_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "Emblem.EmblemProperties.isColor1NoColor")
	local function __FUNC_1C13_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "Emblem.EmblemProperties.isColor1NoColor"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:subscribeToModel(registerVal9, __FUNC_1C13_)
	registerVal2:addElement(registerVal6)
	registerVal2.gradientColor1 = registerVal6
	local registerVal7 = CoD.EmblemEditorGradientSliderBar.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 21.730000, 650.730000)
	registerVal7:setTopBottom(true, false, 83.500000, 115.500000)
	registerVal7.bar:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 1.000000)
	registerVal7.bar:setShaderVector(1.000000, 1.000000, 1.000000, 1.000000, 1.000000)
	local function __FUNC_1D4D_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		EmblemGradient_ColorGradientSliderGainFocus(registerVal2, arg2, arg1)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_LEFT)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_RIGHT)
		return registerVal3
	end

	registerVal7:registerEventHandler("gain_focus", __FUNC_1D4D_)
	local function __FUNC_1F80_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_1F80_)
	local function __FUNC_2052_(arg0, arg1, arg2, arg3)
		EmblemGradient_UpdateGradientFillByStep(registerVal2, arg0, "-0.01", arg2)
		return true
	end

	local function __FUNC_20DC_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LEFT, "")
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal7, arg1, Enum.LUIButton.LUI_KEY_LEFT, nil, __FUNC_2052_, __FUNC_20DC_, false)
	local function __FUNC_21C8_(arg0, arg1, arg2, arg3)
		EmblemGradient_UpdateGradientFillByStep(registerVal2, arg0, "0.01", arg2)
		return true
	end

	local function __FUNC_2253_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RIGHT, "")
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal7, arg1, Enum.LUIButton.LUI_KEY_RIGHT, nil, __FUNC_21C8_, __FUNC_2253_, false)
	registerVal2:addElement(registerVal7)
	registerVal2.gradientSlider = registerVal7
	registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 32.660000, 232.660000)
	registerVal8:setTopBottom(true, false, 47.110000, 72.110000)
	registerVal8:setText(Engine.Localize("MENU_EMBLEM_GRADIENT_SLIDER"))
	registerVal8:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal8)
	registerVal2.gradientSliderHeader = registerVal8
	registerVal9 = CoD.EmblemEditorGradientTypeButton.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 1.160000, 424.160000)
	registerVal9:setTopBottom(true, false, 138.000000, 175.000000)
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "RadialState"
	local function __FUNC_233D_(arg0, arg2, arg3)
		return IsModelValueEqualToEnum(arg1, "Emblem.EmblemSelectedLayerProperties.gradient_type", Enum.CustomizationGradientType.CUSTOMIZATION_GRADIENT_LINEAR)
	end

	registerVal13.condition = __FUNC_233D_
	local registerVal14 = {}
	registerVal14.stateName = "LinearState"
	local function __FUNC_244D_(arg0, arg2, arg3)
		return IsModelValueEqualToEnum(arg1, "Emblem.EmblemSelectedLayerProperties.gradient_type", Enum.CustomizationGradientType.CUSTOMIZATION_GRADIENT_RADIAL)
	end

	registerVal14.condition = __FUNC_244D_
	registerVal12 = {registerVal13, registerVal14}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, "Emblem.EmblemSelectedLayerProperties.gradient_type")
	local function __FUNC_255D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "Emblem.EmblemSelectedLayerProperties.gradient_type"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_255D_)
	registerVal2:addElement(registerVal9)
	registerVal2.gradientType = registerVal9
	registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, false, 616.730000, 650.730000)
	registerVal10:setTopBottom(true, false, 49.110000, 74.110000)
	registerVal10:setTTF("fonts/default.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_26A4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "EmblemSelectedLayerProperties", "gradient_fill", __FUNC_26A4_)
	registerVal2:addElement(registerVal10)
	registerVal2.gradientFillValue = registerVal10
	local registerVal11 = {}
	registerVal11.right = registerVal6
	registerVal11.down = registerVal7
	registerVal5.navigation = registerVal11
	registerVal11 = {}
	registerVal11.left = registerVal5
	registerVal11.down = registerVal7
	registerVal6.navigation = registerVal11
	registerVal11 = {}
	registerVal12 = {}
	registerVal12 = {registerVal5, registerVal6}
	registerVal11.up = registerVal12
	registerVal7.navigation = registerVal11
	registerVal11 = {}
	registerVal12 = {}
	local function __FUNC_275E_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal5:completeAnimation()
		registerVal2.gradientColor0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.gradientColor1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.gradientSlider:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.gradientSliderHeader:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.gradientType:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.gradientFillValue:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_275E_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_2A35_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal5:completeAnimation()
		registerVal5.buttonBorder:completeAnimation()
		registerVal2.gradientColor0:setAlpha(1.000000)
		registerVal2.gradientColor0.buttonBorder:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.gradientColor1:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.gradientSlider:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.gradientSliderHeader:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.gradientType:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.gradientFillValue:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_2A35_
	registerVal11.Color0State = registerVal12
	registerVal12 = {}
	local function __FUNC_2D6D_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal5:completeAnimation()
		registerVal2.gradientColor0:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal6.buttonBorder:completeAnimation()
		registerVal2.gradientColor1:setAlpha(1.000000)
		registerVal2.gradientColor1.buttonBorder:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.gradientSlider:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.gradientSliderHeader:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.gradientType:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.gradientFillValue:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_2D6D_
	registerVal11.Color1State = registerVal12
	registerVal2.clipsPerState = registerVal11
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal5.id = "gradientColor0"
	registerVal6.id = "gradientColor1"
	registerVal7.id = "gradientSlider"
	local function __FUNC_30A5_(arg0, arg1)
		local registerVal2 = arg0.gradientColor0:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_30A5_)
	local function __FUNC_31AE_(arg0)
		arg0.EmblemEditorFrame0:close()
		arg0.gradientColor0:close()
		arg0.gradientColor1:close()
		arg0.gradientSlider:close()
		arg0.gradientType:close()
		arg0.gradientFillValue:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_31AE_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

