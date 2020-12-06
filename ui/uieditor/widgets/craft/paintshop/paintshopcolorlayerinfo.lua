-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveStroke")
require("ui.uieditor.widgets.Craft.EmblemEditor.GroupFractionLabel")
require("ui.uieditor.widgets.Craft.Paintshop.PaintshopChoosePaintSide")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PaintshopColorLayerInfo = registerVal1
function CoD.PaintshopColorLayerInfo.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PaintshopColorLayerInfo)
	registerVal2.id = "PaintshopColorLayerInfo"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 168.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 146.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.450000, 0.000000)
	registerVal3:setTopBottom(true, true, 31.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.500000)
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = CoD.cac_ButtonBoxLrgInactiveStroke.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal4:setTopBottom(true, true, 28.000000, 2.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.cacButtonBoxLrgInactiveStroke0 = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 10.000000, 147.470000)
	registerVal5:setTopBottom(true, false, 71.500000, 90.500000)
	registerVal5:setRGB(0.560000, 0.600000, 0.610000)
	registerVal5:setText(Engine.Localize("MENU_EMBLEM_COLOR_1_OPACITY"))
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.color0OpacityText = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 22.000000, 161.500000)
	registerVal6:setTopBottom(true, false, 69.500000, 88.500000)
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1663_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(AppendString("%", registerVal1)))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "EmblemSelectedLayerProperties", "opacity0", __FUNC_1663_)
	registerVal2:addElement(registerVal6)
	registerVal2.color0OpacityValue = registerVal6
	local registerVal7 = CoD.GroupFractionLabel.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 5.500000, 161.500000)
	registerVal7:setTopBottom(true, false, 33.500000, 57.000000)
	local function __FUNC_1747_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.groupsUsedValue:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "EmblemProperties", "layersUsedFraction", __FUNC_1747_)
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "GroupsFull"
	local function __FUNC_1823_(arg0, arg2, arg3)
		local registerVal3 = IsEmptyLayerAvailable(arg1)
		return (not registerVal3)
	end

	registerVal11.condition = __FUNC_1823_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "Emblem.EmblemProperties.layersUsed")
	local function __FUNC_187F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "Emblem.EmblemProperties.layersUsed"
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:subscribeToModel(registerVal10, __FUNC_187F_)
	registerVal2:addElement(registerVal7)
	registerVal2.layerUsedValue = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 10.000000, 157.000000)
	registerVal8:setTopBottom(true, false, 36.000000, 55.000000)
	registerVal8:setRGB(0.560000, 0.600000, 0.610000)
	registerVal8:setText(Engine.Localize("MENU_EMBLEM_LAYERS_USED"))
	registerVal8:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal8)
	registerVal2.TextBox4 = registerVal8
	local registerVal9 = CoD.PaintshopChoosePaintSide.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(true, false, 0.000000, 27.000000)
	registerVal9:setAlpha(0.000000)
	local function __FUNC_19B4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.PaintshopChooseSide.text:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "Customization", "view_string_ref", __FUNC_19B4_)
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "BrowseModeControlsState"
	local function __FUNC_1AB1_(arg0, arg2, arg3)
		local registerVal3 = IsPaintshop(arg1)
		if registerVal3 then
			registerVal3 = IsModelValueEqualToEnum(arg1, "Emblem.EmblemProperties.editorMode", Enum.CustomizationEditorMode.CUSTOMIZATION_EDITOR_MODE_EDIT)
		end
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_1AB1_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, "Emblem.EmblemProperties.editorMode")
	local function __FUNC_1BDD_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "Emblem.EmblemProperties.editorMode"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_1BDD_)
	registerVal2:addElement(registerVal9)
	registerVal2.choosePaintSide = registerVal9
	registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal10:setTopBottom(true, false, 57.000000, 65.000000)
	registerVal10:setRGB(0.900000, 0.900000, 0.900000)
	registerVal10:setAlpha(0.450000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.CategoryListLine = registerVal10
	registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, 10.000000, 147.470000)
	registerVal11:setTopBottom(true, false, 94.500000, 113.500000)
	registerVal11:setRGB(0.560000, 0.600000, 0.610000)
	registerVal11:setText(Engine.Localize("MENU_EMBLEM_COLOR_2_OPACITY"))
	registerVal11:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal11)
	registerVal2.color1OpacityText = registerVal11
	registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(true, false, 22.000000, 161.500000)
	registerVal12:setTopBottom(true, false, 92.500000, 111.500000)
	registerVal12:setTTF("fonts/escom.ttf")
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1D14_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setText(Engine.Localize(AppendString("%", registerVal1)))
		end
	end

	registerVal12:subscribeToGlobalModel(arg1, "EmblemSelectedLayerProperties", "opacity1", __FUNC_1D14_)
	registerVal2:addElement(registerVal12)
	registerVal2.color1OpacityValue = registerVal12
	registerVal13 = LUI.UIText.new()
	registerVal13:setLeftRight(true, false, 10.000000, 147.470000)
	registerVal13:setTopBottom(true, false, 117.500000, 136.500000)
	registerVal13:setRGB(0.560000, 0.600000, 0.610000)
	registerVal13:setText(Engine.Localize("MENU_EMBLEM_GRADIENT_ROTATION"))
	registerVal13:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal13)
	registerVal2.rotationText = registerVal13
	local registerVal14 = LUI.UIText.new()
	registerVal14:setLeftRight(true, false, 22.000000, 161.500000)
	registerVal14:setTopBottom(true, false, 117.500000, 136.500000)
	registerVal14:setTTF("fonts/escom.ttf")
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1DFB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal14:subscribeToGlobalModel(arg1, "EmblemSelectedLayerProperties", "gradient_angle", __FUNC_1DFB_)
	registerVal2:addElement(registerVal14)
	registerVal2.rotationValue = registerVal14
	local registerVal15 = {}
	local registerVal16 = {}
	local function __FUNC_1EB2_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal5:completeAnimation()
		registerVal2.color0OpacityText:setText(Engine.Localize("MENU_EMBLEM_LAYER_OPACITY"))
		registerVal2.clipFinished(registerVal5, {})
		registerVal9:completeAnimation()
		registerVal2.choosePaintSide:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.color1OpacityText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.color1OpacityValue:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.rotationText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.rotationValue:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_1EB2_
	registerVal15.DefaultState = registerVal16
	registerVal16 = {}
	local function __FUNC_21F4_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal5:completeAnimation()
		registerVal2.color0OpacityText:setText(Engine.Localize("MENU_EMBLEM_COLOR_1_OPACITY"))
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.color0OpacityValue:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal2.choosePaintSide:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.color1OpacityText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.color1OpacityValue:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.rotationText:setLeftRight(true, false, 10.000000, 147.470000)
		registerVal2.rotationText:setTopBottom(true, false, 117.500000, 136.500000)
		registerVal2.rotationText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.rotationValue:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_21F4_
	registerVal15.GradientColorInfo = registerVal16
	registerVal2.clipsPerState = registerVal15
	local function __FUNC_262F_(arg0)
		arg0.cacButtonBoxLrgInactiveStroke0:close()
		arg0.layerUsedValue:close()
		arg0.choosePaintSide:close()
		arg0.color0OpacityValue:close()
		arg0.color1OpacityValue:close()
		arg0.rotationValue:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_262F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

