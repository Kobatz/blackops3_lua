-- Decompiled with CoDLUIDecompiler by JariK

require("ui.T6.SideBracketsImage")
CoD.CoD9Button = {}
CoD.CoD9Button.Height = 30.000000
CoD.CoD9Button.FontName = "Condensed"
CoD.CoD9Button.Font = CoD.fonts[CoD.CoD9Button.FontName]
CoD.CoD9Button.TextHeight = CoD.textSize[CoD.CoD9Button.FontName]
local registerVal1 = {}
registerVal1.r = 1.000000
registerVal1.g = 1.000000
registerVal1.b = 1.000000
registerVal1.a = 0.200000
CoD.CoD9Button.BackgroundColor = registerVal1
CoD.CoD9Button.BracketAnimDistance = 30.000000
CoD.CoD9Button.ButtonOverAnimTime = 150.000000
CoD.CoD9Button.BracketSpacer = 10.000000
CoD.CoD9Button.PulseDuration = 650.000000
function CoD.CoD9Button.SetBracketContainerStates(arg0, arg1, arg2, arg3)
	if arg2 == nil then
	end
	GetTextDimensions(arg1, CoD.fonts["Condensed"], CoD.textSize["Condensed"])
	{} = {}
	if arg3 == nil then
	end
	arg0.container.leftOffset = 0.000000
	arg0.container.textWidth = {}[3.000000]
	arg0.container:setLeftRight(true, false, ((arg0.container.leftOffset - CoD.CoD9Button.BracketSpacer) - CoD.CoD9Button.BracketAnimDistance), (((arg0.container.leftOffset + {}[3.000000]) + CoD.CoD9Button.BracketSpacer) + CoD.CoD9Button.BracketAnimDistance))
	arg0.container:setTopBottom(true, true, 0.000000, 0.000000)
end

function CoD.CoD9Button.SetLabel(arg0, arg1, arg2, arg3)
	arg0.id = ("CoD9Button." .. arg1)
	arg0.label:setText(arg1)
	arg0.labelString = arg1
	CoD.CoD9Button.SetBracketContainerStates(arg0, arg1, arg2, arg3)
end

function CoD.CoD9Button.Lock(arg0)
	arg0:disable()
	local registerVal2 = {}
	registerVal2.leftAnchor = false
	registerVal2.rightAnchor = true
	registerVal2.left = -CoD.CoD9Button.Height
	registerVal2.right = -6.000000
	registerVal2.topAnchor = true
	registerVal2.bottomAnchor = true
	registerVal2.top = 3.000000
	registerVal2.bottom = -3.000000
	local registerVal3 = RegisterMaterial("lock")
	registerVal2.material = registerVal3
	local registerVal1 = LUI.UIImage.new(registerVal2)
	arg0.lockImage = registerVal1
	arg0:addElement(arg0.lockImage)
	arg0:showNewIcon(false)
end

function CoD.CoD9Button.ShowNewIcon(arg0, arg1)
	if CoD.isSinglePlayer then
		local registerVal3 = {}
		registerVal3.leftAnchor = false
		registerVal3.rightAnchor = true
		registerVal3.left = -CoD.CoD9Button.Height
		registerVal3.right = 10.000000
		registerVal3.topAnchor = true
		registerVal3.bottomAnchor = true
		registerVal3.top = 0.000000
		registerVal3.bottom = 0.000000
		local registerVal4 = RegisterMaterial("menu_mp_lobby_new")
		registerVal3.material = registerVal4
		local registerVal2 = LUI.UIImage.new(registerVal3)
		arg0.newIcon = registerVal2
		arg0:addElement(arg0.newIcon)
	else
		if arg1 and not arg0.lockImage then
			registerVal2 = LUI.UIImage.new()
			arg0.newIcon = registerVal2
			arg0.newIcon:setLeftRight(true, false, (arg0.container.textWidth + 10.000000), ((arg0.container.textWidth + 10.000000) + CoD.CACUtility.ButtonGridNewImageWidth))
			arg0.newIcon:setTopBottom(false, false, (-CoD.CACUtility.ButtonGridNewImageHeight / 2.000000), (CoD.CACUtility.ButtonGridNewImageHeight / 2.000000))
			arg0.newIcon:setImage(RegisterMaterial(CoD.CACUtility.NewImageMaterial))
			arg0:addElement(arg0.newIcon)
			if not arg0.newIcon and arg0.newIcon then
				arg0.newIcon:close()
				arg0.newIcon = nil
			end
		end
	end
end

function CoD.CoD9Button.GainFocus(arg0, arg1)
	local registerVal2 = LUI.UIButton.gainFocus(arg0, arg1)
	if CoD.isZombie == true then
		arg0.brackets:beginAnimation("selected", CoD.CoD9Button.ButtonOverAnimTime)
		arg0.brackets:setAlpha(1.000000)
		arg0.container:beginAnimation("selected", CoD.CoD9Button.ButtonOverAnimTime)
		arg0.container:setLeftRight(true, false, (arg0.container.leftOffset - CoD.CoD9Button.BracketSpacer), ((arg0.container.leftOffset + arg0.container.textWidth) + CoD.CoD9Button.BracketSpacer))
		arg0.container:setTopBottom(true, true, 0.000000, 0.000000)
	end
	if arg0.background then
		arg0.background:beginAnimation("selected", CoD.CoD9Button.ButtonOverAnimTime)
		arg0.background:setRGB(1.000000, 1.000000, 1.000000)
		arg0.background:setAlpha(1.000000)
	end
	arg0.buttonHasFocus = true
	CoD.CoD9Button.StartLabelPulse(arg0)
	local registerVal5 = {}
	registerVal5.name = "button_gained_focus"
	registerVal5.button = arg0
	arg0:dispatchEventToParent(registerVal5)
	if arg0.disabled then
		registerVal5 = {}
		registerVal5.name = "COD9ButtonIsDisabled"
		arg0:dispatchEventToParent(registerVal5)
	else
		if not arg0.actionPromptString then
			registerVal5 = {}
			registerVal5.name = "COD9ButtonIsEnabled"
			arg0:dispatchEventToParent(registerVal5)
		end
	end
	return registerVal2
end

function CoD.CoD9Button.LoseFocus(arg0, arg1)
	LUI.UIButton.loseFocus(arg0, arg1)
	arg0:animateToState("pulse_high", 1.000000)
	arg0:completeAnimation()
	arg0.buttonHasFocus = nil
	if CoD.isZombie == true then
		arg0.brackets:beginAnimation("not_selected", CoD.CoD9Button.ButtonOverAnimTime)
		arg0.brackets:setAlpha(0.000000)
		arg0.container:beginAnimation("not_selected", CoD.CoD9Button.ButtonOverAnimTime)
		arg0.container:setLeftRight(true, false, ((arg0.container.leftOffset - CoD.CoD9Button.BracketSpacer) - CoD.CoD9Button.BracketAnimDistance), (((arg0.container.leftOffset + arg0.container.textWidth) + CoD.CoD9Button.BracketSpacer) + CoD.CoD9Button.BracketAnimDistance))
		arg0.container:setTopBottom(true, true, 0.000000, 0.000000)
	end
	if arg0.background then
		arg0.background:animateToState("default", CoD.CoD9Button.ButtonOverAnimTime)
	end
end

function CoD.CoD9Button.SetupTextElement(arg0)
	local registerVal4 = {}
	registerVal4.red = CoD.BOIIOrange.r
	registerVal4.green = CoD.BOIIOrange.g
	registerVal4.blue = CoD.BOIIOrange.b
	registerVal4.alpha = 1.000000
	arg0:registerAnimationState("button_over", registerVal4)
	if CoD.isZombie then
		local registerVal5 = {}
		registerVal5.red = 0.184314
		registerVal5.green = 0.309804
		registerVal5.blue = 0.309804
		registerVal5.alpha = 0.300000
		arg0:registerAnimationState("button_over_disabled", registerVal5)
	end
	if CoD.isSinglePlayer then
		registerVal5 = {}
		registerVal5.red = CoD.DisabledTextColor.r
		registerVal5.green = CoD.DisabledTextColor.g
		registerVal5.blue = CoD.DisabledTextColor.b
		arg0:registerAnimationState("disabled", registerVal5)
	else
		registerVal5 = {}
		registerVal5.red = CoD.ButtonTextColor.r
		registerVal5.green = CoD.ButtonTextColor.g
		registerVal5.blue = CoD.ButtonTextColor.b
		registerVal5.alpha = 0.300000
		arg0:registerAnimationState("disabled", registerVal5)
	end
	arg0.overDuration = CoD.CoD9Button.ButtonOverAnimTime
	arg0.upDuration = CoD.CoD9Button.ButtonOverAnimTime
	LUI.UIButton.SetupElement(arg0)
end

function CoD.CoD9Button.StartAnimation(arg0, arg1, arg2, arg3, arg4)
	if arg0.disabled == true then
	end
	arg0:animateToState((arg1 .. "_disabled"), arg2, arg3, arg4)
end

function CoD.CoD9Button.StartLabelPulse(arg0)
	CoD.CoD9Button.StartAnimation(arg0, "pulse_high", 1.000000)
end

function CoD.CoD9Button.TransitionCompletePulseHigh(arg0, arg1)
	if arg1.interrupted ~= true then
		if arg0.buttonList ~= nil and arg0.buttonList.m_inputDisabled == true then
			CoD.CoD9Button.StartAnimation(arg0, "pulse_high", 1.000000)
		else
			CoD.CoD9Button.StartAnimation(arg0, "pulse_low", CoD.CoD9Button.PulseDuration, true, false)
		end
	end
end

function CoD.CoD9Button.TransitionCompletePulseLow(arg0, arg1)
	if arg1.interrupted ~= true then
		if arg0.buttonList ~= nil and arg0.buttonList.m_inputDisabled == true then
			CoD.CoD9Button.StartAnimation(arg0, "pulse_high", 1.000000)
		else
			CoD.CoD9Button.StartAnimation(arg0, "pulse_high", CoD.CoD9Button.PulseDuration, false, true)
		end
	end
end

function CoD.CoD9Button.DisableInput(arg0, arg1)
	CoD.CoD9Button.StartLabelPulse(arg0)
	if arg0.buttonHasFocus == true and arg1.stopAnimation == true then
		arg0:completeAnimation()
	end
end

function CoD.CoD9Button.EnableInput(arg0, arg1)
	if arg0.buttonHasFocus == true then
		CoD.CoD9Button.StartLabelPulse(arg0)
	end
end

function CoD.CoD9Button.AddBackgroundElement(arg0, arg1)
	if not arg1 or not arg1 then
		return 
	end
	if arg1.alpha == nil then
		arg1.alpha = 0.000000
	end
	local registerVal2 = LUI.UIImage.new(arg1)
	arg0.background = registerVal2
	LUI.UIButton.SetupElement(arg0.background)
	arg0.backgroundContainer:addElement(arg0.background)
end

function CoD.CoD9Button.new(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = LUI.UIButton.new(arg0, arg1)
	registerVal5.id = "CoD9Button"
	registerVal5.setLabel = CoD.CoD9Button.SetLabel
	registerVal5.lock = CoD.CoD9Button.Lock
	registerVal5.showNewIcon = CoD.CoD9Button.ShowNewIcon
	registerVal5.showZMNewIcon = CoD.CoD9Button.ShowZMNewIcon
	registerVal5.showStarIcon = CoD.CoD9Button.ShowStarIcon
	registerVal5.showRestrictedIcon = CoD.CoD9Button.ShowRestrictedIcon
	registerVal5.addBackground = CoD.CoD9Button.AddBackgroundElement
	registerVal5:registerEventHandler("disable_input", CoD.CoD9Button.DisableInput)
	registerVal5:registerEventHandler("enable_input", CoD.CoD9Button.EnableInput)
	registerVal5:registerEventHandler("gain_focus", CoD.CoD9Button.GainFocus)
	registerVal5:registerEventHandler("lose_focus", CoD.CoD9Button.LoseFocus)
	if CoD.isZombie then
	end
	local registerVal11 = {}
	registerVal11.alpha = 1.000000
	registerVal5:registerAnimationState("pulse_high", registerVal11)
	registerVal11 = {}
	registerVal11.alpha = 0.500000
	registerVal5:registerAnimationState("pulse_low", registerVal11)
	registerVal11 = {}
	registerVal11.alpha = 1.000000
	registerVal5:registerAnimationState("pulse_high_disabled", registerVal11)
	registerVal11 = {}
	registerVal11.alpha = 0.500000
	registerVal5:registerAnimationState("pulse_low_disabled", registerVal11)
	registerVal5:registerEventHandler("transition_complete_pulse_high", CoD.CoD9Button.TransitionCompletePulseHigh)
	registerVal5:registerEventHandler("transition_complete_pulse_low", CoD.CoD9Button.TransitionCompletePulseLow)
	registerVal5:registerEventHandler("transition_complete_pulse_high_disabled", CoD.CoD9Button.TransitionCompletePulseHigh)
	registerVal5:registerEventHandler("transition_complete_pulse_low_disabled", CoD.CoD9Button.TransitionCompletePulseLow)
	local registerVal9 = {}
	registerVal9.leftAnchor = true
	registerVal9.rightAnchor = true
	registerVal9.left = 0.000000
	registerVal9.right = 0.000000
	registerVal9.topAnchor = true
	registerVal9.bottomAnchor = true
	registerVal9.top = 0.000000
	registerVal9.bottom = 0.000000
	local registerVal8 = LUI.UIElement.new(registerVal9)
	registerVal5.container = registerVal8
	registerVal5:addElement(registerVal5.container)
	registerVal9 = {}
	registerVal9.leftAnchor = true
	registerVal9.rightAnchor = true
	registerVal9.left = 0.000000
	registerVal9.right = 0.000000
	registerVal9.topAnchor = true
	registerVal9.bottomAnchor = true
	registerVal9.top = 0.000000
	registerVal9.bottom = 0.000000
	registerVal8 = LUI.UIElement.new(registerVal9)
	registerVal5.backgroundContainer = registerVal8
	registerVal5:addElement(registerVal5.backgroundContainer)
	if CoD.isZombie == true then
		registerVal8 = CoD.SideBracketsImage.new()
		registerVal5.brackets = registerVal8
		registerVal5.brackets:setAlpha(0.000000)
		registerVal5.container:addElement(registerVal5.brackets)
	end
	if arg2 then
	end
	local registerVal10 = {}
	registerVal10.leftAnchor = true
	registerVal10.rightAnchor = true
	registerVal10.left = 0.000000
	registerVal10.right = 0.000000
	registerVal10.topAnchor = false
	registerVal10.bottomAnchor = false
	registerVal10.top = (-CoD.CoD9Button.TextHeight / 2.000000)
	registerVal10.bottom = (CoD.CoD9Button.TextHeight / 2.000000)
	registerVal10.red = CoD.ButtonTextColor.r
	registerVal10.green = CoD.ButtonTextColor.g
	registerVal10.blue = CoD.ButtonTextColor.b
	registerVal10.alpha = 1.000000
	registerVal10.alignment = LUI.Alignment.Center
	registerVal9 = LUI.UIText.new(registerVal10)
	registerVal5.label = registerVal9
	registerVal5.label:setTTF("fonts/escom.ttf")
	CoD.CoD9Button.SetupTextElement(registerVal5.label)
	registerVal5:addElement(registerVal5.label)
	return registerVal5
end

function CoD.CoD9Button.ShowStarIcon(arg0, arg1)
	if arg1 then
		if arg0.restrictedIcon then
			arg0.restrictedIcon:close()
			arg0.restrictedIcon = nil
		end
		if not arg0.starIcon then
			if not CoD.CoD9Button.CustomizedMaterial then
				local registerVal3 = RegisterMaterial(CoD.MPZM("ui_host", "ui_host_zm"))
				CoD.CoD9Button.CustomizedMaterial = registerVal3
			end
			local registerVal5 = LUI.UIImage.new()
			arg0.starIcon = registerVal5
			arg0.starIcon:setLeftRight(true, false, (-5.000000 - 24.000000), -5.000000)
			arg0.starIcon:setTopBottom(false, false, (-1.000000 - (24.000000 / 2.000000)), (-1.000000 + (24.000000 / 2.000000)))
			arg0.starIcon:setImage(CoD.CoD9Button.CustomizedMaterial)
			arg0:addElement(arg0.starIcon)
		else
			if arg0.starIcon then
				arg0.starIcon:close()
				arg0.starIcon = nil
			end
		end
	end
end

function CoD.CoD9Button.ShowRestrictedIcon(arg0, arg1)
	if arg1 then
		if arg0.starIcon then
			arg0.starIcon:close()
			arg0.starIcon = nil
		end
		local registerVal5 = LUI.UIImage.new()
		arg0.restrictedIcon = registerVal5
		arg0.restrictedIcon:setLeftRight(true, false, (-5.000000 - 24.000000), -5.000000)
		arg0.restrictedIcon:setTopBottom(false, false, (-1.000000 - (24.000000 / 2.000000)), (-1.000000 + (24.000000 / 2.000000)))
		arg0.restrictedIcon:setImage(RegisterMaterial("cac_restricted"))
		arg0:addElement(arg0.restrictedIcon)
		if not arg0.restrictedIcon and arg0.restrictedIcon then
			arg0.restrictedIcon:close()
			arg0.restrictedIcon = nil
		end
	end
end

function CoD.CoD9Button.ShowZMNewIcon(arg0, arg1, arg2, arg3)
	if arg1 then
		if arg2 == nil then
		end
		if arg3 == nil then
		end
		GetTextDimensions(arg0.labelString, CoD.fonts["Condensed"], CoD.textSize["Condensed"])
		{} = {}
		if not arg0.newIcon then
			local registerVal11 = LUI.UIImage.new()
			arg0.newIcon = registerVal11
			if true then
				arg0.newIcon:setLeftRight(true, false, (-64.000000 + 25.000000), 25.000000)
			else
				arg0.newIcon:setLeftRight(true, false, (25.000000 + {}[3.000000]), ((25.000000 + {}[3.000000]) + 64.000000))
			end
			arg0.newIcon:setTopBottom(false, false, -(32.000000 / 2.000000), (32.000000 / 2.000000))
			arg0.newIcon:setImage(RegisterMaterial("menu_mp_lobby_new_small"))
			arg0:addElement(arg0.newIcon)
		else
			if arg0.newIcon then
				arg0.newIcon:close()
				arg0.newIcon = nil
			end
		end
	end
end

function CoD.CoD9Button.RegistrationButtonOver(arg0, arg1)
	arg0:setRGB(CoD.BOIIOrange.r, CoD.BOIIOrange.g, CoD.BOIIOrange.b)
	arg0:setAlpha(0.750000)
	local registerVal2 = arg0:getParent()
	if registerVal2 then
		if not arg1 or registerVal2.isLocked then
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.100000)
		end
	end
end

function CoD.CoD9Button.RegistrationButtonUp(arg0, arg1)
	arg0:setRGB(1.000000, 1.000000, 1.000000)
	arg0:setAlpha(0.100000)
end

function CoD.CoD9Button.RegistrationButtonSetLabel(arg0, arg1, arg2, arg3)
	arg0.id = ("CoD9RegistrationButton." .. arg1)
	arg0.label:setText(arg1)
	arg0.labelString = arg1
	CoD.CoD9Button.SetBracketContainerStates(arg0, arg1, arg2, arg3)
end

function CoD.CoD9Button.NewRegistrationButton(arg0, arg1, arg2, arg3)
	local registerVal4 = LUI.UIButton.new(arg0, arg1)
	registerVal4.id = "CoD9RegistrationButton"
	registerVal4.setLabel = CoD.CoD9Button.RegistrationButtonSetLabel
	registerVal4.lock = CoD.CoD9Button.Lock
	registerVal4.showNewIcon = CoD.CoD9Button.ShowNewIcon
	registerVal4.showZMNewIcon = CoD.CoD9Button.ShowZMNewIcon
	registerVal4.showRestrictedIcon = CoD.CoD9Button.ShowRestrictedIcon
	registerVal4.addBackground = CoD.CoD9Button.AddBackgroundElement
	registerVal4:registerEventHandler("disable_input", CoD.CoD9Button.DisableInput)
	registerVal4:registerEventHandler("enable_input", CoD.CoD9Button.EnableInput)
	registerVal4:registerEventHandler("gain_focus", CoD.CoD9Button.GainFocus)
	registerVal4:registerEventHandler("lose_focus", CoD.CoD9Button.LoseFocus)
	if CoD.isZombie then
	end
	local registerVal10 = {}
	registerVal10.alpha = 1.000000
	registerVal4:registerAnimationState("pulse_high", registerVal10)
	registerVal10 = {}
	registerVal10.alpha = 0.500000
	registerVal4:registerAnimationState("pulse_low", registerVal10)
	registerVal10 = {}
	registerVal10.alpha = 1.000000
	registerVal4:registerAnimationState("pulse_high_disabled", registerVal10)
	registerVal10 = {}
	registerVal10.alpha = 0.500000
	registerVal4:registerAnimationState("pulse_low_disabled", registerVal10)
	registerVal4:registerEventHandler("transition_complete_pulse_high", CoD.CoD9Button.TransitionCompletePulseHigh)
	registerVal4:registerEventHandler("transition_complete_pulse_low", CoD.CoD9Button.TransitionCompletePulseLow)
	registerVal4:registerEventHandler("transition_complete_pulse_high_disabled", CoD.CoD9Button.TransitionCompletePulseHigh)
	registerVal4:registerEventHandler("transition_complete_pulse_low_disabled", CoD.CoD9Button.TransitionCompletePulseLow)
	local registerVal8 = {}
	registerVal8.leftAnchor = true
	registerVal8.rightAnchor = true
	registerVal8.left = 0.000000
	registerVal8.right = 0.000000
	registerVal8.topAnchor = true
	registerVal8.bottomAnchor = true
	registerVal8.top = 0.000000
	registerVal8.bottom = 0.000000
	local registerVal7 = LUI.UIElement.new(registerVal8)
	registerVal4.container = registerVal7
	registerVal4:addElement(registerVal4.container)
	registerVal8 = {}
	registerVal8.leftAnchor = true
	registerVal8.rightAnchor = true
	registerVal8.left = 0.000000
	registerVal8.right = 0.000000
	registerVal8.topAnchor = true
	registerVal8.bottomAnchor = true
	registerVal8.top = 0.000000
	registerVal8.bottom = 0.000000
	registerVal7 = LUI.UIElement.new(registerVal8)
	registerVal4.backgroundContainer = registerVal7
	registerVal4:addElement(registerVal4.backgroundContainer)
	if CoD.isZombie == true then
		registerVal7 = CoD.SideBracketsImage.new()
		registerVal4.brackets = registerVal7
		registerVal4.brackets:setAlpha(0.000000)
		registerVal4.container:addElement(registerVal4.brackets)
	end
	if arg2 then
	end
	if arg3 ~= nil then
	end
	local registerVal11 = {}
	registerVal11.leftAnchor = true
	registerVal11.rightAnchor = true
	registerVal11.left = 6.000000
	registerVal11.right = 0.000000
	registerVal11.topAnchor = false
	registerVal11.bottomAnchor = false
	registerVal11.top = (-CoD.textSize[arg3] / 2.000000)
	registerVal11.bottom = (CoD.textSize[arg3] / 2.000000)
	registerVal11.red = CoD.ButtonTextColor.r
	registerVal11.green = CoD.ButtonTextColor.g
	registerVal11.blue = CoD.ButtonTextColor.b
	registerVal11.alpha = 1.000000
	registerVal11.font = CoD.fonts[arg3]
	registerVal11.alignment = LUI.Alignment.Center
	registerVal10 = LUI.UIText.new(registerVal11)
	registerVal4.label = registerVal10
	CoD.CoD9Button.SetupTextElement(registerVal4.label)
	registerVal4:addElement(registerVal4.label)
	registerVal10 = CoD.BorderT6.new(1.000000, 1.000000, 1.000000, 1.000000, 0.100000)
	registerVal4.border = registerVal10
	registerVal4.border:registerEventHandler("button_over", CoD.CoD9Button.RegistrationButtonOver)
	registerVal4.border:registerEventHandler("button_up", CoD.CoD9Button.RegistrationButtonUp)
	registerVal4:addElement(registerVal4.border)
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, true, 4.000000, -4.000000)
	registerVal14:setTopBottom(true, false, 4.000000, (((CoD.textSize[arg3] * 2.000000) + 2.000000) * 0.600000))
	registerVal14:setImage(RegisterMaterial("menu_mp_cac_grad_stretch"))
	registerVal14:setAlpha(0.100000)
	registerVal4.backgroundContainer:addElement(registerVal14)
	return registerVal4
end

