-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CallingCards_HandlingEyes")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_HandlingWidget = registerVal1
function CoD.CallingCards_HandlingWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_HandlingWidget)
	registerVal2.id = "CallingCards_HandlingWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_handling_bg"))
	registerVal2:addElement(registerVal3)
	registerVal2.BG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 184.000000, 416.000000)
	registerVal4:setTopBottom(true, false, -51.360000, 186.750000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcard_handling_skull"))
	registerVal2:addElement(registerVal4)
	registerVal2.skull = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal5:setImage(RegisterImage("uie_t7_callingcard_handling_bullets"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll_normal"))
	registerVal5:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.000000, -0.790000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.bullets = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -86.000000, 562.000000)
	registerVal6:setTopBottom(true, false, -42.000000, 162.000000)
	registerVal6:setImage(RegisterImage("uie_t7_callingcard_handling_bulletsblk"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll_normal"))
	registerVal6:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 0.000000, -0.270000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.bulletsblk = registerVal6
	local registerVal7 = CoD.CallingCards_HandlingEyes.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 272.600000, 278.740000)
	registerVal7:setTopBottom(true, false, 62.350000, 69.050000)
	registerVal2:addElement(registerVal7)
	registerVal2.CallingCardsHandlingEyes = registerVal7
	local registerVal8 = CoD.CallingCards_HandlingEyes.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 316.600000, 322.740000)
	registerVal8:setTopBottom(true, false, 62.350000, 69.050000)
	registerVal2:addElement(registerVal8)
	registerVal2.CallingCardsHandlingEyes0 = registerVal8
	local function __FUNC_A78_(arg0)
		arg0.CallingCardsHandlingEyes:close()
		arg0.CallingCardsHandlingEyes0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A78_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

