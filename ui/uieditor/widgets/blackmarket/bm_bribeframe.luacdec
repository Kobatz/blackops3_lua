-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BlackMarket.BM_Bribe_Expires")
require("ui.uieditor.widgets.BlackMarket.BM_Bribe_title")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_BribeFrame = registerVal1
function CoD.BM_BribeFrame.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_BribeFrame)
	registerVal2.id = "BM_BribeFrame"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 467.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 161.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -3.000000, 469.000000)
	registerVal3:setTopBottom(true, false, -3.050000, 164.950000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_bribe_bg"))
	registerVal2:addElement(registerVal3)
	registerVal2.BribeFrame = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 22.800000, 454.000000)
	registerVal4:setTopBottom(true, false, 21.500000, 141.280000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_bribe_wires"))
	registerVal2:addElement(registerVal4)
	registerVal2.Wires = registerVal4
	local registerVal5 = CoD.BM_Bribe_Expires.new(arg0, arg1)
	registerVal5:setLeftRight(false, true, -125.380000, -16.000000)
	registerVal5:setTopBottom(true, false, 106.170000, 162.000000)
	registerVal5.Text:setText(Engine.Localize("MPUI_BM_PROMO_EXPIRES"))
	registerVal2:addElement(registerVal5)
	registerVal2.ExpiresWidget = registerVal5
	local registerVal6 = CoD.BM_Bribe_title.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 4.850000, 128.660000)
	registerVal6:setTopBottom(true, false, 5.020000, 59.190000)
	registerVal6.title:setText(LocalizeToUpperString("MPUI_BM_BRIBE"))
	registerVal2:addElement(registerVal6)
	registerVal2.BMBribetitle = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, -3.000000, 469.000000)
	registerVal7:setTopBottom(true, false, -3.050000, 164.950000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_blackmarket_bundle_gold_bg"))
	registerVal2:addElement(registerVal7)
	registerVal2.BundleBigBoxFrame = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 27.570000, 138.570000)
	registerVal8:setTopBottom(true, false, 27.370000, 138.370000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_blackmarket_bribe_chip"))
	registerVal2:addElement(registerVal8)
	registerVal2.BribeChip = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_AE4_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal10.DefaultClip = __FUNC_AE4_
	registerVal9.DefaultState = registerVal10
	registerVal2.clipsPerState = registerVal9
	local function __FUNC_B46_(arg0)
		arg0.ExpiresWidget:close()
		arg0.BMBribetitle:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_B46_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

