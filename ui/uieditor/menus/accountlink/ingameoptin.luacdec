-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.GenericPopups.DialogBackground")
require("ui.uieditor.widgets.MenuSpecificWidgets.Scorestreaks.scorestreakVignetteContainer")
require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyMemberBackingMask")
require("ui.uieditor.widgets.buttonprompt_small")
require("ui.uieditor.widgets.MOTD.MOTD_Button")
require("ui.uieditor.widgets.Lobby.Common.FE_FeaturedFrame")
require("ui.uieditor.widgets.MOTD.MOTD_TitleAndBodyText")
function LUI.createMenu.InGameOptIn(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("InGameOptIn")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "InGameOptIn.buttonPrompts")
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
	registerVal8:setLeftRight(true, false, 147.000000, 175.000000)
	registerVal8:setTopBottom(false, false, -299.000000, -296.000000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_pixelframe"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal8)
	registerVal1.Image1 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 147.000000, 175.000000)
	registerVal9:setTopBottom(false, false, 191.000000, 194.000000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_frontend_pixelframe"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal9)
	registerVal1.pixelLL = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 1098.000000, 1126.000000)
	registerVal10:setTopBottom(false, false, 191.000000, 194.000000)
	registerVal10:setZRot(180.000000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_pixelframe"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal10)
	registerVal1.pixelLL0 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 1098.000000, 1126.000000)
	registerVal11:setTopBottom(false, false, -300.000000, -297.000000)
	registerVal11:setZRot(180.000000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_frontend_pixelframe"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal11)
	registerVal1.Image10 = registerVal11
	local registerVal12 = CoD.buttonprompt_small.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 208.000000, 422.000000)
	registerVal12:setTopBottom(true, false, 515.500000, 546.500000)
	registerVal12.label:setText(Engine.Localize("MENU_SELECT"))
	local function __FUNC_18CE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal12:subscribeToGlobalModel(arg0, "Controller", "primary_button_image", __FUNC_18CE_)
	registerVal1:addElement(registerVal12)
	registerVal1.PromptSelect = registerVal12
	local registerVal13 = CoD.buttonprompt_small.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 330.000000, 544.000000)
	registerVal13:setTopBottom(true, false, 515.500000, 546.500000)
	registerVal13.label:setText(Engine.Localize("MENU_BACK"))
	local function __FUNC_19A7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal13:subscribeToGlobalModel(arg0, "Controller", "secondary_button_image", __FUNC_19A7_)
	registerVal1:addElement(registerVal13)
	registerVal1.PromptBack = registerVal13
	local registerVal14 = CoD.MOTD_Button.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 216.000000, 430.000000)
	registerVal14:setTopBottom(true, false, 425.500000, 455.500000)
	registerVal14.btnDisplayText:setText(Engine.Localize("ACCOUNT_LINK_SKIP"))
	registerVal14.btnDisplayTextStroke:setText(Engine.Localize("ACCOUNT_LINK_SKIP"))
	local function __FUNC_1A7F_(arg1, arg2)
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

	registerVal14:registerEventHandler("gain_focus", __FUNC_1A7F_)
	local function __FUNC_1C0F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal14:registerEventHandler("lose_focus", __FUNC_1C0F_)
	local function __FUNC_1CDE_(arg0, arg1, arg2, arg3)
		FinishRegistrationFlow(registerVal1, arg2, arg1)
		return true
	end

	local function __FUNC_1D44_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal14, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1CDE_, __FUNC_1D44_, false)
	registerVal1:addElement(registerVal14)
	registerVal1.skipbtn = registerVal14
	local registerVal15 = CoD.MOTD_Button.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, false, 216.000000, 430.000000)
	registerVal15:setTopBottom(true, false, 392.500000, 422.500000)
	registerVal15.btnDisplayText:setText(Engine.Localize("ACCOUNT_LINK_OPTIN"))
	registerVal15.btnDisplayTextStroke:setText(Engine.Localize("ACCOUNT_LINK_OPTIN"))
	local function __FUNC_1E42_(arg1, arg2)
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

	registerVal15:registerEventHandler("gain_focus", __FUNC_1E42_)
	local function __FUNC_1FD3_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal15:registerEventHandler("lose_focus", __FUNC_1FD3_)
	local function __FUNC_20A2_(arg0, arg1, arg2, arg3)
		OptInToEmailMarketing(registerVal1, arg0, arg2, arg1)
		return true
	end

	local function __FUNC_210B_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal15, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_20A2_, __FUNC_210B_, false)
	registerVal1:addElement(registerVal15)
	registerVal1.optinbtn = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, 651.450000, 1094.000000)
	registerVal16:setTopBottom(true, false, 61.000000, 553.940000)
	registerVal16:setImage(RegisterImage("uie_t7_motd_account_img"))
	registerVal1:addElement(registerVal16)
	registerVal1.Image0 = registerVal16
	local registerVal17 = CoD.FE_FeaturedFrame.new(registerVal1, arg0)
	registerVal17:setLeftRight(true, false, 181.000000, 1094.000000)
	registerVal17:setTopBottom(true, false, 61.000000, 553.000000)
	registerVal17:setAlpha(0.500000)
	registerVal1:addElement(registerVal17)
	registerVal1.FEFeaturedFrame0 = registerVal17
	local registerVal18 = CoD.MOTD_TitleAndBodyText.new(registerVal1, arg0)
	registerVal18:setLeftRight(true, false, 209.000000, 640.000000)
	registerVal18:setTopBottom(true, false, 89.000000, 437.000000)
	local function __FUNC_21FB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal18.txtDescription:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal18:subscribeToGlobalModel(arg0, "MtxCommsRegistration", "content_long", __FUNC_21FB_)
	local function __FUNC_22D6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal18.TitleLbl0:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal18:subscribeToGlobalModel(arg0, "MtxCommsRegistration", "title", __FUNC_22D6_)
	registerVal1:addElement(registerVal18)
	registerVal1.MOTDTitleAndBodyText = registerVal18
	local registerVal19 = {}
	registerVal19.up = registerVal15
	registerVal14.navigation = registerVal19
	registerVal19 = {}
	registerVal19.down = registerVal14
	registerVal15.navigation = registerVal19
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_23AD_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_2400_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "ENTER", __FUNC_23AD_, __FUNC_2400_, false)
	registerVal14.id = "skipbtn"
	registerVal15.id = "optinbtn"
	local registerVal21 = {}
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
		registerVal1.optinbtn:processEvent(registerVal21)
	end
	local function __FUNC_24F4_(arg1)
		arg1.BackgroundDarken:close()
		arg1.scorestreakVignetteContainer:close()
		arg1.LobbyMemberBackingMask0:close()
		arg1.PromptSelect:close()
		arg1.PromptBack:close()
		arg1.skipbtn:close()
		arg1.optinbtn:close()
		arg1.FEFeaturedFrame0:close()
		arg1.MOTDTitleAndBodyText:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "InGameOptIn.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_24F4_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

