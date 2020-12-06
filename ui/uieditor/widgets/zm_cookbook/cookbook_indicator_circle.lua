-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Cookbook_Indicator_Circle = registerVal1
function CoD.Cookbook_Indicator_Circle.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Cookbook_Indicator_Circle)
	registerVal2.id = "Cookbook_Indicator_Circle"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 8.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 8.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 8.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 8.000000)
	registerVal3:setImage(RegisterImage("uie_t7_zm_cookbook_indicator_circle"))
	registerVal2:addElement(registerVal3)
	registerVal2.IndicatorCircle = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_574_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.IndicatorCircle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_574_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_67B_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.IndicatorCircle:setRGB(1.000000, 0.040000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_67B_
	registerVal4.Red = registerVal5
	registerVal5 = {}
	local function __FUNC_78A_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.IndicatorCircle:setRGB(0.160000, 0.920000, 0.150000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_78A_
	registerVal4.Green = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

