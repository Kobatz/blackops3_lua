-- Decompiled with CoDLUIDecompiler by JariK

CoD.DemoUtility = {}
function CoD.DemoUtility.GetRoundedTimeScale(arg0, arg1)
	if not arg0 then
		local registerVal4 = Engine.GetGlobalModel()
		local registerVal2 = Engine.GetModelValue(Engine.GetModel(registerVal4, "demo.timescale"))
	end
	if not arg1 then
	end
	local registerVal3 = math.floor(((registerVal2 * (10.000000 ^ 1.000000)) + 0.500000))
	return (registerVal3 / (10.000000 ^ 1.000000))
end

function CoD.DemoUtility.GetRoundedTimeScaleString(arg0)
	if not arg0 then
		local registerVal1 = CoD.DemoUtility.GetRoundedTimeScale()
	end
	registerVal1 = string.format("%.1f", registerVal1)
	return registerVal1
end

function CoD.DemoUtility.GetRoundedLightFloatParam(arg0)
	local registerVal1 = string.format("%.1f", arg0)
	return registerVal1
end

function CoD.DemoUtility.GetDemoContextMode()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.GetModel(registerVal1, "demo.contextMode")
	return Engine.GetModelValue(registerVal0)
end

function CoD.DemoUtility.SetDemoContextMode(arg0)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.GetModel(registerVal3, "demo.contextMode")
	Engine.SetModelValue(registerVal2, arg0)
end

function CoD.DemoUtility.GetEditingDollyCameraMarker()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "demo.editingDollyCameraMarker")
	return Engine.GetModelValue(registerVal0)
end

function CoD.DemoUtility.SetEditingDollyCameraMarker(arg0, arg1)
	if arg1 == true then
		Engine.Exec(arg0, "demo_editdollycammarker 1")
	else
		Engine.Exec(arg0, "demo_editdollycammarker 0")
	end
end

function CoD.DemoUtility.SwitchToDollyCamMarker(arg0, arg1)
	Engine.Exec(arg0, ("demo_switchdollycammarker " .. arg1))
end

function CoD.DemoUtility.RemoveDollyCamMarker(arg0, arg1)
	Engine.Exec(arg0, ("demo_removedollycammarker " .. arg1))
end

function CoD.DemoUtility.RepositionDollyCamMarker(arg0, arg1)
	Engine.Exec(arg0, ("demo_repositiondollycammarker " .. arg1))
end

function CoD.DemoUtility.GetEditingLightmanMarker()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "demo.editingLightmanMarker")
	return Engine.GetModelValue(registerVal0)
end

function CoD.DemoUtility.SetEditingLightmanMarker(arg0, arg1)
	if arg1 == true then
		Engine.Exec(arg0, "demo_editlightmanmarker 1")
	else
		Engine.Exec(arg0, "demo_editlightmanmarker 0")
	end
end

function CoD.DemoUtility.SwitchToLightmanMarker(arg0, arg1)
	Engine.Exec(arg0, ("demo_switchlightmanmarker " .. arg1))
end

function CoD.DemoUtility.RemoveLightmanMarker(arg0, arg1)
	Engine.Exec(arg0, ("demo_removelightmanmarker " .. arg1))
end

function CoD.DemoUtility.RepositionLightmanMarker(arg0, arg1)
	Engine.Exec(arg0, ("demo_repositionlightmanmarker " .. arg1))
end

function CoD.DemoUtility.SetCurrentLightmanColor(arg0, arg1)
	local registerVal2 = CoD.GetColorFromFormattedColorString(arg1)
	local registerVal5 = Engine.GetGlobalModel()
	local registerVal4 = Engine.GetModel(registerVal5, "demo.currentLightmanMarkerLightColorR")
	Engine.SetModelValue(registerVal4, registerVal2.r)
	registerVal5 = Engine.GetGlobalModel()
	registerVal4 = Engine.GetModel(registerVal5, "demo.currentLightmanMarkerLightColorG")
	Engine.SetModelValue(registerVal4, registerVal2.g)
	registerVal5 = Engine.GetGlobalModel()
	registerVal4 = Engine.GetModel(registerVal5, "demo.currentLightmanMarkerLightColorB")
	Engine.SetModelValue(registerVal4, registerVal2.b)
	local registerVal3 = Engine.GetHighlightedCameraMarker()
	Engine.Exec(arg0, ("demo_updatelightmanmarkerparameters " .. registerVal3))
end

function CoD.DemoUtility.RunPauseCommand(arg0)
	Engine.ExecNow(arg0, "demo_pause")
end

function CoD.DemoUtility.UnpauseIfPaused(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.GetModel(registerVal2, "demo.isPaused")
	registerVal2 = Engine.GetModelValue(registerVal1)
	if registerVal2 then
		CoD.DemoUtility.RunPauseCommand(arg0)
		return true
	end
	return false
end

function CoD.DemoUtility.IsRestrictedBasicMode()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.GetModel(registerVal1, "demo.restrictedBasicMode")
	return Engine.GetModelValue(registerVal0)
end

function CoD.DemoUtility.OpenSavePopup(arg0, arg1)
	if arg1.menuName == "demo_save_clip" then
		local registerVal5 = CoD.OverlayUtility.CreateOverlay(arg1.controller, arg0, "DemoSaveClipPopup")
	else
		Engine.ExecNow(arg1.controller, "setupThumbnailForFileshareSave screenshot")
		local function __FUNC_1F10_(arg0)
			Engine.SaveScreenshot(arg0, false, 0.000000)
		end

		CoD.FileshareUtility.OpenPrivateUploadPopup(arg0, arg1.controller, "screenshot_private", __FUNC_1F10_)
	end
	if registerVal5 then
		local function __FUNC_1F89_(arg0, arg1, arg2, arg3)
			GoBack(arg0, arg2)
		end

		registerVal5:registerEventHandler("demo_close_save_popup", __FUNC_1F89_)
	end
end

function CoD.DemoUtility.OpenManageSegments(arg0, arg1)
	StartMenuOpenManageSegments(arg0, nil, arg1.controller, nil, arg0)
end

function CoD.DemoUtility.OpenStartHighlightReel(arg0, arg1)
	local registerVal3 = CoD.OverlayUtility.CreateOverlay(arg1.controller, arg0, "DemoStartHighlightReelPopup")
	Dvar.demo_pause:set(true)
end

CoD.DemoUtility.LastActivatedInformationScreen = 0.000000
function CoD.DemoUtility.ActivateInformationScreen(arg0, arg1)
	CoD.DemoUtility.LastActivatedInformationScreen = arg1.informationScreenType
	if LUI.roots.UIRootFull.demoInformationScreenBlackBackground == nil then
		return 
	end
	if arg1 == nil then
		return 
	end
	if arg1.animationState ~= nil then
	end
	if arg1.informationScreenType == Enum.demoInformationScreenTypes.DEMO_INFORMATION_SCREEN_NONE then
		return 
	end
	if arg1.informationScreenType == Enum.demoInformationScreenTypes.DEMO_INFORMATION_SCREEN_FILM_START_SCREEN_FADE_IN or arg1.informationScreenType == Enum.demoInformationScreenTypes.DEMO_INFORMATION_SCREEN_FILM_START_SCREEN_FADE_OUT then
		LUI.roots.UIRootFull.demoInformationScreenBlackBackground:animateToState(arg1.animationState, arg1.animationTime)
		LUI.roots.UIRootFull.demoInformationScreenInformationText:setText(Engine.Localize("MENU_PREPARING"))
		LUI.roots.UIRootFull.demoInformationScreenInformationText:animateToState(arg1.animationState, (arg1.animationTime * 0.800000))
		LUI.roots.UIRootFull.demoInformationScreenSpinner:animateToState(arg1.animationState, (arg1.animationTime * 0.800000))
	end
	if arg1.informationScreenType == Enum.demoInformationScreenTypes.DEMO_INFORMATION_SCREEN_TRANSITION then
		LUI.roots.UIRootFull.demoInformationScreenInformationText:setText("")
		LUI.roots.UIRootFull.demoInformationScreenInformationText:setAlpha(0.000000)
		LUI.roots.UIRootFull.demoInformationScreenSpinner:setAlpha(0.000000)
		LUI.roots.UIRootFull.demoInformationScreenBlackBackground:setAlpha(1.000000)
		LUI.roots.UIRootFull.demoInformationScreenBlackBackground:animateToState(arg1.animationState, arg1.animationTime)
	end
	if arg1.informationScreenType == Enum.demoInformationScreenTypes.DEMO_INFORMATION_SCREEN_WAITING_FOR_DOWNLOAD then
		LUI.roots.UIRootFull.demoInformationScreenBlackBackground:animateToState("fade_out", arg1.animationTime)
		LUI.roots.UIRootFull.demoInformationScreenInformationText:animateToState(arg1.animationState, arg1.animationTime)
		LUI.roots.UIRootFull.demoInformationScreenInformationText:setText(Engine.Localize("MENU_BUFFERING"))
		LUI.roots.UIRootFull.demoInformationScreenSpinner:animateToState(arg1.animationState, arg1.animationTime)
	end
end

function CoD.DemoUtility.AddInformationScreen(arg0)
	if LUI.roots.UIRootFull.demoInformationScreenContainer then
		return 
	end
	local registerVal1 = LUI.UIContainer.new()
	registerVal1:setPriority(100.000000)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.red = 0.000000
	registerVal3.green = 0.000000
	registerVal3.blue = 0.000000
	registerVal3.alpha = 0.000000
	local registerVal2 = LUI.UIImage.new(registerVal3)
	local registerVal6 = {}
	registerVal6.alpha = 1.000000
	registerVal2:registerAnimationState("fade_in", registerVal6)
	registerVal6 = {}
	registerVal6.alpha = 0.000000
	registerVal2:registerAnimationState("fade_out", registerVal6)
	LUI.roots.UIRootFull.demoInformationScreenBlackBackground = registerVal2
	registerVal1:addElement(registerVal2)
	local registerVal4 = {}
	registerVal4.left = 0.000000
	registerVal4.top = (-CoD.textSize.Condensed / 2.000000)
	registerVal4.right = 0.000000
	registerVal4.bottom = (CoD.textSize.Condensed / 2.000000)
	registerVal4.leftAnchor = true
	registerVal4.topAnchor = false
	registerVal4.rightAnchor = true
	registerVal4.bottomAnchor = false
	registerVal4.font = CoD.fonts.Condensed
	registerVal4.alignment = LUI.Alignment.Center
	registerVal4.red = 1.000000
	registerVal4.green = 1.000000
	registerVal4.blue = 1.000000
	registerVal4.alpha = 0.000000
	registerVal3 = LUI.UIText.new(registerVal4)
	local registerVal7 = {}
	registerVal7.alpha = 1.000000
	registerVal3:registerAnimationState("fade_in", registerVal7)
	registerVal7 = {}
	registerVal7.alpha = 0.000000
	registerVal3:registerAnimationState("fade_out", registerVal7)
	LUI.roots.UIRootFull.demoInformationScreenInformationText = registerVal3
	registerVal1:addElement(registerVal3)
	registerVal6 = {}
	registerVal6.left = (-60.000000 / 2.000000)
	registerVal6.top = CoD.textSize.Condensed
	registerVal6.right = (60.000000 / 2.000000)
	registerVal6.bottom = (CoD.textSize.Condensed + 60.000000)
	registerVal6.leftAnchor = false
	registerVal6.topAnchor = false
	registerVal6.rightAnchor = false
	registerVal6.bottomAnchor = false
	registerVal6.red = 1.000000
	registerVal6.green = 1.000000
	registerVal6.blue = 1.000000
	registerVal6.alpha = 0.000000
	registerVal7 = RegisterMaterial("lui_loader")
	registerVal6.material = registerVal7
	local registerVal5 = LUI.UIImage.new(registerVal6)
	registerVal5:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local registerVal9 = {}
	registerVal9.alpha = 1.000000
	registerVal5:registerAnimationState("fade_in", registerVal9)
	registerVal9 = {}
	registerVal9.alpha = 0.000000
	registerVal5:registerAnimationState("fade_out", registerVal9)
	LUI.roots.UIRootFull.demoInformationScreenSpinner = registerVal5
	registerVal1:addElement(registerVal5)
	LUI.roots.UIRootFull:addElement(registerVal1)
	LUI.roots.UIRootFull.demoInformationScreenContainer = registerVal1
end

function CoD.DemoUtility.SetupUIModels(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, "demo")
	local registerVal3 = Engine.CreateModel(registerVal1, "showChooseModeSidebar")
	Engine.SetModelValue(registerVal3, false)
	registerVal3 = Engine.CreateModel(registerVal1, "showOptionsSidebar")
	Engine.SetModelValue(registerVal3, false)
	registerVal3 = Engine.CreateModel(registerVal1, "showLightmanColorPicker")
	Engine.SetModelValue(registerVal3, false)
	registerVal3 = Engine.CreateModel(registerVal1, "numHighlightReelMoments")
	Engine.SetModelValue(registerVal3, 0.000000)
	registerVal3 = Engine.CreateModel(registerVal1, "restrictedBasicMode")
	Engine.SetModelValue(registerVal3, false)
	registerVal3 = Engine.CreateModel(registerVal1, "uploadPopupOpen")
	Engine.SetModelValue(registerVal3, false)
	registerVal3 = Engine.CreateModel(registerVal1, "cameraMode")
	Engine.SetModelValue(registerVal3, Enum.demoCameraMode.DEMO_CAMERA_MODE_NONE)
	registerVal3 = Engine.CreateModel(registerVal1, "clientXUID")
	Engine.SetModelValue(registerVal3, Engine.DefaultID64Value())
	registerVal3 = Engine.CreateModel(registerVal1, "networkProfiling")
	Engine.SetModelValue(registerVal3, false)
	registerVal2 = Engine.IsDemoClipPlaying()
	if registerVal2 then
		registerVal3 = Engine.CreateModel(registerVal1, "contextMode")
		Engine.SetModelValue(registerVal3, Enum.demoContextMode.DEMO_CONTEXT_MODE_PLAYBACK)
	else
		registerVal2 = Engine.IsDemoHighlightReelMode()
		if registerVal2 then
			registerVal3 = Engine.CreateModel(registerVal1, "contextMode")
			Engine.SetModelValue(registerVal3, Enum.demoContextMode.DEMO_CONTEXT_MODE_HIGHLIGHT_REEL)
		else
			registerVal3 = Engine.CreateModel(registerVal1, "contextMode")
			Engine.SetModelValue(registerVal3, Enum.demoContextMode.DEMO_CONTEXT_MODE_BASIC)
		end
	end
	registerVal3 = Engine.GetGlobalModel()
	registerVal2 = Engine.CreateModel(registerVal3, "DemoSegments")
	registerVal3 = Engine.CreateModel(registerVal2, "refresh")
	Engine.SetModelValue(registerVal3, 0.000000)
end

function CoD.DemoUtility.RegisterEventHandlers(arg0, arg1)
	local registerVal2 = Engine.IsDemoPlaying()
	if not registerVal2 then
		return 
	end
	arg0:registerEventHandler("open_demo_save_popup", CoD.DemoUtility.OpenSavePopup)
	arg0:registerEventHandler("open_demo_manage_segments", CoD.DemoUtility.OpenManageSegments)
	arg0:registerEventHandler("activate_demo_information_screen", CoD.DemoUtility.ActivateInformationScreen)
	CoD.DemoUtility.SetupUIModels(arg1)
	registerVal2 = Engine.GetXUID64(arg1)
	local registerVal3 = CoD.FileshareUtility.IsFileshareReady(arg1)
	local registerVal4 = CoD.FileshareUtility.GetCurrentUser()
	if registerVal3 ~= 0.000000 and registerVal3 == false or registerVal4 ~= registerVal2 then
		CoD.FileshareUtility.FetchContentForUser(arg1, registerVal2)
		CoD.FileshareUtility.SetDirty()
	end
end

function CoD.DemoUtility.AddHUDWidgets(arg0, arg1)
	local registerVal2 = Engine.IsDemoPlaying()
	if registerVal2 then
		if arg0.safeArea and arg0.safeArea.Demo == nil then
			local registerVal5 = CoD.Demo.new(arg0.safeArea, arg1.controller)
			arg0.safeArea.Demo = registerVal5
			arg0.safeArea.Demo:setLeftRight(true, true, 0.000000, 0.000000)
			arg0.safeArea.Demo:setTopBottom(true, true, 0.000000, 0.000000)
			arg0:addForceClosedSafeAreaChild(arg0.safeArea.Demo)
			local registerVal6 = {}
			registerVal6.name = "gain_focus"
			registerVal6.controller = arg1.controller
			arg0.safeArea.Demo:processEvent(registerVal6)
			registerVal6 = {}
			registerVal6.controller = arg1.controller
			arg0.safeArea.Demo:gainFocus(registerVal6)
			local function __FUNC_41AE_(arg1)
				CoD.Menu.UnsubscribeFromControllerSubscriptionsForElement(arg0.safeArea, arg1)
			end

			LUI.OverrideFunction_CallOriginalSecond(arg0.safeArea.Demo, "close", __FUNC_41AE_)
			UpdateState(arg0.safeArea.Demo)
			local function __FUNC_4273_(arg0, arg1)
				if not arg1.occluded then
					local registerVal4 = {}
					registerVal4.name = "gain_focus"
					registerVal4.controller = arg1.controller
					arg0.safeArea.Demo:processEvent(registerVal4)
				end
				CoD.Menu.OcclusionChange(arg0, arg1)
			end

			arg0:registerEventHandler("occlusion_change", __FUNC_4273_)
		end
		CoD.DemoUtility.AddInformationScreen(arg0)
		if arg1.activateDemoStartScreen then
			registerVal6 = {}
			registerVal6.controller = arg1.controller
			registerVal6.informationScreenType = Enum.demoInformationScreenTypes.DEMO_INFORMATION_SCREEN_FILM_START_SCREEN_FADE_IN
			registerVal6.animationTime = 0.000000
			registerVal6.animationState = "fade_in"
			CoD.DemoUtility.ActivateInformationScreen(arg0, registerVal6)
			CoD.DemoUtility.OpenStartHighlightReel(arg0, arg1)
			if CoD.DemoUtility.LastActivatedInformationScreen ~= Enum.demoInformationScreenTypes.DEMO_INFORMATION_SCREEN_FILM_START_SCREEN_FADE_OUT and arg1.openHighlightStartScreen and arg0.safeArea and arg0.safeArea.Demo ~= nil then
				arg0.safeArea.Demo:close()
				arg0.safeArea.Demo = nil
			end
		end
	end
end

function CoD.DemoUtility.SetupDemoSegmentModel(arg0)
	local registerVal7 = Engine.GetDemoSegmentCount()
	local registerVal9 = Engine.GetGlobalModel()
	local registerVal8 = Engine.GetModel(registerVal9, "DemoSegments")
	registerVal9 = Engine.CreateModel(registerVal8, arg0)
	local registerVal11 = Engine.CreateModel(registerVal9, "segmentNumber")
	Engine.SetModelValue(registerVal11, (arg0 + 1.000000))
	if arg0 < registerVal7 then
		local registerVal10 = Engine.GetDemoSegmentInformation(arg0, "name")
		registerVal10 = Engine.GetDemoSegmentInformation(arg0, "durationTimeDisplay")
		registerVal10 = Engine.GetDemoSegmentInformation(arg0, "transition")
		registerVal11 = Engine.Localize("MENU_TRANSITION")
		registerVal11 = Engine.IsDemoHighlightReelMode()
		if registerVal11 then
			registerVal11 = tonumber(Engine.GetDemoSegmentInformation(arg0, "score"))
			local registerVal12 = tonumber(Engine.GetDemoSegmentInformation(arg0, "stars"))
		end
	end
	registerVal11 = Engine.CreateModel(registerVal9, "name")
	Engine.SetModelValue(registerVal11, registerVal10)
	registerVal11 = Engine.CreateModel(registerVal9, "duration")
	Engine.SetModelValue(registerVal11, registerVal10)
	registerVal11 = Engine.CreateModel(registerVal9, "transitionText")
	Engine.SetModelValue(registerVal11, (registerVal11 .. registerVal10))
	registerVal11 = Engine.CreateModel(registerVal9, "stars")
	Engine.SetModelValue(registerVal11, registerVal11)
	registerVal11 = Engine.CreateModel(registerVal9, "score")
	Engine.SetModelValue(registerVal11, registerVal12)
	registerVal11 = Engine.CreateModel(registerVal9, "disabled")
	Engine.SetModelValue(registerVal11, false)
	return registerVal9
end

function CoD.DemoUtility.Timeline_SetSelectedSegmentModel(arg0)
	local registerVal2 = Engine.CreateModel(arg0, "selected")
	Engine.SetModelValue(registerVal2, true)
end

function CoD.DemoUtility.Timeline_GetSelectedSegmentModel()
	local registerVal0 = Engine.GetDemoSegmentCount()
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.GetModel(registerVal2, "DemoSegments")
	if registerVal1 then
		for index2=1.000000, registerVal0, 1.000000 do
			local registerVal6 = Engine.GetModel(registerVal1, (index2 - 1.000000))
			local registerVal7 = Engine.GetModel(registerVal6, "selected")
			local registerVal8 = Engine.GetModelValue(registerVal7)
			if registerVal6 and registerVal7 and registerVal8 == true then
				return registerVal6
			end
		end
	end
	return nil
end

function CoD.DemoUtility.Timeline_GetHighlightedSegmentModel()
	local registerVal0 = Engine.GetDemoSegmentCount()
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.GetModel(registerVal2, "DemoSegments")
	if registerVal1 then
		for index2=1.000000, registerVal0, 1.000000 do
			local registerVal6 = Engine.GetModel(registerVal1, (index2 - 1.000000))
			local registerVal7 = Engine.GetModel(registerVal6, "highlighted")
			local registerVal8 = Engine.GetModelValue(registerVal7)
			if registerVal6 and registerVal7 and registerVal8 == true then
				return registerVal6
			end
		end
	end
	return nil
end

function CoD.DemoUtility.SetNumHighlightReelMomentsModel(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.GetModel(registerVal2, "demo.numHighlightReelMoments")
	Engine.SetModelValue(registerVal1, arg0)
end

function CoD.DemoUtility.GetNumHighlightReelMomentsModel()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.GetModel(registerVal1, "demo.numHighlightReelMoments")
	return registerVal0
end

function CoD.DemoUtility.RebuildHighlightReelTimeline(arg0)
	Engine.ExecNow(arg0, "demo_rebuildhighlightreeltimeline")
	local registerVal1 = Engine.GetNumberOfHighlightReelMoments()
	CoD.DemoUtility.SetNumHighlightReelMomentsModel(registerVal1)
end

function CoD.DemoUtility.Options_ItemSelected(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = Dvar[arg3]:get()
	if registerVal5 == arg1.value then
		return 
	end
	Engine.SetDvar(arg3, arg1.value)
	if arg1.valueChangedCallback then
		arg1.valueChangedCallback(arg4, arg2, arg3, arg1.value)
	end
end

function CoD.DemoUtility.Options_RevertItemSelected(arg0, arg1, arg2, arg3, arg4, arg5)
	local registerVal6 = CoD.OptionsUtility.GetCustomProfileSelection(arg2, arg1.options, Dvar[arg3]:get())
	local registerVal7 = arg0:getModel(arg2, "currentSelection")
	local registerVal8 = Engine.GetModelValue(registerVal7)
	local registerVal9, registerVal10 = arg0.Slider:getRowAndColumnForIndex((registerVal8 - 1.000000))
	arg0.Slider:setActiveIndex(registerVal9, registerVal10, 0.000000)
end

function CoD.DemoUtility.Options_GetProfileSelection(arg0, arg1, arg2)
	local registerVal3 = Dvar[arg2]:get()
	return CoD.OptionsUtility.GetCustomProfileSelection(arg0, arg1, registerVal3)
end

local registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
registerVal2.title = "MENU_NO_AVAILABLE_CLIPS"
registerVal2.description = "MENU_NO_AVAILABLE_CLIPS_DESC"
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Error
local function __FUNC_5343_(arg0, arg1)
	local function __FUNC_5408_(arg0, arg1)
		local registerVal2 = {}
		local registerVal3 = {}
		local registerVal4 = {}
		registerVal4.displayText = "MENU_OK"
		registerVal3.models = registerVal4
		registerVal4 = {}
		local function __FUNC_54BA_(arg0, arg1, arg2, arg3, arg4)
			GoBack(arg4, arg2)
		end

		registerVal4.action = __FUNC_54BA_
		registerVal3.properties = registerVal4
		registerVal2 = {registerVal3}
		return registerVal2
	end

	local registerVal3 = DataSourceHelpers.ListSetup("ClipsUnavailableForPurchaseList", __FUNC_5408_, true)
	DataSources.ClipsUnavailableForPurchaseList = registerVal3
	return "ClipsUnavailableForPurchaseList"
end

registerVal2.listDatasource = __FUNC_5343_
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
CoD.OverlayUtility.AddSystemOverlay("ClipsUnavailableForPurchase", registerVal2)
