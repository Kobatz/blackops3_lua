-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Friends.FriendsListRow")
require("ui.uieditor.widgets.Scrollbars.verticalScrollbar")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Friends_FriendsTab = registerVal1
function CoD.Friends_FriendsTab.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Friends_FriendsTab)
	registerVal2.id = "Friends_FriendsTab"
	registerVal2.soundSet = "FriendsMenu"
	registerVal2:setLeftRight(true, false, 0.000000, 564.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 460.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 32.000000, 532.000000)
	registerVal3:setTopBottom(false, false, -198.000000, 196.000000)
	registerVal3:setDataSource("LobbyFriends")
	registerVal3:setWidgetType(CoD.FriendsListRow)
	registerVal3:setVerticalCount(6.000000)
	registerVal3:setVerticalScrollbar(CoD.verticalScrollbar)
	local function __FUNC_856_(arg0, arg2)
		UpdateFriends(registerVal2, arg0, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("menu_loaded", __FUNC_856_)
	local function __FUNC_8EC_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal3:registerEventHandler("gain_focus", __FUNC_8EC_)
	local function __FUNC_A7F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_A7F_)
	local function __FUNC_B4E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsInTheaterMode()
		if registerVal4 then
			SetFileShareOverrideXuid(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_BDF_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsInTheaterMode()
		if registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_B4E_, __FUNC_BDF_, false)
	registerVal2:addElement(registerVal3)
	registerVal2.listFriends = registerVal3
	registerVal3.id = "listFriends"
	local function __FUNC_D0B_(arg0, arg1)
		local registerVal2 = arg0.listFriends:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_D0B_)
	local function __FUNC_E0F_(arg0)
		arg0.listFriends:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_E0F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

