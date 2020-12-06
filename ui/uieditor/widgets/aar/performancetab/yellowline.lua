-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.YellowLine = registerVal1
function CoD.YellowLine.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.YellowLine)
	registerVal2.id = "YellowLine"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 2.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 124.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 2.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 124.000000)
	registerVal3:setRGB(ColorSet.PlayerYellow.r, ColorSet.PlayerYellow.g, ColorSet.PlayerYellow.b)
	registerVal3:setAlpha(0.750000)
	registerVal2:addElement(registerVal3)
	registerVal2.YellowLine = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_55B_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_55B_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

