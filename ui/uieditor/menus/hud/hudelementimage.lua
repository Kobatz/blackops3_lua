-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_19A_(arg0)
	if arg0.x and arg0.y and arg0.width and arg0.height then
		arg0.Image:setLeftRight(true, false, arg0.x, (arg0.x + arg0.width))
		arg0.Image:setTopBottom(true, false, arg0.y, (arg0.y + arg0.height))
	end
end

local function __FUNC_30C_(arg0)
	if arg0.alpha then
		arg0.Image:setAlpha(arg0.alpha)
	end
end

local function __FUNC_39C_(arg0)
	if arg0.imageMaterialName then
		arg0.Image:setImage(RegisterMaterial(arg0.imageMaterialName))
	end
end

local function __FUNC_45A_(arg0)
	if arg0.red and arg0.green and arg0.blue then
		arg0:setRGB(arg0.red, arg0.green, arg0.blue)
	end
end

local function __FUNC_526_(arg0)
	if arg0.zRot then
		arg0.Image:setZRot(arg0.zRot)
	end
end

local function __FUNC_5B2_(arg0)
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
	registerVal6 = arg0:getModel(registerVal8, "material")
	local registerVal9 = Engine.GetPrimaryController()
	registerVal7 = arg0:getModel(registerVal9, "fadeOverTime")
	local registerVal10 = Engine.GetPrimaryController()
	registerVal8 = arg0:getModel(registerVal10, "red")
	local registerVal11 = Engine.GetPrimaryController()
	registerVal9 = arg0:getModel(registerVal11, "green")
	local registerVal12 = Engine.GetPrimaryController()
	registerVal10 = arg0:getModel(registerVal12, "blue")
	local registerVal13 = Engine.GetPrimaryController()
	registerVal11 = arg0:getModel(registerVal13, "zRot")
	arg0.red = 1.000000
	arg0.green = 1.000000
	arg0.blue = 1.000000
	arg0:setPriority(-1.000000)
	if registerVal1 then
		local function __FUNC_9CD_(arg1)
			local registerVal1 = Engine.GetModelValue(arg1)
			if registerVal1 then
				arg0.x = registerVal1
				__FUNC_19A_(arg0)
			end
		end

		arg0:subscribeToModel(registerVal1, __FUNC_9CD_)
	end
	if registerVal2 then
		local function __FUNC_A5E_(arg1)
			local registerVal1 = Engine.GetModelValue(arg1)
			if registerVal1 then
				arg0.y = registerVal1
				__FUNC_19A_(arg0)
			end
		end

		arg0:subscribeToModel(registerVal2, __FUNC_A5E_)
	end
	if registerVal3 then
		local function __FUNC_AEE_(arg1)
			local registerVal1 = Engine.GetModelValue(arg1)
			if registerVal1 then
				arg0.width = registerVal1
				__FUNC_19A_(arg0)
			end
		end

		arg0:subscribeToModel(registerVal3, __FUNC_AEE_)
	end
	if registerVal4 then
		local function __FUNC_B82_(arg1)
			local registerVal1 = Engine.GetModelValue(arg1)
			if registerVal1 then
				arg0.height = registerVal1
				__FUNC_19A_(arg0)
			end
		end

		arg0:subscribeToModel(registerVal4, __FUNC_B82_)
	end
	if registerVal5 then
		local function __FUNC_C17_(arg1)
			local registerVal1 = Engine.GetModelValue(arg1)
			if registerVal1 then
				arg0.alpha = registerVal1
				__FUNC_30C_(arg0)
			end
		end

		arg0:subscribeToModel(registerVal5, __FUNC_C17_)
	end
	if registerVal6 then
		local function __FUNC_CAA_(arg1)
			local registerVal1 = Engine.GetModelValue(arg1)
			if registerVal1 then
				arg0.imageMaterialName = registerVal1
				__FUNC_39C_(arg0)
			end
		end

		arg0:subscribeToModel(registerVal6, __FUNC_CAA_)
	end
	if registerVal7 then
		local function __FUNC_D4A_(arg1)
			local registerVal1 = Engine.GetModelValue(arg1)
			local registerVal2 = tonumber(registerVal1)
			if registerVal1 and registerVal2 then
				arg0.Image:setAlpha(0.000000)
				arg0.Image:beginAnimation("fadeOverTime", registerVal1)
				arg0.Image:setAlpha(1.000000)
			end
		end

		arg0:subscribeToModel(registerVal7, __FUNC_D4A_)
	end
	if registerVal8 then
		local function __FUNC_E92_(arg1)
			local registerVal1 = Engine.GetModelValue(arg1)
			if registerVal1 then
				arg0.red = registerVal1
				__FUNC_45A_(arg0)
			end
		end

		arg0:subscribeToModel(registerVal8, __FUNC_E92_)
	end
	if registerVal9 then
		local function __FUNC_F24_(arg1)
			local registerVal1 = Engine.GetModelValue(arg1)
			if registerVal1 then
				arg0.green = registerVal1
				__FUNC_45A_(arg0)
			end
		end

		arg0:subscribeToModel(registerVal9, __FUNC_F24_)
	end
	if registerVal10 then
		local function __FUNC_FBA_(arg1)
			local registerVal1 = Engine.GetModelValue(arg1)
			if registerVal1 then
				arg0.blue = registerVal1
				__FUNC_45A_(arg0)
			end
		end

		arg0:subscribeToModel(registerVal10, __FUNC_FBA_)
	end
	if registerVal11 then
		local function __FUNC_104D_(arg1)
			local registerVal1 = Engine.GetModelValue(arg1)
			if registerVal1 then
				arg0.zRot = registerVal1
				__FUNC_526_(arg0)
			end
		end

		arg0:subscribeToModel(registerVal11, __FUNC_104D_)
	end
end

local function __FUNC_10E1_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("HudElementImage")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "HudElementImage.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 576.000000, 704.000000)
	registerVal3:setTopBottom(true, false, 54.000000, 182.000000)
	registerVal3:setAlpha(0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.Image = registerVal3
	local registerVal6 = {}
	registerVal6.name = "menu_loaded"
	registerVal6.controller = arg0
	registerVal1:processEvent(registerVal6)
	registerVal6 = {}
	registerVal6.name = "update_state"
	registerVal6.menu = registerVal1
	registerVal1:processEvent(registerVal6)
	local function __FUNC_153A_(arg1)
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "HudElementImage.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_153A_)
	if __FUNC_5B2_ then
		__FUNC_5B2_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.HudElementImage = __FUNC_10E1_
