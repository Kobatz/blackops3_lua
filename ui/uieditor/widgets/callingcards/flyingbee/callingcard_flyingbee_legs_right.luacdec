-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.FlyingBee.CallingCard_FlyingBee_Leg_Mid")
require("ui.uieditor.widgets.CallingCards.FlyingBee.CallingCard_FlyingBee_Leg_Hind_Right")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCard_FlyingBee_Legs_Right = registerVal1
function CoD.CallingCard_FlyingBee_Legs_Right.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCard_FlyingBee_Legs_Right)
	registerVal2.id = "CallingCard_FlyingBee_Legs_Right"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 32.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.CallingCard_FlyingBee_Leg_Mid.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, -11.000000, 21.000000)
	registerVal3:setTopBottom(true, false, -3.500000, 28.500000)
	registerVal3:setZRot(3.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Mid = registerVal3
	local registerVal4 = CoD.CallingCard_FlyingBee_Leg_Hind_Right.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 32.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Hind = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_714_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_876_(arg0, arg1)
			local function __FUNC_9EE_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 159.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setZRot(3.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_9EE_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			arg0:setZRot(9.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9EE_)
		end

		registerVal3:completeAnimation()
		registerVal2.Mid:setZRot(3.000000)
		__FUNC_876_(registerVal3, {})
		local function __FUNC_BA0_(arg0, arg1)
			local function __FUNC_D1A_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setZRot(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_D1A_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, true, true, CoD.TweenType.Linear)
			arg0:setZRot(6.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D1A_)
		end

		registerVal4:completeAnimation()
		registerVal2.Hind:setZRot(0.000000)
		__FUNC_BA0_(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal6.DefaultClip = __FUNC_714_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_ECC_(arg0)
		arg0.Mid:close()
		arg0.Hind:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_ECC_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

