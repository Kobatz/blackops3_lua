-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.FadingSkipPrompt")
local function __FUNC_1CB_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	local registerVal2 = Engine.CreateModel(registerVal3, "CreditsFinished")
	Engine.SetModelValue(registerVal2, false)
	local function __FUNC_2E6_(arg2)
		local registerVal1 = InSafehouseOrFrontend()
		registerVal1 = Engine.GetModelValue(arg2)
		if registerVal1 and registerVal1 == true then
			GoBack(arg0, arg1)
		end
	end

	arg0:subscribeToModel(registerVal2, __FUNC_2E6_)
end

local function __FUNC_3A8_(arg0, arg1)
	if CoD.isPC then
		arg0:setHandleMouse(true)
		arg0.ImageWithButtonPrompt:setHandleMouse(true)
		Dvar.ui_creditsScrollScale:set(1.000000)
	end
	arg0.Credit0:setupCredit(arg1)
	local function __FUNC_CE8_()
		return false
	end

	arg0.sticksDown = 0.000000
	local function __FUNC_D1C_()
		SetProperty(arg0, "showPrompt", true)
		local registerVal2 = {}
		registerVal2.elementName = "skipPrompt"
		registerVal2.clipName = "Show"
		PlayClipOnElement(arg0, registerVal2, arg1)
		registerVal2 = {}
		registerVal2.elementName = "speedUpPrompt"
		registerVal2.clipName = "Show"
		PlayClipOnElement(arg0, registerVal2, arg1)
		registerVal2 = {}
		registerVal2.elementName = "speedUpPromptMouse"
		registerVal2.clipName = "Show"
		PlayClipOnElement(arg0, registerVal2, arg1)
	end

	local function __FUNC_E70_()
		SetProperty(arg0, "showPrompt", false)
		local registerVal2 = {}
		registerVal2.elementName = "skipPrompt"
		registerVal2.clipName = "Hide"
		PlayClipOnElement(arg0, registerVal2, arg1)
		registerVal2 = {}
		registerVal2.elementName = "speedUpPrompt"
		registerVal2.clipName = "Hide"
		PlayClipOnElement(arg0, registerVal2, arg1)
		registerVal2 = {}
		registerVal2.elementName = "speedUpPromptMouse"
		registerVal2.clipName = "Hide"
		PlayClipOnElement(arg0, registerVal2, arg1)
		if arg0.skipHideTimer then
			arg0.skipHideTimer:close()
			arg0.skipHideTimer = nil
		end
	end

	local function __FUNC_1023_()
		local registerVal1 = LUI.UITimer.newElementTimer(5000.000000, true, __FUNC_E70_)
		arg0.skipHideTimer = registerVal1
		arg0:addElement(arg0.skipHideTimer)
	end

	local function __FUNC_1103_(arg1, arg2, arg3, arg4)
		local registerVal4 = IsGamepad(arg3)
		if CoD.isPC and registerVal4 then
			Dvar.ui_creditsScrollScale:set(1.000000)
		end
		if arg0.sticksDown == 0.000000 then
			if arg0.skipHideTimer then
				arg0.skipHideTimer:reset()
			else
				__FUNC_D1C_()
				__FUNC_1023_()
			end
		end
	end

	local function __FUNC_127C_(arg1, arg2, arg3, arg4)
		local registerVal4 = IsGamepad(arg3)
		if CoD.isPC and registerVal4 then
			Dvar.ui_creditsScrollScale:set(1.000000)
		end
		registerVal4 = PropertyIsTrue(arg0, "showPrompt")
		if registerVal4 then
			Engine.PlaySound("uin_paint_decal_nav")
			registerVal4 = InSafehouseOrFrontend()
			if registerVal4 then
				GoBack(arg2, arg3)
			else
				SendOwnMenuResponse(arg2, arg3, "skip")
			else
				__FUNC_1103_(arg1, arg2, arg3, arg4)
			end
		end
	end

	local function __FUNC_14A7_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDpadButton(arg3)
		if registerVal4 then
			__FUNC_1103_(arg0, arg1, arg2, arg3)
		end
	end

	local function __FUNC_1512_(arg0, arg1, arg2, arg3)
		local registerVal4 = Dvar.ui_creditsScrollScale:get()
		if 1.000000 < registerVal4 then
		end
		if (registerVal4 - 1.000000) < 0.200000 then
		end
		Dvar.ui_creditsScrollScale:set(0.200000)
		__FUNC_1103_(arg0, arg1, arg2, arg3)
	end

	local function __FUNC_15F9_(arg0, arg1, arg2, arg3)
		local registerVal4 = Dvar.ui_creditsScrollScale:get()
		if registerVal4 < 1.000000 then
		end
		if 10.000000 < (registerVal4 + 0.200000) then
		end
		Dvar.ui_creditsScrollScale:set(10.000000)
		__FUNC_1103_(arg0, arg1, arg2, arg3)
	end

	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_LEFT, nil, __FUNC_14A7_, __FUNC_CE8_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_UP, nil, __FUNC_14A7_, __FUNC_CE8_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_RIGHT, nil, __FUNC_14A7_, __FUNC_CE8_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_DOWN, nil, __FUNC_14A7_, __FUNC_CE8_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_127C_, __FUNC_CE8_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1103_, __FUNC_CE8_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, nil, __FUNC_1103_, __FUNC_CE8_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, nil, __FUNC_1103_, __FUNC_CE8_, false)
	if LUI.DEV == nil then
		arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_BACK, nil, __FUNC_1103_, __FUNC_CE8_, false)
	end
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_START, nil, __FUNC_1103_, __FUNC_CE8_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_LB, nil, __FUNC_1103_, __FUNC_CE8_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_RB, nil, __FUNC_1103_, __FUNC_CE8_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_LTRIG, nil, __FUNC_1103_, __FUNC_CE8_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_RTRIG, nil, __FUNC_1103_, __FUNC_CE8_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_LSTICK_PRESSED, nil, __FUNC_1103_, __FUNC_CE8_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, nil, __FUNC_1103_, __FUNC_CE8_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_PCKEY_0, "MWHEELUP", __FUNC_1512_, __FUNC_CE8_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_PCKEY_1, "MWHEELDOWN", __FUNC_15F9_, __FUNC_CE8_, false)
	local registerVal11 = {}
	registerVal11.x = false
	registerVal11.y = false
	local function __FUNC_16E6_(arg0, arg1, arg2)
	end

	local function __FUNC_1710_(arg0)
		local registerVal1 = IsGamepad(arg1)
		if CoD.isPC and registerVal1 then
			Dvar.ui_creditsScrollScale:set(1.000000)
		end
		__FUNC_16E6_(arg1, arg0, "x")
	end

	arg0:subscribeToGlobalModel(arg1, "PerController", "RightStick.X", __FUNC_1710_)
	local function __FUNC_1810_(arg0)
		local registerVal1 = IsGamepad(arg1)
		if CoD.isPC and registerVal1 then
			Dvar.ui_creditsScrollScale:set(1.000000)
		end
		__FUNC_16E6_(arg1, arg0, "y")
	end

	arg0:subscribeToGlobalModel(arg1, "PerController", "RightStick.Y", __FUNC_1810_)
end

local function __FUNC_1910_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Credit_Fullscreen")
	if __FUNC_1CB_ then
		__FUNC_1CB_(registerVal1, arg0)
	end
	registerVal1.soundSet = "HUD"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Credit_Fullscreen.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	local function __FUNC_2444_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_PCKEY_0)
		return registerVal3
	end

	registerVal3:registerEventHandler("gain_focus", __FUNC_2444_)
	local function __FUNC_25D3_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_25D3_)
	local function __FUNC_26A2_(arg0, arg1, arg2, arg3)
		SendButtonPressToMenu(arg1, arg2, arg3, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return true
	end

	local function __FUNC_2761_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_PCKEY_0, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal3, arg0, Enum.LUIButton.LUI_KEY_PCKEY_0, nil, __FUNC_26A2_, __FUNC_2761_, false)
	registerVal1:addElement(registerVal3)
	registerVal1.ImageWithButtonPrompt = registerVal3
	local registerVal4 = LUI.UIElement.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.Credit0 = registerVal4
	local registerVal5 = CoD.FadingSkipPrompt.new(registerVal1, arg0)
	registerVal5:setLeftRight(false, true, -1216.000000, -64.000000)
	registerVal5:setTopBottom(false, true, -59.000000, -34.000000)
	registerVal5.pressXtext:setText(Engine.Localize("PLATFORM_SKIP"))
	registerVal1:addElement(registerVal5)
	registerVal1.skipPrompt = registerVal5
	local registerVal6 = CoD.FadingSkipPrompt.new(registerVal1, arg0)
	registerVal6:setLeftRight(false, true, -1216.000000, -64.000000)
	registerVal6:setTopBottom(false, true, -84.000000, -59.000000)
	registerVal6.pressXtext:setText(Engine.Localize("PLATFORM_CREDIT_SCROLL_SPEED"))
	registerVal1:addElement(registerVal6)
	registerVal1.speedUpPrompt = registerVal6
	local registerVal7 = CoD.FadingSkipPrompt.new(registerVal1, arg0)
	registerVal7:setLeftRight(false, true, -1216.000000, -64.000000)
	registerVal7:setTopBottom(false, true, -84.000000, -59.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7.pressXtext:setText(Engine.Localize("PLATFORM_CREDIT_SCROLL_SPEED_KM"))
	registerVal1:addElement(registerVal7)
	registerVal1.speedUpPromptMouse = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_284F_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal6:completeAnimation()
		registerVal1.speedUpPrompt:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.speedUpPromptMouse:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_284F_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_29B6_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal6:completeAnimation()
		registerVal1.speedUpPrompt:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal7.pressXtext:completeAnimation()
		registerVal1.speedUpPromptMouse:setAlpha(1.000000)
		registerVal1.speedUpPromptMouse.pressXtext:setText(Engine.Localize("PLATFORM_CREDIT_SCROLL_SPEED_KM"))
		registerVal1.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_29B6_
	registerVal8.KBMouse = registerVal9
	registerVal1.clipsPerState = registerVal8
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "KBMouse"
	local function __FUNC_2BE2_(arg1, arg2, arg3)
		local registerVal3 = IsGamepad(arg0)
		return (not registerVal3)
	end

	registerVal11.condition = __FUNC_2BE2_
	registerVal10 = {registerVal11}
	registerVal1:mergeStateConditions(registerVal10)
	if registerVal1.m_eventHandlers.input_source_changed then
		local function __FUNC_2C33_(arg0, arg1)
			if not arg1.menu then
			end
			arg1.menu = registerVal1
			arg0:updateState(arg1)
			return registerVal1.m_eventHandlers.input_source_changed(arg0, arg1)
		end

		registerVal1:registerEventHandler("input_source_changed", __FUNC_2C33_)
	else
		registerVal1:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal11 = Engine.GetModelForController(arg0)
	registerVal10 = Engine.GetModel(registerVal11, "LastInput")
	local function __FUNC_2CBB_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal10, __FUNC_2CBB_)
	registerVal10 = {}
	registerVal10.name = "menu_loaded"
	registerVal10.controller = arg0
	registerVal1:processEvent(registerVal10)
	registerVal10 = {}
	registerVal10.name = "update_state"
	registerVal10.menu = registerVal1
	registerVal1:processEvent(registerVal10)
	local function __FUNC_2DD7_(arg1)
		arg1.skipPrompt:close()
		arg1.speedUpPrompt:close()
		arg1.speedUpPromptMouse:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Credit_Fullscreen.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2DD7_)
	if __FUNC_3A8_ then
		__FUNC_3A8_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.Credit_Fullscreen = __FUNC_1910_
