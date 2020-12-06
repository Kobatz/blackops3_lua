-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BubbleGumBuffs.GobbleGumCookbookNumbersWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GobbleGumCookbookConsumableCountNumbers = registerVal1
function CoD.GobbleGumCookbookConsumableCountNumbers.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GobbleGumCookbookConsumableCountNumbers)
	registerVal2.id = "GobbleGumCookbookConsumableCountNumbers"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 81.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 33.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.GobbleGumCookbookNumbersWidget.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -27.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_B58_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_B58_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "One"
	local function __FUNC_BAA_(arg0, arg2, arg3)
		return IsConsumableCountOnesDigitEqualTo(arg2, arg1, 1.000000)
	end

	registerVal7.condition = __FUNC_BAA_
	local registerVal8 = {}
	registerVal8.stateName = "Two"
	local function __FUNC_C1C_(arg0, arg2, arg3)
		return IsConsumableCountOnesDigitEqualTo(arg2, arg1, 2.000000)
	end

	registerVal8.condition = __FUNC_C1C_
	local registerVal9 = {}
	registerVal9.stateName = "Three"
	local function __FUNC_C90_(arg0, arg2, arg3)
		return IsConsumableCountOnesDigitEqualTo(arg2, arg1, 3.000000)
	end

	registerVal9.condition = __FUNC_C90_
	local registerVal10 = {}
	registerVal10.stateName = "Four"
	local function __FUNC_D04_(arg0, arg2, arg3)
		return IsConsumableCountOnesDigitEqualTo(arg2, arg1, 4.000000)
	end

	registerVal10.condition = __FUNC_D04_
	local registerVal11 = {}
	registerVal11.stateName = "Five"
	local function __FUNC_D78_(arg0, arg2, arg3)
		return IsConsumableCountOnesDigitEqualTo(arg2, arg1, 5.000000)
	end

	registerVal11.condition = __FUNC_D78_
	local registerVal12 = {}
	registerVal12.stateName = "Six"
	local function __FUNC_DEC_(arg0, arg2, arg3)
		return IsConsumableCountOnesDigitEqualTo(arg2, arg1, 6.000000)
	end

	registerVal12.condition = __FUNC_DEC_
	local registerVal13 = {}
	registerVal13.stateName = "Seven"
	local function __FUNC_E60_(arg0, arg2, arg3)
		return IsConsumableCountOnesDigitEqualTo(arg2, arg1, 7.000000)
	end

	registerVal13.condition = __FUNC_E60_
	local registerVal14 = {}
	registerVal14.stateName = "Eight"
	local function __FUNC_ED4_(arg0, arg2, arg3)
		return IsConsumableCountOnesDigitEqualTo(arg2, arg1, 8.000000)
	end

	registerVal14.condition = __FUNC_ED4_
	local registerVal15 = {}
	registerVal15.stateName = "Nine"
	local function __FUNC_F48_(arg0, arg2, arg3)
		return IsConsumableCountOnesDigitEqualTo(arg2, arg1, 9.000000)
	end

	registerVal15.condition = __FUNC_F48_
	registerVal6 = {registerVal7, registerVal8, registerVal9, registerVal10, registerVal11, registerVal12, registerVal13, registerVal14, registerVal15}
	registerVal3:mergeStateConditions(registerVal6)
	local function __FUNC_FBC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:linkToElementModel(registerVal3, "itemIndex", true, __FUNC_FBC_)
	registerVal2:addElement(registerVal3)
	registerVal2.OnesDigit = registerVal3
	local registerVal4 = CoD.GobbleGumCookbookNumbersWidget.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -13.500000, 13.500000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_10DB_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_10DB_)
	registerVal7 = {}
	registerVal8 = {}
	registerVal8.stateName = "One"
	local function __FUNC_112A_(arg0, arg2, arg3)
		return IsConsumableCountTensDigitEqualTo(arg2, arg1, 1.000000)
	end

	registerVal8.condition = __FUNC_112A_
	registerVal9 = {}
	registerVal9.stateName = "Two"
	local function __FUNC_119C_(arg0, arg2, arg3)
		return IsConsumableCountTensDigitEqualTo(arg2, arg1, 2.000000)
	end

	registerVal9.condition = __FUNC_119C_
	registerVal10 = {}
	registerVal10.stateName = "Three"
	local function __FUNC_1210_(arg0, arg2, arg3)
		return IsConsumableCountTensDigitEqualTo(arg2, arg1, 3.000000)
	end

	registerVal10.condition = __FUNC_1210_
	registerVal11 = {}
	registerVal11.stateName = "Four"
	local function __FUNC_1284_(arg0, arg2, arg3)
		return IsConsumableCountTensDigitEqualTo(arg2, arg1, 4.000000)
	end

	registerVal11.condition = __FUNC_1284_
	registerVal12 = {}
	registerVal12.stateName = "Five"
	local function __FUNC_12F8_(arg0, arg2, arg3)
		return IsConsumableCountTensDigitEqualTo(arg2, arg1, 5.000000)
	end

	registerVal12.condition = __FUNC_12F8_
	registerVal13 = {}
	registerVal13.stateName = "Six"
	local function __FUNC_136C_(arg0, arg2, arg3)
		return IsConsumableCountTensDigitEqualTo(arg2, arg1, 6.000000)
	end

	registerVal13.condition = __FUNC_136C_
	registerVal14 = {}
	registerVal14.stateName = "Seven"
	local function __FUNC_13E0_(arg0, arg2, arg3)
		return IsConsumableCountTensDigitEqualTo(arg2, arg1, 7.000000)
	end

	registerVal14.condition = __FUNC_13E0_
	registerVal15 = {}
	registerVal15.stateName = "Eight"
	local function __FUNC_1454_(arg0, arg2, arg3)
		return IsConsumableCountTensDigitEqualTo(arg2, arg1, 8.000000)
	end

	registerVal15.condition = __FUNC_1454_
	local registerVal16 = {}
	registerVal16.stateName = "Nine"
	local function __FUNC_14C8_(arg0, arg2, arg3)
		return IsConsumableCountTensDigitEqualTo(arg2, arg1, 9.000000)
	end

	registerVal16.condition = __FUNC_14C8_
	registerVal7 = {registerVal8, registerVal9, registerVal10, registerVal11, registerVal12, registerVal13, registerVal14, registerVal15, registerVal16}
	registerVal4:mergeStateConditions(registerVal7)
	local function __FUNC_153C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:linkToElementModel(registerVal4, "itemIndex", true, __FUNC_153C_)
	registerVal2:addElement(registerVal4)
	registerVal2.TensDigit = registerVal4
	local registerVal5 = CoD.GobbleGumCookbookNumbersWidget.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 27.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_165B_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_165B_)
	registerVal8 = {}
	registerVal9 = {}
	registerVal9.stateName = "One"
	local function __FUNC_16AA_(arg0, arg2, arg3)
		return IsConsumableCountHundredsDigitEqualTo(arg2, arg1, 1.000000)
	end

	registerVal9.condition = __FUNC_16AA_
	registerVal10 = {}
	registerVal10.stateName = "Two"
	local function __FUNC_1720_(arg0, arg2, arg3)
		return IsConsumableCountHundredsDigitEqualTo(arg2, arg1, 2.000000)
	end

	registerVal10.condition = __FUNC_1720_
	registerVal11 = {}
	registerVal11.stateName = "Three"
	local function __FUNC_1798_(arg0, arg2, arg3)
		return IsConsumableCountHundredsDigitEqualTo(arg2, arg1, 3.000000)
	end

	registerVal11.condition = __FUNC_1798_
	registerVal12 = {}
	registerVal12.stateName = "Four"
	local function __FUNC_1810_(arg0, arg2, arg3)
		return IsConsumableCountHundredsDigitEqualTo(arg2, arg1, 4.000000)
	end

	registerVal12.condition = __FUNC_1810_
	registerVal13 = {}
	registerVal13.stateName = "Five"
	local function __FUNC_1888_(arg0, arg2, arg3)
		return IsConsumableCountHundredsDigitEqualTo(arg2, arg1, 5.000000)
	end

	registerVal13.condition = __FUNC_1888_
	registerVal14 = {}
	registerVal14.stateName = "Six"
	local function __FUNC_1900_(arg0, arg2, arg3)
		return IsConsumableCountHundredsDigitEqualTo(arg2, arg1, 6.000000)
	end

	registerVal14.condition = __FUNC_1900_
	registerVal15 = {}
	registerVal15.stateName = "Seven"
	local function __FUNC_1978_(arg0, arg2, arg3)
		return IsConsumableCountHundredsDigitEqualTo(arg2, arg1, 7.000000)
	end

	registerVal15.condition = __FUNC_1978_
	registerVal16 = {}
	registerVal16.stateName = "Eight"
	local function __FUNC_19F0_(arg0, arg2, arg3)
		return IsConsumableCountHundredsDigitEqualTo(arg2, arg1, 8.000000)
	end

	registerVal16.condition = __FUNC_19F0_
	local registerVal17 = {}
	registerVal17.stateName = "Nine"
	local function __FUNC_1A68_(arg0, arg2, arg3)
		return IsConsumableCountHundredsDigitEqualTo(arg2, arg1, 9.000000)
	end

	registerVal17.condition = __FUNC_1A68_
	registerVal8 = {registerVal9, registerVal10, registerVal11, registerVal12, registerVal13, registerVal14, registerVal15, registerVal16, registerVal17}
	registerVal5:mergeStateConditions(registerVal8)
	local function __FUNC_1AE0_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "itemIndex", true, __FUNC_1AE0_)
	registerVal2:addElement(registerVal5)
	registerVal2.HundredsDigit = registerVal5
	registerVal6 = {}
	registerVal7 = {}
	local function __FUNC_1BFF_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.OnesDigit:setLeftRight(false, true, -54.000000, -27.000000)
		registerVal2.OnesDigit:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.OnesDigit:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.TensDigit:setLeftRight(false, false, 8.500000, 35.500000)
		registerVal2.TensDigit:setTopBottom(true, true, 0.000000, 66.000000)
		registerVal2.TensDigit:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.HundredsDigit:setLeftRight(true, false, 0.000000, 27.000000)
		registerVal2.HundredsDigit:setTopBottom(true, true, 0.000000, 66.000000)
		registerVal2.HundredsDigit:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1BFF_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_1EEE_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.OnesDigit:setLeftRight(false, true, -27.000000, 0.000000)
		registerVal2.OnesDigit:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.OnesDigit:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.TensDigit:setLeftRight(false, false, -13.500000, 13.500000)
		registerVal2.TensDigit:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.TensDigit:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.HundredsDigit:setLeftRight(true, false, 0.000000, 27.000000)
		registerVal2.HundredsDigit:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.HundredsDigit:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1EEE_
	registerVal6.Triple = registerVal7
	registerVal7 = {}
	local function __FUNC_21D4_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.OnesDigit:setLeftRight(false, true, -40.500000, -13.500000)
		registerVal2.OnesDigit:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.OnesDigit:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.TensDigit:setLeftRight(false, false, -27.000000, 0.000000)
		registerVal2.TensDigit:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.TensDigit:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.HundredsDigit:setLeftRight(true, false, 40.500000, 13.500000)
		registerVal2.HundredsDigit:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.HundredsDigit:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_21D4_
	registerVal6.Double = registerVal7
	registerVal2.clipsPerState = registerVal6
	local function __FUNC_24C1_(arg0)
		arg0.OnesDigit:close()
		arg0.TensDigit:close()
		arg0.HundredsDigit:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_24C1_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

