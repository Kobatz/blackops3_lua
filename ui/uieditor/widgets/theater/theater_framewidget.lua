-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Theater.Theater_TopFramePanel")
require("ui.uieditor.widgets.Theater.Theater_BottomFramePanel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Theater_FrameWidget = registerVal1
function CoD.Theater_FrameWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Theater_FrameWidget)
	registerVal2.id = "Theater_FrameWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 536.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 109.000000)
	local registerVal3 = CoD.Theater_TopFramePanel.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 536.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 61.750000)
	registerVal3:setRGB(0.600000, 0.630000, 0.660000)
	registerVal2:addElement(registerVal3)
	registerVal2.TheaterTopFramePanel0 = registerVal3
	local registerVal4 = CoD.Theater_BottomFramePanel.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 21.000000, 536.000000)
	registerVal4:setTopBottom(true, false, 46.880000, 108.630000)
	registerVal4:setRGB(0.510000, 0.540000, 0.570000)
	registerVal2:addElement(registerVal4)
	registerVal2.TheaterBottomFramePanel0 = registerVal4
	local function __FUNC_685_(arg0)
		arg0.TheaterTopFramePanel0:close()
		arg0.TheaterBottomFramePanel0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_685_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

