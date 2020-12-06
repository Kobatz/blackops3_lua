-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Groups.GroupsNoGroupMessage")
require("ui.uieditor.widgets.Groups.GroupsCreateButton")
require("ui.uieditor.widgets.Groups.GroupsItemRow")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.Groups.GroupsSummary")
require("ui.uieditor.widgets.Groups.GroupContentPanel")
local function __FUNC_357_(arg0, arg1)
	Engine.ClearLastGroupSearchResults()
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.MyGroupsTab = registerVal2
local function __FUNC_3C9_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MyGroupsTab)
	registerVal2.id = "MyGroupsTab"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1152.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 629.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 402.000000)
	registerVal3:setTopBottom(true, false, -58.000000, 553.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.300000)
	registerVal2:addElement(registerVal3)
	registerVal2.BlackTint = registerVal3
	local registerVal4 = CoD.GroupsNoGroupMessage.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 12.000000, 292.000000)
	registerVal4:setTopBottom(true, false, 9.000000, 37.000000)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "NoGroups"
	local function __FUNC_1057_(arg0, arg2, arg3)
		local registerVal3 = IsMemberOfAnyGroup(arg1)
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_1057_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "groups.groupCount_self")
	local function __FUNC_10B0_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.groupCount_self"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_10B0_)
	registerVal2:addElement(registerVal4)
	registerVal2.GroupsNoGroupMessage = registerVal4
	local registerVal5 = CoD.GroupsCreateButton.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 12.000000, 386.000000)
	registerVal5:setTopBottom(true, false, -44.000000, 3.000000)
	registerVal5.Text:setText(Engine.Localize("GROUPS_CREATE_GROUP_CAPS"))
	local function __FUNC_11DC_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		ClearSelectedGroup(registerVal2, arg2, arg1)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal5:registerEventHandler("gain_focus", __FUNC_11DC_)
	local function __FUNC_139F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_139F_)
	local function __FUNC_146E_(arg0, arg1, arg2, arg3)
		CreateNewGroupFlow(registerVal2, arg0, arg2)
		return true
	end

	local function __FUNC_14D0_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_146E_, __FUNC_14D0_, false)
	registerVal2:addElement(registerVal5)
	registerVal2.GroupsCreateButton = registerVal5
	local registerVal6 = LUI.UIList.new(arg0, arg1, 7.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, false, 12.000000, 386.000000)
	registerVal6:setTopBottom(true, false, 37.250000, 432.250000)
	registerVal6:setWidgetType(CoD.GroupsItemRow)
	registerVal6:setVerticalCount(6.000000)
	registerVal6:setSpacing(7.000000)
	registerVal6:setVerticalCounter(CoD.verticalCounter)
	registerVal6:setDataSource("GroupsMainButtonList")
	local function __FUNC_15CE_(arg2, arg3)
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

	registerVal6:registerEventHandler("gain_focus", __FUNC_15CE_)
	local function __FUNC_175F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_175F_)
	local function __FUNC_182E_(arg0, arg1, arg2, arg3)
		SetSelectedGroup(registerVal2, arg0, arg2)
		ProcessListAction(registerVal2, arg0, arg2)
		return true
	end

	local function __FUNC_18BD_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal6, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_182E_, __FUNC_18BD_, false)
	registerVal2:addElement(registerVal6)
	registerVal2.ButtonList = registerVal6
	registerVal7 = CoD.GroupsSummary.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 765.000000, 1112.000000)
	registerVal7:setTopBottom(true, false, -50.000000, 423.250000)
	registerVal2:addElement(registerVal7)
	registerVal2.GroupsSummary = registerVal7
	registerVal8 = CoD.GroupContentPanel.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 426.000000, 810.320000)
	registerVal8:setTopBottom(true, false, -69.000000, 372.500000)
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "NonMemberView"
	local function __FUNC_19BA_(arg0, arg2, arg3)
		local registerVal3 = HasSelectedGroup(arg2, arg1)
		return (not registerVal3)
	end

	registerVal12.condition = __FUNC_19BA_
	registerVal11 = {registerVal12}
	registerVal8:mergeStateConditions(registerVal11)
	local function __FUNC_1A16_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groupId"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:linkToElementModel(registerVal8, "groupId", true, __FUNC_1A16_)
	registerVal2:addElement(registerVal8)
	registerVal2.GroupContentPanel = registerVal8
	local function __FUNC_1B31_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal6, nil, false, __FUNC_1B31_)
	local function __FUNC_1B82_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal6, nil, false, __FUNC_1B82_)
	local registerVal9 = {}
	registerVal9.down = registerVal6
	registerVal5.navigation = registerVal9
	registerVal9 = {}
	registerVal9.up = registerVal5
	registerVal6.navigation = registerVal9
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal5.id = "GroupsCreateButton"
	registerVal6.id = "ButtonList"
	local function __FUNC_1BD2_(arg0, arg1)
		local registerVal2 = arg0.ButtonList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_1BD2_)
	local function __FUNC_1CD6_(arg0)
		arg0.GroupsNoGroupMessage:close()
		arg0.GroupsCreateButton:close()
		arg0.ButtonList:close()
		arg0.GroupsSummary:close()
		arg0.GroupContentPanel:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1CD6_)
	if __FUNC_357_ then
		__FUNC_357_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.MyGroupsTab.new = __FUNC_3C9_
