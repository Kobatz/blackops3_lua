-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1EB_(arg0)
	arg0:setState("TakingDamage")
end

local function __FUNC_248_(arg0)
	arg0:setState("DefaultState")
end

local function __FUNC_2A8_(arg0)
	arg0:setState("Healing")
end

local function __FUNC_303_(arg0)
	arg0:setState("DefaultState")
end

local function __FUNC_360_(arg0)
	arg0.takingDamageFunction = __FUNC_1EB_
	arg0.endTakingDamageFunction = __FUNC_248_
	arg0.healingFunction = __FUNC_2A8_
	arg0.endHealingFunction = __FUNC_303_
end

local registerVal6 = InheritFrom(LUI.UIElement)
CoD.baseHealthDamageIconWidget = registerVal6
local function __FUNC_420_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.baseHealthDamageIconWidget)
	registerVal2.id = "baseHealthDamageIconWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 32.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_beacon_damage"))
	registerVal2:addElement(registerVal3)
	registerVal2.damageIcon = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, -3.000000, 3.000000)
	registerVal4:setTopBottom(true, true, -3.000000, 3.000000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_beacon_repair_buddy"))
	registerVal2:addElement(registerVal4)
	registerVal2.healingIcon = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_89F_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.damageIcon:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.damageIcon:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.damageIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.healingIcon:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.healingIcon:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.healingIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_89F_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_AC3_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_CC7_(arg0, arg1)
			local function __FUNC_E82_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, true, 0.000000, 0.000000)
				arg0:setTopBottom(true, true, 0.000000, 0.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_E82_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, true, -3.000000, 3.000000)
			arg0:setTopBottom(true, true, -3.000000, 3.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E82_)
		end

		registerVal3:completeAnimation()
		registerVal2.damageIcon:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.damageIcon:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.damageIcon:setAlpha(1.000000)
		__FUNC_CC7_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.healingIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal6.DefaultClip = __FUNC_AC3_
	registerVal5.TakingDamage = registerVal6
	registerVal6 = {}
	local function __FUNC_1096_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.damageIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_129B_(arg0, arg1)
			local function __FUNC_1456_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, true, 0.000000, 0.000000)
				arg0:setTopBottom(true, true, 0.000000, 0.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1456_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, true, -3.000000, 3.000000)
			arg0:setTopBottom(true, true, -3.000000, 3.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1456_)
		end

		registerVal4:completeAnimation()
		registerVal2.healingIcon:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.healingIcon:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.healingIcon:setAlpha(1.000000)
		__FUNC_129B_(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal6.DefaultClip = __FUNC_1096_
	registerVal5.Healing = registerVal6
	registerVal2.clipsPerState = registerVal5
	if __FUNC_360_ then
		__FUNC_360_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.baseHealthDamageIconWidget.new = __FUNC_420_
