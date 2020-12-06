-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_BackLine")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_SemiCircle")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_Separator")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CP_Prologue_ClipElements = registerVal1
function CoD.CP_Prologue_ClipElements.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CP_Prologue_ClipElements)
	registerVal2.id = "CP_Prologue_ClipElements"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 160.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 57.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.AmmoWidget_BackLine.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 54.000000, 156.330000)
	registerVal3:setTopBottom(true, false, 51.500000, 54.500000)
	registerVal3:setZoom(-1.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BackLine1 = registerVal3
	local registerVal4 = CoD.AmmoWidget_BackLine.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 54.000000, 156.330000)
	registerVal4:setTopBottom(true, false, 3.500000, 6.500000)
	registerVal4:setScale(-1.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BackLine2 = registerVal4
	local registerVal5 = CoD.AmmoWidget_SemiCircle.new(arg0, arg1)
	registerVal5:setLeftRight(false, true, -110.000000, -100.670000)
	registerVal5:setTopBottom(true, false, 1.000000, 55.670000)
	registerVal5:setZoom(0.500000)
	registerVal5:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal5:setShaderVector(0.000000, 0.050000, 1.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 0.200000, -0.200000, 0.000000, 0.000000)
	registerVal5:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5.ImgSemiCircle0:setImage(RegisterImage("uie_t7_core_hud_ammowidget_semiline"))
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
	local function __FUNC_FD7_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BackLine1:setLeftRight(true, false, 18.670000, 152.330000)
		registerVal2.BackLine1:setTopBottom(true, false, 51.500000, 54.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BackLine2:setLeftRight(true, false, 18.670000, 152.330000)
		registerVal2.BackLine2:setTopBottom(true, false, 3.500000, 6.500000)
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

	registerVal9.DefaultClip = __FUNC_FD7_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_1418_()
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

	registerVal9.DefaultClip = __FUNC_1418_
	registerVal8.WeaponDual = registerVal9
	registerVal9 = {}
	local function __FUNC_1844_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BackLine1:setLeftRight(true, false, 23.670000, 157.330000)
		registerVal2.BackLine1:setTopBottom(true, false, 51.500000, 54.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BackLine2:setLeftRight(true, false, 23.670000, 157.330000)
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

	registerVal9.DefaultClip = __FUNC_1844_
	registerVal8.Weapon = registerVal9
	registerVal9 = {}
	local function __FUNC_1C88_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BackLine1:setLeftRight(true, false, 55.000000, 157.330000)
		registerVal2.BackLine1:setTopBottom(true, false, 51.500000, 54.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BackLine2:setLeftRight(true, false, 55.000000, 157.330000)
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

	registerVal9.DefaultClip = __FUNC_1C88_
	registerVal8.Knife = registerVal9
	registerVal9 = {}
	local function __FUNC_208E_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BackLine1:setLeftRight(true, false, 12.000000, 157.330000)
		registerVal2.BackLine1:setTopBottom(true, false, 51.500000, 54.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BackLine2:setLeftRight(true, false, 12.000000, 157.330000)
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

	registerVal9.DefaultClip = __FUNC_208E_
	registerVal8.Weapon3Digits = registerVal9
	registerVal2.clipsPerState = registerVal8
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "WeaponDual"
	local function __FUNC_249C_(arg0, arg2, arg3)
		local registerVal3 = WeaponUsesAmmo(arg1)
		if registerVal3 then
			registerVal3 = IsModelValueGreaterThanOrEqualTo(arg1, "currentWeapon.ammoInDWClip", 0.000000)
		end
		return registerVal3
	end

	registerVal11.condition = __FUNC_249C_
	local registerVal12 = {}
	registerVal12.stateName = "Weapon"
	local function __FUNC_255F_(arg0, arg2, arg3)
		local registerVal3 = WeaponUsesAmmo(arg1)
		if registerVal3 then
			registerVal3 = IsWeaponClipGreaterThanOrEqualTo(arg1, 100.000000)
		end
		return (not registerVal3)
	end

	registerVal12.condition = __FUNC_255F_
	local registerVal13 = {}
	registerVal13.stateName = "Knife"
	local function __FUNC_25FB_(arg0, arg2, arg3)
		local registerVal3 = WeaponUsesAmmo(arg1)
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_25FB_
	local registerVal14 = {}
	registerVal14.stateName = "Weapon3Digits"
	local function __FUNC_2650_(arg0, arg2, arg3)
		return IsWeaponClipGreaterThanOrEqualTo(arg1, 100.000000)
	end

	registerVal14.condition = __FUNC_2650_
	registerVal10 = {registerVal11, registerVal12, registerVal13, registerVal14}
	registerVal2:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "currentWeapon.weapon")
	local function __FUNC_26BF_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.weapon"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_26BF_)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "currentWeapon.ammoInDWClip")
	local function __FUNC_27E6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.ammoInDWClip"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_27E6_)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "currentWeapon.clipMaxAmmo")
	local function __FUNC_2914_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.clipMaxAmmo"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_2914_)
	local function __FUNC_2A43_(arg0)
		arg0.BackLine1:close()
		arg0.BackLine2:close()
		arg0.ImgSemiCircle:close()
		arg0.ImgSeperator:close()
		arg0.ImgSeparatorDual:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2A43_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

