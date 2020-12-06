-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Groups.GroupsCreateButtonLG")
require("ui.uieditor.widgets.Groups.GroupsSubTitle")
require("ui.uieditor.widgets.Groups.GroupsInputButtonScroll")
require("ui.uieditor.widgets.Groups.GroupsNoConentDetail")
local function __FUNC_2ED_(arg0, arg1)
	AdminTabMakeNotFocusableIfDisabled(arg0, arg1)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.AdminTabGroupOverviewFrame = registerVal2
local function __FUNC_354_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AdminTabGroupOverviewFrame)
	registerVal2.id = "AdminTabGroupOverviewFrame"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 724.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 417.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 4.000000, 255.600000)
	registerVal3:setTopBottom(true, false, 335.060000, 493.060000)
	registerVal3:setAlpha(0.000000)
	local function __FUNC_1631_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setupGroupEmblem(registerVal1)
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "SelectedGroup", "groupId", __FUNC_1631_)
	registerVal2:addElement(registerVal3)
	registerVal2.GroupEmblem = registerVal3
	local registerVal4 = CoD.GroupsCreateButtonLG.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.500000, 258.600000)
	registerVal4:setTopBottom(true, false, 332.560000, 496.560000)
	registerVal4:setAlpha(0.000000)
	registerVal4.ImageText:setText(Engine.Localize(""))
	local registerVal8 = Engine.GetGlobalModel()
	local registerVal7 = Engine.GetModel(registerVal8, "lobbyRoot.lobbyNetworkMode")
	local function __FUNC_16CD_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "lobbyRoot.lobbyNetworkMode"
		CoD.Menu.UpdateButtonShownState(registerVal4, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_16CD_)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "lobbyRoot.lobbyNav")
	local function __FUNC_189B_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "lobbyRoot.lobbyNav"
		CoD.Menu.UpdateButtonShownState(registerVal4, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_189B_)
	local function __FUNC_1A5F_(arg2, arg3)
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

	registerVal4:registerEventHandler("gain_focus", __FUNC_1A5F_)
	local function __FUNC_1BEF_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_1BEF_)
	local function __FUNC_1CBE_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsLive()
		registerVal4 = IsUserContentRestricted(arg2)
		registerVal4 = HasAdminPrivilege(arg2, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_EDIT_GROUP_EMBLEM)
		if registerVal4 and not registerVal4 and registerVal4 then
			OpenEmblemSelect(registerVal2, arg0, arg2, Enum.StorageFileType.STORAGE_EMBLEMS, arg1)
			return true
		end
	end

	local function __FUNC_1E6C_(arg0, arg1, arg2)
		local registerVal3 = IsLive()
		registerVal3 = IsUserContentRestricted(arg2)
		registerVal3 = HasAdminPrivilege(arg2, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_EDIT_GROUP_EMBLEM)
		if registerVal3 and not registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1CBE_, __FUNC_1E6C_, false)
	registerVal2:addElement(registerVal4)
	registerVal2.EmblemButton = registerVal4
	local registerVal5 = CoD.GroupsSubTitle.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 168.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5.weaponNameLabel:setText(Engine.Localize("GROUPS_EDIT_MESSAGE"))
	registerVal2:addElement(registerVal5)
	registerVal2.GroupsSubTitle0 = registerVal5
	local registerVal6 = CoD.GroupsSubTitle.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 1.000000, 169.000000)
	registerVal6:setTopBottom(true, false, 166.430000, 198.430000)
	registerVal6:setAlpha(0.000000)
	registerVal6.weaponNameLabel:setText(Engine.Localize("GROUPS_EDIT_GROUP_DESCRIPTION"))
	registerVal2:addElement(registerVal6)
	registerVal2.GroupsSubTitle00 = registerVal6
	registerVal7 = CoD.GroupsSubTitle.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 1.000000, 169.000000)
	registerVal7:setTopBottom(true, false, 293.560000, 325.560000)
	registerVal7:setAlpha(0.000000)
	registerVal7.weaponNameLabel:setText(Engine.Localize("GROUPS_EDIT_GROUP_EMBLEM"))
	registerVal2:addElement(registerVal7)
	registerVal2.GroupsSubTitle000 = registerVal7
	registerVal8 = CoD.GroupsInputButtonScroll.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 0.000000, 385.000000)
	registerVal8:setTopBottom(true, false, 39.500000, 149.500000)
	registerVal8:setAlpha(0.000000)
	registerVal8.verticalScrollingTextBox.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local function __FUNC_2060_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.verticalScrollingTextBox.textBox:setText(registerVal1)
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "SelectedGroup", "message", __FUNC_2060_)
	local function __FUNC_213F_(arg2, arg3)
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

	registerVal8:registerEventHandler("gain_focus", __FUNC_213F_)
	local function __FUNC_22CF_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("lose_focus", __FUNC_22CF_)
	local function __FUNC_239E_(arg0, arg1, arg2, arg3)
		local registerVal4 = HasAdminPrivilege(arg2, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_EDIT_GROUP_MESSAGE)
		if registerVal4 then
			EditSelectedGroupMessage(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_24AE_(arg0, arg1, arg2)
		local registerVal3 = HasAdminPrivilege(arg2, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_EDIT_GROUP_MESSAGE)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal8, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_239E_, __FUNC_24AE_, false)
	registerVal2:addElement(registerVal8)
	registerVal2.GroupsInputButtonScroll = registerVal8
	local registerVal9 = CoD.GroupsInputButtonScroll.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 0.000000, 385.000000)
	registerVal9:setTopBottom(true, false, 208.500000, 280.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9.verticalScrollingTextBox.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local function __FUNC_264C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.verticalScrollingTextBox.textBox:setText(registerVal1)
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "SelectedGroup", "description", __FUNC_264C_)
	local function __FUNC_272B_(arg2, arg3)
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

	registerVal9:registerEventHandler("gain_focus", __FUNC_272B_)
	local function __FUNC_28BB_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("lose_focus", __FUNC_28BB_)
	local function __FUNC_298A_(arg0, arg1, arg2, arg3)
		local registerVal4 = HasAdminPrivilege(arg2, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_EDIT_GROUP_MESSAGE)
		if registerVal4 then
			EditSelectedGroupDescription(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_2A9E_(arg0, arg1, arg2)
		local registerVal3 = HasAdminPrivilege(arg2, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_EDIT_GROUP_MESSAGE)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal9, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_298A_, __FUNC_2A9E_, false)
	registerVal2:addElement(registerVal9)
	registerVal2.GroupsInputButtonScroll0 = registerVal9
	local registerVal10 = CoD.GroupsNoConentDetail.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 0.000000, 268.000000)
	registerVal10:setTopBottom(true, false, 0.000000, 270.000000)
	registerVal10.HeaderBkgd:setRGB(0.870000, 0.300000, 0.190000)
	registerVal10.HeaderIcon:setImage(RegisterImage("uie_t7_icon_menu_simple_customgames"))
	registerVal10.Header:setText(LocalizeToUpperString("GROUPS_FIND_GROUPS_CAPS"))
	registerVal10.Desc:setText(Engine.Localize("MENU_FILESHARE_PUBLISH_DESCRIPTION"))
	registerVal10.Glow2:setRGB(ColorSet.FactionAxis.r, ColorSet.FactionAxis.g, ColorSet.FactionAxis.b)
	registerVal2:addElement(registerVal10)
	registerVal2.GroupsNoConentDetail = registerVal10
	local registerVal11 = {}
	registerVal11.up = registerVal9
	registerVal4.navigation = registerVal11
	registerVal11 = {}
	registerVal11.down = registerVal9
	registerVal8.navigation = registerVal11
	registerVal11 = {}
	registerVal11.up = registerVal8
	registerVal11.down = registerVal4
	registerVal9.navigation = registerVal11
	registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_2C3C_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.GroupEmblem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.EmblemButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.GroupsSubTitle0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.GroupsSubTitle00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.GroupsSubTitle000:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.GroupsInputButtonScroll:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.GroupsInputButtonScroll0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal10.HeaderBkgd:completeAnimation()
		registerVal2.GroupsNoConentDetail:setAlpha(0.000000)
		registerVal2.GroupsNoConentDetail.HeaderBkgd:setRGB(ColorSet.FactionAxis_CP.r, ColorSet.FactionAxis_CP.g, ColorSet.FactionAxis_CP.b)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_2C3C_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_30E4_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.GroupEmblem:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.EmblemButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.GroupsSubTitle0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.GroupsSubTitle00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.GroupsSubTitle000:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.GroupsInputButtonScroll:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.GroupsInputButtonScroll0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal10.HeaderBkgd:completeAnimation()
		registerVal10.HeaderIcon:completeAnimation()
		registerVal10.Header:completeAnimation()
		registerVal10.Desc:completeAnimation()
		registerVal10.Glow2:completeAnimation()
		registerVal2.GroupsNoConentDetail:setAlpha(1.000000)
		registerVal2.GroupsNoConentDetail.HeaderBkgd:setRGB(0.870000, 0.300000, 0.190000)
		registerVal2.GroupsNoConentDetail.HeaderIcon:setImage(RegisterImage("uie_t7_icon_menu_simple_customgames"))
		registerVal2.GroupsNoConentDetail.Header:setText(LocalizeToUpperString("GROUPS_ADMIN_NO_PRIVILEGE"))
		registerVal2.GroupsNoConentDetail.Desc:setText(Engine.Localize("GROUPS_ADMIN_NO_PRIVILEGE_DESC"))
		registerVal2.GroupsNoConentDetail.Glow2:setRGB(ColorSet.FactionAxis.r, ColorSet.FactionAxis.g, ColorSet.FactionAxis.b)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_30E4_
	registerVal11.Disabled = registerVal12
	registerVal2.clipsPerState = registerVal11
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "Disabled"
	local function __FUNC_37F8_(arg0, arg2, arg3)
		return IsDisabled(arg2, arg1)
	end

	registerVal14.condition = __FUNC_37F8_
	registerVal13 = {registerVal14}
	registerVal2:mergeStateConditions(registerVal13)
	local function __FUNC_384C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabled", true, __FUNC_384C_)
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal4.id = "EmblemButton"
	registerVal8.id = "GroupsInputButtonScroll"
	registerVal9.id = "GroupsInputButtonScroll0"
	local function __FUNC_396A_(arg0, arg1)
		local registerVal2 = arg0.GroupsInputButtonScroll0:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_396A_)
	local function __FUNC_3A7C_(arg0)
		arg0.EmblemButton:close()
		arg0.GroupsSubTitle0:close()
		arg0.GroupsSubTitle00:close()
		arg0.GroupsSubTitle000:close()
		arg0.GroupsInputButtonScroll:close()
		arg0.GroupsInputButtonScroll0:close()
		arg0.GroupsNoConentDetail:close()
		arg0.GroupEmblem:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3A7C_)
	if __FUNC_2ED_ then
		__FUNC_2ED_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.AdminTabGroupOverviewFrame.new = __FUNC_354_
