-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MP.FirstTimeFlow.WelcomeMenu_Button")
function TestHasOfflineProgression(arg0)
	local registerVal2 = Engine.IsCampaignModeZombies()
	if registerVal2 then
		registerVal2 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_CP_STATS_NIGHTMARE_OFFLINE)
	else
		registerVal2 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_CP_STATS_OFFLINE)
	end
	registerVal2 = registerVal2.completedFirstTimeFlow:get()
	if 0.000000 < registerVal2 then
		return true
	end
	return false
end

function LoadedEventHandler(arg0, arg1)
	local registerVal2 = CoD.isOnlineGame()
	registerVal2 = TestHasOfflineProgression(arg1.controller)
	if registerVal2 and registerVal2 then
		CoD.OverlayUtility.CreateOverlay(arg1.controller, arg0, "CampaignOfflineToOnlineWarning")
	end
end

local function __FUNC_541_(arg0, arg1)
	arg0:registerEventHandler("menu_opened", LoadedEventHandler)
end

local function __FUNC_5CB_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("CPWelcomeMenu")
	if __FUNC_541_ then
		__FUNC_541_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "CPWelcomeMenu.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.900000)
	registerVal1:addElement(registerVal3)
	registerVal1.background = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -0.500000, 1280.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 720.280000)
	registerVal4:setAlpha(0.900000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_welcome_bg"))
	registerVal1:addElement(registerVal4)
	registerVal1.TextureBackground = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 624.360000, 1191.540000)
	registerVal5:setTopBottom(true, false, 201.190000, 237.450000)
	registerVal5:setRGB(1.000000, 0.410000, 0.000000)
	registerVal5:setText(Engine.Localize("CPUI_WELCOME_TO_CAMPAIGN"))
	registerVal5:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal5)
	registerVal1.WelcomeTitle0 = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 626.360000, 1191.540000)
	registerVal6:setTopBottom(true, false, 237.450000, 256.450000)
	registerVal6:setYRot(1.000000)
	registerVal6:setText(Engine.Localize("CPUI_WELCOME_MESSAGE"))
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal6)
	registerVal1.TextBox00 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, -21.000000, 25.000000)
	registerVal7:setTopBottom(false, false, -254.000000, -246.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setAlpha(0.700000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_barfocussolidfull"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal7:setShaderVector(0.000000, 0.003017, 0.500000, 0.000000, 0.000000)
	registerVal7:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.FEFocusBarSolid = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, -24.000000, 25.000000)
	registerVal8:setTopBottom(false, false, -254.000000, -246.000000)
	registerVal8:setRGB(1.000000, 0.900000, 0.800000)
	registerVal8:setAlpha(0.990000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_barfocusfull"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal8:setShaderVector(0.000000, 0.003010, 0.500000, 0.000000, 0.000000)
	registerVal8:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.FEFocusBarAdd = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 134.480000, 771.870000)
	registerVal9:setTopBottom(true, false, 86.560000, 724.280000)
	registerVal9:setAlpha(0.900000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_welcome_cp"))
	registerVal1:addElement(registerVal9)
	registerVal1.CPImage = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, -119.000000, 96.000000)
	registerVal10:setTopBottom(true, false, 102.790000, 117.210000)
	registerVal10:setRGB(1.000000, 0.990000, 0.000000)
	registerVal10:setAlpha(0.700000)
	registerVal10:setImage(RegisterImage("uie_t7_cp_hud_enemytarget_glow"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal10)
	registerVal1.Glow2 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, true, -24.000000, 25.000000)
	registerVal11:setTopBottom(false, false, 248.500000, 256.500000)
	registerVal11:setRGB(1.000000, 0.900000, 0.800000)
	registerVal11:setAlpha(0.990000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_frontend_barfocusfull"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal11:setShaderVector(0.000000, 0.003010, 0.500000, 0.000000, 0.000000)
	registerVal11:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal11)
	registerVal1.FEFocusBarAdd0 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, true, -119.000000, 96.000000)
	registerVal12:setTopBottom(true, false, 603.290000, 617.710000)
	registerVal12:setRGB(1.000000, 0.990000, 0.000000)
	registerVal12:setAlpha(0.700000)
	registerVal12:setXRot(180.000000)
	registerVal12:setImage(RegisterImage("uie_t7_cp_hud_enemytarget_glow"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal12)
	registerVal1.Glow20 = registerVal12
	local registerVal13 = CoD.WelcomeMenu_Button.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 670.360000, 759.870000)
	registerVal13:setTopBottom(true, false, 497.360000, 542.360000)
	registerVal13.TextBox2:setText(Engine.Localize("MENU_CONTINUE_CAPS"))
	registerVal1:addElement(registerVal13)
	registerVal1.WelcomeMenuButton0 = registerVal13
	local function __FUNC_178D_(arg0, arg1, arg2, arg3)
		OpenGenders(registerVal1, arg2, arg1)
		return true
	end

	local function __FUNC_17E9_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_178D_, __FUNC_17E9_, false)
	local registerVal16 = {}
	registerVal16.name = "menu_loaded"
	registerVal16.controller = arg0
	registerVal1:processEvent(registerVal16)
	registerVal16 = {}
	registerVal16.name = "update_state"
	registerVal16.menu = registerVal1
	registerVal1:processEvent(registerVal16)
	local function __FUNC_18DB_(arg1)
		arg1.WelcomeMenuButton0:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "CPWelcomeMenu.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_18DB_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.CPWelcomeMenu = __FUNC_5CB_
