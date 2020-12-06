-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.CAC.GridItemButtonBackdropContainer3x4")
require("ui.uieditor.widgets.CAC.Customization.CustomizationItem_ND")
require("ui.uieditor.widgets.CAC.GridItemButtonBackdropSymbols")
require("ui.uieditor.widgets.CAC.cac_ElemsSideList")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.WeaponNameWidget")
require("ui.uieditor.widgets.CAC.BlackMarketItemDescription")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.Lobby.Common.FE_TabBar")
require("ui.uieditor.widgets.TabbedWidgets.WeaponGroupsTabWidget")
require("ui.uieditor.widgets.CAC.Customization.ChallengeProgressionInfo")
require("ui.uieditor.widgets.BlackMarket.CryptokeyTypeNameLeft")
require("ui.uieditor.widgets.CAC.ModeIconName")
require("ui.uieditor.widgets.PC.Utility.XCamMouseControl")
local function __FUNC_5A4_(arg0, arg1)
	CoD.perController[arg1].customizationType = Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_RETICLE
	arg0:setModel(CoD.perController[arg1].gunsmithReticleIndexModel)
end

local function __FUNC_702_(arg0, arg1, arg2)
	if arg0.selectionList and arg1.filterString then
		DataSources.GunsmithWeaponOptions.setCurrentFilterItem(("reticle" .. "_" .. arg1.filterString))
		arg0.selectionList:updateDataSource()
		local registerVal4 = arg0.selectionList:getItemAt(1.000000)
		arg0.selectionList:setActiveItem(registerVal4)
	end
end

local function __FUNC_8BC_(arg0, arg1)
	arg0.tabChanged = __FUNC_702_
	local registerVal3 = Engine.GetModel(CoD.perController[arg1].gunsmithVariantModel, "attachment1")
	if CoD.perController[arg1].gunsmithVariantModel and registerVal3 then
		local registerVal4 = Engine.GetModelValue(registerVal3)
		local registerVal5 = Engine.GetAttachmentRefByIndex(registerVal4)
		local registerVal6 = CoD.GetCustomization(arg1, "weapon_index")
		CoD.GunsmithWeaponOptionsTable = {}
		CoD.GetWeaponOptionsTableForCategory(arg1, CoD.GunsmithWeaponOptionsTable, Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_RETICLE, registerVal6, registerVal4, true)
		local registerVal7, registerVal8, registerVal9 = ipairs(CoD.GunsmithWeaponOptionsTable.reticle)
		for index10,value11 in registerVal7, registerVal8, registerVal9 do
			local registerVal12 = Engine.GetModelValue(Engine.GetModel(value11, "weaponOptionSubIndex"))
			local registerVal13 = Engine.GetModel(value11, "name")
			local registerVal14 = Engine.GetModel(value11, "image")
			local registerVal15 = Engine.GetModel(value11, "isBMClassified")
			local registerVal16 = Engine.GetModelValue(registerVal15)
			if registerVal15 and not registerVal16 then
				Engine.SetModelValue(registerVal13, ("MPUI_RETICLE_" .. registerVal5 .. "_" .. registerVal12))
				Engine.SetModelValue(registerVal14, (registerVal5 .. "_" .. registerVal12))
			end
		end
		registerVal7 = Engine.CurrentSessionMode()
		if registerVal7 == Enum.eModes.MODE_INVALID then
		end
		registerVal9 = CoD.WeaponOptionFilterToString(Enum.eModes.MODE_MULTIPLAYER)
		registerVal13 = {}
		registerVal13.filterEnum = Enum.eModes.MODE_MULTIPLAYER
		local registerVal10 = arg0.categoryTabs.Tabs.grid:findItem(nil, registerVal13, false, nil)
		if registerVal10 then
			arg0.categoryTabs.Tabs.grid:setActiveItem(registerVal10)
		else
			local registerVal11 = arg0.categoryTabs.Tabs.grid:getItemAt(2.000000)
			arg0.categoryTabs.Tabs.grid:setActiveItem(registerVal11)
			registerVal12 = CoD.WeaponOptionFilterToString(registerVal11.filterEnum)
		end
		for index11=Enum.WeaponOptionFilter.WEAPONOPTION_FILTER_FIRST, (Enum.WeaponOptionFilter.WEAPONOPTION_FILTER_COUNT - 1.000000), 1.000000 do
			local registerVal18 = {}
			registerVal18.filterEnum = index11
			registerVal15 = arg0.categoryTabs.Tabs.grid:findItem(nil, registerVal18, false, nil)
			if registerVal15 then
				if registerVal5 ~= "ir" or index11 ~= Enum.WeaponOptionFilter.WEAPONOPTION_FILTER_EXTRAS then
					registerVal16 = registerVal15:getModel(arg1, "breadcrumbCount")
					local registerVal17 = CoD.CACUtility.GetWeaponOptionTypeForName("reticle")
					if registerVal16 then
						if index11 < Enum.WeaponOptionFilter.WEAPONOPTION_FILTER_MODE_COUNT then
							local registerVal19 = Engine.WeaponOptionNewItemCount(arg1, registerVal4, registerVal17, registerVal15.filterEnum)
						else
							registerVal19 = Engine.WeaponOptionNewModeAgnosticItemCount(arg1, registerVal4, registerVal17, registerVal15.filterEnum)
						end
						Engine.SetModelValue(registerVal16, registerVal19)
					end
				end
			end
		end
		DataSources.GunsmithWeaponOptions.setCurrentFilterItem(("reticle" .. "_" .. registerVal12))
	end
end

local function __FUNC_136E_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("GunsmithReticleSelect")
	if __FUNC_5A4_ then
		__FUNC_5A4_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "GunsmithReticleSelect.buttonPrompts")
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
	registerVal5:setDataSource("GunsmithWeaponOptions")
	local function __FUNC_2E57_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "itemIndex"
		CoD.Menu.UpdateButtonShownState(registerVal5, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal5:linkToElementModel(registerVal5, "itemIndex", true, __FUNC_2E57_)
	local function __FUNC_3012_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isBMClassified"
		CoD.Menu.UpdateButtonShownState(registerVal5, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal5:linkToElementModel(registerVal5, "isBMClassified", true, __FUNC_3012_)
	local function __FUNC_31D3_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isChallengeClassified"
		CoD.Menu.UpdateButtonShownState(registerVal5, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal5:linkToElementModel(registerVal5, "isChallengeClassified", true, __FUNC_31D3_)
	local function __FUNC_339A_(arg1, arg2)
		local registerVal3 = Gunsmith_IsReticleNew(registerVal1, arg1, arg0)
		registerVal3 = IsSelfModelValueTrue(arg1, arg0, "isBMClassified")
		registerVal3 = IsSelfModelValueTrue(arg1, arg0, "isChallengeClassified")
		if registerVal3 and not registerVal3 and not registerVal3 then
			Gunsmith_SetWeaponOptionAsOld(registerVal1, arg1, arg0)
			UpdateSelfElementState(registerVal1, arg1, arg0)
			Gunsmith_FocusReticle(registerVal1, arg1, arg0)
		else
			Gunsmith_FocusReticle(registerVal1, arg1, arg0)
		end
		return nil
	end

	registerVal5:registerEventHandler("list_item_gain_focus", __FUNC_339A_)
	local function __FUNC_354E_(arg1, arg2)
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

	registerVal5:registerEventHandler("gain_focus", __FUNC_354E_)
	local function __FUNC_36DF_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_36DF_)
	local function __FUNC_37AE_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsGunsmithItemWeaponOptionLocked(arg1, arg0, arg2)
		registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
		registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isChallengeClassified")
		if not registerVal4 and not registerVal4 and not registerVal4 then
			Gunsmith_SelectReticle(registerVal1, arg0, arg2)
			GoBack(registerVal1, arg2)
			ClearMenuSavedState(arg1)
			return true
		end
	end

	local function __FUNC_3930_(arg0, arg1, arg2)
		local registerVal3 = IsGunsmithItemWeaponOptionLocked(arg1, arg0, arg2)
		registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
		registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isChallengeClassified")
		if not registerVal3 and not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal5, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_37AE_, __FUNC_3930_, false)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Equipped"
	local function __FUNC_3B09_(arg1, arg2, arg3)
		return Gunsmith_IsReticleEquipped(arg1, arg2, arg0)
	end

	registerVal9.condition = __FUNC_3B09_
	local registerVal10 = {}
	registerVal10.stateName = "New"
	local function __FUNC_3B70_(arg1, arg2, arg3)
		return Gunsmith_IsReticleNew(arg1, arg2, arg0)
	end

	registerVal10.condition = __FUNC_3B70_
	local registerVal11 = {}
	registerVal11.stateName = "Locked"
	local function __FUNC_3BD3_(arg1, arg2, arg3)
		return IsGunsmithItemWeaponOptionLocked(arg1, arg2, arg0)
	end

	registerVal11.condition = __FUNC_3BD3_
	registerVal8 = {registerVal9, registerVal10, registerVal11}
	registerVal5:mergeStateConditions(registerVal8)
	local function __FUNC_3C3E_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		registerVal1:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "isBMClassified", true, __FUNC_3C3E_)
	local function __FUNC_3D60_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isChallengeClassified"
		registerVal1:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "isChallengeClassified", true, __FUNC_3D60_)
	local function __FUNC_3E8B_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isPackage"
		registerVal1:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "isPackage", true, __FUNC_3E8B_)
	local function __FUNC_3FA7_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		registerVal1:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "itemIndex", true, __FUNC_3FA7_)
	registerVal1:addElement(registerVal5)
	registerVal1.selectionList = registerVal5
	local registerVal6 = CoD.GridItemButtonBackdropSymbols.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 98.000000, 1192.670000)
	registerVal6:setTopBottom(true, false, 144.500000, 601.500000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setZoom(-7.020000)
	registerVal1:addElement(registerVal6)
	registerVal1.GridItemButtonBackdropSymbols = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, -11.000000, 1293.000000)
	registerVal7:setTopBottom(true, false, 80.000000, 88.000000)
	registerVal7:setRGB(0.900000, 0.900000, 0.900000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal7)
	registerVal1.CategoryListLine0 = registerVal7
	registerVal8 = CoD.cac_ElemsSideList.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 4.130000, 72.000000)
	registerVal8:setTopBottom(true, false, -11.000000, 659.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.ElemsSideList = registerVal8
	registerVal9 = CoD.WeaponNameWidget.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 449.000000, 782.000000)
	registerVal9:setTopBottom(true, false, 137.000000, 171.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.WeaponNameWidget0 = registerVal9
	registerVal10 = CoD.BlackMarketItemDescription.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 447.000000, 831.000000)
	registerVal10:setTopBottom(true, false, 175.000000, 197.000000)
	registerVal10.weaponDescTextBox:setText(LocalizeIntoString("MPUI_BLACKMARKET_ITEM_CLASSIFIED_DESC", "MPUI_RETICLE"))
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "NotVisible"
	local function __FUNC_40C3_(arg1, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg0, "isBMClassified")
		return (not registerVal3)
	end

	registerVal14.condition = __FUNC_40C3_
	registerVal13 = {registerVal14}
	registerVal10:mergeStateConditions(registerVal13)
	local function __FUNC_413E_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		registerVal1:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:linkToElementModel(registerVal10, "isBMClassified", true, __FUNC_413E_)
	registerVal1:addElement(registerVal10)
	registerVal1.itemDescription = registerVal10
	registerVal11 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal11:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal11.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_gunsmith"))
	local function __FUNC_4260_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal11.titleLabel:setText(LocalizeWeaponNameIntoString("MENU_GUNSMITH_RETICLE_SELECT_TITLE", "mp", arg0, registerVal1))
		end
	end

	registerVal11:subscribeToGlobalModel(arg0, "Customization", "weapon_index", __FUNC_4260_)
	local function __FUNC_4386_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal11.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(LocalizeWeaponNameIntoString("MENU_GUNSMITH_RETICLE_SELECT_TITLE", "mp", arg0, registerVal1))
		end
	end

	registerVal11:subscribeToGlobalModel(arg0, "Customization", "weapon_index", __FUNC_4386_)
	registerVal1:addElement(registerVal11)
	registerVal1.MenuFrame = registerVal11
	local registerVal12 = CoD.FE_TabBar.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 0.000000, 2497.000000)
	registerVal12:setTopBottom(true, false, 85.000000, 126.000000)
	registerVal12.Tabs.grid:setWidgetType(CoD.WeaponGroupsTabWidget)
	registerVal12.Tabs.grid:setHorizontalCount(7.000000)
	registerVal12.Tabs.grid:setDataSource("CACCustomizationTabs")
	local function __FUNC_4539_(arg1, arg2)
		CallCustomElementFunction_Self(registerVal1, "tabChanged", arg1, arg0)
		return nil
	end

	registerVal12:registerEventHandler("list_active_changed", __FUNC_4539_)
	registerVal1:addElement(registerVal12)
	registerVal1.categoryTabs = registerVal12
	registerVal13 = CoD.ChallengeProgressionInfo.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 439.000000, 859.000000)
	registerVal13:setTopBottom(false, true, -162.000000, -78.000000)
	registerVal13.requirementTitle:setText(Engine.Localize("MENU_RETICLE_REQUIREMENTS"))
	registerVal13.completedTitle:setText(Engine.Localize("MENU_RETICLE_COMPLETE"))
	local registerVal16 = {}
	local registerVal17 = {}
	registerVal17.stateName = "NotVisible"
	local function __FUNC_45C0_(arg1, arg2, arg3)
		return ShouldHideItemWeaponOptionInGunsmith(arg2, arg0)
	end

	registerVal17.condition = __FUNC_45C0_
	local registerVal18 = {}
	registerVal18.stateName = "bmComtracts"
	local function __FUNC_462E_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal18.condition = __FUNC_462E_
	local registerVal19 = {}
	registerVal19.stateName = "Completed"
	local function __FUNC_4679_(arg1, arg2, arg3)
		local registerVal3 = IsGunsmithItemWeaponOptionLocked(arg1, arg2, arg0)
		return (not registerVal3)
	end

	registerVal19.condition = __FUNC_4679_
	local registerVal20 = {}
	registerVal20.stateName = "NotAvailable"
	local function __FUNC_46EA_(arg1, arg2, arg3)
		local registerVal3 = IsSelfModelValueNonEmptyString(arg2, arg0, "unlockProgressAndTarget")
		return (not registerVal3)
	end

	registerVal20.condition = __FUNC_46EA_
	registerVal16 = {registerVal17, registerVal18, registerVal19, registerVal20}
	registerVal13:mergeStateConditions(registerVal16)
	local function __FUNC_4779_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		registerVal1:updateElementState(registerVal13, registerVal4)
	end

	registerVal13:linkToElementModel(registerVal13, "itemIndex", true, __FUNC_4779_)
	local function __FUNC_4897_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "unlockProgressAndTarget"
		registerVal1:updateElementState(registerVal13, registerVal4)
	end

	registerVal13:linkToElementModel(registerVal13, "unlockProgressAndTarget", true, __FUNC_4897_)
	registerVal1:addElement(registerVal13)
	registerVal1.progressionInfo = registerVal13
	registerVal14 = CoD.CryptokeyTypeNameLeft.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 439.000000, 550.000000)
	registerVal14:setTopBottom(false, true, -101.000000, -79.000000)
	registerVal17 = {}
	registerVal18 = {}
	registerVal18.stateName = "Visible"
	local function __FUNC_49C1_(arg1, arg2, arg3)
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

	registerVal18.condition = __FUNC_49C1_
	registerVal17 = {registerVal18}
	registerVal14:mergeStateConditions(registerVal17)
	local function __FUNC_4ABE_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		registerVal1:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:linkToElementModel(registerVal14, "isBMClassified", true, __FUNC_4ABE_)
	local function __FUNC_4BE0_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "rarity"
		registerVal1:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:linkToElementModel(registerVal14, "rarity", true, __FUNC_4BE0_)
	registerVal1:addElement(registerVal14)
	registerVal1.CryptokeyTypeNameLeft = registerVal14
	local registerVal15 = CoD.ModeIconName.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, false, 891.000000, 1181.000000)
	registerVal15:setTopBottom(false, true, -162.000000, -111.000000)
	registerVal1:addElement(registerVal15)
	registerVal1.ModeIconName = registerVal15
	registerVal17 = IsPC()
	if registerVal17 then
		registerVal17 = CoD.XCamMouseControl.new(registerVal1, arg0)
	else
		registerVal17 = LUI.UIElement.createFake()
	end
	registerVal17:setLeftRight(true, false, 449.000000, 1216.000000)
	registerVal17:setTopBottom(true, false, 200.000000, 546.000000)
	registerVal17 = IsPC()
	if registerVal17 then
		registerVal1:addElement(registerVal17)
	end
	registerVal1.XCamMouseControl = registerVal17
	local function __FUNC_4CFC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.weaponNameLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal5, "name", true, __FUNC_4CFC_)
	local function __FUNC_4DDB_(arg1)
		registerVal10:setModel(arg1, arg0)
	end

	registerVal10:linkToElementModel(registerVal5, nil, false, __FUNC_4DDB_)
	local function __FUNC_4E2A_(arg1)
		registerVal13:setModel(arg1, arg0)
	end

	registerVal13:linkToElementModel(registerVal5, nil, false, __FUNC_4E2A_)
	local function __FUNC_4E7A_(arg1)
		registerVal14:setModel(arg1, arg0)
	end

	registerVal14:linkToElementModel(registerVal5, "rarityType", false, __FUNC_4E7A_)
	local function __FUNC_4ECA_(arg1)
		registerVal15:setModel(arg1, arg0)
	end

	registerVal15:linkToElementModel(registerVal5, nil, false, __FUNC_4ECA_)
	local function __FUNC_4F1A_(arg0, arg1)
		ShowHeaderKickerAndIcon(registerVal1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_4F1A_)
	local function __FUNC_4FB2_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		ClearMenuSavedState(arg1)
		SetPerControllerTableProperty(arg2, "customizationType", nil)
		return true
	end

	local function __FUNC_5083_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_4FB2_, __FUNC_5083_, false)
	local function __FUNC_517D_(arg0, arg1, arg2, arg3)
		local registerVal4 = CACShowRotatePrompt(registerVal1, arg0, arg2)
		if registerVal4 then
			return true
		end
	end

	local function __FUNC_51E9_(arg0, arg1, arg2)
		local registerVal3 = CACShowRotatePrompt(registerVal1, arg0, arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "PLATFORM_EMBLEM_ROTATE_LAYER")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, nil, __FUNC_517D_, __FUNC_51E9_, false)
	registerVal5.id = "selectionList"
	registerVal11:setModel(registerVal1.buttonModel, arg0)
	registerVal19 = {}
	registerVal19.name = "menu_loaded"
	registerVal19.controller = arg0
	registerVal1:processEvent(registerVal19)
	registerVal19 = {}
	registerVal19.name = "update_state"
	registerVal19.menu = registerVal1
	registerVal1:processEvent(registerVal19)
	registerVal17 = registerVal1:restoreState()
	if not registerVal17 then
		registerVal19 = {}
		registerVal19.name = "gain_focus"
		registerVal19.controller = arg0
		registerVal1.selectionList:processEvent(registerVal19)
	end
	local function __FUNC_533B_(arg1)
		arg1.LeftPanel:close()
		arg1.GridItemButtonBackdropContainer3x4:close()
		arg1.selectionList:close()
		arg1.GridItemButtonBackdropSymbols:close()
		arg1.ElemsSideList:close()
		arg1.WeaponNameWidget0:close()
		arg1.itemDescription:close()
		arg1.MenuFrame:close()
		arg1.categoryTabs:close()
		arg1.progressionInfo:close()
		arg1.CryptokeyTypeNameLeft:close()
		arg1.ModeIconName:close()
		arg1.XCamMouseControl:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "GunsmithReticleSelect.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_533B_)
	if __FUNC_8BC_ then
		__FUNC_8BC_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.GunsmithReticleSelect = __FUNC_136E_
