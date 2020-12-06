-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Background")
require("ui.uieditor.widgets.Craft.EmblemEditor.ColorPicker.EmblemEditorGradient")
require("ui.uieditor.widgets.Craft.EmblemEditor.ColorPicker.EmblemEditorColorMixerContainer")
require("ui.uieditor.widgets.Craft.EmblemEditor.ColorPicker.EmblemEditorColorSwatchContainer")
require("ui.uieditor.widgets.Craft.EmblemEditor.ColorPicker.EmblemEditorGradientColorSwatch")
require("ui.uieditor.widgets.Craft.Paintshop.PaintshopColorSwatchControls")
require("ui.uieditor.widgets.Craft.EmblemEditor.ColorPicker.EmblemEditorColorControls")
require("ui.uieditor.widgets.Craft.Paintshop.PaintshopColorLayerInfo")
require("ui.uieditor.widgets.CAC.cac_3dTitleIntermediary")
require("ui.uieditor.widgets.CAC.cac_ElemsSideList")
require("ui.uieditor.widgets.Craft.EmblemEditor.EmblemDrawWidgetNew")
require("ui.uieditor.widgets.Craft.EmblemEditor.ColorPicker.EmblemEditorColorTypeHeader")
require("ui.uieditor.widgets.Craft.Paintshop.PaintshopChoosePaintSide")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.PC.Craft.CraftActionHeader")
local function __FUNC_8A8_(arg0, arg1, arg2)
	CoD.SwapFocusableElements(arg0, arg1, arg2)
	arg1:hide()
	arg2:show()
end

local function __FUNC_94C_(arg0, arg1, arg2)
	if arg2 == Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_SOLID then
		if arg0.colorGradientSwatchContainer.m_focusable then
			__FUNC_8A8_(arg1, arg0.colorGradientSwatchContainer, arg0.colorSwatchContainer)
			arg0.colorGradientContainer:hide()
		else
			if arg0.colorGradientMixerContainer.m_focusable then
				__FUNC_8A8_(arg1, arg0.colorGradientMixerContainer, arg0.colorSwatchContainer)
				arg0.colorGradientContainer:hide()
			else
				if arg0.colorMixerContainer.m_focusable then
					__FUNC_8A8_(arg1, arg0.colorMixerContainer, arg0.colorSwatchContainer)
				else
					if arg0.colorGradientContainer.m_focusable then
						__FUNC_8A8_(arg1, arg0.colorGradientContainer, arg0.colorSwatchContainer)
					else
						CoD.SwapFocusableElements(arg1, arg0.colorSwatchContainer, arg0.colorSwatchContainer)
						if CoD.isPC and arg2 == Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_MIXER then
							if arg0.colorSwatchContainer.m_focusable then
								__FUNC_8A8_(arg1, arg0.colorSwatchContainer, arg0.colorMixerContainer)
							else
								if arg0.colorGradientContainer.m_focusable then
									__FUNC_8A8_(arg1, arg0.colorGradientContainer, arg0.colorMixerContainer)
								else
									if CoD.isPC then
										CoD.SwapFocusableElements(arg1, arg0.colorMixerContainer, arg0.colorMixerContainer)
									end
								end
							end
						end
					end
				end
			end
		end
	end
end

local function __FUNC_DAD_(arg0, arg1, arg2)
	if arg2 == Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_SOLID then
		if arg0.colorSwatchContainer.m_focusable then
			__FUNC_8A8_(arg1, arg0.colorSwatchContainer, arg0.colorGradientContainer)
		else
			if arg0.colorGradientMixerContainer.m_focusable then
				__FUNC_8A8_(arg1, arg0.colorGradientMixerContainer, arg0.colorGradientSwatchContainer)
			else
				if arg2 == Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_MIXER then
					if arg0.colorMixerContainer.m_focusable then
						__FUNC_8A8_(arg1, arg0.colorMixerContainer, arg0.colorGradientContainer)
					else
						__FUNC_8A8_(arg1, arg0.colorGradientSwatchContainer, arg0.colorGradientMixerContainer)
						if arg0.colorGradientSwatchContainer.m_focusable and CoD.isPC then
							CoD.SwapFocusableElements(arg1, arg0.colorGradientContainer, arg0.colorGradientContainer)
						end
					end
				end
			end
		end
	end
end

local function __FUNC_10FB_(arg0, arg1)
	local registerVal2 = CoD.GetEditorProperties(arg1, "isGradientMode")
	arg0:updateMode(Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_SOLID, registerVal2)
end

if CoD.isPC then
	require("ui.uieditor.widgets.PC.Craft.CraftActionButton")
	require("ui.uieditor.widgets.PC.Craft.CraftActionSlider")
	local function __FUNC_1214_(arg0)
		local registerVal1 = IsModelValueEqualTo(arg0, "Emblem.EmblemProperties.isGradientMode", 0.000000)
		if registerVal1 then
			return CoD.PCUtil.Craft_GetEmblemEditorSolidColorActions(arg0)
		else
			return CoD.PCUtil.Craft_GetEmblemEditorGradientModeActions(arg0)
		end
	end

	local registerVal5 = DataSourceHelpers.ListSetup("PC.CraftColorActionsPC", __FUNC_1214_, true)
	DataSources.CraftColorActionsPC = registerVal5
	DataSources.CraftColorActionsPC.getWidgetTypeForItem = CoD.PCUtil.Craft_WidgetSelectorFunc
end
local function __FUNC_1381_(arg0, arg1)
	local function __FUNC_15F1_(arg0, arg1)
		return true
	end

	arg0.emblemDrawWidget:registerEventHandler("button_action", __FUNC_15F1_)
	local function __FUNC_1624_(arg2, arg3)
		if arg3 == "EmblemEditor" or arg3 == "Paintshop" then
			local registerVal2 = CoD.GetEditorProperties(arg1, "colorMode")
			local registerVal3 = IsModelValueEqualTo(arg1, "Emblem.EmblemProperties.isGradientMode", 0.000000)
			if registerVal3 then
				__FUNC_94C_(arg0, arg1, registerVal2)
			else
				__FUNC_DAD_(arg0, arg1, registerVal2)
			end
			arg0.actionsListPC.m_inputDisabled = true
			local registerVal5 = {}
			registerVal5.name = "lose_focus"
			registerVal5.controller = arg1
			arg0.actionsListPC:processEvent(registerVal5)
		else
			arg0.actionsListPC.m_inputDisabled = nil
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "setState", __FUNC_1624_)
	local registerVal5 = Engine.GetModelForController(arg1)
	local registerVal4 = Engine.GetModel(registerVal5, "Emblem.EmblemProperties.isGradientMode")
	local function __FUNC_184F_(arg1)
		arg0.actionsListPC:updateDataSource()
	end

	arg0.actionsListPC:subscribeToModel(registerVal4, __FUNC_184F_)
	arg0.actionsListPC:setDataSource("CraftColorActionsPC")
	arg0.actionsListPC.navigation = nil
end

local function __FUNC_18C1_(arg0, arg1)
	local function __FUNC_1D32_(arg0, arg2, arg3, arg4)
		if arg3 == 1.000000 then
			CoD.SetEditorProperties(arg1, Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_NONE, "colorMode")
			if arg2 == Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_SOLID then
				__FUNC_DAD_(arg0, arg1, arg2)
			else
				if arg2 == Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_MIXER then
					__FUNC_DAD_(arg0, arg1, arg2)
				else
					if arg2 == Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_SOLID then
						__FUNC_94C_(arg0, arg1, arg2)
					else
						if arg2 == Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_MIXER then
							__FUNC_94C_(arg0, arg1, arg2)
						end
					end
				end
			end
		end
	end

	arg0.updateMode = __FUNC_1D32_
	arg0.colorGradientSwatchContainer:hide()
	arg0.colorGradientSwatchContainer:makeNotFocusable()
	arg0.colorMixerContainer:hide()
	arg0.colorMixerContainer:makeNotFocusable()
	arg0.colorGradientMixerContainer:hide()
	arg0.colorGradientMixerContainer:makeNotFocusable()
	arg0.colorGradientContainer:hide()
	arg0.colorGradientContainer:makeNotFocusable()
	local registerVal2 = IsPaintshop(arg1)
	registerVal2 = Dvar.ui_disablePSControlWidgets:get()
	if registerVal2 and registerVal2 == true then
		arg0.controls:setAlpha(0.000000)
		arg0.layersUsed:setAlpha(0.000000)
		arg0.layersUsedValue:setAlpha(0.000000)
		arg0.opacity:setAlpha(0.000000)
		arg0.opacityValue:setAlpha(0.000000)
	end
	arg0.colorGradientMixerContainer.navigation = nil
	arg0.colorGradientSwatchContainer.navigation = nil
	arg0.colorGradientContainer.navigation = nil
	arg0.colorSwatchContainer.navigation = nil
	arg0.colorMixerContainer.navigation = nil
	__FUNC_10FB_(arg0, arg1)
	EmblemGradient_UpdateGradientFillByStep(arg0.colorGradientContainer.gradientSlider, arg0.colorGradientContainer.gradientSlider, 0.000000, arg1)
	if CoD.isPC then
		__FUNC_1381_(arg0, arg1)
	end
end

local function __FUNC_1F6F_(arg0, arg1)
	local registerVal2 = Engine.GetSelectedLayerColor(arg1)
	local registerVal3 = Engine.GetSelectedLayerColor1(arg1)
	CoD.SetNoColorDataModel(arg1)
	if registerVal2.red == registerVal3.red and registerVal2.green == registerVal3.green and registerVal2.blue == registerVal3.blue and registerVal2.alpha == registerVal3.alpha then
		CoD.SetEditorProperties(arg1, Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_SOLID, "colorMode")
		CoD.SetEditorProperties(arg1, 0.000000, "isGradientMode")
		CoD.SetEditorProperties(arg1, Enum.CustomizationColorNum.CUSTOMIZATION_COLOR_NONE, "colorNum")
		return 
	end
	CoD.SetEditorProperties(arg1, Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_NONE, "colorMode")
	CoD.SetEditorProperties(arg1, 1.000000, "isGradientMode")
	CoD.SetEditorProperties(arg1, Enum.CustomizationColorNum.CUSTOMIZATION_COLOR_0, "colorNum")
end

local function __FUNC_2377_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("EmblemIconColorPicker")
	if __FUNC_1F6F_ then
		__FUNC_1F6F_(registerVal1, arg0)
	end
	registerVal1.soundSet = "SelectColor"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "EmblemIconColorPicker.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -638.000000, 642.000000)
	registerVal3:setTopBottom(false, false, -360.000000, 360.000000)
	registerVal3:setScale(1.000000)
	registerVal3:setImage(RegisterImage("uie_t7_mp_menu_cac_version6_backdrop720p"))
	registerVal1:addElement(registerVal3)
	registerVal1.Background = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.ScreenBkgd = registerVal4
	local registerVal5 = CoD.StartMenu_Background.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 79.000000, -139.000000)
	registerVal5:setAlpha(0.370000)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "InGame"
	local function __FUNC_4C4A_(arg0, arg1, arg2)
		return IsInGame()
	end

	registerVal9.condition = __FUNC_4C4A_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal1:addElement(registerVal5)
	registerVal1.StartMenuBackground0 = registerVal5
	local registerVal6 = CoD.EmblemEditorGradient.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 306.500000, 977.500000)
	registerVal6:setTopBottom(true, false, 472.000000, 647.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.colorGradientContainer = registerVal6
	local registerVal7 = CoD.EmblemEditorColorMixerContainer.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 306.500000, 977.500000)
	registerVal7:setTopBottom(true, false, 472.000000, 647.000000)
	registerVal7:setAlpha(0.000000)
	local function __FUNC_4C92_(arg1)
		registerVal7:setModel(arg1, arg0)
	end

	registerVal7:subscribeToGlobalModel(arg0, "EmblemSelectedLayerEdittingColor", nil, __FUNC_4C92_)
	registerVal1:addElement(registerVal7)
	registerVal1.colorMixerContainer = registerVal7
	registerVal8 = CoD.EmblemEditorColorSwatchContainer.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 306.500000, 977.500000)
	registerVal8:setTopBottom(true, false, 472.000000, 647.000000)
	local function __FUNC_4CE2_(arg1)
		registerVal8:setModel(arg1, arg0)
	end

	registerVal8:subscribeToGlobalModel(arg0, "EmblemSelectedLayerColor", nil, __FUNC_4CE2_)
	registerVal1:addElement(registerVal8)
	registerVal1.colorSwatchContainer = registerVal8
	registerVal9 = CoD.EmblemEditorGradientColorSwatch.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 286.750000, 996.250000)
	registerVal9:setTopBottom(true, false, 472.000000, 647.000000)
	registerVal9:setAlpha(0.990000)
	local function __FUNC_4D32_(arg1)
		registerVal9:setModel(arg1, arg0)
	end

	registerVal9:subscribeToGlobalModel(arg0, "EmblemSelectedLayerEdittingColor", nil, __FUNC_4D32_)
	registerVal1:addElement(registerVal9)
	registerVal1.colorGradientSwatchContainer = registerVal9
	local registerVal10 = CoD.EmblemEditorColorMixerContainer.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 306.500000, 977.500000)
	registerVal10:setTopBottom(true, false, 472.000000, 647.000000)
	registerVal10:setAlpha(0.000000)
	local function __FUNC_4D82_(arg1)
		registerVal10:setModel(arg1, arg0)
	end

	registerVal10:subscribeToGlobalModel(arg0, "EmblemSelectedLayerEdittingColor", nil, __FUNC_4D82_)
	registerVal1:addElement(registerVal10)
	registerVal1.colorGradientMixerContainer = registerVal10
	local registerVal11 = CoD.PaintshopColorSwatchControls.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 110.000000, 360.000000)
	registerVal11:setTopBottom(true, false, 130.000000, 290.000000)
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "Gradient"
	local function __FUNC_4DD2_(arg1, arg2, arg3)
		return IsModelValueEqualTo(arg0, "Emblem.EmblemProperties.isGradientMode", 0.000000)
	end

	registerVal15.condition = __FUNC_4DD2_
	local registerVal16 = {}
	registerVal16.stateName = "Solid"
	local function __FUNC_4E66_(arg1, arg2, arg3)
		local registerVal3 = IsModelValueEqualTo(arg0, "Emblem.EmblemProperties.isGradientMode", 1.000000)
		if registerVal3 then
			registerVal3 = IsSelectedColorEmpty(arg2, arg0)
		end
		return (not registerVal3)
	end

	registerVal16.condition = __FUNC_4E66_
	local registerVal17 = {}
	registerVal17.stateName = "NoColor"
	local function __FUNC_4F34_(arg1, arg2, arg3)
		local registerVal3 = IsModelValueEqualTo(arg0, "Emblem.EmblemProperties.isGradientMode", 1.000000)
		if registerVal3 then
			registerVal3 = IsSelectedColorEmpty(arg2, arg0)
		end
		return registerVal3
	end

	registerVal17.condition = __FUNC_4F34_
	registerVal14 = {registerVal15, registerVal16, registerVal17}
	registerVal11:mergeStateConditions(registerVal14)
	registerVal15 = Engine.GetModelForController(arg0)
	registerVal14 = Engine.GetModel(registerVal15, "Emblem.EmblemProperties.isGradientMode")
	local function __FUNC_5000_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "Emblem.EmblemProperties.isGradientMode"
		registerVal1:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:subscribeToModel(registerVal14, __FUNC_5000_)
	registerVal15 = Engine.GetModelForController(arg0)
	registerVal14 = Engine.GetModel(registerVal15, "Emblem.EmblemProperties.isColor0NoColor")
	local function __FUNC_513C_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "Emblem.EmblemProperties.isColor0NoColor"
		registerVal1:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:subscribeToModel(registerVal14, __FUNC_513C_)
	registerVal15 = Engine.GetModelForController(arg0)
	registerVal14 = Engine.GetModel(registerVal15, "Emblem.EmblemProperties.isColor1NoColor")
	local function __FUNC_5279_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "Emblem.EmblemProperties.isColor1NoColor"
		registerVal1:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:subscribeToModel(registerVal14, __FUNC_5279_)
	registerVal15 = Engine.GetModelForController(arg0)
	registerVal14 = Engine.GetModel(registerVal15, "Emblem.EmblemProperties.colorNum")
	local function __FUNC_53B5_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "Emblem.EmblemProperties.colorNum"
		registerVal1:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:subscribeToModel(registerVal14, __FUNC_53B5_)
	registerVal1:addElement(registerVal11)
	registerVal1.PaintshopColorSwatchControls = registerVal11
	local registerVal12 = CoD.EmblemEditorColorControls.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 64.000000, 314.000000)
	registerVal12:setTopBottom(true, false, 112.000000, 272.000000)
	registerVal12:setAlpha(0.000000)
	registerVal15 = {}
	registerVal16 = {}
	registerVal16.stateName = "Gradient"
	local function __FUNC_54EA_(arg1, arg2, arg3)
		return IsModelValueEqualTo(arg0, "Emblem.EmblemProperties.isGradientMode", 0.000000)
	end

	registerVal16.condition = __FUNC_54EA_
	registerVal17 = {}
	registerVal17.stateName = "Solid"
	local function __FUNC_557E_(arg1, arg2, arg3)
		local registerVal3 = IsModelValueEqualTo(arg0, "Emblem.EmblemProperties.isGradientMode", 1.000000)
		if registerVal3 then
			registerVal3 = IsSelectedColorEmpty(arg2, arg0)
		end
		return (not registerVal3)
	end

	registerVal17.condition = __FUNC_557E_
	local registerVal18 = {}
	registerVal18.stateName = "NoColor"
	local function __FUNC_564C_(arg1, arg2, arg3)
		local registerVal3 = IsModelValueEqualTo(arg0, "Emblem.EmblemProperties.isGradientMode", 1.000000)
		if registerVal3 then
			registerVal3 = IsSelectedColorEmpty(arg2, arg0)
		end
		return registerVal3
	end

	registerVal18.condition = __FUNC_564C_
	registerVal15 = {registerVal16, registerVal17, registerVal18}
	registerVal12:mergeStateConditions(registerVal15)
	registerVal16 = Engine.GetModelForController(arg0)
	registerVal15 = Engine.GetModel(registerVal16, "Emblem.EmblemProperties.isGradientMode")
	local function __FUNC_5718_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "Emblem.EmblemProperties.isGradientMode"
		registerVal1:updateElementState(registerVal12, registerVal4)
	end

	registerVal12:subscribeToModel(registerVal15, __FUNC_5718_)
	registerVal16 = Engine.GetModelForController(arg0)
	registerVal15 = Engine.GetModel(registerVal16, "Emblem.EmblemProperties.isColor0NoColor")
	local function __FUNC_5854_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "Emblem.EmblemProperties.isColor0NoColor"
		registerVal1:updateElementState(registerVal12, registerVal4)
	end

	registerVal12:subscribeToModel(registerVal15, __FUNC_5854_)
	registerVal16 = Engine.GetModelForController(arg0)
	registerVal15 = Engine.GetModel(registerVal16, "Emblem.EmblemProperties.isColor1NoColor")
	local function __FUNC_5991_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "Emblem.EmblemProperties.isColor1NoColor"
		registerVal1:updateElementState(registerVal12, registerVal4)
	end

	registerVal12:subscribeToModel(registerVal15, __FUNC_5991_)
	registerVal16 = Engine.GetModelForController(arg0)
	registerVal15 = Engine.GetModel(registerVal16, "Emblem.EmblemProperties.colorNum")
	local function __FUNC_5ACD_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "Emblem.EmblemProperties.colorNum"
		registerVal1:updateElementState(registerVal12, registerVal4)
	end

	registerVal12:subscribeToModel(registerVal15, __FUNC_5ACD_)
	registerVal1:addElement(registerVal12)
	registerVal1.emblemEditorColorControls = registerVal12
	local registerVal13 = LUI.UIText.new()
	registerVal13:setLeftRight(true, false, 64.000000, 696.000000)
	registerVal13:setTopBottom(true, false, 28.000000, 76.000000)
	registerVal13:setRGB(0.870000, 0.880000, 0.780000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setText(Engine.Localize("MENU_EMBLEM_COLOR_PICKER_CAPS"))
	registerVal13:setTTF("fonts/escom.ttf")
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal13)
	registerVal1.title0 = registerVal13
	registerVal14 = CoD.PaintshopColorLayerInfo.new(registerVal1, arg0)
	registerVal14:setLeftRight(false, true, -232.000000, -63.000000)
	registerVal14:setTopBottom(true, false, 109.000000, 258.000000)
	registerVal17 = {}
	registerVal18 = {}
	registerVal18.stateName = "GradientColorInfo"
	local function __FUNC_5C02_(arg1, arg2, arg3)
		return IsModelValueEqualTo(arg0, "Emblem.EmblemProperties.isGradientMode", 1.000000)
	end

	registerVal18.condition = __FUNC_5C02_
	registerVal17 = {registerVal18}
	registerVal14:mergeStateConditions(registerVal17)
	registerVal18 = Engine.GetModelForController(arg0)
	registerVal17 = Engine.GetModel(registerVal18, "Emblem.EmblemProperties.isGradientMode")
	local function __FUNC_5C96_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "Emblem.EmblemProperties.isGradientMode"
		registerVal1:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:subscribeToModel(registerVal17, __FUNC_5C96_)
	registerVal1:addElement(registerVal14)
	registerVal1.PaintshopColorLayerInfo = registerVal14
	registerVal15 = CoD.cac_3dTitleIntermediary.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, false, -73.330000, 504.670000)
	registerVal15:setTopBottom(true, false, -6.000000, 140.000000)
	registerVal15:setAlpha(0.000000)
	registerVal15.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_EDIT_DECAL_COLOR"))
	registerVal1:addElement(registerVal15)
	registerVal1.ColorPickerTitle = registerVal15
	registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal16:setTopBottom(true, false, 78.000000, 86.000000)
	registerVal16:setRGB(0.900000, 0.900000, 0.900000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal16)
	registerVal1.CategoryListLine = registerVal16
	registerVal17 = CoD.cac_ElemsSideList.new(registerVal1, arg0)
	registerVal17:setLeftRight(true, false, 6.000000, 73.870000)
	registerVal17:setTopBottom(true, false, 44.000000, 718.000000)
	registerVal1:addElement(registerVal17)
	registerVal1.ElemsSideList = registerVal17
	registerVal18 = CoD.EmblemDrawWidgetNew.new(registerVal1, arg0)
	registerVal18:setLeftRight(true, false, 390.000000, 890.000000)
	registerVal18:setTopBottom(true, false, 130.000000, 441.000000)
	registerVal1:addElement(registerVal18)
	registerVal1.emblemDrawWidget = registerVal18
	local registerVal19 = CoD.EmblemEditorColorTypeHeader.new(registerVal1, arg0)
	registerVal19:setLeftRight(true, false, 308.500000, 976.250000)
	registerVal19:setTopBottom(true, false, 444.500000, 474.500000)
	registerVal19.colorTypeHeader.text:setText(Engine.Localize("MENU_EMBLEM_SOLID_COLOR"))
	local registerVal22 = {}
	local registerVal23 = {}
	registerVal23.stateName = "Gradient"
	local function __FUNC_5DD0_(arg1, arg2, arg3)
		local registerVal3 = PropertyIsTrue(registerVal1, "isGradientMode")
		if registerVal3 then
			registerVal3 = IsModelValueEqualTo(arg0, "Emblem.EmblemProperties.isGradientMode", 1.000000)
		end
		return registerVal3
	end

	registerVal23.condition = __FUNC_5DD0_
	local registerVal24 = {}
	registerVal24.stateName = "Solid"
	local function __FUNC_5EAE_(arg1, arg2, arg3)
		local registerVal3 = IsModelValueEqualToEnum(arg0, "Emblem.EmblemProperties.colorMode", Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_SOLID)
		if registerVal3 then
			registerVal3 = IsModelValueEqualTo(arg0, "Emblem.EmblemProperties.isGradientMode", 0.000000)
		end
		return registerVal3
	end

	registerVal24.condition = __FUNC_5EAE_
	local registerVal25 = {}
	registerVal25.stateName = "Mixer"
	local function __FUNC_6018_(arg1, arg2, arg3)
		local registerVal3 = IsModelValueEqualToEnum(arg0, "Emblem.EmblemProperties.colorMode", Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_MIXER)
		if registerVal3 then
			registerVal3 = IsModelValueEqualTo(arg0, "Emblem.EmblemProperties.isGradientMode", 0.000000)
		end
		return registerVal3
	end

	registerVal25.condition = __FUNC_6018_
	registerVal22 = {registerVal23, registerVal24, registerVal25}
	registerVal19:mergeStateConditions(registerVal22)
	registerVal23 = Engine.GetModelForController(arg0)
	registerVal22 = Engine.GetModel(registerVal23, "Emblem.EmblemProperties.isGradientMode")
	local function __FUNC_6184_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "Emblem.EmblemProperties.isGradientMode"
		registerVal1:updateElementState(registerVal19, registerVal4)
	end

	registerVal19:subscribeToModel(registerVal22, __FUNC_6184_)
	registerVal23 = Engine.GetModelForController(arg0)
	registerVal22 = Engine.GetModel(registerVal23, "Emblem.EmblemProperties.colorMode")
	local function __FUNC_62C0_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "Emblem.EmblemProperties.colorMode"
		registerVal1:updateElementState(registerVal19, registerVal4)
	end

	registerVal19:subscribeToModel(registerVal22, __FUNC_62C0_)
	registerVal1:addElement(registerVal19)
	registerVal1.EmblemEditorColorTypeHeader0 = registerVal19
	local registerVal20 = CoD.PaintshopChoosePaintSide.new(registerVal1, arg0)
	registerVal20:setLeftRight(true, true, 1048.000000, -63.000000)
	registerVal20:setTopBottom(true, false, 109.000000, 136.000000)
	registerVal20:setAlpha(0.890000)
	local function __FUNC_63F7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal20.PaintshopChooseSide.text:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal20:subscribeToGlobalModel(arg0, "Customization", "view_string_ref", __FUNC_63F7_)
	registerVal23 = {}
	registerVal24 = {}
	registerVal24.stateName = "BrowseModeControlsState"
	local function __FUNC_64F1_(arg1, arg2, arg3)
		local registerVal3 = IsPaintshop(arg0)
		if registerVal3 then
			registerVal3 = IsModelValueEqualToEnum(arg0, "Emblem.EmblemProperties.editorMode", Enum.CustomizationEditorMode.CUSTOMIZATION_EDITOR_MODE_EDIT)
		end
		return (not registerVal3)
	end

	registerVal24.condition = __FUNC_64F1_
	registerVal23 = {registerVal24}
	registerVal20:mergeStateConditions(registerVal23)
	registerVal24 = Engine.GetModelForController(arg0)
	registerVal23 = Engine.GetModel(registerVal24, "Emblem.EmblemProperties.editorMode")
	local function __FUNC_661D_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "Emblem.EmblemProperties.editorMode"
		registerVal1:updateElementState(registerVal20, registerVal4)
	end

	registerVal20:subscribeToModel(registerVal23, __FUNC_661D_)
	registerVal1:addElement(registerVal20)
	registerVal1.choosePaintSide = registerVal20
	local registerVal21 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal21:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal21:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal21.titleLabel:setText(Engine.Localize("MENU_EMBLEM_COLOR_PICKER_CAPS"))
	registerVal21.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_EMBLEM_COLOR_PICKER_CAPS"))
	registerVal21.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_paintshop"))
	local function __FUNC_6754_(arg1, arg2)
		local registerVal3 = IsEmblemEditor(arg0)
		if registerVal3 then
			ShowHeaderIconOnly(registerVal1)
		else
			registerVal3 = IsPaintshop(arg0)
			if registerVal3 then
				ShowHeaderKickerAndIcon(registerVal1)
				SetHeadingKickerTextToSelectedWeapon(arg0)
			end
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal21:registerEventHandler("menu_loaded", __FUNC_6754_)
	registerVal1:addElement(registerVal21)
	registerVal1.MenuFrame = registerVal21
	registerVal22 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal22:makeFocusable()
	registerVal22:setLeftRight(true, false, 61.000000, 311.000000)
	registerVal22:setTopBottom(true, false, 112.000000, 330.000000)
	registerVal22:setAlpha(0.000000)
	registerVal22:setWidgetType(CoD.CraftActionHeader)
	registerVal22:setVerticalCount(10.000000)
	registerVal1:addElement(registerVal22)
	registerVal1.actionsListPC = registerVal22
	registerVal23 = {}
	registerVal23.left = registerVal9
	registerVal23.up = registerVal18
	registerVal6.navigation = registerVal23
	registerVal23 = {}
	registerVal23.left = registerVal9
	registerVal23.up = registerVal18
	registerVal7.navigation = registerVal23
	registerVal23 = {}
	registerVal23.left = registerVal9
	registerVal23.up = registerVal18
	registerVal8.navigation = registerVal23
	registerVal23 = {}
	registerVal23.up = registerVal18
	registerVal24 = {}
	registerVal24 = {registerVal6, registerVal7, registerVal8, registerVal10}
	registerVal23.right = registerVal24
	registerVal9.navigation = registerVal23
	registerVal23 = {}
	registerVal23.left = registerVal9
	registerVal23.up = registerVal18
	registerVal10.navigation = registerVal23
	registerVal23 = {}
	registerVal23.left = registerVal22
	registerVal24 = {}
	registerVal24 = {registerVal9, registerVal6, registerVal7, registerVal8, registerVal10}
	registerVal23.down = registerVal24
	registerVal18.navigation = registerVal23
	registerVal23 = {}
	registerVal23.right = registerVal18
	registerVal24 = {}
	registerVal24 = {registerVal9, registerVal6, registerVal7, registerVal8, registerVal10}
	registerVal23.down = registerVal24
	registerVal22.navigation = registerVal23
	registerVal23 = {}
	registerVal24 = {}
	local function __FUNC_68A9_()
		registerVal1:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal1.Background:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.ScreenBkgd:setAlpha(0.750000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.StartMenuBackground0:setAlpha(0.370000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal1.colorMixerContainer:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.colorSwatchContainer:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal12:completeAnimation()
		registerVal1.emblemEditorColorControls:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal1.PaintshopColorLayerInfo:setLeftRight(false, true, -364.000000, -195.000000)
		registerVal1.PaintshopColorLayerInfo:setTopBottom(true, false, 101.000000, 250.000000)
		registerVal1.PaintshopColorLayerInfo:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal19:completeAnimation()
		registerVal1.EmblemEditorColorTypeHeader0:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal1.choosePaintSide:setLeftRight(true, true, 915.000000, -196.000000)
		registerVal1.choosePaintSide:setTopBottom(true, false, 108.000000, 135.000000)
		registerVal1.choosePaintSide:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal20, {})
	end

	registerVal24.DefaultClip = __FUNC_68A9_
	registerVal23.DefaultState = registerVal24
	registerVal24 = {}
	local function __FUNC_6DBD_()
		registerVal1:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal1.Background:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.ScreenBkgd:setAlpha(0.750000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.StartMenuBackground0:setAlpha(0.370000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal11:completeAnimation()
		registerVal1.PaintshopColorSwatchControls:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.emblemEditorColorControls:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal1.PaintshopColorLayerInfo:setLeftRight(false, true, -364.000000, -195.000000)
		registerVal1.PaintshopColorLayerInfo:setTopBottom(true, false, 101.000000, 250.000000)
		registerVal1.PaintshopColorLayerInfo:setRGB(1.000000, 1.000000, 1.000000)
		registerVal1.PaintshopColorLayerInfo:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal18:completeAnimation()
		registerVal1.emblemDrawWidget:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal18, {})
		registerVal20:completeAnimation()
		registerVal1.choosePaintSide:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal20, {})
		registerVal22:completeAnimation()
		registerVal1.actionsListPC:setLeftRight(true, false, 110.000000, 360.000000)
		registerVal1.actionsListPC:setTopBottom(true, false, 130.000000, 348.000000)
		registerVal1.actionsListPC:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal22, {})
	end

	registerVal24.DefaultClip = __FUNC_6DBD_
	registerVal23.EmblemEditor_PC = registerVal24
	registerVal24 = {}
	local function __FUNC_72FB_()
		registerVal1:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal1.Background:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.ScreenBkgd:setAlpha(0.750000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.StartMenuBackground0:setAlpha(0.370000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal11:completeAnimation()
		registerVal1.PaintshopColorSwatchControls:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.emblemEditorColorControls:setLeftRight(true, false, 110.000000, 360.000000)
		registerVal1.emblemEditorColorControls:setTopBottom(true, false, 130.000000, 290.000000)
		registerVal1.emblemEditorColorControls:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal1.PaintshopColorLayerInfo:setLeftRight(false, true, -364.000000, -195.000000)
		registerVal1.PaintshopColorLayerInfo:setTopBottom(true, false, 101.000000, 250.000000)
		registerVal1.PaintshopColorLayerInfo:setRGB(1.000000, 1.000000, 1.000000)
		registerVal1.PaintshopColorLayerInfo:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal18:completeAnimation()
		registerVal1.emblemDrawWidget:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal18, {})
		registerVal20:completeAnimation()
		registerVal1.choosePaintSide:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal20, {})
		registerVal22:completeAnimation()
		registerVal1.actionsListPC:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal22, {})
	end

	registerVal24.DefaultClip = __FUNC_72FB_
	registerVal23.EmblemEditor = registerVal24
	registerVal24 = {}
	local function __FUNC_7837_()
		registerVal1:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal1.Background:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.ScreenBkgd:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.StartMenuBackground0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal11:completeAnimation()
		registerVal1.PaintshopColorSwatchControls:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.emblemEditorColorControls:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal1.PaintshopColorLayerInfo:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal18:completeAnimation()
		registerVal1.emblemDrawWidget:setLeftRight(true, false, 392.500000, 887.500000)
		registerVal1.emblemDrawWidget:setTopBottom(true, false, 110.000000, 391.000000)
		registerVal1.emblemDrawWidget:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal18, {})
		registerVal20:completeAnimation()
		registerVal1.choosePaintSide:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal20, {})
		registerVal22:completeAnimation()
		registerVal1.actionsListPC:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal22, {})
	end

	registerVal24.DefaultClip = __FUNC_7837_
	registerVal23.Paintshop_PC = registerVal24
	registerVal24 = {}
	local function __FUNC_7CD1_()
		registerVal1:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal1.Background:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.ScreenBkgd:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.StartMenuBackground0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal11:completeAnimation()
		registerVal1.PaintshopColorSwatchControls:setLeftRight(true, false, 64.000000, 314.000000)
		registerVal1.PaintshopColorSwatchControls:setTopBottom(true, false, 114.000000, 274.000000)
		registerVal1.PaintshopColorSwatchControls:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.emblemEditorColorControls:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal1.PaintshopColorLayerInfo:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal18:completeAnimation()
		registerVal1.emblemDrawWidget:setLeftRight(true, false, 392.500000, 887.500000)
		registerVal1.emblemDrawWidget:setTopBottom(true, false, 110.000000, 391.000000)
		registerVal1.emblemDrawWidget:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal18, {})
		registerVal20:completeAnimation()
		registerVal1.choosePaintSide:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal20, {})
		registerVal22:completeAnimation()
		registerVal1.actionsListPC:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal22, {})
	end

	registerVal24.DefaultClip = __FUNC_7CD1_
	registerVal23.Paintshop = registerVal24
	registerVal1.clipsPerState = registerVal23
	registerVal25 = {}
	local registerVal26 = {}
	registerVal26.stateName = "EmblemEditor_PC"
	local function __FUNC_81D1_(arg1, arg2, arg3)
		local registerVal3 = IsEmblemEditor(arg0)
		if registerVal3 then
			registerVal3 = IsGamepad(arg0)
		end
		return (not registerVal3)
	end

	registerVal26.condition = __FUNC_81D1_
	local registerVal27 = {}
	registerVal27.stateName = "EmblemEditor"
	local function __FUNC_824F_(arg1, arg2, arg3)
		return IsEmblemEditor(arg0)
	end

	registerVal27.condition = __FUNC_824F_
	local registerVal28 = {}
	registerVal28.stateName = "Paintshop_PC"
	local function __FUNC_82A0_(arg1, arg2, arg3)
		local registerVal3 = IsPaintshop(arg0)
		if registerVal3 then
			registerVal3 = IsGamepad(arg0)
		end
		return (not registerVal3)
	end

	registerVal28.condition = __FUNC_82A0_
	local registerVal29 = {}
	registerVal29.stateName = "Paintshop"
	local function __FUNC_831C_(arg1, arg2, arg3)
		return IsPaintshop(arg0)
	end

	registerVal29.condition = __FUNC_831C_
	registerVal25 = {registerVal26, registerVal27, registerVal28, registerVal29}
	registerVal1:mergeStateConditions(registerVal25)
	if registerVal1.m_eventHandlers.input_source_changed then
		local function __FUNC_836D_(arg0, arg1)
			if not arg1.menu then
			end
			arg1.menu = registerVal1
			arg0:updateState(arg1)
			return registerVal1.m_eventHandlers.input_source_changed(arg0, arg1)
		end

		registerVal1:registerEventHandler("input_source_changed", __FUNC_836D_)
	else
		registerVal1:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal26 = Engine.GetModelForController(arg0)
	registerVal25 = Engine.GetModel(registerVal26, "LastInput")
	local function __FUNC_83F7_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal25, __FUNC_83F7_)
	registerVal26 = Engine.GetModelForController(arg0)
	registerVal25 = Engine.GetModel(registerVal26, "Emblem.EmblemProperties.isGradientMode")
	local function __FUNC_8513_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "Emblem.EmblemProperties.isGradientMode"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_LTRIG)
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_RTRIG)
	end

	registerVal1:subscribeToModel(registerVal25, __FUNC_8513_)
	registerVal26 = Engine.GetModelForController(arg0)
	registerVal25 = Engine.GetModel(registerVal26, "Emblem.EmblemProperties.colorMode")
	local function __FUNC_880F_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "Emblem.EmblemProperties.colorMode"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_BACK)
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED)
	end

	registerVal1:subscribeToModel(registerVal25, __FUNC_880F_)
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_8B0E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsModelValueEqualTo(arg2, "Emblem.EmblemProperties.isGradientMode", 0.000000)
		if registerVal4 then
			GoBack(registerVal1, arg2)
			ClearSavedState(registerVal1, arg2)
			return true
		else
			registerVal4 = IsModelValueEqualTo(arg2, "Emblem.EmblemProperties.isGradientMode", 1.000000)
			registerVal4 = IsModelValueEqualToEnum(arg2, "Emblem.EmblemProperties.colorMode", Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_NONE)
			if registerVal4 and registerVal4 then
				GoBack(registerVal1, arg2)
				ClearMenuSavedState(arg1)
				EmblemGradient_BackFromGradientPicker(registerVal1, arg0, arg2)
				return true
			else
				registerVal4 = IsModelValueEqualTo(arg2, "Emblem.EmblemProperties.isGradientMode", 1.000000)
				registerVal4 = IsModelValueEqualToEnum(arg2, "Emblem.EmblemProperties.colorMode", Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_NONE)
				if registerVal4 and not registerVal4 then
					EmblemGradient_BackFromColorPicker(registerVal1, arg0, arg2)
					return true
				end
			end
		end
	end

	local function __FUNC_8E11_(arg0, arg1, arg2)
		local registerVal3 = IsModelValueEqualTo(arg2, "Emblem.EmblemProperties.isGradientMode", 0.000000)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
			return true
		else
			registerVal3 = IsModelValueEqualTo(arg2, "Emblem.EmblemProperties.isGradientMode", 1.000000)
			registerVal3 = IsModelValueEqualToEnum(arg2, "Emblem.EmblemProperties.colorMode", Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_NONE)
			if registerVal3 and registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MP_BACK")
				return true
			else
				registerVal3 = IsModelValueEqualTo(arg2, "Emblem.EmblemProperties.isGradientMode", 1.000000)
				registerVal3 = IsModelValueEqualToEnum(arg2, "Emblem.EmblemProperties.colorMode", Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_NONE)
				if registerVal3 and not registerVal3 then
					CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MP_BACK")
					return true
				end
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_8B0E_, __FUNC_8E11_, false)
	local function __FUNC_916C_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsModelValueEqualTo(arg2, "Emblem.EmblemProperties.isGradientMode", 0.000000)
		if registerVal4 then
			GoBack(registerVal1, arg2)
			ClearSavedState(registerVal1, arg2)
			return true
		else
			registerVal4 = IsModelValueEqualTo(arg2, "Emblem.EmblemProperties.isGradientMode", 1.000000)
			registerVal4 = IsModelValueEqualToEnum(arg2, "Emblem.EmblemProperties.colorMode", Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_NONE)
			if registerVal4 and registerVal4 then
				EmblemGradient_ShowSwatchContainer(registerVal1, arg0, arg2)
				return true
			else
				registerVal4 = IsModelValueEqualTo(arg2, "Emblem.EmblemProperties.isGradientMode", 1.000000)
				registerVal4 = IsModelValueEqualToEnum(arg2, "Emblem.EmblemProperties.colorMode", Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_NONE)
				if registerVal4 and not registerVal4 then
					EmblemGradient_BackFromColorPicker(registerVal1, arg0, arg2)
					return true
				end
			end
		end
	end

	local function __FUNC_9435_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsModelValueEqualTo(arg2, "Emblem.EmblemProperties.isGradientMode", 0.000000)
		if registerVal3 then
			return true
		else
			registerVal3 = IsModelValueEqualTo(arg2, "Emblem.EmblemProperties.isGradientMode", 1.000000)
			registerVal3 = IsModelValueEqualToEnum(arg2, "Emblem.EmblemProperties.colorMode", Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_NONE)
			if registerVal3 and registerVal3 then
				return true
			else
				registerVal3 = IsModelValueEqualTo(arg2, "Emblem.EmblemProperties.isGradientMode", 1.000000)
				registerVal3 = IsModelValueEqualToEnum(arg2, "Emblem.EmblemProperties.colorMode", Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_NONE)
				if registerVal3 and not registerVal3 then
					return true
				end
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_916C_, __FUNC_9435_, false)
	local function __FUNC_96F8_(arg0, arg1, arg2, arg3)
		EmblemChooseColor_UpdateOpacityByStep(registerVal1, arg0, "-0.01", arg2)
		return true
	end

	local function __FUNC_9782_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LB, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_LB, nil, __FUNC_96F8_, __FUNC_9782_, false)
	local function __FUNC_986A_(arg0, arg1, arg2, arg3)
		EmblemChooseColor_UpdateOpacityByStep(registerVal1, arg0, "0.01", arg2)
		return true
	end

	local function __FUNC_98F1_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RB, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RB, nil, __FUNC_986A_, __FUNC_98F1_, false)
	local function __FUNC_99DA_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsModelValueEqualToEnum(arg2, "Emblem.EmblemProperties.colorMode", Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_NONE)
		if not registerVal4 then
			EmblemChooseColor_ToggleColorMode(registerVal1, arg0, arg2)
			PlaySoundSetSound(registerVal1, "toggle_color_picker")
			return true
		end
	end

	local function __FUNC_9B68_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_BACK, "")
		local registerVal3 = IsModelValueEqualToEnum(arg2, "Emblem.EmblemProperties.colorMode", Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_NONE)
		if not registerVal3 then
			return false
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_BACK, "E", __FUNC_99DA_, __FUNC_9B68_, false)
	local function __FUNC_9D23_(arg0, arg1, arg2, arg3)
		EmblemChooseColor_ToggleGradientMode(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_9D96_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "G", __FUNC_9D23_, __FUNC_9D96_, false)
	local function __FUNC_9E88_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsModelValueEqualTo(arg2, "Emblem.EmblemProperties.isGradientMode", 1.000000)
		if registerVal4 then
			EmblemGradient_UpdateAngleByStep(registerVal1, arg0, "-1", arg2)
			return true
		end
	end

	local function __FUNC_9F78_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LTRIG, "")
		local registerVal3 = IsModelValueEqualTo(arg2, "Emblem.EmblemProperties.isGradientMode", 1.000000)
		if registerVal3 then
			return false
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_LTRIG, nil, __FUNC_9E88_, __FUNC_9F78_, false)
	local function __FUNC_A0DB_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsModelValueEqualTo(arg2, "Emblem.EmblemProperties.isGradientMode", 1.000000)
		if registerVal4 then
			EmblemGradient_UpdateAngleByStep(registerVal1, arg0, "1", arg2)
			return true
		end
	end

	local function __FUNC_A1C7_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RTRIG, "")
		local registerVal3 = IsModelValueEqualTo(arg2, "Emblem.EmblemProperties.isGradientMode", 1.000000)
		if registerVal3 then
			return false
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RTRIG, nil, __FUNC_A0DB_, __FUNC_A1C7_, false)
	local function __FUNC_A327_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsModelValueEqualToEnum(arg2, "Emblem.EmblemProperties.colorMode", Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_NONE)
		if registerVal4 then
			EmblemGradient_ToggleGradientType(registerVal1, arg0, arg2)
			return true
		end
	end

	local function __FUNC_A46C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "")
		local registerVal3 = IsModelValueEqualToEnum(arg2, "Emblem.EmblemProperties.colorMode", Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_NONE)
		if registerVal3 then
			return false
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, nil, __FUNC_A327_, __FUNC_A46C_, false)
	local function __FUNC_A631_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsPaintshop(arg2)
		if registerVal4 then
			EmblemChooseColor_ToggleBlend(registerVal1, arg0, arg2)
			return true
		end
	end

	local function __FUNC_A6C8_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "")
		local registerVal3 = IsPaintshop(arg2)
		if registerVal3 then
			return false
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, nil, __FUNC_A631_, __FUNC_A6C8_, false)
	registerVal6.id = "colorGradientContainer"
	registerVal7.id = "colorMixerContainer"
	registerVal8.id = "colorSwatchContainer"
	registerVal9.id = "colorGradientSwatchContainer"
	registerVal10.id = "colorGradientMixerContainer"
	registerVal18.id = "emblemDrawWidget"
	registerVal21:setModel(registerVal1.buttonModel, arg0)
	registerVal22.id = "actionsListPC"
	registerVal25 = {}
	registerVal25.name = "menu_loaded"
	registerVal25.controller = arg0
	registerVal1:processEvent(registerVal25)
	registerVal25 = {}
	registerVal25.name = "update_state"
	registerVal25.menu = registerVal1
	registerVal1:processEvent(registerVal25)
	registerVal23 = registerVal1:restoreState()
	if not registerVal23 then
		registerVal25 = {}
		registerVal25.name = "gain_focus"
		registerVal25.controller = arg0
		registerVal1.colorSwatchContainer:processEvent(registerVal25)
	end
	local function __FUNC_A7EF_(arg1)
		arg1.StartMenuBackground0:close()
		arg1.colorGradientContainer:close()
		arg1.colorMixerContainer:close()
		arg1.colorSwatchContainer:close()
		arg1.colorGradientSwatchContainer:close()
		arg1.colorGradientMixerContainer:close()
		arg1.PaintshopColorSwatchControls:close()
		arg1.emblemEditorColorControls:close()
		arg1.PaintshopColorLayerInfo:close()
		arg1.ColorPickerTitle:close()
		arg1.ElemsSideList:close()
		arg1.emblemDrawWidget:close()
		arg1.EmblemEditorColorTypeHeader0:close()
		arg1.choosePaintSide:close()
		arg1.MenuFrame:close()
		arg1.actionsListPC:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "EmblemIconColorPicker.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_A7EF_)
	if __FUNC_18C1_ then
		__FUNC_18C1_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.EmblemIconColorPicker = __FUNC_2377_
