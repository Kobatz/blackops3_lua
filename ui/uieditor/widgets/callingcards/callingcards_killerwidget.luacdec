-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CallingCards_KillerCloudFront")
require("ui.uieditor.widgets.CallingCards.CallingCards_KillerEyes")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_KillerWidget = registerVal1
function CoD.CallingCards_KillerWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_KillerWidget)
	registerVal2.id = "CallingCards_KillerWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_killer_bg"))
	registerVal2:addElement(registerVal3)
	registerVal2.bg = registerVal3
	local registerVal4 = CoD.CallingCards_KillerCloudFront.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 114.100000, 501.650000)
	registerVal4:setTopBottom(true, false, -24.250000, 144.250000)
	registerVal4:setAlpha(0.950000)
	registerVal2:addElement(registerVal4)
	registerVal2.CallingCardsKillerCloudFront = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 156.000000, 480.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal5:setImage(RegisterImage("uie_t7_callingcard_killer_creeper"))
	registerVal2:addElement(registerVal5)
	registerVal2.skull = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal6:setImage(RegisterImage("uie_t7_callingcard_killer_ash2"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll_normal"))
	registerVal6:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 0.000000, 1.040000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.ash2 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal7:setImage(RegisterImage("uie_t7_callingcard_killer_ash1"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll_normal"))
	registerVal7:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(1.000000, 0.000000, 0.380000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.ash1 = registerVal7
	local registerVal8 = CoD.CallingCards_KillerEyes.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 301.000000, 333.000000)
	registerVal8:setTopBottom(true, false, 38.500000, 50.500000)
	registerVal2:addElement(registerVal8)
	registerVal2.CallingCardsKillerEyes = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_B40_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.CallingCardsKillerCloudFront:setAlpha(0.950000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal10.DefaultClip = __FUNC_B40_
	registerVal9.DefaultState = registerVal10
	registerVal2.clipsPerState = registerVal9
	local function __FUNC_C54_(arg0)
		arg0.CallingCardsKillerCloudFront:close()
		arg0.CallingCardsKillerEyes:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_C54_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

