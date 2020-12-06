-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CryptokeyTypeNameAndCount = registerVal1
function CoD.CryptokeyTypeNameAndCount.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CryptokeyTypeNameAndCount)
	registerVal2.id = "CryptokeyTypeNameAndCount"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 180.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 27.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 32.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(ColorSet.BlackMarketRare.r, ColorSet.BlackMarketRare.g, ColorSet.BlackMarketRare.b)
	registerVal3:setAlpha(0.200000)
	registerVal2:addElement(registerVal3)
	registerVal2.bg = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -7.000000, 45.000000)
	registerVal4:setTopBottom(true, false, -7.000000, 33.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_label_common"))
	registerVal2:addElement(registerVal4)
	registerVal2.Labelcommon = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -7.000000, 45.000000)
	registerVal5:setTopBottom(true, false, -6.000000, 34.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_blackmarket_label_rare"))
	registerVal2:addElement(registerVal5)
	registerVal2.Labelrare = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -7.000000, 45.000000)
	registerVal6:setTopBottom(true, false, -7.000000, 33.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_blackmarket_label_legendary"))
	registerVal2:addElement(registerVal6)
	registerVal2.Labellegendary = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, -7.000000, 45.000000)
	registerVal7:setTopBottom(true, false, -7.000000, 33.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_blackmarket_label_epic"))
	registerVal2:addElement(registerVal7)
	registerVal2.Labelepic = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, true, 39.000000, 0.000000)
	registerVal8:setTopBottom(true, false, 2.000000, 24.000000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal8:setText(Engine.Localize("MPUI_BM_RARE"))
	registerVal8:setTTF("fonts/escom.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_DF1_(arg0, arg1)
		ScaleWidgetToLabelLeftJustify(registerVal2, arg0, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal8, "setText", __FUNC_DF1_)
	registerVal2:addElement(registerVal8)
	registerVal2.nameText = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, false, 2.000000, 36.000000)
	registerVal9:setTopBottom(true, false, 2.000000, 24.000000)
	registerVal9:setText(Engine.Localize("4"))
	registerVal9:setTTF("fonts/escom.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal9)
	registerVal2.count = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_E5C_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal11.DefaultClip = __FUNC_E5C_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_EBE_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.bg:setRGB(ColorSet.BlackMarketCommon.r, ColorSet.BlackMarketCommon.g, ColorSet.BlackMarketCommon.b)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Labelcommon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Labelrare:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Labellegendary:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Labelepic:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.nameText:setRGB(0.790000, 0.790000, 0.790000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal11.DefaultClip = __FUNC_EBE_
	registerVal10.Common = registerVal11
	registerVal11 = {}
	local function __FUNC_122F_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.bg:setRGB(ColorSet.BlackMarketRare.r, ColorSet.BlackMarketRare.g, ColorSet.BlackMarketRare.b)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Labelcommon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Labelrare:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Labellegendary:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Labelepic:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.nameText:setRGB(0.700000, 0.850000, 1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal11.DefaultClip = __FUNC_122F_
	registerVal10.Rare = registerVal11
	registerVal11 = {}
	local function __FUNC_15A2_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.bg:setRGB(ColorSet.BlackMarketLegendary.r, ColorSet.BlackMarketLegendary.g, ColorSet.BlackMarketLegendary.b)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Labelcommon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Labelrare:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Labellegendary:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Labelepic:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.nameText:setRGB(0.800000, 0.700000, 1.000000)
		registerVal2.nameText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal11.DefaultClip = __FUNC_15A2_
	registerVal10.Legendary = registerVal11
	registerVal11 = {}
	local function __FUNC_1937_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.bg:setRGB(ColorSet.BlackMarketEpic.r, ColorSet.BlackMarketEpic.g, ColorSet.BlackMarketEpic.b)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Labelcommon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Labelrare:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Labellegendary:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Labelepic:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.nameText:setRGB(1.000000, 0.910000, 0.700000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal11.DefaultClip = __FUNC_1937_
	registerVal10.Epic = registerVal11
	registerVal2.clipsPerState = registerVal10
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Common"
	local function __FUNC_1CAA_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "cryptoKeyType", "MPUI_BM_COMMON")
	end

	registerVal13.condition = __FUNC_1CAA_
	local registerVal14 = {}
	registerVal14.stateName = "Rare"
	local function __FUNC_1D40_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "cryptoKeyType", "MPUI_BM_RARE")
	end

	registerVal14.condition = __FUNC_1D40_
	local registerVal15 = {}
	registerVal15.stateName = "Legendary"
	local function __FUNC_1DD6_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "cryptoKeyType", "MPUI_BM_LEGENDARY")
	end

	registerVal15.condition = __FUNC_1DD6_
	local registerVal16 = {}
	registerVal16.stateName = "Epic"
	local function __FUNC_1E6F_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "cryptoKeyType", "MPUI_BM_EPIC")
	end

	registerVal16.condition = __FUNC_1E6F_
	registerVal12 = {registerVal13, registerVal14, registerVal15, registerVal16}
	registerVal2:mergeStateConditions(registerVal12)
	local function __FUNC_1F02_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "cryptoKeyType"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "cryptoKeyType", true, __FUNC_1F02_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

