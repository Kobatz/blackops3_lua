-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GenericUpdateBarWithLink = registerVal1
function CoD.GenericUpdateBarWithLink.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GenericUpdateBarWithLink)
	registerVal2.id = "GenericUpdateBarWithLink"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 100.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	registerVal3:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.barImage = registerVal3
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

