-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_BackLine")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_SemiCircle")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_Separator")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_ClipElements = registerVal1
function CoD.AmmoWidget_ClipElements.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_ClipElements)
	registerVal2.id = "AmmoWidget_ClipElements"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 160.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 57.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.AmmoWidget_BackLine.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 55.000000, 157.330000)
	registerVal3:setTopBottom(true, false, 51.500000, 54.500000)
	registerVal3:setZoom(-1.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BackLine1 = registerVal3
	local registerVal4 = CoD.AmmoWidget_BackLine.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 55.000000, 70.000000)
	registerVal4:setTopBottom(true, false, 2.500000, 5.500000)
	registerVal4:setZoom(-1.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BackLine2 = registerVal4
	local registerVal5 = CoD.AmmoWidget_SemiCircle.new(arg0, arg1)
	registerVal5:setLeftRight(false, true, -110.000000, -100.670000)
	registerVal5:setTopBottom(true, false, 1.000000, 55.670000)
	registerVal5:setZoom(1.000000)
	registerVal5:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal5:setShaderVector(0.000000, 0.050000, 1.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 0.200000, -0.200000, 0.000000, 0.000000)
	registerVal5:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.ImgSemiCircle = registerVal5
	local registerVal6 = CoD.AmmoWidget_Separator.new(arg0, arg1)
	registerVal6:setLeftRight(false, true, -57.160000, -53.840000)
	registerVal6:setTopBottom(true, false, 198.670000, 233.340000)
	registerVal6:setZRot(90.000000)
	registerVal6:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal6:setShaderVector(0.000000, 0.100000, 1.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.ImgSeperator = registerVal6
	local registerVal7 = CoD.AmmoWidget_Separator.new(arg0, arg1)
	registerVal7:setLeftRight(false, true, -57.160000, -53.840000)
	registerVal7:setTopBottom(true, false, 198.670000, 233.340000)
	registerVal7:setZRot(90.000000)
	registerVal7:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal7:setShaderVector(0.000000, 0.100000, 1.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.ImgSeparatorDual = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_1186_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BackLine1:setLeftRight(true, false, 23.670000, 157.330000)
		registerVal2.BackLine1:setTopBottom(true, false, 51.500000, 54.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BackLine2:setLeftRight(true, false, 23.670000, 70.000000)
		registerVal2.BackLine2:setTopBottom(true, false, 2.500000, 5.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ImgSemiCircle:setLeftRight(false, true, -141.000000, -131.670000)
		registerVal2.ImgSemiCircle:setTopBottom(true, false, 1.000000, 55.670000)
		registerVal2.ImgSemiCircle:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ImgSeperator:setLeftRight(false, true, -71.840000, -68.510000)
		registerVal2.ImgSeperator:setTopBottom(true, false, 13.670000, 48.340000)
		registerVal2.ImgSeperator:setZRot(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ImgSeparatorDual:setLeftRight(false, true, -57.160000, -53.840000)
		registerVal2.ImgSeparatorDual:setTopBottom(true, false, 198.670000, 233.340000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_1186_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_15CD_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BackLine1:setLeftRight(true, false, 55.000000, 157.330000)
		registerVal2.BackLine1:setTopBottom(true, false, 51.500000, 54.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BackLine2:setLeftRight(true, false, 55.000000, 70.000000)
		registerVal2.BackLine2:setTopBottom(true, false, 2.500000, 5.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ImgSemiCircle:setLeftRight(false, true, -110.000000, -100.670000)
		registerVal2.ImgSemiCircle:setTopBottom(true, false, 1.000000, 55.670000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ImgSeperator:setLeftRight(false, true, -56.840000, -53.510000)
		registerVal2.ImgSeperator:setTopBottom(true, false, 198.670000, 233.340000)
		registerVal2.ImgSeperator:setZRot(90.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ImgSeparatorDual:setLeftRight(false, true, -57.160000, -53.840000)
		registerVal2.ImgSeparatorDual:setTopBottom(true, false, 198.670000, 233.340000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_15CD_
	registerVal8.HeroWeapon = registerVal9
	registerVal9 = {}
	local function __FUNC_19D7_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BackLine1:setLeftRight(true, false, 55.000000, 157.330000)
		registerVal2.BackLine1:setTopBottom(true, false, 51.500000, 54.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BackLine2:setLeftRight(true, false, 55.000000, 70.000000)
		registerVal2.BackLine2:setTopBottom(true, false, 2.500000, 5.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ImgSemiCircle:setLeftRight(false, true, -110.000000, -100.670000)
		registerVal2.ImgSemiCircle:setTopBottom(true, false, 1.000000, 55.670000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ImgSeperator:setLeftRight(false, true, -56.840000, -53.510000)
		registerVal2.ImgSeperator:setTopBottom(true, false, 198.670000, 233.340000)
		registerVal2.ImgSeperator:setZRot(90.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ImgSeparatorDual:setLeftRight(false, true, -57.160000, -53.840000)
		registerVal2.ImgSeparatorDual:setTopBottom(true, false, 198.670000, 233.340000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_19D7_
	registerVal8.NoStockAmmoWeapon = registerVal9
	registerVal9 = {}
	local function __FUNC_1DDF_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BackLine1:setLeftRight(true, false, -40.000000, 157.330000)
		registerVal2.BackLine1:setTopBottom(true, false, 51.500000, 54.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BackLine2:setLeftRight(true, false, 12.000000, 70.000000)
		registerVal2.BackLine2:setTopBottom(true, false, 2.500000, 5.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ImgSemiCircle:setLeftRight(false, true, -210.000000, -200.670000)
		registerVal2.ImgSemiCircle:setTopBottom(true, false, 1.000000, 55.670000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ImgSeperator:setLeftRight(false, true, -71.840000, -68.510000)
		registerVal2.ImgSeperator:setTopBottom(true, false, 13.670000, 48.340000)
		registerVal2.ImgSeperator:setZRot(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ImgSeparatorDual:setLeftRight(false, true, -139.170000, -135.840000)
		registerVal2.ImgSeparatorDual:setTopBottom(true, false, 13.670000, 48.340000)
		registerVal2.ImgSeparatorDual:setZRot(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_1DDF_
	registerVal8.WeaponDual = registerVal9
	registerVal9 = {}
	local function __FUNC_2208_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BackLine1:setLeftRight(true, false, 23.670000, 157.330000)
		registerVal2.BackLine1:setTopBottom(true, false, 51.500000, 54.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BackLine2:setLeftRight(true, false, 23.670000, 70.000000)
		registerVal2.BackLine2:setTopBottom(true, false, 2.500000, 5.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ImgSemiCircle:setLeftRight(false, true, -141.000000, -131.670000)
		registerVal2.ImgSemiCircle:setTopBottom(true, false, 1.000000, 55.670000)
		registerVal2.ImgSemiCircle:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ImgSeperator:setLeftRight(false, true, -71.840000, -68.510000)
		registerVal2.ImgSeperator:setTopBottom(true, false, 13.670000, 48.340000)
		registerVal2.ImgSeperator:setZRot(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ImgSeparatorDual:setLeftRight(false, true, -57.160000, -53.840000)
		registerVal2.ImgSeparatorDual:setTopBottom(true, false, 198.670000, 233.340000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_2208_
	registerVal8.Weapon = registerVal9
	registerVal9 = {}
	local function __FUNC_2651_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BackLine1:setLeftRight(true, false, 20.000000, 122.330000)
		registerVal2.BackLine1:setTopBottom(true, false, 51.500000, 54.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BackLine2:setLeftRight(true, false, 20.000000, 35.000000)
		registerVal2.BackLine2:setTopBottom(true, false, 2.500000, 5.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ImgSemiCircle:setLeftRight(false, true, -145.000000, -135.670000)
		registerVal2.ImgSemiCircle:setTopBottom(true, false, 1.000000, 55.670000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ImgSeperator:setLeftRight(false, true, -56.840000, -53.510000)
		registerVal2.ImgSeperator:setTopBottom(true, false, 198.670000, 233.340000)
		registerVal2.ImgSeperator:setZRot(90.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ImgSeparatorDual:setLeftRight(false, true, -57.160000, -53.840000)
		registerVal2.ImgSeparatorDual:setTopBottom(true, false, 198.670000, 233.340000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_2651_
	registerVal8.KnifeGunGame = registerVal9
	registerVal9 = {}
	local function __FUNC_2A5B_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BackLine1:setLeftRight(true, false, 55.000000, 157.330000)
		registerVal2.BackLine1:setTopBottom(true, false, 51.500000, 54.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BackLine2:setLeftRight(true, false, 55.000000, 70.000000)
		registerVal2.BackLine2:setTopBottom(true, false, 2.500000, 5.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ImgSemiCircle:setLeftRight(false, true, -110.000000, -100.670000)
		registerVal2.ImgSemiCircle:setTopBottom(true, false, 1.000000, 55.670000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ImgSeperator:setLeftRight(false, true, -56.840000, -53.510000)
		registerVal2.ImgSeperator:setTopBottom(true, false, 198.670000, 233.340000)
		registerVal2.ImgSeperator:setZRot(90.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ImgSeparatorDual:setLeftRight(false, true, -57.160000, -53.840000)
		registerVal2.ImgSeparatorDual:setTopBottom(true, false, 198.670000, 233.340000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_2A5B_
	registerVal8.Knife = registerVal9
	registerVal9 = {}
	local function __FUNC_2E63_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BackLine1:setLeftRight(true, false, 12.000000, 157.330000)
		registerVal2.BackLine1:setTopBottom(true, false, 51.500000, 54.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BackLine2:setLeftRight(true, false, 12.000000, 70.000000)
		registerVal2.BackLine2:setTopBottom(true, false, 2.500000, 5.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ImgSemiCircle:setLeftRight(false, true, -155.000000, -145.670000)
		registerVal2.ImgSemiCircle:setTopBottom(true, false, 1.000000, 55.670000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ImgSeperator:setLeftRight(false, true, -71.840000, -68.510000)
		registerVal2.ImgSeperator:setTopBottom(true, false, 13.670000, 48.340000)
		registerVal2.ImgSeperator:setZRot(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ImgSeparatorDual:setLeftRight(false, true, -57.160000, -53.840000)
		registerVal2.ImgSeparatorDual:setTopBottom(true, false, 198.670000, 233.340000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_2E63_
	registerVal8.Weapon3Digits = registerVal9
	registerVal2.clipsPerState = registerVal8
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "HeroWeapon"
	local function __FUNC_3275_(arg0, arg2, arg3)
		return UseHeroWeaponAmmoCounter(arg0, arg1)
	end

	registerVal11.condition = __FUNC_3275_
	local registerVal12 = {}
	registerVal12.stateName = "NoStockAmmoWeapon"
	local function __FUNC_32D6_(arg0, arg2, arg3)
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

	registerVal12.condition = __FUNC_32D6_
	local registerVal13 = {}
	registerVal13.stateName = "WeaponDual"
	local function __FUNC_33C0_(arg0, arg2, arg3)
		local registerVal3 = WeaponUsesAmmo(arg1)
		if registerVal3 then
			registerVal3 = IsModelValueGreaterThanOrEqualTo(arg1, "currentWeapon.ammoInDWClip", 0.000000)
		end
		return registerVal3
	end

	registerVal13.condition = __FUNC_33C0_
	local registerVal14 = {}
	registerVal14.stateName = "Weapon"
	local function __FUNC_3483_(arg0, arg2, arg3)
		local registerVal3 = WeaponUsesAmmo(arg1)
		if registerVal3 then
			registerVal3 = IsWeaponClipGreaterThanOrEqualTo(arg1, 100.000000)
		end
		return (not registerVal3)
	end

	registerVal14.condition = __FUNC_3483_
	local registerVal15 = {}
	registerVal15.stateName = "KnifeGunGame"
	local function __FUNC_351F_(arg0, arg2, arg3)
		local registerVal3 = WeaponUsesAmmo(arg1)
		if not registerVal3 then
			registerVal3 = IsGameTypeEqualToString("gun")
		else
		end
		return true
	end

	registerVal15.condition = __FUNC_351F_
	local registerVal16 = {}
	registerVal16.stateName = "Knife"
	local function __FUNC_35BE_(arg0, arg2, arg3)
		local registerVal3 = WeaponUsesAmmo(arg1)
		return (not registerVal3)
	end

	registerVal16.condition = __FUNC_35BE_
	local registerVal17 = {}
	registerVal17.stateName = "Weapon3Digits"
	local function __FUNC_3614_(arg0, arg2, arg3)
		return IsWeaponClipGreaterThanOrEqualTo(arg1, 100.000000)
	end

	registerVal17.condition = __FUNC_3614_
	registerVal10 = {registerVal11, registerVal12, registerVal13, registerVal14, registerVal15, registerVal16, registerVal17}
	registerVal2:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "currentWeapon.weapon")
	local function __FUNC_3683_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.weapon"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_3683_)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "playerAbilities.playerGadget3.isInUse")
	local function __FUNC_37AA_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.isInUse"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_37AA_)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "playerAbilities.playerGadget3.name")
	local function __FUNC_38E3_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.name"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_38E3_)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "currentWeapon.equippedWeaponReference")
	local function __FUNC_3A18_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.equippedWeaponReference"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_3A18_)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "currentWeapon.ammoInDWClip")
	local function __FUNC_3B53_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.ammoInDWClip"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_3B53_)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "currentWeapon.clipMaxAmmo")
	local function __FUNC_3C80_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.clipMaxAmmo"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_3C80_)
	local function __FUNC_3DAF_(arg0)
		arg0.BackLine1:close()
		arg0.BackLine2:close()
		arg0.ImgSemiCircle:close()
		arg0.ImgSeperator:close()
		arg0.ImgSeparatorDual:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3DAF_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

