-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Craft.EmblemEditor.ColorPicker.EmblemColorElement")
require("ui.uieditor.widgets.Craft.EmblemEditor.EmblemEditorFrame")
require("ui.uieditor.widgets.Craft.Paintshop.PaintshopButtonPrompt")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.EmblemEditorGradientColorSwatch = registerVal1
function CoD.EmblemEditorGradientColorSwatch.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.EmblemEditorGradientColorSwatch)
	registerVal2.id = "EmblemEditorGradientColorSwatch"
	registerVal2.soundSet = "SelectColor_ColorSwatchPicker"
	registerVal2:setLeftRight(true, false, 0.000000, 710.000000)
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
	local registerVal4 = CoD.EmblemColorElement.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 43.000000, 81.000000)
	registerVal4:setTopBottom(true, false, 4.500000, 148.500000)
	local function __FUNC_E37_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_E37_)
	local function __FUNC_E86_(arg0, arg2)
		if arg0.gainFocus then
			local registerVal3 = arg0.gainFocus(arg0, arg2)
		else
			if arg0.super.gainFocus then
				registerVal3 = arg0.super.gainFocus(arg0, arg2)
			end
		end
		registerVal3 = IsModelValueEqualToEnum(arg1, "Emblem.EmblemProperties.colorNum", Enum.CustomizationColorNum.CUSTOMIZATION_COLOR_0)
		if registerVal3 then
			EmblemChooseColor_SelectionChanged(registerVal2, arg0, arg1)
			SetProperty(registerVal2, "isColor0NoColor", false)
		else
			registerVal3 = IsModelValueEqualToEnum(arg1, "Emblem.EmblemProperties.colorNum", Enum.CustomizationColorNum.CUSTOMIZATION_COLOR_1)
			if registerVal3 then
				EmblemChooseColor_SelectionChanged(registerVal2, arg0, arg1)
				SetProperty(registerVal2, "isColor1NoColor", false)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("gain_focus", __FUNC_E86_)
	registerVal2:addElement(registerVal4)
	registerVal2.lastSavedColor = registerVal4
	local registerVal5 = LUI.UIList.new(arg0, arg1, 0.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal5:makeFocusable()
	registerVal5:setLeftRight(true, false, 82.000000, 706.000000)
	registerVal5:setTopBottom(true, false, 4.500000, 148.500000)
	registerVal5:setDataSource("EmblemColorList")
	registerVal5:setWidgetType(CoD.EmblemColorElement)
	registerVal5:setHorizontalCount(13.000000)
	registerVal5:setVerticalCount(9.000000)
	registerVal5:setSpacing(0.000000)
	local function __FUNC_113B_(arg0, arg2)
		local registerVal3 = IsModelValueEqualToEnum(arg1, "Emblem.EmblemProperties.colorNum", Enum.CustomizationColorNum.CUSTOMIZATION_COLOR_0)
		if registerVal3 then
			EmblemChooseColor_SelectionChanged(registerVal2, arg0, arg1)
			SetProperty(registerVal2, "isColor0NoColor", false)
		else
			registerVal3 = IsModelValueEqualToEnum(arg1, "Emblem.EmblemProperties.colorNum", Enum.CustomizationColorNum.CUSTOMIZATION_COLOR_1)
			if registerVal3 then
				EmblemChooseColor_SelectionChanged(registerVal2, arg0, arg1)
				SetProperty(registerVal2, "isColor1NoColor", false)
			end
		end
		return nil
	end

	registerVal5:registerEventHandler("list_item_gain_focus", __FUNC_113B_)
	registerVal2:addElement(registerVal5)
	registerVal2.emblemColorSwatch = registerVal5
	local registerVal6 = CoD.EmblemEditorFrame.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 0.000000, 710.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 175.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.EmblemEditorFrame0 = registerVal6
	local registerVal7 = CoD.PaintshopButtonPrompt.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 4.000000, 237.000000)
	registerVal7:setTopBottom(true, false, 149.500000, 180.500000)
	registerVal7.label:setText(Engine.Localize("MENU_EMBLEM_TOGGLE_TO_COLOR_MIXER"))
	local function __FUNC_1351_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "Controller", "back_button_image", __FUNC_1351_)
	registerVal2:addElement(registerVal7)
	registerVal2.toggleColorMixerButton = registerVal7
	local registerVal8 = CoD.EmblemColorElement.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 4.000000, 42.000000)
	registerVal8:setTopBottom(true, false, 4.500000, 148.500000)
	registerVal8.colorElement:setImage(RegisterImage("uie_t7_menu_paintshop_transparent"))
	local function __FUNC_142B_(arg0, arg2)
		if arg0.gainFocus then
			local registerVal3 = arg0.gainFocus(arg0, arg2)
		else
			if arg0.super.gainFocus then
				registerVal3 = arg0.super.gainFocus(arg0, arg2)
			end
		end
		registerVal3 = IsModelValueEqualToEnum(arg1, "Emblem.EmblemProperties.colorNum", Enum.CustomizationColorNum.CUSTOMIZATION_COLOR_0)
		if registerVal3 then
			EmblemChooseColor_SelectNoColor(registerVal2, arg0, arg1)
			SetProperty(registerVal2, "isColor0NoColor", true)
		else
			registerVal3 = IsModelValueEqualToEnum(arg1, "Emblem.EmblemProperties.colorNum", Enum.CustomizationColorNum.CUSTOMIZATION_COLOR_1)
			if registerVal3 then
				EmblemChooseColor_SelectNoColor(registerVal2, arg0, arg1)
				SetProperty(registerVal2, "isColor1NoColor", true)
			end
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("gain_focus", __FUNC_142B_)
	local function __FUNC_16DC_(arg0, arg2)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg2)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg2)
			end
		end
		EmblemChooseColor_NoColorLoseFocus(registerVal2, arg0, arg1)
		return registerVal3
	end

	registerVal8:registerEventHandler("lose_focus", __FUNC_16DC_)
	registerVal2:addElement(registerVal8)
	registerVal2.noColor = registerVal8
	local registerVal9 = {}
	registerVal9.left = registerVal8
	registerVal9.right = registerVal5
	registerVal4.navigation = registerVal9
	registerVal9 = {}
	registerVal9.left = registerVal4
	registerVal5.navigation = registerVal9
	registerVal9 = {}
	registerVal9.right = registerVal4
	registerVal8.navigation = registerVal9
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal4.id = "lastSavedColor"
	registerVal5.id = "emblemColorSwatch"
	registerVal8.id = "noColor"
	local function __FUNC_17EE_(arg0, arg1)
		local registerVal2 = arg0.lastSavedColor:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_17EE_)
	local function __FUNC_18F6_(arg0)
		arg0.lastSavedColor:close()
		arg0.emblemColorSwatch:close()
		arg0.EmblemEditorFrame0:close()
		arg0.toggleColorMixerButton:close()
		arg0.noColor:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_18F6_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

