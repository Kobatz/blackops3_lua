-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FE_ButtonFocus = registerVal1
function CoD.FE_ButtonFocus.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FE_ButtonFocus)
	registerVal2.id = "FE_ButtonFocus"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 84.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 28.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -8.000000, 8.000000)
	registerVal3:setTopBottom(true, true, -6.000000, 6.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_buttonfocusfull"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal3:setShaderVector(0.000000, 0.120000, 0.300000, 0.380000, 0.200000)
	registerVal3:setupNineSliceShader(12.000000, 12.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Image = registerVal3
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

