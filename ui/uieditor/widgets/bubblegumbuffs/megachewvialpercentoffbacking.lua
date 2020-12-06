-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MegaChewVialPercentOffBacking = registerVal1
function CoD.MegaChewVialPercentOffBacking.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MegaChewVialPercentOffBacking)
	registerVal2.id = "MegaChewVialPercentOffBacking"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 150.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 22.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.600000, 0.900000)
	registerVal2:addElement(registerVal3)
	registerVal2.bg = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_677_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_677_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_6D6_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.bg:setRGB(ColorSet.BlackMarketCommon.r, ColorSet.BlackMarketCommon.g, ColorSet.BlackMarketCommon.b)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_6D6_
	registerVal4.Common = registerVal5
	registerVal5 = {}
	local function __FUNC_865_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.bg:setRGB(0.000000, 0.600000, 0.900000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_865_
	registerVal4.Rare = registerVal5
	registerVal5 = {}
	local function __FUNC_96E_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.bg:setRGB(ColorSet.BlackMarketLegendary.r, ColorSet.BlackMarketLegendary.g, ColorSet.BlackMarketLegendary.b)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_96E_
	registerVal4.Legendary = registerVal5
	registerVal5 = {}
	local function __FUNC_B00_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.bg:setRGB(1.000000, 0.670000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_B00_
	registerVal4.Epic = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Common"
	local function __FUNC_C05_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "rarity", "MPUI_BM_COMMON")
	end

	registerVal7.condition = __FUNC_C05_
	local registerVal8 = {}
	registerVal8.stateName = "Rare"
	local function __FUNC_C95_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "rarity", "MPUI_BM_RARE")
	end

	registerVal8.condition = __FUNC_C95_
	local registerVal9 = {}
	registerVal9.stateName = "Legendary"
	local function __FUNC_D23_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "rarity", "MPUI_BM_LEGENDARY")
	end

	registerVal9.condition = __FUNC_D23_
	local registerVal10 = {}
	registerVal10.stateName = "Epic"
	local function __FUNC_DB4_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "rarity", "MPUI_BM_EPIC")
	end

	registerVal10.condition = __FUNC_DB4_
	registerVal6 = {registerVal7, registerVal8, registerVal9, registerVal10}
	registerVal2:mergeStateConditions(registerVal6)
	local function __FUNC_E43_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "rarity"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "rarity", true, __FUNC_E43_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

