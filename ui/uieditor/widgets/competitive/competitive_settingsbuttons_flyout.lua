-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.GameSettings.GameSettings_Button")
local function __FUNC_451_(arg0, arg1)
	if not CoD.useMouse then
		return 
	end
	arg0:setForceMouseEventDispatch(true)
	local function __FUNC_5F9_(arg1, arg2)
		local registerVal2 = IsSelfInState(arg0, "CACOptionsVisible")
		if registerVal2 then
			arg0.CaCOptions:setMouseDisabled(false)
			arg0.ButtonList:setMouseDisabled(true)
			arg0.m_playlistSet = false
		else
			arg0.CaCOptions:setMouseDisabled(true)
			arg0.ButtonList:setMouseDisabled(false)
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "setState", __FUNC_5F9_)
	arg0.CaCOptions:setMouseDisabled(true)
	local function __FUNC_745_(arg2, arg3)
		local registerVal2 = IsSelfInState(arg0, "CACOptionsVisible")
		if registerVal2 and arg0.m_playlistSet then
			CoD.PCUtil.SimulateButtonPress(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
		end
		arg0.m_playlistSet = true
		return true
	end

	arg0.CaCOptions:registerEventHandler("leftclick_outside", __FUNC_745_)
end

local function __FUNC_8B4_(arg0, arg1)
	SetGlobalModelValueFalse("lobbyRoot.ShowCACItemBansRestrictionFlyout")
end

local function __FUNC_942_(arg0, arg1, arg2)
	__FUNC_451_(arg0, arg1)
	MakeElementNotFocusable(arg0, "CaCOptions", arg1)
end

function OpenScorestreakRestrictions(arg0, arg1, arg2, arg3, arg4)
	arg4:saveState()
	OpenPopup(arg0, "Competitive_Settings_Scorestreaks", arg2)
end

function OpenSpecialistRestrictions(arg0, arg1, arg2, arg3, arg4)
	arg4:saveState()
	OpenPopup(arg0, "Competitive_Settings_Specialists", arg2)
end

local function __FUNC_AF4_(arg0)
	local registerVal1 = {}
	local registerVal2 = {}
	registerVal2.optionDisplay = "MENU_CREATE_A_CLASS"
	registerVal2.desc = "MENU_GENERIC_RESTRICTION_DESC"
	registerVal2.customId = "btnCAC"
	registerVal2.action = OpenCACItemBansRestrictionsFlyout
	local registerVal3 = {}
	registerVal3 = {"Competitive_Settings_Weapons", "Competitive_Settings_Attachments", "Competitive_Settings_Perks", "Competitive_Settings_Equipment", "Competitive_Settings_Wildcards"}
	registerVal2.actionParam = registerVal3
	registerVal3 = {}
	registerVal3.optionDisplay = "MENU_SPECIALISTS"
	registerVal3.desc = "MENU_GENERIC_RESTRICTION_DESC"
	registerVal3.customId = "btnHeroes"
	registerVal3.action = OpenSpecialistRestrictions
	local registerVal4 = {}
	registerVal4 = {"Competitive_Settings_Specialists"}
	registerVal3.actionParam = registerVal4
	registerVal4 = {}
	registerVal4.optionDisplay = "MENU_SCORESTREAKS"
	registerVal4.desc = "MENU_GENERIC_RESTRICTION_DESC"
	registerVal4.customId = "btnScorestreaks"
	registerVal4.action = OpenScorestreakRestrictions
	local registerVal5 = {}
	registerVal5 = {"Competitive_Settings_Scorestreaks"}
	registerVal4.actionParam = registerVal5
	registerVal1 = {registerVal2, registerVal3, registerVal4}
	registerVal3, registerVal4, registerVal5 = ipairs(registerVal1)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		local registerVal10 = {}
		local registerVal11 = {}
		local registerVal12 = Engine.Localize(value7.optionDisplay)
		registerVal11.displayText = registerVal12
		registerVal11.customId = value7.customId
		registerVal10.models = registerVal11
		registerVal11 = {}
		registerVal11.title = value7.optionDisplay
		registerVal11.desc = value7.desc
		registerVal11.action = value7.action
		registerVal11.actionParam = value7.actionParam
		registerVal10.properties = registerVal11
		table.insert({}, registerVal10)
	end
	return {}
end

function OpenWeaponRestrictions(arg0, arg1, arg2, arg3, arg4)
	arg4:saveState()
	OpenOverlay(arg0, "Competitive_Settings_Weapons", arg2)
end

function OpenAttachmentRestrictions(arg0, arg1, arg2, arg3, arg4)
	arg4:saveState()
	OpenOverlay(arg0, "Competitive_Settings_Attachments", arg2)
end

function OpenPerkRestrictions(arg0, arg1, arg2, arg3, arg4)
	arg4:saveState()
	OpenOverlay(arg0, "Competitive_Settings_Perks", arg2)
end

function OpenEquipmentRestrictions(arg0, arg1, arg2, arg3, arg4)
	arg4:saveState()
	OpenOverlay(arg0, "Competitive_Settings_Equipment", arg2)
end

function OpenWildcardRestrictions(arg0, arg1, arg2, arg3, arg4)
	arg4:saveState()
	OpenOverlay(arg0, "Competitive_Settings_Wildcards", arg2)
end

local function __FUNC_1294_(arg0)
	local registerVal1 = {}
	local registerVal2 = {}
	registerVal2.optionDisplay = "MENU_WEAPONS"
	registerVal2.desc = "MENU_GENERIC_RESTRICTION_DESC"
	registerVal2.customId = "btnWeapons"
	registerVal2.action = OpenWeaponRestrictions
	local registerVal3 = {}
	registerVal3 = {"Competitive_Settings_Weapons"}
	registerVal2.actionParam = registerVal3
	registerVal3 = {}
	registerVal3.optionDisplay = "MENU_ATTACHMENTS"
	registerVal3.desc = "MENU_ATTACHMENT_RESTRICTION_DESC"
	registerVal3.customId = "btnAttachments"
	registerVal3.action = OpenAttachmentRestrictions
	local registerVal4 = {}
	registerVal4 = {"Competitive_Settings_Attachments"}
	registerVal3.actionParam = registerVal4
	registerVal4 = {}
	registerVal4.optionDisplay = "MENU_PERKS"
	registerVal4.desc = "MENU_GENERIC_RESTRICTION_DESC"
	registerVal4.customId = "btnPerks"
	registerVal4.action = OpenPerkRestrictions
	local registerVal5 = {}
	registerVal5 = {"Competitive_Settings_Perks"}
	registerVal4.actionParam = registerVal5
	registerVal5 = {}
	registerVal5.optionDisplay = "MENU_EQUIPMENT"
	registerVal5.desc = "MENU_GENERIC_RESTRICTION_DESC"
	registerVal5.customId = "btnEquipment"
	registerVal5.action = OpenEquipmentRestrictions
	local registerVal6 = {}
	registerVal6 = {"Competitive_Settings_Equipment"}
	registerVal5.actionParam = registerVal6
	registerVal6 = {}
	registerVal6.optionDisplay = "MENU_WILDCARDS"
	registerVal6.desc = "MENU_GENERIC_RESTRICTION_DESC"
	registerVal6.customId = "btnWildcards"
	registerVal6.action = OpenWildcardRestrictions
	local registerVal7 = {}
	registerVal7 = {"Competitive_Settings_Wildcards"}
	registerVal6.actionParam = registerVal7
	registerVal1 = {registerVal2, registerVal3, registerVal4, registerVal5, registerVal6}
	registerVal3, registerVal4, registerVal5 = ipairs(registerVal1)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		local registerVal10 = {}
		local registerVal11 = {}
		local registerVal12 = Engine.Localize(value7.optionDisplay)
		registerVal11.displayText = registerVal12
		registerVal11.customId = value7.customId
		registerVal10.models = registerVal11
		registerVal11 = {}
		registerVal11.title = value7.optionDisplay
		registerVal11.desc = value7.desc
		registerVal11.action = value7.action
		registerVal11.actionParam = value7.actionParam
		registerVal10.properties = registerVal11
		table.insert({}, registerVal10)
	end
	return {}
end

local registerVal6 = DataSourceHelpers.ListSetup("CompetitiveSettingsButtons", __FUNC_AF4_, nil, nil, nil)
DataSources.CompetitiveSettingsButtons = registerVal6
registerVal6 = DataSourceHelpers.ListSetup("CompetitiveSettingsCategoryButtons", __FUNC_1294_, nil, nil, nil)
DataSources.CompetitiveSettingsCategoryButtons = registerVal6
registerVal6 = InheritFrom(LUI.UIElement)
CoD.Competitive_SettingsButtons_Flyout = registerVal6
local function __FUNC_17DF_(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 0.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Left)
	if __FUNC_8B4_ then
		__FUNC_8B4_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Competitive_SettingsButtons_Flyout)
	registerVal2.id = "Competitive_SettingsButtons_Flyout"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 633.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 160.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 0.000000, 280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 100.000000)
	registerVal3:setDataSource("CompetitiveSettingsButtons")
	registerVal3:setWidgetType(CoD.GameSettings_Button)
	registerVal3:setVerticalCount(3.000000)
	local function __FUNC_23D0_(arg0, arg2)
		GameSettingsButtonGainFocus(registerVal2, arg0, arg1)
		return nil
	end

	registerVal3:registerEventHandler("list_item_gain_focus", __FUNC_23D0_)
	local function __FUNC_243D_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_START)
		return registerVal3
	end

	registerVal3:registerEventHandler("gain_focus", __FUNC_243D_)
	local function __FUNC_262E_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_262E_)
	local function __FUNC_26FE_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal2, arg0, arg2)
		return true
	end

	local function __FUNC_275F_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_26FE_, __FUNC_275F_, false)
	local function __FUNC_285A_(arg0, arg1, arg2, arg3)
		OpenGameSettingsOptionsMenu(registerVal2, arg0, arg2, arg1)
		return true
	end

	local function __FUNC_28C9_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "DEMO_OPTIONS_HINT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_START, "O", __FUNC_285A_, __FUNC_28C9_, false)
	registerVal2:addElement(registerVal3)
	registerVal2.ButtonList = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 280.000000, 290.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 128.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Spacer = registerVal4
	local registerVal5 = LUI.UIList.new(arg0, arg1, 0.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal5:makeFocusable()
	registerVal5:setLeftRight(true, false, 290.000000, 570.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 160.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setDataSource("CompetitiveSettingsCategoryButtons")
	registerVal5:setWidgetType(CoD.GameSettings_Button)
	registerVal5:setVerticalCount(5.000000)
	registerVal5:setSpacing(0.000000)
	local function __FUNC_29C6_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_START)
		return registerVal3
	end

	registerVal5:registerEventHandler("gain_focus", __FUNC_29C6_)
	local function __FUNC_2C1C_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_2C1C_)
	local function __FUNC_2CEE_(arg0, arg1, arg2, arg3)
		SetGlobalModelValueFalse("lobbyRoot.ShowCACItemBansRestrictionFlyout")
		return true
	end

	local function __FUNC_2D82_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_2CEE_, __FUNC_2D82_, false)
	local function __FUNC_2E7D_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal2, arg0, arg2)
		return true
	end

	local function __FUNC_2EDF_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_2E7D_, __FUNC_2EDF_, false)
	local function __FUNC_2FDA_(arg0, arg1, arg2, arg3)
		OpenGameSettingsOptionsMenu(registerVal2, arg0, arg2, arg1)
		return true
	end

	local function __FUNC_3049_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_OPTIONS")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_START, "O", __FUNC_2FDA_, __FUNC_3049_, false)
	registerVal2:addElement(registerVal5)
	registerVal2.CaCOptions = registerVal5
	local registerVal6 = {}
	registerVal6.right = registerVal5
	registerVal3.navigation = registerVal6
	registerVal6 = {}
	registerVal6.left = registerVal3
	registerVal5.navigation = registerVal6
	registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_3141_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.ButtonList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.CaCOptions:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_3141_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_329F_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.ButtonList:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.CaCOptions:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_329F_
	registerVal6.CACOptionsVisible = registerVal7
	registerVal2.clipsPerState = registerVal6
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	local function __FUNC_33FB_(arg0)
		SetGlobalModelValueFalse("lobbyRoot.ShowCACItemBansRestrictionFlyout")
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "close", __FUNC_33FB_)
	local function __FUNC_3486_(arg0)
		local registerVal2 = IsGlobalModelValueTrue(registerVal2, arg1, "lobbyRoot.ShowCACItemBansRestrictionFlyout")
		registerVal2 = IsInDefaultStateOrStateNotSet(registerVal2)
		if not registerVal2 and not registerVal2 then
			SetState(registerVal2, "DefaultState")
			SetLoseFocusToElement(registerVal2, "ButtonList", arg1)
			MakeElementNotFocusable(registerVal2, "CaCOptions", arg1)
			MakeElementFocusable(registerVal2, "ButtonList", arg1)
			SetFocusToElement(registerVal2, "ButtonList", arg1)
			PlaySoundSetSound(registerVal2, "toggle")
		else
			registerVal2 = IsGlobalModelValueTrue(registerVal2, arg1, "lobbyRoot.ShowCACItemBansRestrictionFlyout")
			if registerVal2 then
				SetState(registerVal2, "CACOptionsVisible")
				SetLoseFocusToElement(registerVal2, "ButtonList", arg1)
				MakeElementNotFocusable(registerVal2, "ButtonList", arg1)
				MakeElementFocusable(registerVal2, "CaCOptions", arg1)
				SetFocusToElement(registerVal2, "CaCOptions", arg1)
			end
		end
	end

	registerVal2:subscribeToGlobalModel(arg1, "LobbyRoot", "ShowCACItemBansRestrictionFlyout", __FUNC_3486_)
	registerVal3.id = "ButtonList"
	registerVal5.id = "CaCOptions"
	local function __FUNC_375E_(arg0, arg1)
		local registerVal2 = arg0.ButtonList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_375E_)
	local function __FUNC_3862_(arg0)
		arg0.ButtonList:close()
		arg0.CaCOptions:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3862_)
	if __FUNC_942_ then
		__FUNC_942_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.Competitive_SettingsButtons_Flyout.new = __FUNC_17DF_
