-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1BE_(arg0, arg1)
	local registerVal3 = IsUserContentRestricted(arg1)
	registerVal3 = IsUserChatRestricted(arg1)
	if not arg1 or registerVal3 then
	end
	local registerVal5 = Engine.GetModelForController(arg1)
	local registerVal4 = Engine.CreateModel(registerVal5, "groups.frameWidget")
	Engine.SetModelValue(registerVal4, "CoD.GroupsSocialMainFrameWidgetDisabled")
	registerVal5 = Engine.GetModelForController(arg1)
	registerVal4 = Engine.CreateModel(registerVal5, "groups.frameType")
	Engine.SetModelValue(registerVal4, "main")
	registerVal5 = {}
	registerVal5.menuName = "SystemOverlay_Compact"
	registerVal5.frameWidget = "CoD.systemOverlay_GroupsInvite"
	local registerVal6 = Engine.Localize("GROUPS_GROUP_INVITE")
	registerVal5.title = registerVal6
	local function __FUNC_70D_(arg0, arg1)
		local registerVal3 = Engine.GetModelForController(arg0)
		local registerVal2 = Engine.GetModel(registerVal3, "groups.selectedGroup.groupName")
		if registerVal2 then
			Engine.GetModelValue(registerVal2)
			return Engine.Localize("GROUPS_GROUP_INVITE_DESC", Engine.GetModelValue)
		end
		return ""
	end

	registerVal5.description = __FUNC_70D_
	registerVal5.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
	local function __FUNC_86A_(arg0, arg1)
		local function __FUNC_929_(arg0, arg2)
			local function __FUNC_AA6_(arg0, arg1, arg2, arg3, arg4)
				local registerVal5 = GoBack(arg0, arg2)
				ShowReportGroupDialog(arg0, arg1, arg2, arg3, registerVal5)
			end

			local function __FUNC_B2B_(arg0, arg2, arg3, arg4)
				local registerVal4 = {}
				local registerVal5 = {}
				registerVal5.displayText = arg0
				registerVal5.disabled = arg4
				registerVal4.models = registerVal5
				registerVal5 = {}
				registerVal5.action = arg2
				registerVal5.actionParam = arg1
				registerVal5.selectIndex = arg3
				registerVal4.properties = registerVal5
				return registerVal4
			end

			table.insert({}, __FUNC_B2B_("GROUPS_JOIN_GROUP", AcceptGroupInvite, true, false))
			table.insert({}, __FUNC_B2B_("GROUPS_DECLINE_INVITATION", RejectGroupInvite, false, false))
			table.insert({}, __FUNC_B2B_("MENU_REPORT_GROUP", __FUNC_AA6_, false, false))
			return {}
		end

		local registerVal3 = DataSourceHelpers.ListSetup("GroupsInviteMenuList", __FUNC_929_, true)
		DataSources.GroupsInviteMenuList = registerVal3
		return "GroupsInviteMenuList"
	end

	registerVal5.listDatasource = __FUNC_86A_
	registerVal5[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
	CoD.OverlayUtility.AddSystemOverlay("GroupsInviteConfirmation", registerVal5)
	CoD.FileshareUtility.SetFileshareMode(arg1, Enum.FileshareMode.FILESHARE_MODE_GROUPS)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.Social_Groups = registerVal2
local function __FUNC_C09_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_1BE_ then
		__FUNC_1BE_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Social_Groups)
	registerVal2.id = "Social_Groups"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1150.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 520.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIFrame.new(arg0, arg1, 0.000000, 0.000000, false)
	registerVal3:setLeftRight(true, false, 0.000000, 1150.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 520.000000)
	local function __FUNC_1002_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:changeFrameWidget(registerVal1)
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "Groups", "frameWidget", __FUNC_1002_)
	registerVal2:addElement(registerVal3)
	registerVal2.Frame = registerVal3
	registerVal3.id = "Frame"
	local function __FUNC_109E_(arg0, arg1)
		local registerVal2 = arg0.Frame:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_109E_)
	local function __FUNC_119D_(arg0)
		arg0.Frame:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_119D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.Social_Groups.new = __FUNC_C09_
