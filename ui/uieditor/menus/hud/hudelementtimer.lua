-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_18A_(arg0)
	arg0.Timer:setupEndTimer(arg0.time)
end

local function __FUNC_208_(arg0)
	if arg0.x and arg0.y and arg0.height then
		arg0.Timer:setLeftRight(true, false, arg0.x, (arg0.x + 100.000000))
		arg0.Timer:setTopBottom(true, false, arg0.y, (arg0.y + arg0.height))
	end
end

local function __FUNC_352_(arg0)
	if arg0.red and arg0.green and arg0.blue then
		arg0:setRGB(arg0.red, arg0.green, arg0.blue)
	end
end

local function __FUNC_41E_(arg0)
	local registerVal3 = Engine.GetPrimaryController()
	local registerVal1 = arg0:getModel(registerVal3, "x")
	local registerVal4 = Engine.GetPrimaryController()
	local registerVal2 = arg0:getModel(registerVal4, "y")
	local registerVal5 = Engine.GetPrimaryController()
	registerVal3 = arg0:getModel(registerVal5, "height")
	local registerVal6 = Engine.GetPrimaryController()
	registerVal4 = arg0:getModel(registerVal6, "time")
	local registerVal7 = Engine.GetPrimaryController()
	registerVal5 = arg0:getModel(registerVal7, "red")
	local registerVal8 = Engine.GetPrimaryController()
	registerVal6 = arg0:getModel(registerVal8, "green")
	local registerVal9 = Engine.GetPrimaryController()
	registerVal7 = arg0:getModel(registerVal9, "blue")
	arg0.red = 1.000000
	arg0.green = 1.000000
	arg0.blue = 1.000000
	if registerVal1 then
		local function __FUNC_6D1_(arg1)
			local registerVal1 = Engine.GetModelValue(arg1)
			if registerVal1 then
				arg0.x = registerVal1
				__FUNC_208_(arg0)
			end
		end

		arg0:subscribeToModel(registerVal1, __FUNC_6D1_)
	end
	if registerVal2 then
		local function __FUNC_762_(arg1)
			local registerVal1 = Engine.GetModelValue(arg1)
			if registerVal1 then
				arg0.y = registerVal1
				__FUNC_208_(arg0)
			end
		end

		arg0:subscribeToModel(registerVal2, __FUNC_762_)
	end
	if registerVal3 then
		local function __FUNC_7F2_(arg1)
			local registerVal1 = Engine.GetModelValue(arg1)
			if registerVal1 then
				arg0.height = registerVal1
				__FUNC_208_(arg0)
			end
		end

		arg0:subscribeToModel(registerVal3, __FUNC_7F2_)
	end
	if registerVal4 then
		local function __FUNC_887_(arg1)
			local registerVal1 = Engine.GetModelValue(arg1)
			if registerVal1 then
				arg0.time = registerVal1
				__FUNC_18A_(arg0)
			end
		end

		arg0:subscribeToModel(registerVal4, __FUNC_887_)
	end
	if registerVal5 then
		local function __FUNC_919_(arg1)
			local registerVal1 = Engine.GetModelValue(arg1)
			if registerVal1 then
				arg0.red = registerVal1
				__FUNC_352_(arg0)
			end
		end

		arg0:subscribeToModel(registerVal5, __FUNC_919_)
	end
	if registerVal6 then
		local function __FUNC_9AC_(arg1)
			local registerVal1 = Engine.GetModelValue(arg1)
			if registerVal1 then
				arg0.green = registerVal1
				__FUNC_352_(arg0)
			end
		end

		arg0:subscribeToModel(registerVal6, __FUNC_9AC_)
	end
	if registerVal7 then
		local function __FUNC_A42_(arg1)
			local registerVal1 = Engine.GetModelValue(arg1)
			if registerVal1 then
				arg0.blue = registerVal1
				__FUNC_352_(arg0)
			end
		end

		arg0:subscribeToModel(registerVal7, __FUNC_A42_)
	end
end

local function __FUNC_AD5_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("HudElementTimer")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "HudElementTimer.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 317.450000, 371.450000)
	registerVal3:setTopBottom(true, false, 324.110000, 349.110000)
	registerVal3:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal3)
	registerVal1.Timer = registerVal3
	local registerVal6 = {}
	registerVal6.name = "menu_loaded"
	registerVal6.controller = arg0
	registerVal1:processEvent(registerVal6)
	registerVal6 = {}
	registerVal6.name = "update_state"
	registerVal6.menu = registerVal1
	registerVal1:processEvent(registerVal6)
	local function __FUNC_F4B_(arg1)
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "HudElementTimer.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_F4B_)
	if __FUNC_41E_ then
		__FUNC_41E_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.HudElementTimer = __FUNC_AD5_
