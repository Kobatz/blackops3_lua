-- Decompiled with CoDLUIDecompiler by JariK

CoD.StickLayout = {}
function CoD.StickLayout.SetTextElems(arg0, arg1)
	arg0.textL:setText(Engine.Localize(arg1.extraParams.settings.textL))
	arg0.textR:setText(Engine.Localize(arg1.extraParams.settings.textR))
	arg0.textUL:setText(Engine.Localize(arg1.extraParams.settings.textUL))
	arg0.textUR:setText(Engine.Localize(arg1.extraParams.settings.textUR))
	arg0.textLR:setText(Engine.Localize(arg1.extraParams.settings.textLR))
	arg0.textLL:setText(Engine.Localize(arg1.extraParams.settings.textLL))
end

function CoD.StickLayout.SelectionChanged(arg0, arg1)
	if arg1 then
		Engine.SetProfileVar(arg0.parentSelectorButton.m_currentController, arg0.parentSelectorButton.m_profileVarName, arg0.value)
	end
	local registerVal4 = {}
	registerVal4.name = "stick_layout_selection_changed"
	registerVal4.choiceParams = arg0
	arg0.parentSelectorButton:dispatchEventToParent(registerVal4)
end

function CoD.StickLayout.StickLayoutSelectionChanged(arg0, arg1)
	if arg0.stickLayoutImageContainer ~= nil then
		CoD.StickLayout.SetTextElems(arg0.stickLayoutImageContainer, arg1.choiceParams)
		arg0.stickLayoutImageContainer.leftStickImage:beginAnimation(arg1.choiceParams.extraParams.animationState, 0.000000)
		if CoD.isPS4 == true or CoD.isDurango == true then
			arg0.stickLayoutImageContainer.leftStickImage:setupUIStreamedImage(0.000000)
			arg0.stickLayoutImageContainer.leftStickImage:setAlpha(0.000000)
		end
		arg0.stickLayoutImageContainer.leftStickImage:setImage(arg1.choiceParams.extraParams.settings.leftStickImageMaterial)
		arg0.stickLayoutImageContainer.rightStickImage:beginAnimation(arg1.choiceParams.extraParams.animationState, 0.000000)
		if CoD.isPS4 == true or CoD.isDurango == true then
			arg0.stickLayoutImageContainer.rightStickImage:setupUIStreamedImage(0.000000)
			arg0.stickLayoutImageContainer.rightStickImage:setAlpha(0.000000)
		end
		arg0.stickLayoutImageContainer.rightStickImage:setImage(arg1.choiceParams.extraParams.settings.rightStickImageMaterial)
	end
end

function CoD.StickLayout.BuildDefaultSettings(arg0, arg1)
	local registerVal2 = {}
	registerVal2.textUL = "MENU_MOVE_FORWARD"
	registerVal2.textUR = "MENU_LOOK_UP"
	registerVal2.textR = "MENU_ROTATE_LEFT_RIGHT"
	registerVal2.textLR = "MENU_LOOK_DOWN"
	registerVal2.textLL = "MENU_MOVE_BACK"
	registerVal2.textL = "MENU_STRAFE_LEFT_RIGHT"
	arg0.defaultSettings = registerVal2
	if arg1 == 1.000000 then
		arg0.defaultSettings.textUR = "MENU_LOOK_DOWN"
		arg0.defaultSettings.textLR = "MENU_LOOK_UP"
	end
	arg0.defaultSettings.leftStickImageMaterial = CoD.StickLayout.StickMoveMaterial
	arg0.defaultSettings.rightStickImageMaterial = CoD.StickLayout.StickTurnMaterial
end

function CoD.StickLayout.BuildSouthPawSettings(arg0, arg1)
	local registerVal2 = {}
	registerVal2.textUL = "MENU_LOOK_UP"
	registerVal2.textUR = "MENU_MOVE_FORWARD"
	registerVal2.textR = "MENU_STRAFE_LEFT_RIGHT"
	registerVal2.textLR = "MENU_MOVE_BACK"
	registerVal2.textLL = "MENU_LOOK_DOWN"
	registerVal2.textL = "MENU_ROTATE_LEFT_RIGHT"
	arg0.southPawSettings = registerVal2
	if arg1 == 1.000000 then
		arg0.southPawSettings.textUL = "MENU_LOOK_DOWN"
		arg0.southPawSettings.textLL = "MENU_LOOK_UP"
	end
	arg0.southPawSettings.leftStickImageMaterial = CoD.StickLayout.StickTurnMaterial
	arg0.southPawSettings.rightStickImageMaterial = CoD.StickLayout.StickMoveMaterial
end

function CoD.StickLayout.BuildLegacySettings(arg0, arg1)
	local registerVal2 = {}
	registerVal2.textUL = "MENU_MOVE_FORWARD"
	registerVal2.textUR = "MENU_LOOK_UP"
	registerVal2.textR = "MENU_STRAFE_LEFT_RIGHT"
	registerVal2.textLR = "MENU_LOOK_DOWN"
	registerVal2.textLL = "MENU_MOVE_BACK"
	registerVal2.textL = "MENU_ROTATE_LEFT_RIGHT"
	arg0.legacySettings = registerVal2
	if arg1 == 1.000000 then
		arg0.legacySettings.textUR = "MENU_LOOK_DOWN"
		arg0.legacySettings.textLR = "MENU_LOOK_UP"
	end
	arg0.legacySettings.leftStickImageMaterial = CoD.StickLayout.StickMoveTurnMaterial
	arg0.legacySettings.rightStickImageMaterial = CoD.StickLayout.StickMoveLookMaterial
end

function CoD.StickLayout.BuildLegacySouthPawSettings(arg0, arg1)
	local registerVal2 = {}
	registerVal2.textUL = "MENU_LOOK_UP"
	registerVal2.textUR = "MENU_MOVE_FORWARD"
	registerVal2.textR = "MENU_ROTATE_LEFT_RIGHT"
	registerVal2.textLR = "MENU_MOVE_BACK"
	registerVal2.textLL = "MENU_LOOK_DOWN"
	registerVal2.textL = "MENU_STRAFE_LEFT_RIGHT"
	arg0.legacySouthPawSettings = registerVal2
	if arg1 == 1.000000 then
		arg0.legacySouthPawSettings.textUL = "MENU_LOOK_DOWN"
		arg0.legacySouthPawSettings.textLL = "MENU_LOOK_UP"
	end
	arg0.legacySouthPawSettings.leftStickImageMaterial = CoD.StickLayout.StickMoveLookMaterial
	arg0.legacySouthPawSettings.rightStickImageMaterial = CoD.StickLayout.StickMoveTurnMaterial
end

function CoD.StickLayout.AddChoices(arg0)
	local registerVal1 = tonumber(Engine.ProfileValueAsString(arg0.m_currentController, "input_invertpitch"))
	local registerVal3 = RegisterMaterial("xenon_stick_move")
	CoD.StickLayout.StickMoveMaterial = registerVal3
	registerVal3 = RegisterMaterial("xenon_stick_turn")
	CoD.StickLayout.StickTurnMaterial = registerVal3
	registerVal3 = RegisterMaterial("xenon_stick_move_turn")
	CoD.StickLayout.StickMoveTurnMaterial = registerVal3
	registerVal3 = RegisterMaterial("xenon_stick_move_look")
	CoD.StickLayout.StickMoveLookMaterial = registerVal3
	CoD.StickLayout.BuildDefaultSettings(arg0, registerVal1)
	local registerVal4 = Engine.Localize("MENU_DEFAULT_CAPS")
	local registerVal6 = {}
	registerVal6.settings = arg0.defaultSettings
	registerVal6.animationState = "layout_default"
	arg0:addChoice(registerVal4, CoD.THUMBSTICK_DEFAULT, registerVal6, CoD.StickLayout.SelectionChanged)
	CoD.StickLayout.BuildSouthPawSettings(arg0, registerVal1)
	registerVal4 = Engine.Localize("MENU_SOUTHPAW_CAPS")
	registerVal6 = {}
	registerVal6.settings = arg0.southPawSettings
	registerVal6.animationState = "layout_southpaw"
	arg0:addChoice(registerVal4, CoD.THUMBSTICK_SOUTHPAW, registerVal6, CoD.StickLayout.SelectionChanged)
	CoD.StickLayout.BuildLegacySettings(arg0, registerVal1)
	registerVal4 = Engine.Localize("MENU_LEGACY_CAPS")
	registerVal6 = {}
	registerVal6.settings = arg0.legacySettings
	registerVal6.animationState = "layout_legacy"
	arg0:addChoice(registerVal4, CoD.THUMBSTICK_LEGACY, registerVal6, CoD.StickLayout.SelectionChanged)
	CoD.StickLayout.BuildLegacySouthPawSettings(arg0, registerVal1)
	registerVal4 = Engine.Localize("MENU_LEGACY_SOUTHPAW_CAPS")
	registerVal6 = {}
	registerVal6.settings = arg0.legacySouthPawSettings
	registerVal6.animationState = "layout_legacy_southpaw"
	arg0:addChoice(registerVal4, CoD.THUMBSTICK_LEGACYSOUTHPAW, registerVal6, CoD.StickLayout.SelectionChanged)
end

function CoD.StickLayout.AddTextElements(arg0)
	arg0:addElement(arg0.textUL)
	arg0:addElement(arg0.textL)
	arg0:addElement(arg0.textLL)
	arg0:addElement(arg0.textUR)
	arg0:addElement(arg0.textLR)
	arg0:addElement(arg0.textR)
end

function CoD.StickLayout.AddImageElements(arg0)
	arg0:addElement(arg0.controllerImage)
	arg0:addElement(arg0.leftStickImage)
	arg0:addElement(arg0.rightStickImage)
end

function CoD.StickLayout.StreamedImageReady(arg0, arg1)
	arg0:beginAnimation("fade_in", 250.000000)
	arg0:setAlpha(1.000000)
end

local function __FUNC_209D_(arg0)
	arg0.stickLayoutImageContainer.leftStickImage:setLeftRight(false, false, -136.000000, -16.000000)
	arg0.stickLayoutImageContainer.leftStickImage:setTopBottom(false, false, 88.000000, 208.000000)
	arg0.stickLayoutImageContainer.rightStickImage:setLeftRight(false, false, 12.000000, 132.000000)
	arg0.stickLayoutImageContainer.rightStickImage:setTopBottom(false, false, 88.000000, 208.000000)
	local registerVal1, registerVal2 = Engine.GetUserSafeArea()
	arg0.stickLayoutImageContainer.textUL:setLeftRight(false, false, -136.000000, -16.000000)
	arg0.stickLayoutImageContainer.textUL:setTopBottom(false, false, 58.000000, (58.000000 + CoD.textSize.Condensed))
	arg0.stickLayoutImageContainer.textL:setLeftRight(false, false, (-registerVal1 / 2.000000), -146.000000)
	arg0.stickLayoutImageContainer.textL:setTopBottom(false, false, 128.000000, (128.000000 + CoD.textSize.Condensed))
	arg0.stickLayoutImageContainer.textL:setAlignment(LUI.Alignment.Right)
	arg0.stickLayoutImageContainer.textLL:setLeftRight(false, false, -136.000000, -16.000000)
	arg0.stickLayoutImageContainer.textLL:setTopBottom(false, false, 213.000000, (213.000000 + CoD.textSize.Condensed))
	arg0.stickLayoutImageContainer.textUR:setLeftRight(false, false, 132.000000, 12.000000)
	arg0.stickLayoutImageContainer.textUR:setTopBottom(false, false, 58.000000, (58.000000 + CoD.textSize.Condensed))
	arg0.stickLayoutImageContainer.textUR:setAlignment(LUI.Alignment.Center)
	arg0.stickLayoutImageContainer.textLR:setLeftRight(false, false, 132.000000, 12.000000)
	arg0.stickLayoutImageContainer.textLR:setTopBottom(false, false, 213.000000, (213.000000 + CoD.textSize.Condensed))
	arg0.stickLayoutImageContainer.textR:setLeftRight(false, false, 142.000000, (registerVal1 / 2.000000))
	arg0.stickLayoutImageContainer.textR:setTopBottom(false, false, 128.000000, (128.000000 + CoD.textSize.Condensed))
	arg0.stickLayoutImageContainer.textR:setAlignment(LUI.Alignment.Left)
end

local function __FUNC_2688_(arg0)
	arg0.stickLayoutImageContainer.leftStickImage:setLeftRight(false, false, -200.000000, -35.000000)
	arg0.stickLayoutImageContainer.leftStickImage:setTopBottom(false, false, -35.000000, 135.000000)
	arg0.stickLayoutImageContainer.rightStickImage:setLeftRight(false, false, -24.000000, 138.000000)
	arg0.stickLayoutImageContainer.rightStickImage:setTopBottom(false, false, 35.000000, 200.000000)
	local registerVal1, registerVal2 = Engine.GetUserSafeArea()
	arg0.stickLayoutImageContainer.textUL:setLeftRight(false, false, -235.000000, 0.000000)
	arg0.stickLayoutImageContainer.textUL:setTopBottom(false, false, -70.000000, (-70.000000 + CoD.textSize.Condensed))
	arg0.stickLayoutImageContainer.textL:setLeftRight(false, false, (-registerVal1 / 2.000000), -205.000000)
	arg0.stickLayoutImageContainer.textL:setTopBottom(false, false, 37.000000, (37.000000 + CoD.textSize.Condensed))
	arg0.stickLayoutImageContainer.textL:setAlignment(LUI.Alignment.Right)
	arg0.stickLayoutImageContainer.textLL:setLeftRight(false, false, -235.000000, 0.000000)
	arg0.stickLayoutImageContainer.textLL:setTopBottom(false, false, 140.000000, (140.000000 + CoD.textSize.Condensed))
	arg0.stickLayoutImageContainer.textUR:setLeftRight(false, false, 100.000000, 0.000000)
	arg0.stickLayoutImageContainer.textUR:setTopBottom(false, false, 0.000000, (0.000000 + CoD.textSize.Condensed))
	arg0.stickLayoutImageContainer.textUR:setAlignment(LUI.Alignment.Center)
	arg0.stickLayoutImageContainer.textLR:setLeftRight(false, false, 100.000000, 0.000000)
	arg0.stickLayoutImageContainer.textLR:setTopBottom(false, false, 200.000000, (200.000000 + CoD.textSize.Condensed))
	arg0.stickLayoutImageContainer.textR:setLeftRight(false, false, 145.000000, (registerVal1 / 2.000000))
	arg0.stickLayoutImageContainer.textR:setTopBottom(false, false, 100.000000, (100.000000 + CoD.textSize.Condensed))
	arg0.stickLayoutImageContainer.textR:setAlignment(LUI.Alignment.Left)
end

local function __FUNC_2C88_(arg0)
	local registerVal1 = LUI.UIElement.new()
	arg0.stickLayoutImageContainer = registerVal1
	arg0.stickLayoutImageContainer:setLeftRight(false, false, 0.000000, 0.000000)
	arg0.stickLayoutImageContainer:setTopBottom(false, false, -50.000000, -50.000000)
	arg0.stickLayoutImageContainer:setAlpha(0.000000)
	arg0.stickLayoutImageContainer.priority = -100.000000
	if CoD.isPS4 then
	else
		if CoD.isPC then
		else
		end
	end
	if CoD.isPS4 == true or CoD.isDurango == true then
		local registerVal3 = LUI.UIStreamedImage.new()
		arg0.stickLayoutImageContainer.controllerImage = registerVal3
		arg0.stickLayoutImageContainer.controllerImage:setAlpha(0.000000)
		arg0.stickLayoutImageContainer.controllerImage:registerEventHandler("streamed_image_ready", CoD.StickLayout.StreamedImageReady)
	else
		registerVal3 = LUI.UIImage.new()
		arg0.stickLayoutImageContainer.controllerImage = registerVal3
	end
	arg0.stickLayoutImageContainer.controllerImage:setLeftRight(false, false, -250.000000, 250.000000)
	arg0.stickLayoutImageContainer.controllerImage:setTopBottom(false, false, -175.000000, 325.000000)
	arg0.stickLayoutImageContainer.controllerImage:setImage(RegisterMaterial("xenon_controller_top"))
	if CoD.isDurango then
		arg0.stickLayoutImageContainer.controllerImage:setLeftRight(false, false, -260.000000, 240.000000)
		arg0.stickLayoutImageContainer.controllerImage:setTopBottom(false, false, -140.000000, 360.000000)
	end
	if CoD.isPS4 == true or CoD.isDurango == true then
		local registerVal4 = LUI.UIStreamedImage.new()
		arg0.stickLayoutImageContainer.leftStickImage = registerVal4
		arg0.stickLayoutImageContainer.leftStickImage:setAlpha(0.000000)
		arg0.stickLayoutImageContainer.leftStickImage:registerEventHandler("streamed_image_ready", CoD.StickLayout.StreamedImageReady)
	else
		registerVal4 = LUI.UIImage.new()
		arg0.stickLayoutImageContainer.leftStickImage = registerVal4
	end
	arg0.stickLayoutImageContainer.leftStickImage:setImage(arg0.stickLayoutSelector.m_choices[arg0.stickLayoutSelector.m_currentChoice].params.extraParams.settings.leftStickImageMaterial)
	if CoD.isPS4 == true or CoD.isDurango == true then
		local registerVal5 = LUI.UIStreamedImage.new()
		arg0.stickLayoutImageContainer.rightStickImage = registerVal5
		arg0.stickLayoutImageContainer.rightStickImage:setAlpha(0.000000)
		arg0.stickLayoutImageContainer.rightStickImage:registerEventHandler("streamed_image_ready", CoD.StickLayout.StreamedImageReady)
	else
		registerVal5 = LUI.UIImage.new()
		arg0.stickLayoutImageContainer.rightStickImage = registerVal5
	end
	arg0.stickLayoutImageContainer.rightStickImage:setImage(arg0.stickLayoutSelector.m_choices[arg0.stickLayoutSelector.m_currentChoice].params.extraParams.settings.rightStickImageMaterial)
	registerVal4, registerVal5 = Engine.GetUserSafeArea()
	local registerVal8 = LUI.UIText.new()
	arg0.stickLayoutImageContainer.textUL = registerVal8
	arg0.stickLayoutImageContainer.textUL:setFont(CoD.fonts.Condensed)
	registerVal8 = LUI.UIText.new()
	arg0.stickLayoutImageContainer.textL = registerVal8
	arg0.stickLayoutImageContainer.textL:setFont(CoD.fonts.Condensed)
	registerVal8 = LUI.UIText.new()
	arg0.stickLayoutImageContainer.textLL = registerVal8
	arg0.stickLayoutImageContainer.textLL:setFont(CoD.fonts.Condensed)
	registerVal8 = LUI.UIText.new()
	arg0.stickLayoutImageContainer.textUR = registerVal8
	arg0.stickLayoutImageContainer.textUR:setFont(CoD.fonts.Condensed)
	registerVal8 = LUI.UIText.new()
	arg0.stickLayoutImageContainer.textLR = registerVal8
	arg0.stickLayoutImageContainer.textLR:setFont(CoD.fonts.Condensed)
	registerVal8 = LUI.UIText.new()
	arg0.stickLayoutImageContainer.textR = registerVal8
	arg0.stickLayoutImageContainer.textR:setFont(CoD.fonts.Condensed)
	if CoD.isDurango then
		__FUNC_2688_(arg0)
	else
		if CoD.isPC then
			__FUNC_209D_(arg0)
		else
			if CoD.isPS4 then
				__FUNC_209D_(arg0)
			end
		end
	end
end

CoD.StickLayout.CreateLayout = __FUNC_2C88_
function CoD.StickLayout.CloseMenu(arg0)
	local registerVal1 = Engine.IsInGame()
	if registerVal1 then
		local registerVal2 = arg0:getOwner()
		Engine.Exec(registerVal2, "updateVehicleBindings")
	end
	Engine.PlaySound("uin_cmn_backout")
	registerVal2 = arg0:getOwner()
	Engine.Exec(registerVal2, "updategamerprofile")
	if CoD.isCampaign == false then
		arg0:saveState()
	end
	CoD.Menu.close(arg0)
end

function CoD.StickLayout.AddBackButtonTimer(arg0, arg1)
	arg0:addBackButton()
	arg0.backButtonTimer:close()
	arg0.backButtonTimer = nil
end

function LUI.createMenu.StickLayout(arg0, arg1)
	local registerVal3 = Engine.IsInGame()
	if registerVal3 then
		local registerVal6 = Engine.Localize("PLATFORM_STICK_LAYOUT_CAPS")
		registerVal3 = CoD.InGameMenu.New("StickLayout", arg0, registerVal6, CoD.isSinglePlayer)
		registerVal3 = Engine.IsInGame()
		registerVal3 = Engine.IsSplitscreen()
		registerVal3:sizeToSafeArea(arg0)
		registerVal3:updateTitleForSplitscreen()
		registerVal3:updateButtonPromptBarsForSplitscreen()
		registerVal3 = CoD.Menu.New("StickLayout")
		local registerVal4 = {}
		registerVal4.leftAnchor = false
		registerVal4.rightAnchor = false
		registerVal4.left = -640.000000
		registerVal4.right = 640.000000
		registerVal4.topAnchor = false
		registerVal4.bottomAnchor = false
		registerVal4.top = -360.000000
		registerVal4.bottom = 360.000000
		registerVal4.red = 0.000000
		registerVal4.green = 0.000000
		registerVal4.blue = 0.000000
		registerVal4.alpha = 1.000000
		registerVal3 = LUI.UIImage.new(registerVal4)
		registerVal3:setPriority(-100.000000)
		registerVal3:addElement(registerVal3)
		registerVal3:setOwner(arg0)
		registerVal3:addTitle(Engine.Localize("PLATFORM_STICK_LAYOUT_CAPS"))
		if CoD.isSinglePlayer == false and registerVal3 and registerVal3 and CoD.isSinglePlayer == false then
			registerVal3:addLargePopupBackground()
			registerVal3:registerEventHandler("signed_out", CoD.Menu.SignedOut)
		end
	end
	registerVal3.close = CoD.StickLayout.CloseMenu
	registerVal3.controller = arg0
	if CoD.isSinglePlayer == true then
		registerVal3:addBackButton()
	else
		registerVal3:registerEventHandler("add_back_button", CoD.StickLayout.AddBackButtonTimer)
		local registerVal5 = {}
		registerVal5.name = "add_back_button"
		registerVal5.controller = arg0
		registerVal3 = LUI.UITimer.new(350.000000, registerVal5)
		registerVal3.backButtonTimer = registerVal3
		registerVal3:addElement(registerVal3.backButtonTimer)
	end
	registerVal3:registerEventHandler("stick_layout_selection_changed", CoD.StickLayout.StickLayoutSelectionChanged)
	registerVal4 = Engine.IsInGame()
	registerVal4 = Engine.IsSplitscreen()
	if registerVal4 and CoD.isSinglePlayer == false and registerVal4 then
	end
	registerVal5 = {}
	registerVal5.leftAnchor = true
	registerVal5.rightAnchor = false
	registerVal5.left = CoD.Menu.SplitscreenSideOffset
	registerVal5.right = ((CoD.Menu.SplitscreenSideOffset + CoD.ButtonList.DefaultWidth) - 20.000000)
	registerVal5.topAnchor = true
	registerVal5.bottomAnchor = false
	registerVal5.top = CoD.Menu.TitleHeight
	registerVal5.bottom = (CoD.Menu.TitleHeight + 720.000000)
	registerVal4 = CoD.ButtonList.new(registerVal5)
	registerVal3.stickLayoutButtonList = registerVal4
	if CoD.isSinglePlayer then
		registerVal3:addElement(registerVal3.stickLayoutButtonList)
		if arg1 and arg1.height ~= nil then
			registerVal3.stickLayoutButtonList:setLeftRight(false, false, (-CoD.Options.Width / 2.000000), (CoD.Options.Width / 2.000000))
			registerVal3.stickLayoutButtonList:setTopBottom(false, false, (-arg1.height / 2.000000), (arg1.height / 2.000000))
		else
			registerVal4 = CoD.SplitscreenScaler.new(nil, 1.500000)
			registerVal4:setLeftRight(true, false, 0.000000, 0.000000)
			registerVal4:setTopBottom(true, false, 0.000000, 0.000000)
			registerVal3:addElement(registerVal4)
			registerVal4:addElement(registerVal3.stickLayoutButtonList)
		end
	end
	local registerVal7 = Engine.Localize("PLATFORM_THUMBSTICK_LAYOUT_CAPS")
	registerVal4 = registerVal3.stickLayoutButtonList:addProfileLeftRightSelector(arg0, registerVal7, "gpad_sticksConfig")
	registerVal3.stickLayoutSelector = registerVal4
	CoD.StickLayout.AddChoices(registerVal3.stickLayoutSelector)
	CoD.StickLayout.CreateLayout(registerVal3)
	CoD.StickLayout.SetTextElems(registerVal3.stickLayoutImageContainer, registerVal3.stickLayoutSelector.m_choices[registerVal3.stickLayoutSelector.m_currentChoice].params)
	CoD.StickLayout.AddImageElements(registerVal3.stickLayoutImageContainer)
	CoD.StickLayout.AddTextElements(registerVal3.stickLayoutImageContainer)
	for index4=1.000000, #registerVal3.stickLayoutSelector.m_choices, 1.000000 do
		local registerVal11 = {}
		registerVal11.material = registerVal3.stickLayoutSelector.m_choices[index4].params.extraParams.settings.leftStickImage
		registerVal3.stickLayoutImageContainer.leftStickImage:registerAnimationState(registerVal3.stickLayoutSelector.m_choices[index4].params.extraParams.animationState, registerVal11)
		registerVal11 = {}
		registerVal11.material = registerVal3.stickLayoutSelector.m_choices[index4].params.extraParams.settings.rightStickImage
		registerVal3.stickLayoutImageContainer.rightStickImage:registerAnimationState(registerVal3.stickLayoutSelector.m_choices[index4].params.extraParams.animationState, registerVal11)
	end
	registerVal3:addElement(registerVal3.stickLayoutImageContainer)
	registerVal3.stickLayoutImageContainer:beginAnimation("fade_in", registerVal3.fadeInTime, false, false)
	registerVal3.stickLayoutImageContainer:setAlpha(1.000000)
	registerVal6 = {}
	registerVal6.name = "gain_focus"
	registerVal3.stickLayoutSelector:processEvent(registerVal6)
	return registerVal3
end

