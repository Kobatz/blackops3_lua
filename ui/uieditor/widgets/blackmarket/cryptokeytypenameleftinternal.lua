-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CryptokeyTypeNameLeftInternal = registerVal1
function CoD.CryptokeyTypeNameLeftInternal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CryptokeyTypeNameLeftInternal)
	registerVal2.id = "CryptokeyTypeNameLeftInternal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 150.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 22.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.600000, 0.900000)
	registerVal2:addElement(registerVal3)
	registerVal2.bg = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, -8.680000, 8.680000)
	registerVal4:setImage(RegisterImage("uie_t7_icon_cac_bm_label"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal4:setShaderVector(0.000000, 0.480000, 0.254011, 0.400000, 0.350000)
	registerVal4:setupNineSliceShader(72.000000, 10.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.GoldBG = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, true, 7.000000, -7.000000)
	registerVal5:setTopBottom(false, false, -11.000000, 11.000000)
	registerVal5:setText(Engine.Localize("MPUI_BM_RARE"))
	registerVal5:setTTF("fonts/escom.ttf")
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal5:setShaderVector(0.000000, 0.090000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setLetterSpacing(2.000000)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_BCC_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal5, "setText", __FUNC_BCC_)
	registerVal2:addElement(registerVal5)
	registerVal2.nameText = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_C2D_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_C2D_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_C8E_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.bg:setRGB(ColorSet.BlackMarketCommon.r, ColorSet.BlackMarketCommon.g, ColorSet.BlackMarketCommon.b)
		registerVal2.bg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GoldBG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.nameText:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_C8E_
	registerVal6.Common = registerVal7
	registerVal7 = {}
	local function __FUNC_F07_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.bg:setRGB(0.000000, 0.600000, 0.900000)
		registerVal2.bg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GoldBG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.nameText:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_F07_
	registerVal6.Rare = registerVal7
	registerVal7 = {}
	local function __FUNC_10F3_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.bg:setRGB(ColorSet.BlackMarketLegendary.r, ColorSet.BlackMarketLegendary.g, ColorSet.BlackMarketLegendary.b)
		registerVal2.bg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GoldBG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.nameText:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_10F3_
	registerVal6.Legendary = registerVal7
	registerVal7 = {}
	local function __FUNC_136E_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.bg:setRGB(1.000000, 0.670000, 0.000000)
		registerVal2.bg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GoldBG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.nameText:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_136E_
	registerVal6.Epic = registerVal7
	registerVal7 = {}
	local function __FUNC_1556_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.bg:setRGB(ColorSet.BlackMarketLimited.r, ColorSet.BlackMarketLimited.g, ColorSet.BlackMarketLimited.b)
		registerVal2.bg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GoldBG:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.GoldBG:setTopBottom(true, true, -8.680000, 8.680000)
		registerVal2.GoldBG:setAlpha(1.000000)
		registerVal2.GoldBG:setScale(1.050000)
		registerVal2.GoldBG:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
		registerVal2.GoldBG:setShaderVector(0.000000, 0.857143, 0.000000, 0.400000, 0.350000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.nameText:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.nameText:setScale(0.900000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1556_
	registerVal6.Limited = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Common"
	local function __FUNC_19A6_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "rarity", "MPUI_BM_COMMON")
	end

	registerVal9.condition = __FUNC_19A6_
	local registerVal10 = {}
	registerVal10.stateName = "Rare"
	local function __FUNC_1A35_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "rarity", "MPUI_BM_RARE")
	end

	registerVal10.condition = __FUNC_1A35_
	local registerVal11 = {}
	registerVal11.stateName = "Legendary"
	local function __FUNC_1AC3_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "rarity", "MPUI_BM_LEGENDARY")
	end

	registerVal11.condition = __FUNC_1AC3_
	local registerVal12 = {}
	registerVal12.stateName = "Epic"
	local function __FUNC_1B54_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "rarity", "MPUI_BM_EPIC")
	end

	registerVal12.condition = __FUNC_1B54_
	local registerVal13 = {}
	registerVal13.stateName = "Limited"
	local function __FUNC_1BE3_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "rarity", "MPUI_BM_LIMITED")
	end

	registerVal13.condition = __FUNC_1BE3_
	registerVal8 = {registerVal9, registerVal10, registerVal11, registerVal12, registerVal13}
	registerVal2:mergeStateConditions(registerVal8)
	local function __FUNC_1C72_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "rarity"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "rarity", true, __FUNC_1C72_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

