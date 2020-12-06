-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_Bribe_title = registerVal1
function CoD.BM_Bribe_title.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_Bribe_title)
	registerVal2.id = "BM_Bribe_title"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 124.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 54.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 46.430000)
	registerVal3:setTopBottom(true, false, 0.000000, 54.170000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_genericpromo_title_bg_left"))
	registerVal2:addElement(registerVal3)
	registerVal2.BribeTitle = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 46.430000)
	registerVal4:setTopBottom(true, false, 0.000000, 54.170000)
	registerVal4:setRGB(1.000000, 0.690000, 0.260000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_genericpromo_title_bg_left"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.BribeTitle1Add = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 46.430000, -38.880000)
	registerVal5:setTopBottom(true, false, 0.000000, 54.170000)
	registerVal5:setImage(RegisterImage("uie_t7_blackmarket_genericpromo_title_bg_center"))
	registerVal2:addElement(registerVal5)
	registerVal2.BribeTitle0 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 46.430000, -38.880000)
	registerVal6:setTopBottom(true, false, 0.000000, 54.170000)
	registerVal6:setRGB(1.000000, 0.690000, 0.260000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_blackmarket_genericpromo_title_bg_center"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.BribeTitle0Add = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, true, -38.880000, -0.190000)
	registerVal7:setTopBottom(true, false, 0.000000, 54.170000)
	registerVal7:setImage(RegisterImage("uie_t7_blackmarket_genericpromo_title_bg_right"))
	registerVal2:addElement(registerVal7)
	registerVal2.BribeTitle00 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, true, -38.880000, -0.190000)
	registerVal8:setTopBottom(true, false, 0.000000, 54.170000)
	registerVal8:setRGB(1.000000, 0.690000, 0.260000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_blackmarket_genericpromo_title_bg_right"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.BribeTitleAdd = registerVal8
	local registerVal9 = LUI.UITightText.new()
	registerVal9:setLeftRight(true, false, 20.490000, 123.810000)
	registerVal9:setTopBottom(true, false, 1.000000, 26.000000)
	registerVal9:setRGB(0.000000, 0.000000, 0.000000)
	registerVal9:setText(LocalizeToUpperString("MPUI_BM_BRIBE"))
	registerVal9:setTTF("fonts/default.ttf")
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal9:setShaderVector(0.000000, 0.030000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(1.000000, 0.010000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setLetterSpacing(0.300000)
	local function __FUNC_C7F_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 20.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal9, "setText", __FUNC_C7F_)
	registerVal2:addElement(registerVal9)
	registerVal2.title = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_CDD_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.BribeTitle:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BribeTitle1Add:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BribeTitle0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BribeTitle0Add:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BribeTitle00:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BribeTitleAdd:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal11.DefaultClip = __FUNC_CDD_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_FD1_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.BribeTitle:setRGB(1.000000, 0.780000, 0.470000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BribeTitle1Add:setRGB(1.000000, 0.690000, 0.260000)
		registerVal2.BribeTitle1Add:setAlpha(0.500000)
		registerVal2.BribeTitle1Add:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BribeTitle0:setRGB(1.000000, 0.780000, 0.470000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BribeTitle0Add:setRGB(1.000000, 0.690000, 0.260000)
		registerVal2.BribeTitle0Add:setAlpha(0.500000)
		registerVal2.BribeTitle0Add:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BribeTitle00:setRGB(1.000000, 0.780000, 0.470000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BribeTitleAdd:setRGB(1.000000, 0.690000, 0.260000)
		registerVal2.BribeTitleAdd:setAlpha(0.500000)
		registerVal2.BribeTitleAdd:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal11.DefaultClip = __FUNC_FD1_
	registerVal10.GoldFrame = registerVal11
	registerVal2.clipsPerState = registerVal10
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

