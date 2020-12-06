-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Debug.LobbyProcessQueueDebug")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LobbyDebugOverlay = registerVal1
function CoD.LobbyDebugOverlay.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LobbyDebugOverlay)
	registerVal2.id = "LobbyDebugOverlay"
	registerVal2.soundSet = "MultiplayerMain"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.LobbyProcessQueueDebug.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 400.720000, 916.280000)
	registerVal3:setTopBottom(true, false, 124.000000, 684.000000)
	registerVal3.List:setVerticalCount(50.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.LobbyProcessQueueDebug = registerVal3
	registerVal3.id = "LobbyProcessQueueDebug"
	local function __FUNC_58F_(arg0)
		arg0.LobbyProcessQueueDebug:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_58F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

