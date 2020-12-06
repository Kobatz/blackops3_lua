-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_HeroWeapon")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_HeroWeaponContainer = registerVal1
function CoD.AmmoWidget_HeroWeaponContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_HeroWeaponContainer)
	registerVal2.id = "AmmoWidget_HeroWeaponContainer"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 98.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 98.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.AmmoWidget_HeroWeapon.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -44.000000, 44.000000)
	registerVal3:setTopBottom(false, false, -44.000000, 44.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.700000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Ready"
	local function __FUNC_C66_(arg0, arg2, arg3)
		local registerVal3 = IsHeroWeaponGadgetAmmoEmpty(arg0, arg1)
		registerVal3 = IsHeroWeaponGadgetCurrentWeapon(arg0, arg1)
		if not registerVal3 and not registerVal3 then
			registerVal3 = IsHeroWeaponOrSpecialGadgetAvailable(arg0, arg1)
		else
		end
		return true
	end

	registerVal7.condition = __FUNC_C66_
	local registerVal8 = {}
	registerVal8.stateName = "Charge"
	local function __FUNC_D5C_(arg0, arg2, arg3)
		local registerVal3 = IsHeroWeaponGadgetAmmoEmpty(arg0, arg1)
		if registerVal3 then
			registerVal3 = IsHeroWeaponOrSpecialGadgetAvailable(arg0, arg1)
		end
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_D5C_
	local registerVal9 = {}
	registerVal9.stateName = "InUse"
	local function __FUNC_E0B_(arg0, arg2, arg3)
		return IsHeroWeaponOrGadgetInUse(arg0, arg1)
	end

	registerVal9.condition = __FUNC_E0B_
	registerVal6 = {registerVal7, registerVal8, registerVal9}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "playerAbilities.playerGadget3.ammo")
	local function __FUNC_E6B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.ammo"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_E6B_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "playerAbilities.playerGadget3.isInUse")
	local function __FUNC_FA0_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.isInUse"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_FA0_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "playerAbilities.playerGadget3.powerRatio")
	local function __FUNC_10DB_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.powerRatio"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_10DB_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "currentWeapon.weapon")
	local function __FUNC_1216_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.weapon"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_1216_)
	registerVal2:addElement(registerVal3)
	registerVal2.HeroWeaponSolid = registerVal3
	local registerVal4 = CoD.AmmoWidget_HeroWeapon.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -44.000000, 44.000000)
	registerVal4:setTopBottom(false, false, -44.000000, 44.000000)
	registerVal4:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal4:setShaderVector(0.000000, 0.100000, 0.500000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7 = {}
	registerVal8 = {}
	registerVal8.stateName = "Ready"
	local function __FUNC_133E_(arg0, arg2, arg3)
		local registerVal3 = IsHeroWeaponGadgetAmmoEmpty(arg0, arg1)
		registerVal3 = IsHeroWeaponGadgetCurrentWeapon(arg0, arg1)
		if not registerVal3 and not registerVal3 then
			registerVal3 = IsHeroWeaponOrSpecialGadgetAvailable(arg0, arg1)
		else
		end
		return true
	end

	registerVal8.condition = __FUNC_133E_
	registerVal9 = {}
	registerVal9.stateName = "Charge"
	local function __FUNC_1434_(arg0, arg2, arg3)
		local registerVal3 = IsHeroWeaponGadgetAmmoEmpty(arg0, arg1)
		if registerVal3 then
			registerVal3 = IsHeroWeaponOrSpecialGadgetAvailable(arg0, arg1)
		end
		return (not registerVal3)
	end

	registerVal9.condition = __FUNC_1434_
	local registerVal10 = {}
	registerVal10.stateName = "InUse"
	local function __FUNC_14E3_(arg0, arg2, arg3)
		return IsHeroWeaponOrGadgetInUse(arg0, arg1)
	end

	registerVal10.condition = __FUNC_14E3_
	registerVal7 = {registerVal8, registerVal9, registerVal10}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "playerAbilities.playerGadget3.ammo")
	local function __FUNC_1543_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.ammo"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_1543_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "playerAbilities.playerGadget3.isInUse")
	local function __FUNC_1678_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.isInUse"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_1678_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "playerAbilities.playerGadget3.powerRatio")
	local function __FUNC_17B3_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.powerRatio"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_17B3_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "currentWeapon.weapon")
	local function __FUNC_18EE_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.weapon"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_18EE_)
	registerVal2:addElement(registerVal4)
	registerVal2.HeroWeaponShader = registerVal4
	local registerVal5 = {}
	registerVal6 = {}
	local function __FUNC_1A16_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.HeroWeaponSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.HeroWeaponShader:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_1A16_
	local function __FUNC_1B79_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.WheelHide = __FUNC_1B79_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_1BDA_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.HeroWeaponSolid:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.HeroWeaponShader:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_1BDA_
	registerVal5.Visible = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_1D42_(arg0)
		arg0.HeroWeaponSolid:close()
		arg0.HeroWeaponShader:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1D42_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

