-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.SelectMenuWidgetNew")
require("ui.uieditor.widgets.CAC.GridItemVariantButton")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.WeaponVariantIcon")
require("ui.uieditor.widgets.CAC.cac_ElemsSideListBoxes")
require("ui.uieditor.widgets.Footer.fe_FooterContainer_NOTLobby")
local function __FUNC_35F_(arg0, arg1)
	local registerVal2 = Engine.GetModelForController(arg1)
	Engine.CreateModel(registerVal2, "WeaponVariantList.numItemsToRemove")
	Engine.CreateModel(registerVal2, "WeaponVariantList.curWeaponVariantName")
end

local function __FUNC_478_(arg0, arg1)
	local function __FUNC_5DF_()
		ClearSavedState(arg0, arg1)
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "close", __FUNC_5DF_)
	arg0.selectMenuWidget.selectionInfoWidget.itemName.weaponNameWithVariant:setState("ShowVariant")
end

local function __FUNC_631_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("PrimaryWeaponVariantSelect")
	if __FUNC_35F_ then
		__FUNC_35F_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "PrimaryWeaponVariantSelect.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 64.000000, 428.000000)
	registerVal3:setTopBottom(true, false, 78.000000, 667.000000)
	registerVal3:setRGB(0.500000, 0.500000, 0.500000)
	registerVal1:addElement(registerVal3)
	registerVal1.LeftPanel = registerVal3
	local registerVal4 = CoD.SelectMenuWidgetNew.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4.background.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MPUI_PRIMARY_WEAPON_CAPS"))
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "GridLayout"
	local function __FUNC_1657_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal8.condition = __FUNC_1657_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal1:addElement(registerVal4)
	registerVal1.selectMenuWidget = registerVal4
	local registerVal5 = LUI.UIList.new(registerVal1, arg0, 7.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal5:makeFocusable()
	registerVal5:setLeftRight(true, false, 77.000000, 415.000000)
	registerVal5:setTopBottom(true, false, 136.000000, 589.000000)
	registerVal5:setDataSource("WeaponVariantList")
	registerVal5:setWidgetType(CoD.GridItemVariantButton)
	registerVal5:setHorizontalCount(3.000000)
	registerVal5:setVerticalCount(4.000000)
	registerVal5:setSpacing(7.000000)
	local function __FUNC_16A0_(arg1, arg2)
		FocusWeaponVariant(registerVal1, arg1, arg0)
		return nil
	end

	registerVal5:registerEventHandler("list_item_gain_focus", __FUNC_16A0_)
	local function __FUNC_1704_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal5:registerEventHandler("gain_focus", __FUNC_1704_)
	local function __FUNC_1897_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_1897_)
	local function __FUNC_1966_(arg0, arg1, arg2, arg3)
		SetWeaponVariant(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_19C6_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal5, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1966_, __FUNC_19C6_, false)
	registerVal1:addElement(registerVal5)
	registerVal1.selectionList = registerVal5
	local registerVal6 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, false, 450.000000, 754.000000)
	registerVal6:setTopBottom(true, false, 183.000000, 215.000000)
	registerVal6:setWidgetType(CoD.WeaponVariantIcon)
	registerVal6:setHorizontalCount(9.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.attachmentList = registerVal6
	registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, -11.000000, 1293.000000)
	registerVal7:setTopBottom(true, false, 80.000000, 88.000000)
	registerVal7:setRGB(0.900000, 0.900000, 0.900000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal7)
	registerVal1.CategoryListLine = registerVal7
	registerVal8 = CoD.cac_ElemsSideListBoxes.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 18.870000, 71.870000)
	registerVal8:setTopBottom(true, false, -12.000000, 658.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.cacElemsSideListBoxes0 = registerVal8
	local registerVal9 = CoD.fe_FooterContainer_NOTLobby.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(false, true, -65.000000, 0.000000)
	local function __FUNC_1AC2_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("menu_loaded", __FUNC_1AC2_)
	registerVal1:addElement(registerVal9)
	registerVal1.feFooterContainer = registerVal9
	local function __FUNC_1B55_(arg1)
		registerVal4:setModel(arg1, arg0)
	end

	registerVal4:linkToElementModel(registerVal5, nil, false, __FUNC_1B55_)
	local function __FUNC_1BA6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.selectionInfoWidget.itemName.weaponNameWithVariant.itemName.itemName:setText(Engine.Localize(GetItemNameFromIndex(registerVal1)))
		end
	end

	registerVal4:linkToElementModel(registerVal5, "weaponItemIndex", true, __FUNC_1BA6_)
	local function __FUNC_1D0E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.selectionInfoWidget.itemName.weaponNameWithVariant.variantName.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal5, "variantNameBig", true, __FUNC_1D0E_)
	local function __FUNC_1E65_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setDataSource(registerVal1)
		end
	end

	registerVal6:linkToElementModel(registerVal5, "listDataSource", true, __FUNC_1E65_)
	local registerVal10 = {}
	registerVal10.right = registerVal6
	registerVal5.navigation = registerVal10
	registerVal10 = {}
	registerVal10.left = registerVal5
	registerVal6.navigation = registerVal10
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_1EFE_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		ClearSavedState(registerVal1, arg2)
		return true
	end

	local function __FUNC_1F79_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1EFE_, __FUNC_1F79_, false)
	registerVal5.id = "selectionList"
	registerVal6.id = "attachmentList"
	registerVal9:setModel(registerVal1.buttonModel, arg0)
	local registerVal12 = {}
	registerVal12.name = "menu_loaded"
	registerVal12.controller = arg0
	registerVal1:processEvent(registerVal12)
	registerVal12 = {}
	registerVal12.name = "update_state"
	registerVal12.menu = registerVal1
	registerVal1:processEvent(registerVal12)
	registerVal10 = registerVal1:restoreState()
	if not registerVal10 then
		registerVal12 = {}
		registerVal12.name = "gain_focus"
		registerVal12.controller = arg0
		registerVal1.selectionList:processEvent(registerVal12)
	end
	local function __FUNC_2075_(arg1)
		arg1.LeftPanel:close()
		arg1.selectMenuWidget:close()
		arg1.selectionList:close()
		arg1.attachmentList:close()
		arg1.cacElemsSideListBoxes0:close()
		arg1.feFooterContainer:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "PrimaryWeaponVariantSelect.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2075_)
	if __FUNC_478_ then
		__FUNC_478_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.PrimaryWeaponVariantSelect = __FUNC_631_
