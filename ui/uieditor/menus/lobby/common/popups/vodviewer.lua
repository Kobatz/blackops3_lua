-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.VoDViewerMovieAndBackground")
require("ui.uieditor.widgets.Lobby.Common.VoDViewerFooterContainer")
local function __FUNC_226_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	local registerVal2 = Engine.CreateModel(registerVal3, "VoDViewer.buttonPrompts")
	arg0.buttonModel = registerVal2
	if CoD.isPC then
		arg0:setHandleMouse(true)
		arg0.ImageWithButtonPrompt:setHandleMouse(true)
	end
	local function __FUNC_A49_(arg0, arg2)
		GoBack(arg0, arg1)
	end

	arg0:registerEventHandler("finished_movie_playback", __FUNC_A49_)
	local function __FUNC_A94_()
		return false
	end

	local function __FUNC_AC8_()
		return true
	end

	local function __FUNC_AFC_()
		SetProperty(arg0, "showPrompt", true)
		arg0:setState("ShowPrompts")
	end

	local function __FUNC_B9C_()
		SetProperty(arg0, "showPrompt", false)
		arg0:setState("DefaultState")
		if arg0.skipHideTimer then
			arg0.skipHideTimer:close()
			arg0.skipHideTimer = nil
		end
	end

	local function __FUNC_C9C_()
		local registerVal1 = LUI.UITimer.newElementTimer(5000.000000, true, __FUNC_B9C_)
		arg0.skipHideTimer = registerVal1
		arg0:addElement(arg0.skipHideTimer)
	end

	local function __FUNC_D7F_(arg1, arg2, arg3, arg4)
		if arg0.skipHideTimer then
			arg0.skipHideTimer:reset()
		else
			__FUNC_AFC_()
			__FUNC_C9C_()
		end
	end

	local function __FUNC_E12_(arg1, arg2, arg3, arg4)
		local registerVal4 = PropertyIsTrue(arg0, "showPrompt")
		if registerVal4 then
			GoBack(arg2, arg3)
		else
			__FUNC_D7F_(arg1, arg2, arg3, arg4)
		end
		return true
	end

	local function __FUNC_EC4_(arg1, arg2, arg3, arg4)
		local registerVal4 = PropertyIsTrue(arg0, "showPrompt")
		registerVal4 = HasLiveEventStreamQualities()
		if registerVal4 and registerVal4 then
			OpenPopup(arg2, "LiveEventViewerQualities", arg3)
			__FUNC_B9C_()
		else
			__FUNC_D7F_(arg1, arg2, arg3, arg4)
		end
		return true
	end

	local function __FUNC_FDE_(arg1, arg2, arg3, arg4)
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
				__FUNC_D7F_(arg1, arg2, arg3, arg4)
			end
		end
	end

	local function __FUNC_126C_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDpadButton(arg3)
		if registerVal4 then
			__FUNC_D7F_(arg0, arg1, arg2, arg3)
		end
	end

	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_LEFT, nil, __FUNC_126C_, __FUNC_A94_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_UP, nil, __FUNC_126C_, __FUNC_A94_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_RIGHT, nil, __FUNC_126C_, __FUNC_A94_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_DOWN, nil, __FUNC_126C_, __FUNC_A94_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_D7F_, __FUNC_A94_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, nil, __FUNC_D7F_, __FUNC_A94_, false)
	if LUI.DEV == nil then
		arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_BACK, nil, __FUNC_D7F_, __FUNC_A94_, false)
	end
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_START, nil, __FUNC_D7F_, __FUNC_A94_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_LB, nil, __FUNC_D7F_, __FUNC_A94_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_RB, nil, __FUNC_D7F_, __FUNC_A94_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_LTRIG, nil, __FUNC_D7F_, __FUNC_A94_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_RTRIG, nil, __FUNC_D7F_, __FUNC_A94_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_LSTICK_PRESSED, nil, __FUNC_D7F_, __FUNC_A94_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, nil, __FUNC_D7F_, __FUNC_A94_, false)
	local function __FUNC_12DA_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_CLOSE")
		return true
	end

	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_E12_, __FUNC_12DA_, false)
	local function __FUNC_13D6_(arg0, arg1, arg2)
		local registerVal3 = HasLiveEventStreamQualities()
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_MLG_CURRENT_QUALITY")
			return true
		end
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "")
		return false
	end

	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, nil, __FUNC_EC4_, __FUNC_13D6_, false)
	local function __FUNC_156B_(arg0, arg1, arg2)
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

	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, nil, __FUNC_FDE_, __FUNC_156B_, false)
end

local function __FUNC_1768_(arg0, arg1)
	CoD.PlayFrontendMusic("")
	Dvar.ui_liveEventViewerOpen:set(true)
	local function __FUNC_189E_(arg0)
		Dvar.ui_liveEventViewerOpen:set(false)
		local registerVal2 = Engine.GetGlobalModel()
		local registerVal1 = CoD.SafeGetModelValue(registerVal2, "lobbyRoot.lobbyNav")
		if registerVal1 then
			CoD.PlayFrontendMusicForLobby(registerVal1)
		end
	end

	LUI.OverrideFunction_CallOriginalSecond(arg0, "close", __FUNC_189E_)
end

local function __FUNC_19FA_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("VoDViewer")
	if __FUNC_226_ then
		__FUNC_226_(registerVal1, arg0)
	end
	registerVal1.soundSet = "Special_widgets"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "VoDViewer.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.VoDViewerMovieAndBackground.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_20CF_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("menu_loaded", __FUNC_20CF_)
	registerVal1:addElement(registerVal3)
	registerVal1.LiveEventViewerMovieAndBackground = registerVal3
	local registerVal4 = CoD.VoDViewerFooterContainer.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(false, true, -720.000000, 0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.LiveEventViewerFooterContainer0 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_2161_()
		registerVal1:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal1.LiveEventViewerFooterContainer0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal1.LiveEventViewerFooterContainer0:setTopBottom(false, true, -590.000000, 130.000000)
		registerVal1.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_2161_
	local function __FUNC_22CF_()
		registerVal1:setupElementClipCounter(1.000000)
		local function __FUNC_2421_(arg0, arg1)
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
		__FUNC_2421_(registerVal4, {})
	end

	registerVal6.ShowPrompts = __FUNC_22CF_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_2618_()
		registerVal1:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal1.LiveEventViewerFooterContainer0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal1.LiveEventViewerFooterContainer0:setTopBottom(false, true, -720.000000, 0.000000)
		registerVal1.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_2618_
	local function __FUNC_2782_()
		registerVal1:setupElementClipCounter(1.000000)
		local function __FUNC_28D0_(arg0, arg1)
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
		__FUNC_28D0_(registerVal4, {})
	end

	registerVal6.DefaultState = __FUNC_2782_
	registerVal5.ShowPrompts = registerVal6
	registerVal1.clipsPerState = registerVal5
	local function __FUNC_2ACD_(arg1, arg2)
		SetElementStateByElementName(registerVal1, "LiveEventViewerMovieAndBackground", arg0, "Windowed")
		UpdateButtonPromptState(registerVal1, arg1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_opened", __FUNC_2ACD_)
	local function __FUNC_2C46_(arg1)
		UpdateButtonPromptState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal1:subscribeToGlobalModel(arg0, "LiveEventViewer", "currentQuality", __FUNC_2C46_)
	registerVal4:setModel(registerVal1.buttonModel, arg0)
	local registerVal7 = {}
	registerVal7.name = "menu_loaded"
	registerVal7.controller = arg0
	registerVal1:processEvent(registerVal7)
	registerVal7 = {}
	registerVal7.name = "update_state"
	registerVal7.menu = registerVal1
	registerVal1:processEvent(registerVal7)
	local function __FUNC_2D04_(arg1)
		arg1.LiveEventViewerMovieAndBackground:close()
		arg1.LiveEventViewerFooterContainer0:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "VoDViewer.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2D04_)
	if __FUNC_1768_ then
		__FUNC_1768_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.VoDViewer = __FUNC_19FA_
