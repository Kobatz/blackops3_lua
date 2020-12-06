-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BackgroundFrames.BackgroundPattern03")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MatchStartWarning_TimerBkgd = registerVal1
function CoD.MatchStartWarning_TimerBkgd.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.MatchStartWarning_TimerBkgd)
	registerVal2.id = "MatchStartWarning_TimerBkgd"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 80.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.BackgroundPattern03.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 80.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BackgroundPattern03 = registerVal3
	local function __FUNC_541_(arg0)
		arg0.BackgroundPattern03:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_541_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

