-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Timer = registerVal1
function CoD.Timer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Timer)
	registerVal2.id = "Timer"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 119.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 49.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -124.000000, 128.000000)
	registerVal3:setTopBottom(false, false, -99.000000, 93.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.800000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_rocketlauncher_timer"))
	registerVal2:addElement(registerVal3)
	registerVal2.timerbgshadow = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -124.000000, 128.000000)
	registerVal4:setTopBottom(false, false, -99.000000, 93.000000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_rocketlauncher_timer"))
	registerVal2:addElement(registerVal4)
	registerVal2.timerbg = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(false, false, -52.000000, 48.000000)
	registerVal5:setTopBottom(false, false, -20.000000, 20.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.800000)
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setLetterSpacing(1.000000)
	local function __FUNC_A49_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(NumberAsTime(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "CurrentWeapon", "lockedOnEnemyTimeRemaining", __FUNC_A49_)
	registerVal2:addElement(registerVal5)
	registerVal2.TimerShadow = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(false, false, -52.000000, 48.000000)
	registerVal6:setTopBottom(false, false, -20.000000, 20.000000)
	registerVal6:setTTF("fonts/default.ttf")
	registerVal6:setLetterSpacing(1.000000)
	local function __FUNC_AFA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(NumberAsTime(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "CurrentWeapon", "lockedOnEnemyTimeRemaining", __FUNC_AFA_)
	registerVal2:addElement(registerVal6)
	registerVal2.Timer = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_BAA_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.timerbgshadow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.timerbg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TimerShadow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Timer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_BAA_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_DAE_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.timerbgshadow:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.timerbg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TimerShadow:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Timer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_DAE_
	registerVal7.Targetting = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Targetting"
	local function __FUNC_FB7_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueEnumBitSet(arg1, "currentWeapon.lockedOnEnemy", Enum.RocketLauncherTargetStatesFlags.ROCKET_LAUNCHER_TARGET_FOUND)
		if registerVal3 then
			registerVal3 = IsModelValueGreaterThan(arg1, "currentWeapon.lockedOnEnemyTimeRemaining", 0.000000)
		end
		return registerVal3
	end

	registerVal10.condition = __FUNC_FB7_
	registerVal9 = {registerVal10}
	registerVal2:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "currentWeapon.lockedOnEnemy")
	local function __FUNC_1126_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.lockedOnEnemy"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_1126_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "currentWeapon.lockedOnEnemyTimeRemaining")
	local function __FUNC_1255_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.lockedOnEnemyTimeRemaining"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_1255_)
	local function __FUNC_1392_(arg0)
		arg0.TimerShadow:close()
		arg0.Timer:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1392_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

