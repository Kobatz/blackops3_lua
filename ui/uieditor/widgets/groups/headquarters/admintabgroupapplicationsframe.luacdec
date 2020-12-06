-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Groups.GroupsRosterRow")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.Groups.GroupsNoConentDetail")
local function __FUNC_2B1_(arg0, arg1)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.GetModel(registerVal4, "socialRoot.tab")
	Engine.SetModelValue(registerVal3, "groupApplications")
end

local function __FUNC_3A4_(arg0, arg1)
	AdminTabMakeNotFocusableIfDisabled(arg0, arg1)
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.AdminTabGroupApplicationsFrame = registerVal3
local function __FUNC_40C_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_2B1_ then
		__FUNC_2B1_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AdminTabGroupApplicationsFrame)
	registerVal2.id = "AdminTabGroupApplicationsFrame"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 724.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 417.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 0.000000, 374.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 370.000000)
	registerVal3:setWidgetType(CoD.GroupsRosterRow)
	registerVal3:setVerticalCount(6.000000)
	registerVal3:setVerticalCounter(CoD.verticalCounter)
	registerVal3:setDataSource("SocialPlayersList")
	local registerVal7 = Engine.GetModelForController(arg1)
	local registerVal6 = Engine.GetModel(registerVal7, "groups.fetchGroupApplicationsInProgress")
	local function __FUNC_F4A_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "groups.fetchGroupApplicationsInProgress"
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_F4A_)
	local function __FUNC_1124_(arg2, arg3)
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

	registerVal3:registerEventHandler("gain_focus", __FUNC_1124_)
	local function __FUNC_12B7_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_12B7_)
	local function __FUNC_1386_(arg0, arg1, arg2, arg3)
		local registerVal4 = FetchGroupApplicationsResultsLoading(arg2)
		registerVal4 = ListHasElements(arg0)
		if not registerVal4 and registerVal4 then
			ProcessGroupApplication(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_145C_(arg0, arg1, arg2)
		local registerVal3 = FetchGroupApplicationsResultsLoading(arg2)
		registerVal3 = ListHasElements(arg0)
		if not registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_1386_, __FUNC_145C_, false)
	registerVal6 = {}
	registerVal7 = {}
	registerVal7.stateName = "Loading"
	local function __FUNC_15D1_(arg0, arg2, arg3)
		return FetchGroupApplicationsResultsLoading(arg1)
	end

	registerVal7.condition = __FUNC_15D1_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "groups.fetchGroupApplicationsInProgress")
	local function __FUNC_163A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.fetchGroupApplicationsInProgress"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_163A_)
	registerVal2:addElement(registerVal3)
	registerVal2.applicationsList = registerVal3
	local registerVal4 = CoD.GroupsNoConentDetail.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 268.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 270.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4.HeaderBkgd:setRGB(0.870000, 0.300000, 0.190000)
	registerVal4.HeaderIcon:setImage(RegisterImage("uie_t7_icon_menu_simple_customgames"))
	registerVal4.Header:setText(LocalizeToUpperString("GROUPS_ADMIN_NO_PRIVILEGE"))
	registerVal4.Desc:setText(Engine.Localize("GROUPS_ADMIN_NO_PRIVILEGE_DESC"))
	registerVal4.Glow2:setRGB(0.390000, 0.070000, 0.060000)
	registerVal2:addElement(registerVal4)
	registerVal2.GroupsNoConentDetail = registerVal4
	local registerVal5 = {}
	registerVal6 = {}
	local function __FUNC_1775_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.applicationsList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.HeaderBkgd:completeAnimation()
		registerVal4.HeaderIcon:completeAnimation()
		registerVal4.Header:completeAnimation()
		registerVal4.Desc:completeAnimation()
		registerVal4.Glow2:completeAnimation()
		registerVal2.GroupsNoConentDetail:setLeftRight(true, false, 0.000000, 268.000000)
		registerVal2.GroupsNoConentDetail:setTopBottom(true, false, 0.000000, 270.000000)
		registerVal2.GroupsNoConentDetail:setAlpha(0.000000)
		registerVal2.GroupsNoConentDetail.HeaderBkgd:setRGB(0.870000, 0.300000, 0.190000)
		registerVal2.GroupsNoConentDetail.HeaderIcon:setImage(RegisterImage("uie_t7_icon_menu_simple_customgames"))
		registerVal2.GroupsNoConentDetail.Header:setText(LocalizeToUpperString("GROUPS_ADMIN_NO_PRIVILEGE"))
		registerVal2.GroupsNoConentDetail.Desc:setText(Engine.Localize("GROUPS_ADMIN_NO_PRIVILEGE_DESC"))
		registerVal2.GroupsNoConentDetail.Glow2:setRGB(0.390000, 0.070000, 0.060000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_1775_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_1C53_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.applicationsList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.HeaderBkgd:completeAnimation()
		registerVal4.HeaderIcon:completeAnimation()
		registerVal4.Header:completeAnimation()
		registerVal4.Desc:completeAnimation()
		registerVal4.Glow2:completeAnimation()
		registerVal2.GroupsNoConentDetail:setLeftRight(true, false, 0.000000, 268.000000)
		registerVal2.GroupsNoConentDetail:setTopBottom(true, false, 0.000000, 270.000000)
		registerVal2.GroupsNoConentDetail:setAlpha(1.000000)
		registerVal2.GroupsNoConentDetail.HeaderBkgd:setRGB(0.870000, 0.300000, 0.190000)
		registerVal2.GroupsNoConentDetail.HeaderIcon:setImage(RegisterImage("uie_t7_icon_menu_simple_customgames"))
		registerVal2.GroupsNoConentDetail.Header:setText(LocalizeToUpperString("GROUPS_ADMIN_NO_PRIVILEGE"))
		registerVal2.GroupsNoConentDetail.Desc:setText(Engine.Localize("GROUPS_ADMIN_NO_PRIVILEGE_DESC"))
		registerVal2.GroupsNoConentDetail.Glow2:setRGB(0.390000, 0.070000, 0.060000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_1C53_
	registerVal5.Disabled = registerVal6
	registerVal6 = {}
	local function __FUNC_212F_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.applicationsList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.HeaderBkgd:completeAnimation()
		registerVal4.HeaderIcon:completeAnimation()
		registerVal4.Header:completeAnimation()
		registerVal4.Desc:completeAnimation()
		registerVal4.Glow2:completeAnimation()
		registerVal2.GroupsNoConentDetail:setLeftRight(true, false, 0.000000, 268.000000)
		registerVal2.GroupsNoConentDetail:setTopBottom(true, false, 0.000000, 186.000000)
		registerVal2.GroupsNoConentDetail:setAlpha(1.000000)
		registerVal2.GroupsNoConentDetail.HeaderBkgd:setRGB(1.000000, 0.840000, 0.000000)
		registerVal2.GroupsNoConentDetail.HeaderIcon:setImage(RegisterImage("uie_t7_icon_menu_simple_groups_invites"))
		registerVal2.GroupsNoConentDetail.Header:setText(LocalizeToUpperString("GROUPS_JOIN_REQUESTS"))
		registerVal2.GroupsNoConentDetail.Desc:setText(Engine.Localize("GROUPS_JOIN_REQUESTS_DESC"))
		registerVal2.GroupsNoConentDetail.Glow2:setRGB(0.300000, 0.670000, 0.100000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_212F_
	registerVal5.NoContent = registerVal6
	registerVal2.clipsPerState = registerVal5
	registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Disabled"
	local function __FUNC_25FA_(arg0, arg2, arg3)
		return IsDisabled(arg2, arg1)
	end

	registerVal8.condition = __FUNC_25FA_
	local registerVal9 = {}
	registerVal9.stateName = "NoContent"
	local function __FUNC_264C_(arg0, arg2, arg3)
		return HasNoJoinRequests(arg1)
	end

	registerVal9.condition = __FUNC_264C_
	registerVal7 = {registerVal8, registerVal9}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_26A3_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabled", true, __FUNC_26A3_)
	registerVal3.id = "applicationsList"
	local function __FUNC_27BE_(arg0, arg1)
		local registerVal2 = arg0.applicationsList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_27BE_)
	local function __FUNC_28C8_(arg0)
		arg0.applicationsList:close()
		arg0.GroupsNoConentDetail:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_28C8_)
	if __FUNC_3A4_ then
		__FUNC_3A4_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.AdminTabGroupApplicationsFrame.new = __FUNC_40C_
