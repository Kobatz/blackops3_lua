-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Groups.FindGroupsTabSearchGroupsCommonWidget")
local function __FUNC_23D_(arg0, arg1)
	local registerVal4 = Engine.GetModelForController(arg1)
	local registerVal2 = Engine.GetModelValue(Engine.CreateModel(registerVal4, "groups.paramSearchStarted"))
	if registerVal2 then
		registerVal4 = Engine.GetModelForController(arg1)
		local registerVal3 = Engine.CreateModel(registerVal4, "groups.paramSearchStarted")
		Engine.SetModelValue(registerVal3, false)
	else
		Engine.ClearLastGroupSearchResults(arg1)
		registerVal4 = Engine.GetModelForController(arg1)
		registerVal3 = Engine.GetModel(registerVal4, "groups.searchGroupsWaitingToStart")
		Engine.SetModelValue(registerVal3, true)
		local function __FUNC_510_()
			SearchGroupsBySearchType(arg0, arg0, arg1, Enum.GroupSearchType.GROUP_SEARCH_TYPE_SEARCH_BY_PARAMS)
			arg0.setVisibleTimer = nil
		end

		registerVal3 = LUI.UITimer.newElementTimer(1500.000000, true, __FUNC_510_)
		arg0.setVisibleTimer = registerVal3
		arg0:addElement(arg0.setVisibleTimer)
	end
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.FindGroupsTabSearchGroupsResultsFrame = registerVal2
local function __FUNC_603_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FindGroupsTabSearchGroupsResultsFrame)
	registerVal2.id = "FindGroupsTabSearchGroupsResultsFrame"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 700.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 488.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FindGroupsTabSearchGroupsCommonWidget.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 708.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 473.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.FindGroupsTabSearchGroupsCommonWidget = registerVal3
	registerVal3.id = "FindGroupsTabSearchGroupsCommonWidget"
	local function __FUNC_9B9_(arg0, arg1)
		local registerVal2 = arg0.FindGroupsTabSearchGroupsCommonWidget:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_9B9_)
	local function __FUNC_AD9_(arg0)
		arg0.FindGroupsTabSearchGroupsCommonWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_AD9_)
	if __FUNC_23D_ then
		__FUNC_23D_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.FindGroupsTabSearchGroupsResultsFrame.new = __FUNC_603_
