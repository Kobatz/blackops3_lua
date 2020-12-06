-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CallingCards_Lethals_Glow")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_LethalsWidget = registerVal1
function CoD.CallingCards_LethalsWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_LethalsWidget)
	registerVal2.id = "CallingCards_LethalsWidget"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -21.830000, 495.830000)
	registerVal3:setTopBottom(true, false, -31.200000, 148.260000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcards_tacticals_bg"))
	registerVal2:addElement(registerVal3)
	registerVal2.BG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -69.110000, 564.070000)
	registerVal4:setTopBottom(true, false, -66.200000, 153.300000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcards_tacticals_ember1"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll_normal"))
	registerVal4:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, -0.090000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.ember1 = registerVal4
	local registerVal5 = CoD.CallingCards_Lethals_Glow.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 43.640000, 500.190000)
	registerVal5:setTopBottom(true, false, -271.680000, 218.860000)
	registerVal2:addElement(registerVal5)
	registerVal2.CallingCardsLethalsGlow = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -21.830000, 495.830000)
	registerVal6:setTopBottom(true, false, -31.200000, 148.260000)
	registerVal6:setImage(RegisterImage("uie_t7_callingcards_tacticals_monster"))
	registerVal2:addElement(registerVal6)
	registerVal2.beast = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, -134.400000, 564.070000)
	registerVal7:setTopBottom(true, false, -46.730000, 195.400000)
	registerVal7:setImage(RegisterImage("uie_t7_callingcards_tacticals_ember2"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll_normal"))
	registerVal7:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(1.000000, 0.000000, -0.230000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.ember2 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, -7.650000, 271.910000)
	registerVal8:setTopBottom(true, false, 58.530000, 153.300000)
	registerVal8:setImage(RegisterImage("uie_t7_callingcards_tacticals_fire"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_flipbook"))
	registerVal8:setShaderVector(0.000000, 4.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(1.000000, 3.180000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.fire = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 189.000000, 315.950000)
	registerVal9:setTopBottom(true, false, 29.720000, 132.950000)
	registerVal9:setImage(RegisterImage("uie_t7_callingcards_tacticals_jaw"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("uie_flipbook"))
	registerVal9:setShaderVector(0.000000, 3.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(1.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.jaw = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 117.170000, 203.000000)
	registerVal10:setTopBottom(true, false, -26.410000, 85.860000)
	registerVal10:setAlpha(0.350000)
	registerVal10:setImage(RegisterImage("uie_t7_callingcards_tacticals_nosesmoke"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("uie_flipbook_add"))
	registerVal10:setShaderVector(0.000000, 3.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(1.000000, 2.040000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.smoke = registerVal10
	local function __FUNC_DCA_(arg0)
		arg0.CallingCardsLethalsGlow:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_DCA_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

