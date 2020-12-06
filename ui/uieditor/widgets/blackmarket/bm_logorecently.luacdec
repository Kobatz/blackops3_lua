-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_LogoRecently = registerVal1
function CoD.BM_LogoRecently.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_LogoRecently)
	registerVal2.id = "BM_LogoRecently"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 391.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 121.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 166.030000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.490000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_logo_header_left"))
	registerVal2:addElement(registerVal3)
	registerVal2.left = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 166.030000, -32.400000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.490000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_logo_header_center"))
	registerVal2:addElement(registerVal4)
	registerVal2.left0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, true, -32.400000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.490000)
	registerVal5:setImage(RegisterImage("uie_t7_blackmarket_logo_header_right"))
	registerVal2:addElement(registerVal5)
	registerVal2.left00 = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 166.000000, 391.000000)
	registerVal6:setTopBottom(true, false, 56.000000, 68.000000)
	registerVal6:setRGB(0.870000, 0.870000, 0.750000)
	registerVal6:setText(Engine.Localize("MPUI_RECENT_CONTRABAND_CAPS"))
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal6:setShaderVector(0.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 0.030000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setLetterSpacing(6.900001)
	local function __FUNC_970_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, -159.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal6, "setText", __FUNC_970_)
	registerVal2:addElement(registerVal6)
	registerVal2.RecentItems = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_9D1_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.DefaultClip = __FUNC_9D1_
	registerVal7.DefaultState = registerVal8
	registerVal2.clipsPerState = registerVal7
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

