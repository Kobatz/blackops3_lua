-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_199_(arg0)
	if arg0.x and arg0.y and arg0.width and arg0.height then
		arg0.Text:setLeftRight(true, false, arg0.x, (arg0.x + arg0.width))
		arg0.Text:setTopBottom(true, false, arg0.y, (arg0.y + arg0.height))
	end
end

local function __FUNC_30B_(arg0)
	if arg0.alpha then
		arg0.Text:setAlpha(arg0.alpha)
	end
end

local function __FUNC_397_(arg0)
	if arg0.text then
		arg0.Text:setText(arg0.text)
	end
end

local function __FUNC_421_(arg0)
	if arg0.alignment then
		arg0.Text:setAlignment(arg0.alignment)
	end
end

local function __FUNC_4B7_(arg0)
	if arg0.red and arg0.green and arg0.blue then
		arg0:setRGB(arg0.red, arg0.green, arg0.blue)
	end
end

local function __FUNC_582_(arg0)
	arg0.width = 100.000000
	arg0.height = 25.000000
	local registerVal3 = Engine.GetPrimaryController()
	local registerVal1 = arg0:getModel(registerVal3, "x")
	local registerVal4 = Engine.GetPrimaryController()
	local registerVal2 = arg0:getModel(registerVal4, "y")
	local registerVal5 = Engine.GetPrimaryController()
	registerVal3 = arg0:getModel(registerVal5, "width")
	local registerVal6 = Engine.GetPrimaryController()
	registerVal4 = arg0:getModel(registerVal6, "height")
	local registerVal7 = Engine.GetPrimaryController()
	registerVal5 = arg0:getModel(registerVal7, "alpha")
	local registerVal8 = Engine.GetPrimaryController()
	registerVal6 = arg0:getModel(registerVal8, "text")
	local registerVal9 = Engine.GetPrimaryController()
	registerVal7 = arg0:getModel(registerVal9, "alignment")
	local registerVal10 = Engine.GetPrimaryController()
	registerVal8 = arg0:getModel(registerVal10, "fadeOverTime")
	local registerVal11 = Engine.GetPrimaryController()
	registerVal9 = arg0:getModel(registerVal11, "red")
	local registerVal12 = Engine.GetPrimaryController()
	registerVal10 = arg0:getModel(registerVal12, "green")
	local registerVal13 = Engine.GetPrimaryController()
	registerVal11 = arg0:getModel(registerVal13, "blue")
	arg0.red = 1.000000
	arg0.green = 1.000000
	arg0.blue = 1.000000
	if registerVal1 then
		local function __FUNC_98A_(arg1)
			local registerVal1 = Engine.GetModelValue(arg1)
			if registerVal1 then
				arg0.x = registerVal1
				__FUNC_199_(arg0)
			end
		end

		arg0:subscribeToModel(registerVal1, __FUNC_98A_)
	end
	if registerVal2 then
		local function __FUNC_A1A_(arg1)
			local registerVal1 = Engine.GetModelValue(arg1)
			if registerVal1 then
				arg0.y = registerVal1
				__FUNC_199_(arg0)
			end
		end

		arg0:subscribeToModel(registerVal2, __FUNC_A1A_)
	end
	if registerVal3 then
		local function __FUNC_AAA_(arg1)
			local registerVal1 = Engine.GetModelValue(arg1)
			if registerVal1 then
				arg0.width = registerVal1
				__FUNC_199_(arg0)
			end
		end

		arg0:subscribeToModel(registerVal3, __FUNC_AAA_)
	end
	if registerVal4 then
		local function __FUNC_B3E_(arg1)
			local registerVal1 = Engine.GetModelValue(arg1)
			if registerVal1 then
				arg0.height = registerVal1
				__FUNC_199_(arg0)
			end
		end

		arg0:subscribeToModel(registerVal4, __FUNC_B3E_)
	end
	if registerVal5 then
		local function __FUNC_BD3_(arg1)
			local registerVal1 = Engine.GetModelValue(arg1)
			if registerVal1 then
				arg0.alpha = registerVal1
				__FUNC_30B_(arg0)
			end
		end

		arg0:subscribeToModel(registerVal5, __FUNC_BD3_)
	end
	if registerVal6 then
		local function __FUNC_C66_(arg1)
			local registerVal1 = Engine.GetModelValue(arg1)
			if registerVal1 then
				arg0.text = registerVal1
				__FUNC_397_(arg0)
			end
		end

		arg0:subscribeToModel(registerVal6, __FUNC_C66_)
	end
	if registerVal7 then
		local function __FUNC_CF9_(arg1)
			local registerVal1 = Engine.GetModelValue(arg1)
			if registerVal1 then
				arg0.alignment = registerVal1
				__FUNC_421_(arg0)
			end
		end

		arg0:subscribeToModel(registerVal7, __FUNC_CF9_)
	end
	if registerVal8 then
		local function __FUNC_D92_(arg1)
			local registerVal1 = Engine.GetModelValue(arg1)
			local registerVal2 = tonumber(registerVal1)
			if registerVal1 and registerVal2 then
				arg0.Text:setAlpha(0.000000)
				arg0.Text:beginAnimation("fadeOverTime", registerVal1)
				arg0.Text:setAlpha(1.000000)
			end
		end

		arg0:subscribeToModel(registerVal8, __FUNC_D92_)
	end
	if registerVal9 then
		local function __FUNC_ED9_(arg1)
			local registerVal1 = Engine.GetModelValue(arg1)
			if registerVal1 then
				arg0.red = registerVal1
				__FUNC_4B7_(arg0)
			end
		end

		arg0:subscribeToModel(registerVal9, __FUNC_ED9_)
	end
	if registerVal10 then
		local function __FUNC_F6C_(arg1)
			local registerVal1 = Engine.GetModelValue(arg1)
			if registerVal1 then
				arg0.green = registerVal1
				__FUNC_4B7_(arg0)
			end
		end

		arg0:subscribeToModel(registerVal10, __FUNC_F6C_)
	end
	if registerVal11 then
		local function __FUNC_1002_(arg1)
			local registerVal1 = Engine.GetModelValue(arg1)
			if registerVal1 then
				arg0.blue = registerVal1
				__FUNC_4B7_(arg0)
			end
		end

		arg0:subscribeToModel(registerVal11, __FUNC_1002_)
	end
end

local function __FUNC_1095_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("HudElementText")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "HudElementText.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 294.140000, 794.140000)
	registerVal3:setTopBottom(true, false, 96.000000, 121.000000)
	registerVal3:setText(Engine.Localize(""))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal3)
	registerVal1.Text = registerVal3
	local registerVal6 = {}
	registerVal6.name = "menu_loaded"
	registerVal6.controller = arg0
	registerVal1:processEvent(registerVal6)
	registerVal6 = {}
	registerVal6.name = "update_state"
	registerVal6.menu = registerVal1
	registerVal1:processEvent(registerVal6)
	local function __FUNC_1609_(arg1)
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "HudElementText.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1609_)
	if __FUNC_582_ then
		__FUNC_582_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.HudElementText = __FUNC_1095_
