-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.GenericPopups.DialogBackground")
require("ui.uieditor.widgets.MenuSpecificWidgets.Scorestreaks.scorestreakVignetteContainer")
require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyMemberBackingMask")
require("ui.uieditor.widgets.InputButton")
require("ui.uieditor.widgets.MOTD.MOTD_Button")
require("ui.uieditor.widgets.Lobby.Common.FE_FeaturedFrame")
require("ui.uieditor.widgets.buttonprompt_small")
require("ui.uieditor.widgets.MOTD.MOTD_TitleAndBodyText")
function LUI.createMenu.UmbrellaSignIn(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("UmbrellaSignIn")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "UmbrellaSignIn.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.DialogBackground.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.400000, 0.400000, 0.400000)
	registerVal3:setAlpha(0.450000)
	registerVal1:addElement(registerVal3)
	registerVal1.BackgroundDarken = registerVal3
	local registerVal4 = CoD.scorestreakVignetteContainer.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.scorestreakVignetteContainer = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.overlayBg = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 181.000000, 1094.000000)
	registerVal6:setTopBottom(true, false, 61.000000, 553.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.850000)
	registerVal1:addElement(registerVal6)
	registerVal1.BlackBack = registerVal6
	local registerVal7 = CoD.LobbyMemberBackingMask.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, true, 181.000000, -186.000000)
	registerVal7:setTopBottom(false, false, -298.000000, 193.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.LobbyMemberBackingMask0 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 651.000000, 1093.000000)
	registerVal8:setTopBottom(true, false, 61.000000, 552.000000)
	registerVal8:setImage(RegisterImage("uie_t7_motd_login_img"))
	registerVal1:addElement(registerVal8)
	registerVal1.Image0 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 469.000000, 473.000000)
	registerVal9:setTopBottom(true, false, 214.000000, 809.000000)
	registerVal9:setZRot(-90.000000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_frontend_featuredlline"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal9)
	registerVal1.featlineleft = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 147.000000, 175.000000)
	registerVal10:setTopBottom(false, false, -299.000000, -296.000000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_pixelframe"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal10)
	registerVal1.Image1 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 147.000000, 175.000000)
	registerVal11:setTopBottom(false, false, 191.000000, 194.000000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_frontend_pixelframe"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal11)
	registerVal1.pixelLL = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 1098.000000, 1126.000000)
	registerVal12:setTopBottom(false, false, 191.000000, 194.000000)
	registerVal12:setZRot(180.000000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_pixelframe"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal12)
	registerVal1.pixelLL0 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 1098.000000, 1126.000000)
	registerVal13:setTopBottom(false, false, -300.000000, -297.000000)
	registerVal13:setZRot(180.000000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_frontend_pixelframe"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal13)
	registerVal1.Image10 = registerVal13
	local registerVal14 = CoD.InputButton.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 211.000000, 596.000000)
	registerVal14:setTopBottom(true, false, 287.750000, 321.750000)
	local function __FUNC_1B9D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14.Text:setText(registerVal1)
		end
	end

	registerVal14:subscribeToGlobalModel(arg0, "AccountLinkLogin", "email", __FUNC_1B9D_)
	local function __FUNC_1C4A_(arg1, arg2)
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

	registerVal14:registerEventHandler("gain_focus", __FUNC_1C4A_)
	local function __FUNC_1DDB_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal14:registerEventHandler("lose_focus", __FUNC_1DDB_)
	local function __FUNC_1EAA_(arg0, arg1, arg2, arg3)
		ShowKeyboard(registerVal1, arg0, arg2, "KEYBOARD_TYPE_EMAIL")
		return true
	end

	local function __FUNC_1F27_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal14, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1EAA_, __FUNC_1F27_, false)
	registerVal1:addElement(registerVal14)
	registerVal1.emailEntry = registerVal14
	local registerVal15 = CoD.InputButton.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, false, 211.000000, 596.000000)
	registerVal15:setTopBottom(true, false, 326.750000, 360.750000)
	local function __FUNC_2022_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15.Text:setText(registerVal1)
		end
	end

	registerVal15:subscribeToGlobalModel(arg0, "AccountLinkLogin", "stars", __FUNC_2022_)
	local function __FUNC_20CE_(arg1, arg2)
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

	registerVal15:registerEventHandler("gain_focus", __FUNC_20CE_)
	local function __FUNC_225F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal15:registerEventHandler("lose_focus", __FUNC_225F_)
	local function __FUNC_232E_(arg0, arg1, arg2, arg3)
		ShowKeyboard(registerVal1, arg0, arg2, "KEYBOARD_TYPE_PASSWORD")
		return true
	end

	local function __FUNC_23AE_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal15, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_232E_, __FUNC_23AE_, false)
	registerVal1:addElement(registerVal15)
	registerVal1.passwordEntry = registerVal15
	local registerVal16 = CoD.MOTD_Button.new(registerVal1, arg0)
	registerVal16:setLeftRight(true, false, 216.000000, 405.500000)
	registerVal16:setTopBottom(true, false, 379.750000, 409.750000)
	registerVal16.btnDisplayText:setText(Engine.Localize("MENU_CONFIRM_CAPS"))
	registerVal16.btnDisplayTextStroke:setText(Engine.Localize("MENU_CONFIRM_CAPS"))
	local function __FUNC_24AA_(arg1, arg2)
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

	registerVal16:registerEventHandler("gain_focus", __FUNC_24AA_)
	local function __FUNC_263B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal16:registerEventHandler("lose_focus", __FUNC_263B_)
	local function __FUNC_270A_(arg0, arg1, arg2, arg3)
		AccountLink_Login(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_276B_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal16, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_270A_, __FUNC_276B_, false)
	registerVal1:addElement(registerVal16)
	registerVal1.button0 = registerVal16
	local registerVal17 = CoD.FE_FeaturedFrame.new(registerVal1, arg0)
	registerVal17:setLeftRight(true, false, 181.000000, 1094.000000)
	registerVal17:setTopBottom(true, false, 61.000000, 553.000000)
	registerVal17:setAlpha(0.500000)
	registerVal1:addElement(registerVal17)
	registerVal1.FEFeaturedFrame0 = registerVal17
	local registerVal18 = CoD.buttonprompt_small.new(registerVal1, arg0)
	registerVal18:setLeftRight(true, false, 208.000000, 422.000000)
	registerVal18:setTopBottom(true, false, 515.500000, 546.500000)
	registerVal18.label:setText(Engine.Localize("MENU_SELECT"))
	local function __FUNC_2866_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal18.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal18:subscribeToGlobalModel(arg0, "Controller", "primary_button_image", __FUNC_2866_)
	registerVal1:addElement(registerVal18)
	registerVal1.PromptSelect = registerVal18
	local registerVal19 = CoD.buttonprompt_small.new(registerVal1, arg0)
	registerVal19:setLeftRight(true, false, 330.000000, 544.000000)
	registerVal19:setTopBottom(true, false, 515.500000, 546.500000)
	registerVal19.label:setText(Engine.Localize("MENU_BACK"))
	local function __FUNC_293F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal19.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal19:subscribeToGlobalModel(arg0, "Controller", "secondary_button_image", __FUNC_293F_)
	registerVal1:addElement(registerVal19)
	registerVal1.PromptBack = registerVal19
	local registerVal20 = CoD.MOTD_TitleAndBodyText.new(registerVal1, arg0)
	registerVal20:setLeftRight(true, false, 209.000000, 640.000000)
	registerVal20:setTopBottom(true, false, 89.000000, 437.000000)
	registerVal20.TitleLbl0:setText(Engine.Localize("ACCOUNT_LINK_SIGNIN"))
	local function __FUNC_2A17_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal20.txtDescription:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal20:subscribeToGlobalModel(arg0, "MtxCommsRegistration", "content_short", __FUNC_2A17_)
	registerVal1:addElement(registerVal20)
	registerVal1.MOTDTitleAndBodyText = registerVal20
	local registerVal21 = {}
	registerVal21.down = registerVal15
	registerVal14.navigation = registerVal21
	registerVal21 = {}
	registerVal21.up = registerVal14
	registerVal21.down = registerVal16
	registerVal15.navigation = registerVal21
	registerVal21 = {}
	registerVal21.up = registerVal15
	registerVal16.navigation = registerVal21
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_2AF2_(arg1, arg2)
		AccountLink_HandleLoginKeyboardComplete(registerVal1, arg1, arg0, arg2)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("ui_keyboard_input", __FUNC_2AF2_)
	local function __FUNC_2BA6_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_2BF8_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_2BA6_, __FUNC_2BF8_, false)
	registerVal14.id = "emailEntry"
	registerVal15.id = "passwordEntry"
	registerVal16.id = "button0"
	local registerVal23 = {}
	registerVal23.name = "menu_loaded"
	registerVal23.controller = arg0
	registerVal1:processEvent(registerVal23)
	registerVal23 = {}
	registerVal23.name = "update_state"
	registerVal23.menu = registerVal1
	registerVal1:processEvent(registerVal23)
	registerVal21 = registerVal1:restoreState()
	if not registerVal21 then
		registerVal23 = {}
		registerVal23.name = "gain_focus"
		registerVal23.controller = arg0
		registerVal1.emailEntry:processEvent(registerVal23)
	end
	local function __FUNC_2CF5_(arg1)
		arg1.BackgroundDarken:close()
		arg1.scorestreakVignetteContainer:close()
		arg1.LobbyMemberBackingMask0:close()
		arg1.emailEntry:close()
		arg1.passwordEntry:close()
		arg1.button0:close()
		arg1.FEFeaturedFrame0:close()
		arg1.PromptSelect:close()
		arg1.PromptBack:close()
		arg1.MOTDTitleAndBodyText:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "UmbrellaSignIn.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2CF5_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

