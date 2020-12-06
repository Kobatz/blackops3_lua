-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Reticles.PulseRifle.PulseRifleReticle_Numbers")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PulseRifleReticle_NumbersScreen = registerVal1
function CoD.PulseRifleReticle_NumbersScreen.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PulseRifleReticle_NumbersScreen)
	registerVal2.id = "PulseRifleReticle_NumbersScreen"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 204.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 96.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.PulseRifleReticle_Numbers.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 204.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 96.000000)
	Engine.SetupUI3DWindow(arg1, 0.000000, 204.000000, 96.000000)
	registerVal3:setUI3DWindow(0.000000)
	local function __FUNC_962_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:subscribeToGlobalModel(arg1, "CurrentWeapon", nil, __FUNC_962_)
	registerVal2:addElement(registerVal3)
	registerVal2.PulseRifleReticleNumbers = registerVal3
	local registerVal4 = CoD.PulseRifleReticle_Numbers.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 204.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 96.000000)
	Engine.SetupUI3DWindow(arg1, 0.000000, 204.000000, 96.000000)
	registerVal4:setUI3DWindow(0.000000)
	registerVal4:setAlpha(0.150000)
	registerVal4:setZoom(10.000000)
	local function __FUNC_9B2_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:subscribeToGlobalModel(arg1, "CurrentWeapon", nil, __FUNC_9B2_)
	registerVal2:addElement(registerVal4)
	registerVal2.PulseRifleReticleNumbers0 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_A02_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.PulseRifleReticleNumbers:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PulseRifleReticleNumbers0:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_A02_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_B7C_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.PulseRifleReticleNumbers:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PulseRifleReticleNumbers0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_B7C_
	registerVal5.Hidden = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Hidden"
	local function __FUNC_CF3_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_EMP_ACTIVE)
		return registerVal3
	end

	registerVal8.condition = __FUNC_CF3_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE))
	local function __FUNC_DBF_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_DBF_)
	local function __FUNC_F45_(arg0)
		arg0.PulseRifleReticleNumbers:close()
		arg0.PulseRifleReticleNumbers0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_F45_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

