-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_TriangleMask = registerVal1
function CoD.BM_TriangleMask.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_TriangleMask)
	registerVal2.id = "BM_TriangleMask"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 312.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 608.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 312.000000)
	registerVal3:setTopBottom(true, false, 208.000000, 400.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_trianglemask"))
	registerVal2:addElement(registerVal3)
	registerVal2.Mask = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 312.000000)
	registerVal4:setTopBottom(true, false, -215.000000, 208.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.black = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 312.000000)
	registerVal5:setTopBottom(true, false, 400.000000, 783.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.black0 = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_647_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_647_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

