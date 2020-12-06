-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Demo.DemoSideBarButton")
require("ui.uieditor.widgets.FooterButtonPrompt")
local function __FUNC_237_(arg0, arg1)
	arg0.disableBlur = true
	arg0.disableDarkenElement = true
	arg0.animateInFromOffset = -355.000000
end

LUI.hudMenuType.ChooseModeSidebar = "hud"
local function __FUNC_2C3_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("ChooseModeSidebar")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "ChooseModeSidebar.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -58.000000, 275.000000)
	registerVal3:setTopBottom(true, false, -42.000000, 775.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.920000)
	registerVal1:addElement(registerVal3)
	registerVal1.black = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 35.000000, 262.000000)
	registerVal4:setTopBottom(true, false, 130.000000, 156.000000)
	registerVal4:setRGB(1.000000, 0.390000, 0.000000)
	registerVal4:setText(LocalizeToUpperString("DEMO_THEATER_MODE"))
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal4)
	registerVal1.Title = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 49.000000, 260.000000)
	registerVal5:setTopBottom(true, false, 462.000000, 480.000000)
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal5)
	registerVal1.HintText = registerVal5
	local registerVal6 = LUI.UIList.new(registerVal1, arg0, 4.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, false, 35.000000, 260.000000)
	registerVal6:setTopBottom(true, false, 170.000000, 436.000000)
	registerVal6:setWidgetType(CoD.DemoSideBarButton)
	registerVal6:setVerticalCount(5.000000)
	registerVal6:setSpacing(4.000000)
	registerVal6:setDataSource("DemoChooseModeButtonList")
	local function __FUNC_1367_(arg1, arg2)
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

	registerVal6:registerEventHandler("gain_focus", __FUNC_1367_)
	local function __FUNC_14F7_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_14F7_)
	local function __FUNC_15C6_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal1, arg0, arg2)
		GoBack(registerVal1, arg2)
		SetGlobalModelValueFalse("demo.showChooseModeSidebar")
		return true
	end

	local function __FUNC_1699_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal6, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_15C6_, __FUNC_1699_, false)
	registerVal1:addElement(registerVal6)
	registerVal1.ButtonList = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 35.000000, 44.820000)
	registerVal7:setTopBottom(true, false, 466.090000, 475.910000)
	registerVal7:setAlpha(0.600000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_gunsmith_arrow_white"))
	registerVal1:addElement(registerVal7)
	registerVal1.Arrow = registerVal7
	local registerVal8 = CoD.FooterButtonPrompt.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 33.500000, 154.500000)
	registerVal8:setTopBottom(true, false, 666.000000, 698.000000)
	registerVal8.label:setText(Engine.Localize("MP_BACK"))
	registerVal8.keyPrompt.keybind:setText(Engine.Localize(""))
	local function __FUNC_178B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg0, "Controller", "secondary_button_image", __FUNC_178B_)
	registerVal1:addElement(registerVal8)
	registerVal1.BackBtnPrompt = registerVal8
	local function __FUNC_1863_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal6, "hintText", true, __FUNC_1863_)
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_191A_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal5:completeAnimation()
		registerVal1.HintText:setLeftRight(true, false, 49.000000, 260.000000)
		registerVal1.HintText:setTopBottom(true, false, 462.000000, 480.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal1.Arrow:setAlpha(0.600000)
		registerVal1.clipFinished(registerVal7, {})
	end

	registerVal10.DefaultClip = __FUNC_191A_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_1ADF_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal5:completeAnimation()
		registerVal1.HintText:setLeftRight(true, false, 35.000000, 260.000000)
		registerVal1.HintText:setTopBottom(true, false, 232.000000, 250.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal1.Arrow:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
	end

	registerVal10.DefaultClip = __FUNC_1ADF_
	registerVal9.HighlightReelMode = registerVal10
	registerVal1.clipsPerState = registerVal9
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "HighlightReelMode"
	local function __FUNC_1CA3_(arg0, arg1, arg2)
		return IsDemoContextHighlightReelMode()
	end

	registerVal12.condition = __FUNC_1CA3_
	registerVal11 = {registerVal12}
	registerVal1:mergeStateConditions(registerVal11)
	registerVal12 = Engine.GetGlobalModel()
	registerVal11 = Engine.GetModel(registerVal12, "demo.contextMode")
	local function __FUNC_1D00_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "demo.contextMode"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal11, __FUNC_1D00_)
	local function __FUNC_1E26_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		SetGlobalModelValueFalse("demo.showChooseModeSidebar")
		return true
	end

	local function __FUNC_1ECA_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1E26_, __FUNC_1ECA_, false)
	local function __FUNC_1FC5_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		SetGlobalModelValueFalse("demo.showChooseModeSidebar")
		return true
	end

	local function __FUNC_206A_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_START, nil, __FUNC_1FC5_, __FUNC_206A_, false)
	local function __FUNC_2155_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		SetGlobalModelValueFalse("demo.showChooseModeSidebar")
		return true
	end

	local function __FUNC_21FA_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_DISMISS_MENU")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "M", __FUNC_2155_, __FUNC_21FA_, false)
	registerVal6.id = "ButtonList"
	registerVal11 = {}
	registerVal11.name = "menu_loaded"
	registerVal11.controller = arg0
	registerVal1:processEvent(registerVal11)
	registerVal11 = {}
	registerVal11.name = "update_state"
	registerVal11.menu = registerVal1
	registerVal1:processEvent(registerVal11)
	registerVal9 = registerVal1:restoreState()
	if not registerVal9 then
		registerVal11 = {}
		registerVal11.name = "gain_focus"
		registerVal11.controller = arg0
		registerVal1.ButtonList:processEvent(registerVal11)
	end
	local function __FUNC_22FD_(arg1)
		arg1.ButtonList:close()
		arg1.BackBtnPrompt:close()
		arg1.HintText:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "ChooseModeSidebar.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_22FD_)
	if __FUNC_237_ then
		__FUNC_237_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.ChooseModeSidebar = __FUNC_2C3_
