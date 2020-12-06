-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidgetMP_AbilityRingBackDeplete")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_HeroAbilityRingBack")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_HeroAbilityRing")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_AbilityGlow")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_HeroAbilityRingPulse")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_HeroAbilityIconContainer")
CoD.HeroWeaponContainerProtoUtil = {}
local function __FUNC_43A_(arg0, arg1)
	arg0.HeroWeaponRing.greyProgressTarget = 0.000000
	arg0.allowChanges = true
	local function __FUNC_53D_(arg2)
		local registerVal1 = Engine.GetModelValue(arg2)
		if registerVal1 then
			local registerVal3 = IsHeroWeaponThiefGadget(arg1)
			if registerVal3 then
				arg0.HeroWeaponRing.HeroRingFillImage:setShaderVector(0.000000, registerVal1, 0.000000, 0.000000, 0.000000)
			end
			if registerVal1 < (arg0.HeroWeaponRing.greyProgressTarget + 0.025000) then
				if arg0.allowChanges then
					arg0.HeroWeaponRing.HeroRingFillImage:setShaderVector(0.000000, registerVal1, 0.000000, 0.000000, 0.000000)
				end
				arg0.HeroWeaponRing.greyProgressTarget = registerVal1
			else
				arg0.HeroWeaponRing.greyProgressTarget = registerVal1
				local function __FUNC_889_(arg1, arg2)
					arg0.allowChanges = true
					if arg2.interrupted then
						arg1:setShaderVector(0.000000, arg0.HeroWeaponRing.greyProgressTarget, 0.000000, 0.000000, 0.000000)
						return 
					end
					local function __FUNC_AA1_(arg0, arg1)
						if arg1.interrupted then
							return 
						end
						arg0:registerEventHandler("transition_complete_keyframe", nil)
					end

					arg1:beginAnimation("keyframe", 0.000000, false, false, CoD.TweenType.Linear)
					arg1:setShaderVector(0.000000, arg0.HeroWeaponRing.greyProgressTarget, 0.000000, 0.000000, 0.000000)
					arg1:registerEventHandler("transition_complete_keyframe", __FUNC_AA1_)
				end

				arg0.allowChanges = false
				arg0.HeroWeaponRing.HeroRingFillImage:beginAnimation("keyframe", 0.000000, false, false, CoD.TweenType.Linear)
				arg0.HeroWeaponRing.HeroRingFillImage:registerEventHandler("transition_complete_keyframe", __FUNC_889_)
			end
		end
	end

	arg0.HeroWeaponRing:subscribeToGlobalModel(arg1, "HeroWeapon", "powerRatio", __FUNC_53D_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_HeroAbilityContainer = registerVal2
local function __FUNC_B4D_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_HeroAbilityContainer)
	registerVal2.id = "AmmoWidget_HeroAbilityContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -34.170000, 36.170000)
	registerVal3:setTopBottom(false, false, -35.170000, 35.170000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.500000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_incomingexplosive_glow"))
	registerVal2:addElement(registerVal3)
	registerVal2.MaskGlow = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 17.000000, 105.000000)
	registerVal4:setTopBottom(true, false, 16.000000, 104.000000)
	registerVal4:setRGB(0.730000, 0.430000, 0.000000)
	registerVal4:setAlpha(0.900000)
	registerVal4:setZoom(-5.000000)
	registerVal4:setImage(RegisterImage("uie_t7_core_hud_ammowidget_heroringedgeglow"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.EdgeGlow = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -45.500000, 43.500000)
	registerVal5:setTopBottom(false, false, -44.000000, 45.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.200000)
	registerVal5:setImage(RegisterImage("uie_t7_cp_hud_incomingexplosive_glow"))
	registerVal2:addElement(registerVal5)
	registerVal2.BlackShadow = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 23.000000, 99.000000)
	registerVal6:setTopBottom(true, false, 22.000000, 98.000000)
	registerVal6:setRGB(0.980000, 0.670000, 0.000000)
	registerVal6:setAlpha(0.700000)
	registerVal6:setZoom(-11.000000)
	registerVal6:setImage(RegisterImage("uie_t7_core_hud_ammowidget_heroringbackingglow"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.ReadyImage = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 5.000000, 117.000000)
	registerVal7:setTopBottom(true, false, 4.000000, 116.000000)
	registerVal7:setRGB(0.950000, 0.580000, 0.190000)
	registerVal7:setZoom(-5.000000)
	registerVal7:setImage(RegisterImage("uie_t7_core_hud_ammowidget_heroringcircleoutter"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.CircleOutter = registerVal7
	local registerVal8 = CoD.AmmoWidgetMP_AbilityRingBackDeplete.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal8:setRGB(0.280000, 0.130000, 0.000000)
	registerVal8:setAlpha(0.700000)
	registerVal8:setYRot(-180.000000)
	registerVal8:setZRot(87.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.AbilityRingBackDuplicate = registerVal8
	local registerVal9 = CoD.AmmoWidgetMP_AbilityRingBackDeplete.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, 5.500000, -5.500000)
	registerVal9:setTopBottom(true, true, 5.500000, -5.500000)
	registerVal9:setRGB(0.840000, 0.630000, 0.210000)
	registerVal2:addElement(registerVal9)
	registerVal2.AbilityRingBackDeplete = registerVal9
	local registerVal10 = CoD.AmmoWidget_HeroAbilityRingBack.new(arg0, arg1)
	registerVal10:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal10:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal10:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal10:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.AbilityRingBack = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, true, 14.000000, -14.000000)
	registerVal11:setTopBottom(true, true, 14.000000, -14.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setImage(RegisterImage("uie_t7_core_hud_ammowidget_bj_ringbg"))
	registerVal2:addElement(registerVal11)
	registerVal2.ThiefRingBG = registerVal11
	local registerVal12 = CoD.AmmoWidget_HeroAbilityRing.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal12:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal12:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal12:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
	registerVal12:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal12:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal12:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal12:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local registerVal15 = {}
	local registerVal16 = {}
	registerVal16.stateName = "ReadyGadget"
	local function __FUNC_28CD_(arg0, arg2, arg3)
		return IsHeroWeaponOrSpecialGadgetAvailable(arg0, arg1)
	end

	registerVal16.condition = __FUNC_28CD_
	local registerVal17 = {}
	registerVal17.stateName = "ChargeThief"
	local function __FUNC_293A_(arg0, arg2, arg3)
		local registerVal3 = IsHeroWeaponOrGadgetInUseOrContextualWeaponActive(arg0, arg1)
		if not registerVal3 then
			registerVal3 = IsHeroWeaponThiefGadget(arg1)
		else
		end
		return true
	end

	registerVal17.condition = __FUNC_293A_
	local registerVal18 = {}
	registerVal18.stateName = "Charge"
	local function __FUNC_29F4_(arg0, arg2, arg3)
		local registerVal3 = IsHeroWeaponOrGadgetInUseOrContextualWeaponActive(arg0, arg1)
		return (not registerVal3)
	end

	registerVal18.condition = __FUNC_29F4_
	local registerVal19 = {}
	registerVal19.stateName = "InUseGadget"
	local function __FUNC_2A73_(arg0, arg2, arg3)
		local registerVal3 = IsHeroWeaponOrGadgetInUseOrContextualWeaponActive(arg0, arg1)
		if registerVal3 then
			registerVal3 = IsHeroWeaponOrGadgetEnergyAtLeast(arg1, 0.250000)
		end
		return registerVal3
	end

	registerVal19.condition = __FUNC_2A73_
	local registerVal20 = {}
	registerVal20.stateName = "InUseGadgetMed"
	local function __FUNC_2B33_(arg0, arg2, arg3)
		local registerVal3 = IsHeroWeaponOrGadgetInUseOrContextualWeaponActive(arg0, arg1)
		if registerVal3 then
			registerVal3 = IsHeroWeaponOrGadgetEnergyAtLeast(arg1, 0.100000)
		end
		return registerVal3
	end

	registerVal20.condition = __FUNC_2B33_
	local registerVal21 = {}
	registerVal21.stateName = "InUseGadgetLow"
	local function __FUNC_2BF3_(arg0, arg2, arg3)
		return IsHeroWeaponOrGadgetInUseOrContextualWeaponActive(arg0, arg1)
	end

	registerVal21.condition = __FUNC_2BF3_
	registerVal15 = {registerVal16, registerVal17, registerVal18, registerVal19, registerVal20, registerVal21}
	registerVal12:mergeStateConditions(registerVal15)
	registerVal16 = Engine.GetModelForController(arg1)
	registerVal15 = Engine.GetModel(registerVal16, "playerAbilities.playerGadget3.powerRatio")
	local function __FUNC_2C6B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.powerRatio"
		arg0:updateElementState(registerVal12, registerVal4)
	end

	registerVal12:subscribeToModel(registerVal15, __FUNC_2C6B_)
	registerVal16 = Engine.GetModelForController(arg1)
	registerVal15 = Engine.GetModel(registerVal16, "playerAbilities.playerGadget3.ammo")
	local function __FUNC_2DA6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.ammo"
		arg0:updateElementState(registerVal12, registerVal4)
	end

	registerVal12:subscribeToModel(registerVal15, __FUNC_2DA6_)
	registerVal16 = Engine.GetModelForController(arg1)
	registerVal15 = Engine.GetModel(registerVal16, "currentWeapon.weapon")
	local function __FUNC_2EDC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.weapon"
		arg0:updateElementState(registerVal12, registerVal4)
	end

	registerVal12:subscribeToModel(registerVal15, __FUNC_2EDC_)
	registerVal16 = Engine.GetModelForController(arg1)
	registerVal15 = Engine.GetModel(registerVal16, "playerAbilities.playerGadget3.isInUse")
	local function __FUNC_3006_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.isInUse"
		arg0:updateElementState(registerVal12, registerVal4)
	end

	registerVal12:subscribeToModel(registerVal15, __FUNC_3006_)
	registerVal16 = Engine.GetModelForController(arg1)
	registerVal15 = Engine.GetModel(registerVal16, "playerAbilities.playerGadget3.name")
	local function __FUNC_313F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.name"
		arg0:updateElementState(registerVal12, registerVal4)
	end

	registerVal12:subscribeToModel(registerVal15, __FUNC_313F_)
	registerVal2:addElement(registerVal12)
	registerVal2.HeroWeaponRing = registerVal12
	local registerVal13 = CoD.AmmoWidget_AbilityGlow.new(arg0, arg1)
	registerVal13:setLeftRight(true, true, 4.000000, -4.000000)
	registerVal13:setTopBottom(true, true, 4.000000, -4.000000)
	registerVal13:setRGB(1.000000, 0.790000, 0.150000)
	registerVal13:setAlpha(0.050000)
	registerVal2:addElement(registerVal13)
	registerVal2.Glow = registerVal13
	local registerVal14 = CoD.AmmoWidget_HeroAbilityRingPulse.new(arg0, arg1)
	registerVal14:setLeftRight(true, true, 3.000000, -3.000000)
	registerVal14:setTopBottom(true, true, 3.000000, -3.000000)
	registerVal14:setAlpha(0.000000)
	registerVal17 = {}
	registerVal18 = {}
	registerVal18.stateName = "Ready"
	local function __FUNC_3274_(arg0, arg2, arg3)
		local registerVal3 = IsHeroWeaponGadgetAmmoEmpty(arg0, arg1)
		registerVal3 = IsHeroWeaponGadgetCurrentWeapon(arg0, arg1)
		if not registerVal3 and not registerVal3 then
			registerVal3 = IsHeroWeaponOrSpecialGadgetAvailable(arg0, arg1)
		else
		end
		return true
	end

	registerVal18.condition = __FUNC_3274_
	registerVal17 = {registerVal18}
	registerVal14:mergeStateConditions(registerVal17)
	registerVal18 = Engine.GetModelForController(arg1)
	registerVal17 = Engine.GetModel(registerVal18, "playerAbilities.playerGadget3.ammo")
	local function __FUNC_336C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.ammo"
		arg0:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:subscribeToModel(registerVal17, __FUNC_336C_)
	registerVal18 = Engine.GetModelForController(arg1)
	registerVal17 = Engine.GetModel(registerVal18, "playerAbilities.playerGadget3.isInUse")
	local function __FUNC_34A4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.isInUse"
		arg0:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:subscribeToModel(registerVal17, __FUNC_34A4_)
	registerVal18 = Engine.GetModelForController(arg1)
	registerVal17 = Engine.GetModel(registerVal18, "playerAbilities.playerGadget3.powerRatio")
	local function __FUNC_35DF_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.powerRatio"
		arg0:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:subscribeToModel(registerVal17, __FUNC_35DF_)
	registerVal2:addElement(registerVal14)
	registerVal2.HeroWeaponPulse = registerVal14
	registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(false, false, -60.000000, 60.000000)
	registerVal15:setTopBottom(false, false, -53.500000, 54.500000)
	registerVal15:setRGB(1.000000, 0.850000, 0.000000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setImage(RegisterImage("uie_img_t7_hud_cm_herobackingglow"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.HeroBackgroundGlowImage = registerVal15
	registerVal16 = CoD.AmmoWidget_HeroAbilityIconContainer.new(arg0, arg1)
	registerVal16:setLeftRight(true, true, 34.150000, -30.990000)
	registerVal16:setTopBottom(true, true, 27.010000, -27.000000)
	registerVal2:addElement(registerVal16)
	registerVal2.AbilityIconContainer = registerVal16
	registerVal17 = {}
	registerVal18 = {}
	local function __FUNC_371A_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.MaskGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.EdgeGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BlackShadow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ReadyImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.CircleOutter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.AbilityRingBack:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ThiefRingBG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.HeroWeaponRing:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.HeroWeaponRing:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.HeroWeaponPulse:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.HeroBackgroundGlowImage:setRGB(1.000000, 0.850000, 0.000000)
		registerVal2.HeroBackgroundGlowImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.AbilityIconContainer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_371A_
	registerVal17.DefaultState = registerVal18
	registerVal18 = {}
	local function __FUNC_3D2D_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.MaskGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.EdgeGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BlackShadow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ReadyImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.CircleOutter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.AbilityRingBack:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ThiefRingBG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.HeroWeaponRing:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.HeroWeaponPulse:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.HeroBackgroundGlowImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.AbilityIconContainer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_3D2D_
	registerVal17.HideSpecialistAbility = registerVal18
	registerVal18 = {}
	local function __FUNC_42DF_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.MaskGlow:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.EdgeGlow:setRGB(0.730000, 0.430000, 0.000000)
		registerVal2.EdgeGlow:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BlackShadow:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ReadyImage:setRGB(0.980000, 0.670000, 0.000000)
		registerVal2.ReadyImage:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.CircleOutter:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.CircleOutter:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setRGB(0.280000, 0.130000, 0.000000)
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setRGB(0.840000, 0.630000, 0.210000)
		registerVal2.AbilityRingBackDeplete:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.AbilityRingBack:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.AbilityRingBack:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ThiefRingBG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.HeroWeaponRing:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.HeroWeaponRing:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 0.790000, 0.150000)
		registerVal2.Glow:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.HeroWeaponPulse:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.HeroBackgroundGlowImage:setLeftRight(false, false, -60.000000, 60.000000)
		registerVal2.HeroBackgroundGlowImage:setTopBottom(false, false, -53.500000, 54.500000)
		registerVal2.HeroBackgroundGlowImage:setRGB(1.000000, 0.850000, 0.000000)
		registerVal2.HeroBackgroundGlowImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.AbilityIconContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_42DF_
	local function __FUNC_4ADC_()
		registerVal2:setupElementClipCounter(13.000000)
		local function __FUNC_522F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.MaskGlow:setAlpha(0.500000)
		__FUNC_522F_(registerVal3, {})
		local function __FUNC_53E1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 449.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.730000, 0.430000, 0.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.EdgeGlow:setRGB(0.730000, 0.430000, 0.000000)
		registerVal2.EdgeGlow:setAlpha(0.900000)
		__FUNC_53E1_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BlackShadow:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_55C3_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.980000, 0.670000, 0.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.ReadyImage:setRGB(0.980000, 0.670000, 0.000000)
		registerVal2.ReadyImage:setAlpha(0.700000)
		__FUNC_55C3_(registerVal6, {})
		local function __FUNC_57A3_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.950000, 0.580000, 0.190000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.CircleOutter:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.CircleOutter:setAlpha(1.000000)
		__FUNC_57A3_(registerVal7, {})
		local function __FUNC_5988_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.280000, 0.130000, 0.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setRGB(0.280000, 0.130000, 0.000000)
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.000000)
		__FUNC_5988_(registerVal8, {})
		local function __FUNC_5B6B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.840000, 0.630000, 0.210000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setRGB(0.840000, 0.630000, 0.210000)
		registerVal2.AbilityRingBackDeplete:setAlpha(0.000000)
		__FUNC_5B6B_(registerVal9, {})
		local function __FUNC_5D50_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.AbilityRingBack:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.AbilityRingBack:setAlpha(0.000000)
		__FUNC_5D50_(registerVal10, {})
		local function __FUNC_5F2E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.HeroWeaponRing:setAlpha(1.000000)
		__FUNC_5F2E_(registerVal12, {})
		local function __FUNC_60E1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(1.000000, 0.790000, 0.150000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 0.790000, 0.150000)
		registerVal2.Glow:setAlpha(0.300000)
		__FUNC_60E1_(registerVal13, {})
		local function __FUNC_62C8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.HeroWeaponPulse:setAlpha(0.500000)
		__FUNC_62C8_(registerVal14, {})
		local function __FUNC_647D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(false, false, -60.000000, 60.000000)
			arg0:setTopBottom(false, false, -53.500000, 54.500000)
			arg0:setRGB(1.000000, 0.850000, 0.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.HeroBackgroundGlowImage:setLeftRight(false, false, -60.000000, 60.000000)
		registerVal2.HeroBackgroundGlowImage:setTopBottom(false, false, -53.500000, 54.500000)
		registerVal2.HeroBackgroundGlowImage:setRGB(1.000000, 0.850000, 0.000000)
		registerVal2.HeroBackgroundGlowImage:setAlpha(0.000000)
		__FUNC_647D_(registerVal15, {})
		local function __FUNC_66CF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.AbilityIconContainer:setAlpha(1.000000)
		__FUNC_66CF_(registerVal16, {})
	end

	registerVal18.Charge = __FUNC_4ADC_
	local function __FUNC_6881_()
		registerVal2:setupElementClipCounter(13.000000)
		local function __FUNC_6FD7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 629.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.MaskGlow:setAlpha(0.500000)
		__FUNC_6FD7_(registerVal3, {})
		local function __FUNC_7189_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 479.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.730000, 0.430000, 0.000000)
			arg0:setAlpha(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.EdgeGlow:setRGB(0.730000, 0.430000, 0.000000)
		registerVal2.EdgeGlow:setAlpha(0.900000)
		__FUNC_7189_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BlackShadow:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ReadyImage:setRGB(0.980000, 0.670000, 0.000000)
		registerVal2.ReadyImage:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_7370_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 540.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.950000, 0.580000, 0.190000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.CircleOutter:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.CircleOutter:setAlpha(1.000000)
		__FUNC_7370_(registerVal7, {})
		local function __FUNC_7558_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 829.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.280000, 0.130000, 0.000000)
			arg0:setAlpha(0.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setRGB(0.280000, 0.130000, 0.000000)
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.000000)
		__FUNC_7558_(registerVal8, {})
		local function __FUNC_7740_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 1110.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.840000, 0.630000, 0.210000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setRGB(0.840000, 0.630000, 0.210000)
		registerVal2.AbilityRingBackDeplete:setAlpha(0.000000)
		__FUNC_7740_(registerVal9, {})
		local function __FUNC_7928_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.AbilityRingBack:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.AbilityRingBack:setAlpha(0.000000)
		__FUNC_7928_(registerVal10, {})
		local function __FUNC_7B01_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 540.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.HeroWeaponRing:setAlpha(1.000000)
		__FUNC_7B01_(registerVal12, {})
		local function __FUNC_7CB5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(1.000000, 0.790000, 0.150000)
			arg0:setAlpha(0.050000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 0.790000, 0.150000)
		registerVal2.Glow:setAlpha(0.300000)
		__FUNC_7CB5_(registerVal13, {})
		local function __FUNC_7E9C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.HeroWeaponPulse:setAlpha(0.500000)
		__FUNC_7E9C_(registerVal14, {})
		local function __FUNC_8051_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 790.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(false, false, -60.000000, 60.000000)
			arg0:setTopBottom(false, false, -53.500000, 54.500000)
			arg0:setRGB(1.000000, 0.850000, 0.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.HeroBackgroundGlowImage:setLeftRight(false, false, -60.000000, 60.000000)
		registerVal2.HeroBackgroundGlowImage:setTopBottom(false, false, -53.500000, 54.500000)
		registerVal2.HeroBackgroundGlowImage:setRGB(1.000000, 0.850000, 0.000000)
		registerVal2.HeroBackgroundGlowImage:setAlpha(0.000000)
		__FUNC_8051_(registerVal15, {})
		local function __FUNC_82A3_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 550.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.AbilityIconContainer:setAlpha(1.000000)
		__FUNC_82A3_(registerVal16, {})
	end

	registerVal18.InUse = __FUNC_6881_
	registerVal17.Ready = registerVal18
	registerVal18 = {}
	local function __FUNC_8455_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.MaskGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.EdgeGlow:setRGB(0.730000, 0.430000, 0.000000)
		registerVal2.EdgeGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BlackShadow:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ReadyImage:setRGB(0.980000, 0.670000, 0.000000)
		registerVal2.ReadyImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.CircleOutter:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.CircleOutter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setRGB(0.280000, 0.130000, 0.000000)
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setRGB(0.840000, 0.630000, 0.210000)
		registerVal2.AbilityRingBackDeplete:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.AbilityRingBack:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.AbilityRingBack:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ThiefRingBG:setAlpha(0.350000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.HeroWeaponRing:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.HeroWeaponRing:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 0.790000, 0.150000)
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.HeroWeaponPulse:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.HeroBackgroundGlowImage:setRGB(1.000000, 0.850000, 0.000000)
		registerVal2.HeroBackgroundGlowImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.AbilityIconContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_8455_
	local function __FUNC_8BB5_()
		registerVal2:setupElementClipCounter(14.000000)
		local function __FUNC_934C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.MaskGlow:setAlpha(0.000000)
		__FUNC_934C_(registerVal3, {})
		local function __FUNC_9501_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.730000, 0.430000, 0.000000)
			arg0:setAlpha(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.EdgeGlow:setRGB(0.730000, 0.430000, 0.000000)
		registerVal2.EdgeGlow:setAlpha(0.000000)
		__FUNC_9501_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BlackShadow:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_96E8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.980000, 0.670000, 0.000000)
			arg0:setAlpha(0.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.ReadyImage:setRGB(0.980000, 0.670000, 0.000000)
		registerVal2.ReadyImage:setAlpha(0.000000)
		__FUNC_96E8_(registerVal6, {})
		local function __FUNC_98D0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.950000, 0.580000, 0.190000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.CircleOutter:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.CircleOutter:setAlpha(0.000000)
		__FUNC_98D0_(registerVal7, {})
		local function __FUNC_9AB8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.280000, 0.130000, 0.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setRGB(0.280000, 0.130000, 0.000000)
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.000000)
		__FUNC_9AB8_(registerVal8, {})
		local function __FUNC_9C9B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.840000, 0.630000, 0.210000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setRGB(0.840000, 0.630000, 0.210000)
		registerVal2.AbilityRingBackDeplete:setAlpha(0.000000)
		__FUNC_9C9B_(registerVal9, {})
		local function __FUNC_9E80_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.AbilityRingBack:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.AbilityRingBack:setAlpha(0.000000)
		__FUNC_9E80_(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ThiefRingBG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		local function __FUNC_A05E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.HeroWeaponRing:setAlpha(1.000000)
		__FUNC_A05E_(registerVal12, {})
		local function __FUNC_A211_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(1.000000, 0.790000, 0.150000)
			arg0:setAlpha(0.300000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 0.790000, 0.150000)
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_A211_(registerVal13, {})
		local function __FUNC_A3F8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.HeroWeaponPulse:setAlpha(0.000000)
		__FUNC_A3F8_(registerVal14, {})
		local function __FUNC_A5AD_(arg0, arg1)
			local function __FUNC_A727_(arg0, arg1)
				local function __FUNC_A89F_(arg0, arg1)
					local function __FUNC_A9F4_(arg0, arg1)
						local function __FUNC_AB6F_(arg0, arg1)
							local function __FUNC_ACE7_(arg0, arg1)
								local function __FUNC_AE5F_(arg0, arg1)
									local function __FUNC_AFB4_(arg0, arg1)
										local function __FUNC_B12F_(arg0, arg1)
											local function __FUNC_B2A7_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setLeftRight(false, false, -84.330000, 84.330000)
												arg0:setTopBottom(false, false, -74.900000, 76.900000)
												arg0:setRGB(1.000000, 0.850000, 0.000000)
												arg0:setAlpha(0.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_B2A7_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 270.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B2A7_)
										end

										if arg1.interrupted then
											__FUNC_B12F_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B12F_)
									end

									if arg1.interrupted then
										__FUNC_AFB4_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AFB4_)
								end

								if arg1.interrupted then
									__FUNC_AE5F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AE5F_)
							end

							if arg1.interrupted then
								__FUNC_ACE7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.970000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ACE7_)
						end

						if arg1.interrupted then
							__FUNC_AB6F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AB6F_)
					end

					if arg1.interrupted then
						__FUNC_A9F4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A9F4_)
				end

				if arg1.interrupted then
					__FUNC_A89F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.400000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A89F_)
			end

			if arg1.interrupted then
				__FUNC_A727_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A727_)
		end

		registerVal15:completeAnimation()
		registerVal2.HeroBackgroundGlowImage:setLeftRight(false, false, -60.000000, 60.000000)
		registerVal2.HeroBackgroundGlowImage:setTopBottom(false, false, -53.500000, 54.500000)
		registerVal2.HeroBackgroundGlowImage:setRGB(1.000000, 0.850000, 0.000000)
		registerVal2.HeroBackgroundGlowImage:setAlpha(0.000000)
		__FUNC_A5AD_(registerVal15, {})
		local function __FUNC_B4F7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.AbilityIconContainer:setAlpha(1.000000)
		__FUNC_B4F7_(registerVal16, {})
	end

	registerVal18.Ready = __FUNC_8BB5_
	local function __FUNC_B6A9_()
		registerVal2:setupElementClipCounter(14.000000)
		local function __FUNC_BDB0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.MaskGlow:setAlpha(0.000000)
		__FUNC_BDB0_(registerVal3, {})
		local function __FUNC_BF65_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.730000, 0.430000, 0.000000)
			arg0:setAlpha(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.EdgeGlow:setRGB(0.730000, 0.430000, 0.000000)
		registerVal2.EdgeGlow:setAlpha(0.000000)
		__FUNC_BF65_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BlackShadow:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_C14C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.980000, 0.670000, 0.000000)
			arg0:setAlpha(0.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.ReadyImage:setRGB(0.980000, 0.670000, 0.000000)
		registerVal2.ReadyImage:setAlpha(0.000000)
		__FUNC_C14C_(registerVal6, {})
		local function __FUNC_C334_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.950000, 0.580000, 0.190000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.CircleOutter:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.CircleOutter:setAlpha(0.000000)
		__FUNC_C334_(registerVal7, {})
		local function __FUNC_C51C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.280000, 0.130000, 0.000000)
			arg0:setAlpha(0.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setRGB(0.280000, 0.130000, 0.000000)
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.000000)
		__FUNC_C51C_(registerVal8, {})
		local function __FUNC_C704_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.840000, 0.630000, 0.210000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setRGB(0.840000, 0.630000, 0.210000)
		registerVal2.AbilityRingBackDeplete:setAlpha(0.000000)
		__FUNC_C704_(registerVal9, {})
		local function __FUNC_C8EC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.AbilityRingBack:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.AbilityRingBack:setAlpha(0.000000)
		__FUNC_C8EC_(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ThiefRingBG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		local function __FUNC_CAC5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.HeroWeaponRing:setAlpha(1.000000)
		__FUNC_CAC5_(registerVal12, {})
		local function __FUNC_CC79_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(1.000000, 0.790000, 0.150000)
			arg0:setAlpha(0.050000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 0.790000, 0.150000)
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_CC79_(registerVal13, {})
		local function __FUNC_CE60_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.HeroWeaponPulse:setAlpha(0.000000)
		__FUNC_CE60_(registerVal14, {})
		local function __FUNC_D015_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(1.000000, 0.850000, 0.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.HeroBackgroundGlowImage:setRGB(1.000000, 0.850000, 0.000000)
		registerVal2.HeroBackgroundGlowImage:setAlpha(0.000000)
		__FUNC_D015_(registerVal15, {})
		local function __FUNC_D1F7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.AbilityIconContainer:setAlpha(1.000000)
		__FUNC_D1F7_(registerVal16, {})
	end

	registerVal18.InUse = __FUNC_B6A9_
	registerVal17.ChargeThief = registerVal18
	registerVal18 = {}
	local function __FUNC_D3A9_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.MaskGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.EdgeGlow:setRGB(0.730000, 0.430000, 0.000000)
		registerVal2.EdgeGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BlackShadow:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ReadyImage:setRGB(0.980000, 0.670000, 0.000000)
		registerVal2.ReadyImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.CircleOutter:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.CircleOutter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setRGB(0.280000, 0.130000, 0.000000)
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setRGB(0.840000, 0.630000, 0.210000)
		registerVal2.AbilityRingBackDeplete:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.AbilityRingBack:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.AbilityRingBack:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ThiefRingBG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.HeroWeaponRing:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.HeroWeaponRing:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 0.790000, 0.150000)
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.HeroWeaponPulse:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.HeroBackgroundGlowImage:setRGB(1.000000, 0.850000, 0.000000)
		registerVal2.HeroBackgroundGlowImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.AbilityIconContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_D3A9_
	local function __FUNC_DB04_()
		registerVal2:setupElementClipCounter(13.000000)
		local function __FUNC_E2F0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.MaskGlow:setAlpha(0.000000)
		__FUNC_E2F0_(registerVal3, {})
		local function __FUNC_E4A5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 399.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.730000, 0.430000, 0.000000)
			arg0:setAlpha(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
		registerVal4:setRGB(0.730000, 0.430000, 0.000000)
		registerVal4:setAlpha(0.000000)
		registerVal4:registerEventHandler("transition_complete_keyframe", __FUNC_E4A5_)
		registerVal5:completeAnimation()
		registerVal2.BlackShadow:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_E68C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 399.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.980000, 0.670000, 0.000000)
			arg0:setAlpha(0.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
		registerVal6:setRGB(0.980000, 0.670000, 0.000000)
		registerVal6:setAlpha(0.000000)
		registerVal6:registerEventHandler("transition_complete_keyframe", __FUNC_E68C_)
		local function __FUNC_E874_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.950000, 0.580000, 0.190000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.CircleOutter:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.CircleOutter:setAlpha(0.000000)
		__FUNC_E874_(registerVal7, {})
		local function __FUNC_EA5C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.280000, 0.130000, 0.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setRGB(0.280000, 0.130000, 0.000000)
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.000000)
		__FUNC_EA5C_(registerVal8, {})
		local function __FUNC_EC3F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.840000, 0.630000, 0.210000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setRGB(0.840000, 0.630000, 0.210000)
		registerVal2.AbilityRingBackDeplete:setAlpha(0.000000)
		__FUNC_EC3F_(registerVal9, {})
		local function __FUNC_EE24_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.AbilityRingBack:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.AbilityRingBack:setAlpha(0.000000)
		__FUNC_EE24_(registerVal10, {})
		local function __FUNC_F002_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.HeroWeaponRing:setAlpha(1.000000)
		__FUNC_F002_(registerVal12, {})
		local function __FUNC_F1B5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(1.000000, 0.790000, 0.150000)
			arg0:setAlpha(0.300000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 0.790000, 0.150000)
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_F1B5_(registerVal13, {})
		local function __FUNC_F39C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.HeroWeaponPulse:setAlpha(0.000000)
		__FUNC_F39C_(registerVal14, {})
		local function __FUNC_F551_(arg0, arg1)
			local function __FUNC_F6CB_(arg0, arg1)
				local function __FUNC_F843_(arg0, arg1)
					local function __FUNC_F998_(arg0, arg1)
						local function __FUNC_FB13_(arg0, arg1)
							local function __FUNC_FC8B_(arg0, arg1)
								local function __FUNC_FE03_(arg0, arg1)
									local function __FUNC_FF58_(arg0, arg1)
										local function __FUNC_100D3_(arg0, arg1)
											local function __FUNC_1024B_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setLeftRight(false, false, -84.330000, 84.330000)
												arg0:setTopBottom(false, false, -74.900000, 76.900000)
												arg0:setRGB(1.000000, 0.850000, 0.000000)
												arg0:setAlpha(0.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_1024B_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 270.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1024B_)
										end

										if arg1.interrupted then
											__FUNC_100D3_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_100D3_)
									end

									if arg1.interrupted then
										__FUNC_FF58_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FF58_)
								end

								if arg1.interrupted then
									__FUNC_FE03_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FE03_)
							end

							if arg1.interrupted then
								__FUNC_FC8B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.970000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FC8B_)
						end

						if arg1.interrupted then
							__FUNC_FB13_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FB13_)
					end

					if arg1.interrupted then
						__FUNC_F998_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F998_)
				end

				if arg1.interrupted then
					__FUNC_F843_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.400000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F843_)
			end

			if arg1.interrupted then
				__FUNC_F6CB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F6CB_)
		end

		registerVal15:completeAnimation()
		registerVal2.HeroBackgroundGlowImage:setLeftRight(false, false, -60.000000, 60.000000)
		registerVal2.HeroBackgroundGlowImage:setTopBottom(false, false, -53.500000, 54.500000)
		registerVal2.HeroBackgroundGlowImage:setRGB(1.000000, 0.850000, 0.000000)
		registerVal2.HeroBackgroundGlowImage:setAlpha(0.000000)
		__FUNC_F551_(registerVal15, {})
		local function __FUNC_1049B_(arg0, arg1)
			local function __FUNC_10613_(arg0, arg1)
				local function __FUNC_10768_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 399.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_10768_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 530.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10768_)
			end

			if arg1.interrupted then
				__FUNC_10613_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10613_)
		end

		registerVal16:completeAnimation()
		registerVal2.AbilityIconContainer:setAlpha(1.000000)
		__FUNC_1049B_(registerVal16, {})
	end

	registerVal18.Ready = __FUNC_DB04_
	local function __FUNC_1091D_()
		registerVal2:setupElementClipCounter(13.000000)
		local function __FUNC_10FCB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.MaskGlow:setAlpha(0.000000)
		__FUNC_10FCB_(registerVal3, {})
		local function __FUNC_1117D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.730000, 0.430000, 0.000000)
			arg0:setAlpha(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.EdgeGlow:setRGB(0.730000, 0.430000, 0.000000)
		registerVal2.EdgeGlow:setAlpha(0.000000)
		__FUNC_1117D_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BlackShadow:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_11364_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.980000, 0.670000, 0.000000)
			arg0:setAlpha(0.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.ReadyImage:setRGB(0.980000, 0.670000, 0.000000)
		registerVal2.ReadyImage:setAlpha(0.000000)
		__FUNC_11364_(registerVal6, {})
		local function __FUNC_1154C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.950000, 0.580000, 0.190000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.CircleOutter:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.CircleOutter:setAlpha(0.000000)
		__FUNC_1154C_(registerVal7, {})
		local function __FUNC_11734_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.280000, 0.130000, 0.000000)
			arg0:setAlpha(0.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setRGB(0.280000, 0.130000, 0.000000)
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.000000)
		__FUNC_11734_(registerVal8, {})
		local function __FUNC_1191C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.840000, 0.630000, 0.210000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setRGB(0.840000, 0.630000, 0.210000)
		registerVal2.AbilityRingBackDeplete:setAlpha(0.000000)
		__FUNC_1191C_(registerVal9, {})
		local function __FUNC_11B04_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.AbilityRingBack:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.AbilityRingBack:setAlpha(0.000000)
		__FUNC_11B04_(registerVal10, {})
		local function __FUNC_11CDD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.HeroWeaponRing:setAlpha(1.000000)
		__FUNC_11CDD_(registerVal12, {})
		local function __FUNC_11E91_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(1.000000, 0.790000, 0.150000)
			arg0:setAlpha(0.050000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 0.790000, 0.150000)
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_11E91_(registerVal13, {})
		local function __FUNC_12078_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.HeroWeaponPulse:setAlpha(0.000000)
		__FUNC_12078_(registerVal14, {})
		local function __FUNC_1222D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(1.000000, 0.850000, 0.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.HeroBackgroundGlowImage:setRGB(1.000000, 0.850000, 0.000000)
		registerVal2.HeroBackgroundGlowImage:setAlpha(0.000000)
		__FUNC_1222D_(registerVal15, {})
		local function __FUNC_1240F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.AbilityIconContainer:setAlpha(1.000000)
		__FUNC_1240F_(registerVal16, {})
	end

	registerVal18.InUse = __FUNC_1091D_
	registerVal17.ChargeGambler = registerVal18
	registerVal18 = {}
	local function __FUNC_125C1_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.MaskGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.EdgeGlow:setRGB(0.730000, 0.430000, 0.000000)
		registerVal2.EdgeGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BlackShadow:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ReadyImage:setRGB(0.980000, 0.670000, 0.000000)
		registerVal2.ReadyImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.CircleOutter:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.CircleOutter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setRGB(0.280000, 0.130000, 0.000000)
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setRGB(0.840000, 0.630000, 0.210000)
		registerVal2.AbilityRingBackDeplete:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.AbilityRingBack:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.AbilityRingBack:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ThiefRingBG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.HeroWeaponRing:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.HeroWeaponRing:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 0.790000, 0.150000)
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.HeroWeaponPulse:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.HeroBackgroundGlowImage:setRGB(1.000000, 0.850000, 0.000000)
		registerVal2.HeroBackgroundGlowImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.AbilityIconContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_125C1_
	local function __FUNC_12D1C_()
		registerVal2:setupElementClipCounter(13.000000)
		local function __FUNC_1345B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.MaskGlow:setAlpha(0.000000)
		__FUNC_1345B_(registerVal3, {})
		local function __FUNC_1360D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.730000, 0.430000, 0.000000)
			arg0:setAlpha(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.EdgeGlow:setRGB(0.730000, 0.430000, 0.000000)
		registerVal2.EdgeGlow:setAlpha(0.000000)
		__FUNC_1360D_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BlackShadow:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_137F4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.980000, 0.670000, 0.000000)
			arg0:setAlpha(0.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.ReadyImage:setRGB(0.980000, 0.670000, 0.000000)
		registerVal2.ReadyImage:setAlpha(0.000000)
		__FUNC_137F4_(registerVal6, {})
		local function __FUNC_139DC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.950000, 0.580000, 0.190000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.CircleOutter:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.CircleOutter:setAlpha(0.000000)
		__FUNC_139DC_(registerVal7, {})
		local function __FUNC_13BC4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.280000, 0.130000, 0.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setRGB(0.280000, 0.130000, 0.000000)
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.000000)
		__FUNC_13BC4_(registerVal8, {})
		local function __FUNC_13DA7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.840000, 0.630000, 0.210000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setRGB(0.840000, 0.630000, 0.210000)
		registerVal2.AbilityRingBackDeplete:setAlpha(0.000000)
		__FUNC_13DA7_(registerVal9, {})
		local function __FUNC_13F8C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.AbilityRingBack:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.AbilityRingBack:setAlpha(0.000000)
		__FUNC_13F8C_(registerVal10, {})
		local function __FUNC_1416A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.HeroWeaponRing:setAlpha(1.000000)
		__FUNC_1416A_(registerVal12, {})
		local function __FUNC_1431D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(1.000000, 0.790000, 0.150000)
			arg0:setAlpha(0.300000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 0.790000, 0.150000)
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_1431D_(registerVal13, {})
		local function __FUNC_14504_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.HeroWeaponPulse:setAlpha(0.000000)
		__FUNC_14504_(registerVal14, {})
		local function __FUNC_146B9_(arg0, arg1)
			local function __FUNC_14833_(arg0, arg1)
				local function __FUNC_149AB_(arg0, arg1)
					local function __FUNC_14B00_(arg0, arg1)
						local function __FUNC_14C7B_(arg0, arg1)
							local function __FUNC_14DF3_(arg0, arg1)
								local function __FUNC_14F6B_(arg0, arg1)
									local function __FUNC_150C0_(arg0, arg1)
										local function __FUNC_1523B_(arg0, arg1)
											local function __FUNC_153B3_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setLeftRight(false, false, -84.330000, 84.330000)
												arg0:setTopBottom(false, false, -74.900000, 76.900000)
												arg0:setRGB(1.000000, 0.850000, 0.000000)
												arg0:setAlpha(0.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_153B3_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 270.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_153B3_)
										end

										if arg1.interrupted then
											__FUNC_1523B_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1523B_)
									end

									if arg1.interrupted then
										__FUNC_150C0_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_150C0_)
								end

								if arg1.interrupted then
									__FUNC_14F6B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14F6B_)
							end

							if arg1.interrupted then
								__FUNC_14DF3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.970000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14DF3_)
						end

						if arg1.interrupted then
							__FUNC_14C7B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14C7B_)
					end

					if arg1.interrupted then
						__FUNC_14B00_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14B00_)
				end

				if arg1.interrupted then
					__FUNC_149AB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.400000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_149AB_)
			end

			if arg1.interrupted then
				__FUNC_14833_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14833_)
		end

		registerVal15:completeAnimation()
		registerVal2.HeroBackgroundGlowImage:setLeftRight(false, false, -60.000000, 60.000000)
		registerVal2.HeroBackgroundGlowImage:setTopBottom(false, false, -53.500000, 54.500000)
		registerVal2.HeroBackgroundGlowImage:setRGB(1.000000, 0.850000, 0.000000)
		registerVal2.HeroBackgroundGlowImage:setAlpha(0.000000)
		__FUNC_146B9_(registerVal15, {})
		local function __FUNC_15603_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.AbilityIconContainer:setAlpha(1.000000)
		__FUNC_15603_(registerVal16, {})
	end

	registerVal18.Ready = __FUNC_12D1C_
	local function __FUNC_157B5_()
		registerVal2:setupElementClipCounter(13.000000)
		local function __FUNC_15E63_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.MaskGlow:setAlpha(0.000000)
		__FUNC_15E63_(registerVal3, {})
		local function __FUNC_16015_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.730000, 0.430000, 0.000000)
			arg0:setAlpha(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.EdgeGlow:setRGB(0.730000, 0.430000, 0.000000)
		registerVal2.EdgeGlow:setAlpha(0.000000)
		__FUNC_16015_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BlackShadow:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_161FC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.980000, 0.670000, 0.000000)
			arg0:setAlpha(0.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.ReadyImage:setRGB(0.980000, 0.670000, 0.000000)
		registerVal2.ReadyImage:setAlpha(0.000000)
		__FUNC_161FC_(registerVal6, {})
		local function __FUNC_163E4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.950000, 0.580000, 0.190000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.CircleOutter:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.CircleOutter:setAlpha(0.000000)
		__FUNC_163E4_(registerVal7, {})
		local function __FUNC_165CC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.280000, 0.130000, 0.000000)
			arg0:setAlpha(0.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setRGB(0.280000, 0.130000, 0.000000)
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.000000)
		__FUNC_165CC_(registerVal8, {})
		local function __FUNC_167B4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.840000, 0.630000, 0.210000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setRGB(0.840000, 0.630000, 0.210000)
		registerVal2.AbilityRingBackDeplete:setAlpha(0.000000)
		__FUNC_167B4_(registerVal9, {})
		local function __FUNC_1699C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.AbilityRingBack:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.AbilityRingBack:setAlpha(0.000000)
		__FUNC_1699C_(registerVal10, {})
		local function __FUNC_16B75_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.HeroWeaponRing:setAlpha(1.000000)
		__FUNC_16B75_(registerVal12, {})
		local function __FUNC_16D29_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(1.000000, 0.790000, 0.150000)
			arg0:setAlpha(0.050000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 0.790000, 0.150000)
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_16D29_(registerVal13, {})
		local function __FUNC_16F10_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.HeroWeaponPulse:setAlpha(0.000000)
		__FUNC_16F10_(registerVal14, {})
		local function __FUNC_170C5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(1.000000, 0.850000, 0.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.HeroBackgroundGlowImage:setRGB(1.000000, 0.850000, 0.000000)
		registerVal2.HeroBackgroundGlowImage:setAlpha(0.000000)
		__FUNC_170C5_(registerVal15, {})
		local function __FUNC_172A7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.AbilityIconContainer:setAlpha(1.000000)
		__FUNC_172A7_(registerVal16, {})
	end

	registerVal18.InUse = __FUNC_157B5_
	registerVal17.Charge = registerVal18
	registerVal18 = {}
	local function __FUNC_17459_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.MaskGlow:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.EdgeGlow:setRGB(0.730000, 0.430000, 0.000000)
		registerVal2.EdgeGlow:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BlackShadow:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ReadyImage:setRGB(0.980000, 0.670000, 0.000000)
		registerVal2.ReadyImage:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.CircleOutter:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.CircleOutter:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setRGB(0.280000, 0.130000, 0.000000)
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setRGB(0.840000, 0.630000, 0.210000)
		registerVal2.AbilityRingBackDeplete:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.AbilityRingBack:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.AbilityRingBack:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ThiefRingBG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.HeroWeaponRing:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.HeroWeaponRing:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 0.790000, 0.150000)
		registerVal2.Glow:setAlpha(0.050000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.HeroWeaponPulse:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.HeroBackgroundGlowImage:setRGB(1.000000, 0.850000, 0.000000)
		registerVal2.HeroBackgroundGlowImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.AbilityIconContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_17459_
	local function __FUNC_17BC8_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal3:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
		registerVal3:setAlpha(0.500000)
		registerVal3:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		local function __FUNC_183D8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.730000, 0.430000, 0.000000)
			arg0:setAlpha(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.EdgeGlow:setRGB(0.730000, 0.430000, 0.000000)
		registerVal2.EdgeGlow:setAlpha(0.900000)
		__FUNC_183D8_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BlackShadow:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ReadyImage:setRGB(0.980000, 0.670000, 0.000000)
		registerVal2.ReadyImage:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_185C0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.950000, 0.580000, 0.190000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.CircleOutter:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.CircleOutter:setAlpha(1.000000)
		__FUNC_185C0_(registerVal7, {})
		local function __FUNC_187A8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.280000, 0.130000, 0.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setRGB(0.280000, 0.130000, 0.000000)
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.700000)
		__FUNC_187A8_(registerVal8, {})
		local function __FUNC_1898B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.840000, 0.630000, 0.210000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setRGB(0.840000, 0.630000, 0.210000)
		registerVal2.AbilityRingBackDeplete:setAlpha(1.000000)
		__FUNC_1898B_(registerVal9, {})
		local function __FUNC_18B70_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.AbilityRingBack:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.AbilityRingBack:setAlpha(1.000000)
		__FUNC_18B70_(registerVal10, {})
		local function __FUNC_18D4E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.HeroWeaponRing:setAlpha(1.000000)
		__FUNC_18D4E_(registerVal12, {})
		local function __FUNC_18F01_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 0.790000, 0.150000)
			arg0:setAlpha(0.300000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 0.790000, 0.150000)
		registerVal2.Glow:setAlpha(0.050000)
		__FUNC_18F01_(registerVal13, {})
		local function __FUNC_190E8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.HeroWeaponPulse:setAlpha(0.000000)
		__FUNC_190E8_(registerVal14, {})
		local function __FUNC_1929D_(arg0, arg1)
			local function __FUNC_19417_(arg0, arg1)
				local function __FUNC_1958F_(arg0, arg1)
					local function __FUNC_196E4_(arg0, arg1)
						local function __FUNC_1985F_(arg0, arg1)
							local function __FUNC_199D7_(arg0, arg1)
								local function __FUNC_19B4F_(arg0, arg1)
									local function __FUNC_19CA4_(arg0, arg1)
										local function __FUNC_19E1F_(arg0, arg1)
											local function __FUNC_19F97_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setLeftRight(false, false, -84.330000, 84.330000)
												arg0:setTopBottom(false, false, -74.900000, 76.900000)
												arg0:setRGB(1.000000, 0.850000, 0.000000)
												arg0:setAlpha(0.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_19F97_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 270.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19F97_)
										end

										if arg1.interrupted then
											__FUNC_19E1F_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19E1F_)
									end

									if arg1.interrupted then
										__FUNC_19CA4_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19CA4_)
								end

								if arg1.interrupted then
									__FUNC_19B4F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19B4F_)
							end

							if arg1.interrupted then
								__FUNC_199D7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.970000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_199D7_)
						end

						if arg1.interrupted then
							__FUNC_1985F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1985F_)
					end

					if arg1.interrupted then
						__FUNC_196E4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_196E4_)
				end

				if arg1.interrupted then
					__FUNC_1958F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.400000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1958F_)
			end

			if arg1.interrupted then
				__FUNC_19417_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19417_)
		end

		registerVal15:completeAnimation()
		registerVal2.HeroBackgroundGlowImage:setLeftRight(false, false, -60.000000, 60.000000)
		registerVal2.HeroBackgroundGlowImage:setTopBottom(false, false, -53.500000, 54.500000)
		registerVal2.HeroBackgroundGlowImage:setRGB(1.000000, 0.850000, 0.000000)
		registerVal2.HeroBackgroundGlowImage:setAlpha(0.000000)
		__FUNC_1929D_(registerVal15, {})
		local function __FUNC_1A1E7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.AbilityIconContainer:setAlpha(1.000000)
		__FUNC_1A1E7_(registerVal16, {})
	end

	registerVal18.Ready = __FUNC_17BC8_
	local function __FUNC_1A399_()
		registerVal2:setupElementClipCounter(13.000000)
		local function __FUNC_1AA5B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.MaskGlow:setAlpha(0.500000)
		__FUNC_1AA5B_(registerVal3, {})
		local function __FUNC_1AC0D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 1289.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.730000, 0.430000, 0.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.EdgeGlow:setRGB(0.730000, 0.430000, 0.000000)
		registerVal2.EdgeGlow:setAlpha(0.900000)
		__FUNC_1AC0D_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BlackShadow:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_1ADEF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 1679.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.980000, 0.670000, 0.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.ReadyImage:setRGB(0.980000, 0.670000, 0.000000)
		registerVal2.ReadyImage:setAlpha(0.700000)
		__FUNC_1ADEF_(registerVal6, {})
		local function __FUNC_1AFCF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.950000, 0.580000, 0.190000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.CircleOutter:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.CircleOutter:setAlpha(1.000000)
		__FUNC_1AFCF_(registerVal7, {})
		local function __FUNC_1B1B4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 1059.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.280000, 0.130000, 0.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setRGB(0.280000, 0.130000, 0.000000)
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.700000)
		__FUNC_1B1B4_(registerVal8, {})
		local function __FUNC_1B397_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 779.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.840000, 0.630000, 0.210000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setRGB(0.840000, 0.630000, 0.210000)
		registerVal2.AbilityRingBackDeplete:setAlpha(1.000000)
		__FUNC_1B397_(registerVal9, {})
		local function __FUNC_1B57C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 670.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.AbilityRingBack:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.AbilityRingBack:setAlpha(1.000000)
		__FUNC_1B57C_(registerVal10, {})
		local function __FUNC_1B75A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 449.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.HeroWeaponRing:setAlpha(1.000000)
		__FUNC_1B75A_(registerVal12, {})
		local function __FUNC_1B90D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(1.000000, 0.790000, 0.150000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 0.790000, 0.150000)
		registerVal2.Glow:setAlpha(0.050000)
		__FUNC_1B90D_(registerVal13, {})
		local function __FUNC_1BAF4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.HeroWeaponPulse:setAlpha(0.000000)
		__FUNC_1BAF4_(registerVal14, {})
		local function __FUNC_1BCA9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(1.000000, 0.850000, 0.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.HeroBackgroundGlowImage:setRGB(1.000000, 0.850000, 0.000000)
		registerVal2.HeroBackgroundGlowImage:setAlpha(0.000000)
		__FUNC_1BCA9_(registerVal15, {})
		local function __FUNC_1BE8B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.AbilityIconContainer:setAlpha(1.000000)
		__FUNC_1BE8B_(registerVal16, {})
	end

	registerVal18.Charge = __FUNC_1A399_
	local function __FUNC_1C03D_()
		registerVal2:setupElementClipCounter(13.000000)
		local function __FUNC_1C723_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.MaskGlow:setAlpha(0.500000)
		__FUNC_1C723_(registerVal3, {})
		local function __FUNC_1C8D5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.730000, 0.260000, 0.000000)
			arg0:setAlpha(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.EdgeGlow:setRGB(0.730000, 0.430000, 0.000000)
		registerVal2.EdgeGlow:setAlpha(0.900000)
		__FUNC_1C8D5_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BlackShadow:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_1CABC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.980000, 0.440000, 0.000000)
			arg0:setAlpha(0.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.ReadyImage:setRGB(0.980000, 0.670000, 0.000000)
		registerVal2.ReadyImage:setAlpha(0.700000)
		__FUNC_1CABC_(registerVal6, {})
		local function __FUNC_1CCA4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 0.420000, 0.150000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.CircleOutter:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.CircleOutter:setAlpha(1.000000)
		__FUNC_1CCA4_(registerVal7, {})
		local function __FUNC_1CE87_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 0.560000, 0.150000)
			arg0:setAlpha(0.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setRGB(0.280000, 0.130000, 0.000000)
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.700000)
		__FUNC_1CE87_(registerVal8, {})
		local function __FUNC_1D06C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 0.440000, 0.150000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setRGB(0.840000, 0.630000, 0.210000)
		registerVal2.AbilityRingBackDeplete:setAlpha(1.000000)
		__FUNC_1D06C_(registerVal9, {})
		local function __FUNC_1D24F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 0.560000, 0.150000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.AbilityRingBack:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.AbilityRingBack:setAlpha(1.000000)
		__FUNC_1D24F_(registerVal10, {})
		local function __FUNC_1D42F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.HeroWeaponRing:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.HeroWeaponRing:setAlpha(1.000000)
		__FUNC_1D42F_(registerVal12, {})
		local function __FUNC_1D605_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 0.560000, 0.150000)
			arg0:setAlpha(0.050000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 0.790000, 0.150000)
		registerVal2.Glow:setAlpha(0.050000)
		__FUNC_1D605_(registerVal13, {})
		local function __FUNC_1D7EC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.HeroWeaponPulse:setAlpha(0.000000)
		__FUNC_1D7EC_(registerVal14, {})
		local function __FUNC_1D9A1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 0.850000, 0.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.HeroBackgroundGlowImage:setRGB(1.000000, 0.850000, 0.000000)
		registerVal2.HeroBackgroundGlowImage:setAlpha(0.000000)
		__FUNC_1D9A1_(registerVal15, {})
		local function __FUNC_1DB83_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.AbilityIconContainer:setAlpha(1.000000)
		__FUNC_1DB83_(registerVal16, {})
	end

	registerVal18.MedEnergy = __FUNC_1C03D_
	registerVal17.InUse = registerVal18
	registerVal18 = {}
	local function __FUNC_1DD35_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.MaskGlow:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.EdgeGlow:setRGB(0.730000, 0.260000, 0.000000)
		registerVal2.EdgeGlow:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BlackShadow:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ReadyImage:setRGB(0.980000, 0.440000, 0.000000)
		registerVal2.ReadyImage:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.CircleOutter:setRGB(1.000000, 0.420000, 0.150000)
		registerVal2.CircleOutter:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setRGB(1.000000, 0.560000, 0.150000)
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setRGB(1.000000, 0.440000, 0.150000)
		registerVal2.AbilityRingBackDeplete:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.AbilityRingBack:setRGB(1.000000, 0.560000, 0.150000)
		registerVal2.AbilityRingBack:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ThiefRingBG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.HeroWeaponRing:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 0.560000, 0.150000)
		registerVal2.Glow:setAlpha(0.050000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.HeroWeaponPulse:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.HeroBackgroundGlowImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.AbilityIconContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_1DD35_
	local function __FUNC_1E434_()
		registerVal2:setupElementClipCounter(13.000000)
		local function __FUNC_1EAAB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.MaskGlow:setAlpha(0.500000)
		__FUNC_1EAAB_(registerVal3, {})
		local function __FUNC_1EC5D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 860.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.730000, 0.030000, 0.000000)
			arg0:setAlpha(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.EdgeGlow:setRGB(0.730000, 0.260000, 0.000000)
		registerVal2.EdgeGlow:setAlpha(0.900000)
		__FUNC_1EC5D_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BlackShadow:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_1EE44_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 769.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.980000, 0.060000, 0.000000)
			arg0:setAlpha(0.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.ReadyImage:setRGB(0.980000, 0.440000, 0.000000)
		registerVal2.ReadyImage:setAlpha(0.700000)
		__FUNC_1EE44_(registerVal6, {})
		local function __FUNC_1F02C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.950000, 0.290000, 0.190000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.CircleOutter:setRGB(1.000000, 0.420000, 0.150000)
		registerVal2.CircleOutter:setAlpha(1.000000)
		__FUNC_1F02C_(registerVal7, {})
		local function __FUNC_1F214_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.280000, 0.010000, 0.000000)
			arg0:setAlpha(0.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setRGB(1.000000, 0.560000, 0.150000)
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.700000)
		__FUNC_1F214_(registerVal8, {})
		local function __FUNC_1F3FC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.840000, 0.220000, 0.210000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setRGB(1.000000, 0.440000, 0.150000)
		registerVal2.AbilityRingBackDeplete:setAlpha(1.000000)
		__FUNC_1F3FC_(registerVal9, {})
		local function __FUNC_1F5E4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 779.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 0.000000, 0.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.AbilityRingBack:setRGB(1.000000, 0.560000, 0.150000)
		registerVal2.AbilityRingBack:setAlpha(1.000000)
		__FUNC_1F5E4_(registerVal10, {})
		local function __FUNC_1F7C2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.HeroWeaponRing:setAlpha(1.000000)
		__FUNC_1F7C2_(registerVal12, {})
		local function __FUNC_1F975_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 0.170000, 0.150000)
			arg0:setAlpha(0.050000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 0.560000, 0.150000)
		registerVal2.Glow:setAlpha(0.050000)
		__FUNC_1F975_(registerVal13, {})
		local function __FUNC_1FB5C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 519.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.HeroWeaponPulse:setAlpha(0.000000)
		__FUNC_1FB5C_(registerVal14, {})
		local function __FUNC_1FD11_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 819.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.HeroBackgroundGlowImage:setAlpha(0.000000)
		__FUNC_1FD11_(registerVal15, {})
		local function __FUNC_1FEC5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.AbilityIconContainer:setAlpha(1.000000)
		__FUNC_1FEC5_(registerVal16, {})
	end

	registerVal18.LowEnergy = __FUNC_1E434_
	local function __FUNC_20079_()
		registerVal2:setupElementClipCounter(13.000000)
		local function __FUNC_2073C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 680.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.MaskGlow:setAlpha(0.500000)
		__FUNC_2073C_(registerVal3, {})
		local function __FUNC_208F1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 829.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.730000, 0.430000, 0.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.EdgeGlow:setRGB(0.730000, 0.260000, 0.000000)
		registerVal2.EdgeGlow:setAlpha(0.900000)
		__FUNC_208F1_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BlackShadow:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_20AD3_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 479.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.980000, 0.670000, 0.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.ReadyImage:setRGB(0.980000, 0.440000, 0.000000)
		registerVal2.ReadyImage:setAlpha(0.700000)
		__FUNC_20AD3_(registerVal6, {})
		local function __FUNC_20CB3_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.950000, 0.580000, 0.190000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.CircleOutter:setRGB(1.000000, 0.420000, 0.150000)
		registerVal2.CircleOutter:setAlpha(1.000000)
		__FUNC_20CB3_(registerVal7, {})
		local function __FUNC_20E98_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.280000, 0.130000, 0.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setRGB(1.000000, 0.560000, 0.150000)
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.700000)
		__FUNC_20E98_(registerVal8, {})
		local function __FUNC_2107B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 819.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.840000, 0.630000, 0.210000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setRGB(1.000000, 0.440000, 0.150000)
		registerVal2.AbilityRingBackDeplete:setAlpha(1.000000)
		__FUNC_2107B_(registerVal9, {})
		local function __FUNC_21260_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.AbilityRingBack:setRGB(1.000000, 0.560000, 0.150000)
		registerVal2.AbilityRingBack:setAlpha(1.000000)
		__FUNC_21260_(registerVal10, {})
		local function __FUNC_2143E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.HeroWeaponRing:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.HeroWeaponRing:setAlpha(1.000000)
		__FUNC_2143E_(registerVal12, {})
		local function __FUNC_21615_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 389.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(1.000000, 0.790000, 0.150000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 0.560000, 0.150000)
		registerVal2.Glow:setAlpha(0.050000)
		__FUNC_21615_(registerVal13, {})
		local function __FUNC_217FC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.HeroWeaponPulse:setAlpha(0.000000)
		__FUNC_217FC_(registerVal14, {})
		local function __FUNC_219B1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 569.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 0.850000, 0.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.HeroBackgroundGlowImage:setRGB(1.000000, 0.850000, 0.000000)
		registerVal2.HeroBackgroundGlowImage:setAlpha(0.000000)
		__FUNC_219B1_(registerVal15, {})
		local function __FUNC_21B93_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 819.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.AbilityIconContainer:setAlpha(1.000000)
		__FUNC_21B93_(registerVal16, {})
	end

	registerVal18.Charge = __FUNC_20079_
	registerVal17.MedEnergy = registerVal18
	registerVal18 = {}
	local function __FUNC_21D45_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.MaskGlow:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.EdgeGlow:setRGB(0.730000, 0.030000, 0.000000)
		registerVal2.EdgeGlow:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BlackShadow:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ReadyImage:setRGB(0.980000, 0.060000, 0.000000)
		registerVal2.ReadyImage:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.CircleOutter:setRGB(0.950000, 0.290000, 0.190000)
		registerVal2.CircleOutter:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setRGB(0.280000, 0.010000, 0.000000)
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setRGB(0.840000, 0.220000, 0.210000)
		registerVal2.AbilityRingBackDeplete:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.AbilityRingBack:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.AbilityRingBack:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ThiefRingBG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.HeroWeaponRing:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 0.170000, 0.150000)
		registerVal2.Glow:setAlpha(0.050000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.HeroWeaponPulse:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.HeroBackgroundGlowImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.AbilityIconContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_21D45_
	local function __FUNC_22467_()
		registerVal2:setupElementClipCounter(13.000000)
		local function __FUNC_22B4B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 769.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.MaskGlow:setAlpha(0.500000)
		__FUNC_22B4B_(registerVal3, {})
		local function __FUNC_22CFD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.730000, 0.430000, 0.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.EdgeGlow:setRGB(0.730000, 0.030000, 0.000000)
		registerVal2.EdgeGlow:setAlpha(0.900000)
		__FUNC_22CFD_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BlackShadow:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_22EDF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.980000, 0.670000, 0.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.ReadyImage:setRGB(0.980000, 0.060000, 0.000000)
		registerVal2.ReadyImage:setAlpha(0.700000)
		__FUNC_22EDF_(registerVal6, {})
		local function __FUNC_230BF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.950000, 0.580000, 0.190000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.CircleOutter:setRGB(0.950000, 0.290000, 0.190000)
		registerVal2.CircleOutter:setAlpha(1.000000)
		__FUNC_230BF_(registerVal7, {})
		local function __FUNC_232A4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.280000, 0.130000, 0.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setRGB(0.280000, 0.010000, 0.000000)
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.700000)
		__FUNC_232A4_(registerVal8, {})
		local function __FUNC_23487_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.840000, 0.630000, 0.210000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setRGB(0.840000, 0.220000, 0.210000)
		registerVal2.AbilityRingBackDeplete:setAlpha(1.000000)
		__FUNC_23487_(registerVal9, {})
		local function __FUNC_2366C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 270.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.AbilityRingBack:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.AbilityRingBack:setAlpha(1.000000)
		__FUNC_2366C_(registerVal10, {})
		local function __FUNC_2384A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 569.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.HeroWeaponRing:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.HeroWeaponRing:setAlpha(1.000000)
		__FUNC_2384A_(registerVal12, {})
		local function __FUNC_23A21_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(1.000000, 0.790000, 0.150000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 0.170000, 0.150000)
		registerVal2.Glow:setAlpha(0.050000)
		__FUNC_23A21_(registerVal13, {})
		local function __FUNC_23C08_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.HeroWeaponPulse:setAlpha(0.000000)
		__FUNC_23C08_(registerVal14, {})
		local function __FUNC_23DBD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 0.850000, 0.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.HeroBackgroundGlowImage:setRGB(1.000000, 0.850000, 0.000000)
		registerVal2.HeroBackgroundGlowImage:setAlpha(0.000000)
		__FUNC_23DBD_(registerVal15, {})
		local function __FUNC_23F9F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.AbilityIconContainer:setAlpha(1.000000)
		__FUNC_23F9F_(registerVal16, {})
	end

	registerVal18.Charge = __FUNC_22467_
	registerVal17.LowEnergy = registerVal18
	registerVal2.clipsPerState = registerVal17
	local function __FUNC_24151_(arg0)
		arg0.AbilityRingBackDuplicate:close()
		arg0.AbilityRingBackDeplete:close()
		arg0.AbilityRingBack:close()
		arg0.HeroWeaponRing:close()
		arg0.Glow:close()
		arg0.HeroWeaponPulse:close()
		arg0.AbilityIconContainer:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_24151_)
	if __FUNC_43A_ then
		__FUNC_43A_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.AmmoWidget_HeroAbilityContainer.new = __FUNC_B4D_
