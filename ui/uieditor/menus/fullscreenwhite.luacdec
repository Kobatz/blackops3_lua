-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_172_(arg0)
	local registerVal3 = Engine.GetPrimaryController()
	local registerVal1 = arg0:getModel(registerVal3, "fadeOverTime")
	if registerVal1 then
		local function __FUNC_248_(arg1)
			local registerVal1 = Engine.GetModelValue(arg1)
			local registerVal4 = Engine.GetPrimaryController()
			local registerVal2 = arg0:getModel(registerVal4, "startAlpha")
			local registerVal5 = Engine.GetPrimaryController()
			local registerVal3 = arg0:getModel(registerVal5, "endAlpha")
			if registerVal2 then
				local registerVal6 = Engine.GetModelValue(registerVal2)
			end
			if registerVal3 then
				registerVal6 = Engine.GetModelValue(registerVal3)
			end
			if registerVal1 then
				if registerVal6 == 0.000000 then
					CoD.Menu.RemoveFromCurrMenuNameList(arg0.menuName)
				else
					CoD.Menu.AddToCurrMenuNameList(arg0.menuName)
				end
				if 0.000000 <= registerVal6 then
					arg0.Fullscreen:setAlpha(registerVal6)
				end
				arg0.Fullscreen:beginAnimation("fadeOverTime", registerVal1)
				arg0.Fullscreen:setAlpha(registerVal6)
			end
		end

		arg0:subscribeToModel(registerVal1, __FUNC_248_)
	end
end

local function __FUNC_53E_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("FullScreenWhite")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "none"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "FullScreenWhite.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3:setImage(RegisterImage("uie_default_white_255"))
	registerVal1:addElement(registerVal3)
	registerVal1.Fullscreen = registerVal3
	local registerVal6 = {}
	registerVal6.name = "menu_loaded"
	registerVal6.controller = arg0
	registerVal1:processEvent(registerVal6)
	registerVal6 = {}
	registerVal6.name = "update_state"
	registerVal6.menu = registerVal1
	registerVal1:processEvent(registerVal6)
	local function __FUNC_9CC_(arg1)
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "FullScreenWhite.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_9CC_)
	if __FUNC_172_ then
		__FUNC_172_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.FullScreenWhite = __FUNC_53E_
