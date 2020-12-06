-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.Customization.CustomizationItem_ND")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.InfoPaneItemNameLabel")
require("ui.uieditor.widgets.CAC.BlackMarketItemDescription")
require("ui.uieditor.widgets.CAC.cac_PrimaryWeaponDescription")
require("ui.uieditor.widgets.CAC.Customization.ChallengeProgressionInfo")
require("ui.uieditor.widgets.BlackMarket.CryptokeyTypeNameLeft")
require("ui.uieditor.widgets.CAC.ModeIconName")
require("ui.uieditor.widgets.CAC.cac_LockBig")
require("ui.uieditor.widgets.PC.Utility.XCamMouseControl")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.WeaponCustomizationSelect = registerVal1
function CoD.WeaponCustomizationSelect.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.WeaponCustomizationSelect)
	registerVal2.id = "WeaponCustomizationSelect"
	registerVal2.soundSet = "CAC_EditLoadout"
	registerVal2:setLeftRight(true, false, 0.000000, 901.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 505.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIList.new(arg0, arg1, 8.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 9.000000, 349.000000)
	registerVal3:setTopBottom(true, false, 11.000000, 467.000000)
	registerVal3:setWidgetType(CoD.CustomizationItem_ND)
	registerVal3:setHorizontalCount(3.000000)
	registerVal3:setVerticalCount(4.000000)
	registerVal3:setSpacing(8.000000)
	registerVal3:setVerticalCounter(CoD.verticalCounter)
	registerVal3:setDataSource("WeaponOptions")
	local function __FUNC_19FB_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isPackage"
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal3:linkToElementModel(registerVal3, "isPackage", true, __FUNC_19FB_)
	local function __FUNC_1BB6_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "itemIndex"
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal3:linkToElementModel(registerVal3, "itemIndex", true, __FUNC_1BB6_)
	local function __FUNC_1D72_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isBMClassified"
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal3:linkToElementModel(registerVal3, "isBMClassified", true, __FUNC_1D72_)
	local function __FUNC_1F33_(arg2, arg3)
		local registerVal3 = IsItemWeaponOptionNew(arg2, arg1)
		if registerVal3 then
			SetWeaponOptionAsOld(arg0, arg2, arg1)
			UpdateSelfElementState(arg0, arg2, arg1)
			WC_WeaponOptionGainFocus(registerVal2, arg2, arg1)
		else
			WC_WeaponOptionGainFocus(registerVal2, arg2, arg1)
		end
		return nil
	end

	registerVal3:registerEventHandler("list_item_gain_focus", __FUNC_1F33_)
	local function __FUNC_204F_(arg2, arg3)
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

	registerVal3:registerEventHandler("gain_focus", __FUNC_204F_)
	local function __FUNC_21DF_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_21DF_)
	local function __FUNC_22AE_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isPackage")
		if registerVal4 then
			OpenBuyInventoryItemDialog(registerVal2, arg0, arg2, "CamoCAC")
			return true
		else
			registerVal4 = IsItemWeaponOptionLocked(arg1, arg0, arg2)
			registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
			if not registerVal4 and not registerVal4 then
				WC_SelectingCustomization(registerVal2, arg0, arg2)
				SetWeaponOptionClassItem(registerVal2, arg0, arg2)
				PlaySoundAlias("cac_equipment_add_equipment")
				return true
			end
		end
	end

	local function __FUNC_24AE_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isPackage")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		else
			registerVal3 = IsItemWeaponOptionLocked(arg1, arg0, arg2)
			registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
			if not registerVal3 and not registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
				return true
			end
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_22AE_, __FUNC_24AE_, false)
	local function __FUNC_26C1_(arg0)
		UpdateDataSource(registerVal2, registerVal3, arg1)
	end

	registerVal3:subscribeToGlobalModel(arg1, "PerController", "StoreRoot.InventoryItemPurchaseSuccessful", __FUNC_26C1_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Equipped"
	local function __FUNC_271E_(arg0, arg2, arg3)
		return IsItemWeaponOptionEquipped(arg2, arg1)
	end

	registerVal7.condition = __FUNC_271E_
	local registerVal8 = {}
	registerVal8.stateName = "New"
	local function __FUNC_2780_(arg0, arg2, arg3)
		return IsItemWeaponOptionNew(arg2, arg1)
	end

	registerVal8.condition = __FUNC_2780_
	local registerVal9 = {}
	registerVal9.stateName = "bmContracts"
	local function __FUNC_27DF_(arg0, arg2, arg3)
		local registerVal3 = IsItemWeaponOptionLocked(arg0, arg2, arg1)
		if registerVal3 then
			registerVal3 = IsSpecialContractCamo(arg2, arg1)
		end
		return registerVal3
	end

	registerVal9.condition = __FUNC_27DF_
	local registerVal10 = {}
	registerVal10.stateName = "Locked"
	local function __FUNC_2879_(arg0, arg2, arg3)
		return IsItemWeaponOptionLocked(arg0, arg2, arg1)
	end

	registerVal10.condition = __FUNC_2879_
	registerVal6 = {registerVal7, registerVal8, registerVal9, registerVal10}
	registerVal3:mergeStateConditions(registerVal6)
	local function __FUNC_28DE_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:linkToElementModel(registerVal3, "isBMClassified", true, __FUNC_28DE_)
	local function __FUNC_2A00_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isChallengeClassified"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:linkToElementModel(registerVal3, "isChallengeClassified", true, __FUNC_2A00_)
	local function __FUNC_2B2B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isPackage"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:linkToElementModel(registerVal3, "isPackage", true, __FUNC_2B2B_)
	local function __FUNC_2C47_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:linkToElementModel(registerVal3, "itemIndex", true, __FUNC_2C47_)
	local function __FUNC_2D63_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "weaponOptionTypeName"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:linkToElementModel(registerVal3, "weaponOptionTypeName", true, __FUNC_2D63_)
	registerVal2:addElement(registerVal3)
	registerVal2.selectionList = registerVal3
	local registerVal4 = CoD.InfoPaneItemNameLabel.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 371.000000, 771.000000)
	registerVal4:setTopBottom(true, false, 11.000000, 45.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.categoryName = registerVal4
	local registerVal5 = CoD.BlackMarketItemDescription.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 371.000000, 755.000000)
	registerVal5:setTopBottom(true, false, 49.000000, 71.000000)
	registerVal5.weaponDescTextBox:setText(LocalizeIntoString("MPUI_BLACKMARKET_ITEM_CLASSIFIED_DESC", "MENU_CAMO"))
	registerVal8 = {}
	registerVal9 = {}
	registerVal9.stateName = "NotVisible"
	local function __FUNC_2E8A_(arg0, arg2, arg3)
		return ShouldHideClassifiedDescription(arg2, arg1)
	end

	registerVal9.condition = __FUNC_2E8A_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	local function __FUNC_2EF1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "ref"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "ref", true, __FUNC_2EF1_)
	registerVal2:addElement(registerVal5)
	registerVal2.itemDescription = registerVal5
	registerVal6 = CoD.BlackMarketItemDescription.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 371.000000, 755.000000)
	registerVal6:setTopBottom(true, false, 49.000000, 71.000000)
	registerVal6.weaponDescTextBox:setText(Engine.Localize("MPUI_LIMITED_CAMO_ITEM_CLASSIFIED_DESC"))
	registerVal9 = {}
	registerVal10 = {}
	registerVal10.stateName = "NotVisible"
	local function __FUNC_3009_(arg0, arg2, arg3)
		return ShouldHideClassifiedLimitedEditionCamoDescription(arg2, arg1)
	end

	registerVal10.condition = __FUNC_3009_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	local function __FUNC_3083_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "ref"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:linkToElementModel(registerVal6, "ref", true, __FUNC_3083_)
	registerVal2:addElement(registerVal6)
	registerVal2.limitedEditionCamoDescription = registerVal6
	registerVal7 = CoD.cac_PrimaryWeaponDescription.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 371.000000, 755.000000)
	registerVal7:setTopBottom(true, false, 49.000000, 71.000000)
	registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "NotVisible"
	local function __FUNC_3199_(arg0, arg2, arg3)
		local registerVal3 = IsWeaponPrestigeItem(arg2, arg1)
		return (not registerVal3)
	end

	registerVal11.condition = __FUNC_3199_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	local function __FUNC_31FA_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:linkToElementModel(registerVal7, "itemIndex", true, __FUNC_31FA_)
	registerVal2:addElement(registerVal7)
	registerVal2.prestigeDescription = registerVal7
	registerVal8 = CoD.ChallengeProgressionInfo.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 371.000000, 791.000000)
	registerVal8:setTopBottom(false, true, -72.000000, 12.000000)
	registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "NotVisible"
	local function __FUNC_3317_(arg0, arg2, arg3)
		return ShouldHideItemWeaponOption(arg2, arg1)
	end

	registerVal12.condition = __FUNC_3317_
	local registerVal13 = {}
	registerVal13.stateName = "bmComtracts"
	local function __FUNC_3378_(arg0, arg2, arg3)
		local registerVal3 = IsItemWeaponOptionLocked(arg0, arg2, arg1)
		if not registerVal3 then
			registerVal3 = IsSpecialContractCamo(arg2, arg1)
		else
		end
		return true
	end

	registerVal13.condition = __FUNC_3378_
	local registerVal14 = {}
	registerVal14.stateName = "Completed"
	local function __FUNC_3421_(arg0, arg2, arg3)
		local registerVal3 = IsItemWeaponOptionLocked(arg0, arg2, arg1)
		return (not registerVal3)
	end

	registerVal14.condition = __FUNC_3421_
	local registerVal15 = {}
	registerVal15.stateName = "NotAvailable"
	local function __FUNC_348A_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueNonEmptyString(arg2, arg1, "unlockProgressAndTarget")
		return (not registerVal3)
	end

	registerVal15.condition = __FUNC_348A_
	registerVal11 = {registerVal12, registerVal13, registerVal14, registerVal15}
	registerVal8:mergeStateConditions(registerVal11)
	local function __FUNC_3519_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:linkToElementModel(registerVal8, "itemIndex", true, __FUNC_3519_)
	local function __FUNC_3637_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "weaponOptionTypeName"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:linkToElementModel(registerVal8, "weaponOptionTypeName", true, __FUNC_3637_)
	local function __FUNC_375E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "unlockProgressAndTarget"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:linkToElementModel(registerVal8, "unlockProgressAndTarget", true, __FUNC_375E_)
	registerVal2:addElement(registerVal8)
	registerVal2.progressionInfo = registerVal8
	registerVal9 = CoD.CryptokeyTypeNameLeft.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 371.000000, 482.000000)
	registerVal9:setTopBottom(false, true, -11.000000, 12.000000)
	registerVal12 = {}
	registerVal13 = {}
	registerVal13.stateName = "Visible"
	local function __FUNC_3889_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "isBMClassified")
		if not registerVal3 then
			registerVal3 = IsSelfModelValueNonEmptyString(arg2, arg1, "rarity")
		else
		end
		return true
	end

	registerVal13.condition = __FUNC_3889_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	local function __FUNC_3962_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:linkToElementModel(registerVal9, "isBMClassified", true, __FUNC_3962_)
	local function __FUNC_3A84_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "rarity"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:linkToElementModel(registerVal9, "rarity", true, __FUNC_3A84_)
	registerVal2:addElement(registerVal9)
	registerVal2.CryptokeyTypeNameLeft = registerVal9
	registerVal10 = CoD.ModeIconName.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 823.000000, 1113.000000)
	registerVal10:setTopBottom(false, true, -72.000000, -21.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.ModeIconName = registerVal10
	registerVal11 = CoD.cac_LockBig.new(arg0, arg1)
	registerVal11:setLeftRight(false, false, 282.500000, 378.500000)
	registerVal11:setTopBottom(true, false, -111.500000, 558.500000)
	registerVal14 = {}
	registerVal15 = {}
	registerVal15.stateName = "Locked"
	local function __FUNC_3BA0_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal15.condition = __FUNC_3BA0_
	local registerVal16 = {}
	registerVal16.stateName = "NotAvailable"
	local function __FUNC_3BED_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal16.condition = __FUNC_3BED_
	registerVal14 = {registerVal15, registerVal16}
	registerVal11:mergeStateConditions(registerVal14)
	local function __FUNC_3C39_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		arg0:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:linkToElementModel(registerVal11, "isBMClassified", true, __FUNC_3C39_)
	registerVal2:addElement(registerVal11)
	registerVal2.LockIcon = registerVal11
	registerVal13 = IsPC()
	if registerVal13 then
		registerVal13 = CoD.XCamMouseControl.new(arg0, arg1)
	else
		registerVal13 = LUI.UIElement.createFake()
	end
	registerVal13:setLeftRight(true, false, 371.000000, 992.000000)
	registerVal13:setTopBottom(true, false, 74.000000, 428.000000)
	registerVal13 = IsPC()
	if registerVal13 then
		registerVal2:addElement(registerVal13)
	end
	registerVal2.XCamMouseControl = registerVal13
	local function __FUNC_3D5C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal3, "name", true, __FUNC_3D5C_)
	local function __FUNC_3E34_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal3, nil, false, __FUNC_3E34_)
	local function __FUNC_3E86_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal3, nil, false, __FUNC_3E86_)
	local function __FUNC_3ED6_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal3, nil, false, __FUNC_3ED6_)
	local function __FUNC_3F26_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.weaponDescTextBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal3, "description", true, __FUNC_3F26_)
	local function __FUNC_4005_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal3, nil, false, __FUNC_4005_)
	local function __FUNC_4056_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.requirementTitle:setText(Engine.Localize(GetWeaponOptionProgressTitle(arg1, registerVal1)))
		end
	end

	registerVal8:linkToElementModel(registerVal3, "weaponOptionType", true, __FUNC_4056_)
	local function __FUNC_4166_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.completedTitle:setText(Engine.Localize(GetWeaponOptionCompleteTitle(arg1, registerVal1)))
		end
	end

	registerVal8:linkToElementModel(registerVal3, "weaponOptionType", true, __FUNC_4166_)
	local function __FUNC_4274_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal3, "rarityType", false, __FUNC_4274_)
	local function __FUNC_42C6_(arg0)
		registerVal10:setModel(arg0, arg1)
	end

	registerVal10:linkToElementModel(registerVal3, nil, false, __FUNC_42C6_)
	local function __FUNC_4316_(arg0)
		registerVal11:setModel(arg0, arg1)
	end

	registerVal11:linkToElementModel(registerVal3, nil, false, __FUNC_4316_)
	registerVal3.id = "selectionList"
	local function __FUNC_4366_(arg0, arg1)
		local registerVal2 = arg0.selectionList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_4366_)
	local function __FUNC_446D_(arg0)
		arg0.selectionList:close()
		arg0.categoryName:close()
		arg0.itemDescription:close()
		arg0.limitedEditionCamoDescription:close()
		arg0.prestigeDescription:close()
		arg0.progressionInfo:close()
		arg0.CryptokeyTypeNameLeft:close()
		arg0.ModeIconName:close()
		arg0.LockIcon:close()
		arg0.XCamMouseControl:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_446D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

