-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Groups.GroupsInputButton")
require("ui.uieditor.widgets.Groups.GroupsSubTitle")
require("ui.uieditor.widgets.Groups.GroupsNoConentDetail")
local function __FUNC_29E_(arg0, arg1)
	AdminTabMakeNotFocusableIfDisabled(arg0, arg1)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.AdminTabGroupNameFrame = registerVal2
local function __FUNC_304_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AdminTabGroupNameFrame)
	registerVal2.id = "AdminTabGroupNameFrame"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 724.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 417.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.GroupsInputButton.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, -1.000000, 384.000000)
	registerVal3:setTopBottom(true, false, 39.000000, 75.000000)
	local function __FUNC_CCD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.Text:setText(registerVal1)
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "SelectedGroup", "name", __FUNC_CCD_)
	local function __FUNC_D7A_(arg2, arg3)
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

	registerVal3:registerEventHandler("gain_focus", __FUNC_D7A_)
	local function __FUNC_F0B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_F0B_)
	local function __FUNC_FDA_(arg0, arg1, arg2, arg3)
		local registerVal4 = HasAdminPrivilege(arg2, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_EDIT_GROUP_NAME)
		if registerVal4 then
			ProcessListAction(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_10E0_(arg0, arg1, arg2)
		local registerVal3 = HasAdminPrivilege(arg2, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_EDIT_GROUP_NAME)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_FDA_, __FUNC_10E0_, false)
	registerVal2:addElement(registerVal3)
	registerVal2.GroupsInputButton = registerVal3
	local registerVal4 = CoD.GroupsSubTitle.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, -2.000000, 166.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.GroupsSubTitle0 = registerVal4
	local registerVal5 = CoD.GroupsNoConentDetail.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 268.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 270.000000)
	registerVal5.HeaderBkgd:setRGB(0.870000, 0.300000, 0.190000)
	registerVal5.HeaderIcon:setImage(RegisterImage("uie_t7_icon_menu_simple_customgames"))
	registerVal5.Header:setText(LocalizeToUpperString("GROUPS_FIND_GROUPS_CAPS"))
	registerVal5.Desc:setText(Engine.Localize("MENU_FILESHARE_PUBLISH_DESCRIPTION"))
	registerVal5.Glow2:setRGB(0.390000, 0.070000, 0.060000)
	registerVal2:addElement(registerVal5)
	registerVal2.GroupsNoConentDetail = registerVal5
	local function __FUNC_127D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.weaponNameLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.GroupsSubTitle0:linkToElementModel(registerVal2, "displayText", true, __FUNC_127D_)
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_135B_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.GroupsInputButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GroupsSubTitle0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal5.HeaderBkgd:completeAnimation()
		registerVal2.GroupsNoConentDetail:setAlpha(0.000000)
		registerVal2.GroupsNoConentDetail.HeaderBkgd:setRGB(ColorSet.FactionAxis_CP.r, ColorSet.FactionAxis_CP.g, ColorSet.FactionAxis_CP.b)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_135B_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_1624_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.GroupsInputButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GroupsSubTitle0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal5.HeaderBkgd:completeAnimation()
		registerVal5.HeaderIcon:completeAnimation()
		registerVal5.Header:completeAnimation()
		registerVal5.Desc:completeAnimation()
		registerVal5.Glow2:completeAnimation()
		registerVal2.GroupsNoConentDetail:setAlpha(1.000000)
		registerVal2.GroupsNoConentDetail.HeaderBkgd:setRGB(0.870000, 0.300000, 0.190000)
		registerVal2.GroupsNoConentDetail.HeaderIcon:setImage(RegisterImage("uie_t7_icon_menu_simple_customgames"))
		registerVal2.GroupsNoConentDetail.Header:setText(LocalizeToUpperString("GROUPS_ADMIN_NO_PRIVILEGE"))
		registerVal2.GroupsNoConentDetail.Desc:setText(Engine.Localize("GROUPS_ADMIN_NO_PRIVILEGE_DESC"))
		registerVal2.GroupsNoConentDetail.Glow2:setRGB(0.390000, 0.070000, 0.060000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1624_
	registerVal6.Disabled = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Disabled"
	local function __FUNC_1ADB_(arg0, arg2, arg3)
		return IsDisabled(arg2, arg1)
	end

	registerVal9.condition = __FUNC_1ADB_
	registerVal8 = {registerVal9}
	registerVal2:mergeStateConditions(registerVal8)
	local function __FUNC_1B2C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabled", true, __FUNC_1B2C_)
	registerVal3.id = "GroupsInputButton"
	local function __FUNC_1C4A_(arg0, arg1)
		local registerVal2 = arg0.GroupsInputButton:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_1C4A_)
	local function __FUNC_1D55_(arg0)
		arg0.GroupsInputButton:close()
		arg0.GroupsSubTitle0:close()
		arg0.GroupsNoConentDetail:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1D55_)
	if __FUNC_29E_ then
		__FUNC_29E_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.AdminTabGroupNameFrame.new = __FUNC_304_
