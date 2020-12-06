-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Friends.FriendsListRow")
require("ui.uieditor.widgets.Scrollbars.verticalScrollbarNew")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Friends_GroupsTab = registerVal1
function CoD.Friends_GroupsTab.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Friends_GroupsTab)
	registerVal2.id = "Friends_GroupsTab"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 564.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 460.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 32.000000, 532.000000)
	registerVal3:setTopBottom(false, false, -197.000000, 197.000000)
	registerVal3:setDataSource("LobbyFriends")
	registerVal3:setWidgetType(CoD.FriendsListRow)
	registerVal3:setVerticalCount(6.000000)
	registerVal3:setVerticalScrollbar(CoD.verticalScrollbarNew)
	registerVal2:addElement(registerVal3)
	registerVal2.listGroups = registerVal3
	registerVal3.id = "listGroups"
	local function __FUNC_73A_(arg0, arg1)
		local registerVal2 = arg0.listGroups:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_73A_)
	local function __FUNC_83E_(arg0)
		arg0.listGroups:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_83E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

