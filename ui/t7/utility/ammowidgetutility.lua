-- Decompiled with CoDLUIDecompiler by JariK

CoD.AmmoWidgetUtility = {}
function CoD.AmmoWidgetUtility.InitTacticalEmptyPulse(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = Engine.GetModelForController(arg2)
	arg1.previousPulseValue = 0.000000
	local registerVal8 = Engine.GetModel(registerVal5, "hudItems.pulseNoTactical")
	local function __FUNC_2DE_(arg5)
		local registerVal1 = Engine.GetModelValue(arg5)
		if arg1.previousPulseValue == registerVal1 then
			return 
		end
		arg1.previousPulseValue = registerVal1
		local registerVal2 = PulseNoTactical(arg2)
		if not registerVal2 then
			return 
		end
		registerVal2 = Engine.GetModelValue(Engine.GetModel(registerVal5, "currentSecondaryOffhand.secondaryOffhand"))
		if registerVal2 == nil then
			return 
		end
		registerVal2 = arg3.new(arg4, arg2)
		registerVal2:setLeftRight(arg1:getLocalLeftRight())
		registerVal2:setTopBottom(arg1:getLocalTopBottom())
		local function __FUNC_5F5_(arg0)
			local registerVal1 = Engine.GetModelValue(arg0)
			if registerVal1 then
				registerVal2.ImgIcon:setImage(RegisterImage(registerVal1))
				registerVal2.ImgIconGrow:setImage(RegisterImage(registerVal1))
			end
		end

		registerVal2:subscribeToGlobalModel(arg2, "CurrentSecondaryOffhand", "secondaryOffhand", __FUNC_5F5_)
		local function __FUNC_6FE_(arg0, arg1)
			arg0:close()
		end

		registerVal2:registerEventHandler("clip_over", __FUNC_6FE_)
		registerVal2:setState("Empty")
		arg0:addElement(registerVal2)
	end

	arg1:subscribeToModel(registerVal8, __FUNC_2DE_)
end

function CoD.AmmoWidgetUtility.InitLethalEmptyPulse(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = Engine.GetModelForController(arg2)
	arg1.previousPulseValue = 0.000000
	local registerVal8 = Engine.GetModel(registerVal5, "hudItems.pulseNoLethal")
	local function __FUNC_860_(arg5)
		local registerVal1 = Engine.GetModelValue(arg5)
		if arg1.previousPulseValue == registerVal1 then
			return 
		end
		arg1.previousPulseValue = registerVal1
		local registerVal2 = PulseNoLethal(arg2)
		if not registerVal2 then
			return 
		end
		registerVal2 = Engine.GetModelValue(Engine.GetModel(registerVal5, "currentPrimaryOffhand.primaryOffhand"))
		if registerVal2 == nil then
			return 
		end
		registerVal2 = arg3.new(arg4, arg2)
		registerVal2:setLeftRight(arg1:getLocalLeftRight())
		registerVal2:setTopBottom(arg1:getLocalTopBottom())
		local function __FUNC_B6F_(arg0)
			local registerVal1 = Engine.GetModelValue(arg0)
			if registerVal1 then
				registerVal2.ImgIcon:setImage(RegisterImage(registerVal1))
				registerVal2.ImgIconGrow:setImage(RegisterImage(registerVal1))
			end
		end

		registerVal2:subscribeToGlobalModel(arg2, "CurrentPrimaryOffhand", "primaryOffhand", __FUNC_B6F_)
		local function __FUNC_C76_(arg0, arg1)
			arg0:close()
		end

		registerVal2:registerEventHandler("clip_over", __FUNC_C76_)
		registerVal2:setState("Empty")
		arg0:addElement(registerVal2)
	end

	arg1:subscribeToModel(registerVal8, __FUNC_860_)
end

