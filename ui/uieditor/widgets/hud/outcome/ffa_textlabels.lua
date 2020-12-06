-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_PanelNoBlur")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FFA_TextLabels = registerVal1
function CoD.FFA_TextLabels.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FFA_TextLabels)
	registerVal2.id = "FFA_TextLabels"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 218.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 28.000000)
	local registerVal3 = CoD.FE_PanelNoBlur.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.400000)
	registerVal2:addElement(registerVal3)
	registerVal2.Panel = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 4.180000, 270.000000)
	registerVal4:setTopBottom(false, false, -13.000000, 13.000000)
	registerVal4:setText(Engine.Localize("WWWWWWWWWWWWWW"))
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setLetterSpacing(0.500000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_859_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 1.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_859_)
	registerVal2:addElement(registerVal4)
	registerVal2.itemName = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_8B9_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.itemName:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_8B9_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_9B9_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.itemName:setRGB(ColorSet.PlayerYellow.r, ColorSet.PlayerYellow.g, ColorSet.PlayerYellow.b)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_9B9_
	registerVal5.PlayerYellow = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_B4A_(arg0)
		arg0.Panel:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_B4A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

