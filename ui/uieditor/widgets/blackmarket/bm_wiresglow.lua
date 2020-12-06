-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_WiresGlow = registerVal1
function CoD.BM_WiresGlow.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_WiresGlow)
	registerVal2.id = "BM_WiresGlow"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 216.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 420.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -108.000000, 108.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 420.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_wireglow"))
	registerVal2:addElement(registerVal3)
	registerVal2.wires2 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -11.000000, 227.000000)
	registerVal4:setTopBottom(true, false, -601.000000, 414.030000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_wireglowmask"))
	registerVal2:addElement(registerVal4)
	registerVal2.Mask = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_63B_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.wires2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Mask:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_63B_
	local function __FUNC_788_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_94A_(arg0, arg1)
			local function __FUNC_AC3_(arg0, arg1)
				local function __FUNC_C18_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_C18_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 530.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C18_)
			end

			if arg1.interrupted then
				__FUNC_AC3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AC3_)
		end

		registerVal3:completeAnimation()
		registerVal2.wires2:setAlpha(0.000000)
		__FUNC_94A_(registerVal3, {})
		local function __FUNC_DCD_(arg0, arg1)
			local function __FUNC_F5C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, -11.000000, 227.000000)
				arg0:setTopBottom(true, false, -601.000000, 414.030000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_F5C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 759.000000, false, true, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, -521.000000, 394.030000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F5C_)
		end

		registerVal4:completeAnimation()
		registerVal2.Mask:setLeftRight(true, false, -11.000000, 227.000000)
		registerVal2.Mask:setTopBottom(true, false, 0.000000, 945.030000)
		registerVal2.Mask:setAlpha(1.000000)
		__FUNC_DCD_(registerVal4, {})
	end

	registerVal6.circuitanim = __FUNC_788_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

