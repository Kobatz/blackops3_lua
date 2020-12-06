-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_SemiCircle = registerVal1
function CoD.AmmoWidget_SemiCircle.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_SemiCircle)
	registerVal2.id = "AmmoWidget_SemiCircle"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 9.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 55.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -4.830000, 4.500000)
	registerVal3:setTopBottom(false, false, -27.500000, 27.170000)
	registerVal3:setAlpha(0.500000)
	registerVal3:setZoom(1.000000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_ammowidget_semicircle"))
	registerVal2:addElement(registerVal3)
	registerVal2.ImgSemiCircle0 = registerVal3
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Weapon"
	local function __FUNC_79E_(arg0, arg2, arg3)
		local registerVal3 = WeaponUsesAmmo(arg1)
		if registerVal3 then
			registerVal3 = IsWeaponClipGreaterThanOrEqualTo(arg1, 100.000000)
		end
		return (not registerVal3)
	end

	registerVal7.condition = __FUNC_79E_
	local registerVal8 = {}
	registerVal8.stateName = "Knife"
	local function __FUNC_83B_(arg0, arg2, arg3)
		local registerVal3 = WeaponUsesAmmo(arg1)
		if not registerVal3 then
			registerVal3 = IsHeroWeaponGadgetCurrentWeapon(arg0, arg1)
		else
		end
		return true
	end

	registerVal8.condition = __FUNC_83B_
	local registerVal9 = {}
	registerVal9.stateName = "Weapon3Digits"
	local function __FUNC_8DD_(arg0, arg2, arg3)
		return IsWeaponClipGreaterThanOrEqualTo(arg1, 100.000000)
	end

	registerVal9.condition = __FUNC_8DD_
	local registerVal10 = {}
	registerVal10.stateName = "HeroWeapon"
	local function __FUNC_94B_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal10.condition = __FUNC_94B_
	registerVal6 = {registerVal7, registerVal8, registerVal9, registerVal10}
	registerVal2:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "currentWeapon.weapon")
	local function __FUNC_995_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.weapon"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_995_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "currentWeapon.clipMaxAmmo")
	local function __FUNC_ABE_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.clipMaxAmmo"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_ABE_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "playerAbilities.playerGadget3.isInUse")
	local function __FUNC_BEB_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.isInUse"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_BEB_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

