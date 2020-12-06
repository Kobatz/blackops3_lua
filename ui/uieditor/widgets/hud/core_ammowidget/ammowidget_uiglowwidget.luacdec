-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_UIGlowWidget = registerVal1
function CoD.AmmoWidget_UIGlowWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_UIGlowWidget)
	registerVal2.id = "AmmoWidget_UIGlowWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 160.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 57.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 6.000000, 272.670000)
	registerVal3:setTopBottom(true, false, -51.000000, 99.480000)
	registerVal3:setAlpha(0.600000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_ammowidget_uiglow"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.UIGlow = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 8.000000, 271.990000)
	registerVal4:setTopBottom(true, false, -51.000000, 99.480000)
	registerVal4:setAlpha(0.600000)
	registerVal4:setImage(RegisterImage("uie_t7_core_hud_ammowidget_uiglowknife"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.UIGlowKnife = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_9AC_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.UIGlow:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.UIGlowKnife:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_9AC_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_B08_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.UIGlow:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.UIGlowKnife:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_B08_
	registerVal5.WeaponDual = registerVal6
	registerVal6 = {}
	local function __FUNC_C64_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.UIGlow:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.UIGlowKnife:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_C64_
	registerVal5.Weapon = registerVal6
	registerVal6 = {}
	local function __FUNC_DC0_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.UIGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.UIGlowKnife:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_DC0_
	registerVal5.Knife = registerVal6
	registerVal6 = {}
	local function __FUNC_F1C_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.UIGlow:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.UIGlowKnife:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_F1C_
	registerVal5.Weapon3Digits = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "WeaponDual"
	local function __FUNC_1078_(arg0, arg2, arg3)
		local registerVal3 = WeaponUsesAmmo(arg1)
		if registerVal3 then
			registerVal3 = IsModelValueGreaterThanOrEqualTo(arg1, "currentWeapon.ammoInDWClip", 0.000000)
		end
		return registerVal3
	end

	registerVal8.condition = __FUNC_1078_
	local registerVal9 = {}
	registerVal9.stateName = "Weapon"
	local function __FUNC_113B_(arg0, arg2, arg3)
		local registerVal3 = WeaponUsesAmmo(arg1)
		if registerVal3 then
			registerVal3 = IsWeaponClipGreaterThanOrEqualTo(arg1, 100.000000)
		end
		return (not registerVal3)
	end

	registerVal9.condition = __FUNC_113B_
	local registerVal10 = {}
	registerVal10.stateName = "Knife"
	local function __FUNC_11D7_(arg0, arg2, arg3)
		local registerVal3 = WeaponUsesAmmo(arg1)
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_11D7_
	local registerVal11 = {}
	registerVal11.stateName = "Weapon3Digits"
	local function __FUNC_122C_(arg0, arg2, arg3)
		return IsWeaponClipGreaterThanOrEqualTo(arg1, 100.000000)
	end

	registerVal11.condition = __FUNC_122C_
	registerVal7 = {registerVal8, registerVal9, registerVal10, registerVal11}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "currentWeapon.weapon")
	local function __FUNC_129B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.weapon"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_129B_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "currentWeapon.ammoInDWClip")
	local function __FUNC_13C2_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.ammoInDWClip"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_13C2_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "currentWeapon.clipMaxAmmo")
	local function __FUNC_14F0_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.clipMaxAmmo"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_14F0_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

