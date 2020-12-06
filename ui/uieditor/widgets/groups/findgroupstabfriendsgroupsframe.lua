-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Groups.FindGroupsTabSearchGroupsCommonWidget")
local function __FUNC_237_(arg0, arg1)
	Engine.ClearLastGroupSearchResults(arg1)
	local registerVal4 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.GetModel(registerVal4, "groups.searchGroupsWaitingToStart")
	Engine.SetModelValue(registerVal3, true)
	local function __FUNC_421_()
		SearchGroupsBySearchType(arg0, arg0, arg1, Enum.GroupSearchType.GROUP_SEARCH_TYPE_FRIENDS)
		arg0.setVisibleTimer = nil
	end

	registerVal3 = LUI.UITimer.newElementTimer(1500.000000, true, __FUNC_421_)
	arg0.setVisibleTimer = registerVal3
	arg0:addElement(arg0.setVisibleTimer)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.FindGroupsTabFriendsGroupsFrame = registerVal2
local function __FUNC_50A_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FindGroupsTabFriendsGroupsFrame)
	registerVal2.id = "FindGroupsTabFriendsGroupsFrame"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 700.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 488.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FindGroupsTabSearchGroupsCommonWidget.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 708.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 473.250000)
	registerVal2:addElement(registerVal3)
	registerVal2.FindGroupsTabSearchGroupsCommonWidget = registerVal3
	registerVal3.id = "FindGroupsTabSearchGroupsCommonWidget"
	local function __FUNC_8BB_(arg0, arg1)
		local registerVal2 = arg0.FindGroupsTabSearchGroupsCommonWidget:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_8BB_)
	local function __FUNC_9D9_(arg0)
		arg0.FindGroupsTabSearchGroupsCommonWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_9D9_)
	if __FUNC_237_ then
		__FUNC_237_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.FindGroupsTabFriendsGroupsFrame.new = __FUNC_50A_
