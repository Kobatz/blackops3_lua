-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Groups.GroupsInputButton")
require("ui.uieditor.widgets.CharacterCustomization.list1ButtonNewStyle")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FindGroupsTabSearchPlayerFrame = registerVal1
function CoD.FindGroupsTabSearchPlayerFrame.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FindGroupsTabSearchPlayerFrame)
	registerVal2.id = "FindGroupsTabSearchPlayerFrame"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 700.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 488.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 1.000000, 420.000000)
	registerVal3:setTopBottom(true, false, 3.000000, 28.000000)
	registerVal3:setText(Engine.Localize("GROUPS_SEARCH_FOR_PLAYER_TO_INVITE"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.SearchForGroup = registerVal3
	local registerVal4 = CoD.GroupsInputButton.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 420.000000)
	registerVal4:setTopBottom(true, false, 34.000000, 68.000000)
	registerVal4.Text:setText(Engine.Localize("$(groups.searchGroupsPlayerName)"))
	local function __FUNC_BDC_(arg2, arg3)
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

	registerVal4:registerEventHandler("gain_focus", __FUNC_BDC_)
	local function __FUNC_D6F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_D6F_)
	local function __FUNC_E3E_(arg0, arg1, arg2, arg3)
		ShowKeyboard(registerVal2, arg0, arg2, "KEYBOARD_TYPE_GROUP_PLAYER_SEARCH")
		return true
	end

	local function __FUNC_EC9_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_E3E_, __FUNC_EC9_, false)
	registerVal2:addElement(registerVal4)
	registerVal2.GroupsNameEntry = registerVal4
	local registerVal5 = CoD.list1ButtonNewStyle.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 1.000000, 233.000000)
	registerVal5:setTopBottom(true, false, 88.000000, 120.000000)
	registerVal5.btnDisplayText:setText(Engine.Localize("GROUPS_SEARCH_GROUPS_CAPS"))
	registerVal5.btnDisplayTextStroke:setText(Engine.Localize("GROUPS_SEARCH_GROUPS_CAPS"))
	local function __FUNC_FC6_(arg2, arg3)
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

	registerVal5:registerEventHandler("gain_focus", __FUNC_FC6_)
	local function __FUNC_1157_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_1157_)
	local function __FUNC_1226_(arg0, arg1, arg2, arg3)
		SearchPlayerByGamertag(registerVal2, arg0, arg2)
		return true
	end

	local function __FUNC_128C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_1226_, __FUNC_128C_, false)
	registerVal2:addElement(registerVal5)
	registerVal2.SearchButton = registerVal5
	local registerVal6 = {}
	registerVal6.down = registerVal5
	registerVal4.navigation = registerVal6
	registerVal6 = {}
	registerVal6.up = registerVal4
	registerVal5.navigation = registerVal6
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal4.id = "GroupsNameEntry"
	registerVal5.id = "SearchButton"
	local function __FUNC_138A_(arg0, arg1)
		local registerVal2 = arg0.GroupsNameEntry:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_138A_)
	local function __FUNC_1493_(arg0)
		arg0.GroupsNameEntry:close()
		arg0.SearchButton:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1493_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

