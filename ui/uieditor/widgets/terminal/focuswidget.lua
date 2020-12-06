-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Terminal.FocusWidget_BG")
require("ui.uieditor.widgets.Terminal.FocusWidgetWhiteBars")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FocusWidget = registerVal1
function CoD.FocusWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FocusWidget)
	registerVal2.id = "FocusWidget"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 164.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 18.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FocusWidget_BG.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 5.000000, -4.000000)
	registerVal3:setTopBottom(true, false, -2.000000, 20.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.FocusWidgetBG0 = registerVal3
	local registerVal4 = CoD.FocusWidget_BG.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 5.000000, -4.000000)
	registerVal4:setTopBottom(true, false, -2.000000, 20.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.FocusWidgetBG1 = registerVal4
	local registerVal5 = CoD.FocusWidget_BG.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 5.000000, -4.000000)
	registerVal5:setTopBottom(true, false, -2.000000, 20.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.FocusWidgetBG2 = registerVal5
	local registerVal6 = CoD.FocusWidget_BG.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 5.000000, -4.000000)
	registerVal6:setTopBottom(true, false, -2.000000, 20.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.FocusWidgetBG = registerVal6
	local registerVal7 = CoD.FocusWidgetWhiteBars.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, -0.320000, 0.680000)
	registerVal7:setTopBottom(true, false, -3.420000, 3.420000)
	registerVal2:addElement(registerVal7)
	registerVal2.FocusWidgetWhiteBars = registerVal7
	local registerVal8 = CoD.FocusWidgetWhiteBars.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, -0.320000, 0.680000)
	registerVal8:setTopBottom(true, false, 14.080000, 20.920000)
	registerVal2:addElement(registerVal8)
	registerVal2.FocusWidgetWhiteBars0 = registerVal8
	local registerVal9 = LUI.UITightText.new()
	registerVal9:setLeftRight(true, false, 12.990000, 155.840000)
	registerVal9:setTopBottom(true, false, 0.500000, 17.500000)
	registerVal9:setText(Engine.Localize("MENU_NEW"))
	registerVal9:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal9)
	registerVal2.Name = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_9CF_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal11.DefaultClip = __FUNC_9CF_
	registerVal10.DefaultState = registerVal11
	registerVal2.clipsPerState = registerVal10
	local function __FUNC_A2E_(arg0)
		arg0.FocusWidgetBG0:close()
		arg0.FocusWidgetBG1:close()
		arg0.FocusWidgetBG2:close()
		arg0.FocusWidgetBG:close()
		arg0.FocusWidgetWhiteBars:close()
		arg0.FocusWidgetWhiteBars0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A2E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

