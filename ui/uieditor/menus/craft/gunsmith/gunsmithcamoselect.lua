-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.CAC.GridItemButtonBackdropContainer3x4")
require("ui.uieditor.widgets.CAC.Customization.CustomizationItem_ND")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.CAC.GridItemButtonBackdropSymbols")
require("ui.uieditor.widgets.CAC.cac_3dTitleIntermediary")
require("ui.uieditor.widgets.CAC.cac_ElemsSideList")
require("ui.uieditor.widgets.CAC.BlackMarketItemDescription")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.WeaponNameWidget")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.Lobby.Common.FE_TabBar")
require("ui.uieditor.widgets.TabbedWidgets.WeaponGroupsTabWidget")
require("ui.uieditor.widgets.CAC.Customization.ChallengeProgressionInfo")
require("ui.uieditor.widgets.BlackMarket.CryptokeyTypeNameLeft")
require("ui.uieditor.widgets.CAC.ModeIconName")
require("ui.uieditor.widgets.PC.Utility.XCamMouseControl")
require("ui.uieditor.widgets.CAC.cac_LockBig")
local function __FUNC_663_(arg0, arg1)
	CoD.perController[arg1].customizationType = Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_CAMO
	arg0:setModel(CoD.perController[arg1].gunsmithCamoIndexModel)
	local registerVal3 = Engine.GetModelValue(CoD.perController[arg1].gunsmithCamoIndexModel)
	local registerVal6 = CoD.GetCustomization(arg1, "weapon_index")
	local registerVal5 = Engine.GetItemRef(registerVal6, Enum.eModes.MODE_MULTIPLAYER)
	registerVal6 = CoD.CraftUtility.Gunsmith.GetWeaponPlusAttachmentsForVariant(arg1, CoD.perController[arg1].gunsmithVariantModel)
	local registerVal7 = CoD.CraftUtility.GetModeAbbreviation()
	local registerVal8 = CoD.CraftUtility.GetLoadoutSlot(arg1)
	local registerVal9 = Engine.GetModelForController(arg1)
	local registerVal10 = Engine.CreateModel(registerVal9, "StoreRoot")
	Engine.CreateModel(registerVal10, "InventoryItemPurchaseSuccessful")
end

local function __FUNC_AB8_(arg0, arg1, arg2)
	if arg0.selectionList and arg1.filterString then
		DataSources.GunsmithWeaponOptions.setCurrentFilterItem(("camo" .. "_" .. arg1.filterString))
		arg0.selectionList:updateDataSource()
		local registerVal4 = arg0.selectionList:getItemAt(1.000000)
		arg0.selectionList:setActiveItem(registerVal4)
	end
end

local function __FUNC_C71_(arg0, arg1)
	local registerVal2 = CoD.GetCustomization(arg1, "weapon_index")
	CoD.GunsmithWeaponOptionsTable = {}
	local registerVal4 = CoD.GetGunsmithWeaponOptionsTable(arg1, CoD.GunsmithWeaponOptionsTable, Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_CAMO, registerVal2, 0.000000, true)
	CoD.GunsmithWeaponOptionsTable = registerVal4
	arg0.tabChanged = __FUNC_AB8_
	local registerVal3 = Engine.CurrentSessionMode()
	if registerVal3 == Enum.eModes.MODE_INVALID then
	end
	local registerVal5 = CoD.WeaponOptionFilterToString(Enum.eModes.MODE_CAMPAIGN)
	local registerVal9 = {}
	registerVal9.filterEnum = Enum.eModes.MODE_CAMPAIGN
	local registerVal6 = arg0.categoryTabs.Tabs.grid:findItem(nil, registerVal9, false, nil)
	if registerVal6 then
		arg0.categoryTabs.Tabs.grid:setActiveItem(registerVal6)
	else
		local registerVal7 = arg0.categoryTabs.Tabs.grid:getItemAt(2.000000)
		arg0.categoryTabs.Tabs.grid:setActiveItem(registerVal7)
		local registerVal8 = CoD.WeaponOptionFilterToString(registerVal7.filterEnum)
	end
	for index7=Enum.WeaponOptionFilter.WEAPONOPTION_FILTER_FIRST, (Enum.WeaponOptionFilter.WEAPONOPTION_FILTER_COUNT - 1.000000), 1.000000 do
		local registerVal14 = {}
		registerVal14.filterEnum = index7
		local registerVal11 = arg0.categoryTabs.Tabs.grid:findItem(nil, registerVal14, false, nil)
		local registerVal12 = CoD.GetCustomization(arg1, "weapon_index")
		local registerVal13 = CoD.CACUtility.GetWeaponOptionTypeForName("camo")
		registerVal14 = registerVal11:getModel(arg1, "breadcrumbCount")
		if registerVal11 and registerVal14 then
			if index7 < Enum.WeaponOptionFilter.WEAPONOPTION_FILTER_MODE_COUNT then
				local registerVal15 = Engine.WeaponOptionNewItemCount(arg1, registerVal12, registerVal13, registerVal11.filterEnum)
				Engine.SetModelValue(registerVal14, registerVal15)
			else
				registerVal15 = Engine.WeaponOptionNewModeAgnosticItemCount(arg1, registerVal12, registerVal13, registerVal11.filterEnum)
				Engine.SetModelValue(registerVal14, registerVal15)
			end
		end
	end
	DataSources.GunsmithWeaponOptions.setCurrentFilterItem(("camo" .. "_" .. registerVal8))
	arg0.selectionList:updateDataSource()
	arg0.originalOcclusionChange = arg0.m_eventHandlers.occlusion_change
	local function __FUNC_1513_(arg0, arg2)
		CoD.GunsmithWeaponOptionsTable = {}
		local registerVal3 = CoD.GetGunsmithWeaponOptionsTable(arg1, CoD.GunsmithWeaponOptionsTable, Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_CAMO)
		CoD.GunsmithWeaponOptionsTable = registerVal3
		ForceNotifyControllerModel(arg1, "StoreRoot.InventoryItemPurchaseSuccessful")
		local registerVal5 = {}
		registerVal5.filterEnum = Enum.WeaponOptionFilter.WEAPONOPTION_FILTER_EXTRAS
		local registerVal2 = arg0.categoryTabs.Tabs.grid:findItem(nil, registerVal5, false, nil)
		if not arg2.occluded and arg2.occludedBy and arg2.occludedBy.id == "Menu.PurchaseInventoryItemComplete" and registerVal2 then
			registerVal3 = CoD.GetCustomization(arg1, "weapon_index")
			local registerVal4 = CoD.CACUtility.GetWeaponOptionTypeForName("camo")
			registerVal5 = registerVal2:getModel(arg1, "breadcrumbCount")
			local registerVal6 = Engine.WeaponOptionNewModeAgnosticItemCount(arg1, registerVal3, registerVal4, registerVal2.filterEnum)
			Engine.SetModelValue(registerVal5, registerVal6)
		end
		arg0.originalOcclusionChange(arg0, arg2)
	end

	arg0:registerEventHandler("occlusion_change", __FUNC_1513_)
end

local function __FUNC_1A07_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("GunsmithCamoSelect")
	if __FUNC_663_ then
		__FUNC_663_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "GunsmithCamoSelect.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 64.000000, 427.000000)
	registerVal3:setTopBottom(true, false, 126.000000, 720.000000)
	registerVal3:setRGB(0.500000, 0.500000, 0.500000)
	registerVal1:addElement(registerVal3)
	registerVal1.LeftPanel = registerVal3
	local registerVal4 = CoD.GridItemButtonBackdropContainer3x4.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 99.000000, 443.000000)
	registerVal4:setTopBottom(true, false, 145.500000, 601.500000)
	registerVal4:setAlpha(0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.GridItemButtonBackdropContainer3x4 = registerVal4
	local registerVal5 = LUI.UIList.new(registerVal1, arg0, 8.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal5:makeFocusable()
	registerVal5:setLeftRight(true, false, 74.500000, 414.500000)
	registerVal5:setTopBottom(true, false, 137.000000, 593.000000)
	registerVal5:setWidgetType(CoD.CustomizationItem_ND)
	registerVal5:setHorizontalCount(3.000000)
	registerVal5:setVerticalCount(4.000000)
	registerVal5:setSpacing(8.000000)
	registerVal5:setVerticalCounter(CoD.verticalCounter)
	registerVal5:setDataSource("GunsmithWeaponOptions")
	local function __FUNC_3972_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isPackage"
		CoD.Menu.UpdateButtonShownState(registerVal5, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal5:linkToElementModel(registerVal5, "isPackage", true, __FUNC_3972_)
	local function __FUNC_3B2E_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "itemIndex"
		CoD.Menu.UpdateButtonShownState(registerVal5, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal5:linkToElementModel(registerVal5, "itemIndex", true, __FUNC_3B2E_)
	local function __FUNC_3CEA_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isBMClassified"
		CoD.Menu.UpdateButtonShownState(registerVal5, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal5:linkToElementModel(registerVal5, "isBMClassified", true, __FUNC_3CEA_)
	local function __FUNC_3EAB_(arg1, arg2)
		local registerVal3 = Gunsmith_IsCamoNew(registerVal1, arg1, arg0)
		if registerVal3 then
			Gunsmith_SetWeaponOptionAsOld(registerVal1, arg1, arg0)
			UpdateSelfElementState(registerVal1, arg1, arg0)
			Gunsmith_FocusCamo(registerVal1, arg1, arg0)
		else
			Gunsmith_FocusCamo(registerVal1, arg1, arg0)
		end
		return nil
	end

	registerVal5:registerEventHandler("list_item_gain_focus", __FUNC_3EAB_)
	local function __FUNC_3FCB_(arg1, arg2)
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

	registerVal5:registerEventHandler("gain_focus", __FUNC_3FCB_)
	local function __FUNC_415B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_415B_)
	local function __FUNC_422A_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isPackage")
		if registerVal4 then
			OpenBuyInventoryItemDialog(registerVal1, arg0, arg2, "CamoBlacksmith")
			return true
		else
			registerVal4 = IsGunsmithItemWeaponOptionLocked(arg1, arg0, arg2)
			registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
			if not registerVal4 and not registerVal4 then
				Gunsmith_SelectCamo(registerVal1, arg0, arg2)
				GoBack(registerVal1, arg2)
				ClearMenuSavedState(arg1)
				return true
			end
		end
	end

	local function __FUNC_43FD_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isPackage")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		else
			registerVal3 = IsGunsmithItemWeaponOptionLocked(arg1, arg0, arg2)
			registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
			if not registerVal3 and not registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
				return true
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal5, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_422A_, __FUNC_43FD_, false)
	local function __FUNC_4619_(arg1)
		UpdateDataSource(registerVal1, registerVal5, arg0)
	end

	registerVal5:subscribeToGlobalModel(arg0, "PerController", "StoreRoot.InventoryItemPurchaseSuccessful", __FUNC_4619_)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Equipped"
	local function __FUNC_4676_(arg1, arg2, arg3)
		return Gunsmith_IsCamoEquipped(arg1, arg2, arg0)
	end

	registerVal9.condition = __FUNC_4676_
	local registerVal10 = {}
	registerVal10.stateName = "New"
	local function __FUNC_46D9_(arg1, arg2, arg3)
		return Gunsmith_IsCamoNew(arg1, arg2, arg0)
	end

	registerVal10.condition = __FUNC_46D9_
	local registerVal11 = {}
	registerVal11.stateName = "bmContracts"
	local function __FUNC_4738_(arg1, arg2, arg3)
		local registerVal3 = IsGunsmithItemWeaponOptionLocked(arg1, arg2, arg0)
		if registerVal3 then
			registerVal3 = IsSpecialContractCamo(arg2, arg0)
		end
		return registerVal3
	end

	registerVal11.condition = __FUNC_4738_
	local registerVal12 = {}
	registerVal12.stateName = "Locked"
	local function __FUNC_47DD_(arg1, arg2, arg3)
		return IsGunsmithItemWeaponOptionLocked(arg1, arg2, arg0)
	end

	registerVal12.condition = __FUNC_47DD_
	registerVal8 = {registerVal9, registerVal10, registerVal11, registerVal12}
	registerVal5:mergeStateConditions(registerVal8)
	local function __FUNC_484A_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		registerVal1:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "isBMClassified", true, __FUNC_484A_)
	local function __FUNC_496C_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isChallengeClassified"
		registerVal1:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "isChallengeClassified", true, __FUNC_496C_)
	local function __FUNC_4A97_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isPackage"
		registerVal1:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "isPackage", true, __FUNC_4A97_)
	local function __FUNC_4BB3_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		registerVal1:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "itemIndex", true, __FUNC_4BB3_)
	local function __FUNC_4CCF_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "weaponOptionTypeName"
		registerVal1:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "weaponOptionTypeName", true, __FUNC_4CCF_)
	registerVal1:addElement(registerVal5)
	registerVal1.selectionList = registerVal5
	local registerVal6 = CoD.GridItemButtonBackdropSymbols.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 98.000000, 1192.670000)
	registerVal6:setTopBottom(true, false, 144.500000, 601.500000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setZoom(-7.020000)
	registerVal1:addElement(registerVal6)
	registerVal1.GridItemButtonBackdropSymbols = registerVal6
	local registerVal7 = CoD.cac_3dTitleIntermediary.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, -72.000000, 537.000000)
	registerVal7:setTopBottom(true, false, -4.000000, 142.000000)
	registerVal7:setAlpha(0.000000)
	local function __FUNC_4DF6_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal7.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(LocalizeWeaponNameIntoString("MENU_GUNSMITH_CAMO_SELECT_TITLE", "mp", arg0, registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg0, "Customization", "weapon_index", __FUNC_4DF6_)
	registerVal1:addElement(registerVal7)
	registerVal1.cac3dTitleIntermediary0 = registerVal7
	registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, -11.000000, 1293.000000)
	registerVal8:setTopBottom(true, false, 80.000000, 88.000000)
	registerVal8:setRGB(0.900000, 0.900000, 0.900000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal8)
	registerVal1.CategoryListLine0 = registerVal8
	registerVal9 = CoD.cac_ElemsSideList.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 4.130000, 72.000000)
	registerVal9:setTopBottom(true, false, -11.000000, 659.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.ElemsSideList = registerVal9
	registerVal10 = CoD.BlackMarketItemDescription.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 448.000000, 832.000000)
	registerVal10:setTopBottom(true, false, 175.000000, 197.000000)
	registerVal10.weaponDescTextBox:setText(LocalizeIntoString("MPUI_BLACKMARKET_ITEM_CLASSIFIED_DESC", "MENU_CAMO"))
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "NotVisible"
	local function __FUNC_4F79_(arg1, arg2, arg3)
		return ShouldHideClassifiedDescription(arg2, arg0)
	end

	registerVal14.condition = __FUNC_4F79_
	registerVal13 = {registerVal14}
	registerVal10:mergeStateConditions(registerVal13)
	local function __FUNC_4FE1_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "ref"
		registerVal1:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:linkToElementModel(registerVal10, "ref", true, __FUNC_4FE1_)
	registerVal1:addElement(registerVal10)
	registerVal1.itemDescription = registerVal10
	registerVal11 = CoD.BlackMarketItemDescription.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 448.000000, 832.000000)
	registerVal11:setTopBottom(true, false, 175.000000, 197.000000)
	registerVal11.weaponDescTextBox:setText(Engine.Localize("MPUI_LIMITED_CAMO_ITEM_CLASSIFIED_DESC"))
	registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "NotVisible"
	local function __FUNC_50F9_(arg1, arg2, arg3)
		return ShouldHideClassifiedLimitedEditionCamoDescription(arg2, arg0)
	end

	registerVal15.condition = __FUNC_50F9_
	registerVal14 = {registerVal15}
	registerVal11:mergeStateConditions(registerVal14)
	local function __FUNC_5173_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "ref"
		registerVal1:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:linkToElementModel(registerVal11, "ref", true, __FUNC_5173_)
	registerVal1:addElement(registerVal11)
	registerVal1.limitedEditionCamoDescription = registerVal11
	registerVal12 = CoD.WeaponNameWidget.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 449.000000, 782.000000)
	registerVal12:setTopBottom(true, false, 137.000000, 171.000000)
	registerVal15 = {}
	local registerVal16 = {}
	registerVal16.stateName = "NoText"
	local function __FUNC_5289_(arg1, arg2, arg3)
		return ShouldHideItemWeaponOptionInGunsmith(arg2, arg0)
	end

	registerVal16.condition = __FUNC_5289_
	registerVal15 = {registerVal16}
	registerVal12:mergeStateConditions(registerVal15)
	local function __FUNC_52F6_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		registerVal1:updateElementState(registerVal12, registerVal4)
	end

	registerVal12:linkToElementModel(registerVal12, "itemIndex", true, __FUNC_52F6_)
	registerVal1:addElement(registerVal12)
	registerVal1.WeaponNameWidget0 = registerVal12
	registerVal13 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal13:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal13.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_gunsmith"))
	local function __FUNC_5413_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal13.titleLabel:setText(LocalizeWeaponNameIntoString("MENU_GUNSMITH_CAMO_SELECT_TITLE", "mp", arg0, registerVal1))
		end
	end

	registerVal13:subscribeToGlobalModel(arg0, "Customization", "weapon_index", __FUNC_5413_)
	local function __FUNC_5533_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal13.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(LocalizeWeaponNameIntoString("MENU_GUNSMITH_CAMO_SELECT_TITLE", "mp", arg0, registerVal1))
		end
	end

	registerVal13:subscribeToGlobalModel(arg0, "Customization", "weapon_index", __FUNC_5533_)
	registerVal1:addElement(registerVal13)
	registerVal1.MenuFrame = registerVal13
	registerVal14 = CoD.FE_TabBar.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 0.000000, 2497.000000)
	registerVal14:setTopBottom(true, false, 85.000000, 126.000000)
	registerVal14.Tabs.grid:setWidgetType(CoD.WeaponGroupsTabWidget)
	registerVal14.Tabs.grid:setHorizontalCount(7.000000)
	registerVal14.Tabs.grid:setDataSource("CACCustomizationTabs")
	local function __FUNC_56E2_(arg1, arg2)
		CallCustomElementFunction_Self(registerVal1, "tabChanged", arg1, arg0)
		UpdateElementState(registerVal1, "WeaponNameWidget0", arg0)
		UpdateElementState(registerVal1, "progressionInfo", arg0)
		UpdateElementState(registerVal1, "itemDescription", arg0)
		return nil
	end

	registerVal14:registerEventHandler("list_active_changed", __FUNC_56E2_)
	registerVal1:addElement(registerVal14)
	registerVal1.categoryTabs = registerVal14
	registerVal15 = CoD.ChallengeProgressionInfo.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, false, 439.000000, 859.000000)
	registerVal15:setTopBottom(false, true, -162.000000, -78.000000)
	registerVal15.requirementTitle:setText(Engine.Localize("MENU_CAMO_REQUIREMENTS"))
	registerVal15.completedTitle:setText(Engine.Localize("MENU_CAMO_COMPLETE"))
	local registerVal18 = {}
	local registerVal19 = {}
	registerVal19.stateName = "NotVisible"
	local function __FUNC_580D_(arg1, arg2, arg3)
		return ShouldHideItemWeaponOptionInGunsmith(arg2, arg0)
	end

	registerVal19.condition = __FUNC_580D_
	local registerVal20 = {}
	registerVal20.stateName = "bmComtracts"
	local function __FUNC_587A_(arg1, arg2, arg3)
		local registerVal3 = IsSpecialContractCamo(arg2, arg0)
		if registerVal3 then
			registerVal3 = IsGunsmithItemWeaponOptionLocked(arg1, arg2, arg0)
		end
		return (not registerVal3)
	end

	registerVal20.condition = __FUNC_587A_
	local registerVal21 = {}
	registerVal21.stateName = "Completed"
	local function __FUNC_5921_(arg1, arg2, arg3)
		local registerVal3 = IsGunsmithItemWeaponOptionLocked(arg1, arg2, arg0)
		return (not registerVal3)
	end

	registerVal21.condition = __FUNC_5921_
	local registerVal22 = {}
	registerVal22.stateName = "NotAvailable"
	local function __FUNC_5992_(arg1, arg2, arg3)
		local registerVal3 = IsSelfModelValueNonEmptyString(arg2, arg0, "unlockProgressAndTarget")
		return (not registerVal3)
	end

	registerVal22.condition = __FUNC_5992_
	registerVal18 = {registerVal19, registerVal20, registerVal21, registerVal22}
	registerVal15:mergeStateConditions(registerVal18)
	local function __FUNC_5A21_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		registerVal1:updateElementState(registerVal15, registerVal4)
	end

	registerVal15:linkToElementModel(registerVal15, "itemIndex", true, __FUNC_5A21_)
	local function __FUNC_5B3F_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "weaponOptionTypeName"
		registerVal1:updateElementState(registerVal15, registerVal4)
	end

	registerVal15:linkToElementModel(registerVal15, "weaponOptionTypeName", true, __FUNC_5B3F_)
	local function __FUNC_5C66_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "unlockProgressAndTarget"
		registerVal1:updateElementState(registerVal15, registerVal4)
	end

	registerVal15:linkToElementModel(registerVal15, "unlockProgressAndTarget", true, __FUNC_5C66_)
	registerVal1:addElement(registerVal15)
	registerVal1.progressionInfo = registerVal15
	registerVal16 = CoD.CryptokeyTypeNameLeft.new(registerVal1, arg0)
	registerVal16:setLeftRight(true, false, 439.000000, 550.000000)
	registerVal16:setTopBottom(false, true, -101.000000, -79.000000)
	registerVal19 = {}
	registerVal20 = {}
	registerVal20.stateName = "Visible"
	local function __FUNC_5D91_(arg1, arg2, arg3)
		local registerVal3 = AlwaysTrue()
		if registerVal3 then
			registerVal3 = IsSelfModelValueTrue(arg2, arg0, "isBMClassified")
			if not registerVal3 then
				registerVal3 = IsSelfModelValueNonEmptyString(arg2, arg0, "rarity")
			else
			end
		end
		return true
	end

	registerVal20.condition = __FUNC_5D91_
	registerVal19 = {registerVal20}
	registerVal16:mergeStateConditions(registerVal19)
	local function __FUNC_5E8E_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		registerVal1:updateElementState(registerVal16, registerVal4)
	end

	registerVal16:linkToElementModel(registerVal16, "isBMClassified", true, __FUNC_5E8E_)
	local function __FUNC_5FB0_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "rarity"
		registerVal1:updateElementState(registerVal16, registerVal4)
	end

	registerVal16:linkToElementModel(registerVal16, "rarity", true, __FUNC_5FB0_)
	registerVal1:addElement(registerVal16)
	registerVal1.CryptokeyTypeNameLeft = registerVal16
	local registerVal17 = CoD.ModeIconName.new(registerVal1, arg0)
	registerVal17:setLeftRight(true, false, 891.000000, 1181.000000)
	registerVal17:setTopBottom(false, true, -162.000000, -111.000000)
	registerVal1:addElement(registerVal17)
	registerVal1.ModeIconName = registerVal17
	registerVal18 = CoD.XCamMouseControl.new(registerVal1, arg0)
	registerVal18:setLeftRight(false, true, -772.000000, 0.000000)
	registerVal18:setTopBottom(true, true, 223.500000, -197.500000)
	registerVal1:addElement(registerVal18)
	registerVal1.XCamMouseControl = registerVal18
	registerVal19 = CoD.cac_LockBig.new(registerVal1, arg0)
	registerVal19:setLeftRight(false, false, 159.000000, 255.000000)
	registerVal19:setTopBottom(true, false, 14.000000, 684.000000)
	registerVal22 = {}
	local registerVal23 = {}
	registerVal23.stateName = "Locked"
	local function __FUNC_60CC_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal23.condition = __FUNC_60CC_
	local registerVal24 = {}
	registerVal24.stateName = "NotAvailable"
	local function __FUNC_6119_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal24.condition = __FUNC_6119_
	registerVal22 = {registerVal23, registerVal24}
	registerVal19:mergeStateConditions(registerVal22)
	local function __FUNC_6165_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		registerVal1:updateElementState(registerVal19, registerVal4)
	end

	registerVal19:linkToElementModel(registerVal19, "isBMClassified", true, __FUNC_6165_)
	registerVal1:addElement(registerVal19)
	registerVal1.LockIcon = registerVal19
	local function __FUNC_6288_(arg1)
		registerVal10:setModel(arg1, arg0)
	end

	registerVal10:linkToElementModel(registerVal5, nil, false, __FUNC_6288_)
	local function __FUNC_62DA_(arg1)
		registerVal11:setModel(arg1, arg0)
	end

	registerVal11:linkToElementModel(registerVal5, nil, false, __FUNC_62DA_)
	local function __FUNC_632A_(arg1)
		registerVal12:setModel(arg1, arg0)
	end

	registerVal12:linkToElementModel(registerVal5, nil, false, __FUNC_632A_)
	local function __FUNC_637A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.weaponNameLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal12:linkToElementModel(registerVal5, "name", true, __FUNC_637A_)
	local function __FUNC_6457_(arg1)
		registerVal15:setModel(arg1, arg0)
	end

	registerVal15:linkToElementModel(registerVal5, nil, false, __FUNC_6457_)
	local function __FUNC_64A6_(arg1)
		registerVal16:setModel(arg1, arg0)
	end

	registerVal16:linkToElementModel(registerVal5, "rarityType", false, __FUNC_64A6_)
	local function __FUNC_64F6_(arg1)
		registerVal17:setModel(arg1, arg0)
	end

	registerVal17:linkToElementModel(registerVal5, nil, false, __FUNC_64F6_)
	local function __FUNC_6546_(arg1)
		registerVal19:setModel(arg1, arg0)
	end

	registerVal19:linkToElementModel(registerVal5, nil, false, __FUNC_6546_)
	local function __FUNC_6596_(arg0, arg1)
		ShowHeaderKickerAndIcon(registerVal1)
		SetHeadingKickerText("MENU_PLAY_LOCAL")
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_6596_)
	local function __FUNC_6671_(arg0, arg1)
		local registerVal3 = IsLAN()
		if not registerVal3 then
			SetHeadingKickerText("MPUI_PUBLIC_MATCH_LOBBY")
		end
		if not nil then
			registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_opened", __FUNC_6671_)
	local function __FUNC_6747_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		ClearMenuSavedState(arg1)
		SetPerControllerTableProperty(arg2, "customizationType", nil)
		return true
	end

	local function __FUNC_6817_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_6747_, __FUNC_6817_, false)
	local function __FUNC_6911_(arg0, arg1, arg2, arg3)
		local registerVal4 = CACShowRotatePrompt(registerVal1, arg0, arg2)
		if registerVal4 then
			return true
		end
	end

	local function __FUNC_697D_(arg0, arg1, arg2)
		local registerVal3 = CACShowRotatePrompt(registerVal1, arg0, arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "PLATFORM_EMBLEM_ROTATE_LAYER")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, nil, __FUNC_6911_, __FUNC_697D_, false)
	registerVal5.id = "selectionList"
	registerVal13:setModel(registerVal1.buttonModel, arg0)
	registerVal22 = {}
	registerVal22.name = "menu_loaded"
	registerVal22.controller = arg0
	registerVal1:processEvent(registerVal22)
	registerVal22 = {}
	registerVal22.name = "update_state"
	registerVal22.menu = registerVal1
	registerVal1:processEvent(registerVal22)
	registerVal20 = registerVal1:restoreState()
	if not registerVal20 then
		registerVal22 = {}
		registerVal22.name = "gain_focus"
		registerVal22.controller = arg0
		registerVal1.selectionList:processEvent(registerVal22)
	end
	local function __FUNC_6ACF_(arg1)
		arg1.LeftPanel:close()
		arg1.GridItemButtonBackdropContainer3x4:close()
		arg1.selectionList:close()
		arg1.GridItemButtonBackdropSymbols:close()
		arg1.cac3dTitleIntermediary0:close()
		arg1.ElemsSideList:close()
		arg1.itemDescription:close()
		arg1.limitedEditionCamoDescription:close()
		arg1.WeaponNameWidget0:close()
		arg1.MenuFrame:close()
		arg1.categoryTabs:close()
		arg1.progressionInfo:close()
		arg1.CryptokeyTypeNameLeft:close()
		arg1.ModeIconName:close()
		arg1.XCamMouseControl:close()
		arg1.LockIcon:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "GunsmithCamoSelect.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_6ACF_)
	if __FUNC_C71_ then
		__FUNC_C71_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.GunsmithCamoSelect = __FUNC_1A07_
