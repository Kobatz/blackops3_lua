-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Craft.Gunsmith.GunsmithFullPopupBackground")
require("ui.uieditor.widgets.Craft.Gunsmith.GunsmithInputButton")
require("ui.uieditor.widgets.StartMenu.StartMenu_TitlePopup")
require("ui.uieditor.widgets.Lobby.Common.List1ButtonLarge_Left_ND")
local function __FUNC_2C2_(arg0, arg1)
	arg0:setModel(CoD.perController[arg1].selectedEmblemModel)
	PaintjobEditor_RemoveGrid(arg1)
end

local function __FUNC_39E_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("EmblemEditorSaveChanges")
	if __FUNC_2C2_ then
		__FUNC_2C2_(registerVal1, arg0)
	end
	registerVal1.soundSet = "HUD"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "EmblemEditorSaveChanges.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
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
	registerVal5:setLeftRight(true, false, 585.000000, 965.000000)
	registerVal5:setTopBottom(true, false, 305.750000, 347.750000)
	registerVal5:setAlpha(0.120000)
	registerVal1:addElement(registerVal5)
	registerVal1.black0 = registerVal5
	local registerVal6 = CoD.GunsmithInputButton.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 583.000000, 968.000000)
	registerVal6:setTopBottom(true, false, 304.000000, 351.000000)
	local function __FUNC_21DA_(arg1)
		registerVal6:setModel(arg1, arg0)
	end

	registerVal6:linkToElementModel(registerVal1, nil, false, __FUNC_21DA_)
	local function __FUNC_222A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.Text:setText(registerVal1)
		end
	end

	registerVal6:linkToElementModel(registerVal1, "emblemTextEntry", true, __FUNC_222A_)
	local function __FUNC_22D6_(arg1, arg2)
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

	registerVal6:registerEventHandler("gain_focus", __FUNC_22D6_)
	local function __FUNC_2467_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_2467_)
	local function __FUNC_2536_(arg0, arg1, arg2, arg3)
		ShowKeyboard(registerVal1, arg0, arg2, "KEYBOARD_TYPE_EMBLEMS")
		return true
	end

	local function __FUNC_25B5_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal6, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2536_, __FUNC_25B5_, false)
	registerVal1:addElement(registerVal6)
	registerVal1.emblemNameInput = registerVal6
	local registerVal7 = LUI.UIElement.new()
	registerVal7:setLeftRight(true, false, 123.000000, 515.000000)
	registerVal7:setTopBottom(true, false, 267.820000, 508.310000)
	local function __FUNC_26B2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setupEmblem(registerVal1)
		end
	end

	registerVal7:subscribeToGlobalModel(arg0, "Customization", "type", __FUNC_26B2_)
	registerVal1:addElement(registerVal7)
	registerVal1.emblem = registerVal7
	local registerVal8 = CoD.StartMenu_TitlePopup.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, -51.000000, 848.000000)
	registerVal8:setTopBottom(true, false, 109.000000, 255.000000)
	registerVal8.StartMenuTitleContainerLOC.StartMenu3dTitle.StartMenu3dTitleLabel.Label0:setText(Engine.Localize("MENU_SAVE_EMBLEM"))
	registerVal1:addElement(registerVal8)
	registerVal1.StartMenuTitlePopup = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 976.000000, 1012.000000)
	registerVal9:setTopBottom(false, false, -56.000000, -52.500000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal9)
	registerVal1.Image5 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 976.000000, 1012.000000)
	registerVal10:setTopBottom(false, false, -13.000000, -9.500000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal10)
	registerVal1.Image0 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 539.000000, 575.000000)
	registerVal11:setTopBottom(false, false, -56.000000, -52.500000)
	registerVal11:setZRot(180.000000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal11)
	registerVal1.Image1 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 57.000000, 93.000000)
	registerVal12:setTopBottom(false, false, 134.560000, 138.060000)
	registerVal12:setZRot(180.000000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal12)
	registerVal1.Image3 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 57.000000, 93.000000)
	registerVal13:setTopBottom(false, false, -121.690000, -118.190000)
	registerVal13:setZRot(180.000000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal13)
	registerVal1.Image4 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 72.500000, 77.500000)
	registerVal14:setTopBottom(true, false, 255.060000, 485.440000)
	registerVal14:setAlpha(0.800000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_frontend_lineside"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal14)
	registerVal1.LineSide0 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, 54.000000, 70.000000)
	registerVal15:setTopBottom(true, false, 336.060000, 388.060000)
	registerVal15:setZoom(-5.000000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_frontend_titlebackpixelc"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal15)
	registerVal1.Image40 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, 1063.000000, 1099.000000)
	registerVal16:setTopBottom(false, false, 134.220000, 137.910000)
	registerVal16:setZRot(360.000000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal16)
	registerVal1.Image30 = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(true, false, 1063.000000, 1099.000000)
	registerVal17:setTopBottom(false, false, -121.000000, -117.500000)
	registerVal17:setZRot(360.000000)
	registerVal17:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal17)
	registerVal1.Image41 = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(true, false, 1084.000000, 1100.000000)
	registerVal18:setTopBottom(true, false, 341.000000, 393.000000)
	registerVal18:setZoom(-5.000000)
	registerVal18:setImage(RegisterImage("uie_t7_menu_frontend_titlebackpixelc"))
	registerVal18:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal18)
	registerVal1.Image400 = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(true, false, 539.000000, 575.000000)
	registerVal19:setTopBottom(false, false, -14.000000, -10.500000)
	registerVal19:setZRot(180.000000)
	registerVal19:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal19:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal19)
	registerVal1.Image10 = registerVal19
	local registerVal20 = CoD.List1ButtonLarge_Left_ND.new(registerVal1, arg0)
	registerVal20:setLeftRight(true, false, 585.000000, 965.000000)
	registerVal20:setTopBottom(true, false, 388.810000, 420.810000)
	registerVal20.btnDisplayText:setText(Engine.Localize("MENU_EMBLEM_SAVE_CHANGES"))
	registerVal20.btnDisplayTextStroke:setText(Engine.Localize("MENU_EMBLEM_SAVE_CHANGES"))
	local function __FUNC_2748_(arg1)
		registerVal20:setModel(arg1, arg0)
	end

	registerVal20:linkToElementModel(registerVal1, nil, false, __FUNC_2748_)
	local function __FUNC_279A_(arg1, arg2)
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

	registerVal20:registerEventHandler("gain_focus", __FUNC_279A_)
	local function __FUNC_292B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal20:registerEventHandler("lose_focus", __FUNC_292B_)
	local function __FUNC_29FA_(arg0, arg1, arg2, arg3)
		EmblemEditor_SaveEmblem(registerVal1, arg0, arg2)
		ForceNotifyModel(arg2, "Emblem.UpdateDataSource")
		ClearSavedState(registerVal1, arg2)
		return true
	end

	local function __FUNC_2AD5_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal20, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_29FA_, __FUNC_2AD5_, false)
	registerVal1:addElement(registerVal20)
	registerVal1.save = registerVal20
	local registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(true, false, 1078.500000, 1083.500000)
	registerVal21:setTopBottom(true, false, 255.060000, 485.440000)
	registerVal21:setAlpha(0.800000)
	registerVal21:setImage(RegisterImage("uie_t7_menu_frontend_lineside"))
	registerVal21:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal21)
	registerVal1.LineSide00 = registerVal21
	local registerVal22 = LUI.UIImage.new()
	registerVal22:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal22:setTopBottom(true, false, 191.830000, 199.500000)
	registerVal22:setRGB(0.900000, 0.900000, 0.900000)
	registerVal22:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal22)
	registerVal1.CategoryListLine = registerVal22
	local registerVal23 = LUI.UIImage.new()
	registerVal23:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal23:setTopBottom(true, false, 533.830000, 541.500000)
	registerVal23:setRGB(0.900000, 0.900000, 0.900000)
	registerVal23:setAlpha(0.250000)
	registerVal23:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal23)
	registerVal1.CategoryListLine0 = registerVal23
	local registerVal24 = LUI.UIImage.new()
	registerVal24:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal24:setTopBottom(true, false, 578.830000, 586.500000)
	registerVal24:setRGB(0.900000, 0.900000, 0.900000)
	registerVal24:setAlpha(0.250000)
	registerVal24:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal24)
	registerVal1.CategoryListLine00 = registerVal24
	local registerVal25 = CoD.List1ButtonLarge_Left_ND.new(registerVal1, arg0)
	registerVal25:setLeftRight(true, false, 585.000000, 965.000000)
	registerVal25:setTopBottom(true, false, 419.440000, 451.440000)
	registerVal25.btnDisplayText:setText(Engine.Localize("MENU_EMBLEMS_DISCARD"))
	registerVal25.btnDisplayTextStroke:setText(Engine.Localize("MENU_EMBLEMS_DISCARD"))
	local function __FUNC_2BD2_(arg1)
		registerVal25:setModel(arg1, arg0)
	end

	registerVal25:linkToElementModel(registerVal1, nil, false, __FUNC_2BD2_)
	local function __FUNC_2C22_(arg1, arg2)
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

	registerVal25:registerEventHandler("gain_focus", __FUNC_2C22_)
	local function __FUNC_2DB3_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal25:registerEventHandler("lose_focus", __FUNC_2DB3_)
	local function __FUNC_2E82_(arg0, arg1, arg2, arg3)
		EmblemEditor_DiscardChanges(registerVal1, arg0, arg2)
		ClearSavedState(registerVal1, arg2)
		return true
	end

	local function __FUNC_2F16_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal25, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2E82_, __FUNC_2F16_, false)
	registerVal1:addElement(registerVal25)
	registerVal1.discard = registerVal25
	local registerVal26 = LUI.UIText.new()
	registerVal26:setLeftRight(true, false, 585.000000, 965.000000)
	registerVal26:setTopBottom(true, false, 275.000000, 300.000000)
	registerVal26:setText(Engine.Localize("MPUI_TITLE"))
	registerVal26:setTTF("fonts/default.ttf")
	registerVal26:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal26:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal26)
	registerVal1.title = registerVal26
	local registerVal27 = {}
	registerVal27.down = registerVal20
	registerVal6.navigation = registerVal27
	registerVal27 = {}
	registerVal27.up = registerVal6
	registerVal27.down = registerVal25
	registerVal20.navigation = registerVal27
	registerVal27 = {}
	registerVal27.up = registerVal20
	registerVal25.navigation = registerVal27
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_3012_(arg1, arg2)
		EmblemEditor_HandleKeyboardComplete(registerVal1, arg1, arg0, arg2)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("ui_keyboard_input", __FUNC_3012_)
	local function __FUNC_30C2_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		ClearMenuSavedState(arg1)
		EmblemEditor_SaveChangesBack(registerVal1, arg0, arg2)
		PaintjobEditor_RestoreGridState(arg2)
		return true
	end

	local function __FUNC_31AC_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_30C2_, __FUNC_31AC_, false)
	registerVal6.id = "emblemNameInput"
	registerVal20.id = "save"
	registerVal25.id = "discard"
	local registerVal29 = {}
	registerVal29.name = "menu_loaded"
	registerVal29.controller = arg0
	registerVal1:processEvent(registerVal29)
	registerVal29 = {}
	registerVal29.name = "update_state"
	registerVal29.menu = registerVal1
	registerVal1:processEvent(registerVal29)
	registerVal27 = registerVal1:restoreState()
	if not registerVal27 then
		registerVal29 = {}
		registerVal29.name = "gain_focus"
		registerVal29.controller = arg0
		registerVal1.save:processEvent(registerVal29)
	end
	local function __FUNC_32A0_(arg1)
		arg1.GunsmithFullPopupBackground:close()
		arg1.emblemNameInput:close()
		arg1.StartMenuTitlePopup:close()
		arg1.save:close()
		arg1.discard:close()
		arg1.emblem:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "EmblemEditorSaveChanges.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_32A0_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.EmblemEditorSaveChanges = __FUNC_39E_
