-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Border")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AARPlayerSummaryEmptyWidget = registerVal1
function CoD.AARPlayerSummaryEmptyWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AARPlayerSummaryEmptyWidget)
	registerVal2.id = "AARPlayerSummaryEmptyWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 240.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 400.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.510000, 0.510000, 0.510000)
	registerVal2:addElement(registerVal3)
	registerVal2.background = registerVal3
	local registerVal4 = CoD.Border.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal4:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.border = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 140.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.emptyPlayerBg = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, true, 89.000000, -89.000000)
	registerVal6:setTopBottom(true, false, 57.500000, 82.500000)
	registerVal6:setRGB(0.440000, 0.440000, 0.440000)
	registerVal6:setText(Engine.Localize("XBOXLIVE_PLAYER1"))
	registerVal6:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal6)
	registerVal2.emptyPlayerLabel = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_860_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.border:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.emptyPlayerBg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.emptyPlayerLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_860_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_A6F_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.border:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.emptyPlayerBg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.emptyPlayerLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_A6F_
	registerVal7.Visible = registerVal8
	registerVal2.clipsPerState = registerVal7
	local function __FUNC_C98_(arg0)
		arg0.border:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_C98_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

