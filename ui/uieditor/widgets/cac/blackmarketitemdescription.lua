-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.CAC_varientTitlePanel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BlackMarketItemDescription = registerVal1
function CoD.BlackMarketItemDescription.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BlackMarketItemDescription)
	registerVal2.id = "BlackMarketItemDescription"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 384.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 22.000000)
	local registerVal3 = CoD.CAC_varientTitlePanel.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.250000)
	registerVal2:addElement(registerVal3)
	registerVal2.CACvarientTitlePanel0 = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 5.500000, 384.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 22.000000)
	registerVal4:setRGB(0.740000, 0.740000, 0.740000)
	registerVal4:setText(Engine.Localize(""))
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_850_(arg0, arg1)
		ScaleWidgetToLabelWrapped(registerVal2, arg0, 1.000000, 1.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_850_)
	registerVal2:addElement(registerVal4)
	registerVal2.weaponDescTextBox = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_8BC_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.CACvarientTitlePanel0:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.weaponDescTextBox:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_8BC_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_A2D_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.CACvarientTitlePanel0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.weaponDescTextBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_A2D_
	registerVal5.NotVisible = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_B98_(arg0)
		arg0.CACvarientTitlePanel0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_B98_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

