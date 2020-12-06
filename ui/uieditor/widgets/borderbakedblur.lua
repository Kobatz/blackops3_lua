-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BorderBakedBlur = registerVal1
function CoD.BorderBakedBlur.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BorderBakedBlur)
	registerVal2.id = "BorderBakedBlur"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -3.000000, 3.000000)
	registerVal3:setTopBottom(true, true, -3.000000, 3.000000)
	registerVal3:setImage(RegisterImage("uie_img_t7_menu_customclass_boxblurfull"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal3:setShaderVector(0.000000, 0.126984, 0.126984, 0.000000, 0.000000)
	registerVal3:setupNineSliceShader(16.000000, 16.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Image = registerVal3
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

