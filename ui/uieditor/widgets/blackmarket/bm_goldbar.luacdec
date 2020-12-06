-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_GoldBar = registerVal1
function CoD.BM_GoldBar.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_GoldBar)
	registerVal2.id = "BM_GoldBar"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 190.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 20.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 84.000000)
	registerVal3:setTopBottom(true, true, -8.000000, 8.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_brandgoldbar_left"))
	registerVal2:addElement(registerVal3)
	registerVal2.Left = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, -84.000000, 0.000000)
	registerVal4:setTopBottom(true, true, -8.000000, 8.000000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_brandgoldbar_right"))
	registerVal2:addElement(registerVal4)
	registerVal2.Right = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 84.000000, -84.000000)
	registerVal5:setTopBottom(false, false, -18.000000, 18.000000)
	registerVal5:setImage(RegisterImage("uie_t7_blackmarket_brandgoldbar_middle"))
	registerVal2:addElement(registerVal5)
	registerVal2.Center = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_684_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_684_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

