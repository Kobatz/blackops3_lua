-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartGameFlow.LoadingScreenFactionBoxPnlIntl")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LoadingScreenFactionBoxPnl = registerVal1
function CoD.LoadingScreenFactionBoxPnl.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LoadingScreenFactionBoxPnl)
	registerVal2.id = "LoadingScreenFactionBoxPnl"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 354.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 43.000000)
	local registerVal3 = CoD.LoadingScreenFactionBoxPnlIntl.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 354.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 42.910000)
	registerVal2:addElement(registerVal3)
	registerVal2.LoadingScreenFactionBoxPnlIntl = registerVal3
	local function __FUNC_531_(arg0)
		arg0.LoadingScreenFactionBoxPnlIntl:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_531_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

