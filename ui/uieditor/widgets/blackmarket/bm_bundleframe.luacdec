-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BlackMarket.BM_Bribe_title")
require("ui.uieditor.widgets.BlackMarket.BM_Bribe_Expires")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_BundleFrame = registerVal1
function CoD.BM_BundleFrame.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_BundleFrame)
	registerVal2.id = "BM_BundleFrame"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 467.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 161.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -3.000000, 469.000000)
	registerVal3:setTopBottom(true, false, -3.050000, 164.950000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_bundle_bg"))
	registerVal2:addElement(registerVal3)
	registerVal2.BundleFrame = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -3.000000, 469.000000)
	registerVal4:setTopBottom(true, false, -3.050000, 164.950000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_bundle_gold_bg"))
	registerVal2:addElement(registerVal4)
	registerVal2.BundleBigBoxFrame = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 24.800000, 454.000000)
	registerVal5:setTopBottom(true, false, 21.500000, 141.280000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_blackmarket_genericpromo_wires"))
	registerVal2:addElement(registerVal5)
	registerVal2.Wires = registerVal5
	local registerVal6 = CoD.BM_Bribe_title.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 7.850000, 131.660000)
	registerVal6:setTopBottom(true, false, 8.020000, 62.190000)
	registerVal6.title:setRGB(1.000000, 1.000000, 1.000000)
	registerVal6.title:setText(LocalizeToUpperString("MPUI_BM_BUNDLE"))
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "GoldFrame"
	local function __FUNC_BE3_(arg0, arg1, arg2)
		return IsSelfInState(registerVal2, "GoldFrame")
	end

	registerVal10.condition = __FUNC_BE3_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal2:addElement(registerVal6)
	registerVal2.BMBribetitle = registerVal6
	local registerVal7 = CoD.BM_Bribe_Expires.new(arg0, arg1)
	registerVal7:setLeftRight(false, true, -125.380000, -16.000000)
	registerVal7:setTopBottom(true, false, 106.170000, 162.000000)
	registerVal7.Text:setText(Engine.Localize("MPUI_BM_PROMO_EXPIRES"))
	registerVal2:addElement(registerVal7)
	registerVal2.ExpiresWidget = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 27.570000, 138.570000)
	registerVal8:setTopBottom(true, false, 27.370000, 138.370000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_blackmarket_bribe_chip"))
	registerVal2:addElement(registerVal8)
	registerVal2.BribeChip = registerVal8
	registerVal9 = {}
	registerVal10 = {}
	local function __FUNC_C4A_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.BundleFrame:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BundleBigBoxFrame:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Wires:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BMBribetitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ExpiresWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BribeChip:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_C4A_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_F0E_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.BundleFrame:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BundleBigBoxFrame:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Wires:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BMBribetitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ExpiresWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BribeChip:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_F0E_
	registerVal9.GoldFrame = registerVal10
	registerVal2.clipsPerState = registerVal9
	local function __FUNC_11D2_(arg0)
		arg0.BMBribetitle:close()
		arg0.ExpiresWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_11D2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

