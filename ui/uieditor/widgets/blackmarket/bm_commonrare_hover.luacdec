-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_CommonRare_Hover = registerVal1
function CoD.BM_CommonRare_Hover.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_CommonRare_Hover)
	registerVal2.id = "BM_CommonRare_Hover"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 137.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 136.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -68.400000, 68.400000)
	registerVal3:setTopBottom(true, false, 0.000000, 136.000000)
	registerVal3:setScale(0.900000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_crate_whiteglow"))
	registerVal2:addElement(registerVal3)
	registerVal2.glow0 = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_541_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_541_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

