-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_code_ground_sun = registerVal1
function CoD.CallingCards_code_ground_sun.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCards_code_ground_sun)
	registerVal2.id = "CallingCards_code_ground_sun"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 240.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 240.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcards_ground_sun2"))
	registerVal2:addElement(registerVal3)
	registerVal2.SUN2 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 240.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcards_ground_sun"))
	registerVal2:addElement(registerVal4)
	registerVal2.SUN = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_5F0_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.SUN2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_76D_(arg0, arg1)
			local function __FUNC_8E7_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 2010.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_8E7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2000.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8E7_)
		end

		registerVal4:completeAnimation()
		registerVal2.SUN:setAlpha(0.000000)
		__FUNC_76D_(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal6.DefaultClip = __FUNC_5F0_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

