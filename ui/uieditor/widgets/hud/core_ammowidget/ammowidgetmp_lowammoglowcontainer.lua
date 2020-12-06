-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidgetMP_LowAmmoGlow")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidgetMP_LowAmmoGlowContainer = registerVal1
function CoD.AmmoWidgetMP_LowAmmoGlowContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidgetMP_LowAmmoGlowContainer)
	registerVal2.id = "AmmoWidgetMP_LowAmmoGlowContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 114.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 34.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.AmmoWidgetMP_LowAmmoGlow.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 46.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 34.000000)
	registerVal3:setRGB(0.400000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.700000)
	registerVal3:setZoom(-10.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Hero"
	local function __FUNC_B95_(arg0, arg2, arg3)
		return IsHeroWeaponGadgetCurrentWeapon(arg0, arg1)
	end

	registerVal7.condition = __FUNC_B95_
	local registerVal8 = {}
	registerVal8.stateName = "LowAmmo"
	local function __FUNC_BFD_(arg0, arg2, arg3)
		local registerVal3 = IsLowAmmoClip(arg1)
		registerVal3 = WeaponHasAmmo(arg1)
		if registerVal3 and registerVal3 then
			registerVal3 = IsCurrentViewmodelWeaponGamemodeHiddenAmmo(arg1)
		end
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_BFD_
	local registerVal9 = {}
	registerVal9.stateName = "NoAmmo"
	local function __FUNC_CC6_(arg0, arg2, arg3)
		local registerVal3 = WeaponHasAmmo(arg1)
		if not registerVal3 then
			registerVal3 = WeaponUsesAmmo(arg1)
			if registerVal3 then
				registerVal3 = IsCurrentViewmodelWeaponGamemodeHiddenAmmo(arg1)
			else
			end
		end
		return true
	end

	registerVal9.condition = __FUNC_CC6_
	local registerVal10 = {}
	registerVal10.stateName = "Knife"
	local function __FUNC_D9B_(arg0, arg2, arg3)
		local registerVal3 = WeaponUsesAmmo(arg1)
		if not registerVal3 then
			registerVal3 = IsHeroWeaponGadgetCurrentWeapon(arg0, arg1)
		else
		end
		return true
	end

	registerVal10.condition = __FUNC_D9B_
	registerVal6 = {registerVal7, registerVal8, registerVal9, registerVal10}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "playerAbilities.playerGadget3.isInUse")
	local function __FUNC_E3D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.isInUse"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_E3D_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "currentWeapon.ammoStock")
	local function __FUNC_F77_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.ammoStock"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_F77_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "currentWeapon.ammoInClip")
	local function __FUNC_10A1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.ammoInClip"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_10A1_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "currentWeapon.viewmodelWeaponName")
	local function __FUNC_11CE_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.viewmodelWeaponName"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_11CE_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "currentWeapon.weapon")
	local function __FUNC_1303_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.weapon"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_1303_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "currentWeapon.equippedWeaponReference")
	local function __FUNC_142A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.equippedWeaponReference"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_142A_)
	registerVal2:addElement(registerVal3)
	registerVal2.LowAmmoClip = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_1563_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.LowAmmoClip:setLeftRight(true, false, 0.000000, 46.000000)
		registerVal2.LowAmmoClip:setTopBottom(true, false, 0.000000, 34.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_1563_
	local function __FUNC_16BB_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_17F9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 0.000000, 114.000000)
			arg0:setTopBottom(true, false, 0.000000, 34.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.LowAmmoClip:setLeftRight(true, false, 0.000000, 46.000000)
		registerVal2.LowAmmoClip:setTopBottom(true, false, 0.000000, 34.000000)
		__FUNC_17F9_(registerVal3, {})
	end

	registerVal5.NoAmmo = __FUNC_16BB_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_19F5_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.LowAmmoClip:setLeftRight(true, false, 0.000000, 46.000000)
		registerVal2.LowAmmoClip:setTopBottom(true, false, 0.000000, 34.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_19F5_
	local function __FUNC_1B4F_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_1C35_(arg0, arg1)
			local function __FUNC_1D8C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.700000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1D8C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 870.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D8C_)
		end

		registerVal3:completeAnimation()
		registerVal2.LowAmmoClip:setAlpha(0.000000)
		__FUNC_1C35_(registerVal3, {})
	end

	registerVal5.NoAmmo = __FUNC_1B4F_
	local function __FUNC_1F41_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_2029_(arg0, arg1)
			local function __FUNC_2180_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.700000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2180_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 870.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2180_)
		end

		registerVal3:completeAnimation()
		registerVal2.LowAmmoClip:setAlpha(0.000000)
		__FUNC_2029_(registerVal3, {})
	end

	registerVal5.LowAmmo = __FUNC_1F41_
	local function __FUNC_2335_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_241D_(arg0, arg1)
			local function __FUNC_2574_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.700000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2574_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 870.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2574_)
		end

		registerVal3:completeAnimation()
		registerVal2.LowAmmoClip:setAlpha(0.000000)
		__FUNC_241D_(registerVal3, {})
	end

	registerVal5.DefaultState = __FUNC_2335_
	registerVal4.Hero = registerVal5
	registerVal5 = {}
	local function __FUNC_2729_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.LowAmmoClip:setLeftRight(true, false, 36.000000, 114.000000)
		registerVal2.LowAmmoClip:setTopBottom(true, false, 0.000000, 34.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_2729_
	registerVal4.LowAmmoNoReserve = registerVal5
	registerVal5 = {}
	local function __FUNC_2888_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.LowAmmoClip:setLeftRight(true, false, 36.000000, 114.000000)
		registerVal2.LowAmmoClip:setTopBottom(true, false, 0.000000, 34.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_2888_
	local function __FUNC_29E8_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_2B2E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 589.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 0.000000, 46.000000)
			arg0:setTopBottom(true, false, 0.000000, 34.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.LowAmmoClip:setLeftRight(true, false, 36.000000, 114.000000)
		registerVal2.LowAmmoClip:setTopBottom(true, false, 0.000000, 34.000000)
		__FUNC_2B2E_(registerVal3, {})
	end

	registerVal5.DefaultState = __FUNC_29E8_
	registerVal4.NoAmmoNoReserve = registerVal5
	registerVal5 = {}
	local function __FUNC_2D29_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.LowAmmoClip:setLeftRight(true, false, -74.000000, 46.000000)
		registerVal2.LowAmmoClip:setTopBottom(true, false, 0.000000, 34.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_2D29_
	local function __FUNC_2E88_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_2FCE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -74.000000, 114.000000)
			arg0:setTopBottom(true, false, 0.000000, 34.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.LowAmmoClip:setLeftRight(true, false, -74.000000, 46.000000)
		registerVal2.LowAmmoClip:setTopBottom(true, false, 0.000000, 34.000000)
		__FUNC_2FCE_(registerVal3, {})
	end

	registerVal5.NoAmmoDW = __FUNC_2E88_
	registerVal4.LowAmmoDW = registerVal5
	registerVal5 = {}
	local function __FUNC_31CE_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.LowAmmoClip:setLeftRight(true, false, -74.000000, 114.000000)
		registerVal2.LowAmmoClip:setTopBottom(true, false, 0.000000, 34.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_31CE_
	local function __FUNC_332C_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_3472_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 589.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 0.000000, 46.000000)
			arg0:setTopBottom(true, false, 0.000000, 34.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.LowAmmoClip:setLeftRight(true, false, -74.000000, 114.000000)
		registerVal2.LowAmmoClip:setTopBottom(true, false, 0.000000, 34.000000)
		__FUNC_3472_(registerVal3, {})
	end

	registerVal5.DefaultState = __FUNC_332C_
	registerVal4.NoAmmoDW = registerVal5
	registerVal5 = {}
	local function __FUNC_366D_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.LowAmmoClip:setLeftRight(true, false, 0.000000, 46.000000)
		registerVal2.LowAmmoClip:setTopBottom(true, false, 0.000000, 34.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_366D_
	local function __FUNC_37C7_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_3905_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 0.000000, 114.000000)
			arg0:setTopBottom(true, false, 0.000000, 34.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.LowAmmoClip:setLeftRight(true, false, 0.000000, 46.000000)
		registerVal2.LowAmmoClip:setTopBottom(true, false, 0.000000, 34.000000)
		__FUNC_3905_(registerVal3, {})
	end

	registerVal5.NoAmmo = __FUNC_37C7_
	registerVal4.LowAmmo = registerVal5
	registerVal5 = {}
	local function __FUNC_3B01_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.LowAmmoClip:setLeftRight(true, false, 0.000000, 114.000000)
		registerVal2.LowAmmoClip:setTopBottom(true, false, 0.000000, 34.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_3B01_
	local function __FUNC_3C5B_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_3D99_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 589.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 0.000000, 46.000000)
			arg0:setTopBottom(true, false, 0.000000, 34.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.LowAmmoClip:setLeftRight(true, false, 0.000000, 114.000000)
		registerVal2.LowAmmoClip:setTopBottom(true, false, 0.000000, 34.000000)
		__FUNC_3D99_(registerVal3, {})
	end

	registerVal5.DefaultState = __FUNC_3C5B_
	registerVal4.NoAmmo = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_3F95_(arg0)
		arg0.LowAmmoClip:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3F95_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

