-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Footer.fe_LeftContainer_NOTLobby")
require("ui.uieditor.widgets.CAC.Customization.CACGenericButton")
function LUI.createMenu.FirstTimeDurangoDownloadSetting(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("FirstTimeDurangoDownloadSetting")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "FirstTimeDurangoDownloadSetting.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	local function __FUNC_1D6E_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
		return registerVal3
	end

	registerVal3:registerEventHandler("gain_focus", __FUNC_1D6E_)
	local function __FUNC_1F00_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_1F00_)
	local function __FUNC_1FD2_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_2024_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal3, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1FD2_, __FUNC_2024_, false)
	registerVal1:addElement(registerVal3)
	registerVal1.background = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, -3.820000, 3.820000)
	registerVal4:setTopBottom(true, true, 107.500000, -107.500000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_welcome_bg3"))
	registerVal4:setupUIStreamedImage(0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.NEWBGIMAGE = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 467.240000, 1216.000000)
	registerVal5:setTopBottom(true, false, 143.450000, 201.450000)
	registerVal5:setRGB(1.000000, 0.410000, 0.000000)
	registerVal5:setText(Engine.Localize("MENU_DOWNLOAD_SETTING_TITLE"))
	registerVal5:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal5)
	registerVal1.WelcomeTitle = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 467.240000, 1178.000000)
	registerVal6:setTopBottom(true, false, 201.450000, 220.450000)
	registerVal6:setText(Engine.Localize("MENU_DOWNLOAD_SETTING_TEXT"))
	registerVal6:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal6)
	registerVal1.DescText = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 125.310000, 406.240000)
	registerVal7:setTopBottom(true, false, 153.450000, 454.450000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_welcome_whitelogo"))
	registerVal7:setupUIStreamedImage(0.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.NEWWHITEIMAGE = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, -20.860000, 25.140000)
	registerVal8:setTopBottom(false, false, -256.500000, -248.500000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal8:setAlpha(0.700000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_barfocussolidfull"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal8:setShaderVector(0.000000, 0.003017, 0.500000, 0.000000, 0.000000)
	registerVal8:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.FEFocusBarSolid = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, true, -23.860000, 25.140000)
	registerVal9:setTopBottom(false, false, -256.500000, -248.500000)
	registerVal9:setRGB(1.000000, 0.900000, 0.800000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_frontend_barfocusfull"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal9:setShaderVector(0.000000, 0.003010, 0.500000, 0.000000, 0.000000)
	registerVal9:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.FEFocusBarAdd = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, -118.860000, 96.140000)
	registerVal10:setTopBottom(true, false, 102.290000, 116.710000)
	registerVal10:setRGB(1.000000, 0.990000, 0.000000)
	registerVal10:setAlpha(0.700000)
	registerVal10:setImage(RegisterImage("uie_t7_cp_hud_enemytarget_glow"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal10)
	registerVal1.Glow2 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, true, -21.000000, 25.000000)
	registerVal11:setTopBottom(false, false, 248.500000, 256.500000)
	registerVal11:setRGB(0.000000, 0.000000, 0.000000)
	registerVal11:setAlpha(0.700000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_frontend_barfocussolidfull"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal11:setShaderVector(0.000000, 0.003017, 0.500000, 0.000000, 0.000000)
	registerVal11:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal11)
	registerVal1.FEFocusBarSolid0 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, true, -24.000000, 25.000000)
	registerVal12:setTopBottom(false, false, 248.500000, 256.500000)
	registerVal12:setRGB(1.000000, 0.900000, 0.800000)
	registerVal12:setAlpha(0.990000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_barfocusfull"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal12:setShaderVector(0.000000, 0.003010, 0.500000, 0.000000, 0.000000)
	registerVal12:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal12)
	registerVal1.FEFocusBarAdd0 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, true, -119.000000, 96.000000)
	registerVal13:setTopBottom(true, false, 603.290000, 617.710000)
	registerVal13:setRGB(1.000000, 0.990000, 0.000000)
	registerVal13:setAlpha(0.700000)
	registerVal13:setXRot(180.000000)
	registerVal13:setImage(RegisterImage("uie_t7_cp_hud_enemytarget_glow"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal13)
	registerVal1.Glow20 = registerVal13
	local registerVal14 = CoD.fe_LeftContainer_NOTLobby.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 467.240000, 899.240000)
	registerVal14:setTopBottom(true, false, 571.290000, 603.290000)
	registerVal1:addElement(registerVal14)
	registerVal1.buttons = registerVal14
	local registerVal15 = CoD.CACGenericButton.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, false, 467.240000, 747.240000)
	registerVal15:setTopBottom(true, false, 303.850000, 335.850000)
	registerVal15.btnDisplayText:setText(Engine.Localize("MENU_ZOMBIE_CAPS"))
	registerVal15.btnDisplayTextStroke:setText(Engine.Localize("MENU_ZOMBIE_CAPS"))
	local function __FUNC_2121_(arg1, arg2)
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

	registerVal15:registerEventHandler("gain_focus", __FUNC_2121_)
	local function __FUNC_22B3_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal15:registerEventHandler("lose_focus", __FUNC_22B3_)
	local function __FUNC_2382_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsGameModeInstalled("", Enum.eModes.MODE_ZOMBIES)
		if not registerVal4 then
			SetProfileVar(arg2, "com_first_time", 0.000000)
			UpdateGamerprofile(registerVal1, arg0, arg2)
			ForceNotifyGlobalModel(arg2, "mainFirstTimeFlowComplete")
			SetDownloadPreference(arg2, Enum.eModes.MODE_ZOMBIES)
			return true
		else
			OpenGenericSmallPopup(arg1, arg2, "MENU_DOWNLOAD_SETTING_TITLE", "MENU_DOWNLOAD_COMPLETE", "", "", "", "")
			return true
		end
	end

	local function __FUNC_25E9_(arg0, arg1, arg2)
		local registerVal3 = IsGameModeInstalled("", Enum.eModes.MODE_ZOMBIES)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		else
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal15, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2382_, __FUNC_25E9_, false)
	registerVal1:addElement(registerVal15)
	registerVal1.Zombie = registerVal15
	local registerVal16 = CoD.CACGenericButton.new(registerVal1, arg0)
	registerVal16:setLeftRight(true, false, 467.240000, 747.240000)
	registerVal16:setTopBottom(true, false, 271.850000, 303.850000)
	registerVal16.btnDisplayText:setText(Engine.Localize("MENU_MULTIPLAYER_CAPS"))
	registerVal16.btnDisplayTextStroke:setText(Engine.Localize("MENU_MULTIPLAYER_CAPS"))
	local function __FUNC_27BB_(arg1, arg2)
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

	registerVal16:registerEventHandler("gain_focus", __FUNC_27BB_)
	local function __FUNC_294B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal16:registerEventHandler("lose_focus", __FUNC_294B_)
	local function __FUNC_2A1A_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsGameModeInstalled("", Enum.eModes.MODE_MULTIPLAYER)
		if not registerVal4 then
			SetProfileVar(arg2, "com_first_time", 0.000000)
			UpdateGamerprofile(registerVal1, arg0, arg2)
			ForceNotifyGlobalModel(arg2, "mainFirstTimeFlowComplete")
			SetDownloadPreference(arg2, Enum.eModes.MODE_MULTIPLAYER)
			return true
		else
			OpenGenericSmallPopup(arg1, arg2, "MENU_DOWNLOAD_SETTING_TITLE", "MENU_DOWNLOAD_COMPLETE", "", "", "", "")
			return true
		end
	end

	local function __FUNC_2C85_(arg0, arg1, arg2)
		local registerVal3 = IsGameModeInstalled("", Enum.eModes.MODE_MULTIPLAYER)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		else
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal16, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2A1A_, __FUNC_2C85_, false)
	registerVal1:addElement(registerVal16)
	registerVal1.Multiplayer = registerVal16
	local registerVal17 = CoD.CACGenericButton.new(registerVal1, arg0)
	registerVal17:setLeftRight(true, false, 467.240000, 747.240000)
	registerVal17:setTopBottom(true, false, 239.850000, 271.850000)
	registerVal17.btnDisplayText:setText(Engine.Localize("MENU_CAMPAIGN_CAPS"))
	registerVal17.btnDisplayTextStroke:setText(Engine.Localize("MENU_CAMPAIGN_CAPS"))
	local function __FUNC_2E5B_(arg1, arg2)
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

	registerVal17:registerEventHandler("gain_focus", __FUNC_2E5B_)
	local function __FUNC_2FEB_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal17:registerEventHandler("lose_focus", __FUNC_2FEB_)
	local function __FUNC_30BA_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsGameModeInstalled("", Enum.eModes.MODE_CAMPAIGN)
		if not registerVal4 then
			SetProfileVar(arg2, "com_first_time", 0.000000)
			UpdateGamerprofile(registerVal1, arg0, arg2)
			ForceNotifyGlobalModel(arg2, "mainFirstTimeFlowComplete")
			SetDownloadPreference(arg2, Enum.eModes.MODE_CAMPAIGN)
			return true
		else
			OpenGenericSmallPopup(arg1, arg2, "MENU_DOWNLOAD_SETTING_TITLE", "MENU_DOWNLOAD_COMPLETE", "", "", "", "")
			return true
		end
	end

	local function __FUNC_3322_(arg0, arg1, arg2)
		local registerVal3 = IsGameModeInstalled("", Enum.eModes.MODE_CAMPAIGN)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		else
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal17, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_30BA_, __FUNC_3322_, false)
	registerVal1:addElement(registerVal17)
	registerVal1.Campaign = registerVal17
	local registerVal18 = {}
	registerVal18.up = registerVal16
	registerVal15.navigation = registerVal18
	registerVal18 = {}
	registerVal18.up = registerVal17
	registerVal18.down = registerVal15
	registerVal16.navigation = registerVal18
	registerVal18 = {}
	registerVal18.down = registerVal16
	registerVal17.navigation = registerVal18
	registerVal18 = {}
	local registerVal19 = {}
	local function __FUNC_34F4_()
		registerVal1:setupElementClipCounter(1.000000)
		registerVal14:completeAnimation()
		registerVal1.buttons:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal14, {})
	end

	registerVal19.DefaultClip = __FUNC_34F4_
	registerVal18.DefaultState = registerVal19
	registerVal19 = {}
	local function __FUNC_35EE_()
		registerVal1:setupElementClipCounter(1.000000)
		registerVal14:completeAnimation()
		registerVal1.buttons:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal14, {})
	end

	registerVal19.DefaultClip = __FUNC_35EE_
	registerVal18.KBMouse = registerVal19
	registerVal1.clipsPerState = registerVal18
	local registerVal20 = {}
	local registerVal21 = {}
	registerVal21.stateName = "KBMouse"
	local function __FUNC_36EB_(arg1, arg2, arg3)
		local registerVal3 = IsPC()
		if registerVal3 then
			registerVal3 = IsMouse(arg0)
		end
		return registerVal3
	end

	registerVal21.condition = __FUNC_36EB_
	registerVal20 = {registerVal21}
	registerVal1:mergeStateConditions(registerVal20)
	if registerVal1.m_eventHandlers.input_source_changed then
		local function __FUNC_3753_(arg0, arg1)
			if not arg1.menu then
			end
			arg1.menu = registerVal1
			arg0:updateState(arg1)
			return registerVal1.m_eventHandlers.input_source_changed(arg0, arg1)
		end

		registerVal1:registerEventHandler("input_source_changed", __FUNC_3753_)
	else
		registerVal1:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal21 = Engine.GetModelForController(arg0)
	registerVal20 = Engine.GetModel(registerVal21, "LastInput")
	local function __FUNC_37DB_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal20, __FUNC_37DB_)
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_38F7_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_3948_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_38F7_, __FUNC_3948_, false)
	registerVal14:setModel(registerVal1.buttonModel, arg0)
	registerVal15.id = "Zombie"
	registerVal16.id = "Multiplayer"
	registerVal17.id = "Campaign"
	registerVal20 = {}
	registerVal20.name = "menu_loaded"
	registerVal20.controller = arg0
	registerVal1:processEvent(registerVal20)
	registerVal20 = {}
	registerVal20.name = "update_state"
	registerVal20.menu = registerVal1
	registerVal1:processEvent(registerVal20)
	registerVal18 = registerVal1:restoreState()
	if not registerVal18 then
		registerVal20 = {}
		registerVal20.name = "gain_focus"
		registerVal20.controller = arg0
		registerVal1.Campaign:processEvent(registerVal20)
	end
	local function __FUNC_3A45_(arg1)
		arg1.buttons:close()
		arg1.Zombie:close()
		arg1.Multiplayer:close()
		arg1.Campaign:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "FirstTimeDurangoDownloadSetting.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_3A45_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

