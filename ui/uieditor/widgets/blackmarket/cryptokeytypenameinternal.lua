-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CryptokeyTypeNameInternal = registerVal1
function CoD.CryptokeyTypeNameInternal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CryptokeyTypeNameInternal)
	registerVal2.id = "CryptokeyTypeNameInternal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 22.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.600000, 0.900000)
	registerVal2:addElement(registerVal3)
	registerVal2.bg = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, false, -250.000000, 250.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 22.000000)
	registerVal4:setText(Engine.Localize("MPUI_BM_RARE"))
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal4:setShaderVector(0.000000, 0.090000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setLetterSpacing(2.000000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_AE5_(arg0, arg1)
		ScaleWidgetToLabelCentered(registerVal2, arg0, 7.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_AE5_)
	registerVal2:addElement(registerVal4)
	registerVal2.nameText = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_B4D_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.bg:setRGB(0.000000, 0.600000, 0.900000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.nameText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_B4D_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_CC3_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.bg:setRGB(ColorSet.BlackMarketCommon.r, ColorSet.BlackMarketCommon.g, ColorSet.BlackMarketCommon.b)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.nameText:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_CC3_
	registerVal5.Common = registerVal6
	registerVal6 = {}
	local function __FUNC_EB4_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.bg:setRGB(0.000000, 0.600000, 0.900000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.nameText:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_EB4_
	registerVal5.Rare = registerVal6
	registerVal6 = {}
	local function __FUNC_1021_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.bg:setRGB(ColorSet.BlackMarketLegendary.r, ColorSet.BlackMarketLegendary.g, ColorSet.BlackMarketLegendary.b)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.nameText:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_1021_
	registerVal5.Legendary = registerVal6
	registerVal6 = {}
	local function __FUNC_1217_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.bg:setRGB(1.000000, 0.670000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.nameText:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_1217_
	registerVal5.Epic = registerVal6
	registerVal6 = {}
	local function __FUNC_137C_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.bg:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.nameText:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_137C_
	registerVal5.Bribe = registerVal6
	registerVal6 = {}
	local function __FUNC_14DF_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.bg:setRGB(0.000000, 0.600000, 0.900000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.nameText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_14DF_
	registerVal5.Bundle = registerVal6
	registerVal6 = {}
	local function __FUNC_1653_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.bg:setRGB(ColorSet.BlackMarketCommon.r, ColorSet.BlackMarketCommon.g, ColorSet.BlackMarketCommon.b)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.nameText:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_1653_
	registerVal5.SixPack = registerVal6
	registerVal6 = {}
	local function __FUNC_1844_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.bg:setRGB(ColorSet.BlackMarketLimited.r, ColorSet.BlackMarketLimited.g, ColorSet.BlackMarketLimited.b)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.nameText:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_1844_
	registerVal5.Limited = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Common"
	local function __FUNC_1A39_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "rarity", "MPUI_BM_COMMON")
	end

	registerVal8.condition = __FUNC_1A39_
	local registerVal9 = {}
	registerVal9.stateName = "Rare"
	local function __FUNC_1AC9_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "rarity", "MPUI_BM_RARE")
	end

	registerVal9.condition = __FUNC_1AC9_
	local registerVal10 = {}
	registerVal10.stateName = "Legendary"
	local function __FUNC_1B57_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "rarity", "MPUI_BM_LEGENDARY")
	end

	registerVal10.condition = __FUNC_1B57_
	local registerVal11 = {}
	registerVal11.stateName = "Epic"
	local function __FUNC_1BE8_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "rarity", "MPUI_BM_EPIC")
	end

	registerVal11.condition = __FUNC_1BE8_
	local registerVal12 = {}
	registerVal12.stateName = "Limited"
	local function __FUNC_1C77_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "rarity", "MPUI_BM_LIMITED")
	end

	registerVal12.condition = __FUNC_1C77_
	local registerVal13 = {}
	registerVal13.stateName = "Bribe"
	local function __FUNC_1D06_(arg0, arg2, arg3)
		return IsSelfModelValueEqualToAnyValue(arg2, arg1, "rarity", "MPUI_BM_BRIBE_CALLINGCARD", "MPUI_BM_BRIBE_OUTFIT", "MPUI_BM_BRIBE_TAUNTS_GESTURES")
	end

	registerVal13.condition = __FUNC_1D06_
	local registerVal14 = {}
	registerVal14.stateName = "Bundle"
	local function __FUNC_1DF5_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "rarity", "MPUI_BM_BUNDLE")
	end

	registerVal14.condition = __FUNC_1DF5_
	local registerVal15 = {}
	registerVal15.stateName = "SixPack"
	local function __FUNC_1E85_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "rarity", "MPUI_BM_SIX_PACK")
	end

	registerVal15.condition = __FUNC_1E85_
	registerVal7 = {registerVal8, registerVal9, registerVal10, registerVal11, registerVal12, registerVal13, registerVal14, registerVal15}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_1F17_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "rarity"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "rarity", true, __FUNC_1F17_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

