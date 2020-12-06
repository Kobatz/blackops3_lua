-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.SelectMenuWidgetNew")
require("ui.uieditor.menus.CAC.Popups.OutOfUnlockTokens")
require("ui.uieditor.widgets.CAC.WeaponItemListButtonNew")
require("ui.uieditor.widgets.CAC.GridItemVariantButton")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.WeaponVariantIcon")
require("ui.uieditor.widgets.Footer.fe_FooterContainer_NOTLobby")
require("ui.uieditor.widgets.Pregame.Pregame_TimerOverlay")
require("ui.uieditor.widgets.Lobby.Common.FE_TabBar")
require("ui.uieditor.widgets.TabbedWidgets.WeaponGroupsTabWidget")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
local function __FUNC_507_(arg0, arg1)
	local registerVal2 = IsCampaign()
	if registerVal2 then
		arg0.disableBlur = true
	end
	arg0:setModel(CoD.perController[arg1].classModel)
	DataSources.Unlockables.setCurrentFilterItem("primary")
	arg0.performingSetup = true
	local function __FUNC_6E9_(arg0)
		local registerVal1 = arg0:getModel()
		local registerVal4 = Engine.GetModelValue(arg0:getModel(arg1, (CoD.perController[arg1].weaponCategory .. ".itemIndex")))
		arg0.lastSelectionTable = {}
		local registerVal5, registerVal6, registerVal7 = ipairs(CoD.CACUtility.PrimaryWeaponGroupNames)
		for index8,value9 in registerVal5, registerVal6, registerVal7 do
			arg0.lastSelectionTable[value9.weapon_category] = 1.000000
		end
		registerVal7 = {}
		registerVal7.itemIndex = registerVal4
		registerVal5 = arg0.weaponList:findItem(registerVal7, nil, false, nil)
		if registerVal5 then
			registerVal7 = registerVal5:getModel(arg1, "group")
			if registerVal7 then
				local registerVal8 = Engine.GetModelValue(registerVal7)
				DataSources.Unlockables.setCurrentFilterItem(registerVal8)
				local registerVal11 = {}
				registerVal11.filter = registerVal8
				arg0.weaponCategoryList.Tabs.grid:findItem(nil, registerVal11, true, nil)
				arg0.weaponList:updateDataSource(true)
				local registerVal10 = {}
				registerVal10.itemIndex = registerVal4
				registerVal8 = arg0.weaponList:findItem(registerVal10, nil, false, nil)
			else
				DataSources.Unlockables.setCurrentFilterItem(CoD.CACUtility.PrimaryWeaponGroupNames[1.000000].weapon_category)
				arg0.weaponCategoryList.Tabs.grid:setActiveItem(arg0.weaponCategoryList.Tabs.grid:getItemAt(2.000000))
				arg0.weaponList:updateDataSource(true)
				registerVal7 = arg0.weaponList:getFirstSelectableItem()
			end
		end
		local registerVal9 = {}
		registerVal9.name = "gain_focus"
		registerVal9.controller = arg1
		registerVal9.selectIndex = registerVal7.gridInfoTable.zeroBasedIndex
		arg0.weaponList:processEvent(registerVal9)
		if registerVal7 and registerVal8 then
			arg0.lastSelectionTable[registerVal8] = (registerVal7.gridInfoTable.zeroBasedIndex + 1.000000)
		end
		arg0.performingSetup = false
		return true
	end

	arg0.restoreState = __FUNC_6E9_
	CoD.perController[arg1].weaponIndexForVariant = 0.000000
end

local function __FUNC_D20_(arg0, arg1, arg2)
	local registerVal3 = arg2:getModel(arg1, "weaponAttributes")
	if registerVal3 then
		arg0.selectMenuWidget.selectionInfoWidget.WeaponAttributesInternal:setModel(registerVal3, arg1)
	end
end

local function __FUNC_E2F_(arg0, arg1)
	if CoD.PrestigeUtility.isInPermanentUnlockMenu then
		arg0.weaponCategoryList.Tabs.grid:setDataSource("GunsmithWeaponTabType")
		arg0.selectMenuWidget.background.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_WEAPONS_CAPS"))
	end
	local function __FUNC_1167_(arg2)
		arg0.selectMenuWidget.selectionInfoWidget.WeaponAttributesInternal:setModel(arg2, arg1)
	end

	arg0.selectMenuWidget:linkToElementModel(arg0.variantList, "weaponAttributes", false, __FUNC_1167_)
	local function __FUNC_1233_(arg0, arg2)
		local registerVal2 = Engine.GetModelValue(DataSources.WGSV_Category)
		arg0.currentMode = registerVal2
		if arg0.currentMode == CoD.WGSV_Category.WEAPON then
			arg0.weaponCategoryList.Tabs.m_disableNavigation = false
			CoD.CACUtility.WeaponSelectFocusOnLastSelectedCategory(arg0, arg2, arg1)
			CoD.SwapFocusableElements(arg1, arg0.variantList, arg0.weaponList)
			__FUNC_D20_(arg0, arg1, arg0.weaponList)
			arg0:setState("DefaultState")
		else
			if arg0.currentMode == CoD.WGSV_Category.GUNSMITH_VARIANT then
				arg0.weaponCategoryList.Tabs.m_disableNavigation = true
				arg0.variantList:updateDataSource()
				CoD.SwapFocusableElements(arg1, arg0.weaponList, arg0.variantList)
				__FUNC_D20_(arg0, arg1, arg0.variantList)
				CoD.CACUtility.WeaponSelectFocusOnLastSelectedWeapon(arg0, arg1)
				arg0:setState("ShowVariants")
			end
		end
	end

	arg0.updateMode = __FUNC_1233_
end

local function __FUNC_1636_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("PrimaryWeaponSelect")
	if __FUNC_507_ then
		__FUNC_507_(registerVal1, arg0)
	end
	registerVal1.soundSet = "CAC_PrimaryWeapon"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "PrimaryWeaponSelect.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 64.000000, 368.000000)
	registerVal3:setTopBottom(true, true, 78.000000, 24.000000)
	registerVal3:setRGB(0.500000, 0.500000, 0.500000)
	registerVal1:addElement(registerVal3)
	registerVal1.LeftPanel = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 86.000000, 125.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.CategoryListPanel = registerVal4
	local registerVal5 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal5:setTopBottom(true, true, 86.000000, -16.750000)
	registerVal1:addElement(registerVal5)
	registerVal1.FEMenuLeftGraphics = registerVal5
	local registerVal6 = CoD.SelectMenuWidgetNew.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6.background.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MPUI_PRIMARY_CAPS"))
	local function __FUNC_31EA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.selectionInfoWidget.itemName.weaponNameWithVariant.itemName.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal1, "name", true, __FUNC_31EA_)
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "GridLayout"
	local function __FUNC_332C_(arg1, arg2, arg3)
		return IsGlobalModelValueEqualTo(arg2, arg0, "WGSV_Category", CoD.WGSV_Category.GUNSMITH_VARIANT)
	end

	registerVal10.condition = __FUNC_332C_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetGlobalModel()
	registerVal9 = Engine.GetModel(registerVal10, "WGSV_Category")
	local function __FUNC_33ED_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "WGSV_Category"
		registerVal1:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:subscribeToModel(registerVal9, __FUNC_33ED_)
	registerVal1:addElement(registerVal6)
	registerVal1.selectMenuWidget = registerVal6
	local registerVal7 = LUI.UIList.new(registerVal1, arg0, 7.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal7:makeFocusable()
	registerVal7:setLeftRight(true, false, 77.000000, 357.000000)
	registerVal7:setTopBottom(true, false, 136.000000, 633.000000)
	registerVal7:setWidgetType(CoD.WeaponItemListButtonNew)
	registerVal7:setVerticalCount(7.000000)
	registerVal7:setSpacing(7.000000)
	registerVal7:setDataSource("Unlockables")
	local function __FUNC_350F_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "itemIndex"
		CoD.Menu.UpdateButtonShownState(registerVal7, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(registerVal7, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal7:linkToElementModel(registerVal7, "itemIndex", true, __FUNC_350F_)
	local function __FUNC_3732_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isBMClassified"
		CoD.Menu.UpdateButtonShownState(registerVal7, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal7:linkToElementModel(registerVal7, "isBMClassified", true, __FUNC_3732_)
	local function __FUNC_38F3_(arg1, arg2)
		local registerVal3 = IsCACItemNew(arg1, arg0)
		registerVal3 = IsInPermanentUnlockMenu(arg0)
		if registerVal3 and not registerVal3 then
			SetCACWeaponAsOld(registerVal1, arg1, arg0)
			UpdateSelfElementState(registerVal1, arg1, arg0)
			FocusWeapon(registerVal1, arg1, arg0)
		else
			FocusWeapon(registerVal1, arg1, arg0)
		end
		return nil
	end

	registerVal7:registerEventHandler("list_item_gain_focus", __FUNC_38F3_)
	local function __FUNC_3A2B_(arg1, arg2)
		FocusWeapon(registerVal1, arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("used_permanent_unlock_token", __FUNC_3A2B_)
	local function __FUNC_3ABE_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		return registerVal3
	end

	registerVal7:registerEventHandler("gain_focus", __FUNC_3ABE_)
	local function __FUNC_3CB7_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_3CB7_)
	local function __FUNC_3D86_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsCACItemLocked(arg1, arg0, arg2)
		registerVal4 = IsCACItemPurchased(arg0, arg2)
		registerVal4 = IsCACHaveTokens(arg2)
		registerVal4 = IsInPermanentUnlockMenu(arg2)
		registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
		if not registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 then
			SetUnlockConfirmationInfo(arg0, arg2)
			OpenPopup(registerVal1, "OutOfUnlockTokens", arg2, "", "")
			return true
		else
			registerVal4 = IsCACItemLocked(arg1, arg0, arg2)
			registerVal4 = IsCACItemPurchased(arg0, arg2)
			registerVal4 = IsCACHaveTokens(arg2)
			registerVal4 = IsInPermanentUnlockMenu(arg2)
			registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
			if not registerVal4 and not registerVal4 and registerVal4 and not registerVal4 and not registerVal4 then
				OpenUnlockClassItemDialog(arg1, arg0, arg2)
				return true
			else
				registerVal4 = IsCACItemLocked(arg1, arg0, arg2)
				registerVal4 = IsCACItemPurchased(arg0, arg2)
				registerVal4 = IsCACWeaponVariantAvailable(arg0, arg2)
				registerVal4 = IsInPermanentUnlockMenu(arg2)
				registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
				if not registerVal4 and registerVal4 and registerVal4 and not registerVal4 and not registerVal4 then
					SetGlobalModelValueArg("WGSV_Category", CoD.WGSV_Category.GUNSMITH_VARIANT)
					CallCustomElementFunction_Self(registerVal1, "updateMode", arg0)
					return true
				else
					registerVal4 = IsCACItemLocked(arg1, arg0, arg2)
					registerVal4 = IsCACItemPurchased(arg0, arg2)
					registerVal4 = IsCACWeaponVariantAvailable(arg0, arg2)
					registerVal4 = IsInPermanentUnlockMenu(arg2)
					registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
					if not registerVal4 and registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 then
						SetClassItem(registerVal1, arg0, arg2)
						return true
					else
						registerVal4 = IsInPermanentUnlockMenu(arg2)
						registerVal4 = IsPermanentlyUnlocked(arg0, arg2)
						registerVal4 = HavePermanentUnlockTokens(arg2)
						registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
						if registerVal4 and not registerVal4 and registerVal4 and not registerVal4 then
							OpenPermanentUnlockClassItemDialog(arg1, arg0, arg2)
							return true
						end
					end
				end
			end
		end
	end

	local function __FUNC_4336_(arg0, arg1, arg2)
		local registerVal3 = IsCACItemLocked(arg1, arg0, arg2)
		registerVal3 = IsCACItemPurchased(arg0, arg2)
		registerVal3 = IsCACHaveTokens(arg2)
		registerVal3 = IsInPermanentUnlockMenu(arg2)
		registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
		if not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		else
			registerVal3 = IsCACItemLocked(arg1, arg0, arg2)
			registerVal3 = IsCACItemPurchased(arg0, arg2)
			registerVal3 = IsCACHaveTokens(arg2)
			registerVal3 = IsInPermanentUnlockMenu(arg2)
			registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
			if not registerVal3 and not registerVal3 and registerVal3 and not registerVal3 and not registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
				return true
			else
				registerVal3 = IsCACItemLocked(arg1, arg0, arg2)
				registerVal3 = IsCACItemPurchased(arg0, arg2)
				registerVal3 = IsCACWeaponVariantAvailable(arg0, arg2)
				registerVal3 = IsInPermanentUnlockMenu(arg2)
				registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
				if not registerVal3 and registerVal3 and registerVal3 and not registerVal3 and not registerVal3 then
					CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
					return true
				else
					registerVal3 = IsCACItemLocked(arg1, arg0, arg2)
					registerVal3 = IsCACItemPurchased(arg0, arg2)
					registerVal3 = IsCACWeaponVariantAvailable(arg0, arg2)
					registerVal3 = IsInPermanentUnlockMenu(arg2)
					registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
					if not registerVal3 and registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
						CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
						return true
					else
						registerVal3 = IsInPermanentUnlockMenu(arg2)
						registerVal3 = IsPermanentlyUnlocked(arg0, arg2)
						registerVal3 = HavePermanentUnlockTokens(arg2)
						registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
						if registerVal3 and not registerVal3 and registerVal3 and not registerVal3 then
							CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
							return true
						end
					end
				end
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal7, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_3D86_, __FUNC_4336_, false)
	local function __FUNC_48CA_(arg0, arg1, arg2, arg3)
		local registerVal4 = CanPrestigeWeapon(arg0, arg2)
		if registerVal4 then
			PrestigeWeapon(arg1, arg0, arg2)
			return true
		end
	end

	local function __FUNC_495B_(arg0, arg1, arg2)
		local registerVal3 = CanPrestigeWeapon(arg0, arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "")
			return false
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal7, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "P", __FUNC_48CA_, __FUNC_495B_, false)
	registerVal1:addElement(registerVal7)
	registerVal1.weaponList = registerVal7
	local registerVal8 = LUI.UIList.new(registerVal1, arg0, 7.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal8:makeFocusable()
	registerVal8:setLeftRight(true, false, 77.000000, 415.000000)
	registerVal8:setTopBottom(true, false, 136.000000, 589.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setWidgetType(CoD.GridItemVariantButton)
	registerVal8:setHorizontalCount(3.000000)
	registerVal8:setVerticalCount(4.000000)
	registerVal8:setSpacing(7.000000)
	registerVal8:setDataSource("WeaponVariantList")
	local function __FUNC_4A89_(arg1, arg2)
		FocusWeaponVariant(registerVal1, arg1, arg0)
		return nil
	end

	registerVal8:registerEventHandler("list_item_gain_focus", __FUNC_4A89_)
	local function __FUNC_4AEC_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
		return registerVal3
	end

	registerVal8:registerEventHandler("gain_focus", __FUNC_4AEC_)
	local function __FUNC_4CE5_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("lose_focus", __FUNC_4CE5_)
	local function __FUNC_4DB6_(arg0, arg1, arg2, arg3)
		SetWeaponVariant(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_4E16_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal8, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_4DB6_, __FUNC_4E16_, false)
	local function __FUNC_4F12_(arg0, arg1, arg2, arg3)
		SetGlobalModelValueArg("WGSV_Category", CoD.WGSV_Category.WEAPON)
		CallCustomElementFunction_Self(registerVal1, "updateMode", arg0)
		return true
	end

	local function __FUNC_5010_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal8, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_4F12_, __FUNC_5010_, false)
	registerVal1:addElement(registerVal8)
	registerVal1.variantList = registerVal8
	registerVal9 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal9:makeFocusable()
	registerVal9:setLeftRight(true, false, 449.000000, 753.000000)
	registerVal9:setTopBottom(true, false, 183.000000, 215.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setWidgetType(CoD.WeaponVariantIcon)
	registerVal9:setHorizontalCount(9.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.attachmentList = registerVal9
	registerVal10 = CoD.fe_FooterContainer_NOTLobby.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal10:setTopBottom(false, true, -65.000000, 0.000000)
	local function __FUNC_510D_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal10:registerEventHandler("menu_loaded", __FUNC_510D_)
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "WithHeroesHead"
	local function __FUNC_51A1_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal14.condition = __FUNC_51A1_
	registerVal13 = {registerVal14}
	registerVal10:mergeStateConditions(registerVal13)
	registerVal1:addElement(registerVal10)
	registerVal1.feFooterContainer = registerVal10
	local registerVal11 = CoD.Pregame_TimerOverlay.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal11:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "WeaponSelect"
	local function __FUNC_51EC_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal15.condition = __FUNC_51EC_
	registerVal14 = {registerVal15}
	registerVal11:mergeStateConditions(registerVal14)
	registerVal15 = Engine.GetGlobalModel()
	registerVal14 = Engine.GetModel(registerVal15, "lobbyRoot.Pregame.state")
	local function __FUNC_5238_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.state"
		registerVal1:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:subscribeToModel(registerVal14, __FUNC_5238_)
	registerVal1:addElement(registerVal11)
	registerVal1.PregameTimerOverlay = registerVal11
	local registerVal12 = CoD.FE_TabBar.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, true, 0.000000, 1280.000000)
	registerVal12:setTopBottom(true, false, 85.000000, 126.000000)
	registerVal12.Tabs.grid:setWidgetType(CoD.WeaponGroupsTabWidget)
	registerVal12.Tabs.grid:setHorizontalCount(8.000000)
	registerVal12.Tabs.grid:setDataSource("WeaponGroups")
	local function __FUNC_5365_(arg1, arg2)
		CAC_TabChanged(registerVal1, arg1, arg0)
		return nil
	end

	registerVal12:registerEventHandler("list_active_changed", __FUNC_5365_)
	registerVal1:addElement(registerVal12)
	registerVal1.weaponCategoryList = registerVal12
	registerVal13 = LUI.UIText.new()
	registerVal13:setLeftRight(true, false, 391.000000, 647.000000)
	registerVal13:setTopBottom(true, false, 113.500000, 132.500000)
	registerVal13:setRGB(0.970000, 0.320000, 0.050000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setText(LocalizeToUpperString("MENU_VARIANT"))
	registerVal13:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal13:setLetterSpacing(1.000000)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal13)
	registerVal1.categoryName = registerVal13
	registerVal14 = CoD.verticalCounter.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 116.000000, 316.000000)
	registerVal14:setTopBottom(true, false, 631.500000, 656.500000)
	local function __FUNC_53C4_(arg0, arg1)
		SetAsListVerticalCounter(registerVal1, arg0, "weaponList")
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal14:registerEventHandler("menu_loaded", __FUNC_53C4_)
	registerVal1:addElement(registerVal14)
	registerVal1.weaponListCounter = registerVal14
	local function __FUNC_547B_(arg1)
		registerVal6:setModel(arg1, arg0)
	end

	registerVal6:linkToElementModel(registerVal7, nil, false, __FUNC_547B_)
	local function __FUNC_54CA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.selectionInfoWidget.itemName.weaponNameWithVariant.variantName.itemName:setText(registerVal1)
		end
	end

	registerVal6:linkToElementModel(registerVal8, "variantNameBig", true, __FUNC_54CA_)
	local function __FUNC_55FB_(arg1)
		registerVal6.selectionInfoWidget.WeaponAttributesInternal:setModel(arg1, arg0)
	end

	registerVal6:linkToElementModel(registerVal7, "weaponAttributes", false, __FUNC_55FB_)
	local function __FUNC_56A1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setDataSource(registerVal1)
		end
	end

	registerVal9:linkToElementModel(registerVal8, "listDataSource", true, __FUNC_56A1_)
	registerVal15 = {}
	registerVal15.right = registerVal9
	registerVal7.navigation = registerVal15
	registerVal15 = {}
	registerVal15.right = registerVal9
	registerVal8.navigation = registerVal15
	registerVal15 = {}
	registerVal15.left = registerVal8
	registerVal9.navigation = registerVal15
	registerVal15 = {}
	local registerVal16 = {}
	local function __FUNC_573A_()
		registerVal1:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal1.CategoryListPanel:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal6.selectionInfoWidget.itemName.weaponNameWithVariant.variantName:completeAnimation()
		registerVal1.selectMenuWidget.selectionInfoWidget.itemName.weaponNameWithVariant.variantName:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.weaponList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.variantList:setLeftRight(true, false, -274.000000, 64.000000)
		registerVal1.variantList:setTopBottom(true, false, 136.000000, 589.000000)
		registerVal1.variantList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.attachmentList:setLeftRight(true, false, 449.000000, 753.000000)
		registerVal1.attachmentList:setTopBottom(true, false, 183.000000, 215.000000)
		registerVal1.attachmentList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal12:completeAnimation()
		registerVal1.weaponCategoryList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.categoryName:setLeftRight(true, false, 391.000000, 647.000000)
		registerVal1.categoryName:setTopBottom(true, false, 113.500000, 132.500000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.weaponListCounter:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_573A_
	local function __FUNC_5CD5_()
		registerVal1:setupElementClipCounter(8.000000)
		local function __FUNC_61BF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 64.000000, 428.000000)
			arg0:setTopBottom(true, true, 78.000000, -53.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal1.LeftPanel:setLeftRight(true, false, 64.000000, 368.000000)
		registerVal1.LeftPanel:setTopBottom(true, true, 78.000000, -53.000000)
		__FUNC_61BF_(registerVal3, {})
		local function __FUNC_63BE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal1.CategoryListPanel:setAlpha(1.000000)
		__FUNC_63BE_(registerVal4, {})
		local function __FUNC_6571_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal1.weaponList:setAlpha(1.000000)
		__FUNC_6571_(registerVal7, {})
		local function __FUNC_6725_(arg0, arg1)
			local function __FUNC_68B4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 77.000000, 415.000000)
				arg0:setTopBottom(true, false, 136.000000, 589.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_68B4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -98.500000, 239.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_68B4_)
		end

		registerVal8:completeAnimation()
		registerVal1.variantList:setLeftRight(true, false, -274.000000, 64.000000)
		registerVal1.variantList:setTopBottom(true, false, 136.000000, 589.000000)
		registerVal1.variantList:setAlpha(0.000000)
		__FUNC_6725_(registerVal8, {})
		local function __FUNC_6AD9_(arg0, arg1)
			local function __FUNC_6C68_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 449.000000, 753.000000)
				arg0:setTopBottom(true, false, 183.000000, 215.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_6C68_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 420.000000, 724.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6C68_)
		end

		registerVal9:completeAnimation()
		registerVal1.attachmentList:setLeftRight(true, false, 391.000000, 695.000000)
		registerVal1.attachmentList:setTopBottom(true, false, 183.000000, 215.000000)
		registerVal1.attachmentList:setAlpha(0.000000)
		__FUNC_6AD9_(registerVal9, {})
		local function __FUNC_6E8D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal1.weaponCategoryList:setAlpha(1.000000)
		__FUNC_6E8D_(registerVal12, {})
		local function __FUNC_7041_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 449.000000, 705.000000)
			arg0:setTopBottom(true, false, 113.500000, 132.500000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal1.categoryName:setLeftRight(true, false, 391.000000, 647.000000)
		registerVal1.categoryName:setTopBottom(true, false, 113.500000, 132.500000)
		registerVal1.categoryName:setAlpha(0.000000)
		__FUNC_7041_(registerVal13, {})
		local function __FUNC_7265_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal1.weaponListCounter:setAlpha(1.000000)
		__FUNC_7265_(registerVal14, {})
	end

	registerVal16.ShowVariants = __FUNC_5CD5_
	registerVal15.DefaultState = registerVal16
	registerVal16 = {}
	local function __FUNC_7419_()
		registerVal1:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal1.LeftPanel:setLeftRight(true, false, 64.000000, 428.000000)
		registerVal1.LeftPanel:setTopBottom(true, true, 78.000000, -53.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.CategoryListPanel:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal6.selectionInfoWidget.itemName.weaponNameWithVariant.variantName:completeAnimation()
		registerVal1.selectMenuWidget.selectionInfoWidget.itemName.weaponNameWithVariant.variantName:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.weaponList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.variantList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.attachmentList:setLeftRight(true, false, 449.000000, 753.000000)
		registerVal1.attachmentList:setTopBottom(true, false, 183.000000, 215.000000)
		registerVal1.attachmentList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal12:completeAnimation()
		registerVal1.weaponCategoryList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.categoryName:setLeftRight(true, false, 449.000000, 705.000000)
		registerVal1.categoryName:setTopBottom(true, false, 113.500000, 132.500000)
		registerVal1.categoryName:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.weaponListCounter:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_7419_
	local function __FUNC_7A07_()
		registerVal1:setupElementClipCounter(8.000000)
		local function __FUNC_7FC6_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 64.000000, 368.000000)
			arg0:setTopBottom(true, true, 78.000000, -53.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal1.LeftPanel:setLeftRight(true, false, 64.000000, 428.000000)
		registerVal1.LeftPanel:setTopBottom(true, true, 78.000000, -53.000000)
		__FUNC_7FC6_(registerVal3, {})
		local function __FUNC_81C6_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal4:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
		registerVal4:setAlpha(0.000000)
		registerVal4:registerEventHandler("transition_complete_keyframe", __FUNC_81C6_)
		local function __FUNC_8379_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal7:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
		registerVal7:setAlpha(0.000000)
		registerVal7:registerEventHandler("transition_complete_keyframe", __FUNC_8379_)
		local function __FUNC_852D_(arg0, arg1)
			local function __FUNC_86DF_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, -274.000000, 64.000000)
				arg0:setTopBottom(true, false, 136.000000, 589.000000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_86DF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -98.500000, 239.500000)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_86DF_)
		end

		registerVal8:completeAnimation()
		registerVal1.variantList:setLeftRight(true, false, 77.000000, 415.000000)
		registerVal1.variantList:setTopBottom(true, false, 136.000000, 589.000000)
		registerVal1.variantList:setAlpha(1.000000)
		__FUNC_852D_(registerVal8, {})
		local function __FUNC_8901_(arg0, arg1)
			local function __FUNC_8A7B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 391.000000, 695.000000)
				arg0:setTopBottom(true, false, 183.000000, 215.000000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_8A7B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8A7B_)
		end

		registerVal9:completeAnimation()
		registerVal1.attachmentList:setLeftRight(true, false, 391.000000, 695.000000)
		registerVal1.attachmentList:setTopBottom(true, false, 183.000000, 215.000000)
		registerVal1.attachmentList:setAlpha(1.000000)
		__FUNC_8901_(registerVal9, {})
		local function __FUNC_8C9D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal12:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
		registerVal12:setAlpha(0.000000)
		registerVal12:registerEventHandler("transition_complete_keyframe", __FUNC_8C9D_)
		local function __FUNC_8E51_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 391.000000, 647.000000)
			arg0:setTopBottom(true, false, 113.500000, 132.500000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal1.categoryName:setLeftRight(true, false, 449.000000, 705.000000)
		registerVal1.categoryName:setTopBottom(true, false, 113.500000, 132.500000)
		registerVal1.categoryName:setAlpha(1.000000)
		__FUNC_8E51_(registerVal13, {})
		local function __FUNC_9075_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal14:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
		registerVal14:setAlpha(0.000000)
		registerVal14:registerEventHandler("transition_complete_keyframe", __FUNC_9075_)
	end

	registerVal16.DefaultState = __FUNC_7A07_
	registerVal15.ShowVariants = registerVal16
	registerVal1.clipsPerState = registerVal15
	local registerVal18 = Engine.GetGlobalModel()
	local registerVal17 = Engine.GetModel(registerVal18, "WGSV_Category")
	local function __FUNC_9229_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "WGSV_Category"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
	end

	registerVal1:subscribeToModel(registerVal17, __FUNC_9229_)
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_93EB_(arg0, arg1)
		SetGlobalModelValueArg("WGSV_Category", CoD.WGSV_Category.WEAPON)
		CallCustomElementFunction_Self(registerVal1, "updateMode", arg0)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_opened", __FUNC_93EB_)
	local function __FUNC_9521_(arg0, arg1)
		ShowHeaderKickerAndIcon(registerVal1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_9521_)
	local function __FUNC_95BA_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsGlobalModelValueEqualTo(arg0, arg2, "WGSV_Category", CoD.WGSV_Category.WEAPON)
		if registerVal4 then
			GoBack(registerVal1, arg2)
			PlaySoundSetSound(registerVal1, "menu_no_selection")
			return true
		else
			return true
		end
	end

	local function __FUNC_96ED_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_95BA_, __FUNC_96ED_, false)
	local function __FUNC_97E9_(arg0, arg1, arg2, arg3)
		local registerVal4 = CACShowRotatePrompt(registerVal1, arg0, arg2)
		if registerVal4 then
			return true
		end
	end

	local function __FUNC_9855_(arg0, arg1, arg2)
		local registerVal3 = CACShowRotatePrompt(registerVal1, arg0, arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "PLATFORM_EMBLEM_ROTATE_LAYER")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, nil, __FUNC_97E9_, __FUNC_9855_, false)
	registerVal7.id = "weaponList"
	registerVal8.id = "variantList"
	registerVal9.id = "attachmentList"
	registerVal10:setModel(registerVal1.buttonModel, arg0)
	registerVal17 = {}
	registerVal17.name = "menu_loaded"
	registerVal17.controller = arg0
	registerVal1:processEvent(registerVal17)
	registerVal17 = {}
	registerVal17.name = "update_state"
	registerVal17.menu = registerVal1
	registerVal1:processEvent(registerVal17)
	registerVal15 = registerVal1:restoreState()
	if not registerVal15 then
		registerVal17 = {}
		registerVal17.name = "gain_focus"
		registerVal17.controller = arg0
		registerVal1.weaponList:processEvent(registerVal17)
	end
	local function __FUNC_99A7_(arg1)
		arg1.LeftPanel:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.selectMenuWidget:close()
		arg1.weaponList:close()
		arg1.variantList:close()
		arg1.attachmentList:close()
		arg1.feFooterContainer:close()
		arg1.PregameTimerOverlay:close()
		arg1.weaponCategoryList:close()
		arg1.weaponListCounter:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "PrimaryWeaponSelect.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_99A7_)
	if __FUNC_E2F_ then
		__FUNC_E2F_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.PrimaryWeaponSelect = __FUNC_1636_
