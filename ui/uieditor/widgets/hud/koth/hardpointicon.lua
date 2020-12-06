-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1BE_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	local registerVal2 = Engine.CreateModel(registerVal3, "Hardpoint")
	local registerVal4 = Engine.CreateModel(registerVal2, "state")
	Engine.SetModelValue(registerVal4, "neutral")
	registerVal4 = Engine.CreateModel(registerVal2, "team")
	Engine.SetModelValue(registerVal4, Enum.team_t.TEAM_NEUTRAL)
	registerVal4 = Engine.CreateModel(registerVal2, "objId")
	Engine.SetModelValue(registerVal4, 0.000000)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.HardpointIcon = registerVal2
local function __FUNC_3B0_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_1BE_ then
		__FUNC_1BE_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.HardpointIcon)
	registerVal2.id = "HardpointIcon"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 32.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -13.500000, 14.000000)
	registerVal3:setTopBottom(true, true, -12.750000, 11.750000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_waypoints_new_framefill"))
	registerVal2:addElement(registerVal3)
	registerVal2.ProgressMeterFrame = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, -3.500000, 3.500000)
	registerVal4:setTopBottom(true, true, -3.750000, 2.250000)
	registerVal4:setRGB(1.000000, 0.400000, 0.000000)
	registerVal4:setAlpha(0.900000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_interact_meter_diamond"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_clock_normal"))
	registerVal4:setShaderVector(0.000000, 1.030000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.progressMeter = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.960000, -0.880000)
	registerVal5:setTopBottom(true, true, 0.750000, -2.250000)
	registerVal5:setImage(RegisterImage("uie_t7_hud_waypoints_neutral_koth"))
	registerVal2:addElement(registerVal5)
	registerVal2.HardpointNeutral = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 0.960000, -0.880000)
	registerVal6:setTopBottom(true, true, 0.750000, -2.250000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_hud_waypoints_neutral_koth"))
	local function __FUNC_F4C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setRGB(registerVal1)
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "HUDItems", "colorBlindSensitiveFriendlyColor", __FUNC_F4C_)
	registerVal2:addElement(registerVal6)
	registerVal2.HardpointFriendly = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 0.960000, -0.880000)
	registerVal7:setTopBottom(true, true, 0.750000, -2.250000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_hud_waypoints_neutral_koth"))
	local function __FUNC_FDF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setRGB(registerVal1)
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "HUDItems", "colorBlindSensitiveEnemyColor", __FUNC_FDF_)
	registerVal2:addElement(registerVal7)
	registerVal2.HardpointEnemy = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_106F_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal9.DefaultClip = __FUNC_106F_
	local function __FUNC_10CE_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal9.hud_start = __FUNC_10CE_
	local function __FUNC_112E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal9.hud_stop = __FUNC_112E_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_118E_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.ProgressMeterFrame:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.progressMeter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.HardpointNeutral:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.HardpointFriendly:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.HardpointEnemy:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_118E_
	local function __FUNC_140F_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal9.hud_start = __FUNC_140F_
	local function __FUNC_146E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal9.hud_stop = __FUNC_146E_
	registerVal8.Neutral = registerVal9
	registerVal9 = {}
	local function __FUNC_14CE_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.ProgressMeterFrame:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.progressMeter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.HardpointNeutral:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.HardpointFriendly:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.HardpointEnemy:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_14CE_
	registerVal8.FriendlyControlled = registerVal9
	registerVal9 = {}
	local function __FUNC_174F_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.ProgressMeterFrame:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.progressMeter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.HardpointNeutral:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.HardpointFriendly:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.HardpointEnemy:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_174F_
	registerVal8.EnemyControlled = registerVal9
	registerVal9 = {}
	local function __FUNC_19CF_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.ProgressMeterFrame:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.progressMeter:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.HardpointNeutral:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.HardpointFriendly:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.HardpointEnemy:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_19CF_
	registerVal8.Contested = registerVal9
	registerVal9 = {}
	local function __FUNC_1C54_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.ProgressMeterFrame:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.progressMeter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.HardpointNeutral:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.HardpointFriendly:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.HardpointEnemy:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_1C54_
	registerVal8.TeamControlled = registerVal9
	registerVal2.clipsPerState = registerVal8
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Neutral"
	local function __FUNC_1ED7_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "Hardpoint.state", "neutral")
	end

	registerVal11.condition = __FUNC_1ED7_
	local registerVal12 = {}
	registerVal12.stateName = "FriendlyControlled"
	local function __FUNC_1F5F_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "Hardpoint.state", "friendly")
	end

	registerVal12.condition = __FUNC_1F5F_
	local registerVal13 = {}
	registerVal13.stateName = "EnemyControlled"
	local function __FUNC_1FE8_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "Hardpoint.state", "enemy")
	end

	registerVal13.condition = __FUNC_1FE8_
	local registerVal14 = {}
	registerVal14.stateName = "Contested"
	local function __FUNC_2071_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "Hardpoint.state", "contested")
	end

	registerVal14.condition = __FUNC_2071_
	local registerVal15 = {}
	registerVal15.stateName = "TeamControlled"
	local function __FUNC_20FD_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "Hardpoint.state", "anyteam")
	end

	registerVal15.condition = __FUNC_20FD_
	registerVal10 = {registerVal11, registerVal12, registerVal13, registerVal14, registerVal15}
	registerVal2:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "Hardpoint.state")
	local function __FUNC_2187_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "Hardpoint.state"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_2187_)
	local function __FUNC_22A9_(arg0)
		arg0.HardpointFriendly:close()
		arg0.HardpointEnemy:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_22A9_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.HardpointIcon.new = __FUNC_3B0_
