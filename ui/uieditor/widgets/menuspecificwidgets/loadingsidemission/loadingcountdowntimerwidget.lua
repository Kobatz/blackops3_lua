-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1CC_(arg0)
	local function __FUNC_38B_(arg0, arg1, arg2)
		arg0.countdownTimer:setText(arg2.text)
	end

	local registerVal4 = {}
	local registerVal5 = {}
	registerVal5.funct = __FUNC_38B_
	registerVal5.time = 1000.000000
	registerVal5.text = "10"
	local registerVal6 = {}
	registerVal6.funct = __FUNC_38B_
	registerVal6.time = 1000.000000
	registerVal6.text = "9"
	local registerVal7 = {}
	registerVal7.funct = __FUNC_38B_
	registerVal7.time = 1000.000000
	registerVal7.text = "8"
	local registerVal8 = {}
	registerVal8.funct = __FUNC_38B_
	registerVal8.time = 1000.000000
	registerVal8.text = "7"
	local registerVal9 = {}
	registerVal9.funct = __FUNC_38B_
	registerVal9.time = 1000.000000
	registerVal9.text = "6"
	local registerVal10 = {}
	registerVal10.funct = __FUNC_38B_
	registerVal10.time = 1000.000000
	registerVal10.text = "5"
	local registerVal11 = {}
	registerVal11.funct = __FUNC_38B_
	registerVal11.time = 1000.000000
	registerVal11.text = "4"
	local registerVal12 = {}
	registerVal12.funct = __FUNC_38B_
	registerVal12.time = 1000.000000
	registerVal12.text = "3"
	local registerVal13 = {}
	registerVal13.funct = __FUNC_38B_
	registerVal13.time = 1000.000000
	registerVal13.text = "2"
	local registerVal14 = {}
	registerVal14.funct = __FUNC_38B_
	registerVal14.time = 1000.000000
	registerVal14.text = "1"
	local registerVal15 = {}
	registerVal15.funct = __FUNC_38B_
	registerVal15.time = 1000.000000
	registerVal15.text = "0"
	registerVal4 = {registerVal5, registerVal6, registerVal7, registerVal8, registerVal9, registerVal10, registerVal11, registerVal12, registerVal13, registerVal14, registerVal15}
	arg0:animationQueue(registerVal4, 0.000000, false)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.loadingCountdownTimerWidget = registerVal2
local function __FUNC_40B_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.loadingCountdownTimerWidget)
	registerVal2.id = "loadingCountdownTimerWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 100.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, -50.000000)
	registerVal3:setText(Engine.Localize("Mission Starting in:"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.header = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 50.000000, 0.000000)
	registerVal4:setText(Engine.Localize("10"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.countdownTimer = registerVal4
	if __FUNC_1CC_ then
		__FUNC_1CC_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.loadingCountdownTimerWidget.new = __FUNC_40B_
