-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Reticles.LauncherMulti.LauncherMultiReticle_UI3D")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LauncherMultiReticle = registerVal1
function CoD.LauncherMultiReticle.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LauncherMultiReticle)
	registerVal2.id = "LauncherMultiReticle"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 100.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 100.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.LauncherMultiReticle_UI3D.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 200.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 200.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.LauncherMultiReticleUI3D = registerVal3
	local function __FUNC_567_(arg0)
		arg0.LauncherMultiReticleUI3D:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_567_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

