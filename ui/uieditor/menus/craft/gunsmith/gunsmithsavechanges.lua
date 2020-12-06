-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Craft.Gunsmith.GunsmithFullPopupBackground")
require("ui.uieditor.widgets.StartMenu.StartMenu_TitlePopup")
require("ui.uieditor.widgets.Lobby.Common.List1ButtonLarge_Left_ND")
local function __FUNC_272_(arg0, arg1)
	arg0:setModel(CoD.perController[arg1].gunsmithVariantModel)
end

local function __FUNC_320_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("GunsmithSaveChanges")
	if __FUNC_272_ then
		__FUNC_272_(registerVal1, arg0)
	end
	registerVal1.soundSet = "HUD"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "GunsmithSaveChanges.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.Panel = registerVal3
	local registerVal4 = CoD.GunsmithFullPopupBackground.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal4:setTopBottom(true, false, -1.500000, 718.500000)
	registerVal1:addElement(registerVal4)
	registerVal1.GunsmithFullPopupBackground = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 111.500000, 509.730000)
	registerVal5:setTopBottom(true, false, 245.750000, 505.060000)
	registerVal5:setAlpha(0.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.variantImage = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 131.000000, 1085.000000)
	registerVal6:setTopBottom(true, false, 282.060000, 307.060000)
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1A30_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal6:setText(LocalizeWeaponNameIntoString("MENU_GUNSMITH_SAVE_CHANGES_SUBTITLE", "mp", arg0, registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg0, "Customization", "weapon_index", __FUNC_1A30_)
	registerVal1:addElement(registerVal6)
	registerVal1.subTitle = registerVal6
	local registerVal7 = CoD.StartMenu_TitlePopup.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 7.000000, 1188.000000)
	registerVal7:setTopBottom(true, false, 112.000000, 258.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.StartMenuTitlePopup = registerVal7
	local registerVal8 = CoD.List1ButtonLarge_Left_ND.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 131.000000, 411.000000)
	registerVal8:setTopBottom(true, false, 381.060000, 413.060000)
	registerVal8.btnDisplayText:setText(LocalizeToUpperString("MENU_SAVE"))
	registerVal8.btnDisplayTextStroke:setText(LocalizeToUpperString("MENU_SAVE"))
	local function __FUNC_1B37_(arg1, arg2)
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

	registerVal8:registerEventHandler("gain_focus", __FUNC_1B37_)
	local function __FUNC_1CC7_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("lose_focus", __FUNC_1CC7_)
	local function __FUNC_1D96_(arg0, arg1, arg2, arg3)
		Gunsmith_SaveChangesButtonAction(registerVal1, arg0, "save", arg2)
		ForceNotifyModel(arg2, "Gunsmith.UpdateDataSource")
		Gunsmith_ClearCACWithUpdatedVariant(registerVal1, arg2)
		ClearMenuSavedState(arg1)
		return true
	end

	local function __FUNC_1ECB_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal8, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1D96_, __FUNC_1ECB_, false)
	registerVal1:addElement(registerVal8)
	registerVal1.yesButton = registerVal8
	local registerVal9 = CoD.List1ButtonLarge_Left_ND.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 131.000000, 411.000000)
	registerVal9:setTopBottom(true, false, 418.060000, 450.060000)
	registerVal9.btnDisplayText:setText(LocalizeToUpperString("MENU_DISCARD"))
	registerVal9.btnDisplayTextStroke:setText(LocalizeToUpperString("MENU_DISCARD"))
	local function __FUNC_1FC6_(arg1, arg2)
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

	registerVal9:registerEventHandler("gain_focus", __FUNC_1FC6_)
	local function __FUNC_2157_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("lose_focus", __FUNC_2157_)
	local function __FUNC_2226_(arg0, arg1, arg2, arg3)
		Gunsmith_SaveChangesButtonAction(registerVal1, arg0, "discard", arg2)
		ClearMenuSavedState(arg1)
		return true
	end

	local function __FUNC_22D4_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal9, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2226_, __FUNC_22D4_, false)
	registerVal1:addElement(registerVal9)
	registerVal1.noButton = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 57.000000, 93.000000)
	registerVal10:setTopBottom(false, false, 130.560000, 134.060000)
	registerVal10:setZRot(180.000000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal10)
	registerVal1.Image3 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 57.000000, 93.000000)
	registerVal11:setTopBottom(false, false, -125.690000, -122.190000)
	registerVal11:setZRot(180.000000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal11)
	registerVal1.Image4 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 72.500000, 77.500000)
	registerVal12:setTopBottom(true, false, 251.060000, 481.440000)
	registerVal12:setAlpha(0.800000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_lineside"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal12)
	registerVal1.LineSide0 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 56.000000, 72.000000)
	registerVal13:setTopBottom(true, false, 284.060000, 336.060000)
	registerVal13:setZoom(-5.000000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_frontend_titlebackpixelc"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal13)
	registerVal1.Image40 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal14:setTopBottom(true, false, 192.830000, 200.500000)
	registerVal14:setRGB(0.900000, 0.900000, 0.900000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal14)
	registerVal1.CategoryListLine = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal15:setTopBottom(true, false, 533.830000, 541.500000)
	registerVal15:setRGB(0.900000, 0.900000, 0.900000)
	registerVal15:setAlpha(0.250000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal15)
	registerVal1.CategoryListLine0 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal16:setTopBottom(true, false, 578.830000, 586.500000)
	registerVal16:setRGB(0.900000, 0.900000, 0.900000)
	registerVal16:setAlpha(0.250000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal16)
	registerVal1.CategoryListLine00 = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal17:setTopBottom(true, false, 130.830000, 138.500000)
	registerVal17:setRGB(0.900000, 0.900000, 0.900000)
	registerVal17:setAlpha(0.250000)
	registerVal17:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal17)
	registerVal1.CategoryListLine01 = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(true, false, 56.000000, 72.000000)
	registerVal18:setTopBottom(true, false, 392.060000, 444.060000)
	registerVal18:setZoom(-5.000000)
	registerVal18:setImage(RegisterImage("uie_t7_menu_frontend_titlebackpixelc"))
	registerVal18:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal18)
	registerVal1.Image400 = registerVal18
	local function __FUNC_23D2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.StartMenuTitleContainerLOC.StartMenu3dTitle.StartMenu3dTitleLabel.Label0:setText(LocalizeIntoString("MENU_GUNSMITH_SAVE_CHANGES_TITLE", registerVal1))
		end
	end

	registerVal1.StartMenuTitlePopup:linkToElementModel(registerVal1, "variantName", true, __FUNC_23D2_)
	local registerVal19 = {}
	registerVal19.down = registerVal9
	registerVal8.navigation = registerVal19
	registerVal19 = {}
	registerVal19.up = registerVal8
	registerVal9.navigation = registerVal19
	registerVal19 = {}
	local registerVal20 = {}
	local function __FUNC_2553_()
		registerVal1:setupElementClipCounter(0.000000)
	end

	registerVal20.DefaultClip = __FUNC_2553_
	registerVal19.DefaultState = registerVal20
	registerVal20 = {}
	local function __FUNC_25B2_()
		registerVal1:setupElementClipCounter(4.000000)
		registerVal6:completeAnimation()
		registerVal1.subTitle:setLeftRight(true, false, 131.000000, 1088.000000)
		registerVal1.subTitle:setTopBottom(true, false, 282.060000, 307.060000)
		registerVal1.subTitle:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.StartMenuTitlePopup:setLeftRight(true, false, -51.000000, 1184.000000)
		registerVal1.StartMenuTitlePopup:setTopBottom(true, false, 112.000000, 258.000000)
		registerVal1.StartMenuTitlePopup:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.yesButton:setLeftRight(true, false, 808.000000, 1088.000000)
		registerVal1.yesButton:setTopBottom(true, false, 381.060000, 418.060000)
		registerVal1.yesButton:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.noButton:setLeftRight(true, false, 808.000000, 1088.000000)
		registerVal1.noButton:setTopBottom(true, false, 418.060000, 450.060000)
		registerVal1.noButton:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal9, {})
	end

	registerVal20.DefaultClip = __FUNC_25B2_
	registerVal19.ArabicFrontEnd = registerVal20
	registerVal1.clipsPerState = registerVal19
	local registerVal21 = {}
	local registerVal22 = {}
	registerVal22.stateName = "ArabicFrontEnd"
	local function __FUNC_2966_(arg0, arg1, arg2)
		local registerVal3 = IsInGame()
		if registerVal3 then
			registerVal3 = IsArabicSku()
		end
		return registerVal3
	end

	registerVal22.condition = __FUNC_2966_
	registerVal21 = {registerVal22}
	registerVal1:mergeStateConditions(registerVal21)
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_29D3_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		ClearMenuSavedState(arg1)
		return true
	end

	local function __FUNC_2A4D_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_29D3_, __FUNC_2A4D_, false)
	registerVal8.id = "yesButton"
	registerVal9.id = "noButton"
	registerVal21 = {}
	registerVal21.name = "menu_loaded"
	registerVal21.controller = arg0
	registerVal1:processEvent(registerVal21)
	registerVal21 = {}
	registerVal21.name = "update_state"
	registerVal21.menu = registerVal1
	registerVal1:processEvent(registerVal21)
	registerVal19 = registerVal1:restoreState()
	if not registerVal19 then
		registerVal21 = {}
		registerVal21.name = "gain_focus"
		registerVal21.controller = arg0
		registerVal1.yesButton:processEvent(registerVal21)
	end
	local function __FUNC_2B40_(arg1)
		arg1.GunsmithFullPopupBackground:close()
		arg1.StartMenuTitlePopup:close()
		arg1.yesButton:close()
		arg1.noButton:close()
		arg1.subTitle:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "GunsmithSaveChanges.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2B40_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.GunsmithSaveChanges = __FUNC_320_
