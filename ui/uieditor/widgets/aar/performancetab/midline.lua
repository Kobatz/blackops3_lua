-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_TitleLine")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MidLine = registerVal1
function CoD.MidLine.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MidLine)
	registerVal2.id = "MidLine"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 301.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 4.000000)
	local registerVal3 = CoD.FE_TitleLine.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(false, false, -2.000000, 2.000000)
	registerVal3.Image00:setAlpha(1.000000)
	registerVal3.Image10:setAlpha(1.000000)
	registerVal3.Image20:setAlpha(1.000000)
	registerVal3.Image000:setAlpha(1.000000)
	registerVal3.Image100:setAlpha(1.000000)
	registerVal3.Image200:setAlpha(1.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.FETitleLineL = registerVal3
	local registerVal4 = CoD.FE_TitleLine.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(false, false, -2.000000, 2.000000)
	registerVal4.Image00:setAlpha(1.000000)
	registerVal4.Image10:setAlpha(1.000000)
	registerVal4.Image20:setAlpha(1.000000)
	registerVal4.Image000:setAlpha(1.000000)
	registerVal4.Image100:setAlpha(1.000000)
	registerVal4.Image200:setAlpha(1.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.FETitleLineL0 = registerVal4
	local function __FUNC_71E_(arg0)
		arg0.FETitleLineL:close()
		arg0.FETitleLineL0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_71E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

