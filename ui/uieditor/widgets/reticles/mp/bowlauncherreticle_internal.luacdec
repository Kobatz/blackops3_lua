-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Reticles.MP.BowLauncherReticle_Shader")
require("ui.uieditor.widgets.Reticles.MP.BowLauncherReticle_L1")
require("ui.uieditor.widgets.Reticles.MP.BowLauncherReticle_L2")
require("ui.uieditor.widgets.Reticles.MP.BowLauncherReticle_L3")
require("ui.uieditor.widgets.Reticles.MP.BowLauncherReticle_L4")
require("ui.uieditor.widgets.Reticles.MP.BowLauncherReticle_Dot")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BowLauncherReticle_Internal = registerVal1
function CoD.BowLauncherReticle_Internal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BowLauncherReticle_Internal)
	registerVal2.id = "BowLauncherReticle_Internal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 100.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 100.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.BowLauncherReticle_Shader.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -50.000000, 50.000000)
	registerVal3:setTopBottom(false, false, -50.000000, 50.000000)
	registerVal3.shader:setShaderVector(0.000000, 1.500000, 10.000000, 0.000000, 0.000000)
	registerVal3.shader:setShaderVector(1.000000, 100.000000, 100.000000, 0.000000, 0.000000)
	registerVal3.shader:setShaderVector(2.000000, 0.040000, 0.030000, 0.010000, 0.000000)
	registerVal3.shader:setShaderVector(3.000000, 2.000000, 30.000000, 80.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.reticle = registerVal3
	local registerVal4 = CoD.BowLauncherReticle_L1.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -6.000000, 6.000000)
	registerVal4:setTopBottom(false, false, 5.000000, 11.000000)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Drawn"
	local function __FUNC_FAF_(arg0, arg2, arg3)
		return IsModelValueGreaterThanOrEqualTo(arg1, "currentWeapon.currentShotCharge", 1.000000)
	end

	registerVal8.condition = __FUNC_FAF_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "currentWeapon.currentShotCharge")
	local function __FUNC_1048_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.currentShotCharge"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_1048_)
	registerVal2:addElement(registerVal4)
	registerVal2.BowLauncherReticleL1 = registerVal4
	local registerVal5 = CoD.BowLauncherReticle_L2.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -6.000000, 6.000000)
	registerVal5:setTopBottom(false, false, 13.000000, 19.000000)
	registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Drawn"
	local function __FUNC_117D_(arg0, arg2, arg3)
		return IsModelValueGreaterThanOrEqualTo(arg1, "currentWeapon.currentShotCharge", 0.650000)
	end

	registerVal9.condition = __FUNC_117D_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "currentWeapon.currentShotCharge")
	local function __FUNC_1218_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.currentShotCharge"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_1218_)
	registerVal2:addElement(registerVal5)
	registerVal2.BowLauncherReticleL2 = registerVal5
	local registerVal6 = CoD.BowLauncherReticle_L3.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -6.000000, 6.000000)
	registerVal6:setTopBottom(false, false, 21.000000, 27.000000)
	registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Drawn"
	local function __FUNC_134D_(arg0, arg2, arg3)
		return IsModelValueGreaterThanOrEqualTo(arg1, "currentWeapon.currentShotCharge", 0.400000)
	end

	registerVal10.condition = __FUNC_134D_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "currentWeapon.currentShotCharge")
	local function __FUNC_13E8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.currentShotCharge"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:subscribeToModel(registerVal9, __FUNC_13E8_)
	registerVal2:addElement(registerVal6)
	registerVal2.BowLauncherReticleL3 = registerVal6
	registerVal7 = CoD.BowLauncherReticle_L4.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -6.000000, 6.000000)
	registerVal7:setTopBottom(false, false, 29.000000, 35.000000)
	registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Drawn"
	local function __FUNC_151D_(arg0, arg2, arg3)
		return IsModelValueGreaterThanOrEqualTo(arg1, "currentWeapon.currentShotCharge", 0.200000)
	end

	registerVal11.condition = __FUNC_151D_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "currentWeapon.currentShotCharge")
	local function __FUNC_15B8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.currentShotCharge"
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:subscribeToModel(registerVal10, __FUNC_15B8_)
	registerVal2:addElement(registerVal7)
	registerVal2.BowLauncherReticleL4 = registerVal7
	registerVal8 = CoD.BowLauncherReticle_Dot.new(arg0, arg1)
	registerVal8:setLeftRight(false, false, -2.000000, 2.000000)
	registerVal8:setTopBottom(false, false, -2.000000, 2.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.BowLauncherReticleDot = registerVal8
	registerVal9 = {}
	registerVal10 = {}
	local function __FUNC_16ED_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_1B7F_(arg0, arg1)
			local function __FUNC_1D2F_(arg0, arg1)
				local function __FUNC_1EBC_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 140.000000, true, false, CoD.TweenType.Back)
						arg0.shader:beginAnimation("subkeyframe", 140.000000, true, false, CoD.TweenType.Back)
					end
					arg0:setLeftRight(false, false, -50.000000, 50.000000)
					arg0:setTopBottom(false, false, -50.000000, 50.000000)
					arg0:setAlpha(1.000000)
					arg0.shader:setShaderVector(3.000000, 0.000000, 30.000000, 80.000000, 0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_1EBC_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -90.000000, 90.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EBC_)
			end

			if arg1.interrupted then
				__FUNC_1D2F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -63.330000, 63.330000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D2F_)
		end

		registerVal3:completeAnimation()
		registerVal3.shader:completeAnimation()
		registerVal2.reticle:setLeftRight(false, false, -50.000000, 50.000000)
		registerVal2.reticle:setTopBottom(false, false, -50.000000, 50.000000)
		registerVal2.reticle:setAlpha(0.000000)
		registerVal2.reticle.shader:setShaderVector(3.000000, 0.000000, 30.000000, 80.000000, 0.000000)
		__FUNC_1B7F_(registerVal3, {})
		local function __FUNC_218F_(arg0, arg1)
			local function __FUNC_22E4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_22E4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22E4_)
		end

		registerVal4:completeAnimation()
		registerVal2.BowLauncherReticleL1:setAlpha(0.000000)
		__FUNC_218F_(registerVal4, {})
		local function __FUNC_2499_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
		registerVal5:setAlpha(0.000000)
		registerVal5:registerEventHandler("transition_complete_keyframe", __FUNC_2499_)
		local function __FUNC_264D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
		registerVal6:setAlpha(0.000000)
		registerVal6:registerEventHandler("transition_complete_keyframe", __FUNC_264D_)
		local function __FUNC_2801_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
		registerVal7:setAlpha(0.000000)
		registerVal7:registerEventHandler("transition_complete_keyframe", __FUNC_2801_)
		local function __FUNC_29B5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
		registerVal8:setAlpha(0.000000)
		registerVal8:registerEventHandler("transition_complete_keyframe", __FUNC_29B5_)
	end

	registerVal10.DefaultClip = __FUNC_16ED_
	local function __FUNC_2B69_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_2CD5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
				arg0.shader:beginAnimation("subkeyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0.shader:setShaderVector(3.000000, 1.000000, 30.000000, 80.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal3.shader:completeAnimation()
		registerVal2.reticle:setAlpha(1.000000)
		registerVal2.reticle.shader:setShaderVector(3.000000, 0.000000, 30.000000, 80.000000, 0.000000)
		__FUNC_2CD5_(registerVal3, {})
	end

	registerVal10.Drawing = __FUNC_2B69_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_2F43_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal3.shader:completeAnimation()
		registerVal2.reticle:setAlpha(0.400000)
		registerVal2.reticle.shader:setShaderVector(3.000000, 1.000000, 30.000000, 80.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal10.DefaultClip = __FUNC_2F43_
	local function __FUNC_30CC_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal3.shader:completeAnimation()
		registerVal2.reticle:setAlpha(1.000000)
		registerVal2.reticle.shader:setShaderVector(3.000000, 0.000000, 30.000000, 80.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal10.StartupComplete = __FUNC_30CC_
	registerVal9.Drawing = registerVal10
	registerVal10 = {}
	local function __FUNC_3253_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal3.shader:completeAnimation()
		registerVal2.reticle:setAlpha(1.000000)
		registerVal2.reticle.shader:setShaderVector(3.000000, 0.000000, 30.000000, 80.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BowLauncherReticleL1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BowLauncherReticleL2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BowLauncherReticleL3:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BowLauncherReticleL4:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BowLauncherReticleDot:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_3253_
	local function __FUNC_35C7_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_3731_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
				arg0.shader:beginAnimation("subkeyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.400000)
			arg0.shader:setShaderVector(3.000000, 1.000000, 30.000000, 80.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal3.shader:completeAnimation()
		registerVal2.reticle:setAlpha(1.000000)
		registerVal2.reticle.shader:setShaderVector(3.000000, 0.000000, 30.000000, 80.000000, 0.000000)
		__FUNC_3731_(registerVal3, {})
	end

	registerVal10.Drawing = __FUNC_35C7_
	registerVal9.StartupComplete = registerVal10
	registerVal2.clipsPerState = registerVal9
	registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "Drawing"
	local function __FUNC_39A4_(arg0, arg2, arg3)
		return IsModelValueGreaterThan(arg1, "currentWeapon.currentShotCharge", 0.000000)
	end

	registerVal12.condition = __FUNC_39A4_
	local registerVal13 = {}
	registerVal13.stateName = "StartupComplete"
	local function __FUNC_3A37_(arg0, arg1, arg2)
		return PropertyIsTrue(registerVal2, "startupComplete")
	end

	registerVal13.condition = __FUNC_3A37_
	registerVal11 = {registerVal12, registerVal13}
	registerVal2:mergeStateConditions(registerVal11)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "currentWeapon.currentShotCharge")
	local function __FUNC_3AA5_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.currentShotCharge"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_3AA5_)
	local function __FUNC_3BD9_(arg0, arg1)
		SetProperty(registerVal2, "startupComplete", true)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_3BD9_)
	local function __FUNC_3C46_(arg0)
		arg0.reticle:close()
		arg0.BowLauncherReticleL1:close()
		arg0.BowLauncherReticleL2:close()
		arg0.BowLauncherReticleL3:close()
		arg0.BowLauncherReticleL4:close()
		arg0.BowLauncherReticleDot:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3C46_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

