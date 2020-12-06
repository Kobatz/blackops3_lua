-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveStroke")
require("ui.uieditor.widgets.Craft.EmblemEditor.GroupFractionLabel")
require("ui.uieditor.widgets.Craft.Paintshop.PaintshopChoosePaintSide")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.EmblemEditorMaterialInfo = registerVal1
function CoD.EmblemEditorMaterialInfo.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.EmblemEditorMaterialInfo)
	registerVal2.id = "EmblemEditorMaterialInfo"
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
	local registerVal5 = CoD.GroupFractionLabel.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, -0.050000, 155.950000)
	registerVal5:setTopBottom(true, false, 33.500000, 57.000000)
	local function __FUNC_1769_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.groupsUsedValue:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "EmblemProperties", "layersUsedFraction", __FUNC_1769_)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "GroupsFull"
	local function __FUNC_1847_(arg0, arg2, arg3)
		local registerVal3 = IsEmptyLayerAvailable(arg1)
		return (not registerVal3)
	end

	registerVal9.condition = __FUNC_1847_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "Emblem.EmblemProperties.layersUsed")
	local function __FUNC_18A3_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "Emblem.EmblemProperties.layersUsed"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_18A3_)
	registerVal2:addElement(registerVal5)
	registerVal2.layerUsedValue = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 10.000000, 157.000000)
	registerVal6:setTopBottom(true, false, 38.000000, 57.000000)
	registerVal6:setRGB(0.560000, 0.600000, 0.610000)
	registerVal6:setText(Engine.Localize("MENU_EMBLEM_LAYERS_USED"))
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.TextBox4 = registerVal6
	local registerVal7 = CoD.PaintshopChoosePaintSide.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 27.000000)
	local function __FUNC_19D8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.PaintshopChooseSide.text:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "Customization", "view_string_ref", __FUNC_19D8_)
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "BrowseModeControlsState"
	local function __FUNC_1AD5_(arg0, arg2, arg3)
		local registerVal3 = IsPaintshop(arg1)
		if registerVal3 then
			registerVal3 = IsModelValueEqualToEnum(arg1, "Emblem.EmblemProperties.editorMode", Enum.CustomizationEditorMode.CUSTOMIZATION_EDITOR_MODE_EDIT)
		end
		return (not registerVal3)
	end

	registerVal11.condition = __FUNC_1AD5_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "Emblem.EmblemProperties.editorMode")
	local function __FUNC_1C01_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "Emblem.EmblemProperties.editorMode"
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:subscribeToModel(registerVal10, __FUNC_1C01_)
	registerVal2:addElement(registerVal7)
	registerVal2.choosePaintSide = registerVal7
	registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, false, 57.000000, 65.000000)
	registerVal8:setRGB(0.900000, 0.900000, 0.900000)
	registerVal8:setAlpha(0.450000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.CategoryListLine = registerVal8
	registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, false, 10.000000, 155.940000)
	registerVal9:setTopBottom(true, false, 111.500000, 130.500000)
	registerVal9:setRGB(0.560000, 0.600000, 0.610000)
	registerVal9:setText(Engine.Localize("MENU_EMBLEM_MATERIAL_ROTATION"))
	registerVal9:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal9)
	registerVal2.rotationText = registerVal9
	registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, false, 10.000000, 157.000000)
	registerVal10:setTopBottom(true, false, 111.500000, 130.500000)
	registerVal10:setTTF("fonts/escom.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1D38_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "material_angle", true, __FUNC_1D38_)
	registerVal2:addElement(registerVal10)
	registerVal2.rotationValue = registerVal10
	registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, 10.000000, 155.940000)
	registerVal11:setTopBottom(true, false, 70.000000, 89.500000)
	registerVal11:setRGB(0.560000, 0.600000, 0.610000)
	registerVal11:setText(Engine.Localize("MENU_EMBLEM_LAYER_PROPERTY_SCALE"))
	registerVal11:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal11)
	registerVal2.scaleText = registerVal11
	local registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(true, false, 77.950000, 104.940000)
	registerVal12:setTopBottom(true, false, 70.500000, 89.500000)
	registerVal12:setTTF("fonts/escom.ttf")
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1DF2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal12:linkToElementModel(registerVal2, "material_xscale", true, __FUNC_1DF2_)
	registerVal2:addElement(registerVal12)
	registerVal2.xScaleValue = registerVal12
	local registerVal13 = LUI.UIText.new()
	registerVal13:setLeftRight(true, false, 10.000000, 155.940000)
	registerVal13:setTopBottom(true, false, 70.500000, 89.500000)
	registerVal13:setTTF("fonts/escom.ttf")
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1EAA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal13:linkToElementModel(registerVal2, "material_yscale", true, __FUNC_1EAA_)
	registerVal2:addElement(registerVal13)
	registerVal2.yScaleValue = registerVal13
	local registerVal14 = LUI.UIText.new()
	registerVal14:setLeftRight(true, false, 66.940000, 114.960000)
	registerVal14:setTopBottom(true, false, 70.500000, 89.500000)
	registerVal14:setRGB(0.560000, 0.600000, 0.610000)
	registerVal14:setText(Engine.Localize("MENU_EMBLEM_X_TEXT"))
	registerVal14:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal14)
	registerVal2.scaleX = registerVal14
	local registerVal15 = LUI.UIText.new()
	registerVal15:setLeftRight(true, false, 35.910000, 128.970000)
	registerVal15:setTopBottom(true, false, 70.500000, 89.500000)
	registerVal15:setRGB(0.560000, 0.600000, 0.610000)
	registerVal15:setText(Engine.Localize("MENU_EMBLEM_Y_TEXT"))
	registerVal15:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal15)
	registerVal2.scaleY = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal16:setTopBottom(true, false, 95.000000, 103.000000)
	registerVal16:setRGB(0.900000, 0.900000, 0.900000)
	registerVal16:setAlpha(0.450000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal16)
	registerVal2.CategoryListLine0 = registerVal16
	local function __FUNC_1F62_(arg0)
		arg0.cacButtonBoxLrgInactiveStroke0:close()
		arg0.layerUsedValue:close()
		arg0.choosePaintSide:close()
		arg0.rotationValue:close()
		arg0.xScaleValue:close()
		arg0.yScaleValue:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1F62_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

