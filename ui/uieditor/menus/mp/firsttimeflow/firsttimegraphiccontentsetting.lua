-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CharacterCustomization.list1ButtonNewStyle")
require("ui.uieditor.menus.MP.FirstTimeFlow.FirstTimeBrightnessSetting")
require("ui.uieditor.widgets.Footer.fe_LeftContainer_NOTLobby")
local function __FUNC_283_(arg0, arg1, arg2)
	if CoD.isDurango then
		arg0.XboxGamerTag:setText(Engine.Localize("XBOXLIVE_SIGNEDINAS", Engine.GetGamertagForController(0.000000)))
	else
		arg0.XboxGamerTag:setText("")
	end
end

local function __FUNC_3DB_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("FirstTimeGraphicContentSetting")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "FirstTimeGraphicContentSetting.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
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
	registerVal5:setText(Engine.Localize("MENU_GRAPHIC_CONTENT"))
	registerVal5:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal5)
	registerVal1.WelcomeTitle = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 467.240000, 1178.000000)
	registerVal6:setTopBottom(true, false, 201.450000, 220.450000)
	registerVal6:setText(Engine.Localize("MENU_GRAPHIC_CONTENT_ENABLE"))
	registerVal6:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal6)
	registerVal1.DescText = registerVal6
	local registerVal7 = CoD.list1ButtonNewStyle.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 467.240000, 747.240000)
	registerVal7:setTopBottom(true, false, 342.750000, 374.750000)
	registerVal7.btnDisplayText:setText(Engine.Localize("MENU_YES_CAPS"))
	registerVal7.btnDisplayTextStroke:setText(Engine.Localize("MENU_YES_CAPS"))
	local function __FUNC_1BDA_(arg1, arg2)
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

	registerVal7:registerEventHandler("gain_focus", __FUNC_1BDA_)
	local function __FUNC_1D6B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_1D6B_)
	local function __FUNC_1E3A_(arg0, arg1, arg2, arg3)
		SetProfileVar(arg2, "cg_mature", 1.000000)
		UpdateGamerprofile(registerVal1, arg0, arg2)
		OpenOverlay(registerVal1, "FirstTimeBrightnessSetting", arg2, "", "")
		return true
	end

	local function __FUNC_1F3E_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal7, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1E3A_, __FUNC_1F3E_, false)
	registerVal1:addElement(registerVal7)
	registerVal1.YesButton = registerVal7
	local registerVal8 = CoD.list1ButtonNewStyle.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 467.240000, 747.240000)
	registerVal8:setTopBottom(true, false, 387.750000, 419.750000)
	registerVal8.btnDisplayText:setText(Engine.Localize("MENU_NO_CAPS"))
	registerVal8.btnDisplayTextStroke:setText(Engine.Localize("MENU_NO_CAPS"))
	local function __FUNC_203A_(arg1, arg2)
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

	registerVal8:registerEventHandler("gain_focus", __FUNC_203A_)
	local function __FUNC_21CB_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("lose_focus", __FUNC_21CB_)
	local function __FUNC_229A_(arg0, arg1, arg2, arg3)
		SetProfileVar(arg2, "cg_mature", 0.000000)
		UpdateGamerprofile(registerVal1, arg0, arg2)
		OpenOverlay(registerVal1, "FirstTimeBrightnessSetting", arg2, "", "")
		return true
	end

	local function __FUNC_239E_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal8, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_229A_, __FUNC_239E_, false)
	registerVal1:addElement(registerVal8)
	registerVal1.NoButton = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, true, -20.860000, 25.140000)
	registerVal9:setTopBottom(false, false, -256.500000, -248.500000)
	registerVal9:setRGB(0.000000, 0.000000, 0.000000)
	registerVal9:setAlpha(0.700000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_frontend_barfocussolidfull"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal9:setShaderVector(0.000000, 0.041667, 0.500000, 0.000000, 0.000000)
	registerVal9:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.FEFocusBarSolid = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, -23.860000, 25.140000)
	registerVal10:setTopBottom(false, false, -256.500000, -248.500000)
	registerVal10:setRGB(1.000000, 0.900000, 0.800000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_barfocusfull"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal10:setShaderVector(0.000000, 0.041667, 0.500000, 0.000000, 0.000000)
	registerVal10:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal10)
	registerVal1.FEFocusBarAdd = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, true, -118.860000, 96.140000)
	registerVal11:setTopBottom(true, false, 102.290000, 116.710000)
	registerVal11:setRGB(1.000000, 0.990000, 0.000000)
	registerVal11:setAlpha(0.700000)
	registerVal11:setImage(RegisterImage("uie_t7_cp_hud_enemytarget_glow"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal11)
	registerVal1.Glow2 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, true, -21.000000, 25.000000)
	registerVal12:setTopBottom(false, false, 248.500000, 256.500000)
	registerVal12:setRGB(0.000000, 0.000000, 0.000000)
	registerVal12:setAlpha(0.700000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_barfocussolidfull"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal12:setShaderVector(0.000000, 0.041667, 0.500000, 0.000000, 0.000000)
	registerVal12:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal12)
	registerVal1.FEFocusBarSolid0 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, true, -24.000000, 25.000000)
	registerVal13:setTopBottom(false, false, 248.500000, 256.500000)
	registerVal13:setRGB(1.000000, 0.900000, 0.800000)
	registerVal13:setAlpha(0.990000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_frontend_barfocusfull"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal13:setShaderVector(0.000000, 0.041667, 0.500000, 0.000000, 0.000000)
	registerVal13:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal13)
	registerVal1.FEFocusBarAdd0 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, true, -119.000000, 96.000000)
	registerVal14:setTopBottom(true, false, 603.290000, 617.710000)
	registerVal14:setRGB(1.000000, 0.990000, 0.000000)
	registerVal14:setAlpha(0.700000)
	registerVal14:setXRot(180.000000)
	registerVal14:setImage(RegisterImage("uie_t7_cp_hud_enemytarget_glow"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal14)
	registerVal1.Glow20 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, -3.140000, 492.240000)
	registerVal15:setTopBottom(true, false, 128.860000, 433.710000)
	registerVal15:setAlpha(0.500000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_welcome_graphic"))
	registerVal15:setupUIStreamedImage(0.000000)
	registerVal1:addElement(registerVal15)
	registerVal1.NEWGRAPHICIMAGE = registerVal15
	local registerVal16 = CoD.fe_LeftContainer_NOTLobby.new(registerVal1, arg0)
	registerVal16:setLeftRight(true, false, 467.240000, 899.240000)
	registerVal16:setTopBottom(true, false, 571.290000, 603.290000)
	registerVal1:addElement(registerVal16)
	registerVal1.buttons = registerVal16
	local registerVal17 = LUI.UIText.new()
	registerVal17:setLeftRight(true, false, 467.240000, 688.240000)
	registerVal17:setTopBottom(true, false, 281.280000, 307.280000)
	registerVal17:setText(Engine.Localize("XboxGamerTag"))
	registerVal17:setTTF("fonts/default.ttf")
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal17)
	registerVal1.XboxGamerTag = registerVal17
	local registerVal18 = {}
	registerVal18.down = registerVal8
	registerVal7.navigation = registerVal18
	registerVal18 = {}
	registerVal18.up = registerVal7
	registerVal8.navigation = registerVal18
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_249A_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_24EC_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_249A_, __FUNC_24EC_, false)
	registerVal7.id = "YesButton"
	registerVal8.id = "NoButton"
	registerVal16:setModel(registerVal1.buttonModel, arg0)
	local registerVal20 = {}
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
		registerVal1.YesButton:processEvent(registerVal20)
	end
	local function __FUNC_25E0_(arg1)
		arg1.YesButton:close()
		arg1.NoButton:close()
		arg1.buttons:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "FirstTimeGraphicContentSetting.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_25E0_)
	if __FUNC_283_ then
		__FUNC_283_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.FirstTimeGraphicContentSetting = __FUNC_3DB_
