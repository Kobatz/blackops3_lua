-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.CAC.Customization.CustomizationItem_ND")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.Pregame.Pregame_TimerOverlay")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.InfoPaneItemNameLabel")
require("ui.uieditor.widgets.CAC.BlackMarketItemDescription")
require("ui.uieditor.widgets.Lobby.Common.FE_TabBar")
require("ui.uieditor.widgets.TabbedWidgets.WeaponGroupsTabWidget")
require("ui.uieditor.widgets.CAC.Customization.ChallengeProgressionInfo")
require("ui.uieditor.widgets.CAC.ModeIconName")
require("ui.uieditor.widgets.BlackMarket.CryptokeyTypeNameLeft")
require("ui.uieditor.widgets.PC.Utility.XCamMouseControl")
local function __FUNC_5A7_(arg0, arg1)
	CoD.perController[arg1].customizationType = Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_RETICLE
	local registerVal2 = IsCampaign()
	if registerVal2 then
		arg0.disableBlur = true
	end
end

local function __FUNC_6D8_(arg0, arg1, arg2)
	if arg1.filterString then
		DataSources.WeaponOptions.setCurrentFilterItem(("reticle" .. "_" .. arg1.filterString))
		arg0.selectionList:updateDataSource()
		local registerVal6 = {}
		registerVal6.weaponOptionSubIndex = 0.000000
		arg0.selectionList:findItem(registerVal6, nil, true, nil)
	end
end

local function __FUNC_876_(arg0, arg1)
	arg0.tabChanged = __FUNC_6D8_
	local registerVal3 = CoD.CACUtility.GetBaseWeaponLoadoutSlotName(CoD.perController[arg1].weaponCategory)
	local registerVal4 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg1].classModel, (registerVal3 .. ".itemIndex")))
	local registerVal5 = Engine.GetItemAttachment(registerVal4, CoD.perController[arg1].customReticleAttachmentIndex)
	CoD.WeaponOptionsTable = {}
	CoD.GetWeaponOptionsTableForCategory(arg1, CoD.WeaponOptionsTable, Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_RETICLE, registerVal4, registerVal5, true)
	local registerVal7, registerVal8, registerVal9 = ipairs(CoD.WeaponOptionsTable.reticle)
	for index10,value11 in registerVal7, registerVal8, registerVal9 do
		local registerVal12 = Engine.GetModelValue(Engine.GetModel(value11, "weaponOptionSubIndex"))
		local registerVal13 = Engine.GetModel(value11, "name")
		local registerVal14 = Engine.GetModel(value11, "image")
		local registerVal15 = Engine.GetModel(value11, "isBMClassified")
		local registerVal16 = Engine.GetModelValue(registerVal15)
		if registerVal15 and not registerVal16 then
			Engine.SetModelValue(registerVal13, ("MPUI_RETICLE_" .. CoD.perController[arg1].customReticleAttachment .. "_" .. registerVal12))
			Engine.SetModelValue(registerVal14, (CoD.perController[arg1].customReticleAttachment .. "_" .. registerVal12))
		end
	end
	registerVal7 = Engine.CurrentSessionMode()
	if registerVal7 == Enum.eModes.MODE_INVALID then
	end
	local registerVal11 = CoD.WeaponOptionFilterToString(Enum.eModes.MODE_CAMPAIGN)
	registerVal13 = {}
	registerVal13.filterEnum = Enum.eModes.MODE_CAMPAIGN
	local registerVal10 = arg0.categoryTabs.Tabs.grid:findItem(nil, registerVal13, false, nil)
	arg0.categoryTabs.Tabs.grid:setActiveItem(registerVal10)
	for index11=Enum.WeaponOptionFilter.WEAPONOPTION_FILTER_FIRST, (Enum.WeaponOptionFilter.WEAPONOPTION_FILTER_COUNT - 1.000000), 1.000000 do
		local registerVal18 = {}
		registerVal18.filterEnum = index11
		registerVal15 = arg0.categoryTabs.Tabs.grid:findItem(nil, registerVal18, false, nil)
		if registerVal15 then
			if CoD.perController[arg1].customReticleAttachment ~= "ir" or index11 ~= Enum.WeaponOptionFilter.WEAPONOPTION_FILTER_EXTRAS then
				registerVal16 = registerVal15:getModel(arg1, "breadcrumbCount")
				local registerVal17 = CoD.CACUtility.GetWeaponOptionTypeForName("reticle")
				if registerVal16 then
					if index11 < Enum.WeaponOptionFilter.WEAPONOPTION_FILTER_MODE_COUNT then
						local registerVal19 = Engine.WeaponOptionNewItemCount(arg1, registerVal5, registerVal17, registerVal15.filterEnum)
					else
						registerVal19 = Engine.WeaponOptionNewModeAgnosticItemCount(arg1, registerVal5, registerVal17, registerVal15.filterEnum)
					end
					Engine.SetModelValue(registerVal16, registerVal19)
				end
			end
		end
	end
	DataSources.WeaponOptions.setCurrentFilterItem(("reticle" .. "_" .. registerVal11))
	DataSources.WeaponOptions.setCurrentFilterItemNoMode("reticle")
end

local function __FUNC_1363_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("ReticleSelect")
	if __FUNC_5A7_ then
		__FUNC_5A7_(registerVal1, arg0)
	end
	registerVal1.soundSet = "CAC_PrimaryAttachment"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "ReticleSelect.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 64.000000, 427.000000)
	registerVal3:setTopBottom(true, false, 126.000000, 720.000000)
	registerVal3:setRGB(0.500000, 0.500000, 0.500000)
	registerVal1:addElement(registerVal3)
	registerVal1.LeftPanel = registerVal3
	local registerVal4 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal4:setTopBottom(true, false, 86.000000, 703.250000)
	registerVal1:addElement(registerVal4)
	registerVal1.FEMenuLeftGraphics = registerVal4
	local registerVal5 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5.titleLabel:setText(Engine.Localize(""))
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(GetReticlesMenuTitle(arg0, "MENU_X_OPTICS"))
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_cac"))
	registerVal1:addElement(registerVal5)
	registerVal1.GenericMenuFrame0 = registerVal5
	local registerVal6 = LUI.UIList.new(registerVal1, arg0, 8.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, false, 77.000000, 417.000000)
	registerVal6:setTopBottom(true, false, 136.000000, 592.000000)
	registerVal6:setWidgetType(CoD.CustomizationItem_ND)
	registerVal6:setHorizontalCount(3.000000)
	registerVal6:setVerticalCount(4.000000)
	registerVal6:setSpacing(8.000000)
	registerVal6:setVerticalCounter(CoD.verticalCounter)
	registerVal6:setDataSource("WeaponOptions")
	local function __FUNC_2C64_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "itemIndex"
		CoD.Menu.UpdateButtonShownState(registerVal6, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal6:linkToElementModel(registerVal6, "itemIndex", true, __FUNC_2C64_)
	local function __FUNC_2E22_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isBMClassified"
		CoD.Menu.UpdateButtonShownState(registerVal6, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal6:linkToElementModel(registerVal6, "isBMClassified", true, __FUNC_2E22_)
	local function __FUNC_2FE3_(arg1, arg2)
		local registerVal3 = IsItemWeaponOptionNew(arg1, arg0)
		if registerVal3 then
			SetWeaponOptionAsOld(registerVal1, arg1, arg0)
			UpdateSelfElementState(registerVal1, arg1, arg0)
		end
		return nil
	end

	registerVal6:registerEventHandler("list_item_gain_focus", __FUNC_2FE3_)
	local function __FUNC_30B1_(arg1, arg2)
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

	registerVal6:registerEventHandler("gain_focus", __FUNC_30B1_)
	local function __FUNC_3243_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_3243_)
	local function __FUNC_3312_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsItemWeaponOptionLocked(arg1, arg0, arg2)
		registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
		if not registerVal4 and not registerVal4 then
			SetWeaponOptionClassItem(registerVal1, arg0, arg2)
			GoBack(registerVal1, arg2)
			return true
		end
	end

	local function __FUNC_342A_(arg0, arg1, arg2)
		local registerVal3 = IsItemWeaponOptionLocked(arg1, arg0, arg2)
		registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
		if not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal6, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_3312_, __FUNC_342A_, false)
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Equipped"
	local function __FUNC_35BE_(arg1, arg2, arg3)
		return IsItemWeaponOptionEquipped(arg2, arg0)
	end

	registerVal10.condition = __FUNC_35BE_
	local registerVal11 = {}
	registerVal11.stateName = "New"
	local function __FUNC_3620_(arg1, arg2, arg3)
		return IsItemWeaponOptionNew(arg2, arg0)
	end

	registerVal11.condition = __FUNC_3620_
	local registerVal12 = {}
	registerVal12.stateName = "Locked"
	local function __FUNC_367F_(arg1, arg2, arg3)
		return IsItemWeaponOptionLocked(arg1, arg2, arg0)
	end

	registerVal12.condition = __FUNC_367F_
	registerVal9 = {registerVal10, registerVal11, registerVal12}
	registerVal6:mergeStateConditions(registerVal9)
	local function __FUNC_36E2_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		registerVal1:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:linkToElementModel(registerVal6, "isBMClassified", true, __FUNC_36E2_)
	local function __FUNC_3804_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isChallengeClassified"
		registerVal1:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:linkToElementModel(registerVal6, "isChallengeClassified", true, __FUNC_3804_)
	local function __FUNC_392F_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isPackage"
		registerVal1:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:linkToElementModel(registerVal6, "isPackage", true, __FUNC_392F_)
	local function __FUNC_3A4B_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		registerVal1:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:linkToElementModel(registerVal6, "itemIndex", true, __FUNC_3A4B_)
	registerVal1:addElement(registerVal6)
	registerVal1.selectionList = registerVal6
	local registerVal7 = CoD.Pregame_TimerOverlay.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal10 = {}
	registerVal11 = {}
	registerVal11.stateName = "AttachmentSelect"
	local function __FUNC_3B67_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal11.condition = __FUNC_3B67_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetGlobalModel()
	registerVal10 = Engine.GetModel(registerVal11, "lobbyRoot.Pregame.state")
	local function __FUNC_3BB0_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.state"
		registerVal1:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:subscribeToModel(registerVal10, __FUNC_3BB0_)
	registerVal1:addElement(registerVal7)
	registerVal1.PregameTimerOverlay = registerVal7
	local registerVal8 = CoD.InfoPaneItemNameLabel.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 439.000000, 839.000000)
	registerVal8:setTopBottom(true, false, 136.000000, 170.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.categoryName = registerVal8
	registerVal9 = CoD.BlackMarketItemDescription.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 439.000000, 823.000000)
	registerVal9:setTopBottom(true, false, 174.000000, 196.000000)
	registerVal9.weaponDescTextBox:setText(LocalizeIntoString("MPUI_BLACKMARKET_ITEM_CLASSIFIED_DESC", "MPUI_RETICLE"))
	registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "NotVisible"
	local function __FUNC_3CDD_(arg1, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg0, "isBMClassified")
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_3CDD_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	local function __FUNC_3D5A_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		registerVal1:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:linkToElementModel(registerVal9, "isBMClassified", true, __FUNC_3D5A_)
	registerVal1:addElement(registerVal9)
	registerVal1.itemDescription = registerVal9
	registerVal10 = CoD.FE_TabBar.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 0.000000, 2497.000000)
	registerVal10:setTopBottom(true, false, 85.000000, 126.000000)
	registerVal10.Tabs.grid:setWidgetType(CoD.WeaponGroupsTabWidget)
	registerVal10.Tabs.grid:setHorizontalCount(8.000000)
	registerVal10.Tabs.grid:setDataSource("CACCustomizationTabs")
	local function __FUNC_3E7C_(arg1, arg2)
		CallCustomElementFunction_Self(registerVal1, "tabChanged", arg1, arg0)
		return nil
	end

	registerVal10:registerEventHandler("list_active_changed", __FUNC_3E7C_)
	registerVal1:addElement(registerVal10)
	registerVal1.categoryTabs = registerVal10
	registerVal11 = CoD.ChallengeProgressionInfo.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 439.000000, 859.000000)
	registerVal11:setTopBottom(false, true, -162.000000, -78.000000)
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "NotVisible"
	local function __FUNC_3F04_(arg1, arg2, arg3)
		return ShouldHideItemWeaponOption(arg2, arg0)
	end

	registerVal15.condition = __FUNC_3F04_
	local registerVal16 = {}
	registerVal16.stateName = "bmComtracts"
	local function __FUNC_3F68_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal16.condition = __FUNC_3F68_
	local registerVal17 = {}
	registerVal17.stateName = "Completed"
	local function __FUNC_3FB5_(arg1, arg2, arg3)
		local registerVal3 = IsItemWeaponOptionLocked(arg1, arg2, arg0)
		return (not registerVal3)
	end

	registerVal17.condition = __FUNC_3FB5_
	local registerVal18 = {}
	registerVal18.stateName = "NotAvailable"
	local function __FUNC_401E_(arg1, arg2, arg3)
		local registerVal3 = IsSelfModelValueNonEmptyString(arg2, arg0, "unlockProgressAndTarget")
		return (not registerVal3)
	end

	registerVal18.condition = __FUNC_401E_
	registerVal14 = {registerVal15, registerVal16, registerVal17, registerVal18}
	registerVal11:mergeStateConditions(registerVal14)
	local function __FUNC_40AD_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		registerVal1:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:linkToElementModel(registerVal11, "itemIndex", true, __FUNC_40AD_)
	local function __FUNC_41CB_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "unlockProgressAndTarget"
		registerVal1:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:linkToElementModel(registerVal11, "unlockProgressAndTarget", true, __FUNC_41CB_)
	registerVal1:addElement(registerVal11)
	registerVal1.progressionInfo = registerVal11
	registerVal12 = CoD.ModeIconName.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 891.000000, 1181.000000)
	registerVal12:setTopBottom(false, true, -162.000000, -111.000000)
	registerVal1:addElement(registerVal12)
	registerVal1.ModeIconName = registerVal12
	registerVal13 = CoD.CryptokeyTypeNameLeft.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 439.000000, 550.000000)
	registerVal13:setTopBottom(false, true, -101.000000, -79.000000)
	registerVal16 = {}
	registerVal17 = {}
	registerVal17.stateName = "Visible"
	local function __FUNC_42F5_(arg1, arg2, arg3)
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

	registerVal17.condition = __FUNC_42F5_
	registerVal16 = {registerVal17}
	registerVal13:mergeStateConditions(registerVal16)
	local function __FUNC_43F2_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		registerVal1:updateElementState(registerVal13, registerVal4)
	end

	registerVal13:linkToElementModel(registerVal13, "isBMClassified", true, __FUNC_43F2_)
	local function __FUNC_4514_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "rarity"
		registerVal1:updateElementState(registerVal13, registerVal4)
	end

	registerVal13:linkToElementModel(registerVal13, "rarity", true, __FUNC_4514_)
	registerVal1:addElement(registerVal13)
	registerVal1.CryptokeyTypeNameLeft = registerVal13
	registerVal14 = CoD.XCamMouseControl.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 446.000000, 1216.000000)
	registerVal14:setTopBottom(true, false, 196.000000, 552.600000)
	registerVal1:addElement(registerVal14)
	registerVal1.XCamMouseControl = registerVal14
	local function __FUNC_4630_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal6, "name", true, __FUNC_4630_)
	local function __FUNC_4708_(arg1)
		registerVal9:setModel(arg1, arg0)
	end

	registerVal9:linkToElementModel(registerVal6, nil, false, __FUNC_4708_)
	local function __FUNC_475A_(arg1)
		registerVal11:setModel(arg1, arg0)
	end

	registerVal11:linkToElementModel(registerVal6, nil, false, __FUNC_475A_)
	local function __FUNC_47AA_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal11.requirementTitle:setText(Engine.Localize(GetWeaponOptionProgressTitle(arg0, registerVal1)))
		end
	end

	registerVal11:linkToElementModel(registerVal6, "weaponOptionType", true, __FUNC_47AA_)
	local function __FUNC_48BA_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal11.completedTitle:setText(Engine.Localize(GetWeaponOptionCompleteTitle(arg0, registerVal1)))
		end
	end

	registerVal11:linkToElementModel(registerVal6, "weaponOptionType", true, __FUNC_48BA_)
	local function __FUNC_49C8_(arg1)
		registerVal12:setModel(arg1, arg0)
	end

	registerVal12:linkToElementModel(registerVal6, nil, false, __FUNC_49C8_)
	local function __FUNC_4A1A_(arg1)
		registerVal13:setModel(arg1, arg0)
	end

	registerVal13:linkToElementModel(registerVal6, "rarityType", false, __FUNC_4A1A_)
	local function __FUNC_4A6A_(arg0, arg1)
		ShowHeaderKickerAndIcon(registerVal1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_4A6A_)
	local function __FUNC_4B02_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		PlaySoundSetSound(registerVal1, "menu_no_selection")
		SetPerControllerTableProperty(arg2, "customizationType", nil)
		return true
	end

	local function __FUNC_4BF0_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_4B02_, __FUNC_4BF0_, false)
	registerVal5:setModel(registerVal1.buttonModel, arg0)
	registerVal6.id = "selectionList"
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
		registerVal1.selectionList:processEvent(registerVal17)
	end
	local function __FUNC_4CED_(arg1)
		arg1.LeftPanel:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.GenericMenuFrame0:close()
		arg1.selectionList:close()
		arg1.PregameTimerOverlay:close()
		arg1.categoryName:close()
		arg1.itemDescription:close()
		arg1.categoryTabs:close()
		arg1.progressionInfo:close()
		arg1.ModeIconName:close()
		arg1.CryptokeyTypeNameLeft:close()
		arg1.XCamMouseControl:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "ReticleSelect.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_4CED_)
	if __FUNC_876_ then
		__FUNC_876_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.ReticleSelect = __FUNC_1363_
