-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_PromoFrame = registerVal1
function CoD.BM_PromoFrame.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_PromoFrame)
	registerVal2.id = "BM_PromoFrame"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 907.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 204.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -41.000000, -207.000000)
	registerVal3:setTopBottom(true, false, 32.000000, 168.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.500000)
	registerVal2:addElement(registerVal3)
	registerVal2.Backing = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 174.000000, -218.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 204.000000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_promo_framecenter"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image00 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, true, -218.000000, -182.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 204.000000)
	registerVal5:setImage(RegisterImage("uie_t7_blackmarket_promo_frameright"))
	registerVal2:addElement(registerVal5)
	registerVal2.Image000 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 174.000000, 0.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 204.000000)
	registerVal6:setImage(RegisterImage("uie_t7_blackmarket_promo_framecenter"))
	registerVal2:addElement(registerVal6)
	registerVal2.Image001 = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 51.550000, 689.000000)
	registerVal7:setTopBottom(true, false, 98.000000, 122.000000)
	registerVal7:setRGB(0.690000, 0.900000, 0.800000)
	registerVal7:setText(Engine.Localize("MENU_50_PERCENT_OFF"))
	registerVal7:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal7:setShaderVector(0.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(1.000000, 0.030000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setLineSpacing(-2.000000)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.Desc = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, -288.000000, 409.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 204.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_blackmarket_promo_framecenter"))
	registerVal2:addElement(registerVal8)
	registerVal2.Image00Arabic = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 409.000000, 445.000000)
	registerVal9:setTopBottom(true, false, 0.000000, 204.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setImage(RegisterImage("uie_t7_blackmarket_promo_frameright"))
	registerVal2:addElement(registerVal9)
	registerVal2.Image000Arabic = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, -288.000000, -462.000000)
	registerVal10:setTopBottom(true, false, 0.000000, 204.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setImage(RegisterImage("uie_t7_blackmarket_promo_framecenter"))
	registerVal2:addElement(registerVal10)
	registerVal2.Image001Arabic = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, -410.450000, 422.000000)
	registerVal11:setTopBottom(true, false, 98.000000, 122.000000)
	registerVal11:setRGB(0.690000, 0.900000, 0.800000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setText(Engine.Localize("MENU_50_PERCENT_OFF"))
	registerVal11:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal11:setShaderVector(0.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(1.000000, 0.030000, 0.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal11:setLineSpacing(-2.000000)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal11)
	registerVal2.DescArabic = registerVal11
	local registerVal12 = {}
	local registerVal13 = {}
	local function __FUNC_E92_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal13.DefaultClip = __FUNC_E92_
	registerVal12.DefaultState = registerVal13
	registerVal13 = {}
	local function __FUNC_EF2_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal2.Image00:setLeftRight(true, true, 174.000000, -36.000000)
		registerVal2.Image00:setTopBottom(true, false, 0.000000, 204.000000)
		registerVal2.Image00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Image000:setLeftRight(false, true, -36.000000, 0.000000)
		registerVal2.Image000:setTopBottom(true, false, 0.000000, 204.000000)
		registerVal2.Image000:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Image001:setLeftRight(true, false, 174.000000, 0.000000)
		registerVal2.Image001:setTopBottom(true, false, 0.000000, 204.000000)
		registerVal2.Image001:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Desc:setLeftRight(true, false, 51.550000, 884.000000)
		registerVal2.Desc:setTopBottom(true, false, 98.000000, 124.000000)
		registerVal2.Desc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Image00Arabic:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Image000Arabic:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Image001Arabic:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.DescArabic:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_EF2_
	registerVal12.Arabic = registerVal13
	registerVal2.clipsPerState = registerVal12
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "Arabic"
	local function __FUNC_13EC_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal15.condition = __FUNC_13EC_
	registerVal14 = {registerVal15}
	registerVal2:mergeStateConditions(registerVal14)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

