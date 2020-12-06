-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Border")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.EmblemGradientColorButton = registerVal1
function CoD.EmblemGradientColorButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.EmblemGradientColorButton)
	registerVal2.id = "EmblemGradientColorButton"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 315.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal3:setRGB(1.000000, 0.410000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.barBg = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 315.000000)
	registerVal4:setTopBottom(true, false, 0.500000, 32.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Black = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 3.000000, 87.000000)
	registerVal5:setTopBottom(true, false, 3.500000, 28.500000)
	registerVal2:addElement(registerVal5)
	registerVal2.color = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 92.000000, 306.000000)
	registerVal6:setTopBottom(true, false, 2.500000, 27.500000)
	registerVal6:setText(Engine.Localize("MENU_NEW"))
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.colorName = registerVal6
	local registerVal7 = CoD.Border.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 0.000000, 315.000000)
	registerVal7:setTopBottom(true, false, 0.500000, 31.500000)
	registerVal7:setAlpha(0.700000)
	registerVal2:addElement(registerVal7)
	registerVal2.buttonBorder = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 3.000000, 87.000000)
	registerVal8:setTopBottom(true, false, 3.500000, 28.500000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_paintshop_transparent_hori"))
	registerVal2:addElement(registerVal8)
	registerVal2.noColorImage = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_AFB_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.barBg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Black:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.color:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.buttonBorder:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.buttonBorder:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.noColorImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_AFB_
	local function __FUNC_D8D_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.barBg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Black:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.buttonBorder:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.buttonBorder:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal10.Focus = __FUNC_D8D_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_F74_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.barBg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Black:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.color:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.buttonBorder:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.buttonBorder:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.noColorImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_F74_
	local function __FUNC_1209_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.barBg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Black:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.buttonBorder:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.buttonBorder:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal10.Focus = __FUNC_1209_
	registerVal9.NoColor = registerVal10
	registerVal2.clipsPerState = registerVal9
	local function __FUNC_1471_(arg0)
		arg0.buttonBorder:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1471_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

