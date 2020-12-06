-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CodCaster.codcaster_options_slider_small")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.FooterButtonPrompt")
local function __FUNC_28E_(arg0, arg1)
	arg0.disableBlur = true
	arg0.disableDarkenElement = true
	arg0.animateInFromOffset = 396.000000
	local function __FUNC_3F7_(arg0)
		Engine.LockInput(arg1, false)
		Engine.SetUIActive(arg1, false)
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "close", __FUNC_3F7_)
	Engine.LockInput(arg1, true)
	Engine.SetUIActive(arg1, true)
end

LUI.hudMenuType.DemoOptionsSidebar = "hud"
local function __FUNC_490_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("DemoOptionsSidebar")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "DemoOptionsSidebar.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, true, -466.500000, 22.000000)
	registerVal3:setTopBottom(true, false, -42.000000, 775.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.950000)
	registerVal1:addElement(registerVal3)
	registerVal1.black = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, -466.500000, 22.000000)
	registerVal4:setTopBottom(true, false, 50.000000, 721.050000)
	registerVal4:setAlpha(0.750000)
	registerVal4:setImage(RegisterImage("uie_t7_codcaster_texturebacking"))
	registerVal1:addElement(registerVal4)
	registerVal1.texture = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(false, true, -457.750000, -230.750000)
	registerVal5:setTopBottom(true, false, 50.000000, 72.000000)
	registerVal5:setRGB(1.000000, 0.390000, 0.000000)
	registerVal5:setText(LocalizeToUpperString("DEMO_GENERAL_OPTIONS"))
	registerVal5:setTTF("fonts/escom.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal5)
	registerVal1.GeneralOptionsTitle = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, true, -456.000000, -446.180000)
	registerVal6:setTopBottom(true, false, 304.090000, 313.910000)
	registerVal6:setAlpha(0.600000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_gunsmith_arrow_white"))
	registerVal1:addElement(registerVal6)
	registerVal1.Arrow = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(false, true, -441.500000, -20.000000)
	registerVal7:setTopBottom(true, false, 296.000000, 318.000000)
	registerVal7:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal7)
	registerVal1.Hint = registerVal7
	local registerVal8 = LUI.UIList.new(registerVal1, arg0, 1.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal8:makeFocusable()
	registerVal8:setLeftRight(false, true, -473.500000, -23.500000)
	registerVal8:setTopBottom(true, false, 78.780000, 252.780000)
	registerVal8:setWidgetType(CoD.codcaster_options_slider_small)
	registerVal8:setVerticalCount(5.000000)
	registerVal8:setSpacing(1.000000)
	registerVal8:setVerticalCounter(CoD.verticalCounter)
	registerVal8:setDataSource("DemoOptionsButtonList")
	registerVal1:addElement(registerVal8)
	registerVal1.ButtonList = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(false, true, -457.750000, -230.750000)
	registerVal9:setTopBottom(true, false, 172.280000, 194.280000)
	registerVal9:setRGB(1.000000, 0.390000, 0.000000)
	registerVal9:setText(LocalizeToUpperString("DEMO_DIRECTOR_MODE_OPTIONS"))
	registerVal9:setTTF("fonts/escom.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal9)
	registerVal1.DirectorModeOptionsTitle = registerVal9
	local registerVal10 = CoD.FooterButtonPrompt.new(registerVal1, arg0)
	registerVal10:setLeftRight(false, true, -465.250000, -344.250000)
	registerVal10:setTopBottom(true, false, 670.000000, 702.000000)
	registerVal10.label:setText(Engine.Localize("MP_BACK"))
	registerVal10.keyPrompt.keybind:setText(Engine.Localize(""))
	local function __FUNC_14DB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg0, "Controller", "secondary_button_image", __FUNC_14DB_)
	registerVal1:addElement(registerVal10)
	registerVal1.BackBtnPrompt = registerVal10
	local function __FUNC_15B3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal8, "hintText", true, __FUNC_15B3_)
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_166A_()
		registerVal1:setupElementClipCounter(0.000000)
	end

	registerVal12.DefaultClip = __FUNC_166A_
	registerVal11.DefaultState = registerVal12
	registerVal1.clipsPerState = registerVal11
	local function __FUNC_16CA_(arg0, arg1, arg2, arg3)
		SetGlobalModelValueFalse("demo.showOptionsSidebar")
		UpdateGamerprofile(registerVal1, arg0, arg2)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_179B_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_16CA_, __FUNC_179B_, false)
	registerVal8.id = "ButtonList"
	local registerVal13 = {}
	registerVal13.name = "menu_loaded"
	registerVal13.controller = arg0
	registerVal1:processEvent(registerVal13)
	registerVal13 = {}
	registerVal13.name = "update_state"
	registerVal13.menu = registerVal1
	registerVal1:processEvent(registerVal13)
	registerVal11 = registerVal1:restoreState()
	if not registerVal11 then
		registerVal13 = {}
		registerVal13.name = "gain_focus"
		registerVal13.controller = arg0
		registerVal1.ButtonList:processEvent(registerVal13)
	end
	local function __FUNC_188C_(arg1)
		arg1.ButtonList:close()
		arg1.BackBtnPrompt:close()
		arg1.Hint:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "DemoOptionsSidebar.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_188C_)
	if __FUNC_28E_ then
		__FUNC_28E_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.DemoOptionsSidebar = __FUNC_490_
