-- Decompiled with CoDLUIDecompiler by JariK

require("ui.LUI.LUITimer")
LUI.UIButtonRepeater = {}
LUI.UIButtonRepeater.FirstDelay = 420.000000
LUI.UIButtonRepeater.Delay = 210.000000
LUI.UIButtonRepeater.DelayReduction = 25.000000
LUI.UIButtonRepeater.AccelInterval = 100.000000
LUI.UIButtonRepeater.MinDelay = 33.000000
function LUI.UIButtonRepeater.new(arg0, arg1, arg2)
	local registerVal3 = LUI.UIElement.new()
	registerVal3.id = "LUIButtonRepeater"
	registerVal3:setPriority(-1000.000000)
	registerVal3.buttonName = arg0
	local registerVal4 = type(arg1)
	if registerVal4 == "string" then
		registerVal4 = {}
		registerVal4.name = arg1
		registerVal4.buttonRepeat = true
		registerVal3.event = registerVal4
	else
		arg1.buttonRepeat = true
		registerVal3.event = arg1
	end
	registerVal3.eventTarget = arg2
	registerVal3.firstDelay = LUI.UIButtonRepeater.FirstDelay
	registerVal3.delay = LUI.UIButtonRepeater.Delay
	registerVal3.delayReduction = LUI.UIButtonRepeater.DelayReduction
	registerVal3.accelInterval = LUI.UIButtonRepeater.AccelInterval
	registerVal3.minDelay = LUI.UIButtonRepeater.MinDelay
	registerVal3.handleGamepadButton = LUI.UIButtonRepeater.HandleGamepadButton
	registerVal3.cancelRepetition = LUI.UIButtonRepeater.CancelRepetition
	registerVal3.sendButtonRepeat = LUI.UIButtonRepeater.SendButtonRepeat
	registerVal3:registerEventHandler("repeat", LUI.UIButtonRepeater.Repeat)
	registerVal3:registerEventHandler("accelerate", LUI.UIButtonRepeater.Accelerate)
	registerVal3:registerEventHandler("menu_occluded", LUI.UIButtonRepeater.CancelRepetition)
	registerVal3:registerEventHandler("controller_backed_out", LUI.UIButtonRepeater.CancelRepetition)
	registerVal4 = LUI.startswith(arg0, "mouse")
	registerVal4 = LUI.startswith(arg0, "touchpad")
	if not arg1 or registerVal4 then
		registerVal3:setHandleMouseButton(true)
		registerVal3:registerEventHandler("leftmousedown", LUI.UIButtonRepeater.LeftMouseDown)
		registerVal3:registerEventHandler("leftmouseup", LUI.UIButtonRepeater.LeftMouseUp)
	end
	return registerVal3
end

function LUI.UIButtonRepeater.HandleGamepadButton(arg0, arg1)
	local registerVal2 = LUI.UIElement.handleGamepadButton(arg0, arg1)
	if registerVal2 then
		return true
	end
end

function LUI.UIButtonRepeater.LeftMouseDown(arg0, arg1)
	arg0:cancelRepetition()
	arg0.controller = arg1.controller
	local registerVal4 = {}
	registerVal4.name = "repeat"
	registerVal4.numRepeats = 1.000000
	local registerVal2 = LUI.UITimer.new(arg0.firstDelay, registerVal4)
	arg0:addElement(registerVal2)
	arg0.repeatTimer = registerVal2
	if not arg1.buttonRepeat and arg1.name ~= arg0.event.name then
		arg0:sendButtonRepeat()
	end
end

function LUI.UIButtonRepeater.LeftMouseUp(arg0, arg1)
	if not arg1.buttonRepeat then
		arg0:cancelRepetition()
	end
end

function LUI.UIButtonRepeater.CancelRepetition(arg0)
	if arg0.repeatTimer ~= nil then
		arg0.repeatTimer:close()
		arg0.repeatTimer = nil
	end
	if arg0.accelTimer ~= nil then
		arg0.accelTimer:close()
		arg0.accelTimer = nil
	end
	arg0.currentDelay = nil
end

function LUI.UIButtonRepeater.SendButtonRepeat(arg0)
	if arg0.eventTarget == nil then
		local registerVal2 = arg0:getParent()
	end
	arg0.event.controller = arg0.controller
	return registerVal2:processEvent(arg0.event)
end

function LUI.UIButtonRepeater.Repeat(arg0, arg1)
	if arg0.currentDelay == nil then
		arg0.repeatTimer.interval = arg0.delay
		if arg0.accelTimer == nil then
			local registerVal4 = LUI.UITimer.new(arg0.accelInterval, "accelerate")
			arg0:addElement(registerVal4)
			arg0.accelTimer = registerVal4
		else
			arg0.repeatTimer.interval = arg0.currentDelay
		end
	end
	registerVal4 = arg0:isInputDisabledOnChain()
	if registerVal4 then
		arg0:cancelRepetition()
	else
		arg0:sendButtonRepeat()
		arg1.numRepeats = (arg1.numRepeats + 1.000000)
	end
end

function LUI.UIButtonRepeater.Accelerate(arg0, arg1)
	if arg0.currentDelay == nil then
	else
		if (arg0.delay - arg0.delayReduction) < arg0.minDelay then
		end
	end
	arg0.currentDelay = arg0.minDelay
end

