-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_PanelContainer")
require("ui.uieditor.widgets.HUD.CP_Prologue.CP_Prologue_AmmoWidget_PanelContainer")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_UIGlowWidget")
require("ui.uieditor.widgets.HUD.CP_DamageWidget.DamageWidget_BackCircleOutter")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_BackCircle")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_EquipmentInfo")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_IventoryBox")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_ClipElements")
require("ui.uieditor.widgets.HUD.CP_Prologue.CP_Prologue_ClipElements")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_ClipInfo")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_AttachmentInfo")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_TacModeIndicator")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_EVModeIndicator")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_AbilityContainer")
require("ui.uieditor.widgets.HUD.CP_DamageWidget.DamageWidget_Dot")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_ClipInfoDummy")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget = registerVal1
function CoD.AmmoWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget)
	registerVal2.id = "AmmoWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 398.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 124.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.AmmoWidget_PanelContainer.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -246.330000, 2.670000)
	registerVal3:setTopBottom(false, false, -47.000000, 58.670000)
	registerVal3:setRGB(0.790000, 0.820000, 0.850000)
	registerVal3:setZoom(-10.000000)
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_2"))
	registerVal3:setShaderVector(0.000000, 10.000000, 10.000000, 0.000000, 0.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Knife"
	local function __FUNC_2DF4_(arg0, arg2, arg3)
		local registerVal3 = WeaponUsesAmmo(arg1)
		if not registerVal3 then
			registerVal3 = IsHeroWeaponGadgetCurrentWeapon(arg0, arg1)
		else
		end
		return true
	end

	registerVal7.condition = __FUNC_2DF4_
	local registerVal8 = {}
	registerVal8.stateName = "Weapon"
	local function __FUNC_2E99_(arg0, arg2, arg3)
		local registerVal3 = WeaponUsesAmmo(arg1)
		if registerVal3 then
			registerVal3 = IsWeaponClipGreaterThanOrEqualTo(arg1, 100.000000)
		end
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_2E99_
	local registerVal9 = {}
	registerVal9.stateName = "Weapon3Digits"
	local function __FUNC_2F37_(arg0, arg2, arg3)
		return IsWeaponClipGreaterThanOrEqualTo(arg1, 100.000000)
	end

	registerVal9.condition = __FUNC_2F37_
	registerVal6 = {registerVal7, registerVal8, registerVal9}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "currentWeapon.weapon")
	local function __FUNC_2FA3_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.weapon"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_2FA3_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "playerAbilities.playerGadget3.isInUse")
	local function __FUNC_30CA_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.isInUse"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_30CA_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "currentWeapon.clipMaxAmmo")
	local function __FUNC_3203_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.clipMaxAmmo"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_3203_)
	registerVal2:addElement(registerVal3)
	registerVal2.PanelContainer = registerVal3
	local registerVal4 = CoD.CP_Prologue_AmmoWidget_PanelContainer.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 173.050000, 401.050000)
	registerVal4:setTopBottom(true, false, 15.100000, 121.100000)
	registerVal4:setRGB(0.790000, 0.820000, 0.850000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setZoom(-10.000000)
	registerVal4:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_2"))
	registerVal4:setShaderVector(0.000000, 10.000000, 10.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.PrologueAmmoWidgetPanelContainer = registerVal4
	local registerVal5 = CoD.AmmoWidget_UIGlowWidget.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 154.000000, 314.000000)
	registerVal5:setTopBottom(true, false, 44.500000, 101.500000)
	registerVal2:addElement(registerVal5)
	registerVal2.UIGlowWidget = registerVal5
	registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 163.920000, 336.810000)
	registerVal6:setTopBottom(true, false, -4.840000, 144.480000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_core_hud_prologueammowidget_uiglow"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.PrologueGlow = registerVal6
	registerVal7 = CoD.DamageWidget_BackCircleOutter.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 301.730000, 408.730000)
	registerVal7:setTopBottom(true, false, 20.000000, 124.000000)
	registerVal7:setAlpha(0.350000)
	registerVal7:setZoom(-8.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.BackCircleOutter = registerVal7
	registerVal8 = CoD.AmmoWidget_BackCircle.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 305.840000, 400.840000)
	registerVal8:setTopBottom(true, false, 12.660000, 118.660000)
	registerVal8:setAlpha(0.400000)
	registerVal8:setZoom(-5.000000)
	registerVal8:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal8:setShaderVector(0.000000, 0.100000, 1.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.BackCircle = registerVal8
	registerVal9 = CoD.AmmoWidget_EquipmentInfo.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 220.000000, 310.000000)
	registerVal9:setTopBottom(true, false, 13.000000, 55.000000)
	registerVal9:setRGB(0.000000, 0.000000, 0.000000)
	registerVal9:setAlpha(0.300000)
	registerVal2:addElement(registerVal9)
	registerVal2.EquipmentInfoSolid = registerVal9
	local registerVal10 = CoD.AmmoWidget_IventoryBox.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 225.080000, 263.750000)
	registerVal10:setTopBottom(true, false, 15.000000, 50.330000)
	registerVal10:setAlpha(0.400000)
	registerVal10:setZoom(1.000000)
	registerVal10:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal10:setShaderVector(0.000000, 0.100000, 1.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.InventoryBox1 = registerVal10
	local registerVal11 = CoD.AmmoWidget_IventoryBox.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 265.750000, 304.420000)
	registerVal11:setTopBottom(true, false, 15.000000, 50.330000)
	registerVal11:setAlpha(0.400000)
	registerVal11:setZoom(1.000000)
	registerVal11:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal11:setShaderVector(0.000000, 0.100000, 1.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.InventoryBox2 = registerVal11
	local registerVal12 = CoD.AmmoWidget_EquipmentInfo.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 220.000000, 310.000000)
	registerVal12:setTopBottom(true, false, 13.000000, 55.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.EquipmentInfo = registerVal12
	local registerVal13 = CoD.AmmoWidget_ClipElements.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 154.180000, 314.180000)
	registerVal13:setTopBottom(true, false, 43.500000, 100.500000)
	registerVal13.ImgSemiCircle:setAlpha(0.600000)
	registerVal13.ImgSeperator:setAlpha(0.800000)
	registerVal2:addElement(registerVal13)
	registerVal2.ClipElements = registerVal13
	local registerVal14 = CoD.CP_Prologue_ClipElements.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 215.000000, 375.000000)
	registerVal14:setTopBottom(true, false, 42.670000, 99.670000)
	registerVal14:setRGB(0.770000, 0.910000, 0.930000)
	registerVal14:setAlpha(0.000000)
	registerVal14.ImgSemiCircle:setAlpha(0.600000)
	registerVal14.ImgSemiCircle:setZoom(0.000000)
	registerVal14.ImgSeperator:setAlpha(0.800000)
	registerVal2:addElement(registerVal14)
	registerVal2.CPPrologueClipElements = registerVal14
	local registerVal15 = CoD.AmmoWidget_ClipInfo.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 169.680000, 304.680000)
	registerVal15:setTopBottom(true, false, 50.330000, 98.500000)
	registerVal15.Clip:setAlpha(0.700000)
	registerVal15.Knife:setAlpha(0.800000)
	registerVal2:addElement(registerVal15)
	registerVal2.Clip = registerVal15
	local registerVal16 = CoD.AmmoWidget_AttachmentInfo.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, -131.000000, 297.000000)
	registerVal16:setTopBottom(true, false, 99.670000, 117.670000)
	registerVal16:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal16:setShaderVector(0.000000, 0.100000, 1.000000, 0.000000, 0.000000)
	registerVal16:setShaderVector(1.000000, 0.100000, 0.000000, 0.000000, 0.000000)
	registerVal16:setShaderVector(2.000000, 0.100000, 1.000000, 0.000000, 0.000000)
	registerVal16:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal16:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal16)
	registerVal2.FireRate = registerVal16
	local registerVal17 = CoD.AmmoWidget_TacModeIndicator.new(arg0, arg1)
	registerVal17:setLeftRight(true, false, 315.000000, 355.000000)
	registerVal17:setTopBottom(true, false, 6.000000, 31.000000)
	registerVal17:setZoom(-5.000000)
	registerVal2:addElement(registerVal17)
	registerVal2.AmmoWidgetTacModeIndicator = registerVal17
	local registerVal18 = CoD.AmmoWidget_EVModeIndicator.new(arg0, arg1)
	registerVal18:setLeftRight(true, false, 351.340000, 402.340000)
	registerVal18:setTopBottom(true, false, 6.000000, 31.000000)
	registerVal18:setZoom(-5.000000)
	registerVal2:addElement(registerVal18)
	registerVal2.AmmoWidgetEVModeIndicator = registerVal18
	local registerVal19 = CoD.AmmoWidget_AbilityContainer.new(arg0, arg1)
	registerVal19:setLeftRight(true, false, 291.090000, 412.590000)
	registerVal19:setTopBottom(true, false, 11.000000, 132.500000)
	registerVal19:setZoom(3.000000)
	registerVal2:addElement(registerVal19)
	registerVal2.AbilityContainer = registerVal19
	local registerVal20 = CoD.DamageWidget_Dot.new(arg0, arg1)
	registerVal20:setLeftRight(true, false, 310.000000, 314.000000)
	registerVal20:setTopBottom(true, false, 11.000000, 15.000000)
	registerVal20:setAlpha(0.600000)
	registerVal20:setZoom(5.000000)
	registerVal20:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal20:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
	registerVal20:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal20:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal20:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal20:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal20)
	registerVal2.Dot1 = registerVal20
	local registerVal21 = CoD.DamageWidget_Dot.new(arg0, arg1)
	registerVal21:setLeftRight(true, false, 217.000000, 221.000000)
	registerVal21:setTopBottom(true, false, 11.000000, 15.000000)
	registerVal21:setAlpha(0.600000)
	registerVal21:setZoom(5.000000)
	registerVal21:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal21:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
	registerVal21:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal21:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal21:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal21:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal21)
	registerVal2.Dot2 = registerVal21
	local registerVal22 = CoD.DamageWidget_Dot.new(arg0, arg1)
	registerVal22:setLeftRight(true, false, 390.000000, 394.000000)
	registerVal22:setTopBottom(true, false, 11.000000, 15.000000)
	registerVal22:setAlpha(0.600000)
	registerVal22:setZoom(5.000000)
	registerVal22:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal22:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
	registerVal22:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal22:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal22:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal22:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal22)
	registerVal2.Dot3 = registerVal22
	local registerVal23 = CoD.DamageWidget_Dot.new(arg0, arg1)
	registerVal23:setLeftRight(true, false, 310.000000, 314.000000)
	registerVal23:setTopBottom(true, false, 35.000000, 39.000000)
	registerVal23:setAlpha(0.600000)
	registerVal23:setZoom(5.000000)
	registerVal23:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal23:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
	registerVal23:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal23:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal23:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal23:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal23)
	registerVal2.Dot4 = registerVal23
	local registerVal24 = CoD.DamageWidget_Dot.new(arg0, arg1)
	registerVal24:setLeftRight(true, false, 217.000000, 221.000000)
	registerVal24:setTopBottom(true, false, 35.000000, 39.000000)
	registerVal24:setAlpha(0.600000)
	registerVal24:setZoom(5.000000)
	registerVal24:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal24:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
	registerVal24:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal24:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal24:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal24:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal24)
	registerVal2.Dot5 = registerVal24
	local registerVal25 = CoD.DamageWidget_Dot.new(arg0, arg1)
	registerVal25:setLeftRight(true, false, 390.000000, 394.000000)
	registerVal25:setTopBottom(true, false, 35.000000, 39.000000)
	registerVal25:setAlpha(0.600000)
	registerVal25:setZoom(5.000000)
	registerVal25:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal25:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
	registerVal25:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal25:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal25:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal25:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal25)
	registerVal2.Dot6 = registerVal25
	local registerVal26 = CoD.DamageWidget_Dot.new(arg0, arg1)
	registerVal26:setLeftRight(true, false, 310.000000, 314.000000)
	registerVal26:setTopBottom(true, false, 110.000000, 114.000000)
	registerVal26:setAlpha(0.600000)
	registerVal26:setZoom(5.000000)
	registerVal26:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal26:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
	registerVal26:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal26:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal26:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal26:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal26)
	registerVal2.Dot7 = registerVal26
	local registerVal27 = CoD.DamageWidget_Dot.new(arg0, arg1)
	registerVal27:setLeftRight(true, false, 390.000000, 394.000000)
	registerVal27:setTopBottom(true, false, 110.000000, 114.000000)
	registerVal27:setAlpha(0.600000)
	registerVal27:setZoom(5.000000)
	registerVal27:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal27:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
	registerVal27:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal27:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal27:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal27:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal27)
	registerVal2.Dot8 = registerVal27
	local registerVal28 = CoD.AmmoWidget_ClipInfoDummy.new(arg0, arg1)
	registerVal28:setLeftRight(true, false, 169.680000, 304.680000)
	registerVal28:setTopBottom(true, false, 41.500000, 98.500000)
	registerVal28.Knife:setAlpha(0.800000)
	registerVal28.TotalAmmo:setAlpha(0.000000)
	registerVal28.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("000"))
	registerVal2:addElement(registerVal28)
	registerVal2.ClipDummy = registerVal28
	local registerVal29 = {}
	local registerVal30 = {}
	local function __FUNC_332F_()
		registerVal2:setupElementClipCounter(26.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelContainer:setLeftRight(false, true, -93.330000, 2.670000)
		registerVal2.PanelContainer:setTopBottom(false, false, -47.000000, 58.670000)
		registerVal2.PanelContainer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PrologueAmmoWidgetPanelContainer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.UIGlowWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.PrologueGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BackCircleOutter:setAlpha(0.000000)
		registerVal2.BackCircleOutter:setZoom(30.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BackCircle:setAlpha(0.000000)
		registerVal2.BackCircle:setZoom(40.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.EquipmentInfoSolid:setAlpha(0.000000)
		registerVal2.EquipmentInfoSolid:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.InventoryBox1:setAlpha(0.000000)
		registerVal2.InventoryBox1:setZoom(30.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.InventoryBox2:setAlpha(0.000000)
		registerVal2.InventoryBox2:setZoom(30.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.EquipmentInfo:setAlpha(0.000000)
		registerVal2.EquipmentInfo:setZoom(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal13.BackLine1:completeAnimation()
		registerVal13.BackLine2:completeAnimation()
		registerVal13.ImgSemiCircle:completeAnimation()
		registerVal13.ImgSeperator:completeAnimation()
		registerVal13.ImgSeparatorDual:completeAnimation()
		registerVal2.ClipElements.BackLine1:setAlpha(0.000000)
		registerVal2.ClipElements.BackLine2:setAlpha(0.000000)
		registerVal2.ClipElements.ImgSemiCircle:setAlpha(0.000000)
		registerVal2.ClipElements.ImgSemiCircle:setZoom(30.000000)
		registerVal2.ClipElements.ImgSeperator:setAlpha(0.000000)
		registerVal2.ClipElements.ImgSeperator:setZoom(15.000000)
		registerVal2.ClipElements.ImgSeparatorDual:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.CPPrologueClipElements:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal15.Clip:completeAnimation()
		registerVal15.Knife:completeAnimation()
		registerVal15.TotalAmmo:completeAnimation()
		registerVal15.AmmoColorBar:completeAnimation()
		registerVal15.ClipMeter:completeAnimation()
		registerVal2.Clip.Clip:setAlpha(0.000000)
		registerVal2.Clip.Knife:setAlpha(0.000000)
		registerVal2.Clip.TotalAmmo:setAlpha(0.000000)
		registerVal2.Clip.AmmoColorBar:setAlpha(0.000000)
		registerVal2.Clip.ClipMeter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FireRate:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.AmmoWidgetTacModeIndicator:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.AmmoWidgetEVModeIndicator:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal19.AbilityRingBackDuplicate:completeAnimation()
		registerVal19.AbilityRingBackDeplete:completeAnimation()
		registerVal19.AbilityRingBack:completeAnimation()
		registerVal19.AbilityRing:completeAnimation()
		registerVal19.AbilityIconContainer:completeAnimation()
		registerVal2.AbilityContainer:setAlpha(0.000000)
		registerVal2.AbilityContainer.AbilityRingBackDuplicate:setZoom(0.000000)
		registerVal2.AbilityContainer.AbilityRingBackDeplete:setZoom(30.000000)
		registerVal2.AbilityContainer.AbilityRingBack:setZoom(30.000000)
		registerVal2.AbilityContainer.AbilityRing:setZoom(40.000000)
		registerVal2.AbilityContainer.AbilityIconContainer:setZoom(40.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.Dot1:setLeftRight(true, false, 391.000000, 395.000000)
		registerVal2.Dot1:setTopBottom(true, false, 70.000000, 74.000000)
		registerVal2.Dot1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.Dot2:setLeftRight(true, false, 392.000000, 396.000000)
		registerVal2.Dot2:setTopBottom(true, false, 70.000000, 74.000000)
		registerVal2.Dot2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.Dot3:setLeftRight(true, false, 390.000000, 394.000000)
		registerVal2.Dot3:setTopBottom(true, false, 70.000000, 74.000000)
		registerVal2.Dot3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.Dot4:setLeftRight(true, false, 391.000000, 395.000000)
		registerVal2.Dot4:setTopBottom(true, false, 70.000000, 74.000000)
		registerVal2.Dot4:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.Dot5:setLeftRight(true, false, 392.000000, 396.000000)
		registerVal2.Dot5:setTopBottom(true, false, 70.000000, 74.000000)
		registerVal2.Dot5:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.Dot6:setLeftRight(true, false, 390.000000, 394.000000)
		registerVal2.Dot6:setTopBottom(true, false, 70.000000, 74.000000)
		registerVal2.Dot6:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.Dot7:setLeftRight(true, false, 391.000000, 395.000000)
		registerVal2.Dot7:setTopBottom(true, false, 70.000000, 74.000000)
		registerVal2.Dot7:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.Dot8:setLeftRight(true, false, 390.000000, 394.000000)
		registerVal2.Dot8:setTopBottom(true, false, 70.000000, 74.000000)
		registerVal2.Dot8:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal28.Knife:completeAnimation()
		registerVal28.TotalAmmo:completeAnimation()
		registerVal28.TotalAmmo.TotalAmmoLbl:completeAnimation()
		registerVal2.ClipDummy.Knife:setAlpha(0.000000)
		registerVal2.ClipDummy.TotalAmmo:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ClipDummy.TotalAmmo:setAlpha(0.000000)
		registerVal2.ClipDummy.TotalAmmo:setZoom(30.000000)
		registerVal2.ClipDummy.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("000"))
		registerVal2.clipFinished(registerVal28, {})
	end

	registerVal30.DefaultClip = __FUNC_332F_
	local function __FUNC_47A6_()
		registerVal2:setupElementClipCounter(23.000000)
		local function __FUNC_5B22_(arg0, arg1)
			local function __FUNC_5C78_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 930.000000, true, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, true, -246.330000, 2.670000)
				arg0:setTopBottom(false, false, -47.000000, 58.670000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_5C78_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 579.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5C78_)
		end

		registerVal3:completeAnimation()
		registerVal2.PanelContainer:setLeftRight(false, true, -93.330000, 2.670000)
		registerVal2.PanelContainer:setTopBottom(false, false, -47.000000, 58.670000)
		registerVal2.PanelContainer:setAlpha(0.000000)
		__FUNC_5B22_(registerVal3, {})
		local function __FUNC_5E9D_(arg0, arg1)
			local function __FUNC_5FF4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 819.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_5FF4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 689.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5FF4_)
		end

		registerVal5:completeAnimation()
		registerVal2.UIGlowWidget:setAlpha(0.000000)
		__FUNC_5E9D_(registerVal5, {})
		local function __FUNC_61A9_(arg0, arg1)
			local function __FUNC_6300_(arg0, arg1)
				local function __FUNC_649D_(arg0, arg1)
					local function __FUNC_6616_(arg0, arg1)
						local function __FUNC_67B1_(arg0, arg1)
							local function __FUNC_692A_(arg0, arg1)
								local function __FUNC_6A80_(arg0, arg1)
									local function __FUNC_6BFB_(arg0, arg1)
										local function __FUNC_6D50_(arg0, arg1)
											local function __FUNC_6ECB_(arg0, arg1)
												local function __FUNC_7020_(arg0, arg1)
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
													__FUNC_7020_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7020_)
											end

											if arg1.interrupted then
												__FUNC_6ECB_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.150000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6ECB_)
										end

										if arg1.interrupted then
											__FUNC_6D50_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6D50_)
									end

									if arg1.interrupted then
										__FUNC_6BFB_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.350000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6BFB_)
								end

								if arg1.interrupted then
									__FUNC_6A80_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6A80_)
							end

							if arg1.interrupted then
								__FUNC_692A_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setZoom(-8.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_692A_)
						end

						if arg1.interrupted then
							__FUNC_67B1_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:setZoom(-0.400000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_67B1_)
					end

					if arg1.interrupted then
						__FUNC_6616_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:setZoom(7.200000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6616_)
				end

				if arg1.interrupted then
					__FUNC_649D_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.350000)
				arg0:setZoom(22.400000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_649D_)
			end

			if arg1.interrupted then
				__FUNC_6300_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6300_)
		end

		registerVal7:completeAnimation()
		registerVal2.BackCircleOutter:setAlpha(0.000000)
		registerVal2.BackCircleOutter:setZoom(30.000000)
		__FUNC_61A9_(registerVal7, {})
		local function __FUNC_71F7_(arg0, arg1)
			local function __FUNC_734C_(arg0, arg1)
				local function __FUNC_74E9_(arg0, arg1)
					local function __FUNC_7662_(arg0, arg1)
						local function __FUNC_77FD_(arg0, arg1)
							local function __FUNC_7976_(arg0, arg1)
								local function __FUNC_7AEF_(arg0, arg1)
									local function __FUNC_7C44_(arg0, arg1)
										local function __FUNC_7DBF_(arg0, arg1)
											local function __FUNC_7F14_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setAlpha(0.400000)
												arg0:setZoom(-5.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_7F14_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7F14_)
										end

										if arg1.interrupted then
											__FUNC_7DBF_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.200000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7DBF_)
									end

									if arg1.interrupted then
										__FUNC_7C44_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7C44_)
								end

								if arg1.interrupted then
									__FUNC_7AEF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7AEF_)
							end

							if arg1.interrupted then
								__FUNC_7976_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
							arg0:setZoom(-5.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7976_)
						end

						if arg1.interrupted then
							__FUNC_77FD_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:setZoom(10.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_77FD_)
					end

					if arg1.interrupted then
						__FUNC_7662_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:setZoom(17.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7662_)
				end

				if arg1.interrupted then
					__FUNC_74E9_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.400000)
				arg0:setZoom(32.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_74E9_)
			end

			if arg1.interrupted then
				__FUNC_734C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_734C_)
		end

		registerVal8:completeAnimation()
		registerVal2.BackCircle:setAlpha(0.000000)
		registerVal2.BackCircle:setZoom(40.000000)
		__FUNC_71F7_(registerVal8, {})
		local function __FUNC_80EB_(arg0, arg1)
			local function __FUNC_8240_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.300000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_8240_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 730.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8240_)
		end

		registerVal9:completeAnimation()
		registerVal2.EquipmentInfoSolid:setAlpha(0.000000)
		__FUNC_80EB_(registerVal9, {})
		local function __FUNC_83F5_(arg0, arg1)
			local function __FUNC_854C_(arg0, arg1)
				local function __FUNC_86E9_(arg0, arg1)
					local function __FUNC_8862_(arg0, arg1)
						local function __FUNC_89FD_(arg0, arg1)
							local function __FUNC_8B76_(arg0, arg1)
								local function __FUNC_8CCC_(arg0, arg1)
									local function __FUNC_8E47_(arg0, arg1)
										local function __FUNC_8F9C_(arg0, arg1)
											local function __FUNC_9117_(arg0, arg1)
												local function __FUNC_926C_(arg0, arg1)
													if not arg1.interrupted then
														arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
													end
													arg0:setAlpha(0.400000)
													arg0:setZoom(1.000000)
													if arg1.interrupted then
														registerVal2.clipFinished(arg0, arg1)
													else
														arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
													end
												end

												if arg1.interrupted then
													__FUNC_926C_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_926C_)
											end

											if arg1.interrupted then
												__FUNC_9117_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.100000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9117_)
										end

										if arg1.interrupted then
											__FUNC_8F9C_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8F9C_)
									end

									if arg1.interrupted then
										__FUNC_8E47_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.400000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8E47_)
								end

								if arg1.interrupted then
									__FUNC_8CCC_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8CCC_)
							end

							if arg1.interrupted then
								__FUNC_8B76_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setZoom(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8B76_)
						end

						if arg1.interrupted then
							__FUNC_89FD_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:setZoom(6.800000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_89FD_)
					end

					if arg1.interrupted then
						__FUNC_8862_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:setZoom(12.600000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8862_)
				end

				if arg1.interrupted then
					__FUNC_86E9_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.400000)
				arg0:setZoom(24.200000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_86E9_)
			end

			if arg1.interrupted then
				__FUNC_854C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_854C_)
		end

		registerVal10:completeAnimation()
		registerVal2.InventoryBox1:setAlpha(0.000000)
		registerVal2.InventoryBox1:setZoom(30.000000)
		__FUNC_83F5_(registerVal10, {})
		local function __FUNC_9443_(arg0, arg1)
			local function __FUNC_9598_(arg0, arg1)
				local function __FUNC_9735_(arg0, arg1)
					local function __FUNC_98AE_(arg0, arg1)
						local function __FUNC_9A49_(arg0, arg1)
							local function __FUNC_9BC2_(arg0, arg1)
								local function __FUNC_9D18_(arg0, arg1)
									local function __FUNC_9E93_(arg0, arg1)
										local function __FUNC_9FE8_(arg0, arg1)
											local function __FUNC_A163_(arg0, arg1)
												local function __FUNC_A2B8_(arg0, arg1)
													if not arg1.interrupted then
														arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
													end
													arg0:setAlpha(0.400000)
													arg0:setZoom(1.000000)
													if arg1.interrupted then
														registerVal2.clipFinished(arg0, arg1)
													else
														arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
													end
												end

												if arg1.interrupted then
													__FUNC_A2B8_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A2B8_)
											end

											if arg1.interrupted then
												__FUNC_A163_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.100000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A163_)
										end

										if arg1.interrupted then
											__FUNC_9FE8_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9FE8_)
									end

									if arg1.interrupted then
										__FUNC_9E93_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.400000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9E93_)
								end

								if arg1.interrupted then
									__FUNC_9D18_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9D18_)
							end

							if arg1.interrupted then
								__FUNC_9BC2_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setZoom(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9BC2_)
						end

						if arg1.interrupted then
							__FUNC_9A49_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:setZoom(6.800000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9A49_)
					end

					if arg1.interrupted then
						__FUNC_98AE_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:setZoom(12.600000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_98AE_)
				end

				if arg1.interrupted then
					__FUNC_9735_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.400000)
				arg0:setZoom(24.200000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9735_)
			end

			if arg1.interrupted then
				__FUNC_9598_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 379.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9598_)
		end

		registerVal11:completeAnimation()
		registerVal2.InventoryBox2:setAlpha(0.000000)
		registerVal2.InventoryBox2:setZoom(30.000000)
		__FUNC_9443_(registerVal11, {})
		local function __FUNC_A48F_(arg0, arg1)
			local function __FUNC_A5E4_(arg0, arg1)
				local function __FUNC_A75F_(arg0, arg1)
					local function __FUNC_A8B4_(arg0, arg1)
						local function __FUNC_AA2F_(arg0, arg1)
							local function __FUNC_AB84_(arg0, arg1)
								local function __FUNC_ACFF_(arg0, arg1)
									local function __FUNC_AE54_(arg0, arg1)
										local function __FUNC_AFCF_(arg0, arg1)
											local function __FUNC_B124_(arg0, arg1)
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
												__FUNC_B124_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B124_)
										end

										if arg1.interrupted then
											__FUNC_AFCF_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.700000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AFCF_)
									end

									if arg1.interrupted then
										__FUNC_AE54_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AE54_)
								end

								if arg1.interrupted then
									__FUNC_ACFF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ACFF_)
							end

							if arg1.interrupted then
								__FUNC_AB84_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AB84_)
						end

						if arg1.interrupted then
							__FUNC_AA2F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AA2F_)
					end

					if arg1.interrupted then
						__FUNC_A8B4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A8B4_)
				end

				if arg1.interrupted then
					__FUNC_A75F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A75F_)
			end

			if arg1.interrupted then
				__FUNC_A5E4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A5E4_)
		end

		registerVal12:completeAnimation()
		registerVal2.EquipmentInfo:setAlpha(0.000000)
		registerVal2.EquipmentInfo:setZoom(0.000000)
		__FUNC_A48F_(registerVal12, {})
		local function __FUNC_B2FB_(arg0, arg1)
			local function __FUNC_B450_(arg0, arg1)
				local function __FUNC_B671_(arg0, arg1)
					local function __FUNC_B862_(arg0, arg1)
						local function __FUNC_BA81_(arg0, arg1)
							local function __FUNC_BC72_(arg0, arg1)
								local function __FUNC_BF03_(arg0, arg1)
									local function __FUNC_C120_(arg0, arg1)
										local function __FUNC_C311_(arg0, arg1)
											local function __FUNC_C5A4_(arg0, arg1)
												local function __FUNC_C795_(arg0, arg1)
													local function __FUNC_CA28_(arg0, arg1)
														local function __FUNC_CC17_(arg0, arg1)
															local function __FUNC_CD6C_(arg0, arg1)
																local function __FUNC_CFCE_(arg0, arg1)
																	local function __FUNC_D124_(arg0, arg1)
																		local function __FUNC_D386_(arg0, arg1)
																			local function __FUNC_D4DC_(arg0, arg1)
																				local function __FUNC_D6CB_(arg0, arg1)
																					local function __FUNC_D820_(arg0, arg1)
																						local function __FUNC_DA0F_(arg0, arg1)
																							local function __FUNC_DC6B_(arg0, arg1)
																								local function __FUNC_DE57_(arg0, arg1)
																									local function __FUNC_E043_(arg0, arg1)
																										local function __FUNC_E198_(arg0, arg1)
																											local function __FUNC_E387_(arg0, arg1)
																												local function __FUNC_E4DC_(arg0, arg1)
																													if not arg1.interrupted then
																														arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																														arg0.BackLine1:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
																														arg0.BackLine2:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
																														arg0.ImgSemiCircle:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
																														arg0.ImgSeperator:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
																														arg0.ImgSeparatorDual:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
																													end
																													arg0.BackLine1:setAlpha(1.000000)
																													arg0.BackLine2:setAlpha(1.000000)
																													arg0.ImgSemiCircle:setAlpha(0.600000)
																													arg0.ImgSemiCircle:setZoom(1.000000)
																													arg0.ImgSeperator:setAlpha(0.800000)
																													arg0.ImgSeperator:setZoom(0.000000)
																													arg0.ImgSeparatorDual:setAlpha(1.000000)
																													if arg1.interrupted then
																														registerVal2.clipFinished(arg0, arg1)
																													else
																														arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																													end
																												end

																												if arg1.interrupted then
																													__FUNC_E4DC_(arg0, arg1)
																													return 
																												end
																												arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E4DC_)
																											end

																											if arg1.interrupted then
																												__FUNC_E387_(arg0, arg1)
																												return 
																											end
																											arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																											arg0.BackLine1:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
																											arg0.BackLine1:setAlpha(0.600000)
																											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E387_)
																										end

																										if arg1.interrupted then
																											__FUNC_E198_(arg0, arg1)
																											return 
																										end
																										arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E198_)
																									end

																									if arg1.interrupted then
																										__FUNC_E043_(arg0, arg1)
																										return 
																									end
																									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																									arg0.BackLine1:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
																									arg0.BackLine1:setAlpha(1.000000)
																									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E043_)
																								end

																								if arg1.interrupted then
																									__FUNC_DE57_(arg0, arg1)
																									return 
																								end
																								arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																								arg0.BackLine2:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
																								arg0.BackLine2:setAlpha(1.000000)
																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DE57_)
																							end

																							if arg1.interrupted then
																								__FUNC_DC6B_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																							arg0.BackLine1:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
																							arg0.BackLine2:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
																							arg0.BackLine1:setAlpha(0.300000)
																							arg0.BackLine2:setAlpha(0.730000)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DC6B_)
																						end

																						if arg1.interrupted then
																							__FUNC_DA0F_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																						arg0.BackLine2:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																						arg0.BackLine2:setAlpha(0.600000)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DA0F_)
																					end

																					if arg1.interrupted then
																						__FUNC_D820_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D820_)
																				end

																				if arg1.interrupted then
																					__FUNC_D6CB_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																				arg0.BackLine1:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
																				arg0.BackLine1:setAlpha(1.000000)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D6CB_)
																			end

																			if arg1.interrupted then
																				__FUNC_D4DC_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D4DC_)
																		end

																		if arg1.interrupted then
																			__FUNC_D386_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																		arg0.BackLine2:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																		arg0.ImgSeperator:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																		arg0.BackLine2:setAlpha(1.000000)
																		arg0.ImgSeperator:setAlpha(0.800000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D386_)
																	end

																	if arg1.interrupted then
																		__FUNC_D124_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D124_)
																end

																if arg1.interrupted then
																	__FUNC_CFCE_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																arg0.BackLine2:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
																arg0.ImgSeperator:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
																arg0.BackLine2:setAlpha(0.300000)
																arg0.ImgSeperator:setAlpha(0.500000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CFCE_)
															end

															if arg1.interrupted then
																__FUNC_CD6C_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CD6C_)
														end

														if arg1.interrupted then
															__FUNC_CC17_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
														arg0.BackLine2:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
														arg0.BackLine2:setAlpha(1.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CC17_)
													end

													if arg1.interrupted then
														__FUNC_CA28_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0.ImgSemiCircle:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0.ImgSeperator:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0.ImgSemiCircle:setAlpha(0.600000)
													arg0.ImgSeperator:setAlpha(0.800000)
													arg0.ImgSeperator:setZoom(0.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CA28_)
												end

												if arg1.interrupted then
													__FUNC_C795_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
												arg0.ImgSeperator:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
												arg0.ImgSeperator:setZoom(2.140000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C795_)
											end

											if arg1.interrupted then
												__FUNC_C5A4_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0.ImgSemiCircle:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0.ImgSeperator:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0.ImgSemiCircle:setAlpha(0.400000)
											arg0.ImgSeperator:setAlpha(0.200000)
											arg0.ImgSeperator:setZoom(6.430000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C5A4_)
										end

										if arg1.interrupted then
											__FUNC_C311_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0.ImgSeperator:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0.ImgSeperator:setZoom(8.570000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C311_)
									end

									if arg1.interrupted then
										__FUNC_C120_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
									arg0.ImgSeperator:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
									arg0.ImgSeperator:setAlpha(0.800000)
									arg0.ImgSeperator:setZoom(12.860000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C120_)
								end

								if arg1.interrupted then
									__FUNC_BF03_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0.ImgSemiCircle:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0.ImgSeparatorDual:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0.ImgSemiCircle:setAlpha(0.600000)
								arg0.ImgSemiCircle:setZoom(1.000000)
								arg0.ImgSeparatorDual:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BF03_)
							end

							if arg1.interrupted then
								__FUNC_BC72_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0.ImgSemiCircle:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0.ImgSemiCircle:setZoom(5.140000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BC72_)
						end

						if arg1.interrupted then
							__FUNC_BA81_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0.ImgSemiCircle:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0.ImgSemiCircle:setAlpha(0.100000)
						arg0.ImgSemiCircle:setZoom(13.430000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BA81_)
					end

					if arg1.interrupted then
						__FUNC_B862_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0.ImgSemiCircle:beginAnimation("subkeyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0.ImgSemiCircle:setZoom(17.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B862_)
				end

				if arg1.interrupted then
					__FUNC_B671_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0.ImgSemiCircle:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0.ImgSemiCircle:setAlpha(0.600000)
				arg0.ImgSemiCircle:setZoom(25.860000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B671_)
			end

			if arg1.interrupted then
				__FUNC_B450_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B450_)
		end

		registerVal13:completeAnimation()
		registerVal13.BackLine1:completeAnimation()
		registerVal13.BackLine2:completeAnimation()
		registerVal13.ImgSemiCircle:completeAnimation()
		registerVal13.ImgSeperator:completeAnimation()
		registerVal13.ImgSeparatorDual:completeAnimation()
		registerVal2.ClipElements.BackLine1:setAlpha(0.000000)
		registerVal2.ClipElements.BackLine2:setAlpha(0.000000)
		registerVal2.ClipElements.ImgSemiCircle:setAlpha(0.000000)
		registerVal2.ClipElements.ImgSemiCircle:setZoom(30.000000)
		registerVal2.ClipElements.ImgSeperator:setAlpha(0.000000)
		registerVal2.ClipElements.ImgSeperator:setZoom(15.000000)
		registerVal2.ClipElements.ImgSeparatorDual:setAlpha(0.000000)
		__FUNC_B2FB_(registerVal13, {})
		local function __FUNC_E90F_(arg0, arg1)
			local function __FUNC_EA64_(arg0, arg1)
				local function __FUNC_EBBC_(arg0, arg1)
					local function __FUNC_EDAB_(arg0, arg1)
						local function __FUNC_EF00_(arg0, arg1)
							local function __FUNC_F0EF_(arg0, arg1)
								local function __FUNC_F244_(arg0, arg1)
									local function __FUNC_F433_(arg0, arg1)
										local function __FUNC_F588_(arg0, arg1)
											local function __FUNC_F777_(arg0, arg1)
												local function __FUNC_F8CC_(arg0, arg1)
													local function __FUNC_FABB_(arg0, arg1)
														local function __FUNC_FC10_(arg0, arg1)
															local function __FUNC_FE02_(arg0, arg1)
																local function __FUNC_FF58_(arg0, arg1)
																	local function __FUNC_1014A_(arg0, arg1)
																		local function __FUNC_102A0_(arg0, arg1)
																			local function __FUNC_10492_(arg0, arg1)
																				local function __FUNC_105E8_(arg0, arg1)
																					local function __FUNC_107DA_(arg0, arg1)
																						local function __FUNC_10930_(arg0, arg1)
																							local function __FUNC_10B22_(arg0, arg1)
																								local function __FUNC_10C78_(arg0, arg1)
																									local function __FUNC_10DD0_(arg0, arg1)
																										local function __FUNC_11026_(arg0, arg1)
																											local function __FUNC_1117C_(arg0, arg1)
																												if not arg1.interrupted then
																													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																													arg0.Clip:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																													arg0.Knife:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																													arg0.TotalAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																													arg0.AmmoColorBar:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																													arg0.ClipMeter:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																												end
																												arg0.Clip:setAlpha(0.700000)
																												arg0.Knife:setAlpha(0.800000)
																												arg0.TotalAmmo:setAlpha(0.900000)
																												arg0.AmmoColorBar:setAlpha(1.000000)
																												arg0.ClipMeter:setAlpha(1.000000)
																												if arg1.interrupted then
																													registerVal2.clipFinished(arg0, arg1)
																												else
																													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																												end
																											end

																											if arg1.interrupted then
																												__FUNC_1117C_(arg0, arg1)
																												return 
																											end
																											arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
																											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1117C_)
																										end

																										if arg1.interrupted then
																											__FUNC_11026_(arg0, arg1)
																											return 
																										end
																										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																										arg0.Clip:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																										arg0.Knife:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																										arg0.Clip:setAlpha(0.700000)
																										arg0.Knife:setAlpha(0.800000)
																										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11026_)
																									end

																									if arg1.interrupted then
																										__FUNC_10DD0_(arg0, arg1)
																										return 
																									end
																									arg0:beginAnimation("keyframe", 390.000000, false, false, CoD.TweenType.Linear)
																									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10DD0_)
																								end

																								if arg1.interrupted then
																									__FUNC_10C78_(arg0, arg1)
																									return 
																								end
																								arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10C78_)
																							end

																							if arg1.interrupted then
																								__FUNC_10B22_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																							arg0.AmmoColorBar:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																							arg0.AmmoColorBar:setAlpha(1.000000)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10B22_)
																						end

																						if arg1.interrupted then
																							__FUNC_10930_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10930_)
																					end

																					if arg1.interrupted then
																						__FUNC_107DA_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																					arg0.AmmoColorBar:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																					arg0.AmmoColorBar:setAlpha(0.600000)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_107DA_)
																				end

																				if arg1.interrupted then
																					__FUNC_105E8_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_105E8_)
																			end

																			if arg1.interrupted then
																				__FUNC_10492_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																			arg0.AmmoColorBar:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																			arg0.AmmoColorBar:setAlpha(1.000000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10492_)
																		end

																		if arg1.interrupted then
																			__FUNC_102A0_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_102A0_)
																	end

																	if arg1.interrupted then
																		__FUNC_1014A_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																	arg0.AmmoColorBar:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																	arg0.AmmoColorBar:setAlpha(0.300000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1014A_)
																end

																if arg1.interrupted then
																	__FUNC_FF58_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FF58_)
															end

															if arg1.interrupted then
																__FUNC_FE02_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
															arg0.AmmoColorBar:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
															arg0.AmmoColorBar:setAlpha(1.000000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FE02_)
														end

														if arg1.interrupted then
															__FUNC_FC10_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FC10_)
													end

													if arg1.interrupted then
														__FUNC_FABB_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0.ClipMeter:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0.ClipMeter:setAlpha(1.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FABB_)
												end

												if arg1.interrupted then
													__FUNC_F8CC_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F8CC_)
											end

											if arg1.interrupted then
												__FUNC_F777_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0.ClipMeter:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0.ClipMeter:setAlpha(0.600000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F777_)
										end

										if arg1.interrupted then
											__FUNC_F588_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F588_)
									end

									if arg1.interrupted then
										__FUNC_F433_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0.ClipMeter:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0.ClipMeter:setAlpha(1.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F433_)
								end

								if arg1.interrupted then
									__FUNC_F244_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F244_)
							end

							if arg1.interrupted then
								__FUNC_F0EF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0.ClipMeter:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0.ClipMeter:setAlpha(0.300000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F0EF_)
						end

						if arg1.interrupted then
							__FUNC_EF00_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EF00_)
					end

					if arg1.interrupted then
						__FUNC_EDAB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0.ClipMeter:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0.ClipMeter:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EDAB_)
				end

				if arg1.interrupted then
					__FUNC_EBBC_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EBBC_)
			end

			if arg1.interrupted then
				__FUNC_EA64_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 589.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EA64_)
		end

		registerVal15:completeAnimation()
		registerVal15.Clip:completeAnimation()
		registerVal15.Knife:completeAnimation()
		registerVal15.TotalAmmo:completeAnimation()
		registerVal15.AmmoColorBar:completeAnimation()
		registerVal15.ClipMeter:completeAnimation()
		registerVal2.Clip.Clip:setAlpha(0.000000)
		registerVal2.Clip.Knife:setAlpha(0.000000)
		registerVal2.Clip.TotalAmmo:setAlpha(0.000000)
		registerVal2.Clip.AmmoColorBar:setAlpha(0.000000)
		registerVal2.Clip.ClipMeter:setAlpha(0.000000)
		__FUNC_E90F_(registerVal15, {})
		local function __FUNC_1155A_(arg0, arg1)
			local function __FUNC_116B0_(arg0, arg1)
				local function __FUNC_1182B_(arg0, arg1)
					local function __FUNC_11980_(arg0, arg1)
						local function __FUNC_11AFB_(arg0, arg1)
							local function __FUNC_11C50_(arg0, arg1)
								local function __FUNC_11DCB_(arg0, arg1)
									local function __FUNC_11F20_(arg0, arg1)
										local function __FUNC_1209B_(arg0, arg1)
											local function __FUNC_121F0_(arg0, arg1)
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
												__FUNC_121F0_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_121F0_)
										end

										if arg1.interrupted then
											__FUNC_1209B_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.700000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1209B_)
									end

									if arg1.interrupted then
										__FUNC_11F20_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11F20_)
								end

								if arg1.interrupted then
									__FUNC_11DCB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11DCB_)
							end

							if arg1.interrupted then
								__FUNC_11C50_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11C50_)
						end

						if arg1.interrupted then
							__FUNC_11AFB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11AFB_)
					end

					if arg1.interrupted then
						__FUNC_11980_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11980_)
				end

				if arg1.interrupted then
					__FUNC_1182B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1182B_)
			end

			if arg1.interrupted then
				__FUNC_116B0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 920.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_116B0_)
		end

		registerVal16:completeAnimation()
		registerVal2.FireRate:setAlpha(0.000000)
		__FUNC_1155A_(registerVal16, {})
		local function __FUNC_123A5_(arg0, arg1)
			local function __FUNC_12534_(arg0, arg1)
				local function __FUNC_126FC_(arg0, arg1)
					local function __FUNC_128E7_(arg0, arg1)
						local function __FUNC_12A5F_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, false, 315.000000, 355.000000)
							arg0:setTopBottom(true, false, 6.000000, 31.000000)
							arg0:setAlpha(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_12A5F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12A5F_)
					end

					if arg1.interrupted then
						__FUNC_128E7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 315.000000, 355.000000)
					arg0:setTopBottom(true, false, 6.000000, 31.000000)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_128E7_)
				end

				if arg1.interrupted then
					__FUNC_126FC_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 314.350000, 354.350000)
				arg0:setTopBottom(true, false, 16.680000, 41.680000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_126FC_)
			end

			if arg1.interrupted then
				__FUNC_12534_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 314.000000, 354.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12534_)
		end

		registerVal17:completeAnimation()
		registerVal2.AmmoWidgetTacModeIndicator:setLeftRight(true, false, 315.000000, 355.000000)
		registerVal2.AmmoWidgetTacModeIndicator:setTopBottom(true, false, 22.500000, 47.500000)
		registerVal2.AmmoWidgetTacModeIndicator:setAlpha(0.000000)
		__FUNC_123A5_(registerVal17, {})
		local function __FUNC_12C81_(arg0, arg1)
			local function __FUNC_12E10_(arg0, arg1)
				local function __FUNC_12FD8_(arg0, arg1)
					local function __FUNC_131C3_(arg0, arg1)
						local function __FUNC_1333B_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, false, 351.340000, 402.340000)
							arg0:setTopBottom(true, false, 6.000000, 31.000000)
							arg0:setAlpha(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_1333B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1333B_)
					end

					if arg1.interrupted then
						__FUNC_131C3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 351.340000, 402.340000)
					arg0:setTopBottom(true, false, 6.000000, 31.000000)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_131C3_)
				end

				if arg1.interrupted then
					__FUNC_12FD8_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 351.980000, 402.980000)
				arg0:setTopBottom(true, false, 16.680000, 41.680000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12FD8_)
			end

			if arg1.interrupted then
				__FUNC_12E10_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 352.340000, 403.340000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12E10_)
		end

		registerVal18:completeAnimation()
		registerVal2.AmmoWidgetEVModeIndicator:setLeftRight(true, false, 351.340000, 402.340000)
		registerVal2.AmmoWidgetEVModeIndicator:setTopBottom(true, false, 22.500000, 47.500000)
		registerVal2.AmmoWidgetEVModeIndicator:setAlpha(0.000000)
		__FUNC_12C81_(registerVal18, {})
		local function __FUNC_1355D_(arg0, arg1)
			local function __FUNC_136B4_(arg0, arg1)
				local function __FUNC_138AF_(arg0, arg1)
					local function __FUNC_13C28_(arg0, arg1)
						local function __FUNC_13F86_(arg0, arg1)
							local function __FUNC_14265_(arg0, arg1)
								local function __FUNC_14568_(arg0, arg1)
									local function __FUNC_147D3_(arg0, arg1)
										local function __FUNC_149E3_(arg0, arg1)
											local function __FUNC_14BD0_(arg0, arg1)
												local function __FUNC_14D28_(arg0, arg1)
													local function __FUNC_14EA3_(arg0, arg1)
														local function __FUNC_14FF8_(arg0, arg1)
															if not arg1.interrupted then
																arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																arg0.AbilityRingBackDuplicate:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																arg0.AbilityRingBackDeplete:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																arg0.AbilityRingBack:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																arg0.AbilityRing:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																arg0.AbilityIconContainer:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
															end
															arg0:setAlpha(1.000000)
															arg0.AbilityRingBackDuplicate:setZoom(0.000000)
															arg0.AbilityRingBackDeplete:setZoom(0.000000)
															arg0.AbilityRingBack:setZoom(0.000000)
															arg0.AbilityRing:setZoom(0.000000)
															arg0.AbilityIconContainer:setZoom(0.000000)
															if arg1.interrupted then
																registerVal2.clipFinished(arg0, arg1)
															else
																arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
															end
														end

														if arg1.interrupted then
															__FUNC_14FF8_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14FF8_)
													end

													if arg1.interrupted then
														__FUNC_14EA3_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.700000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14EA3_)
												end

												if arg1.interrupted then
													__FUNC_14D28_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14D28_)
											end

											if arg1.interrupted then
												__FUNC_14BD0_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0.AbilityRing:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0.AbilityRing:setZoom(0.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14BD0_)
										end

										if arg1.interrupted then
											__FUNC_149E3_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
										arg0.AbilityRing:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(1.000000)
										arg0.AbilityRing:setZoom(5.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_149E3_)
									end

									if arg1.interrupted then
										__FUNC_147D3_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
									arg0.AbilityRing:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
									arg0.AbilityIconContainer:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
									arg0.AbilityRing:setZoom(10.000000)
									arg0.AbilityIconContainer:setZoom(0.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_147D3_)
								end

								if arg1.interrupted then
									__FUNC_14568_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0.AbilityRingBack:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0.AbilityRing:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0.AbilityIconContainer:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0.AbilityRingBack:setZoom(0.000000)
								arg0.AbilityRing:setZoom(20.000000)
								arg0.AbilityIconContainer:setZoom(13.330000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14568_)
							end

							if arg1.interrupted then
								__FUNC_14265_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0.AbilityRingBack:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0.AbilityRing:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0.AbilityIconContainer:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0.AbilityRingBack:setZoom(7.500000)
							arg0.AbilityRing:setZoom(25.000000)
							arg0.AbilityIconContainer:setZoom(20.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14265_)
						end

						if arg1.interrupted then
							__FUNC_13F86_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0.AbilityRingBackDeplete:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0.AbilityRingBack:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0.AbilityRing:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0.AbilityIconContainer:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0.AbilityRingBackDeplete:setZoom(0.000000)
						arg0.AbilityRingBack:setZoom(15.000000)
						arg0.AbilityRing:setZoom(30.000000)
						arg0.AbilityIconContainer:setZoom(26.670000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13F86_)
					end

					if arg1.interrupted then
						__FUNC_13C28_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0.AbilityRingBackDeplete:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0.AbilityRingBack:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0.AbilityRing:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0.AbilityIconContainer:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0.AbilityRingBackDeplete:setZoom(10.000000)
					arg0.AbilityRingBack:setZoom(22.500000)
					arg0.AbilityRing:setZoom(35.000000)
					arg0.AbilityIconContainer:setZoom(33.330000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13C28_)
				end

				if arg1.interrupted then
					__FUNC_138AF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0.AbilityRingBackDeplete:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0.AbilityRingBackDeplete:setZoom(20.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_138AF_)
			end

			if arg1.interrupted then
				__FUNC_136B4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 889.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_136B4_)
		end

		registerVal19:completeAnimation()
		registerVal19.AbilityRingBackDuplicate:completeAnimation()
		registerVal19.AbilityRingBackDeplete:completeAnimation()
		registerVal19.AbilityRingBack:completeAnimation()
		registerVal19.AbilityRing:completeAnimation()
		registerVal19.AbilityIconContainer:completeAnimation()
		registerVal2.AbilityContainer:setAlpha(0.000000)
		registerVal2.AbilityContainer.AbilityRingBackDuplicate:setZoom(0.000000)
		registerVal2.AbilityContainer.AbilityRingBackDeplete:setZoom(30.000000)
		registerVal2.AbilityContainer.AbilityRingBack:setZoom(30.000000)
		registerVal2.AbilityContainer.AbilityRing:setZoom(40.000000)
		registerVal2.AbilityContainer.AbilityIconContainer:setZoom(40.000000)
		__FUNC_1355D_(registerVal19, {})
		local function __FUNC_1541E_(arg0, arg1)
			local function __FUNC_155CD_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 610.000000, true, true, CoD.TweenType.Back)
				end
				arg0:setLeftRight(true, false, 310.000000, 314.000000)
				arg0:setTopBottom(true, false, 11.000000, 15.000000)
				arg0:setAlpha(0.600000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_155CD_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			arg0:setTopBottom(true, false, 11.000000, 15.000000)
			arg0:setAlpha(0.600000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_155CD_)
		end

		registerVal20:completeAnimation()
		registerVal2.Dot1:setLeftRight(true, false, 391.000000, 395.000000)
		registerVal2.Dot1:setTopBottom(true, false, 70.000000, 74.000000)
		registerVal2.Dot1:setAlpha(0.000000)
		__FUNC_1541E_(registerVal20, {})
		local function __FUNC_157EF_(arg0, arg1)
			local function __FUNC_1599D_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 610.000000, true, true, CoD.TweenType.Back)
				end
				arg0:setLeftRight(true, false, 217.000000, 221.000000)
				arg0:setTopBottom(true, false, 11.000000, 15.000000)
				arg0:setAlpha(0.600000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1599D_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			arg0:setTopBottom(true, false, 11.000000, 15.000000)
			arg0:setAlpha(0.600000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1599D_)
		end

		registerVal21:completeAnimation()
		registerVal2.Dot2:setLeftRight(true, false, 392.000000, 396.000000)
		registerVal2.Dot2:setTopBottom(true, false, 70.000000, 74.000000)
		registerVal2.Dot2:setAlpha(0.000000)
		__FUNC_157EF_(registerVal21, {})
		local function __FUNC_15BBF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, false, 390.000000, 394.000000)
			arg0:setTopBottom(true, false, 11.000000, 15.000000)
			arg0:setAlpha(0.600000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal22:completeAnimation()
		registerVal2.Dot3:setLeftRight(true, false, 390.000000, 394.000000)
		registerVal2.Dot3:setTopBottom(true, false, 70.000000, 74.000000)
		registerVal2.Dot3:setAlpha(0.000000)
		__FUNC_15BBF_(registerVal22, {})
		local function __FUNC_15DDF_(arg0, arg1)
			local function __FUNC_15F8D_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 610.000000, true, true, CoD.TweenType.Back)
				end
				arg0:setLeftRight(true, false, 310.000000, 314.000000)
				arg0:setTopBottom(true, false, 35.000000, 39.000000)
				arg0:setAlpha(0.600000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_15F8D_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			arg0:setTopBottom(true, false, 35.000000, 39.000000)
			arg0:setAlpha(0.600000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15F8D_)
		end

		registerVal23:completeAnimation()
		registerVal2.Dot4:setLeftRight(true, false, 391.000000, 395.000000)
		registerVal2.Dot4:setTopBottom(true, false, 70.000000, 74.000000)
		registerVal2.Dot4:setAlpha(0.000000)
		__FUNC_15DDF_(registerVal23, {})
		local function __FUNC_161AF_(arg0, arg1)
			local function __FUNC_1635D_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 610.000000, true, true, CoD.TweenType.Back)
				end
				arg0:setLeftRight(true, false, 217.000000, 221.000000)
				arg0:setTopBottom(true, false, 35.000000, 39.000000)
				arg0:setAlpha(0.600000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1635D_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			arg0:setTopBottom(true, false, 35.000000, 39.000000)
			arg0:setAlpha(0.600000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1635D_)
		end

		registerVal24:completeAnimation()
		registerVal2.Dot5:setLeftRight(true, false, 392.000000, 396.000000)
		registerVal2.Dot5:setTopBottom(true, false, 70.000000, 74.000000)
		registerVal2.Dot5:setAlpha(0.000000)
		__FUNC_161AF_(registerVal24, {})
		local function __FUNC_1657F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, false, 390.000000, 394.000000)
			arg0:setTopBottom(true, false, 35.000000, 39.000000)
			arg0:setAlpha(0.600000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal25:completeAnimation()
		registerVal2.Dot6:setLeftRight(true, false, 390.000000, 394.000000)
		registerVal2.Dot6:setTopBottom(true, false, 70.000000, 74.000000)
		registerVal2.Dot6:setAlpha(0.000000)
		__FUNC_1657F_(registerVal25, {})
		local function __FUNC_1679F_(arg0, arg1)
			local function __FUNC_1694D_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 610.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 310.000000, 314.000000)
				arg0:setTopBottom(true, false, 110.000000, 114.000000)
				arg0:setAlpha(0.600000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1694D_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			arg0:setTopBottom(true, false, 110.000000, 114.000000)
			arg0:setAlpha(0.600000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1694D_)
		end

		registerVal26:completeAnimation()
		registerVal2.Dot7:setLeftRight(true, false, 391.000000, 395.000000)
		registerVal2.Dot7:setTopBottom(true, false, 70.000000, 74.000000)
		registerVal2.Dot7:setAlpha(0.000000)
		__FUNC_1679F_(registerVal26, {})
		local function __FUNC_16B71_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, false, 390.000000, 394.000000)
			arg0:setTopBottom(true, false, 110.000000, 114.000000)
			arg0:setAlpha(0.600000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal27:completeAnimation()
		registerVal2.Dot8:setLeftRight(true, false, 390.000000, 394.000000)
		registerVal2.Dot8:setTopBottom(true, false, 70.000000, 74.000000)
		registerVal2.Dot8:setAlpha(0.000000)
		__FUNC_16B71_(registerVal27, {})
		local function __FUNC_16D93_(arg0, arg1)
			local function __FUNC_16EE8_(arg0, arg1)
				local function __FUNC_170D3_(arg0, arg1)
					local function __FUNC_17228_(arg0, arg1)
						local function __FUNC_17413_(arg0, arg1)
							local function __FUNC_17568_(arg0, arg1)
								local function __FUNC_176C0_(arg0, arg1)
									local function __FUNC_178AB_(arg0, arg1)
										local function __FUNC_17A00_(arg0, arg1)
											local function __FUNC_17BEB_(arg0, arg1)
												local function __FUNC_17D40_(arg0, arg1)
													local function __FUNC_17FC9_(arg0, arg1)
														local function __FUNC_181B6_(arg0, arg1)
															local function __FUNC_183D1_(arg0, arg1)
																local function __FUNC_185BE_(arg0, arg1)
																	local function __FUNC_18714_(arg0, arg1)
																		local function __FUNC_18903_(arg0, arg1)
																			local function __FUNC_18A58_(arg0, arg1)
																				local function __FUNC_18C47_(arg0, arg1)
																					local function __FUNC_18D9C_(arg0, arg1)
																						local function __FUNC_18F8B_(arg0, arg1)
																							local function __FUNC_190E0_(arg0, arg1)
																								local function __FUNC_1933A_(arg0, arg1)
																									local function __FUNC_19490_(arg0, arg1)
																										local function __FUNC_195E8_(arg0, arg1)
																											local function __FUNC_19842_(arg0, arg1)
																												local function __FUNC_19998_(arg0, arg1)
																													local function __FUNC_19AF0_(arg0, arg1)
																														local function __FUNC_19D4A_(arg0, arg1)
																															local function __FUNC_19EA0_(arg0, arg1)
																																local function __FUNC_19FF8_(arg0, arg1)
																																	local function __FUNC_1A2D1_(arg0, arg1)
																																		local function __FUNC_1A428_(arg0, arg1)
																																			local function __FUNC_1A580_(arg0, arg1)
																																				local function __FUNC_1A76F_(arg0, arg1)
																																					local function __FUNC_1A8C4_(arg0, arg1)
																																						local function __FUNC_1AAB3_(arg0, arg1)
																																							local function __FUNC_1AC08_(arg0, arg1)
																																								local function __FUNC_1ADF7_(arg0, arg1)
																																									local function __FUNC_1AF4C_(arg0, arg1)
																																										local function __FUNC_1B170_(arg0, arg1)
																																											local function __FUNC_1B2C8_(arg0, arg1)
																																												local function __FUNC_1B420_(arg0, arg1)
																																													local function __FUNC_1B578_(arg0, arg1)
																																														local function __FUNC_1B6D0_(arg0, arg1)
																																															local function __FUNC_1B92A_(arg0, arg1)
																																																local function __FUNC_1BB82_(arg0, arg1)
																																																	local function __FUNC_1BDDA_(arg0, arg1)
																																																		local function __FUNC_1BF30_(arg0, arg1)
																																																			local function __FUNC_1C088_(arg0, arg1)
																																																				local function __FUNC_1C2E2_(arg0, arg1)
																																																					local function __FUNC_1C438_(arg0, arg1)
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
																																																						__FUNC_1C438_(arg0, arg1)
																																																						return 
																																																					end
																																																					arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																																																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C438_)
																																																				end

																																																				if arg1.interrupted then
																																																					__FUNC_1C2E2_(arg0, arg1)
																																																					return 
																																																				end
																																																				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																																																				arg0.TotalAmmo.TotalAmmoLbl:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
																																																				arg0.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("250"))
																																																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C2E2_)
																																																			end

																																																			if arg1.interrupted then
																																																				__FUNC_1C088_(arg0, arg1)
																																																				return 
																																																			end
																																																			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C088_)
																																																		end

																																																		if arg1.interrupted then
																																																			__FUNC_1BF30_(arg0, arg1)
																																																			return 
																																																		end
																																																		arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																																																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BF30_)
																																																	end

																																																	if arg1.interrupted then
																																																		__FUNC_1BDDA_(arg0, arg1)
																																																		return 
																																																	end
																																																	arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																																																	arg0.TotalAmmo.TotalAmmoLbl:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
																																																	arg0.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("500"))
																																																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BDDA_)
																																																end

																																																if arg1.interrupted then
																																																	__FUNC_1BB82_(arg0, arg1)
																																																	return 
																																																end
																																																arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																																																arg0.TotalAmmo.TotalAmmoLbl:beginAnimation("subkeyframe", 29.000000, false, false, CoD.TweenType.Linear)
																																																arg0.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("---"))
																																																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BB82_)
																																															end

																																															if arg1.interrupted then
																																																__FUNC_1B92A_(arg0, arg1)
																																																return 
																																															end
																																															arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																																															arg0.TotalAmmo.TotalAmmoLbl:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
																																															arg0.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("750"))
																																															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B92A_)
																																														end

																																														if arg1.interrupted then
																																															__FUNC_1B6D0_(arg0, arg1)
																																															return 
																																														end
																																														arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																																														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B6D0_)
																																													end

																																													if arg1.interrupted then
																																														__FUNC_1B578_(arg0, arg1)
																																														return 
																																													end
																																													arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
																																													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B578_)
																																												end

																																												if arg1.interrupted then
																																													__FUNC_1B420_(arg0, arg1)
																																													return 
																																												end
																																												arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
																																												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B420_)
																																											end

																																											if arg1.interrupted then
																																												__FUNC_1B2C8_(arg0, arg1)
																																												return 
																																											end
																																											arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
																																											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B2C8_)
																																										end

																																										if arg1.interrupted then
																																											__FUNC_1B170_(arg0, arg1)
																																											return 
																																										end
																																										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																										arg0.TotalAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																										arg0.TotalAmmo:setRGB(1.000000, 1.000000, 1.000000)
																																										arg0.TotalAmmo:setAlpha(0.900000)
																																										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B170_)
																																									end

																																									if arg1.interrupted then
																																										__FUNC_1AF4C_(arg0, arg1)
																																										return 
																																									end
																																									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																																									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AF4C_)
																																								end

																																								if arg1.interrupted then
																																									__FUNC_1ADF7_(arg0, arg1)
																																									return 
																																								end
																																								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																								arg0.TotalAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																								arg0.TotalAmmo:setAlpha(0.000000)
																																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1ADF7_)
																																							end

																																							if arg1.interrupted then
																																								__FUNC_1AC08_(arg0, arg1)
																																								return 
																																							end
																																							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AC08_)
																																						end

																																						if arg1.interrupted then
																																							__FUNC_1AAB3_(arg0, arg1)
																																							return 
																																						end
																																						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																						arg0.TotalAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																						arg0.TotalAmmo:setAlpha(0.900000)
																																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AAB3_)
																																					end

																																					if arg1.interrupted then
																																						__FUNC_1A8C4_(arg0, arg1)
																																						return 
																																					end
																																					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A8C4_)
																																				end

																																				if arg1.interrupted then
																																					__FUNC_1A76F_(arg0, arg1)
																																					return 
																																				end
																																				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																				arg0.TotalAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																				arg0.TotalAmmo:setAlpha(0.000000)
																																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A76F_)
																																			end

																																			if arg1.interrupted then
																																				__FUNC_1A580_(arg0, arg1)
																																				return 
																																			end
																																			arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A580_)
																																		end

																																		if arg1.interrupted then
																																			__FUNC_1A428_(arg0, arg1)
																																			return 
																																		end
																																		arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A428_)
																																	end

																																	if arg1.interrupted then
																																		__FUNC_1A2D1_(arg0, arg1)
																																		return 
																																	end
																																	arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																	arg0.TotalAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																	arg0.TotalAmmo.TotalAmmoLbl:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																	arg0.TotalAmmo:setRGB(0.960000, 0.820000, 0.220000)
																																	arg0.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("999"))
																																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A2D1_)
																																end

																																if arg1.interrupted then
																																	__FUNC_19FF8_(arg0, arg1)
																																	return 
																																end
																																arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19FF8_)
																															end

																															if arg1.interrupted then
																																__FUNC_19EA0_(arg0, arg1)
																																return 
																															end
																															arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19EA0_)
																														end

																														if arg1.interrupted then
																															__FUNC_19D4A_(arg0, arg1)
																															return 
																														end
																														arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																														arg0.TotalAmmo.TotalAmmoLbl:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																														arg0.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("750"))
																														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19D4A_)
																													end

																													if arg1.interrupted then
																														__FUNC_19AF0_(arg0, arg1)
																														return 
																													end
																													arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19AF0_)
																												end

																												if arg1.interrupted then
																													__FUNC_19998_(arg0, arg1)
																													return 
																												end
																												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19998_)
																											end

																											if arg1.interrupted then
																												__FUNC_19842_(arg0, arg1)
																												return 
																											end
																											arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																											arg0.TotalAmmo.TotalAmmoLbl:beginAnimation("subkeyframe", 20.000000, false, false, CoD.TweenType.Linear)
																											arg0.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("500"))
																											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19842_)
																										end

																										if arg1.interrupted then
																											__FUNC_195E8_(arg0, arg1)
																											return 
																										end
																										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_195E8_)
																									end

																									if arg1.interrupted then
																										__FUNC_19490_(arg0, arg1)
																										return 
																									end
																									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19490_)
																								end

																								if arg1.interrupted then
																									__FUNC_1933A_(arg0, arg1)
																									return 
																								end
																								arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																								arg0.TotalAmmo.TotalAmmoLbl:beginAnimation("subkeyframe", 20.000000, false, false, CoD.TweenType.Linear)
																								arg0.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("250"))
																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1933A_)
																							end

																							if arg1.interrupted then
																								__FUNC_190E0_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_190E0_)
																						end

																						if arg1.interrupted then
																							__FUNC_18F8B_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																						arg0.TotalAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																						arg0.TotalAmmo:setAlpha(0.900000)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18F8B_)
																					end

																					if arg1.interrupted then
																						__FUNC_18D9C_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18D9C_)
																				end

																				if arg1.interrupted then
																					__FUNC_18C47_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																				arg0.TotalAmmo:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
																				arg0.TotalAmmo:setAlpha(0.500000)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18C47_)
																			end

																			if arg1.interrupted then
																				__FUNC_18A58_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18A58_)
																		end

																		if arg1.interrupted then
																			__FUNC_18903_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																		arg0.TotalAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																		arg0.TotalAmmo:setAlpha(0.900000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18903_)
																	end

																	if arg1.interrupted then
																		__FUNC_18714_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18714_)
																end

																if arg1.interrupted then
																	__FUNC_185BE_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																arg0.TotalAmmo:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
																arg0.TotalAmmo:setZoom(0.000000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_185BE_)
															end

															if arg1.interrupted then
																__FUNC_183D1_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
															arg0.TotalAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
															arg0.TotalAmmo:setAlpha(0.300000)
															arg0.TotalAmmo:setZoom(6.000000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_183D1_)
														end

														if arg1.interrupted then
															__FUNC_181B6_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
														arg0.TotalAmmo:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
														arg0.TotalAmmo:setZoom(12.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_181B6_)
													end

													if arg1.interrupted then
														__FUNC_17FC9_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0.Knife:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0.TotalAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0.Knife:setAlpha(0.800000)
													arg0.TotalAmmo:setAlpha(0.900000)
													arg0.TotalAmmo:setZoom(24.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17FC9_)
												end

												if arg1.interrupted then
													__FUNC_17D40_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17D40_)
											end

											if arg1.interrupted then
												__FUNC_17BEB_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0.Knife:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0.Knife:setAlpha(0.500000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17BEB_)
										end

										if arg1.interrupted then
											__FUNC_17A00_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17A00_)
									end

									if arg1.interrupted then
										__FUNC_178AB_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0.Knife:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0.Knife:setAlpha(0.800000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_178AB_)
								end

								if arg1.interrupted then
									__FUNC_176C0_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_176C0_)
							end

							if arg1.interrupted then
								__FUNC_17568_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17568_)
						end

						if arg1.interrupted then
							__FUNC_17413_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0.Knife:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0.Knife:setAlpha(0.300000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17413_)
					end

					if arg1.interrupted then
						__FUNC_17228_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17228_)
				end

				if arg1.interrupted then
					__FUNC_170D3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0.Knife:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0.Knife:setAlpha(0.800000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_170D3_)
			end

			if arg1.interrupted then
				__FUNC_16EE8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16EE8_)
		end

		registerVal28:completeAnimation()
		registerVal28.Knife:completeAnimation()
		registerVal28.TotalAmmo:completeAnimation()
		registerVal28.TotalAmmo.TotalAmmoLbl:completeAnimation()
		registerVal2.ClipDummy.Knife:setAlpha(0.000000)
		registerVal2.ClipDummy.TotalAmmo:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ClipDummy.TotalAmmo:setAlpha(0.000000)
		registerVal2.ClipDummy.TotalAmmo:setZoom(30.000000)
		registerVal2.ClipDummy.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("000"))
		__FUNC_16D93_(registerVal28, {})
	end

	registerVal30.HudStart = __FUNC_47A6_
	local function __FUNC_1C805_()
		registerVal2:setupElementClipCounter(17.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelContainer:setLeftRight(false, true, 22.670000, 271.670000)
		registerVal2.PanelContainer:setTopBottom(false, false, -47.150000, 58.520000)
		registerVal2.PanelContainer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_1DAB8_(arg0, arg1)
			local function __FUNC_1DC10_(arg0, arg1)
				local function __FUNC_1DD8B_(arg0, arg1)
					local function __FUNC_1DEE0_(arg0, arg1)
						local function __FUNC_1E05B_(arg0, arg1)
							local function __FUNC_1E1B0_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, false, 242.050000, 470.050000)
								arg0:setTopBottom(true, false, 19.850000, 125.850000)
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_1E1B0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E1B0_)
						end

						if arg1.interrupted then
							__FUNC_1E05B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E05B_)
					end

					if arg1.interrupted then
						__FUNC_1DEE0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DEE0_)
				end

				if arg1.interrupted then
					__FUNC_1DD8B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.330000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DD8B_)
			end

			if arg1.interrupted then
				__FUNC_1DC10_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DC10_)
		end

		registerVal4:completeAnimation()
		registerVal2.PrologueAmmoWidgetPanelContainer:setLeftRight(true, false, 242.050000, 470.050000)
		registerVal2.PrologueAmmoWidgetPanelContainer:setTopBottom(true, false, 19.850000, 125.850000)
		registerVal2.PrologueAmmoWidgetPanelContainer:setAlpha(0.000000)
		__FUNC_1DAB8_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.UIGlowWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_1E3D5_(arg0, arg1)
			local function __FUNC_1E52C_(arg0, arg1)
				local function __FUNC_1E6A7_(arg0, arg1)
					local function __FUNC_1E7FC_(arg0, arg1)
						local function __FUNC_1E977_(arg0, arg1)
							local function __FUNC_1EACC_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, false, 221.920000, 394.810000)
								arg0:setTopBottom(true, false, -8.090000, 141.230000)
								arg0:setAlpha(0.300000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_1EACC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EACC_)
						end

						if arg1.interrupted then
							__FUNC_1E977_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E977_)
					end

					if arg1.interrupted then
						__FUNC_1E7FC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E7FC_)
				end

				if arg1.interrupted then
					__FUNC_1E6A7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.300000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E6A7_)
			end

			if arg1.interrupted then
				__FUNC_1E52C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E52C_)
		end

		registerVal6:completeAnimation()
		registerVal2.PrologueGlow:setLeftRight(true, false, 221.920000, 394.810000)
		registerVal2.PrologueGlow:setTopBottom(true, false, -8.090000, 141.230000)
		registerVal2.PrologueGlow:setAlpha(0.000000)
		__FUNC_1E3D5_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BackCircleOutter:setLeftRight(true, false, 594.090000, 701.080000)
		registerVal2.BackCircleOutter:setTopBottom(true, false, 20.000000, 124.000000)
		registerVal2.BackCircleOutter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BackCircle:setLeftRight(true, false, 601.840000, 696.840000)
		registerVal2.BackCircle:setTopBottom(true, false, 12.740000, 118.750000)
		registerVal2.BackCircle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_1ECF1_(arg0, arg1)
			local function __FUNC_1EE48_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 159.000000, true, false, CoD.TweenType.Bounce)
				end
				arg0:setLeftRight(true, false, 278.000000, 368.000000)
				arg0:setTopBottom(true, false, 12.740000, 54.740000)
				arg0:setAlpha(0.200000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1EE48_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 490.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EE48_)
		end

		registerVal9:completeAnimation()
		registerVal2.EquipmentInfoSolid:setLeftRight(true, false, 278.000000, 368.000000)
		registerVal2.EquipmentInfoSolid:setTopBottom(true, false, 12.740000, 54.740000)
		registerVal2.EquipmentInfoSolid:setAlpha(0.000000)
		__FUNC_1ECF1_(registerVal9, {})
		local function __FUNC_1F06D_(arg0, arg1)
			local function __FUNC_1F1C4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 283.080000, 321.750000)
				arg0:setTopBottom(true, false, 14.750000, 50.080000)
				arg0:setAlpha(0.200000)
				arg0:setZoom(-10.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1F1C4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F1C4_)
		end

		registerVal10:completeAnimation()
		registerVal2.InventoryBox1:setLeftRight(true, false, 283.080000, 321.750000)
		registerVal2.InventoryBox1:setTopBottom(true, false, 14.750000, 50.080000)
		registerVal2.InventoryBox1:setAlpha(0.000000)
		registerVal2.InventoryBox1:setZoom(-10.000000)
		__FUNC_1F06D_(registerVal10, {})
		local function __FUNC_1F40B_(arg0, arg1)
			local function __FUNC_1F560_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 323.750000, 362.420000)
				arg0:setTopBottom(true, false, 14.750000, 50.080000)
				arg0:setAlpha(0.200000)
				arg0:setZoom(-10.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1F560_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F560_)
		end

		registerVal11:completeAnimation()
		registerVal2.InventoryBox2:setLeftRight(true, false, 323.750000, 362.420000)
		registerVal2.InventoryBox2:setTopBottom(true, false, 14.750000, 50.080000)
		registerVal2.InventoryBox2:setAlpha(0.000000)
		registerVal2.InventoryBox2:setZoom(-10.000000)
		__FUNC_1F40B_(registerVal11, {})
		local function __FUNC_1F7A7_(arg0, arg1)
			local function __FUNC_1F8FC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 278.000000, 368.000000)
				arg0:setTopBottom(true, false, 12.740000, 54.740000)
				arg0:setRGB(0.680000, 0.860000, 0.910000)
				arg0:setAlpha(1.000000)
				arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
				arg0:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
				arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
				arg0:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
				arg0:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
				arg0:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1F8FC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F8FC_)
		end

		registerVal12:completeAnimation()
		registerVal2.EquipmentInfo:setLeftRight(true, false, 278.000000, 368.000000)
		registerVal2.EquipmentInfo:setTopBottom(true, false, 12.740000, 54.740000)
		registerVal2.EquipmentInfo:setRGB(0.680000, 0.860000, 0.910000)
		registerVal2.EquipmentInfo:setAlpha(0.000000)
		registerVal2.EquipmentInfo:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
		registerVal2.EquipmentInfo:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
		registerVal2.EquipmentInfo:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.EquipmentInfo:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.EquipmentInfo:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.EquipmentInfo:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_1F7A7_(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal13.BackLine1:completeAnimation()
		registerVal13.BackLine2:completeAnimation()
		registerVal13.ImgSemiCircle:completeAnimation()
		registerVal13.ImgSeperator:completeAnimation()
		registerVal13.ImgSeparatorDual:completeAnimation()
		registerVal2.ClipElements:setLeftRight(true, false, 212.180000, 372.170000)
		registerVal2.ClipElements:setTopBottom(true, false, 43.250000, 100.250000)
		registerVal2.ClipElements:setRGB(0.770000, 0.910000, 0.930000)
		registerVal2.ClipElements.BackLine1:setAlpha(0.000000)
		registerVal2.ClipElements.BackLine2:setAlpha(0.000000)
		registerVal2.ClipElements.ImgSemiCircle:setAlpha(0.000000)
		registerVal2.ClipElements.ImgSemiCircle:setZoom(30.000000)
		registerVal2.ClipElements.ImgSeperator:setAlpha(0.000000)
		registerVal2.ClipElements.ImgSeperator:setZoom(15.000000)
		registerVal2.ClipElements.ImgSeparatorDual:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		local function __FUNC_1FCAF_(arg0, arg1)
			local function __FUNC_1FE04_(arg0, arg1)
				local function __FUNC_1FF7F_(arg0, arg1)
					local function __FUNC_200F7_(arg0, arg1)
						local function __FUNC_2026F_(arg0, arg1)
							local function __FUNC_203E7_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_203E7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_203E7_)
						end

						if arg1.interrupted then
							__FUNC_2026F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.260000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2026F_)
					end

					if arg1.interrupted then
						__FUNC_200F7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_200F7_)
				end

				if arg1.interrupted then
					__FUNC_1FF7F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FF7F_)
			end

			if arg1.interrupted then
				__FUNC_1FE04_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 379.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FE04_)
		end

		registerVal14:completeAnimation()
		registerVal2.CPPrologueClipElements:setAlpha(0.000000)
		__FUNC_1FCAF_(registerVal14, {})
		local function __FUNC_20599_(arg0, arg1)
			local function __FUNC_206F0_(arg0, arg1)
				local function __FUNC_20848_(arg0, arg1)
					local function __FUNC_20A9E_(arg0, arg1)
						local function __FUNC_20C86_(arg0, arg1)
							local function __FUNC_20E6E_(arg0, arg1)
								local function __FUNC_20FC4_(arg0, arg1)
									local function __FUNC_211B3_(arg0, arg1)
										local function __FUNC_2139F_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
												arg0.Clip:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
												arg0.Knife:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
												arg0.TotalAmmo:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
												arg0.AmmoColorBar:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
												arg0.ClipMeter:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setLeftRight(true, false, 227.680000, 362.670000)
											arg0:setTopBottom(true, false, 41.250000, 98.250000)
											arg0:setRGB(0.770000, 0.910000, 0.930000)
											arg0.Clip:setAlpha(0.700000)
											arg0.Knife:setAlpha(0.800000)
											arg0.TotalAmmo:setAlpha(0.900000)
											arg0.AmmoColorBar:setAlpha(0.000000)
											arg0.ClipMeter:setAlpha(0.000000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_2139F_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0.TotalAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0.TotalAmmo:setAlpha(0.580000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2139F_)
									end

									if arg1.interrupted then
										__FUNC_211B3_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0.TotalAmmo:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0.TotalAmmo:setAlpha(0.900000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_211B3_)
								end

								if arg1.interrupted then
									__FUNC_20FC4_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20FC4_)
							end

							if arg1.interrupted then
								__FUNC_20E6E_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0.Clip:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0.Clip:setAlpha(0.700000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20E6E_)
						end

						if arg1.interrupted then
							__FUNC_20C86_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0.Clip:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0.Clip:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20C86_)
					end

					if arg1.interrupted then
						__FUNC_20A9E_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0.Clip:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0.Knife:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0.Clip:setAlpha(0.700000)
					arg0.Knife:setAlpha(0.800000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20A9E_)
				end

				if arg1.interrupted then
					__FUNC_20848_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20848_)
			end

			if arg1.interrupted then
				__FUNC_206F0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_206F0_)
		end

		registerVal15:completeAnimation()
		registerVal15.Clip:completeAnimation()
		registerVal15.Knife:completeAnimation()
		registerVal15.TotalAmmo:completeAnimation()
		registerVal15.AmmoColorBar:completeAnimation()
		registerVal15.ClipMeter:completeAnimation()
		registerVal2.Clip:setLeftRight(true, false, 227.680000, 362.670000)
		registerVal2.Clip:setTopBottom(true, false, 41.250000, 98.250000)
		registerVal2.Clip:setRGB(0.770000, 0.910000, 0.930000)
		registerVal2.Clip.Clip:setAlpha(0.000000)
		registerVal2.Clip.Knife:setAlpha(0.000000)
		registerVal2.Clip.TotalAmmo:setAlpha(0.000000)
		registerVal2.Clip.AmmoColorBar:setAlpha(0.000000)
		registerVal2.Clip.ClipMeter:setAlpha(0.000000)
		__FUNC_20599_(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FireRate:setLeftRight(true, false, 39.000000, 355.000000)
		registerVal2.FireRate:setTopBottom(true, false, 99.410000, 117.410000)
		registerVal2.FireRate:setRGB(0.770000, 0.910000, 0.930000)
		registerVal2.FireRate:setAlpha(0.750000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.AmmoWidgetTacModeIndicator:setLeftRight(true, false, 601.840000, 641.840000)
		registerVal2.AmmoWidgetTacModeIndicator:setTopBottom(true, false, 7.410000, 32.410000)
		registerVal2.AmmoWidgetTacModeIndicator:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.AmmoWidgetEVModeIndicator:setLeftRight(true, false, 638.170000, 689.170000)
		registerVal2.AmmoWidgetEVModeIndicator:setTopBottom(true, false, 7.410000, 32.410000)
		registerVal2.AmmoWidgetEVModeIndicator:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.AbilityContainer:setLeftRight(true, false, 594.090000, 715.590000)
		registerVal2.AbilityContainer:setTopBottom(true, false, 11.000000, 132.500000)
		registerVal2.AbilityContainer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal30.HudStartPrologue = __FUNC_1C805_
	registerVal29.DefaultState = registerVal30
	registerVal30 = {}
	local function __FUNC_2181D_()
		registerVal2:setupElementClipCounter(23.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelContainer:setLeftRight(false, true, -246.330000, 2.670000)
		registerVal2.PanelContainer:setTopBottom(false, false, -47.000000, 58.670000)
		registerVal2.PanelContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.UIGlowWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.BackCircleOutter:setAlpha(0.350000)
		registerVal2.BackCircleOutter:setZoom(-8.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BackCircle:setAlpha(0.400000)
		registerVal2.BackCircle:setZoom(-5.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.EquipmentInfoSolid:setAlpha(0.300000)
		registerVal2.EquipmentInfoSolid:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.InventoryBox1:setAlpha(0.400000)
		registerVal2.InventoryBox1:setZoom(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.InventoryBox2:setAlpha(0.400000)
		registerVal2.InventoryBox2:setZoom(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.EquipmentInfo:setAlpha(1.000000)
		registerVal2.EquipmentInfo:setZoom(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal13.BackLine1:completeAnimation()
		registerVal13.BackLine2:completeAnimation()
		registerVal13.ImgSemiCircle:completeAnimation()
		registerVal13.ImgSeperator:completeAnimation()
		registerVal13.ImgSeparatorDual:completeAnimation()
		registerVal2.ClipElements.BackLine1:setAlpha(1.000000)
		registerVal2.ClipElements.BackLine2:setAlpha(1.000000)
		registerVal2.ClipElements.ImgSemiCircle:setAlpha(0.600000)
		registerVal2.ClipElements.ImgSemiCircle:setZoom(1.000000)
		registerVal2.ClipElements.ImgSeperator:setAlpha(0.800000)
		registerVal2.ClipElements.ImgSeperator:setZoom(0.000000)
		registerVal2.ClipElements.ImgSeparatorDual:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal15:completeAnimation()
		registerVal15.Clip:completeAnimation()
		registerVal15.Knife:completeAnimation()
		registerVal15.TotalAmmo:completeAnimation()
		registerVal15.AmmoColorBar:completeAnimation()
		registerVal15.ClipMeter:completeAnimation()
		registerVal2.Clip.Clip:setAlpha(0.700000)
		registerVal2.Clip.Knife:setAlpha(0.800000)
		registerVal2.Clip.TotalAmmo:setAlpha(0.900000)
		registerVal2.Clip.AmmoColorBar:setAlpha(1.000000)
		registerVal2.Clip.ClipMeter:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FireRate:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.AmmoWidgetTacModeIndicator:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.AmmoWidgetEVModeIndicator:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal19.AbilityRingBackDuplicate:completeAnimation()
		registerVal19.AbilityRingBackDeplete:completeAnimation()
		registerVal19.AbilityRingBack:completeAnimation()
		registerVal19.AbilityRing:completeAnimation()
		registerVal19.AbilityIconContainer:completeAnimation()
		registerVal2.AbilityContainer:setAlpha(1.000000)
		registerVal2.AbilityContainer.AbilityRingBackDuplicate:setZoom(0.000000)
		registerVal2.AbilityContainer.AbilityRingBackDeplete:setZoom(0.000000)
		registerVal2.AbilityContainer.AbilityRingBack:setZoom(0.000000)
		registerVal2.AbilityContainer.AbilityRing:setZoom(0.000000)
		registerVal2.AbilityContainer.AbilityIconContainer:setZoom(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.Dot1:setLeftRight(true, false, 310.000000, 314.000000)
		registerVal2.Dot1:setTopBottom(true, false, 11.000000, 15.000000)
		registerVal2.Dot1:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.Dot2:setLeftRight(true, false, 217.000000, 221.000000)
		registerVal2.Dot2:setTopBottom(true, false, 11.000000, 15.000000)
		registerVal2.Dot2:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.Dot3:setLeftRight(true, false, 390.000000, 394.000000)
		registerVal2.Dot3:setTopBottom(true, false, 11.000000, 15.000000)
		registerVal2.Dot3:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.Dot4:setLeftRight(true, false, 310.000000, 314.000000)
		registerVal2.Dot4:setTopBottom(true, false, 35.000000, 39.000000)
		registerVal2.Dot4:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.Dot5:setLeftRight(true, false, 217.000000, 221.000000)
		registerVal2.Dot5:setTopBottom(true, false, 35.000000, 39.000000)
		registerVal2.Dot5:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.Dot6:setLeftRight(true, false, 390.000000, 394.000000)
		registerVal2.Dot6:setTopBottom(true, false, 35.000000, 39.000000)
		registerVal2.Dot6:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.Dot7:setLeftRight(true, false, 310.000000, 314.000000)
		registerVal2.Dot7:setTopBottom(true, false, 110.000000, 114.000000)
		registerVal2.Dot7:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.Dot8:setLeftRight(true, false, 390.000000, 394.000000)
		registerVal2.Dot8:setTopBottom(true, false, 110.000000, 114.000000)
		registerVal2.Dot8:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal28.Knife:completeAnimation()
		registerVal28.TotalAmmo:completeAnimation()
		registerVal28.TotalAmmo.TotalAmmoLbl:completeAnimation()
		registerVal2.ClipDummy.Knife:setAlpha(0.800000)
		registerVal2.ClipDummy.TotalAmmo:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ClipDummy.TotalAmmo:setAlpha(0.000000)
		registerVal2.ClipDummy.TotalAmmo:setZoom(0.000000)
		registerVal2.ClipDummy.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("000"))
		registerVal2.clipFinished(registerVal28, {})
	end

	registerVal30.DefaultClip = __FUNC_2181D_
	local function __FUNC_22B9C_()
		registerVal2:setupElementClipCounter(23.000000)
		local function __FUNC_23E6A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 439.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, true, -93.330000, 2.670000)
			arg0:setTopBottom(false, false, -47.000000, 58.670000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.PanelContainer:setLeftRight(false, true, -246.330000, 2.670000)
		registerVal2.PanelContainer:setTopBottom(false, false, -47.000000, 58.670000)
		registerVal2.PanelContainer:setAlpha(1.000000)
		__FUNC_23E6A_(registerVal3, {})
		local function __FUNC_2408D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 439.000000, true, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.UIGlowWidget:setAlpha(1.000000)
		__FUNC_2408D_(registerVal5, {})
		local function __FUNC_24241_(arg0, arg1)
			local function __FUNC_24398_(arg0, arg1)
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
				__FUNC_24398_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24398_)
		end

		registerVal7:completeAnimation()
		registerVal2.BackCircleOutter:setAlpha(0.350000)
		registerVal2.BackCircleOutter:setZoom(-8.000000)
		__FUNC_24241_(registerVal7, {})
		local function __FUNC_2456F_(arg0, arg1)
			local function __FUNC_246C4_(arg0, arg1)
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
				__FUNC_246C4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_246C4_)
		end

		registerVal8:completeAnimation()
		registerVal2.BackCircle:setAlpha(0.400000)
		registerVal2.BackCircle:setZoom(-5.000000)
		__FUNC_2456F_(registerVal8, {})
		local function __FUNC_2489B_(arg0, arg1)
			local function __FUNC_24A13_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 469.000000, true, false, CoD.TweenType.Bounce)
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
				__FUNC_24A13_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.200000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24A13_)
		end

		registerVal9:completeAnimation()
		registerVal2.EquipmentInfoSolid:setAlpha(0.300000)
		registerVal2.EquipmentInfoSolid:setZoom(0.000000)
		__FUNC_2489B_(registerVal9, {})
		local function __FUNC_24BE2_(arg0, arg1)
			local function __FUNC_24D38_(arg0, arg1)
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
				__FUNC_24D38_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24D38_)
		end

		registerVal10:completeAnimation()
		registerVal2.InventoryBox1:setAlpha(0.400000)
		registerVal2.InventoryBox1:setZoom(1.000000)
		__FUNC_24BE2_(registerVal10, {})
		local function __FUNC_24F0F_(arg0, arg1)
			local function __FUNC_25064_(arg0, arg1)
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
				__FUNC_25064_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25064_)
		end

		registerVal11:completeAnimation()
		registerVal2.InventoryBox2:setAlpha(0.400000)
		registerVal2.InventoryBox2:setZoom(1.000000)
		__FUNC_24F0F_(registerVal11, {})
		local function __FUNC_2523B_(arg0, arg1)
			local function __FUNC_25390_(arg0, arg1)
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
				__FUNC_25390_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25390_)
		end

		registerVal12:completeAnimation()
		registerVal2.EquipmentInfo:setAlpha(1.000000)
		registerVal2.EquipmentInfo:setZoom(0.000000)
		__FUNC_2523B_(registerVal12, {})
		local function __FUNC_25562_(arg0, arg1)
			local function __FUNC_256B8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 389.000000, true, false, CoD.TweenType.Bounce)
					arg0.BackLine1:beginAnimation("subkeyframe", 389.000000, true, false, CoD.TweenType.Bounce)
					arg0.BackLine2:beginAnimation("subkeyframe", 389.000000, true, false, CoD.TweenType.Bounce)
					arg0.ImgSemiCircle:beginAnimation("subkeyframe", 389.000000, true, false, CoD.TweenType.Bounce)
					arg0.ImgSeperator:beginAnimation("subkeyframe", 389.000000, true, false, CoD.TweenType.Bounce)
				end
				arg0.BackLine1:setAlpha(0.000000)
				arg0.BackLine2:setAlpha(0.000000)
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
				__FUNC_256B8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_256B8_)
		end

		registerVal13:completeAnimation()
		registerVal13.BackLine1:completeAnimation()
		registerVal13.BackLine2:completeAnimation()
		registerVal13.ImgSemiCircle:completeAnimation()
		registerVal13.ImgSeperator:completeAnimation()
		registerVal2.ClipElements.BackLine1:setAlpha(1.000000)
		registerVal2.ClipElements.BackLine2:setAlpha(1.000000)
		registerVal2.ClipElements.ImgSemiCircle:setAlpha(0.600000)
		registerVal2.ClipElements.ImgSemiCircle:setZoom(1.000000)
		registerVal2.ClipElements.ImgSeperator:setAlpha(0.800000)
		registerVal2.ClipElements.ImgSeperator:setZoom(0.000000)
		__FUNC_25562_(registerVal13, {})
		local function __FUNC_25A6F_(arg0, arg1)
			local function __FUNC_25BC4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 379.000000, true, false, CoD.TweenType.Bounce)
					arg0.Clip:beginAnimation("subkeyframe", 379.000000, true, false, CoD.TweenType.Bounce)
					arg0.Knife:beginAnimation("subkeyframe", 379.000000, true, false, CoD.TweenType.Bounce)
					arg0.TotalAmmo:beginAnimation("subkeyframe", 379.000000, true, false, CoD.TweenType.Bounce)
					arg0.AmmoColorBar:beginAnimation("subkeyframe", 379.000000, true, false, CoD.TweenType.Bounce)
					arg0.ClipMeter:beginAnimation("subkeyframe", 379.000000, true, false, CoD.TweenType.Bounce)
				end
				arg0.Clip:setAlpha(0.000000)
				arg0.Knife:setAlpha(0.000000)
				arg0.TotalAmmo:setAlpha(0.000000)
				arg0.AmmoColorBar:setAlpha(0.000000)
				arg0.ClipMeter:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_25BC4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25BC4_)
		end

		registerVal15:completeAnimation()
		registerVal15.Clip:completeAnimation()
		registerVal15.Knife:completeAnimation()
		registerVal15.TotalAmmo:completeAnimation()
		registerVal15.AmmoColorBar:completeAnimation()
		registerVal15.ClipMeter:completeAnimation()
		registerVal2.Clip.Clip:setAlpha(0.700000)
		registerVal2.Clip.Knife:setAlpha(0.800000)
		registerVal2.Clip.TotalAmmo:setAlpha(0.900000)
		registerVal2.Clip.AmmoColorBar:setAlpha(1.000000)
		registerVal2.Clip.ClipMeter:setAlpha(1.000000)
		__FUNC_25A6F_(registerVal15, {})
		local function __FUNC_25F93_(arg0, arg1)
			local function __FUNC_260E8_(arg0, arg1)
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
				__FUNC_260E8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_260E8_)
		end

		registerVal16:completeAnimation()
		registerVal2.FireRate:setAlpha(1.000000)
		__FUNC_25F93_(registerVal16, {})
		local function __FUNC_2629D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.AmmoWidgetTacModeIndicator:setAlpha(1.000000)
		__FUNC_2629D_(registerVal17, {})
		local function __FUNC_26451_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.AmmoWidgetEVModeIndicator:setAlpha(1.000000)
		__FUNC_26451_(registerVal18, {})
		local function __FUNC_26605_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 349.000000, true, false, CoD.TweenType.Bounce)
				arg0.AbilityRingBackDuplicate:beginAnimation("subkeyframe", 349.000000, true, false, CoD.TweenType.Bounce)
				arg0.AbilityRingBackDeplete:beginAnimation("subkeyframe", 349.000000, true, false, CoD.TweenType.Bounce)
				arg0.AbilityRingBack:beginAnimation("subkeyframe", 349.000000, true, false, CoD.TweenType.Bounce)
				arg0.AbilityRing:beginAnimation("subkeyframe", 349.000000, true, false, CoD.TweenType.Bounce)
				arg0.AbilityIconContainer:beginAnimation("subkeyframe", 349.000000, true, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			arg0.AbilityRingBackDuplicate:setZoom(0.000000)
			arg0.AbilityRingBackDeplete:setZoom(0.000000)
			arg0.AbilityRingBack:setZoom(0.000000)
			arg0.AbilityRing:setZoom(0.000000)
			arg0.AbilityIconContainer:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal19.AbilityRingBackDuplicate:completeAnimation()
		registerVal19.AbilityRingBackDeplete:completeAnimation()
		registerVal19.AbilityRingBack:completeAnimation()
		registerVal19.AbilityRing:completeAnimation()
		registerVal19.AbilityIconContainer:completeAnimation()
		registerVal2.AbilityContainer:setAlpha(1.000000)
		registerVal2.AbilityContainer.AbilityRingBackDuplicate:setZoom(0.000000)
		registerVal2.AbilityContainer.AbilityRingBackDeplete:setZoom(0.000000)
		registerVal2.AbilityContainer.AbilityRingBack:setZoom(0.000000)
		registerVal2.AbilityContainer.AbilityRing:setZoom(0.000000)
		registerVal2.AbilityContainer.AbilityIconContainer:setZoom(0.000000)
		__FUNC_26605_(registerVal19, {})
		local function __FUNC_26A25_(arg0, arg1)
			local function __FUNC_26B7A_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 159.000000, true, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 391.000000, 395.000000)
				arg0:setTopBottom(true, false, 70.000000, 74.000000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_26B7A_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 340.000000, true, true, CoD.TweenType.Back)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26B7A_)
		end

		registerVal20:completeAnimation()
		registerVal2.Dot1:setLeftRight(true, false, 310.000000, 314.000000)
		registerVal2.Dot1:setTopBottom(true, false, 11.000000, 15.000000)
		registerVal2.Dot1:setAlpha(0.600000)
		__FUNC_26A25_(registerVal20, {})
		local function __FUNC_26D9D_(arg0, arg1)
			local function __FUNC_26EF2_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 159.000000, true, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 392.000000, 396.000000)
				arg0:setTopBottom(true, false, 70.000000, 74.000000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_26EF2_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 340.000000, true, true, CoD.TweenType.Back)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26EF2_)
		end

		registerVal21:completeAnimation()
		registerVal2.Dot2:setLeftRight(true, false, 217.000000, 221.000000)
		registerVal2.Dot2:setTopBottom(true, false, 11.000000, 15.000000)
		registerVal2.Dot2:setAlpha(0.600000)
		__FUNC_26D9D_(registerVal21, {})
		local function __FUNC_27115_(arg0, arg1)
			local function __FUNC_2726A_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 159.000000, true, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 390.000000, 394.000000)
				arg0:setTopBottom(true, false, 70.000000, 74.000000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2726A_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 340.000000, false, true, CoD.TweenType.Back)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2726A_)
		end

		registerVal22:completeAnimation()
		registerVal2.Dot3:setLeftRight(true, false, 390.000000, 394.000000)
		registerVal2.Dot3:setTopBottom(true, false, 11.000000, 15.000000)
		registerVal2.Dot3:setAlpha(0.600000)
		__FUNC_27115_(registerVal22, {})
		local function __FUNC_2748D_(arg0, arg1)
			local function __FUNC_275E2_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 159.000000, true, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 391.000000, 395.000000)
				arg0:setTopBottom(true, false, 70.000000, 74.000000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_275E2_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 340.000000, true, true, CoD.TweenType.Back)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_275E2_)
		end

		registerVal23:completeAnimation()
		registerVal2.Dot4:setLeftRight(true, false, 310.000000, 314.000000)
		registerVal2.Dot4:setTopBottom(true, false, 35.000000, 39.000000)
		registerVal2.Dot4:setAlpha(0.600000)
		__FUNC_2748D_(registerVal23, {})
		local function __FUNC_27805_(arg0, arg1)
			local function __FUNC_2795A_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 392.000000, 396.000000)
				arg0:setTopBottom(true, false, 70.000000, 74.000000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2795A_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 340.000000, true, true, CoD.TweenType.Back)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2795A_)
		end

		registerVal24:completeAnimation()
		registerVal2.Dot5:setLeftRight(true, false, 217.000000, 221.000000)
		registerVal2.Dot5:setTopBottom(true, false, 35.000000, 39.000000)
		registerVal2.Dot5:setAlpha(0.600000)
		__FUNC_27805_(registerVal24, {})
		local function __FUNC_27B7D_(arg0, arg1)
			local function __FUNC_27CD2_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 390.000000, 394.000000)
				arg0:setTopBottom(true, false, 70.000000, 74.000000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_27CD2_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 340.000000, false, true, CoD.TweenType.Back)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27CD2_)
		end

		registerVal25:completeAnimation()
		registerVal2.Dot6:setLeftRight(true, false, 390.000000, 394.000000)
		registerVal2.Dot6:setTopBottom(true, false, 35.000000, 39.000000)
		registerVal2.Dot6:setAlpha(0.600000)
		__FUNC_27B7D_(registerVal25, {})
		local function __FUNC_27EF5_(arg0, arg1)
			local function __FUNC_2804C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 391.000000, 395.000000)
				arg0:setTopBottom(true, false, 70.000000, 74.000000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2804C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 340.000000, false, true, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2804C_)
		end

		registerVal26:completeAnimation()
		registerVal2.Dot7:setLeftRight(true, false, 310.000000, 314.000000)
		registerVal2.Dot7:setTopBottom(true, false, 110.000000, 114.000000)
		registerVal2.Dot7:setAlpha(0.600000)
		__FUNC_27EF5_(registerVal26, {})
		local function __FUNC_28271_(arg0, arg1)
			local function __FUNC_283C6_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 390.000000, 394.000000)
				arg0:setTopBottom(true, false, 70.000000, 74.000000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_283C6_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 340.000000, false, true, CoD.TweenType.Back)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_283C6_)
		end

		registerVal27:completeAnimation()
		registerVal2.Dot8:setLeftRight(true, false, 390.000000, 394.000000)
		registerVal2.Dot8:setTopBottom(true, false, 110.000000, 114.000000)
		registerVal2.Dot8:setAlpha(0.600000)
		__FUNC_28271_(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal28.Knife:completeAnimation()
		registerVal28.TotalAmmo:completeAnimation()
		registerVal28.TotalAmmo.TotalAmmoLbl:completeAnimation()
		registerVal2.ClipDummy.Knife:setAlpha(0.000000)
		registerVal2.ClipDummy.TotalAmmo:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ClipDummy.TotalAmmo:setAlpha(0.000000)
		registerVal2.ClipDummy.TotalAmmo:setZoom(0.000000)
		registerVal2.ClipDummy.TotalAmmo.TotalAmmoLbl:setText(Engine.Localize("000"))
		registerVal2.clipFinished(registerVal28, {})
	end

	registerVal30.DefaultState = __FUNC_22B9C_
	registerVal29.HudStart = registerVal30
	registerVal30 = {}
	local function __FUNC_285E9_()
		registerVal2:setupElementClipCounter(18.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelContainer:setLeftRight(false, true, 22.670000, 271.670000)
		registerVal2.PanelContainer:setTopBottom(false, false, -47.150000, 58.520000)
		registerVal2.PanelContainer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PrologueAmmoWidgetPanelContainer:setLeftRight(true, false, 242.050000, 470.050000)
		registerVal2.PrologueAmmoWidgetPanelContainer:setTopBottom(true, false, 19.850000, 125.850000)
		registerVal2.PrologueAmmoWidgetPanelContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.UIGlowWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.PrologueGlow:setLeftRight(true, false, 218.920000, 391.810000)
		registerVal2.PrologueGlow:setTopBottom(true, false, -8.090000, 141.230000)
		registerVal2.PrologueGlow:setAlpha(0.300000)
		registerVal2.PrologueGlow:setZoom(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BackCircleOutter:setLeftRight(true, false, 608.920000, 715.920000)
		registerVal2.BackCircleOutter:setTopBottom(true, false, 20.000000, 124.000000)
		registerVal2.BackCircleOutter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BackCircle:setLeftRight(true, false, 616.670000, 711.670000)
		registerVal2.BackCircle:setTopBottom(true, false, 12.740000, 118.750000)
		registerVal2.BackCircle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.EquipmentInfoSolid:setLeftRight(true, false, 278.000000, 368.000000)
		registerVal2.EquipmentInfoSolid:setTopBottom(true, false, 12.740000, 54.740000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.InventoryBox1:setLeftRight(true, false, 283.080000, 321.750000)
		registerVal2.InventoryBox1:setTopBottom(true, false, 14.750000, 50.080000)
		registerVal2.InventoryBox1:setAlpha(0.200000)
		registerVal2.InventoryBox1:setZoom(-10.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.InventoryBox2:setLeftRight(true, false, 323.750000, 362.420000)
		registerVal2.InventoryBox2:setTopBottom(true, false, 14.750000, 50.080000)
		registerVal2.InventoryBox2:setAlpha(0.200000)
		registerVal2.InventoryBox2:setZoom(-10.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.EquipmentInfo:setLeftRight(true, false, 278.000000, 368.000000)
		registerVal2.EquipmentInfo:setTopBottom(true, false, 12.740000, 54.740000)
		registerVal2.EquipmentInfo:setRGB(0.680000, 0.860000, 0.910000)
		registerVal2.EquipmentInfo:setAlpha(1.000000)
		registerVal2.EquipmentInfo:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
		registerVal2.EquipmentInfo:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
		registerVal2.EquipmentInfo:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.EquipmentInfo:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.EquipmentInfo:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.EquipmentInfo:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal13.BackLine1:completeAnimation()
		registerVal13.BackLine2:completeAnimation()
		registerVal13.ImgSemiCircle:completeAnimation()
		registerVal13.ImgSeperator:completeAnimation()
		registerVal13.ImgSeparatorDual:completeAnimation()
		registerVal2.ClipElements:setLeftRight(true, false, 212.180000, 372.170000)
		registerVal2.ClipElements:setTopBottom(true, false, 43.250000, 100.250000)
		registerVal2.ClipElements:setRGB(0.770000, 0.910000, 0.930000)
		registerVal2.ClipElements:setAlpha(0.000000)
		registerVal2.ClipElements.BackLine1:setAlpha(1.000000)
		registerVal2.ClipElements.BackLine2:setAlpha(1.000000)
		registerVal2.ClipElements.ImgSemiCircle:setAlpha(0.600000)
		registerVal2.ClipElements.ImgSemiCircle:setZoom(1.000000)
		registerVal2.ClipElements.ImgSeperator:setAlpha(0.800000)
		registerVal2.ClipElements.ImgSeperator:setZoom(0.000000)
		registerVal2.ClipElements.ImgSeparatorDual:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal14.ImgSemiCircle:completeAnimation()
		registerVal2.CPPrologueClipElements:setLeftRight(true, false, 221.920000, 375.000000)
		registerVal2.CPPrologueClipElements:setTopBottom(true, false, 42.670000, 99.670000)
		registerVal2.CPPrologueClipElements:setAlpha(1.000000)
		registerVal2.CPPrologueClipElements.ImgSemiCircle:setZoom(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal15.Clip:completeAnimation()
		registerVal15.Knife:completeAnimation()
		registerVal15.TotalAmmo:completeAnimation()
		registerVal15.AmmoColorBar:completeAnimation()
		registerVal15.ClipMeter:completeAnimation()
		registerVal2.Clip:setLeftRight(true, false, 227.680000, 362.670000)
		registerVal2.Clip:setTopBottom(true, false, 41.250000, 98.250000)
		registerVal2.Clip:setRGB(0.770000, 0.910000, 0.930000)
		registerVal2.Clip.Clip:setAlpha(0.700000)
		registerVal2.Clip.Knife:setAlpha(0.800000)
		registerVal2.Clip.TotalAmmo:setAlpha(0.900000)
		registerVal2.Clip.AmmoColorBar:setAlpha(1.000000)
		registerVal2.Clip.ClipMeter:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FireRate:setLeftRight(true, false, 39.000000, 355.000000)
		registerVal2.FireRate:setTopBottom(true, false, 99.410000, 117.410000)
		registerVal2.FireRate:setRGB(0.770000, 0.910000, 0.930000)
		registerVal2.FireRate:setAlpha(0.750000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.AmmoWidgetTacModeIndicator:setLeftRight(true, false, 616.670000, 656.670000)
		registerVal2.AmmoWidgetTacModeIndicator:setTopBottom(true, false, 7.410000, 32.410000)
		registerVal2.AmmoWidgetTacModeIndicator:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.AmmoWidgetEVModeIndicator:setLeftRight(true, false, 653.010000, 704.000000)
		registerVal2.AmmoWidgetEVModeIndicator:setTopBottom(true, false, 7.410000, 32.410000)
		registerVal2.AmmoWidgetEVModeIndicator:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.AbilityContainer:setLeftRight(true, false, 608.920000, 730.420000)
		registerVal2.AbilityContainer:setTopBottom(true, false, 11.000000, 132.500000)
		registerVal2.AbilityContainer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal28:completeAnimation()
		registerVal2.ClipDummy:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
	end

	registerVal30.DefaultClip = __FUNC_285E9_
	registerVal29.HudStartPrologue = registerVal30
	registerVal2.clipsPerState = registerVal29
	local registerVal31 = {}
	local registerVal32 = {}
	registerVal32.stateName = "HudStart"
	local function __FUNC_299E2_(arg0, arg1, arg2)
		return true
	end

	registerVal32.condition = __FUNC_299E2_
	local registerVal33 = {}
	registerVal33.stateName = "HudStartPrologue"
	local function __FUNC_29A14_(arg0, arg2, arg3)
		return HideCyberCoreWidget(arg1)
	end

	registerVal33.condition = __FUNC_29A14_
	registerVal31 = {registerVal32, registerVal33}
	registerVal2:mergeStateConditions(registerVal31)
	local function __FUNC_29A6D_(arg0)
		arg0.PanelContainer:close()
		arg0.PrologueAmmoWidgetPanelContainer:close()
		arg0.UIGlowWidget:close()
		arg0.BackCircleOutter:close()
		arg0.BackCircle:close()
		arg0.EquipmentInfoSolid:close()
		arg0.InventoryBox1:close()
		arg0.InventoryBox2:close()
		arg0.EquipmentInfo:close()
		arg0.ClipElements:close()
		arg0.CPPrologueClipElements:close()
		arg0.Clip:close()
		arg0.FireRate:close()
		arg0.AmmoWidgetTacModeIndicator:close()
		arg0.AmmoWidgetEVModeIndicator:close()
		arg0.AbilityContainer:close()
		arg0.Dot1:close()
		arg0.Dot2:close()
		arg0.Dot3:close()
		arg0.Dot4:close()
		arg0.Dot5:close()
		arg0.Dot6:close()
		arg0.Dot7:close()
		arg0.Dot8:close()
		arg0.ClipDummy:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_29A6D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

