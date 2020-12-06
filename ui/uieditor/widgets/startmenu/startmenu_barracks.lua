-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Barracks_Button_CP")
require("ui.uieditor.menus.Barracks.CombatRecordCP.CombatRecordCP")
require("ui.uieditor.widgets.StartMenu.StartMenu_Barracks_Button_MP")
require("ui.uieditor.menus.Barracks.BarracksMP")
require("ui.uieditor.widgets.StartMenu.StartMenu_Barracks_Button_ZM")
require("ui.uieditor.menus.Barracks.BarracksZM")
local function __FUNC_388_(arg0, arg1)
	CoD.UnlockablesTable = nil
	local function __FUNC_44D_(arg0)
		CoD.UnlockablesTable = nil
	end

	LUI.OverrideFunction_CallOriginalSecond(arg0, "close", __FUNC_44D_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.StartMenu_Barracks = registerVal2
local function __FUNC_4A8_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_Barracks)
	registerVal2.id = "StartMenu_Barracks"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1150.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 520.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.StartMenu_Barracks_Button_CP.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 9.000000, 375.000000)
	registerVal3:setTopBottom(true, false, 13.000000, 450.000000)
	registerVal3.SessionName:setText(Engine.Localize("MENU_CAMPAIGN_CAPS"))
	registerVal3.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_BARRACKS_DESC"))
	registerVal3.unlockRequirements:setText(LocalizeIntoString("CPUI_REQUIRES_LEVEL", "2"))
	local function __FUNC_1406_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.Emblem:setImage(RegisterImage(GetRankIconLarge(GetRankIcon(arg1, "playerstatslist.rank.statvalue", "playerstatslist.plevel.statvalue", "cp", registerVal1))))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "StorageGlobal", "stats_cp", __FUNC_1406_)
	local function __FUNC_1581_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.RankName:setText(Engine.Localize(RankTitleFromStorage(arg1, "cp", registerVal1)))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "StorageGlobal", "stats_cp", __FUNC_1581_)
	local function __FUNC_1692_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.Rank:setText(RankToLevelString("cp", StorageLookup(arg1, "playerstatslist.rank.statvalue", registerVal1)))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "StorageGlobal", "stats_cp", __FUNC_1692_)
	local function __FUNC_17C0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.TotalKills.Title:setText(Engine.Localize(StorageLookup(arg1, "playerstatslist.kills.statvalue", registerVal1)))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "StorageGlobal", "stats_cp", __FUNC_17C0_)
	local function __FUNC_1905_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.PercentComplete.Title:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "CombatRecordCPPercentComplete", "localPlayerPercent", __FUNC_1905_)
	local function __FUNC_19FE_(arg2, arg3)
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

	registerVal3:registerEventHandler("gain_focus", __FUNC_19FE_)
	local function __FUNC_1B8F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_1B8F_)
	local function __FUNC_1C5E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "Disable")
		if not registerVal4 then
			SetGlobalModelValue("combatRecordMode", "cp")
			CombatRecordSetXUIDForLocalController(arg2)
			OpenOverlay(registerVal2, "CombatRecordCP", arg2, "", "")
			return true
		end
	end

	local function __FUNC_1DB4_(arg0, arg1, arg2)
		local registerVal3 = IsElementInState(arg0, "Disable")
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1C5E_, __FUNC_1DB4_, false)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Disable"
	local function __FUNC_1EFD_(arg0, arg2, arg3)
		local registerVal3 = IsStorageValueAtLeast(arg1, "stats_cp", "playerstatslist.rank.statvalue", 1.000000)
		return (not registerVal3)
	end

	registerVal7.condition = __FUNC_1EFD_
	local registerVal8 = {}
	registerVal8.stateName = "NoStats"
	local function __FUNC_1FA6_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal8.condition = __FUNC_1FA6_
	registerVal6 = {registerVal7, registerVal8}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal2:addElement(registerVal3)
	registerVal2.StartMenuBarracksButtonCP = registerVal3
	local registerVal4 = CoD.StartMenu_Barracks_Button_MP.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 384.000000, 750.000000)
	registerVal4:setTopBottom(true, false, 13.000000, 449.940000)
	registerVal4.SessionName:setText(Engine.Localize("MENU_MULTIPLAYER_CAPS"))
	registerVal4.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_MP_BARRACKS_DESC"))
	registerVal4.unlockRequirements:setText(LocalizeIntoString("CPUI_REQUIRES_LEVEL", "7"))
	local function __FUNC_1FF1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.Emblem:setImage(RegisterImage(GetRankIconLarge(GetRankOrParagonIcon(arg1, "playerstatslist.rank.statvalue", "playerstatslist.plevel.statvalue", "playerstatslist.paragon_icon_id.statvalue", "mp", registerVal1))))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "StorageGlobal", "stats_mp", __FUNC_1FF1_)
	local function __FUNC_21AD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.RankName:setText(Engine.Localize(RankTitleFromStorage(arg1, "mp", registerVal1)))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "StorageGlobal", "stats_mp", __FUNC_21AD_)
	local function __FUNC_22BE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.Rank:setRGB(SetToParagonColorIfPrestigeMasterFromStorage(arg1, "mp", 255.000000, 255.000000, 255.000000, registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "StorageGlobal", "stats_mp", __FUNC_22BE_)
	local function __FUNC_23CC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.Rank:setText(LevelStringFromStorage(arg1, "mp", registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "StorageGlobal", "stats_mp", __FUNC_23CC_)
	local function __FUNC_24B6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.TotalKills.Title:setText(Engine.Localize(StorageLookup(arg1, "playerstatslist.kills.statvalue", registerVal1)))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "StorageGlobal", "stats_mp", __FUNC_24B6_)
	local function __FUNC_25F9_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.KD.Title:setText(Engine.Localize(StorageLookupTwoStatRatio(arg1, "playerstatslist.kills.statvalue", "playerstatslist.deaths.statvalue", registerVal1)))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "StorageGlobal", "stats_mp", __FUNC_25F9_)
	local function __FUNC_276F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.SPM.Title:setText(Engine.Localize(StorageLookupSPM(arg1, "playerstatslist.score.statvalue", "playerstatslist.time_played_total.statvalue", registerVal1)))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "StorageGlobal", "stats_mp", __FUNC_276F_)
	local function __FUNC_28E6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.WL.Title:setText(Engine.Localize(StorageLookupTwoStatRatio(arg1, "playerstatslist.wins.statvalue", "playerstatslist.losses.statvalue", registerVal1)))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "StorageGlobal", "stats_mp", __FUNC_28E6_)
	local function __FUNC_2A5A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.PrestigeMasterTierWidget:setAlpha(ShowIfPrestigeMasterByPLevel("mp", GetPLevelFromStorage(arg1, "mp", registerVal1)))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "StorageGlobal", "stats_mp", __FUNC_2A5A_)
	local function __FUNC_2B87_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.PrestigeMasterTierWidget.ParagonStars:setHorizontalCount(GetPrestigeMasterTierCountFromStorage(arg1, "mp", registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "StorageGlobal", "stats_mp", __FUNC_2B87_)
	local function __FUNC_2CBE_(arg2, arg3)
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

	registerVal4:registerEventHandler("gain_focus", __FUNC_2CBE_)
	local function __FUNC_2E4F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_2E4F_)
	local function __FUNC_2F1E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "Disable")
		if not registerVal4 then
			SetGlobalModelValue("combatRecordMode", "mp")
			OpenOverlay(registerVal2, "BarracksMP", arg2, "", "")
			return true
		end
	end

	local function __FUNC_3035_(arg0, arg1, arg2)
		local registerVal3 = IsElementInState(arg0, "Disable")
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2F1E_, __FUNC_3035_, false)
	registerVal7 = {}
	registerVal8 = {}
	registerVal8.stateName = "Disable"
	local function __FUNC_317D_(arg0, arg2, arg3)
		local registerVal3 = IsStorageValueAtLeast(arg1, "stats_mp", "playerstatslist.rank.statvalue", 6.000000)
		if not registerVal3 then
			registerVal3 = IsStorageValueAtLeast(arg1, "stats_mp", "playerstatslist.plevel.statvalue", 1.000000)
		else
		end
		return true
	end

	registerVal8.condition = __FUNC_317D_
	local registerVal9 = {}
	registerVal9.stateName = "NoStats"
	local function __FUNC_3281_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal9.condition = __FUNC_3281_
	registerVal7 = {registerVal8, registerVal9}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal2:addElement(registerVal4)
	registerVal2.StartMenuBarracksButtonMP = registerVal4
	local registerVal5 = CoD.StartMenu_Barracks_Button_ZM.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 760.000000, 1126.000000)
	registerVal5:setTopBottom(true, false, 13.000000, 450.000000)
	registerVal5.SessionName:setText(Engine.Localize("MENU_ZOMBIES_CAPS"))
	registerVal5.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_MP_BARRACKS_DESC"))
	registerVal5.unlockRequirements:setText(LocalizeIntoString("CPUI_REQUIRES_LEVEL", "2"))
	local function __FUNC_32CD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.Emblem:setImage(RegisterImage(GetRankIconLarge(GetRankOrParagonIcon(arg1, "playerstatslist.rank.statvalue", "playerstatslist.plevel.statvalue", "playerstatslist.paragon_icon_id.statvalue", "zm", registerVal1))))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "StorageGlobal", "stats_zm", __FUNC_32CD_)
	local function __FUNC_3489_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.RankName:setText(Engine.Localize(RankTitleFromStorage(arg1, "zm", registerVal1)))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "StorageGlobal", "stats_zm", __FUNC_3489_)
	local function __FUNC_359A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.Rank:setRGB(SetToParagonColorIfPrestigeMasterFromStorage(arg1, "zm", 255.000000, 255.000000, 255.000000, registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "StorageGlobal", "stats_zm", __FUNC_359A_)
	local function __FUNC_36A8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.Rank:setText(LevelStringFromStorage(arg1, "zm", registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "StorageGlobal", "stats_zm", __FUNC_36A8_)
	local function __FUNC_3792_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.TotalKills.Title:setText(Engine.Localize(StorageLookup(arg1, "playerstatslist.kills.statvalue", registerVal1)))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "StorageGlobal", "stats_zm", __FUNC_3792_)
	local function __FUNC_38D5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.RoundsSurvived.Title:setText(Engine.Localize(StorageLookup(arg1, "playerstatslist.total_rounds_survived.statvalue", registerVal1)))
			registerVal5.SPM.Title:setText(Engine.Localize(StorageLookupTwoStatRatioRounded(arg1, "playerstatslist.total_rounds_survived.statvalue", "playerstatslist.total_games_played.statvalue", registerVal1)))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "StorageGlobal", "stats_zm", __FUNC_38D5_)
	local function __FUNC_3AEA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.PrestigeMasterTierWidget:setAlpha(ShowIfPrestigeMasterByPLevel("zm", GetPLevelFromStorage(arg1, "zm", registerVal1)))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "StorageGlobal", "stats_zm", __FUNC_3AEA_)
	local function __FUNC_3C17_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.PrestigeMasterTierWidget.ParagonStars:setHorizontalCount(GetPrestigeMasterTierCountFromStorage(arg1, "zm", registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "StorageGlobal", "stats_zm", __FUNC_3C17_)
	local function __FUNC_3D4E_(arg2, arg3)
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

	registerVal5:registerEventHandler("gain_focus", __FUNC_3D4E_)
	local function __FUNC_3EDF_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_3EDF_)
	local function __FUNC_3FAE_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "Disable")
		if not registerVal4 then
			SetGlobalModelValue("combatRecordMode", "zm")
			OpenOverlay(registerVal2, "BarracksZM", arg2, "", "")
			return true
		end
	end

	local function __FUNC_40C5_(arg0, arg1, arg2)
		local registerVal3 = IsElementInState(arg0, "Disable")
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_3FAE_, __FUNC_40C5_, false)
	registerVal8 = {}
	registerVal9 = {}
	registerVal9.stateName = "Disable"
	local function __FUNC_420D_(arg0, arg2, arg3)
		local registerVal3 = IsStorageValueAtLeast(arg1, "stats_zm", "playerstatslist.rank.statvalue", 1.000000)
		if not registerVal3 then
			registerVal3 = IsStorageValueAtLeast(arg1, "stats_zm", "playerstatslist.plevel.statvalue", 1.000000)
		else
		end
		return true
	end

	registerVal9.condition = __FUNC_420D_
	local registerVal10 = {}
	registerVal10.stateName = "NoStats"
	local function __FUNC_430C_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal10.condition = __FUNC_430C_
	registerVal8 = {registerVal9, registerVal10}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal2:addElement(registerVal5)
	registerVal2.StartMenuBarracksButtonZM = registerVal5
	registerVal6 = {}
	registerVal6.right = registerVal4
	registerVal3.navigation = registerVal6
	registerVal6 = {}
	registerVal6.left = registerVal3
	registerVal6.right = registerVal5
	registerVal4.navigation = registerVal6
	registerVal6 = {}
	registerVal6.left = registerVal4
	registerVal5.navigation = registerVal6
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal3.id = "StartMenuBarracksButtonCP"
	registerVal4.id = "StartMenuBarracksButtonMP"
	registerVal5.id = "StartMenuBarracksButtonZM"
	local function __FUNC_4359_(arg0, arg1)
		local registerVal2 = arg0.StartMenuBarracksButtonMP:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_4359_)
	local function __FUNC_446D_(arg0)
		arg0.StartMenuBarracksButtonCP:close()
		arg0.StartMenuBarracksButtonMP:close()
		arg0.StartMenuBarracksButtonZM:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_446D_)
	if __FUNC_388_ then
		__FUNC_388_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.StartMenu_Barracks.new = __FUNC_4A8_
