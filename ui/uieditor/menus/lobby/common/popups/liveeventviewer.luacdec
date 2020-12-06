-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.LiveEventViewerMovieAndBackground")
require("ui.uieditor.widgets.Lobby.Common.LiveEventViewerFooterContainer")
require("ui.uieditor.widgets.Lobby.Common.LiveEventViewerStatusWidget")
local function __FUNC_28A_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	local registerVal2 = Engine.CreateModel(registerVal3, "LiveEventViewer.buttonPrompts")
	arg0.buttonModel = registerVal2
	arg0.anyControllerAllowed = true
	if CoD.isPC then
		arg0:setHandleMouse(true)
		arg0.ImageWithButtonPrompt:setHandleMouse(true)
	end
	local function __FUNC_A48_()
		return false
	end

	local function __FUNC_A7C_()
		return true
	end

	local function __FUNC_AB0_()
		SetProperty(arg0, "showPrompt", true)
		arg0:setState("ShowPrompts")
	end

	local function __FUNC_B50_()
		SetProperty(arg0, "showPrompt", false)
		arg0:setState("DefaultState")
		if arg0.skipHideTimer then
			arg0.skipHideTimer:close()
			arg0.skipHideTimer = nil
		end
	end

	local function __FUNC_C50_()
		local registerVal1 = LUI.UITimer.newElementTimer(5000.000000, true, __FUNC_B50_)
		arg0.skipHideTimer = registerVal1
		arg0:addElement(arg0.skipHideTimer)
	end

	local function __FUNC_D33_(arg1, arg2, arg3, arg4)
		if arg0.skipHideTimer then
			arg0.skipHideTimer:reset()
		else
			__FUNC_AB0_()
			__FUNC_C50_()
		end
	end

	local function __FUNC_DC6_(arg1, arg2, arg3, arg4)
		local registerVal4 = PropertyIsTrue(arg0, "showPrompt")
		if registerVal4 then
			GoBack(arg2, arg3)
		else
			__FUNC_D33_(arg1, arg2, arg3, arg4)
		end
		return true
	end

	local function __FUNC_E78_(arg1, arg2, arg3, arg4)
		local registerVal4 = PropertyIsTrue(arg0, "showPrompt")
		registerVal4 = IsMLGStream(arg3)
		registerVal4 = HasLiveEventStreamQualities()
		if registerVal4 and registerVal4 and registerVal4 then
			OpenPopup(arg2, "LiveEventViewerQualities", arg3)
			__FUNC_B50_()
		else
			__FUNC_D33_(arg1, arg2, arg3, arg4)
		end
		return true
	end

	local function __FUNC_FBB_(arg1, arg2, arg3, arg4)
		local registerVal4 = PropertyIsTrue(arg0, "showPrompt")
		if registerVal4 then
			registerVal4 = IsChildElementInState(arg2, "LiveEventViewerMovieAndBackground", "Windowed")
			if registerVal4 then
				SetElementStateByElementName(arg2, "LiveEventViewerMovieAndBackground", arg3, "DefaultState")
				CoD.Menu.UpdateButtonShownState(arg1, arg2, arg3, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
				return true
			else
				SetElementStateByElementName(arg2, "LiveEventViewerMovieAndBackground", arg3, "Windowed")
				CoD.Menu.UpdateButtonShownState(arg1, arg2, arg3, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
				return true
			else
				__FUNC_D33_(arg1, arg2, arg3, arg4)
			end
		end
	end

	local function __FUNC_1248_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDpadButton(arg3)
		if registerVal4 then
			__FUNC_D33_(arg0, arg1, arg2, arg3)
		end
	end

	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_LEFT, nil, __FUNC_1248_, __FUNC_A48_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_UP, nil, __FUNC_1248_, __FUNC_A48_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_RIGHT, nil, __FUNC_1248_, __FUNC_A48_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_DOWN, nil, __FUNC_1248_, __FUNC_A48_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_D33_, __FUNC_A48_, false)
	if LUI.DEV == nil then
		arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_BACK, nil, __FUNC_D33_, __FUNC_A48_, false)
	end
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_START, nil, __FUNC_D33_, __FUNC_A48_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_LB, nil, __FUNC_D33_, __FUNC_A48_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_RB, nil, __FUNC_D33_, __FUNC_A48_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_LTRIG, nil, __FUNC_D33_, __FUNC_A48_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_RTRIG, nil, __FUNC_D33_, __FUNC_A48_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_LSTICK_PRESSED, nil, __FUNC_D33_, __FUNC_A48_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, nil, __FUNC_D33_, __FUNC_A48_, false)
	local function __FUNC_12B6_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_EXIT_LIVE_EVENT_VIEWER")
		return true
	end

	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_DC6_, __FUNC_12B6_, false)
	local function __FUNC_13C3_(arg0, arg1, arg2)
		local registerVal3 = IsMLGStream(arg2)
		registerVal3 = HasLiveEventStreamQualities()
		if registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_MLG_CURRENT_QUALITY")
			return true
		end
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "")
		return false
	end

	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, nil, __FUNC_E78_, __FUNC_13C3_, false)
	local function __FUNC_1580_(arg0, arg1, arg2)
		local registerVal3 = IsChildElementInState(arg1, "LiveEventViewerMovieAndBackground", "Windowed")
		if arg1.LiveEventViewerMovieAndBackground and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "MENU_FULLSCREEN")
			return true
		else
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "MENU_WINDOWED")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, nil, __FUNC_FBB_, __FUNC_1580_, false)
end

local function __FUNC_1780_(arg0, arg1)
	CoD.PlayFrontendMusic("")
	Dvar.ui_liveEventViewerOpen:set(true)
	local function __FUNC_18B6_(arg0)
		Dvar.ui_liveEventViewerOpen:set(false)
		local registerVal2 = Engine.GetGlobalModel()
		local registerVal1 = CoD.SafeGetModelValue(registerVal2, "lobbyRoot.lobbyNav")
		if registerVal1 then
			CoD.PlayFrontendMusicForLobby(registerVal1)
		end
	end

	LUI.OverrideFunction_CallOriginalSecond(arg0, "close", __FUNC_18B6_)
end

local function __FUNC_1A12_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("LiveEventViewer")
	if __FUNC_28A_ then
		__FUNC_28A_(registerVal1, arg0)
	end
	registerVal1.soundSet = "Special_widgets"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "LiveEventViewer.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.LiveEventViewerMovieAndBackground.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_218C_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("menu_loaded", __FUNC_218C_)
	registerVal1:addElement(registerVal3)
	registerVal1.LiveEventViewerMovieAndBackground = registerVal3
	local registerVal4 = CoD.LiveEventViewerFooterContainer.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(false, true, -720.000000, 0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.LiveEventViewerFooterContainer0 = registerVal4
	local registerVal5 = CoD.LiveEventViewerStatusWidget.new(registerVal1, arg0)
	registerVal5:setLeftRight(false, true, -115.000000, -64.000000)
	registerVal5:setTopBottom(true, false, 36.000000, 61.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.LiveEventViewerStatusWidget0 = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_2221_()
		registerVal1:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal1.LiveEventViewerFooterContainer0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal1.LiveEventViewerFooterContainer0:setTopBottom(false, true, -590.000000, 130.000000)
		registerVal1.clipFinished(registerVal4, {})
	end

	registerVal7.DefaultClip = __FUNC_2221_
	local function __FUNC_238F_()
		registerVal1:setupElementClipCounter(1.000000)
		local function __FUNC_24E1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(false, true, -720.000000, 0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal1.LiveEventViewerFooterContainer0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal1.LiveEventViewerFooterContainer0:setTopBottom(false, true, -590.000000, 130.000000)
		__FUNC_24E1_(registerVal4, {})
	end

	registerVal7.ShowPrompts = __FUNC_238F_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_26D8_()
		registerVal1:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal1.LiveEventViewerFooterContainer0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal1.LiveEventViewerFooterContainer0:setTopBottom(false, true, -720.000000, 0.000000)
		registerVal1.clipFinished(registerVal4, {})
	end

	registerVal7.DefaultClip = __FUNC_26D8_
	local function __FUNC_2842_()
		registerVal1:setupElementClipCounter(1.000000)
		local function __FUNC_2990_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(false, true, -590.000000, 130.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal1.LiveEventViewerFooterContainer0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal1.LiveEventViewerFooterContainer0:setTopBottom(false, true, -720.000000, 0.000000)
		__FUNC_2990_(registerVal4, {})
	end

	registerVal7.DefaultState = __FUNC_2842_
	registerVal6.ShowPrompts = registerVal7
	registerVal1.clipsPerState = registerVal6
	local function __FUNC_2B8D_(arg1, arg2)
		SetElementStateByElementName(registerVal1, "LiveEventViewerMovieAndBackground", arg0, "Windowed")
		UpdateButtonPromptState(registerVal1, arg1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_opened", __FUNC_2B8D_)
	local function __FUNC_2D06_(arg1)
		local registerVal2 = HasLiveEvent(arg0)
		if not registerVal2 then
			DelayGoBack(registerVal1, arg0)
		end
	end

	registerVal1:subscribeToGlobalModel(arg0, "LiveEventViewer", "stream", __FUNC_2D06_)
	local function __FUNC_2D83_(arg1)
		UpdateButtonPromptState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal1:subscribeToGlobalModel(arg0, "LiveEventViewer", "currentQuality", __FUNC_2D83_)
	local registerVal8 = {}
	registerVal8.name = "menu_loaded"
	registerVal8.controller = arg0
	registerVal1:processEvent(registerVal8)
	registerVal8 = {}
	registerVal8.name = "update_state"
	registerVal8.menu = registerVal1
	registerVal1:processEvent(registerVal8)
	local function __FUNC_2E40_(arg1)
		arg1.LiveEventViewerMovieAndBackground:close()
		arg1.LiveEventViewerFooterContainer0:close()
		arg1.LiveEventViewerStatusWidget0:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "LiveEventViewer.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2E40_)
	if __FUNC_1780_ then
		__FUNC_1780_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.LiveEventViewer = __FUNC_1A12_
