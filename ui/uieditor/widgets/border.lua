-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Border = registerVal1
function CoD.Border.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Border)
	registerVal2.id = "Border"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 360.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	local registerVal3 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 1.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.FETitleNumBrdr00 = registerVal3
	local function __FUNC_504_(arg0)
		arg0.FETitleNumBrdr00:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_504_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

