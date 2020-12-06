-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.Lobby.Common.List1ButtonLarge_PH")
require("ui.uieditor.widgets.Groups.Headquarters.AdminTabAdminSettingsCheckboxButton")
require("ui.uieditor.widgets.Groups.GroupsSubTitle")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.hintText")
local function __FUNC_338_(arg0, arg1)
	local registerVal3 = {}
	registerVal3.up = arg0.BanMembers
	registerVal3.right = arg0.EditGroupPrivacySettings
	registerVal3.down = arg0.RemoveShowcaseContent
	registerVal3.left = arg0.BanFromGroupButton
	arg0.FavoriteShowcaseContent.navigation = registerVal3
	registerVal3 = {}
	registerVal3.up = arg0.FavoriteShowcaseContent
	registerVal3.right = arg0.EditGroupName
	registerVal3.left = arg0.BanFromGroupButton
	arg0.RemoveShowcaseContent.navigation = registerVal3
	registerVal3 = {}
	registerVal3.up = arg0.EditEmblem
	registerVal3.down = arg0.EditGroupPrivacySettings
	registerVal3.left = arg0.BanMembers
	arg0.EditDescription.navigation = registerVal3
	registerVal3 = {}
	registerVal3.up = arg0.RemoveMembers
	registerVal3.right = arg0.EditEmblem
	registerVal3.down = arg0.FavoriteShowcaseContent
	registerVal3.left = arg0.BanFromGroupButton
	arg0.BanMembers.navigation = registerVal3
end

local function __FUNC_5CC_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("GroupAdminSettings")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "HUD"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "GroupAdminSettings.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_fe_cp_background"))
	registerVal1:addElement(registerVal3)
	registerVal1.BlackBG = registerVal3
	local registerVal4 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4.titleLabel:setText(Engine.Localize("GROUPS_ADMIN_SETTINGS"))
	registerVal4.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("GROUPS_ADMIN_SETTINGS"))
	registerVal4.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_emblem"))
	registerVal1:addElement(registerVal4)
	registerVal1.MenuFrame = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 64.000000, 368.000000)
	registerVal5:setTopBottom(true, false, 85.860000, 677.860000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.300000)
	registerVal1:addElement(registerVal5)
	registerVal1.BlackTint = registerVal5
	local registerVal6 = CoD.List1ButtonLarge_PH.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 77.280000, 357.280000)
	registerVal6:setTopBottom(true, false, 171.860000, 203.860000)
	registerVal6.btnDisplayText:setText(Engine.Localize("GROUPS_REMOVE_ADMIN_PRIVILEGES_CAPS"))
	registerVal6.btnDisplayTextStroke:setText(Engine.Localize("GROUPS_REMOVE_ADMIN_PRIVILEGES_CAPS"))
	local function __FUNC_34BB_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		SetHintTextToString(arg0, "")
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal6:registerEventHandler("gain_focus", __FUNC_34BB_)
	local function __FUNC_3682_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_3682_)
	local function __FUNC_3752_(arg0, arg1, arg2, arg3)
		DemoteAdminToRegularMember(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_37BC_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal6, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_3752_, __FUNC_37BC_, false)
	registerVal1:addElement(registerVal6)
	registerVal1.RemoveAdminPrivilegesButton = registerVal6
	local registerVal7 = CoD.List1ButtonLarge_PH.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 77.280000, 357.280000)
	registerVal7:setTopBottom(true, false, 206.860000, 238.860000)
	registerVal7.btnDisplayText:setText(Engine.Localize("GROUPS_REMOVE_FROM_GROUP_CAPS"))
	registerVal7.btnDisplayTextStroke:setText(Engine.Localize("GROUPS_REMOVE_FROM_GROUP_CAPS"))
	local function __FUNC_38BA_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		SetHintTextToString(arg0, "")
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal7:registerEventHandler("gain_focus", __FUNC_38BA_)
	local function __FUNC_3A82_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_3A82_)
	local function __FUNC_3B52_(arg0, arg1, arg2, arg3)
		RemoveFromGroup(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_3BB1_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal7, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_3B52_, __FUNC_3BB1_, false)
	registerVal1:addElement(registerVal7)
	registerVal1.RemoveFromGroupButton = registerVal7
	local registerVal8 = CoD.List1ButtonLarge_PH.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 77.280000, 357.280000)
	registerVal8:setTopBottom(true, false, 239.860000, 271.860000)
	registerVal8.btnDisplayText:setText(Engine.Localize("GROUPS_BAN_FROM_GROUP_CAPS"))
	registerVal8.btnDisplayTextStroke:setText(Engine.Localize("GROUPS_BAN_FROM_GROUP_CAPS"))
	local function __FUNC_3CAE_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		SetHintTextToString(arg0, "")
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal8:registerEventHandler("gain_focus", __FUNC_3CAE_)
	local function __FUNC_3E76_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("lose_focus", __FUNC_3E76_)
	local function __FUNC_3F46_(arg0, arg1, arg2, arg3)
		BanFromGroup(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_3FA2_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal8, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_3F46_, __FUNC_3FA2_, false)
	registerVal1:addElement(registerVal8)
	registerVal1.BanFromGroupButton = registerVal8
	local registerVal9 = CoD.AdminTabAdminSettingsCheckboxButton.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 523.310000, 803.310000)
	registerVal9:setTopBottom(true, false, 170.860000, 202.860000)
	registerVal9.btnDisplayText:setText(Engine.Localize("GROUPS_INVITE_PLAYERS"))
	registerVal9.btnDisplayTextStroke:setText(Engine.Localize("GROUPS_INVITE_PLAYERS"))
	local function __FUNC_409E_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		SetHintTextToString(arg0, "GROUPS_INVITE_PLAYERS_DESC")
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal9:registerEventHandler("gain_focus", __FUNC_409E_)
	local function __FUNC_4280_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("lose_focus", __FUNC_4280_)
	local function __FUNC_4352_(arg0, arg1, arg2, arg3)
		ToggleGroupAdminPrivilege(registerVal1, arg0, arg2, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_INVITE_PLAYERS)
		return true
	end

	local function __FUNC_4430_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal9, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_4352_, __FUNC_4430_, false)
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Checked"
	local function __FUNC_452E_(arg1, arg2, arg3)
		return CheckSelectedAdminPrivilege(arg0, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_INVITE_PLAYERS)
	end

	registerVal13.condition = __FUNC_452E_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetModelForController(arg0)
	registerVal12 = Engine.GetModel(registerVal13, "groups.currentAdminPrivileges")
	local function __FUNC_4602_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.currentAdminPrivileges"
		registerVal1:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_4602_)
	registerVal1:addElement(registerVal9)
	registerVal1.InvitePlayers = registerVal9
	local registerVal10 = CoD.AdminTabAdminSettingsCheckboxButton.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 523.310000, 803.310000)
	registerVal10:setTopBottom(true, false, 215.860000, 247.860000)
	registerVal10.btnDisplayText:setText(Engine.Localize("GROUPS_APPROVE_JOIN_REQUESTS"))
	registerVal10.btnDisplayTextStroke:setText(Engine.Localize("GROUPS_APPROVE_JOIN_REQUESTS"))
	local function __FUNC_4733_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		SetHintTextToString(arg0, "GROUPS_APPROVE_JOIN_REQUESTS_DESC")
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal10:registerEventHandler("gain_focus", __FUNC_4733_)
	local function __FUNC_491B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal10:registerEventHandler("lose_focus", __FUNC_491B_)
	local function __FUNC_49EA_(arg0, arg1, arg2, arg3)
		ToggleGroupAdminPrivilege(registerVal1, arg0, arg2, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_APPROVE_JOIN_REQUESTS)
		return true
	end

	local function __FUNC_4ACF_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal10, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_49EA_, __FUNC_4ACF_, false)
	registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "Checked"
	local function __FUNC_4BCA_(arg1, arg2, arg3)
		return CheckSelectedAdminPrivilege(arg0, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_APPROVE_JOIN_REQUESTS)
	end

	registerVal14.condition = __FUNC_4BCA_
	registerVal13 = {registerVal14}
	registerVal10:mergeStateConditions(registerVal13)
	registerVal14 = Engine.GetModelForController(arg0)
	registerVal13 = Engine.GetModel(registerVal14, "groups.currentAdminPrivileges")
	local function __FUNC_4CA5_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.currentAdminPrivileges"
		registerVal1:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:subscribeToModel(registerVal13, __FUNC_4CA5_)
	registerVal1:addElement(registerVal10)
	registerVal1.ApproveJoinRequests = registerVal10
	local registerVal11 = CoD.AdminTabAdminSettingsCheckboxButton.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 523.310000, 803.310000)
	registerVal11:setTopBottom(true, false, 263.860000, 295.860000)
	registerVal11.btnDisplayText:setText(Engine.Localize("GROUPS_REMOVE_MEMBERS"))
	registerVal11.btnDisplayTextStroke:setText(Engine.Localize("GROUPS_REMOVE_MEMBERS"))
	local function __FUNC_4DD7_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		SetHintTextToString(arg0, "GROUPS_REMOVE_MEMBERS_DESC")
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal11:registerEventHandler("gain_focus", __FUNC_4DD7_)
	local function __FUNC_4FB8_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal11:registerEventHandler("lose_focus", __FUNC_4FB8_)
	local function __FUNC_508A_(arg0, arg1, arg2, arg3)
		ToggleGroupAdminPrivilege(registerVal1, arg0, arg2, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_REMOVE_MEMBERS)
		return true
	end

	local function __FUNC_5168_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal11, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_508A_, __FUNC_5168_, false)
	registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "Checked"
	local function __FUNC_5266_(arg1, arg2, arg3)
		return CheckSelectedAdminPrivilege(arg0, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_REMOVE_MEMBERS)
	end

	registerVal15.condition = __FUNC_5266_
	registerVal14 = {registerVal15}
	registerVal11:mergeStateConditions(registerVal14)
	registerVal15 = Engine.GetModelForController(arg0)
	registerVal14 = Engine.GetModel(registerVal15, "groups.currentAdminPrivileges")
	local function __FUNC_533A_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.currentAdminPrivileges"
		registerVal1:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:subscribeToModel(registerVal14, __FUNC_533A_)
	registerVal1:addElement(registerVal11)
	registerVal1.RemoveMembers = registerVal11
	registerVal12 = CoD.AdminTabAdminSettingsCheckboxButton.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 523.310000, 803.310000)
	registerVal12:setTopBottom(true, false, 312.860000, 344.860000)
	registerVal12.btnDisplayText:setText(Engine.Localize("GROUPS_BAN_MEMBERS"))
	registerVal12.btnDisplayTextStroke:setText(Engine.Localize("GROUPS_BAN_MEMBERS"))
	local function __FUNC_546B_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		SetHintTextToString(arg0, "GROUPS_BAN_MEMBERS_DESC")
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal12:registerEventHandler("gain_focus", __FUNC_546B_)
	local function __FUNC_5649_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal12:registerEventHandler("lose_focus", __FUNC_5649_)
	local function __FUNC_571A_(arg0, arg1, arg2, arg3)
		ToggleGroupAdminPrivilege(registerVal1, arg0, arg2, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_BAN_MEMBERS)
		return true
	end

	local function __FUNC_57F5_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal12, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_571A_, __FUNC_57F5_, false)
	registerVal15 = {}
	local registerVal16 = {}
	registerVal16.stateName = "Checked"
	local function __FUNC_58F2_(arg1, arg2, arg3)
		return CheckSelectedAdminPrivilege(arg0, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_BAN_MEMBERS)
	end

	registerVal16.condition = __FUNC_58F2_
	registerVal15 = {registerVal16}
	registerVal12:mergeStateConditions(registerVal15)
	registerVal16 = Engine.GetModelForController(arg0)
	registerVal15 = Engine.GetModel(registerVal16, "groups.currentAdminPrivileges")
	local function __FUNC_59C3_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.currentAdminPrivileges"
		registerVal1:updateElementState(registerVal12, registerVal4)
	end

	registerVal12:subscribeToModel(registerVal15, __FUNC_59C3_)
	registerVal1:addElement(registerVal12)
	registerVal1.BanMembers = registerVal12
	registerVal13 = CoD.AdminTabAdminSettingsCheckboxButton.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 868.310000, 1148.310000)
	registerVal13:setTopBottom(true, false, 170.860000, 202.860000)
	registerVal13.btnDisplayText:setText(Engine.Localize("GROUPS_EDIT_FEATURED"))
	registerVal13.btnDisplayTextStroke:setText(Engine.Localize("GROUPS_EDIT_FEATURED"))
	local function __FUNC_5AF3_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		SetHintTextToString(arg0, "GROUPS_EDIT_FEATURED_DESC")
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal13:registerEventHandler("gain_focus", __FUNC_5AF3_)
	local function __FUNC_5CD3_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal13:registerEventHandler("lose_focus", __FUNC_5CD3_)
	local function __FUNC_5DA2_(arg0, arg1, arg2, arg3)
		ToggleGroupAdminPrivilege(registerVal1, arg0, arg2, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_EDIT_FEATURED_CONTENT)
		return true
	end

	local function __FUNC_5E87_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal13, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_5DA2_, __FUNC_5E87_, false)
	registerVal16 = {}
	local registerVal17 = {}
	registerVal17.stateName = "Checked"
	local function __FUNC_5F82_(arg1, arg2, arg3)
		return CheckSelectedAdminPrivilege(arg0, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_EDIT_FEATURED_CONTENT)
	end

	registerVal17.condition = __FUNC_5F82_
	registerVal16 = {registerVal17}
	registerVal13:mergeStateConditions(registerVal16)
	registerVal17 = Engine.GetModelForController(arg0)
	registerVal16 = Engine.GetModel(registerVal17, "groups.currentAdminPrivileges")
	local function __FUNC_605D_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.currentAdminPrivileges"
		registerVal1:updateElementState(registerVal13, registerVal4)
	end

	registerVal13:subscribeToModel(registerVal16, __FUNC_605D_)
	registerVal1:addElement(registerVal13)
	registerVal1.EditFeatured = registerVal13
	registerVal14 = CoD.AdminTabAdminSettingsCheckboxButton.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 523.310000, 803.310000)
	registerVal14:setTopBottom(true, false, 433.860000, 465.860000)
	registerVal14.btnDisplayText:setText(Engine.Localize("GROUPS_FAVORITE_SHOWCASE_CONTENT"))
	registerVal14.btnDisplayTextStroke:setText(Engine.Localize("GROUPS_FAVORITE_SHOWCASE_CONTENT"))
	local function __FUNC_618F_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		SetHintTextToString(arg0, "GROUPS_FAVORITE_SHOWCASE_CONTENT_DESC")
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal14:registerEventHandler("gain_focus", __FUNC_618F_)
	local function __FUNC_637B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal14:registerEventHandler("lose_focus", __FUNC_637B_)
	local function __FUNC_644A_(arg0, arg1, arg2, arg3)
		ToggleGroupAdminPrivilege(registerVal1, arg0, arg2, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_FAVORITE_SHOWCASE_CONTENT)
		return true
	end

	local function __FUNC_6533_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal14, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_644A_, __FUNC_6533_, false)
	registerVal17 = {}
	local registerVal18 = {}
	registerVal18.stateName = "Checked"
	local function __FUNC_662E_(arg1, arg2, arg3)
		return CheckSelectedAdminPrivilege(arg0, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_FAVORITE_SHOWCASE_CONTENT)
	end

	registerVal18.condition = __FUNC_662E_
	registerVal17 = {registerVal18}
	registerVal14:mergeStateConditions(registerVal17)
	registerVal18 = Engine.GetModelForController(arg0)
	registerVal17 = Engine.GetModel(registerVal18, "groups.currentAdminPrivileges")
	local function __FUNC_670D_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.currentAdminPrivileges"
		registerVal1:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:subscribeToModel(registerVal17, __FUNC_670D_)
	registerVal1:addElement(registerVal14)
	registerVal1.FavoriteShowcaseContent = registerVal14
	registerVal15 = CoD.AdminTabAdminSettingsCheckboxButton.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, false, 523.310000, 803.310000)
	registerVal15:setTopBottom(true, false, 479.000000, 511.000000)
	registerVal15.btnDisplayText:setText(Engine.Localize("GROUPS_REMOVE_SHOWCASE_CONTENT"))
	registerVal15.btnDisplayTextStroke:setText(Engine.Localize("GROUPS_REMOVE_SHOWCASE_CONTENT"))
	local function __FUNC_683F_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		SetHintTextToString(arg0, "GROUPS_REMOVE_SHOWCASE_CONTENT_DESC")
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal15:registerEventHandler("gain_focus", __FUNC_683F_)
	local function __FUNC_6A29_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal15:registerEventHandler("lose_focus", __FUNC_6A29_)
	local function __FUNC_6AFA_(arg0, arg1, arg2, arg3)
		ToggleGroupAdminPrivilege(registerVal1, arg0, arg2, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_REMOVE_SHOWCASE_CONTENT)
		return true
	end

	local function __FUNC_6BE1_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal15, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_6AFA_, __FUNC_6BE1_, false)
	registerVal18 = {}
	local registerVal19 = {}
	registerVal19.stateName = "Checked"
	local function __FUNC_6CDE_(arg1, arg2, arg3)
		return CheckSelectedAdminPrivilege(arg0, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_REMOVE_SHOWCASE_CONTENT)
	end

	registerVal19.condition = __FUNC_6CDE_
	registerVal18 = {registerVal19}
	registerVal15:mergeStateConditions(registerVal18)
	registerVal19 = Engine.GetModelForController(arg0)
	registerVal18 = Engine.GetModel(registerVal19, "groups.currentAdminPrivileges")
	local function __FUNC_6DBB_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.currentAdminPrivileges"
		registerVal1:updateElementState(registerVal15, registerVal4)
	end

	registerVal15:subscribeToModel(registerVal18, __FUNC_6DBB_)
	registerVal1:addElement(registerVal15)
	registerVal1.RemoveShowcaseContent = registerVal15
	registerVal16 = CoD.AdminTabAdminSettingsCheckboxButton.new(registerVal1, arg0)
	registerVal16:setLeftRight(true, false, 868.310000, 1148.310000)
	registerVal16:setTopBottom(true, false, 215.860000, 247.860000)
	registerVal16.btnDisplayText:setText(Engine.Localize("GROUPS_EDIT_MESSAGE"))
	registerVal16.btnDisplayTextStroke:setText(Engine.Localize("GROUPS_EDIT_MESSAGE"))
	local function __FUNC_6EEB_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		SetHintTextToString(arg0, "GROUPS_EDIT_MESSAGE_DESC")
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal16:registerEventHandler("gain_focus", __FUNC_6EEB_)
	local function __FUNC_70CA_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal16:registerEventHandler("lose_focus", __FUNC_70CA_)
	local function __FUNC_719A_(arg0, arg1, arg2, arg3)
		ToggleGroupAdminPrivilege(registerVal1, arg0, arg2, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_EDIT_GROUP_MESSAGE)
		return true
	end

	local function __FUNC_727C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal16, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_719A_, __FUNC_727C_, false)
	registerVal19 = {}
	local registerVal20 = {}
	registerVal20.stateName = "Checked"
	local function __FUNC_737A_(arg1, arg2, arg3)
		return CheckSelectedAdminPrivilege(arg0, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_EDIT_GROUP_MESSAGE)
	end

	registerVal20.condition = __FUNC_737A_
	registerVal19 = {registerVal20}
	registerVal16:mergeStateConditions(registerVal19)
	registerVal20 = Engine.GetModelForController(arg0)
	registerVal19 = Engine.GetModel(registerVal20, "groups.currentAdminPrivileges")
	local function __FUNC_7452_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.currentAdminPrivileges"
		registerVal1:updateElementState(registerVal16, registerVal4)
	end

	registerVal16:subscribeToModel(registerVal19, __FUNC_7452_)
	registerVal1:addElement(registerVal16)
	registerVal1.EditMessage = registerVal16
	registerVal17 = CoD.AdminTabAdminSettingsCheckboxButton.new(registerVal1, arg0)
	registerVal17:setLeftRight(true, false, 868.310000, 1148.310000)
	registerVal17:setTopBottom(true, false, 263.860000, 295.860000)
	registerVal17.btnDisplayText:setText(Engine.Localize("GROUPS_EDIT_LEADERBOARD"))
	registerVal17.btnDisplayTextStroke:setText(Engine.Localize("GROUPS_EDIT_LEADERBOARD"))
	local function __FUNC_7583_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		SetHintTextToString(arg0, "GROUPS_EDIT_LEADERBOARD_DESC")
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal17:registerEventHandler("gain_focus", __FUNC_7583_)
	local function __FUNC_7766_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal17:registerEventHandler("lose_focus", __FUNC_7766_)
	local function __FUNC_7836_(arg0, arg1, arg2, arg3)
		ToggleGroupAdminPrivilege(registerVal1, arg0, arg2, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_EDIT_GROUP_LEADERBOARD)
		return true
	end

	local function __FUNC_791C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal17, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_7836_, __FUNC_791C_, false)
	registerVal20 = {}
	local registerVal21 = {}
	registerVal21.stateName = "Checked"
	local function __FUNC_7A1A_(arg1, arg2, arg3)
		return CheckSelectedAdminPrivilege(arg0, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_EDIT_GROUP_LEADERBOARD)
	end

	registerVal21.condition = __FUNC_7A1A_
	registerVal20 = {registerVal21}
	registerVal17:mergeStateConditions(registerVal20)
	registerVal21 = Engine.GetModelForController(arg0)
	registerVal20 = Engine.GetModel(registerVal21, "groups.currentAdminPrivileges")
	local function __FUNC_7AF6_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.currentAdminPrivileges"
		registerVal1:updateElementState(registerVal17, registerVal4)
	end

	registerVal17:subscribeToModel(registerVal20, __FUNC_7AF6_)
	registerVal1:addElement(registerVal17)
	registerVal1.EditLeaderboard = registerVal17
	registerVal18 = CoD.AdminTabAdminSettingsCheckboxButton.new(registerVal1, arg0)
	registerVal18:setLeftRight(true, false, 868.310000, 1148.310000)
	registerVal18:setTopBottom(true, false, 312.860000, 344.860000)
	registerVal18.btnDisplayText:setText(Engine.Localize("GROUPS_EDIT_EMBLEM"))
	registerVal18.btnDisplayTextStroke:setText(Engine.Localize("GROUPS_EDIT_EMBLEM"))
	local function __FUNC_7C27_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		SetHintTextToString(arg0, "GROUPS_EDIT_EMBLEM_DESC")
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal18:registerEventHandler("gain_focus", __FUNC_7C27_)
	local function __FUNC_7E05_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal18:registerEventHandler("lose_focus", __FUNC_7E05_)
	local function __FUNC_7ED6_(arg0, arg1, arg2, arg3)
		ToggleGroupAdminPrivilege(registerVal1, arg0, arg2, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_EDIT_GROUP_EMBLEM)
		return true
	end

	local function __FUNC_7FB7_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal18, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_7ED6_, __FUNC_7FB7_, false)
	registerVal21 = {}
	local registerVal22 = {}
	registerVal22.stateName = "Checked"
	local function __FUNC_80B2_(arg1, arg2, arg3)
		return CheckSelectedAdminPrivilege(arg0, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_EDIT_GROUP_EMBLEM)
	end

	registerVal22.condition = __FUNC_80B2_
	registerVal21 = {registerVal22}
	registerVal18:mergeStateConditions(registerVal21)
	registerVal22 = Engine.GetModelForController(arg0)
	registerVal21 = Engine.GetModel(registerVal22, "groups.currentAdminPrivileges")
	local function __FUNC_8189_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.currentAdminPrivileges"
		registerVal1:updateElementState(registerVal18, registerVal4)
	end

	registerVal18:subscribeToModel(registerVal21, __FUNC_8189_)
	registerVal1:addElement(registerVal18)
	registerVal1.EditEmblem = registerVal18
	registerVal19 = CoD.AdminTabAdminSettingsCheckboxButton.new(registerVal1, arg0)
	registerVal19:setLeftRight(true, false, 868.310000, 1148.310000)
	registerVal19:setTopBottom(true, false, 360.000000, 392.000000)
	registerVal19.btnDisplayText:setText(Engine.Localize("GROUPS_EIDT_DESCRIPTION"))
	registerVal19.btnDisplayTextStroke:setText(Engine.Localize("GROUPS_EIDT_DESCRIPTION"))
	local function __FUNC_82BB_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		SetHintTextToString(arg0, "GROUPS_EDIT_DESCRIPTION_DESC")
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal19:registerEventHandler("gain_focus", __FUNC_82BB_)
	local function __FUNC_849E_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal19:registerEventHandler("lose_focus", __FUNC_849E_)
	local function __FUNC_856E_(arg0, arg1, arg2, arg3)
		ToggleGroupAdminPrivilege(registerVal1, arg0, arg2, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_EDIT_GROUP_DESCRIPTION)
		return true
	end

	local function __FUNC_8654_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal19, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_856E_, __FUNC_8654_, false)
	registerVal22 = {}
	local registerVal23 = {}
	registerVal23.stateName = "Checked"
	local function __FUNC_8752_(arg1, arg2, arg3)
		return CheckSelectedAdminPrivilege(arg0, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_EDIT_GROUP_DESCRIPTION)
	end

	registerVal23.condition = __FUNC_8752_
	registerVal22 = {registerVal23}
	registerVal19:mergeStateConditions(registerVal22)
	registerVal23 = Engine.GetModelForController(arg0)
	registerVal22 = Engine.GetModel(registerVal23, "groups.currentAdminPrivileges")
	local function __FUNC_882E_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.currentAdminPrivileges"
		registerVal1:updateElementState(registerVal19, registerVal4)
	end

	registerVal19:subscribeToModel(registerVal22, __FUNC_882E_)
	registerVal1:addElement(registerVal19)
	registerVal1.EditDescription = registerVal19
	registerVal20 = CoD.AdminTabAdminSettingsCheckboxButton.new(registerVal1, arg0)
	registerVal20:setLeftRight(true, false, 868.310000, 1148.310000)
	registerVal20:setTopBottom(true, false, 433.860000, 465.860000)
	registerVal20.btnDisplayText:setText(Engine.Localize("GROUPS_EDIT_GROUP_PRIVACY_SETTINGS"))
	registerVal20.btnDisplayTextStroke:setText(Engine.Localize("GROUPS_EDIT_GROUP_PRIVACY_SETTINGS"))
	local function __FUNC_895F_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		SetHintTextToString(arg0, "GROUPS_EDIT_GROUP_PRIVACY_SETTINGS_DESC")
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal20:registerEventHandler("gain_focus", __FUNC_895F_)
	local function __FUNC_8B4D_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal20:registerEventHandler("lose_focus", __FUNC_8B4D_)
	local function __FUNC_8C1E_(arg0, arg1, arg2, arg3)
		ToggleGroupAdminPrivilege(registerVal1, arg0, arg2, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_EDIT_GROUP_TYPE)
		return true
	end

	local function __FUNC_8CFD_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal20, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_8C1E_, __FUNC_8CFD_, false)
	registerVal23 = {}
	local registerVal24 = {}
	registerVal24.stateName = "Checked"
	local function __FUNC_8DFA_(arg1, arg2, arg3)
		return CheckSelectedAdminPrivilege(arg0, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_EDIT_GROUP_TYPE)
	end

	registerVal24.condition = __FUNC_8DFA_
	registerVal23 = {registerVal24}
	registerVal20:mergeStateConditions(registerVal23)
	registerVal24 = Engine.GetModelForController(arg0)
	registerVal23 = Engine.GetModel(registerVal24, "groups.currentAdminPrivileges")
	local function __FUNC_8ECF_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.currentAdminPrivileges"
		registerVal1:updateElementState(registerVal20, registerVal4)
	end

	registerVal20:subscribeToModel(registerVal23, __FUNC_8ECF_)
	registerVal1:addElement(registerVal20)
	registerVal1.EditGroupPrivacySettings = registerVal20
	registerVal21 = CoD.AdminTabAdminSettingsCheckboxButton.new(registerVal1, arg0)
	registerVal21:setLeftRight(true, false, 868.310000, 1148.310000)
	registerVal21:setTopBottom(true, false, 479.000000, 511.000000)
	registerVal21.btnDisplayText:setText(Engine.Localize("GROUPS_EDIT_GROUP_NAME"))
	registerVal21.btnDisplayTextStroke:setText(Engine.Localize("GROUPS_EDIT_GROUP_NAME"))
	local function __FUNC_8FFF_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		SetHintTextToString(arg0, "GROUPS_EDIT_GROUP_NAME_DESC")
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal21:registerEventHandler("gain_focus", __FUNC_8FFF_)
	local function __FUNC_91E1_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal21:registerEventHandler("lose_focus", __FUNC_91E1_)
	local function __FUNC_92B2_(arg0, arg1, arg2, arg3)
		ToggleGroupAdminPrivilege(registerVal1, arg0, arg2, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_EDIT_GROUP_NAME)
		return true
	end

	local function __FUNC_9391_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal21, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_92B2_, __FUNC_9391_, false)
	registerVal24 = {}
	local registerVal25 = {}
	registerVal25.stateName = "Checked"
	local function __FUNC_948E_(arg1, arg2, arg3)
		return CheckSelectedAdminPrivilege(arg0, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_EDIT_GROUP_NAME)
	end

	registerVal25.condition = __FUNC_948E_
	registerVal24 = {registerVal25}
	registerVal21:mergeStateConditions(registerVal24)
	registerVal25 = Engine.GetModelForController(arg0)
	registerVal24 = Engine.GetModel(registerVal25, "groups.currentAdminPrivileges")
	local function __FUNC_9563_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.currentAdminPrivileges"
		registerVal1:updateElementState(registerVal21, registerVal4)
	end

	registerVal21:subscribeToModel(registerVal24, __FUNC_9563_)
	registerVal1:addElement(registerVal21)
	registerVal1.EditGroupName = registerVal21
	registerVal22 = CoD.AdminTabAdminSettingsCheckboxButton.new(registerVal1, arg0)
	registerVal22:setLeftRight(true, false, 868.310000, 1148.310000)
	registerVal22:setTopBottom(true, false, 524.000000, 556.000000)
	registerVal22.btnDisplayText:setText(Engine.Localize("GROUPS_MANAGE_ADMINS"))
	registerVal22.btnDisplayTextStroke:setText(Engine.Localize("GROUPS_MANAGE_ADMINS"))
	local function __FUNC_9693_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		SetHintTextToString(arg0, "GROUPS_MANAGE_ADMINS_DESC")
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal22:registerEventHandler("gain_focus", __FUNC_9693_)
	local function __FUNC_9873_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal22:registerEventHandler("lose_focus", __FUNC_9873_)
	local function __FUNC_9942_(arg0, arg1, arg2, arg3)
		ToggleGroupAdminPrivilege(registerVal1, arg0, arg2, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_MANAGE_ADMINS)
		return true
	end

	local function __FUNC_9A1F_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal22, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_9942_, __FUNC_9A1F_, false)
	registerVal25 = {}
	local registerVal26 = {}
	registerVal26.stateName = "Checked"
	local function __FUNC_9B1A_(arg1, arg2, arg3)
		return CheckSelectedAdminPrivilege(arg0, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_MANAGE_ADMINS)
	end

	registerVal26.condition = __FUNC_9B1A_
	registerVal25 = {registerVal26}
	registerVal22:mergeStateConditions(registerVal25)
	registerVal26 = Engine.GetModelForController(arg0)
	registerVal25 = Engine.GetModel(registerVal26, "groups.currentAdminPrivileges")
	local function __FUNC_9BED_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.currentAdminPrivileges"
		registerVal1:updateElementState(registerVal22, registerVal4)
	end

	registerVal22:subscribeToModel(registerVal25, __FUNC_9BED_)
	registerVal1:addElement(registerVal22)
	registerVal1.ManageAdmins = registerVal22
	registerVal23 = CoD.GroupsSubTitle.new(registerVal1, arg0)
	registerVal23:setLeftRight(true, false, 868.310000, 1036.310000)
	registerVal23:setTopBottom(true, false, 123.860000, 155.860000)
	registerVal23.weaponNameLabel:setText(Engine.Localize("GROUPS_GROUP_PERMISSIONS"))
	registerVal1:addElement(registerVal23)
	registerVal1.GroupsSubTitle0 = registerVal23
	registerVal24 = CoD.GroupsSubTitle.new(registerVal1, arg0)
	registerVal24:setLeftRight(true, false, 523.310000, 691.310000)
	registerVal24:setTopBottom(true, false, 123.860000, 155.860000)
	registerVal24.weaponNameLabel:setText(Engine.Localize("GROUPS_MEMBER_PERMISSIONS"))
	registerVal1:addElement(registerVal24)
	registerVal1.GroupsSubTitle00 = registerVal24
	registerVal25 = CoD.GroupsSubTitle.new(registerVal1, arg0)
	registerVal25:setLeftRight(true, false, 523.310000, 691.310000)
	registerVal25:setTopBottom(true, false, 388.860000, 420.860000)
	registerVal25.weaponNameLabel:setText(Engine.Localize("GROUPS_SHOWCASE_PERMISSIONS"))
	registerVal1:addElement(registerVal25)
	registerVal1.GroupsSubTitle000 = registerVal25
	registerVal26 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal26:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal26:setTopBottom(true, false, 86.000000, 703.250000)
	registerVal1:addElement(registerVal26)
	registerVal1.FEMenuLeftGraphics = registerVal26
	local registerVal27 = CoD.hintText.new(registerVal1, arg0)
	registerVal27:setLeftRight(true, false, 523.310000, 1123.310000)
	registerVal27:setTopBottom(true, false, 606.390000, 626.390000)
	registerVal1:addElement(registerVal27)
	registerVal1.hintText0 = registerVal27
	local registerVal28 = {}
	registerVal28.right = registerVal9
	registerVal28.down = registerVal7
	registerVal6.navigation = registerVal28
	registerVal28 = {}
	registerVal28.up = registerVal6
	registerVal28.right = registerVal10
	registerVal28.down = registerVal8
	registerVal7.navigation = registerVal28
	registerVal28 = {}
	registerVal28.up = registerVal7
	local registerVal29 = {}
	registerVal29 = {registerVal10, registerVal11}
	registerVal28.right = registerVal29
	registerVal8.navigation = registerVal28
	registerVal28 = {}
	registerVal28.left = registerVal6
	registerVal28.right = registerVal13
	registerVal28.down = registerVal10
	registerVal9.navigation = registerVal28
	registerVal28 = {}
	registerVal29 = {}
	registerVal29 = {registerVal7, registerVal8}
	registerVal28.left = registerVal29
	registerVal28.up = registerVal9
	registerVal28.right = registerVal16
	registerVal28.down = registerVal11
	registerVal10.navigation = registerVal28
	registerVal28 = {}
	registerVal28.left = registerVal8
	registerVal28.up = registerVal10
	registerVal28.right = registerVal17
	registerVal28.down = registerVal12
	registerVal11.navigation = registerVal28
	registerVal28 = {}
	registerVal28.up = registerVal11
	registerVal28.right = registerVal18
	registerVal28.down = registerVal14
	registerVal12.navigation = registerVal28
	registerVal28 = {}
	registerVal28.left = registerVal9
	registerVal28.down = registerVal16
	registerVal13.navigation = registerVal28
	registerVal28 = {}
	registerVal28.up = registerVal12
	registerVal28.right = registerVal20
	registerVal28.down = registerVal15
	registerVal14.navigation = registerVal28
	registerVal28 = {}
	registerVal28.up = registerVal14
	registerVal28.right = registerVal21
	registerVal15.navigation = registerVal28
	registerVal28 = {}
	registerVal28.left = registerVal10
	registerVal28.up = registerVal13
	registerVal28.down = registerVal17
	registerVal16.navigation = registerVal28
	registerVal28 = {}
	registerVal28.left = registerVal11
	registerVal28.up = registerVal16
	registerVal28.down = registerVal18
	registerVal17.navigation = registerVal28
	registerVal28 = {}
	registerVal28.left = registerVal12
	registerVal28.up = registerVal17
	registerVal28.down = registerVal19
	registerVal18.navigation = registerVal28
	registerVal28 = {}
	registerVal28.up = registerVal18
	registerVal28.down = registerVal20
	registerVal19.navigation = registerVal28
	registerVal28 = {}
	registerVal28.left = registerVal14
	registerVal28.up = registerVal19
	registerVal28.down = registerVal21
	registerVal20.navigation = registerVal28
	registerVal28 = {}
	registerVal28.left = registerVal15
	registerVal28.up = registerVal20
	registerVal28.down = registerVal22
	registerVal21.navigation = registerVal28
	registerVal28 = {}
	registerVal28.up = registerVal21
	registerVal22.navigation = registerVal28
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_9D1F_(arg0, arg1, arg2, arg3)
		UpdateSelectedGroupAdminPrivileges(registerVal1, arg0, arg2)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_9DB0_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "menu_back")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_9D1F_, __FUNC_9DB0_, false)
	registerVal4:setModel(registerVal1.buttonModel, arg0)
	registerVal6.id = "RemoveAdminPrivilegesButton"
	registerVal7.id = "RemoveFromGroupButton"
	registerVal8.id = "BanFromGroupButton"
	registerVal9.id = "InvitePlayers"
	registerVal10.id = "ApproveJoinRequests"
	registerVal11.id = "RemoveMembers"
	registerVal12.id = "BanMembers"
	registerVal13.id = "EditFeatured"
	registerVal14.id = "FavoriteShowcaseContent"
	registerVal15.id = "RemoveShowcaseContent"
	registerVal16.id = "EditMessage"
	registerVal17.id = "EditLeaderboard"
	registerVal18.id = "EditEmblem"
	registerVal19.id = "EditDescription"
	registerVal20.id = "EditGroupPrivacySettings"
	registerVal21.id = "EditGroupName"
	registerVal22.id = "ManageAdmins"
	local registerVal30 = {}
	registerVal30.name = "menu_loaded"
	registerVal30.controller = arg0
	registerVal1:processEvent(registerVal30)
	registerVal30 = {}
	registerVal30.name = "update_state"
	registerVal30.menu = registerVal1
	registerVal1:processEvent(registerVal30)
	registerVal28 = registerVal1:restoreState()
	if not registerVal28 then
		registerVal30 = {}
		registerVal30.name = "gain_focus"
		registerVal30.controller = arg0
		registerVal1.RemoveAdminPrivilegesButton:processEvent(registerVal30)
	end
	local function __FUNC_9EAD_(arg1)
		arg1.MenuFrame:close()
		arg1.RemoveAdminPrivilegesButton:close()
		arg1.RemoveFromGroupButton:close()
		arg1.BanFromGroupButton:close()
		arg1.InvitePlayers:close()
		arg1.ApproveJoinRequests:close()
		arg1.RemoveMembers:close()
		arg1.BanMembers:close()
		arg1.EditFeatured:close()
		arg1.FavoriteShowcaseContent:close()
		arg1.RemoveShowcaseContent:close()
		arg1.EditMessage:close()
		arg1.EditLeaderboard:close()
		arg1.EditEmblem:close()
		arg1.EditDescription:close()
		arg1.EditGroupPrivacySettings:close()
		arg1.EditGroupName:close()
		arg1.ManageAdmins:close()
		arg1.GroupsSubTitle0:close()
		arg1.GroupsSubTitle00:close()
		arg1.GroupsSubTitle000:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.hintText0:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "GroupAdminSettings.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_9EAD_)
	if __FUNC_338_ then
		__FUNC_338_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.GroupAdminSettings = __FUNC_5CC_
