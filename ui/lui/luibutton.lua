-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
LUI.UIButton = registerVal1
registerVal1 = {}
registerVal1.name = "gain_focus"
LUI.UIButton.GainFocusEvent = registerVal1
registerVal1 = {}
registerVal1.name = "lose_focus"
LUI.UIButton.LoseFocusEvent = registerVal1
function LUI.UIButton.gainFocus(arg0, arg1)
	local registerVal2 = LUI.UIButton.super.gainFocus(arg0, arg1)
	local registerVal5 = {}
	registerVal5.name = "button_over"
	registerVal5.controller = arg1.controller
	arg0:processEvent(registerVal5)
	if arg0.actionPromptString then
		registerVal5 = {}
		registerVal5.name = "set_action_prompt_string"
		registerVal5.promptString = arg0.actionPromptString
		arg0:dispatchEventToParent(registerVal5)
	end
	return registerVal2
end

function LUI.UIButton.loseFocus(arg0, arg1)
	LUI.UIButton.super.loseFocus(arg0, arg1)
	local registerVal4 = {}
	registerVal4.name = "button_up"
	registerVal4.controller = arg1.controller
	arg0:processEvent(registerVal4)
end

function LUI.UIButton.Up(arg0, arg1)
	if arg0.disabled and arg0.m_animationStates.disabled ~= nil then
		arg0:animateToState("disabled", arg0.disableDuration)
	else
		arg0:animateToState("default", arg0.upDuration, arg0.upEaseIn, arg0.upEaseOut)
	end
	arg0:dispatchEventToChildren(arg1)
	local registerVal2 = arg0:isInFocus()
	if registerVal2 then
		return arg0:processEvent(LUI.UIButton.GainFocusEvent)
	end
end

function LUI.UIButton.Over(arg0, arg1)
	if arg0.disabled and arg0.m_animationStates.button_over_disabled ~= nil then
		arg0:animateToState("button_over_disabled", arg0.disableDuration)
	else
		if arg0.m_animationStates.button_over ~= nil then
			arg0:animateToState("button_over", arg0.overDuration, arg0.overEaseIn, arg0.overEaseOut)
		end
	end
	arg0:dispatchEventToChildren(arg1)
end

function LUI.UIButton.ElementUp(arg0, arg1)
end

function LUI.UIButton.ElementDown(arg0, arg1)
	if arg0.m_animationStates.button_down ~= nil then
		arg0:animateToState("button_down", arg0.downDuration)
	else
		LUI.UIButton.ElementUp(arg0, arg1)
	end
	arg0:dispatchEventToChildren(arg1)
end

function LUI.UIButton.ElementOverDown(arg0, arg1)
	if arg0.m_animationStates.button_over_down ~= nil then
		arg0:animateToState("button_over_down", arg0.overDownDuration)
	else
	end
	arg0:dispatchEventToChildren(arg1)
end

function LUI.UIButton.ElementEnable(arg0, arg1)
	arg0.disabled = nil
	arg0:dispatchEventToChildren(arg1)
	local registerVal4 = {}
	registerVal4.name = "button_up"
	arg0:processEvent(registerVal4)
end

function LUI.UIButton.ElementDisable(arg0, arg1)
	arg0.disabled = true
	arg0:dispatchEventToChildren(arg1)
	local registerVal4 = {}
	registerVal4.name = "button_up"
	arg0:processEvent(registerVal4)
end

function LUI.UIButton.enable(arg0)
	local registerVal3 = {}
	registerVal3.name = "enable"
	arg0:processEvent(registerVal3)
	registerVal3 = {}
	registerVal3.name = "button_up"
	arg0:processEvent(registerVal3)
end

function LUI.UIButton.disable(arg0)
	local registerVal3 = {}
	registerVal3.name = "disable"
	arg0:processEvent(registerVal3)
	registerVal3 = {}
	registerVal3.name = "button_up"
	arg0:processEvent(registerVal3)
end

function LUI.UIButton.SetupElement(arg0)
	arg0:registerEventHandler("enable", LUI.UIButton.ElementEnable)
	arg0:registerEventHandler("disable", LUI.UIButton.ElementDisable)
	arg0:registerEventHandler("button_up", LUI.UIButton.Up)
	arg0:registerEventHandler("button_over", LUI.UIButton.Over)
	arg0:registerEventHandler("button_down", LUI.UIButton.ElementDown)
	arg0:registerEventHandler("button_over_down", LUI.UIButton.ElementOverDown)
end

function LUI.UIButton.buttonAction(arg0, arg1)
	local registerVal4 = {}
	registerVal4.name = arg0.actionEventName
	registerVal4.controller = arg1.controller
	registerVal4.button = arg0
	arg0:dispatchEventToParent(registerVal4)
	if arg0.actionEventName ~= nil and arg0.actionSFX ~= nil then
		Engine.PlaySound(arg0.actionSFX)
	end
end

function LUI.UIButton.setActionEventName(arg0, arg1)
	arg0.actionEventName = arg1
end

function LUI.UIButton.setActionEventNameNewStyle(arg0, arg1, arg2, arg3)
	local function __FUNC_178E_(arg1, arg2, arg4, arg5)
		local registerVal6 = {}
		registerVal6.name = arg3
		registerVal6.controller = arg4
		registerVal6.button = arg0
		arg0:dispatchEventToParent(registerVal6)
		if arg0.actionSFX ~= nil then
			Engine.PlaySound(arg0.actionSFX)
		end
		return true
	end

	CoD.Menu.AddButtonCallbackFunction(arg1, arg0, arg2, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_178E_)
	arg0.id = arg3
	local registerVal4 = arg0:getParent()
	registerVal4[arg3] = arg0
end

function LUI.UIButton.setActionPromptString(arg0, arg1)
	arg0.actionPromptString = arg1
end

function LUI.UIButton.setGainFocusSFX(arg0, arg1)
	arg0.gainFocusSFX = arg1
end

function LUI.UIButton.setActionSFX(arg0, arg1)
	arg0.actionSFX = arg1
end

function LUI.UIButton.clearGainFocusSFX(arg0)
	arg0.gainFocusSFX = nil
end

function LUI.UIButton.clearActionSFX(arg0)
	arg0.actionSFX = nil
end

function LUI.UIButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new(arg0)
	registerVal2:setClass(LUI.UIButton)
	registerVal2.id = "LUIButton"
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.actionEventName = arg1
	if CoD.isSinglePlayer then
		registerVal2.gainFocusSFX = "uin_slide_nav_up"
		registerVal2.actionSFX = "uin_main_enter"
	else
		registerVal2.gainFocusSFX = "cac_grid_nav"
		registerVal2.actionSFX = "uin_press_generic"
	end
	return registerVal2
end

LUI.UIButton:registerEventHandler("gain_focus", LUI.UIButton.gainFocus)
LUI.UIButton:registerEventHandler("lose_focus", LUI.UIButton.loseFocus)
LUI.UIButton:registerEventHandler("button_action", LUI.UIButton.buttonAction)
LUI.UIButton:SetupElement()
