-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BuildableBorder_Internal = registerVal1
function CoD.BuildableBorder_Internal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.BuildableBorder_Internal)
	registerVal2.id = "BuildableBorder_Internal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 300.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 50.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 2.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.top = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(false, true, -2.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.bottom = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 2.000000)
	registerVal5:setTopBottom(true, true, 2.000000, -2.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.left = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, true, -2.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 2.000000, -2.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.right = registerVal6
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

