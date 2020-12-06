-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1CA_(arg0, arg1, arg2)
	arg0.shader:setupBowLauncherReticleShader()
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.BowLauncherReticle_Shader = registerVal2
local function __FUNC_23F_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BowLauncherReticle_Shader)
	registerVal2.id = "BowLauncherReticle_Shader"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 100.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 100.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_bow_launcher_reticle"))
	registerVal3:setShaderVector(0.000000, 3.000000, 10.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 100.000000, 100.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, 2.000000, 30.000000, 100.000000, 0.000000)
	registerVal3:setShaderVector(4.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.shader = registerVal3
	if __FUNC_1CA_ then
		__FUNC_1CA_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.BowLauncherReticle_Shader.new = __FUNC_23F_
