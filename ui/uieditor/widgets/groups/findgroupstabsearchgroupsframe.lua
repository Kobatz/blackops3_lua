-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Groups.GroupsInputButton")
require("ui.uieditor.widgets.Groups.GroupSliderWithTitle")
require("ui.uieditor.widgets.CharacterCustomization.list1ButtonNewStyle")
local function __FUNC_2DF_(arg0)
	local registerVal1 = {}
	local registerVal2 = {}
	local registerVal3 = Engine.Localize("GROUPS_GROUP_SIZE")
	registerVal2.name = registerVal3
	registerVal2.desc = ""
	registerVal2.optionsDatasource = "GroupsSearchGroupSize"
	registerVal2.selected = false
	registerVal1.models = registerVal2
	registerVal2 = {}
	registerVal2.hideArrows = true
	registerVal2.disabled = false
	registerVal1.properties = registerVal2
	return registerVal1
end

local function __FUNC_44D_(arg0)
	local registerVal1 = {}
	local registerVal2 = {}
	local registerVal3 = Engine.Localize("GROUPS_GROUP_TYPE")
	registerVal2.name = registerVal3
	registerVal2.desc = ""
	registerVal2.optionsDatasource = "GroupsSearchGroupType"
	registerVal2.selected = false
	registerVal1.models = registerVal2
	registerVal2 = {}
	registerVal2.hideArrows = true
	registerVal2.disabled = false
	registerVal1.properties = registerVal2
	return registerVal1
end

local function __FUNC_5BD_(arg0)
	table.insert({}, __FUNC_2DF_(arg0))
	return {}
end

local function __FUNC_633_(arg0, arg1)
	Engine.ClearLastGroupSearchResults(arg1)
	local registerVal4 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.GetModel(registerVal4, "groups.searchGroupsInProgress")
	Engine.SetModelValue(registerVal3, false)
	registerVal3 = DataSourceHelpers.ListSetup("FindGroupsTabSearchGroupsOptions", __FUNC_5BD_, true)
	DataSources.FindGroupsTabSearchGroupsOptions = registerVal3
end

local function __FUNC_7F5_(arg0, arg1, arg2)
	local function __FUNC_8C3_(arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg3.element, arg1, "selected")
		if registerVal3 then
			SetElementModelValue(arg3.element, "selected", false)
			EnableNavigation(arg0, "ButtonList")
			GroupsVariableOptionsSet(arg0, arg3.element, arg1)
		else
			registerVal3 = IsSelfModelValueTrue(arg3.element, arg1, "selected")
			if not registerVal3 then
				arg3.element.Slider:navigateItemRight()
				GroupsVariableOptionsSet(arg0, arg3.element, arg1)
			end
		end
		return true
	end

	arg0.ButtonList:registerEventHandler("mouse_left_click", __FUNC_8C3_)
	local function __FUNC_A76_(arg0, arg1)
		return false
	end

	arg0.ButtonList:registerEventHandler("button_action", __FUNC_A76_)
end

local function __FUNC_AA8_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_7F5_(arg0, arg1, arg2)
	end
end

local registerVal7 = InheritFrom(LUI.UIElement)
CoD.FindGroupsTabSearchGroupsFrame = registerVal7
local function __FUNC_B1B_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_633_ then
		__FUNC_633_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FindGroupsTabSearchGroupsFrame)
	registerVal2.id = "FindGroupsTabSearchGroupsFrame"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 700.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 488.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 1.000000, 420.000000)
	registerVal3:setTopBottom(true, false, 3.000000, 28.000000)
	registerVal3:setText(Engine.Localize("GROUPS_SEARCH_FOR_GROUP"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.SearchForGroup = registerVal3
	local registerVal4 = CoD.GroupsInputButton.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 420.000000)
	registerVal4:setTopBottom(true, false, 33.000000, 67.000000)
	registerVal4.Text:setText(Engine.Localize("$(groups.searchGroupsGroupName)"))
	local function __FUNC_1742_(arg2, arg3)
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

	registerVal4:registerEventHandler("gain_focus", __FUNC_1742_)
	local function __FUNC_18D3_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_18D3_)
	local function __FUNC_19A2_(arg0, arg1, arg2, arg3)
		ShowKeyboard(registerVal2, arg0, arg2, "KEYBOARD_TYPE_GROUP_SEARCH_NAME")
		return true
	end

	local function __FUNC_1A2B_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_19A2_, __FUNC_1A2B_, false)
	registerVal2:addElement(registerVal4)
	registerVal2.GroupsNameEntry = registerVal4
	local registerVal5 = LUI.UIList.new(arg0, arg1, -2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal5:makeFocusable()
	registerVal5:setLeftRight(true, false, -40.000000, 630.000000)
	registerVal5:setTopBottom(true, false, 83.000000, 215.000000)
	registerVal5:setWidgetType(CoD.GroupSliderWithTitle)
	registerVal5:setVerticalCount(2.000000)
	registerVal5:setSpacing(-2.000000)
	registerVal5:setDataSource("FindGroupsTabSearchGroupsOptions")
	local function __FUNC_1B26_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "selected"
		CoD.Menu.UpdateButtonShownState(registerVal5, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(registerVal5, arg0, arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
	end

	registerVal5:linkToElementModel(registerVal5, "selected", true, __FUNC_1B26_)
	local function __FUNC_1D47_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
		return registerVal3
	end

	registerVal5:registerEventHandler("gain_focus", __FUNC_1D47_)
	local function __FUNC_1F3D_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_1F3D_)
	local function __FUNC_200E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueTrue(arg0, arg2, "selected")
		if registerVal4 then
			SetElementModelValue(arg0, "selected", false)
			EnableNavigation(registerVal2, "ButtonList")
			EnableMouseOnElement(registerVal2, "ButtonList", arg2)
			EnableMouseOnElement(registerVal2, "GroupsNameEntry", arg2)
			EnableMouseOnElement(registerVal2, "SearchButton", arg2)
			GroupsVariableOptionsSet(registerVal2, arg0, arg2)
			MakeSiblingFocusable(registerVal2, "CategoriesList", arg2)
			return true
		else
			registerVal4 = IsSelfModelValueTrue(arg0, arg2, "selected")
			if not registerVal4 then
				SetElementModelValue(arg0, "selected", true)
				DisableNavigation(registerVal2, "ButtonList")
				DisableMouseOnElement(registerVal2, "ButtonList", arg2)
				DisableMouseOnElement(registerVal2, "GroupsNameEntry", arg2)
				DisableMouseOnElement(registerVal2, "SearchButton", arg2)
				DispatchEventToChildren(arg0, "gain_focus", arg2)
				MakeSiblingNotFocusable(registerVal2, "CategoriesList", arg2)
				return true
			end
		end
	end

	local function __FUNC_2345_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueTrue(arg0, arg2, "selected")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		else
			registerVal3 = IsSelfModelValueTrue(arg0, arg2, "selected")
			if not registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
				return true
			end
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_200E_, __FUNC_2345_, false)
	local function __FUNC_2502_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueTrue(arg0, arg2, "selected")
		if registerVal4 then
			SetElementModelValue(arg0, "selected", false)
			EnableNavigation(registerVal2, "ButtonList")
			DispatchEventToChildren(arg0, "lose_focus", arg2)
			MakeSiblingFocusable(registerVal2, "CategoriesList", arg2)
			GroupsVariableOptionsSet(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_26B9_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueTrue(arg0, arg2, "selected")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_2502_, __FUNC_26B9_, false)
	registerVal2:addElement(registerVal5)
	registerVal2.ButtonList = registerVal5
	local registerVal6 = CoD.list1ButtonNewStyle.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 1.000000, 233.000000)
	registerVal6:setTopBottom(true, false, 240.000000, 272.000000)
	registerVal6.btnDisplayText:setText(Engine.Localize("GROUPS_SEARCH_GROUPS_CAPS"))
	registerVal6.btnDisplayTextStroke:setText(Engine.Localize("GROUPS_SEARCH_GROUPS_CAPS"))
	local function __FUNC_2800_(arg2, arg3)
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

	registerVal6:registerEventHandler("gain_focus", __FUNC_2800_)
	local function __FUNC_2993_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_2993_)
	local function __FUNC_2A62_(arg0, arg1, arg2, arg3)
		SearchGroups(registerVal2, arg0, arg2)
		return true
	end

	local function __FUNC_2ABE_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal6, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_2A62_, __FUNC_2ABE_, false)
	registerVal2:addElement(registerVal6)
	registerVal2.SearchButton = registerVal6
	local registerVal7 = {}
	registerVal7.down = registerVal5
	registerVal4.navigation = registerVal7
	registerVal7 = {}
	registerVal7.up = registerVal4
	registerVal7.down = registerVal6
	registerVal5.navigation = registerVal7
	registerVal7 = {}
	registerVal7.up = registerVal5
	registerVal6.navigation = registerVal7
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal4.id = "GroupsNameEntry"
	registerVal5.id = "ButtonList"
	registerVal6.id = "SearchButton"
	local function __FUNC_2BBA_(arg0, arg1)
		local registerVal2 = arg0.GroupsNameEntry:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_2BBA_)
	local function __FUNC_2CC3_(arg0)
		arg0.GroupsNameEntry:close()
		arg0.ButtonList:close()
		arg0.SearchButton:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2CC3_)
	if __FUNC_AA8_ then
		__FUNC_AA8_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.FindGroupsTabSearchGroupsFrame.new = __FUNC_B1B_
