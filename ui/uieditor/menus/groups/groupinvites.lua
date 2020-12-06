-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.playercard.SelfIdentityBadge")
require("ui.uieditor.menus.Groups.GroupInvitesOptions")
require("ui.uieditor.widgets.Social.Social_Groups_InvitesButton")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.Groups.GroupsSummary")
local function __FUNC_36C_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	local registerVal2 = Engine.CreateModel(registerVal3, "groups")
	registerVal3 = Engine.CreateModel(registerVal2, "eventUpdate")
	local function __FUNC_483_()
		local registerVal2 = Engine.GetModelForController(arg1)
		local registerVal0 = Engine.GetModelValue(Engine.GetModel(registerVal2, "groups.eventName"))
		local registerVal1 = Engine.GetTotalGroupInvitesCount(arg1)
		if registerVal0 == "refreshInvites" and registerVal1 == 0.000000 then
			GoBack(arg0, arg1)
		end
	end

	arg0:subscribeToModel(registerVal3, __FUNC_483_, false)
end

local function __FUNC_5EA_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("GroupInvites")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "GroupInvites.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_fe_cp_background"))
	registerVal1:addElement(registerVal3)
	registerVal1.BlackBG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 65.000000, 468.500000)
	registerVal4:setTopBottom(true, false, 86.000000, 684.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.300000)
	registerVal1:addElement(registerVal4)
	registerVal1.BlackTint0 = registerVal4
	local registerVal5 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5.titleLabel:setText(Engine.Localize("GROUPS_INVITES_CAPS"))
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("GROUPS_INVITES_CAPS"))
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_emblem"))
	registerVal1:addElement(registerVal5)
	registerVal1.MenuFrame = registerVal5
	local registerVal6 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 18.000000, 70.000000)
	registerVal6:setTopBottom(true, false, 91.000000, 708.250000)
	registerVal1:addElement(registerVal6)
	registerVal1.FEMenuLeftGraphics = registerVal6
	local registerVal7 = CoD.SelfIdentityBadge.new(registerVal1, arg0)
	registerVal7:setLeftRight(false, true, -435.000000, -92.000000)
	registerVal7:setTopBottom(true, false, 24.000000, 84.000000)
	local function __FUNC_1782_(arg1)
		registerVal7:setModel(arg1, arg0)
	end

	registerVal7:subscribeToGlobalModel(arg0, "PerController", "identityBadge", __FUNC_1782_)
	local function __FUNC_17D2_(arg1)
		registerVal7.CallingCard.CallingCardsFrameWidget:setModel(arg1, arg0)
	end

	registerVal7:subscribeToGlobalModel(arg0, "PerController", nil, __FUNC_17D2_)
	registerVal1:addElement(registerVal7)
	registerVal1.SelfIdentityBadge = registerVal7
	local registerVal8 = LUI.UIList.new(registerVal1, arg0, 7.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal8:makeFocusable()
	registerVal8:setLeftRight(true, false, 80.000000, 454.000000)
	registerVal8:setTopBottom(true, false, 156.000000, 551.000000)
	registerVal8:setWidgetType(CoD.Social_Groups_InvitesButton)
	registerVal8:setVerticalCount(6.000000)
	registerVal8:setSpacing(7.000000)
	registerVal8:setVerticalCounter(CoD.verticalCounter)
	registerVal8:setDataSource("GroupsInvitesList")
	local function __FUNC_1870_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_START)
		return registerVal3
	end

	registerVal8:registerEventHandler("gain_focus", __FUNC_1870_)
	local function __FUNC_1A62_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("lose_focus", __FUNC_1A62_)
	local function __FUNC_1B32_(arg0, arg1, arg2, arg3)
		OpenGroupsInviteConfirmation(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_1B9E_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal8, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1B32_, __FUNC_1B9E_, false)
	local function __FUNC_1C9A_(arg0, arg1, arg2, arg3)
		SetGroupInvitePlayerModels(registerVal1, arg0, arg2)
		OpenPopup(registerVal1, "GroupInvitesOptions", arg2, "", "")
		return true
	end

	local function __FUNC_1D5A_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_OPTIONS")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal8, arg0, Enum.LUIButton.LUI_KEY_START, "O", __FUNC_1C9A_, __FUNC_1D5A_, false)
	registerVal1:addElement(registerVal8)
	registerVal1.InvitesList = registerVal8
	local registerVal9 = CoD.GroupsSummary.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 479.500000, 838.000000)
	registerVal9:setTopBottom(true, false, 149.000000, 609.000000)
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "NoGroupSelected"
	local function __FUNC_1E51_(arg1, arg2, arg3)
		return HideGroupInviteSummary(arg2, arg0)
	end

	registerVal13.condition = __FUNC_1E51_
	local registerVal14 = {}
	registerVal14.stateName = "InvitesGroupSummary"
	local function __FUNC_1EB0_(arg1, arg2, arg3)
		local registerVal3 = HideGroupInviteSummary(arg2, arg0)
		return (not registerVal3)
	end

	registerVal14.condition = __FUNC_1EB0_
	registerVal12 = {registerVal13, registerVal14}
	registerVal9:mergeStateConditions(registerVal12)
	local function __FUNC_1F14_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groupId"
		registerVal1:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:linkToElementModel(registerVal9, "groupId", true, __FUNC_1F14_)
	registerVal13 = Engine.GetModelForController(arg0)
	registerVal12 = Engine.GetModel(registerVal13, "groups.fetchGroupInvitesInProgress")
	local function __FUNC_2031_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.fetchGroupInvitesInProgress"
		registerVal1:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_2031_)
	registerVal13 = Engine.GetModelForController(arg0)
	registerVal12 = Engine.GetModel(registerVal13, "groups.fetchGroupProfilesInProgress")
	local function __FUNC_2168_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.fetchGroupProfilesInProgress"
		registerVal1:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_2168_)
	registerVal1:addElement(registerVal9)
	registerVal1.GroupsSummary = registerVal9
	local function __FUNC_22A1_(arg1)
		registerVal9:setModel(arg1, arg0)
	end

	registerVal9:linkToElementModel(registerVal8, nil, false, __FUNC_22A1_)
	local function __FUNC_22F2_(arg1, arg2)
		HandleGroupsKeyboardComplete(registerVal1, arg1, arg0, arg2)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("ui_keyboard_input", __FUNC_22F2_)
	local function __FUNC_239B_(arg1, arg2)
		FetchGroupInviteProfiles(registerVal1, arg1, arg0)
		SetControllerModelValue(arg0, "groups.fetchProfilesForInvites", true)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_239B_)
	local function __FUNC_2498_(arg0, arg1, arg2, arg3)
		GroupInvitesGoBack(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_24FC_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_2498_, __FUNC_24FC_, false)
	local function __FUNC_25F9_(arg1)
		SetControllerModelValue(arg0, "groups.fetchProfilesForInvites", false)
		ClearSavedState(registerVal1, arg0)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal1, "close", __FUNC_25F9_)
	registerVal5:setModel(registerVal1.buttonModel, arg0)
	registerVal8.id = "InvitesList"
	registerVal12 = {}
	registerVal12.name = "menu_loaded"
	registerVal12.controller = arg0
	registerVal1:processEvent(registerVal12)
	registerVal12 = {}
	registerVal12.name = "update_state"
	registerVal12.menu = registerVal1
	registerVal1:processEvent(registerVal12)
	local registerVal10 = registerVal1:restoreState()
	if not registerVal10 then
		registerVal12 = {}
		registerVal12.name = "gain_focus"
		registerVal12.controller = arg0
		registerVal1.InvitesList:processEvent(registerVal12)
	end
	local function __FUNC_26AA_(arg1)
		arg1.MenuFrame:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.SelfIdentityBadge:close()
		arg1.InvitesList:close()
		arg1.GroupsSummary:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "GroupInvites.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_26AA_)
	if __FUNC_36C_ then
		__FUNC_36C_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.GroupInvites = __FUNC_5EA_
