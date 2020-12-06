-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_AbilityFill = registerVal1
function CoD.AmmoWidget_AbilityFill.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_AbilityFill)
	registerVal2.id = "AmmoWidget_AbilityFill"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 47.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 57.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_ammowidget_abilityfill"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.ImgAbilityFill = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.740000)
	registerVal4:setImage(RegisterImage("uie_t7_core_hud_ammowidget_abilityfillcircle"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.ImgAbilityFillCircle = registerVal4
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Ready"
	local function __FUNC_8DF_(arg0, arg2, arg3)
		local registerVal3 = IsHeroWeaponGadgetAmmoEmpty(arg0, arg1)
		registerVal3 = IsHeroWeaponGadgetCurrentWeapon(arg0, arg1)
		if not registerVal3 and not registerVal3 then
			registerVal3 = IsHeroWeaponOrSpecialGadgetAvailable(arg0, arg1)
			if registerVal3 then
				registerVal3 = WasHeroWeaponGadgetActivated(arg0)
			else
			end
		end
		return true
	end

	registerVal8.condition = __FUNC_8DF_
	local registerVal9 = {}
	registerVal9.stateName = "Charge"
	local function __FUNC_A12_(arg0, arg2, arg3)
		local registerVal3 = IsHeroWeaponGadgetAmmoEmpty(arg0, arg1)
		if registerVal3 then
			registerVal3 = IsHeroWeaponGadgetAvailable(arg0, arg1)
		end
		return registerVal3
	end

	registerVal9.condition = __FUNC_A12_
	local registerVal10 = {}
	registerVal10.stateName = "InUse"
	local function __FUNC_AB2_(arg0, arg2, arg3)
		local registerVal3 = IsHeroWeaponGadgetCurrentWeapon(arg0, arg1)
		if registerVal3 then
			registerVal3 = IsHeroWeaponGadgetAmmoEmpty(arg0, arg1)
		end
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_AB2_
	local registerVal11 = {}
	registerVal11.stateName = "Stowed"
	local function __FUNC_B5A_(arg0, arg2, arg3)
		local registerVal3 = IsHeroWeaponGadgetAmmoEmpty(arg0, arg1)
		registerVal3 = IsHeroWeaponGadgetCurrentWeapon(arg0, arg1)
		if not registerVal3 and not registerVal3 then
			registerVal3 = IsHeroWeaponGadgetAvailable(arg0, arg1)
			if registerVal3 then
				registerVal3 = WasHeroWeaponGadgetActivated(arg0)
			else
			end
		end
		return true
	end

	registerVal11.condition = __FUNC_B5A_
	registerVal7 = {registerVal8, registerVal9, registerVal10, registerVal11}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "playerAbilities.playerGadget3.ammo")
	local function __FUNC_C81_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.ammo"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_C81_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "playerAbilities.playerGadget3.isInUse")
	local function __FUNC_DB8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.isInUse"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_DB8_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "playerAbilities.playerGadget3.powerRatio")
	local function __FUNC_EF3_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.powerRatio"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_EF3_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

