-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.CharacterCustomization.ChooseShowcaseWeapon_SelectionInfoWidget")
require("ui.uieditor.widgets.CharacterCustomization.ChooseShowcaseWeapon_ListButton")
require("ui.uieditor.widgets.CharacterCustomization.ChooseShowcaseWeapon_VariantButton")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.WeaponVariantIcon")
require("ui.uieditor.widgets.CharacterCustomization.ChooseShowcaseWeapon_LockedVariantText")
require("ui.uieditor.widgets.CAC.cac_ElemsSideList")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.Lobby.Common.FE_TabBar")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
local function __FUNC_4F1_(arg0)
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal1 = Engine.CreateModel(registerVal2, "ShowcaseWeapon.Mode")
	registerVal2 = Engine.GetModelValue(registerVal1)
	return registerVal2
end

local function __FUNC_5E0_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "ShowcaseWeapon.Mode")
	Engine.SetModelValue(registerVal2, arg1)
end

local function __FUNC_6D0_(arg0, arg1, arg2)
	local registerVal8 = {}
	registerVal8.itemIndex = arg2
	local registerVal6 = arg0.weaponList:findItem(registerVal8, nil, false, nil)
	arg0.weaponList:setActiveItem(registerVal6)
end

local function __FUNC_83F_(arg0, arg1, arg2)
	local registerVal6, registerVal7, registerVal8 = ipairs(CoD.Craft.WeaponGroupNames)
	for index9,value10 in registerVal6, registerVal7, registerVal8 do
		if arg2 == value10.weapon_category then
		else
		end
	end
	registerVal6 = arg0.tabList.Tabs.grid:getItemAtPosition(1.000000, (value10.index + 1.000000), false)
	if registerVal6 then
		arg0.tabList.Tabs.grid:setActiveItem(registerVal6)
	end
end

local function __FUNC_AC3_(arg0, arg1)
	arg0.disableDarkenElement = true
	arg0.disableBlur = true
	CoD.SetCustomization(arg1, Enum.CustomizationType.CUSTOMIZATION_TYPE_PAINTSHOP_VIEW_LEFT, "type")
	local registerVal3 = Engine.GetHeroShowcaseWeaponAttribute(arg1, CoD.CCUtility.customizationMode, CoD.CCUtility.Heroes.HeroIndexForEdits, "weaponIndex")
	local registerVal4 = Engine.GetItemGroup(registerVal3, CoD.CCUtility.customizationMode)
	__FUNC_83F_(arg0, arg1, registerVal4)
	__FUNC_6D0_(arg0, arg1, registerVal3)
	local function __FUNC_D8F_(arg0, arg2, arg3)
		__FUNC_5E0_(arg1, arg2)
		if arg2 == Enum.ShowcaseWeaponMode.SHOWCASEWEAPON_WEAPONLIST then
			arg0.tabList.Tabs.m_disableNavigation = false
			CoD.SwapFocusableElements(arg1, arg0.variantList, arg0.weaponList)
			arg0:setState("DefaultState")
		else
			if arg2 == Enum.ShowcaseWeaponMode.SHOWCASEWEAPON_VARIANTS then
				arg0.tabList.Tabs.m_disableNavigation = true
				arg0.variantList:updateDataSource()
				CoD.SwapFocusableElements(arg1, arg0.weaponList, arg0.variantList)
				arg0:setState("ShowVariants")
			end
		end
	end

	arg0.updateMode = __FUNC_D8F_
end

local function __FUNC_1033_(arg0, arg1)
	CoD.SetCustomization(arg1, Enum.CustomizationType.CUSTOMIZATION_TYPE_PAINTSHOP_VIEW_LEFT, "type")
	local registerVal4 = Engine.GetModelForController(arg1)
	Engine.CreateModel(registerVal4, "ShowcaseWeapon.updateVariantList")
	CoD.perController[arg1].weaponIndexForVariant = 0.000000
end

local function __FUNC_121F_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("ChooseShowcaseWeapon")
	if __FUNC_1033_ then
		__FUNC_1033_(registerVal1, arg0)
	end
	registerVal1.soundSet = "CAC_PrimaryWeapon"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "ChooseShowcaseWeapon.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 64.000000, 368.000000)
	registerVal3:setTopBottom(true, false, 78.000000, 744.000000)
	registerVal3:setRGB(0.500000, 0.500000, 0.500000)
	registerVal1:addElement(registerVal3)
	registerVal1.LeftPanel = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal4:setTopBottom(false, false, -276.000000, -237.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.CategoryListPanel = registerVal4
	local registerVal5 = CoD.ChooseShowcaseWeapon_SelectionInfoWidget.new(registerVal1, arg0)
	registerVal5:setLeftRight(false, true, -850.000000, 0.000000)
	registerVal5:setTopBottom(false, true, -596.000000, 0.000000)
	registerVal5.itemName.weaponNameWithVariant.variantName:setAlpha(0.000000)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "VariantSelect"
	local function __FUNC_306A_(arg1, arg2, arg3)
		return IsModelValueEqualTo(arg0, "ShowcaseWeapon.Mode", Enum.ShowcaseWeaponMode.SHOWCASEWEAPON_VARIANTS)
	end

	registerVal9.condition = __FUNC_306A_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	local function __FUNC_3149_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		registerVal1:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "isBMClassified", true, __FUNC_3149_)
	local function __FUNC_326C_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		registerVal1:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "itemIndex", true, __FUNC_326C_)
	registerVal9 = Engine.GetModelForController(arg0)
	registerVal8 = Engine.GetModel(registerVal9, "ShowcaseWeapon.Mode")
	local function __FUNC_338B_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "ShowcaseWeapon.Mode"
		registerVal1:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_338B_)
	registerVal1:addElement(registerVal5)
	registerVal1.selectionInfoWidget = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -11.000000, 1293.000000)
	registerVal6:setTopBottom(true, false, 80.000000, 88.000000)
	registerVal6:setRGB(0.900000, 0.900000, 0.900000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal6)
	registerVal1.CategoryListLine = registerVal6
	local registerVal7 = LUI.UIList.new(registerVal1, arg0, 7.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal7:makeFocusable()
	registerVal7:setLeftRight(true, false, 77.000000, 357.000000)
	registerVal7:setTopBottom(true, false, 136.000000, 633.000000)
	registerVal7:setWidgetType(CoD.ChooseShowcaseWeapon_ListButton)
	registerVal7:setVerticalCount(7.000000)
	registerVal7:setSpacing(7.000000)
	registerVal7:setDataSource("Unlockables")
	local function __FUNC_34B1_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "itemIndex"
		CoD.Menu.UpdateButtonShownState(registerVal7, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal7:linkToElementModel(registerVal7, "itemIndex", true, __FUNC_34B1_)
	local function __FUNC_366E_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isBMClassified"
		CoD.Menu.UpdateButtonShownState(registerVal7, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal7:linkToElementModel(registerVal7, "isBMClassified", true, __FUNC_366E_)
	local function __FUNC_382F_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "ref"
		CoD.Menu.UpdateButtonShownState(registerVal7, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal7:linkToElementModel(registerVal7, "ref", true, __FUNC_382F_)
	local function __FUNC_39E4_(arg1, arg2)
		Gunsmith_GainFocus(registerVal1, arg1, arg0)
		return nil
	end

	registerVal7:registerEventHandler("list_item_gain_focus", __FUNC_39E4_)
	local function __FUNC_3A48_(arg1, arg2)
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

	registerVal7:registerEventHandler("gain_focus", __FUNC_3A48_)
	local function __FUNC_3BDB_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_3BDB_)
	local function __FUNC_3CAA_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsCACItemLocked(arg1, arg0, arg2)
		registerVal4 = IsCACItemPurchased(arg0, arg2)
		registerVal4 = IsCACWeaponVariantAvailable(arg0, arg2)
		registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
		registerVal4 = IsCACItemContractLocked(arg0, arg2)
		if not registerVal4 and registerVal4 and registerVal4 and not registerVal4 and not registerVal4 then
			CallCustomElementFunction_Self(registerVal1, "updateMode", Enum.ShowcaseWeaponMode.SHOWCASEWEAPON_VARIANTS)
			return true
		else
			registerVal4 = IsCACItemLocked(arg1, arg0, arg2)
			registerVal4 = IsCACItemPurchased(arg0, arg2)
			registerVal4 = IsCACWeaponVariantAvailable(arg0, arg2)
			registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
			registerVal4 = IsCACItemContractLocked(arg0, arg2)
			if not registerVal4 and registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 then
				HeroShowcaseWeaponSelected(arg1, arg0, arg2)
				MarkCACPaintshopDataDirtyForEdittingSpecialist(arg2)
				SendClientScriptMenuChangeNotify(arg2, arg1, false)
				SetPerControllerTableProperty(arg2, "isShowcaseWeaponMenu", false)
				GoBack(registerVal1, arg2)
				return true
			end
		end
	end

	local function __FUNC_407F_(arg0, arg1, arg2)
		local registerVal3 = IsCACItemLocked(arg1, arg0, arg2)
		registerVal3 = IsCACItemPurchased(arg0, arg2)
		registerVal3 = IsCACWeaponVariantAvailable(arg0, arg2)
		registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
		registerVal3 = IsCACItemContractLocked(arg0, arg2)
		if not registerVal3 and registerVal3 and registerVal3 and not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		else
			registerVal3 = IsCACItemLocked(arg1, arg0, arg2)
			registerVal3 = IsCACItemPurchased(arg0, arg2)
			registerVal3 = IsCACWeaponVariantAvailable(arg0, arg2)
			registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
			registerVal3 = IsCACItemContractLocked(arg0, arg2)
			if not registerVal3 and registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
				return true
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal7, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_3CAA_, __FUNC_407F_, false)
	registerVal1:addElement(registerVal7)
	registerVal1.weaponList = registerVal7
	registerVal8 = LUI.UIList.new(registerVal1, arg0, 7.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal8:makeFocusable()
	registerVal8:setLeftRight(true, false, 77.000000, 415.000000)
	registerVal8:setTopBottom(true, false, 136.000000, 589.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setWidgetType(CoD.ChooseShowcaseWeapon_VariantButton)
	registerVal8:setHorizontalCount(3.000000)
	registerVal8:setVerticalCount(4.000000)
	registerVal8:setSpacing(7.000000)
	registerVal8:setDataSource("WeaponVariantList")
	local function __FUNC_4383_(arg1, arg2)
		local registerVal3 = DoesWeaponVariantContainLockedAttachments(registerVal1, arg1, arg0)
		if registerVal3 then
			FocusWeaponVariant(registerVal1, arg1, arg0)
			SetElementStateByElementName(registerVal1, "lockedVariantText", arg0, "ShowText")
		else
			registerVal3 = DoesWeaponVariantContainLockedAttachments(registerVal1, arg1, arg0)
			if not registerVal3 then
				FocusWeaponVariant(registerVal1, arg1, arg0)
				SetElementStateByElementName(registerVal1, "lockedVariantText", arg0, "DefaultState")
			end
		end
		return nil
	end

	registerVal8:registerEventHandler("list_item_gain_focus", __FUNC_4383_)
	local function __FUNC_4500_(arg1, arg2)
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

	registerVal8:registerEventHandler("gain_focus", __FUNC_4500_)
	local function __FUNC_46F9_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("lose_focus", __FUNC_46F9_)
	local function __FUNC_47CA_(arg0, arg1, arg2, arg3)
		local registerVal4 = DoesWeaponVariantContainLockedAttachments(registerVal1, arg0, arg2)
		if not registerVal4 then
			HeroShowcaseWeaponVariantSelected(arg1, arg0, arg2)
			MarkCACPaintshopDataDirtyForEdittingSpecialist(arg2)
			CallCustomElementFunction_Self(registerVal1, "updateMode", Enum.ShowcaseWeaponMode.SHOWCASEWEAPON_WEAPONLIST)
			SendClientScriptMenuChangeNotify(arg2, arg1, false)
			SetPerControllerTableProperty(arg2, "isShowcaseWeaponMenu", false)
			GoBack(registerVal1, arg2)
			return true
		end
	end

	local function __FUNC_4A3A_(arg0, arg1, arg2)
		local registerVal3 = DoesWeaponVariantContainLockedAttachments(registerVal1, arg0, arg2)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal8, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_47CA_, __FUNC_4A3A_, false)
	local function __FUNC_4B8D_(arg0, arg1, arg2, arg3)
		CallCustomElementFunction_Self(registerVal1, "updateMode", Enum.ShowcaseWeaponMode.SHOWCASEWEAPON_WEAPONLIST)
		return true
	end

	local function __FUNC_4C75_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal8, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_4B8D_, __FUNC_4C75_, false)
	registerVal1:addElement(registerVal8)
	registerVal1.variantList = registerVal8
	registerVal9 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal9:makeFocusable()
	registerVal9:setLeftRight(true, false, 449.000000, 753.000000)
	registerVal9:setTopBottom(true, false, 183.000000, 215.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setWidgetType(CoD.WeaponVariantIcon)
	registerVal9:setHorizontalCount(9.000000)
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Locked"
	local function __FUNC_4D71_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal13.condition = __FUNC_4D71_
	local registerVal14 = {}
	registerVal14.stateName = "ShowcaseWeaponLocked"
	local function __FUNC_4DBD_(arg1, arg2, arg3)
		return IsProgressionElementItemLocked(arg1, arg2, arg0)
	end

	registerVal14.condition = __FUNC_4DBD_
	registerVal12 = {registerVal13, registerVal14}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal1:addElement(registerVal9)
	registerVal1.attachmentList = registerVal9
	local registerVal10 = CoD.ChooseShowcaseWeapon_LockedVariantText.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 449.000000, 819.000000)
	registerVal10:setTopBottom(true, false, 225.200000, 250.200000)
	registerVal10:setAlpha(0.000000)
	registerVal10.lockedVariantText:setText(Engine.Localize("HEROES_SHOWCASE_WEAPON_VARIANT_LOCKED"))
	registerVal13 = {}
	registerVal14 = {}
	registerVal14.stateName = "ShowText"
	local function __FUNC_4E28_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal14.condition = __FUNC_4E28_
	registerVal13 = {registerVal14}
	registerVal10:mergeStateConditions(registerVal13)
	registerVal1:addElement(registerVal10)
	registerVal1.lockedVariantText = registerVal10
	local registerVal11 = CoD.cac_ElemsSideList.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 4.130000, 72.000000)
	registerVal11:setTopBottom(true, false, -12.000000, 658.000000)
	registerVal1:addElement(registerVal11)
	registerVal1.ElemsSideList = registerVal11
	registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 77.000000, 415.000000)
	registerVal12:setTopBottom(true, false, 92.500000, 124.500000)
	registerVal12:setRGB(0.000000, 0.000000, 0.000000)
	registerVal12:setAlpha(0.440000)
	registerVal1:addElement(registerVal12)
	registerVal1.BlackHeader = registerVal12
	registerVal13 = LUI.UIText.new()
	registerVal13:setLeftRight(true, false, 84.000000, 284.000000)
	registerVal13:setTopBottom(true, false, 95.000000, 120.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setText(Engine.Localize("MENU_VARIANTS_CAPS"))
	registerVal13:setTTF("fonts/default.ttf")
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal13)
	registerVal1.variantName = registerVal13
	registerVal14 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal14:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal14.titleLabel:setText(Engine.Localize("HEROES_SHOWCASE_WEAPON_CAPS"))
	registerVal14.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("HEROES_SHOWCASE_WEAPON_CAPS"))
	registerVal14.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_cac"))
	local function __FUNC_4E75_(arg0, arg1)
		ShowHeaderIconOnly(registerVal1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal14:registerEventHandler("menu_opened", __FUNC_4E75_)
	registerVal1:addElement(registerVal14)
	registerVal1.MenuFrame = registerVal14
	local registerVal15 = CoD.FE_TabBar.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, false, 0.000000, 2560.000000)
	registerVal15:setTopBottom(true, false, 83.000000, 124.000000)
	registerVal15.Tabs.grid:setHorizontalCount(10.000000)
	registerVal15.Tabs.grid:setDataSource("GunsmithWeaponTabType")
	local function __FUNC_4F09_(arg1, arg2)
		CAC_TabChanged(registerVal1, arg1, arg0)
		return nil
	end

	registerVal15:registerEventHandler("list_active_changed", __FUNC_4F09_)
	registerVal1:addElement(registerVal15)
	registerVal1.tabList = registerVal15
	local registerVal16 = CoD.verticalCounter.new(registerVal1, arg0)
	registerVal16:setLeftRight(true, false, 117.000000, 317.000000)
	registerVal16:setTopBottom(true, false, 645.500000, 670.500000)
	local function __FUNC_4F68_(arg0, arg1)
		SetAsListVerticalCounter(registerVal1, arg0, "weaponList")
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal16:registerEventHandler("menu_loaded", __FUNC_4F68_)
	registerVal1:addElement(registerVal16)
	registerVal1.verticalCounter0 = registerVal16
	local function __FUNC_501F_(arg1)
		registerVal5:setModel(arg1, arg0)
	end

	registerVal5:linkToElementModel(registerVal7, nil, false, __FUNC_501F_)
	local function __FUNC_506E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.itemName.weaponNameWithVariant.itemName.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal7, "name", true, __FUNC_506E_)
	local function __FUNC_5187_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.itemName.weaponNameWithVariant.variantName.itemName:setText(registerVal1)
		end
	end

	registerVal5:linkToElementModel(registerVal8, "variantNameBig", true, __FUNC_5187_)
	local function __FUNC_528E_(arg1)
		registerVal5.WeaponAttributesInternal:setModel(arg1, arg0)
	end

	registerVal5:linkToElementModel(registerVal7, "weaponAttributes", false, __FUNC_528E_)
	local function __FUNC_530C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setDataSource(registerVal1)
		end
	end

	registerVal9:linkToElementModel(registerVal8, "listDataSource", true, __FUNC_530C_)
	local registerVal17 = {}
	registerVal17.right = registerVal9
	registerVal7.navigation = registerVal17
	registerVal17 = {}
	registerVal17.right = registerVal9
	registerVal8.navigation = registerVal17
	registerVal17 = {}
	registerVal17.left = registerVal8
	registerVal9.navigation = registerVal17
	registerVal17 = {}
	local registerVal18 = {}
	local function __FUNC_53A6_()
		registerVal1:setupElementClipCounter(10.000000)
		registerVal4:completeAnimation()
		registerVal1.CategoryListPanel:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal5.itemName.weaponNameWithVariant.variantName:completeAnimation()
		registerVal1.selectionInfoWidget:setLeftRight(false, true, -912.000000, -62.000000)
		registerVal1.selectionInfoWidget:setTopBottom(false, true, -596.000000, 0.000000)
		registerVal1.selectionInfoWidget.itemName.weaponNameWithVariant.variantName:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal1.weaponList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.variantList:setLeftRight(true, false, -274.000000, 64.000000)
		registerVal1.variantList:setTopBottom(true, false, 136.000000, 589.000000)
		registerVal1.variantList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.attachmentList:setLeftRight(true, false, 391.000000, 695.000000)
		registerVal1.attachmentList:setTopBottom(true, false, 183.000000, 215.000000)
		registerVal1.attachmentList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.lockedVariantText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal1.ElemsSideList:setLeftRight(true, false, 9.130000, 77.000000)
		registerVal1.ElemsSideList:setTopBottom(true, false, -12.000000, 658.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.BlackHeader:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.variantName:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal15:completeAnimation()
		registerVal1.tabList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal15, {})
	end

	registerVal18.DefaultClip = __FUNC_53A6_
	local function __FUNC_5A01_()
		registerVal1:setupElementClipCounter(10.000000)
		local function __FUNC_5F8F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 64.000000, 428.000000)
			arg0:setTopBottom(true, false, 78.000000, 667.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal1.LeftPanel:setLeftRight(true, false, 64.000000, 368.000000)
		registerVal1.LeftPanel:setTopBottom(true, false, 78.000000, 667.000000)
		__FUNC_5F8F_(registerVal3, {})
		local function __FUNC_618E_(arg0, arg1)
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
		__FUNC_618E_(registerVal4, {})
		local function __FUNC_6341_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, true, -850.000000, 0.000000)
			arg0:setTopBottom(false, true, -596.000000, 0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal1.selectionInfoWidget:setLeftRight(false, true, -912.000000, -62.000000)
		registerVal1.selectionInfoWidget:setTopBottom(false, true, -596.000000, 0.000000)
		__FUNC_6341_(registerVal5, {})
		local function __FUNC_653D_(arg0, arg1)
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
		__FUNC_653D_(registerVal7, {})
		local function __FUNC_66F1_(arg0, arg1)
			local function __FUNC_6880_(arg0, arg1)
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
				__FUNC_6880_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -98.500000, 239.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6880_)
		end

		registerVal8:completeAnimation()
		registerVal1.variantList:setLeftRight(true, false, -274.000000, 64.000000)
		registerVal1.variantList:setTopBottom(true, false, 136.000000, 589.000000)
		registerVal1.variantList:setAlpha(0.000000)
		__FUNC_66F1_(registerVal8, {})
		local function __FUNC_6AA5_(arg0, arg1)
			local function __FUNC_6C34_(arg0, arg1)
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
				__FUNC_6C34_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 420.000000, 724.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6C34_)
		end

		registerVal9:completeAnimation()
		registerVal1.attachmentList:setLeftRight(true, false, 391.000000, 695.000000)
		registerVal1.attachmentList:setTopBottom(true, false, 183.000000, 215.000000)
		registerVal1.attachmentList:setAlpha(0.000000)
		__FUNC_6AA5_(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.lockedVariantText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal10, {})
		local function __FUNC_6E59_(arg0, arg1)
			local function __FUNC_6FB0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.440000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_6FB0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6FB0_)
		end

		registerVal12:completeAnimation()
		registerVal1.BlackHeader:setAlpha(0.000000)
		__FUNC_6E59_(registerVal12, {})
		local function __FUNC_7165_(arg0, arg1)
			local function __FUNC_72BC_(arg0, arg1)
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

			if arg1.interrupted then
				__FUNC_72BC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_72BC_)
		end

		registerVal13:completeAnimation()
		registerVal1.variantName:setAlpha(0.000000)
		__FUNC_7165_(registerVal13, {})
		local function __FUNC_7471_(arg0, arg1)
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

		registerVal15:completeAnimation()
		registerVal1.tabList:setAlpha(1.000000)
		__FUNC_7471_(registerVal15, {})
	end

	registerVal18.ShowVariants = __FUNC_5A01_
	registerVal17.DefaultState = registerVal18
	registerVal18 = {}
	local function __FUNC_7625_()
		registerVal1:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal1.LeftPanel:setLeftRight(true, false, 64.000000, 428.000000)
		registerVal1.LeftPanel:setTopBottom(true, false, 78.000000, 667.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.CategoryListPanel:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal5.itemName.weaponNameWithVariant.variantName:completeAnimation()
		registerVal1.selectionInfoWidget:setLeftRight(false, true, -850.000000, 0.000000)
		registerVal1.selectionInfoWidget:setTopBottom(false, true, -596.000000, 0.000000)
		registerVal1.selectionInfoWidget.itemName.weaponNameWithVariant.variantName:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal5, {})
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
		registerVal10:completeAnimation()
		registerVal1.lockedVariantText:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal1.BlackHeader:setAlpha(0.440000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.variantName:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal15:completeAnimation()
		registerVal1.tabList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal15, {})
	end

	registerVal18.DefaultClip = __FUNC_7625_
	local function __FUNC_7C19_()
		registerVal1:setupElementClipCounter(10.000000)
		local function __FUNC_8217_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 64.000000, 368.000000)
			arg0:setTopBottom(true, false, 78.000000, 667.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal1.LeftPanel:setLeftRight(true, false, 64.000000, 428.000000)
		registerVal1.LeftPanel:setTopBottom(true, false, 78.000000, 667.000000)
		__FUNC_8217_(registerVal3, {})
		local function __FUNC_8416_(arg0, arg1)
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
		registerVal4:registerEventHandler("transition_complete_keyframe", __FUNC_8416_)
		local function __FUNC_85C9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, true, -912.000000, -62.000000)
			arg0:setTopBottom(false, true, -596.000000, 0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal1.selectionInfoWidget:setLeftRight(false, true, -850.000000, 0.000000)
		registerVal1.selectionInfoWidget:setTopBottom(false, true, -596.000000, 0.000000)
		__FUNC_85C9_(registerVal5, {})
		local function __FUNC_87CA_(arg0, arg1)
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
		registerVal7:registerEventHandler("transition_complete_keyframe", __FUNC_87CA_)
		local function __FUNC_897D_(arg0, arg1)
			local function __FUNC_8B2F_(arg0, arg1)
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
				__FUNC_8B2F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -98.500000, 239.500000)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8B2F_)
		end

		registerVal8:completeAnimation()
		registerVal1.variantList:setLeftRight(true, false, 77.000000, 415.000000)
		registerVal1.variantList:setTopBottom(true, false, 136.000000, 589.000000)
		registerVal1.variantList:setAlpha(1.000000)
		__FUNC_897D_(registerVal8, {})
		local function __FUNC_8D51_(arg0, arg1)
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

		registerVal9:completeAnimation()
		registerVal1.attachmentList:setAlpha(1.000000)
		__FUNC_8D51_(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.lockedVariantText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal10, {})
		local function __FUNC_8F05_(arg0, arg1)
			local function __FUNC_907F_(arg0, arg1)
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

			if arg1.interrupted then
				__FUNC_907F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_907F_)
		end

		registerVal12:completeAnimation()
		registerVal1.BlackHeader:setAlpha(0.440000)
		__FUNC_8F05_(registerVal12, {})
		local function __FUNC_9231_(arg0, arg1)
			local function __FUNC_93AB_(arg0, arg1)
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

			if arg1.interrupted then
				__FUNC_93AB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_93AB_)
		end

		registerVal13:completeAnimation()
		registerVal1.variantName:setAlpha(1.000000)
		__FUNC_9231_(registerVal13, {})
		local function __FUNC_955D_(arg0, arg1)
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

		registerVal15:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
		registerVal15:setAlpha(0.000000)
		registerVal15:registerEventHandler("transition_complete_keyframe", __FUNC_955D_)
	end

	registerVal18.DefaultState = __FUNC_7C19_
	registerVal17.ShowVariants = registerVal18
	registerVal1.clipsPerState = registerVal17
	local registerVal20 = Engine.GetModelForController(arg0)
	local registerVal19 = Engine.GetModel(registerVal20, "ShowcaseWeapon.Mode")
	local function __FUNC_9711_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "ShowcaseWeapon.Mode"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
	end

	registerVal1:subscribeToModel(registerVal19, __FUNC_9711_)
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_98D9_(arg1, arg2)
		CallCustomElementFunction_Self(registerVal1, "updateMode", Enum.ShowcaseWeaponMode.SHOWCASEWEAPON_WEAPONLIST)
		SetPerControllerTableProperty(arg0, "isShowcaseWeaponMenu", true)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_opened", __FUNC_98D9_)
	local function __FUNC_9A53_(arg1, arg2)
		SendClientScriptMenuChangeNotify(arg0, registerVal1, true)
		ShowHeaderKickerAndIcon(registerVal1)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_9A53_)
	local function __FUNC_9B28_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_9B5C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_9B28_, __FUNC_9B5C_, false)
	local function __FUNC_9C5A_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsModelValueEqualTo(arg2, "ShowcaseWeapon.Mode", Enum.ShowcaseWeaponMode.SHOWCASEWEAPON_WEAPONLIST)
		if registerVal4 then
			SendClientScriptNotifyForAdjustedClient(arg2, "CustomClass_closed", "")
			SendClientScriptMenuChangeNotify(arg2, arg1, false)
			SetPerControllerTableProperty(arg2, "isShowcaseWeaponMenu", false)
			GoBack(registerVal1, arg2)
			PlaySoundSetSound(registerVal1, "menu_no_selection")
			return true
		else
			CallCustomElementFunction_Self(registerVal1, "updateMode", Enum.ShowcaseWeaponMode.SHOWCASEWEAPON_WEAPONLIST)
			return true
		end
	end

	local function __FUNC_9F23_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_9C5A_, __FUNC_9F23_, false)
	local function __FUNC_A01D_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_A050_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "PLATFORM_EMBLEM_ROTATE_LAYER")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, nil, __FUNC_A01D_, __FUNC_A050_, false)
	registerVal7.id = "weaponList"
	registerVal8.id = "variantList"
	registerVal9.id = "attachmentList"
	registerVal14:setModel(registerVal1.buttonModel, arg0)
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
		registerVal1.weaponList:processEvent(registerVal19)
	end
	local function __FUNC_A162_(arg1)
		arg1.LeftPanel:close()
		arg1.selectionInfoWidget:close()
		arg1.weaponList:close()
		arg1.variantList:close()
		arg1.attachmentList:close()
		arg1.lockedVariantText:close()
		arg1.ElemsSideList:close()
		arg1.MenuFrame:close()
		arg1.tabList:close()
		arg1.verticalCounter0:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "ChooseShowcaseWeapon.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_A162_)
	if __FUNC_AC3_ then
		__FUNC_AC3_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.ChooseShowcaseWeapon = __FUNC_121F_
