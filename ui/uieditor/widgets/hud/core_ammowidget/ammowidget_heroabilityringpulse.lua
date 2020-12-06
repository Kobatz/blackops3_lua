-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_HeroAbilityRingPulse = registerVal1
function CoD.AmmoWidget_HeroAbilityRingPulse.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_HeroAbilityRingPulse)
	registerVal2.id = "AmmoWidget_HeroAbilityRingPulse"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 97.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 95.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(1.000000, 0.850000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_img_t7_hud_cm_heroringglow"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.HeroRingPointsGainedImage = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_650_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.HeroRingPointsGainedImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_650_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_761_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.HeroRingPointsGainedImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_761_
	registerVal4.Charge = registerVal5
	registerVal5 = {}
	local function __FUNC_871_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_A12_(arg0, arg1)
			local function __FUNC_BFB_(arg0, arg1)
				local function __FUNC_DE3_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 480.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, true, -15.320000, 15.320000)
					arg0:setTopBottom(true, true, -15.000000, 15.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_DE3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 469.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, true, -15.320000, 15.320000)
				arg0:setTopBottom(true, true, -15.000000, 15.000000)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DE3_)
			end

			if arg1.interrupted then
				__FUNC_BFB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, true, -0.920000, 0.920000)
			arg0:setTopBottom(true, true, -0.900000, 0.900000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BFB_)
		end

		registerVal3:completeAnimation()
		registerVal2.HeroRingPointsGainedImage:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.HeroRingPointsGainedImage:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.HeroRingPointsGainedImage:setAlpha(0.000000)
		__FUNC_A12_(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_871_
	registerVal4.Ready = registerVal5
	registerVal5 = {}
	local function __FUNC_1005_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.HeroRingPointsGainedImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_1005_
	registerVal4.InUse = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

