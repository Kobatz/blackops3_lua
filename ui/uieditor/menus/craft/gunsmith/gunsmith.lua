-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrameNoFooter")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.Craft.Gunsmith.GunsmithWeaponList")
require("ui.uieditor.widgets.CAC.WeaponAttributes")
require("ui.uieditor.widgets.Craft.Gunsmith.GunsmithVariantSelector")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.InfoPaneItemName")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.WeaponVariantIcon")
require("ui.uieditor.widgets.Footer.fe_FooterContainer_NOTLobby")
require("ui.uieditor.widgets.Lobby.Common.FE_TabBar")
require("ui.uieditor.widgets.Craft.Gunsmith.GunsmithSlotsFull")
require("ui.uieditor.widgets.CAC.cac_CustomClassDecscription")
require("ui.uieditor.widgets.PC.Utility.XCamMouseControl")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.CAC.cac_LockBig")
local function __FUNC_5FA_(arg0)
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal1 = Engine.CreateModel(registerVal2, "Gunsmith.Mode")
	registerVal2 = Engine.GetModelValue(registerVal1)
	return registerVal2
end

local function __FUNC_6E2_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Gunsmith.Mode")
	Engine.SetModelValue(registerVal2, arg1)
end

local function __FUNC_7CA_(arg0, arg1)
	if CoD.perController[arg1].gunsmithWeaponListIndex ~= nil then
	end
	local registerVal3 = arg0.weaponList:getItemAtPosition(CoD.perController[arg1].gunsmithWeaponListIndex, 1.000000, false)
	if registerVal3 then
		arg0.weaponList:setActiveItem(registerVal3)
	end
end

local function __FUNC_921_(arg0, arg1)
	local registerVal3 = CoD.GetCustomization(arg1, "category_index")
	if registerVal3 ~= nil then
	end
	CoD.perController[arg1].gunsmithWeaponCategoryRestored = true
	local registerVal4 = arg0.tabList.Tabs.grid:getItemAtPosition(1.000000, registerVal3, false)
	if registerVal4 then
		arg0.tabList.Tabs.grid:setActiveItem(registerVal4)
	end
end

local function __FUNC_AF2_(arg0, arg1)
	arg0.disableDarkenElement = true
	arg0.disableBlur = true
	CoD.SetCustomization(arg1, Enum.CustomizationType.CUSTOMIZATION_TYPE_PAINTSHOP_VIEW_LEFT, "type")
	local function __FUNC_C67_(arg0, arg2, arg3)
		__FUNC_6E2_(arg1, arg2)
		if arg2 == Enum.GunsmithMode.GUNSMITHMODE_WEAPONLIST then
			arg0.tabList.Tabs.m_disableNavigation = false
			arg0.weaponList:setMouseDisabled(false)
			__FUNC_921_(arg0, arg1)
			CoD.SwapFocusableElements(arg1, arg0.variantSelector, arg0.weaponList)
			__FUNC_7CA_(arg0, arg1)
			arg0:setState("DefaultState")
		else
			if arg2 == Enum.GunsmithMode.GUNSMITHMODE_VARIANTS then
				arg0.tabList.Tabs.m_disableNavigation = true
				arg0.weaponList:setMouseDisabled(true)
				CoD.SwapFocusableElements(arg1, arg0.weaponList, arg0.variantSelector)
				arg0:setState("ShowVariants")
			end
		end
	end

	arg0.updateMode = __FUNC_C67_
	local registerVal3 = __FUNC_5FA_(arg1)
	arg0:updateMode(registerVal3)
end

local function __FUNC_F41_(arg0, arg1)
	CoD.SetCustomization(arg1, Enum.CustomizationType.CUSTOMIZATION_TYPE_PAINTSHOP_VIEW_LEFT, "type")
	local registerVal4 = Engine.GetModelForController(arg1)
	Engine.CreateModel(registerVal4, "Gunsmith.UpdateDataSource")
	local registerVal6 = Engine.GetModelForController(arg1)
	local registerVal5 = Engine.CreateModel(registerVal6, "Gunsmith.UpdateDataSource")
	local function __FUNC_112B_(arg2)
		local registerVal2 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg1].gunsmithVariantModel, "variantIndex"))
		if CoD.perController[arg1].gunsmithVariantModel and arg0.variantSelector ~= nil then
			arg0.variantSelector.variantList:updateDataSource(true)
			arg0.attachmentList:updateDataSource(true)
			local registerVal5 = {}
			registerVal5.variantIndex = registerVal2
			arg0.variantSelector.variantList:findItem(registerVal5, nil, true, nil)
		end
	end

	arg0:subscribeToModel(registerVal5, __FUNC_112B_)
end

local function __FUNC_1350_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Gunsmith")
	if __FUNC_F41_ then
		__FUNC_F41_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Gunsmith.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.BlackTransition = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, -9.000000, 5.000000)
	registerVal4:setTopBottom(true, false, -1.000000, 85.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.TitleBacking0 = registerVal4
	local registerVal5 = CoD.GenericMenuFrameNoFooter.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5.titleLabel:setText(Engine.Localize("MENU_GUNSMITH"))
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_GUNSMITH_CAPS"))
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_gunsmith"))
	local function __FUNC_3607_(arg0, arg1)
		ShowHeaderIconOnly(registerVal1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("menu_opened", __FUNC_3607_)
	registerVal1:addElement(registerVal5)
	registerVal1.MenuFrame = registerVal5
	local registerVal6 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 64.000000, 368.000000)
	registerVal6:setTopBottom(true, true, 78.000000, -53.000000)
	registerVal6:setRGB(0.500000, 0.500000, 0.500000)
	registerVal1:addElement(registerVal6)
	registerVal1.LeftPanel = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, false, 124.000000, 83.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.TabBacking = registerVal7
	local registerVal8 = LUI.UIList.new(registerVal1, arg0, 7.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal8:makeFocusable()
	registerVal8:setLeftRight(true, false, 76.500000, 356.500000)
	registerVal8:setTopBottom(true, false, 137.000000, 634.000000)
	registerVal8:setWidgetType(CoD.GunsmithWeaponList)
	registerVal8:setVerticalCount(7.000000)
	registerVal8:setSpacing(7.000000)
	registerVal8:setDataSource("CraftWeaponList")
	local function __FUNC_3699_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isBMClassified"
		CoD.Menu.UpdateButtonShownState(registerVal8, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal8:linkToElementModel(registerVal8, "isBMClassified", true, __FUNC_3699_)
	local function __FUNC_385B_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isContractClassified"
		CoD.Menu.UpdateButtonShownState(registerVal8, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal8:linkToElementModel(registerVal8, "isContractClassified", true, __FUNC_385B_)
	local function __FUNC_3A21_(arg1, arg2)
		Gunsmith_GainFocus(registerVal1, arg1, arg0)
		return nil
	end

	registerVal8:registerEventHandler("list_item_gain_focus", __FUNC_3A21_)
	local function __FUNC_3A84_(arg1, arg2)
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

	registerVal8:registerEventHandler("gain_focus", __FUNC_3A84_)
	local function __FUNC_3C17_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("lose_focus", __FUNC_3C17_)
	local function __FUNC_3CE6_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
		registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isContractClassified")
		if not registerVal4 and not registerVal4 then
			Gunsmith_BrowseVariants(registerVal1, arg0, arg2)
			return true
		end
	end

	local function __FUNC_3DD9_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
		registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isContractClassified")
		if not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal8, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_3CE6_, __FUNC_3DD9_, false)
	registerVal1:addElement(registerVal8)
	registerVal1.weaponList = registerVal8
	local registerVal9 = CoD.WeaponAttributes.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 449.500000, 877.500000)
	registerVal9:setTopBottom(false, true, -167.000000, -63.000000)
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "NotVisible"
	local function __FUNC_3F6A_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal13.condition = __FUNC_3F6A_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal1:addElement(registerVal9)
	registerVal1.weaponAttributes = registerVal9
	local registerVal10 = CoD.GunsmithVariantSelector.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 72.000000, 428.000000)
	registerVal10:setTopBottom(true, false, 129.000000, 655.000000)
	registerVal10:setAlpha(0.000000)
	registerVal1:addElement(registerVal10)
	registerVal1.variantSelector = registerVal10
	local registerVal11 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal11:setTopBottom(true, true, 86.000000, -16.750000)
	registerVal1:addElement(registerVal11)
	registerVal1.FEMenuLeftGraphics = registerVal11
	registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, true, -11.000000, 13.000000)
	registerVal12:setTopBottom(true, false, 80.000000, 88.000000)
	registerVal12:setRGB(0.900000, 0.900000, 0.900000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal12)
	registerVal1.CategoryListLine = registerVal12
	registerVal13 = CoD.InfoPaneItemName.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 388.000000, 769.000000)
	registerVal13:setTopBottom(true, false, 137.000000, 171.000000)
	local function __FUNC_3FB4_(arg1)
		registerVal13:setModel(arg1, arg0)
	end

	registerVal13:linkToElementModel(registerVal1, nil, false, __FUNC_3FB4_)
	local registerVal16 = {}
	local registerVal17 = {}
	registerVal17.stateName = "Equipped"
	local function __FUNC_4006_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal17.condition = __FUNC_4006_
	local registerVal18 = {}
	registerVal18.stateName = "Available"
	local function __FUNC_4050_(arg0, arg1, arg2)
		return true
	end

	registerVal18.condition = __FUNC_4050_
	local registerVal19 = {}
	registerVal19.stateName = "NotEquippable"
	local function __FUNC_4084_(arg0, arg1, arg2)
		return true
	end

	registerVal19.condition = __FUNC_4084_
	local registerVal20 = {}
	registerVal20.stateName = "NotAvailable"
	local function __FUNC_40B8_(arg0, arg1, arg2)
		return true
	end

	registerVal20.condition = __FUNC_40B8_
	registerVal16 = {registerVal17, registerVal18, registerVal19, registerVal20}
	registerVal13:mergeStateConditions(registerVal16)
	registerVal1:addElement(registerVal13)
	registerVal1.itemName = registerVal13
	local registerVal14 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal14:makeFocusable()
	registerVal14:setLeftRight(true, false, 450.000000, 754.000000)
	registerVal14:setTopBottom(true, false, 183.000000, 215.000000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setWidgetType(CoD.WeaponVariantIcon)
	registerVal14:setHorizontalCount(9.000000)
	registerVal1:addElement(registerVal14)
	registerVal1.attachmentList = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, true, -11.000000, 13.000000)
	registerVal15:setTopBottom(true, false, 80.000000, 88.000000)
	registerVal15:setRGB(0.900000, 0.900000, 0.900000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal15)
	registerVal1.CategoryListLine0 = registerVal15
	registerVal16 = CoD.fe_FooterContainer_NOTLobby.new(registerVal1, arg0)
	registerVal16:setLeftRight(true, true, 1.000000, -1.000000)
	registerVal16:setTopBottom(false, true, -67.000000, 0.000000)
	local function __FUNC_40EC_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal16:registerEventHandler("menu_loaded", __FUNC_40EC_)
	registerVal1:addElement(registerVal16)
	registerVal1.feFooterContainerNOTLobby = registerVal16
	registerVal17 = CoD.FE_TabBar.new(registerVal1, arg0)
	registerVal17:setLeftRight(true, true, 0.000000, 1216.000000)
	registerVal17:setTopBottom(true, false, 85.000000, 120.000000)
	registerVal17.Tabs.grid:setHorizontalCount(8.000000)
	registerVal17.Tabs.grid:setDataSource("GunsmithWeaponTabType")
	local function __FUNC_4181_(arg1, arg2)
		Gunsmith_TabChanged(registerVal1, arg1, arg0)
		return nil
	end

	registerVal17:registerEventHandler("list_active_changed", __FUNC_4181_)
	registerVal1:addElement(registerVal17)
	registerVal1.tabList = registerVal17
	registerVal18 = CoD.GunsmithSlotsFull.new(registerVal1, arg0)
	registerVal18:setLeftRight(true, false, 449.500000, 567.500000)
	registerVal18:setTopBottom(true, false, 594.250000, 648.000000)
	registerVal18:setAlpha(0.000000)
	local function __FUNC_41E5_(arg1)
		UpdateSelfElementState(registerVal1, registerVal18, arg0)
	end

	registerVal18:subscribeToGlobalModel(arg0, "PerController", "Gunsmith.UpdateDataSource", __FUNC_41E5_)
	local registerVal21 = {}
	local registerVal22 = {}
	registerVal22.stateName = "SlotsFull"
	local function __FUNC_4248_(arg1, arg2, arg3)
		return CraftSlotsFullByStorageType(arg0, Enum.StorageFileType.STORAGE_GUNSMITH)
	end

	registerVal22.condition = __FUNC_4248_
	registerVal21 = {registerVal22}
	registerVal18:mergeStateConditions(registerVal21)
	registerVal1:addElement(registerVal18)
	registerVal1.slotsTracker = registerVal18
	registerVal19 = CoD.cac_CustomClassDecscription.new(registerVal1, arg0)
	registerVal19:setLeftRight(true, false, 388.000000, 747.000000)
	registerVal19:setTopBottom(true, false, 183.000000, 205.000000)
	registerVal1:addElement(registerVal19)
	registerVal1.weaponDescription = registerVal19
	registerVal20 = LUI.UIText.new()
	registerVal20:setLeftRight(true, false, 388.000000, 644.000000)
	registerVal20:setTopBottom(true, false, 114.500000, 133.500000)
	registerVal20:setRGB(0.970000, 0.320000, 0.050000)
	registerVal20:setAlpha(0.000000)
	registerVal20:setText(LocalizeToUpperString("MENU_VARIANT"))
	registerVal20:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal20:setLetterSpacing(1.000000)
	registerVal20:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal20:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal20)
	registerVal1.categoryName = registerVal20
	registerVal21 = CoD.XCamMouseControl.new(registerVal1, arg0)
	registerVal21:setLeftRight(false, true, -820.000000, 0.000000)
	registerVal21:setTopBottom(true, true, 227.000000, -73.000000)
	registerVal1:addElement(registerVal21)
	registerVal1.XCamMouseControl = registerVal21
	registerVal22 = CoD.verticalCounter.new(registerVal1, arg0)
	registerVal22:setLeftRight(true, false, 116.000000, 316.000000)
	registerVal22:setTopBottom(true, false, 640.000000, 665.000000)
	local function __FUNC_4306_(arg0, arg1)
		SetAsListVerticalCounter(registerVal1, arg0, "weaponList")
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal22:registerEventHandler("menu_loaded", __FUNC_4306_)
	registerVal1:addElement(registerVal22)
	registerVal1.weaponVerticalCounter = registerVal22
	local registerVal23 = CoD.cac_LockBig.new(registerVal1, arg0)
	registerVal23:setLeftRight(false, false, 159.000000, 255.000000)
	registerVal23:setTopBottom(true, false, 14.000000, 684.000000)
	registerVal23:setAlpha(0.000000)
	local registerVal26 = {}
	local registerVal27 = {}
	registerVal27.stateName = "Locked"
	local function __FUNC_43BB_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal27.condition = __FUNC_43BB_
	local registerVal28 = {}
	registerVal28.stateName = "NotAvailable"
	local function __FUNC_4405_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal28.condition = __FUNC_4405_
	registerVal26 = {registerVal27, registerVal28}
	registerVal23:mergeStateConditions(registerVal26)
	local function __FUNC_4451_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		registerVal1:updateElementState(registerVal23, registerVal4)
	end

	registerVal23:linkToElementModel(registerVal23, "isBMClassified", true, __FUNC_4451_)
	registerVal1:addElement(registerVal23)
	registerVal1.LockIcon = registerVal23
	local function __FUNC_4574_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.weaponNameWithVariant.itemName.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal13:linkToElementModel(registerVal8, "name", true, __FUNC_4574_)
	local function __FUNC_4683_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.weaponNameWithVariant.variantName.itemName:setText(registerVal1)
		end
	end

	registerVal13:linkToElementModel(registerVal10.variantList, "variantNameBig", true, __FUNC_4683_)
	local function __FUNC_477E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14:setDataSource(registerVal1)
		end
	end

	registerVal14:linkToElementModel(registerVal10.variantList, "listDataSource", true, __FUNC_477E_)
	local function __FUNC_4816_(arg1)
		registerVal19:setModel(arg1, arg0)
	end

	registerVal19:linkToElementModel(registerVal8, nil, false, __FUNC_4816_)
	local function __FUNC_4866_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal19.weaponDescTextBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal19:linkToElementModel(registerVal8, "description", true, __FUNC_4866_)
	local function __FUNC_4945_(arg1)
		registerVal23:setModel(arg1, arg0)
	end

	registerVal23:linkToElementModel(registerVal8, nil, false, __FUNC_4945_)
	local registerVal24 = {}
	registerVal24.right = registerVal10
	registerVal24.down = registerVal10
	registerVal8.navigation = registerVal24
	registerVal24 = {}
	registerVal24.left = registerVal8
	registerVal24.up = registerVal8
	registerVal24.right = registerVal14
	registerVal10.navigation = registerVal24
	registerVal24 = {}
	registerVal24.left = registerVal10
	registerVal14.navigation = registerVal24
	registerVal24 = {}
	local registerVal25 = {}
	local function __FUNC_4996_()
		registerVal1:setupElementClipCounter(15.000000)
		registerVal3:completeAnimation()
		registerVal1.BlackTransition:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal6:completeAnimation()
		registerVal1.LeftPanel:setLeftRight(true, false, 64.000000, 368.000000)
		registerVal1.LeftPanel:setTopBottom(true, true, 78.000000, -53.000000)
		registerVal1.LeftPanel:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.TabBacking:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.weaponList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.weaponAttributes:setLeftRight(true, false, 387.500000, 815.500000)
		registerVal1.weaponAttributes:setTopBottom(false, true, -167.000000, -63.000000)
		registerVal1.weaponAttributes:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.variantSelector:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal10, {})
		registerVal13:completeAnimation()
		registerVal13.weaponNameWithVariant.variantName:completeAnimation()
		registerVal1.itemName:setLeftRight(true, false, 387.500000, 768.500000)
		registerVal1.itemName:setTopBottom(true, false, 137.000000, 171.000000)
		registerVal1.itemName:setAlpha(1.000000)
		registerVal1.itemName.weaponNameWithVariant.variantName:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.attachmentList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.CategoryListLine0:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal17:completeAnimation()
		registerVal1.tabList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal1.slotsTracker:setLeftRight(true, false, 388.000000, 506.000000)
		registerVal1.slotsTracker:setTopBottom(true, false, 593.250000, 647.000000)
		registerVal1.slotsTracker:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal1.weaponDescription:setLeftRight(true, false, 387.500000, 746.500000)
		registerVal1.weaponDescription:setTopBottom(true, false, 183.000000, 205.000000)
		registerVal1.weaponDescription:setRGB(1.000000, 1.000000, 1.000000)
		registerVal1.weaponDescription:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal1.categoryName:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal20, {})
		registerVal22:completeAnimation()
		registerVal1.weaponVerticalCounter:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal1.LockIcon:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal23, {})
	end

	registerVal25.DefaultClip = __FUNC_4996_
	local function __FUNC_526A_()
		registerVal1:setupElementClipCounter(11.000000)
		local function __FUNC_59F8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 64.000000, 428.000000)
			arg0:setTopBottom(true, true, 85.000000, -53.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal1.LeftPanel:setLeftRight(true, false, 64.000000, 368.000000)
		registerVal1.LeftPanel:setTopBottom(true, true, 85.000000, -53.000000)
		__FUNC_59F8_(registerVal6, {})
		local function __FUNC_5BFA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal1.TabBacking:setAlpha(1.000000)
		__FUNC_5BFA_(registerVal7, {})
		local function __FUNC_5DAD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal1.weaponList:setAlpha(1.000000)
		__FUNC_5DAD_(registerVal8, {})
		local function __FUNC_5F61_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 449.000000, 877.000000)
			arg0:setTopBottom(false, true, -167.000000, -63.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal1.weaponAttributes:setLeftRight(true, false, 388.000000, 816.000000)
		registerVal1.weaponAttributes:setTopBottom(false, true, -167.000000, -63.000000)
		__FUNC_5F61_(registerVal9, {})
		local function __FUNC_6162_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 77.000000, 416.000000)
			arg0:setTopBottom(true, false, 129.000000, 622.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal1.variantSelector:setLeftRight(true, false, -314.000000, 3.000000)
		registerVal1.variantSelector:setTopBottom(true, false, 129.000000, 622.000000)
		registerVal1.variantSelector:setAlpha(0.000000)
		__FUNC_6162_(registerVal10, {})
		local function __FUNC_6385_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
				arg0.weaponNameWithVariant.variantName:beginAnimation("subkeyframe", 200.000000, false, true, CoD.TweenType.Linear)
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

		registerVal13:completeAnimation()
		registerVal13.weaponNameWithVariant.variantName:completeAnimation()
		registerVal1.itemName:setLeftRight(true, false, 388.000000, 769.000000)
		registerVal1.itemName:setTopBottom(true, false, 137.000000, 171.000000)
		registerVal1.itemName.weaponNameWithVariant.variantName:setAlpha(0.000000)
		__FUNC_6385_(registerVal13, {})
		local function __FUNC_6656_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal1.tabList:setAlpha(1.000000)
		__FUNC_6656_(registerVal17, {})
		local function __FUNC_6809_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 450.000000, 567.500000)
			arg0:setTopBottom(true, false, 594.250000, 648.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal1.slotsTracker:setLeftRight(true, false, 388.000000, 506.000000)
		registerVal1.slotsTracker:setTopBottom(true, false, 593.250000, 647.000000)
		registerVal1.slotsTracker:setAlpha(0.000000)
		__FUNC_6809_(registerVal18, {})
		local function __FUNC_6A2D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 418.500000, 777.500000)
			arg0:setTopBottom(true, false, 183.000000, 205.000000)
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal1.weaponDescription:setLeftRight(true, false, 388.000000, 747.000000)
		registerVal1.weaponDescription:setTopBottom(true, false, 183.000000, 205.000000)
		registerVal1.weaponDescription:setRGB(1.000000, 1.000000, 1.000000)
		registerVal1.weaponDescription:setAlpha(1.000000)
		__FUNC_6A2D_(registerVal19, {})
		local function __FUNC_6C7A_(arg0, arg1)
			local function __FUNC_6E08_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 449.500000, 706.000000)
				arg0:setTopBottom(true, false, 114.500000, 133.500000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_6E08_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 418.750000, 675.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6E08_)
		end

		registerVal20:completeAnimation()
		registerVal1.categoryName:setLeftRight(true, false, 388.000000, 644.000000)
		registerVal1.categoryName:setTopBottom(true, false, 114.500000, 133.500000)
		registerVal1.categoryName:setAlpha(0.000000)
		__FUNC_6C7A_(registerVal20, {})
		local function __FUNC_702D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal22:completeAnimation()
		registerVal1.weaponVerticalCounter:setAlpha(1.000000)
		__FUNC_702D_(registerVal22, {})
	end

	registerVal25.ShowVariants = __FUNC_526A_
	local function __FUNC_71E1_()
		registerVal1:setupElementClipCounter(14.000000)
		local function __FUNC_7A4F_(arg0, arg1)
			local function __FUNC_7BA4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_7BA4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7BA4_)
		end

		registerVal3:completeAnimation()
		registerVal1.BlackTransition:setAlpha(1.000000)
		__FUNC_7A4F_(registerVal3, {})
		registerVal6:completeAnimation()
		registerVal1.LeftPanel:setLeftRight(true, false, 64.000000, 368.000000)
		registerVal1.LeftPanel:setTopBottom(true, true, 78.000000, -53.000000)
		registerVal1.LeftPanel:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.TabBacking:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.weaponList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.weaponAttributes:setLeftRight(true, false, 387.500000, 815.500000)
		registerVal1.weaponAttributes:setTopBottom(false, true, -167.000000, -63.000000)
		registerVal1.weaponAttributes:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.variantSelector:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal10, {})
		registerVal13:completeAnimation()
		registerVal13.weaponNameWithVariant.variantName:completeAnimation()
		registerVal1.itemName:setLeftRight(true, false, 387.500000, 768.500000)
		registerVal1.itemName:setTopBottom(true, false, 137.000000, 171.000000)
		registerVal1.itemName:setAlpha(1.000000)
		registerVal1.itemName.weaponNameWithVariant.variantName:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.attachmentList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.CategoryListLine0:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal17:completeAnimation()
		registerVal1.tabList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal1.slotsTracker:setLeftRight(true, false, 388.000000, 506.000000)
		registerVal1.slotsTracker:setTopBottom(true, false, 593.250000, 647.000000)
		registerVal1.slotsTracker:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal1.weaponDescription:setLeftRight(true, false, 387.500000, 746.500000)
		registerVal1.weaponDescription:setTopBottom(true, false, 183.000000, 205.000000)
		registerVal1.weaponDescription:setRGB(1.000000, 1.000000, 1.000000)
		registerVal1.weaponDescription:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal1.categoryName:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal20, {})
		registerVal23:completeAnimation()
		registerVal1.LockIcon:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal23, {})
	end

	registerVal25.Intro = __FUNC_71E1_
	registerVal24.DefaultState = registerVal25
	registerVal25 = {}
	local function __FUNC_7D59_()
		registerVal1:setupElementClipCounter(12.000000)
		registerVal6:completeAnimation()
		registerVal1.LeftPanel:setLeftRight(true, false, 64.000000, 428.000000)
		registerVal1.LeftPanel:setTopBottom(true, true, 78.000000, -53.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal1.weaponList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.weaponAttributes:setLeftRight(true, false, 449.500000, 877.500000)
		registerVal1.weaponAttributes:setTopBottom(false, true, -167.000000, -63.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.variantSelector:setLeftRight(true, false, 77.000000, 416.000000)
		registerVal1.variantSelector:setTopBottom(true, false, 129.000000, 622.000000)
		registerVal1.variantSelector:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal1.FEMenuLeftGraphics:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal13.weaponNameWithVariant.variantName:completeAnimation()
		registerVal1.itemName:setLeftRight(true, false, 449.500000, 830.500000)
		registerVal1.itemName:setTopBottom(true, false, 137.000000, 171.000000)
		registerVal1.itemName.weaponNameWithVariant.variantName:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.attachmentList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal18:completeAnimation()
		registerVal1.slotsTracker:setLeftRight(true, false, 449.500000, 567.500000)
		registerVal1.slotsTracker:setTopBottom(true, false, 594.250000, 648.000000)
		registerVal1.slotsTracker:setAlpha(1.000000)
		registerVal1.slotsTracker:setScale(1.000000)
		registerVal1.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal1.weaponDescription:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal1.categoryName:setLeftRight(true, false, 449.500000, 705.500000)
		registerVal1.categoryName:setTopBottom(true, false, 114.500000, 133.500000)
		registerVal1.categoryName:setAlpha(1.000000)
		registerVal1.categoryName:setText(LocalizeToUpperString("MENU_VARIANT"))
		registerVal1.clipFinished(registerVal20, {})
		registerVal22:completeAnimation()
		registerVal1.weaponVerticalCounter:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal1.LockIcon:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal23, {})
	end

	registerVal25.DefaultClip = __FUNC_7D59_
	local function __FUNC_8594_()
		registerVal1:setupElementClipCounter(12.000000)
		local function __FUNC_8DAF_(arg0, arg1)
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

		registerVal6:completeAnimation()
		registerVal1.LeftPanel:setLeftRight(true, false, 64.000000, 428.000000)
		registerVal1.LeftPanel:setTopBottom(true, true, 78.000000, -53.000000)
		__FUNC_8DAF_(registerVal6, {})
		local function __FUNC_8FAE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal1.TabBacking:setAlpha(0.000000)
		__FUNC_8FAE_(registerVal7, {})
		local function __FUNC_9161_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal1.weaponList:setAlpha(0.000000)
		__FUNC_9161_(registerVal8, {})
		local function __FUNC_9315_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 388.000000, 816.000000)
			arg0:setTopBottom(false, true, -167.000000, -63.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal1.weaponAttributes:setLeftRight(true, false, 442.000000, 870.000000)
		registerVal1.weaponAttributes:setTopBottom(false, true, -167.000000, -63.000000)
		__FUNC_9315_(registerVal9, {})
		local function __FUNC_9516_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -312.870000, 4.130000)
			arg0:setTopBottom(true, false, 129.000000, 622.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal1.variantSelector:setLeftRight(true, false, 77.000000, 416.000000)
		registerVal1.variantSelector:setTopBottom(true, false, 129.000000, 622.000000)
		registerVal1.variantSelector:setAlpha(1.000000)
		__FUNC_9516_(registerVal10, {})
		local function __FUNC_9739_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
				arg0.weaponNameWithVariant.variantName:beginAnimation("subkeyframe", 200.000000, false, true, CoD.TweenType.Linear)
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

		registerVal13:completeAnimation()
		registerVal13.weaponNameWithVariant.variantName:completeAnimation()
		registerVal1.itemName:setLeftRight(true, false, 449.500000, 830.500000)
		registerVal1.itemName:setTopBottom(true, false, 137.000000, 171.000000)
		registerVal1.itemName.weaponNameWithVariant.variantName:setAlpha(1.000000)
		__FUNC_9739_(registerVal13, {})
		local function __FUNC_9A0A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal1.attachmentList:setAlpha(1.000000)
		__FUNC_9A0A_(registerVal14, {})
		local function __FUNC_9BBD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal1.tabList:setAlpha(0.000000)
		__FUNC_9BBD_(registerVal17, {})
		local function __FUNC_9D71_(arg0, arg1)
			local function __FUNC_9F5B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 388.000000, 506.000000)
				arg0:setTopBottom(true, false, 593.250000, 647.000000)
				arg0:setAlpha(0.000000)
				arg0:setScale(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_9F5B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 418.750000, 536.750000)
			arg0:setTopBottom(true, false, 593.750000, 647.500000)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9F5B_)
		end

		registerVal18:completeAnimation()
		registerVal1.slotsTracker:setLeftRight(true, false, 449.500000, 567.500000)
		registerVal1.slotsTracker:setTopBottom(true, false, 594.250000, 648.000000)
		registerVal1.slotsTracker:setAlpha(1.000000)
		registerVal1.slotsTracker:setScale(1.000000)
		__FUNC_9D71_(registerVal18, {})
		local function __FUNC_A1A0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 387.500000, 706.500000)
			arg0:setTopBottom(true, false, 183.000000, 205.000000)
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal1.weaponDescription:setLeftRight(true, false, 449.500000, 808.500000)
		registerVal1.weaponDescription:setTopBottom(true, false, 183.000000, 205.000000)
		registerVal1.weaponDescription:setRGB(1.000000, 1.000000, 1.000000)
		registerVal1.weaponDescription:setAlpha(0.000000)
		__FUNC_A1A0_(registerVal19, {})
		local function __FUNC_A3E9_(arg0, arg1)
			local function __FUNC_A59B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 388.000000, 636.500000)
				arg0:setTopBottom(true, false, 114.500000, 133.500000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_A59B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 418.750000, 667.250000)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A59B_)
		end

		registerVal20:completeAnimation()
		registerVal1.categoryName:setLeftRight(true, false, 449.500000, 698.000000)
		registerVal1.categoryName:setTopBottom(true, false, 114.500000, 133.500000)
		registerVal1.categoryName:setAlpha(1.000000)
		__FUNC_A3E9_(registerVal20, {})
		local function __FUNC_A7BD_(arg0, arg1)
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

		registerVal22:completeAnimation()
		registerVal1.weaponVerticalCounter:setAlpha(0.000000)
		__FUNC_A7BD_(registerVal22, {})
	end

	registerVal25.DefaultState = __FUNC_8594_
	registerVal24.ShowVariants = registerVal25
	registerVal1.clipsPerState = registerVal24
	registerVal27 = Engine.GetModelForController(arg0)
	registerVal26 = Engine.GetModel(registerVal27, "Gunsmith.Mode")
	local function __FUNC_A971_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "Gunsmith.Mode"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
	end

	registerVal1:subscribeToModel(registerVal26, __FUNC_A971_)
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_AB33_(arg1, arg2)
		SendClientScriptMenuChangeNotify(arg0, registerVal1, true)
		ShowHeaderIconOnly(registerVal1)
		SetElementStateByElementName(registerVal1, "MenuFrame", arg0, "Update")
		local registerVal5 = {}
		registerVal5.elementName = "MenuFrame"
		registerVal5.clipName = "Intro"
		PlayClipOnElement(registerVal1, registerVal5, arg0)
		PlayClip(registerVal1, "Intro", arg0)
		SetHeadingKickerText("MENU_GUNSMITH")
		SetPerControllerTableProperty(arg0, "editingWeaponBuildKits", nil)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_AB33_)
	local function __FUNC_AD93_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsModelValueEqualTo(arg2, "Gunsmith.Mode", Enum.GunsmithMode.GUNSMITHMODE_WEAPONLIST)
		if registerVal4 then
			SendClientScriptMenuChangeNotify(arg2, arg1, false)
			GoBack(registerVal1, arg2)
			Gunsmith_Back(registerVal1, arg0, arg2)
			ClearSavedState(registerVal1, arg2)
			SendClientScriptNotifyForAdjustedClient(arg2, "CustomClass_closed", "")
			return true
		else
			registerVal4 = IsModelValueEqualTo(arg2, "Gunsmith.Mode", Enum.GunsmithMode.GUNSMITHMODE_VARIANTS)
			if registerVal4 then
				Gunsmith_ChooseWeaponList(registerVal1, arg0, arg2)
				PlaySoundSetSound(registerVal1, "menu_go_back")
				return true
			end
		end
	end

	local function __FUNC_B065_(arg0, arg1, arg2)
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

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_AD93_, __FUNC_B065_, false)
	local function __FUNC_B2A9_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_B2DC_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_B2A9_, __FUNC_B2DC_, false)
	local function __FUNC_B3DA_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_B40C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "PLATFORM_EMBLEM_ROTATE_LAYER")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, nil, __FUNC_B3DA_, __FUNC_B40C_, false)
	local function __FUNC_B51E_(arg0, arg1, arg2, arg3)
		local registerVal4 = AlwaysFalse()
		if registerVal4 then
			UpdateState(registerVal1, event)
			return true
		end
	end

	local function __FUNC_B5A9_(arg0, arg1, arg2)
		local registerVal3 = AlwaysFalse()
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_GUNSMITH_VARIANT_OPTIONS")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_START, nil, __FUNC_B51E_, __FUNC_B5A9_, false)
	registerVal5:setModel(registerVal1.buttonModel, arg0)
	registerVal8.id = "weaponList"
	registerVal10.id = "variantSelector"
	registerVal14.id = "attachmentList"
	registerVal16:setModel(registerVal1.buttonModel, arg0)
	registerVal26 = {}
	registerVal26.name = "menu_loaded"
	registerVal26.controller = arg0
	registerVal1:processEvent(registerVal26)
	registerVal26 = {}
	registerVal26.name = "update_state"
	registerVal26.menu = registerVal1
	registerVal1:processEvent(registerVal26)
	registerVal24 = registerVal1:restoreState()
	if not registerVal24 then
		registerVal26 = {}
		registerVal26.name = "gain_focus"
		registerVal26.controller = arg0
		registerVal1.weaponList:processEvent(registerVal26)
	end
	local function __FUNC_B6DF_(arg1)
		arg1.MenuFrame:close()
		arg1.LeftPanel:close()
		arg1.weaponList:close()
		arg1.weaponAttributes:close()
		arg1.variantSelector:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.itemName:close()
		arg1.attachmentList:close()
		arg1.feFooterContainerNOTLobby:close()
		arg1.tabList:close()
		arg1.slotsTracker:close()
		arg1.weaponDescription:close()
		arg1.XCamMouseControl:close()
		arg1.weaponVerticalCounter:close()
		arg1.LockIcon:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Gunsmith.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_B6DF_)
	if __FUNC_AF2_ then
		__FUNC_AF2_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.Gunsmith = __FUNC_1350_
