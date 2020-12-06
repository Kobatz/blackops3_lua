-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveStroke")
require("ui.uieditor.widgets.Craft.EmblemEditor.GroupFractionLabel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.EmblemEditorLayerProperties = registerVal1
function CoD.EmblemEditorLayerProperties.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.EmblemEditorLayerProperties)
	registerVal2.id = "EmblemEditorLayerProperties"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 168.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 192.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.450000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.500000)
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = CoD.cac_ButtonBoxLrgInactiveStroke.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, -2.000000, 170.000000)
	registerVal4:setTopBottom(true, false, -1.450000, 192.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.cacButtonBoxLrgInactiveStroke0 = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 10.000000, 162.940000)
	registerVal5:setTopBottom(true, false, 73.550000, 92.550000)
	registerVal5:setRGB(0.560000, 0.600000, 0.610000)
	registerVal5:setText(Engine.Localize("MENU_EMBLEM_LAYER_PROPERTY_POSITION"))
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.positionText = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 10.000000, 162.940000)
	registerVal6:setTopBottom(true, false, 97.550000, 116.550000)
	registerVal6:setRGB(0.560000, 0.600000, 0.610000)
	registerVal6:setText(Engine.Localize("MENU_EMBLEM_LAYER_PROPERTY_SCALE"))
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.scaleText = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 10.000000, 162.940000)
	registerVal7:setTopBottom(true, false, 134.000000, 154.000000)
	registerVal7:setRGB(0.560000, 0.600000, 0.610000)
	registerVal7:setText(Engine.Localize("MENU_EMBLEM_LAYER_PROPERTY_ROTATION"))
	registerVal7:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.rotationText = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 10.000000, 162.940000)
	registerVal8:setTopBottom(true, false, 156.000000, 175.000000)
	registerVal8:setRGB(0.560000, 0.600000, 0.610000)
	registerVal8:setText(Engine.Localize("MENU_EMBLEM_LAYER_OPACITY"))
	registerVal8:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal8)
	registerVal2.opacityText = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(false, true, -98.000000, -63.040000)
	registerVal9:setTopBottom(true, false, 73.550000, 92.550000)
	registerVal9:setTTF("fonts/escom.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_23B1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "xposition", true, __FUNC_23B1_)
	registerVal2:addElement(registerVal9)
	registerVal2.xPositionValue = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(false, true, -161.000000, -5.060000)
	registerVal10:setTopBottom(true, false, 73.550000, 92.550000)
	registerVal10:setTTF("fonts/escom.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_246A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "yposition", true, __FUNC_246A_)
	registerVal2:addElement(registerVal10)
	registerVal2.yPositionValue = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(false, true, -98.000000, -63.040000)
	registerVal11:setTopBottom(true, false, 97.550000, 116.550000)
	registerVal11:setTTF("fonts/escom.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_2522_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "xscale", true, __FUNC_2522_)
	registerVal2:addElement(registerVal11)
	registerVal2.xScaleValue = registerVal11
	local registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(false, true, -161.000000, -5.060000)
	registerVal12:setTopBottom(true, false, 97.550000, 116.550000)
	registerVal12:setTTF("fonts/escom.ttf")
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_25DA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal12:linkToElementModel(registerVal2, "yscale", true, __FUNC_25DA_)
	registerVal2:addElement(registerVal12)
	registerVal2.yScaleValue = registerVal12
	local registerVal13 = LUI.UIText.new()
	registerVal13:setLeftRight(false, true, -161.000000, -5.060000)
	registerVal13:setTopBottom(true, false, 134.000000, 153.000000)
	registerVal13:setTTF("fonts/escom.ttf")
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_2692_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal13:linkToElementModel(registerVal2, "rotation", true, __FUNC_2692_)
	registerVal2:addElement(registerVal13)
	registerVal2.rotationValue = registerVal13
	local registerVal14 = LUI.UIText.new()
	registerVal14:setLeftRight(false, true, -161.000000, -5.060000)
	registerVal14:setTopBottom(true, false, 156.000000, 175.000000)
	registerVal14:setTTF("fonts/escom.ttf")
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_274A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14:setText(Engine.Localize(AppendString("%", registerVal1)))
		end
	end

	registerVal14:subscribeToGlobalModel(arg1, "EmblemSelectedLayerProperties", "max_opacity", __FUNC_274A_)
	registerVal2:addElement(registerVal14)
	registerVal2.opacityValue = registerVal14
	local registerVal15 = CoD.GroupFractionLabel.new(arg0, arg1)
	registerVal15:setLeftRight(false, true, -161.000000, -5.000000)
	registerVal15:setTopBottom(true, false, 1.000000, 24.500000)
	local function __FUNC_282F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15.groupsUsedValue:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal15:subscribeToGlobalModel(arg1, "EmblemProperties", "layersUsedFraction", __FUNC_282F_)
	local registerVal18 = {}
	local registerVal19 = {}
	registerVal19.stateName = "GroupsFull"
	local function __FUNC_290B_(arg0, arg2, arg3)
		local registerVal3 = IsEmptyLayerAvailable(arg1)
		return (not registerVal3)
	end

	registerVal19.condition = __FUNC_290B_
	registerVal18 = {registerVal19}
	registerVal15:mergeStateConditions(registerVal18)
	registerVal19 = Engine.GetModelForController(arg1)
	registerVal18 = Engine.GetModel(registerVal19, "Emblem.EmblemProperties.layersUsed")
	local function __FUNC_2967_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "Emblem.EmblemProperties.layersUsed"
		arg0:updateElementState(registerVal15, registerVal4)
	end

	registerVal15:subscribeToModel(registerVal18, __FUNC_2967_)
	registerVal2:addElement(registerVal15)
	registerVal2.layerUsedValue = registerVal15
	local registerVal16 = LUI.UIText.new()
	registerVal16:setLeftRight(true, false, 67.000000, 104.960000)
	registerVal16:setTopBottom(true, false, 76.550000, 91.550000)
	registerVal16:setRGB(0.560000, 0.600000, 0.610000)
	registerVal16:setText(Engine.Localize("MENU_EMBLEM_X_TEXT"))
	registerVal16:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal16:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal16:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal16)
	registerVal2.TextBox0 = registerVal16
	local registerVal17 = LUI.UIText.new()
	registerVal17:setLeftRight(true, false, 67.000000, 104.960000)
	registerVal17:setTopBottom(true, false, 97.550000, 116.550000)
	registerVal17:setRGB(0.560000, 0.600000, 0.610000)
	registerVal17:setText(Engine.Localize("MENU_EMBLEM_X_TEXT"))
	registerVal17:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal17)
	registerVal2.TextBox1 = registerVal17
	registerVal18 = LUI.UIText.new()
	registerVal18:setLeftRight(false, true, -139.080000, -38.060000)
	registerVal18:setTopBottom(true, false, 73.550000, 92.550000)
	registerVal18:setRGB(0.560000, 0.600000, 0.610000)
	registerVal18:setText(Engine.Localize("MENU_EMBLEM_Y_TEXT"))
	registerVal18:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal18:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal18:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal18)
	registerVal2.TextBox2 = registerVal18
	registerVal19 = LUI.UIText.new()
	registerVal19:setLeftRight(false, true, -139.080000, -38.060000)
	registerVal19:setTopBottom(true, false, 97.550000, 116.550000)
	registerVal19:setRGB(0.560000, 0.600000, 0.610000)
	registerVal19:setText(Engine.Localize("MENU_EMBLEM_Y_TEXT"))
	registerVal19:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal19:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal19:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal19)
	registerVal2.TextBox3 = registerVal19
	local registerVal20 = LUI.UIText.new()
	registerVal20:setLeftRight(true, false, 10.000000, 162.940000)
	registerVal20:setTopBottom(true, false, 5.000000, 24.000000)
	registerVal20:setRGB(0.560000, 0.600000, 0.610000)
	registerVal20:setText(Engine.Localize("MENU_EMBLEM_LAYERS_USED"))
	registerVal20:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal20:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal20:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal20)
	registerVal2.TextBox4 = registerVal20
	local registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal21:setTopBottom(true, false, 60.000000, 68.000000)
	registerVal21:setRGB(0.900000, 0.900000, 0.900000)
	registerVal21:setAlpha(0.450000)
	registerVal21:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal21:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal21)
	registerVal2.CategoryListLine = registerVal21
	local registerVal22 = LUI.UIImage.new()
	registerVal22:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal22:setTopBottom(true, false, 121.500000, 129.500000)
	registerVal22:setRGB(0.900000, 0.900000, 0.900000)
	registerVal22:setAlpha(0.450000)
	registerVal22:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal22:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal22)
	registerVal2.CategoryListLine0 = registerVal22
	local registerVal23 = LUI.UIText.new()
	registerVal23:setLeftRight(true, false, 10.000000, 162.940000)
	registerVal23:setTopBottom(true, false, 43.000000, 62.000000)
	registerVal23:setRGB(0.560000, 0.600000, 0.610000)
	registerVal23:setAlpha(0.000000)
	registerVal23:setText(Engine.Localize("MENU_LINKED_LAYERS"))
	registerVal23:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal23:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal23:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal23)
	registerVal2.linkedLayerText = registerVal23
	local registerVal24 = LUI.UIText.new()
	registerVal24:setLeftRight(false, true, -161.000000, -5.000000)
	registerVal24:setTopBottom(true, false, 43.000000, 62.000000)
	registerVal24:setAlpha(0.000000)
	registerVal24:setTTF("fonts/escom.ttf")
	registerVal24:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal24:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_2A9C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal24:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal24:subscribeToGlobalModel(arg1, "EmblemProperties", "linkedLayerCount", __FUNC_2A9C_)
	registerVal2:addElement(registerVal24)
	registerVal2.linkedLayersValue = registerVal24
	local registerVal25 = LUI.UIText.new()
	registerVal25:setLeftRight(true, false, 10.000000, 162.940000)
	registerVal25:setTopBottom(true, false, 24.000000, 43.000000)
	registerVal25:setRGB(0.560000, 0.600000, 0.610000)
	registerVal25:setAlpha(0.000000)
	registerVal25:setText(Engine.Localize("MENU_EMBLEM_GROUPS_USED"))
	registerVal25:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal25:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal25:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal25)
	registerVal2.groupsUsedText = registerVal25
	local registerVal26 = CoD.GroupFractionLabel.new(arg0, arg1)
	registerVal26:setLeftRight(false, true, -161.000000, -5.000000)
	registerVal26:setTopBottom(true, false, 19.500000, 43.000000)
	registerVal26:setAlpha(0.000000)
	local function __FUNC_2B56_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal26.groupsUsedValue:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal26:subscribeToGlobalModel(arg1, "EmblemProperties", "groupsUsedFraction", __FUNC_2B56_)
	local registerVal29 = {}
	local registerVal30 = {}
	registerVal30.stateName = "GroupsFull"
	local function __FUNC_2C33_(arg0, arg2, arg3)
		local registerVal3 = IsGroupSlotAvailable(arg1)
		return (not registerVal3)
	end

	registerVal30.condition = __FUNC_2C33_
	registerVal29 = {registerVal30}
	registerVal26:mergeStateConditions(registerVal29)
	registerVal30 = Engine.GetModelForController(arg1)
	registerVal29 = Engine.GetModel(registerVal30, "Emblem.EmblemProperties.groupsUsed")
	local function __FUNC_2C8E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "Emblem.EmblemProperties.groupsUsed"
		arg0:updateElementState(registerVal26, registerVal4)
	end

	registerVal26:subscribeToModel(registerVal29, __FUNC_2C8E_)
	registerVal2:addElement(registerVal26)
	registerVal2.groupsUsedValue = registerVal26
	local registerVal27 = {}
	local registerVal28 = {}
	local function __FUNC_2DC4_()
		registerVal2:setupElementClipCounter(23.000000)
		registerVal3:completeAnimation()
		registerVal2.Image0:setLeftRight(true, true, 0.450000, 0.000000)
		registerVal2.Image0:setTopBottom(true, true, 0.000000, -122.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.cacButtonBoxLrgInactiveStroke0:setLeftRight(true, false, -2.000000, 170.000000)
		registerVal2.cacButtonBoxLrgInactiveStroke0:setTopBottom(true, false, -1.450000, 67.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.positionText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.scaleText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.rotationText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.opacityText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.xPositionValue:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.yPositionValue:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.xScaleValue:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.yScaleValue:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.rotationValue:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.opacityValue:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal16:completeAnimation()
		registerVal2.TextBox0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.TextBox1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.TextBox2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.TextBox3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.TextBox4:setLeftRight(true, false, 10.000000, 168.000000)
		registerVal2.TextBox4:setTopBottom(true, false, 5.000000, 24.000000)
		registerVal2.TextBox4:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.CategoryListLine:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.CategoryListLine0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.linkedLayerText:setLeftRight(true, false, 10.000000, 162.940000)
		registerVal2.linkedLayerText:setTopBottom(true, false, 43.000000, 62.000000)
		registerVal2.linkedLayerText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.linkedLayersValue:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.groupsUsedText:setLeftRight(true, false, 10.000000, 162.940000)
		registerVal2.groupsUsedText:setTopBottom(true, false, 24.000000, 43.000000)
		registerVal2.groupsUsedText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.groupsUsedValue:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
	end

	registerVal28.DefaultClip = __FUNC_2DC4_
	registerVal27.DefaultState = registerVal28
	registerVal28 = {}
	local function __FUNC_385B_()
		registerVal2:setupElementClipCounter(23.000000)
		registerVal3:completeAnimation()
		registerVal2.Image0:setLeftRight(true, true, 0.450000, 0.000000)
		registerVal2.Image0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.cacButtonBoxLrgInactiveStroke0:setLeftRight(true, false, -2.000000, 170.000000)
		registerVal2.cacButtonBoxLrgInactiveStroke0:setTopBottom(true, false, -1.450000, 192.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.positionText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.scaleText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.rotationText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.opacityText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.xPositionValue:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.yPositionValue:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.xScaleValue:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.yScaleValue:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.rotationValue:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.opacityValue:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal16:completeAnimation()
		registerVal2.TextBox0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.TextBox1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.TextBox2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.TextBox3:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.TextBox4:setLeftRight(true, false, 10.000000, 162.940000)
		registerVal2.TextBox4:setTopBottom(true, false, 5.000000, 24.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.CategoryListLine:setAlpha(0.450000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.CategoryListLine0:setAlpha(0.450000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.linkedLayerText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.linkedLayersValue:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.groupsUsedText:setLeftRight(true, false, 10.000000, 162.940000)
		registerVal2.groupsUsedText:setTopBottom(true, false, 24.000000, 43.000000)
		registerVal2.groupsUsedText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.groupsUsedValue:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
	end

	registerVal28.DefaultClip = __FUNC_385B_
	registerVal27.EditModeLayerProperties = registerVal28
	registerVal28 = {}
	local function __FUNC_4274_()
		registerVal2:setupElementClipCounter(22.000000)
		registerVal4:completeAnimation()
		registerVal2.cacButtonBoxLrgInactiveStroke0:setLeftRight(true, false, -2.000000, 170.000000)
		registerVal2.cacButtonBoxLrgInactiveStroke0:setTopBottom(true, false, -1.450000, 68.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.positionText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.scaleText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.rotationText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.opacityText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.xPositionValue:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.yPositionValue:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.xScaleValue:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.yScaleValue:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.rotationValue:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.opacityValue:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal16:completeAnimation()
		registerVal2.TextBox0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.TextBox1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.TextBox2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.TextBox3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.TextBox4:setLeftRight(true, false, 10.000000, 162.940000)
		registerVal2.TextBox4:setTopBottom(true, false, 5.000000, 24.000000)
		registerVal2.TextBox4:setAlpha(1.000000)
		registerVal2.TextBox4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.CategoryListLine:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.CategoryListLine0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.linkedLayerText:setLeftRight(true, false, 10.000000, 162.940000)
		registerVal2.linkedLayerText:setTopBottom(true, false, 43.000000, 62.000000)
		registerVal2.linkedLayerText:setAlpha(0.000000)
		registerVal2.linkedLayerText:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.linkedLayersValue:setLeftRight(false, true, -158.000000, -5.000000)
		registerVal2.linkedLayersValue:setTopBottom(true, false, 43.000000, 62.000000)
		registerVal2.linkedLayersValue:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.groupsUsedText:setLeftRight(true, false, 10.000000, 162.940000)
		registerVal2.groupsUsedText:setTopBottom(true, false, 24.000000, 43.000000)
		registerVal2.groupsUsedText:setAlpha(0.000000)
		registerVal2.groupsUsedText:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.groupsUsedValue:setLeftRight(false, true, -158.000000, -5.000000)
		registerVal2.groupsUsedValue:setTopBottom(true, false, 19.500000, 43.000000)
		registerVal2.groupsUsedValue:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
	end

	registerVal28.DefaultClip = __FUNC_4274_
	registerVal27.ArabicFrontEnd = registerVal28
	registerVal2.clipsPerState = registerVal27
	registerVal29 = {}
	registerVal30 = {}
	registerVal30.stateName = "EditModeLayerProperties"
	local function __FUNC_4E15_(arg0, arg1, arg2)
		return true
	end

	registerVal30.condition = __FUNC_4E15_
	local registerVal31 = {}
	registerVal31.stateName = "ArabicFrontEnd"
	local function __FUNC_4E48_(arg0, arg1, arg2)
		local registerVal3 = IsInGame()
		if not registerVal3 then
			registerVal3 = IsArabicSku()
		else
		end
		return true
	end

	registerVal31.condition = __FUNC_4E48_
	registerVal29 = {registerVal30, registerVal31}
	registerVal2:mergeStateConditions(registerVal29)
	local function __FUNC_4EC3_(arg0)
		arg0.cacButtonBoxLrgInactiveStroke0:close()
		arg0.layerUsedValue:close()
		arg0.groupsUsedValue:close()
		arg0.xPositionValue:close()
		arg0.yPositionValue:close()
		arg0.xScaleValue:close()
		arg0.yScaleValue:close()
		arg0.rotationValue:close()
		arg0.opacityValue:close()
		arg0.linkedLayersValue:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_4EC3_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

