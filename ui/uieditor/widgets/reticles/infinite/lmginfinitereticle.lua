-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Reticles.Infinite.lmgInfiniteReticle_UI3D")
local function __FUNC_227_(arg0, arg1)
	arg0:setupReticle(arg1)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.lmgInfiniteReticle = registerVal2
local function __FUNC_272_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_227_ then
		__FUNC_227_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.lmgInfiniteReticle)
	registerVal2.id = "lmgInfiniteReticle"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 216.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 93.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.lmgInfiniteReticle_UI3D.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 1.000000, 216.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 93.000000)
	local function __FUNC_5F0_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:subscribeToGlobalModel(arg1, "CurrentWeapon", nil, __FUNC_5F0_)
	registerVal2:addElement(registerVal3)
	registerVal2.lmgInfiniteReticleUI3D = registerVal3
	local function __FUNC_642_(arg0)
		arg0.lmgInfiniteReticleUI3D:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_642_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.lmgInfiniteReticle.new = __FUNC_272_
