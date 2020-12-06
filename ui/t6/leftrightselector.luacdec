-- Decompiled with CoDLUIDecompiler by JariK

require("ui.T6.OptionElement")
CoD.LeftRightSelector = {}
CoD.LeftRightSelector.ArrowSize = CoD.CoD9Button.TextHeight
local registerVal1 = RegisterMaterial("ui_arrow_left")
CoD.LeftRightSelector.LeftArrowMaterial = registerVal1
registerVal1 = RegisterMaterial("ui_arrow_right")
CoD.LeftRightSelector.RightArrowMaterial = registerVal1
CoD.LeftRightSelector.HorizontalGap = 400.000000
CoD.LeftRightSelector.ChangeSFX = "cac_grid_nav"
registerVal1 = {}
registerVal1.name = "left_right_selector_gain_focus"
CoD.LeftRightSelector.LeftRightSelectorGainFocusEvent = registerVal1
registerVal1 = {}
registerVal1.name = "left_right_selector_lose_focus"
CoD.LeftRightSelector.LeftRightSelectorLoseFocusEvent = registerVal1
function CoD.LeftRightSelector.UpdateChoice(arg0, arg1)
	arg0.choiceText:setText(arg0.m_choices[arg0.m_currentChoice].label)
	if arg0.m_choices[arg0.m_currentChoice].callbackFunc ~= nil then
		local registerVal3 = arg0.m_choices[arg0.m_currentChoice].callbackFunc(arg0.m_choices[arg0.m_currentChoice].params, arg1)
		if registerVal3 == false and arg0.m_lastChoice ~= nil then
			CoD.LeftRightSelector.SetCurrentChoice(arg0, arg0.m_lastChoice)
		else
			local registerVal5 = {}
			registerVal5.name = "selector_changed"
			registerVal5.selector = arg0
			registerVal5.userRequested = arg1
			arg0:dispatchEventToParent(registerVal5)
		end
	end
	arg0.choiceText:setText(arg0.m_choices[arg0.m_currentChoice].label)
end

function CoD.LeftRightSelector.FindChoiceForValue(arg0, arg1)
	local registerVal4 = tonumber(arg0.currentValue)
	if registerVal4 ~= nil then
		registerVal4 = tonumber(arg1)
	else
	end
	registerVal4, registerVal5, registerVal6 = pairs(arg0.m_choices)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		local registerVal9 = tonumber(value8.params.value)
		if registerVal9 ~= nil then
			registerVal9 = tonumber(value8.params.value)
		else
		end
		if arg1 == value8.params.value then
			return index7
		end
	end
end

function CoD.LeftRightSelector.PulseDown(arg0, arg1)
	if not arg1.interrupted then
		arg0:animateToState("default", 500.000000)
	end
end

function CoD.LeftRightSelector.SetCurrentChoice(arg0, arg1)
	if arg1 == arg0.m_currentChoice then
		return 
	end
	arg0.m_lastChoice = arg0.m_currentChoice
	arg0.m_currentChoice = arg1
	local registerVal4 = {}
	registerVal4.name = "left_right_choice_changed"
	registerVal4.choice = arg1
	arg0:dispatchEventToParent(registerVal4)
end

function CoD.LeftRightSelector.SetChoice(arg0, arg1)
	local registerVal2 = CoD.LeftRightSelector.FindChoiceForValue(arg0, arg1)
	if registerVal2 == nil then
		return 
	end
	if registerVal2 ~= arg0.m_currentChoice then
		if registerVal2 ~= nil then
			CoD.LeftRightSelector.SetCurrentChoice(arg0, registerVal2)
		end
		arg0:updateChoice()
	end
end

function CoD.LeftRightSelector.RefreshChoice(arg0)
	local registerVal1 = arg0:getCurrentValue()
	arg0.currentValue = registerVal1
	arg0:setChoice(arg0.currentValue)
end

function CoD.LeftRightSelector.GetCurrentChoiceValue(arg0)
	return arg0.m_choices[arg0.m_currentChoice].params.value
end

function CoD.LeftRightSelector.Cycle(arg0, arg1, arg2)
	if arg0.m_choices == nil then
		return 
	end
	if #arg0.m_choices == 0.000000 then
		return 
	end
	if arg0.m_sfx then
		Engine.PlaySound(arg0.m_sfx)
	end
	if arg1 == true then
	else
	end
	if arg0.m_currentChoice == nil then
		CoD.LeftRightSelector.SetCurrentChoice(arg0, 1.000000)
	else
		if (arg0.m_currentChoice + -1.000000) < 1.000000 then
		else
			if #arg0.m_choices < #arg0.m_choices then
			end
		end
		CoD.LeftRightSelector.SetCurrentChoice(arg0, 1.000000)
	end
	arg0:updateChoice(arg2)
end

function CoD.LeftRightSelector.AddChoice(arg0, arg1, arg2, arg3)
	if arg0.m_choices == nil then
		arg0.m_choices = {}
	end
	local registerVal4 = {}
	registerVal4.label = arg1
	registerVal4.callbackFunc = arg2
	registerVal4.params = arg3
	table.insert(arg0.m_choices, registerVal4)
	if arg0.m_currentChoice == nil then
		arg0:cycle()
	end
	local registerVal7 = tonumber(arg3.value)
	if registerVal7 ~= nil then
		registerVal7 = tonumber(arg3.value)
	else
	end
	registerVal7 = tonumber(arg0.currentValue)
	if registerVal7 ~= nil then
		registerVal7 = tonumber(arg0.currentValue)
	else
	end
	if arg0.currentValue == arg3.value then
		CoD.LeftRightSelector.SetCurrentChoice(arg0, #arg0.m_choices)
		arg0:updateChoice()
	end
end

function CoD.LeftRightSelector.ClearChoices(arg0)
	arg0.m_choices = nil
end

function CoD.LeftRightSelector.HandleGamepadButton(arg0, arg1)
	local registerVal2 = LUI.UIElement.handleGamepadButton(arg0, arg1)
	if registerVal2 == true then
		return true
	end
	registerVal2 = arg0:isInFocus()
	if registerVal2 and arg1.down == true and arg0.m_allowCycling ~= false then
		if arg1.button == "key_shortcut" then
			local registerVal3 = LUI.UIElement.GetCorrespondingGamepadButtonForKey(arg1.key)
		end
		if registerVal3 == "left" then
			if not arg0.disabled then
				arg0:cycle(nil, true)
			end
			return true
		else
			if registerVal3 == "right" then
				if not arg0.disabled then
					arg0:cycle(true, true)
				end
				return true
			end
		end
	end
end

function CoD.LeftRightSelector.EnableCycling(arg0)
	arg0.m_allowCycling = true
	if arg0.leftArrow then
		local registerVal4 = {}
		registerVal4.red = CoD.offWhite.r
		registerVal4.green = CoD.offWhite.g
		registerVal4.blue = CoD.offWhite.b
		registerVal4.alpha = 1.000000
		arg0.leftArrow:registerAnimationState("default", registerVal4)
		registerVal4 = {}
		registerVal4.alpha = 1.000000
		arg0.leftArrow:registerAnimationState("button_over", registerVal4)
		arg0.leftArrow:animateToState("default")
	end
	if arg0.rightArrow then
		registerVal4 = {}
		registerVal4.red = CoD.offWhite.r
		registerVal4.green = CoD.offWhite.g
		registerVal4.blue = CoD.offWhite.b
		registerVal4.alpha = 1.000000
		arg0.rightArrow:registerAnimationState("default", registerVal4)
		registerVal4 = {}
		registerVal4.alpha = 1.000000
		arg0.rightArrow:registerAnimationState("button_over", registerVal4)
		arg0.rightArrow:animateToState("default")
	end
end

function CoD.LeftRightSelector.DisableCycling(arg0)
	arg0.m_allowCycling = false
	if arg0.leftArrow then
		local registerVal4 = {}
		registerVal4.alpha = 0.000000
		arg0.leftArrow:registerAnimationState("default", registerVal4)
		registerVal4 = {}
		registerVal4.red = 0.400000
		registerVal4.green = 0.400000
		registerVal4.blue = 0.400000
		registerVal4.alpha = 0.800000
		arg0.leftArrow:registerAnimationState("disabled", registerVal4)
		registerVal4 = {}
		registerVal4.alpha = 0.000000
		arg0.leftArrow:registerAnimationState("button_over", registerVal4)
		arg0.leftArrow:animateToState("default")
	end
	if arg0.rightArrow then
		registerVal4 = {}
		registerVal4.alpha = 0.000000
		arg0.rightArrow:registerAnimationState("default", registerVal4)
		registerVal4 = {}
		registerVal4.red = 0.400000
		registerVal4.green = 0.400000
		registerVal4.blue = 0.400000
		registerVal4.alpha = 0.800000
		arg0.rightArrow:registerAnimationState("disabled", registerVal4)
		registerVal4 = {}
		registerVal4.alpha = 0.000000
		arg0.rightArrow:registerAnimationState("button_over", registerVal4)
		arg0.rightArrow:animateToState("default")
	end
end

function CoD.LeftRightSelector.MouseOnlyAction(arg0, arg1)
	if arg0.m_allowCycling ~= false and arg1.isMouse then
		arg0:cycle(true, true)
		return true
	end
end

function CoD.LeftRightSelector.MouseOnlyActionSecondary(arg0, arg1)
	if arg0.m_allowCycling ~= false and arg1.isMouse then
		arg0:cycle(nil, true)
		return true
	end
end

function CoD.LeftRightSelector.MakeReadOnly(arg0, arg1)
	arg0:disableCycling()
	if arg0.leftArrow ~= nil then
		arg0.leftArrow:animateToState("disabled", 0.000000)
	end
	if arg0.rightArrow ~= nil then
		arg0.rightArrow:animateToState("disabled", 0.000000)
	end
	arg0:disable()
end

function CoD.LeftRightSelector.ButtonUpdate(arg0, arg1)
	arg0:refreshChoice()
end

function CoD.LeftRightSelector.GainFocus(arg0, arg1)
	local registerVal2 = CoD.CoD9Button.GainFocus(arg0, arg1)
	arg0:dispatchEventToParent(CoD.LeftRightSelector.LeftRightSelectorGainFocusEvent)
	if arg0.m_allowCycling == false and not arg0.disabled then
		arg0:dispatchEventToParent(CoD.LeftRightSelector.LeftRightSelectorLoseFocusEvent)
	end
	return registerVal2
end

function CoD.LeftRightSelector.LoseFocus(arg0, arg1)
	CoD.CoD9Button.LoseFocus(arg0, arg1)
	arg0:dispatchEventToParent(CoD.LeftRightSelector.LeftRightSelectorLoseFocusEvent)
end

function CoD.LeftRightSelector.new(arg0, arg1, arg2, arg3, arg4, arg5)
	local registerVal6 = CoD.OptionElement.new(arg0, arg2, arg3)
	registerVal6.label.overDuration = nil
	registerVal6.label.upDuration = nil
	if not arg4 then
	end
	registerVal6.m_sfx = CoD.LeftRightSelector.ChangeSFX
	registerVal6.id = ("LRSelector." .. arg0)
	registerVal6.currentValue = arg1
	if not CoD.isPC then
		local registerVal8 = {}
		registerVal8.red = CoD.ButtonTextColor.r
		registerVal8.green = CoD.ButtonTextColor.g
		registerVal8.blue = CoD.ButtonTextColor.b
		registerVal8.alpha = 1.000000
		registerVal8.material = CoD.LeftRightSelector.LeftArrowMaterial
		local registerVal7 = LUI.UIImage.new(registerVal8)
		registerVal6.leftArrow = registerVal7
		registerVal6.leftArrow:setLeftRight(true, false, 0.000000, CoD.LeftRightSelector.ArrowSize)
		registerVal6.leftArrow:setTopBottom(false, false, (-CoD.LeftRightSelector.ArrowSize / 2.000000), (CoD.LeftRightSelector.ArrowSize / 2.000000))
		registerVal6.horizontalList:addElement(registerVal6.leftArrow)
		CoD.CoD9Button.SetupTextElement(registerVal6.leftArrow)
		registerVal6.leftArrow.overDuration = nil
		registerVal6.leftArrow.upDuration = nil
		local registerVal10 = {}
		registerVal10.red = CoD.BOIIOrange.r
		registerVal10.green = CoD.BOIIOrange.g
		registerVal10.blue = CoD.BOIIOrange.b
		registerVal10.alpha = 1.000000
		registerVal6.leftArrow:registerAnimationState("button_over", registerVal10)
	end
	registerVal8 = {}
	registerVal8.red = CoD.ButtonTextColor.r
	registerVal8.green = CoD.ButtonTextColor.g
	registerVal8.blue = CoD.ButtonTextColor.b
	registerVal8.alpha = 1.000000
	registerVal7 = LUI.UITightText.new(registerVal8)
	registerVal6.choiceText = registerVal7
	if arg5 ~= nil then
	end
	registerVal6.choiceText:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6.choiceText:setTopBottom(false, false, (-CoD.textSize[arg5] / 2.000000), (CoD.textSize[arg5] / 2.000000))
	registerVal6.choiceText:setTTF("fonts/escom.ttf")
	local registerVal12 = {}
	registerVal12.red = CoD.BOIIOrange.r
	registerVal12.green = CoD.BOIIOrange.g
	registerVal12.blue = CoD.BOIIOrange.b
	registerVal6.choiceText:registerAnimationState("pulse", registerVal12)
	if CoD.DisabledTextColor then
		registerVal12 = {}
		registerVal12.red = CoD.DisabledTextColor.r
		registerVal12.green = CoD.DisabledTextColor.g
		registerVal12.blue = CoD.DisabledTextColor.b
		registerVal6.choiceText:registerAnimationState("disabled", registerVal12)
	else
		registerVal12 = {}
		registerVal12.red = CoD.ButtonTextColor.r
		registerVal12.green = CoD.ButtonTextColor.g
		registerVal12.blue = CoD.ButtonTextColor.b
		registerVal12.alpha = 0.500000
		registerVal6.choiceText:registerAnimationState("disabled", registerVal12)
	end
	registerVal12 = {}
	registerVal12.red = CoD.ButtonTextColor.r
	registerVal12.green = CoD.ButtonTextColor.g
	registerVal12.blue = CoD.ButtonTextColor.b
	registerVal12.alpha = 1.000000
	registerVal6.choiceText:registerAnimationState("default", registerVal12)
	registerVal12 = {}
	registerVal12.red = CoD.BOIIOrange.r
	registerVal12.green = CoD.BOIIOrange.g
	registerVal12.blue = CoD.BOIIOrange.b
	registerVal12.alpha = 1.000000
	registerVal6.choiceText:registerAnimationState("button_over", registerVal12)
	registerVal6.choiceText:registerEventHandler("transition_complete_pulse", CoD.LeftRightSelector.PulseDown)
	registerVal6.horizontalList:addElement(registerVal6.choiceText)
	CoD.CoD9Button.SetupTextElement(registerVal6.choiceText)
	registerVal6.choiceText.overDuration = nil
	registerVal6.choiceText.upDuration = nil
	if not CoD.isPC then
		registerVal10 = {}
		registerVal10.red = CoD.ButtonTextColor.r
		registerVal10.green = CoD.ButtonTextColor.g
		registerVal10.blue = CoD.ButtonTextColor.b
		registerVal10.alpha = 1.000000
		registerVal10.material = CoD.LeftRightSelector.RightArrowMaterial
		local registerVal9 = LUI.UIImage.new(registerVal10)
		registerVal6.rightArrow = registerVal9
		registerVal6.rightArrow:setLeftRight(true, false, 0.000000, CoD.LeftRightSelector.ArrowSize)
		registerVal6.rightArrow:setTopBottom(false, false, (-CoD.LeftRightSelector.ArrowSize / 2.000000), (CoD.LeftRightSelector.ArrowSize / 2.000000))
		registerVal6.horizontalList:addElement(registerVal6.rightArrow)
		CoD.CoD9Button.SetupTextElement(registerVal6.rightArrow)
		registerVal6.rightArrow.overDuration = nil
		registerVal6.rightArrow.upDuration = nil
		registerVal12 = {}
		registerVal12.red = CoD.BOIIOrange.r
		registerVal12.green = CoD.BOIIOrange.g
		registerVal12.blue = CoD.BOIIOrange.b
		registerVal12.alpha = 1.000000
		registerVal6.rightArrow:registerAnimationState("button_over", registerVal12)
	end
	registerVal6.addChoice = CoD.LeftRightSelector.AddChoice
	registerVal6.clearChoices = CoD.LeftRightSelector.ClearChoices
	registerVal6.cycle = CoD.LeftRightSelector.Cycle
	registerVal6.updateChoice = CoD.LeftRightSelector.UpdateChoice
	registerVal6.refreshChoice = CoD.LeftRightSelector.RefreshChoice
	registerVal6.setChoice = CoD.LeftRightSelector.SetChoice
	registerVal6.handleGamepadButton = CoD.LeftRightSelector.HandleGamepadButton
	registerVal6.enableCycling = CoD.LeftRightSelector.EnableCycling
	registerVal6.disableCycling = CoD.LeftRightSelector.DisableCycling
	registerVal6.getCurrentChoiceValue = CoD.LeftRightSelector.GetCurrentChoiceValue
	registerVal6:registerEventHandler("button_action", CoD.LeftRightSelector.MouseOnlyAction)
	registerVal6:registerEventHandler("button_actionsecondary", CoD.LeftRightSelector.MouseOnlyActionSecondary)
	registerVal6:registerEventHandler("button_readonly", CoD.LeftRightSelector.MakeReadOnly)
	registerVal6:registerEventHandler("button_update", CoD.LeftRightSelector.ButtonUpdate)
	registerVal6:registerEventHandler("gain_focus", CoD.LeftRightSelector.GainFocus)
	registerVal6:registerEventHandler("lose_focus", CoD.LeftRightSelector.LoseFocus)
	return registerVal6
end

