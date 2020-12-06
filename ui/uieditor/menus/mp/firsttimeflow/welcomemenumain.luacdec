-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShader")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveStroke")
require("ui.uieditor.widgets.MP.FirstTimeFlow.WelcomeMenu_Button")
require("ui.uieditor.menus.MP.FirstTimeFlow.FirstTimeBrightnessSetting")
require("ui.uieditor.menus.MP.FirstTimeFlow.FirstTimeGraphicContentSetting")
function LUI.createMenu.WelcomeMenuMain(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("WelcomeMenuMain")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "WelcomeMenuMain.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.900000)
	registerVal1:addElement(registerVal3)
	registerVal1.background = registerVal3
	local registerVal4 = CoD.FE_ButtonPanelShader.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, true, -24.000000, 21.000000)
	registerVal4:setTopBottom(true, true, 105.000000, -105.000000)
	registerVal4:setRGB(0.380000, 0.380000, 0.380000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_2"))
	registerVal4:setShaderVector(0.000000, 30.000000, 10.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.FEButtonPanel = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 105.000000, -107.500000)
	registerVal5:setRGB(0.100000, 0.100000, 0.100000)
	registerVal5:setAlpha(0.700000)
	registerVal1:addElement(registerVal5)
	registerVal1.Black = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -0.500000, 1280.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 720.280000)
	registerVal6:setAlpha(0.900000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_welcome_bg"))
	registerVal1:addElement(registerVal6)
	registerVal1.TextureBackground = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 619.530000, 1212.710000)
	registerVal7:setTopBottom(true, false, 201.190000, 237.450000)
	registerVal7:setRGB(1.000000, 0.410000, 0.000000)
	registerVal7:setText(Engine.Localize("MENU_SETUP_CAPS"))
	registerVal7:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal7)
	registerVal1.WelcomeTitle = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 621.530000, 1186.710000)
	registerVal8:setTopBottom(true, false, 237.450000, 256.450000)
	registerVal8:setYRot(1.000000)
	registerVal8:setText(Engine.Localize("MENU_WELCOME_MENU_DESC"))
	registerVal8:setTTF("fonts/escom.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal8)
	registerVal1.TextBox0 = registerVal8
	local registerVal9 = CoD.cac_ButtonBoxLrgInactiveStroke.new(registerVal1, arg0)
	registerVal9:setLeftRight(false, false, -89.110000, 40.150000)
	registerVal9:setTopBottom(false, false, -17.000000, 110.700000)
	registerVal9:setAlpha(0.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.TokenBox = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, -21.000000, 25.000000)
	registerVal10:setTopBottom(false, false, -254.000000, -246.000000)
	registerVal10:setRGB(0.000000, 0.000000, 0.000000)
	registerVal10:setAlpha(0.700000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_barfocussolidfull"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal10:setShaderVector(0.000000, 0.003017, 0.500000, 0.000000, 0.000000)
	registerVal10:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal10)
	registerVal1.FEFocusBarSolid = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, true, -24.000000, 25.000000)
	registerVal11:setTopBottom(false, false, -254.000000, -246.000000)
	registerVal11:setRGB(1.000000, 0.900000, 0.800000)
	registerVal11:setAlpha(0.990000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_frontend_barfocusfull"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal11:setShaderVector(0.000000, 0.003010, 0.500000, 0.000000, 0.000000)
	registerVal11:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal11)
	registerVal1.FEFocusBarAdd = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, true, -119.000000, 96.000000)
	registerVal12:setTopBottom(true, false, 102.790000, 117.210000)
	registerVal12:setRGB(1.000000, 0.990000, 0.000000)
	registerVal12:setAlpha(0.700000)
	registerVal12:setImage(RegisterImage("uie_t7_cp_hud_enemytarget_glow"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal12)
	registerVal1.Glow2 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, true, -21.000000, 25.000000)
	registerVal13:setTopBottom(false, false, 248.500000, 256.500000)
	registerVal13:setRGB(0.000000, 0.000000, 0.000000)
	registerVal13:setAlpha(0.700000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_frontend_barfocussolidfull"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal13:setShaderVector(0.000000, 0.003017, 0.500000, 0.000000, 0.000000)
	registerVal13:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal13)
	registerVal1.FEFocusBarSolid0 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, true, -24.000000, 25.000000)
	registerVal14:setTopBottom(false, false, 248.500000, 256.500000)
	registerVal14:setRGB(1.000000, 0.900000, 0.800000)
	registerVal14:setAlpha(0.990000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_frontend_barfocusfull"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal14:setShaderVector(0.000000, 0.003010, 0.500000, 0.000000, 0.000000)
	registerVal14:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal14)
	registerVal1.FEFocusBarAdd0 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, true, -119.000000, 96.000000)
	registerVal15:setTopBottom(true, false, 603.290000, 617.710000)
	registerVal15:setRGB(1.000000, 0.990000, 0.000000)
	registerVal15:setAlpha(0.700000)
	registerVal15:setXRot(180.000000)
	registerVal15:setImage(RegisterImage("uie_t7_cp_hud_enemytarget_glow"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal15)
	registerVal1.Glow20 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, 14.380000, 621.530000)
	registerVal16:setTopBottom(true, false, 112.000000, 605.300000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_welcome_bo3banner"))
	registerVal1:addElement(registerVal16)
	registerVal1.Character = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(true, false, 180.460000, 459.460000)
	registerVal17:setTopBottom(true, false, 315.960000, 438.330000)
	registerVal17:setAlpha(0.000000)
	registerVal17:setImage(RegisterImage("uie_t7_menu_welcome_bo3logo"))
	registerVal1:addElement(registerVal17)
	registerVal1.logo = registerVal17
	local registerVal18 = CoD.WelcomeMenu_Button.new(registerVal1, arg0)
	registerVal18:setLeftRight(true, false, 663.680000, 797.190000)
	registerVal18:setTopBottom(true, false, 498.360000, 543.360000)
	registerVal18.TextBox2:setText(Engine.Localize("MENU_WELCOME_MENU_GOT_IT"))
	local function __FUNC_1A2E_(arg1, arg2)
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

	registerVal18:registerEventHandler("gain_focus", __FUNC_1A2E_)
	local function __FUNC_1BBF_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal18:registerEventHandler("lose_focus", __FUNC_1BBF_)
	local function __FUNC_1C8E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsBooleanDvarSet("ui_execdemo_beta")
		if registerVal4 then
			GoBackAndOpenOverlayOnParent(registerVal1, "FirstTimeBrightnessSetting", arg2)
			return true
		else
			GoBackAndOpenOverlayOnParent(registerVal1, "FirstTimeGraphicContentSetting", arg2)
			return true
		end
	end

	local function __FUNC_1DAE_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal18, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1C8E_, __FUNC_1DAE_, false)
	registerVal1:addElement(registerVal18)
	registerVal1.WelcomeMenuButton0 = registerVal18
	local function __FUNC_1E9F_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_1EF0_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1E9F_, __FUNC_1EF0_, false)
	local registerVal21 = {}
	registerVal21.name = "menu_loaded"
	registerVal21.controller = arg0
	registerVal1:processEvent(registerVal21)
	registerVal21 = {}
	registerVal21.name = "update_state"
	registerVal21.menu = registerVal1
	registerVal1:processEvent(registerVal21)
	local function __FUNC_1FE4_(arg1)
		arg1.FEButtonPanel:close()
		arg1.TokenBox:close()
		arg1.WelcomeMenuButton0:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "WelcomeMenuMain.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1FE4_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

