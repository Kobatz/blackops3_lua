-- Decompiled with CoDLUIDecompiler by JariK

LUI.UITimer = {}
LUI.UITimer.priority = 10000.000000
function LUI.UITimer.create(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 1.000000
	registerVal3.bottom = 1.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = false
	registerVal3.bottomAnchor = false
	local registerVal2 = LUI.UIElement.new(registerVal3)
	registerVal2.id = "LUITimer"
	registerVal2:setPriority(LUI.UITimer.priority)
	registerVal2.reset = LUI.UITimer.Reset
	registerVal2.processNow = LUI.UITimer.ProcessNow
	registerVal3 = math.max(1.000000, arg0)
	registerVal2.interval = registerVal3
	registerVal2.disposable = arg1
	return registerVal2
end

function LUI.UITimer.new(arg0, arg1, arg2, arg3)
	local registerVal4 = LUI.UITimer.create(arg0, arg2)
	local registerVal5 = type(arg1)
	if registerVal5 == "string" then
		registerVal5 = {}
		registerVal5.name = arg1
		registerVal5.timer = registerVal4
		registerVal4.timerEvent = registerVal5
	else
		arg1.timer = registerVal4
		registerVal4.timerEvent = arg1
	end
	registerVal4.timerEventTarget = arg3
	registerVal4:reset()
	return registerVal4
end

function LUI.UITimer.newElementTimer(arg0, arg1, arg2, ...)
	local registerVal3 = LUI.UITimer.create(arg0, arg1)
	local registerVal4 = {}
	local registerVal5 = select("#", ...)
	registerVal4.n = registerVal5
	registerVal4 = {}
	local function __FUNC_74F_(arg0)
		local registerVal1 = LUI.ShallowCopy(registerVal4)
		table.insert(registerVal1, arg0)
		arg2(unpack(registerVal1))
	end

	registerVal3.timerEventFunction = __FUNC_74F_
	registerVal3:reset()
	return registerVal3
end

function LUI.UITimer.Reset(arg0)
	arg0:registerEventHandler("transition_complete_default", nil)
	arg0:animateToState("default", arg0.interval)
	arg0:registerEventHandler("transition_complete_default", LUI.UITimer.Tick)
end

function LUI.UITimer.Tick(arg0, arg1)
	if arg1.interrupted then
		return 
	end
	if arg0.timerEventTarget ~= nil then
	else
		local registerVal3 = arg0:getParent()
	end
	if not arg0.timerEvent then
	end
	{}.timeElapsed = (arg0.interval + arg1.lateness)
	if arg0.timerEventFunction then
		arg0.timerEventFunction({})
	else
		if {} then
			registerVal3:processEvent({})
		end
	end
	if arg0.disposable then
		arg0:close()
	else
		arg0:reset()
	end
end

function LUI.UITimer.ProcessNow(arg0)
	if arg0.timerEventTarget ~= nil then
	else
		local registerVal2 = arg0:getParent()
	end
	arg0.timerEvent.timeElapsed = arg0.interval
	registerVal2:processEvent(arg0.timerEvent)
	if arg0.disposable then
		arg0:close()
	else
		arg0:reset()
	end
end

