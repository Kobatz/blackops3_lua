-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_ClipContainerNew")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_Knife")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_TotalAmmo")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_AmmoMeterColor")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_ClipMeterColor")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_ClipInfo = registerVal1
function CoD.AmmoWidget_ClipInfo.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_ClipInfo)
	registerVal2.id = "AmmoWidget_ClipInfo"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 135.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 57.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.AmmoWidget_ClipContainerNew.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -148.000000, -47.000000)
	registerVal3:setTopBottom(false, true, -49.000000, -1.000000)
	registerVal3:setAlpha(0.800000)
	registerVal3:setZoom(3.000000)
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_cheap_blur"))
	registerVal3:setShaderVector(0.000000, 0.200000, 0.500000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 10.000000, -5.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, 4.000000, 1.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_157D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.Clip.Clip:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "CurrentWeapon", "ammoInClip", __FUNC_157D_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "LowAmmo"
	local function __FUNC_165C_(arg0, arg2, arg3)
		local registerVal3 = IsLowAmmoClip(arg1)
		if registerVal3 then
			registerVal3 = WeaponHasAmmo(arg1)
		end
		return registerVal3
	end

	registerVal7.condition = __FUNC_165C_
	local registerVal8 = {}
	registerVal8.stateName = "NoAmmo"
	local function __FUNC_16DA_(arg0, arg2, arg3)
		local registerVal3 = WeaponHasAmmo(arg1)
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_16DA_
	registerVal6 = {registerVal7, registerVal8}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "currentWeapon.ammoStock")
	local function __FUNC_172F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.ammoStock"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_172F_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "currentWeapon.ammoInClip")
	local function __FUNC_1859_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.ammoInClip"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_1859_)
	registerVal2:addElement(registerVal3)
	registerVal2.Clip = registerVal3
	local registerVal4 = CoD.AmmoWidget_Knife.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, 256.000000, 341.000000)
	registerVal4:setTopBottom(false, true, -38.000000, -12.000000)
	registerVal4:setAlpha(0.900000)
	registerVal4:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal4:setShaderVector(0.000000, 0.250000, 1.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 1.200000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 3.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Knife = registerVal4
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
	local function __FUNC_1986_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.TotalAmmoLbl:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "CurrentWeapon", "ammoStock", __FUNC_1986_)
	registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "NoAmmo"
	local function __FUNC_1A60_(arg0, arg2, arg3)
		local registerVal3 = WeaponHasAmmo(arg1)
		return (not registerVal3)
	end

	registerVal9.condition = __FUNC_1A60_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "currentWeapon.ammoStock")
	local function __FUNC_1AB7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.ammoStock"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_1AB7_)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "currentWeapon.ammoInClip")
	local function __FUNC_1BE1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.ammoInClip"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_1BE1_)
	registerVal2:addElement(registerVal5)
	registerVal2.TotalAmmo = registerVal5
	registerVal6 = CoD.AmmoWidget_AmmoMeterColor.new(arg0, arg1)
	registerVal6:setLeftRight(false, true, -116.000000, 4.000000)
	registerVal6:setTopBottom(false, true, -4.000000, 0.000000)
	registerVal6:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal6:setShaderVector(0.000000, 0.200000, 0.500000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "NoAmmo"
	local function __FUNC_1D0E_(arg0, arg2, arg3)
		local registerVal3 = WeaponHasAmmo(arg1)
		if not registerVal3 then
			registerVal3 = WeaponUsesAmmo(arg1)
		else
		end
		return true
	end

	registerVal10.condition = __FUNC_1D0E_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "currentWeapon.ammoStock")
	local function __FUNC_1D97_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.ammoStock"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:subscribeToModel(registerVal9, __FUNC_1D97_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "currentWeapon.ammoInClip")
	local function __FUNC_1EC1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.ammoInClip"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:subscribeToModel(registerVal9, __FUNC_1EC1_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "currentWeapon.weapon")
	local function __FUNC_1FEE_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.weapon"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:subscribeToModel(registerVal9, __FUNC_1FEE_)
	registerVal2:addElement(registerVal6)
	registerVal2.AmmoColorBar = registerVal6
	registerVal7 = CoD.AmmoWidget_ClipMeterColor.new(arg0, arg1)
	registerVal7:setLeftRight(false, true, -116.000000, -50.000000)
	registerVal7:setTopBottom(false, true, -4.000000, 0.000000)
	registerVal7:setZoom(1.000000)
	registerVal7:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal7:setShaderVector(0.000000, 0.300000, 0.500000, 0.000000, 0.000000)
	registerVal7:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "LowAmmo"
	local function __FUNC_2116_(arg0, arg2, arg3)
		local registerVal3 = IsLowAmmoClip(arg1)
		if registerVal3 then
			registerVal3 = WeaponHasAmmo(arg1)
		end
		return registerVal3
	end

	registerVal11.condition = __FUNC_2116_
	local registerVal12 = {}
	registerVal12.stateName = "NoAmmo"
	local function __FUNC_2192_(arg0, arg2, arg3)
		local registerVal3 = WeaponHasAmmo(arg1)
		return (not registerVal3)
	end

	registerVal12.condition = __FUNC_2192_
	registerVal10 = {registerVal11, registerVal12}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "currentWeapon.ammoStock")
	local function __FUNC_21E7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.ammoStock"
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:subscribeToModel(registerVal10, __FUNC_21E7_)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "currentWeapon.ammoInClip")
	local function __FUNC_2311_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.ammoInClip"
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:subscribeToModel(registerVal10, __FUNC_2311_)
	registerVal2:addElement(registerVal7)
	registerVal2.ClipMeter = registerVal7
	registerVal8 = {}
	registerVal9 = {}
	local function __FUNC_243E_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.Clip:setLeftRight(false, true, -148.000000, -47.000000)
		registerVal2.Clip:setTopBottom(false, true, -49.000000, -1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Knife:setLeftRight(false, true, 256.000000, 341.000000)
		registerVal2.Knife:setTopBottom(false, true, -38.000000, -12.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TotalAmmo:setLeftRight(false, true, -60.000000, -2.000000)
		registerVal2.TotalAmmo:setTopBottom(false, true, -37.500000, -7.500000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.AmmoColorBar:setLeftRight(true, false, 79.000000, 130.000000)
		registerVal2.AmmoColorBar:setTopBottom(true, false, 49.500000, 54.500000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ClipMeter:setLeftRight(true, false, 12.500000, 61.500000)
		registerVal2.ClipMeter:setTopBottom(true, false, 49.500000, 55.500000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_243E_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_280B_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.Clip:setLeftRight(false, true, -148.000000, -47.000000)
		registerVal2.Clip:setTopBottom(false, true, -49.000000, -1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Knife:setLeftRight(false, true, 256.000000, 341.000000)
		registerVal2.Knife:setTopBottom(false, true, -38.000000, -12.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TotalAmmo:setLeftRight(false, true, -60.000000, -2.000000)
		registerVal2.TotalAmmo:setTopBottom(false, true, -37.500000, -7.500000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.AmmoColorBar:setLeftRight(false, true, -56.000000, -5.000000)
		registerVal2.AmmoColorBar:setTopBottom(false, true, -7.500000, -2.500000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ClipMeter:setLeftRight(false, true, -122.500000, -73.500000)
		registerVal2.ClipMeter:setTopBottom(false, true, -7.500000, -1.500000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_280B_
	registerVal8.Weapon = registerVal9
	registerVal9 = {}
	local function __FUNC_2BD2_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.Clip:setLeftRight(false, true, 261.000000, 362.000000)
		registerVal2.Clip:setTopBottom(false, true, -49.000000, -1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Knife:setLeftRight(false, true, -89.000000, -4.000000)
		registerVal2.Knife:setTopBottom(false, true, -39.000000, -13.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TotalAmmo:setLeftRight(false, true, 292.000000, 350.000000)
		registerVal2.TotalAmmo:setTopBottom(false, true, -37.000000, -7.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.AmmoColorBar:setLeftRight(false, true, 239.000000, 345.000000)
		registerVal2.AmmoColorBar:setTopBottom(false, true, -4.000000, 0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ClipMeter:setLeftRight(true, false, 371.500000, 420.500000)
		registerVal2.ClipMeter:setTopBottom(true, false, 50.000000, 56.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_2BD2_
	registerVal8.Knife = registerVal9
	registerVal9 = {}
	local function __FUNC_2F9F_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.Clip:setLeftRight(false, true, -154.000000, -53.000000)
		registerVal2.Clip:setTopBottom(false, true, -49.000000, -1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Knife:setLeftRight(false, true, 256.000000, 341.000000)
		registerVal2.Knife:setTopBottom(false, true, -38.000000, -12.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TotalAmmo:setLeftRight(false, true, -60.000000, -2.000000)
		registerVal2.TotalAmmo:setTopBottom(false, true, -37.500000, -7.500000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.AmmoColorBar:setLeftRight(true, false, 79.000000, 130.000000)
		registerVal2.AmmoColorBar:setTopBottom(true, false, 49.500000, 54.500000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ClipMeter:setLeftRight(true, false, 1.500000, 64.500000)
		registerVal2.ClipMeter:setTopBottom(true, false, 49.500000, 55.500000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_2F9F_
	registerVal8.Weapon3Digits = registerVal9
	registerVal2.clipsPerState = registerVal8
	registerVal10 = {}
	registerVal11 = {}
	registerVal11.stateName = "Weapon"
	local function __FUNC_336B_(arg0, arg2, arg3)
		local registerVal3 = WeaponUsesAmmo(arg1)
		if registerVal3 then
			registerVal3 = IsWeaponClipGreaterThanOrEqualTo(arg1, 100.000000)
		end
		return (not registerVal3)
	end

	registerVal11.condition = __FUNC_336B_
	registerVal12 = {}
	registerVal12.stateName = "Knife"
	local function __FUNC_3407_(arg0, arg2, arg3)
		local registerVal3 = WeaponUsesAmmo(arg1)
		if not registerVal3 then
			registerVal3 = IsHeroWeaponGadgetCurrentWeapon(arg0, arg1)
		else
		end
		return true
	end

	registerVal12.condition = __FUNC_3407_
	local registerVal13 = {}
	registerVal13.stateName = "Weapon3Digits"
	local function __FUNC_34A9_(arg0, arg2, arg3)
		return IsWeaponClipGreaterThanOrEqualTo(arg1, 100.000000)
	end

	registerVal13.condition = __FUNC_34A9_
	registerVal10 = {registerVal11, registerVal12, registerVal13}
	registerVal2:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "currentWeapon.weapon")
	local function __FUNC_3517_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.weapon"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_3517_)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "currentWeapon.clipMaxAmmo")
	local function __FUNC_363E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.clipMaxAmmo"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_363E_)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "playerAbilities.playerGadget3.isInUse")
	local function __FUNC_376B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.isInUse"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_376B_)
	local function __FUNC_38A3_(arg0)
		arg0.Clip:close()
		arg0.Knife:close()
		arg0.TotalAmmo:close()
		arg0.AmmoColorBar:close()
		arg0.ClipMeter:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_38A3_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

