-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ZM_Promo_50percentInternal = registerVal1
function CoD.ZM_Promo_50percentInternal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ZM_Promo_50percentInternal)
	registerVal2.id = "ZM_Promo_50percentInternal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 762.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 36.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 1.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.350000)
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_edges"))
	registerVal3:setShaderVector(0.000000, 0.010000, 0.030000, 0.010000, 0.030000)
	registerVal2:addElement(registerVal3)
	registerVal2.BLACKBOX = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, false, -374.000000, 372.000000)
	registerVal4:setTopBottom(false, true, -32.500000, -2.500000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.430000)
	registerVal4:setText(Engine.Localize("MENU_50PERCENTOFF"))
	registerVal4:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal4:setShaderVector(0.000000, 0.210000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.880000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setLetterSpacing(-2.000000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_B95_(arg0, arg1)
		ScaleWidgetToLabelCentered(registerVal2, arg0, 6.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_B95_)
	registerVal2:addElement(registerVal4)
	registerVal2.MarketingShadow = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(false, false, -374.000000, 372.000000)
	registerVal5:setTopBottom(false, true, -32.500000, -2.500000)
	registerVal5:setRGB(1.000000, 0.750000, 0.310000)
	registerVal5:setText(Engine.Localize("MENU_50PERCENTOFF"))
	registerVal5:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal5:setShaderVector(0.000000, 0.010000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.010000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setLetterSpacing(-2.000000)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_BFD_(arg0, arg1)
		ScaleWidgetToLabelCentered(registerVal2, arg0, 6.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal5, "setText", __FUNC_BFD_)
	registerVal2:addElement(registerVal5)
	registerVal2.Marketing = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_C65_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_C65_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_CC6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_CC6_
	registerVal6.HorizontalList = registerVal7
	registerVal7 = {}
	local function __FUNC_D26_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_D26_
	registerVal6.Purchasing = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "HorizontalList"
	local function __FUNC_D86_(arg0, arg1, arg2)
		return IsCurrentMenu(arg0, "PurchaseVials")
	end

	registerVal9.condition = __FUNC_D86_
	local registerVal10 = {}
	registerVal10.stateName = "Purchasing"
	local function __FUNC_DF2_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal10.condition = __FUNC_DF2_
	registerVal8 = {registerVal9, registerVal10}
	registerVal2:mergeStateConditions(registerVal8)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

