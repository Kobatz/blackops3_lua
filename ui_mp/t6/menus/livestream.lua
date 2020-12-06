-- Decompiled with CoDLUIDecompiler by JariK

CoD.LiveStream = {}
CoD.LiveStream.PerformBanChecks = false
function CoD.LiveStream.CanPostOnFacebook()
	local registerVal0, registerVal1 = Engine.GetSocialCapabilities()
	local registerVal2 = Dvar.fbEnabled:get()
	if registerVal2 == true and registerVal0 and registerVal1 then
		return true
	end
	return false
end

function CoD.LiveStream.CanPostOnTwitter()
	local registerVal0, registerVal1 = Engine.GetSocialCapabilities()
	local registerVal2 = Engine.DvarBool(nil, "twEnabled")
	if registerVal2 and registerVal0 then
		return true
	end
	return false
end

function CoD.LiveStream.TwitchEnabled()
	local registerVal0 = Engine.DvarBool(nil, "webm_encTwitchEnabled")
	registerVal0 = Engine.GetIsSuperUser(Engine.GetPrimaryController())
	if not nil or registerVal0 then
		return true
	end
	return false
end

local function __FUNC_AD3_(arg0, arg1)
	Dvar.webm_httpAuthMode:set("youtube")
	Dvar.webm_httpUploadUrl:set(Dvar.webm_httpUploadUrlYouTube:get())
	arg0:goBack()
	local registerVal3 = Engine.IsYouTubeAccountChecked(arg1.controller)
	registerVal3 = Engine.IsYouTubeAccountRegistered(arg1.controller)
	if arg1 or not registerVal3 then
		CoD.perController[arg1.controller].activatingLiveStream = true
		arg0.occludedMenu:openPopup("YouTube_Connect", arg1.controller)
		CoD.perController[arg1.controller].activatingLiveStream = nil
	else
		arg0.occludedMenu:openPopup("LiveStreamTOS", arg1.controller)
	end
end

local function __FUNC_DC2_(arg0, arg1)
	Dvar.webm_httpAuthMode:set("twitch")
	Dvar.webm_httpUploadUrl:set(Dvar.webm_httpUploadUrlTwitch:get())
	arg0:goBack()
	local registerVal3 = Engine.IsTwitchAccountRegistered(arg1.controller)
	if not registerVal3 then
		CoD.perController[arg1.controller].activatingLiveStream = true
		arg0.occludedMenu:openPopup("Twitch_Connect", arg1.controller)
		CoD.perController[arg1.controller].activatingLiveStream = nil
	else
		registerVal3 = Engine.GetTwitchAccountInfo(arg1.controller)
		Dvar.webm_httpAuthToken:set(registerVal3.authToken)
		arg0.occludedMenu:openPopup("LiveStreamTOS", arg1.controller)
	end
end

local function __FUNC_10F6_(arg0)
	local registerVal1 = CoD.Popup.SetupPopupChoice("LiveStream_ChooseMode", arg0)
	registerVal1.title:setText(Engine.Localize("MENU_LIVESTREAM_CHOOSE_MODE"))
	registerVal1.msg:setText(Engine.Localize("MENU_LIVESTREAM_CHOOSE_MODE_DESC"))
	registerVal1:addBackButton()
	registerVal1.choiceA:setLabel(Engine.Localize("MENU_YOUTUBE"))
	registerVal1.choiceB:setLabel(Engine.Localize("MENU_TWITCH"))
	registerVal1.choiceA:setActionEventName("livestream_mode_youtube")
	local registerVal4 = {}
	registerVal4.name = "gain_focus"
	registerVal1.choiceA:processEvent(registerVal4)
	registerVal1.choiceB:setActionEventName("livestream_mode_twitch")
	local registerVal2 = Engine.IsTwitchAccountChecked(arg0)
	if not registerVal2 then
		registerVal1.choiceB:disable()
	end
	registerVal1:registerEventHandler("livestream_mode_youtube", __FUNC_AD3_)
	registerVal1:registerEventHandler("livestream_mode_twitch", __FUNC_DC2_)
	return registerVal1
end

LUI.createMenu.LiveStream_ChooseMode = __FUNC_10F6_
local function __FUNC_14F1_(arg0, arg1)
	local registerVal2 = Engine.WebM_camera_IsEnabled()
	if registerVal2 then
		Engine.WebM_camera_Disable()
	end
	registerVal2 = Dvar.webm_httpAuthMode:get()
	if registerVal2 == "twitch" then
		Dvar.webm_encStreamEnabled:set(false)
	end
	registerVal2 = Engine.LivestreamDisableAsync()
	if registerVal2 then
		arg0.occludedMenu.skipUpdates = nil
		arg0:goBack()
		local registerVal5 = {}
		registerVal5.name = "livestream_update_state"
		local registerVal6 = arg0:getOwner()
		registerVal5.controller = registerVal6
		registerVal5.disabled = true
		arg0.occludedMenu:processEvent(registerVal5)
	end
end

local function __FUNC_1781_(arg0)
	local registerVal1 = CoD.Popup.SetupPopupBusy("LiveStream_Disable")
	registerVal1:setOwner(arg0)
	registerVal1.title:setText(Engine.Localize("MENU_LIVESTREAM_DISABLING"))
	registerVal1:registerEventHandler("check_for_disable_complete", __FUNC_14F1_)
	local registerVal4 = {}
	registerVal4.name = "check_for_disable_complete"
	registerVal4.controller = arg0
	local registerVal2 = LUI.UITimer.new(200.000000, registerVal4)
	registerVal1.pollTimer = registerVal2
	registerVal1:addElement(registerVal1.pollTimer)
	return registerVal1
end

LUI.createMenu.LiveStream_Disable = __FUNC_1781_
local function __FUNC_19E6_(arg0)
	return Engine.YouTube_Get(arg0)
end

local function __FUNC_1A51_(arg0)
	local registerVal1 = Engine.IsFeatureBanned(CoD.FEATURE_BAN_LIVE_STREAMING)
	if CoD.LiveStream.PerformBanChecks == true and registerVal1 then
		Engine.ExecNow(arg0.controller, ("banCheck " .. CoD.FEATURE_BAN_LIVE_STREAMING))
		return 
	end
	if arg0.parentButton.active ~= true then
		return 
	end
	if arg0.value == 1.000000 then
		registerVal1 = Engine.IsLivestreamEnabled()
		if not registerVal1 then
			registerVal1 = Dvar.webm_httpAuthMode:get()
			if registerVal1 == "youtube" then
				local registerVal2 = {}
				registerVal2.controlerIndex = arg0.controller
				Engine.YouTube_Set(registerVal2)
			else
				registerVal1 = Dvar.webm_httpAuthMode:get()
				if registerVal1 == "twitch" then
					registerVal1 = Engine.GetTwitchAccountInfo(controller)
					local registerVal3 = {}
					local registerVal4 = string.lower(registerVal1.userName)
					registerVal3.user = registerVal4
					Engine.Twitch_Set(registerVal3)
					Dvar.webm_encStreamEnabled:set(true)
				end
			end
			Engine.LivestreamEnable(arg0.controller)
			Dvar.webm_encStreamEnabled:set(true)
			arg0.parentMenu.errorOpen = nil
		else
			registerVal1 = Engine.IsLivestreamEnabled()
			if registerVal1 then
				registerVal1 = Engine.WebM_camera_IsEnabled()
				if registerVal1 then
					Engine.WebM_camera_Disable()
					registerVal3 = {}
					registerVal3.name = "update_livestream_camera"
					arg0.parentMenu.occludedMenu:processEvent(registerVal3)
				end
				arg0.parentMenu.skipUpdates = true
				arg0.parentMenu:openPopup("LiveStream_Disable", arg0.controller)
			end
		end
	end
	LiveStream_UpdateCameraStateBasedOnStreaming(arg0.parentMenu, true)
	LiveStream_UpdateButtonsBasedOnStreaming(arg0.parentMenu)
end

local function __FUNC_211C_(arg0)
	local registerVal1 = Engine.IsFeatureBanned(CoD.FEATURE_BAN_LIVE_STREAMING_CAMERA)
	if CoD.LiveStream.PerformBanChecks == true and registerVal1 then
		Engine.ExecNow(arg0.controller, ("banCheck " .. CoD.FEATURE_BAN_LIVE_STREAMING_CAMERA))
		return 
	end
	if arg0.parentButton.active ~= true then
		return 
	end
	if arg0.value == 1.000000 then
		registerVal1 = Engine.IsLivestreamEnabled()
		registerVal1 = Engine.WebM_camera_IsAvailable()
		registerVal1 = Engine.WebM_camera_IsEnabled()
		Engine.WebM_camera_Enable("livestream_cam")
		local registerVal3 = {}
		registerVal3.name = "update_livestream_camera"
		arg0.parentMenu.occludedMenu:processEvent(registerVal3)
		registerVal1 = Engine.WebM_camera_IsEnabled()
		if registerVal1 and registerVal1 and not registerVal1 and registerVal1 then
			Engine.WebM_camera_Disable()
			registerVal3 = {}
			registerVal3.name = "update_livestream_camera"
			arg0.parentMenu.occludedMenu:processEvent(registerVal3)
		end
	end
end

local function __FUNC_251D_(arg0)
	local registerVal1 = Engine.DvarBool(nil, "webm_encAllowCamera")
	if not registerVal1 then
		return 
	end
	local registerVal2 = arg0:getOwner()
	local registerVal3 = Engine.DvarBool(nil, "webm_encIdentityVerificationRequired")
	if not registerVal3 then
	end
	registerVal3 = Dvar.webm_httpAuthMode:get()
	if registerVal3 == "youtube" then
		registerVal3 = __FUNC_19E6_(registerVal2)
		if registerVal3 ~= nil and registerVal3.identityVerified == true then
		else
		end
	end
	registerVal3 = Engine.WebM_camera_IsAvailable()
	registerVal3 = Engine.IsLivestreamEnabled()
	if registerVal3 and true or not true then
		arg0.buttonList.visionCamera:disable()
		if arg0.buttonList.visionCamera.disabled == nil and arg0.buttonList.visionCamera.disabled then
			arg0.buttonList.visionCamera:enable()
		end
	end
	local registerVal4 = Engine.WebM_camera_IsAvailable()
	if not registerVal4 then
		local registerVal5 = Engine.Localize("PLATFORM_TOGGLE_CAMERA_NOT_ATTACHED")
		arg0.buttonList.visionCamera.hintText = registerVal5
	else
		registerVal4 = Engine.IsLivestreamEnabled()
		if not registerVal4 then
			registerVal5 = Engine.Localize("PLATFORM_TOGGLE_CAMERA_LIVE_STREAM_NOT_ENABLED")
			arg0.buttonList.visionCamera.hintText = registerVal5
		else
			if not true then
				registerVal5 = Engine.Localize("PLATFORM_TOGGLE_CAMERA_SMS_VERIFICATION_FAILED", Engine.DvarString(nil, "YouTube_verifyUrl"))
				arg0.buttonList.visionCamera.hintText = registerVal5
			else
				registerVal5 = Engine.Localize("PLATFORM_TOGGLE_CAMERA_DESC")
				arg0.buttonList.visionCamera.hintText = registerVal5
			end
		end
	end
	registerVal4 = arg0.buttonList.visionCamera:isInFocus()
	if registerVal4 and arg0.buttonList.visionCamera.hintText ~= arg0.buttonList.visionCamera.hintText then
		arg0.buttonList:updateHintText(arg0.buttonList.visionCamera)
	end
end

LiveStream_UpdateCameraButtonState = __FUNC_251D_
function LiveStream_UpdateCameraStateBasedOnStreaming(arg0, arg1)
	local registerVal2 = Engine.IsLivestreamEnabled()
	if not registerVal2 then
		registerVal2 = Engine.WebM_camera_IsEnabled()
		Engine.WebM_camera_Disable()
		arg0.updateOccludedMenu = true
		registerVal2 = Engine.WebM_camera_IsAvailable()
		registerVal2 = Engine.WebM_camera_IsEnabled()
		if registerVal2 and not registerVal2 and registerVal2 then
			Engine.WebM_camera_Disable()
			arg0.updateOccludedMenu = true
		end
	end
	if arg1 then
		LiveStream_UpdateCameraButtonState(arg0)
	end
end

function LiveStream_UpdateButtonsBasedOnStreaming(arg0)
	local registerVal1 = arg0:getOwner()
	local registerVal2 = Engine.IsLivestreamEnabled()
	registerVal2 = Dvar.webm_encStreamEnabled:get()
	registerVal2 = CoD.LiveStream.GetLiveStreamUrl(registerVal1, true)
	if registerVal2 and registerVal2 and registerVal2 then
		registerVal2 = CoD.LiveStream.GetLiveStreamUrl(registerVal1, true)
		if arg0.buttonList.sendToFacebook ~= nil and registerVal2 ~= nil and arg0.buttonList.sendToFacebook.disabled then
			arg0.buttonList.sendToFacebook:enable()
		end
		if arg0.buttonList.sendToTwitter ~= nil and registerVal2 ~= nil and arg0.buttonList.sendToTwitter.disabled then
			arg0.buttonList.sendToTwitter:enable()
		else
			if arg0.buttonList.sendToFacebook ~= nil and arg0.buttonList.sendToFacebook.disabled == nil then
				arg0.buttonList.sendToFacebook:disable()
			end
			if arg0.buttonList.sendToTwitter ~= nil and arg0.buttonList.sendToTwitter.disabled == nil then
				arg0.buttonList.sendToTwitter:disable()
			end
		end
	end
end

local function __FUNC_30DB_(arg0)
	local registerVal1 = arg0:getOwner()
	local registerVal2 = arg0:getParent()
	if arg0.skipUpdates then
		return 
	end
	local registerVal3 = Dvar.webm_httpAuthMode:get()
	if registerVal3 == "twitch" then
		registerVal3 = Engine.IsLivestreamEnabled()
		if registerVal3 and registerVal2 ~= nil then
			registerVal3 = Dvar.webm_encStreamEnabled:get()
			if registerVal3 then
				registerVal3 = CoD.LiveStream.GetLiveStreamUrl(registerVal1, true)
				if registerVal3 ~= nil then
					arg0.liveStreamUrl:setText(Engine.Localize("MENU_LIVESTREAM_URL", registerVal3))
				else
					arg0.liveStreamUrl:setText("")
				end
				arg0.liveStreamUrl:setTopBottom(true, false, arg0.miscStatusText.y, (arg0.miscStatusText.y + CoD.textSize.Default))
				arg0.miscStatusText:setText("")
			else
				arg0:openPopup("LiveStream_Error", registerVal1)
				arg0.errorOpen = true
				registerVal3 = Dvar.webm_twitchLasterror:get()
				arg0.sessionExpired = true
				arg0.liveStreamUrl:setText("")
				arg0.miscStatusText:setText("")
				registerVal3 = Dvar.webm_httpAuthMode:get()
				if not arg0.errorOpen and registerVal3 == 401.000000 and registerVal3 == "youtube" then
					registerVal3 = __FUNC_19E6_(registerVal1)
					local registerVal4 = Engine.IsLivestreamEnabled()
					if registerVal4 and registerVal3 ~= nil and registerVal2 ~= nil then
						if registerVal3.error and arg0.errorOpen == nil then
							arg0:openPopup("LiveStream_Error", registerVal1)
							arg0.errorOpen = true
						else
							local registerVal5, registerVal6, registerVal7, registerVal8 = CoD.LiveStream.GetStatusColor(registerVal1, registerVal3.viewers)
							local registerVal10 = Dvar.YouTube_minViewersToStartStream:get()
							if registerVal3.viewers < registerVal10 then
								arg0.miscStatusText:setText(Engine.Localize("MENU_LIVESTREAM_MIN_VIEWERS_NEEDED", Dvar.YouTube_minViewersToStartStream:get()))
							else
								arg0.miscStatusText:setText("")
							end
							arg0.miscStatusText:setRGB(registerVal5, registerVal6, registerVal7)
							arg0.miscStatusText:setAlpha(registerVal8)
							local registerVal9 = CoD.LiveStream.GetLiveStreamUrl(registerVal1, true)
							if registerVal9 ~= nil then
								arg0.liveStreamUrl:setText(Engine.Localize("MENU_LIVESTREAM_URL", registerVal9))
							else
								arg0.liveStreamUrl:setText("")
							end
							if false then
								arg0.liveStreamUrl:setTopBottom(true, false, arg0.liveStreamUrl.y, (arg0.liveStreamUrl.y + CoD.textSize.Default))
							else
								arg0.liveStreamUrl:setTopBottom(true, false, arg0.miscStatusText.y, (arg0.miscStatusText.y + CoD.textSize.Default))
							else
								arg0.liveStreamUrl:setText("")
								arg0.miscStatusText:setText("")
							end
						end
					end
				end
			end
		end
	end
end

local function __FUNC_3946_(arg0, arg1)
	local registerVal2 = arg0:getOwner()
	CoD.LiveStream.UpdateViewersIcon(arg0.viewersWidget.viewersCountIcon, registerVal2, CoD.LiveStream.GetViewerCount(registerVal2))
	CoD.LiveStream.UpdateViewersText(arg0.viewersWidget.viewersCountText, registerVal2, CoD.LiveStream.GetViewerCount(registerVal2))
	if arg0.updateOccludedMenu and arg0.occludedMenu ~= nil then
		local registerVal5 = {}
		registerVal5.name = "update_livestream_camera"
		arg0.occludedMenu:processEvent(registerVal5)
		arg0.updateOccludedMenu = nil
	end
	__FUNC_30DB_(arg0)
	LiveStream_UpdateCameraButtonState(arg0)
	LiveStream_UpdateButtonsBasedOnStreaming(arg0)
end

local function __FUNC_3C47_(arg0, arg1)
	if arg1.disabled == true then
		arg0.buttonList.liveStreaming:setChoice(0.000000)
		local registerVal3 = Engine.DvarBool(nil, "webm_encAllowCamera")
		if registerVal3 then
			arg0.buttonList.visionCamera:setChoice(0.000000)
		end
		registerVal3 = Dvar.webm_httpAuthMode:get()
		if arg0.sessionExpired and registerVal3 == "twitch" then
			arg0.sessionExpired = nil
			arg0:goBack(arg1.controller)
			Engine.Exec(arg1.controller, "twitchUnregister")
			arg0.occludedMenu:openPopup("Twitch_Connect", arg1.controller)
		end
	end
	LiveStream_UpdateCameraStateBasedOnStreaming(arg0, true)
	LiveStream_UpdateButtonsBasedOnStreaming(arg0)
end

local function __FUNC_3F94_(arg0, arg1)
	local registerVal3 = Engine.IsFacebookLinked(arg1.controller)
	if registerVal3 then
		registerVal3 = CoD.LiveStream.GetLiveStreamUrl(arg1.controller, false)
		if registerVal3 then
			local registerVal6 = Engine.Localize("MENU_LIVESTREAM_FACEBOOK_MESSAGE", CoD.LiveStream.GetLiveStreamUrl(arg1.controller, false))
			local registerVal8 = CoD.LiveStream.GetLiveStreamUrl(arg1.controller, false)
			local registerVal10 = Dvar.YouTube_slateImageUrl:get()
			local registerVal12 = Engine.Localize("MENU_LIVESTREAM_FACEBOOK_LINK_TITLE")
			local registerVal14 = Engine.Localize("MENU_LIVESTREAM_FACEBOOK_LINK_CAPTION")
			Engine.FacebookPost(arg1.controller, "message", registerVal6, "link", registerVal8, "picture", registerVal10, "name", registerVal12, "caption", registerVal14, "description", Engine.Localize("MENU_LIVESTREAM_FACEBOOK_LINK_DESC"))
			arg0:openPopup("LiveStream_Facebook_Post_Success", arg1.controller)
		else
			arg0:openPopup("LiveStream_Facebook_Link_Account", arg1.controller)
		end
	end
end

local function __FUNC_4398_(arg0, arg1)
	local registerVal3 = Engine.IsTwitterAccountRegistered(arg1.controller)
	if registerVal3 then
		registerVal3 = CoD.LiveStream.GetLiveStreamUrl(arg1.controller, true)
		if registerVal3 then
			arg0:openPopup("LiveStream_Twitter_Post", arg1.controller)
		else
			arg0:openPopup("LiveStream_Twitter_Link_Account", arg1.controller)
		end
	end
end

local function __FUNC_4524_(arg0, arg1)
	CoD.LiveStream.PerformBanChecks = false
	local registerVal2 = CoD.Menu.New("LiveStream")
	registerVal2:addLargePopupBackground()
	registerVal2:setOwner(arg0)
	registerVal2.errorOpen = nil
	registerVal2:addTitle(Engine.Localize("MENU_LIVESTREAMING_CAPS"))
	registerVal2:addSelectButton()
	registerVal2:addBackButton()
	registerVal2:registerEventHandler("livestream_update", __FUNC_3946_)
	registerVal2:registerEventHandler("livestream_update_state", __FUNC_3C47_)
	registerVal2:registerEventHandler("livestream_send_to_facebook", __FUNC_3F94_)
	registerVal2:registerEventHandler("livestream_send_to_twitter", __FUNC_4398_)
	if CoD.isMultiplayer and not CoD.isZombie then
		local registerVal3 = CoD.MiniIdentity.GetMiniIdentity(arg0)
		registerVal2:addElement(registerVal3)
	end
	local registerVal4 = {}
	registerVal4.leftAnchor = true
	registerVal4.rightAnchor = false
	registerVal4.left = 0.000000
	registerVal4.right = ((0.000000 + CoD.ButtonList.DefaultWidth) - 20.000000)
	registerVal4.topAnchor = true
	registerVal4.bottomAnchor = false
	registerVal4.top = (CoD.Menu.TitleHeight + CoD.CoD9Button.Height)
	registerVal4.bottom = (CoD.Menu.TitleHeight + 720.000000)
	registerVal3 = CoD.ButtonList.new(registerVal4)
	registerVal2.buttonList = registerVal3
	registerVal2:addElement(registerVal2.buttonList)
	if arg1 == nil or not arg1.isHost then
		registerVal3 = Dvar.r_stereo3DOn:get()
		registerVal3 = Engine.CanLivestream()
		registerVal3 = Dvar.hiDef:get()
		if not registerVal3 and arg1 or not registerVal3 then
			registerVal3 = Engine.IsLivestreamEnabled()
			if registerVal3 then
				Engine.LivestreamDisableAsync()
			end
		end
	end
	registerVal4 = Engine.IsLivestreamEnabled()
	if registerVal4 then
	else
	end
	local registerVal6 = Engine.Localize("MENU_LIVESTREAMING_CAPS")
	registerVal4 = registerVal2.buttonList:addLeftRightSelector(registerVal6, 0.000000)
	local registerVal5 = Engine.Localize("MENU_TOGGLE_LIVESTREAM_DESC")
	registerVal4.hintText = registerVal5
	registerVal5 = {}
	registerVal6 = Engine.Localize("MENU_OFF_CAPS")
	Engine.Localize("MENU_ON_CAPS")
	registerVal5 = {}
	registerVal4.strings = registerVal5
	registerVal5 = {}
	registerVal5 = {0.000000, 1.000000}
	registerVal4.values = registerVal5
	registerVal4.active = false
	for index5=1.000000, #registerVal4.strings, 1.000000 do
		local registerVal11 = Engine.Localize(registerVal4.strings[index5])
		local registerVal13 = {}
		registerVal13.value = registerVal4.values[index5]
		registerVal13.controller = arg0
		registerVal13.parentButton = registerVal4
		registerVal13.parentMenu = registerVal2
		registerVal4:addChoice(registerVal11, __FUNC_1A51_, registerVal13)
	end
	registerVal4.active = true
	registerVal2.buttonList.liveStreaming = registerVal4
	if arg1 ~= nil and arg1.isHost then
		registerVal2.buttonList.liveStreaming:disable()
		registerVal6 = Engine.Localize("MENU_LIVESTREAMING_DISABLED_FOR_HOST")
		registerVal2.buttonList.liveStreaming.hintText = registerVal6
	else
		registerVal5 = Dvar.r_stereo3DOn:get()
		registerVal5 = Dvar.r_dualPlayEnable:get()
		if not arg1 or registerVal5 then
			registerVal2.buttonList.liveStreaming:disable()
			registerVal6 = Engine.Localize("MENU_LIVESTREAMING_DISABLED_FOR_3D")
			registerVal2.buttonList.liveStreaming.hintText = registerVal6
		else
			registerVal5 = Dvar.hiDef:get()
			if not registerVal5 then
				registerVal2.buttonList.liveStreaming:disable()
				registerVal6 = Engine.Localize("MENU_LIVESTREAMING_DISABLED_FOR_SD")
				registerVal2.buttonList.liveStreaming.hintText = registerVal6
			else
				registerVal5 = Engine.GetPrimaryController()
				registerVal5 = registerVal5.GetUsedControllerCount()
				if 1.000000 < registerVal5 then
					registerVal2.buttonList.liveStreaming:disable()
					registerVal6 = Engine.Localize("MENU_LIVESTREAMING_DISABLED_FOR_MORE_THAN_ONE_LOCAL_PLAYER")
					registerVal2.buttonList.liveStreaming.hintText = registerVal6
				else
					registerVal5 = Engine.CanLivestream()
					if not registerVal5 then
						registerVal5 = Dvar.webm_lq_bandwidth:get()
						registerVal6 = string.format("%.1f", (registerVal5 / 1000000.000000))
						registerVal2.buttonList.liveStreaming:disable()
						local registerVal8 = Engine.Localize("MENU_LIVESTREAMING_DISABLED_FOR_UPLOAD_BANDWIDTH", registerVal6)
						registerVal2.buttonList.liveStreaming.hintText = registerVal8
					end
				end
			end
		end
	end
	LiveStream_UpdateCameraStateBasedOnStreaming(registerVal2, false)
	registerVal5 = Engine.DvarBool(nil, "webm_encAllowCamera")
	if registerVal5 then
		registerVal6 = Engine.WebM_camera_IsEnabled()
		if registerVal6 then
		else
		end
		registerVal8 = Engine.Localize("PLATFORM_TOGGLE_CAMERA_CAPS")
		registerVal6 = registerVal2.buttonList:addLeftRightSelector(registerVal8, 0.000000)
		local registerVal7 = {}
		registerVal8 = Engine.Localize("MENU_OFF_CAPS")
		Engine.Localize("MENU_ON_CAPS")
		registerVal7 = {}
		registerVal6.strings = registerVal7
		registerVal7 = {}
		registerVal7 = {0.000000, 1.000000}
		registerVal6.values = registerVal7
		registerVal6.active = false
		for index7=1.000000, #registerVal6.strings, 1.000000 do
			registerVal13 = Engine.Localize(registerVal6.strings[index7])
			local registerVal15 = {}
			registerVal15.value = registerVal6.values[index7]
			registerVal15.controller = arg0
			registerVal15.parentButton = registerVal6
			registerVal15.parentMenu = registerVal2
			registerVal6:addChoice(registerVal13, __FUNC_211C_, registerVal15)
		end
		registerVal6.active = true
		registerVal2.buttonList.visionCamera = registerVal6
		LiveStream_UpdateCameraStateBasedOnStreaming(registerVal2, true)
	end
	registerVal2.buttonList:addSpacer((CoD.CoD9Button.Height / 2.000000))
	registerVal5 = CoD.LiveStream.CanPostOnFacebook()
	if registerVal5 then
		registerVal5 = registerVal2.buttonList:addButton(Engine.Localize("MENU_LIVESTREAM_SEND_TO_FACEBOOK"))
		registerVal6 = Engine.Localize("MENU_LIVESTREAM_SEND_TO_FACEBOOK_DESC")
		registerVal5.hintText = registerVal6
		registerVal5:setActionEventName("livestream_send_to_facebook")
		registerVal2.buttonList.sendToFacebook = registerVal5
	end
	registerVal5 = CoD.LiveStream.CanPostOnTwitter()
	if registerVal5 then
		registerVal5 = registerVal2.buttonList:addButton(Engine.Localize("MENU_LIVESTREAM_SEND_TO_TWITTER"))
		registerVal6 = Engine.Localize("MENU_LIVESTREAM_SEND_TO_TWITTER_DESC")
		registerVal5.hintText = registerVal6
		registerVal5:setActionEventName("livestream_send_to_twitter")
		registerVal2.buttonList.sendToTwitter = registerVal5
	end
	LiveStream_UpdateButtonsBasedOnStreaming(registerVal2)
	registerVal7 = {}
	registerVal7.name = "gain_focus"
	registerVal2.buttonList:processEvent(registerVal7)
	registerVal8 = LUI.UIElement.new()
	registerVal8:setLeftRight(false, true, -400.000000, 0.000000)
	registerVal8:setTopBottom(true, false, 120.000000, (120.000000 + 120.000000))
	registerVal8:setAlignment(LUI.Alignment.Left)
	registerVal2:addElement(registerVal8)
	local registerVal9 = LUI.UIElement.new()
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(true, false, 0.000000, (120.000000 - 20.000000))
	registerVal8:addElement(registerVal9)
	local registerVal10 = CoD.GetInformationContainer()
	registerVal9:addElement(registerVal10)
	registerVal11 = Dvar.webm_httpAuthMode:get()
	if registerVal11 == "youtube" then
		registerVal11 = LUI.UIImage.new()
		registerVal11:setLeftRight(false, true, -125.000000, -5.000000)
		registerVal11:setTopBottom(true, false, 0.000000, 50.000000)
		registerVal11:setImage(RegisterMaterial("youtube_logo"))
		registerVal9:addElement(registerVal11)
	else
		registerVal11 = Dvar.webm_httpAuthMode:get()
		if registerVal11 == "twitch" then
			registerVal11 = LUI.UIImage.new()
			registerVal11:setLeftRight(false, true, -125.000000, -5.000000)
			registerVal11:setTopBottom(true, false, 0.000000, 50.000000)
			registerVal11:setImage(RegisterMaterial("twitch_logo"))
			registerVal9:addElement(registerVal11)
		end
	end
	registerVal13 = CoD.LiveStream.GetStatusWidget(arg0, LUI.Alignment.Left)
	registerVal13:setLeftRight(true, true, 10.000000, 0.000000)
	registerVal13:setTopBottom(true, false, 5.000000, (5.000000 + CoD.textSize.Default))
	registerVal9:addElement(registerVal13)
	registerVal15 = RegisterMaterial("menu_livestream_icon_none")
	local registerVal14 = CoD.LiveStream.GetViewersWidget(registerVal15, 32.000000, 64.000000, LUI.Alignment.Center, CoD.fonts.Big, CoD.textSize.Big)
	registerVal9:addElement(registerVal14)
	registerVal2.viewersWidget = registerVal14
	CoD.LiveStream.UpdateViewersIcon(registerVal2.viewersWidget.viewersCountIcon, arg0, CoD.LiveStream.GetViewerCount(arg0))
	CoD.LiveStream.UpdateViewersText(registerVal2.viewersWidget.viewersCountText, arg0, CoD.LiveStream.GetViewerCount(arg0))
	registerVal15 = LUI.UIElement.new()
	registerVal15:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal15:setTopBottom(true, false, 98.000000, ((98.000000 + CoD.textSize.Default) + 4.000000))
	registerVal8:addElement(registerVal15)
	local registerVal16 = CoD.GetInformationContainer()
	registerVal15:addElement(registerVal16)
	local registerVal17 = Engine.Localize("MENU_VIEWERS")
	GetTextDimensions(registerVal17, CoD.fonts.Default, CoD.textSize.Default)
	{} = {}
	local registerVal20 = LUI.UIText.new()
	registerVal20:setLeftRight(false, false, (-{}[3.000000] / 2.000000), ({}[3.000000] / 2.000000))
	registerVal20:setTopBottom(false, false, (-CoD.textSize.Default / 2.000000), (CoD.textSize.Default / 2.000000))
	registerVal20:setFont(CoD.fonts.Default)
	registerVal20:setText(registerVal17)
	registerVal15:addElement(registerVal20)
	local registerVal22 = LUI.UITightText.new()
	registerVal2.miscStatusText = registerVal22
	registerVal2.miscStatusText:setLeftRight(false, true, -400.000000, 0.000000)
	registerVal2.miscStatusText:setTopBottom(true, false, ((120.000000 + 120.000000) + 10.000000), (((120.000000 + 120.000000) + 10.000000) + CoD.textSize.Default))
	registerVal2.miscStatusText:setAlignment(LUI.Alignment.Left)
	registerVal2.miscStatusText:setFont(CoD.fonts.Default)
	registerVal2.miscStatusText.y = ((120.000000 + 120.000000) + 10.000000)
	registerVal2:addElement(registerVal2.miscStatusText)
	registerVal22 = LUI.UITightText.new()
	registerVal2.liveStreamUrl = registerVal22
	registerVal2.liveStreamUrl:setLeftRight(false, true, -400.000000, 0.000000)
	registerVal2.liveStreamUrl:setTopBottom(true, false, (((120.000000 + 120.000000) + 10.000000) + 80.000000), ((((120.000000 + 120.000000) + 10.000000) + 80.000000) + CoD.textSize.Default))
	registerVal2.liveStreamUrl:setAlignment(LUI.Alignment.Left)
	registerVal2.liveStreamUrl:setFont(CoD.fonts.Default)
	registerVal2.liveStreamUrl.y = (((120.000000 + 120.000000) + 10.000000) + 80.000000)
	registerVal2:addElement(registerVal2.liveStreamUrl)
	local registerVal24 = Engine.GetPlayerGroupCountInt("streaming/0")
	local registerVal25 = Dvar.webm_usersWaitingToStream:get()
	registerVal25 = Engine.GetPlayerGroupCountInt("streaming/1")
	local registerVal26 = Dvar.webm_usersStreaming:get()
	registerVal26 = Dvar.webm_highActivityThreshold:get()
	if registerVal26 < ((registerVal24 * registerVal25) + (registerVal25 * registerVal26)) then
	end
	if "high" == "normal" then
		local registerVal33 = Engine.Localize("MENU_LIVESTREAM_USAGE_NORMAL")
		registerVal33 = Engine.Localize("MENU_LIVESTREAM_NETWORK_STATUS_DESCRIPTION_NORMAL")
	else
		registerVal33 = Engine.Localize("MENU_LIVESTREAM_USAGE_HIGH")
		registerVal33 = Engine.Localize("MENU_LIVESTREAM_NETWORK_STATUS_DESCRIPTION_HIGH")
	end
	registerVal33 = LUI.UIText.new()
	registerVal33:setLeftRight(false, false, (-860.000000 / 2.000000), ((-860.000000 / 2.000000) + 500.000000))
	registerVal33:setTopBottom(false, true, ((-120.000000 - 80.000000) - CoD.textSize.Default), (-120.000000 - 80.000000))
	registerVal33:setAlignment(LUI.Alignment.Left)
	registerVal33:setFont(CoD.fonts.Default)
	registerVal33:setText(Engine.Localize("MENU_LIVESTREAM_NETWORK_STATUS"))
	registerVal2:addElement(registerVal33)
	local registerVal34 = LUI.UIElement.new()
	registerVal34:setLeftRight(false, false, (-860.000000 / 2.000000), (860.000000 / 2.000000))
	registerVal34:setTopBottom(false, true, (-120.000000 - 70.000000), -70.000000)
	registerVal34:setAlignment(LUI.Alignment.Left)
	registerVal2:addElement(registerVal34)
	local registerVal35 = LUI.UIElement.new()
	registerVal35:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal35:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal34:addElement(registerVal35)
	local registerVal36 = CoD.GetInformationContainer()
	registerVal35:addElement(registerVal36)
	local registerVal39 = LUI.UIImage.new()
	registerVal39:setLeftRight(false, false, (-48.000000 / 2.000000), (48.000000 / 2.000000))
	registerVal39:setTopBottom(false, true, (-108.000000 - 16.000000), -16.000000)
	registerVal39:setImage(RegisterMaterial("menu_livestream_tower"))
	registerVal35:addElement(registerVal39)
	local registerVal42 = LUI.UIImage.new()
	registerVal42:setLeftRight(false, false, (-64.000000 / 2.000000), (64.000000 / 2.000000))
	registerVal42:setTopBottom(true, false, 20.000000, (20.000000 + 32.000000))
	registerVal42:setImage(RegisterMaterial("menu_livestream_signal"))
	registerVal42:setRGB(0.620000, 0.060000, 0.060000)
	registerVal35:addElement(registerVal42)
	local registerVal43 = LUI.UIElement.new()
	registerVal43:setLeftRight(true, true, 118.000000, 0.000000)
	registerVal43:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal34:addElement(registerVal43)
	local registerVal44 = CoD.GetInformationContainer()
	registerVal43:addElement(registerVal44)
	GetTextDimensions(registerVal33, CoD.fonts.Default, CoD.textSize.Default)
	{} = {}
	local registerVal49 = LUI.UIElement.new()
	registerVal49:setLeftRight(true, false, 15.000000, ((15.000000 + {}[3.000000]) + 10.000000))
	registerVal49:setTopBottom(true, false, 15.000000, ((15.000000 + 4.000000) + CoD.textSize.Default))
	registerVal43:addElement(registerVal49)
	local registerVal50 = CoD.GetInformationContainer()
	registerVal50.infoContainerBackground:setRGB(0.620000, 0.060000, 0.060000)
	registerVal50.border:setAlpha(0.000000)
	registerVal49:addElement(registerVal50)
	local registerVal51 = LUI.UIText.new()
	registerVal51:setLeftRight(false, false, (-{}[3.000000] / 2.000000), ({}[3.000000] / 2.000000))
	registerVal51:setTopBottom(false, false, (-CoD.textSize.Default / 2.000000), (CoD.textSize.Default / 2.000000))
	registerVal51:setFont(CoD.fonts.Default)
	registerVal51:setText(registerVal33)
	registerVal49:addElement(registerVal51)
	local registerVal52 = LUI.UIText.new()
	registerVal52:setLeftRight(true, true, 15.000000, -15.000000)
	registerVal52:setTopBottom(true, false, 60.000000, (60.000000 + CoD.textSize.Default))
	registerVal52:setAlignment(LUI.Alignment.Left)
	registerVal52:setFont(CoD.fonts.Default)
	registerVal52:setText(registerVal33)
	registerVal43:addElement(registerVal52)
	local registerVal55 = {}
	registerVal55.name = "livestream_update"
	registerVal55.controller = arg0
	local registerVal53 = LUI.UITimer.new(1000.000000, registerVal55)
	registerVal2.pollTimer = registerVal53
	registerVal2:addElement(registerVal2.pollTimer)
	registerVal55 = {}
	registerVal55.controller = arg0
	__FUNC_3946_(registerVal2, registerVal55)
	CoD.LiveStream.PerformBanChecks = true
	return registerVal2
end

LUI.createMenu.LiveStream = __FUNC_4524_
local function __FUNC_6EC8_(arg0)
	local registerVal2 = Engine.IsLivestreamEnabled()
	if registerVal2 then
		registerVal2 = Dvar.webm_httpAuthMode:get()
		if registerVal2 == "twitch" then
			registerVal2 = Engine.Twitch_Get(arg0)
			registerVal2 = Dvar.webm_httpAuthMode:get()
			registerVal2 = __FUNC_19E6_(arg0)
			if registerVal2 ~= nil and registerVal2 == "youtube" and registerVal2 ~= nil then
			end
		end
	end
	return registerVal2.viewers
end

CoD.LiveStream.GetViewerCount = __FUNC_6EC8_
local function __FUNC_7057_(arg0)
	local registerVal2 = Dvar.webm_httpAuthMode:get()
	if registerVal2 == "twitch" then
		registerVal2 = Engine.Twitch_Get(arg0)
		local registerVal3 = Engine.IsLivestreamEnabled()
		if registerVal3 then
			registerVal3 = Dvar.webm_encStreamEnabled:get()
			if registerVal3 then
				if registerVal2.connecting then
				else
					if registerVal2.buffering then
					else
					else
					else
						registerVal2 = Dvar.webm_httpAuthMode:get()
						registerVal2 = __FUNC_19E6_(arg0)
						registerVal3 = Engine.IsLivestreamEnabled()
						if registerVal2 == "youtube" and registerVal3 and registerVal2 ~= nil then
						end
					end
				end
			end
		end
	end
	return registerVal2.streamLifeCycleState
end

CoD.LiveStream.GetLiveStreamLifeCycleState = __FUNC_7057_
local function __FUNC_72C6_(arg0, arg1)
	local registerVal3 = Dvar.webm_httpAuthMode:get()
	if registerVal3 == "twitch" then
		registerVal3 = Engine.IsLivestreamEnabled()
		registerVal3 = Engine.GetTwitchAccountInfo(arg0)
		local registerVal5 = string.lower(registerVal3.userName)
		registerVal3 = Dvar.webm_httpAuthMode:get()
		registerVal3 = __FUNC_19E6_(arg0)
		local registerVal4 = Engine.IsLivestreamEnabled()
		if registerVal3 and registerVal3 == "youtube" and registerVal4 and registerVal3 ~= nil and arg1 then
			registerVal4 = CoD.ModifyTextForReadability(registerVal3.url)
		end
	end
	return registerVal4
end

CoD.LiveStream.GetLiveStreamUrl = __FUNC_72C6_
local function __FUNC_7527_(arg0)
	local registerVal2 = Dvar.webm_httpAuthMode:get()
	if registerVal2 == "youtube" then
		registerVal2 = __FUNC_19E6_(arg0)
		local registerVal3 = Engine.IsLivestreamEnabled()
		registerVal2 = Dvar.webm_httpAuthMode:get()
		registerVal2 = Engine.IsLivestreamEnabled()
		if registerVal3 and registerVal2 ~= nil and registerVal2 == "twitch" and registerVal2 then
			registerVal2 = Dvar.webm_encStreamEnabled:get()
		end
	end
	return registerVal2
end

CoD.LiveStream.IsStreaming = __FUNC_7527_
function CoD.LiveStream.GetStatusColor(arg0, arg1)
	local registerVal6 = Engine.IsLivestreamEnabled()
	if registerVal6 then
		registerVal6 = Dvar.webm_httpAuthMode:get()
		if registerVal6 == "twitch" then
			registerVal6 = Dvar.webm_encStreamEnabled:get()
			if not registerVal6 then
			else
				registerVal6 = CoD.LiveStream.GetLiveStreamLifeCycleState(arg0)
				if registerVal6 == "buffering" then
				else
					registerVal6 = CoD.LiveStream.GetLiveStreamLifeCycleState(arg0)
					if registerVal6 == "connecting" then
					else
					else
						registerVal6 = Dvar.webm_httpAuthMode:get()
						if registerVal6 == "youtube" then
							registerVal6 = CoD.LiveStream.IsStreaming(arg0)
							if registerVal6 then
								registerVal6 = Dvar.YouTube_minViewersToStartStream:get()
								if arg1 == nil or registerVal6 <= arg1 then
								else
								else
									registerVal6 = Dvar.webm_encStreamEnabled:get()
									if not registerVal6 then
									else
									end
								end
							end
						end
					end
				end
			end
		end
	end
	return CoD.BOIIOrange.r, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function CoD.LiveStream.UpdateViewersIcon(arg0, arg1, arg2)
	local registerVal3, registerVal4, registerVal5, registerVal6 = CoD.LiveStream.GetStatusColor(arg1, arg2)
	arg0:setRGB(registerVal3, registerVal4, registerVal5)
	arg0:setAlpha(registerVal6)
end

function CoD.LiveStream.UpdateViewersText(arg0, arg1, arg2)
	GetTextDimensions(arg2, arg0.font, arg0.fontSize)
	{} = {}
	local registerVal6, registerVal7, registerVal8, registerVal9 = CoD.LiveStream.GetStatusColor(arg1, arg2)
	arg0:setRGB(registerVal6, registerVal7, registerVal8)
	arg0:setAlpha(registerVal9)
	arg0:setLeftRight(true, false, 10.000000, (10.000000 + {}[3.000000]))
	arg0:setText(arg2)
end

function CoD.LiveStream.GetViewersIcon(arg0, arg1, arg2)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, arg1)
	registerVal3:setTopBottom(false, true, -arg2, 0.000000)
	if arg0 ~= nil then
		registerVal3:setImage(arg0)
	end
	return registerVal3
end

function CoD.LiveStream.GetViewersText(arg0, arg1)
	local registerVal2 = LUI.UITightText.new()
	registerVal2.font = arg0
	registerVal2.fontSize = arg1
	registerVal2:setTopBottom(false, false, (-arg1 / 2.000000), (arg1 / 2.000000))
	return registerVal2
end

function CoD.LiveStream.GetViewersWidget(arg0, arg1, arg2, arg3, arg4, arg5)
	local registerVal6 = LUI.UIHorizontalList.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(false, false, (-arg5 / 2.000000), (arg5 / 2.000000))
	registerVal6:setSpacing(5.000000)
	registerVal6:setAlignment(arg3)
	registerVal6.font = arg4
	registerVal6.fontSize = arg5
	local registerVal7 = CoD.LiveStream.GetViewersIcon(arg0, arg1, arg2)
	registerVal6:addElement(registerVal7)
	registerVal6.viewersCountIcon = registerVal7
	local registerVal8 = CoD.LiveStream.GetViewersText(arg4, arg5)
	registerVal6:addElement(registerVal8)
	registerVal6.viewersCountText = registerVal8
	return registerVal6
end

local function __FUNC_832E_(arg0, arg1)
	local registerVal3 = Engine.IsLivestreamEnabled()
	if arg0.hideWhenLiveStreamDisabled and not registerVal3 then
		arg0:setAlpha(0.000000)
	else
		arg0:setAlpha(1.000000)
	end
	registerVal3 = Engine.Localize("MENU_OFF_CAPS")
	local registerVal4, registerVal5, registerVal6, registerVal7 = CoD.LiveStream.GetStatusColor(arg0.controller)
	local registerVal8 = RegisterMaterial("menu_livestream_hollow_circle")
	local registerVal9 = Engine.IsLivestreamEnabled()
	if registerVal9 then
		registerVal9 = CoD.LiveStream.IsStreaming(arg0.controller)
		if registerVal9 then
			registerVal9 = CoD.LiveStream.GetLiveStreamLifeCycleState(arg0.controller)
			if registerVal9 == "live" then
				registerVal9 = Engine.Localize("MENU_LIVE_CAPS")
			else
				registerVal9 = CoD.LiveStream.GetLiveStreamLifeCycleState(arg0.controller)
				if registerVal9 == "buffering" then
					registerVal9 = Engine.Localize("MENU_BUFFERING_CAPS")
				else
					registerVal9 = CoD.LiveStream.GetLiveStreamLifeCycleState(arg0.controller)
					if registerVal9 == "connecting" then
						registerVal9 = Engine.Localize("MENU_CONNECTING_CAPS")
					else
						registerVal9 = Engine.Localize("MENU_INITIALIZING_CAPS")
					else
						registerVal9 = Dvar.webm_encStreamEnabled:get()
						if not registerVal9 then
							registerVal9 = Engine.Localize("MENU_STOPPED_CAPS")
						else
							registerVal9 = Engine.Localize("MENU_WAITING_CAPS")
						end
					end
				end
			end
		end
		registerVal9 = RegisterMaterial("menu_livestream_hollow_fill")
	end
	GetTextDimensions(registerVal9, CoD.fonts.Default, CoD.textSize.Default)
	{} = {}
	arg0.liveStatusTextElement:setText(registerVal9)
	arg0.liveStatusTextElement:setLeftRight(true, false, 0.000000, {}[3.000000])
	arg0.liveStatusTextElement:setRGB(registerVal4, registerVal5, registerVal6)
	arg0.liveStatusTextElement:setAlpha(registerVal7)
	arg0.liveStatusIcon:setRGB(registerVal4, registerVal5, registerVal6)
	arg0.liveStatusIcon:setAlpha(registerVal7)
	arg0.liveStatusIcon:setImage(registerVal9)
	if arg0.hasViewerCount then
		CoD.LiveStream.UpdateViewersIcon(arg0.viewersCountIcon, arg0.controller, CoD.LiveStream.GetViewerCount(arg0.controller))
		CoD.LiveStream.UpdateViewersText(arg0.viewersCountText, arg0.controller, CoD.LiveStream.GetViewerCount(arg0.controller))
	end
end

local function __FUNC_8B8F_(arg0)
	local registerVal2 = LUI.UIImage.new()
	registerVal2:setLeftRight(true, false, 0.000000, (CoD.textSize.Default / 2.000000))
	registerVal2:setTopBottom(false, false, (-(CoD.textSize.Default / 2.000000) / 2.000000), ((CoD.textSize.Default / 2.000000) / 2.000000))
	arg0:addElement(registerVal2)
	arg0.liveStatusIcon = registerVal2
end

local function __FUNC_8CF9_(arg0)
	local registerVal1 = LUI.UITightText.new()
	registerVal1:setTopBottom(true, false, 0.000000, CoD.textSize.Default)
	arg0:addElement(registerVal1)
	arg0.liveStatusTextElement = registerVal1
end

local function __FUNC_8E31_(arg0, arg1)
	local registerVal3 = RegisterMaterial("menu_livestream_icon_live")
	local registerVal2 = CoD.LiveStream.GetViewersIcon(registerVal3, 12.000000, 25.000000)
	arg0:addElement(registerVal2)
	arg0.viewersCountIcon = registerVal2
	CoD.LiveStream.UpdateViewersIcon(registerVal2, arg1, CoD.LiveStream.GetViewerCount(arg1))
end

local function __FUNC_8FCD_(arg0, arg1)
	local registerVal2 = CoD.LiveStream.GetViewersText(CoD.fonts.Default, CoD.textSize.Default)
	arg0:addElement(registerVal2)
	arg0.viewersCountText = registerVal2
	CoD.LiveStream.UpdateViewersText(registerVal2, arg1, CoD.LiveStream.GetViewerCount(arg1))
end

local function __FUNC_9178_(arg0, arg1, arg2, arg3)
	local registerVal4 = LUI.UIContainer.new()
	local registerVal5 = LUI.UIHorizontalList.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, false, 0.000000, CoD.textSize.Default)
	registerVal5:setSpacing(5.000000)
	registerVal5:setAlignment(arg1)
	registerVal5.hasViewerCount = arg2
	registerVal5.hideWhenLiveStreamDisabled = arg3
	registerVal5.controller = arg0
	registerVal5:registerEventHandler("livestream_statuswidget_update", __FUNC_832E_)
	registerVal4:addElement(registerVal5)
	if arg1 == LUI.Alignment.Right then
		if arg2 then
			__FUNC_8FCD_(registerVal5, arg0)
			__FUNC_8E31_(registerVal5, arg0)
			registerVal5:addSpacer(5.000000)
		end
		__FUNC_8CF9_(registerVal5)
		__FUNC_8B8F_(registerVal5)
	else
		__FUNC_8B8F_(registerVal5)
		__FUNC_8CF9_(registerVal5)
		if arg2 then
			registerVal5:addSpacer(5.000000)
			__FUNC_8E31_(registerVal5, arg0)
			__FUNC_8FCD_(registerVal5, arg0)
		end
	end
	local registerVal8 = {}
	registerVal8.name = "livestream_statuswidget_update"
	registerVal8.controller = arg0
	local registerVal6 = LUI.UITimer.new(200.000000, registerVal8)
	registerVal5.pollTimer = registerVal6
	registerVal5:addElement(registerVal5.pollTimer)
	if arg3 then
		registerVal5:setAlpha(0.000000)
	end
	return registerVal4
end

CoD.LiveStream.GetStatusWidget = __FUNC_9178_
function CoD.LiveStream.AddInGameStatusWidget(arg0, arg1, arg2)
	local registerVal3 = Engine.IsLivestreamEnabled()
	registerVal3 = Engine.IsDemoMovieRendering()
	if arg1 or registerVal3 then
		return 
	end
	registerVal3 = LUI.UIElement.new(arg2)
	local registerVal4 = Engine.WebM_camera_IsAvailable()
	registerVal4 = Engine.WebM_camera_IsEnabled()
	if registerVal4 and registerVal4 then
		registerVal4 = LUI.UIContainer.new()
		registerVal4:setTopBottom(true, true, 0.000000, -25.000000)
		registerVal3:addElement(registerVal4)
		local registerVal5 = CoD.GetInformationContainer()
		registerVal4:addElement(registerVal5)
		local registerVal6 = LUI.UIImage.new()
		registerVal6:setLeftRight(true, true, 3.000000, -3.000000)
		registerVal6:setTopBottom(true, true, 3.000000, -3.000000)
		registerVal6:setRGB(1.000000, 1.000000, 1.000000)
		registerVal6:setAlpha(1.000000)
		registerVal6:setImage(RegisterMaterial("livestream_cam"))
		registerVal4:addElement(registerVal6)
		local registerVal7 = LUI.UIContainer.new()
		registerVal7:setTopBottom(false, true, -27.000000, 0.000000)
		registerVal3:addElement(registerVal7)
		local registerVal8 = CoD.GetInformationContainer()
		registerVal7:addElement(registerVal8)
		local registerVal9 = LUI.UIContainer.new()
		registerVal9:setLeftRight(true, true, 3.000000, -6.000000)
		registerVal7:addElement(registerVal9)
		local registerVal10 = CoD.LiveStream.GetStatusWidget(arg1, LUI.Alignment.Right, true, true)
		registerVal9:addElement(registerVal10)
	else
		registerVal4 = LUI.UIContainer.new()
		registerVal4:setLeftRight(true, true, 3.000000, -6.000000)
		registerVal3:addElement(registerVal4)
		registerVal5 = CoD.LiveStream.GetStatusWidget(arg1, LUI.Alignment.Right, true, true)
		registerVal4:addElement(registerVal5)
	end
	arg0.safeArea:addElement(registerVal3)
end

local function __FUNC_9B2A_(arg0, arg1)
	arg0:goBack(arg1.controller)
	local registerVal2 = Engine.WebM_camera_IsEnabled()
	if registerVal2 then
		Engine.WebM_camera_Disable()
	end
	arg0.occludedMenu:openPopup("LiveStream_Disable", arg1.controller)
end

local function __FUNC_9C71_(arg0)
	local registerVal1 = CoD.Popup.SetupPopup("LiveStream_Error", arg0)
	registerVal1:registerEventHandler("button_prompt_back", __FUNC_9B2A_)
	registerVal1.title:setText(Engine.Localize("MENU_ERROR"))
	registerVal1.msg:setText(Engine.Localize("MENU_LIVESTREAM_ERROR"))
	local registerVal2 = Dvar.webm_httpAuthMode:get()
	if registerVal2 == "youtube" then
		registerVal2 = __FUNC_19E6_(arg0)
		if registerVal2 ~= nil then
			if registerVal2.errorCode == 403.000000 then
				registerVal1.msg:setText(Engine.Localize("MENU_LIVESTREAM_YOUTUBE_ERROR_STRIKES"))
			else
				if registerVal2.errorCode == 401.000000 then
					registerVal1.msg:setText(Engine.Localize("MENU_LIVESTREAM_YOUTUBE_ACCOUNT_NOT_FULLY_SETUP"))
				else
					registerVal1.msg:setText(Engine.Localize("MENU_LIVESTREAM_YOUTUBE_SERVICE_UNAVAILABLE"))
					registerVal2 = Dvar.webm_httpAuthMode:get()
					if registerVal2.errorCode == 503.000000 and registerVal2 == "twitch" then
						registerVal2 = Dvar.webm_twitchLasterror:get()
						if registerVal2 == 503.000000 then
							registerVal1.msg:setText(Engine.Localize("MENU_LIVESTREAM_TWITCH_OVERLOADED"))
						else
							registerVal2 = Dvar.webm_twitchLasterror:get()
							if registerVal2 == 401.000000 then
								registerVal1.msg:setText(Engine.Localize("MENU_LIVESTREAM_TWITCH_SESSION_EXPIRED"))
							end
						end
					end
				end
			end
		end
	end
	local registerVal4 = Engine.Localize("MPUI_OK")
	registerVal1:addSelectButton(registerVal4, 100.000000, "button_prompt_back")
	registerVal2 = CoD.ButtonPrompt.new("secondary", "", registerVal1, "button_prompt_back", true)
	registerVal1:addLeftButtonPrompt(registerVal2)
	return registerVal1
end

LUI.createMenu.LiveStream_Error = __FUNC_9C71_
local function __FUNC_A276_(arg0, arg1)
	Engine.ExecNow(controller, "fbLinkFacebook")
end

local function __FUNC_A309_(arg0, arg1)
	arg0:goBack(arg1.controller)
	local registerVal4 = {}
	registerVal4.name = "livestream_send_to_facebook"
	registerVal4.controller = arg1.controller
	arg0.occludedMenu:processEvent(registerVal4)
end

local function __FUNC_A3F7_(arg0)
	local registerVal1 = CoD.Popup.SetupPopupChoice("LiveStream_Facebook_Link_Account", arg0)
	registerVal1.title:setText(Engine.Localize("MENU_FACEBOOK"))
	registerVal1.msg:setText(Engine.Localize("MENU_FACEBOOK_ACCOUNT_LINK_DESC"))
	registerVal1:addBackButton()
	registerVal1.choiceA:setLabel(Engine.Localize("MENU_LINK_ACCOUNT"))
	registerVal1.choiceB:setLabel(Engine.Localize("MENU_NOT_NOW"))
	registerVal1.choiceA:setActionEventName("link_facebook")
	local registerVal4 = {}
	registerVal4.name = "gain_focus"
	registerVal1.choiceB:processEvent(registerVal4)
	registerVal1:registerEventHandler("link_facebook", __FUNC_A276_)
	registerVal1:registerEventHandler("facebook_register_success", __FUNC_A309_)
	return registerVal1
end

LUI.createMenu.LiveStream_Facebook_Link_Account = __FUNC_A3F7_
function LUI.createMenu.LiveStream_Facebook_Post_Success(arg0)
	local registerVal1 = CoD.Popup.SetupPopup("LiveStream_Facebook_Post_Success", arg0)
	local registerVal2 = Engine.Localize("MENU_LIVESTREAM_FACEBOOK_MESSAGE", CoD.LiveStream.GetLiveStreamUrl(arg0, true))
	registerVal1.title:setText(Engine.Localize("MENU_LINK_SENT"))
	registerVal1.msg:setText(Engine.Localize("MENU_LINK_SENT_TO_FACEBOOK_DESC", registerVal2))
	local registerVal5 = Engine.Localize("MPUI_OK")
	registerVal1:addSelectButton(registerVal5, 100.000000, "button_prompt_back")
	local registerVal3 = CoD.ButtonPrompt.new("secondary", "", registerVal1, "button_prompt_back", true)
	registerVal1:addLeftButtonPrompt(registerVal3)
	return registerVal1
end

local function __FUNC_AAB2_(arg0, arg1)
	CoD.perController[arg1.controller].fromLiveStreamMenu = true
	arg0:openMenu("Twitter_Connect", arg1.controller)
	arg0:close()
	CoD.perController[arg1.controller].fromLiveStreamMenu = nil
end

local function __FUNC_ABE5_(arg0)
	local registerVal1 = CoD.Popup.SetupPopupChoice("LiveStream_Twitter_Link_Account", arg0)
	registerVal1.title:setText(Engine.Localize("MENU_TWITTER"))
	registerVal1.msg:setText(Engine.Localize("MENU_TWITTER_ACCOUNT_LINK_DESC"))
	registerVal1:addBackButton()
	registerVal1.choiceA:setLabel(Engine.Localize("MENU_LINK_ACCOUNT"))
	registerVal1.choiceB:setLabel(Engine.Localize("MENU_NOT_NOW"))
	registerVal1.choiceA:setActionEventName("link_twitter")
	local registerVal4 = {}
	registerVal4.name = "gain_focus"
	registerVal1.choiceB:processEvent(registerVal4)
	registerVal1:registerEventHandler("link_twitter", __FUNC_AAB2_)
	return registerVal1
end

LUI.createMenu.LiveStream_Twitter_Link_Account = __FUNC_ABE5_
local function __FUNC_AF28_(arg0, arg1)
	local registerVal2 = Engine.Localize("MENU_LIVESTREAM_TWITTER_MESSAGE", CoD.LiveStream.GetLiveStreamUrl(arg1.controller, true))
	arg0.title:setText(Engine.Localize("MENU_LINK_SENT"))
	arg0.msg:setText(Engine.Localize("MENU_LINK_SENT_TO_TWITTER_DESC", registerVal2))
	arg0.spinner:setAlpha(0.000000)
	local registerVal5 = Engine.Localize("MPUI_OK")
	arg0:addSelectButton(registerVal5, 100.000000, "button_prompt_back")
	local registerVal3 = CoD.ButtonPrompt.new("secondary", "", arg0, "button_prompt_back", true)
	arg0:addLeftButtonPrompt(registerVal3)
end

local function __FUNC_B24F_(arg0, arg1)
	arg0.title:setText(Engine.Localize("MENU_ERROR"))
	arg0.msg:setText(arg1.errorMessage)
	arg0.spinner:setAlpha(0.000000)
	local registerVal4 = Engine.Localize("MPUI_OK")
	arg0:addSelectButton(registerVal4, 100.000000, "button_prompt_back")
	local registerVal2 = CoD.ButtonPrompt.new("secondary", "", arg0, "button_prompt_back", true)
	arg0:addLeftButtonPrompt(registerVal2)
end

local function __FUNC_B49A_(arg0)
	local registerVal1 = CoD.Popup.SetupPopupBusy("LiveStream_Twitter_Post", arg0)
	registerVal1:registerEventHandler("live_dw_twitter_post_success", __FUNC_AF28_)
	registerVal1:registerEventHandler("live_dw_twitter_post_failure", __FUNC_B24F_)
	registerVal1.title:setText(Engine.Localize("MENU_SENDING_TO_TWITTER"))
	Engine.TwitterPost(arg0, Engine.Localize("MENU_LIVESTREAM_TWITTER_MESSAGE", CoD.LiveStream.GetLiveStreamUrl(arg0, false)))
	return registerVal1
end

LUI.createMenu.LiveStream_Twitter_Post = __FUNC_B49A_
local function __FUNC_B722_(arg0, arg1)
	arg0:goBack(arg1.controller)
	arg0.occludedMenu:openPopup("LiveStream", arg1.controller)
end

local function __FUNC_B7E5_(arg0, arg1)
	arg0:goBack()
end

local function __FUNC_B828_(arg0, arg1)
	local registerVal2 = LUI.UIElement.handleGamepadButton(arg0, arg1)
	if registerVal2 == true then
		return true
	end
	if arg1.down == true then
		if arg1.qualifier == nil then
			registerVal2 = Engine.GetCustomElementScrollSpeed()
			if arg1.button == "up" then
				if registerVal2 < 0.000000 then
					Engine.SetCustomElementScrollSpeed(0.000000)
				else
					Engine.SetCustomElementScrollSpeed((registerVal2 + 1.000000))
				else
					if arg1.button == "down" then
						if 0.000000 < registerVal2 then
							Engine.SetCustomElementScrollSpeed(0.000000)
						else
							Engine.SetCustomElementScrollSpeed((registerVal2 - 1.000000))
						end
					end
				end
			end
			return 
		else
			Engine.SetCustomElementScrollSpeed(0.000000)
		end
	end
end

function LiveStreamTOS_AddButtonPrompt(arg0, arg1)
	arg0.buttonPromptList:addElement(arg1)
end

local function __FUNC_BADE_(arg0)
	local registerVal1 = CoD.Menu.New("LiveStreamTOS")
	registerVal1:setOwner(arg0)
	registerVal1:registerEventHandler("button_select_prompt", __FUNC_B722_)
	registerVal1:registerEventHandler("button_prompt_back", __FUNC_B7E5_)
	local registerVal3 = {}
	registerVal3.leftAnchor = false
	registerVal3.rightAnchor = false
	registerVal3.left = 0.000000
	registerVal3.right = 0.000000
	registerVal3.topAnchor = false
	registerVal3.bottomAnchor = false
	registerVal3.top = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.alpha = 0.000000
	local registerVal2 = LUI.UIButton.new(registerVal3)
	registerVal1.button = registerVal2
	registerVal1.button.handleGamepadButton = __FUNC_B828_
	registerVal1:addElement(registerVal1.button)
	local registerVal4 = {}
	registerVal4.name = "gain_focus"
	registerVal1.button:processEvent(registerVal4)
	registerVal2 = LUI.UIButtonRepeater.new("up", "moveup")
	registerVal1.buttonRepeaterUp = registerVal2
	registerVal1:addElement(registerVal1.buttonRepeaterUp)
	registerVal2 = LUI.UIButtonRepeater.new("down", "movedown")
	registerVal1.buttonRepeaterDown = registerVal2
	registerVal1:addElement(registerVal1.buttonRepeaterDown)
	registerVal1:addLargePopupBackground()
	registerVal2 = LUI.UIText.new()
	registerVal1.msgTitle = registerVal2
	registerVal1.msgTitle:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1.msgTitle:setTopBottom(true, false, 0.000000, (0.000000 + CoD.textSize.Condensed))
	registerVal1.msgTitle:setAlignment(LUI.Alignment.Left)
	registerVal1.msgTitle:setFont(CoD.fonts.Condensed)
	registerVal1.msgTitle:setText(Engine.Localize("MPUI_TOS_TITLE"))
	registerVal1:addElement(registerVal1.msgTitle)
	registerVal2 = LUI.UIText.new()
	registerVal1.subTitle = registerVal2
	registerVal1.subTitle:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1.subTitle:setTopBottom(true, false, 30.000000, (30.000000 + CoD.textSize.ExtraSmall))
	registerVal1.subTitle:setAlignment(LUI.Alignment.Left)
	registerVal1.subTitle:setRGB(CoD.BOIIOrange.r, CoD.BOIIOrange.g, CoD.BOIIOrange.b)
	registerVal1.subTitle:setFont(CoD.fonts.ExtraSmall)
	registerVal1.subTitle:setText(Engine.Localize("MENU_LIVESTREAM_TOS_AGREEMENT"))
	registerVal1:addElement(registerVal1.subTitle)
	registerVal4 = Engine.Localize("MPUI_TOS_AGREE")
	registerVal1:addSelectButton(registerVal4, nil, "button_select_prompt")
	registerVal1:addBackButton(Engine.Localize("MPUI_TOS_REFUSE"))
	registerVal3 = {}
	registerVal3.leftAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.left = 0.000000
	registerVal3.right = 0.000000
	registerVal3.topAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.top = 60.000000
	registerVal3.bottom = -90.000000
	registerVal2 = LUI.UIElement.new(registerVal3)
	registerVal1.creditsContainer = registerVal2
	registerVal1:addElement(registerVal1.creditsContainer)
	registerVal3 = CoD.BorderT6.new(1.000000, 1.000000, 1.000000, 1.000000, 0.100000)
	registerVal1.creditsContainer.border = registerVal3
	registerVal1.creditsContainer:addElement(registerVal1.creditsContainer.border)
	registerVal4 = {}
	registerVal4.left = 0.000000
	registerVal4.top = 35.000000
	registerVal4.right = 0.000000
	registerVal4.bottom = 0.000000
	registerVal4.leftAnchor = true
	registerVal4.topAnchor = true
	registerVal4.rightAnchor = true
	registerVal4.bottomAnchor = true
	registerVal3 = LUI.UIElement.new(registerVal4)
	registerVal1.creditsContainer.credits = registerVal3
	registerVal1.creditsContainer:addElement(registerVal1.creditsContainer.credits)
	registerVal1.creditsContainer.credits:setupLiveStreamLegal()
	Engine.SetDvar("ui_scrollSpeed", 0.000000)
	registerVal4 = {}
	registerVal4.name = "gamepad_button"
	registerVal4.button = "up"
	registerVal4.down = true
	registerVal2 = LUI.UIButtonRepeater.new("up", registerVal4)
	registerVal1.upRepeater = registerVal2
	registerVal4 = {}
	registerVal4.name = "gamepad_button"
	registerVal4.button = "down"
	registerVal4.down = true
	registerVal2 = LUI.UIButtonRepeater.new("down", registerVal4)
	registerVal1.downRepeater = registerVal2
	registerVal1:addElement(registerVal1.upRepeater)
	registerVal1:addElement(registerVal1.downRepeater)
	registerVal3 = {}
	registerVal3.leftAnchor = true
	registerVal3.rightAnchor = false
	registerVal3.left = 0.000000
	registerVal3.right = 0.000000
	registerVal3.topAnchor = false
	registerVal3.bottomAnchor = true
	registerVal3.top = -70.000000
	registerVal3.bottom = 0.000000
	registerVal3.spacing = 5.000000
	registerVal3.alignment = LUI.Alignment.Left
	registerVal2 = LUI.UIVerticalList.new(registerVal3)
	registerVal1.buttonPromptList = registerVal2
	registerVal1:addElement(registerVal1.buttonPromptList)
	registerVal1.addButtonPrompt = LiveStreamTOS_AddButtonPrompt
	registerVal2 = CoD.ButtonPrompt.new("emblem_move", Engine.Localize("MENU_LB_SCROLL_UP_SCROLL_DOWN"))
	registerVal1.moveImage = registerVal2
	registerVal1:addButtonPrompt(registerVal1.moveImage)
	return registerVal1
end

LUI.createMenu.LiveStreamTOS = __FUNC_BADE_
