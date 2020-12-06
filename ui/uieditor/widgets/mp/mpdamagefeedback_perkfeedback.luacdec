-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1CE_(arg0, arg1, arg2)
	arg0.ignoreCurrentStateCheck = true
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.MPDamageFeedback_PerkFeedback = registerVal2
local function __FUNC_21F_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MPDamageFeedback_PerkFeedback)
	registerVal2.id = "MPDamageFeedback_PerkFeedback"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 64.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 128.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_damage_feedback_flak"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.flak = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_damage_feedback_uplink_shield"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.armor = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_damage_feedback_tac"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.tacMask = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_94C_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_94C_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_9AE_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.flak:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.armor:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.tacMask:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_9AE_
	local function __FUNC_B55_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_C31_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.flak:setAlpha(1.000000)
		__FUNC_C31_(registerVal3, {})
	end

	registerVal7.DefaultState = __FUNC_B55_
	registerVal6.FlakJacket = registerVal7
	registerVal7 = {}
	local function __FUNC_DE5_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.flak:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.armor:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.tacMask:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_DE5_
	local function __FUNC_F8D_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_106A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.armor:setAlpha(1.000000)
		__FUNC_106A_(registerVal4, {})
	end

	registerVal7.DefaultState = __FUNC_F8D_
	registerVal6.Armor = registerVal7
	registerVal7 = {}
	local function __FUNC_121D_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.flak:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.armor:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.tacMask:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_121D_
	local function __FUNC_13C5_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_14A4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.tacMask:setAlpha(1.000000)
		__FUNC_14A4_(registerVal5, {})
	end

	registerVal7.DefaultState = __FUNC_13C5_
	registerVal6.TacMask = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "FlakJacket"
	local function __FUNC_1659_(arg0, arg1, arg2)
		return DamageFeedbackFlagSet(arg1, Enum.DamageFeedbackFlags.DAMAGE_FEEDBACK_FLAG_FLAK)
	end

	registerVal9.condition = __FUNC_1659_
	local registerVal10 = {}
	registerVal10.stateName = "Armor"
	local function __FUNC_171D_(arg0, arg1, arg2)
		return DamageFeedbackFlagSet(arg1, Enum.DamageFeedbackFlags.DAMAGE_FEEDBACK_FLAG_ARMOR)
	end

	registerVal10.condition = __FUNC_171D_
	local registerVal11 = {}
	registerVal11.stateName = "TacMask"
	local function __FUNC_17E2_(arg0, arg1, arg2)
		return DamageFeedbackFlagSet(arg1, Enum.DamageFeedbackFlags.DAMAGE_FEEDBACK_FLAG_TAC_MASK)
	end

	registerVal11.condition = __FUNC_17E2_
	registerVal8 = {registerVal9, registerVal10, registerVal11}
	registerVal2:mergeStateConditions(registerVal8)
	local function __FUNC_18A9_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "damageFeedbackState"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "damageFeedbackState", true, __FUNC_18A9_)
	if __FUNC_1CE_ then
		__FUNC_1CE_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.MPDamageFeedback_PerkFeedback.new = __FUNC_21F_
