-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.menus.Spinner")
require("ui.uieditor.widgets.Lobby.LobbyStreamerBlackFade")
require("ui.uieditor.widgets.Main.StartLabel")
require("ui.uieditor.widgets.Footer.fe_FooterContainerMain")
require("ui.uieditor.widgets.Main.AtviCopy")
local function __FUNC_2AC_(arg0, arg1)
	arg0.anyControllerAllowed = true
	arg0.unusedControllerAllowed = true
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "lobbyRoot.platformUpdate")
	Engine.SetModelValue(registerVal2, true)
	local registerVal4 = Engine.GetGlobalModel()
	registerVal3 = Engine.CreateModel(registerVal4, "lobbyRoot.beginPlay")
	Engine.SetModelValue(registerVal3, Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_INVALID)
	if Engine.LobbyRemoveAllLocalSplitscreenClient then
		Engine.LobbyRemoveAllLocalSplitscreenClient()
	end
end

local function __FUNC_501_(arg0, arg1)
	CoD.LobbyBase.RegisterEventHandlers(arg0)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.GetModel(registerVal3, "lobbyRoot.spinnerActive")
	if registerVal2 == nil then
		local registerVal4 = Engine.GetGlobalModel()
		registerVal3 = Engine.CreateModel(registerVal4, "lobbyRoot.spinnerActive", true)
		Engine.SetModelValue(registerVal3, false)
	end
	local registerVal5 = Engine.GetGlobalModel()
	registerVal4 = Engine.GetModel(registerVal5, "lobbyRoot.spinnerActive")
	local function __FUNC_11A7_(arg2)
		local registerVal1 = Engine.GetModelValue(arg2)
		if registerVal1 == true then
			local registerVal3 = OpenPopup(arg0, "Spinner", arg1, nil, arg0)
			arg0.spinner = registerVal3
		else
			local registerVal4 = {}
			registerVal4.name = "spinner_close"
			arg0:dispatchEventToRoot(registerVal4)
			arg0.spinner = nil
		end
	end

	arg0:subscribeToModel(registerVal4, __FUNC_11A7_, true)
	Engine.DisableAllClients()
	CoD.LobbyBase.EndPlay()
	local function __FUNC_12D5_(arg1, arg2, arg3, arg4)
		local registerVal4 = Engine.IsCinematicPlaying()
		if registerVal4 then
			return 
		end
		registerVal4 = Engine.LiveIsControllerSignedIn(arg3)
		registerVal4 = Engine.SignIntoPlatformLiveSystem(arg3)
		if not registerVal4 and not registerVal4 then
			return 
		end
		registerVal4 = Engine.IsUserGuest(arg3)
		if registerVal4 then
			LuaUtils.UI_ShowErrorMessageDialog(arg3, "MENU_GUEST_CONTENT_RESTRICTED")
			return 
		end
		registerVal4 = LobbyBeginPlay(arg0, arg3)
		if not registerVal4 then
			return 
		end
		PlaySoundSetSound(arg0, "action")
	end

	local function __FUNC_14F6_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDpadButton(arg3)
		if registerVal4 then
			__FUNC_12D5_(arg0, arg1, arg2, arg3)
		end
	end

	registerVal5 = Engine.GetGlobalModel()
	Engine.CreateModel(registerVal5, "lobbyRoot.lobbyNav")
	local registerVal7 = Engine.GetGlobalModel()
	local registerVal6 = Engine.CreateModel(registerVal7, "lobbyRoot.lobbyNav")
	local function __FUNC_1562_(arg2)
		local registerVal1 = Engine.GetModelValue(arg2)
		if registerVal1 ~= LobbyData.UITargets.UI_MAIN.id then
			if arg0.spinner ~= nil then
				if UnregisterOpenedMenu then
					UnregisterOpenedMenu(arg0.spinner, arg0.spinner.menuName)
				end
				arg0.spinner = nil
			end
			local registerVal2 = CoD.Menu.safeCreateMenu("Lobby", arg1)
			local registerVal3 = arg0:getParent()
			registerVal3:addElement(registerVal2)
			local registerVal5 = {}
			registerVal5.name = "menu_opened"
			registerVal5.controller = arg1
			registerVal2:processEvent(registerVal5)
			arg0:close()
		end
	end

	arg0:subscribeToModel(registerVal6, __FUNC_1562_, false)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.CreateModel(registerVal7, "pubstorageFilesChanged")
	local function __FUNC_1809_(arg2)
		local registerVal1 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
		if registerVal1 then
			return 
		end
		registerVal1 = Engine.GetModelValue(arg2)
		if registerVal1 == true then
			CoD.OverlayUtility.CreateOverlay(arg1, arg0, "PublisherFilesChangedPopup")
		end
	end

	arg0:subscribeToModel(registerVal6, __FUNC_1809_, false)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.CreateModel(registerVal7, "lobbyRoot.beginPlay")
	local function __FUNC_1996_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 == Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE then
			Engine.SetModelValue(arg1, Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_INVALID)
			Engine.ActivatePrimaryLocalClient(0.000000)
			CoD.LobbyBase.BeginLivePlay(arg0, 0.000000)
		else
			if registerVal1 == Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LAN then
				Engine.SetModelValue(arg1, Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_INVALID)
				Engine.ActivatePrimaryLocalClient(0.000000)
				CoD.LobbyBase.BeginLANPlay(arg0, 0.000000)
			end
		end
	end

	arg0:subscribeToModel(registerVal6, __FUNC_1996_, false)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.CreateModel(registerVal7, "mainFirstTimeFlowComplete")
	local function __FUNC_1C4A_(arg2)
		local registerVal1 = Engine.GetModelValue(arg2)
		CloseAllOccludingMenus(arg0, arg1)
		__FUNC_12D5_(nil, nil, arg1, nil)
	end

	arg0:subscribeToModel(registerVal6, __FUNC_1C4A_, false)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.CreateModel(registerVal7, "lobbyRoot.closePopups")
	local function __FUNC_1CF7_(arg2)
		local registerVal2 = Engine.GetGlobalModel()
		local registerVal1 = Engine.CreateModel(registerVal2, "lobbyRoot.FFOTDShutdown")
		registerVal2 = Engine.GetModelValue(registerVal1)
		if registerVal2 == nil or registerVal2 == false then
			CloseAllOccludingMenus(arg0, arg1)
		end
	end

	arg0:subscribeToModel(registerVal6, __FUNC_1CF7_, false)
	registerVal7 = CoD.GetLocalClientAdjustedNum(arg1)
	Engine.SendClientScriptNotify(arg1, ("menu_change" .. registerVal7), "Main", "closeToMenu")
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.CreateModel(registerVal7, "lobbyRoot.room")
	local function __FUNC_1E1C_(arg2)
		RefreshLobbyRoom(arg0, arg1)
	end

	arg0:subscribeToModel(registerVal6, __FUNC_1E1C_)
	local function __FUNC_1E72_()
		return false
	end

	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_LEFT, nil, __FUNC_14F6_, __FUNC_1E72_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_UP, nil, __FUNC_14F6_, __FUNC_1E72_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_RIGHT, nil, __FUNC_14F6_, __FUNC_1E72_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_DOWN, nil, __FUNC_14F6_, __FUNC_1E72_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_12D5_, __FUNC_1E72_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, nil, __FUNC_12D5_, __FUNC_1E72_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, nil, __FUNC_12D5_, __FUNC_1E72_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_START, "ENTER", __FUNC_12D5_, __FUNC_1E72_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_LB, nil, __FUNC_12D5_, __FUNC_1E72_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_RB, nil, __FUNC_12D5_, __FUNC_1E72_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_LTRIG, nil, __FUNC_12D5_, __FUNC_1E72_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_RTRIG, nil, __FUNC_12D5_, __FUNC_1E72_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_LSTICK_PRESSED, nil, __FUNC_12D5_, __FUNC_1E72_, false)
	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, nil, __FUNC_12D5_, __FUNC_1E72_, false)
	arg0.handleMouseButton = true
	local function __FUNC_1EA4_()
		arg0.launchInvitesHotJoinTimer = nil
		Engine.LivePlatformSessionEnableInviteHotJoin()
	end

	registerVal7 = Dvar.platformSessionLaunchInviteJoinProcessDelay:exists()
	if LuaUtils.isPS4 == true and registerVal7 == true then
		registerVal7 = Dvar.platformSessionLaunchInviteJoinProcessDelay:get()
	end
	registerVal7 = Engine.LivePlatformSessionCanProcessLaunchData()
	if not arg0.launchInvitesHotJoinTimer and not registerVal7 then
		registerVal7 = LUI.UITimer.newElementTimer(registerVal7, true, __FUNC_1EA4_)
		arg0.launchInvitesHotJoinTimer = registerVal7
		arg0:addElement(arg0.launchInvitesHotJoinTimer)
	end
end

local function __FUNC_1F50_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Main")
	if __FUNC_2AC_ then
		__FUNC_2AC_(registerVal1, arg0)
	end
	registerVal1.soundSet = "FrontendMain"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Main.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -650.500000, 648.500000)
	registerVal3:setTopBottom(false, false, -313.000000, 407.000000)
	registerVal3:setAlpha(0.800000)
	registerVal3:setZRot(180.000000)
	registerVal3:setImage(RegisterImage("uie_frontend_vingette_c"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_multiply"))
	registerVal1:addElement(registerVal3)
	registerVal1.Vignette = registerVal3
	local registerVal4 = CoD.LobbyStreamerBlackFade.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 720.000000)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Transparent"
	local function __FUNC_2C9C_(arg1, arg2, arg3)
		return IsGlobalModelValueEqualTo(arg2, arg0, "hideWorldForStreamer", 0.000000)
	end

	registerVal8.condition = __FUNC_2C9C_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "hideWorldForStreamer")
	local function __FUNC_2D2A_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hideWorldForStreamer"
		registerVal1:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_2D2A_)
	registerVal1:addElement(registerVal4)
	registerVal1.FadeForStreamer = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.Fade = registerVal5
	local registerVal6 = CoD.StartLabel.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 720.000000)
	local function __FUNC_2E52_(arg1, arg2)
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

	registerVal6:registerEventHandler("gain_focus", __FUNC_2E52_)
	local function __FUNC_2FDF_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_2FDF_)
	local function __FUNC_30AE_(arg0, arg1, arg2, arg3)
		SendButtonPressToMenu(arg1, arg2, arg3, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return true
	end

	local function __FUNC_316D_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_PCKEY_0, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal6, arg0, Enum.LUIButton.LUI_KEY_PCKEY_0, nil, __FUNC_30AE_, __FUNC_316D_, false)
	registerVal1:addElement(registerVal6)
	registerVal1.StartLabel = registerVal6
	registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 1037.000000, 1221.000000)
	registerVal7:setTopBottom(true, false, 664.000000, 692.000000)
	registerVal7:setRGB(0.680000, 0.680000, 0.680000)
	registerVal7:setAlpha(0.900000)
	registerVal7:setImage(RegisterImage("uie_t7_activisionpublishinginc"))
	registerVal1:addElement(registerVal7)
	registerVal1.ActivisionInc = registerVal7
	registerVal8 = CoD.fe_FooterContainerMain.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(false, true, -80.000000, 0.000000)
	local function __FUNC_325B_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("menu_loaded", __FUNC_325B_)
	registerVal1:addElement(registerVal8)
	registerVal1.feFooterContainer = registerVal8
	local registerVal9 = CoD.AtviCopy.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_32ED_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("menu_loaded", __FUNC_32ED_)
	registerVal1:addElement(registerVal9)
	registerVal1.AtviCopyDurango = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_3381_()
		registerVal1:setupElementClipCounter(5.000000)
		local function __FUNC_3674_(arg0, arg1)
			local function __FUNC_37CC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 949.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_37CC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37CC_)
		end

		registerVal5:completeAnimation()
		registerVal1.Fade:setAlpha(1.000000)
		__FUNC_3674_(registerVal5, {})
		local function __FUNC_3981_(arg0, arg1)
			local function __FUNC_3AFB_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3AFB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1500.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3AFB_)
		end

		registerVal6:completeAnimation()
		registerVal1.StartLabel:setAlpha(1.000000)
		__FUNC_3981_(registerVal6, {})
		local function __FUNC_3CAD_(arg0, arg1)
			local function __FUNC_3E27_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 1037.000000, 1221.000000)
				arg0:setTopBottom(true, false, 664.000000, 692.000000)
				arg0:setAlpha(0.900000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3E27_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1500.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.900000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E27_)
		end

		registerVal7:completeAnimation()
		registerVal1.ActivisionInc:setLeftRight(true, false, 1037.000000, 1221.000000)
		registerVal1.ActivisionInc:setTopBottom(true, false, 664.000000, 692.000000)
		registerVal1.ActivisionInc:setAlpha(0.000000)
		__FUNC_3CAD_(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.feFooterContainer:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.AtviCopyDurango:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_3381_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_4049_()
		registerVal1:setupElementClipCounter(5.000000)
		local function __FUNC_42B0_(arg0, arg1)
			local function __FUNC_4408_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 949.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4408_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4408_)
		end

		registerVal5:completeAnimation()
		registerVal1.Fade:setAlpha(1.000000)
		__FUNC_42B0_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.StartLabel:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.ActivisionInc:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.feFooterContainer:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal8, {})
		local function __FUNC_45BD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 1500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal1.AtviCopyDurango:setAlpha(1.000000)
		__FUNC_45BD_(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_4049_
	registerVal10.Durango = registerVal11
	registerVal1.clipsPerState = registerVal10
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Durango"
	local function __FUNC_4771_(arg0, arg1, arg2)
		return IsDurango()
	end

	registerVal13.condition = __FUNC_4771_
	registerVal12 = {registerVal13}
	registerVal1:mergeStateConditions(registerVal12)
	local function __FUNC_47BB_(arg1, arg2)
		SetInitLobbyMenu(registerVal1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_47BB_)
	local function __FUNC_484F_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDurango()
		if registerVal4 then
			ShowAccountPicker(arg2)
			return true
		end
	end

	local function __FUNC_48CA_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_BACK, "")
		local registerVal3 = IsDurango()
		if registerVal3 then
			return false
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_BACK, nil, __FUNC_484F_, __FUNC_48CA_, false)
	registerVal6.id = "StartLabel"
	registerVal8:setModel(registerVal1.buttonModel, arg0)
	registerVal9.id = "AtviCopyDurango"
	registerVal12 = {}
	registerVal12.name = "menu_loaded"
	registerVal12.controller = arg0
	registerVal1:processEvent(registerVal12)
	registerVal12 = {}
	registerVal12.name = "update_state"
	registerVal12.menu = registerVal1
	registerVal1:processEvent(registerVal12)
	registerVal10 = registerVal1:restoreState()
	if not registerVal10 then
		registerVal12 = {}
		registerVal12.name = "gain_focus"
		registerVal12.controller = arg0
		registerVal1.StartLabel:processEvent(registerVal12)
	end
	local function __FUNC_49DF_(arg1)
		arg1.FadeForStreamer:close()
		arg1.StartLabel:close()
		arg1.feFooterContainer:close()
		arg1.AtviCopyDurango:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Main.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_49DF_)
	if __FUNC_501_ then
		__FUNC_501_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.Main = __FUNC_1F50_
