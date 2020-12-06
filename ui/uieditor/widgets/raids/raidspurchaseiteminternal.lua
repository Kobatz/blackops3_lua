-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Border")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.RaidsPurchaseItemInternal = registerVal1
function CoD.RaidsPurchaseItemInternal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.RaidsPurchaseItemInternal)
	registerVal2.id = "RaidsPurchaseItemInternal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 96.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 96.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 2.000000, -2.000000)
	registerVal3:setTopBottom(true, true, 2.000000, -2.000000)
	registerVal3:setRGB(0.300000, 0.300000, 0.300000)
	registerVal2:addElement(registerVal3)
	registerVal2.Background = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 5.000000, -5.000000)
	registerVal4:setTopBottom(true, true, 5.000000, -5.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Image = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 2.000000, -2.000000)
	registerVal5:setTopBottom(false, true, -22.000000, -2.000000)
	registerVal5:setRGB(0.300000, 0.300000, 0.300000)
	registerVal2:addElement(registerVal5)
	registerVal2.CostBackground = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, true, 34.500000, -34.500000)
	registerVal6:setTopBottom(false, true, -24.000000, -2.000000)
	registerVal6:setText(Engine.Localize("MENU_NEW"))
	registerVal6:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal6)
	registerVal2.Cost = registerVal6
	local registerVal7 = CoD.Border.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal7:setRGB(1.000000, 0.640000, 0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.Highlight = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_89E_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal4:completeAnimation()
		registerVal2.Image:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.Cost:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.DefaultClip = __FUNC_89E_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_A03_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal4:completeAnimation()
		registerVal2.Image:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.Cost:setRGB(0.400000, 0.400000, 0.400000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.DefaultClip = __FUNC_A03_
	registerVal8.Unavailable = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_B6C_(arg0)
		arg0.Highlight:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_B6C_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

