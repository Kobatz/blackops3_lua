-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidgetMP_PanelContainer")
require("ui.uieditor.widgets.HUD.CP_DamageWidget.DamageWidget_BackCircleOutter")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_BackCircle")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidgetMP_EquipGlow")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_IventoryBox")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidgetMP_EquipmentInfo")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_ClipElements")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidgetMP_ClipInfo")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_AttachmentInfo")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_HeroAbilityContainer")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_ClipInfoDummy")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_EquipmentEmpty")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidgetMP_HeldItem")
local function __FUNC_631_(arg0, arg1, arg2)
	CoD.AmmoWidgetUtility.InitTacticalEmptyPulse(arg0, arg0.TacticalEmpty, arg1, CoD.AmmoWidget_EquipmentEmpty, arg2)
	CoD.AmmoWidgetUtility.InitLethalEmptyPulse(arg0, arg0.LethalEmpty, arg1, CoD.AmmoWidget_EquipmentEmpty, arg2)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.AmmoWidgetMP = registerVal2
local function __FUNC_7A1_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidgetMP)
	registerVal2.id = "AmmoWidgetMP"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 398.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 124.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.AmmoWidgetMP_PanelContainer.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -238.000000, 12.000000)
	registerVal3:setTopBottom(false, false, -47.000000, 58.670000)
	registerVal3:setRGB(0.550000, 0.580000, 0.600000)
	registerVal3:setZoom(-10.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.PanelContainer = registerVal3
	local registerVal4 = CoD.DamageWidget_BackCircleOutter.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 301.730000, 408.730000)
	registerVal4:setTopBottom(true, false, 20.000000, 124.000000)
	registerVal4:setAlpha(0.350000)
	registerVal4:setZoom(-8.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BackCircleOutter = registerVal4
	local registerVal5 = CoD.AmmoWidget_BackCircle.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 305.840000, 400.840000)
	registerVal5:setTopBottom(true, false, 12.660000, 118.660000)
	registerVal5:setAlpha(0.200000)
	registerVal5:setZoom(-5.000000)
	registerVal5:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal5:setShaderVector(0.000000, 0.100000, 1.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.BackCircle = registerVal5
	local registerVal6 = CoD.AmmoWidgetMP_EquipGlow.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 211.340000, 259.490000)
	registerVal6:setTopBottom(true, false, 8.590000, 56.740000)
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Shown"
	local function __FUNC_25BE_(arg0, arg2, arg3)
		return IsModelValueGreaterThan(arg1, "currentSecondaryOffhand.secondaryOffhandCount", 0.000000)
	end

	registerVal10.condition = __FUNC_25BE_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "currentSecondaryOffhand.secondaryOffhandCount")
	local function __FUNC_265D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentSecondaryOffhand.secondaryOffhandCount"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:subscribeToModel(registerVal9, __FUNC_265D_)
	registerVal2:addElement(registerVal6)
	registerVal2.GlowTactical = registerVal6
	local registerVal7 = CoD.AmmoWidgetMP_EquipGlow.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 254.340000, 302.490000)
	registerVal7:setTopBottom(true, false, 8.590000, 56.740000)
	registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Shown"
	local function __FUNC_279F_(arg0, arg2, arg3)
		return IsModelValueGreaterThan(arg1, "currentPrimaryOffhand.primaryOffhandCount", 0.000000)
	end

	registerVal11.condition = __FUNC_279F_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "currentPrimaryOffhand.primaryOffhandCount")
	local function __FUNC_2839_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentPrimaryOffhand.primaryOffhandCount"
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:subscribeToModel(registerVal10, __FUNC_2839_)
	registerVal2:addElement(registerVal7)
	registerVal2.GlowLethal = registerVal7
	local registerVal8 = CoD.AmmoWidget_IventoryBox.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 214.750000, 256.420000)
	registerVal8:setTopBottom(true, false, 15.000000, 50.330000)
	registerVal8:setAlpha(0.400000)
	registerVal8:setZoom(1.000000)
	registerVal8:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal8:setShaderVector(0.000000, 0.100000, 1.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "Empty"
	local function __FUNC_2977_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "currentSecondaryOffhand.secondaryOffhandCount", 0.000000)
	end

	registerVal12.condition = __FUNC_2977_
	registerVal11 = {registerVal12}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "currentSecondaryOffhand.secondaryOffhandCount")
	local function __FUNC_2A11_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentSecondaryOffhand.secondaryOffhandCount"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_2A11_)
	registerVal2:addElement(registerVal8)
	registerVal2.InventoryBox1 = registerVal8
	registerVal9 = CoD.AmmoWidget_IventoryBox.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 258.750000, 301.420000)
	registerVal9:setTopBottom(true, false, 15.000000, 50.330000)
	registerVal9:setAlpha(0.400000)
	registerVal9:setZoom(1.000000)
	registerVal9:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal9:setShaderVector(0.000000, 0.100000, 1.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Empty"
	local function __FUNC_2B53_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "currentPrimaryOffhand.primaryOffhandCount", 0.000000)
	end

	registerVal13.condition = __FUNC_2B53_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, "currentPrimaryOffhand.primaryOffhandCount")
	local function __FUNC_2BE9_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentPrimaryOffhand.primaryOffhandCount"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_2BE9_)
	registerVal2:addElement(registerVal9)
	registerVal2.InventoryBox2 = registerVal9
	registerVal10 = CoD.AmmoWidgetMP_EquipmentInfo.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 216.000000, 306.000000)
	registerVal10:setTopBottom(true, false, 13.000000, 55.000000)
	registerVal10:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal10:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(1.000000, 0.100000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.EquipmentInfo = registerVal10
	registerVal11 = CoD.AmmoWidget_ClipElements.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 154.180000, 314.180000)
	registerVal11:setTopBottom(true, false, 43.500000, 100.500000)
	registerVal11.BackLine2:setAlpha(0.000000)
	registerVal11.ImgSemiCircle:setAlpha(0.600000)
	registerVal11.ImgSemiCircle.ImgSemiCircle0:setImage(RegisterImage("uie_t7_core_hud_ammowidget_semicirclesm"))
	registerVal11.ImgSeperator:setAlpha(0.800000)
	registerVal2:addElement(registerVal11)
	registerVal2.ClipElements = registerVal11
	registerVal12 = CoD.AmmoWidgetMP_ClipInfo.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 169.680000, 304.680000)
	registerVal12:setTopBottom(true, false, 41.500000, 98.500000)
	registerVal12.Knife:setAlpha(0.800000)
	registerVal12.Fist:setAlpha(0.800000)
	registerVal2:addElement(registerVal12)
	registerVal2.Clip = registerVal12
	registerVal13 = CoD.AmmoWidget_AttachmentInfo.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, -19.000000, 297.000000)
	registerVal13:setTopBottom(true, false, 99.670000, 117.670000)
	registerVal2:addElement(registerVal13)
	registerVal2.FireRate = registerVal13
	local registerVal14 = CoD.AmmoWidget_HeroAbilityContainer.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 293.340000, 413.340000)
	registerVal14:setTopBottom(true, false, 12.000000, 132.000000)
	registerVal14:setZoom(3.000000)
	local registerVal17 = {}
	local registerVal18 = {}
	registerVal18.stateName = "HideSpecialistAbility"
	local function __FUNC_2D27_(arg0, arg2, arg3)
		return HideSpecialistAbilityContainer(arg1)
	end

	registerVal18.condition = __FUNC_2D27_
	local registerVal19 = {}
	registerVal19.stateName = "Ready"
	local function __FUNC_2D88_(arg0, arg2, arg3)
		return IsHeroWeaponOrSpecialGadgetAvailable(arg0, arg1)
	end

	registerVal19.condition = __FUNC_2D88_
	local registerVal20 = {}
	registerVal20.stateName = "ChargeThief"
	local function __FUNC_2DF6_(arg0, arg2, arg3)
		local registerVal3 = IsHeroWeaponOrGadgetInUseOrContextualWeaponActive(arg0, arg1)
		if not registerVal3 then
			registerVal3 = IsHeroWeaponThiefGadget(arg1)
		else
		end
		return true
	end

	registerVal20.condition = __FUNC_2DF6_
	local registerVal21 = {}
	registerVal21.stateName = "ChargeGambler"
	local function __FUNC_2EB0_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal21.condition = __FUNC_2EB0_
	local registerVal22 = {}
	registerVal22.stateName = "Charge"
	local function __FUNC_2EFD_(arg0, arg2, arg3)
		local registerVal3 = IsHeroWeaponOrGadgetInUseOrContextualWeaponActive(arg0, arg1)
		return (not registerVal3)
	end

	registerVal22.condition = __FUNC_2EFD_
	local registerVal23 = {}
	registerVal23.stateName = "InUse"
	local function __FUNC_2F7B_(arg0, arg2, arg3)
		local registerVal3 = IsHeroWeaponOrGadgetInUseOrContextualWeaponActive(arg0, arg1)
		if registerVal3 then
			registerVal3 = IsHeroWeaponOrGadgetEnergyAtLeast(arg1, 0.250000)
		end
		return registerVal3
	end

	registerVal23.condition = __FUNC_2F7B_
	local registerVal24 = {}
	registerVal24.stateName = "MedEnergy"
	local function __FUNC_303B_(arg0, arg2, arg3)
		local registerVal3 = IsHeroWeaponOrGadgetInUseOrContextualWeaponActive(arg0, arg1)
		if registerVal3 then
			registerVal3 = IsHeroWeaponOrGadgetEnergyAtLeast(arg1, 0.100000)
		end
		return registerVal3
	end

	registerVal24.condition = __FUNC_303B_
	local registerVal25 = {}
	registerVal25.stateName = "LowEnergy"
	local function __FUNC_30FB_(arg0, arg2, arg3)
		return IsHeroWeaponOrGadgetInUseOrContextualWeaponActive(arg0, arg1)
	end

	registerVal25.condition = __FUNC_30FB_
	registerVal17 = {registerVal18, registerVal19, registerVal20, registerVal21, registerVal22, registerVal23, registerVal24, registerVal25}
	registerVal14:mergeStateConditions(registerVal17)
	registerVal18 = Engine.GetModelForController(arg1)
	registerVal17 = Engine.GetModel(registerVal18, "playerAbilities.playerGadget3.powerRatio")
	local function __FUNC_3173_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.powerRatio"
		arg0:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:subscribeToModel(registerVal17, __FUNC_3173_)
	registerVal18 = Engine.GetModelForController(arg1)
	registerVal17 = Engine.GetModel(registerVal18, "playerAbilities.playerGadget3.ammo")
	local function __FUNC_32AE_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.ammo"
		arg0:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:subscribeToModel(registerVal17, __FUNC_32AE_)
	registerVal18 = Engine.GetModelForController(arg1)
	registerVal17 = Engine.GetModel(registerVal18, "currentWeapon.weapon")
	local function __FUNC_33E4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.weapon"
		arg0:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:subscribeToModel(registerVal17, __FUNC_33E4_)
	registerVal18 = Engine.GetModelForController(arg1)
	registerVal17 = Engine.GetModel(registerVal18, "playerAbilities.playerGadget3.isInUse")
	local function __FUNC_350E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.isInUse"
		arg0:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:subscribeToModel(registerVal17, __FUNC_350E_)
	registerVal18 = Engine.GetModelForController(arg1)
	registerVal17 = Engine.GetModel(registerVal18, "playerAbilities.playerGadget3.name")
	local function __FUNC_3647_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.name"
		arg0:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:subscribeToModel(registerVal17, __FUNC_3647_)
	registerVal2:addElement(registerVal14)
	registerVal2.AbilityContainer = registerVal14
	local registerVal15 = CoD.AmmoWidget_ClipInfoDummy.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 169.680000, 304.680000)
	registerVal15:setTopBottom(true, false, 41.500000, 98.500000)
	registerVal15.Knife:setAlpha(0.800000)
	registerVal15.Fist:setAlpha(0.800000)
	registerVal15.TotalAmmo:setAlpha(0.000000)
	registerVal15.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("000"))
	registerVal2:addElement(registerVal15)
	registerVal2.ClipDummy = registerVal15
	local registerVal16 = CoD.AmmoWidget_EquipmentEmpty.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, 222.420000, 248.420000)
	registerVal16:setTopBottom(true, false, 19.670000, 45.670000)
	local function __FUNC_377C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16.ImgIcon:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal16:subscribeToGlobalModel(arg1, "CurrentSecondaryOffhand", "secondaryOffhand", __FUNC_377C_)
	local function __FUNC_384D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16.ImgIconGrow:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal16:subscribeToGlobalModel(arg1, "CurrentSecondaryOffhand", "secondaryOffhand", __FUNC_384D_)
	registerVal2:addElement(registerVal16)
	registerVal2.TacticalEmpty = registerVal16
	registerVal17 = CoD.AmmoWidget_EquipmentEmpty.new(arg0, arg1)
	registerVal17:setLeftRight(true, false, 267.090000, 293.090000)
	registerVal17:setTopBottom(true, false, 19.670000, 45.670000)
	local function __FUNC_3921_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.ImgIcon:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal17:subscribeToGlobalModel(arg1, "CurrentPrimaryOffhand", "primaryOffhand", __FUNC_3921_)
	local function __FUNC_39F1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.ImgIconGrow:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal17:subscribeToGlobalModel(arg1, "CurrentPrimaryOffhand", "primaryOffhand", __FUNC_39F1_)
	registerVal2:addElement(registerVal17)
	registerVal2.LethalEmpty = registerVal17
	registerVal18 = CoD.AmmoWidgetMP_HeldItem.new(arg0, arg1)
	registerVal18:setLeftRight(true, false, 94.000000, 172.000000)
	registerVal18:setTopBottom(true, false, 15.000000, 108.670000)
	registerVal18:setZoom(1.000000)
	registerVal2:addElement(registerVal18)
	registerVal2.EnemyFlagHeld = registerVal18
	registerVal19 = {}
	registerVal20 = {}
	local function __FUNC_3AC5_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal3.PanelTactical:completeAnimation()
		registerVal3.PanelLethal:completeAnimation()
		registerVal3.PanelOctagon:completeAnimation()
		registerVal3.PanelAmmo:completeAnimation()
		registerVal3.PanelFlagEnemy:completeAnimation()
		registerVal2.PanelContainer.PanelTactical:setAlpha(0.000000)
		registerVal2.PanelContainer.PanelLethal:setAlpha(0.000000)
		registerVal2.PanelContainer.PanelOctagon:setAlpha(0.000000)
		registerVal2.PanelContainer.PanelAmmo:setAlpha(0.000000)
		registerVal2.PanelContainer.PanelFlagEnemy:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BackCircleOutter:setAlpha(0.000000)
		registerVal2.BackCircleOutter:setZoom(30.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BackCircle:setAlpha(0.000000)
		registerVal2.BackCircle:setZoom(40.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.GlowTactical:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.GlowLethal:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.InventoryBox1:setAlpha(0.000000)
		registerVal2.InventoryBox1:setZoom(30.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.InventoryBox2:setAlpha(0.000000)
		registerVal2.InventoryBox2:setZoom(30.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.EquipmentInfo:setAlpha(0.000000)
		registerVal2.EquipmentInfo:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal11.BackLine1:completeAnimation()
		registerVal11.BackLine2:completeAnimation()
		registerVal11.ImgSemiCircle:completeAnimation()
		registerVal11.ImgSeperator:completeAnimation()
		registerVal2.ClipElements.BackLine1:setAlpha(0.000000)
		registerVal2.ClipElements.BackLine2:setAlpha(0.000000)
		registerVal2.ClipElements.ImgSemiCircle:setAlpha(0.000000)
		registerVal2.ClipElements.ImgSemiCircle:setZoom(30.000000)
		registerVal2.ClipElements.ImgSeperator:setAlpha(0.000000)
		registerVal2.ClipElements.ImgSeperator:setZoom(15.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal12.Clip:completeAnimation()
		registerVal12.Knife:completeAnimation()
		registerVal12.TotalAmmo:completeAnimation()
		registerVal12.ClipMeter:completeAnimation()
		registerVal12.AmmoColorBar:completeAnimation()
		registerVal12.ClipHero:completeAnimation()
		registerVal2.Clip.Clip:setAlpha(0.000000)
		registerVal2.Clip.Knife:setAlpha(0.000000)
		registerVal2.Clip.TotalAmmo:setAlpha(0.000000)
		registerVal2.Clip.ClipMeter:setAlpha(0.000000)
		registerVal2.Clip.AmmoColorBar:setAlpha(0.000000)
		registerVal2.Clip.ClipHero:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FireRate:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal14.AbilityRingBackDuplicate:completeAnimation()
		registerVal14.AbilityRingBackDeplete:completeAnimation()
		registerVal14.AbilityRingBack:completeAnimation()
		registerVal14.AbilityIconContainer:completeAnimation()
		registerVal2.AbilityContainer:setAlpha(0.000000)
		registerVal2.AbilityContainer.AbilityRingBackDuplicate:setZoom(0.000000)
		registerVal2.AbilityContainer.AbilityRingBackDeplete:setZoom(30.000000)
		registerVal2.AbilityContainer.AbilityRingBack:setZoom(30.000000)
		registerVal2.AbilityContainer.AbilityIconContainer:setZoom(40.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal15.Knife:completeAnimation()
		registerVal15.TotalAmmo:completeAnimation()
		registerVal15.TotalAmmo.TotalAmmoLbl:completeAnimation()
		registerVal2.ClipDummy.Knife:setAlpha(0.000000)
		registerVal2.ClipDummy.TotalAmmo:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ClipDummy.TotalAmmo:setAlpha(0.000000)
		registerVal2.ClipDummy.TotalAmmo:setZoom(30.000000)
		registerVal2.ClipDummy.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("000"))
		registerVal2.clipFinished(registerVal15, {})
		registerVal18:completeAnimation()
		registerVal2.EnemyFlagHeld:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal20.DefaultClip = __FUNC_3AC5_
	local function __FUNC_48E6_()
		registerVal2:setupElementClipCounter(14.000000)
		local function __FUNC_5665_(arg0, arg1)
			local function __FUNC_57BC_(arg0, arg1)
				local function __FUNC_5914_(arg0, arg1)
					local function __FUNC_5A6C_(arg0, arg1)
						local function __FUNC_5BC4_(arg0, arg1)
							local function __FUNC_5D1C_(arg0, arg1)
								local function __FUNC_5E74_(arg0, arg1)
									local function __FUNC_5FCC_(arg0, arg1)
										local function __FUNC_61BB_(arg0, arg1)
											local function __FUNC_6310_(arg0, arg1)
												local function __FUNC_64FF_(arg0, arg1)
													local function __FUNC_66EB_(arg0, arg1)
														local function __FUNC_68D7_(arg0, arg1)
															local function __FUNC_6A2C_(arg0, arg1)
																local function __FUNC_6C20_(arg0, arg1)
																	local function __FUNC_6E88_(arg0, arg1)
																		local function __FUNC_707C_(arg0, arg1)
																			local function __FUNC_71D4_(arg0, arg1)
																				local function __FUNC_7439_(arg0, arg1)
																					local function __FUNC_762B_(arg0, arg1)
																						local function __FUNC_788D_(arg0, arg1)
																							local function __FUNC_7A7D_(arg0, arg1)
																								local function __FUNC_7C6D_(arg0, arg1)
																									local function __FUNC_7DC4_(arg0, arg1)
																										local function __FUNC_7FB6_(arg0, arg1)
																											local function __FUNC_810C_(arg0, arg1)
																												local function __FUNC_82FE_(arg0, arg1)
																													local function __FUNC_84EE_(arg0, arg1)
																														if not arg1.interrupted then
																															arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																															arg0.PanelTactical:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																															arg0.PanelLethal:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																															arg0.PanelOctagon:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																															arg0.PanelAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																															arg0.PanelFlagEnemy:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																														end
																														arg0.PanelTactical:setAlpha(1.000000)
																														arg0.PanelLethal:setAlpha(1.000000)
																														arg0.PanelOctagon:setAlpha(1.000000)
																														arg0.PanelAmmo:setAlpha(1.000000)
																														arg0.PanelFlagEnemy:setAlpha(1.000000)
																														if arg1.interrupted then
																															registerVal2.clipFinished(arg0, arg1)
																														else
																															arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																														end
																													end

																													if arg1.interrupted then
																														__FUNC_84EE_(arg0, arg1)
																														return 
																													end
																													arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																													arg0.PanelOctagon:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
																													arg0.PanelOctagon:setAlpha(0.200000)
																													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_84EE_)
																												end

																												if arg1.interrupted then
																													__FUNC_82FE_(arg0, arg1)
																													return 
																												end
																												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																												arg0.PanelOctagon:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																												arg0.PanelOctagon:setAlpha(0.500000)
																												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_82FE_)
																											end

																											if arg1.interrupted then
																												__FUNC_810C_(arg0, arg1)
																												return 
																											end
																											arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_810C_)
																										end

																										if arg1.interrupted then
																											__FUNC_7FB6_(arg0, arg1)
																											return 
																										end
																										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																										arg0.PanelOctagon:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																										arg0.PanelOctagon:setAlpha(1.000000)
																										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7FB6_)
																									end

																									if arg1.interrupted then
																										__FUNC_7DC4_(arg0, arg1)
																										return 
																									end
																									arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
																									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7DC4_)
																								end

																								if arg1.interrupted then
																									__FUNC_7C6D_(arg0, arg1)
																									return 
																								end
																								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																								arg0.PanelLethal:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																								arg0.PanelLethal:setAlpha(1.000000)
																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7C6D_)
																							end

																							if arg1.interrupted then
																								__FUNC_7A7D_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																							arg0.PanelLethal:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
																							arg0.PanelLethal:setAlpha(0.200000)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7A7D_)
																						end

																						if arg1.interrupted then
																							__FUNC_788D_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																						arg0.PanelTactical:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																						arg0.PanelLethal:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																						arg0.PanelTactical:setAlpha(1.000000)
																						arg0.PanelLethal:setAlpha(0.500000)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_788D_)
																					end

																					if arg1.interrupted then
																						__FUNC_762B_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																					arg0.PanelTactical:beginAnimation("subkeyframe", 20.000000, false, false, CoD.TweenType.Linear)
																					arg0.PanelTactical:setAlpha(0.200000)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_762B_)
																				end

																				if arg1.interrupted then
																					__FUNC_7439_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																				arg0.PanelTactical:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																				arg0.PanelLethal:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																				arg0.PanelTactical:setAlpha(0.500000)
																				arg0.PanelLethal:setAlpha(1.000000)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7439_)
																			end

																			if arg1.interrupted then
																				__FUNC_71D4_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_71D4_)
																		end

																		if arg1.interrupted then
																			__FUNC_707C_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																		arg0.PanelFlagEnemy:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																		arg0.PanelFlagEnemy:setAlpha(1.000000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_707C_)
																	end

																	if arg1.interrupted then
																		__FUNC_6E88_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																	arg0.PanelTactical:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																	arg0.PanelFlagEnemy:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																	arg0.PanelTactical:setAlpha(1.000000)
																	arg0.PanelFlagEnemy:setAlpha(0.830000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6E88_)
																end

																if arg1.interrupted then
																	__FUNC_6C20_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
																arg0.PanelFlagEnemy:beginAnimation("subkeyframe", 40.000000, false, false, CoD.TweenType.Linear)
																arg0.PanelFlagEnemy:setAlpha(0.670000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6C20_)
															end

															if arg1.interrupted then
																__FUNC_6A2C_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6A2C_)
														end

														if arg1.interrupted then
															__FUNC_68D7_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
														arg0.PanelAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
														arg0.PanelAmmo:setAlpha(1.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_68D7_)
													end

													if arg1.interrupted then
														__FUNC_66EB_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
													arg0.PanelAmmo:beginAnimation("subkeyframe", 20.000000, false, false, CoD.TweenType.Linear)
													arg0.PanelAmmo:setAlpha(0.200000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_66EB_)
												end

												if arg1.interrupted then
													__FUNC_64FF_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
												arg0.PanelAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
												arg0.PanelAmmo:setAlpha(0.500000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_64FF_)
											end

											if arg1.interrupted then
												__FUNC_6310_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6310_)
										end

										if arg1.interrupted then
											__FUNC_61BB_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0.PanelAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0.PanelAmmo:setAlpha(1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_61BB_)
									end

									if arg1.interrupted then
										__FUNC_5FCC_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5FCC_)
								end

								if arg1.interrupted then
									__FUNC_5E74_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E74_)
							end

							if arg1.interrupted then
								__FUNC_5D1C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5D1C_)
						end

						if arg1.interrupted then
							__FUNC_5BC4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5BC4_)
					end

					if arg1.interrupted then
						__FUNC_5A6C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5A6C_)
				end

				if arg1.interrupted then
					__FUNC_5914_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5914_)
			end

			if arg1.interrupted then
				__FUNC_57BC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 680.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_57BC_)
		end

		registerVal3:completeAnimation()
		registerVal3.PanelTactical:completeAnimation()
		registerVal3.PanelLethal:completeAnimation()
		registerVal3.PanelOctagon:completeAnimation()
		registerVal3.PanelAmmo:completeAnimation()
		registerVal3.PanelFlagEnemy:completeAnimation()
		registerVal2.PanelContainer.PanelTactical:setAlpha(0.000000)
		registerVal2.PanelContainer.PanelLethal:setAlpha(0.000000)
		registerVal2.PanelContainer.PanelOctagon:setAlpha(0.000000)
		registerVal2.PanelContainer.PanelAmmo:setAlpha(0.000000)
		registerVal2.PanelContainer.PanelFlagEnemy:setAlpha(0.000000)
		__FUNC_5665_(registerVal3, {})
		local function __FUNC_88CF_(arg0, arg1)
			local function __FUNC_8A24_(arg0, arg1)
				local function __FUNC_8BC1_(arg0, arg1)
					local function __FUNC_8D3A_(arg0, arg1)
						local function __FUNC_8ED5_(arg0, arg1)
							local function __FUNC_904E_(arg0, arg1)
								local function __FUNC_91A4_(arg0, arg1)
									local function __FUNC_931F_(arg0, arg1)
										local function __FUNC_9474_(arg0, arg1)
											local function __FUNC_95EF_(arg0, arg1)
												local function __FUNC_9744_(arg0, arg1)
													if not arg1.interrupted then
														arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
													end
													arg0:setAlpha(0.350000)
													arg0:setZoom(-8.000000)
													if arg1.interrupted then
														registerVal2.clipFinished(arg0, arg1)
													else
														arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
													end
												end

												if arg1.interrupted then
													__FUNC_9744_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9744_)
											end

											if arg1.interrupted then
												__FUNC_95EF_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.150000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_95EF_)
										end

										if arg1.interrupted then
											__FUNC_9474_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9474_)
									end

									if arg1.interrupted then
										__FUNC_931F_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.350000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_931F_)
								end

								if arg1.interrupted then
									__FUNC_91A4_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_91A4_)
							end

							if arg1.interrupted then
								__FUNC_904E_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setZoom(-8.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_904E_)
						end

						if arg1.interrupted then
							__FUNC_8ED5_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:setZoom(-0.400000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8ED5_)
					end

					if arg1.interrupted then
						__FUNC_8D3A_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:setZoom(7.200000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8D3A_)
				end

				if arg1.interrupted then
					__FUNC_8BC1_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.350000)
				arg0:setZoom(22.400000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8BC1_)
			end

			if arg1.interrupted then
				__FUNC_8A24_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8A24_)
		end

		registerVal4:completeAnimation()
		registerVal2.BackCircleOutter:setAlpha(0.000000)
		registerVal2.BackCircleOutter:setZoom(30.000000)
		__FUNC_88CF_(registerVal4, {})
		local function __FUNC_991B_(arg0, arg1)
			local function __FUNC_9A70_(arg0, arg1)
				local function __FUNC_9C0D_(arg0, arg1)
					local function __FUNC_9D86_(arg0, arg1)
						local function __FUNC_9F21_(arg0, arg1)
							local function __FUNC_A09A_(arg0, arg1)
								local function __FUNC_A213_(arg0, arg1)
									local function __FUNC_A368_(arg0, arg1)
										local function __FUNC_A4E3_(arg0, arg1)
											local function __FUNC_A638_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setAlpha(0.200000)
												arg0:setZoom(-5.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_A638_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A638_)
										end

										if arg1.interrupted then
											__FUNC_A4E3_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A4E3_)
									end

									if arg1.interrupted then
										__FUNC_A368_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A368_)
								end

								if arg1.interrupted then
									__FUNC_A213_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A213_)
							end

							if arg1.interrupted then
								__FUNC_A09A_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
							arg0:setZoom(-5.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A09A_)
						end

						if arg1.interrupted then
							__FUNC_9F21_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:setZoom(10.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9F21_)
					end

					if arg1.interrupted then
						__FUNC_9D86_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:setZoom(17.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9D86_)
				end

				if arg1.interrupted then
					__FUNC_9C0D_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.400000)
				arg0:setZoom(32.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9C0D_)
			end

			if arg1.interrupted then
				__FUNC_9A70_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9A70_)
		end

		registerVal5:completeAnimation()
		registerVal2.BackCircle:setAlpha(0.000000)
		registerVal2.BackCircle:setZoom(40.000000)
		__FUNC_991B_(registerVal5, {})
		local function __FUNC_A80F_(arg0, arg1)
			local function __FUNC_A964_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_A964_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A964_)
		end

		registerVal6:completeAnimation()
		registerVal2.GlowTactical:setAlpha(0.000000)
		__FUNC_A80F_(registerVal6, {})
		local function __FUNC_AB19_(arg0, arg1)
			local function __FUNC_AC70_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_AC70_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AC70_)
		end

		registerVal7:completeAnimation()
		registerVal2.GlowLethal:setAlpha(0.000000)
		__FUNC_AB19_(registerVal7, {})
		local function __FUNC_AE25_(arg0, arg1)
			local function __FUNC_AF7C_(arg0, arg1)
				local function __FUNC_B119_(arg0, arg1)
					local function __FUNC_B292_(arg0, arg1)
						local function __FUNC_B42D_(arg0, arg1)
							local function __FUNC_B5A6_(arg0, arg1)
								local function __FUNC_B6FC_(arg0, arg1)
									local function __FUNC_B877_(arg0, arg1)
										local function __FUNC_B9CC_(arg0, arg1)
											local function __FUNC_BB47_(arg0, arg1)
												local function __FUNC_BC9C_(arg0, arg1)
													local function __FUNC_BE17_(arg0, arg1)
														if not arg1.interrupted then
															arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
														end
														arg0:setAlpha(0.500000)
														arg0:setZoom(1.000000)
														if arg1.interrupted then
															registerVal2.clipFinished(arg0, arg1)
														else
															arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
														end
													end

													if arg1.interrupted then
														__FUNC_BE17_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.600000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BE17_)
												end

												if arg1.interrupted then
													__FUNC_BC9C_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BC9C_)
											end

											if arg1.interrupted then
												__FUNC_BB47_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.100000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BB47_)
										end

										if arg1.interrupted then
											__FUNC_B9CC_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B9CC_)
									end

									if arg1.interrupted then
										__FUNC_B877_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.400000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B877_)
								end

								if arg1.interrupted then
									__FUNC_B6FC_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B6FC_)
							end

							if arg1.interrupted then
								__FUNC_B5A6_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setZoom(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B5A6_)
						end

						if arg1.interrupted then
							__FUNC_B42D_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:setZoom(6.800000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B42D_)
					end

					if arg1.interrupted then
						__FUNC_B292_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:setZoom(12.600000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B292_)
				end

				if arg1.interrupted then
					__FUNC_B119_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.400000)
				arg0:setZoom(24.200000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B119_)
			end

			if arg1.interrupted then
				__FUNC_AF7C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AF7C_)
		end

		registerVal8:completeAnimation()
		registerVal2.InventoryBox1:setAlpha(0.000000)
		registerVal2.InventoryBox1:setZoom(30.000000)
		__FUNC_AE25_(registerVal8, {})
		local function __FUNC_BFEB_(arg0, arg1)
			local function __FUNC_C140_(arg0, arg1)
				local function __FUNC_C2DD_(arg0, arg1)
					local function __FUNC_C456_(arg0, arg1)
						local function __FUNC_C5F1_(arg0, arg1)
							local function __FUNC_C76A_(arg0, arg1)
								local function __FUNC_C8C0_(arg0, arg1)
									local function __FUNC_CA3B_(arg0, arg1)
										local function __FUNC_CB90_(arg0, arg1)
											local function __FUNC_CD0B_(arg0, arg1)
												local function __FUNC_CE60_(arg0, arg1)
													local function __FUNC_CFDB_(arg0, arg1)
														if not arg1.interrupted then
															arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
														end
														arg0:setAlpha(0.500000)
														arg0:setZoom(1.000000)
														if arg1.interrupted then
															registerVal2.clipFinished(arg0, arg1)
														else
															arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
														end
													end

													if arg1.interrupted then
														__FUNC_CFDB_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.600000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CFDB_)
												end

												if arg1.interrupted then
													__FUNC_CE60_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CE60_)
											end

											if arg1.interrupted then
												__FUNC_CD0B_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.100000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CD0B_)
										end

										if arg1.interrupted then
											__FUNC_CB90_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CB90_)
									end

									if arg1.interrupted then
										__FUNC_CA3B_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.400000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CA3B_)
								end

								if arg1.interrupted then
									__FUNC_C8C0_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C8C0_)
							end

							if arg1.interrupted then
								__FUNC_C76A_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setZoom(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C76A_)
						end

						if arg1.interrupted then
							__FUNC_C5F1_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:setZoom(6.800000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C5F1_)
					end

					if arg1.interrupted then
						__FUNC_C456_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:setZoom(12.600000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C456_)
				end

				if arg1.interrupted then
					__FUNC_C2DD_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.400000)
				arg0:setZoom(24.200000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C2DD_)
			end

			if arg1.interrupted then
				__FUNC_C140_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 379.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C140_)
		end

		registerVal9:completeAnimation()
		registerVal2.InventoryBox2:setAlpha(0.000000)
		registerVal2.InventoryBox2:setZoom(30.000000)
		__FUNC_BFEB_(registerVal9, {})
		local function __FUNC_D1AF_(arg0, arg1)
			local function __FUNC_D304_(arg0, arg1)
				local function __FUNC_D47F_(arg0, arg1)
					local function __FUNC_D5D4_(arg0, arg1)
						local function __FUNC_D74F_(arg0, arg1)
							local function __FUNC_D8A4_(arg0, arg1)
								local function __FUNC_DA1F_(arg0, arg1)
									local function __FUNC_DB74_(arg0, arg1)
										local function __FUNC_DCEF_(arg0, arg1)
											local function __FUNC_DE44_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setAlpha(1.000000)
												arg0:setZoom(0.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_DE44_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DE44_)
										end

										if arg1.interrupted then
											__FUNC_DCEF_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.700000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DCEF_)
									end

									if arg1.interrupted then
										__FUNC_DB74_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DB74_)
								end

								if arg1.interrupted then
									__FUNC_DA1F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DA1F_)
							end

							if arg1.interrupted then
								__FUNC_D8A4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D8A4_)
						end

						if arg1.interrupted then
							__FUNC_D74F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D74F_)
					end

					if arg1.interrupted then
						__FUNC_D5D4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D5D4_)
				end

				if arg1.interrupted then
					__FUNC_D47F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D47F_)
			end

			if arg1.interrupted then
				__FUNC_D304_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D304_)
		end

		registerVal10:completeAnimation()
		registerVal2.EquipmentInfo:setAlpha(0.000000)
		registerVal2.EquipmentInfo:setZoom(0.000000)
		__FUNC_D1AF_(registerVal10, {})
		local function __FUNC_E01B_(arg0, arg1)
			local function __FUNC_E170_(arg0, arg1)
				local function __FUNC_E391_(arg0, arg1)
					local function __FUNC_E582_(arg0, arg1)
						local function __FUNC_E7A1_(arg0, arg1)
							local function __FUNC_E992_(arg0, arg1)
								local function __FUNC_EBB1_(arg0, arg1)
									local function __FUNC_EDD0_(arg0, arg1)
										local function __FUNC_EFC1_(arg0, arg1)
											local function __FUNC_F254_(arg0, arg1)
												local function __FUNC_F445_(arg0, arg1)
													local function __FUNC_F6D8_(arg0, arg1)
														local function __FUNC_F830_(arg0, arg1)
															local function __FUNC_FA22_(arg0, arg1)
																local function __FUNC_FB78_(arg0, arg1)
																	local function __FUNC_FD6A_(arg0, arg1)
																		local function __FUNC_FEC0_(arg0, arg1)
																			local function __FUNC_100AF_(arg0, arg1)
																				local function __FUNC_10204_(arg0, arg1)
																					local function __FUNC_103F3_(arg0, arg1)
																						local function __FUNC_10548_(arg0, arg1)
																							local function __FUNC_10737_(arg0, arg1)
																								local function __FUNC_1088C_(arg0, arg1)
																									local function __FUNC_10A7B_(arg0, arg1)
																										local function __FUNC_10BD0_(arg0, arg1)
																											if not arg1.interrupted then
																												arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																												arg0.BackLine1:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
																												arg0.ImgSemiCircle:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
																												arg0.ImgSeperator:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
																											end
																											arg0.BackLine1:setAlpha(1.000000)
																											arg0.ImgSemiCircle:setAlpha(0.600000)
																											arg0.ImgSemiCircle:setZoom(1.000000)
																											arg0.ImgSeperator:setAlpha(0.800000)
																											arg0.ImgSeperator:setZoom(0.000000)
																											if arg1.interrupted then
																												registerVal2.clipFinished(arg0, arg1)
																											else
																												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																											end
																										end

																										if arg1.interrupted then
																											__FUNC_10BD0_(arg0, arg1)
																											return 
																										end
																										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10BD0_)
																									end

																									if arg1.interrupted then
																										__FUNC_10A7B_(arg0, arg1)
																										return 
																									end
																									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																									arg0.BackLine1:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
																									arg0.BackLine1:setAlpha(0.600000)
																									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10A7B_)
																								end

																								if arg1.interrupted then
																									__FUNC_1088C_(arg0, arg1)
																									return 
																								end
																								arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1088C_)
																							end

																							if arg1.interrupted then
																								__FUNC_10737_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																							arg0.BackLine1:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
																							arg0.BackLine1:setAlpha(1.000000)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10737_)
																						end

																						if arg1.interrupted then
																							__FUNC_10548_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10548_)
																					end

																					if arg1.interrupted then
																						__FUNC_103F3_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																					arg0.BackLine1:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
																					arg0.BackLine1:setAlpha(0.300000)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_103F3_)
																				end

																				if arg1.interrupted then
																					__FUNC_10204_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10204_)
																			end

																			if arg1.interrupted then
																				__FUNC_100AF_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																			arg0.BackLine1:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
																			arg0.BackLine1:setAlpha(1.000000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_100AF_)
																		end

																		if arg1.interrupted then
																			__FUNC_FEC0_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FEC0_)
																	end

																	if arg1.interrupted then
																		__FUNC_FD6A_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																	arg0.ImgSeperator:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																	arg0.ImgSeperator:setAlpha(0.800000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FD6A_)
																end

																if arg1.interrupted then
																	__FUNC_FB78_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FB78_)
															end

															if arg1.interrupted then
																__FUNC_FA22_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
															arg0.ImgSeperator:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
															arg0.ImgSeperator:setAlpha(0.500000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FA22_)
														end

														if arg1.interrupted then
															__FUNC_F830_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F830_)
													end

													if arg1.interrupted then
														__FUNC_F6D8_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0.ImgSemiCircle:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0.ImgSeperator:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0.ImgSemiCircle:setAlpha(0.600000)
													arg0.ImgSeperator:setAlpha(0.800000)
													arg0.ImgSeperator:setZoom(0.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F6D8_)
												end

												if arg1.interrupted then
													__FUNC_F445_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
												arg0.ImgSeperator:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
												arg0.ImgSeperator:setZoom(2.140000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F445_)
											end

											if arg1.interrupted then
												__FUNC_F254_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0.ImgSemiCircle:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0.ImgSeperator:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0.ImgSemiCircle:setAlpha(0.400000)
											arg0.ImgSeperator:setAlpha(0.200000)
											arg0.ImgSeperator:setZoom(6.430000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F254_)
										end

										if arg1.interrupted then
											__FUNC_EFC1_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0.ImgSeperator:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0.ImgSeperator:setZoom(8.570000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EFC1_)
									end

									if arg1.interrupted then
										__FUNC_EDD0_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
									arg0.ImgSeperator:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
									arg0.ImgSeperator:setAlpha(0.800000)
									arg0.ImgSeperator:setZoom(12.860000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EDD0_)
								end

								if arg1.interrupted then
									__FUNC_EBB1_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0.ImgSemiCircle:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0.ImgSemiCircle:setAlpha(0.600000)
								arg0.ImgSemiCircle:setZoom(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EBB1_)
							end

							if arg1.interrupted then
								__FUNC_E992_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0.ImgSemiCircle:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0.ImgSemiCircle:setZoom(5.140000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E992_)
						end

						if arg1.interrupted then
							__FUNC_E7A1_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0.ImgSemiCircle:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0.ImgSemiCircle:setAlpha(0.100000)
						arg0.ImgSemiCircle:setZoom(13.430000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E7A1_)
					end

					if arg1.interrupted then
						__FUNC_E582_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0.ImgSemiCircle:beginAnimation("subkeyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0.ImgSemiCircle:setZoom(17.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E582_)
				end

				if arg1.interrupted then
					__FUNC_E391_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0.ImgSemiCircle:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0.ImgSemiCircle:setAlpha(0.600000)
				arg0.ImgSemiCircle:setZoom(25.860000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E391_)
			end

			if arg1.interrupted then
				__FUNC_E170_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E170_)
		end

		registerVal11:completeAnimation()
		registerVal11.BackLine1:completeAnimation()
		registerVal11.ImgSemiCircle:completeAnimation()
		registerVal11.ImgSeperator:completeAnimation()
		registerVal2.ClipElements.BackLine1:setAlpha(0.000000)
		registerVal2.ClipElements.ImgSemiCircle:setAlpha(0.000000)
		registerVal2.ClipElements.ImgSemiCircle:setZoom(30.000000)
		registerVal2.ClipElements.ImgSeperator:setAlpha(0.000000)
		registerVal2.ClipElements.ImgSeperator:setZoom(15.000000)
		__FUNC_E01B_(registerVal11, {})
		local function __FUNC_10F26_(arg0, arg1)
			local function __FUNC_1107C_(arg0, arg1)
				local function __FUNC_111D4_(arg0, arg1)
					local function __FUNC_113C3_(arg0, arg1)
						local function __FUNC_11518_(arg0, arg1)
							local function __FUNC_11707_(arg0, arg1)
								local function __FUNC_1185C_(arg0, arg1)
									local function __FUNC_11A4B_(arg0, arg1)
										local function __FUNC_11BA0_(arg0, arg1)
											local function __FUNC_11D8F_(arg0, arg1)
												local function __FUNC_11EE4_(arg0, arg1)
													local function __FUNC_120D3_(arg0, arg1)
														local function __FUNC_12228_(arg0, arg1)
															local function __FUNC_1241A_(arg0, arg1)
																local function __FUNC_12570_(arg0, arg1)
																	local function __FUNC_12762_(arg0, arg1)
																		local function __FUNC_128B8_(arg0, arg1)
																			local function __FUNC_12AAA_(arg0, arg1)
																				local function __FUNC_12C00_(arg0, arg1)
																					local function __FUNC_12DF2_(arg0, arg1)
																						local function __FUNC_12F48_(arg0, arg1)
																							local function __FUNC_1313A_(arg0, arg1)
																								local function __FUNC_13290_(arg0, arg1)
																									local function __FUNC_133E8_(arg0, arg1)
																										local function __FUNC_136AD_(arg0, arg1)
																											local function __FUNC_1389A_(arg0, arg1)
																												if not arg1.interrupted then
																													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																													arg0.Clip:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																													arg0.Knife:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																													arg0.TotalAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																													arg0.ClipMeter:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																													arg0.AmmoColorBar:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																													arg0.ClipHero:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																												end
																												arg0.Clip:setAlpha(0.700000)
																												arg0.Knife:setAlpha(0.800000)
																												arg0.TotalAmmo:setAlpha(0.900000)
																												arg0.ClipMeter:setAlpha(1.000000)
																												arg0.AmmoColorBar:setAlpha(1.000000)
																												arg0.ClipHero:setAlpha(1.000000)
																												if arg1.interrupted then
																													registerVal2.clipFinished(arg0, arg1)
																												else
																													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																												end
																											end

																											if arg1.interrupted then
																												__FUNC_1389A_(arg0, arg1)
																												return 
																											end
																											arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
																											arg0.ClipHero:beginAnimation("subkeyframe", 49.000000, false, false, CoD.TweenType.Linear)
																											arg0.ClipHero:setAlpha(0.860000)
																											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1389A_)
																										end

																										if arg1.interrupted then
																											__FUNC_136AD_(arg0, arg1)
																											return 
																										end
																										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																										arg0.Clip:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																										arg0.Knife:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																										arg0.ClipHero:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																										arg0.Clip:setAlpha(0.700000)
																										arg0.Knife:setAlpha(0.800000)
																										arg0.ClipHero:setAlpha(0.140000)
																										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_136AD_)
																									end

																									if arg1.interrupted then
																										__FUNC_133E8_(arg0, arg1)
																										return 
																									end
																									arg0:beginAnimation("keyframe", 390.000000, false, false, CoD.TweenType.Linear)
																									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_133E8_)
																								end

																								if arg1.interrupted then
																									__FUNC_13290_(arg0, arg1)
																									return 
																								end
																								arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13290_)
																							end

																							if arg1.interrupted then
																								__FUNC_1313A_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																							arg0.AmmoColorBar:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																							arg0.AmmoColorBar:setAlpha(1.000000)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1313A_)
																						end

																						if arg1.interrupted then
																							__FUNC_12F48_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12F48_)
																					end

																					if arg1.interrupted then
																						__FUNC_12DF2_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																					arg0.AmmoColorBar:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																					arg0.AmmoColorBar:setAlpha(0.600000)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12DF2_)
																				end

																				if arg1.interrupted then
																					__FUNC_12C00_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12C00_)
																			end

																			if arg1.interrupted then
																				__FUNC_12AAA_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																			arg0.AmmoColorBar:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																			arg0.AmmoColorBar:setAlpha(1.000000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12AAA_)
																		end

																		if arg1.interrupted then
																			__FUNC_128B8_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_128B8_)
																	end

																	if arg1.interrupted then
																		__FUNC_12762_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																	arg0.AmmoColorBar:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																	arg0.AmmoColorBar:setAlpha(0.300000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12762_)
																end

																if arg1.interrupted then
																	__FUNC_12570_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12570_)
															end

															if arg1.interrupted then
																__FUNC_1241A_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
															arg0.AmmoColorBar:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
															arg0.AmmoColorBar:setAlpha(1.000000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1241A_)
														end

														if arg1.interrupted then
															__FUNC_12228_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12228_)
													end

													if arg1.interrupted then
														__FUNC_120D3_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0.ClipMeter:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0.ClipMeter:setAlpha(1.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_120D3_)
												end

												if arg1.interrupted then
													__FUNC_11EE4_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11EE4_)
											end

											if arg1.interrupted then
												__FUNC_11D8F_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0.ClipMeter:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0.ClipMeter:setAlpha(0.600000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11D8F_)
										end

										if arg1.interrupted then
											__FUNC_11BA0_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11BA0_)
									end

									if arg1.interrupted then
										__FUNC_11A4B_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0.ClipMeter:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0.ClipMeter:setAlpha(1.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11A4B_)
								end

								if arg1.interrupted then
									__FUNC_1185C_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1185C_)
							end

							if arg1.interrupted then
								__FUNC_11707_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0.ClipMeter:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0.ClipMeter:setAlpha(0.300000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11707_)
						end

						if arg1.interrupted then
							__FUNC_11518_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11518_)
					end

					if arg1.interrupted then
						__FUNC_113C3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0.ClipMeter:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0.ClipMeter:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_113C3_)
				end

				if arg1.interrupted then
					__FUNC_111D4_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_111D4_)
			end

			if arg1.interrupted then
				__FUNC_1107C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 589.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1107C_)
		end

		registerVal12:completeAnimation()
		registerVal12.Clip:completeAnimation()
		registerVal12.Knife:completeAnimation()
		registerVal12.TotalAmmo:completeAnimation()
		registerVal12.ClipMeter:completeAnimation()
		registerVal12.AmmoColorBar:completeAnimation()
		registerVal12.ClipHero:completeAnimation()
		registerVal2.Clip.Clip:setAlpha(0.000000)
		registerVal2.Clip.Knife:setAlpha(0.000000)
		registerVal2.Clip.TotalAmmo:setAlpha(0.000000)
		registerVal2.Clip.ClipMeter:setAlpha(0.000000)
		registerVal2.Clip.AmmoColorBar:setAlpha(0.000000)
		registerVal2.Clip.ClipHero:setAlpha(0.000000)
		__FUNC_10F26_(registerVal12, {})
		local function __FUNC_13CE0_(arg0, arg1)
			local function __FUNC_13E38_(arg0, arg1)
				local function __FUNC_13FB3_(arg0, arg1)
					local function __FUNC_14108_(arg0, arg1)
						local function __FUNC_14283_(arg0, arg1)
							local function __FUNC_143D8_(arg0, arg1)
								local function __FUNC_14553_(arg0, arg1)
									local function __FUNC_146A8_(arg0, arg1)
										local function __FUNC_14823_(arg0, arg1)
											local function __FUNC_14978_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setAlpha(1.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_14978_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14978_)
										end

										if arg1.interrupted then
											__FUNC_14823_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.700000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14823_)
									end

									if arg1.interrupted then
										__FUNC_146A8_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_146A8_)
								end

								if arg1.interrupted then
									__FUNC_14553_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14553_)
							end

							if arg1.interrupted then
								__FUNC_143D8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_143D8_)
						end

						if arg1.interrupted then
							__FUNC_14283_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14283_)
					end

					if arg1.interrupted then
						__FUNC_14108_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14108_)
				end

				if arg1.interrupted then
					__FUNC_13FB3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13FB3_)
			end

			if arg1.interrupted then
				__FUNC_13E38_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 920.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13E38_)
		end

		registerVal13:completeAnimation()
		registerVal2.FireRate:setAlpha(0.000000)
		__FUNC_13CE0_(registerVal13, {})
		local function __FUNC_14B2D_(arg0, arg1)
			local function __FUNC_14C84_(arg0, arg1)
				local function __FUNC_14E7F_(arg0, arg1)
					local function __FUNC_15186_(arg0, arg1)
						local function __FUNC_15470_(arg0, arg1)
							local function __FUNC_156DF_(arg0, arg1)
								local function __FUNC_1596E_(arg0, arg1)
									local function __FUNC_15B65_(arg0, arg1)
										local function __FUNC_15CDF_(arg0, arg1)
											local function __FUNC_15E34_(arg0, arg1)
												local function __FUNC_15F8C_(arg0, arg1)
													local function __FUNC_16107_(arg0, arg1)
														local function __FUNC_1625C_(arg0, arg1)
															if not arg1.interrupted then
																arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																arg0.AbilityRingBackDuplicate:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																arg0.AbilityRingBackDeplete:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																arg0.AbilityRingBack:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																arg0.AbilityIconContainer:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
															end
															arg0:setAlpha(1.000000)
															arg0.AbilityRingBackDuplicate:setZoom(0.000000)
															arg0.AbilityRingBackDeplete:setZoom(0.000000)
															arg0.AbilityRingBack:setZoom(0.000000)
															arg0.AbilityIconContainer:setZoom(0.000000)
															if arg1.interrupted then
																registerVal2.clipFinished(arg0, arg1)
															else
																arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
															end
														end

														if arg1.interrupted then
															__FUNC_1625C_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1625C_)
													end

													if arg1.interrupted then
														__FUNC_16107_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.700000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16107_)
												end

												if arg1.interrupted then
													__FUNC_15F8C_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15F8C_)
											end

											if arg1.interrupted then
												__FUNC_15E34_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15E34_)
										end

										if arg1.interrupted then
											__FUNC_15CDF_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15CDF_)
									end

									if arg1.interrupted then
										__FUNC_15B65_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
									arg0.AbilityIconContainer:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
									arg0.AbilityIconContainer:setZoom(0.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15B65_)
								end

								if arg1.interrupted then
									__FUNC_1596E_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0.AbilityRingBack:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0.AbilityIconContainer:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0.AbilityRingBack:setZoom(0.000000)
								arg0.AbilityIconContainer:setZoom(13.330000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1596E_)
							end

							if arg1.interrupted then
								__FUNC_156DF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0.AbilityRingBack:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0.AbilityIconContainer:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0.AbilityRingBack:setZoom(7.500000)
							arg0.AbilityIconContainer:setZoom(20.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_156DF_)
						end

						if arg1.interrupted then
							__FUNC_15470_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0.AbilityRingBackDeplete:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0.AbilityRingBack:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0.AbilityIconContainer:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0.AbilityRingBackDeplete:setZoom(0.000000)
						arg0.AbilityRingBack:setZoom(15.000000)
						arg0.AbilityIconContainer:setZoom(26.670000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15470_)
					end

					if arg1.interrupted then
						__FUNC_15186_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0.AbilityRingBackDeplete:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0.AbilityRingBack:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0.AbilityIconContainer:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0.AbilityRingBackDeplete:setZoom(10.000000)
					arg0.AbilityRingBack:setZoom(22.500000)
					arg0.AbilityIconContainer:setZoom(33.330000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15186_)
				end

				if arg1.interrupted then
					__FUNC_14E7F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0.AbilityRingBackDeplete:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0.AbilityRingBackDeplete:setZoom(20.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14E7F_)
			end

			if arg1.interrupted then
				__FUNC_14C84_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 889.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14C84_)
		end

		registerVal14:completeAnimation()
		registerVal14.AbilityRingBackDuplicate:completeAnimation()
		registerVal14.AbilityRingBackDeplete:completeAnimation()
		registerVal14.AbilityRingBack:completeAnimation()
		registerVal14.AbilityIconContainer:completeAnimation()
		registerVal2.AbilityContainer:setAlpha(0.000000)
		registerVal2.AbilityContainer.AbilityRingBackDuplicate:setZoom(0.000000)
		registerVal2.AbilityContainer.AbilityRingBackDeplete:setZoom(30.000000)
		registerVal2.AbilityContainer.AbilityRingBack:setZoom(30.000000)
		registerVal2.AbilityContainer.AbilityIconContainer:setZoom(40.000000)
		__FUNC_14B2D_(registerVal14, {})
		local function __FUNC_16615_(arg0, arg1)
			local function __FUNC_1676C_(arg0, arg1)
				local function __FUNC_16957_(arg0, arg1)
					local function __FUNC_16AAC_(arg0, arg1)
						local function __FUNC_16C97_(arg0, arg1)
							local function __FUNC_16DEC_(arg0, arg1)
								local function __FUNC_16F44_(arg0, arg1)
									local function __FUNC_1712F_(arg0, arg1)
										local function __FUNC_17284_(arg0, arg1)
											local function __FUNC_1746F_(arg0, arg1)
												local function __FUNC_175C4_(arg0, arg1)
													local function __FUNC_1784D_(arg0, arg1)
														local function __FUNC_17A3A_(arg0, arg1)
															local function __FUNC_17C55_(arg0, arg1)
																local function __FUNC_17E42_(arg0, arg1)
																	local function __FUNC_17F98_(arg0, arg1)
																		local function __FUNC_18187_(arg0, arg1)
																			local function __FUNC_182DC_(arg0, arg1)
																				local function __FUNC_184CB_(arg0, arg1)
																					local function __FUNC_18620_(arg0, arg1)
																						local function __FUNC_1880F_(arg0, arg1)
																							local function __FUNC_18964_(arg0, arg1)
																								local function __FUNC_18BBE_(arg0, arg1)
																									local function __FUNC_18D14_(arg0, arg1)
																										local function __FUNC_18E6C_(arg0, arg1)
																											local function __FUNC_190C6_(arg0, arg1)
																												local function __FUNC_1921C_(arg0, arg1)
																													local function __FUNC_19374_(arg0, arg1)
																														local function __FUNC_195CE_(arg0, arg1)
																															local function __FUNC_19724_(arg0, arg1)
																																local function __FUNC_1987C_(arg0, arg1)
																																	local function __FUNC_19B55_(arg0, arg1)
																																		local function __FUNC_19CAC_(arg0, arg1)
																																			local function __FUNC_19E04_(arg0, arg1)
																																				local function __FUNC_19FF3_(arg0, arg1)
																																					local function __FUNC_1A148_(arg0, arg1)
																																						local function __FUNC_1A337_(arg0, arg1)
																																							local function __FUNC_1A48C_(arg0, arg1)
																																								local function __FUNC_1A67B_(arg0, arg1)
																																									local function __FUNC_1A7D0_(arg0, arg1)
																																										local function __FUNC_1A9F4_(arg0, arg1)
																																											local function __FUNC_1AB4C_(arg0, arg1)
																																												local function __FUNC_1ACA4_(arg0, arg1)
																																													local function __FUNC_1ADFC_(arg0, arg1)
																																														local function __FUNC_1AF54_(arg0, arg1)
																																															local function __FUNC_1B1AE_(arg0, arg1)
																																																local function __FUNC_1B406_(arg0, arg1)
																																																	local function __FUNC_1B65E_(arg0, arg1)
																																																		local function __FUNC_1B7B4_(arg0, arg1)
																																																			local function __FUNC_1B90C_(arg0, arg1)
																																																				local function __FUNC_1BB66_(arg0, arg1)
																																																					local function __FUNC_1BCBC_(arg0, arg1)
																																																						if not arg1.interrupted then
																																																							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																																							arg0.Knife:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																																							arg0.TotalAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																																							arg0.TotalAmmo.TotalAmmoLbl:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																																						end
																																																						arg0.Knife:setAlpha(0.800000)
																																																						arg0.TotalAmmo:setRGB(1.000000, 1.000000, 1.000000)
																																																						arg0.TotalAmmo:setAlpha(0.000000)
																																																						arg0.TotalAmmo:setZoom(0.000000)
																																																						arg0.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("000"))
																																																						if arg1.interrupted then
																																																							registerVal2.clipFinished(arg0, arg1)
																																																						else
																																																							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																																																						end
																																																					end

																																																					if arg1.interrupted then
																																																						__FUNC_1BCBC_(arg0, arg1)
																																																						return 
																																																					end
																																																					arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																																																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BCBC_)
																																																				end

																																																				if arg1.interrupted then
																																																					__FUNC_1BB66_(arg0, arg1)
																																																					return 
																																																				end
																																																				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																																																				arg0.TotalAmmo.TotalAmmoLbl:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
																																																				arg0.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("250"))
																																																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BB66_)
																																																			end

																																																			if arg1.interrupted then
																																																				__FUNC_1B90C_(arg0, arg1)
																																																				return 
																																																			end
																																																			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B90C_)
																																																		end

																																																		if arg1.interrupted then
																																																			__FUNC_1B7B4_(arg0, arg1)
																																																			return 
																																																		end
																																																		arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																																																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B7B4_)
																																																	end

																																																	if arg1.interrupted then
																																																		__FUNC_1B65E_(arg0, arg1)
																																																		return 
																																																	end
																																																	arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																																																	arg0.TotalAmmo.TotalAmmoLbl:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
																																																	arg0.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("500"))
																																																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B65E_)
																																																end

																																																if arg1.interrupted then
																																																	__FUNC_1B406_(arg0, arg1)
																																																	return 
																																																end
																																																arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																																																arg0.TotalAmmo.TotalAmmoLbl:beginAnimation("subkeyframe", 29.000000, false, false, CoD.TweenType.Linear)
																																																arg0.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("---"))
																																																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B406_)
																																															end

																																															if arg1.interrupted then
																																																__FUNC_1B1AE_(arg0, arg1)
																																																return 
																																															end
																																															arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																																															arg0.TotalAmmo.TotalAmmoLbl:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
																																															arg0.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("750"))
																																															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B1AE_)
																																														end

																																														if arg1.interrupted then
																																															__FUNC_1AF54_(arg0, arg1)
																																															return 
																																														end
																																														arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																																														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AF54_)
																																													end

																																													if arg1.interrupted then
																																														__FUNC_1ADFC_(arg0, arg1)
																																														return 
																																													end
																																													arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
																																													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1ADFC_)
																																												end

																																												if arg1.interrupted then
																																													__FUNC_1ACA4_(arg0, arg1)
																																													return 
																																												end
																																												arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
																																												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1ACA4_)
																																											end

																																											if arg1.interrupted then
																																												__FUNC_1AB4C_(arg0, arg1)
																																												return 
																																											end
																																											arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
																																											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AB4C_)
																																										end

																																										if arg1.interrupted then
																																											__FUNC_1A9F4_(arg0, arg1)
																																											return 
																																										end
																																										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																										arg0.TotalAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																										arg0.TotalAmmo:setRGB(1.000000, 1.000000, 1.000000)
																																										arg0.TotalAmmo:setAlpha(0.900000)
																																										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A9F4_)
																																									end

																																									if arg1.interrupted then
																																										__FUNC_1A7D0_(arg0, arg1)
																																										return 
																																									end
																																									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																																									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A7D0_)
																																								end

																																								if arg1.interrupted then
																																									__FUNC_1A67B_(arg0, arg1)
																																									return 
																																								end
																																								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																								arg0.TotalAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																								arg0.TotalAmmo:setAlpha(0.000000)
																																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A67B_)
																																							end

																																							if arg1.interrupted then
																																								__FUNC_1A48C_(arg0, arg1)
																																								return 
																																							end
																																							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A48C_)
																																						end

																																						if arg1.interrupted then
																																							__FUNC_1A337_(arg0, arg1)
																																							return 
																																						end
																																						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																						arg0.TotalAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																						arg0.TotalAmmo:setAlpha(0.900000)
																																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A337_)
																																					end

																																					if arg1.interrupted then
																																						__FUNC_1A148_(arg0, arg1)
																																						return 
																																					end
																																					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A148_)
																																				end

																																				if arg1.interrupted then
																																					__FUNC_19FF3_(arg0, arg1)
																																					return 
																																				end
																																				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																				arg0.TotalAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																				arg0.TotalAmmo:setAlpha(0.000000)
																																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19FF3_)
																																			end

																																			if arg1.interrupted then
																																				__FUNC_19E04_(arg0, arg1)
																																				return 
																																			end
																																			arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19E04_)
																																		end

																																		if arg1.interrupted then
																																			__FUNC_19CAC_(arg0, arg1)
																																			return 
																																		end
																																		arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19CAC_)
																																	end

																																	if arg1.interrupted then
																																		__FUNC_19B55_(arg0, arg1)
																																		return 
																																	end
																																	arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																	arg0.TotalAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																	arg0.TotalAmmo.TotalAmmoLbl:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																	arg0.TotalAmmo:setRGB(0.960000, 0.820000, 0.220000)
																																	arg0.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("999"))
																																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19B55_)
																																end

																																if arg1.interrupted then
																																	__FUNC_1987C_(arg0, arg1)
																																	return 
																																end
																																arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1987C_)
																															end

																															if arg1.interrupted then
																																__FUNC_19724_(arg0, arg1)
																																return 
																															end
																															arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19724_)
																														end

																														if arg1.interrupted then
																															__FUNC_195CE_(arg0, arg1)
																															return 
																														end
																														arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																														arg0.TotalAmmo.TotalAmmoLbl:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																														arg0.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("750"))
																														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_195CE_)
																													end

																													if arg1.interrupted then
																														__FUNC_19374_(arg0, arg1)
																														return 
																													end
																													arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19374_)
																												end

																												if arg1.interrupted then
																													__FUNC_1921C_(arg0, arg1)
																													return 
																												end
																												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1921C_)
																											end

																											if arg1.interrupted then
																												__FUNC_190C6_(arg0, arg1)
																												return 
																											end
																											arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																											arg0.TotalAmmo.TotalAmmoLbl:beginAnimation("subkeyframe", 20.000000, false, false, CoD.TweenType.Linear)
																											arg0.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("500"))
																											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_190C6_)
																										end

																										if arg1.interrupted then
																											__FUNC_18E6C_(arg0, arg1)
																											return 
																										end
																										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18E6C_)
																									end

																									if arg1.interrupted then
																										__FUNC_18D14_(arg0, arg1)
																										return 
																									end
																									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18D14_)
																								end

																								if arg1.interrupted then
																									__FUNC_18BBE_(arg0, arg1)
																									return 
																								end
																								arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																								arg0.TotalAmmo.TotalAmmoLbl:beginAnimation("subkeyframe", 20.000000, false, false, CoD.TweenType.Linear)
																								arg0.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("250"))
																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18BBE_)
																							end

																							if arg1.interrupted then
																								__FUNC_18964_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18964_)
																						end

																						if arg1.interrupted then
																							__FUNC_1880F_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																						arg0.TotalAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																						arg0.TotalAmmo:setAlpha(0.900000)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1880F_)
																					end

																					if arg1.interrupted then
																						__FUNC_18620_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18620_)
																				end

																				if arg1.interrupted then
																					__FUNC_184CB_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																				arg0.TotalAmmo:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
																				arg0.TotalAmmo:setAlpha(0.500000)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_184CB_)
																			end

																			if arg1.interrupted then
																				__FUNC_182DC_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_182DC_)
																		end

																		if arg1.interrupted then
																			__FUNC_18187_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																		arg0.TotalAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																		arg0.TotalAmmo:setAlpha(0.900000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18187_)
																	end

																	if arg1.interrupted then
																		__FUNC_17F98_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17F98_)
																end

																if arg1.interrupted then
																	__FUNC_17E42_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																arg0.TotalAmmo:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
																arg0.TotalAmmo:setZoom(0.000000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17E42_)
															end

															if arg1.interrupted then
																__FUNC_17C55_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
															arg0.TotalAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
															arg0.TotalAmmo:setAlpha(0.300000)
															arg0.TotalAmmo:setZoom(6.000000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17C55_)
														end

														if arg1.interrupted then
															__FUNC_17A3A_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
														arg0.TotalAmmo:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
														arg0.TotalAmmo:setZoom(12.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17A3A_)
													end

													if arg1.interrupted then
														__FUNC_1784D_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0.Knife:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0.TotalAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0.Knife:setAlpha(0.800000)
													arg0.TotalAmmo:setAlpha(0.900000)
													arg0.TotalAmmo:setZoom(24.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1784D_)
												end

												if arg1.interrupted then
													__FUNC_175C4_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_175C4_)
											end

											if arg1.interrupted then
												__FUNC_1746F_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0.Knife:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0.Knife:setAlpha(0.500000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1746F_)
										end

										if arg1.interrupted then
											__FUNC_17284_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17284_)
									end

									if arg1.interrupted then
										__FUNC_1712F_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0.Knife:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0.Knife:setAlpha(0.800000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1712F_)
								end

								if arg1.interrupted then
									__FUNC_16F44_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16F44_)
							end

							if arg1.interrupted then
								__FUNC_16DEC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16DEC_)
						end

						if arg1.interrupted then
							__FUNC_16C97_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0.Knife:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0.Knife:setAlpha(0.300000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16C97_)
					end

					if arg1.interrupted then
						__FUNC_16AAC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16AAC_)
				end

				if arg1.interrupted then
					__FUNC_16957_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0.Knife:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0.Knife:setAlpha(0.800000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16957_)
			end

			if arg1.interrupted then
				__FUNC_1676C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1676C_)
		end

		registerVal15:completeAnimation()
		registerVal15.Knife:completeAnimation()
		registerVal15.TotalAmmo:completeAnimation()
		registerVal15.TotalAmmo.TotalAmmoLbl:completeAnimation()
		registerVal2.ClipDummy.Knife:setAlpha(0.000000)
		registerVal2.ClipDummy.TotalAmmo:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ClipDummy.TotalAmmo:setAlpha(0.000000)
		registerVal2.ClipDummy.TotalAmmo:setZoom(30.000000)
		registerVal2.ClipDummy.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("000"))
		__FUNC_16615_(registerVal15, {})
		local function __FUNC_1C089_(arg0, arg1)
			local function __FUNC_1C1E0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1C1E0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 800.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C1E0_)
		end

		registerVal18:completeAnimation()
		registerVal2.EnemyFlagHeld:setAlpha(0.000000)
		__FUNC_1C089_(registerVal18, {})
	end

	registerVal20.HudStart = __FUNC_48E6_
	local function __FUNC_1C395_()
		registerVal2:setupElementClipCounter(16.000000)
		local function __FUNC_1D7BF_(arg0, arg1)
			local function __FUNC_1D914_(arg0, arg1)
				local function __FUNC_1DA6C_(arg0, arg1)
					local function __FUNC_1DBC4_(arg0, arg1)
						local function __FUNC_1DD1C_(arg0, arg1)
							local function __FUNC_1DE74_(arg0, arg1)
								local function __FUNC_1DFCC_(arg0, arg1)
									local function __FUNC_1E124_(arg0, arg1)
										local function __FUNC_1E313_(arg0, arg1)
											local function __FUNC_1E468_(arg0, arg1)
												local function __FUNC_1E657_(arg0, arg1)
													local function __FUNC_1E843_(arg0, arg1)
														local function __FUNC_1EA2F_(arg0, arg1)
															local function __FUNC_1EB84_(arg0, arg1)
																local function __FUNC_1ED78_(arg0, arg1)
																	local function __FUNC_1EFE0_(arg0, arg1)
																		local function __FUNC_1F1D4_(arg0, arg1)
																			local function __FUNC_1F32C_(arg0, arg1)
																				local function __FUNC_1F591_(arg0, arg1)
																					local function __FUNC_1F783_(arg0, arg1)
																						local function __FUNC_1F9E5_(arg0, arg1)
																							local function __FUNC_1FBD5_(arg0, arg1)
																								if not arg1.interrupted then
																									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																									arg0.PanelTactical:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																									arg0.PanelLethal:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																									arg0.PanelOctagon:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																									arg0.PanelAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																									arg0.PanelFlagEnemy:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																								end
																								arg0:setLeftRight(false, true, -152.000000, 98.000000)
																								arg0:setTopBottom(false, false, -47.000000, 58.670000)
																								arg0.PanelTactical:setAlpha(1.000000)
																								arg0.PanelLethal:setAlpha(1.000000)
																								arg0.PanelOctagon:setAlpha(0.000000)
																								arg0.PanelAmmo:setAlpha(1.000000)
																								arg0.PanelFlagEnemy:setAlpha(1.000000)
																								if arg1.interrupted then
																									registerVal2.clipFinished(arg0, arg1)
																								else
																									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																								end
																							end

																							if arg1.interrupted then
																								__FUNC_1FBD5_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																							arg0.PanelLethal:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
																							arg0.PanelLethal:setAlpha(0.200000)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FBD5_)
																						end

																						if arg1.interrupted then
																							__FUNC_1F9E5_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																						arg0.PanelTactical:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																						arg0.PanelLethal:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																						arg0.PanelTactical:setAlpha(1.000000)
																						arg0.PanelLethal:setAlpha(0.500000)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F9E5_)
																					end

																					if arg1.interrupted then
																						__FUNC_1F783_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																					arg0.PanelTactical:beginAnimation("subkeyframe", 20.000000, false, false, CoD.TweenType.Linear)
																					arg0.PanelTactical:setAlpha(0.200000)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F783_)
																				end

																				if arg1.interrupted then
																					__FUNC_1F591_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																				arg0.PanelTactical:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																				arg0.PanelLethal:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																				arg0.PanelTactical:setAlpha(0.500000)
																				arg0.PanelLethal:setAlpha(1.000000)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F591_)
																			end

																			if arg1.interrupted then
																				__FUNC_1F32C_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F32C_)
																		end

																		if arg1.interrupted then
																			__FUNC_1F1D4_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																		arg0.PanelFlagEnemy:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																		arg0.PanelFlagEnemy:setAlpha(1.000000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F1D4_)
																	end

																	if arg1.interrupted then
																		__FUNC_1EFE0_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																	arg0.PanelTactical:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																	arg0.PanelFlagEnemy:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																	arg0.PanelTactical:setAlpha(1.000000)
																	arg0.PanelFlagEnemy:setAlpha(0.830000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EFE0_)
																end

																if arg1.interrupted then
																	__FUNC_1ED78_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
																arg0.PanelFlagEnemy:beginAnimation("subkeyframe", 40.000000, false, false, CoD.TweenType.Linear)
																arg0.PanelFlagEnemy:setAlpha(0.670000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1ED78_)
															end

															if arg1.interrupted then
																__FUNC_1EB84_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EB84_)
														end

														if arg1.interrupted then
															__FUNC_1EA2F_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
														arg0.PanelAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
														arg0.PanelAmmo:setAlpha(1.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EA2F_)
													end

													if arg1.interrupted then
														__FUNC_1E843_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
													arg0.PanelAmmo:beginAnimation("subkeyframe", 20.000000, false, false, CoD.TweenType.Linear)
													arg0.PanelAmmo:setAlpha(0.200000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E843_)
												end

												if arg1.interrupted then
													__FUNC_1E657_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
												arg0.PanelAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
												arg0.PanelAmmo:setAlpha(0.500000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E657_)
											end

											if arg1.interrupted then
												__FUNC_1E468_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E468_)
										end

										if arg1.interrupted then
											__FUNC_1E313_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0.PanelAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0.PanelAmmo:setAlpha(1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E313_)
									end

									if arg1.interrupted then
										__FUNC_1E124_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E124_)
								end

								if arg1.interrupted then
									__FUNC_1DFCC_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DFCC_)
							end

							if arg1.interrupted then
								__FUNC_1DE74_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DE74_)
						end

						if arg1.interrupted then
							__FUNC_1DD1C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DD1C_)
					end

					if arg1.interrupted then
						__FUNC_1DBC4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DBC4_)
				end

				if arg1.interrupted then
					__FUNC_1DA6C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DA6C_)
			end

			if arg1.interrupted then
				__FUNC_1D914_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 680.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D914_)
		end

		registerVal3:completeAnimation()
		registerVal3.PanelTactical:completeAnimation()
		registerVal3.PanelLethal:completeAnimation()
		registerVal3.PanelOctagon:completeAnimation()
		registerVal3.PanelAmmo:completeAnimation()
		registerVal3.PanelFlagEnemy:completeAnimation()
		registerVal2.PanelContainer:setLeftRight(false, true, -152.000000, 98.000000)
		registerVal2.PanelContainer:setTopBottom(false, false, -47.000000, 58.670000)
		registerVal2.PanelContainer.PanelTactical:setAlpha(0.000000)
		registerVal2.PanelContainer.PanelLethal:setAlpha(0.000000)
		registerVal2.PanelContainer.PanelOctagon:setAlpha(0.000000)
		registerVal2.PanelContainer.PanelAmmo:setAlpha(0.000000)
		registerVal2.PanelContainer.PanelFlagEnemy:setAlpha(0.000000)
		__FUNC_1D7BF_(registerVal3, {})
		local function __FUNC_2002C_(arg0, arg1)
			local function __FUNC_20184_(arg0, arg1)
				local function __FUNC_20321_(arg0, arg1)
					local function __FUNC_2049A_(arg0, arg1)
						local function __FUNC_20635_(arg0, arg1)
							local function __FUNC_207AE_(arg0, arg1)
								local function __FUNC_20904_(arg0, arg1)
									local function __FUNC_20A7F_(arg0, arg1)
										local function __FUNC_20BD4_(arg0, arg1)
											local function __FUNC_20D4F_(arg0, arg1)
												local function __FUNC_20EA4_(arg0, arg1)
													if not arg1.interrupted then
														arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
													end
													arg0:setLeftRight(true, false, 387.730000, 494.730000)
													arg0:setTopBottom(true, false, 20.000000, 124.000000)
													arg0:setAlpha(0.350000)
													arg0:setZoom(-8.000000)
													if arg1.interrupted then
														registerVal2.clipFinished(arg0, arg1)
													else
														arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
													end
												end

												if arg1.interrupted then
													__FUNC_20EA4_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20EA4_)
											end

											if arg1.interrupted then
												__FUNC_20D4F_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.150000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20D4F_)
										end

										if arg1.interrupted then
											__FUNC_20BD4_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20BD4_)
									end

									if arg1.interrupted then
										__FUNC_20A7F_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.350000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20A7F_)
								end

								if arg1.interrupted then
									__FUNC_20904_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20904_)
							end

							if arg1.interrupted then
								__FUNC_207AE_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setZoom(-8.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_207AE_)
						end

						if arg1.interrupted then
							__FUNC_20635_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:setZoom(-0.400000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20635_)
					end

					if arg1.interrupted then
						__FUNC_2049A_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:setZoom(7.200000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2049A_)
				end

				if arg1.interrupted then
					__FUNC_20321_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.350000)
				arg0:setZoom(22.400000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20321_)
			end

			if arg1.interrupted then
				__FUNC_20184_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20184_)
		end

		registerVal4:completeAnimation()
		registerVal2.BackCircleOutter:setLeftRight(true, false, 387.730000, 494.730000)
		registerVal2.BackCircleOutter:setTopBottom(true, false, 20.000000, 124.000000)
		registerVal2.BackCircleOutter:setAlpha(0.000000)
		registerVal2.BackCircleOutter:setZoom(30.000000)
		__FUNC_2002C_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BackCircle:setLeftRight(true, false, 335.840000, 430.840000)
		registerVal2.BackCircle:setTopBottom(true, false, 12.660000, 118.660000)
		registerVal2.BackCircle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_210EB_(arg0, arg1)
			local function __FUNC_21240_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 297.340000, 345.490000)
				arg0:setTopBottom(true, false, 8.590000, 56.740000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_21240_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21240_)
		end

		registerVal6:completeAnimation()
		registerVal2.GlowTactical:setLeftRight(true, false, 297.340000, 345.490000)
		registerVal2.GlowTactical:setTopBottom(true, false, 8.590000, 56.740000)
		registerVal2.GlowTactical:setAlpha(0.000000)
		__FUNC_210EB_(registerVal6, {})
		local function __FUNC_21465_(arg0, arg1)
			local function __FUNC_215BC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 340.340000, 388.490000)
				arg0:setTopBottom(true, false, 8.590000, 56.740000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_215BC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_215BC_)
		end

		registerVal7:completeAnimation()
		registerVal2.GlowLethal:setLeftRight(true, false, 340.340000, 388.490000)
		registerVal2.GlowLethal:setTopBottom(true, false, 8.590000, 56.740000)
		registerVal2.GlowLethal:setAlpha(0.000000)
		__FUNC_21465_(registerVal7, {})
		local function __FUNC_217E1_(arg0, arg1)
			local function __FUNC_21938_(arg0, arg1)
				local function __FUNC_21AD5_(arg0, arg1)
					local function __FUNC_21C4E_(arg0, arg1)
						local function __FUNC_21DE9_(arg0, arg1)
							local function __FUNC_21F62_(arg0, arg1)
								local function __FUNC_220B8_(arg0, arg1)
									local function __FUNC_22233_(arg0, arg1)
										local function __FUNC_22388_(arg0, arg1)
											local function __FUNC_22503_(arg0, arg1)
												local function __FUNC_22658_(arg0, arg1)
													local function __FUNC_227D3_(arg0, arg1)
														if not arg1.interrupted then
															arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
														end
														arg0:setLeftRight(true, false, 300.750000, 342.420000)
														arg0:setTopBottom(true, false, 15.000000, 50.330000)
														arg0:setAlpha(0.500000)
														arg0:setZoom(1.000000)
														if arg1.interrupted then
															registerVal2.clipFinished(arg0, arg1)
														else
															arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
														end
													end

													if arg1.interrupted then
														__FUNC_227D3_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.600000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_227D3_)
												end

												if arg1.interrupted then
													__FUNC_22658_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22658_)
											end

											if arg1.interrupted then
												__FUNC_22503_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.100000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22503_)
										end

										if arg1.interrupted then
											__FUNC_22388_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22388_)
									end

									if arg1.interrupted then
										__FUNC_22233_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.400000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22233_)
								end

								if arg1.interrupted then
									__FUNC_220B8_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_220B8_)
							end

							if arg1.interrupted then
								__FUNC_21F62_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setZoom(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21F62_)
						end

						if arg1.interrupted then
							__FUNC_21DE9_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:setZoom(6.800000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21DE9_)
					end

					if arg1.interrupted then
						__FUNC_21C4E_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:setZoom(12.600000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21C4E_)
				end

				if arg1.interrupted then
					__FUNC_21AD5_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.400000)
				arg0:setZoom(24.200000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21AD5_)
			end

			if arg1.interrupted then
				__FUNC_21938_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21938_)
		end

		registerVal8:completeAnimation()
		registerVal2.InventoryBox1:setLeftRight(true, false, 300.750000, 342.420000)
		registerVal2.InventoryBox1:setTopBottom(true, false, 15.000000, 50.330000)
		registerVal2.InventoryBox1:setAlpha(0.000000)
		registerVal2.InventoryBox1:setZoom(30.000000)
		__FUNC_217E1_(registerVal8, {})
		local function __FUNC_22A17_(arg0, arg1)
			local function __FUNC_22B6C_(arg0, arg1)
				local function __FUNC_22D09_(arg0, arg1)
					local function __FUNC_22E82_(arg0, arg1)
						local function __FUNC_2301D_(arg0, arg1)
							local function __FUNC_23196_(arg0, arg1)
								local function __FUNC_232EC_(arg0, arg1)
									local function __FUNC_23467_(arg0, arg1)
										local function __FUNC_235BC_(arg0, arg1)
											local function __FUNC_23737_(arg0, arg1)
												local function __FUNC_2388C_(arg0, arg1)
													local function __FUNC_23A07_(arg0, arg1)
														if not arg1.interrupted then
															arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
														end
														arg0:setLeftRight(true, false, 344.750000, 387.420000)
														arg0:setTopBottom(true, false, 15.000000, 50.330000)
														arg0:setAlpha(0.500000)
														arg0:setZoom(1.000000)
														if arg1.interrupted then
															registerVal2.clipFinished(arg0, arg1)
														else
															arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
														end
													end

													if arg1.interrupted then
														__FUNC_23A07_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.600000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23A07_)
												end

												if arg1.interrupted then
													__FUNC_2388C_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2388C_)
											end

											if arg1.interrupted then
												__FUNC_23737_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.100000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23737_)
										end

										if arg1.interrupted then
											__FUNC_235BC_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_235BC_)
									end

									if arg1.interrupted then
										__FUNC_23467_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.400000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23467_)
								end

								if arg1.interrupted then
									__FUNC_232EC_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_232EC_)
							end

							if arg1.interrupted then
								__FUNC_23196_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setZoom(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23196_)
						end

						if arg1.interrupted then
							__FUNC_2301D_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:setZoom(6.800000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2301D_)
					end

					if arg1.interrupted then
						__FUNC_22E82_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:setZoom(12.600000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22E82_)
				end

				if arg1.interrupted then
					__FUNC_22D09_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.400000)
				arg0:setZoom(24.200000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22D09_)
			end

			if arg1.interrupted then
				__FUNC_22B6C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 379.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22B6C_)
		end

		registerVal9:completeAnimation()
		registerVal2.InventoryBox2:setLeftRight(true, false, 344.750000, 387.420000)
		registerVal2.InventoryBox2:setTopBottom(true, false, 15.000000, 50.330000)
		registerVal2.InventoryBox2:setAlpha(0.000000)
		registerVal2.InventoryBox2:setZoom(30.000000)
		__FUNC_22A17_(registerVal9, {})
		local function __FUNC_23C4B_(arg0, arg1)
			local function __FUNC_23DA0_(arg0, arg1)
				local function __FUNC_23F1B_(arg0, arg1)
					local function __FUNC_24070_(arg0, arg1)
						local function __FUNC_241EB_(arg0, arg1)
							local function __FUNC_24340_(arg0, arg1)
								local function __FUNC_244BB_(arg0, arg1)
									local function __FUNC_24610_(arg0, arg1)
										local function __FUNC_2478B_(arg0, arg1)
											local function __FUNC_248E0_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setLeftRight(true, false, 302.000000, 392.000000)
												arg0:setTopBottom(true, false, 13.000000, 55.000000)
												arg0:setAlpha(1.000000)
												arg0:setZoom(0.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_248E0_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_248E0_)
										end

										if arg1.interrupted then
											__FUNC_2478B_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.700000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2478B_)
									end

									if arg1.interrupted then
										__FUNC_24610_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24610_)
								end

								if arg1.interrupted then
									__FUNC_244BB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_244BB_)
							end

							if arg1.interrupted then
								__FUNC_24340_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24340_)
						end

						if arg1.interrupted then
							__FUNC_241EB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_241EB_)
					end

					if arg1.interrupted then
						__FUNC_24070_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24070_)
				end

				if arg1.interrupted then
					__FUNC_23F1B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23F1B_)
			end

			if arg1.interrupted then
				__FUNC_23DA0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23DA0_)
		end

		registerVal10:completeAnimation()
		registerVal2.EquipmentInfo:setLeftRight(true, false, 302.000000, 392.000000)
		registerVal2.EquipmentInfo:setTopBottom(true, false, 13.000000, 55.000000)
		registerVal2.EquipmentInfo:setAlpha(0.000000)
		registerVal2.EquipmentInfo:setZoom(0.000000)
		__FUNC_23C4B_(registerVal10, {})
		local function __FUNC_24B27_(arg0, arg1)
			local function __FUNC_24C7C_(arg0, arg1)
				local function __FUNC_24E9D_(arg0, arg1)
					local function __FUNC_2508E_(arg0, arg1)
						local function __FUNC_252AD_(arg0, arg1)
							local function __FUNC_2549E_(arg0, arg1)
								local function __FUNC_256BD_(arg0, arg1)
									local function __FUNC_258DC_(arg0, arg1)
										local function __FUNC_25ACD_(arg0, arg1)
											local function __FUNC_25D60_(arg0, arg1)
												local function __FUNC_25F51_(arg0, arg1)
													local function __FUNC_261E4_(arg0, arg1)
														local function __FUNC_2633C_(arg0, arg1)
															local function __FUNC_2652E_(arg0, arg1)
																local function __FUNC_26684_(arg0, arg1)
																	local function __FUNC_26876_(arg0, arg1)
																		local function __FUNC_269CC_(arg0, arg1)
																			local function __FUNC_26BBB_(arg0, arg1)
																				local function __FUNC_26D10_(arg0, arg1)
																					local function __FUNC_26EFF_(arg0, arg1)
																						local function __FUNC_27054_(arg0, arg1)
																							local function __FUNC_27243_(arg0, arg1)
																								local function __FUNC_27398_(arg0, arg1)
																									local function __FUNC_27587_(arg0, arg1)
																										local function __FUNC_276DC_(arg0, arg1)
																											if not arg1.interrupted then
																												arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																												arg0.BackLine1:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
																												arg0.ImgSemiCircle:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
																												arg0.ImgSeperator:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
																											end
																											arg0:setLeftRight(true, false, 270.180000, 430.180000)
																											arg0:setTopBottom(true, false, 43.500000, 100.500000)
																											arg0.BackLine1:setAlpha(1.000000)
																											arg0.ImgSemiCircle:setAlpha(0.600000)
																											arg0.ImgSemiCircle:setZoom(1.000000)
																											arg0.ImgSeperator:setAlpha(0.800000)
																											arg0.ImgSeperator:setZoom(0.000000)
																											if arg1.interrupted then
																												registerVal2.clipFinished(arg0, arg1)
																											else
																												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																											end
																										end

																										if arg1.interrupted then
																											__FUNC_276DC_(arg0, arg1)
																											return 
																										end
																										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_276DC_)
																									end

																									if arg1.interrupted then
																										__FUNC_27587_(arg0, arg1)
																										return 
																									end
																									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																									arg0.BackLine1:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
																									arg0.BackLine1:setAlpha(0.600000)
																									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27587_)
																								end

																								if arg1.interrupted then
																									__FUNC_27398_(arg0, arg1)
																									return 
																								end
																								arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27398_)
																							end

																							if arg1.interrupted then
																								__FUNC_27243_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																							arg0.BackLine1:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
																							arg0.BackLine1:setAlpha(1.000000)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27243_)
																						end

																						if arg1.interrupted then
																							__FUNC_27054_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27054_)
																					end

																					if arg1.interrupted then
																						__FUNC_26EFF_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																					arg0.BackLine1:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
																					arg0.BackLine1:setAlpha(0.300000)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26EFF_)
																				end

																				if arg1.interrupted then
																					__FUNC_26D10_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26D10_)
																			end

																			if arg1.interrupted then
																				__FUNC_26BBB_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																			arg0.BackLine1:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
																			arg0.BackLine1:setAlpha(1.000000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26BBB_)
																		end

																		if arg1.interrupted then
																			__FUNC_269CC_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_269CC_)
																	end

																	if arg1.interrupted then
																		__FUNC_26876_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																	arg0.ImgSeperator:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																	arg0.ImgSeperator:setAlpha(0.800000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26876_)
																end

																if arg1.interrupted then
																	__FUNC_26684_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26684_)
															end

															if arg1.interrupted then
																__FUNC_2652E_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
															arg0.ImgSeperator:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
															arg0.ImgSeperator:setAlpha(0.500000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2652E_)
														end

														if arg1.interrupted then
															__FUNC_2633C_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2633C_)
													end

													if arg1.interrupted then
														__FUNC_261E4_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0.ImgSemiCircle:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0.ImgSeperator:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0.ImgSemiCircle:setAlpha(0.600000)
													arg0.ImgSeperator:setAlpha(0.800000)
													arg0.ImgSeperator:setZoom(0.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_261E4_)
												end

												if arg1.interrupted then
													__FUNC_25F51_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
												arg0.ImgSeperator:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
												arg0.ImgSeperator:setZoom(2.140000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25F51_)
											end

											if arg1.interrupted then
												__FUNC_25D60_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0.ImgSemiCircle:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0.ImgSeperator:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0.ImgSemiCircle:setAlpha(0.400000)
											arg0.ImgSeperator:setAlpha(0.200000)
											arg0.ImgSeperator:setZoom(6.430000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25D60_)
										end

										if arg1.interrupted then
											__FUNC_25ACD_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0.ImgSeperator:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0.ImgSeperator:setZoom(8.570000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25ACD_)
									end

									if arg1.interrupted then
										__FUNC_258DC_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
									arg0.ImgSeperator:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
									arg0.ImgSeperator:setAlpha(0.800000)
									arg0.ImgSeperator:setZoom(12.860000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_258DC_)
								end

								if arg1.interrupted then
									__FUNC_256BD_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0.ImgSemiCircle:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0.ImgSemiCircle:setAlpha(0.600000)
								arg0.ImgSemiCircle:setZoom(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_256BD_)
							end

							if arg1.interrupted then
								__FUNC_2549E_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0.ImgSemiCircle:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0.ImgSemiCircle:setZoom(5.140000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2549E_)
						end

						if arg1.interrupted then
							__FUNC_252AD_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0.ImgSemiCircle:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0.ImgSemiCircle:setAlpha(0.100000)
						arg0.ImgSemiCircle:setZoom(13.430000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_252AD_)
					end

					if arg1.interrupted then
						__FUNC_2508E_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0.ImgSemiCircle:beginAnimation("subkeyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0.ImgSemiCircle:setZoom(17.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2508E_)
				end

				if arg1.interrupted then
					__FUNC_24E9D_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0.ImgSemiCircle:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0.ImgSemiCircle:setAlpha(0.600000)
				arg0.ImgSemiCircle:setZoom(25.860000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24E9D_)
			end

			if arg1.interrupted then
				__FUNC_24C7C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24C7C_)
		end

		registerVal11:completeAnimation()
		registerVal11.BackLine1:completeAnimation()
		registerVal11.ImgSemiCircle:completeAnimation()
		registerVal11.ImgSeperator:completeAnimation()
		registerVal2.ClipElements:setLeftRight(true, false, 270.180000, 430.180000)
		registerVal2.ClipElements:setTopBottom(true, false, 43.500000, 100.500000)
		registerVal2.ClipElements.BackLine1:setAlpha(0.000000)
		registerVal2.ClipElements.ImgSemiCircle:setAlpha(0.000000)
		registerVal2.ClipElements.ImgSemiCircle:setZoom(30.000000)
		registerVal2.ClipElements.ImgSeperator:setAlpha(0.000000)
		registerVal2.ClipElements.ImgSeperator:setZoom(15.000000)
		__FUNC_24B27_(registerVal11, {})
		local function __FUNC_27AA2_(arg0, arg1)
			local function __FUNC_27BF8_(arg0, arg1)
				local function __FUNC_27D50_(arg0, arg1)
					local function __FUNC_27F3F_(arg0, arg1)
						local function __FUNC_28094_(arg0, arg1)
							local function __FUNC_28283_(arg0, arg1)
								local function __FUNC_283D8_(arg0, arg1)
									local function __FUNC_285C7_(arg0, arg1)
										local function __FUNC_2871C_(arg0, arg1)
											local function __FUNC_2890B_(arg0, arg1)
												local function __FUNC_28A60_(arg0, arg1)
													local function __FUNC_28C4F_(arg0, arg1)
														local function __FUNC_28DA4_(arg0, arg1)
															local function __FUNC_28F96_(arg0, arg1)
																local function __FUNC_290EC_(arg0, arg1)
																	local function __FUNC_292DE_(arg0, arg1)
																		local function __FUNC_29434_(arg0, arg1)
																			local function __FUNC_29626_(arg0, arg1)
																				local function __FUNC_2977C_(arg0, arg1)
																					local function __FUNC_2996E_(arg0, arg1)
																						local function __FUNC_29AC4_(arg0, arg1)
																							local function __FUNC_29CB6_(arg0, arg1)
																								local function __FUNC_29E0C_(arg0, arg1)
																									if not arg1.interrupted then
																										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																										arg0.Clip:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																										arg0.Knife:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																										arg0.TotalAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																										arg0.ClipMeter:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																										arg0.AmmoColorBar:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																										arg0.ClipHero:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																									end
																									arg0:setLeftRight(true, false, 285.680000, 420.680000)
																									arg0:setTopBottom(true, false, 41.500000, 98.500000)
																									arg0.Clip:setAlpha(0.700000)
																									arg0.Knife:setAlpha(0.800000)
																									arg0.TotalAmmo:setAlpha(0.000000)
																									arg0.ClipMeter:setAlpha(1.000000)
																									arg0.AmmoColorBar:setAlpha(1.000000)
																									arg0.ClipHero:setAlpha(0.000000)
																									if arg1.interrupted then
																										registerVal2.clipFinished(arg0, arg1)
																									else
																										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																									end
																								end

																								if arg1.interrupted then
																									__FUNC_29E0C_(arg0, arg1)
																									return 
																								end
																								arg0:beginAnimation("keyframe", 510.000000, false, false, CoD.TweenType.Linear)
																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29E0C_)
																							end

																							if arg1.interrupted then
																								__FUNC_29CB6_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																							arg0.AmmoColorBar:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																							arg0.AmmoColorBar:setAlpha(1.000000)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29CB6_)
																						end

																						if arg1.interrupted then
																							__FUNC_29AC4_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29AC4_)
																					end

																					if arg1.interrupted then
																						__FUNC_2996E_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																					arg0.AmmoColorBar:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																					arg0.AmmoColorBar:setAlpha(0.600000)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2996E_)
																				end

																				if arg1.interrupted then
																					__FUNC_2977C_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2977C_)
																			end

																			if arg1.interrupted then
																				__FUNC_29626_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																			arg0.AmmoColorBar:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																			arg0.AmmoColorBar:setAlpha(1.000000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29626_)
																		end

																		if arg1.interrupted then
																			__FUNC_29434_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29434_)
																	end

																	if arg1.interrupted then
																		__FUNC_292DE_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																	arg0.AmmoColorBar:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																	arg0.AmmoColorBar:setAlpha(0.300000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_292DE_)
																end

																if arg1.interrupted then
																	__FUNC_290EC_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_290EC_)
															end

															if arg1.interrupted then
																__FUNC_28F96_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
															arg0.AmmoColorBar:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
															arg0.AmmoColorBar:setAlpha(1.000000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28F96_)
														end

														if arg1.interrupted then
															__FUNC_28DA4_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28DA4_)
													end

													if arg1.interrupted then
														__FUNC_28C4F_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0.ClipMeter:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0.ClipMeter:setAlpha(1.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28C4F_)
												end

												if arg1.interrupted then
													__FUNC_28A60_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28A60_)
											end

											if arg1.interrupted then
												__FUNC_2890B_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0.ClipMeter:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0.ClipMeter:setAlpha(0.600000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2890B_)
										end

										if arg1.interrupted then
											__FUNC_2871C_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2871C_)
									end

									if arg1.interrupted then
										__FUNC_285C7_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0.ClipMeter:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0.ClipMeter:setAlpha(1.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_285C7_)
								end

								if arg1.interrupted then
									__FUNC_283D8_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_283D8_)
							end

							if arg1.interrupted then
								__FUNC_28283_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0.ClipMeter:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0.ClipMeter:setAlpha(0.300000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28283_)
						end

						if arg1.interrupted then
							__FUNC_28094_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28094_)
					end

					if arg1.interrupted then
						__FUNC_27F3F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0.ClipMeter:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0.ClipMeter:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27F3F_)
				end

				if arg1.interrupted then
					__FUNC_27D50_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27D50_)
			end

			if arg1.interrupted then
				__FUNC_27BF8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 589.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27BF8_)
		end

		registerVal12:completeAnimation()
		registerVal12.Clip:completeAnimation()
		registerVal12.Knife:completeAnimation()
		registerVal12.TotalAmmo:completeAnimation()
		registerVal12.ClipMeter:completeAnimation()
		registerVal12.AmmoColorBar:completeAnimation()
		registerVal12.ClipHero:completeAnimation()
		registerVal2.Clip:setLeftRight(true, false, 285.680000, 420.680000)
		registerVal2.Clip:setTopBottom(true, false, 41.500000, 98.500000)
		registerVal2.Clip.Clip:setAlpha(0.000000)
		registerVal2.Clip.Knife:setAlpha(0.000000)
		registerVal2.Clip.TotalAmmo:setAlpha(0.000000)
		registerVal2.Clip.ClipMeter:setAlpha(0.000000)
		registerVal2.Clip.AmmoColorBar:setAlpha(0.000000)
		registerVal2.Clip.ClipHero:setAlpha(0.000000)
		__FUNC_27AA2_(registerVal12, {})
		local function __FUNC_2A2C4_(arg0, arg1)
			local function __FUNC_2A41C_(arg0, arg1)
				local function __FUNC_2A597_(arg0, arg1)
					local function __FUNC_2A6EC_(arg0, arg1)
						local function __FUNC_2A867_(arg0, arg1)
							local function __FUNC_2A9BC_(arg0, arg1)
								local function __FUNC_2AB37_(arg0, arg1)
									local function __FUNC_2AC8C_(arg0, arg1)
										local function __FUNC_2AE07_(arg0, arg1)
											local function __FUNC_2AF5C_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setLeftRight(true, false, 67.000000, 383.000000)
												arg0:setTopBottom(true, false, 99.670000, 117.670000)
												arg0:setAlpha(1.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_2AF5C_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AF5C_)
										end

										if arg1.interrupted then
											__FUNC_2AE07_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.700000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AE07_)
									end

									if arg1.interrupted then
										__FUNC_2AC8C_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AC8C_)
								end

								if arg1.interrupted then
									__FUNC_2AB37_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AB37_)
							end

							if arg1.interrupted then
								__FUNC_2A9BC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A9BC_)
						end

						if arg1.interrupted then
							__FUNC_2A867_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A867_)
					end

					if arg1.interrupted then
						__FUNC_2A6EC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A6EC_)
				end

				if arg1.interrupted then
					__FUNC_2A597_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A597_)
			end

			if arg1.interrupted then
				__FUNC_2A41C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 920.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A41C_)
		end

		registerVal13:completeAnimation()
		registerVal2.FireRate:setLeftRight(true, false, 67.000000, 383.000000)
		registerVal2.FireRate:setTopBottom(true, false, 99.670000, 117.670000)
		registerVal2.FireRate:setAlpha(0.000000)
		__FUNC_2A2C4_(registerVal13, {})
		local function __FUNC_2B181_(arg0, arg1)
			local function __FUNC_2B2D8_(arg0, arg1)
				local function __FUNC_2B4D3_(arg0, arg1)
					local function __FUNC_2B7BC_(arg0, arg1)
						local function __FUNC_2BA2B_(arg0, arg1)
							local function __FUNC_2BC21_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
									arg0.AbilityRingBackDuplicate:beginAnimation("subkeyframe", 20.000000, false, false, CoD.TweenType.Linear)
									arg0.AbilityRingBackDeplete:beginAnimation("subkeyframe", 20.000000, false, false, CoD.TweenType.Linear)
									arg0.AbilityRingBack:beginAnimation("subkeyframe", 20.000000, false, false, CoD.TweenType.Linear)
									arg0.AbilityIconContainer:beginAnimation("subkeyframe", 20.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, false, 323.340000, 443.340000)
								arg0:setTopBottom(true, false, 12.000000, 132.000000)
								arg0:setAlpha(0.000000)
								arg0.AbilityRingBackDuplicate:setZoom(0.000000)
								arg0.AbilityRingBackDeplete:setZoom(0.000000)
								arg0.AbilityRingBack:setZoom(0.000000)
								arg0.AbilityIconContainer:setZoom(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_2BC21_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0.AbilityIconContainer:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0.AbilityIconContainer:setZoom(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BC21_)
						end

						if arg1.interrupted then
							__FUNC_2BA2B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0.AbilityRingBack:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0.AbilityIconContainer:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0.AbilityRingBack:setZoom(0.000000)
						arg0.AbilityIconContainer:setZoom(13.330000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BA2B_)
					end

					if arg1.interrupted then
						__FUNC_2B7BC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0.AbilityRingBackDeplete:beginAnimation("subkeyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0.AbilityRingBack:beginAnimation("subkeyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0.AbilityIconContainer:beginAnimation("subkeyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0.AbilityRingBackDeplete:setZoom(0.000000)
					arg0.AbilityRingBack:setZoom(15.000000)
					arg0.AbilityIconContainer:setZoom(26.670000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B7BC_)
				end

				if arg1.interrupted then
					__FUNC_2B4D3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0.AbilityRingBackDeplete:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0.AbilityRingBackDeplete:setZoom(20.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B4D3_)
			end

			if arg1.interrupted then
				__FUNC_2B2D8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 889.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B2D8_)
		end

		registerVal14:completeAnimation()
		registerVal14.AbilityRingBackDuplicate:completeAnimation()
		registerVal14.AbilityRingBackDeplete:completeAnimation()
		registerVal14.AbilityRingBack:completeAnimation()
		registerVal14.AbilityIconContainer:completeAnimation()
		registerVal2.AbilityContainer:setLeftRight(true, false, 323.340000, 443.340000)
		registerVal2.AbilityContainer:setTopBottom(true, false, 12.000000, 132.000000)
		registerVal2.AbilityContainer:setAlpha(0.000000)
		registerVal2.AbilityContainer.AbilityRingBackDuplicate:setZoom(0.000000)
		registerVal2.AbilityContainer.AbilityRingBackDeplete:setZoom(30.000000)
		registerVal2.AbilityContainer.AbilityRingBack:setZoom(30.000000)
		registerVal2.AbilityContainer.AbilityIconContainer:setZoom(40.000000)
		__FUNC_2B181_(registerVal14, {})
		local function __FUNC_2C044_(arg0, arg1)
			local function __FUNC_2C19C_(arg0, arg1)
				local function __FUNC_2C387_(arg0, arg1)
					local function __FUNC_2C4DC_(arg0, arg1)
						local function __FUNC_2C6C7_(arg0, arg1)
							local function __FUNC_2C81C_(arg0, arg1)
								local function __FUNC_2C974_(arg0, arg1)
									local function __FUNC_2CB5F_(arg0, arg1)
										local function __FUNC_2CCB4_(arg0, arg1)
											local function __FUNC_2CE9F_(arg0, arg1)
												local function __FUNC_2CFF4_(arg0, arg1)
													local function __FUNC_2D1DF_(arg0, arg1)
														local function __FUNC_2D334_(arg0, arg1)
															local function __FUNC_2D48C_(arg0, arg1)
																local function __FUNC_2D5E4_(arg0, arg1)
																	local function __FUNC_2D73C_(arg0, arg1)
																		local function __FUNC_2D996_(arg0, arg1)
																			local function __FUNC_2DAEC_(arg0, arg1)
																				local function __FUNC_2DC44_(arg0, arg1)
																					local function __FUNC_2DE9E_(arg0, arg1)
																						local function __FUNC_2DFF4_(arg0, arg1)
																							local function __FUNC_2E14C_(arg0, arg1)
																								local function __FUNC_2E3A6_(arg0, arg1)
																									local function __FUNC_2E4FC_(arg0, arg1)
																										local function __FUNC_2E654_(arg0, arg1)
																											local function __FUNC_2E8AE_(arg0, arg1)
																												local function __FUNC_2EA04_(arg0, arg1)
																													local function __FUNC_2EB5C_(arg0, arg1)
																														local function __FUNC_2ECB4_(arg0, arg1)
																															local function __FUNC_2EE0C_(arg0, arg1)
																																local function __FUNC_2EF64_(arg0, arg1)
																																	local function __FUNC_2F0BC_(arg0, arg1)
																																		local function __FUNC_2F316_(arg0, arg1)
																																			local function __FUNC_2F56E_(arg0, arg1)
																																				local function __FUNC_2F7C6_(arg0, arg1)
																																					local function __FUNC_2F91C_(arg0, arg1)
																																						local function __FUNC_2FA74_(arg0, arg1)
																																							local function __FUNC_2FCCE_(arg0, arg1)
																																								if not arg1.interrupted then
																																									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
																																									arg0.Knife:beginAnimation("subkeyframe", 39.000000, false, false, CoD.TweenType.Linear)
																																									arg0.TotalAmmo:beginAnimation("subkeyframe", 39.000000, false, false, CoD.TweenType.Linear)
																																									arg0.TotalAmmo.TotalAmmoLbl:beginAnimation("subkeyframe", 39.000000, false, false, CoD.TweenType.Linear)
																																								end
																																								arg0:setLeftRight(true, false, 285.680000, 420.680000)
																																								arg0:setTopBottom(true, false, 41.500000, 98.500000)
																																								arg0.Knife:setAlpha(0.800000)
																																								arg0.TotalAmmo:setRGB(1.000000, 1.000000, 1.000000)
																																								arg0.TotalAmmo:setAlpha(0.000000)
																																								arg0.TotalAmmo:setZoom(30.000000)
																																								arg0.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("000"))
																																								if arg1.interrupted then
																																									registerVal2.clipFinished(arg0, arg1)
																																								else
																																									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																																								end
																																							end

																																							if arg1.interrupted then
																																								__FUNC_2FCCE_(arg0, arg1)
																																								return 
																																							end
																																							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																																							arg0.TotalAmmo.TotalAmmoLbl:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
																																							arg0.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("250"))
																																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FCCE_)
																																						end

																																						if arg1.interrupted then
																																							__FUNC_2FA74_(arg0, arg1)
																																							return 
																																						end
																																						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FA74_)
																																					end

																																					if arg1.interrupted then
																																						__FUNC_2F91C_(arg0, arg1)
																																						return 
																																					end
																																					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F91C_)
																																				end

																																				if arg1.interrupted then
																																					__FUNC_2F7C6_(arg0, arg1)
																																					return 
																																				end
																																				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																																				arg0.TotalAmmo.TotalAmmoLbl:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
																																				arg0.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("500"))
																																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F7C6_)
																																			end

																																			if arg1.interrupted then
																																				__FUNC_2F56E_(arg0, arg1)
																																				return 
																																			end
																																			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																																			arg0.TotalAmmo.TotalAmmoLbl:beginAnimation("subkeyframe", 29.000000, false, false, CoD.TweenType.Linear)
																																			arg0.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("---"))
																																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F56E_)
																																		end

																																		if arg1.interrupted then
																																			__FUNC_2F316_(arg0, arg1)
																																			return 
																																		end
																																		arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																																		arg0.TotalAmmo.TotalAmmoLbl:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
																																		arg0.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("750"))
																																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F316_)
																																	end

																																	if arg1.interrupted then
																																		__FUNC_2F0BC_(arg0, arg1)
																																		return 
																																	end
																																	arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F0BC_)
																																end

																																if arg1.interrupted then
																																	__FUNC_2EF64_(arg0, arg1)
																																	return 
																																end
																																arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
																																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EF64_)
																															end

																															if arg1.interrupted then
																																__FUNC_2EE0C_(arg0, arg1)
																																return 
																															end
																															arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
																															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EE0C_)
																														end

																														if arg1.interrupted then
																															__FUNC_2ECB4_(arg0, arg1)
																															return 
																														end
																														arg0:beginAnimation("keyframe", 179.000000, false, false, CoD.TweenType.Linear)
																														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2ECB4_)
																													end

																													if arg1.interrupted then
																														__FUNC_2EB5C_(arg0, arg1)
																														return 
																													end
																													arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EB5C_)
																												end

																												if arg1.interrupted then
																													__FUNC_2EA04_(arg0, arg1)
																													return 
																												end
																												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EA04_)
																											end

																											if arg1.interrupted then
																												__FUNC_2E8AE_(arg0, arg1)
																												return 
																											end
																											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																											arg0.TotalAmmo.TotalAmmoLbl:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																											arg0.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("999"))
																											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E8AE_)
																										end

																										if arg1.interrupted then
																											__FUNC_2E654_(arg0, arg1)
																											return 
																										end
																										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E654_)
																									end

																									if arg1.interrupted then
																										__FUNC_2E4FC_(arg0, arg1)
																										return 
																									end
																									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E4FC_)
																								end

																								if arg1.interrupted then
																									__FUNC_2E3A6_(arg0, arg1)
																									return 
																								end
																								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																								arg0.TotalAmmo.TotalAmmoLbl:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																								arg0.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("750"))
																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E3A6_)
																							end

																							if arg1.interrupted then
																								__FUNC_2E14C_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E14C_)
																						end

																						if arg1.interrupted then
																							__FUNC_2DFF4_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DFF4_)
																					end

																					if arg1.interrupted then
																						__FUNC_2DE9E_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																					arg0.TotalAmmo.TotalAmmoLbl:beginAnimation("subkeyframe", 20.000000, false, false, CoD.TweenType.Linear)
																					arg0.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("500"))
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DE9E_)
																				end

																				if arg1.interrupted then
																					__FUNC_2DC44_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DC44_)
																			end

																			if arg1.interrupted then
																				__FUNC_2DAEC_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DAEC_)
																		end

																		if arg1.interrupted then
																			__FUNC_2D996_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																		arg0.TotalAmmo.TotalAmmoLbl:beginAnimation("subkeyframe", 20.000000, false, false, CoD.TweenType.Linear)
																		arg0.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("250"))
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D996_)
																	end

																	if arg1.interrupted then
																		__FUNC_2D73C_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D73C_)
																end

																if arg1.interrupted then
																	__FUNC_2D5E4_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D5E4_)
															end

															if arg1.interrupted then
																__FUNC_2D48C_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D48C_)
														end

														if arg1.interrupted then
															__FUNC_2D334_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D334_)
													end

													if arg1.interrupted then
														__FUNC_2D1DF_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0.Knife:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0.Knife:setAlpha(0.800000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D1DF_)
												end

												if arg1.interrupted then
													__FUNC_2CFF4_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CFF4_)
											end

											if arg1.interrupted then
												__FUNC_2CE9F_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0.Knife:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0.Knife:setAlpha(0.500000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CE9F_)
										end

										if arg1.interrupted then
											__FUNC_2CCB4_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CCB4_)
									end

									if arg1.interrupted then
										__FUNC_2CB5F_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0.Knife:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0.Knife:setAlpha(0.800000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CB5F_)
								end

								if arg1.interrupted then
									__FUNC_2C974_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C974_)
							end

							if arg1.interrupted then
								__FUNC_2C81C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C81C_)
						end

						if arg1.interrupted then
							__FUNC_2C6C7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0.Knife:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0.Knife:setAlpha(0.300000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C6C7_)
					end

					if arg1.interrupted then
						__FUNC_2C4DC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C4DC_)
				end

				if arg1.interrupted then
					__FUNC_2C387_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0.Knife:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0.Knife:setAlpha(0.800000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C387_)
			end

			if arg1.interrupted then
				__FUNC_2C19C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C19C_)
		end

		registerVal15:completeAnimation()
		registerVal15.Knife:completeAnimation()
		registerVal15.TotalAmmo:completeAnimation()
		registerVal15.TotalAmmo.TotalAmmoLbl:completeAnimation()
		registerVal2.ClipDummy:setLeftRight(true, false, 285.680000, 420.680000)
		registerVal2.ClipDummy:setTopBottom(true, false, 41.500000, 98.500000)
		registerVal2.ClipDummy.Knife:setAlpha(0.000000)
		registerVal2.ClipDummy.TotalAmmo:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ClipDummy.TotalAmmo:setAlpha(0.000000)
		registerVal2.ClipDummy.TotalAmmo:setZoom(30.000000)
		registerVal2.ClipDummy.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("000"))
		__FUNC_2C044_(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.TacticalEmpty:setLeftRight(true, false, 308.420000, 334.420000)
		registerVal2.TacticalEmpty:setTopBottom(true, false, 19.670000, 45.670000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.LethalEmpty:setLeftRight(true, false, 353.090000, 379.090000)
		registerVal2.LethalEmpty:setTopBottom(true, false, 19.670000, 45.670000)
		registerVal2.clipFinished(registerVal17, {})
		local function __FUNC_3010E_(arg0, arg1)
			local function __FUNC_30264_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 180.000000, 258.000000)
				arg0:setTopBottom(true, false, 15.000000, 108.670000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_30264_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 800.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30264_)
		end

		registerVal18:completeAnimation()
		registerVal2.EnemyFlagHeld:setLeftRight(true, false, 180.000000, 258.000000)
		registerVal2.EnemyFlagHeld:setTopBottom(true, false, 15.000000, 108.670000)
		registerVal2.EnemyFlagHeld:setAlpha(0.000000)
		__FUNC_3010E_(registerVal18, {})
	end

	registerVal20.HudStartGun = __FUNC_1C395_
	local function __FUNC_30489_()
		registerVal2:setupElementClipCounter(16.000000)
		local function __FUNC_31735_(arg0, arg1)
			local function __FUNC_3188C_(arg0, arg1)
				local function __FUNC_319E4_(arg0, arg1)
					local function __FUNC_31B3C_(arg0, arg1)
						local function __FUNC_31C94_(arg0, arg1)
							local function __FUNC_31DEC_(arg0, arg1)
								local function __FUNC_31F44_(arg0, arg1)
									local function __FUNC_3209C_(arg0, arg1)
										local function __FUNC_3228B_(arg0, arg1)
											local function __FUNC_323E0_(arg0, arg1)
												local function __FUNC_325CF_(arg0, arg1)
													local function __FUNC_327BB_(arg0, arg1)
														local function __FUNC_329A7_(arg0, arg1)
															local function __FUNC_32AFC_(arg0, arg1)
																local function __FUNC_32CF0_(arg0, arg1)
																	local function __FUNC_32F58_(arg0, arg1)
																		local function __FUNC_3314C_(arg0, arg1)
																			local function __FUNC_332A4_(arg0, arg1)
																				local function __FUNC_33509_(arg0, arg1)
																					local function __FUNC_336FB_(arg0, arg1)
																						local function __FUNC_3395D_(arg0, arg1)
																							local function __FUNC_33B4D_(arg0, arg1)
																								if not arg1.interrupted then
																									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																									arg0.PanelTactical:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																									arg0.PanelLethal:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																									arg0.PanelOctagon:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																									arg0.PanelAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																									arg0.PanelFlagEnemy:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																								end
																								arg0:setLeftRight(false, true, -152.000000, 98.000000)
																								arg0:setTopBottom(false, false, -47.000000, 58.670000)
																								arg0.PanelTactical:setAlpha(1.000000)
																								arg0.PanelLethal:setAlpha(1.000000)
																								arg0.PanelOctagon:setAlpha(0.000000)
																								arg0.PanelAmmo:setAlpha(1.000000)
																								arg0.PanelFlagEnemy:setAlpha(1.000000)
																								if arg1.interrupted then
																									registerVal2.clipFinished(arg0, arg1)
																								else
																									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																								end
																							end

																							if arg1.interrupted then
																								__FUNC_33B4D_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																							arg0.PanelLethal:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
																							arg0.PanelLethal:setAlpha(0.200000)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33B4D_)
																						end

																						if arg1.interrupted then
																							__FUNC_3395D_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																						arg0.PanelTactical:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																						arg0.PanelLethal:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																						arg0.PanelTactical:setAlpha(1.000000)
																						arg0.PanelLethal:setAlpha(0.500000)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3395D_)
																					end

																					if arg1.interrupted then
																						__FUNC_336FB_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																					arg0.PanelTactical:beginAnimation("subkeyframe", 20.000000, false, false, CoD.TweenType.Linear)
																					arg0.PanelTactical:setAlpha(0.200000)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_336FB_)
																				end

																				if arg1.interrupted then
																					__FUNC_33509_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																				arg0.PanelTactical:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																				arg0.PanelLethal:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																				arg0.PanelTactical:setAlpha(0.500000)
																				arg0.PanelLethal:setAlpha(1.000000)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33509_)
																			end

																			if arg1.interrupted then
																				__FUNC_332A4_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_332A4_)
																		end

																		if arg1.interrupted then
																			__FUNC_3314C_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																		arg0.PanelFlagEnemy:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																		arg0.PanelFlagEnemy:setAlpha(1.000000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3314C_)
																	end

																	if arg1.interrupted then
																		__FUNC_32F58_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																	arg0.PanelTactical:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																	arg0.PanelFlagEnemy:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																	arg0.PanelTactical:setAlpha(1.000000)
																	arg0.PanelFlagEnemy:setAlpha(0.830000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32F58_)
																end

																if arg1.interrupted then
																	__FUNC_32CF0_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
																arg0.PanelFlagEnemy:beginAnimation("subkeyframe", 40.000000, false, false, CoD.TweenType.Linear)
																arg0.PanelFlagEnemy:setAlpha(0.670000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32CF0_)
															end

															if arg1.interrupted then
																__FUNC_32AFC_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32AFC_)
														end

														if arg1.interrupted then
															__FUNC_329A7_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
														arg0.PanelAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
														arg0.PanelAmmo:setAlpha(1.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_329A7_)
													end

													if arg1.interrupted then
														__FUNC_327BB_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
													arg0.PanelAmmo:beginAnimation("subkeyframe", 20.000000, false, false, CoD.TweenType.Linear)
													arg0.PanelAmmo:setAlpha(0.200000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_327BB_)
												end

												if arg1.interrupted then
													__FUNC_325CF_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
												arg0.PanelAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
												arg0.PanelAmmo:setAlpha(0.500000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_325CF_)
											end

											if arg1.interrupted then
												__FUNC_323E0_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_323E0_)
										end

										if arg1.interrupted then
											__FUNC_3228B_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0.PanelAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0.PanelAmmo:setAlpha(1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3228B_)
									end

									if arg1.interrupted then
										__FUNC_3209C_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3209C_)
								end

								if arg1.interrupted then
									__FUNC_31F44_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31F44_)
							end

							if arg1.interrupted then
								__FUNC_31DEC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31DEC_)
						end

						if arg1.interrupted then
							__FUNC_31C94_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31C94_)
					end

					if arg1.interrupted then
						__FUNC_31B3C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31B3C_)
				end

				if arg1.interrupted then
					__FUNC_319E4_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_319E4_)
			end

			if arg1.interrupted then
				__FUNC_3188C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 680.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3188C_)
		end

		registerVal3:completeAnimation()
		registerVal3.PanelTactical:completeAnimation()
		registerVal3.PanelLethal:completeAnimation()
		registerVal3.PanelOctagon:completeAnimation()
		registerVal3.PanelAmmo:completeAnimation()
		registerVal3.PanelFlagEnemy:completeAnimation()
		registerVal2.PanelContainer:setLeftRight(false, true, -152.000000, 98.000000)
		registerVal2.PanelContainer:setTopBottom(false, false, -47.000000, 58.670000)
		registerVal2.PanelContainer.PanelTactical:setAlpha(0.000000)
		registerVal2.PanelContainer.PanelLethal:setAlpha(0.000000)
		registerVal2.PanelContainer.PanelOctagon:setAlpha(0.000000)
		registerVal2.PanelContainer.PanelAmmo:setAlpha(0.000000)
		registerVal2.PanelContainer.PanelFlagEnemy:setAlpha(0.000000)
		__FUNC_31735_(registerVal3, {})
		local function __FUNC_33FA4_(arg0, arg1)
			local function __FUNC_340FC_(arg0, arg1)
				local function __FUNC_34299_(arg0, arg1)
					local function __FUNC_34412_(arg0, arg1)
						local function __FUNC_345AD_(arg0, arg1)
							local function __FUNC_34726_(arg0, arg1)
								local function __FUNC_3487C_(arg0, arg1)
									local function __FUNC_349F7_(arg0, arg1)
										local function __FUNC_34B4C_(arg0, arg1)
											local function __FUNC_34CC7_(arg0, arg1)
												local function __FUNC_34E1C_(arg0, arg1)
													if not arg1.interrupted then
														arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
													end
													arg0:setLeftRight(true, false, 387.730000, 494.730000)
													arg0:setTopBottom(true, false, 20.000000, 124.000000)
													arg0:setAlpha(0.350000)
													arg0:setZoom(-8.000000)
													if arg1.interrupted then
														registerVal2.clipFinished(arg0, arg1)
													else
														arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
													end
												end

												if arg1.interrupted then
													__FUNC_34E1C_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34E1C_)
											end

											if arg1.interrupted then
												__FUNC_34CC7_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.150000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34CC7_)
										end

										if arg1.interrupted then
											__FUNC_34B4C_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34B4C_)
									end

									if arg1.interrupted then
										__FUNC_349F7_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.350000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_349F7_)
								end

								if arg1.interrupted then
									__FUNC_3487C_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3487C_)
							end

							if arg1.interrupted then
								__FUNC_34726_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setZoom(-8.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34726_)
						end

						if arg1.interrupted then
							__FUNC_345AD_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:setZoom(-0.400000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_345AD_)
					end

					if arg1.interrupted then
						__FUNC_34412_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:setZoom(7.200000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34412_)
				end

				if arg1.interrupted then
					__FUNC_34299_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.350000)
				arg0:setZoom(22.400000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34299_)
			end

			if arg1.interrupted then
				__FUNC_340FC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_340FC_)
		end

		registerVal4:completeAnimation()
		registerVal2.BackCircleOutter:setLeftRight(true, false, 387.730000, 494.730000)
		registerVal2.BackCircleOutter:setTopBottom(true, false, 20.000000, 124.000000)
		registerVal2.BackCircleOutter:setAlpha(0.000000)
		registerVal2.BackCircleOutter:setZoom(30.000000)
		__FUNC_33FA4_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BackCircle:setLeftRight(true, false, 335.840000, 430.840000)
		registerVal2.BackCircle:setTopBottom(true, false, 12.660000, 118.660000)
		registerVal2.BackCircle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_35063_(arg0, arg1)
			local function __FUNC_351B8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 297.340000, 345.490000)
				arg0:setTopBottom(true, false, 8.590000, 56.740000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_351B8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_351B8_)
		end

		registerVal6:completeAnimation()
		registerVal2.GlowTactical:setLeftRight(true, false, 297.340000, 345.490000)
		registerVal2.GlowTactical:setTopBottom(true, false, 8.590000, 56.740000)
		registerVal2.GlowTactical:setAlpha(0.000000)
		__FUNC_35063_(registerVal6, {})
		local function __FUNC_353DD_(arg0, arg1)
			local function __FUNC_35534_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 340.340000, 388.490000)
				arg0:setTopBottom(true, false, 8.590000, 56.740000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_35534_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35534_)
		end

		registerVal7:completeAnimation()
		registerVal2.GlowLethal:setLeftRight(true, false, 340.340000, 388.490000)
		registerVal2.GlowLethal:setTopBottom(true, false, 8.590000, 56.740000)
		registerVal2.GlowLethal:setAlpha(0.000000)
		__FUNC_353DD_(registerVal7, {})
		local function __FUNC_35759_(arg0, arg1)
			local function __FUNC_358B0_(arg0, arg1)
				local function __FUNC_35A4D_(arg0, arg1)
					local function __FUNC_35BC6_(arg0, arg1)
						local function __FUNC_35D61_(arg0, arg1)
							local function __FUNC_35EDA_(arg0, arg1)
								local function __FUNC_36030_(arg0, arg1)
									local function __FUNC_361AB_(arg0, arg1)
										local function __FUNC_36300_(arg0, arg1)
											local function __FUNC_3647B_(arg0, arg1)
												local function __FUNC_365D0_(arg0, arg1)
													local function __FUNC_3674B_(arg0, arg1)
														if not arg1.interrupted then
															arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
														end
														arg0:setLeftRight(true, false, 300.750000, 342.420000)
														arg0:setTopBottom(true, false, 15.000000, 50.330000)
														arg0:setAlpha(0.500000)
														arg0:setZoom(1.000000)
														if arg1.interrupted then
															registerVal2.clipFinished(arg0, arg1)
														else
															arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
														end
													end

													if arg1.interrupted then
														__FUNC_3674B_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.600000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3674B_)
												end

												if arg1.interrupted then
													__FUNC_365D0_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_365D0_)
											end

											if arg1.interrupted then
												__FUNC_3647B_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.100000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3647B_)
										end

										if arg1.interrupted then
											__FUNC_36300_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36300_)
									end

									if arg1.interrupted then
										__FUNC_361AB_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.400000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_361AB_)
								end

								if arg1.interrupted then
									__FUNC_36030_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36030_)
							end

							if arg1.interrupted then
								__FUNC_35EDA_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setZoom(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35EDA_)
						end

						if arg1.interrupted then
							__FUNC_35D61_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:setZoom(6.800000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35D61_)
					end

					if arg1.interrupted then
						__FUNC_35BC6_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:setZoom(12.600000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35BC6_)
				end

				if arg1.interrupted then
					__FUNC_35A4D_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.400000)
				arg0:setZoom(24.200000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35A4D_)
			end

			if arg1.interrupted then
				__FUNC_358B0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_358B0_)
		end

		registerVal8:completeAnimation()
		registerVal2.InventoryBox1:setLeftRight(true, false, 300.750000, 342.420000)
		registerVal2.InventoryBox1:setTopBottom(true, false, 15.000000, 50.330000)
		registerVal2.InventoryBox1:setAlpha(0.000000)
		registerVal2.InventoryBox1:setZoom(30.000000)
		__FUNC_35759_(registerVal8, {})
		local function __FUNC_3698F_(arg0, arg1)
			local function __FUNC_36AE4_(arg0, arg1)
				local function __FUNC_36C81_(arg0, arg1)
					local function __FUNC_36DFA_(arg0, arg1)
						local function __FUNC_36F95_(arg0, arg1)
							local function __FUNC_3710E_(arg0, arg1)
								local function __FUNC_37264_(arg0, arg1)
									local function __FUNC_373DF_(arg0, arg1)
										local function __FUNC_37534_(arg0, arg1)
											local function __FUNC_376AF_(arg0, arg1)
												local function __FUNC_37804_(arg0, arg1)
													local function __FUNC_3797F_(arg0, arg1)
														if not arg1.interrupted then
															arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
														end
														arg0:setLeftRight(true, false, 344.750000, 387.420000)
														arg0:setTopBottom(true, false, 15.000000, 50.330000)
														arg0:setAlpha(0.500000)
														arg0:setZoom(1.000000)
														if arg1.interrupted then
															registerVal2.clipFinished(arg0, arg1)
														else
															arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
														end
													end

													if arg1.interrupted then
														__FUNC_3797F_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.600000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3797F_)
												end

												if arg1.interrupted then
													__FUNC_37804_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37804_)
											end

											if arg1.interrupted then
												__FUNC_376AF_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.100000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_376AF_)
										end

										if arg1.interrupted then
											__FUNC_37534_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37534_)
									end

									if arg1.interrupted then
										__FUNC_373DF_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.400000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_373DF_)
								end

								if arg1.interrupted then
									__FUNC_37264_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37264_)
							end

							if arg1.interrupted then
								__FUNC_3710E_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setZoom(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3710E_)
						end

						if arg1.interrupted then
							__FUNC_36F95_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:setZoom(6.800000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36F95_)
					end

					if arg1.interrupted then
						__FUNC_36DFA_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:setZoom(12.600000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36DFA_)
				end

				if arg1.interrupted then
					__FUNC_36C81_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.400000)
				arg0:setZoom(24.200000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36C81_)
			end

			if arg1.interrupted then
				__FUNC_36AE4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 379.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36AE4_)
		end

		registerVal9:completeAnimation()
		registerVal2.InventoryBox2:setLeftRight(true, false, 344.750000, 387.420000)
		registerVal2.InventoryBox2:setTopBottom(true, false, 15.000000, 50.330000)
		registerVal2.InventoryBox2:setAlpha(0.000000)
		registerVal2.InventoryBox2:setZoom(30.000000)
		__FUNC_3698F_(registerVal9, {})
		local function __FUNC_37BC3_(arg0, arg1)
			local function __FUNC_37D18_(arg0, arg1)
				local function __FUNC_37E93_(arg0, arg1)
					local function __FUNC_37FE8_(arg0, arg1)
						local function __FUNC_38163_(arg0, arg1)
							local function __FUNC_382B8_(arg0, arg1)
								local function __FUNC_38433_(arg0, arg1)
									local function __FUNC_38588_(arg0, arg1)
										local function __FUNC_38703_(arg0, arg1)
											local function __FUNC_38858_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setLeftRight(true, false, 302.000000, 392.000000)
												arg0:setTopBottom(true, false, 13.000000, 55.000000)
												arg0:setAlpha(1.000000)
												arg0:setZoom(0.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_38858_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38858_)
										end

										if arg1.interrupted then
											__FUNC_38703_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.700000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38703_)
									end

									if arg1.interrupted then
										__FUNC_38588_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38588_)
								end

								if arg1.interrupted then
									__FUNC_38433_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38433_)
							end

							if arg1.interrupted then
								__FUNC_382B8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_382B8_)
						end

						if arg1.interrupted then
							__FUNC_38163_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38163_)
					end

					if arg1.interrupted then
						__FUNC_37FE8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37FE8_)
				end

				if arg1.interrupted then
					__FUNC_37E93_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37E93_)
			end

			if arg1.interrupted then
				__FUNC_37D18_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37D18_)
		end

		registerVal10:completeAnimation()
		registerVal2.EquipmentInfo:setLeftRight(true, false, 302.000000, 392.000000)
		registerVal2.EquipmentInfo:setTopBottom(true, false, 13.000000, 55.000000)
		registerVal2.EquipmentInfo:setAlpha(0.000000)
		registerVal2.EquipmentInfo:setZoom(0.000000)
		__FUNC_37BC3_(registerVal10, {})
		local function __FUNC_38A9F_(arg0, arg1)
			local function __FUNC_38BF4_(arg0, arg1)
				local function __FUNC_38E15_(arg0, arg1)
					local function __FUNC_39006_(arg0, arg1)
						local function __FUNC_39225_(arg0, arg1)
							local function __FUNC_39416_(arg0, arg1)
								local function __FUNC_39635_(arg0, arg1)
									local function __FUNC_39854_(arg0, arg1)
										local function __FUNC_39A45_(arg0, arg1)
											local function __FUNC_39CD8_(arg0, arg1)
												local function __FUNC_39EC9_(arg0, arg1)
													local function __FUNC_3A15C_(arg0, arg1)
														local function __FUNC_3A2B4_(arg0, arg1)
															local function __FUNC_3A4A6_(arg0, arg1)
																local function __FUNC_3A5FC_(arg0, arg1)
																	local function __FUNC_3A7EE_(arg0, arg1)
																		local function __FUNC_3A944_(arg0, arg1)
																			local function __FUNC_3AB33_(arg0, arg1)
																				local function __FUNC_3AC88_(arg0, arg1)
																					local function __FUNC_3AE77_(arg0, arg1)
																						local function __FUNC_3AFCC_(arg0, arg1)
																							local function __FUNC_3B1BB_(arg0, arg1)
																								local function __FUNC_3B310_(arg0, arg1)
																									local function __FUNC_3B4FF_(arg0, arg1)
																										local function __FUNC_3B654_(arg0, arg1)
																											if not arg1.interrupted then
																												arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																												arg0.BackLine1:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
																												arg0.ImgSemiCircle:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
																												arg0.ImgSeperator:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
																											end
																											arg0:setLeftRight(true, false, 270.180000, 430.180000)
																											arg0:setTopBottom(true, false, 43.500000, 100.500000)
																											arg0.BackLine1:setAlpha(1.000000)
																											arg0.ImgSemiCircle:setAlpha(0.600000)
																											arg0.ImgSemiCircle:setZoom(1.000000)
																											arg0.ImgSeperator:setAlpha(0.800000)
																											arg0.ImgSeperator:setZoom(0.000000)
																											if arg1.interrupted then
																												registerVal2.clipFinished(arg0, arg1)
																											else
																												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																											end
																										end

																										if arg1.interrupted then
																											__FUNC_3B654_(arg0, arg1)
																											return 
																										end
																										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B654_)
																									end

																									if arg1.interrupted then
																										__FUNC_3B4FF_(arg0, arg1)
																										return 
																									end
																									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																									arg0.BackLine1:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
																									arg0.BackLine1:setAlpha(0.600000)
																									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B4FF_)
																								end

																								if arg1.interrupted then
																									__FUNC_3B310_(arg0, arg1)
																									return 
																								end
																								arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B310_)
																							end

																							if arg1.interrupted then
																								__FUNC_3B1BB_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																							arg0.BackLine1:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
																							arg0.BackLine1:setAlpha(1.000000)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B1BB_)
																						end

																						if arg1.interrupted then
																							__FUNC_3AFCC_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3AFCC_)
																					end

																					if arg1.interrupted then
																						__FUNC_3AE77_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																					arg0.BackLine1:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
																					arg0.BackLine1:setAlpha(0.300000)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3AE77_)
																				end

																				if arg1.interrupted then
																					__FUNC_3AC88_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3AC88_)
																			end

																			if arg1.interrupted then
																				__FUNC_3AB33_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																			arg0.BackLine1:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
																			arg0.BackLine1:setAlpha(1.000000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3AB33_)
																		end

																		if arg1.interrupted then
																			__FUNC_3A944_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A944_)
																	end

																	if arg1.interrupted then
																		__FUNC_3A7EE_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																	arg0.ImgSeperator:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																	arg0.ImgSeperator:setAlpha(0.800000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A7EE_)
																end

																if arg1.interrupted then
																	__FUNC_3A5FC_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A5FC_)
															end

															if arg1.interrupted then
																__FUNC_3A4A6_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
															arg0.ImgSeperator:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
															arg0.ImgSeperator:setAlpha(0.500000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A4A6_)
														end

														if arg1.interrupted then
															__FUNC_3A2B4_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A2B4_)
													end

													if arg1.interrupted then
														__FUNC_3A15C_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0.ImgSemiCircle:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0.ImgSeperator:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0.ImgSemiCircle:setAlpha(0.600000)
													arg0.ImgSeperator:setAlpha(0.800000)
													arg0.ImgSeperator:setZoom(0.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A15C_)
												end

												if arg1.interrupted then
													__FUNC_39EC9_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
												arg0.ImgSeperator:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
												arg0.ImgSeperator:setZoom(2.140000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39EC9_)
											end

											if arg1.interrupted then
												__FUNC_39CD8_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0.ImgSemiCircle:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0.ImgSeperator:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0.ImgSemiCircle:setAlpha(0.400000)
											arg0.ImgSeperator:setAlpha(0.200000)
											arg0.ImgSeperator:setZoom(6.430000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39CD8_)
										end

										if arg1.interrupted then
											__FUNC_39A45_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0.ImgSeperator:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0.ImgSeperator:setZoom(8.570000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39A45_)
									end

									if arg1.interrupted then
										__FUNC_39854_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
									arg0.ImgSeperator:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
									arg0.ImgSeperator:setAlpha(0.800000)
									arg0.ImgSeperator:setZoom(12.860000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39854_)
								end

								if arg1.interrupted then
									__FUNC_39635_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0.ImgSemiCircle:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0.ImgSemiCircle:setAlpha(0.600000)
								arg0.ImgSemiCircle:setZoom(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39635_)
							end

							if arg1.interrupted then
								__FUNC_39416_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0.ImgSemiCircle:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0.ImgSemiCircle:setZoom(5.140000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39416_)
						end

						if arg1.interrupted then
							__FUNC_39225_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0.ImgSemiCircle:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0.ImgSemiCircle:setAlpha(0.100000)
						arg0.ImgSemiCircle:setZoom(13.430000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39225_)
					end

					if arg1.interrupted then
						__FUNC_39006_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0.ImgSemiCircle:beginAnimation("subkeyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0.ImgSemiCircle:setZoom(17.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39006_)
				end

				if arg1.interrupted then
					__FUNC_38E15_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0.ImgSemiCircle:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0.ImgSemiCircle:setAlpha(0.600000)
				arg0.ImgSemiCircle:setZoom(25.860000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38E15_)
			end

			if arg1.interrupted then
				__FUNC_38BF4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38BF4_)
		end

		registerVal11:completeAnimation()
		registerVal11.BackLine1:completeAnimation()
		registerVal11.ImgSemiCircle:completeAnimation()
		registerVal11.ImgSeperator:completeAnimation()
		registerVal2.ClipElements:setLeftRight(true, false, 270.180000, 430.180000)
		registerVal2.ClipElements:setTopBottom(true, false, 43.500000, 100.500000)
		registerVal2.ClipElements.BackLine1:setAlpha(0.000000)
		registerVal2.ClipElements.ImgSemiCircle:setAlpha(0.000000)
		registerVal2.ClipElements.ImgSemiCircle:setZoom(30.000000)
		registerVal2.ClipElements.ImgSeperator:setAlpha(0.000000)
		registerVal2.ClipElements.ImgSeperator:setZoom(15.000000)
		__FUNC_38A9F_(registerVal11, {})
		local function __FUNC_3BA1A_(arg0, arg1)
			local function __FUNC_3BB70_(arg0, arg1)
				local function __FUNC_3BCC8_(arg0, arg1)
					local function __FUNC_3BEB7_(arg0, arg1)
						local function __FUNC_3C00C_(arg0, arg1)
							local function __FUNC_3C1FB_(arg0, arg1)
								local function __FUNC_3C350_(arg0, arg1)
									local function __FUNC_3C53F_(arg0, arg1)
										local function __FUNC_3C694_(arg0, arg1)
											local function __FUNC_3C883_(arg0, arg1)
												local function __FUNC_3C9D8_(arg0, arg1)
													local function __FUNC_3CBC7_(arg0, arg1)
														local function __FUNC_3CD1C_(arg0, arg1)
															local function __FUNC_3CF0E_(arg0, arg1)
																local function __FUNC_3D064_(arg0, arg1)
																	local function __FUNC_3D256_(arg0, arg1)
																		local function __FUNC_3D3AC_(arg0, arg1)
																			local function __FUNC_3D59E_(arg0, arg1)
																				local function __FUNC_3D6F4_(arg0, arg1)
																					local function __FUNC_3D8E6_(arg0, arg1)
																						local function __FUNC_3DA3C_(arg0, arg1)
																							local function __FUNC_3DC2E_(arg0, arg1)
																								local function __FUNC_3DD84_(arg0, arg1)
																									if not arg1.interrupted then
																										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																										arg0.Clip:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																										arg0.Knife:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																										arg0.TotalAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																										arg0.ClipMeter:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																										arg0.AmmoColorBar:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																										arg0.ClipHero:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																									end
																									arg0:setLeftRight(true, false, 256.680000, 391.680000)
																									arg0:setTopBottom(true, false, 41.500000, 98.500000)
																									arg0.Clip:setAlpha(0.700000)
																									arg0.Knife:setAlpha(0.800000)
																									arg0.TotalAmmo:setAlpha(0.000000)
																									arg0.ClipMeter:setAlpha(1.000000)
																									arg0.AmmoColorBar:setAlpha(1.000000)
																									arg0.ClipHero:setAlpha(0.000000)
																									if arg1.interrupted then
																										registerVal2.clipFinished(arg0, arg1)
																									else
																										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																									end
																								end

																								if arg1.interrupted then
																									__FUNC_3DD84_(arg0, arg1)
																									return 
																								end
																								arg0:beginAnimation("keyframe", 510.000000, false, false, CoD.TweenType.Linear)
																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3DD84_)
																							end

																							if arg1.interrupted then
																								__FUNC_3DC2E_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																							arg0.AmmoColorBar:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																							arg0.AmmoColorBar:setAlpha(1.000000)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3DC2E_)
																						end

																						if arg1.interrupted then
																							__FUNC_3DA3C_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3DA3C_)
																					end

																					if arg1.interrupted then
																						__FUNC_3D8E6_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																					arg0.AmmoColorBar:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																					arg0.AmmoColorBar:setAlpha(0.600000)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D8E6_)
																				end

																				if arg1.interrupted then
																					__FUNC_3D6F4_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D6F4_)
																			end

																			if arg1.interrupted then
																				__FUNC_3D59E_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																			arg0.AmmoColorBar:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																			arg0.AmmoColorBar:setAlpha(1.000000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D59E_)
																		end

																		if arg1.interrupted then
																			__FUNC_3D3AC_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D3AC_)
																	end

																	if arg1.interrupted then
																		__FUNC_3D256_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																	arg0.AmmoColorBar:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																	arg0.AmmoColorBar:setAlpha(0.300000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D256_)
																end

																if arg1.interrupted then
																	__FUNC_3D064_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D064_)
															end

															if arg1.interrupted then
																__FUNC_3CF0E_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
															arg0.AmmoColorBar:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
															arg0.AmmoColorBar:setAlpha(1.000000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3CF0E_)
														end

														if arg1.interrupted then
															__FUNC_3CD1C_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3CD1C_)
													end

													if arg1.interrupted then
														__FUNC_3CBC7_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0.ClipMeter:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0.ClipMeter:setAlpha(1.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3CBC7_)
												end

												if arg1.interrupted then
													__FUNC_3C9D8_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C9D8_)
											end

											if arg1.interrupted then
												__FUNC_3C883_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0.ClipMeter:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0.ClipMeter:setAlpha(0.600000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C883_)
										end

										if arg1.interrupted then
											__FUNC_3C694_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C694_)
									end

									if arg1.interrupted then
										__FUNC_3C53F_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0.ClipMeter:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0.ClipMeter:setAlpha(1.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C53F_)
								end

								if arg1.interrupted then
									__FUNC_3C350_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C350_)
							end

							if arg1.interrupted then
								__FUNC_3C1FB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0.ClipMeter:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0.ClipMeter:setAlpha(0.300000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C1FB_)
						end

						if arg1.interrupted then
							__FUNC_3C00C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C00C_)
					end

					if arg1.interrupted then
						__FUNC_3BEB7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0.ClipMeter:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0.ClipMeter:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3BEB7_)
				end

				if arg1.interrupted then
					__FUNC_3BCC8_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3BCC8_)
			end

			if arg1.interrupted then
				__FUNC_3BB70_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 589.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3BB70_)
		end

		registerVal12:completeAnimation()
		registerVal12.Clip:completeAnimation()
		registerVal12.Knife:completeAnimation()
		registerVal12.TotalAmmo:completeAnimation()
		registerVal12.ClipMeter:completeAnimation()
		registerVal12.AmmoColorBar:completeAnimation()
		registerVal12.ClipHero:completeAnimation()
		registerVal2.Clip:setLeftRight(true, false, 256.680000, 391.680000)
		registerVal2.Clip:setTopBottom(true, false, 41.500000, 98.500000)
		registerVal2.Clip.Clip:setAlpha(0.000000)
		registerVal2.Clip.Knife:setAlpha(0.000000)
		registerVal2.Clip.TotalAmmo:setAlpha(0.000000)
		registerVal2.Clip.ClipMeter:setAlpha(0.000000)
		registerVal2.Clip.AmmoColorBar:setAlpha(0.000000)
		registerVal2.Clip.ClipHero:setAlpha(0.000000)
		__FUNC_3BA1A_(registerVal12, {})
		local function __FUNC_3E23C_(arg0, arg1)
			local function __FUNC_3E394_(arg0, arg1)
				local function __FUNC_3E50F_(arg0, arg1)
					local function __FUNC_3E664_(arg0, arg1)
						local function __FUNC_3E7DF_(arg0, arg1)
							local function __FUNC_3E934_(arg0, arg1)
								local function __FUNC_3EAAF_(arg0, arg1)
									local function __FUNC_3EC04_(arg0, arg1)
										local function __FUNC_3ED7F_(arg0, arg1)
											local function __FUNC_3EED4_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setLeftRight(true, false, 67.000000, 383.000000)
												arg0:setTopBottom(true, false, 99.670000, 117.670000)
												arg0:setAlpha(1.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_3EED4_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3EED4_)
										end

										if arg1.interrupted then
											__FUNC_3ED7F_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.700000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3ED7F_)
									end

									if arg1.interrupted then
										__FUNC_3EC04_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3EC04_)
								end

								if arg1.interrupted then
									__FUNC_3EAAF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3EAAF_)
							end

							if arg1.interrupted then
								__FUNC_3E934_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E934_)
						end

						if arg1.interrupted then
							__FUNC_3E7DF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E7DF_)
					end

					if arg1.interrupted then
						__FUNC_3E664_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E664_)
				end

				if arg1.interrupted then
					__FUNC_3E50F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E50F_)
			end

			if arg1.interrupted then
				__FUNC_3E394_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 920.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E394_)
		end

		registerVal13:completeAnimation()
		registerVal2.FireRate:setLeftRight(true, false, 67.000000, 383.000000)
		registerVal2.FireRate:setTopBottom(true, false, 99.670000, 117.670000)
		registerVal2.FireRate:setAlpha(0.000000)
		__FUNC_3E23C_(registerVal13, {})
		local function __FUNC_3F0F9_(arg0, arg1)
			local function __FUNC_3F250_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 323.340000, 443.340000)
				arg0:setTopBottom(true, false, 12.000000, 132.000000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3F250_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F250_)
		end

		registerVal14:completeAnimation()
		registerVal2.AbilityContainer:setLeftRight(true, false, 323.340000, 443.340000)
		registerVal2.AbilityContainer:setTopBottom(true, false, 12.000000, 132.000000)
		registerVal2.AbilityContainer:setAlpha(0.000000)
		__FUNC_3F0F9_(registerVal14, {})
		local function __FUNC_3F475_(arg0, arg1)
			local function __FUNC_3F5CC_(arg0, arg1)
				local function __FUNC_3F7B7_(arg0, arg1)
					local function __FUNC_3F90C_(arg0, arg1)
						local function __FUNC_3FAF7_(arg0, arg1)
							local function __FUNC_3FC4C_(arg0, arg1)
								local function __FUNC_3FDA4_(arg0, arg1)
									local function __FUNC_3FF8F_(arg0, arg1)
										local function __FUNC_400E4_(arg0, arg1)
											local function __FUNC_402CF_(arg0, arg1)
												local function __FUNC_40424_(arg0, arg1)
													local function __FUNC_406AD_(arg0, arg1)
														local function __FUNC_4089A_(arg0, arg1)
															local function __FUNC_40AB5_(arg0, arg1)
																local function __FUNC_40CA2_(arg0, arg1)
																	local function __FUNC_40DF8_(arg0, arg1)
																		local function __FUNC_40FE7_(arg0, arg1)
																			local function __FUNC_4113C_(arg0, arg1)
																				local function __FUNC_4132B_(arg0, arg1)
																					local function __FUNC_41480_(arg0, arg1)
																						local function __FUNC_4166F_(arg0, arg1)
																							local function __FUNC_417C4_(arg0, arg1)
																								local function __FUNC_41A1E_(arg0, arg1)
																									local function __FUNC_41B74_(arg0, arg1)
																										local function __FUNC_41CCC_(arg0, arg1)
																											local function __FUNC_41F26_(arg0, arg1)
																												local function __FUNC_4207C_(arg0, arg1)
																													local function __FUNC_421D4_(arg0, arg1)
																														local function __FUNC_4242E_(arg0, arg1)
																															local function __FUNC_42584_(arg0, arg1)
																																local function __FUNC_426DC_(arg0, arg1)
																																	local function __FUNC_429B5_(arg0, arg1)
																																		local function __FUNC_42B0C_(arg0, arg1)
																																			local function __FUNC_42C64_(arg0, arg1)
																																				local function __FUNC_42E53_(arg0, arg1)
																																					local function __FUNC_42FA8_(arg0, arg1)
																																						local function __FUNC_43197_(arg0, arg1)
																																							local function __FUNC_432EC_(arg0, arg1)
																																								local function __FUNC_434DB_(arg0, arg1)
																																									local function __FUNC_43630_(arg0, arg1)
																																										local function __FUNC_43854_(arg0, arg1)
																																											local function __FUNC_439AC_(arg0, arg1)
																																												local function __FUNC_43B04_(arg0, arg1)
																																													local function __FUNC_43C5C_(arg0, arg1)
																																														local function __FUNC_43DB4_(arg0, arg1)
																																															local function __FUNC_4400E_(arg0, arg1)
																																																local function __FUNC_44266_(arg0, arg1)
																																																	local function __FUNC_444BE_(arg0, arg1)
																																																		local function __FUNC_44614_(arg0, arg1)
																																																			local function __FUNC_4476C_(arg0, arg1)
																																																				local function __FUNC_449C6_(arg0, arg1)
																																																					local function __FUNC_44B1C_(arg0, arg1)
																																																						if not arg1.interrupted then
																																																							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																																							arg0.Knife:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																																							arg0.TotalAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																																							arg0.TotalAmmo.TotalAmmoLbl:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																																						end
																																																						arg0:setLeftRight(true, false, 256.680000, 391.680000)
																																																						arg0:setTopBottom(true, false, 41.500000, 98.500000)
																																																						arg0.Knife:setAlpha(0.800000)
																																																						arg0.TotalAmmo:setRGB(1.000000, 1.000000, 1.000000)
																																																						arg0.TotalAmmo:setAlpha(0.000000)
																																																						arg0.TotalAmmo:setZoom(0.000000)
																																																						arg0.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("000"))
																																																						if arg1.interrupted then
																																																							registerVal2.clipFinished(arg0, arg1)
																																																						else
																																																							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																																																						end
																																																					end

																																																					if arg1.interrupted then
																																																						__FUNC_44B1C_(arg0, arg1)
																																																						return 
																																																					end
																																																					arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																																																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_44B1C_)
																																																				end

																																																				if arg1.interrupted then
																																																					__FUNC_449C6_(arg0, arg1)
																																																					return 
																																																				end
																																																				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																																																				arg0.TotalAmmo.TotalAmmoLbl:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
																																																				arg0.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("250"))
																																																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_449C6_)
																																																			end

																																																			if arg1.interrupted then
																																																				__FUNC_4476C_(arg0, arg1)
																																																				return 
																																																			end
																																																			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4476C_)
																																																		end

																																																		if arg1.interrupted then
																																																			__FUNC_44614_(arg0, arg1)
																																																			return 
																																																		end
																																																		arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																																																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_44614_)
																																																	end

																																																	if arg1.interrupted then
																																																		__FUNC_444BE_(arg0, arg1)
																																																		return 
																																																	end
																																																	arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																																																	arg0.TotalAmmo.TotalAmmoLbl:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
																																																	arg0.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("500"))
																																																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_444BE_)
																																																end

																																																if arg1.interrupted then
																																																	__FUNC_44266_(arg0, arg1)
																																																	return 
																																																end
																																																arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																																																arg0.TotalAmmo.TotalAmmoLbl:beginAnimation("subkeyframe", 29.000000, false, false, CoD.TweenType.Linear)
																																																arg0.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("---"))
																																																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_44266_)
																																															end

																																															if arg1.interrupted then
																																																__FUNC_4400E_(arg0, arg1)
																																																return 
																																															end
																																															arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																																															arg0.TotalAmmo.TotalAmmoLbl:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
																																															arg0.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("750"))
																																															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4400E_)
																																														end

																																														if arg1.interrupted then
																																															__FUNC_43DB4_(arg0, arg1)
																																															return 
																																														end
																																														arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																																														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_43DB4_)
																																													end

																																													if arg1.interrupted then
																																														__FUNC_43C5C_(arg0, arg1)
																																														return 
																																													end
																																													arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
																																													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_43C5C_)
																																												end

																																												if arg1.interrupted then
																																													__FUNC_43B04_(arg0, arg1)
																																													return 
																																												end
																																												arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
																																												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_43B04_)
																																											end

																																											if arg1.interrupted then
																																												__FUNC_439AC_(arg0, arg1)
																																												return 
																																											end
																																											arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
																																											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_439AC_)
																																										end

																																										if arg1.interrupted then
																																											__FUNC_43854_(arg0, arg1)
																																											return 
																																										end
																																										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																										arg0.TotalAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																										arg0.TotalAmmo:setRGB(1.000000, 1.000000, 1.000000)
																																										arg0.TotalAmmo:setAlpha(0.900000)
																																										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_43854_)
																																									end

																																									if arg1.interrupted then
																																										__FUNC_43630_(arg0, arg1)
																																										return 
																																									end
																																									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																																									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_43630_)
																																								end

																																								if arg1.interrupted then
																																									__FUNC_434DB_(arg0, arg1)
																																									return 
																																								end
																																								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																								arg0.TotalAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																								arg0.TotalAmmo:setAlpha(0.000000)
																																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_434DB_)
																																							end

																																							if arg1.interrupted then
																																								__FUNC_432EC_(arg0, arg1)
																																								return 
																																							end
																																							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_432EC_)
																																						end

																																						if arg1.interrupted then
																																							__FUNC_43197_(arg0, arg1)
																																							return 
																																						end
																																						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																						arg0.TotalAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																						arg0.TotalAmmo:setAlpha(0.900000)
																																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_43197_)
																																					end

																																					if arg1.interrupted then
																																						__FUNC_42FA8_(arg0, arg1)
																																						return 
																																					end
																																					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42FA8_)
																																				end

																																				if arg1.interrupted then
																																					__FUNC_42E53_(arg0, arg1)
																																					return 
																																				end
																																				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																				arg0.TotalAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																				arg0.TotalAmmo:setAlpha(0.000000)
																																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42E53_)
																																			end

																																			if arg1.interrupted then
																																				__FUNC_42C64_(arg0, arg1)
																																				return 
																																			end
																																			arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42C64_)
																																		end

																																		if arg1.interrupted then
																																			__FUNC_42B0C_(arg0, arg1)
																																			return 
																																		end
																																		arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42B0C_)
																																	end

																																	if arg1.interrupted then
																																		__FUNC_429B5_(arg0, arg1)
																																		return 
																																	end
																																	arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																	arg0.TotalAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																	arg0.TotalAmmo.TotalAmmoLbl:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																	arg0.TotalAmmo:setRGB(0.960000, 0.820000, 0.220000)
																																	arg0.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("999"))
																																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_429B5_)
																																end

																																if arg1.interrupted then
																																	__FUNC_426DC_(arg0, arg1)
																																	return 
																																end
																																arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_426DC_)
																															end

																															if arg1.interrupted then
																																__FUNC_42584_(arg0, arg1)
																																return 
																															end
																															arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42584_)
																														end

																														if arg1.interrupted then
																															__FUNC_4242E_(arg0, arg1)
																															return 
																														end
																														arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																														arg0.TotalAmmo.TotalAmmoLbl:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																														arg0.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("750"))
																														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4242E_)
																													end

																													if arg1.interrupted then
																														__FUNC_421D4_(arg0, arg1)
																														return 
																													end
																													arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_421D4_)
																												end

																												if arg1.interrupted then
																													__FUNC_4207C_(arg0, arg1)
																													return 
																												end
																												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4207C_)
																											end

																											if arg1.interrupted then
																												__FUNC_41F26_(arg0, arg1)
																												return 
																											end
																											arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																											arg0.TotalAmmo.TotalAmmoLbl:beginAnimation("subkeyframe", 20.000000, false, false, CoD.TweenType.Linear)
																											arg0.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("500"))
																											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_41F26_)
																										end

																										if arg1.interrupted then
																											__FUNC_41CCC_(arg0, arg1)
																											return 
																										end
																										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_41CCC_)
																									end

																									if arg1.interrupted then
																										__FUNC_41B74_(arg0, arg1)
																										return 
																									end
																									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_41B74_)
																								end

																								if arg1.interrupted then
																									__FUNC_41A1E_(arg0, arg1)
																									return 
																								end
																								arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																								arg0.TotalAmmo.TotalAmmoLbl:beginAnimation("subkeyframe", 20.000000, false, false, CoD.TweenType.Linear)
																								arg0.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("250"))
																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_41A1E_)
																							end

																							if arg1.interrupted then
																								__FUNC_417C4_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_417C4_)
																						end

																						if arg1.interrupted then
																							__FUNC_4166F_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																						arg0.TotalAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																						arg0.TotalAmmo:setAlpha(0.900000)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4166F_)
																					end

																					if arg1.interrupted then
																						__FUNC_41480_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_41480_)
																				end

																				if arg1.interrupted then
																					__FUNC_4132B_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																				arg0.TotalAmmo:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
																				arg0.TotalAmmo:setAlpha(0.500000)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4132B_)
																			end

																			if arg1.interrupted then
																				__FUNC_4113C_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4113C_)
																		end

																		if arg1.interrupted then
																			__FUNC_40FE7_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																		arg0.TotalAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																		arg0.TotalAmmo:setAlpha(0.900000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_40FE7_)
																	end

																	if arg1.interrupted then
																		__FUNC_40DF8_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_40DF8_)
																end

																if arg1.interrupted then
																	__FUNC_40CA2_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																arg0.TotalAmmo:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
																arg0.TotalAmmo:setZoom(0.000000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_40CA2_)
															end

															if arg1.interrupted then
																__FUNC_40AB5_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
															arg0.TotalAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
															arg0.TotalAmmo:setAlpha(0.300000)
															arg0.TotalAmmo:setZoom(6.000000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_40AB5_)
														end

														if arg1.interrupted then
															__FUNC_4089A_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
														arg0.TotalAmmo:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
														arg0.TotalAmmo:setZoom(12.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4089A_)
													end

													if arg1.interrupted then
														__FUNC_406AD_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0.Knife:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0.TotalAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0.Knife:setAlpha(0.800000)
													arg0.TotalAmmo:setAlpha(0.900000)
													arg0.TotalAmmo:setZoom(24.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_406AD_)
												end

												if arg1.interrupted then
													__FUNC_40424_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_40424_)
											end

											if arg1.interrupted then
												__FUNC_402CF_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0.Knife:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0.Knife:setAlpha(0.500000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_402CF_)
										end

										if arg1.interrupted then
											__FUNC_400E4_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_400E4_)
									end

									if arg1.interrupted then
										__FUNC_3FF8F_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0.Knife:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0.Knife:setAlpha(0.800000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3FF8F_)
								end

								if arg1.interrupted then
									__FUNC_3FDA4_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3FDA4_)
							end

							if arg1.interrupted then
								__FUNC_3FC4C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3FC4C_)
						end

						if arg1.interrupted then
							__FUNC_3FAF7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0.Knife:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0.Knife:setAlpha(0.300000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3FAF7_)
					end

					if arg1.interrupted then
						__FUNC_3F90C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F90C_)
				end

				if arg1.interrupted then
					__FUNC_3F7B7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0.Knife:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0.Knife:setAlpha(0.800000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F7B7_)
			end

			if arg1.interrupted then
				__FUNC_3F5CC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F5CC_)
		end

		registerVal15:completeAnimation()
		registerVal15.Knife:completeAnimation()
		registerVal15.TotalAmmo:completeAnimation()
		registerVal15.TotalAmmo.TotalAmmoLbl:completeAnimation()
		registerVal2.ClipDummy:setLeftRight(true, false, 256.680000, 391.680000)
		registerVal2.ClipDummy:setTopBottom(true, false, 41.500000, 98.500000)
		registerVal2.ClipDummy.Knife:setAlpha(0.000000)
		registerVal2.ClipDummy.TotalAmmo:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ClipDummy.TotalAmmo:setAlpha(0.000000)
		registerVal2.ClipDummy.TotalAmmo:setZoom(30.000000)
		registerVal2.ClipDummy.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("000"))
		__FUNC_3F475_(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.TacticalEmpty:setLeftRight(true, false, 308.420000, 334.420000)
		registerVal2.TacticalEmpty:setTopBottom(true, false, 19.670000, 45.670000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.LethalEmpty:setLeftRight(true, false, 353.090000, 379.090000)
		registerVal2.LethalEmpty:setTopBottom(true, false, 19.670000, 45.670000)
		registerVal2.clipFinished(registerVal17, {})
		local function __FUNC_44F59_(arg0, arg1)
			local function __FUNC_450B0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 180.000000, 258.000000)
				arg0:setTopBottom(true, false, 15.000000, 108.670000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_450B0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 800.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_450B0_)
		end

		registerVal18:completeAnimation()
		registerVal2.EnemyFlagHeld:setLeftRight(true, false, 180.000000, 258.000000)
		registerVal2.EnemyFlagHeld:setTopBottom(true, false, 15.000000, 108.670000)
		registerVal2.EnemyFlagHeld:setAlpha(0.000000)
		__FUNC_44F59_(registerVal18, {})
	end

	registerVal20.HudStartClassic = __FUNC_30489_
	registerVal19.DefaultState = registerVal20
	registerVal20 = {}
	local function __FUNC_452D5_()
		registerVal2:setupElementClipCounter(16.000000)
		registerVal3:completeAnimation()
		registerVal3.PanelTactical:completeAnimation()
		registerVal3.PanelLethal:completeAnimation()
		registerVal3.PanelOctagon:completeAnimation()
		registerVal3.PanelAmmo:completeAnimation()
		registerVal3.PanelFlagEnemy:completeAnimation()
		registerVal2.PanelContainer:setLeftRight(false, true, -152.000000, 98.000000)
		registerVal2.PanelContainer:setTopBottom(false, false, -47.000000, 58.670000)
		registerVal2.PanelContainer.PanelTactical:setAlpha(1.000000)
		registerVal2.PanelContainer.PanelLethal:setAlpha(1.000000)
		registerVal2.PanelContainer.PanelOctagon:setAlpha(0.000000)
		registerVal2.PanelContainer.PanelAmmo:setAlpha(1.000000)
		registerVal2.PanelContainer.PanelFlagEnemy:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BackCircleOutter:setLeftRight(true, false, 447.730000, 554.730000)
		registerVal2.BackCircleOutter:setTopBottom(true, false, 20.000000, 124.000000)
		registerVal2.BackCircleOutter:setAlpha(0.000000)
		registerVal2.BackCircleOutter:setZoom(-8.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BackCircle:setLeftRight(true, false, 335.840000, 430.840000)
		registerVal2.BackCircle:setTopBottom(true, false, 12.660000, 118.660000)
		registerVal2.BackCircle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.GlowTactical:setLeftRight(true, false, 297.340000, 345.490000)
		registerVal2.GlowTactical:setTopBottom(true, false, 8.590000, 56.740000)
		registerVal2.GlowTactical:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.GlowLethal:setLeftRight(true, false, 340.340000, 388.490000)
		registerVal2.GlowLethal:setTopBottom(true, false, 8.590000, 56.740000)
		registerVal2.GlowLethal:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.InventoryBox1:setLeftRight(true, false, 300.750000, 342.420000)
		registerVal2.InventoryBox1:setTopBottom(true, false, 15.000000, 50.330000)
		registerVal2.InventoryBox1:setAlpha(0.500000)
		registerVal2.InventoryBox1:setZoom(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.InventoryBox2:setLeftRight(true, false, 344.750000, 387.420000)
		registerVal2.InventoryBox2:setTopBottom(true, false, 15.000000, 50.330000)
		registerVal2.InventoryBox2:setAlpha(0.500000)
		registerVal2.InventoryBox2:setZoom(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.EquipmentInfo:setLeftRight(true, false, 302.000000, 392.000000)
		registerVal2.EquipmentInfo:setTopBottom(true, false, 13.000000, 55.000000)
		registerVal2.EquipmentInfo:setAlpha(1.000000)
		registerVal2.EquipmentInfo:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal11.BackLine1:completeAnimation()
		registerVal11.ImgSemiCircle:completeAnimation()
		registerVal11.ImgSeperator:completeAnimation()
		registerVal2.ClipElements:setLeftRight(true, false, 270.180000, 430.180000)
		registerVal2.ClipElements:setTopBottom(true, false, 43.500000, 100.500000)
		registerVal2.ClipElements.BackLine1:setAlpha(1.000000)
		registerVal2.ClipElements.ImgSemiCircle:setAlpha(0.600000)
		registerVal2.ClipElements.ImgSemiCircle:setZoom(1.000000)
		registerVal2.ClipElements.ImgSeperator:setAlpha(0.800000)
		registerVal2.ClipElements.ImgSeperator:setZoom(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal12.Clip:completeAnimation()
		registerVal12.Knife:completeAnimation()
		registerVal12.TotalAmmo:completeAnimation()
		registerVal12.ClipMeter:completeAnimation()
		registerVal12.AmmoColorBar:completeAnimation()
		registerVal12.ClipHero:completeAnimation()
		registerVal2.Clip:setLeftRight(true, false, 285.680000, 420.680000)
		registerVal2.Clip:setTopBottom(true, false, 41.500000, 98.500000)
		registerVal2.Clip.Clip:setAlpha(1.000000)
		registerVal2.Clip.Knife:setAlpha(0.800000)
		registerVal2.Clip.TotalAmmo:setAlpha(0.000000)
		registerVal2.Clip.ClipMeter:setAlpha(1.000000)
		registerVal2.Clip.AmmoColorBar:setAlpha(1.000000)
		registerVal2.Clip.ClipHero:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FireRate:setLeftRight(true, false, 67.000000, 383.000000)
		registerVal2.FireRate:setTopBottom(true, false, 99.670000, 117.670000)
		registerVal2.FireRate:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal14.AbilityRingBackDuplicate:completeAnimation()
		registerVal14.AbilityRingBackDeplete:completeAnimation()
		registerVal14.AbilityRingBack:completeAnimation()
		registerVal14.AbilityIconContainer:completeAnimation()
		registerVal2.AbilityContainer:setLeftRight(true, false, 323.340000, 443.340000)
		registerVal2.AbilityContainer:setTopBottom(true, false, 12.000000, 132.000000)
		registerVal2.AbilityContainer:setAlpha(0.000000)
		registerVal2.AbilityContainer.AbilityRingBackDuplicate:setZoom(0.000000)
		registerVal2.AbilityContainer.AbilityRingBackDeplete:setZoom(0.000000)
		registerVal2.AbilityContainer.AbilityRingBack:setZoom(0.000000)
		registerVal2.AbilityContainer.AbilityIconContainer:setZoom(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal15.Knife:completeAnimation()
		registerVal15.TotalAmmo:completeAnimation()
		registerVal15.TotalAmmo.TotalAmmoLbl:completeAnimation()
		registerVal2.ClipDummy:setLeftRight(true, false, 285.680000, 420.680000)
		registerVal2.ClipDummy:setTopBottom(true, false, 41.500000, 98.500000)
		registerVal2.ClipDummy.Knife:setAlpha(0.800000)
		registerVal2.ClipDummy.TotalAmmo:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ClipDummy.TotalAmmo:setAlpha(0.000000)
		registerVal2.ClipDummy.TotalAmmo:setZoom(0.000000)
		registerVal2.ClipDummy.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("000"))
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.TacticalEmpty:setLeftRight(true, false, 308.420000, 334.420000)
		registerVal2.TacticalEmpty:setTopBottom(true, false, 19.670000, 45.670000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.LethalEmpty:setLeftRight(true, false, 353.090000, 379.090000)
		registerVal2.LethalEmpty:setTopBottom(true, false, 19.670000, 45.670000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.EnemyFlagHeld:setLeftRight(true, false, 180.000000, 258.000000)
		registerVal2.EnemyFlagHeld:setTopBottom(true, false, 15.000000, 108.670000)
		registerVal2.EnemyFlagHeld:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal20.DefaultClip = __FUNC_452D5_
	registerVal19.HudStartGun = registerVal20
	registerVal20 = {}
	local function __FUNC_4673D_()
		registerVal2:setupElementClipCounter(16.000000)
		registerVal3:completeAnimation()
		registerVal3.PanelTactical:completeAnimation()
		registerVal3.PanelLethal:completeAnimation()
		registerVal3.PanelOctagon:completeAnimation()
		registerVal3.PanelAmmo:completeAnimation()
		registerVal3.PanelFlagEnemy:completeAnimation()
		registerVal2.PanelContainer:setLeftRight(false, true, -152.000000, 98.000000)
		registerVal2.PanelContainer:setTopBottom(false, false, -47.000000, 58.670000)
		registerVal2.PanelContainer.PanelTactical:setAlpha(1.000000)
		registerVal2.PanelContainer.PanelLethal:setAlpha(1.000000)
		registerVal2.PanelContainer.PanelOctagon:setAlpha(0.000000)
		registerVal2.PanelContainer.PanelAmmo:setAlpha(1.000000)
		registerVal2.PanelContainer.PanelFlagEnemy:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BackCircleOutter:setLeftRight(true, false, 447.730000, 554.730000)
		registerVal2.BackCircleOutter:setTopBottom(true, false, 20.000000, 124.000000)
		registerVal2.BackCircleOutter:setAlpha(0.000000)
		registerVal2.BackCircleOutter:setZoom(-8.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BackCircle:setLeftRight(true, false, 335.840000, 430.840000)
		registerVal2.BackCircle:setTopBottom(true, false, 12.660000, 118.660000)
		registerVal2.BackCircle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.GlowTactical:setLeftRight(true, false, 297.340000, 345.490000)
		registerVal2.GlowTactical:setTopBottom(true, false, 8.590000, 56.740000)
		registerVal2.GlowTactical:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.GlowLethal:setLeftRight(true, false, 340.340000, 388.490000)
		registerVal2.GlowLethal:setTopBottom(true, false, 8.590000, 56.740000)
		registerVal2.GlowLethal:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.InventoryBox1:setLeftRight(true, false, 300.750000, 342.420000)
		registerVal2.InventoryBox1:setTopBottom(true, false, 15.000000, 50.330000)
		registerVal2.InventoryBox1:setAlpha(0.500000)
		registerVal2.InventoryBox1:setZoom(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.InventoryBox2:setLeftRight(true, false, 344.750000, 387.420000)
		registerVal2.InventoryBox2:setTopBottom(true, false, 15.000000, 50.330000)
		registerVal2.InventoryBox2:setAlpha(0.500000)
		registerVal2.InventoryBox2:setZoom(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.EquipmentInfo:setLeftRight(true, false, 302.000000, 392.000000)
		registerVal2.EquipmentInfo:setTopBottom(true, false, 13.000000, 55.000000)
		registerVal2.EquipmentInfo:setAlpha(1.000000)
		registerVal2.EquipmentInfo:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal11.BackLine1:completeAnimation()
		registerVal11.ImgSemiCircle:completeAnimation()
		registerVal11.ImgSeperator:completeAnimation()
		registerVal2.ClipElements:setLeftRight(true, false, 241.180000, 401.180000)
		registerVal2.ClipElements:setTopBottom(true, false, 43.500000, 100.500000)
		registerVal2.ClipElements.BackLine1:setAlpha(1.000000)
		registerVal2.ClipElements.ImgSemiCircle:setAlpha(0.600000)
		registerVal2.ClipElements.ImgSemiCircle:setZoom(1.000000)
		registerVal2.ClipElements.ImgSeperator:setAlpha(0.800000)
		registerVal2.ClipElements.ImgSeperator:setZoom(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal12.Clip:completeAnimation()
		registerVal12.Knife:completeAnimation()
		registerVal12.TotalAmmo:completeAnimation()
		registerVal12.ClipMeter:completeAnimation()
		registerVal12.AmmoColorBar:completeAnimation()
		registerVal12.ClipHero:completeAnimation()
		registerVal2.Clip:setLeftRight(true, false, 256.680000, 391.680000)
		registerVal2.Clip:setTopBottom(true, false, 41.500000, 98.500000)
		registerVal2.Clip.Clip:setAlpha(1.000000)
		registerVal2.Clip.Knife:setAlpha(0.800000)
		registerVal2.Clip.TotalAmmo:setAlpha(1.000000)
		registerVal2.Clip.ClipMeter:setAlpha(1.000000)
		registerVal2.Clip.AmmoColorBar:setAlpha(1.000000)
		registerVal2.Clip.ClipHero:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FireRate:setLeftRight(true, false, 67.000000, 383.000000)
		registerVal2.FireRate:setTopBottom(true, false, 99.670000, 117.670000)
		registerVal2.FireRate:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal14.AbilityRingBackDuplicate:completeAnimation()
		registerVal14.AbilityRingBackDeplete:completeAnimation()
		registerVal14.AbilityRingBack:completeAnimation()
		registerVal14.AbilityIconContainer:completeAnimation()
		registerVal2.AbilityContainer:setLeftRight(true, false, 323.340000, 443.340000)
		registerVal2.AbilityContainer:setTopBottom(true, false, 12.000000, 132.000000)
		registerVal2.AbilityContainer:setAlpha(0.000000)
		registerVal2.AbilityContainer.AbilityRingBackDuplicate:setZoom(0.000000)
		registerVal2.AbilityContainer.AbilityRingBackDeplete:setZoom(0.000000)
		registerVal2.AbilityContainer.AbilityRingBack:setZoom(0.000000)
		registerVal2.AbilityContainer.AbilityIconContainer:setZoom(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal15.Knife:completeAnimation()
		registerVal15.TotalAmmo:completeAnimation()
		registerVal15.TotalAmmo.TotalAmmoLbl:completeAnimation()
		registerVal2.ClipDummy:setLeftRight(true, false, 256.680000, 391.680000)
		registerVal2.ClipDummy:setTopBottom(true, false, 41.500000, 98.500000)
		registerVal2.ClipDummy.Knife:setAlpha(0.800000)
		registerVal2.ClipDummy.TotalAmmo:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ClipDummy.TotalAmmo:setAlpha(0.000000)
		registerVal2.ClipDummy.TotalAmmo:setZoom(0.000000)
		registerVal2.ClipDummy.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("000"))
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.TacticalEmpty:setLeftRight(true, false, 308.420000, 334.420000)
		registerVal2.TacticalEmpty:setTopBottom(true, false, 19.670000, 45.670000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.LethalEmpty:setLeftRight(true, false, 353.090000, 379.090000)
		registerVal2.LethalEmpty:setTopBottom(true, false, 19.670000, 45.670000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.EnemyFlagHeld:setLeftRight(true, false, 180.000000, 258.000000)
		registerVal2.EnemyFlagHeld:setTopBottom(true, false, 15.000000, 108.670000)
		registerVal2.EnemyFlagHeld:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal20.DefaultClip = __FUNC_4673D_
	registerVal19.HudStartClassic = registerVal20
	registerVal20 = {}
	local function __FUNC_47BA5_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal3.PanelTactical:completeAnimation()
		registerVal3.PanelLethal:completeAnimation()
		registerVal3.PanelOctagon:completeAnimation()
		registerVal3.PanelAmmo:completeAnimation()
		registerVal3.PanelFlagEnemy:completeAnimation()
		registerVal2.PanelContainer.PanelTactical:setAlpha(1.000000)
		registerVal2.PanelContainer.PanelLethal:setAlpha(1.000000)
		registerVal2.PanelContainer.PanelOctagon:setAlpha(1.000000)
		registerVal2.PanelContainer.PanelAmmo:setAlpha(1.000000)
		registerVal2.PanelContainer.PanelFlagEnemy:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BackCircleOutter:setAlpha(0.350000)
		registerVal2.BackCircleOutter:setZoom(-8.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BackCircle:setAlpha(0.200000)
		registerVal2.BackCircle:setZoom(-5.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.GlowTactical:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.GlowLethal:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.InventoryBox1:setAlpha(0.500000)
		registerVal2.InventoryBox1:setZoom(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.InventoryBox2:setAlpha(0.500000)
		registerVal2.InventoryBox2:setZoom(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.EquipmentInfo:setAlpha(1.000000)
		registerVal2.EquipmentInfo:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal11.BackLine1:completeAnimation()
		registerVal11.ImgSemiCircle:completeAnimation()
		registerVal11.ImgSeperator:completeAnimation()
		registerVal2.ClipElements.BackLine1:setAlpha(1.000000)
		registerVal2.ClipElements.ImgSemiCircle:setAlpha(0.600000)
		registerVal2.ClipElements.ImgSemiCircle:setZoom(1.000000)
		registerVal2.ClipElements.ImgSeperator:setAlpha(0.800000)
		registerVal2.ClipElements.ImgSeperator:setZoom(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal12.Clip:completeAnimation()
		registerVal12.Knife:completeAnimation()
		registerVal12.TotalAmmo:completeAnimation()
		registerVal12.ClipMeter:completeAnimation()
		registerVal12.AmmoColorBar:completeAnimation()
		registerVal12.ClipHero:completeAnimation()
		registerVal2.Clip.Clip:setAlpha(1.000000)
		registerVal2.Clip.Knife:setAlpha(0.800000)
		registerVal2.Clip.TotalAmmo:setAlpha(1.000000)
		registerVal2.Clip.ClipMeter:setAlpha(1.000000)
		registerVal2.Clip.AmmoColorBar:setAlpha(1.000000)
		registerVal2.Clip.ClipHero:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FireRate:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal14.AbilityRingBackDuplicate:completeAnimation()
		registerVal14.AbilityRingBackDeplete:completeAnimation()
		registerVal14.AbilityRingBack:completeAnimation()
		registerVal14.AbilityIconContainer:completeAnimation()
		registerVal2.AbilityContainer:setAlpha(1.000000)
		registerVal2.AbilityContainer.AbilityRingBackDuplicate:setZoom(0.000000)
		registerVal2.AbilityContainer.AbilityRingBackDeplete:setZoom(0.000000)
		registerVal2.AbilityContainer.AbilityRingBack:setZoom(0.000000)
		registerVal2.AbilityContainer.AbilityIconContainer:setZoom(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal15.Knife:completeAnimation()
		registerVal15.TotalAmmo:completeAnimation()
		registerVal15.TotalAmmo.TotalAmmoLbl:completeAnimation()
		registerVal2.ClipDummy.Knife:setAlpha(0.800000)
		registerVal2.ClipDummy.TotalAmmo:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ClipDummy.TotalAmmo:setAlpha(0.000000)
		registerVal2.ClipDummy.TotalAmmo:setZoom(0.000000)
		registerVal2.ClipDummy.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("000"))
		registerVal2.clipFinished(registerVal15, {})
		registerVal18:completeAnimation()
		registerVal2.EnemyFlagHeld:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal20.DefaultClip = __FUNC_47BA5_
	local function __FUNC_48987_()
		registerVal2:setupElementClipCounter(14.000000)
		local function __FUNC_4973D_(arg0, arg1)
			local function __FUNC_49930_(arg0, arg1)
				local function __FUNC_49B97_(arg0, arg1)
					local function __FUNC_49D86_(arg0, arg1)
						local function __FUNC_49EDC_(arg0, arg1)
							local function __FUNC_4A0CB_(arg0, arg1)
								local function __FUNC_4A220_(arg0, arg1)
									local function __FUNC_4A378_(arg0, arg1)
										local function __FUNC_4A56B_(arg0, arg1)
											local function __FUNC_4A75B_(arg0, arg1)
												local function __FUNC_4A9BD_(arg0, arg1)
													if not arg1.interrupted then
														arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
														arg0.PanelTactical:beginAnimation("subkeyframe", 59.000000, false, false, CoD.TweenType.Linear)
														arg0.PanelLethal:beginAnimation("subkeyframe", 59.000000, false, false, CoD.TweenType.Linear)
														arg0.PanelOctagon:beginAnimation("subkeyframe", 59.000000, false, false, CoD.TweenType.Linear)
														arg0.PanelAmmo:beginAnimation("subkeyframe", 59.000000, false, false, CoD.TweenType.Linear)
														arg0.PanelFlagEnemy:beginAnimation("subkeyframe", 59.000000, false, false, CoD.TweenType.Linear)
													end
													arg0.PanelTactical:setAlpha(0.000000)
													arg0.PanelLethal:setAlpha(0.000000)
													arg0.PanelOctagon:setAlpha(0.000000)
													arg0.PanelAmmo:setAlpha(0.000000)
													arg0.PanelFlagEnemy:setAlpha(0.000000)
													if arg1.interrupted then
														registerVal2.clipFinished(arg0, arg1)
													else
														arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
													end
												end

												if arg1.interrupted then
													__FUNC_4A9BD_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
												arg0.PanelTactical:beginAnimation("subkeyframe", 20.000000, false, false, CoD.TweenType.Linear)
												arg0.PanelLethal:beginAnimation("subkeyframe", 20.000000, false, false, CoD.TweenType.Linear)
												arg0.PanelTactical:setAlpha(0.000000)
												arg0.PanelLethal:setAlpha(0.750000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A9BD_)
											end

											if arg1.interrupted then
												__FUNC_4A75B_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
											arg0.PanelTactical:beginAnimation("subkeyframe", 30.000000, false, false, CoD.TweenType.Linear)
											arg0.PanelTactical:setAlpha(0.330000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A75B_)
										end

										if arg1.interrupted then
											__FUNC_4A56B_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0.PanelTactical:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0.PanelTactical:setAlpha(0.830000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A56B_)
									end

									if arg1.interrupted then
										__FUNC_4A378_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A378_)
								end

								if arg1.interrupted then
									__FUNC_4A220_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A220_)
							end

							if arg1.interrupted then
								__FUNC_4A0CB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
							arg0.PanelAmmo:beginAnimation("subkeyframe", 60.000000, false, false, CoD.TweenType.Linear)
							arg0.PanelAmmo:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A0CB_)
						end

						if arg1.interrupted then
							__FUNC_49EDC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_49EDC_)
					end

					if arg1.interrupted then
						__FUNC_49D86_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0.PanelOctagon:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0.PanelOctagon:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_49D86_)
				end

				if arg1.interrupted then
					__FUNC_49B97_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0.PanelOctagon:beginAnimation("subkeyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0.PanelFlagEnemy:beginAnimation("subkeyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0.PanelOctagon:setAlpha(0.140000)
				arg0.PanelFlagEnemy:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_49B97_)
			end

			if arg1.interrupted then
				__FUNC_49930_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0.PanelFlagEnemy:beginAnimation("subkeyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0.PanelFlagEnemy:setAlpha(0.400000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_49930_)
		end

		registerVal3:completeAnimation()
		registerVal3.PanelTactical:completeAnimation()
		registerVal3.PanelLethal:completeAnimation()
		registerVal3.PanelOctagon:completeAnimation()
		registerVal3.PanelAmmo:completeAnimation()
		registerVal3.PanelFlagEnemy:completeAnimation()
		registerVal2.PanelContainer.PanelTactical:setAlpha(1.000000)
		registerVal2.PanelContainer.PanelLethal:setAlpha(1.000000)
		registerVal2.PanelContainer.PanelOctagon:setAlpha(1.000000)
		registerVal2.PanelContainer.PanelAmmo:setAlpha(1.000000)
		registerVal2.PanelContainer.PanelFlagEnemy:setAlpha(1.000000)
		__FUNC_4973D_(registerVal3, {})
		local function __FUNC_4AD9F_(arg0, arg1)
			local function __FUNC_4AEF4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 329.000000, true, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.000000)
				arg0:setZoom(-8.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4AEF4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4AEF4_)
		end

		registerVal4:completeAnimation()
		registerVal2.BackCircleOutter:setAlpha(0.350000)
		registerVal2.BackCircleOutter:setZoom(-8.000000)
		__FUNC_4AD9F_(registerVal4, {})
		local function __FUNC_4B0CB_(arg0, arg1)
			local function __FUNC_4B220_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 509.000000, true, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.000000)
				arg0:setZoom(-5.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4B220_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B220_)
		end

		registerVal5:completeAnimation()
		registerVal2.BackCircle:setAlpha(0.200000)
		registerVal2.BackCircle:setZoom(-5.000000)
		__FUNC_4B0CB_(registerVal5, {})
		local function __FUNC_4B3F7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.GlowTactical:setAlpha(1.000000)
		__FUNC_4B3F7_(registerVal6, {})
		local function __FUNC_4B5A9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.GlowLethal:setAlpha(1.000000)
		__FUNC_4B5A9_(registerVal7, {})
		local function __FUNC_4B75D_(arg0, arg1)
			local function __FUNC_4B8D7_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 439.000000, true, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.000000)
				arg0:setZoom(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4B8D7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.400000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B8D7_)
		end

		registerVal8:completeAnimation()
		registerVal2.InventoryBox1:setAlpha(0.500000)
		registerVal2.InventoryBox1:setZoom(1.000000)
		__FUNC_4B75D_(registerVal8, {})
		local function __FUNC_4BAAB_(arg0, arg1)
			local function __FUNC_4BC23_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 310.000000, true, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.000000)
				arg0:setZoom(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4BC23_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.400000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4BC23_)
		end

		registerVal9:completeAnimation()
		registerVal2.InventoryBox2:setAlpha(0.500000)
		registerVal2.InventoryBox2:setZoom(1.000000)
		__FUNC_4BAAB_(registerVal9, {})
		local function __FUNC_4BDF7_(arg0, arg1)
			local function __FUNC_4BF4C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 490.000000, true, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.000000)
				arg0:setZoom(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4BF4C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4BF4C_)
		end

		registerVal10:completeAnimation()
		registerVal2.EquipmentInfo:setAlpha(1.000000)
		registerVal2.EquipmentInfo:setZoom(0.000000)
		__FUNC_4BDF7_(registerVal10, {})
		local function __FUNC_4C11E_(arg0, arg1)
			local function __FUNC_4C274_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 389.000000, true, false, CoD.TweenType.Bounce)
					arg0.BackLine1:beginAnimation("subkeyframe", 389.000000, true, false, CoD.TweenType.Bounce)
					arg0.ImgSemiCircle:beginAnimation("subkeyframe", 389.000000, true, false, CoD.TweenType.Bounce)
					arg0.ImgSeperator:beginAnimation("subkeyframe", 389.000000, true, false, CoD.TweenType.Bounce)
				end
				arg0.BackLine1:setAlpha(0.000000)
				arg0.ImgSemiCircle:setAlpha(0.000000)
				arg0.ImgSemiCircle:setZoom(1.000000)
				arg0.ImgSeperator:setAlpha(0.000000)
				arg0.ImgSeperator:setZoom(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4C274_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C274_)
		end

		registerVal11:completeAnimation()
		registerVal11.BackLine1:completeAnimation()
		registerVal11.ImgSemiCircle:completeAnimation()
		registerVal11.ImgSeperator:completeAnimation()
		registerVal2.ClipElements.BackLine1:setAlpha(1.000000)
		registerVal2.ClipElements.ImgSemiCircle:setAlpha(0.600000)
		registerVal2.ClipElements.ImgSemiCircle:setZoom(1.000000)
		registerVal2.ClipElements.ImgSeperator:setAlpha(0.800000)
		registerVal2.ClipElements.ImgSeperator:setZoom(0.000000)
		__FUNC_4C11E_(registerVal11, {})
		local function __FUNC_4C5C0_(arg0, arg1)
			local function __FUNC_4C7AE_(arg0, arg1)
				local function __FUNC_4CBBF_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 70.000000, true, false, CoD.TweenType.Bounce)
						arg0.Clip:beginAnimation("subkeyframe", 70.000000, true, false, CoD.TweenType.Bounce)
						arg0.Knife:beginAnimation("subkeyframe", 70.000000, true, false, CoD.TweenType.Bounce)
						arg0.TotalAmmo:beginAnimation("subkeyframe", 70.000000, true, false, CoD.TweenType.Bounce)
						arg0.ClipMeter:beginAnimation("subkeyframe", 70.000000, true, false, CoD.TweenType.Bounce)
						arg0.AmmoColorBar:beginAnimation("subkeyframe", 70.000000, true, false, CoD.TweenType.Bounce)
						arg0.ClipHero:beginAnimation("subkeyframe", 70.000000, true, false, CoD.TweenType.Bounce)
					end
					arg0.Clip:setAlpha(0.000000)
					arg0.Knife:setAlpha(0.000000)
					arg0.TotalAmmo:setAlpha(0.000000)
					arg0.ClipMeter:setAlpha(0.000000)
					arg0.AmmoColorBar:setAlpha(0.000000)
					arg0.ClipHero:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_4CBBF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
				arg0.Clip:beginAnimation("subkeyframe", 310.000000, false, false, CoD.TweenType.Linear)
				arg0.Knife:beginAnimation("subkeyframe", 310.000000, false, false, CoD.TweenType.Linear)
				arg0.TotalAmmo:beginAnimation("subkeyframe", 310.000000, false, false, CoD.TweenType.Linear)
				arg0.ClipMeter:beginAnimation("subkeyframe", 310.000000, false, false, CoD.TweenType.Linear)
				arg0.AmmoColorBar:beginAnimation("subkeyframe", 310.000000, false, false, CoD.TweenType.Linear)
				arg0.ClipHero:beginAnimation("subkeyframe", 310.000000, false, false, CoD.TweenType.Linear)
				arg0.Clip:setAlpha(0.060000)
				arg0.Knife:setAlpha(0.070000)
				arg0.TotalAmmo:setAlpha(0.080000)
				arg0.ClipMeter:setAlpha(0.090000)
				arg0.AmmoColorBar:setAlpha(0.090000)
				arg0.ClipHero:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4CBBF_)
			end

			if arg1.interrupted then
				__FUNC_4C7AE_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0.ClipHero:beginAnimation("subkeyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0.ClipHero:setAlpha(0.790000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C7AE_)
		end

		registerVal12:completeAnimation()
		registerVal12.Clip:completeAnimation()
		registerVal12.Knife:completeAnimation()
		registerVal12.TotalAmmo:completeAnimation()
		registerVal12.ClipMeter:completeAnimation()
		registerVal12.AmmoColorBar:completeAnimation()
		registerVal12.ClipHero:completeAnimation()
		registerVal2.Clip.Clip:setAlpha(0.700000)
		registerVal2.Clip.Knife:setAlpha(0.800000)
		registerVal2.Clip.TotalAmmo:setAlpha(0.900000)
		registerVal2.Clip.ClipMeter:setAlpha(1.000000)
		registerVal2.Clip.AmmoColorBar:setAlpha(1.000000)
		registerVal2.Clip.ClipHero:setAlpha(1.000000)
		__FUNC_4C5C0_(registerVal12, {})
		local function __FUNC_4CFF5_(arg0, arg1)
			local function __FUNC_4D14C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 289.000000, true, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4D14C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D14C_)
		end

		registerVal13:completeAnimation()
		registerVal2.FireRate:setAlpha(1.000000)
		__FUNC_4CFF5_(registerVal13, {})
		local function __FUNC_4D301_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 349.000000, true, false, CoD.TweenType.Bounce)
				arg0.AbilityRingBackDuplicate:beginAnimation("subkeyframe", 349.000000, true, false, CoD.TweenType.Bounce)
				arg0.AbilityRingBackDeplete:beginAnimation("subkeyframe", 349.000000, true, false, CoD.TweenType.Bounce)
				arg0.AbilityRingBack:beginAnimation("subkeyframe", 349.000000, true, false, CoD.TweenType.Bounce)
				arg0.AbilityIconContainer:beginAnimation("subkeyframe", 349.000000, true, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			arg0.AbilityRingBackDuplicate:setZoom(0.000000)
			arg0.AbilityRingBackDeplete:setZoom(0.000000)
			arg0.AbilityRingBack:setZoom(0.000000)
			arg0.AbilityIconContainer:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal14.AbilityRingBackDuplicate:completeAnimation()
		registerVal14.AbilityRingBackDeplete:completeAnimation()
		registerVal14.AbilityRingBack:completeAnimation()
		registerVal14.AbilityIconContainer:completeAnimation()
		registerVal2.AbilityContainer:setAlpha(1.000000)
		registerVal2.AbilityContainer.AbilityRingBackDuplicate:setZoom(0.000000)
		registerVal2.AbilityContainer.AbilityRingBackDeplete:setZoom(0.000000)
		registerVal2.AbilityContainer.AbilityRingBack:setZoom(0.000000)
		registerVal2.AbilityContainer.AbilityIconContainer:setZoom(0.000000)
		__FUNC_4D301_(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal15.Knife:completeAnimation()
		registerVal15.TotalAmmo:completeAnimation()
		registerVal15.TotalAmmo.TotalAmmoLbl:completeAnimation()
		registerVal2.ClipDummy.Knife:setAlpha(0.000000)
		registerVal2.ClipDummy.TotalAmmo:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ClipDummy.TotalAmmo:setAlpha(0.000000)
		registerVal2.ClipDummy.TotalAmmo:setZoom(0.000000)
		registerVal2.ClipDummy.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("000"))
		registerVal2.clipFinished(registerVal15, {})
		local function __FUNC_4D6B4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.EnemyFlagHeld:setAlpha(1.000000)
		__FUNC_4D6B4_(registerVal18, {})
	end

	registerVal20.DefaultState = __FUNC_48987_
	registerVal19.HudStart = registerVal20
	registerVal20 = {}
	local function __FUNC_4D869_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal20.DefaultClip = __FUNC_4D869_
	registerVal19.HudPause = registerVal20
	registerVal2.clipsPerState = registerVal19
	local function __FUNC_4D8CA_(arg0)
		arg0.PanelContainer:close()
		arg0.BackCircleOutter:close()
		arg0.BackCircle:close()
		arg0.GlowTactical:close()
		arg0.GlowLethal:close()
		arg0.InventoryBox1:close()
		arg0.InventoryBox2:close()
		arg0.EquipmentInfo:close()
		arg0.ClipElements:close()
		arg0.Clip:close()
		arg0.FireRate:close()
		arg0.AbilityContainer:close()
		arg0.ClipDummy:close()
		arg0.TacticalEmpty:close()
		arg0.LethalEmpty:close()
		arg0.EnemyFlagHeld:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_4D8CA_)
	if __FUNC_631_ then
		__FUNC_631_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.AmmoWidgetMP.new = __FUNC_7A1_
