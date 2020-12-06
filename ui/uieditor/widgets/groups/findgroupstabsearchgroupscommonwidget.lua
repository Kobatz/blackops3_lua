-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Groups.FindGroupsGridButton")
require("ui.uieditor.widgets.Scrollbars.verticalCounterNoNumbers")
require("ui.uieditor.widgets.Groups.GroupsSummaryForSearch")
local function __FUNC_2C0_(arg0, arg1)
	local function __FUNC_390_(arg1, arg2)
		arg0.GroupsSummaryForSearch.buttonprompt:setState("Hidden")
		return nil
	end

	arg0.GroupsGrid:registerEventHandler("lose_list_focus", __FUNC_390_)
	local function __FUNC_444_(arg1, arg2)
		arg0.GroupsSummaryForSearch.buttonprompt:setState("DefaultState")
		return nil
	end

	arg0.GroupsGrid:registerEventHandler("gain_list_focus", __FUNC_444_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.FindGroupsTabSearchGroupsCommonWidget = registerVal2
local function __FUNC_4FE_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FindGroupsTabSearchGroupsCommonWidget)
	registerVal2.id = "FindGroupsTabSearchGroupsCommonWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 708.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 473.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local function __FUNC_1479_(arg0)
		local registerVal1 = Engine.GetModelValue(Engine.GetModel(arg0, "friendsSearchType"))
		if registerVal1 ~= "friends" then
		end
		return true
	end

	local registerVal3 = LUI.UIList.new(arg0, arg1, 5.000000, 0.000000, __FUNC_1479_, false, false, 0.000000, 0.000000, false, false)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 0.000000, 348.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 415.000000)
	registerVal3:setWidgetType(CoD.FindGroupsGridButton)
	registerVal3:setVerticalCount(6.000000)
	registerVal3:setSpacing(5.000000)
	registerVal3:setVerticalCounter(CoD.verticalCounterNoNumbers)
	registerVal3:setDataSource("FindGroupsButtonList")
	local registerVal7 = Engine.GetModelForController(arg1)
	local registerVal6 = Engine.GetModel(registerVal7, "groups.searchGroupsInProgress")
	local function __FUNC_154D_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "groups.searchGroupsInProgress"
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_START)
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_154D_)
	local function __FUNC_17E5_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "groupId"
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_START)
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal3:linkToElementModel(registerVal3, "groupId", true, __FUNC_17E5_)
	local function __FUNC_1A67_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "name"
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_START)
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal3:linkToElementModel(registerVal3, "name", true, __FUNC_1A67_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "groups.skipViewFriendsInGroup")
	local function __FUNC_1CD6_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "groups.skipViewFriendsInGroup"
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_1CD6_)
	local function __FUNC_1EA9_(arg0, arg2)
		FetchHighlightedGroupJoinApprovalType(registerVal2, arg0, arg1, Enum.GroupBufferType.GROUP_BUFFER_TYPE_SEARCH)
		return nil
	end

	registerVal3:registerEventHandler("list_item_gain_focus", __FUNC_1EA9_)
	local function __FUNC_1F84_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_START)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		return registerVal3
	end

	registerVal3:registerEventHandler("gain_focus", __FUNC_1F84_)
	local function __FUNC_21DE_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_21DE_)
	local function __FUNC_22AE_(arg0, arg1, arg2, arg3)
		local registerVal4 = SearchGroupResultsLoading(arg0, arg2)
		registerVal4 = ListHasElements(arg0)
		registerVal4 = IsSelfModelValueEqualTo(arg0, arg2, "groupId", Engine.StringToXUIDDecimal("0"))
		registerVal4 = IsSelfModelValueNonEmptyString(arg0, arg2, "name")
		if not registerVal4 and registerVal4 and not registerVal4 and registerVal4 then
			SetSelectedGroup(registerVal2, arg0, arg2)
			ProcessListAction(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_2495_(arg0, arg1, arg2)
		local registerVal3 = SearchGroupResultsLoading(arg0, arg2)
		registerVal3 = ListHasElements(arg0)
		registerVal3 = IsSelfModelValueEqualTo(arg0, arg2, "groupId", Engine.StringToXUIDDecimal("0"))
		registerVal3 = IsSelfModelValueNonEmptyString(arg0, arg2, "name")
		if not registerVal3 and registerVal3 and not registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_22AE_, __FUNC_2495_, false)
	local function __FUNC_26F2_(arg0, arg1, arg2, arg3)
		local registerVal4 = SearchGroupResultsLoading(arg0, arg2)
		registerVal4 = ListHasElements(arg0)
		registerVal4 = IsSelfModelValueEqualTo(arg0, arg2, "groupId", Engine.StringToXUIDDecimal("0"))
		registerVal4 = IsSelfModelValueNonEmptyString(arg0, arg2, "name")
		if not registerVal4 and registerVal4 and not registerVal4 and registerVal4 then
			SetSelectedGroup(registerVal2, arg0, arg2)
			OpenGroupOptionsPopup(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_28DD_(arg0, arg1, arg2)
		local registerVal3 = SearchGroupResultsLoading(arg0, arg2)
		registerVal3 = ListHasElements(arg0)
		registerVal3 = IsSelfModelValueEqualTo(arg0, arg2, "groupId", Engine.StringToXUIDDecimal("0"))
		registerVal3 = IsSelfModelValueNonEmptyString(arg0, arg2, "name")
		if not registerVal3 and registerVal3 and not registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_OPTIONS")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_START, "O", __FUNC_26F2_, __FUNC_28DD_, false)
	local function __FUNC_2B35_(arg0, arg1, arg2, arg3)
		local registerVal4 = SearchGroupResultsLoading(arg0, arg2)
		registerVal4 = ListHasElements(arg0)
		registerVal4 = IsSelfModelValueEqualTo(arg0, arg2, "groupId", Engine.StringToXUIDDecimal("0"))
		registerVal4 = IsSelfModelValueNonEmptyString(arg0, arg2, "name")
		registerVal4 = IsModelValueTrue(arg2, "groups.skipViewFriendsInGroup")
		if not registerVal4 and registerVal4 and not registerVal4 and registerVal4 and not registerVal4 then
			SetSelectedGroup(registerVal2, arg0, arg2)
			OpenGroupFriendsPopup(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_2D7A_(arg0, arg1, arg2)
		local registerVal3 = SearchGroupResultsLoading(arg0, arg2)
		registerVal3 = ListHasElements(arg0)
		registerVal3 = IsSelfModelValueEqualTo(arg0, arg2, "groupId", Engine.StringToXUIDDecimal("0"))
		registerVal3 = IsSelfModelValueNonEmptyString(arg0, arg2, "name")
		registerVal3 = IsModelValueTrue(arg2, "groups.skipViewFriendsInGroup")
		if not registerVal3 and registerVal3 and not registerVal3 and registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "GROUPS_VIEW_GROUP_FRIENDS")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "F", __FUNC_2B35_, __FUNC_2D7A_, false)
	registerVal2:addElement(registerVal3)
	registerVal2.GroupsGrid = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 285.000000, 413.000000)
	registerVal4:setTopBottom(true, false, 167.630000, 295.630000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setupSpinner()
	registerVal2:addElement(registerVal4)
	registerVal2.Spinner = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 0.000000, 708.000000)
	registerVal5:setTopBottom(true, false, 191.500000, 231.500000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setText(Engine.Localize("GROUPS_SEARCH_NO_RESULTS"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.NoResults = registerVal5
	registerVal6 = CoD.GroupsSummaryForSearch.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 361.000000, 708.000000)
	registerVal6:setTopBottom(true, false, -7.000000, 466.250000)
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "FriendsGroups"
	local function __FUNC_3040_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueTrue(arg1, "groups.skipViewFriendsInGroup")
		if not registerVal3 then
			registerVal3 = IsPC()
		else
		end
		return true
	end

	registerVal10.condition = __FUNC_3040_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	local function __FUNC_30EF_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groupId"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:linkToElementModel(registerVal6, "groupId", true, __FUNC_30EF_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "groups.skipViewFriendsInGroup")
	local function __FUNC_3209_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.skipViewFriendsInGroup"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:subscribeToModel(registerVal9, __FUNC_3209_)
	registerVal2:addElement(registerVal6)
	registerVal2.GroupsSummaryForSearch = registerVal6
	local function __FUNC_333B_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal3, nil, false, __FUNC_333B_)
	registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_338A_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.GroupsGrid:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Spinner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.NoResults:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.GroupsSummaryForSearch:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_338A_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_359F_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.GroupsGrid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Spinner:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.NoResults:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.GroupsSummaryForSearch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_359F_
	registerVal7.Loading = registerVal8
	registerVal8 = {}
	local function __FUNC_37B3_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.GroupsGrid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Spinner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.NoResults:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.GroupsSummaryForSearch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_37B3_
	registerVal7.NoResults = registerVal8
	registerVal2.clipsPerState = registerVal7
	registerVal9 = {}
	registerVal10 = {}
	registerVal10.stateName = "Loading"
	local function __FUNC_39C7_(arg0, arg2, arg3)
		return IsModelValueTrue(arg1, "groups.searchGroupsWaitingToStart")
	end

	registerVal10.condition = __FUNC_39C7_
	local registerVal11 = {}
	registerVal11.stateName = "NoResults"
	local function __FUNC_3A49_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueEqualTo(arg1, "groups.searchGroupsResultsCount", 0.000000)
		if registerVal3 then
			registerVal3 = IsModelValueTrue(arg1, "groups.searchGroupsWaitingToStart")
			if not registerVal3 then
				registerVal3 = IsModelValueTrue(arg1, "groups.searchGroupsInProgress")
			else
			end
		end
		return true
	end

	registerVal11.condition = __FUNC_3A49_
	registerVal9 = {registerVal10, registerVal11}
	registerVal2:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "groups.searchGroupsWaitingToStart")
	local function __FUNC_3B83_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.searchGroupsWaitingToStart"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_3B83_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "groups.searchGroupsResultsCount")
	local function __FUNC_3CB7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.searchGroupsResultsCount"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_3CB7_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "groups.searchGroupsInProgress")
	local function __FUNC_3DE9_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.searchGroupsInProgress"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_3DE9_)
	local function __FUNC_3F1B_(arg0)
		local registerVal2 = IsModelValueTrue(arg1, "groups.searchGroupsInProgress")
		if registerVal2 then
			DisableNavigation(registerVal2, "GroupsGrid")
		else
			EnableNavigation(registerVal2, "GroupsGrid")
		end
	end

	registerVal2:subscribeToGlobalModel(arg1, "PerController", "groups.searchGroupsInProgress", __FUNC_3F1B_)
	registerVal3.id = "GroupsGrid"
	local function __FUNC_400E_(arg0, arg1)
		local registerVal2 = arg0.GroupsGrid:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_400E_)
	local function __FUNC_4112_(arg0)
		arg0.GroupsGrid:close()
		arg0.GroupsSummaryForSearch:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_4112_)
	if __FUNC_2C0_ then
		__FUNC_2C0_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.FindGroupsTabSearchGroupsCommonWidget.new = __FUNC_4FE_
