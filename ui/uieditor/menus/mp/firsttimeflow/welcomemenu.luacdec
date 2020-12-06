-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShader")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveStroke")
require("ui.uieditor.widgets.MP.FirstTimeFlow.WelcomeMenu_Button")
function LUI.createMenu.WelcomeMenu(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("WelcomeMenu")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "WelcomeMenu.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
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
	registerVal8:setLeftRight(true, false, 629.870000, 1195.060000)
	registerVal8:setTopBottom(true, false, 144.150000, 196.450000)
	registerVal8:setRGB(1.000000, 0.410000, 0.000000)
	registerVal8:setText(Engine.Localize("MENU_WELCOME_TO_MP"))
	registerVal8:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal8)
	registerVal1.WelcomeTitle = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, false, 629.870000, 1195.060000)
	registerVal9:setTopBottom(true, false, 201.450000, 219.450000)
	registerVal9:setText(Engine.Localize("MENU_WELCOME_TO_MP_DESC"))
	registerVal9:setTTF("fonts/escom.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal9)
	registerVal1.TextBox0 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 621.790000, 740.550000)
	registerVal10:setTopBottom(true, false, 347.470000, 466.230000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setImage(RegisterImage("uie_img_t7_menu_welcome_icontokenxlarge"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal10)
	registerVal1.Token = registerVal10
	local registerVal11 = CoD.cac_ButtonBoxLrgInactiveStroke.new(registerVal1, arg0)
	registerVal11:setLeftRight(false, false, -89.110000, 40.150000)
	registerVal11:setTopBottom(false, false, -17.000000, 110.700000)
	registerVal11:setAlpha(0.000000)
	registerVal1:addElement(registerVal11)
	registerVal1.TokenBox = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, true, -21.000000, 25.000000)
	registerVal12:setTopBottom(false, false, -254.000000, -246.000000)
	registerVal12:setRGB(0.000000, 0.000000, 0.000000)
	registerVal12:setAlpha(0.700000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_barfocussolidfull"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal12:setShaderVector(0.000000, 0.003017, 0.500000, 0.000000, 0.000000)
	registerVal12:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal12)
	registerVal1.FEFocusBarSolid = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, true, -24.000000, 25.000000)
	registerVal13:setTopBottom(false, false, -254.000000, -246.000000)
	registerVal13:setRGB(1.000000, 0.900000, 0.800000)
	registerVal13:setAlpha(0.990000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_frontend_barfocusfull"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal13:setShaderVector(0.000000, 0.003010, 0.500000, 0.000000, 0.000000)
	registerVal13:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal13)
	registerVal1.FEFocusBarAdd = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, true, -119.000000, 96.000000)
	registerVal14:setTopBottom(true, false, 102.790000, 117.210000)
	registerVal14:setRGB(1.000000, 0.990000, 0.000000)
	registerVal14:setAlpha(0.700000)
	registerVal14:setImage(RegisterImage("uie_t7_cp_hud_enemytarget_glow"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal14)
	registerVal1.Glow2 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, true, -21.000000, 25.000000)
	registerVal15:setTopBottom(false, false, 248.500000, 256.500000)
	registerVal15:setRGB(0.000000, 0.000000, 0.000000)
	registerVal15:setAlpha(0.700000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_frontend_barfocussolidfull"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal15:setShaderVector(0.000000, 0.003017, 0.500000, 0.000000, 0.000000)
	registerVal15:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal15)
	registerVal1.FEFocusBarSolid0 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, true, -24.000000, 25.000000)
	registerVal16:setTopBottom(false, false, 248.500000, 256.500000)
	registerVal16:setRGB(1.000000, 0.900000, 0.800000)
	registerVal16:setAlpha(0.990000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_frontend_barfocusfull"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal16:setShaderVector(0.000000, 0.003010, 0.500000, 0.000000, 0.000000)
	registerVal16:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal16)
	registerVal1.FEFocusBarAdd0 = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(true, true, -119.000000, 96.000000)
	registerVal17:setTopBottom(true, false, 603.290000, 617.710000)
	registerVal17:setRGB(1.000000, 0.990000, 0.000000)
	registerVal17:setAlpha(0.700000)
	registerVal17:setXRot(180.000000)
	registerVal17:setImage(RegisterImage("uie_t7_cp_hud_enemytarget_glow"))
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal17)
	registerVal1.Glow20 = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(true, false, 36.500000, 584.380000)
	registerVal18:setTopBottom(true, false, 101.000000, 648.880000)
	registerVal18:setAlpha(0.000000)
	registerVal18:setImage(RegisterImage("uie_t7_menu_welcome_characters"))
	registerVal1:addElement(registerVal18)
	registerVal1.Characters = registerVal18
	local registerVal19 = CoD.WelcomeMenu_Button.new(registerVal1, arg0)
	registerVal19:setLeftRight(true, false, 672.730000, 807.730000)
	registerVal19:setTopBottom(true, false, 545.450000, 590.450000)
	registerVal19.TextBox2:setText(Engine.Localize("MENU_LETS_GO"))
	registerVal1:addElement(registerVal19)
	registerVal1.WelcomeMenuButton0 = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(true, false, 134.460000, 441.340000)
	registerVal20:setTopBottom(true, false, 296.000000, 430.600000)
	registerVal20:setAlpha(0.950000)
	registerVal20:setImage(RegisterImage("uie_t7_menu_welcome_bo3logo"))
	registerVal1:addElement(registerVal20)
	registerVal1.logo = registerVal20
	local registerVal21 = {}
	local registerVal22 = {}
	local function __FUNC_1D01_()
		registerVal1:setupElementClipCounter(0.000000)
	end

	registerVal22.DefaultClip = __FUNC_1D01_
	registerVal21.DefaultState = registerVal22
	registerVal22 = {}
	local function __FUNC_1D62_()
		registerVal1:setupElementClipCounter(0.000000)
	end

	registerVal22.DefaultClip = __FUNC_1D62_
	registerVal21.KeyboardAndMouse = registerVal22
	registerVal22 = {}
	local function __FUNC_1DC2_()
		registerVal1:setupElementClipCounter(0.000000)
	end

	registerVal22.DefaultClip = __FUNC_1DC2_
	registerVal21.Gamepad = registerVal22
	registerVal1.clipsPerState = registerVal21
	local registerVal23 = {}
	local registerVal24 = {}
	registerVal24.stateName = "KeyboardAndMouse"
	local function __FUNC_1E22_(arg1, arg2, arg3)
		local registerVal3 = IsPC()
		if registerVal3 then
			registerVal3 = IsGamepad(arg0)
		end
		return (not registerVal3)
	end

	registerVal24.condition = __FUNC_1E22_
	local registerVal25 = {}
	registerVal25.stateName = "Gamepad"
	local function __FUNC_1E91_(arg1, arg2, arg3)
		return IsGamepad(arg0)
	end

	registerVal25.condition = __FUNC_1E91_
	registerVal23 = {registerVal24, registerVal25}
	registerVal1:mergeStateConditions(registerVal23)
	if registerVal1.m_eventHandlers.input_source_changed then
		local function __FUNC_1EDF_(arg0, arg1)
			if not arg1.menu then
			end
			arg1.menu = registerVal1
			arg0:updateState(arg1)
			return registerVal1.m_eventHandlers.input_source_changed(arg0, arg1)
		end

		registerVal1:registerEventHandler("input_source_changed", __FUNC_1EDF_)
	else
		registerVal1:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal24 = Engine.GetModelForController(arg0)
	registerVal23 = Engine.GetModel(registerVal24, "LastInput")
	local function __FUNC_1F67_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal23, __FUNC_1F67_)
	local function __FUNC_2083_(arg0, arg1, arg2, arg3)
		OpenChooseCharacterFromFirstTimeFlow(registerVal1, arg0, arg2, "", arg1)
		PlaySoundSetSound(registerVal1, "list_action")
		return true
	end

	local function __FUNC_2148_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2083_, __FUNC_2148_, false)
	registerVal23 = {}
	registerVal23.name = "menu_loaded"
	registerVal23.controller = arg0
	registerVal1:processEvent(registerVal23)
	registerVal23 = {}
	registerVal23.name = "update_state"
	registerVal23.menu = registerVal1
	registerVal1:processEvent(registerVal23)
	local function __FUNC_223B_(arg1)
		arg1.FEButtonPanel:close()
		arg1.TokenBox:close()
		arg1.WelcomeMenuButton0:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "WelcomeMenu.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_223B_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

