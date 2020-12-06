-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CenterReticle = registerVal1
function CoD.CenterReticle.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CenterReticle)
	registerVal2.id = "CenterReticle"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 1094.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 495.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal3:setTopBottom(false, false, -240.000000, 240.000000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_blackcell_leftoutside"))
	registerVal2:addElement(registerVal3)
	registerVal2.LeftOutside = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -427.000000, -91.000000)
	registerVal4:setTopBottom(false, false, -96.000000, 96.000000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_blackcell_left_inside"))
	registerVal2:addElement(registerVal4)
	registerVal2.LeftInside = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, 90.000000, 426.000000)
	registerVal5:setTopBottom(false, false, -96.000000, 96.000000)
	registerVal5:setImage(RegisterImage("uie_t7_hud_blackcell_right_inside"))
	registerVal2:addElement(registerVal5)
	registerVal2.RightInside = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, true, -120.000000, 0.000000)
	registerVal6:setTopBottom(false, false, -240.000000, 240.000000)
	registerVal6:setImage(RegisterImage("uie_t7_hud_blackcell_rightoutside"))
	registerVal2:addElement(registerVal6)
	registerVal2.RightOutside0 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -90.000000, 90.000000)
	registerVal7:setTopBottom(false, false, -6.000000, 6.000000)
	registerVal7:setImage(RegisterImage("uie_t7_hud_blackcell_center"))
	registerVal2:addElement(registerVal7)
	registerVal2.Center = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -6.000000, 6.000000)
	registerVal8:setTopBottom(false, false, -1.500000, 118.500000)
	registerVal8:setRGB(0.640000, 1.000000, 0.810000)
	registerVal8:setImage(RegisterImage("uie_t7_hud_blackcell_centerbottom"))
	registerVal2:addElement(registerVal8)
	registerVal2.centerBottom = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, -72.000000, 72.000000)
	registerVal9:setTopBottom(false, false, -236.500000, -128.500000)
	registerVal9:setImage(RegisterImage("uie_t7_hud_blackcell_topinside"))
	registerVal2:addElement(registerVal9)
	registerVal2.Top = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, false, -72.000000, 72.000000)
	registerVal10:setTopBottom(false, false, 118.500000, 226.500000)
	registerVal10:setImage(RegisterImage("uie_t7_blackcell_bothinside"))
	registerVal2:addElement(registerVal10)
	registerVal2.Bottom = registerVal10
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_ABE_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal4:completeAnimation()
		registerVal2.LeftInside:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.RightInside:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.Center:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.centerBottom:setRGB(0.640000, 1.000000, 0.810000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Top:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Bottom:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_ABE_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_DA2_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal4:completeAnimation()
		registerVal2.LeftInside:setRGB(1.000000, 0.150000, 0.150000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.RightInside:setRGB(1.000000, 0.150000, 0.150000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.Center:setRGB(1.000000, 0.150000, 0.150000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.centerBottom:setRGB(1.000000, 0.150000, 0.150000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Top:setRGB(1.000000, 0.150000, 0.150000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Bottom:setRGB(1.000000, 0.150000, 0.150000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_DA2_
	registerVal11.Locked = registerVal12
	registerVal2.clipsPerState = registerVal11
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

