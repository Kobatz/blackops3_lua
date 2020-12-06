-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_Promo_Ribbon = registerVal1
function CoD.BM_Promo_Ribbon.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_Promo_Ribbon)
	registerVal2.id = "BM_Promo_Ribbon"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 165.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 35.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 4.860000, 27.000000)
	registerVal3:setTopBottom(true, false, 4.000000, 33.520000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_promo_ribbon_left"))
	registerVal2:addElement(registerVal3)
	registerVal2.PromoRibbon = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 27.000000, -22.430000)
	registerVal4:setTopBottom(true, false, 4.000000, 33.520000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_promo_ribbon_center"))
	registerVal2:addElement(registerVal4)
	registerVal2.PromoRibbon0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, true, -22.430000, 0.000000)
	registerVal5:setTopBottom(true, false, 4.000000, 33.520000)
	registerVal5:setImage(RegisterImage("uie_t7_blackmarket_promo_ribbon_right"))
	registerVal2:addElement(registerVal5)
	registerVal2.PromoRibbon00 = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, true, 23.850000, -24.670000)
	registerVal6:setTopBottom(true, false, 13.520000, 30.520000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setText(Engine.Localize("MPUI_BM_SPECIAL_OFFER"))
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal6:setShaderVector(0.000000, 0.030000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 0.010000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setLetterSpacing(1.300000)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_A79_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal6, "setText", __FUNC_A79_)
	registerVal2:addElement(registerVal6)
	registerVal2.Text = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_AD9_()
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

	registerVal8.DefaultClip = __FUNC_AD9_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_CE2_()
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

	registerVal8.DefaultClip = __FUNC_CE2_
	registerVal7.Visible = registerVal8
	registerVal2.clipsPerState = registerVal7
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

