-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Target = registerVal1
function CoD.Target.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Target)
	registerVal2.id = "Target"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 111.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 52.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -117.000000, 135.000000)
	registerVal3:setTopBottom(false, false, -101.000000, 91.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.800000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_rocketlauncher_timer"))
	registerVal2:addElement(registerVal3)
	registerVal2.timerbgshadow = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -117.000000, 135.000000)
	registerVal4:setTopBottom(false, false, -101.000000, 91.000000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_rocketlauncher_timer"))
	registerVal2:addElement(registerVal4)
	registerVal2.timerbg = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -76.000000, 44.000000)
	registerVal5:setTopBottom(false, false, -69.000000, 63.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_hud_rocketlauncher_targetreticle"))
	registerVal2:addElement(registerVal5)
	registerVal2.iconshadow = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -76.000000, 44.000000)
	registerVal6:setTopBottom(false, false, -69.000000, 63.000000)
	registerVal6:setImage(RegisterImage("uie_t7_hud_rocketlauncher_targetreticle"))
	registerVal2:addElement(registerVal6)
	registerVal2.icon = registerVal6
	local registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(false, false, 19.500000, 63.500000)
	registerVal7:setTopBottom(false, false, -20.000000, 20.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setTTF("fonts/default.ttf")
	local function __FUNC_B16_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "CurrentWeapon", "lockedOnEnemyMissilesRemaining", __FUNC_B16_)
	registerVal2:addElement(registerVal7)
	registerVal2.TimerShadow = registerVal7
	local registerVal8 = LUI.UITightText.new()
	registerVal8:setLeftRight(false, false, 19.500000, 63.500000)
	registerVal8:setTopBottom(false, false, -20.000000, 20.000000)
	registerVal8:setTTF("fonts/default.ttf")
	local function __FUNC_BCE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "CurrentWeapon", "lockedOnEnemyMissilesRemaining", __FUNC_BCE_)
	registerVal2:addElement(registerVal8)
	registerVal2.Timer0 = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_C86_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.timerbgshadow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.timerbg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.iconshadow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.icon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.TimerShadow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Timer0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_C86_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_F35_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.timerbgshadow:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.timerbg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.iconshadow:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.icon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.TimerShadow:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Timer0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_F35_
	registerVal9.LockedOn = registerVal10
	registerVal2.clipsPerState = registerVal9
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "LockedOn"
	local function __FUNC_11EA_(arg0, arg2, arg3)
		return IsModelValueEnumBitSet(arg1, "currentWeapon.lockedOnEnemy", Enum.RocketLauncherTargetStatesFlags.ROCKET_LAUNCHER_TARGET_FOUND)
	end

	registerVal12.condition = __FUNC_11EA_
	registerVal11 = {registerVal12}
	registerVal2:mergeStateConditions(registerVal11)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "currentWeapon.lockedOnEnemy")
	local function __FUNC_12E6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.lockedOnEnemy"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_12E6_)
	local function __FUNC_1415_(arg0)
		arg0.TimerShadow:close()
		arg0.Timer0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1415_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

