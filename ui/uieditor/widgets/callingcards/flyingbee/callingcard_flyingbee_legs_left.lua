-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.FlyingBee.CallingCard_FlyingBee_Leg_Hind_Left")
require("ui.uieditor.widgets.CallingCards.FlyingBee.CallingCard_FlyingBee_Leg_Mid")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCard_FlyingBee_Legs_Left = registerVal1
function CoD.CallingCard_FlyingBee_Legs_Left.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCard_FlyingBee_Legs_Left)
	registerVal2.id = "CallingCard_FlyingBee_Legs_Left"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 32.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.CallingCard_FlyingBee_Leg_Hind_Left.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 32.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Hind = registerVal3
	local registerVal4 = CoD.CallingCard_FlyingBee_Leg_Mid.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, -11.000000, 21.000000)
	registerVal4:setTopBottom(true, false, -3.500000, 28.500000)
	registerVal2:addElement(registerVal4)
	registerVal2.Mid = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_6EC_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_849_(arg0, arg1)
			local function __FUNC_9C2_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setZRot(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_9C2_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			arg0:setZRot(4.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9C2_)
		end

		registerVal3:completeAnimation()
		registerVal2.Hind:setZRot(0.000000)
		__FUNC_849_(registerVal3, {})
		local function __FUNC_B74_(arg0, arg1)
			local function __FUNC_CEE_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 199.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setZRot(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_CEE_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
			arg0:setZRot(9.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CEE_)
		end

		registerVal4:completeAnimation()
		registerVal2.Mid:setZRot(0.000000)
		__FUNC_B74_(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal6.DefaultClip = __FUNC_6EC_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_EA0_(arg0)
		arg0.Hind:close()
		arg0.Mid:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_EA0_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

