-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BowLauncherReticle_Dot = registerVal1
function CoD.BowLauncherReticle_Dot.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BowLauncherReticle_Dot)
	registerVal2.id = "BowLauncherReticle_Dot"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 6.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 6.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_bowlauncher_center_dot"))
	registerVal2:addElement(registerVal3)
	registerVal2.CenterDot = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_66A_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.CenterDot:setLeftRight(true, true, 0.500000, -0.500000)
		registerVal2.CenterDot:setTopBottom(true, true, 0.500000, -0.500000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_66A_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_7BC_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.CenterDot:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.CenterDot:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_7BC_
	registerVal4.Locked = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Locked"
	local function __FUNC_90B_(arg0, arg2, arg3)
		return IsModelValueGreaterThanOrEqualTo(arg1, "currentWeapon.currentShotCharge", 0.900000)
	end

	registerVal7.condition = __FUNC_90B_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "currentWeapon.currentShotCharge")
	local function __FUNC_9A4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.currentShotCharge"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_9A4_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

