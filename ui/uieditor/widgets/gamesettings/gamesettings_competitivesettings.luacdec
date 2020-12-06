-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.GameSettings.GameSettings_SelectedItemInfo")
require("ui.uieditor.widgets.Competitive.Competitive_SettingsList")
require("ui.uieditor.widgets.StartMenu.StartMenu_OptionHighlight")
require("ui.uieditor.widgets.Competitive.Competitive_SettingsButtons_Flyout")
local function __FUNC_441_(arg0, arg1)
	if not CoD.useMouse then
		return 
	end
	arg0:setForceMouseEventDispatch(true)
	local function __FUNC_578_(arg1, arg2)
		local registerVal2 = IsInDefaultState(arg1)
		if not registerVal2 then
			arg0.BanProtectSettings.m_mouseDisabled = true
			arg0.DraftSettings.m_mouseDisabled = true
		else
			registerVal2 = IsInDefaultState(arg1)
			if registerVal2 then
				arg0.BanProtectSettings.m_mouseDisabled = nil
				arg0.DraftSettings.m_mouseDisabled = nil
			end
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0.CompetitiveSettingsButtonsFlyout, "setState", __FUNC_578_)
end

local function __FUNC_689_(arg0, arg1, arg2)
	__FUNC_441_(arg0, arg1)
end

local function __FUNC_6C4_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "GametypeSettings")
	registerVal3 = Engine.CreateModel(registerVal2, "title")
	Engine.SetModelValue(registerVal3, "")
	local registerVal4 = Engine.CreateModel(registerVal2, "description")
	Engine.SetModelValue(registerVal4, "")
end

local function __FUNC_828_(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
	local registerVal10, registerVal11, registerVal12 = ipairs(arg8)
	if  == 0.000000 then
		local registerVal17 = {}
		local registerVal18 = Engine.Localize("MENU_UNLIMITED")
		registerVal17.name = registerVal18
		registerVal17.value = 
		registerVal17.title = arg1
		registerVal17.desc = arg2
		table.insert({}, registerVal17)
	else
		if  == 1.000000 then
			registerVal17 = {}
			registerVal18 = Engine.Localize(arg6)
			registerVal17.name = registerVal18
			registerVal17.value = 
			registerVal17.title = arg1
			registerVal17.desc = arg2
			table.insert({}, registerVal17)
		else
			if  < 60.000000 then
				registerVal17 = {}
				registerVal18 = Engine.Localize(arg7, )
				registerVal17.name = registerVal18
				registerVal17.value = 
				registerVal17.title = arg1
				registerVal17.desc = arg2
				table.insert({}, registerVal17)
			else
				if  == 60.000000 then
					registerVal17 = {}
					registerVal18 = Engine.Localize("MENU_1_MINUTE", )
					registerVal17.name = registerVal18
					registerVal17.value = 
					registerVal17.title = arg1
					registerVal17.desc = arg2
					table.insert({}, registerVal17)
				else
					registerVal17 = {}
					registerVal18 = Engine.Localize("MENU_X_MINUTES", ( / 60.000000))
					registerVal17.name = registerVal18
					registerVal17.value = 
					registerVal17.title = arg1
					registerVal17.desc = arg2
					table.insert({}, registerVal17)
				end
			end
		end
	end
	registerVal10 = {}
	registerVal11 = {}
	registerVal12 = Engine.Localize(arg1)
	registerVal11.name = registerVal12
	registerVal12 = Engine.Localize(arg2)
	registerVal11.desc = registerVal12
	registerVal12 = RegisterMaterial("")
	registerVal11.image = registerVal12
	registerVal12 = CoD.OptionsUtility.CreateGametypeSettingsDataSource(arg0, arg3, {}, arg4)
	registerVal11.optionsDatasource = registerVal12
	registerVal11.setting = arg4
	registerVal10.models = registerVal11
	registerVal11 = {}
	registerVal11.enabledWithGametypeSetting = arg5
	local function __FUNC_C8F_(arg0)
		Engine.SetGametypeSetting(arg4, Engine.GetGametypeSetting(arg4, true))
	end

	registerVal11.revert = __FUNC_C8F_
	registerVal10.properties = registerVal11
	return registerVal10
end

local function __FUNC_D34_(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
	local registerVal10, registerVal11, registerVal12 = ipairs(arg8)
	if  == 0.000000 then
		local registerVal17 = {}
		local registerVal18 = Engine.Localize("MENU_UNLIMITED")
		registerVal17.name = registerVal18
		registerVal17.value = 
		registerVal17.title = arg1
		registerVal17.desc = arg2
		table.insert({}, registerVal17)
	else
		if  == 1.000000 then
			registerVal17 = {}
			registerVal18 = Engine.Localize(arg6)
			registerVal17.name = registerVal18
			registerVal17.value = 
			registerVal17.title = arg1
			registerVal17.desc = arg2
			table.insert({}, registerVal17)
		else
			registerVal17 = {}
			registerVal18 = Engine.Localize(arg7, )
			registerVal17.name = registerVal18
			registerVal17.value = 
			registerVal17.title = arg1
			registerVal17.desc = arg2
			table.insert({}, registerVal17)
		end
	end
	registerVal10 = {}
	registerVal11 = {}
	registerVal12 = Engine.Localize(arg1)
	registerVal11.name = registerVal12
	registerVal12 = Engine.Localize(arg2)
	registerVal11.desc = registerVal12
	registerVal12 = RegisterMaterial("")
	registerVal11.image = registerVal12
	registerVal12 = CoD.OptionsUtility.CreateGametypeSettingsDataSource(arg0, arg3, {}, arg4)
	registerVal11.optionsDatasource = registerVal12
	registerVal11.setting = arg4
	registerVal10.models = registerVal11
	registerVal11 = {}
	registerVal11.enabledWithGametypeSetting = arg5
	local function __FUNC_10BF_(arg0)
		Engine.SetGametypeSetting(arg4, Engine.GetGametypeSetting(arg4, true))
	end

	registerVal11.revert = __FUNC_10BF_
	registerVal10.properties = registerVal11
	return registerVal10
end

local function __FUNC_1164_(arg0)
	table.insert({}, CoD.OptionsUtility.CreateEnabledDisabledOptions(arg0, "MENU_SPECIALIST_DRAFT", "MENU_SPECIALIST_DRAFT_DESC", "pregameDraftEnabled", "SpecialistOptions_DraftEnabled"))
	local registerVal13 = {}
	registerVal13 = {10.000000, 20.000000, 30.000000, 45.000000, 60.000000, 90.000000, 120.000000, 150.000000, 180.000000, 210.000000, 240.000000}
	table.insert({}, __FUNC_828_(arg0, "MENU_DRAFT_TIME", "MENU_DRAFT_TIME_DESC", "SpecialistOptions_DraftTime", "pregameDraftRoundTime", "pregameDraftEnabled", "MENU_1_SECOND", "MENU_X_SECONDS", registerVal13))
	return {}
end

local function __FUNC_142B_(arg0, arg1, arg2)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.CreateModel(registerVal4, "GametypeSettings")
	registerVal4 = Engine.CreateModel(registerVal3, "pregameDraftEnabled")
	if arg1.draftEnabledSubscription then
		arg1:removeSubscription(arg1.draftEnabledSubscription)
	end
	local function __FUNC_1638_()
		arg1:clearSavedActiveIndex()
		arg1:clearSavedState()
		arg1:updateDataSource(false)
	end

	local registerVal5 = arg1:subscribeToModel(registerVal4, __FUNC_1638_, false)
	arg1.draftEnabledSubscription = registerVal5
	registerVal5 = Engine.CreateModel(registerVal3, "Update")
	if arg1.updateSubscription then
		arg1:removeSubscription(arg1.updateSubscription)
	end
	local function __FUNC_16DE_()
		arg1:updateDataSource(false)
	end

	local registerVal6 = arg1:subscribeToModel(registerVal5, __FUNC_16DE_, false)
	arg1.updateSubscription = registerVal6
end

local function __FUNC_1732_(arg0)
	table.insert({}, CoD.OptionsUtility.CreateEnabledDisabledOptions(arg0, "MENU_BAN_PROTECT_VOTES", "MENU_BAN_PROTECT_VOTES_DESC", "pregameItemVoteEnabled", "SpecialistOptions_BanProtectEnabled"))
	local registerVal13 = {}
	registerVal13 = {10.000000, 15.000000, 20.000000, 30.000000, 45.000000, 60.000000, 90.000000, 120.000000, 150.000000, 180.000000, 210.000000, 240.000000}
	table.insert({}, __FUNC_828_(arg0, "MENU_BAN_PROTECT_TIME", "MENU_BAN_PROTECT_TIME_DESC", "SpecialistOptions_DraftTime", "pregameItemVoteRoundTime", "pregameItemVoteEnabled", "MENU_1_SECOND", "MENU_X_SECONDS", registerVal13))
	registerVal13 = {}
	registerVal13 = {10.000000, 15.000000, 20.000000, 30.000000, 45.000000, 60.000000, 90.000000, 120.000000, 150.000000, 180.000000, 210.000000, 240.000000}
	table.insert({}, __FUNC_828_(arg0, "MENU_CAC_MODIFICATION_TIME", "MENU_CAC_MODIFICATION_TIME_DESC", "SpecialistOptions_CACModificationTime", "pregameCACModifyTime", "pregameItemVoteEnabled", "MENU_1_SECOND", "MENU_X_SECONDS", registerVal13))
	registerVal13 = {}
	registerVal13 = {10.000000, 15.000000, 20.000000, 30.000000, 45.000000, 60.000000, 90.000000, 120.000000, 150.000000, 180.000000, 210.000000, 240.000000}
	table.insert({}, __FUNC_828_(arg0, "MENU_STREAK_MODIFICATION_TIME", "MENU_STREAK_MODIFICATION_TIME_DESC", "SpecialistOptions_StreakModificationTime", "pregameScorestreakModifyTime", "pregameItemVoteEnabled", "MENU_1_SECOND", "MENU_X_SECONDS", registerVal13))
	registerVal13 = {}
	registerVal13 = {1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 6.000000, 7.000000, 8.000000, 9.000000, 10.000000, 11.000000, 12.000000}
	table.insert({}, __FUNC_D34_(arg0, "MENU_VOTES_PER_PLAYER", "MENU_VOTES_PER_PLAYER_DESC", "SpecialistOptions_VotesPerPlayer", "pregameItemMaxVotes", "pregameItemVoteEnabled", "MENU_1_VOTE", "MENU_X_VOTES", registerVal13))
	return {}
end

local function __FUNC_1DB2_(arg0, arg1, arg2)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.CreateModel(registerVal4, "GametypeSettings")
	registerVal4 = Engine.CreateModel(registerVal3, "pregameItemVoteEnabled")
	if arg1.pregameVoteSubscription then
		arg1:removeSubscription(arg1.pregameVoteSubscription)
	end
	local function __FUNC_1FC2_()
		local registerVal2 = {}
		registerVal2.name = "update_state"
		arg1:processEvent(registerVal2)
	end

	local registerVal5 = arg1:subscribeToModel(registerVal4, __FUNC_1FC2_, false)
	arg1.pregameVoteSubscription = registerVal5
	registerVal5 = Engine.CreateModel(registerVal3, "Update")
	if arg1.updateSubscription then
		arg1:removeSubscription(arg1.updateSubscription)
	end
	local function __FUNC_203A_()
		arg1:updateDataSource(false)
	end

	local registerVal6 = arg1:subscribeToModel(registerVal5, __FUNC_203A_, false)
	arg1.updateSubscription = registerVal6
end

local registerVal10 = DataSourceHelpers.ListSetup("CompetitiveDraftSettings", __FUNC_1164_, nil, nil, __FUNC_142B_)
DataSources.CompetitiveDraftSettings = registerVal10
registerVal10 = DataSourceHelpers.ListSetup("CompetitiveBanProtectSettings", __FUNC_1732_, nil, nil, __FUNC_1DB2_)
DataSources.CompetitiveBanProtectSettings = registerVal10
registerVal10 = InheritFrom(LUI.UIElement)
CoD.GameSettings_CompetitiveSettings = registerVal10
local function __FUNC_208E_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_6C4_ then
		__FUNC_6C4_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GameSettings_CompetitiveSettings)
	registerVal2.id = "GameSettings_CompetitiveSettings"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 585.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.GameSettings_SelectedItemInfo.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, -135.000000, 0.000000)
	registerVal3.GameModeInfo:setAlpha(0.000000)
	registerVal3.GameModeName:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.GameSettingsSelectedItemInfo = registerVal3
	local registerVal4 = CoD.Competitive_SettingsList.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 27.000000, 623.000000)
	registerVal4:setTopBottom(true, false, 205.000000, 320.000000)
	registerVal4.Title.DescTitle:setText(Engine.Localize("MENU_SPECIALIST_DRAFT_SETTINGS_CAPS"))
	registerVal4.ButtonList:setDataSource("CompetitiveDraftSettings")
	registerVal2:addElement(registerVal4)
	registerVal2.DraftSettings = registerVal4
	local registerVal5 = CoD.Competitive_SettingsList.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 27.000000, 624.000000)
	registerVal5:setTopBottom(true, false, 1.000000, 210.000000)
	registerVal5.Title.DescTitle:setText(Engine.Localize("MENU_BAN_PROTECT_SETTINGS_CAPS"))
	registerVal5.ButtonList:setVerticalCount(5.000000)
	registerVal5.ButtonList:setDataSource("CompetitiveBanProtectSettings")
	registerVal2:addElement(registerVal5)
	registerVal2.BanProtectSettings = registerVal5
	local registerVal6 = CoD.StartMenu_OptionHighlight.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 69.000000, 411.000000)
	registerVal6:setTopBottom(true, false, 312.000000, 352.000000)
	registerVal6:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal6.DescTitle:setText(Engine.Localize("MENU_ITEM_BANS_RESTRICTIONS_CAPS"))
	registerVal2:addElement(registerVal6)
	registerVal2.BanRestrictionsTitle = registerVal6
	local registerVal7 = CoD.Competitive_SettingsButtons_Flyout.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 67.000000, 681.000000)
	registerVal7:setTopBottom(true, false, 347.000000, 507.000000)
	local function __FUNC_2BAA_(arg0, arg2)
		GameSettingsButtonGainFocus(registerVal2, arg0, arg1)
		return nil
	end

	registerVal7:registerEventHandler("list_item_gain_focus", __FUNC_2BAA_)
	local function __FUNC_2C15_(arg0, arg2)
		local registerVal2 = IsInDefaultState(arg0)
		if not registerVal2 then
			MakeElementNotFocusable(registerVal2, "BanProtectSettings", arg1)
			MakeElementNotFocusable(registerVal2, "DraftSettings", arg1)
			MakeElementNotFocusable(registerVal2, "AdvancedSettingsButton", arg1)
			PlaySoundSetSound(registerVal2, "toggle")
		else
			registerVal2 = IsInDefaultState(arg0)
			if registerVal2 then
				MakeElementFocusable(registerVal2, "AdvancedSettingsButton", arg1)
				MakeElementFocusable(registerVal2, "BanProtectSettings", arg1)
				MakeElementFocusable(registerVal2, "DraftSettings", arg1)
			end
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal7, "setState", __FUNC_2C15_)
	registerVal2:addElement(registerVal7)
	registerVal2.CompetitiveSettingsButtonsFlyout = registerVal7
	local registerVal8 = {}
	registerVal8.up = registerVal5
	registerVal8.down = registerVal7
	registerVal4.navigation = registerVal8
	registerVal8 = {}
	registerVal8.down = registerVal4
	registerVal5.navigation = registerVal8
	registerVal8 = {}
	registerVal8.up = registerVal4
	registerVal7.navigation = registerVal8
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal4.id = "DraftSettings"
	registerVal5.id = "BanProtectSettings"
	registerVal7.id = "CompetitiveSettingsButtonsFlyout"
	local function __FUNC_2DCB_(arg0, arg1)
		local registerVal2 = arg0.BanProtectSettings:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_2DCB_)
	local function __FUNC_2ED6_(arg0)
		arg0.GameSettingsSelectedItemInfo:close()
		arg0.DraftSettings:close()
		arg0.BanProtectSettings:close()
		arg0.BanRestrictionsTitle:close()
		arg0.CompetitiveSettingsButtonsFlyout:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2ED6_)
	if __FUNC_689_ then
		__FUNC_689_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.GameSettings_CompetitiveSettings.new = __FUNC_208E_
