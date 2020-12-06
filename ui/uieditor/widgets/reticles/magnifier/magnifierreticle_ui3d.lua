-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Reticles.Magnifier.MagnifierReticle_Internal")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MagnifierReticle_UI3D = registerVal1
function CoD.MagnifierReticle_UI3D.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MagnifierReticle_UI3D)
	registerVal2.id = "MagnifierReticle_UI3D"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 400.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.MagnifierReticle_Internal.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	Engine.SetupUI3DWindow(arg1, 3.000000, 400.000000, 400.000000)
	registerVal3:setUI3DWindow(3.000000)
	local function __FUNC_62B_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:subscribeToGlobalModel(arg1, "CurrentWeapon", nil, __FUNC_62B_)
	registerVal2:addElement(registerVal3)
	registerVal2.MagnifierReticleInternal = registerVal3
	local function __FUNC_67A_(arg0)
		arg0.MagnifierReticleInternal:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_67A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

