-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CustomClassPlusSymbol = registerVal1
function CoD.CustomClassPlusSymbol.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CustomClassPlusSymbol)
	registerVal2.id = "CustomClassPlusSymbol"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 32.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -1.000000, 1.000000)
	registerVal3:setTopBottom(false, false, -8.000000, 8.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Image3 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -1.000000, 1.000000)
	registerVal4:setTopBottom(false, false, -8.000000, 8.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setZRot(90.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Image30 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -12.000000, 12.000000)
	registerVal5:setTopBottom(false, false, -12.000000, 12.000000)
	registerVal5:setImage(RegisterImage("uie_img_t7_menu_customclass_plus"))
	registerVal2:addElement(registerVal5)
	registerVal2.emptyLayerIcon = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

