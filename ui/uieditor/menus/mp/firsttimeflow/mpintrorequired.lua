-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShader")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveStroke")
require("ui.uieditor.widgets.CharacterCustomization.list1ButtonNewStyle")
require("ui.uieditor.widgets.Footer.fe_LeftContainer_NOTLobby")
function LUI.createMenu.MPIntroRequired(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("MPIntroRequired")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "MPIntroRequired.buttonPrompts")
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
	registerVal6:setImage(RegisterImage("uie_t7_menu_welcome_bg2"))
	registerVal1:addElement(registerVal6)
	registerVal1.TextureBackground = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, -1.770000, 631.790000)
	registerVal7:setTopBottom(true, false, 111.520000, 610.440000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_welcome_characters3"))
	registerVal1:addElement(registerVal7)
	registerVal1.Characters2b = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 629.790000, 1206.920000)
	registerVal8:setTopBottom(true, false, 192.150000, 232.450000)
	registerVal8:setRGB(1.000000, 0.410000, 0.000000)
	registerVal8:setText(Engine.Localize("MPUI_MP_INTRO_REQUIRED"))
	registerVal8:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal8)
	registerVal1.WelcomeTitle = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, false, 629.790000, 1194.970000)
	registerVal9:setTopBottom(true, false, 237.450000, 256.450000)
	registerVal9:setText(Engine.Localize("MPUI_MP_INTRO_REQUIRED_DESC"))
	registerVal9:setTTF("fonts/escom.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal9)
	registerVal1.TextBox0 = registerVal9
	local registerVal10 = CoD.cac_ButtonBoxLrgInactiveStroke.new(registerVal1, arg0)
	registerVal10:setLeftRight(false, false, -89.110000, 40.150000)
	registerVal10:setTopBottom(false, false, -17.000000, 110.700000)
	registerVal10:setAlpha(0.000000)
	registerVal1:addElement(registerVal10)
	registerVal1.TokenBox = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, true, -21.000000, 25.000000)
	registerVal11:setTopBottom(false, false, -254.000000, -246.000000)
	registerVal11:setRGB(0.000000, 0.000000, 0.000000)
	registerVal11:setAlpha(0.700000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_frontend_barfocussolidfull"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal11:setShaderVector(0.000000, 0.041667, 0.500000, 0.000000, 0.000000)
	registerVal11:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal11)
	registerVal1.FEFocusBarSolid = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, true, -24.000000, 25.000000)
	registerVal12:setTopBottom(false, false, -254.000000, -246.000000)
	registerVal12:setRGB(1.000000, 0.900000, 0.800000)
	registerVal12:setAlpha(0.990000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_barfocusfull"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal12:setShaderVector(0.000000, 0.041667, 0.500000, 0.000000, 0.000000)
	registerVal12:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal12)
	registerVal1.FEFocusBarAdd = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, true, -119.000000, 96.000000)
	registerVal13:setTopBottom(true, false, 102.790000, 117.210000)
	registerVal13:setRGB(1.000000, 0.990000, 0.000000)
	registerVal13:setAlpha(0.700000)
	registerVal13:setImage(RegisterImage("uie_t7_cp_hud_enemytarget_glow"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal13)
	registerVal1.Glow2 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, true, -21.000000, 25.000000)
	registerVal14:setTopBottom(false, false, 248.500000, 256.500000)
	registerVal14:setRGB(0.000000, 0.000000, 0.000000)
	registerVal14:setAlpha(0.700000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_frontend_barfocussolidfull"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal14:setShaderVector(0.000000, 0.041667, 0.500000, 0.000000, 0.000000)
	registerVal14:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal14)
	registerVal1.FEFocusBarSolid0 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, true, -24.000000, 25.000000)
	registerVal15:setTopBottom(false, false, 248.500000, 256.500000)
	registerVal15:setRGB(1.000000, 0.900000, 0.800000)
	registerVal15:setAlpha(0.990000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_frontend_barfocusfull"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal15:setShaderVector(0.000000, 0.041667, 0.500000, 0.000000, 0.000000)
	registerVal15:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal15)
	registerVal1.FEFocusBarAdd0 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, true, -119.000000, 96.000000)
	registerVal16:setTopBottom(true, false, 603.290000, 617.710000)
	registerVal16:setRGB(1.000000, 0.990000, 0.000000)
	registerVal16:setAlpha(0.700000)
	registerVal16:setXRot(180.000000)
	registerVal16:setImage(RegisterImage("uie_t7_cp_hud_enemytarget_glow"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal16)
	registerVal1.Glow20 = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(true, false, 36.500000, 584.380000)
	registerVal17:setTopBottom(true, false, 101.000000, 648.880000)
	registerVal17:setAlpha(0.000000)
	registerVal17:setImage(RegisterImage("uie_t7_menu_welcome_characters"))
	registerVal1:addElement(registerVal17)
	registerVal1.Characters = registerVal17
	local registerVal18 = CoD.list1ButtonNewStyle.new(registerVal1, arg0)
	registerVal18:setLeftRight(true, false, 639.750000, 919.750000)
	registerVal18:setTopBottom(true, false, 440.750000, 472.750000)
	registerVal18.btnDisplayText:setText(Engine.Localize("MPUI_START_MULTIPLAYER_INTRODUCTION"))
	registerVal18.btnDisplayTextStroke:setText(Engine.Localize("MPUI_START_MULTIPLAYER_INTRODUCTION"))
	local function __FUNC_1FDE_(arg1, arg2)
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

	registerVal18:registerEventHandler("gain_focus", __FUNC_1FDE_)
	local function __FUNC_216F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal18:registerEventHandler("lose_focus", __FUNC_216F_)
	local function __FUNC_223E_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		OpenMPFirstTimeFlow(registerVal1, arg0, arg2, "goBackFirst", arg1)
		return true
	end

	local function __FUNC_22DE_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal18, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_223E_, __FUNC_22DE_, false)
	registerVal1:addElement(registerVal18)
	registerVal1.StartIntroButton = registerVal18
	local registerVal19 = CoD.list1ButtonNewStyle.new(registerVal1, arg0)
	registerVal19:setLeftRight(true, false, 639.750000, 919.750000)
	registerVal19:setTopBottom(true, false, 485.750000, 517.750000)
	registerVal19.btnDisplayText:setText(Engine.Localize("MENU_CANCEL"))
	registerVal19.btnDisplayTextStroke:setText(Engine.Localize("MENU_CANCEL"))
	local function __FUNC_23DA_(arg1, arg2)
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

	registerVal19:registerEventHandler("gain_focus", __FUNC_23DA_)
	local function __FUNC_256B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal19:registerEventHandler("lose_focus", __FUNC_256B_)
	local function __FUNC_263A_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_268C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal19, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_263A_, __FUNC_268C_, false)
	registerVal1:addElement(registerVal19)
	registerVal1.CancelButton = registerVal19
	local registerVal20 = CoD.fe_LeftContainer_NOTLobby.new(registerVal1, arg0)
	registerVal20:setLeftRight(true, false, 547.890000, 979.890000)
	registerVal20:setTopBottom(false, true, -103.500000, -71.500000)
	registerVal1:addElement(registerVal20)
	registerVal1.buttons = registerVal20
	local registerVal21 = {}
	registerVal21.down = registerVal19
	registerVal18.navigation = registerVal21
	registerVal21 = {}
	registerVal21.up = registerVal18
	registerVal19.navigation = registerVal21
	registerVal21 = {}
	local registerVal22 = {}
	local function __FUNC_278A_()
		registerVal1:setupElementClipCounter(0.000000)
	end

	registerVal22.DefaultClip = __FUNC_278A_
	registerVal21.DefaultState = registerVal22
	registerVal22 = {}
	local function __FUNC_27EA_()
		registerVal1:setupElementClipCounter(0.000000)
	end

	registerVal22.DefaultClip = __FUNC_27EA_
	registerVal21.KeyboardAndMouse = registerVal22
	registerVal22 = {}
	local function __FUNC_284A_()
		registerVal1:setupElementClipCounter(0.000000)
	end

	registerVal22.DefaultClip = __FUNC_284A_
	registerVal21.Gamepad = registerVal22
	registerVal1.clipsPerState = registerVal21
	local registerVal23 = {}
	local registerVal24 = {}
	registerVal24.stateName = "KeyboardAndMouse"
	local function __FUNC_28AA_(arg1, arg2, arg3)
		local registerVal3 = IsPC()
		if registerVal3 then
			registerVal3 = IsGamepad(arg0)
		end
		return (not registerVal3)
	end

	registerVal24.condition = __FUNC_28AA_
	local registerVal25 = {}
	registerVal25.stateName = "Gamepad"
	local function __FUNC_2919_(arg1, arg2, arg3)
		return IsGamepad(arg0)
	end

	registerVal25.condition = __FUNC_2919_
	registerVal23 = {registerVal24, registerVal25}
	registerVal1:mergeStateConditions(registerVal23)
	if registerVal1.m_eventHandlers.input_source_changed then
		local function __FUNC_2967_(arg0, arg1)
			if not arg1.menu then
			end
			arg1.menu = registerVal1
			arg0:updateState(arg1)
			return registerVal1.m_eventHandlers.input_source_changed(arg0, arg1)
		end

		registerVal1:registerEventHandler("input_source_changed", __FUNC_2967_)
	else
		registerVal1:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal24 = Engine.GetModelForController(arg0)
	registerVal23 = Engine.GetModel(registerVal24, "LastInput")
	local function __FUNC_29EF_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal23, __FUNC_29EF_)
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_2B0B_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_2B5C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_2B0B_, __FUNC_2B5C_, false)
	registerVal18.id = "StartIntroButton"
	registerVal19.id = "CancelButton"
	registerVal20:setModel(registerVal1.buttonModel, arg0)
	registerVal23 = {}
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
		registerVal1.StartIntroButton:processEvent(registerVal23)
	end
	local function __FUNC_2C50_(arg1)
		arg1.FEButtonPanel:close()
		arg1.TokenBox:close()
		arg1.StartIntroButton:close()
		arg1.CancelButton:close()
		arg1.buttons:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "MPIntroRequired.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2C50_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

