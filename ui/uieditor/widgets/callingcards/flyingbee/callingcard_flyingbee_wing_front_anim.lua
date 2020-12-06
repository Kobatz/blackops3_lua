-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.FlyingBee.CallingCard_FlyingBee_Wing_Front")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCard_FlyingBee_Wing_Front_Anim = registerVal1
function CoD.CallingCard_FlyingBee_Wing_Front_Anim.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCard_FlyingBee_Wing_Front_Anim)
	registerVal2.id = "CallingCard_FlyingBee_Wing_Front_Anim"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 32.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.CallingCard_FlyingBee_Wing_Front.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 32.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal3:setZRot(7.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Wing = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_605_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_714_(arg0, arg1)
			local function __FUNC_88E_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 59.000000, true, true, CoD.TweenType.Linear)
				end
				arg0:setZRot(7.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_88E_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, true, true, CoD.TweenType.Linear)
			arg0:setZRot(-11.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_88E_)
		end

		registerVal3:completeAnimation()
		registerVal2.Wing:setZRot(7.000000)
		__FUNC_714_(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_605_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_A40_(arg0)
		arg0.Wing:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A40_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

