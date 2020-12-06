-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Groups.GroupSliderWithTitle")
require("ui.uieditor.widgets.Groups.GroupsNoConentDetail")
local function __FUNC_28D_(arg0)
	local registerVal1 = {}
	local registerVal2 = {}
	local registerVal3 = Engine.Localize("GROUPS_PRIVACY_CAPS")
	registerVal2.name = registerVal3
	registerVal2.desc = ""
	registerVal2.image = "t7_menu_social_privacy"
	registerVal2.optionsDatasource = "GroupPrivacyModes"
	registerVal2.currentSelection = nil
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
	local registerVal3 = Engine.Localize("GROUPS_JOIN_APPROVAL_CAPS")
	registerVal2.name = registerVal3
	registerVal2.desc = ""
	registerVal2.optionsDatasource = "GroupJoinApprovalTypes"
	registerVal2.selected = false
	registerVal1.models = registerVal2
	registerVal2 = {}
	registerVal2.hideArrows = true
	registerVal2.disabled = false
	registerVal1.properties = registerVal2
	return registerVal1
end

local function __FUNC_5C6_(arg0)
	table.insert({}, __FUNC_28D_(arg0))
	local registerVal2 = CoD.SafeGetModelValue(CoD.perController[arg0].selectedGroup, "privacy")
	if registerVal2 == Enum.GroupPrivacy.GROUP_PRIVACY_PUBLIC then
		table.insert({}, __FUNC_44D_(arg0))
	end
	return {}
end

local function __FUNC_76C_(arg0, arg1)
	local function __FUNC_830_(arg0, arg1, arg2)
		if not arg1.updateSubscription then
			local registerVal5 = Engine.GetModel(CoD.perController[arg0].selectedGroup, "privacy")
			local function __FUNC_96C_()
				arg1:updateDataSource()
			end

			local registerVal3 = arg1:subscribeToModel(registerVal5, __FUNC_96C_, false)
			arg1.updateSubscription = registerVal3
		end
	end

	local registerVal3 = DataSourceHelpers.ListSetup("AdminTabGroupPrivacyOptions", __FUNC_5C6_, true, nil, __FUNC_830_)
	DataSources.AdminTabGroupPrivacyOptions = registerVal3
end

local function __FUNC_9BE_(arg0, arg1, arg2)
	local function __FUNC_A58_(arg2, arg3)
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

	arg0.ButtonList:registerEventHandler("mouse_left_click", __FUNC_A58_)
end

local function __FUNC_C0E_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_9BE_(arg0, arg1, arg2)
	end
	AdminTabMakeNotFocusableIfDisabled(arg0, arg1)
end

local registerVal7 = InheritFrom(LUI.UIElement)
CoD.AdminTabGroupPrivacyFrame = registerVal7
local function __FUNC_CBB_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_76C_ then
		__FUNC_76C_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AdminTabGroupPrivacyFrame)
	registerVal2.id = "AdminTabGroupPrivacyFrame"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 724.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 417.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIList.new(arg0, arg1, -2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, -40.000000, 630.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 132.000000)
	registerVal3:setWidgetType(CoD.GroupSliderWithTitle)
	registerVal3:setVerticalCount(2.000000)
	registerVal3:setSpacing(-2.000000)
	registerVal3:setDataSource("AdminTabGroupPrivacyOptions")
	local function __FUNC_16D9_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "selected"
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
	end

	registerVal3:linkToElementModel(registerVal3, "selected", true, __FUNC_16D9_)
	local function __FUNC_18FB_(arg2, arg3)
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

	registerVal3:registerEventHandler("gain_focus", __FUNC_18FB_)
	local function __FUNC_1AF1_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_1AF1_)
	local function __FUNC_1BC2_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueTrue(arg0, arg2, "selected")
		if registerVal4 then
			SetElementModelValue(arg0, "selected", false)
			EnableNavigation(registerVal2, "ButtonList")
			EnableMouseOnElement(registerVal2, "ButtonList", arg2)
			GroupsVariableOptionsSet(registerVal2, arg0, arg2)
			MakeSiblingFocusable(registerVal2, "AdminOptions", arg2)
			return true
		else
			registerVal4 = IsSelfModelValueTrue(arg0, arg2, "selected")
			if not registerVal4 then
				SetElementModelValue(arg0, "selected", true)
				DisableNavigation(registerVal2, "ButtonList")
				DisableMouseOnElement(registerVal2, "ButtonList", arg2)
				DispatchEventToChildren(arg0, "gain_focus", arg2)
				MakeSiblingNotFocusable(registerVal2, "AdminOptions", arg2)
				return true
			end
		end
	end

	local function __FUNC_1E78_(arg0, arg1, arg2)
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

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1BC2_, __FUNC_1E78_, false)
	local function __FUNC_2036_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueTrue(arg0, arg2, "selected")
		if registerVal4 then
			SetElementModelValue(arg0, "selected", false)
			EnableNavigation(registerVal2, "ButtonList")
			DispatchEventToChildren(arg0, "lose_focus", arg2)
			MakeSiblingFocusable(registerVal2, "AdminOptions", arg2)
			GroupsVariableOptionsSet(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_21EB_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueTrue(arg0, arg2, "selected")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_2036_, __FUNC_21EB_, false)
	registerVal2:addElement(registerVal3)
	registerVal2.ButtonList = registerVal3
	local registerVal4 = CoD.GroupsNoConentDetail.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 268.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 270.000000)
	registerVal4.HeaderBkgd:setRGB(0.870000, 0.300000, 0.190000)
	registerVal4.HeaderIcon:setImage(RegisterImage("uie_t7_icon_menu_simple_customgames"))
	registerVal4.Header:setText(LocalizeToUpperString("GROUPS_FIND_GROUPS_CAPS"))
	registerVal4.Desc:setText(Engine.Localize("MENU_FILESHARE_PUBLISH_DESCRIPTION"))
	registerVal4.Glow2:setRGB(0.390000, 0.070000, 0.060000)
	registerVal2:addElement(registerVal4)
	registerVal2.GroupsNoConentDetail = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_2330_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.ButtonList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.HeaderBkgd:completeAnimation()
		registerVal2.GroupsNoConentDetail:setAlpha(0.000000)
		registerVal2.GroupsNoConentDetail.HeaderBkgd:setRGB(ColorSet.FactionAxis_CP.r, ColorSet.FactionAxis_CP.g, ColorSet.FactionAxis_CP.b)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_2330_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_2598_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.ButtonList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.HeaderBkgd:completeAnimation()
		registerVal4.HeaderIcon:completeAnimation()
		registerVal4.Header:completeAnimation()
		registerVal4.Desc:completeAnimation()
		registerVal4.Glow2:completeAnimation()
		registerVal2.GroupsNoConentDetail:setAlpha(1.000000)
		registerVal2.GroupsNoConentDetail.HeaderBkgd:setRGB(0.870000, 0.300000, 0.190000)
		registerVal2.GroupsNoConentDetail.HeaderIcon:setImage(RegisterImage("uie_t7_icon_menu_simple_customgames"))
		registerVal2.GroupsNoConentDetail.Header:setText(LocalizeToUpperString("GROUPS_ADMIN_NO_PRIVILEGE"))
		registerVal2.GroupsNoConentDetail.Desc:setText(Engine.Localize("GROUPS_ADMIN_NO_PRIVILEGE_DESC"))
		registerVal2.GroupsNoConentDetail.Glow2:setRGB(0.390000, 0.070000, 0.060000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_2598_
	registerVal5.Disabled = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Disabled"
	local function __FUNC_29EB_(arg0, arg2, arg3)
		return IsDisabled(arg2, arg1)
	end

	registerVal8.condition = __FUNC_29EB_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_2A3C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabled", true, __FUNC_2A3C_)
	registerVal3.id = "ButtonList"
	local function __FUNC_2B5A_(arg0, arg1)
		local registerVal2 = arg0.ButtonList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_2B5A_)
	local function __FUNC_2C5E_(arg0)
		arg0.ButtonList:close()
		arg0.GroupsNoConentDetail:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2C5E_)
	if __FUNC_C0E_ then
		__FUNC_C0E_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.AdminTabGroupPrivacyFrame.new = __FUNC_CBB_
