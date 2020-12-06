-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_PromoTitle = registerVal1
function CoD.BM_PromoTitle.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_PromoTitle)
	registerVal2.id = "BM_PromoTitle"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 832.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 48.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 38.260000, 0.000000)
	registerVal3:setTopBottom(true, false, -25.000000, 71.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_promo_titlebg_left_center"))
	registerVal2:addElement(registerVal3)
	registerVal2.Left0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -21.740000, 38.260000)
	registerVal4:setTopBottom(true, false, -25.000000, 71.000000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_promo_titlebg_left"))
	registerVal2:addElement(registerVal4)
	registerVal2.Left = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 14.500000, 822.000000)
	registerVal5:setTopBottom(true, false, 7.000000, 41.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setText(Engine.Localize("MENU_HALF_OFF"))
	registerVal5:setTTF("fonts/escom.ttf")
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal5:setShaderVector(0.000000, 0.090000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setLetterSpacing(1.600000)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_961_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 10.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal5, "setText", __FUNC_961_)
	registerVal2:addElement(registerVal5)
	registerVal2.Title = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_9C1_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_9C1_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

