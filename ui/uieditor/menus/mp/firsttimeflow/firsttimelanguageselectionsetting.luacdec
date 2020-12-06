-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MP.FirstTimeFlow.FirstTimeLanguageSelectLanguageWidget")
require("ui.uieditor.widgets.MP.FirstTimeFlow.FirstTimeLanguageSelectionListWidget")
require("ui.uieditor.widgets.ButtonIcon")
local function __FUNC_288_(arg0, arg1)
	if CoD.isDurango then
		arg0.XboxGamerTag:setText(Engine.Localize("XBOXLIVE_SIGNEDINAS", Engine.GetGamertagForController(0.000000)))
	else
		arg0.XboxGamerTag:setText("")
	end
end

local function __FUNC_3E3_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("FirstTimeLanguageSelectionSetting")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "FirstTimeLanguageSelectionSetting.buttonPrompts")
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
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, -20.860000, 25.140000)
	registerVal5:setTopBottom(false, false, -256.500000, -248.500000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.700000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_barfocussolidfull"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal5:setShaderVector(0.000000, 0.041667, 0.500000, 0.000000, 0.000000)
	registerVal5:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.FEFocusBarSolid = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, -23.860000, 25.140000)
	registerVal6:setTopBottom(false, false, -256.500000, -248.500000)
	registerVal6:setRGB(1.000000, 0.900000, 0.800000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_frontend_barfocusfull"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal6:setShaderVector(0.000000, 0.041667, 0.500000, 0.000000, 0.000000)
	registerVal6:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.FEFocusBarAdd = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, -118.860000, 96.140000)
	registerVal7:setTopBottom(true, false, 102.290000, 116.710000)
	registerVal7:setRGB(1.000000, 0.990000, 0.000000)
	registerVal7:setAlpha(0.700000)
	registerVal7:setImage(RegisterImage("uie_t7_cp_hud_enemytarget_glow"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal7)
	registerVal1.Glow2 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, -21.000000, 25.000000)
	registerVal8:setTopBottom(false, false, 248.500000, 256.500000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal8:setAlpha(0.700000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_barfocussolidfull"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal8:setShaderVector(0.000000, 0.041667, 0.500000, 0.000000, 0.000000)
	registerVal8:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.FEFocusBarSolid0 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, true, -24.000000, 25.000000)
	registerVal9:setTopBottom(false, false, 248.500000, 256.500000)
	registerVal9:setRGB(1.000000, 0.900000, 0.800000)
	registerVal9:setAlpha(0.990000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_frontend_barfocusfull"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal9:setShaderVector(0.000000, 0.041667, 0.500000, 0.000000, 0.000000)
	registerVal9:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.FEFocusBarAdd0 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, -119.000000, 96.000000)
	registerVal10:setTopBottom(true, false, 603.290000, 617.710000)
	registerVal10:setRGB(1.000000, 0.990000, 0.000000)
	registerVal10:setAlpha(0.700000)
	registerVal10:setXRot(180.000000)
	registerVal10:setImage(RegisterImage("uie_t7_cp_hud_enemytarget_glow"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal10)
	registerVal1.Glow20 = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, 467.240000, 1216.000000)
	registerVal11:setTopBottom(true, false, 143.450000, 201.450000)
	registerVal11:setText(Engine.Localize("MENU_CHOOSE_LANGUAGE"))
	registerVal11:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal11)
	registerVal1.WelcomeTitle0 = registerVal11
	local registerVal12 = CoD.FirstTimeLanguageSelectLanguageWidget.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 457.240000, 651.240000)
	registerVal12:setTopBottom(true, false, 205.800000, 258.750000)
	registerVal12:setAlpha(0.000000)
	registerVal1:addElement(registerVal12)
	registerVal1.FirstTimeLanguageSelectLanguageWidget = registerVal12
	local registerVal13 = LUI.UIText.new()
	registerVal13:setLeftRight(true, false, 467.240000, 1178.000000)
	registerVal13:setTopBottom(true, false, 201.450000, 220.450000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setText(Engine.Localize(""))
	registerVal13:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal13)
	registerVal1.DescText = registerVal13
	local registerVal14 = LUI.UITightText.new()
	registerVal14:setLeftRight(true, false, 509.360000, 730.120000)
	registerVal14:setTopBottom(true, false, 578.000000, 597.000000)
	registerVal14:setText(Engine.Localize("MENU_SELECT"))
	registerVal14:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal1:addElement(registerVal14)
	registerVal1.ButtonPromptText = registerVal14
	local registerVal15 = LUI.UIText.new()
	registerVal15:setLeftRight(true, false, 473.240000, 694.240000)
	registerVal15:setTopBottom(true, false, 210.800000, 237.280000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setText(Engine.Localize("XboxGamerTag"))
	registerVal15:setTTF("fonts/default.ttf")
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal15)
	registerVal1.XboxGamerTag = registerVal15
	local registerVal16 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal16:makeFocusable()
	registerVal16:setLeftRight(true, false, 473.240000, 592.240000)
	registerVal16:setTopBottom(true, false, 308.750000, 408.750000)
	registerVal16:setDataSource("FirstTimeLanguageSelection")
	registerVal16:setWidgetType(CoD.FirstTimeLanguageSelectionListWidget)
	registerVal16:setVerticalCount(3.000000)
	local function __FUNC_1BC3_(arg1, arg2)
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

	registerVal16:registerEventHandler("gain_focus", __FUNC_1BC3_)
	local function __FUNC_1D53_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal16:registerEventHandler("lose_focus", __FUNC_1D53_)
	local function __FUNC_1E22_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_1E83_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal16, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1E22_, __FUNC_1E83_, false)
	registerVal1:addElement(registerVal16)
	registerVal1.buttonList = registerVal16
	local registerVal17 = CoD.ButtonIcon.new(registerVal1, arg0)
	registerVal17:setLeftRight(true, false, 479.650000, 504.830000)
	registerVal17:setTopBottom(true, false, 574.820000, 600.000000)
	local function __FUNC_1F73_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.buttonImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal17:subscribeToGlobalModel(arg0, "Controller", "primary_button_image", __FUNC_1F73_)
	local registerVal20 = {}
	local registerVal21 = {}
	registerVal21.stateName = "Visible"
	local function __FUNC_2045_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal21.condition = __FUNC_2045_
	registerVal20 = {registerVal21}
	registerVal17:mergeStateConditions(registerVal20)
	registerVal1:addElement(registerVal17)
	registerVal1.ButtonIcon = registerVal17
	local function __FUNC_2090_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_20E4_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_2090_, __FUNC_20E4_, false)
	registerVal16.id = "buttonList"
	registerVal20 = {}
	registerVal20.name = "menu_loaded"
	registerVal20.controller = arg0
	registerVal1:processEvent(registerVal20)
	registerVal20 = {}
	registerVal20.name = "update_state"
	registerVal20.menu = registerVal1
	registerVal1:processEvent(registerVal20)
	local registerVal18 = registerVal1:restoreState()
	if not registerVal18 then
		registerVal20 = {}
		registerVal20.name = "gain_focus"
		registerVal20.controller = arg0
		registerVal1.buttonList:processEvent(registerVal20)
	end
	local function __FUNC_21D8_(arg1)
		arg1.FirstTimeLanguageSelectLanguageWidget:close()
		arg1.buttonList:close()
		arg1.ButtonIcon:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "FirstTimeLanguageSelectionSetting.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_21D8_)
	if __FUNC_288_ then
		__FUNC_288_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.FirstTimeLanguageSelectionSetting = __FUNC_3E3_
