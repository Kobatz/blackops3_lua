-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Reticles.RocketLaunchers.rocketLauncherReticle_UI3D_Internal")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.rocketLauncherReticle_UI3D = registerVal1
function CoD.rocketLauncherReticle_UI3D.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.rocketLauncherReticle_UI3D)
	registerVal2.id = "rocketLauncherReticle_UI3D"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 512.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 512.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.rocketLauncherReticle_UI3D_Internal.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	Engine.SetupUI3DWindow(arg1, 3.000000, 512.000000, 512.000000)
	registerVal3:setUI3DWindow(3.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Locked"
	local function __FUNC_87E_(arg0, arg2, arg3)
		return IsModelValueEnumBitSet(arg1, "currentWeapon.lockedOnEnemy", Enum.RocketLauncherTargetStatesFlags.ROCKET_LAUNCHER_TARGET_LOCKED)
	end

	registerVal7.condition = __FUNC_87E_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "currentWeapon.lockedOnEnemy")
	local function __FUNC_97B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.lockedOnEnemy"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_97B_)
	registerVal2:addElement(registerVal3)
	registerVal2.internal = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_AA9_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.internal:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_AA9_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_BA3_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.internal:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_BA3_
	registerVal4.Hidden = registerVal5
	registerVal2.clipsPerState = registerVal4
	registerVal6 = {}
	registerVal7 = {}
	registerVal7.stateName = "Hidden"
	local function __FUNC_CA0_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_EMP_ACTIVE)
		return registerVal3
	end

	registerVal7.condition = __FUNC_CA0_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE))
	local function __FUNC_D6F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_D6F_)
	local function __FUNC_EF5_(arg0)
		arg0.internal:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_EF5_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

