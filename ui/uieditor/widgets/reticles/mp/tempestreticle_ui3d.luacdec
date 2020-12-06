-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Reticles.MP.TempestReticle_UI3D_Internal")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.TempestReticle_UI3D = registerVal1
function CoD.TempestReticle_UI3D.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.TempestReticle_UI3D)
	registerVal2.id = "TempestReticle_UI3D"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 300.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 200.000000)
	local registerVal3 = CoD.TempestReticle_UI3D_Internal.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	Engine.SetupUI3DWindow(arg1, 3.000000, 300.000000, 200.000000)
	registerVal3:setUI3DWindow(3.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.internal = registerVal3
	local function __FUNC_59E_(arg0)
		arg0.internal:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_59E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

