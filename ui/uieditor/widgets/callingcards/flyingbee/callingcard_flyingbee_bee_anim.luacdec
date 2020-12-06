-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.FlyingBee.CallingCard_FlyingBee_Bee")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCard_FlyingBee_Bee_Anim = registerVal1
function CoD.CallingCard_FlyingBee_Bee_Anim.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCard_FlyingBee_Bee_Anim)
	registerVal2.id = "CallingCard_FlyingBee_Bee_Anim"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 148.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 148.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.CallingCard_FlyingBee_Bee.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 147.670000)
	registerVal3:setTopBottom(true, false, 0.000000, 148.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Bee = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_5C9_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_735_(arg0, arg1)
			local function __FUNC_8C4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 0.000000, 147.670000)
				arg0:setTopBottom(true, false, -1.500000, 146.500000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_8C4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 1.500000, 149.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8C4_)
		end

		registerVal3:completeAnimation()
		registerVal2.Bee:setLeftRight(true, false, 0.000000, 147.670000)
		registerVal2.Bee:setTopBottom(true, false, -1.500000, 146.500000)
		__FUNC_735_(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_5C9_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_AC6_(arg0)
		arg0.Bee:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_AC6_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

