-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.verticalCounterNoNumbers = registerVal1
function CoD.verticalCounterNoNumbers.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.verticalCounterNoNumbers)
	registerVal2.id = "verticalCounterNoNumbers"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 200.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -12.000000, 4.000000)
	registerVal3:setTopBottom(false, false, -4.000000, 4.000000)
	registerVal3:setRGB(1.000000, 0.410000, 0.000000)
	registerVal3:setZRot(180.000000)
	registerVal3:setImage(RegisterImage("uie_img_t7_menu_arrow"))
	registerVal2:addElement(registerVal3)
	registerVal2.upArrow = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, 10.000000, 26.000000)
	registerVal4:setTopBottom(false, false, -4.000000, 4.000000)
	registerVal4:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
	registerVal4:setImage(RegisterImage("uie_img_t7_menu_arrow"))
	registerVal2:addElement(registerVal4)
	registerVal2.downArrow = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_803_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.upArrow:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.upArrow:setAlpha(1.000000)
		registerVal2.upArrow:setZRot(180.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.downArrow:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.downArrow:setAlpha(1.000000)
		registerVal2.downArrow:setZRot(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_803_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_AD4_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.upArrow:setRGB(0.200000, 0.290000, 0.330000)
		registerVal2.upArrow:setAlpha(0.000000)
		registerVal2.upArrow:setZRot(180.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.downArrow:setRGB(0.200000, 0.290000, 0.330000)
		registerVal2.downArrow:setAlpha(0.000000)
		registerVal2.downArrow:setZRot(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_AD4_
	registerVal5.AtTopAndBottom = registerVal6
	registerVal6 = {}
	local function __FUNC_CDF_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.upArrow:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.upArrow:setAlpha(1.000000)
		registerVal2.upArrow:setZRot(180.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.downArrow:setRGB(0.200000, 0.290000, 0.330000)
		registerVal2.downArrow:setAlpha(1.000000)
		registerVal2.downArrow:setZRot(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_CDF_
	registerVal5.AtTop = registerVal6
	registerVal6 = {}
	local function __FUNC_F77_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.upArrow:setRGB(0.200000, 0.290000, 0.330000)
		registerVal2.upArrow:setAlpha(1.000000)
		registerVal2.upArrow:setZRot(180.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.downArrow:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.downArrow:setAlpha(1.000000)
		registerVal2.downArrow:setZRot(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_F77_
	registerVal5.AtBottom = registerVal6
	registerVal6 = {}
	local function __FUNC_120F_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.upArrow:setAlpha(0.000000)
		registerVal2.upArrow:setZRot(180.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.downArrow:setAlpha(0.000000)
		registerVal2.downArrow:setZRot(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_120F_
	registerVal5.NoItems = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "AtTopAndBottom"
	local function __FUNC_13B0_(arg0, arg1, arg2)
		return IsSelfInState(registerVal2, "AtTopAndBottom")
	end

	registerVal8.condition = __FUNC_13B0_
	local registerVal9 = {}
	registerVal9.stateName = "AtTop"
	local function __FUNC_141F_(arg0, arg1, arg2)
		return IsSelfInState(registerVal2, "AtTop")
	end

	registerVal9.condition = __FUNC_141F_
	local registerVal10 = {}
	registerVal10.stateName = "AtBottom"
	local function __FUNC_1482_(arg0, arg1, arg2)
		return IsSelfInState(registerVal2, "AtBottom")
	end

	registerVal10.condition = __FUNC_1482_
	local registerVal11 = {}
	registerVal11.stateName = "NoItems"
	local function __FUNC_14E9_(arg0, arg1, arg2)
		return true
	end

	registerVal11.condition = __FUNC_14E9_
	registerVal7 = {registerVal8, registerVal9, registerVal10, registerVal11}
	registerVal2:mergeStateConditions(registerVal7)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

