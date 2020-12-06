-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Demo.DemoSideBarButton")
local function __FUNC_203_(arg0, arg1)
	arg0.disableBlur = true
	arg0.disableDarkenElement = true
	arg0.animateInFromOffset = 355.000000
	if arg0.HintText and arg0.ButtonList and arg0.ButtonList.requestedRowCount <= 3.000000 then
		arg0.HintText:setTopBottom(true, false, 344.000000, (344.000000 + 18.000000))
	end
end

LUI.hudMenuType.TimelineEditorFilmOptions = "hud"
local function __FUNC_369_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("TimelineEditorFilmOptions")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "TimelineEditorFilmOptions.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, true, -333.000000, 0.000000)
	registerVal3:setTopBottom(true, false, -38.000000, 779.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.920000)
	registerVal1:addElement(registerVal3)
	registerVal1.black = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, true, -304.090000, -77.090000)
	registerVal4:setTopBottom(true, false, 130.000000, 156.000000)
	registerVal4:setRGB(1.000000, 0.390000, 0.000000)
	registerVal4:setText(Engine.Localize("MENU_OPTIONS_CAPS"))
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal4)
	registerVal1.Title = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(false, true, -294.000000, -82.000000)
	registerVal5:setTopBottom(true, false, 514.000000, 532.000000)
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal5)
	registerVal1.HintText = registerVal5
	local registerVal6 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(false, true, -307.000000, -82.000000)
	registerVal6:setTopBottom(true, false, 168.000000, 478.000000)
	registerVal6:setWidgetType(CoD.DemoSideBarButton)
	registerVal6:setVerticalCount(6.000000)
	registerVal6:setDataSource("DemoFilmOptionsButtonList")
	local function __FUNC_FC8_(arg1, arg2)
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

	registerVal6:registerEventHandler("gain_focus", __FUNC_FC8_)
	local function __FUNC_115B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_115B_)
	local function __FUNC_122A_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal1, arg0, arg2)
		GoBack(registerVal1, arg2)
		SetGlobalModelValueFalse("demo.showFilmOptionsSidebar")
		return true
	end

	local function __FUNC_12FE_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal6, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_122A_, __FUNC_12FE_, false)
	registerVal1:addElement(registerVal6)
	registerVal1.ButtonList = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, true, -307.000000, -297.180000)
	registerVal7:setTopBottom(true, false, 518.090000, 527.910000)
	registerVal7:setAlpha(0.600000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_gunsmith_arrow_white"))
	registerVal1:addElement(registerVal7)
	registerVal1.Arrow = registerVal7
	local function __FUNC_13EF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal6, "hintText", true, __FUNC_13EF_)
	local function __FUNC_14A6_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		SetGlobalModelValueFalse("demo.showFilmOptionsSidebar")
		return true
	end

	local function __FUNC_154B_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "O", __FUNC_14A6_, __FUNC_154B_, false)
	registerVal6.id = "ButtonList"
	local registerVal10 = {}
	registerVal10.name = "menu_loaded"
	registerVal10.controller = arg0
	registerVal1:processEvent(registerVal10)
	registerVal10 = {}
	registerVal10.name = "update_state"
	registerVal10.menu = registerVal1
	registerVal1:processEvent(registerVal10)
	local registerVal8 = registerVal1:restoreState()
	if not registerVal8 then
		registerVal10 = {}
		registerVal10.name = "gain_focus"
		registerVal10.controller = arg0
		registerVal1.ButtonList:processEvent(registerVal10)
	end
	local function __FUNC_1645_(arg1)
		arg1.ButtonList:close()
		arg1.HintText:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "TimelineEditorFilmOptions.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1645_)
	if __FUNC_203_ then
		__FUNC_203_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.TimelineEditorFilmOptions = __FUNC_369_
