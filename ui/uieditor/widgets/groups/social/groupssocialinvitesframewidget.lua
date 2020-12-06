-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Social.Social_Groups_InvitesButton")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.Challenges.Challenges_Title")
require("ui.uieditor.widgets.Groups.GroupsSummary")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupsSocialInvitesFrameWidget = registerVal1
function CoD.GroupsSocialInvitesFrameWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupsSocialInvitesFrameWidget)
	registerVal2.id = "GroupsSocialInvitesFrameWidget"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1150.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 520.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -16.000000, 388.000000)
	registerVal3:setTopBottom(true, false, -29.000000, 553.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.300000)
	registerVal2:addElement(registerVal3)
	registerVal2.BlackTint0 = registerVal3
	local registerVal4 = LUI.UIList.new(arg0, arg1, 7.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(true, false, 3.120000, 377.120000)
	registerVal4:setTopBottom(true, false, 55.000000, 450.000000)
	registerVal4:setWidgetType(CoD.Social_Groups_InvitesButton)
	registerVal4:setVerticalCount(6.000000)
	registerVal4:setSpacing(7.000000)
	registerVal4:setVerticalCounter(CoD.verticalCounter)
	registerVal4:setDataSource("GroupsInvitesList")
	local function __FUNC_C1A_(arg2, arg3)
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

	registerVal4:registerEventHandler("gain_focus", __FUNC_C1A_)
	local function __FUNC_DAB_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_DAB_)
	local function __FUNC_E7A_(arg0, arg1, arg2, arg3)
		OpenGroupsInviteConfirmation(registerVal2, arg0, arg2)
		return true
	end

	local function __FUNC_EE6_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_E7A_, __FUNC_EE6_, false)
	registerVal2:addElement(registerVal4)
	registerVal2.InvitesList = registerVal4
	local registerVal5 = CoD.Challenges_Title.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 5.120000, 201.120000)
	registerVal5:setTopBottom(true, false, 0.000000, 32.250000)
	registerVal5.weaponNameLabel:setText(Engine.Localize("GROUPS_INVITES"))
	registerVal2:addElement(registerVal5)
	registerVal2.GroupInvitesTitle = registerVal5
	local registerVal6 = CoD.GroupsSummary.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 394.000000, 753.000000)
	registerVal6:setTopBottom(true, false, -7.000000, 453.000000)
	registerVal6.GroupMemberSummary:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.GroupsSummary = registerVal6
	local function __FUNC_FE2_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal4, nil, false, __FUNC_FE2_)
	registerVal4.id = "InvitesList"
	local function __FUNC_1032_(arg0, arg1)
		local registerVal2 = arg0.InvitesList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_1032_)
	local function __FUNC_1137_(arg0)
		arg0.InvitesList:close()
		arg0.GroupInvitesTitle:close()
		arg0.GroupsSummary:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1137_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

