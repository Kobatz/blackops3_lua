-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Groups.GroupsRosterList")
require("ui.uieditor.widgets.Groups.GroupMemberInfoPane")
local function __FUNC_250_(arg0, arg1)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.GetModel(registerVal4, "socialRoot.tab")
	Engine.SetModelValue(registerVal3, "groupMembers")
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.RosterTab = registerVal2
local function __FUNC_33F_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_250_ then
		__FUNC_250_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.RosterTab)
	registerVal2.id = "RosterTab"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1150.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 525.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 402.000000)
	registerVal3:setTopBottom(true, false, -29.000000, 582.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.300000)
	registerVal2:addElement(registerVal3)
	registerVal2.BlackTint0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 1150.000000)
	registerVal4:setTopBottom(true, false, -30.500000, 429.500000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Background = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 475.000000, 675.000000)
	registerVal5:setTopBottom(true, false, 232.500000, 257.500000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setText(Engine.Localize("MENU_THERE_ARE_NO_FRIENDS"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.noFriends = registerVal5
	local registerVal6 = CoD.GroupsRosterList.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 8.500000, 393.500000)
	registerVal6:setTopBottom(true, false, -0.500000, 489.500000)
	registerVal6.onlineList:setDataSource("SocialPlayersList")
	local registerVal10 = Engine.GetModelForController(arg1)
	local registerVal9 = Engine.GetModel(registerVal10, "Social.selectedFriendXUID")
	local function __FUNC_D6D_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "Social.selectedFriendXUID"
		CoD.Menu.UpdateButtonShownState(registerVal6, arg0, arg1, Enum.LUIButton.LUI_KEY_START)
	end

	registerVal6:subscribeToModel(registerVal9, __FUNC_D6D_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "groups.fetchGroupMembersInProgress")
	local function __FUNC_F34_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "groups.fetchGroupMembersInProgress"
		CoD.Menu.UpdateButtonShownState(registerVal6, arg0, arg1, Enum.LUIButton.LUI_KEY_START)
	end

	registerVal6:subscribeToModel(registerVal9, __FUNC_F34_)
	local function __FUNC_1105_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_START)
		return registerVal3
	end

	registerVal6:registerEventHandler("gain_focus", __FUNC_1105_)
	local function __FUNC_1291_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_1291_)
	local function __FUNC_1362_(arg0, arg1, arg2, arg3)
		local registerVal4 = ShouldOpenGroupAdminOptionsPopupForGroupMember(arg0, arg2)
		if registerVal4 then
			SetSelectedFriendXUID(registerVal2, arg0, arg2)
			OpenGroupAdminOptionsPopupForGroupMember(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_145D_(arg0, arg1, arg2)
		local registerVal3 = ShouldOpenGroupAdminOptionsPopupForGroupMember(arg0, arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_OPTIONS")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal6, arg1, Enum.LUIButton.LUI_KEY_START, nil, __FUNC_1362_, __FUNC_145D_, false)
	registerVal2:addElement(registerVal6)
	registerVal2.GroupsRosterList = registerVal6
	local registerVal7 = CoD.GroupMemberInfoPane.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 426.000000, 1149.000000)
	registerVal7:setTopBottom(true, false, -1.500000, 483.500000)
	registerVal2:addElement(registerVal7)
	registerVal2.GroupMemberInfoPane = registerVal7
	local function __FUNC_15AD_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal6.onlineList, nil, false, __FUNC_15AD_)
	registerVal6.id = "GroupsRosterList"
	local function __FUNC_15FE_(arg0, arg1)
		local registerVal2 = arg0.GroupsRosterList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_15FE_)
	local function __FUNC_1708_(arg0)
		arg0.GroupsRosterList:close()
		arg0.GroupMemberInfoPane:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1708_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.RosterTab.new = __FUNC_33F_
