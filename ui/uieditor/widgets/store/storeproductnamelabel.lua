-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_PanelNoBlur")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StoreProductNameLabel = registerVal1
function CoD.StoreProductNameLabel.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StoreProductNameLabel)
	registerVal2.id = "StoreProductNameLabel"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 243.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 29.000000)
	local registerVal3 = CoD.FE_PanelNoBlur.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.400000)
	registerVal2:addElement(registerVal3)
	registerVal2.Panel = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, 5.000000, 0.000000)
	registerVal4:setTopBottom(false, true, -18.000000, 0.000000)
	registerVal4:setRGB(0.820000, 0.850000, 0.880000)
	registerVal4:setText(Engine.Localize("WWWWWWWWWWWWWW"))
	registerVal4:setTTF("fonts/Store.ttf")
	registerVal4:setLetterSpacing(0.500000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_BOTTOM)
	local function __FUNC_867_(arg0, arg1)
		ScaleWidgetToLabelWrappedUp(registerVal2, arg0, 1.000000, 1.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_867_)
	registerVal2:addElement(registerVal4)
	registerVal2.itemName = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_8D2_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_8D2_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_932_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Panel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.itemName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_932_
	registerVal5.Hide = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_A83_(arg0)
		arg0.Panel:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A83_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

