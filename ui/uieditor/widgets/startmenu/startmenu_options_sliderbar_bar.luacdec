-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StartMenu_Options_SliderBar_Bar = registerVal1
function CoD.StartMenu_Options_SliderBar_Bar.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_Options_SliderBar_Bar)
	registerVal2.id = "StartMenu_Options_SliderBar_Bar"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 6.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 21.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 6.000000)
	registerVal3:setTopBottom(false, false, -4.200000, 4.200000)
	registerVal2:addElement(registerVal3)
	registerVal2.Bar = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_4D3_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Bar:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Bar:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_4D3_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

