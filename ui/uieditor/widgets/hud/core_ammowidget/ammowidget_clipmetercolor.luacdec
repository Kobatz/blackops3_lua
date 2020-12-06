-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_ClipMeterColor = registerVal1
function CoD.AmmoWidget_ClipMeterColor.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_ClipMeterColor)
	registerVal2.id = "AmmoWidget_ClipMeterColor"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 67.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 6.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 352.000000, 350.670000)
	registerVal3:setRGB(1.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.500000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_ammowidget_clipline"))
	registerVal2:addElement(registerVal3)
	registerVal2.ImgMeter = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_5CD_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ImgMeter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_5CD_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_6CC_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_81A_(arg0, arg1)
			local function __FUNC_970_(arg0, arg1)
				local function __FUNC_AF1_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setRGB(0.000000, 0.000000, 0.000000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_AF1_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
				arg0:setRGB(0.000000, 0.000000, 0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AF1_)
			end

			if arg1.interrupted then
				__FUNC_970_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_970_)
		end

		registerVal3:completeAnimation()
		registerVal2.ImgMeter:setRGB(1.000000, 0.000000, 0.170000)
		registerVal2.ImgMeter:setAlpha(1.000000)
		__FUNC_81A_(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_6CC_
	registerVal4.LowAmmo = registerVal5
	registerVal5 = {}
	local function __FUNC_CCE_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_E1A_(arg0, arg1)
			local function __FUNC_F93_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(1.000000, 0.000000, 0.000000)
				arg0:setAlpha(0.500000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_F93_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.400000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F93_)
		end

		registerVal3:completeAnimation()
		registerVal2.ImgMeter:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.ImgMeter:setAlpha(0.500000)
		__FUNC_E1A_(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_CCE_
	registerVal4.NoAmmo = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

