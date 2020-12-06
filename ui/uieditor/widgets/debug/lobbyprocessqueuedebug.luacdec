-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Debug.LobbyProcessQueueDebugItem")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LobbyProcessQueueDebug = registerVal1
function CoD.LobbyProcessQueueDebug.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LobbyProcessQueueDebug)
	registerVal2.id = "LobbyProcessQueueDebug"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIList.new(arg0, arg1, 1.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 659.000000)
	registerVal3:setDataSource("LobbyProcessQueueInfo")
	registerVal3:setWidgetType(CoD.LobbyProcessQueueDebugItem)
	registerVal3:setVerticalCount(60.000000)
	registerVal3:setSpacing(1.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.List = registerVal3
	registerVal3.id = "List"
	local function __FUNC_6D3_(arg0, arg1)
		local registerVal2 = arg0.List:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_6D3_)
	local function __FUNC_7D0_(arg0)
		arg0.List:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_7D0_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

