-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Craft.EmblemEditor.ColorPicker.EmblemColorElement")
require("ui.uieditor.widgets.Craft.EmblemEditor.MaterialPicker.EmblemMaterialElement")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveStroke")
require("ui.uieditor.widgets.Lobby.Common.FE_TabBar")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.EmblemEditorMaterialSwatch = registerVal1
function CoD.EmblemEditorMaterialSwatch.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.EmblemEditorMaterialSwatch)
	registerVal2.id = "EmblemEditorMaterialSwatch"
	registerVal2.soundSet = "SelectColor_ColorSwatchPicker"
	registerVal2:setLeftRight(true, false, 0.000000, 610.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 201.000000)
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
	registerVal4:setLeftRight(true, false, 16.000000, 54.000000)
	registerVal4:setTopBottom(true, false, 47.500000, 170.500000)
	local function __FUNC_FA9_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:subscribeToGlobalModel(arg1, "EmblemSelectedLayerColor", nil, __FUNC_FA9_)
	local function __FUNC_FFA_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		EmblemChooseColor_ClearSelectedLayerMaterial(registerVal2, arg2, arg1)
		EmblemChooseColor_SelectionChanged(registerVal2, arg2, arg1)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal4:registerEventHandler("gain_focus", __FUNC_FFA_)
	local function __FUNC_1215_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_1215_)
	local function __FUNC_12E6_(arg0, arg1, arg2, arg3)
		GoBackToMenu(arg1, arg2, "EmblemEditor")
		return true
	end

	local function __FUNC_1358_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_12E6_, __FUNC_1358_, false)
	registerVal2:addElement(registerVal4)
	registerVal2.lastSavedColor = registerVal4
	local registerVal5 = LUI.UIList.new(arg0, arg1, -3.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal5:makeFocusable()
	registerVal5:setLeftRight(true, false, 54.000000, 606.000000)
	registerVal5:setTopBottom(true, false, 45.500000, 170.500000)
	registerVal5:setWidgetType(CoD.EmblemMaterialElement)
	registerVal5:setHorizontalCount(9.000000)
	registerVal5:setVerticalCount(2.000000)
	registerVal5:setSpacing(-3.000000)
	registerVal5:setVerticalCounter(CoD.verticalCounter)
	registerVal5:setDataSource("EmblemMaterialList")
	local function __FUNC_1456_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isBMClassified"
		CoD.Menu.UpdateButtonShownState(registerVal5, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal5:linkToElementModel(registerVal5, "isBMClassified", true, __FUNC_1456_)
	local function __FUNC_1617_(arg2, arg3)
		local registerVal3 = IsElementInState(arg2, "New")
		if registerVal3 then
			EmblemChooseMaterial_SelectionChanged(registerVal2, arg2, arg1)
			Emblems_SetMaterialOld(arg0, arg2, arg1)
			UpdateSelfElementState(arg0, arg2, arg1)
		else
			EmblemChooseMaterial_SelectionChanged(registerVal2, arg2, arg1)
		end
		return nil
	end

	registerVal5:registerEventHandler("list_item_gain_focus", __FUNC_1617_)
	local function __FUNC_174A_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal5:registerEventHandler("gain_focus", __FUNC_174A_)
	local function __FUNC_18DB_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_18DB_)
	local function __FUNC_19AA_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
		if not registerVal4 then
			EmblemChooseMaterial_SelectionChanged(registerVal2, arg0, arg2)
			GoBackToMenu(arg1, arg2, "EmblemEditor")
			return true
		end
	end

	local function __FUNC_1AB1_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_19AA_, __FUNC_1AB1_, false)
	registerVal2:addElement(registerVal5)
	registerVal2.materialSwatch = registerVal5
	local registerVal6 = CoD.cac_ButtonBoxLrgInactiveStroke.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 2.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.cacButtonBoxLrgInactiveStroke0 = registerVal6
	local registerVal7 = CoD.FE_TabBar.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, -63.000000, 608.000000)
	registerVal7:setTopBottom(true, false, 3.500000, 44.500000)
	registerVal7.Tabs.grid:setDataSource("EmblemMaterialTabType")
	local function __FUNC_1C08_(arg0, arg2)
		EmblemChooseMaterial_TabChanged(registerVal2, arg0, arg1)
		return nil
	end

	registerVal7:registerEventHandler("list_active_changed", __FUNC_1C08_)
	registerVal2:addElement(registerVal7)
	registerVal2.tabList = registerVal7
	local registerVal8 = {}
	registerVal8.right = registerVal5
	registerVal4.navigation = registerVal8
	registerVal8 = {}
	registerVal8.left = registerVal4
	registerVal5.navigation = registerVal8
	registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_1C79_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ColorPickerBkgd0:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal9.DefaultClip = __FUNC_1C79_
	registerVal8.DefaultState = registerVal9
	registerVal2.clipsPerState = registerVal8
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal4.id = "lastSavedColor"
	registerVal5.id = "materialSwatch"
	local function __FUNC_1D80_(arg0, arg1)
		local registerVal2 = arg0.lastSavedColor:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_1D80_)
	local function __FUNC_1E8A_(arg0)
		arg0.lastSavedColor:close()
		arg0.materialSwatch:close()
		arg0.cacButtonBoxLrgInactiveStroke0:close()
		arg0.tabList:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1E8A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

