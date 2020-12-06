-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidgetMP_PanelEquipContainer")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidgetMP_PanelCircleContainer")
require("ui.uieditor.widgets.HUD.CP_DamageWidget.DamageWidgetMP_PanelContainer")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidgetMP_HeldItemPanel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidgetMP_PanelContainer = registerVal1
function CoD.AmmoWidgetMP_PanelContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidgetMP_PanelContainer)
	registerVal2.id = "AmmoWidgetMP_PanelContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 228.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 106.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.AmmoWidgetMP_PanelEquipContainer.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -74.010000, -27.680000)
	registerVal3:setTopBottom(false, false, -55.000000, -17.670000)
	registerVal3:setZoom(-10.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.PanelTactical = registerVal3
	local registerVal4 = CoD.AmmoWidgetMP_PanelEquipContainer.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -30.010000, 16.330000)
	registerVal4:setTopBottom(false, false, -55.000000, -17.670000)
	registerVal4:setZoom(-10.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.PanelLethal = registerVal4
	local registerVal5 = CoD.AmmoWidgetMP_PanelCircleContainer.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, 15.990000, 116.990000)
	registerVal5:setTopBottom(false, false, -48.000000, 53.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.PanelOctagon = registerVal5
	local registerVal6 = CoD.DamageWidgetMP_PanelContainer.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -81.000000, 57.000000)
	registerVal6:setTopBottom(false, false, -16.670000, 29.000000)
	registerVal6:setZoom(-10.000000)
	registerVal6.PanelAmmo0:setShaderVector(0.000000, 30.000000, 10.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.PanelAmmo = registerVal6
	local registerVal7 = CoD.AmmoWidgetMP_HeldItemPanel.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 6.000000, 52.330000)
	registerVal7:setTopBottom(true, false, -2.000000, 35.330000)
	registerVal7:setAlpha(0.000000)
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Show"
	local function __FUNC_FC1_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal11.condition = __FUNC_FC1_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal2:addElement(registerVal7)
	registerVal2.PanelFlagEnemy = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_100D_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal6:completeAnimation()
		registerVal2.PanelAmmo:setLeftRight(false, false, -114.000000, 35.000000)
		registerVal2.PanelAmmo:setTopBottom(false, false, -16.670000, 29.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.DefaultClip = __FUNC_100D_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_116A_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal6:completeAnimation()
		registerVal2.PanelAmmo:setLeftRight(false, false, -147.000000, -11.000000)
		registerVal2.PanelAmmo:setTopBottom(false, false, -16.670000, 29.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.DefaultClip = __FUNC_116A_
	registerVal8.GunDualClip = registerVal9
	registerVal9 = {}
	local function __FUNC_12C6_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal6:completeAnimation()
		registerVal2.PanelAmmo:setLeftRight(false, false, -81.000000, -11.000000)
		registerVal2.PanelAmmo:setTopBottom(false, false, -16.670000, 29.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.DefaultClip = __FUNC_12C6_
	registerVal8.Gun = registerVal9
	registerVal9 = {}
	local function __FUNC_1422_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal6:completeAnimation()
		registerVal2.PanelAmmo:setLeftRight(false, false, -81.340000, 57.000000)
		registerVal2.PanelAmmo:setTopBottom(false, false, -16.670000, 29.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.DefaultClip = __FUNC_1422_
	registerVal8.HeroWeapon = registerVal9
	registerVal9 = {}
	local function __FUNC_157E_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal6:completeAnimation()
		registerVal2.PanelAmmo:setLeftRight(false, false, -180.000000, 39.000000)
		registerVal2.PanelAmmo:setTopBottom(false, false, -16.670000, 29.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.DefaultClip = __FUNC_157E_
	registerVal8.WeaponDual = registerVal9
	registerVal9 = {}
	local function __FUNC_16DA_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal6:completeAnimation()
		registerVal2.PanelAmmo:setLeftRight(false, false, -114.000000, 57.000000)
		registerVal2.PanelAmmo:setTopBottom(false, false, -16.670000, 29.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.DefaultClip = __FUNC_16DA_
	registerVal8.Weapon = registerVal9
	registerVal9 = {}
	local function __FUNC_1836_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal6:completeAnimation()
		registerVal2.PanelAmmo:setLeftRight(false, false, -81.340000, 47.000000)
		registerVal2.PanelAmmo:setTopBottom(false, false, -16.670000, 29.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.DefaultClip = __FUNC_1836_
	registerVal8.Knife = registerVal9
	registerVal9 = {}
	local function __FUNC_1992_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal6:completeAnimation()
		registerVal2.PanelAmmo:setLeftRight(false, false, -127.000000, 39.000000)
		registerVal2.PanelAmmo:setTopBottom(false, false, -16.670000, 29.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.DefaultClip = __FUNC_1992_
	registerVal8.Weapon3Digits = registerVal9
	registerVal9 = {}
	local function __FUNC_1AEE_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal6:completeAnimation()
		registerVal2.PanelAmmo:setLeftRight(false, false, -81.340000, 57.000000)
		registerVal2.PanelAmmo:setTopBottom(false, false, -16.670000, 29.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.DefaultClip = __FUNC_1AEE_
	registerVal8.WeaponNoReserve = registerVal9
	registerVal2.clipsPerState = registerVal8
	registerVal10 = {}
	registerVal11 = {}
	registerVal11.stateName = "GunDualClip"
	local function __FUNC_1C4A_(arg0, arg2, arg3)
		local registerVal3 = IsGameTypeEqualToString("gun")
		registerVal3 = WeaponUsesAmmo(arg1)
		if registerVal3 and registerVal3 then
			registerVal3 = IsModelValueGreaterThanOrEqualTo(arg1, "currentWeapon.ammoInDWClip", 0.000000)
		end
		return registerVal3
	end

	registerVal11.condition = __FUNC_1C4A_
	local registerVal12 = {}
	registerVal12.stateName = "Gun"
	local function __FUNC_1D4D_(arg0, arg1, arg2)
		local registerVal3 = IsGameTypeEqualToString("gun")
		if not registerVal3 then
			registerVal3 = IsGameTypeEqualToString("prop")
		end
		return registerVal3
	end

	registerVal12.condition = __FUNC_1D4D_
	local registerVal13 = {}
	registerVal13.stateName = "HeroWeapon"
	local function __FUNC_1DD8_(arg0, arg2, arg3)
		return UseHeroWeaponAmmoCounter(arg0, arg1)
	end

	registerVal13.condition = __FUNC_1DD8_
	local registerVal14 = {}
	registerVal14.stateName = "WeaponNoReserve"
	local function __FUNC_1E3A_(arg0, arg2, arg3)
		return IsCurrentWeaponReference(arg1, "lmg_infinite")
	end

	registerVal14.condition = __FUNC_1E3A_
	local registerVal15 = {}
	registerVal15.stateName = "WeaponDual"
	local function __FUNC_1EB0_(arg0, arg2, arg3)
		local registerVal3 = WeaponUsesAmmo(arg1)
		if registerVal3 then
			registerVal3 = IsModelValueGreaterThanOrEqualTo(arg1, "currentWeapon.ammoInDWClip", 0.000000)
		end
		return registerVal3
	end

	registerVal15.condition = __FUNC_1EB0_
	local registerVal16 = {}
	registerVal16.stateName = "Weapon"
	local function __FUNC_1F73_(arg0, arg2, arg3)
		local registerVal3 = WeaponUsesAmmo(arg1)
		if registerVal3 then
			registerVal3 = IsWeaponClipGreaterThanOrEqualTo(arg1, 100.000000)
		end
		return (not registerVal3)
	end

	registerVal16.condition = __FUNC_1F73_
	local registerVal17 = {}
	registerVal17.stateName = "Knife"
	local function __FUNC_200F_(arg0, arg2, arg3)
		local registerVal3 = WeaponUsesAmmo(arg1)
		if not registerVal3 then
			registerVal3 = IsHeroWeaponGadgetCurrentWeapon(arg0, arg1)
		else
		end
		return true
	end

	registerVal17.condition = __FUNC_200F_
	local registerVal18 = {}
	registerVal18.stateName = "Weapon3Digits"
	local function __FUNC_20B1_(arg0, arg2, arg3)
		return IsWeaponClipGreaterThanOrEqualTo(arg1, 100.000000)
	end

	registerVal18.condition = __FUNC_20B1_
	registerVal10 = {registerVal11, registerVal12, registerVal13, registerVal14, registerVal15, registerVal16, registerVal17, registerVal18}
	registerVal2:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "currentWeapon.weapon")
	local function __FUNC_211F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.weapon"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_211F_)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "currentWeapon.equippedWeaponReference")
	local function __FUNC_2246_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.equippedWeaponReference"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_2246_)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "currentWeapon.ammoInDWClip")
	local function __FUNC_237F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.ammoInDWClip"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_237F_)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "playerAbilities.playerGadget3.isInUse")
	local function __FUNC_24AC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.isInUse"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_24AC_)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "playerAbilities.playerGadget3.name")
	local function __FUNC_25E7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.name"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_25E7_)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "currentWeapon.clipMaxAmmo")
	local function __FUNC_271C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.clipMaxAmmo"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_271C_)
	local function __FUNC_284B_(arg0)
		arg0.PanelTactical:close()
		arg0.PanelLethal:close()
		arg0.PanelOctagon:close()
		arg0.PanelAmmo:close()
		arg0.PanelFlagEnemy:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_284B_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

