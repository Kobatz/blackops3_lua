-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Groups.GroupsFriendsListButton")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupsFriendsList = registerVal1
function CoD.GroupsFriendsList.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupsFriendsList)
	registerVal2.id = "GroupsFriendsList"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 410.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 550.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIList.new(arg0, arg1, 5.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 0.000000, 374.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 515.000000)
	registerVal3:setWidgetType(CoD.GroupsFriendsListButton)
	registerVal3:setVerticalCount(8.000000)
	registerVal3:setSpacing(5.000000)
	registerVal3:setVerticalCounter(CoD.verticalCounter)
	local function __FUNC_847_(arg2, arg3)
		SetSelectedFriendXUID(registerVal2, arg2, arg1)
		CopyModelFindElement(arg0, arg2, "GroupsPlayerCard")
		return nil
	end

	registerVal3:registerEventHandler("list_item_gain_focus", __FUNC_847_)
	local function __FUNC_8F7_(arg2, arg3)
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

	registerVal3:registerEventHandler("gain_focus", __FUNC_8F7_)
	local function __FUNC_A87_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_A87_)
	local function __FUNC_B56_(arg0, arg1, arg2, arg3)
		GroupToggleFriendInvite(registerVal2, arg0, arg2)
		return true
	end

	local function __FUNC_BBD_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_INVITE")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_B56_, __FUNC_BBD_, false)
	registerVal2:addElement(registerVal3)
	registerVal2.onlineList = registerVal3
	registerVal3.id = "onlineList"
	local function __FUNC_CBA_(arg0, arg1)
		local registerVal2 = arg0.onlineList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_CBA_)
	local function __FUNC_DBE_(arg0)
		arg0.onlineList:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_DBE_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

