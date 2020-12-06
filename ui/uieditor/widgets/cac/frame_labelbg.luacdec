-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.frame_labelbg = registerVal1
function CoD.frame_labelbg.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.frame_labelbg)
	registerVal2.id = "frame_labelbg"
	registerVal2.soundSet = "CAC_Overcapacity"
	registerVal2:setLeftRight(true, false, 0.000000, 612.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 35.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, -35.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrfull"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal3:setShaderVector(0.000000, 0.006932, 0.114286, 0.000000, 0.000000)
	registerVal3:setupNineSliceShader(4.000000, 4.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Image = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, -33.000000, 3.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 3.500000)
	registerVal4:setZRot(360.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image11 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, true, -33.000000, 3.000000)
	registerVal5:setTopBottom(false, true, -2.500000, 1.000000)
	registerVal5:setZRot(360.000000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.Image110 = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

