-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Reticles.RocketLaunchers.rocketLauncherReticle_UI3D")
local function __FUNC_234_(arg0, arg1)
	arg0:setupReticle(arg1)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.rocketLauncherReticle = registerVal2
local function __FUNC_282_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_234_ then
		__FUNC_234_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.rocketLauncherReticle)
	registerVal2.id = "rocketLauncherReticle"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 100.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 100.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.rocketLauncherReticle_UI3D.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 200.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 200.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.rocketLauncherReticleUI3D0 = registerVal3
	local function __FUNC_5AE_(arg0)
		arg0.rocketLauncherReticleUI3D0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_5AE_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.rocketLauncherReticle.new = __FUNC_282_
