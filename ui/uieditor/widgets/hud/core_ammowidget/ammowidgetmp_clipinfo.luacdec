-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidgetMP_LowAmmoGlowContainer")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidgetMP_ClipContainerNew")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_Knife")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_Fist")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidgetMP_TotalAmmo")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_ClipMeterColor")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidgetMP_ClipContainerHero")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidgetMP_ClipInfo = registerVal1
function CoD.AmmoWidgetMP_ClipInfo.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidgetMP_ClipInfo)
	registerVal2.id = "AmmoWidgetMP_ClipInfo"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 135.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 57.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.AmmoWidgetMP_LowAmmoGlowContainer.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -118.000000, -4.000000)
	registerVal3:setTopBottom(false, true, -41.000000, -7.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Hero"
	local function __FUNC_2A68_(arg0, arg2, arg3)
		return UseHeroWeaponAmmoCounter(arg0, arg1)
	end

	registerVal7.condition = __FUNC_2A68_
	local registerVal8 = {}
	registerVal8.stateName = "LowAmmoNoReserve"
	local function __FUNC_2ACA_(arg0, arg2, arg3)
		local registerVal3 = IsCurrentWeaponReference(arg1, "lmg_infinite")
		registerVal3 = IsLowAmmoClip(arg1)
		if registerVal3 and registerVal3 then
			registerVal3 = WeaponHasAmmo(arg1)
		end
		return registerVal3
	end

	registerVal8.condition = __FUNC_2ACA_
	local registerVal9 = {}
	registerVal9.stateName = "NoAmmoNoReserve"
	local function __FUNC_2B96_(arg0, arg2, arg3)
		local registerVal3 = IsCurrentWeaponReference(arg1, "lmg_infinite")
		if registerVal3 then
			registerVal3 = WeaponHasAmmo(arg1)
			if not registerVal3 then
				registerVal3 = WeaponUsesAmmo(arg1)
			else
			end
		end
		return true
	end

	registerVal9.condition = __FUNC_2B96_
	local registerVal10 = {}
	registerVal10.stateName = "LowAmmoDW"
	local function __FUNC_2C6F_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueGreaterThanOrEqualTo(arg1, "currentWeapon.ammoInDWClip", 0.000000)
		registerVal3 = IsLowAmmoClip(arg1)
		if registerVal3 and registerVal3 then
			registerVal3 = WeaponHasAmmo(arg1)
		end
		return registerVal3
	end

	registerVal10.condition = __FUNC_2C6F_
	local registerVal11 = {}
	registerVal11.stateName = "NoAmmoDW"
	local function __FUNC_2D59_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueGreaterThanOrEqualTo(arg1, "currentWeapon.ammoInDWClip", 0.000000)
		if registerVal3 then
			registerVal3 = WeaponHasAmmo(arg1)
			if not registerVal3 then
				registerVal3 = WeaponUsesAmmo(arg1)
			else
			end
		end
		return true
	end

	registerVal11.condition = __FUNC_2D59_
	local registerVal12 = {}
	registerVal12.stateName = "LowAmmo"
	local function __FUNC_2E52_(arg0, arg2, arg3)
		local registerVal3 = IsLowAmmoClip(arg1)
		if registerVal3 then
			registerVal3 = WeaponHasAmmo(arg1)
		end
		return registerVal3
	end

	registerVal12.condition = __FUNC_2E52_
	local registerVal13 = {}
	registerVal13.stateName = "NoAmmo"
	local function __FUNC_2ECE_(arg0, arg2, arg3)
		local registerVal3 = WeaponHasAmmo(arg1)
		if not registerVal3 then
			registerVal3 = WeaponUsesAmmo(arg1)
		else
		end
		return true
	end

	registerVal13.condition = __FUNC_2ECE_
	registerVal6 = {registerVal7, registerVal8, registerVal9, registerVal10, registerVal11, registerVal12, registerVal13}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "currentWeapon.weapon")
	local function __FUNC_2F57_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.weapon"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_2F57_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "playerAbilities.playerGadget3.isInUse")
	local function __FUNC_307E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.isInUse"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_307E_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "playerAbilities.playerGadget3.name")
	local function __FUNC_31B7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.name"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_31B7_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "currentWeapon.equippedWeaponReference")
	local function __FUNC_32EC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.equippedWeaponReference"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_32EC_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "currentWeapon.ammoStock")
	local function __FUNC_3427_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.ammoStock"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_3427_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "currentWeapon.ammoInClip")
	local function __FUNC_3551_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.ammoInClip"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_3551_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "currentWeapon.ammoInDWClip")
	local function __FUNC_367E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.ammoInDWClip"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_367E_)
	registerVal2:addElement(registerVal3)
	registerVal2.AmmoWidgetMPLowAmmoGlowContainer0 = registerVal3
	local registerVal4 = CoD.AmmoWidgetMP_ClipContainerNew.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -160.000000, -35.000000)
	registerVal4:setTopBottom(false, true, -64.000000, 14.000000)
	registerVal4:setZoom(3.000000)
	registerVal4:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_cheap_blur"))
	registerVal4:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 10.000000, -3.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 2.500000, 2.500000, 0.000000, 0.000000)
	registerVal4:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_37AC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.Clip.Clip:setText(registerVal1)
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "CurrentWeapon", "ammoInClip", __FUNC_37AC_)
	local function __FUNC_3866_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.ClipContainerPress.Clip:setText(registerVal1)
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "CurrentWeapon", "ammoInClip", __FUNC_3866_)
	registerVal7 = {}
	registerVal8 = {}
	registerVal8.stateName = "Hero"
	local function __FUNC_393A_(arg0, arg2, arg3)
		return UseHeroWeaponAmmoCounter(arg0, arg1)
	end

	registerVal8.condition = __FUNC_393A_
	registerVal9 = {}
	registerVal9.stateName = "LowAmmo"
	local function __FUNC_399A_(arg0, arg2, arg3)
		local registerVal3 = IsLowAmmoClip(arg1)
		if registerVal3 then
			registerVal3 = WeaponHasAmmo(arg1)
		end
		return registerVal3
	end

	registerVal9.condition = __FUNC_399A_
	registerVal10 = {}
	registerVal10.stateName = "NoAmmo"
	local function __FUNC_3A16_(arg0, arg2, arg3)
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

	registerVal10.condition = __FUNC_3A16_
	registerVal7 = {registerVal8, registerVal9, registerVal10}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "currentWeapon.weapon")
	local function __FUNC_3AEB_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.weapon"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_3AEB_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "playerAbilities.playerGadget3.isInUse")
	local function __FUNC_3C12_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.isInUse"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_3C12_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "playerAbilities.playerGadget3.name")
	local function __FUNC_3D4B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.name"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_3D4B_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "currentWeapon.ammoStock")
	local function __FUNC_3E80_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.ammoStock"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_3E80_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "currentWeapon.ammoInClip")
	local function __FUNC_3FAD_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.ammoInClip"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_3FAD_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "currentWeapon.equippedWeaponReference")
	local function __FUNC_40DA_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.equippedWeaponReference"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_40DA_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "currentWeapon.viewmodelWeaponName")
	local function __FUNC_4213_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.viewmodelWeaponName"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_4213_)
	registerVal2:addElement(registerVal4)
	registerVal2.Clip = registerVal4
	local registerVal5 = CoD.AmmoWidgetMP_ClipContainerNew.new(arg0, arg1)
	registerVal5:setLeftRight(false, true, -222.500000, -97.500000)
	registerVal5:setTopBottom(false, true, -64.000000, 14.000000)
	registerVal5:setZoom(3.000000)
	registerVal5:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_cheap_blur"))
	registerVal5:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 10.000000, -3.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(3.000000, 2.500000, 2.500000, 0.000000, 0.000000)
	registerVal5:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_4347_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.Clip.Clip:setText(registerVal1)
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "CurrentWeapon", "ammoInDWClip", __FUNC_4347_)
	local function __FUNC_43FE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.ClipContainerPress.Clip:setText(registerVal1)
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "CurrentWeapon", "ammoInDWClip", __FUNC_43FE_)
	registerVal8 = {}
	registerVal9 = {}
	registerVal9.stateName = "Hero"
	local function __FUNC_44D2_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal9.condition = __FUNC_44D2_
	registerVal10 = {}
	registerVal10.stateName = "LowAmmo"
	local function __FUNC_451D_(arg0, arg2, arg3)
		return IsLowAmmoDWClip(arg1)
	end

	registerVal10.condition = __FUNC_451D_
	registerVal11 = {}
	registerVal11.stateName = "NoAmmo"
	local function __FUNC_4571_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal11.condition = __FUNC_4571_
	registerVal8 = {registerVal9, registerVal10, registerVal11}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "currentWeapon.ammoStock")
	local function __FUNC_45BD_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.ammoStock"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_45BD_)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "currentWeapon.ammoInDWClip")
	local function __FUNC_46E9_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.ammoInDWClip"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_46E9_)
	registerVal2:addElement(registerVal5)
	registerVal2.ClipDual = registerVal5
	registerVal6 = CoD.AmmoWidget_Knife.new(arg0, arg1)
	registerVal6:setLeftRight(false, true, 256.000000, 341.000000)
	registerVal6:setTopBottom(false, true, -38.000000, -12.000000)
	registerVal6:setAlpha(0.900000)
	registerVal6:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration"))
	registerVal6:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.Knife = registerVal6
	registerVal7 = CoD.AmmoWidget_Fist.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 417.760000, 453.240000)
	registerVal7:setTopBottom(true, false, -3.750000, 70.750000)
	registerVal7:setAlpha(0.900000)
	registerVal7:setZRot(-90.000000)
	registerVal7:setScale(1.100000)
	registerVal7:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration"))
	registerVal7:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.Fist = registerVal7
	registerVal8 = CoD.AmmoWidgetMP_TotalAmmo.new(arg0, arg1)
	registerVal8:setLeftRight(false, true, -60.000000, -2.000000)
	registerVal8:setTopBottom(false, true, -37.500000, -7.500000)
	registerVal8:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_cheap_blur"))
	registerVal8:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(1.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(2.000000, 5.000000, -2.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(3.000000, 2.000000, 2.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_4818_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.TotalAmmoLbl:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "CurrentWeapon", "ammoStock", __FUNC_4818_)
	registerVal11 = {}
	registerVal12 = {}
	registerVal12.stateName = "Hidden"
	local function __FUNC_48F4_(arg0, arg1, arg2)
		local registerVal3 = IsGameTypeEqualToString("gun")
		if not registerVal3 then
			registerVal3 = IsGameTypeEqualToString("prop")
		end
		return registerVal3
	end

	registerVal12.condition = __FUNC_48F4_
	registerVal13 = {}
	registerVal13.stateName = "HeroWeapon"
	local function __FUNC_4980_(arg0, arg2, arg3)
		return UseHeroWeaponAmmoCounter(arg0, arg1)
	end

	registerVal13.condition = __FUNC_4980_
	local registerVal14 = {}
	registerVal14.stateName = "WeaponNoReserve"
	local function __FUNC_49E2_(arg0, arg2, arg3)
		return IsCurrentWeaponReference(arg1, "lmg_infinite")
	end

	registerVal14.condition = __FUNC_49E2_
	local registerVal15 = {}
	registerVal15.stateName = "NoAmmo"
	local function __FUNC_4A58_(arg0, arg2, arg3)
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

	registerVal15.condition = __FUNC_4A58_
	registerVal11 = {registerVal12, registerVal13, registerVal14, registerVal15}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "currentWeapon.weapon")
	local function __FUNC_4B2F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.weapon"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_4B2F_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "playerAbilities.playerGadget3.isInUse")
	local function __FUNC_4C56_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.isInUse"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_4C56_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "playerAbilities.playerGadget3.name")
	local function __FUNC_4D8F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.name"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_4D8F_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "currentWeapon.equippedWeaponReference")
	local function __FUNC_4EC4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.equippedWeaponReference"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_4EC4_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "currentWeapon.ammoStock")
	local function __FUNC_4FFF_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.ammoStock"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_4FFF_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "currentWeapon.ammoInClip")
	local function __FUNC_5129_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.ammoInClip"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_5129_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "currentWeapon.viewmodelWeaponName")
	local function __FUNC_5256_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.viewmodelWeaponName"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_5256_)
	registerVal2:addElement(registerVal8)
	registerVal2.TotalAmmo = registerVal8
	registerVal9 = CoD.AmmoWidget_ClipMeterColor.new(arg0, arg1)
	registerVal9:setLeftRight(false, true, -122.500000, -73.500000)
	registerVal9:setTopBottom(false, true, -7.500000, -1.500000)
	registerVal9:setZoom(1.000000)
	registerVal9:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal9:setShaderVector(0.000000, 0.300000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal12 = {}
	registerVal13 = {}
	registerVal13.stateName = "LowAmmo"
	local function __FUNC_538B_(arg0, arg2, arg3)
		local registerVal3 = IsLowAmmoClip(arg1)
		if registerVal3 then
			registerVal3 = WeaponHasAmmo(arg1)
		end
		return registerVal3
	end

	registerVal13.condition = __FUNC_538B_
	registerVal14 = {}
	registerVal14.stateName = "NoAmmo"
	local function __FUNC_5406_(arg0, arg2, arg3)
		local registerVal3 = WeaponHasAmmo(arg1)
		if not registerVal3 then
			registerVal3 = WeaponUsesAmmo(arg1)
		else
		end
		return true
	end

	registerVal14.condition = __FUNC_5406_
	registerVal12 = {registerVal13, registerVal14}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, "currentWeapon.ammoStock")
	local function __FUNC_548F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.ammoStock"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_548F_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, "currentWeapon.ammoInClip")
	local function __FUNC_55B9_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.ammoInClip"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_55B9_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, "currentWeapon.weapon")
	local function __FUNC_56E6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.weapon"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_56E6_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, "currentWeapon.equippedWeaponReference")
	local function __FUNC_580E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.equippedWeaponReference"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_580E_)
	registerVal2:addElement(registerVal9)
	registerVal2.ClipMeter = registerVal9
	registerVal10 = CoD.AmmoWidget_ClipMeterColor.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 79.000000, 128.000000)
	registerVal10:setTopBottom(true, false, 49.500000, 55.500000)
	registerVal10:setZoom(1.000000)
	registerVal10:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal10:setShaderVector(0.000000, 0.300000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal13 = {}
	registerVal14 = {}
	registerVal14.stateName = "LowAmmo"
	local function __FUNC_5947_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal14.condition = __FUNC_5947_
	registerVal15 = {}
	registerVal15.stateName = "NoAmmo"
	local function __FUNC_5991_(arg0, arg2, arg3)
		local registerVal3 = WeaponHasAmmo(arg1)
		if not registerVal3 then
			registerVal3 = WeaponUsesAmmo(arg1)
		else
		end
		return true
	end

	registerVal15.condition = __FUNC_5991_
	registerVal13 = {registerVal14, registerVal15}
	registerVal10:mergeStateConditions(registerVal13)
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, "currentWeapon.ammoStock")
	local function __FUNC_5A1B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.ammoStock"
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:subscribeToModel(registerVal13, __FUNC_5A1B_)
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, "currentWeapon.ammoInClip")
	local function __FUNC_5B45_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.ammoInClip"
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:subscribeToModel(registerVal13, __FUNC_5B45_)
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, "currentWeapon.weapon")
	local function __FUNC_5C72_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.weapon"
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:subscribeToModel(registerVal13, __FUNC_5C72_)
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, "currentWeapon.equippedWeaponReference")
	local function __FUNC_5D9A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.equippedWeaponReference"
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:subscribeToModel(registerVal13, __FUNC_5D9A_)
	registerVal2:addElement(registerVal10)
	registerVal2.AmmoColorBar = registerVal10
	registerVal11 = CoD.AmmoWidgetMP_ClipContainerHero.new(arg0, arg1)
	registerVal11:setLeftRight(false, true, -105.000000, 20.000000)
	registerVal11:setTopBottom(false, true, -64.000000, 14.000000)
	registerVal11:setZoom(3.000000)
	registerVal11:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_cheap_blur"))
	registerVal11:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(2.000000, 10.000000, -3.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(3.000000, 2.500000, 2.500000, 0.000000, 0.000000)
	registerVal11:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal14 = {}
	registerVal15 = {}
	registerVal15.stateName = "Hero"
	local function __FUNC_5ED3_(arg0, arg2, arg3)
		return UseHeroWeaponAmmoCounter(arg0, arg1)
	end

	registerVal15.condition = __FUNC_5ED3_
	registerVal14 = {registerVal15}
	registerVal11:mergeStateConditions(registerVal14)
	registerVal15 = Engine.GetModelForController(arg1)
	registerVal14 = Engine.GetModel(registerVal15, "currentWeapon.weapon")
	local function __FUNC_5F32_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.weapon"
		arg0:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:subscribeToModel(registerVal14, __FUNC_5F32_)
	registerVal15 = Engine.GetModelForController(arg1)
	registerVal14 = Engine.GetModel(registerVal15, "playerAbilities.playerGadget3.isInUse")
	local function __FUNC_605A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.isInUse"
		arg0:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:subscribeToModel(registerVal14, __FUNC_605A_)
	registerVal15 = Engine.GetModelForController(arg1)
	registerVal14 = Engine.GetModel(registerVal15, "playerAbilities.playerGadget3.name")
	local function __FUNC_6193_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.name"
		arg0:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:subscribeToModel(registerVal14, __FUNC_6193_)
	registerVal2:addElement(registerVal11)
	registerVal2.ClipHero = registerVal11
	registerVal12 = {}
	registerVal13 = {}
	local function __FUNC_62C8_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal2.Clip:setLeftRight(false, true, -160.000000, -35.000000)
		registerVal2.Clip:setTopBottom(false, true, -64.000000, 14.000000)
		registerVal2.Clip:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ClipDual:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Knife:setLeftRight(false, true, 256.000000, 341.000000)
		registerVal2.Knife:setTopBottom(false, true, -38.000000, -12.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Fist:setLeftRight(true, false, 417.760000, 453.240000)
		registerVal2.Fist:setTopBottom(true, false, -3.750000, 70.750000)
		registerVal2.Fist:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration"))
		registerVal2.Fist:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TotalAmmo:setLeftRight(false, true, -60.000000, -2.000000)
		registerVal2.TotalAmmo:setTopBottom(false, true, -37.500000, -7.500000)
		registerVal2.TotalAmmo:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.TotalAmmo:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.ClipMeter:setLeftRight(false, true, -122.500000, -73.500000)
		registerVal2.ClipMeter:setTopBottom(false, true, -7.500000, -1.500000)
		registerVal2.ClipMeter:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.AmmoColorBar:setLeftRight(true, false, 79.000000, 128.000000)
		registerVal2.AmmoColorBar:setTopBottom(true, false, 49.500000, 55.500000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ClipHero:setLeftRight(false, true, -106.000000, 19.000000)
		registerVal2.ClipHero:setTopBottom(false, true, -64.000000, 14.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_62C8_
	local function __FUNC_6A6D_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_6BE4_(arg0, arg1)
			local function __FUNC_6DD5_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Back)
				end
				arg0:setLeftRight(false, true, -60.000000, -2.000000)
				arg0:setTopBottom(false, true, -37.500000, -7.500000)
				arg0:setRGB(1.000000, 1.000000, 1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_6DD5_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			arg0:setLeftRight(false, true, -60.500000, -2.500000)
			arg0:setTopBottom(false, true, -6.500000, 23.500000)
			arg0:setRGB(0.000000, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6DD5_)
		end

		registerVal8:completeAnimation()
		registerVal2.TotalAmmo:setLeftRight(false, true, -60.000000, -2.000000)
		registerVal2.TotalAmmo:setTopBottom(false, true, -37.500000, -7.500000)
		registerVal2.TotalAmmo:setRGB(1.000000, 1.000000, 1.000000)
		__FUNC_6BE4_(registerVal8, {})
	end

	registerVal13.AmmoUpdate = __FUNC_6A6D_
	local function __FUNC_6FFD_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_71C1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, true, -106.000000, 19.000000)
			arg0:setTopBottom(false, true, -64.000000, 14.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.Clip:setLeftRight(false, true, -160.000000, -35.000000)
		registerVal2.Clip:setTopBottom(false, true, -64.000000, 14.000000)
		__FUNC_71C1_(registerVal4, {})
		local function __FUNC_73C0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, true, -106.000000, 19.000000)
			arg0:setTopBottom(false, true, -64.000000, 14.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.ClipHero:setLeftRight(false, true, -160.000000, -35.000000)
		registerVal2.ClipHero:setTopBottom(false, true, -64.000000, 14.000000)
		__FUNC_73C0_(registerVal11, {})
	end

	registerVal13.HeroWeapon = __FUNC_6FFD_
	local function __FUNC_75C0_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_7785_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, true, -106.000000, 19.000000)
			arg0:setTopBottom(false, true, -64.000000, 14.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.Clip:setLeftRight(false, true, -160.000000, -35.000000)
		registerVal2.Clip:setTopBottom(false, true, -64.000000, 14.000000)
		__FUNC_7785_(registerVal4, {})
		local function __FUNC_7984_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, true, -106.000000, 19.000000)
			arg0:setTopBottom(false, true, -64.000000, 14.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.ClipHero:setLeftRight(false, true, -160.000000, -35.000000)
		registerVal2.ClipHero:setTopBottom(false, true, -64.000000, 14.000000)
		__FUNC_7984_(registerVal11, {})
	end

	registerVal13.WeaponNoReserve = __FUNC_75C0_
	registerVal12.DefaultState = registerVal13
	registerVal13 = {}
	local function __FUNC_7B84_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal2.Clip:setLeftRight(false, true, 261.000000, 362.000000)
		registerVal2.Clip:setTopBottom(false, true, -49.000000, -1.000000)
		registerVal2.Clip:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ClipDual:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Knife:setLeftRight(false, true, 256.000000, 341.000000)
		registerVal2.Knife:setTopBottom(false, true, -38.000000, -12.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Fist:setLeftRight(true, false, 417.760000, 453.240000)
		registerVal2.Fist:setTopBottom(true, false, -3.750000, 70.750000)
		registerVal2.Fist:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration"))
		registerVal2.Fist:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TotalAmmo:setLeftRight(false, true, 292.000000, 350.000000)
		registerVal2.TotalAmmo:setTopBottom(false, true, -37.000000, -7.000000)
		registerVal2.TotalAmmo:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.TotalAmmo:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.ClipMeter:setLeftRight(false, true, -122.500000, -73.500000)
		registerVal2.ClipMeter:setTopBottom(false, true, -7.500000, -1.500000)
		registerVal2.ClipMeter:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.AmmoColorBar:setLeftRight(false, true, 285.500000, 334.500000)
		registerVal2.AmmoColorBar:setTopBottom(false, true, -7.000000, -1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ClipHero:setLeftRight(false, true, 247.500000, 372.500000)
		registerVal2.ClipHero:setTopBottom(false, true, -64.000000, 14.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_7B84_
	registerVal12.HiddenGamemodeWeapon = registerVal13
	registerVal13 = {}
	local function __FUNC_832E_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal2.Clip:setLeftRight(false, true, -106.000000, 19.000000)
		registerVal2.Clip:setTopBottom(false, true, -64.000000, 14.000000)
		registerVal2.Clip:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ClipDual:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Knife:setLeftRight(false, true, 256.000000, 341.000000)
		registerVal2.Knife:setTopBottom(false, true, -38.000000, -12.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Fist:setLeftRight(true, false, 417.760000, 453.240000)
		registerVal2.Fist:setTopBottom(true, false, -3.750000, 70.750000)
		registerVal2.Fist:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration"))
		registerVal2.Fist:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TotalAmmo:setLeftRight(false, true, -60.000000, -2.000000)
		registerVal2.TotalAmmo:setTopBottom(false, true, -37.500000, -7.500000)
		registerVal2.TotalAmmo:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.TotalAmmo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.ClipMeter:setLeftRight(false, true, -122.500000, -73.500000)
		registerVal2.ClipMeter:setTopBottom(false, true, -7.500000, -1.500000)
		registerVal2.ClipMeter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.AmmoColorBar:setLeftRight(true, false, 79.000000, 128.000000)
		registerVal2.AmmoColorBar:setTopBottom(true, false, 49.500000, 55.500000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ClipHero:setLeftRight(false, true, -106.000000, 19.000000)
		registerVal2.ClipHero:setTopBottom(false, true, -64.000000, 14.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_832E_
	local function __FUNC_8AC7_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_8C89_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, true, -160.000000, -35.000000)
			arg0:setTopBottom(false, true, -64.000000, 14.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.Clip:setLeftRight(false, true, -106.000000, 19.000000)
		registerVal2.Clip:setTopBottom(false, true, -64.000000, 14.000000)
		__FUNC_8C89_(registerVal4, {})
		local function __FUNC_8E88_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, true, -160.000000, -35.000000)
			arg0:setTopBottom(false, true, -64.000000, 14.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.ClipHero:setLeftRight(false, true, -106.000000, 19.000000)
		registerVal2.ClipHero:setTopBottom(false, true, -64.000000, 14.000000)
		__FUNC_8E88_(registerVal11, {})
	end

	registerVal13.DefaultState = __FUNC_8AC7_
	local function __FUNC_9088_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_924D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, true, -165.000000, -40.000000)
			arg0:setTopBottom(false, true, -64.000000, 14.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.Clip:setLeftRight(false, true, -106.000000, 19.000000)
		registerVal2.Clip:setTopBottom(false, true, -64.000000, 14.000000)
		__FUNC_924D_(registerVal4, {})
		local function __FUNC_944C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, true, -165.000000, -40.000000)
			arg0:setTopBottom(false, true, -64.000000, 14.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.ClipHero:setLeftRight(false, true, -106.000000, 19.000000)
		registerVal2.ClipHero:setTopBottom(false, true, -64.000000, 14.000000)
		__FUNC_944C_(registerVal11, {})
	end

	registerVal13.Weapon3Digits = __FUNC_9088_
	local function __FUNC_964C_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_987B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, true, -160.000000, -35.000000)
			arg0:setTopBottom(false, true, -64.000000, 14.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.Clip:setLeftRight(false, true, -106.000000, 19.000000)
		registerVal2.Clip:setTopBottom(false, true, -64.000000, 14.000000)
		__FUNC_987B_(registerVal4, {})
		local function __FUNC_9A78_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.TotalAmmo:setAlpha(0.000000)
		__FUNC_9A78_(registerVal8, {})
		local function __FUNC_9C2D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, true, -160.000000, -35.000000)
			arg0:setTopBottom(false, true, -64.000000, 14.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.ClipHero:setLeftRight(false, true, -106.000000, 19.000000)
		registerVal2.ClipHero:setTopBottom(false, true, -64.000000, 14.000000)
		__FUNC_9C2D_(registerVal11, {})
	end

	registerVal13.Weapon = __FUNC_964C_
	registerVal12.HeroWeapon = registerVal13
	registerVal13 = {}
	local function __FUNC_9E2C_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal2.Clip:setLeftRight(false, true, -106.000000, 19.000000)
		registerVal2.Clip:setTopBottom(false, true, -64.000000, 14.000000)
		registerVal2.Clip:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ClipDual:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Knife:setLeftRight(false, true, 256.000000, 341.000000)
		registerVal2.Knife:setTopBottom(false, true, -38.000000, -12.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Fist:setLeftRight(true, false, 417.760000, 453.240000)
		registerVal2.Fist:setTopBottom(true, false, -3.750000, 70.750000)
		registerVal2.Fist:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration"))
		registerVal2.Fist:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TotalAmmo:setLeftRight(false, true, -60.000000, -2.000000)
		registerVal2.TotalAmmo:setTopBottom(false, true, -37.500000, -7.500000)
		registerVal2.TotalAmmo:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.TotalAmmo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.ClipMeter:setLeftRight(false, true, -122.500000, -73.500000)
		registerVal2.ClipMeter:setTopBottom(false, true, -7.500000, -1.500000)
		registerVal2.ClipMeter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.AmmoColorBar:setLeftRight(false, true, -56.000000, -7.000000)
		registerVal2.AmmoColorBar:setTopBottom(false, true, -7.500000, -1.500000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ClipHero:setLeftRight(false, true, -106.000000, 19.000000)
		registerVal2.ClipHero:setTopBottom(false, true, -64.000000, 14.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_9E2C_
	local function __FUNC_A5BD_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_A781_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, true, -160.000000, -35.000000)
			arg0:setTopBottom(false, true, -64.000000, 14.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.Clip:setLeftRight(false, true, -106.000000, 19.000000)
		registerVal2.Clip:setTopBottom(false, true, -64.000000, 14.000000)
		__FUNC_A781_(registerVal4, {})
		local function __FUNC_A980_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, true, -160.000000, -35.000000)
			arg0:setTopBottom(false, true, -64.000000, 14.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.ClipHero:setLeftRight(false, true, -106.000000, 19.000000)
		registerVal2.ClipHero:setTopBottom(false, true, -64.000000, 14.000000)
		__FUNC_A980_(registerVal11, {})
	end

	registerVal13.DefaultState = __FUNC_A5BD_
	local function __FUNC_AB80_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_AD45_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, true, -165.000000, -40.000000)
			arg0:setTopBottom(false, true, -64.000000, 14.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.Clip:setLeftRight(false, true, -106.000000, 19.000000)
		registerVal2.Clip:setTopBottom(false, true, -64.000000, 14.000000)
		__FUNC_AD45_(registerVal4, {})
		local function __FUNC_AF44_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, true, -165.000000, -40.000000)
			arg0:setTopBottom(false, true, -64.000000, 14.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.ClipHero:setLeftRight(false, true, -106.000000, 19.000000)
		registerVal2.ClipHero:setTopBottom(false, true, -64.000000, 14.000000)
		__FUNC_AF44_(registerVal11, {})
	end

	registerVal13.Weapon3Digits = __FUNC_AB80_
	local function __FUNC_B144_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_B373_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, true, -160.000000, -35.000000)
			arg0:setTopBottom(false, true, -64.000000, 14.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.Clip:setLeftRight(false, true, -106.000000, 19.000000)
		registerVal2.Clip:setTopBottom(false, true, -64.000000, 14.000000)
		__FUNC_B373_(registerVal4, {})
		local function __FUNC_B570_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.TotalAmmo:setAlpha(0.000000)
		__FUNC_B570_(registerVal8, {})
		local function __FUNC_B725_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, true, -160.000000, -35.000000)
			arg0:setTopBottom(false, true, -64.000000, 14.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.ClipHero:setLeftRight(false, true, -106.000000, 19.000000)
		registerVal2.ClipHero:setTopBottom(false, true, -64.000000, 14.000000)
		__FUNC_B725_(registerVal11, {})
	end

	registerVal13.Weapon = __FUNC_B144_
	registerVal12.WeaponNoReserve = registerVal13
	registerVal13 = {}
	local function __FUNC_B924_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal2.Clip:setLeftRight(false, true, -160.000000, -35.000000)
		registerVal2.Clip:setTopBottom(false, true, -64.000000, 14.000000)
		registerVal2.Clip:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ClipDual:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Knife:setLeftRight(false, true, 256.000000, 341.000000)
		registerVal2.Knife:setTopBottom(false, true, -38.000000, -12.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Fist:setLeftRight(true, false, 417.760000, 453.240000)
		registerVal2.Fist:setTopBottom(true, false, -3.750000, 70.750000)
		registerVal2.Fist:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration"))
		registerVal2.Fist:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TotalAmmo:setLeftRight(false, true, -60.000000, -2.000000)
		registerVal2.TotalAmmo:setTopBottom(false, true, -37.500000, -7.500000)
		registerVal2.TotalAmmo:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.TotalAmmo:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.ClipMeter:setLeftRight(false, true, -122.500000, -73.500000)
		registerVal2.ClipMeter:setTopBottom(false, true, -7.500000, -1.500000)
		registerVal2.ClipMeter:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.AmmoColorBar:setLeftRight(false, true, -55.500000, -6.500000)
		registerVal2.AmmoColorBar:setTopBottom(false, true, -7.500000, -1.500000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ClipHero:setLeftRight(false, true, -160.000000, -35.000000)
		registerVal2.ClipHero:setTopBottom(false, true, -64.000000, 14.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_B924_
	local function __FUNC_C0B5_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_C22C_(arg0, arg1)
			local function __FUNC_C41D_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Back)
				end
				arg0:setLeftRight(false, true, -60.000000, -2.000000)
				arg0:setTopBottom(false, true, -37.500000, -7.500000)
				arg0:setRGB(1.000000, 1.000000, 1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_C41D_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			arg0:setLeftRight(false, true, -60.500000, -2.500000)
			arg0:setTopBottom(false, true, -6.500000, 23.500000)
			arg0:setRGB(0.000000, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C41D_)
		end

		registerVal8:completeAnimation()
		registerVal2.TotalAmmo:setLeftRight(false, true, -60.000000, -2.000000)
		registerVal2.TotalAmmo:setTopBottom(false, true, -37.500000, -7.500000)
		registerVal2.TotalAmmo:setRGB(1.000000, 1.000000, 1.000000)
		__FUNC_C22C_(registerVal8, {})
	end

	registerVal13.AmmoUpdate = __FUNC_C0B5_
	local function __FUNC_C645_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_C88C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, true, -106.000000, 19.000000)
			arg0:setTopBottom(false, true, -64.000000, 14.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.Clip:setLeftRight(false, true, -160.000000, -35.000000)
		registerVal2.Clip:setTopBottom(false, true, -64.000000, 14.000000)
		__FUNC_C88C_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ClipDual:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_CA8C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, true, -106.000000, 19.000000)
			arg0:setTopBottom(false, true, -64.000000, 14.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.ClipHero:setLeftRight(false, true, -160.000000, -35.000000)
		registerVal2.ClipHero:setTopBottom(false, true, -64.000000, 14.000000)
		__FUNC_CA8C_(registerVal11, {})
	end

	registerVal13.HeroWeapon = __FUNC_C645_
	local function __FUNC_CC8C_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_D0D0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, true, -165.000000, -40.000000)
			arg0:setTopBottom(false, true, -64.000000, 14.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.Clip:setLeftRight(false, true, -160.000000, -35.000000)
		registerVal2.Clip:setTopBottom(false, true, -64.000000, 14.000000)
		registerVal2.Clip:setAlpha(1.000000)
		__FUNC_D0D0_(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.Knife:setLeftRight(false, true, 256.000000, 341.000000)
		registerVal2.Knife:setTopBottom(false, true, -38.000000, -12.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.TotalAmmo:setLeftRight(false, true, -60.000000, -2.000000)
		registerVal2.TotalAmmo:setTopBottom(false, true, -37.500000, -7.500000)
		registerVal2.TotalAmmo:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.TotalAmmo:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.ClipMeter:setLeftRight(false, true, -122.500000, -73.500000)
		registerVal2.ClipMeter:setTopBottom(false, true, -7.500000, -1.500000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.AmmoColorBar:setLeftRight(false, true, -55.500000, -6.500000)
		registerVal2.AmmoColorBar:setTopBottom(false, true, -7.500000, -1.500000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal13.Weapon3Digits = __FUNC_CC8C_
	registerVal12.WeaponDual = registerVal13
	registerVal13 = {}
	local function __FUNC_D2F5_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal2.Clip:setLeftRight(false, true, -160.000000, -35.000000)
		registerVal2.Clip:setTopBottom(false, true, -64.000000, 14.000000)
		registerVal2.Clip:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ClipDual:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Knife:setLeftRight(false, true, 256.000000, 341.000000)
		registerVal2.Knife:setTopBottom(false, true, -38.000000, -12.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Fist:setLeftRight(true, false, 417.760000, 453.240000)
		registerVal2.Fist:setTopBottom(true, false, -3.750000, 70.750000)
		registerVal2.Fist:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration"))
		registerVal2.Fist:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TotalAmmo:setLeftRight(false, true, -60.000000, -2.000000)
		registerVal2.TotalAmmo:setTopBottom(false, true, -37.500000, -7.500000)
		registerVal2.TotalAmmo:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.TotalAmmo:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.ClipMeter:setLeftRight(false, true, -122.500000, -73.500000)
		registerVal2.ClipMeter:setTopBottom(false, true, -7.500000, -1.500000)
		registerVal2.ClipMeter:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.AmmoColorBar:setLeftRight(true, false, 79.500000, 128.500000)
		registerVal2.AmmoColorBar:setTopBottom(true, false, 49.500000, 55.500000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ClipHero:setLeftRight(false, true, -160.000000, -35.000000)
		registerVal2.ClipHero:setTopBottom(false, true, -64.000000, 14.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_D2F5_
	local function __FUNC_DA8F_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_DC04_(arg0, arg1)
			local function __FUNC_DDF5_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Back)
				end
				arg0:setLeftRight(false, true, -60.000000, -2.000000)
				arg0:setTopBottom(false, true, -37.500000, -7.500000)
				arg0:setRGB(1.000000, 1.000000, 1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_DDF5_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			arg0:setLeftRight(false, true, -60.500000, -2.500000)
			arg0:setTopBottom(false, true, -6.500000, 23.500000)
			arg0:setRGB(0.000000, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DDF5_)
		end

		registerVal8:completeAnimation()
		registerVal2.TotalAmmo:setLeftRight(false, true, -60.000000, -2.000000)
		registerVal2.TotalAmmo:setTopBottom(false, true, -37.500000, -7.500000)
		registerVal2.TotalAmmo:setRGB(1.000000, 1.000000, 1.000000)
		__FUNC_DC04_(registerVal8, {})
	end

	registerVal13.AmmoUpdate = __FUNC_DA8F_
	local function __FUNC_E01D_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_E265_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, true, -106.000000, 19.000000)
			arg0:setTopBottom(false, true, -64.000000, 14.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.Clip:setLeftRight(false, true, -160.000000, -35.000000)
		registerVal2.Clip:setTopBottom(false, true, -64.000000, 14.000000)
		__FUNC_E265_(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.TotalAmmo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_E464_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, true, -106.000000, 19.000000)
			arg0:setTopBottom(false, true, -64.000000, 14.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.ClipHero:setLeftRight(false, true, -160.000000, -35.000000)
		registerVal2.ClipHero:setTopBottom(false, true, -64.000000, 14.000000)
		__FUNC_E464_(registerVal11, {})
	end

	registerVal13.HeroWeapon = __FUNC_E01D_
	local function __FUNC_E664_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_EAA8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, true, -165.000000, -40.000000)
			arg0:setTopBottom(false, true, -64.000000, 14.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.Clip:setLeftRight(false, true, -160.000000, -35.000000)
		registerVal2.Clip:setTopBottom(false, true, -64.000000, 14.000000)
		registerVal2.Clip:setAlpha(1.000000)
		__FUNC_EAA8_(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.Knife:setLeftRight(false, true, 256.000000, 341.000000)
		registerVal2.Knife:setTopBottom(false, true, -38.000000, -12.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.TotalAmmo:setLeftRight(false, true, -60.000000, -2.000000)
		registerVal2.TotalAmmo:setTopBottom(false, true, -37.500000, -7.500000)
		registerVal2.TotalAmmo:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.TotalAmmo:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.ClipMeter:setLeftRight(false, true, -122.500000, -73.500000)
		registerVal2.ClipMeter:setTopBottom(false, true, -7.500000, -1.500000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.AmmoColorBar:setLeftRight(false, true, -55.500000, -6.500000)
		registerVal2.AmmoColorBar:setTopBottom(false, true, -7.500000, -1.500000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal13.Weapon3Digits = __FUNC_E664_
	local function __FUNC_ECCD_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_EF14_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, true, -106.000000, 19.000000)
			arg0:setTopBottom(false, true, -64.000000, 14.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.Clip:setLeftRight(false, true, -160.000000, -35.000000)
		registerVal2.Clip:setTopBottom(false, true, -64.000000, 14.000000)
		__FUNC_EF14_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ClipDual:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_F114_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, true, -106.000000, 19.000000)
			arg0:setTopBottom(false, true, -64.000000, 14.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.ClipHero:setLeftRight(false, true, -160.000000, -35.000000)
		registerVal2.ClipHero:setTopBottom(false, true, -64.000000, 14.000000)
		__FUNC_F114_(registerVal11, {})
	end

	registerVal13.WeaponNoReserve = __FUNC_ECCD_
	registerVal12.Weapon = registerVal13
	registerVal13 = {}
	local function __FUNC_F314_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal2.Clip:setLeftRight(false, true, 261.000000, 362.000000)
		registerVal2.Clip:setTopBottom(false, true, -49.000000, -1.000000)
		registerVal2.Clip:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ClipDual:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Knife:setLeftRight(false, true, 256.000000, 341.000000)
		registerVal2.Knife:setTopBottom(false, true, -38.000000, -12.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Fist:setLeftRight(true, false, 30.020000, 65.500000)
		registerVal2.Fist:setTopBottom(true, false, -3.500000, 71.000000)
		registerVal2.Fist:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration"))
		registerVal2.Fist:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TotalAmmo:setLeftRight(false, true, 292.000000, 350.000000)
		registerVal2.TotalAmmo:setTopBottom(false, true, -37.000000, -7.000000)
		registerVal2.TotalAmmo:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.TotalAmmo:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.ClipMeter:setLeftRight(false, true, -122.500000, -73.500000)
		registerVal2.ClipMeter:setTopBottom(false, true, -7.500000, -1.500000)
		registerVal2.ClipMeter:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.AmmoColorBar:setLeftRight(true, false, 420.500000, 469.500000)
		registerVal2.AmmoColorBar:setTopBottom(true, false, 50.000000, 56.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ClipHero:setLeftRight(false, true, 247.500000, 372.500000)
		registerVal2.ClipHero:setTopBottom(false, true, -64.000000, 14.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_F314_
	registerVal12.FistGunGame = registerVal13
	registerVal13 = {}
	local function __FUNC_FAC8_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal2.Clip:setLeftRight(false, true, 261.000000, 362.000000)
		registerVal2.Clip:setTopBottom(false, true, -49.000000, -1.000000)
		registerVal2.Clip:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ClipDual:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Knife:setLeftRight(false, true, 256.000000, 341.000000)
		registerVal2.Knife:setTopBottom(false, true, -38.000000, -12.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Fist:setLeftRight(true, false, 70.760000, 106.240000)
		registerVal2.Fist:setTopBottom(true, false, -3.500000, 71.000000)
		registerVal2.Fist:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration"))
		registerVal2.Fist:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TotalAmmo:setLeftRight(false, true, 292.000000, 350.000000)
		registerVal2.TotalAmmo:setTopBottom(false, true, -37.000000, -7.000000)
		registerVal2.TotalAmmo:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.TotalAmmo:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.ClipMeter:setLeftRight(false, true, -122.500000, -73.500000)
		registerVal2.ClipMeter:setTopBottom(false, true, -7.500000, -1.500000)
		registerVal2.ClipMeter:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.AmmoColorBar:setLeftRight(false, true, 285.500000, 334.500000)
		registerVal2.AmmoColorBar:setTopBottom(false, true, -7.000000, -1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ClipHero:setLeftRight(false, true, 247.500000, 372.500000)
		registerVal2.ClipHero:setTopBottom(false, true, -64.000000, 14.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_FAC8_
	registerVal12.Fist = registerVal13
	registerVal13 = {}
	local function __FUNC_10272_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal2.Clip:setLeftRight(false, true, 261.000000, 362.000000)
		registerVal2.Clip:setTopBottom(false, true, -49.000000, -1.000000)
		registerVal2.Clip:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ClipDual:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Knife:setLeftRight(false, true, -135.000000, -50.000000)
		registerVal2.Knife:setTopBottom(false, true, -38.000000, -12.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Fist:setLeftRight(true, false, 417.760000, 453.240000)
		registerVal2.Fist:setTopBottom(true, false, -3.750000, 70.750000)
		registerVal2.Fist:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration"))
		registerVal2.Fist:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TotalAmmo:setLeftRight(false, true, 292.000000, 350.000000)
		registerVal2.TotalAmmo:setTopBottom(false, true, -37.000000, -7.000000)
		registerVal2.TotalAmmo:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.TotalAmmo:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.ClipMeter:setLeftRight(false, true, -122.500000, -73.500000)
		registerVal2.ClipMeter:setTopBottom(false, true, -7.500000, -1.500000)
		registerVal2.ClipMeter:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.AmmoColorBar:setLeftRight(true, false, 420.500000, 469.500000)
		registerVal2.AmmoColorBar:setTopBottom(true, false, 50.000000, 56.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ClipHero:setLeftRight(false, true, 247.500000, 372.500000)
		registerVal2.ClipHero:setTopBottom(false, true, -64.000000, 14.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_10272_
	registerVal12.KnifeGunGame = registerVal13
	registerVal13 = {}
	local function __FUNC_10A24_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal2.Clip:setLeftRight(false, true, 261.000000, 362.000000)
		registerVal2.Clip:setTopBottom(false, true, -49.000000, -1.000000)
		registerVal2.Clip:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ClipDual:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Knife:setLeftRight(false, true, -89.000000, -4.000000)
		registerVal2.Knife:setTopBottom(false, true, -39.000000, -13.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Fist:setLeftRight(true, false, 417.760000, 453.240000)
		registerVal2.Fist:setTopBottom(true, false, -3.750000, 70.750000)
		registerVal2.Fist:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration"))
		registerVal2.Fist:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TotalAmmo:setLeftRight(false, true, 292.000000, 350.000000)
		registerVal2.TotalAmmo:setTopBottom(false, true, -37.000000, -7.000000)
		registerVal2.TotalAmmo:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.TotalAmmo:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.ClipMeter:setLeftRight(false, true, -122.500000, -73.500000)
		registerVal2.ClipMeter:setTopBottom(false, true, -7.500000, -1.500000)
		registerVal2.ClipMeter:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.AmmoColorBar:setLeftRight(false, true, 285.500000, 334.500000)
		registerVal2.AmmoColorBar:setTopBottom(false, true, -7.000000, -1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ClipHero:setLeftRight(false, true, 247.500000, 372.500000)
		registerVal2.ClipHero:setTopBottom(false, true, -64.000000, 14.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_10A24_
	registerVal12.Knife = registerVal13
	registerVal13 = {}
	local function __FUNC_111CE_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal2.Clip:setLeftRight(false, true, -165.000000, -40.000000)
		registerVal2.Clip:setTopBottom(false, true, -64.000000, 14.000000)
		registerVal2.Clip:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ClipDual:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Knife:setLeftRight(false, true, 256.000000, 341.000000)
		registerVal2.Knife:setTopBottom(false, true, -38.000000, -12.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Fist:setLeftRight(true, false, 417.760000, 453.240000)
		registerVal2.Fist:setTopBottom(true, false, -3.750000, 70.750000)
		registerVal2.Fist:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration"))
		registerVal2.Fist:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fist:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TotalAmmo:setLeftRight(false, true, -60.000000, -2.000000)
		registerVal2.TotalAmmo:setTopBottom(false, true, -37.500000, -7.500000)
		registerVal2.TotalAmmo:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.TotalAmmo:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.ClipMeter:setLeftRight(false, true, -133.500000, -70.500000)
		registerVal2.ClipMeter:setTopBottom(false, true, -7.500000, -1.500000)
		registerVal2.ClipMeter:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.AmmoColorBar:setLeftRight(true, false, 79.500000, 128.500000)
		registerVal2.AmmoColorBar:setTopBottom(true, false, 49.500000, 55.500000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ClipHero:setLeftRight(false, true, -165.000000, -40.000000)
		registerVal2.ClipHero:setTopBottom(false, true, -64.000000, 14.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_111CE_
	local function __FUNC_11967_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_11ADC_(arg0, arg1)
			local function __FUNC_11CCD_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Back)
				end
				arg0:setLeftRight(false, true, -60.000000, -2.000000)
				arg0:setTopBottom(false, true, -37.500000, -7.500000)
				arg0:setRGB(1.000000, 1.000000, 1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_11CCD_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			arg0:setLeftRight(false, true, -60.500000, -2.500000)
			arg0:setTopBottom(false, true, -6.500000, 23.500000)
			arg0:setRGB(0.000000, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11CCD_)
		end

		registerVal8:completeAnimation()
		registerVal2.TotalAmmo:setLeftRight(false, true, -60.000000, -2.000000)
		registerVal2.TotalAmmo:setTopBottom(false, true, -37.500000, -7.500000)
		registerVal2.TotalAmmo:setRGB(1.000000, 1.000000, 1.000000)
		__FUNC_11ADC_(registerVal8, {})
	end

	registerVal13.AmmoUpdate = __FUNC_11967_
	local function __FUNC_11EF5_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_120B9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, true, -106.000000, 19.000000)
			arg0:setTopBottom(false, true, -64.000000, 14.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.Clip:setLeftRight(false, true, -165.000000, -40.000000)
		registerVal2.Clip:setTopBottom(false, true, -64.000000, 14.000000)
		__FUNC_120B9_(registerVal4, {})
		local function __FUNC_122B8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, true, -106.000000, 19.000000)
			arg0:setTopBottom(false, true, -64.000000, 14.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.ClipHero:setLeftRight(false, true, -165.000000, -40.000000)
		registerVal2.ClipHero:setTopBottom(false, true, -64.000000, 14.000000)
		__FUNC_122B8_(registerVal11, {})
	end

	registerVal13.HeroWeapon = __FUNC_11EF5_
	local function __FUNC_124B8_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_125F7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, true, -160.000000, -35.000000)
			arg0:setTopBottom(false, true, -64.000000, 14.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.Clip:setLeftRight(false, true, -165.000000, -40.000000)
		registerVal2.Clip:setTopBottom(false, true, -64.000000, 14.000000)
		__FUNC_125F7_(registerVal4, {})
	end

	registerVal13.Weapon = __FUNC_124B8_
	local function __FUNC_127F6_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_12933_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, true, -160.000000, -35.000000)
			arg0:setTopBottom(false, true, -64.000000, 14.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.Clip:setLeftRight(false, true, -165.000000, -40.000000)
		registerVal2.Clip:setTopBottom(false, true, -64.000000, 14.000000)
		__FUNC_12933_(registerVal4, {})
	end

	registerVal13.DefaultState = __FUNC_127F6_
	registerVal12.Weapon3Digits = registerVal13
	registerVal2.clipsPerState = registerVal12
	registerVal14 = {}
	registerVal15 = {}
	registerVal15.stateName = "HiddenGamemodeWeapon"
	local function __FUNC_12B32_(arg0, arg2, arg3)
		return IsCurrentViewmodelWeaponGamemodeHiddenAmmo(arg1)
	end

	registerVal15.condition = __FUNC_12B32_
	local registerVal16 = {}
	registerVal16.stateName = "HeroWeapon"
	local function __FUNC_12BA0_(arg0, arg2, arg3)
		return UseHeroWeaponAmmoCounter(arg0, arg1)
	end

	registerVal16.condition = __FUNC_12BA0_
	local registerVal17 = {}
	registerVal17.stateName = "WeaponNoReserve"
	local function __FUNC_12C02_(arg0, arg2, arg3)
		local registerVal3 = IsCurrentWeaponReference(arg1, "lmg_infinite")
		if registerVal3 then
			registerVal3 = IsGameTypeEqualToString("gun")
			if not registerVal3 then
				registerVal3 = IsGameTypeEqualToString("prop")
			else
			end
		end
		return true
	end

	registerVal17.condition = __FUNC_12C02_
	local registerVal18 = {}
	registerVal18.stateName = "WeaponDual"
	local function __FUNC_12CEC_(arg0, arg2, arg3)
		local registerVal3 = WeaponUsesAmmo(arg1)
		if registerVal3 then
			registerVal3 = IsModelValueGreaterThanOrEqualTo(arg1, "currentWeapon.ammoInDWClip", 0.000000)
		end
		return registerVal3
	end

	registerVal18.condition = __FUNC_12CEC_
	local registerVal19 = {}
	registerVal19.stateName = "Weapon"
	local function __FUNC_12DAF_(arg0, arg2, arg3)
		local registerVal3 = WeaponUsesAmmo(arg1)
		if registerVal3 then
			registerVal3 = IsWeaponClipGreaterThanOrEqualTo(arg1, 100.000000)
		end
		return (not registerVal3)
	end

	registerVal19.condition = __FUNC_12DAF_
	local registerVal20 = {}
	registerVal20.stateName = "FistGunGame"
	local function __FUNC_12E4B_(arg0, arg2, arg3)
		local registerVal3 = WeaponUsesAmmo(arg1)
		if not registerVal3 then
			registerVal3 = IsCurrentWeaponReference(arg1, "bare_hands")
			if registerVal3 then
				registerVal3 = IsGameTypeEqualToString("gun")
			else
			end
		end
		return true
	end

	registerVal20.condition = __FUNC_12E4B_
	local registerVal21 = {}
	registerVal21.stateName = "Fist"
	local function __FUNC_12F38_(arg0, arg2, arg3)
		local registerVal3 = WeaponUsesAmmo(arg1)
		if not registerVal3 then
			registerVal3 = IsCurrentWeaponReference(arg1, "bare_hands")
		else
		end
		return true
	end

	registerVal21.condition = __FUNC_12F38_
	local registerVal22 = {}
	registerVal22.stateName = "KnifeGunGame"
	local function __FUNC_12FE6_(arg0, arg2, arg3)
		local registerVal3 = WeaponUsesAmmo(arg1)
		if not registerVal3 then
			registerVal3 = IsCurrentWeaponMeleeSecondary(arg1)
			if registerVal3 then
				registerVal3 = IsGameTypeEqualToString("gun")
			else
			end
		end
		return true
	end

	registerVal22.condition = __FUNC_12FE6_
	local registerVal23 = {}
	registerVal23.stateName = "Knife"
	local function __FUNC_130C1_(arg0, arg2, arg3)
		local registerVal3 = WeaponUsesAmmo(arg1)
		if not registerVal3 then
			registerVal3 = IsCurrentWeaponMeleeSecondary(arg1)
		else
		end
		return true
	end

	registerVal23.condition = __FUNC_130C1_
	local registerVal24 = {}
	registerVal24.stateName = "Weapon3Digits"
	local function __FUNC_1315B_(arg0, arg2, arg3)
		return IsWeaponClipGreaterThanOrEqualTo(arg1, 100.000000)
	end

	registerVal24.condition = __FUNC_1315B_
	registerVal14 = {registerVal15, registerVal16, registerVal17, registerVal18, registerVal19, registerVal20, registerVal21, registerVal22, registerVal23, registerVal24}
	registerVal2:mergeStateConditions(registerVal14)
	registerVal15 = Engine.GetModelForController(arg1)
	registerVal14 = Engine.GetModel(registerVal15, "currentWeapon.viewmodelWeaponName")
	local function __FUNC_131C7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.viewmodelWeaponName"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal14, __FUNC_131C7_)
	registerVal15 = Engine.GetModelForController(arg1)
	registerVal14 = Engine.GetModel(registerVal15, "currentWeapon.weapon")
	local function __FUNC_132FB_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.weapon"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal14, __FUNC_132FB_)
	registerVal15 = Engine.GetModelForController(arg1)
	registerVal14 = Engine.GetModel(registerVal15, "playerAbilities.playerGadget3.isInUse")
	local function __FUNC_13422_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.isInUse"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal14, __FUNC_13422_)
	registerVal15 = Engine.GetModelForController(arg1)
	registerVal14 = Engine.GetModel(registerVal15, "playerAbilities.playerGadget3.name")
	local function __FUNC_1355B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.name"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal14, __FUNC_1355B_)
	registerVal15 = Engine.GetModelForController(arg1)
	registerVal14 = Engine.GetModel(registerVal15, "currentWeapon.equippedWeaponReference")
	local function __FUNC_13690_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.equippedWeaponReference"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal14, __FUNC_13690_)
	registerVal15 = Engine.GetModelForController(arg1)
	registerVal14 = Engine.GetModel(registerVal15, "currentWeapon.ammoInDWClip")
	local function __FUNC_137CB_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.ammoInDWClip"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal14, __FUNC_137CB_)
	registerVal15 = Engine.GetModelForController(arg1)
	registerVal14 = Engine.GetModel(registerVal15, "currentWeapon.clipMaxAmmo")
	local function __FUNC_138F8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.clipMaxAmmo"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal14, __FUNC_138F8_)
	local function __FUNC_13A27_(arg0)
		arg0.AmmoWidgetMPLowAmmoGlowContainer0:close()
		arg0.Clip:close()
		arg0.ClipDual:close()
		arg0.Knife:close()
		arg0.Fist:close()
		arg0.TotalAmmo:close()
		arg0.ClipMeter:close()
		arg0.AmmoColorBar:close()
		arg0.ClipHero:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_13A27_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

