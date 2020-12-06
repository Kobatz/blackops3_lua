-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Background")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrameIdentity")
require("ui.uieditor.widgets.StartMenu.StartMenu_Barracks_Button_CP")
require("ui.uieditor.menus.Barracks.CombatRecordCP.CombatRecordCP")
require("ui.uieditor.menus.Social.Social_InspectPlayerPopupLoading")
require("ui.uieditor.widgets.StartMenu.StartMenu_Barracks_Button_MP")
require("ui.uieditor.menus.Barracks.CombatRecordMP.CombatRecordMP")
require("ui.uieditor.widgets.StartMenu.StartMenu_Barracks_Button_ZM")
require("ui.uieditor.menus.Barracks.CombatRecordZM.CombatRecordZM")
local function __FUNC_499_(arg0, arg1)
	arg0.disablePopupOpenCloseAnim = true
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.GetModel(registerVal3, "combatRecordMode")
	if registerVal2 then
		local registerVal4 = Engine.GetModelValue(registerVal2)
		CoD.perController[arg1].previousCombatRecordMode = registerVal4
	end
end

local function __FUNC_60A_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("ViewRemoteCombatRecord")
	if __FUNC_499_ then
		__FUNC_499_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "ViewRemoteCombatRecord.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.StartMenu_Background.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "InGame"
	local function __FUNC_206B_(arg0, arg1, arg2)
		return IsInGame()
	end

	registerVal7.condition = __FUNC_206B_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal1:addElement(registerVal3)
	registerVal1.StartMenuBackground0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_fe_cp_background"))
	registerVal1:addElement(registerVal4)
	registerVal1.BlackBG = registerVal4
	local registerVal5 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, 18.000000, 70.000000)
	registerVal5:setTopBottom(true, false, 91.000000, 708.250000)
	registerVal1:addElement(registerVal5)
	registerVal1.FEMenuLeftGraphics = registerVal5
	registerVal6 = CoD.GenericMenuFrameIdentity.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6.titleLabel:setText(Engine.Localize("MENU_VIEW_COMBAT_RECORD"))
	registerVal6.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_VIEW_COMBAT_RECORD"))
	registerVal1:addElement(registerVal6)
	registerVal1.MenuFrame = registerVal6
	registerVal7 = CoD.StartMenu_Barracks_Button_CP.new(registerVal1, arg0)
	registerVal7:setLeftRight(false, false, -558.000000, -192.000000)
	registerVal7:setTopBottom(false, false, -218.500000, 218.500000)
	registerVal7.SessionName:setText(Engine.Localize("MENU_CAMPAIGN_CAPS"))
	registerVal7.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_BARRACKS_DESC"))
	registerVal7.TotalKills.Title:setText(Engine.Localize(CombatRecordGetStat(arg0, "playerstatslist.kills.statvalue", "888")))
	registerVal7.unlockRequirements:setText(LocalizeIntoString("CPUI_REQUIRES_LEVEL", "2"))
	local function __FUNC_20B2_(arg1)
		registerVal7:setModel(arg1, arg0)
	end

	registerVal7:subscribeToGlobalModel(arg0, "SocialPlayerInfo", nil, __FUNC_20B2_)
	local function __FUNC_2102_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.Emblem:setImage(RegisterImage(GetRankIconLarge(registerVal1)))
		end
	end

	registerVal7:subscribeToGlobalModel(arg0, "SocialPlayerInfo", "cpRankIcon", __FUNC_2102_)
	local function __FUNC_21F2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.RankName:setText(Engine.Localize(RankToTitleString("cp", registerVal1)))
		end
	end

	registerVal7:subscribeToGlobalModel(arg0, "SocialPlayerInfo", "cpRank", __FUNC_21F2_)
	local function __FUNC_22FB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.Rank:setText(RankToLevelString("cp", registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg0, "SocialPlayerInfo", "cpRank", __FUNC_22FB_)
	local function __FUNC_23D9_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.PercentComplete.Title:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg0, "CombatRecordCPPercentComplete", "percent", __FUNC_23D9_)
	local function __FUNC_24D2_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal7:registerEventHandler("gain_focus", __FUNC_24D2_)
	local function __FUNC_2663_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_2663_)
	local function __FUNC_2732_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "Disable")
		if not registerVal4 then
			SetGlobalModelValue("combatRecordMode", "cp")
			CombatRecordSetMenuForPostStatsLoad(registerVal1, "CombatRecordCP")
			CombatRecordSetXUIDFromSelectedFriend(arg2)
			OpenPopup(registerVal1, "Social_InspectPlayerPopupLoading", arg2, "", "")
			CombatRecordReadOtherPlayerStats(arg2)
			return true
		end
	end

	local function __FUNC_2923_(arg0, arg1, arg2)
		local registerVal3 = IsElementInState(arg0, "Disable")
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal7, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2732_, __FUNC_2923_, false)
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Disable"
	local function __FUNC_2A69_(arg1, arg2, arg3)
		return IsCPCombatRecordLockedForSocialPlayerInfo(arg0, arg2)
	end

	registerVal11.condition = __FUNC_2A69_
	local registerVal12 = {}
	registerVal12.stateName = "NoStats"
	local function __FUNC_2ADB_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal12.condition = __FUNC_2ADB_
	registerVal10 = {registerVal11, registerVal12}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal1:addElement(registerVal7)
	registerVal1.StartMenuBarracksButtonCP = registerVal7
	local registerVal8 = CoD.StartMenu_Barracks_Button_MP.new(registerVal1, arg0)
	registerVal8:setLeftRight(false, false, -183.000000, 183.000000)
	registerVal8:setTopBottom(false, false, -218.500000, 218.440000)
	registerVal8.SessionName:setText(Engine.Localize("MENU_MULTIPLAYER_CAPS"))
	registerVal8.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_BARRACKS_DESC"))
	registerVal8.TotalKills.Title:setText(Engine.Localize(CombatRecordGetStat(arg0, "playerstatslist.kills.statvalue", "888")))
	registerVal8.KD.Title:setText(Engine.Localize(CombatRecordGetTwoStatRatio(arg0, "playerstatslist.kills.statvalue", "playerstatslist.deaths.statvalue", "0.93")))
	registerVal8.SPM.Title:setText(Engine.Localize(CombatRecordGetSPM(arg0, "playerstatslist.score.statvalue", "playerstatslist.time_played_total.statvalue", "425")))
	registerVal8.WL.Title:setText(Engine.Localize(CombatRecordGetTwoStatRatio(arg0, "playerstatslist.wins.statvalue", "playerstatslist.losses.statvalue", "0.93")))
	registerVal8.unlockRequirements:setText(LocalizeIntoString("CPUI_REQUIRES_LEVEL", "7"))
	local function __FUNC_2B24_(arg1)
		registerVal8:setModel(arg1, arg0)
	end

	registerVal8:subscribeToGlobalModel(arg0, "SocialPlayerInfo", nil, __FUNC_2B24_)
	local function __FUNC_2B76_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.Emblem:setImage(RegisterImage(GetRankIconLarge(registerVal1)))
		end
	end

	registerVal8:subscribeToGlobalModel(arg0, "SocialPlayerInfo", "mpRankIcon", __FUNC_2B76_)
	local function __FUNC_2C66_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal8.RankName:setText(Engine.Localize(RankToTitleStringFromSocialPlayerInfo(arg0, "mp", registerVal1)))
		end
	end

	registerVal8:subscribeToGlobalModel(arg0, "SocialPlayerInfo", "mpRank", __FUNC_2C66_)
	local function __FUNC_2D87_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.Rank:setRGB(SetToParagonColorIfPrestigeMasterByPLevel("mp", 255.000000, 255.000000, 255.000000, registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg0, "SocialPlayerInfo", "mpPrestige", __FUNC_2D87_)
	local function __FUNC_2E8D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.Rank:setText(RankToLevelString("mp", registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg0, "SocialPlayerInfo", "mpRank", __FUNC_2E8D_)
	local function __FUNC_2F6D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.PrestigeMasterTierWidget:setAlpha(ShowIfPrestigeMasterByPLevel("mp", registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg0, "SocialPlayerInfo", "mpPrestige", __FUNC_2F6D_)
	local function __FUNC_306D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.PrestigeMasterTierWidget.ParagonStars:setHorizontalCount(registerVal1)
		end
	end

	registerVal8:subscribeToGlobalModel(arg0, "SocialPlayerInfo", "mpPrestigeMasterTier", __FUNC_306D_)
	local function __FUNC_315B_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal8:registerEventHandler("gain_focus", __FUNC_315B_)
	local function __FUNC_32EB_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("lose_focus", __FUNC_32EB_)
	local function __FUNC_33BA_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "Disable")
		if not registerVal4 then
			SetGlobalModelValue("combatRecordMode", "mp")
			CombatRecordSetMenuForPostStatsLoad(registerVal1, "CombatRecordMP")
			CombatRecordSetXUIDFromSelectedFriend(arg2)
			OpenPopup(registerVal1, "Social_InspectPlayerPopupLoading", arg2, "", "")
			CombatRecordReadOtherPlayerStats(arg2)
			return true
		end
	end

	local function __FUNC_35AB_(arg0, arg1, arg2)
		local registerVal3 = IsElementInState(arg0, "Disable")
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal8, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_33BA_, __FUNC_35AB_, false)
	registerVal11 = {}
	registerVal12 = {}
	registerVal12.stateName = "Disable"
	local function __FUNC_36F1_(arg1, arg2, arg3)
		return IsMPCombatRecordLockedForSocialPlayerInfo(arg0, arg2)
	end

	registerVal12.condition = __FUNC_36F1_
	local registerVal13 = {}
	registerVal13.stateName = "NoStats"
	local function __FUNC_3763_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal13.condition = __FUNC_3763_
	registerVal11 = {registerVal12, registerVal13}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal1:addElement(registerVal8)
	registerVal1.StartMenuBarracksButtonMP = registerVal8
	local registerVal9 = CoD.StartMenu_Barracks_Button_ZM.new(registerVal1, arg0)
	registerVal9:setLeftRight(false, false, 193.500000, 559.500000)
	registerVal9:setTopBottom(false, false, -218.500000, 218.500000)
	registerVal9.SessionName:setText(Engine.Localize("MENU_ZOMBIES_CAPS"))
	registerVal9.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_BARRACKS_DESC"))
	registerVal9.TotalKills.Title:setText(Engine.Localize(CombatRecordGetStat(arg0, "playerstatslist.kills.statvalue", "888")))
	registerVal9.RoundsSurvived.Title:setText(Engine.Localize("0"))
	registerVal9.SPM.Title:setText(Engine.Localize(CombatRecordGetTwoStatRatioRounded(arg0, "playerstatslist.total_rounds_survived.statvalue", "playerstatslist.total_games_played.statvalue", "888")))
	registerVal9.unlockRequirements:setText(LocalizeIntoString("CPUI_REQUIRES_LEVEL", "2"))
	local function __FUNC_37AC_(arg1)
		registerVal9:setModel(arg1, arg0)
	end

	registerVal9:subscribeToGlobalModel(arg0, "SocialPlayerInfo", nil, __FUNC_37AC_)
	local function __FUNC_37FE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.Emblem:setImage(RegisterImage(GetRankIconLarge(registerVal1)))
		end
	end

	registerVal9:subscribeToGlobalModel(arg0, "SocialPlayerInfo", "zmRankIcon", __FUNC_37FE_)
	local function __FUNC_38EE_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal9.RankName:setText(Engine.Localize(RankToTitleStringFromSocialPlayerInfo(arg0, "zm", registerVal1)))
		end
	end

	registerVal9:subscribeToGlobalModel(arg0, "SocialPlayerInfo", "zmRank", __FUNC_38EE_)
	local function __FUNC_3A0F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.Rank:setRGB(SetToParagonColorIfPrestigeMasterByPLevel("zm", 255.000000, 255.000000, 255.000000, registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg0, "SocialPlayerInfo", "zmPrestige", __FUNC_3A0F_)
	local function __FUNC_3B15_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.Rank:setText(RankToLevelString("zm", registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg0, "SocialPlayerInfo", "zmRank", __FUNC_3B15_)
	local function __FUNC_3BF5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.PrestigeMasterTierWidget:setAlpha(ShowIfPrestigeMasterByPLevel("zm", registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg0, "SocialPlayerInfo", "zmPrestige", __FUNC_3BF5_)
	local function __FUNC_3CF5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.PrestigeMasterTierWidget.ParagonStars:setHorizontalCount(registerVal1)
		end
	end

	registerVal9:subscribeToGlobalModel(arg0, "SocialPlayerInfo", "zmPrestigeMasterTier", __FUNC_3CF5_)
	local function __FUNC_3DE3_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal9:registerEventHandler("gain_focus", __FUNC_3DE3_)
	local function __FUNC_3F73_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("lose_focus", __FUNC_3F73_)
	local function __FUNC_4042_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "Disable")
		if not registerVal4 then
			SetGlobalModelValue("combatRecordMode", "zm")
			CombatRecordSetMenuForPostStatsLoad(registerVal1, "CombatRecordZM")
			CombatRecordSetXUIDFromSelectedFriend(arg2)
			OpenPopup(registerVal1, "Social_InspectPlayerPopupLoading", arg2, "", "")
			CombatRecordReadOtherPlayerStats(arg2)
			return true
		end
	end

	local function __FUNC_4233_(arg0, arg1, arg2)
		local registerVal3 = IsElementInState(arg0, "Disable")
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal9, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_4042_, __FUNC_4233_, false)
	registerVal12 = {}
	registerVal13 = {}
	registerVal13.stateName = "Disable"
	local function __FUNC_4379_(arg1, arg2, arg3)
		return IsZMCombatRecordLockedForSocialPlayerInfo(arg0, arg2)
	end

	registerVal13.condition = __FUNC_4379_
	local registerVal14 = {}
	registerVal14.stateName = "NoStats"
	local function __FUNC_43EB_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal14.condition = __FUNC_43EB_
	registerVal12 = {registerVal13, registerVal14}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal1:addElement(registerVal9)
	registerVal1.StartMenuBarracksButtonZM = registerVal9
	registerVal10 = {}
	registerVal10.right = registerVal8
	registerVal7.navigation = registerVal10
	registerVal10 = {}
	registerVal10.left = registerVal7
	registerVal10.right = registerVal9
	registerVal8.navigation = registerVal10
	registerVal10 = {}
	registerVal10.left = registerVal8
	registerVal9.navigation = registerVal10
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_4434_(arg1, arg2)
		CombatRecordUpdateSelfIdentityWidget(registerVal1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_4434_)
	local function __FUNC_44DF_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		ClearMenuSavedState(arg1)
		return true
	end

	local function __FUNC_4559_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "ESCAPE", __FUNC_44DF_, __FUNC_4559_, false)
	local function __FUNC_4655_(arg1)
		local registerVal1 = IsPerControllerTablePropertyValue(arg0, "previousCombatRecordMode", nil)
		if not registerVal1 then
			SetGlobalModelValueArg("prestigeGameMode", Enum.eModes.MODE_INVALID)
			SetGlobalModelValueArg("combatRecordMode", CoD.perController[arg0].previousCombatRecordMode)
		else
			SetGlobalModelValueArg("prestigeGameMode", Enum.eModes.MODE_INVALID)
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal1, "close", __FUNC_4655_)
	registerVal6:setModel(registerVal1.buttonModel, arg0)
	registerVal7.id = "StartMenuBarracksButtonCP"
	registerVal8.id = "StartMenuBarracksButtonMP"
	registerVal9.id = "StartMenuBarracksButtonZM"
	registerVal12 = {}
	registerVal12.name = "menu_loaded"
	registerVal12.controller = arg0
	registerVal1:processEvent(registerVal12)
	registerVal12 = {}
	registerVal12.name = "update_state"
	registerVal12.menu = registerVal1
	registerVal1:processEvent(registerVal12)
	registerVal10 = registerVal1:restoreState()
	if not registerVal10 then
		registerVal12 = {}
		registerVal12.name = "gain_focus"
		registerVal12.controller = arg0
		registerVal1.StartMenuBarracksButtonMP:processEvent(registerVal12)
	end
	local function __FUNC_4821_(arg1)
		arg1.StartMenuBackground0:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.MenuFrame:close()
		arg1.StartMenuBarracksButtonCP:close()
		arg1.StartMenuBarracksButtonMP:close()
		arg1.StartMenuBarracksButtonZM:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "ViewRemoteCombatRecord.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_4821_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.ViewRemoteCombatRecord = __FUNC_60A_
