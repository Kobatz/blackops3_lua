-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BlackMarket.BM_GoldBarMed")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BlackMarketClassifiedIcon = registerVal1
function CoD.BlackMarketClassifiedIcon.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BlackMarketClassifiedIcon)
	registerVal2.id = "BlackMarketClassifiedIcon"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 108.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 108.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.110000, 0.110000, 0.110000)
	registerVal2:addElement(registerVal3)
	registerVal2.bgImage = registerVal3
	local registerVal4 = CoD.BM_GoldBarMed.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 3.380000, -3.380000)
	registerVal4:setTopBottom(true, true, 48.060000, -48.060000)
	registerVal2:addElement(registerVal4)
	registerVal2.BMGoldBarMed = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 27.750000, -27.750000)
	registerVal5:setTopBottom(true, true, 27.750000, -27.750000)
	registerVal5:setImage(RegisterImage("uie_t7_icon_blackmarket_encryptedicon_large"))
	registerVal2:addElement(registerVal5)
	registerVal2.blackMarketBrandIcon0 = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_756_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_756_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	local function __FUNC_7B6_(arg0)
		arg0.BMGoldBarMed:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_7B6_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

