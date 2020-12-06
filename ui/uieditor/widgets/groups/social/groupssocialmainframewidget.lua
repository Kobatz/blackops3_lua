-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Groups.GroupsItemRow")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.Groups.GroupsSummary")
require("ui.uieditor.widgets.Groups.GroupContentPanel")
require("ui.uieditor.widgets.Groups.Social.GroupsSocialMainFrameButton")
require("ui.uieditor.menus.Groups.GroupInvites")
require("ui.uieditor.widgets.Groups.GroupsNoConentDetail")
require("ui.uieditor.widgets.Groups.Social.GroupsSocialBackgroundWidget")
require("ui.uieditor.widgets.Groups.Social.GroupsSocialMainFrameYourGroupsLabel")
require("ui.uieditor.widgets.Groups.Social.GroupsSocialMainFindButton")
require("ui.uieditor.menus.Groups.FindGroups")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupsSocialMainFrameWidget = registerVal1
function CoD.GroupsSocialMainFrameWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupsSocialMainFrameWidget)
	registerVal2.id = "GroupsSocialMainFrameWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1152.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 629.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -1.000000, 403.000000)
	registerVal3:setTopBottom(true, false, -34.000000, 548.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.300000)
	registerVal2:addElement(registerVal3)
	registerVal2.BlackTint0 = registerVal3
	local registerVal4 = LUI.UIList.new(arg0, arg1, 5.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(true, false, 14.000000, 388.000000)
	registerVal4:setTopBottom(true, false, 84.090000, 469.090000)
	registerVal4:setWidgetType(CoD.GroupsItemRow)
	registerVal4:setVerticalCount(6.000000)
	registerVal4:setSpacing(5.000000)
	registerVal4:setVerticalCounter(CoD.verticalCounter)
	registerVal4:setDataSource("GroupsMainButtonList")
	local function __FUNC_1AB6_(arg0, arg2)
		SetSelectedGroup(registerVal2, arg0, arg1)
		FileshareCategorySelectorSetToCategory(arg1, "featured", true)
		SetElementStateByElementName(registerVal2, "GroupContentPanel", arg1, "MemberView")
		SetElementStateByElementName(registerVal2, "GroupsSummary", arg1, "DefaultState")
		SetElementStateByElementName(registerVal2, "GroupsNoConentDetail", arg1, "Hidden")
		SetElementStateByElementName(registerVal2, "GroupsSocialBackgroundWidget", arg1, "Hidden")
		return nil
	end

	registerVal4:registerEventHandler("list_item_gain_focus", __FUNC_1AB6_)
	local function __FUNC_1CA2_(arg0, arg1)
		SetProperty(registerVal2, "updateButtonPromptsWhenEmptied", true)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("menu_loaded", __FUNC_1CA2_)
	local function __FUNC_1D5E_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_START)
		return registerVal3
	end

	registerVal4:registerEventHandler("gain_focus", __FUNC_1D5E_)
	local function __FUNC_1F4E_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_1F4E_)
	local function __FUNC_201E_(arg0, arg1, arg2, arg3)
		SetSelectedGroup(registerVal2, arg0, arg2)
		ProcessListAction(registerVal2, arg0, arg2)
		return true
	end

	local function __FUNC_20AD_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_201E_, __FUNC_20AD_, false)
	local function __FUNC_21AA_(arg0, arg1, arg2, arg3)
		local registerVal4 = ListHasElements(arg0)
		if registerVal4 then
			SetSelectedGroup(registerVal2, arg0, arg2)
			OpenGroupOptionsPopup(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_226A_(arg0, arg1, arg2)
		local registerVal3 = ListHasElements(arg0)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_OPTIONS")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_START, "O", __FUNC_21AA_, __FUNC_226A_, false)
	registerVal2:addElement(registerVal4)
	registerVal2.ButtonList = registerVal4
	local registerVal5 = CoD.GroupsSummary.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 767.000000, 1126.000000)
	registerVal5:setTopBottom(true, false, -4.000000, 456.000000)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "NoGroupSelected"
	local function __FUNC_2396_(arg0, arg2, arg3)
		return HideGroupSummaryIfListEmpty(arg2, arg1, "ButtonList")
	end

	registerVal9.condition = __FUNC_2396_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "groups.fetchGroupProfilesInProgress")
	local function __FUNC_2411_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.fetchGroupProfilesInProgress"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_2411_)
	local function __FUNC_2549_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groupId"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "groupId", true, __FUNC_2549_)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "groups.groupCount_self")
	local function __FUNC_2665_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.groupCount_self"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_2665_)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "groups.groupCount_search")
	local function __FUNC_2790_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.groupCount_search"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_2790_)
	registerVal2:addElement(registerVal5)
	registerVal2.GroupsSummary = registerVal5
	local registerVal6 = CoD.GroupContentPanel.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 430.000000, 814.320000)
	registerVal6:setTopBottom(true, false, -20.680000, 419.820000)
	registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "NonMemberView"
	local function __FUNC_28BE_(arg0, arg2, arg3)
		return HideGroupSummaryIfListEmpty(arg2, arg1, "ButtonList")
	end

	registerVal10.condition = __FUNC_28BE_
	local registerVal11 = {}
	registerVal11.stateName = "MemberView"
	local function __FUNC_2939_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal11.condition = __FUNC_2939_
	registerVal9 = {registerVal10, registerVal11}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "groups.fetchGroupProfilesInProgress")
	local function __FUNC_2984_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.fetchGroupProfilesInProgress"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:subscribeToModel(registerVal9, __FUNC_2984_)
	local function __FUNC_2ABD_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groupId"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:linkToElementModel(registerVal6, "groupId", true, __FUNC_2ABD_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "groups.groupCount_self")
	local function __FUNC_2BD9_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.groupCount_self"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:subscribeToModel(registerVal9, __FUNC_2BD9_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "groups.groupCount_search")
	local function __FUNC_2D04_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.groupCount_search"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:subscribeToModel(registerVal9, __FUNC_2D04_)
	registerVal2:addElement(registerVal6)
	registerVal2.GroupContentPanel = registerVal6
	local registerVal7 = CoD.GroupsSocialMainFrameButton.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 208.000000, 388.000000)
	registerVal7:setTopBottom(true, false, 4.000000, 52.000000)
	registerVal7.NumItems:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
	registerVal7.Text:setText(Engine.Localize("GROUPS_INVITES"))
	local function __FUNC_2E32_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.NumItems:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "Groups", "inviteCount", __FUNC_2E32_)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "groups.inviteCount")
	local function __FUNC_2F08_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "groups.inviteCount"
		CoD.Menu.UpdateButtonShownState(registerVal7, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal7:subscribeToModel(registerVal10, __FUNC_2F08_)
	local function __FUNC_30CF_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		ClearSelectedGroup(registerVal2, arg2, arg1)
		SetElementStateByElementName(registerVal2, "GroupContentPanel", arg1, "NonMemberView")
		SetElementStateByElementName(registerVal2, "GroupsSummary", arg1, "NoGroupSelected")
		SetElementStateByElementName(registerVal2, "GroupsNoConentDetail", arg1, "Hidden")
		SetElementStateByElementName(registerVal2, "GroupsSocialBackgroundWidget", arg1, "Visible")
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal7:registerEventHandler("gain_focus", __FUNC_30CF_)
	local function __FUNC_33DC_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_33DC_)
	local function __FUNC_34AE_(arg0, arg1, arg2, arg3)
		local registerVal4 = HasPendingInvites(arg2)
		if registerVal4 then
			NavigateToMenu(registerVal2, "GroupInvites", true, arg2)
			return true
		end
	end

	local function __FUNC_3555_(arg0, arg1, arg2)
		local registerVal3 = HasPendingInvites(arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal7, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_34AE_, __FUNC_3555_, false)
	registerVal10 = {}
	registerVal11 = {}
	registerVal11.stateName = "DisableState"
	local function __FUNC_3689_(arg0, arg2, arg3)
		local registerVal3 = HasPendingInvites(arg1)
		return (not registerVal3)
	end

	registerVal11.condition = __FUNC_3689_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "groups.inviteCount")
	local function __FUNC_36E3_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.inviteCount"
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:subscribeToModel(registerVal10, __FUNC_36E3_)
	registerVal2:addElement(registerVal7)
	registerVal2.InvitesButton = registerVal7
	registerVal8 = CoD.GroupsNoConentDetail.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 431.000000, 754.000000)
	registerVal8:setTopBottom(true, false, 2.500000, 283.000000)
	registerVal8.HeaderIcon:setImage(RegisterImage("uie_t7_icon_menu_simple_groups_findcreate"))
	registerVal8.Header:setText(Engine.Localize("GROUPS_FIND_GROUPS_CAPS"))
	registerVal8.Desc:setText(Engine.Localize("GROUPS_FIND_GROUPS_DESC"))
	registerVal2:addElement(registerVal8)
	registerVal2.GroupsNoConentDetail = registerVal8
	registerVal9 = CoD.GroupsSocialBackgroundWidget.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 413.000000, 940.320000)
	registerVal9:setTopBottom(true, false, -15.000000, 533.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.GroupsSocialBackgroundWidget = registerVal9
	registerVal10 = CoD.GroupsSocialMainFrameYourGroupsLabel.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 14.000000, 388.000000)
	registerVal10:setTopBottom(true, false, 59.090000, 84.090000)
	registerVal2:addElement(registerVal10)
	registerVal2.GroupsSocialMainFrameYourGroupsLabel = registerVal10
	registerVal11 = CoD.GroupsSocialMainFindButton.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 14.000000, 194.000000)
	registerVal11:setTopBottom(true, false, 4.000000, 52.000000)
	registerVal11.Text:setText(Engine.Localize("GROUPS_FIND_AND_CREATE_GROUPS"))
	registerVal11.Icon:setImage(RegisterImage("uie_t7_icon_menu_simple_groups_findcreate"))
	local function __FUNC_3808_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		ClearSelectedGroup(registerVal2, arg2, arg1)
		SetElementStateByElementName(registerVal2, "GroupContentPanel", arg1, "NonMemberView")
		SetElementStateByElementName(registerVal2, "GroupsSummary", arg1, "NoGroupSelected")
		SetElementStateByElementName(registerVal2, "GroupsNoConentDetail", arg1, "DefaultState")
		SetElementStateByElementName(registerVal2, "GroupsSocialBackgroundWidget", arg1, "Visible")
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal11:registerEventHandler("gain_focus", __FUNC_3808_)
	local function __FUNC_3B1E_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal11:registerEventHandler("lose_focus", __FUNC_3B1E_)
	local function __FUNC_3BEE_(arg0, arg1, arg2, arg3)
		NavigateToMenu(registerVal2, "FindGroups", true, arg2)
		return true
	end

	local function __FUNC_3C64_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "menu_select")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal11, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_3BEE_, __FUNC_3C64_, true)
	registerVal2:addElement(registerVal11)
	registerVal2.GroupsSocialMainFindButton = registerVal11
	local function __FUNC_3D62_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal4, nil, false, __FUNC_3D62_)
	local function __FUNC_3DB2_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal4, nil, false, __FUNC_3DB2_)
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13 = {registerVal11, registerVal7}
	registerVal12.up = registerVal13
	registerVal4.navigation = registerVal12
	registerVal12 = {}
	registerVal12.left = registerVal11
	registerVal12.down = registerVal4
	registerVal7.navigation = registerVal12
	registerVal12 = {}
	registerVal12.right = registerVal7
	registerVal12.down = registerVal4
	registerVal11.navigation = registerVal12
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal4.id = "ButtonList"
	registerVal7.id = "InvitesButton"
	registerVal11.id = "GroupsSocialMainFindButton"
	local function __FUNC_3E02_(arg0, arg1)
		local registerVal2 = arg0.GroupsSocialMainFindButton:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_3E02_)
	local function __FUNC_3F16_(arg0)
		arg0.ButtonList:close()
		arg0.GroupsSummary:close()
		arg0.GroupContentPanel:close()
		arg0.InvitesButton:close()
		arg0.GroupsNoConentDetail:close()
		arg0.GroupsSocialBackgroundWidget:close()
		arg0.GroupsSocialMainFrameYourGroupsLabel:close()
		arg0.GroupsSocialMainFindButton:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3F16_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

