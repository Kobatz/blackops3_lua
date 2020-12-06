-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_PixelFX = registerVal1
function CoD.BM_PixelFX.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_PixelFX)
	registerVal2.id = "BM_PixelFX"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 380.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 476.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 380.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 476.000000)
	registerVal3:setAlpha(0.520000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_backing_pixel01"))
	registerVal2:addElement(registerVal3)
	registerVal2.Pixels01 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 380.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 476.000000)
	registerVal4:setAlpha(0.520000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_backing_pixel02"))
	registerVal2:addElement(registerVal4)
	registerVal2.Pixels02 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 380.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 476.000000)
	registerVal5:setAlpha(0.520000)
	registerVal5:setImage(RegisterImage("uie_t7_blackmarket_backing_pixel03"))
	registerVal2:addElement(registerVal5)
	registerVal2.Pixels03 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 380.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 476.000000)
	registerVal6:setAlpha(0.520000)
	registerVal6:setImage(RegisterImage("uie_t7_blackmarket_backing_pixel04"))
	registerVal2:addElement(registerVal6)
	registerVal2.Pixels04 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 14.830000, 366.000000)
	registerVal7:setTopBottom(true, false, 14.440000, 463.170000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_blackmarket_pixelanim_mask"))
	registerVal2:addElement(registerVal7)
	registerVal2.mask = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_858_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_AD7_(arg0, arg1)
			local function __FUNC_C2C_(arg0, arg1)
				local function __FUNC_DA7_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 570.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_DA7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DA7_)
			end

			if arg1.interrupted then
				__FUNC_C2C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C2C_)
		end

		registerVal3:completeAnimation()
		registerVal2.Pixels01:setAlpha(0.000000)
		__FUNC_AD7_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Pixels02:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Pixels03:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Pixels04:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_F59_(arg0, arg1)
			local function __FUNC_10B0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 549.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				arg0:setScale(1.500000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_10B0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10B0_)
		end

		registerVal7:completeAnimation()
		registerVal2.mask:setAlpha(1.000000)
		registerVal2.mask:setScale(1.000000)
		__FUNC_F59_(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_858_
	registerVal8.DefaultState = registerVal9
	registerVal2.clipsPerState = registerVal8
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

