-- Decompiled with CoDLUIDecompiler by JariK

CoD.CountdownTimer = {}
function CoD.CountdownTimer.Setup(arg0, arg1, arg2)
	if arg1 == nil then
	end
	arg0.secondHundrethsThreshold = 30000.000000
	arg0.setTimeLeft = CoD.CountdownTimer.SetTimeLeft
	arg0.showMinutes = arg2
	arg0.addTimedParentEvent = CoD.CountdownTimer.AddTimedParentEvent
	arg0:registerEventHandler("countdown_tick", CoD.CountdownTimer.CountdownTick)
end

function CoD.CountdownTimer.SetTimeLeft(arg0, arg1)
	arg0.countdownTimeLeft = arg1
	if arg1 <= 0.000000 then
		arg0:setText("")
		if arg0.timedEvents then
			for index2=1.000000, #arg0.timedEvents, 1.000000 do
				if not arg0.timedEvents[index2].triggered and arg1 < arg0.timedEvents[index2].time then
					arg0:dispatchEventToParent(arg0.timedEvents[index2])
					arg0.timedEvents[index2].triggered = true
				end
			end
		end
		arg0.timedEvents = nil
		if arg0.countdownTimer ~= nil then
			arg0.countdownTimer:close()
			arg0.countdownTimer = nil
			local registerVal4 = {}
			registerVal4.name = "hud_destroy_timer"
			arg0:dispatchEventToParent(registerVal4)
		end
		return 
	end
	if arg1 <= arg0.secondHundrethsThreshold then
		local registerVal3 = math.floor((arg1 / 1000.000000))
		registerVal4 = math.floor((arg1 / 100.000000))
		if (registerVal4 - (registerVal3 * 10.000000)) == 0.000000 then
		end
		arg0:setText((registerVal3 .. "." .. "0"))
	else
		registerVal3 = math.floor((arg1 / 60000.000000))
		registerVal4 = math.floor((arg1 / 1000.000000))
		if (registerVal4 - (registerVal3 * 60.000000)) < 10.000000 then
		end
		if arg0.showMinutes == false then
			arg0:setText((("0" .. (registerVal4 - (registerVal3 * 60.000000))) + (registerVal3 * 60.000000)))
		else
			arg0:setText((registerVal3 .. ":" .. ("0" .. (registerVal4 - (registerVal3 * 60.000000)))))
		end
	end
	if (arg1 % 1000.000000) == 0.000000 then
	end
	if arg0.countdownTimerTickDuration ~= 1.000000 then
		arg0.countdownTimerTickDuration = 1.000000
		if arg0.countdownTimer == nil then
			registerVal4 = LUI.UITimer.new(1.000000, "countdown_tick")
			arg0:addElement(registerVal4)
			arg0.countdownTimer = registerVal4
		else
			registerVal4.interval = 1.000000
		end
	end
	if arg0.countdownLow == nil and arg1 <= 30000.000000 then
		arg0.countdownLow = true
		local registerVal5 = {}
		registerVal5.name = "countdown_low"
		registerVal5.low = true
		arg0:processEvent(registerVal5)
	else
		if arg0.countdownLow == true and 30000.000000 < arg1 then
			arg0.countdownLow = nil
			registerVal5 = {}
			registerVal5.name = "countdown_nolongerlow"
			arg0:processEvent(registerVal5)
		end
	end
	if arg0.timedEvents then
		for index3=1.000000, #arg0.timedEvents, 1.000000 do
			if not arg0.timedEvents[index3].triggered and arg1 < arg0.timedEvents[index3].time then
				arg0:dispatchEventToParent(arg0.timedEvents[index3])
				arg0.timedEvents[index3].triggered = true
			end
		end
	end
end

function CoD.CountdownTimer.CountdownTick(arg0, arg1)
	arg0:setTimeLeft((arg0.countdownTimeLeft - arg1.timeElapsed))
end

function CoD.CountdownTimer.AddTimedParentEvent(arg0, arg1, arg2)
	if arg0.timedEvents == nil then
		arg0.timedEvents = {}
	end
	local registerVal4, registerVal5, registerVal6 = ipairs(arg0.timedEvents)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		if arg1 == value8.time and arg2 == value8.name then
		else
		end
	end
	if not true then
		registerVal6 = {}
		registerVal6.name = arg2
		registerVal6.time = arg1
		table.insert(arg0.timedEvents, registerVal6)
	end
end

