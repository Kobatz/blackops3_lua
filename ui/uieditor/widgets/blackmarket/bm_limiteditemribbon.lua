-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_LimitedItemRibbon = registerVal1
function CoD.BM_LimitedItemRibbon.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_LimitedItemRibbon)
	registerVal2.id = "BM_LimitedItemRibbon"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 113.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 24.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 17.640000)
	registerVal3:setTopBottom(true, false, 0.000000, 23.520000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_promo_ribbon_left"))
	registerVal2:addElement(registerVal3)
	registerVal2.PromoRibbon = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 17.640000, -18.060000)
	registerVal4:setTopBottom(true, false, 0.000000, 23.520000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_promo_ribbon_center"))
	registerVal2:addElement(registerVal4)
	registerVal2.PromoRibbon0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, true, -18.060000, -0.190000)
	registerVal5:setTopBottom(true, false, 0.000000, 23.520000)
	registerVal5:setImage(RegisterImage("uie_t7_blackmarket_promo_ribbon_right"))
	registerVal2:addElement(registerVal5)
	registerVal2.PromoRibbon00 = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, true, 8.820000, -10.700000)
	registerVal6:setTopBottom(true, false, 7.520000, 21.520000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setText(Engine.Localize("MPUI_BM_LIMITED"))
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal6:setShaderVector(0.000000, 0.030000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 0.010000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setLetterSpacing(1.300000)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_A77_(arg0, arg1)
		ScaleWidgetToLabelLeftJustify(registerVal2, arg0, 10.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal6, "setText", __FUNC_A77_)
	registerVal2:addElement(registerVal6)
	registerVal2.Text = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_AE0_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.PromoRibbon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PromoRibbon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PromoRibbon00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Text:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_AE0_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_CEA_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.PromoRibbon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PromoRibbon0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PromoRibbon00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_CEA_
	registerVal7.Visible = registerVal8
	registerVal2.clipsPerState = registerVal7
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

