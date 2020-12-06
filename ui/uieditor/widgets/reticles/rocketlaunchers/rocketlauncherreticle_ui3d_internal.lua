-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Reticles.BlackCell.Target")
require("ui.uieditor.widgets.Reticles.BlackCell.Timer")
require("ui.uieditor.widgets.Reticles.BlackCell.TeamMateLockOn")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.rocketLauncherReticle_UI3D_Internal = registerVal1
function CoD.rocketLauncherReticle_UI3D_Internal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.rocketLauncherReticle_UI3D_Internal)
	registerVal2.id = "rocketLauncherReticle_UI3D_Internal"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 512.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 512.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 506.000000)
	registerVal3:setTopBottom(true, false, 67.180000, 444.820000)
	registerVal3:setRGB(0.640000, 1.000000, 0.810000)
	registerVal3:setAlpha(0.450000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_launcher_mainreticlebacking"))
	registerVal2:addElement(registerVal3)
	registerVal2.GreenBacking = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 8.000000, 508.000000)
	registerVal4:setTopBottom(true, false, 60.180000, 432.820000)
	registerVal4:setRGB(0.640000, 1.000000, 0.810000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_launcher_mainreticle"))
	registerVal2:addElement(registerVal4)
	registerVal2.reticle = registerVal4
	local registerVal5 = CoD.Target.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 382.000000, 500.000000)
	registerVal5:setTopBottom(true, false, 257.370000, 317.370000)
	registerVal5:setRGB(0.640000, 1.000000, 0.810000)
	registerVal5:setScale(0.800000)
	registerVal2:addElement(registerVal5)
	registerVal2.Target = registerVal5
	local registerVal6 = CoD.Timer.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 383.000000, 510.600000)
	registerVal6:setTopBottom(true, false, 198.560000, 256.370000)
	registerVal6:setRGB(0.640000, 1.000000, 0.810000)
	registerVal6:setScale(0.800000)
	registerVal2:addElement(registerVal6)
	registerVal2.Timer = registerVal6
	local registerVal7 = CoD.TeamMateLockOn.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 3.000000, 138.580000)
	registerVal7:setTopBottom(true, false, 204.560000, 307.440000)
	registerVal7:setScale(0.900000)
	registerVal2:addElement(registerVal7)
	registerVal2.TeamMateLockOn = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_A30_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.GreenBacking:setRGB(0.640000, 1.000000, 0.810000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.reticle:setRGB(0.640000, 1.000000, 0.810000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Target:setRGB(0.640000, 1.000000, 0.810000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Timer:setRGB(0.640000, 1.000000, 0.810000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.TeamMateLockOn:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_A30_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_CBC_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.GreenBacking:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.reticle:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.reticle:setAlpha(1.000000)
		registerVal2.reticle:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Target:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Timer:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.DefaultClip = __FUNC_CBC_
	registerVal8.Locked = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_FAA_(arg0)
		arg0.Target:close()
		arg0.Timer:close()
		arg0.TeamMateLockOn:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_FAA_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

