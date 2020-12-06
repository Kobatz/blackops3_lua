-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ZM_DiviniumFull = registerVal1
function CoD.ZM_DiviniumFull.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ZM_DiviniumFull)
	registerVal2.id = "ZM_DiviniumFull"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 108.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 225.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 24.230000, 0.230000)
	registerVal3:setImage(RegisterImage("uie_t7_zm_anim_divinium_glow"))
	registerVal2:addElement(registerVal3)
	registerVal2.Glow0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 35.660000, -36.340000)
	registerVal4:setTopBottom(true, true, 49.230000, -7.770000)
	registerVal4:setXRot(180.000000)
	registerVal4:setImage(RegisterImage("uie_t7_zm_anim_divinium_fill"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	registerVal4:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Fill0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 30.000000, -30.000000)
	registerVal5:setTopBottom(true, true, 0.000000, -9.000000)
	registerVal5:setImage(RegisterImage("uie_t7_zm_anim_divinium_vial"))
	registerVal2:addElement(registerVal5)
	registerVal2.Vial0 = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_7AD_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_7AD_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

