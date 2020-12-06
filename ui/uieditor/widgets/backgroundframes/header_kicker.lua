-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BackgroundFrames.Kicker_Background")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Header_Kicker = registerVal1
function CoD.Header_Kicker.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Header_Kicker)
	registerVal2.id = "Header_Kicker"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 16.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Kicker_Background.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.750000)
	registerVal2:addElement(registerVal3)
	registerVal2.KickerBackground = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 3.500000, 120.000000)
	registerVal4:setTopBottom(true, false, 1.990000, 17.990000)
	registerVal4:setText(Engine.Localize("Public Match"))
	registerVal4:setTTF("fonts/FoundryGridnik-Medium.ttf")
	local function __FUNC_751_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_751_)
	registerVal2:addElement(registerVal4)
	registerVal2.Kickertxt = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_7B1_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_7B1_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_812_(arg0)
		arg0.KickerBackground:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_812_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

