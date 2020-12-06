-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_AbilityAftStroke = registerVal1
function CoD.AmmoWidget_AbilityAftStroke.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_AbilityAftStroke)
	registerVal2.id = "AmmoWidget_AbilityAftStroke"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 47.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 57.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 13.330000, -13.670000)
	registerVal3:setTopBottom(true, true, 28.000000, -26.330000)
	registerVal3:setAlpha(0.400000)
	registerVal3:setZRot(-30.000000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_ammowidget_abilitystrokeafthorz"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image60 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 22.330000, -22.000000)
	registerVal4:setTopBottom(true, true, 1.000000, 0.000000)
	registerVal4:setAlpha(0.400000)
	registerVal4:setImage(RegisterImage("uie_t7_core_hud_ammowidget_abilitystrokeaftvert"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image4 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.330000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.330000)
	registerVal5:setAlpha(0.470000)
	registerVal5:setImage(RegisterImage("uie_t7_core_hud_ammowidget_abilitystrokefore"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.Image5 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 13.330000, -13.670000)
	registerVal6:setTopBottom(true, true, 28.000000, -26.330000)
	registerVal6:setAlpha(0.400000)
	registerVal6:setZRot(30.000000)
	registerVal6:setImage(RegisterImage("uie_t7_core_hud_ammowidget_abilitystrokeafthorz"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.Image6 = registerVal6
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Ready"
	local function __FUNC_AFD_(arg0, arg2, arg3)
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

	registerVal10.condition = __FUNC_AFD_
	local registerVal11 = {}
	registerVal11.stateName = "Charge"
	local function __FUNC_C32_(arg0, arg2, arg3)
		local registerVal3 = IsHeroWeaponGadgetAmmoEmpty(arg0, arg1)
		if registerVal3 then
			registerVal3 = IsHeroWeaponGadgetAvailable(arg0, arg1)
		end
		return registerVal3
	end

	registerVal11.condition = __FUNC_C32_
	local registerVal12 = {}
	registerVal12.stateName = "InUse"
	local function __FUNC_CD2_(arg0, arg2, arg3)
		local registerVal3 = IsHeroWeaponGadgetCurrentWeapon(arg0, arg1)
		if registerVal3 then
			registerVal3 = IsHeroWeaponGadgetAmmoEmpty(arg0, arg1)
		end
		return (not registerVal3)
	end

	registerVal12.condition = __FUNC_CD2_
	local registerVal13 = {}
	registerVal13.stateName = "Stowed"
	local function __FUNC_D7A_(arg0, arg2, arg3)
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

	registerVal13.condition = __FUNC_D7A_
	registerVal9 = {registerVal10, registerVal11, registerVal12, registerVal13}
	registerVal2:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "playerAbilities.playerGadget3.ammo")
	local function __FUNC_EA1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.ammo"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_EA1_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "playerAbilities.playerGadget3.isInUse")
	local function __FUNC_FD8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.isInUse"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_FD8_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "playerAbilities.playerGadget3.powerRatio")
	local function __FUNC_1113_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.powerRatio"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_1113_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

