-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartGameFlow.LoadingScreenFactionBoxPnl")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.TeamIconAndNameWidget = registerVal1
function CoD.TeamIconAndNameWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.TeamIconAndNameWidget)
	registerVal2.id = "TeamIconAndNameWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 345.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 85.000000)
	local registerVal3 = CoD.LoadingScreenFactionBoxPnl.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -5.000000, 4.000000)
	registerVal3:setTopBottom(true, false, 18.050000, 60.950000)
	registerVal3:setAlpha(0.600000)
	registerVal2:addElement(registerVal3)
	registerVal2.LoadingScreenFactionBoxPnl = registerVal3
	local function __FUNC_552_(arg0)
		arg0.LoadingScreenFactionBoxPnl:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_552_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

