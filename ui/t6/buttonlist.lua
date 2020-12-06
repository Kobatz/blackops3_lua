-- Decompiled with CoDLUIDecompiler by JariK

require("ui.T6.CoD9Button")
require("ui.T6.GametypeSettingLeftRightSelector")
require("ui.T6.ProfileLeftRightSelector")
CoD.ButtonList = {}
CoD.ButtonList.ButtonSpacing = 2.000000
CoD.ButtonList.DefaultWidth = 400.000000
function CoD.ButtonList.Button_HintTextListener_GainFocus(arg0, arg1)
	local registerVal2 = arg0:getParent()
	local registerVal3 = registerVal2:getParent()
	if registerVal3 and registerVal3.updateHintText then
		registerVal3:updateHintText(registerVal2)
	end
end

function CoD.ButtonList.AssociateHintTextListenerToButton(arg0)
	local registerVal1 = LUI.UIElement.new()
	arg0:addElement(registerVal1)
	registerVal1:registerEventHandler("gain_focus", CoD.ButtonList.Button_HintTextListener_GainFocus)
end

function CoD.ButtonList.UpdateHintText(arg0, arg1)
	if arg0.hintText ~= nil then
		if arg1.hintText ~= nil then
			arg0.hintText:updateText(arg1.hintText)
		else
			arg0.hintText:removeText()
		end
	end
end

function CoD.ButtonList.UpdateHintTextEvent(arg0, arg1)
	arg0:updateHintText(arg1.button)
end

function CoD.ButtonList.DisableInput(arg0)
	arg0.m_inputDisabled = true
	local registerVal3 = {}
	registerVal3.name = "disable_input"
	arg0:dispatchEventToChildren(registerVal3)
	if arg0.hintText then
		arg0.hintText:close()
	end
end

function CoD.ButtonList.EnableInput(arg0)
	arg0.m_inputDisabled = false
	if arg0.hintText then
		arg0:addElement(arg0.hintText)
	end
end

function CoD.ButtonList.AddButton(arg0, arg1, arg2, arg3)
	local registerVal5 = {}
	registerVal5.leftAnchor = true
	registerVal5.rightAnchor = true
	registerVal5.left = 0.000000
	registerVal5.right = 0.000000
	registerVal5.topAnchor = true
	registerVal5.bottomAnchor = false
	registerVal5.top = 0.000000
	registerVal5.bottom = CoD.CoD9Button.Height
	local registerVal4 = CoD.CoD9Button.new(registerVal5, nil, arg0.centerButtons)
	registerVal4.hintText = arg2
	registerVal4:setPriority(arg3)
	registerVal4:setLabel(arg1)
	arg0:addElement(registerVal4)
	arg0[registerVal4.id] = registerVal4
	CoD.ButtonList.AssociateHintTextListenerToButton(registerVal4)
	if arg0.gainFocusSFX ~= nil then
		registerVal4:setGainFocusSFX(arg0.gainFocusSFX)
	end
	if arg0.actionSFX ~= nil then
		registerVal4:setActionSFX(arg0.actionSFX)
	end
	registerVal4.buttonList = arg0
	if arg0.buttonBackingAnimationState then
		registerVal4:addBackground(arg0.buttonBackingAnimationState)
	end
	return registerVal4
end

function CoD.ButtonList.AddRegistrationButton(arg0, arg1, arg2, arg3)
	local registerVal5 = {}
	registerVal5.leftAnchor = true
	registerVal5.rightAnchor = true
	registerVal5.left = 0.000000
	registerVal5.right = 0.000000
	registerVal5.topAnchor = true
	registerVal5.bottomAnchor = false
	registerVal5.top = 0.000000
	registerVal5.bottom = CoD.CoD9Button.Height
	local registerVal4 = CoD.CoD9Button.NewRegistrationButton(registerVal5, nil, arg0.centerButtons, "Default")
	registerVal4.hintText = arg2
	registerVal4:setPriority(arg3)
	registerVal4:setLabel(arg1)
	arg0:addElement(registerVal4)
	CoD.ButtonList.AssociateHintTextListenerToButton(registerVal4)
	if arg0.gainFocusSFX ~= nil then
		registerVal4:setGainFocusSFX(arg0.gainFocusSFX)
	end
	if arg0.actionSFX ~= nil then
		registerVal4:setActionSFX(arg0.actionSFX)
	end
	registerVal4.buttonList = arg0
	if arg0.buttonBackingAnimationState then
		registerVal4:addBackground(arg0.buttonBackingAnimationState)
	end
	return registerVal4
end

function CoD.ButtonList.AddCustomButton(arg0, arg1)
	arg0:addElement(arg1)
	CoD.ButtonList.AssociateHintTextListenerToButton(arg1)
	if arg0.gainFocusSFX ~= nil then
		arg1:setGainFocusSFX(arg0.gainFocusSFX)
	end
	if arg0.actionSFX ~= nil then
		arg1:setActionSFX(arg0.actionSFX)
	end
end

function CoD.ButtonList.AddNavButton(arg0, arg1, arg2, arg3)
	local registerVal6 = {}
	registerVal6.leftAnchor = true
	registerVal6.rightAnchor = true
	registerVal6.left = 0.000000
	registerVal6.right = 0.000000
	registerVal6.topAnchor = true
	registerVal6.bottomAnchor = false
	registerVal6.top = 0.000000
	registerVal6.bottom = 50.000000
	local registerVal5 = CoD.NavButton.new(registerVal6, arg1, arg2)
	registerVal5:setPriority(arg3)
	arg0:addElement(registerVal5)
	return registerVal5
end

function CoD.ButtonList.AddText(arg0, arg1)
	local registerVal2 = LUI.UIText.new()
	registerVal2:setLeftRight(true, false, 0.000000, 0.000000)
	registerVal2:setTopBottom(true, false, 0.000000, CoD.CoD9Button.Height)
	registerVal2:setText(arg1)
	arg0:addElement(registerVal2)
	return registerVal2
end

function CoD.ButtonList.AddLeftRightSelector(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
	if arg6 ~= nil then
	end
	local registerVal8 = {}
	registerVal8.leftAnchor = true
	registerVal8.rightAnchor = true
	registerVal8.left = 0.000000
	registerVal8.right = 0.000000
	registerVal8.topAnchor = true
	registerVal8.bottomAnchor = false
	registerVal8.top = 0.000000
	registerVal8.bottom = CoD.textSize[arg6]
	local registerVal9 = CoD.LeftRightSelector.new(arg1, arg2, arg3, registerVal8, nil, arg6)
	registerVal9.hintText = arg4
	registerVal9:setPriority(arg5)
	arg0:addElement(registerVal9)
	CoD.ButtonList.AssociateHintTextListenerToButton(registerVal9)
	if arg0.buttonBackingAnimationState then
		registerVal9:addBackground(arg0.buttonBackingAnimationState)
	end
	return registerVal9
end

function CoD.ButtonList.AddLeftRightSlider(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
	local registerVal8 = {}
	registerVal8.leftAnchor = true
	registerVal8.rightAnchor = true
	registerVal8.left = 0.000000
	registerVal8.right = 0.000000
	registerVal8.topAnchor = true
	registerVal8.bottomAnchor = false
	registerVal8.top = 0.000000
	registerVal8.bottom = CoD.CoD9Button.Height
	local registerVal9 = CoD.LeftRightSlider.new(arg1, arg4, arg5, nil, arg2, arg3, registerVal8)
	registerVal9.hintText = arg6
	registerVal9:setPriority(arg7)
	arg0:addElement(registerVal9)
	CoD.ButtonList.AssociateHintTextListenerToButton(registerVal9)
	if arg0.buttonBackingAnimationState then
		registerVal9:addBackground(arg0.buttonBackingAnimationState)
	end
	return registerVal9
end

function CoD.ButtonList.AddDiscreteLeftRightSlider(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
	local registerVal9 = {}
	registerVal9.leftAnchor = true
	registerVal9.rightAnchor = true
	registerVal9.left = 0.000000
	registerVal9.right = 0.000000
	registerVal9.topAnchor = true
	registerVal9.bottomAnchor = false
	registerVal9.top = 0.000000
	registerVal9.bottom = CoD.CoD9Button.Height
	local registerVal10 = CoD.DiscreteLeftRightSlider.new(arg1, arg5, arg6, nil, arg2, arg3, arg4, registerVal9)
	registerVal10.hintText = arg7
	registerVal10:setPriority(arg8)
	arg0:addElement(registerVal10)
	CoD.ButtonList.AssociateHintTextListenerToButton(registerVal10)
	if arg0.buttonBackingAnimationState then
		registerVal10:addBackground(arg0.buttonBackingAnimationState)
	end
	return registerVal10
end

function CoD.ButtonList.AddProfileLeftRightSelector(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
	local registerVal8 = {}
	registerVal8.leftAnchor = true
	registerVal8.rightAnchor = true
	registerVal8.left = 0.000000
	registerVal8.right = 0.000000
	registerVal8.topAnchor = true
	registerVal8.bottomAnchor = false
	registerVal8.top = 0.000000
	registerVal8.bottom = CoD.CoD9Button.Height
	local registerVal9 = CoD.ProfileLeftRightSelector.new(arg1, arg2, arg3, arg5, registerVal8, arg7)
	registerVal9.hintText = arg4
	registerVal9:setPriority(arg6)
	arg0:addElement(registerVal9)
	CoD.ButtonList.AssociateHintTextListenerToButton(registerVal9)
	if arg0.buttonBackingAnimationState then
		registerVal9:addBackground(arg0.buttonBackingAnimationState)
	end
	return registerVal9
end

function CoD.ButtonList.AddProfileLeftRightSlider(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
	local registerVal10 = {}
	registerVal10.leftAnchor = true
	registerVal10.rightAnchor = true
	registerVal10.left = 0.000000
	registerVal10.right = 0.000000
	registerVal10.topAnchor = true
	registerVal10.bottomAnchor = false
	registerVal10.top = 0.000000
	registerVal10.bottom = CoD.CoD9Button.Height
	local registerVal11 = CoD.ProfileLeftRightSlider.new(arg1, arg2, arg3, arg4, arg5, arg7, registerVal10, arg9)
	registerVal11.hintText = arg6
	registerVal11:setPriority(arg8)
	arg0:addElement(registerVal11)
	CoD.ButtonList.AssociateHintTextListenerToButton(registerVal11)
	if arg0.buttonBackingAnimationState then
		registerVal11:addBackground(arg0.buttonBackingAnimationState)
	end
	return registerVal11
end

function CoD.ButtonList.AddProfileDiscreteLeftRightSlider(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)
	local registerVal12 = {}
	registerVal12.leftAnchor = true
	registerVal12.rightAnchor = true
	registerVal12.left = 0.000000
	registerVal12.right = 0.000000
	registerVal12.topAnchor = true
	registerVal12.bottomAnchor = false
	registerVal12.top = 0.000000
	registerVal12.bottom = CoD.CoD9Button.Height
	local registerVal13 = CoD.ProfileDiscreteLeftRightSlider.new(arg1, arg2, arg3, arg4, arg5, arg7, arg8, arg9, arg10, registerVal12)
	registerVal13.hintText = arg6
	registerVal13:setPriority(arg11)
	arg0:addElement(registerVal13)
	CoD.ButtonList.AssociateHintTextListenerToButton(registerVal13)
	if arg0.buttonBackingAnimationState then
		registerVal13:addBackground(arg0.buttonBackingAnimationState)
	end
	return registerVal13
end

function CoD.ButtonList.AddDvarLeftRightSelector(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
	local registerVal7 = {}
	registerVal7.leftAnchor = true
	registerVal7.rightAnchor = true
	registerVal7.left = 0.000000
	registerVal7.right = 0.000000
	registerVal7.topAnchor = true
	registerVal7.bottomAnchor = false
	registerVal7.top = 0.000000
	registerVal7.bottom = CoD.CoD9Button.Height
	local registerVal8 = CoD.DvarLeftRightSelector.new(arg1, arg2, arg3, arg5, registerVal7)
	registerVal8.hintText = arg4
	registerVal8:setPriority(arg6)
	arg0:addElement(registerVal8)
	CoD.ButtonList.AssociateHintTextListenerToButton(registerVal8)
	if arg0.buttonBackingAnimationState then
		registerVal8:addBackground(arg0.buttonBackingAnimationState)
	end
	return registerVal8
end

function CoD.ButtonList.AddDvarLeftRightSlider(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
	local registerVal9 = {}
	registerVal9.leftAnchor = true
	registerVal9.rightAnchor = true
	registerVal9.left = 0.000000
	registerVal9.right = 0.000000
	registerVal9.topAnchor = true
	registerVal9.bottomAnchor = false
	registerVal9.top = 0.000000
	registerVal9.bottom = CoD.CoD9Button.Height
	local registerVal10 = CoD.DvarLeftRightSlider.new(arg1, arg2, arg3, arg4, arg5, arg7, registerVal9)
	registerVal10.hintText = arg6
	registerVal10:setPriority(arg8)
	arg0:addElement(registerVal10)
	CoD.ButtonList.AssociateHintTextListenerToButton(registerVal10)
	if arg0.buttonBackingAnimationState then
		registerVal10:addBackground(arg0.buttonBackingAnimationState)
	end
	return registerVal10
end

function CoD.ButtonList.AddGametypeSettingLeftRightSelector(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
	local registerVal8 = {}
	registerVal8.leftAnchor = true
	registerVal8.rightAnchor = true
	registerVal8.left = 0.000000
	registerVal8.right = 0.000000
	registerVal8.topAnchor = true
	registerVal8.bottomAnchor = false
	registerVal8.top = 0.000000
	registerVal8.bottom = CoD.CoD9Button.Height
	local registerVal9 = CoD.GametypeSettingLeftRightSelector.new(arg2, arg3, arg4, arg6, registerVal8)
	registerVal9.hintText = arg5
	registerVal9:setPriority(arg7)
	arg0:addElement(registerVal9)
	arg0[registerVal9.id] = registerVal9
	CoD.ButtonList.AssociateHintTextListenerToButton(registerVal9)
	local function __FUNC_31D4_(arg0, arg1, arg2, arg3)
		local registerVal6 = {}
		registerVal6.button = "right"
		registerVal6.down = true
		arg0:handleGamepadButton(registerVal6)
	end

	local function __FUNC_3260_(arg0, arg1, arg2)
		return false
	end

	arg1:AddButtonCallbackFunction(arg0, arg2, Enum.LUIButton.LUI_KEY_RIGHT, nil, __FUNC_31D4_, __FUNC_3260_, false)
	local function __FUNC_3294_(arg0, arg1, arg2, arg3)
		local registerVal6 = {}
		registerVal6.button = "left"
		registerVal6.down = true
		arg0:handleGamepadButton(registerVal6)
	end

	local function __FUNC_331F_(arg0, arg1, arg2)
		return false
	end

	arg1:AddButtonCallbackFunction(arg0, arg2, Enum.LUIButton.LUI_KEY_LEFT, nil, __FUNC_3294_, __FUNC_331F_, false)
	if arg0.buttonBackingAnimationState then
		registerVal9:addBackground(arg0.buttonBackingAnimationState)
	end
	return registerVal9
end

function CoD.ButtonList.AddKeyBindSelector(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
	local registerVal8 = {}
	registerVal8.leftAnchor = true
	registerVal8.rightAnchor = true
	registerVal8.left = 0.000000
	registerVal8.right = 0.000000
	registerVal8.topAnchor = true
	registerVal8.bottomAnchor = false
	registerVal8.top = 0.000000
	registerVal8.bottom = CoD.CoD9Button.Height
	local registerVal9 = CoD.KeyBindSelector.new(arg1, arg2, arg3, arg4, arg6, registerVal8)
	registerVal9.hintText = arg5
	registerVal9:setPriority(arg7)
	arg0:addElement(registerVal9)
	CoD.ButtonList.AssociateHintTextListenerToButton(registerVal9)
	if arg0.buttonBackingAnimationState then
		registerVal9:addBackground(arg0.buttonBackingAnimationState)
	end
	return registerVal9
end

function CoD.ButtonList.RemoveAllButtons(arg0)
	arg0:removeAllChildren()
	arg0:addElement(arg0.upRepeater)
	arg0:addElement(arg0.downRepeater)
	arg0:addElement(arg0.hintText)
end

function CoD.ButtonList.CancelRepetition(arg0)
	if arg0.upRepeater ~= nil then
		arg0.upRepeater:cancelRepetition()
	end
	if arg0.downRepeater ~= nil then
		arg0.downRepeater:cancelRepetition()
	end
end

function CoD.ButtonList.LoseFocus(arg0, arg1)
	arg0:cancelRepetition()
	LUI.UIElement.loseFocus(arg0, arg1)
end

function CoD.ButtonList.SetButtonBackingAnimationState(arg0, arg1)
	arg0.buttonBackingAnimationState = arg1
end

function CoD.ButtonList.RecordCurrFocusedElemID(arg0, arg1)
	arg0.lastFocusedElemEvent = arg1
	if not arg1.idStack then
		error(("LUI Error: " .. arg1.name .. " processed without event.idStack "))
	end
	table.insert(arg1.idStack, 1.000000, arg0.id)
	return arg0:dispatchEventToParent(arg1)
end

function CoD.ButtonList.new(arg0, arg1, arg2, arg3)
	if arg1 == nil then
	end
	local registerVal4 = LUI.UIVerticalList.new(arg0)
	registerVal4:setSpacing(CoD.ButtonList.ButtonSpacing)
	registerVal4.id = "ButtonList"
	registerVal4:makeFocusable()
	local registerVal7 = {}
	registerVal7.name = "gamepad_button"
	registerVal7.button = "up"
	registerVal7.down = true
	local registerVal5 = LUI.UIButtonRepeater.new("up", registerVal7)
	registerVal4.upRepeater = registerVal5
	registerVal7 = {}
	registerVal7.name = "gamepad_button"
	registerVal7.button = "down"
	registerVal7.down = true
	registerVal5 = LUI.UIButtonRepeater.new("down", registerVal7)
	registerVal4.downRepeater = registerVal5
	registerVal4:addElement(registerVal4.upRepeater)
	registerVal4:addElement(registerVal4.downRepeater)
	if arg3 == nil then
		registerVal5 = {}
		registerVal5.leftAnchor = true
		registerVal5.rightAnchor = true
		registerVal5.left = 0.000000
		registerVal5.right = 0.000000
		registerVal5.topAnchor = true
		registerVal5.bottomAnchor = false
		registerVal5.top = 0.000000
		registerVal5.bottom = CoD.HintText.Height
		local registerVal6 = CoD.HintText.new(registerVal5)
		registerVal4.hintText = registerVal6
		registerVal4:addElement(registerVal4.hintText)
	else
		registerVal4.hintText = arg3
	end
	if CoD.isMultiplayer == true then
		registerVal4.hintText.hintArrow:setRGB(0.427451, 0.486275, 0.525490)
		registerVal4.hintText.hintArrow:setAlpha(1.000000)
		registerVal4.hintText.hint:setRGB(0.427451, 0.486275, 0.525490)
		registerVal4.hintText.hint:setAlpha(1.000000)
	end
	registerVal4.hintText:setPriority(200.000000)
	registerVal4.centerButtons = arg2
	registerVal4.addButton = CoD.ButtonList.AddButton
	registerVal4.addCustomButton = CoD.ButtonList.AddCustomButton
	registerVal4.addNavButton = CoD.ButtonList.AddNavButton
	registerVal4.addText = CoD.ButtonList.AddText
	registerVal4.addLeftRightSelector = CoD.ButtonList.AddLeftRightSelector
	registerVal4.addLeftRightSlider = CoD.ButtonList.AddLeftRightSlider
	registerVal4.addDiscreteLeftRightSlider = CoD.ButtonList.AddDiscreteLeftRightSlider
	registerVal4.addProfileLeftRightSelector = CoD.ButtonList.AddProfileLeftRightSelector
	registerVal4.addProfileLeftRightSlider = CoD.ButtonList.AddProfileLeftRightSlider
	registerVal4.addProfileDiscreteLeftRightSlider = CoD.ButtonList.AddProfileDiscreteLeftRightSlider
	registerVal4.addDvarLeftRightSelector = CoD.ButtonList.AddDvarLeftRightSelector
	registerVal4.addDvarLeftRightSlider = CoD.ButtonList.AddDvarLeftRightSlider
	registerVal4.addGametypeSettingLeftRightSelector = CoD.ButtonList.AddGametypeSettingLeftRightSelector
	registerVal4.addKeyBindSelector = CoD.ButtonList.AddKeyBindSelector
	registerVal4.removeAllButtons = CoD.ButtonList.RemoveAllButtons
	registerVal4.cancelRepetition = CoD.ButtonList.CancelRepetition
	registerVal4.setButtonBackingAnimationState = CoD.ButtonList.SetButtonBackingAnimationState
	registerVal4.updateHintText = CoD.ButtonList.UpdateHintText
	registerVal4:registerEventHandler("lose_focus", CoD.ButtonList.LoseFocus)
	registerVal4:registerEventHandler("update_hint_text", CoD.ButtonList.UpdateHintTextEvent)
	registerVal4:registerEventHandler("record_curr_focused_elem_id", CoD.ButtonList.RecordCurrFocusedElemID)
	return registerVal4
end

