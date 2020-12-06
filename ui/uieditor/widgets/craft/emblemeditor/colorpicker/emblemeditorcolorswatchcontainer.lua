-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Craft.EmblemEditor.ColorPicker.EmblemColorElement")
require("ui.uieditor.widgets.Craft.EmblemEditor.EmblemEditorFrame")
require("ui.uieditor.widgets.Craft.Paintshop.PaintshopButtonPrompt")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.EmblemEditorColorSwatchContainer = registerVal1
function CoD.EmblemEditorColorSwatchContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.EmblemEditorColorSwatchContainer)
	registerVal2.id = "EmblemEditorColorSwatchContainer"
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
	registerVal3:setAlpha(0.900000)
	registerVal3:setZRot(180.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.ColorPickerBkgd0 = registerVal3
	local registerVal4 = CoD.EmblemColorElement.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 4.000000, 42.000000)
	registerVal4:setTopBottom(true, false, 4.500000, 148.500000)
	local function __FUNC_DC9_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_DC9_)
	local function __FUNC_E1A_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		EmblemChooseColor_SelectionChanged(registerVal2, arg2, arg1)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal4:registerEventHandler("gain_focus", __FUNC_E1A_)
	local function __FUNC_FEB_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_FEB_)
	local function __FUNC_10BA_(arg0, arg1, arg2, arg3)
		EmblemChooseColor_SelectionChanged(registerVal2, arg0, arg2)
		GoBack(registerVal2, arg2)
		return true
	end

	local function __FUNC_114C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_10BA_, __FUNC_114C_, false)
	registerVal2:addElement(registerVal4)
	registerVal2.lastSavedColor = registerVal4
	local registerVal5 = LUI.UIList.new(arg0, arg1, 0.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal5:makeFocusable()
	registerVal5:setLeftRight(true, false, 43.000000, 667.000000)
	registerVal5:setTopBottom(true, false, 4.500000, 148.500000)
	registerVal5:setDataSource("EmblemColorList")
	registerVal5:setWidgetType(CoD.EmblemColorElement)
	registerVal5:setHorizontalCount(13.000000)
	registerVal5:setVerticalCount(9.000000)
	registerVal5:setSpacing(0.000000)
	local function __FUNC_124A_(arg0, arg2)
		EmblemChooseColor_SelectionChanged(registerVal2, arg0, arg1)
		return nil
	end

	registerVal5:registerEventHandler("list_item_gain_focus", __FUNC_124A_)
	registerVal2:addElement(registerVal5)
	registerVal2.emblemColorSwatch = registerVal5
	local registerVal6 = CoD.EmblemEditorFrame.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 0.000000, 671.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 175.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.EmblemEditorFrame0 = registerVal6
	local registerVal7 = CoD.PaintshopButtonPrompt.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 4.000000, 667.000000)
	registerVal7:setTopBottom(true, false, 149.500000, 180.500000)
	registerVal7.label:setText(Engine.Localize("MENU_EMBLEM_TOGGLE_TO_COLOR_MIXER"))
	local function __FUNC_12BC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "Controller", "back_button_image", __FUNC_12BC_)
	registerVal2:addElement(registerVal7)
	registerVal2.toggleColorMixerButton = registerVal7
	local registerVal8 = {}
	registerVal8.right = registerVal5
	registerVal4.navigation = registerVal8
	registerVal8 = {}
	registerVal8.left = registerVal4
	registerVal5.navigation = registerVal8
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal4.id = "lastSavedColor"
	registerVal5.id = "emblemColorSwatch"
	local function __FUNC_1397_(arg0, arg1)
		local registerVal2 = arg0.lastSavedColor:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_1397_)
	local function __FUNC_149E_(arg0)
		arg0.lastSavedColor:close()
		arg0.emblemColorSwatch:close()
		arg0.EmblemEditorFrame0:close()
		arg0.toggleColorMixerButton:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_149E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

