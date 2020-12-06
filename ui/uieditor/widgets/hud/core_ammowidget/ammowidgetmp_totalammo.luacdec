-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidgetMP_TotalAmmo = registerVal1
function CoD.AmmoWidgetMP_TotalAmmo.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidgetMP_TotalAmmo)
	registerVal2.id = "AmmoWidgetMP_TotalAmmo"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 54.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 30.000000)
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(false, false, -23.000000, 23.000000)
	registerVal3:setTopBottom(false, true, -30.000000, 1.000000)
	registerVal3:setRGB(0.410000, 0.540000, 0.700000)
	registerVal3:setAlpha(0.260000)
	registerVal3:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal3:setLetterSpacing(-1.000000)
	local function __FUNC_90E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "CurrentWeapon", "ammoStock", __FUNC_90E_)
	registerVal2:addElement(registerVal3)
	registerVal2.TotalAmmoLbl = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(false, false, -8.000000, 8.000000)
	registerVal4:setTopBottom(false, true, -30.000000, 1.000000)
	registerVal4:setRGB(0.670000, 0.750000, 0.800000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setText(Engine.Localize("0"))
	registerVal4:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal4:setLetterSpacing(-0.600000)
	registerVal2:addElement(registerVal4)
	registerVal2.TotalAmmoFakeLbl = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_9C6_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.TotalAmmoLbl:setLeftRight(false, false, -23.000000, 23.000000)
		registerVal2.TotalAmmoLbl:setTopBottom(false, true, -30.000000, 1.000000)
		registerVal2.TotalAmmoLbl:setRGB(0.600000, 0.600000, 0.600000)
		registerVal2.TotalAmmoLbl:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.TotalAmmoFakeLbl:setRGB(0.700000, 0.700000, 0.700000)
		registerVal2.TotalAmmoFakeLbl:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_9C6_
	local function __FUNC_C18_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_E4E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(false, false, -23.000000, 23.000000)
			arg0:setTopBottom(false, true, -30.000000, 1.000000)
			arg0:setRGB(0.600000, 0.600000, 0.600000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.TotalAmmoLbl:setLeftRight(false, false, -23.000000, 23.000000)
		registerVal2.TotalAmmoLbl:setTopBottom(false, true, -30.000000, 1.000000)
		registerVal2.TotalAmmoLbl:setRGB(0.600000, 0.600000, 0.600000)
		registerVal2.TotalAmmoLbl:setAlpha(1.000000)
		__FUNC_E4E_(registerVal3, {})
		local function __FUNC_109A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.700000, 0.700000, 0.700000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.TotalAmmoFakeLbl:setRGB(0.700000, 0.700000, 0.700000)
		registerVal2.TotalAmmoFakeLbl:setAlpha(0.000000)
		__FUNC_109A_(registerVal4, {})
	end

	registerVal6.HeroWeapon = __FUNC_C18_
	local function __FUNC_1276_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_1427_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -23.000000, 23.000000)
			arg0:setTopBottom(false, true, -30.000000, 1.000000)
			arg0:setRGB(0.600000, 0.600000, 0.600000)
			arg0:setAlpha(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.TotalAmmoLbl:setLeftRight(false, false, -23.000000, 23.000000)
		registerVal2.TotalAmmoLbl:setTopBottom(false, true, 0.000000, 31.000000)
		registerVal2.TotalAmmoLbl:setRGB(0.600000, 0.600000, 0.600000)
		registerVal2.TotalAmmoLbl:setAlpha(0.900000)
		__FUNC_1427_(registerVal3, {})
	end

	registerVal6.AmmoPickup = __FUNC_1276_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_1672_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.TotalAmmoLbl:setLeftRight(false, false, -23.000000, 23.000000)
		registerVal2.TotalAmmoLbl:setTopBottom(false, true, -30.000000, 1.000000)
		registerVal2.TotalAmmoLbl:setRGB(0.600000, 0.600000, 0.600000)
		registerVal2.TotalAmmoLbl:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.TotalAmmoFakeLbl:setRGB(0.700000, 0.700000, 0.700000)
		registerVal2.TotalAmmoFakeLbl:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_1672_
	local function __FUNC_18C4_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_1AFA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(false, false, -23.000000, 23.000000)
			arg0:setTopBottom(false, true, -30.000000, 1.000000)
			arg0:setRGB(0.600000, 0.600000, 0.600000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.TotalAmmoLbl:setLeftRight(false, false, -23.000000, 23.000000)
		registerVal2.TotalAmmoLbl:setTopBottom(false, true, -30.000000, 1.000000)
		registerVal2.TotalAmmoLbl:setRGB(0.600000, 0.600000, 0.600000)
		registerVal2.TotalAmmoLbl:setAlpha(1.000000)
		__FUNC_1AFA_(registerVal3, {})
		local function __FUNC_1D46_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.700000, 0.700000, 0.700000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.TotalAmmoFakeLbl:setRGB(0.700000, 0.700000, 0.700000)
		registerVal2.TotalAmmoFakeLbl:setAlpha(0.000000)
		__FUNC_1D46_(registerVal4, {})
	end

	registerVal6.HeroWeapon = __FUNC_18C4_
	local function __FUNC_1F22_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_20D3_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -23.000000, 23.000000)
			arg0:setTopBottom(false, true, -30.000000, 1.000000)
			arg0:setRGB(0.600000, 0.600000, 0.600000)
			arg0:setAlpha(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.TotalAmmoLbl:setLeftRight(false, false, -23.000000, 23.000000)
		registerVal2.TotalAmmoLbl:setTopBottom(false, true, 0.000000, 31.000000)
		registerVal2.TotalAmmoLbl:setRGB(0.600000, 0.600000, 0.600000)
		registerVal2.TotalAmmoLbl:setAlpha(0.900000)
		__FUNC_20D3_(registerVal3, {})
	end

	registerVal6.AmmoPickup = __FUNC_1F22_
	registerVal5.Hidden = registerVal6
	registerVal6 = {}
	local function __FUNC_231E_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.TotalAmmoLbl:setLeftRight(false, false, -23.000000, 23.000000)
		registerVal2.TotalAmmoLbl:setTopBottom(false, true, -30.000000, 1.000000)
		registerVal2.TotalAmmoLbl:setRGB(0.670000, 0.750000, 0.800000)
		registerVal2.TotalAmmoLbl:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.TotalAmmoFakeLbl:setRGB(0.670000, 0.750000, 0.800000)
		registerVal2.TotalAmmoFakeLbl:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_231E_
	registerVal5.HeroWeapon = registerVal6
	registerVal6 = {}
	local function __FUNC_2575_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.TotalAmmoLbl:setLeftRight(false, false, -23.000000, 23.000000)
		registerVal2.TotalAmmoLbl:setTopBottom(false, true, -30.000000, 1.000000)
		registerVal2.TotalAmmoLbl:setRGB(0.670000, 0.750000, 0.800000)
		registerVal2.TotalAmmoLbl:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.TotalAmmoFakeLbl:setRGB(0.670000, 0.750000, 0.800000)
		registerVal2.TotalAmmoFakeLbl:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_2575_
	registerVal5.WeaponNoReserve = registerVal6
	registerVal6 = {}
	local function __FUNC_27CD_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_2A1D_(arg0, arg1)
			local function __FUNC_2B97_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -23.000000, 23.000000)
				arg0:setTopBottom(false, true, -30.000000, 1.000000)
				arg0:setRGB(1.000000, 0.000000, 0.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2B97_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B97_)
		end

		registerVal3:completeAnimation()
		registerVal2.TotalAmmoLbl:setLeftRight(false, false, -23.000000, 23.000000)
		registerVal2.TotalAmmoLbl:setTopBottom(false, true, -30.000000, 1.000000)
		registerVal2.TotalAmmoLbl:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.TotalAmmoLbl:setAlpha(1.000000)
		__FUNC_2A1D_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.TotalAmmoFakeLbl:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal6.DefaultClip = __FUNC_27CD_
	local function __FUNC_2DDD_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_2FE4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 540.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(false, false, -23.000000, 23.000000)
			arg0:setTopBottom(false, true, -30.000000, 1.000000)
			arg0:setRGB(1.000000, 0.000000, 0.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.TotalAmmoLbl:setLeftRight(false, false, -23.000000, 23.000000)
		registerVal2.TotalAmmoLbl:setTopBottom(false, true, -30.000000, 1.000000)
		registerVal2.TotalAmmoLbl:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.TotalAmmoLbl:setAlpha(1.000000)
		__FUNC_2FE4_(registerVal3, {})
		local function __FUNC_322D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 540.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.TotalAmmoFakeLbl:setAlpha(0.000000)
		__FUNC_322D_(registerVal4, {})
	end

	registerVal6.HeroWeapon = __FUNC_2DDD_
	registerVal5.NoAmmo = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_33E1_(arg0)
		PlayClip(registerVal2, "AmmoPickup", arg1)
	end

	registerVal2:subscribeToGlobalModel(arg1, "PerController", "hudItems.ammoPickedUp", __FUNC_33E1_)
	local function __FUNC_344A_(arg0)
		arg0.TotalAmmoLbl:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_344A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

