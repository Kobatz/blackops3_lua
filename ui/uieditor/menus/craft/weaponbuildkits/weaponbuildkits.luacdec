-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.Craft.WeaponBuildKits.WeaponBuildKitsWeaponList")
require("ui.uieditor.widgets.Craft.Gunsmith.GunsmithVariantSelector")
require("ui.uieditor.widgets.CAC.cac_3dTitleIntermediary")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.InfoPaneItemName")
require("ui.uieditor.widgets.CAC.cac_ElemsSideListBoxes")
require("ui.uieditor.widgets.CAC.cac_ElemsSideList")
require("ui.uieditor.widgets.CAC.cac_WpnLvl")
require("ui.uieditor.widgets.Craft.WeaponBuildKits.WeaponBuildKitsLockIcon")
require("ui.uieditor.widgets.Craft.WeaponBuildKits.WeaponBuildKitsAttachmentsPreview")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.PC.Utility.XCamMouseControl")
local function __FUNC_542_(arg0)
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal1 = Engine.CreateModel(registerVal2, "Gunsmith.Mode")
	registerVal2 = Engine.GetModelValue(registerVal1)
	return registerVal2
end

local function __FUNC_62A_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Gunsmith.Mode")
	Engine.SetModelValue(registerVal2, arg1)
end

local function __FUNC_712_(arg0, arg1)
	if CoD.perController[arg1].gunsmithWeaponListIndex ~= nil then
	end
	local registerVal3 = arg0.weaponList:getItemAtPosition(CoD.perController[arg1].gunsmithWeaponListIndex, 1.000000, false)
	if registerVal3 then
		arg0.weaponList:setActiveItem(registerVal3)
	end
end

local function __FUNC_869_(arg0, arg1)
	arg0.disableDarkenElement = true
	arg0.disableBlur = true
	CoD.SetCustomization(arg1, Enum.CustomizationType.CUSTOMIZATION_TYPE_PAINTSHOP_VIEW_LEFT, "type")
	local function __FUNC_9DB_(arg0, arg2, arg3)
		__FUNC_62A_(arg1, arg2)
		if arg2 == Enum.GunsmithMode.GUNSMITHMODE_WEAPONLIST then
			CoD.SwapFocusableElements(arg1, arg0.variantSelector, arg0.weaponList)
			__FUNC_712_(arg0, arg1)
			arg0:setState("DefaultState")
		else
			if arg2 == Enum.GunsmithMode.GUNSMITHMODE_VARIANTS then
				CoD.SwapFocusableElements(arg1, arg0.weaponList, arg0.variantSelector)
				arg0:setState("ShowVariants")
			end
		end
	end

	arg0.updateMode = __FUNC_9DB_
	local registerVal3 = __FUNC_542_(arg1)
	arg0:updateMode(registerVal3)
end

local function __FUNC_BE3_(arg0, arg1)
	CoD.SetCustomization(arg1, Enum.CustomizationType.CUSTOMIZATION_TYPE_PAINTSHOP_VIEW_LEFT, "type")
	local registerVal4 = Engine.GetModelForController(arg1)
	Engine.CreateModel(registerVal4, "Gunsmith.UpdateDataSource")
end

local function __FUNC_D6D_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("WeaponBuildKits")
	if __FUNC_BE3_ then
		__FUNC_BE3_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "WeaponBuildKits.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 64.000000, 368.000000)
	registerVal3:setTopBottom(true, false, 85.000000, 667.000000)
	registerVal3:setRGB(0.500000, 0.500000, 0.500000)
	registerVal1:addElement(registerVal3)
	registerVal1.LeftPanel = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -750.000000, 750.000000)
	registerVal4:setTopBottom(false, false, 297.000000, 360.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.FooterBacking = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, false, 123.000000, 82.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.TabBacking = registerVal5
	local registerVal6 = LUI.UIList.new(registerVal1, arg0, 7.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, false, 76.500000, 356.500000)
	registerVal6:setTopBottom(true, false, 137.000000, 634.000000)
	registerVal6:setWidgetType(CoD.WeaponBuildKitsWeaponList)
	registerVal6:setVerticalCount(7.000000)
	registerVal6:setSpacing(7.000000)
	registerVal6:setDataSource("Unlockables")
	local function __FUNC_2D78_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "itemIndex"
		CoD.Menu.UpdateButtonShownState(registerVal6, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal6:linkToElementModel(registerVal6, "itemIndex", true, __FUNC_2D78_)
	local function __FUNC_2F36_(arg1, arg2)
		local registerVal3 = IsCACItemNew(arg1, arg0)
		if registerVal3 then
			SetCACItemAsOld(arg1, arg0)
			UpdateSelfElementState(registerVal1, arg1, arg0)
			FocusWeaponBuildKit(registerVal1, arg1, arg0)
		else
			FocusWeaponBuildKit(registerVal1, arg1, arg0)
		end
		return nil
	end

	registerVal6:registerEventHandler("list_item_gain_focus", __FUNC_2F36_)
	local function __FUNC_303C_(arg1, arg2)
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

	registerVal6:registerEventHandler("gain_focus", __FUNC_303C_)
	local function __FUNC_31CF_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_31CF_)
	local function __FUNC_329E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsCACItemLocked(arg1, arg0, arg2)
		if not registerVal4 then
			SelectWeaponBuildKit(registerVal1, arg0, arg2)
			return true
		end
	end

	local function __FUNC_3337_(arg0, arg1, arg2)
		local registerVal3 = IsCACItemLocked(arg1, arg0, arg2)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal6, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_329E_, __FUNC_3337_, false)
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Equipped"
	local function __FUNC_346F_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal10.condition = __FUNC_346F_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	local function __FUNC_34B9_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		registerVal1:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:linkToElementModel(registerVal6, "itemIndex", true, __FUNC_34B9_)
	registerVal1:addElement(registerVal6)
	registerVal1.weaponList = registerVal6
	local registerVal7 = CoD.GunsmithVariantSelector.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, -314.000000, 3.000000)
	registerVal7:setTopBottom(true, false, 129.000000, 655.000000)
	registerVal7:setAlpha(0.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.variantSelector = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, -11.000000, 1293.000000)
	registerVal8:setTopBottom(true, false, 80.000000, 88.000000)
	registerVal8:setRGB(0.900000, 0.900000, 0.900000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal8)
	registerVal1.CategoryListLine = registerVal8
	registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, -649.000000, 645.000000)
	registerVal9:setTopBottom(false, false, -361.000000, -275.000000)
	registerVal9:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.TitleBacking0 = registerVal9
	registerVal10 = CoD.cac_3dTitleIntermediary.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, -72.000000, 537.000000)
	registerVal10:setTopBottom(true, false, -4.000000, 142.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_WEAPON_BUILD_KITS_CAPS"))
	registerVal10.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_gunsmith"))
	registerVal1:addElement(registerVal10)
	registerVal1.cac3dTitleIntermediary0 = registerVal10
	local registerVal11 = CoD.InfoPaneItemName.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 388.000000, 769.000000)
	registerVal11:setTopBottom(true, false, 137.000000, 171.000000)
	local function __FUNC_35D7_(arg1)
		registerVal11:setModel(arg1, arg0)
	end

	registerVal11:linkToElementModel(registerVal1, nil, false, __FUNC_35D7_)
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "Equipped"
	local function __FUNC_3626_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal15.condition = __FUNC_3626_
	local registerVal16 = {}
	registerVal16.stateName = "Available"
	local function __FUNC_3670_(arg0, arg1, arg2)
		return true
	end

	registerVal16.condition = __FUNC_3670_
	local registerVal17 = {}
	registerVal17.stateName = "NotEquippable"
	local function __FUNC_36A4_(arg0, arg1, arg2)
		return true
	end

	registerVal17.condition = __FUNC_36A4_
	local registerVal18 = {}
	registerVal18.stateName = "NotAvailable"
	local function __FUNC_36D8_(arg0, arg1, arg2)
		return true
	end

	registerVal18.condition = __FUNC_36D8_
	registerVal14 = {registerVal15, registerVal16, registerVal17, registerVal18}
	registerVal11:mergeStateConditions(registerVal14)
	registerVal1:addElement(registerVal11)
	registerVal1.itemName = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, -11.000000, 1293.000000)
	registerVal12:setTopBottom(true, false, 80.000000, 88.000000)
	registerVal12:setRGB(0.900000, 0.900000, 0.900000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal12)
	registerVal1.CategoryListLine0 = registerVal12
	local registerVal13 = CoD.cac_ElemsSideListBoxes.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 18.870000, 71.870000)
	registerVal13:setTopBottom(true, false, -12.000000, 658.000000)
	registerVal13:setAlpha(0.000000)
	registerVal1:addElement(registerVal13)
	registerVal1.cacElemsSideListBoxes0 = registerVal13
	registerVal14 = CoD.cac_ElemsSideList.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 4.130000, 72.000000)
	registerVal14:setTopBottom(true, false, -11.000000, 659.000000)
	registerVal1:addElement(registerVal14)
	registerVal1.ElemsSideList = registerVal14
	registerVal15 = CoD.cac_WpnLvl.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, false, 801.000000, 1216.000000)
	registerVal15:setTopBottom(false, true, -126.000000, -86.000000)
	registerVal15.levelLabel.Label1:setText(Engine.Localize("MPUI_WEAPON_LEVEL_CAPS"))
	registerVal15.levelLabel.Label1:setTTF("fonts/escom.ttf")
	registerVal1:addElement(registerVal15)
	registerVal1.cacWpnLvl0 = registerVal15
	registerVal16 = LUI.UIText.new()
	registerVal16:setLeftRight(false, false, -252.000000, 122.000000)
	registerVal16:setTopBottom(false, false, -177.000000, -155.000000)
	registerVal16:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal16:setLineSpacing(0.500000)
	registerVal16:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal16:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal16)
	registerVal1.highlightedDescription = registerVal16
	registerVal17 = CoD.WeaponBuildKitsLockIcon.new(registerVal1, arg0)
	registerVal17:setLeftRight(true, false, 732.000000, 828.000000)
	registerVal17:setTopBottom(true, false, 14.000000, 684.000000)
	local registerVal20 = {}
	local registerVal21 = {}
	registerVal21.stateName = "Locked"
	local function __FUNC_370C_(arg1, arg2, arg3)
		return IsCACItemLocked(arg1, arg2, arg0)
	end

	registerVal21.condition = __FUNC_370C_
	registerVal20 = {registerVal21}
	registerVal17:mergeStateConditions(registerVal20)
	local function __FUNC_3769_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		registerVal1:updateElementState(registerVal17, registerVal4)
	end

	registerVal17:linkToElementModel(registerVal17, "itemIndex", true, __FUNC_3769_)
	registerVal1:addElement(registerVal17)
	registerVal1.LockIcon = registerVal17
	registerVal18 = CoD.WeaponBuildKitsAttachmentsPreview.new(registerVal1, arg0)
	registerVal18:setLeftRight(true, false, 380.500000, 785.500000)
	registerVal18:setTopBottom(false, true, -179.000000, -86.000000)
	local function __FUNC_3887_(arg1)
		registerVal18:setModel(arg1, arg0)
	end

	registerVal18:linkToElementModel(registerVal1, nil, false, __FUNC_3887_)
	registerVal1:addElement(registerVal18)
	registerVal1.WeaponBuildKitsAttachmentsPreview = registerVal18
	local registerVal19 = LUI.UIText.new()
	registerVal19:setLeftRight(false, false, -563.500000, -189.500000)
	registerVal19:setTopBottom(false, false, -271.500000, -241.500000)
	registerVal19:setText(GetLocalizedStringForCurrentWeaponCategory(arg0, "Weapon Category"))
	registerVal19:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal19:setLineSpacing(0.500000)
	registerVal19:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal19:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal19)
	registerVal1.highlightedDescription0 = registerVal19
	registerVal20 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal20:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal20:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal20.titleLabel:setText(Engine.Localize("MENU_WEAPON_BUILD_KITS_CAPS"))
	registerVal20.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_WEAPON_BUILD_KITS_CAPS"))
	registerVal20.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_gunsmith"))
	registerVal1:addElement(registerVal20)
	registerVal1.MenuFrame = registerVal20
	registerVal21 = CoD.XCamMouseControl.new(registerVal1, arg0)
	registerVal21:setLeftRight(false, true, -829.500000, -152.000000)
	registerVal21:setTopBottom(true, true, 231.000000, -179.000000)
	registerVal1:addElement(registerVal21)
	registerVal1.XCamMouseControl = registerVal21
	local function __FUNC_38D6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.weaponNameWithVariant.itemName.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal6, "name", true, __FUNC_38D6_)
	local function __FUNC_39E3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.weaponNameWithVariant.variantName.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal7.variantList, "variantNameBig", true, __FUNC_39E3_)
	local function __FUNC_3B04_(arg1)
		registerVal15:setModel(arg1, arg0)
	end

	registerVal15:linkToElementModel(registerVal6, nil, false, __FUNC_3B04_)
	local function __FUNC_3B56_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal15.currentLevelBacking:setText(Engine.Localize(GetCurrentWeaponLevel(arg0, registerVal1)))
		end
	end

	registerVal15:linkToElementModel(registerVal6, "itemIndex", true, __FUNC_3B56_)
	local function __FUNC_3C62_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal15.currentLevel:setText(Engine.Localize(GetCurrentWeaponLevel(arg0, registerVal1)))
		end
	end

	registerVal15:linkToElementModel(registerVal6, "itemIndex", true, __FUNC_3C62_)
	local function __FUNC_3D67_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal8 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal9 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal15.cacWpnLvlMeter0.Meter:setShaderVector(0.000000, GetCurrentWeaponXP(arg0, registerVal7, registerVal8, registerVal9, CoD.GetVectorComponentFromString(registerVal1, 4.000000)))
		end
	end

	registerVal15:linkToElementModel(registerVal6, "itemIndex", true, __FUNC_3D67_)
	local function __FUNC_3F24_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal8 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal9 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal15.cacWpnLvlMeter0.Meter2XP:setShaderVector(0.000000, GetCurrentWeaponXP(arg0, registerVal7, registerVal8, registerVal9, CoD.GetVectorComponentFromString(registerVal1, 4.000000)))
		end
	end

	registerVal15:linkToElementModel(registerVal6, "itemIndex", true, __FUNC_3F24_)
	local function __FUNC_40E7_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal15.nextLevel:setText(Engine.Localize(GetNextWeaponLevel(arg0, registerVal1)))
		end
	end

	registerVal15:linkToElementModel(registerVal6, "itemIndex", true, __FUNC_40E7_)
	local function __FUNC_41E5_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal16:setText(Engine.Localize(GetUnlockDescription(arg0, registerVal1)))
		end
	end

	registerVal16:linkToElementModel(registerVal6, "itemIndex", true, __FUNC_41E5_)
	local function __FUNC_42C8_(arg1)
		registerVal17:setModel(arg1, arg0)
	end

	registerVal17:linkToElementModel(registerVal6, nil, false, __FUNC_42C8_)
	local registerVal22 = {}
	registerVal22.left = registerVal7
	registerVal6.navigation = registerVal22
	registerVal22 = {}
	registerVal22.right = registerVal6
	registerVal7.navigation = registerVal22
	registerVal22 = {}
	local registerVal23 = {}
	local function __FUNC_431A_()
		registerVal1:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal1.LeftPanel:setLeftRight(true, false, 64.000000, 368.000000)
		registerVal1.LeftPanel:setTopBottom(true, false, 78.000000, 667.000000)
		registerVal1.LeftPanel:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal1.TabBacking:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.weaponList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.variantSelector:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal11:completeAnimation()
		registerVal11.weaponNameWithVariant.variantName:completeAnimation()
		registerVal1.itemName:setLeftRight(true, false, 387.500000, 768.500000)
		registerVal1.itemName:setTopBottom(true, false, 137.000000, 171.000000)
		registerVal1.itemName:setAlpha(1.000000)
		registerVal1.itemName.weaponNameWithVariant.variantName:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.CategoryListLine0:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.cacElemsSideListBoxes0:setLeftRight(true, false, 18.870000, 71.870000)
		registerVal1.cacElemsSideListBoxes0:setTopBottom(true, false, -12.000000, 658.000000)
		registerVal1.cacElemsSideListBoxes0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.ElemsSideList:setLeftRight(true, false, 4.130000, 72.000000)
		registerVal1.ElemsSideList:setTopBottom(true, false, -11.000000, 659.000000)
		registerVal1.ElemsSideList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal17:completeAnimation()
		registerVal1.LockIcon:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal17, {})
	end

	registerVal23.DefaultClip = __FUNC_431A_
	local function __FUNC_493D_()
		registerVal1:setupElementClipCounter(6.000000)
		local function __FUNC_4D87_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 64.000000, 428.000000)
			arg0:setTopBottom(true, false, 85.000000, 667.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal1.LeftPanel:setLeftRight(true, false, 64.000000, 368.000000)
		registerVal1.LeftPanel:setTopBottom(true, false, 85.000000, 667.000000)
		__FUNC_4D87_(registerVal3, {})
		local function __FUNC_4F86_(arg0, arg1)
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

		registerVal5:completeAnimation()
		registerVal1.TabBacking:setAlpha(1.000000)
		__FUNC_4F86_(registerVal5, {})
		local function __FUNC_5139_(arg0, arg1)
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

		registerVal6:completeAnimation()
		registerVal1.weaponList:setAlpha(1.000000)
		__FUNC_5139_(registerVal6, {})
		local function __FUNC_52ED_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 72.000000, 389.000000)
			arg0:setTopBottom(true, false, 129.000000, 655.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal1.variantSelector:setLeftRight(true, false, -314.000000, 3.000000)
		registerVal1.variantSelector:setTopBottom(true, false, 129.000000, 655.000000)
		registerVal1.variantSelector:setAlpha(0.000000)
		__FUNC_52ED_(registerVal7, {})
		local function __FUNC_5511_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
				arg0.weaponNameWithVariant.variantName:beginAnimation("subkeyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 449.000000, 830.000000)
			arg0:setTopBottom(true, false, 137.000000, 171.000000)
			arg0.weaponNameWithVariant.variantName:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal11.weaponNameWithVariant.variantName:completeAnimation()
		registerVal1.itemName:setLeftRight(true, false, 388.000000, 769.000000)
		registerVal1.itemName:setTopBottom(true, false, 137.000000, 171.000000)
		registerVal1.itemName.weaponNameWithVariant.variantName:setAlpha(0.000000)
		__FUNC_5511_(registerVal11, {})
		local function __FUNC_57E2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal1.cacElemsSideListBoxes0:setAlpha(0.000000)
		__FUNC_57E2_(registerVal13, {})
	end

	registerVal23.ShowVariants = __FUNC_493D_
	registerVal22.DefaultState = registerVal23
	registerVal23 = {}
	local function __FUNC_5995_()
		registerVal1:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal1.LeftPanel:setLeftRight(true, false, 64.000000, 428.000000)
		registerVal1.LeftPanel:setTopBottom(true, false, 78.000000, 667.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal6:completeAnimation()
		registerVal1.weaponList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.variantSelector:setLeftRight(true, false, 72.000000, 309.000000)
		registerVal1.variantSelector:setTopBottom(true, false, 129.000000, 655.000000)
		registerVal1.variantSelector:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal11:completeAnimation()
		registerVal11.weaponNameWithVariant.variantName:completeAnimation()
		registerVal1.itemName:setLeftRight(true, false, 449.500000, 830.500000)
		registerVal1.itemName:setTopBottom(true, false, 137.000000, 171.000000)
		registerVal1.itemName.weaponNameWithVariant.variantName:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal1.cacElemsSideListBoxes0:setLeftRight(true, false, 18.870000, 71.870000)
		registerVal1.cacElemsSideListBoxes0:setTopBottom(true, false, -11.000000, 659.000000)
		registerVal1.cacElemsSideListBoxes0:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.ElemsSideList:setLeftRight(true, false, 4.130000, 72.000000)
		registerVal1.ElemsSideList:setTopBottom(true, false, -11.000000, 659.000000)
		registerVal1.ElemsSideList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal14, {})
	end

	registerVal23.DefaultClip = __FUNC_5995_
	local function __FUNC_5EC9_()
		registerVal1:setupElementClipCounter(7.000000)
		local function __FUNC_636A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 289.000000, false, true, CoD.TweenType.Linear)
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
		__FUNC_636A_(registerVal3, {})
		local function __FUNC_656A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal1.TabBacking:setAlpha(0.000000)
		__FUNC_656A_(registerVal5, {})
		local function __FUNC_671D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal1.weaponList:setAlpha(0.000000)
		__FUNC_671D_(registerVal6, {})
		local function __FUNC_68D1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 280.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -312.870000, 4.130000)
			arg0:setTopBottom(true, false, 129.000000, 620.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal1.variantSelector:setLeftRight(true, false, 72.000000, 389.000000)
		registerVal1.variantSelector:setTopBottom(true, false, 127.000000, 622.000000)
		registerVal1.variantSelector:setAlpha(1.000000)
		__FUNC_68D1_(registerVal7, {})
		local function __FUNC_6AF5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, true, true, CoD.TweenType.Linear)
				arg0.weaponNameWithVariant.variantName:beginAnimation("subkeyframe", 250.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 388.000000, 769.000000)
			arg0:setTopBottom(true, false, 137.000000, 171.000000)
			arg0.weaponNameWithVariant.variantName:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal11.weaponNameWithVariant.variantName:completeAnimation()
		registerVal1.itemName:setLeftRight(true, false, 442.000000, 823.000000)
		registerVal1.itemName:setTopBottom(true, false, 137.000000, 171.000000)
		registerVal1.itemName.weaponNameWithVariant.variantName:setAlpha(1.000000)
		__FUNC_6AF5_(registerVal11, {})
		local function __FUNC_6DC6_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal1.cacElemsSideListBoxes0:setAlpha(1.000000)
		__FUNC_6DC6_(registerVal13, {})
		local function __FUNC_6F79_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal1.ElemsSideList:setAlpha(0.000000)
		__FUNC_6F79_(registerVal14, {})
	end

	registerVal23.DefaultState = __FUNC_5EC9_
	registerVal22.ShowVariants = registerVal23
	registerVal1.clipsPerState = registerVal22
	local registerVal25 = Engine.GetModelForController(arg0)
	local registerVal24 = Engine.GetModel(registerVal25, "Gunsmith.Mode")
	local function __FUNC_712D_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "Gunsmith.Mode"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
	end

	registerVal1:subscribeToModel(registerVal24, __FUNC_712D_)
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_72EF_(arg1, arg2)
		SendClientScriptMenuChangeNotify(arg0, registerVal1, true)
		ShowHeaderKickerAndIcon(registerVal1)
		SetElementStateByElementName(registerVal1, "cac3dTitleIntermediary0", arg0, "Update")
		local registerVal5 = {}
		registerVal5.elementName = "cac3dTitleIntermediary0"
		registerVal5.clipName = "Intro"
		PlayClipOnElement(registerVal1, registerVal5, arg0)
		PlayClip(registerVal1, "Intro", arg0)
		SetHeadingKickerText("MENU_ZOMBIES")
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_72EF_)
	local function __FUNC_7506_(arg0, arg1)
		local registerVal3 = IsLAN()
		if not registerVal3 then
			SetHeadingKickerText("MENU_ZOMBIES")
		end
		if not nil then
			registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_opened", __FUNC_7506_)
	local function __FUNC_75D0_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsModelValueEqualTo(arg2, "Gunsmith.Mode", Enum.GunsmithMode.GUNSMITHMODE_WEAPONLIST)
		if registerVal4 then
			SendClientScriptMenuChangeNotify(arg2, arg1, false)
			GoBack(registerVal1, arg2)
			ClearSavedState(registerVal1, arg2)
			return true
		else
			registerVal4 = IsModelValueEqualTo(arg2, "Gunsmith.Mode", Enum.GunsmithMode.GUNSMITHMODE_VARIANTS)
			if registerVal4 then
				Gunsmith_ChooseWeaponList(registerVal1, arg0, arg2)
				return true
			end
		end
	end

	local function __FUNC_77CE_(arg0, arg1, arg2)
		local registerVal3 = IsModelValueEqualTo(arg2, "Gunsmith.Mode", Enum.GunsmithMode.GUNSMITHMODE_WEAPONLIST)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MP_BACK")
			return true
		else
			registerVal3 = IsModelValueEqualTo(arg2, "Gunsmith.Mode", Enum.GunsmithMode.GUNSMITHMODE_VARIANTS)
			if registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MP_BACK")
				return true
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_75D0_, __FUNC_77CE_, false)
	local function __FUNC_7A11_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_7A44_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_7A11_, __FUNC_7A44_, false)
	local function __FUNC_7B42_(arg0, arg1, arg2, arg3)
		local registerVal4 = CACShowRotatePrompt(registerVal1, arg0, arg2)
		if registerVal4 then
			return true
		end
	end

	local function __FUNC_7BAD_(arg0, arg1, arg2)
		local registerVal3 = CACShowRotatePrompt(registerVal1, arg0, arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "PLATFORM_EMBLEM_ROTATE_LAYER")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, nil, __FUNC_7B42_, __FUNC_7BAD_, false)
	local function __FUNC_7CFF_(arg0, arg1, arg2, arg3)
		local registerVal4 = AlwaysFalse()
		if registerVal4 then
			UpdateState(registerVal1, event)
			return true
		end
	end

	local function __FUNC_7D89_(arg0, arg1, arg2)
		local registerVal3 = AlwaysFalse()
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_GUNSMITH_VARIANT_OPTIONS")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_START, nil, __FUNC_7CFF_, __FUNC_7D89_, false)
	registerVal6.id = "weaponList"
	registerVal7.id = "variantSelector"
	registerVal20:setModel(registerVal1.buttonModel, arg0)
	registerVal24 = {}
	registerVal24.name = "menu_loaded"
	registerVal24.controller = arg0
	registerVal1:processEvent(registerVal24)
	registerVal24 = {}
	registerVal24.name = "update_state"
	registerVal24.menu = registerVal1
	registerVal1:processEvent(registerVal24)
	registerVal22 = registerVal1:restoreState()
	if not registerVal22 then
		registerVal24 = {}
		registerVal24.name = "gain_focus"
		registerVal24.controller = arg0
		registerVal1.weaponList:processEvent(registerVal24)
	end
	local function __FUNC_7EBF_(arg1)
		arg1.LeftPanel:close()
		arg1.weaponList:close()
		arg1.variantSelector:close()
		arg1.cac3dTitleIntermediary0:close()
		arg1.itemName:close()
		arg1.cacElemsSideListBoxes0:close()
		arg1.ElemsSideList:close()
		arg1.cacWpnLvl0:close()
		arg1.LockIcon:close()
		arg1.WeaponBuildKitsAttachmentsPreview:close()
		arg1.MenuFrame:close()
		arg1.XCamMouseControl:close()
		arg1.highlightedDescription:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "WeaponBuildKits.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_7EBF_)
	if __FUNC_869_ then
		__FUNC_869_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.WeaponBuildKits = __FUNC_D6D_
