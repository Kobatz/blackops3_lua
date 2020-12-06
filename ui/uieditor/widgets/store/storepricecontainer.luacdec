-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Store.StorePriceLabel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StorePriceContainer = registerVal1
function CoD.StorePriceContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StorePriceContainer)
	registerVal2.id = "StorePriceContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 200.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.StorePriceLabel.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -200.000000, 0.000000)
	registerVal3:setTopBottom(false, false, -10.000000, 10.000000)
	registerVal3.Panel:setAlpha(0.850000)
	registerVal3.Glow:setAlpha(0.250000)
	registerVal3.itemName:setText(Engine.Localize("WWWWWWWWWWWWWW"))
	registerVal2:addElement(registerVal3)
	registerVal2.StorePriceLabel = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_6AA_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.StorePriceLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_6AA_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_7AA_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.StorePriceLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_7AA_
	registerVal4.Hide = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_8AF_(arg0)
		arg0.StorePriceLabel:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_8AF_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

