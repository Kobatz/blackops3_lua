-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_Knife")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_Fist")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_TotalAmmo")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_ClipInfoDummy = registerVal1
function CoD.AmmoWidget_ClipInfoDummy.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_ClipInfoDummy)
	registerVal2.id = "AmmoWidget_ClipInfoDummy"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 135.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 57.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.AmmoWidget_Knife.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, 256.000000, 341.000000)
	registerVal3:setTopBottom(false, true, -38.000000, -12.000000)
	registerVal3:setAlpha(0.900000)
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal3:setShaderVector(0.000000, 0.250000, 1.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Knife = registerVal3
	local registerVal4 = CoD.AmmoWidget_Fist.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, 282.760000, 318.240000)
	registerVal4:setTopBottom(false, true, -60.750000, 13.750000)
	registerVal4:setAlpha(0.900000)
	registerVal4:setZRot(-90.000000)
	registerVal4:setScale(1.100000)
	registerVal4:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration"))
	registerVal4:setShaderVector(0.000000, 0.250000, 1.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Fist = registerVal4
	local registerVal5 = CoD.AmmoWidget_TotalAmmo.new(arg0, arg1)
	registerVal5:setLeftRight(false, true, -60.000000, -2.000000)
	registerVal5:setTopBottom(false, true, -37.500000, -7.500000)
	registerVal5:setAlpha(0.900000)
	registerVal5:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal5:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5.TotalAmmoLbl:setText(Engine.Localize("333"))
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "NoAmmo"
	local function __FUNC_105F_(arg0, arg2, arg3)
		local registerVal3 = WeaponHasAmmo(arg1)
		if not registerVal3 then
			registerVal3 = WeaponUsesAmmo(arg1)
		else
		end
		return true
	end

	registerVal9.condition = __FUNC_105F_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "currentWeapon.ammoStock")
	local function __FUNC_10E7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.ammoStock"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_10E7_)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "currentWeapon.ammoInClip")
	local function __FUNC_1211_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.ammoInClip"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_1211_)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "currentWeapon.weapon")
	local function __FUNC_133E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.weapon"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_133E_)
	registerVal2:addElement(registerVal5)
	registerVal2.TotalAmmo = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_1466_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Knife:setLeftRight(false, true, 256.000000, 341.000000)
		registerVal2.Knife:setTopBottom(false, true, -38.000000, -12.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Fist:setLeftRight(false, true, 282.760000, 318.240000)
		registerVal2.Fist:setTopBottom(false, true, -60.750000, 13.750000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TotalAmmo:setLeftRight(false, true, -60.000000, -2.000000)
		registerVal2.TotalAmmo:setTopBottom(false, true, -37.500000, -7.500000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1466_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_16F7_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Knife:setLeftRight(false, true, 256.000000, 341.000000)
		registerVal2.Knife:setTopBottom(false, true, -38.000000, -12.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Fist:setLeftRight(false, true, 282.760000, 318.240000)
		registerVal2.Fist:setTopBottom(false, true, -60.750000, 13.750000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TotalAmmo:setLeftRight(false, true, -60.000000, -2.000000)
		registerVal2.TotalAmmo:setTopBottom(false, true, -37.500000, -7.500000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_16F7_
	registerVal6.Weapon = registerVal7
	registerVal7 = {}
	local function __FUNC_1987_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal4:completeAnimation()
		registerVal2.Fist:setLeftRight(false, true, -57.240000, -21.760000)
		registerVal2.Fist:setTopBottom(false, true, -62.250000, 12.250000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TotalAmmo:setLeftRight(false, true, 292.000000, 350.000000)
		registerVal2.TotalAmmo:setTopBottom(false, true, -37.000000, -7.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1987_
	registerVal6.Fist = registerVal7
	registerVal7 = {}
	local function __FUNC_1B7C_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Knife:setLeftRight(false, true, -135.000000, -50.000000)
		registerVal2.Knife:setTopBottom(false, true, -39.000000, -13.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Fist:setLeftRight(false, true, 282.760000, 318.240000)
		registerVal2.Fist:setTopBottom(false, true, -60.750000, 13.750000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TotalAmmo:setLeftRight(false, true, 292.000000, 350.000000)
		registerVal2.TotalAmmo:setTopBottom(false, true, -37.000000, -7.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1B7C_
	registerVal6.KnifeGunGame = registerVal7
	registerVal7 = {}
	local function __FUNC_1E0F_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Knife:setLeftRight(false, true, -89.000000, -4.000000)
		registerVal2.Knife:setTopBottom(false, true, -39.000000, -13.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Fist:setLeftRight(false, true, 282.760000, 318.240000)
		registerVal2.Fist:setTopBottom(false, true, -60.750000, 13.750000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TotalAmmo:setLeftRight(false, true, 292.000000, 350.000000)
		registerVal2.TotalAmmo:setTopBottom(false, true, -37.000000, -7.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1E0F_
	registerVal6.Knife = registerVal7
	registerVal7 = {}
	local function __FUNC_209F_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Knife:setLeftRight(false, true, 256.000000, 341.000000)
		registerVal2.Knife:setTopBottom(false, true, -38.000000, -12.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Fist:setLeftRight(false, true, 282.760000, 318.240000)
		registerVal2.Fist:setTopBottom(false, true, -60.750000, 13.750000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TotalAmmo:setLeftRight(false, true, -60.000000, -2.000000)
		registerVal2.TotalAmmo:setTopBottom(false, true, -37.500000, -7.500000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_209F_
	registerVal6.Weapon3Digits = registerVal7
	registerVal2.clipsPerState = registerVal6
	registerVal8 = {}
	registerVal9 = {}
	registerVal9.stateName = "Weapon"
	local function __FUNC_232F_(arg0, arg2, arg3)
		local registerVal3 = WeaponUsesAmmo(arg1)
		if registerVal3 then
			registerVal3 = IsWeaponClipGreaterThanOrEqualTo(arg1, 100.000000)
		end
		return (not registerVal3)
	end

	registerVal9.condition = __FUNC_232F_
	local registerVal10 = {}
	registerVal10.stateName = "Fist"
	local function __FUNC_23CB_(arg0, arg2, arg3)
		local registerVal3 = WeaponUsesAmmo(arg1)
		registerVal3 = IsHeroWeaponGadgetCurrentWeapon(arg0, arg1)
		if not registerVal3 and not registerVal3 then
			registerVal3 = IsCurrentWeaponReference(arg1, "fist")
		else
		end
		return true
	end

	registerVal10.condition = __FUNC_23CB_
	local registerVal11 = {}
	registerVal11.stateName = "KnifeGunGame"
	local function __FUNC_24B1_(arg0, arg2, arg3)
		local registerVal3 = WeaponUsesAmmo(arg1)
		registerVal3 = IsHeroWeaponGadgetCurrentWeapon(arg0, arg1)
		if not registerVal3 and not registerVal3 then
			registerVal3 = IsCurrentWeaponMeleeSecondary(arg1)
			if registerVal3 then
				registerVal3 = IsGameTypeEqualToString("gun")
			else
			end
		end
		return true
	end

	registerVal11.condition = __FUNC_24B1_
	local registerVal12 = {}
	registerVal12.stateName = "Knife"
	local function __FUNC_25CE_(arg0, arg2, arg3)
		local registerVal3 = WeaponUsesAmmo(arg1)
		registerVal3 = IsHeroWeaponGadgetCurrentWeapon(arg0, arg1)
		if not registerVal3 and not registerVal3 then
			registerVal3 = IsCurrentWeaponMeleeSecondary(arg1)
		else
		end
		return true
	end

	registerVal12.condition = __FUNC_25CE_
	local registerVal13 = {}
	registerVal13.stateName = "Weapon3Digits"
	local function __FUNC_26A8_(arg0, arg2, arg3)
		return IsWeaponClipGreaterThanOrEqualTo(arg1, 100.000000)
	end

	registerVal13.condition = __FUNC_26A8_
	registerVal8 = {registerVal9, registerVal10, registerVal11, registerVal12, registerVal13}
	registerVal2:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "currentWeapon.weapon")
	local function __FUNC_2717_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.weapon"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_2717_)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "currentWeapon.clipMaxAmmo")
	local function __FUNC_283E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.clipMaxAmmo"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_283E_)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "playerAbilities.playerGadget3.isInUse")
	local function __FUNC_296B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.isInUse"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_296B_)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "currentWeapon.equippedWeaponReference")
	local function __FUNC_2AA3_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.equippedWeaponReference"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_2AA3_)
	local function __FUNC_2BDB_(arg0)
		arg0.Knife:close()
		arg0.Fist:close()
		arg0.TotalAmmo:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2BDB_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

