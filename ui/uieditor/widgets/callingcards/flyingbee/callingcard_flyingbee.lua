-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.FlyingBee.CallingCard_FlyingBee_Bee_Anim")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCard_FlyingBee = registerVal1
function CoD.CallingCard_FlyingBee.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCard_FlyingBee)
	registerVal2.id = "CallingCard_FlyingBee"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -480.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_mp_flyingbee_bg"))
	registerVal2:addElement(registerVal3)
	registerVal2.BG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcard_mp_flyingbee_gradient"))
	registerVal2:addElement(registerVal4)
	registerVal2.Gradient = registerVal4
	local registerVal5 = CoD.CallingCard_FlyingBee_Bee_Anim.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 303.000000, 450.670000)
	registerVal5:setTopBottom(true, false, -21.000000, 127.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.Bee = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_778_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_8DA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 3970.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 480.000000)
			arg0:setTopBottom(true, true, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.BG:setLeftRight(true, true, -480.000000, 0.000000)
		registerVal2.BG:setTopBottom(true, true, 0.000000, 0.000000)
		__FUNC_8DA_(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal7.DefaultClip = __FUNC_778_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	local function __FUNC_AD0_(arg0)
		arg0.Bee:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_AD0_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

