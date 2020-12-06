-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Barracks.CombatRecordSummaryStat")
require("ui.uieditor.widgets.Barracks.CombatRecordSummaryStatSmall")
require("ui.uieditor.widgets.Barracks.CombatRecordItemButton")
require("ui.uieditor.menus.Barracks.CombatRecordMP.CombatRecordWeapons")
require("ui.uieditor.menus.Barracks.CombatRecordMP.CombatRecordEquipment")
require("ui.uieditor.menus.Barracks.CombatRecordMP.CombatRecordSpecialists")
require("ui.uieditor.menus.Barracks.CombatRecordMP.CombatRecordScorestreaks")
require("ui.uieditor.menus.Barracks.CombatRecordMP.CombatRecordGameModes")
require("ui.uieditor.widgets.Barracks.CombatRecord_LineDivider")
require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
local function __FUNC_4F9_(arg0, arg1)
	CoD.CombatRecordMode = "arena"
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.CombatRecordArenaPanel = registerVal2
local function __FUNC_562_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CombatRecordArenaPanel)
	registerVal2.id = "CombatRecordArenaPanel"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1216.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 546.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 13.000000, 124.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal3:setText(Engine.Localize("MENU_ARENA_SNAPSHOT_CAPS"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal3)
	registerVal2.SummaryTitle = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(false, true, -211.170000, -64.000000)
	registerVal4:setTopBottom(true, false, 5.000000, 25.000000)
	registerVal4:setText(SecondsAsTimePlayedString(CombatRecordGetStat(arg1, "playerstatslist.time_played_total", "Played 8d 19h 33m 19s")))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal4)
	registerVal2.TimePlayedText = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -583.000000, -455.000000)
	registerVal5:setTopBottom(true, false, 41.000000, 169.000000)
	registerVal5:setImage(RegisterImage(GetArenaRankIconLG(CombatRecordGetStat(arg1, "arenaBest.points", "uie_t7_icon_rank_arena_level_21_lrg"))))
	registerVal2:addElement(registerVal5)
	registerVal2.Emblem = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -429.000000, -283.000000)
	registerVal6:setTopBottom(true, false, 77.000000, 105.000000)
	registerVal6:setAlpha(0.700000)
	registerVal2:addElement(registerVal6)
	registerVal2.RankNameBackground = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -429.000000, -283.000000)
	registerVal7:setTopBottom(true, false, 105.000000, 133.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setAlpha(0.800000)
	registerVal2:addElement(registerVal7)
	registerVal2.RankBackground = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(false, false, -429.000000, -283.000000)
	registerVal8:setTopBottom(true, false, 81.000000, 101.000000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal8:setText(Engine.Localize(SetValueIfEmptyString("--", CombatRecordGetArenaBestPlaylistName(arg1, "-"))))
	registerVal8:setTTF("fonts/escom.ttf")
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal8:setShaderVector(0.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal8)
	registerVal2.RankName = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(false, false, -429.000000, -283.000000)
	registerVal9:setTopBottom(true, false, 105.000000, 133.000000)
	registerVal9:setText(Engine.Localize(GetArenaRankName(CombatRecordGetStat(arg1, "arenaBest.points", "Rank 15"))))
	registerVal9:setTTF("fonts/escom.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal9)
	registerVal2.Rank = registerVal9
	local registerVal10 = CoD.CombatRecordSummaryStat.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 394.000000, 499.170000)
	registerVal10:setTopBottom(true, false, 48.000000, 94.000000)
	registerVal10.StatLabel:setText(Engine.Localize("MENU_KILLS_CAPS"))
	registerVal10.StatValue:setText(Engine.Localize(CombatRecordGetStat(arg1, "playerstatslist.kills", "888")))
	registerVal2:addElement(registerVal10)
	registerVal2.Kills = registerVal10
	local registerVal11 = CoD.CombatRecordSummaryStat.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 510.170000, 624.830000)
	registerVal11:setTopBottom(true, false, 48.000000, 94.000000)
	registerVal11.StatLabel:setText(Engine.Localize("MENU_WINS_CAPS"))
	registerVal11.StatValue:setText(Engine.Localize(CombatRecordGetStat(arg1, "playerstatslist.wins", "888")))
	registerVal2:addElement(registerVal11)
	registerVal2.Wins = registerVal11
	local registerVal12 = CoD.CombatRecordSummaryStat.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 630.830000, 754.500000)
	registerVal12:setTopBottom(true, false, 49.000000, 95.000000)
	registerVal12.StatLabel:setText(Engine.Localize("MENU_SCORE_CAPS"))
	registerVal12.StatValue:setText(Engine.Localize(CombatRecordGetStat(arg1, "playerstatslist.score", "888")))
	registerVal2:addElement(registerVal12)
	registerVal2.Score = registerVal12
	local registerVal13 = CoD.CombatRecordSummaryStatSmall.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 394.000000, 499.170000)
	registerVal13:setTopBottom(true, false, 123.000000, 159.000000)
	registerVal13.StatLabel:setText(Engine.Localize("MENU_KDRATIO_ABBR"))
	registerVal13.StatValue:setText(Engine.Localize(CombatRecordGetTwoStatRatio(arg1, "playerstatslist.kills", "playerstatslist.deaths", "0.93")))
	registerVal2:addElement(registerVal13)
	registerVal2.KDRatio = registerVal13
	local registerVal14 = CoD.CombatRecordSummaryStatSmall.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 512.170000, 624.830000)
	registerVal14:setTopBottom(true, false, 123.000000, 159.000000)
	registerVal14.StatLabel:setText(Engine.Localize("MENU_WLRATIO"))
	registerVal14.StatValue:setText(Engine.Localize(CombatRecordGetTwoStatRatio(arg1, "playerstatslist.wins", "playerstatslist.losses", "0.93")))
	registerVal2:addElement(registerVal14)
	registerVal2.WLRatio = registerVal14
	local registerVal15 = CoD.CombatRecordSummaryStatSmall.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 630.830000, 754.500000)
	registerVal15:setTopBottom(true, false, 123.000000, 159.000000)
	registerVal15.StatLabel:setText(Engine.Localize("MENU_SCORE_PER_MINUTE"))
	registerVal15.StatValue:setText(Engine.Localize(CombatRecordGetSPM(arg1, "playerstatslist.score", "playerstatslist.time_played_total", "425")))
	registerVal2:addElement(registerVal15)
	registerVal2.SPM = registerVal15
	local registerVal16 = CoD.CombatRecordItemButton.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, -1.500000, 368.500000)
	registerVal16:setTopBottom(true, false, 193.500000, 357.500000)
	registerVal16.ItemImage:setAlpha(0.000000)
	registerVal16.GameModeImage2:setAlpha(0.000000)
	registerVal16.ButtonTitle:setText(Engine.Localize("MENU_WEAPONS"))
	local function __FUNC_345A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16.WeaponImage:setImage(RegisterImage(AppendIfMatch("menu_mp_lobby_none_selected", "_rec", AppendIfNotMatch("menu_mp_lobby_none_selected", "_pu", GetWeaponImageByIndexAndMode("mp", registerVal1)))))
		end
	end

	registerVal16:subscribeToGlobalModel(arg1, "CombatRecordDeadliestWeapon", "itemIndex", __FUNC_345A_)
	local function __FUNC_35FC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16.ButtonTitle0:setText(LocalizeIntoString("MENU_CR_DEADLIEST", registerVal1))
		end
	end

	registerVal16:subscribeToGlobalModel(arg1, "CombatRecordDeadliestWeapon", "itemName", __FUNC_35FC_)
	local function __FUNC_36F5_(arg2, arg3)
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

	registerVal16:registerEventHandler("gain_focus", __FUNC_36F5_)
	local function __FUNC_3887_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal16:registerEventHandler("lose_focus", __FUNC_3887_)
	local function __FUNC_3956_(arg0, arg1, arg2, arg3)
		OpenOverlay(registerVal2, "CombatRecordWeapons", arg2, "", "")
		return true
	end

	local function __FUNC_39E0_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal16, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_3956_, __FUNC_39E0_, false)
	registerVal2:addElement(registerVal16)
	registerVal2.WeaponsButton = registerVal16
	local registerVal17 = CoD.CombatRecordItemButton.new(arg0, arg1)
	registerVal17:setLeftRight(true, false, -1.500000, 368.500000)
	registerVal17:setTopBottom(true, false, 358.000000, 522.000000)
	registerVal17.WeaponImage:setAlpha(0.000000)
	registerVal17.GameModeImage2:setAlpha(0.000000)
	registerVal17.ButtonTitle:setText(Engine.Localize("MENU_EQUIPMENT"))
	local function __FUNC_3ADE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.ItemImage:setImage(RegisterImage(AppendIfMatch("menu_mp_lobby_none_selected", "_new", GetItemImageByIndexAndMode("mp", registerVal1))))
		end
	end

	registerVal17:subscribeToGlobalModel(arg1, "CombatRecordDeadliestEquipment", "itemIndex", __FUNC_3ADE_)
	local function __FUNC_3C45_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.ButtonTitle0:setText(LocalizeIntoString("MENU_CR_MOST_EFFECTIVE", registerVal1))
		end
	end

	registerVal17:subscribeToGlobalModel(arg1, "CombatRecordDeadliestEquipment", "itemName", __FUNC_3C45_)
	local function __FUNC_3D42_(arg2, arg3)
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

	registerVal17:registerEventHandler("gain_focus", __FUNC_3D42_)
	local function __FUNC_3ED3_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal17:registerEventHandler("lose_focus", __FUNC_3ED3_)
	local function __FUNC_3FA2_(arg0, arg1, arg2, arg3)
		OpenOverlay(registerVal2, "CombatRecordEquipment", arg2, "", "")
		return true
	end

	local function __FUNC_402E_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal17, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_3FA2_, __FUNC_402E_, false)
	registerVal2:addElement(registerVal17)
	registerVal2.EquipmentButton = registerVal17
	local registerVal18 = CoD.CombatRecordItemButton.new(arg0, arg1)
	registerVal18:setLeftRight(true, false, 392.000000, 762.000000)
	registerVal18:setTopBottom(true, false, 193.500000, 357.500000)
	registerVal18.WeaponImage:setAlpha(0.000000)
	registerVal18.GameModeImage2:setAlpha(0.000000)
	registerVal18.ButtonTitle:setText(Engine.Localize("MENU_SPECIALISTS"))
	local function __FUNC_412A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal18.ItemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal18:subscribeToGlobalModel(arg1, "FavoriteSpecialist", "heroImage", __FUNC_412A_)
	local function __FUNC_41FB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal18.ButtonTitle0:setText(LocalizeIntoString("MENU_CR_DEADLIEST", registerVal1))
		end
	end

	registerVal18:subscribeToGlobalModel(arg1, "FavoriteSpecialist", "heroName", __FUNC_41FB_)
	local function __FUNC_42F1_(arg2, arg3)
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

	registerVal18:registerEventHandler("gain_focus", __FUNC_42F1_)
	local function __FUNC_4483_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal18:registerEventHandler("lose_focus", __FUNC_4483_)
	local function __FUNC_4552_(arg0, arg1, arg2, arg3)
		OpenOverlay(registerVal2, "CombatRecordSpecialists", arg2, "", "")
		return true
	end

	local function __FUNC_45E0_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal18, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_4552_, __FUNC_45E0_, false)
	registerVal2:addElement(registerVal18)
	registerVal2.SpecialistButton = registerVal18
	local registerVal19 = CoD.CombatRecordItemButton.new(arg0, arg1)
	registerVal19:setLeftRight(true, false, 392.000000, 762.000000)
	registerVal19:setTopBottom(true, false, 358.000000, 522.000000)
	registerVal19.WeaponImage:setAlpha(0.000000)
	registerVal19.GameModeImage2:setAlpha(0.000000)
	registerVal19.ButtonTitle:setText(Engine.Localize("MENU_SCORESTREAKS"))
	local function __FUNC_46DE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal19.ItemImage:setImage(RegisterImage(AppendIfMatch("menu_mp_lobby_none_selected", "_new", AppendIfNotMatch("menu_mp_lobby_none_selected", "_menu", GetItemImageByIndexAndMode("mp", registerVal1)))))
		end
	end

	registerVal19:subscribeToGlobalModel(arg1, "CombatRecordDeadliestScorestreak", "itemIndex", __FUNC_46DE_)
	local function __FUNC_487E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal19.ButtonTitle0:setText(LocalizeIntoString("MENU_CR_MOST_EFFECTIVE", registerVal1))
		end
	end

	registerVal19:subscribeToGlobalModel(arg1, "CombatRecordDeadliestScorestreak", "itemName", __FUNC_487E_)
	local function __FUNC_497A_(arg2, arg3)
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

	registerVal19:registerEventHandler("gain_focus", __FUNC_497A_)
	local function __FUNC_4B0B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal19:registerEventHandler("lose_focus", __FUNC_4B0B_)
	local function __FUNC_4BDA_(arg0, arg1, arg2, arg3)
		OpenOverlay(registerVal2, "CombatRecordScorestreaks", arg2, "", "")
		return true
	end

	local function __FUNC_4C69_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal19, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_4BDA_, __FUNC_4C69_, false)
	registerVal2:addElement(registerVal19)
	registerVal2.ScorestreakButton = registerVal19
	local registerVal20 = CoD.CombatRecordItemButton.new(arg0, arg1)
	registerVal20:setLeftRight(true, false, 782.000000, 1152.000000)
	registerVal20:setTopBottom(true, false, 193.500000, 522.000000)
	registerVal20.WeaponImage:setAlpha(0.000000)
	registerVal20.ItemImage:setAlpha(0.000000)
	registerVal20.ButtonTitle:setText(Engine.Localize("MENU_CHALLENGES_GAMEMODES"))
	local function __FUNC_4D66_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal20.ItemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal20:subscribeToGlobalModel(arg1, "CombatRecordMostWonGameMode", "image", __FUNC_4D66_)
	local function __FUNC_4E37_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal20.GameModeImage2:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal20:subscribeToGlobalModel(arg1, "CombatRecordMostWonGameMode", "image", __FUNC_4E37_)
	local function __FUNC_4F0C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal20.ButtonTitle0:setText(LocalizeIntoString("MENU_CR_MOST_WINS", registerVal1))
		end
	end

	registerVal20:subscribeToGlobalModel(arg1, "CombatRecordMostWonGameMode", "name", __FUNC_4F0C_)
	local function __FUNC_5005_(arg2, arg3)
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

	registerVal20:registerEventHandler("gain_focus", __FUNC_5005_)
	local function __FUNC_5197_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal20:registerEventHandler("lose_focus", __FUNC_5197_)
	local function __FUNC_5266_(arg0, arg1, arg2, arg3)
		OpenOverlay(registerVal2, "CombatRecordGameModes", arg2, "", "")
		return true
	end

	local function __FUNC_52F2_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal20, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_5266_, __FUNC_52F2_, false)
	registerVal2:addElement(registerVal20)
	registerVal2.CombatRecordItemButton0 = registerVal20
	local registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(true, true, 0.000000, -1191.000000)
	registerVal21:setTopBottom(true, false, 25.000000, 33.000000)
	registerVal21:setAlpha(0.660000)
	registerVal21:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal21:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal21)
	registerVal2.Line10 = registerVal21
	local registerVal22 = LUI.UIImage.new()
	registerVal22:setLeftRight(true, true, 0.000000, -1191.000000)
	registerVal22:setTopBottom(true, false, 179.000000, 187.000000)
	registerVal22:setAlpha(0.660000)
	registerVal22:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal22:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal22)
	registerVal2.Image3 = registerVal22
	local registerVal23 = LUI.UIImage.new()
	registerVal23:setLeftRight(true, true, 1127.000000, -64.000000)
	registerVal23:setTopBottom(true, false, 25.000000, 33.000000)
	registerVal23:setAlpha(0.660000)
	registerVal23:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal23:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal23)
	registerVal2.Image4 = registerVal23
	local registerVal24 = LUI.UIImage.new()
	registerVal24:setLeftRight(true, true, 1127.000000, -64.000000)
	registerVal24:setTopBottom(true, false, 179.000000, 187.000000)
	registerVal24:setAlpha(0.660000)
	registerVal24:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal24:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal24)
	registerVal2.Image5 = registerVal24
	local registerVal25 = CoD.CombatRecord_LineDivider.new(arg0, arg1)
	registerVal25:setLeftRight(true, false, 758.000000, 783.000000)
	registerVal25:setTopBottom(true, false, 25.000000, 38.000000)
	registerVal2:addElement(registerVal25)
	registerVal2.CombatRecordLineDivider = registerVal25
	local registerVal26 = CoD.CombatRecord_LineDivider.new(arg0, arg1)
	registerVal26:setLeftRight(true, false, 757.000000, 782.000000)
	registerVal26:setTopBottom(true, false, 174.000000, 187.000000)
	registerVal26:setZRot(180.000000)
	registerVal2:addElement(registerVal26)
	registerVal2.CombatRecordLineDivider0 = registerVal26
	local registerVal27 = CoD.CombatRecord_LineDivider.new(arg0, arg1)
	registerVal27:setLeftRight(true, false, 368.000000, 393.000000)
	registerVal27:setTopBottom(true, false, 25.000000, 38.000000)
	registerVal2:addElement(registerVal27)
	registerVal2.CombatRecordLineDivider1 = registerVal27
	local registerVal28 = CoD.CombatRecord_LineDivider.new(arg0, arg1)
	registerVal28:setLeftRight(true, false, 367.000000, 392.000000)
	registerVal28:setTopBottom(true, false, 174.000000, 187.000000)
	registerVal28:setZRot(180.000000)
	registerVal2:addElement(registerVal28)
	registerVal2.CombatRecordLineDivider2 = registerVal28
	local registerVal29 = LUI.UITightText.new()
	registerVal29:setLeftRight(true, false, 179.000000, 379.000000)
	registerVal29:setTopBottom(true, false, 54.000000, 74.000000)
	registerVal29:setText(Engine.Localize("MENU_BEST_CAREER_RANK_CAPS"))
	registerVal29:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal29)
	registerVal2.BestCareerRankLabel = registerVal29
	local registerVal30 = LUI.UIImage.new()
	registerVal30:setLeftRight(true, true, 0.000000, -64.000000)
	registerVal30:setTopBottom(true, false, 181.500000, 184.500000)
	registerVal30:setAlpha(0.250000)
	registerVal30:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal30:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal30)
	registerVal2.Image50 = registerVal30
	local registerVal31 = LUI.UIImage.new()
	registerVal31:setLeftRight(true, true, 0.000000, -64.000000)
	registerVal31:setTopBottom(true, false, 27.500000, 30.500000)
	registerVal31:setAlpha(0.250000)
	registerVal31:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal31:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal31)
	registerVal2.Image500 = registerVal31
	local registerVal32 = LUI.UIImage.new()
	registerVal32:setLeftRight(true, false, 379.500000, 381.500000)
	registerVal32:setTopBottom(true, false, 30.000000, 183.000000)
	registerVal32:setAlpha(0.350000)
	registerVal32:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal32:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal32)
	registerVal2.Image0 = registerVal32
	local registerVal33 = LUI.UIImage.new()
	registerVal33:setLeftRight(true, false, 769.500000, 771.500000)
	registerVal33:setTopBottom(true, false, 28.000000, 186.000000)
	registerVal33:setAlpha(0.350000)
	registerVal33:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal33:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal33)
	registerVal2.Image1 = registerVal33
	local registerVal34 = LUI.UIImage.new()
	registerVal34:setLeftRight(true, true, 394.000000, -714.830000)
	registerVal34:setTopBottom(false, true, -441.000000, -435.000000)
	registerVal34:setAlpha(0.250000)
	registerVal34:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal34:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal34)
	registerVal2.Image00 = registerVal34
	local registerVal35 = LUI.UIImage.new()
	registerVal35:setLeftRight(true, true, 514.920000, -593.920000)
	registerVal35:setTopBottom(false, true, -441.000000, -435.000000)
	registerVal35:setAlpha(0.250000)
	registerVal35:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal35:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal35)
	registerVal2.Image2 = registerVal35
	local registerVal36 = LUI.UIImage.new()
	registerVal36:setLeftRight(true, true, 639.920000, -468.920000)
	registerVal36:setTopBottom(false, true, -441.000000, -435.000000)
	registerVal36:setAlpha(0.250000)
	registerVal36:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal36:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal36)
	registerVal2.Image6 = registerVal36
	local registerVal37 = LUI.UIImage.new()
	registerVal37:setLeftRight(true, false, 507.170000, 509.170000)
	registerVal37:setTopBottom(true, false, 33.000000, 179.000000)
	registerVal37:setAlpha(0.350000)
	registerVal37:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal37:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal37)
	registerVal2.Vline2 = registerVal37
	local registerVal38 = LUI.UIImage.new()
	registerVal38:setLeftRight(true, false, 629.830000, 631.830000)
	registerVal38:setTopBottom(true, false, 33.000000, 179.000000)
	registerVal38:setAlpha(0.350000)
	registerVal38:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal38:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal38)
	registerVal2.Image20 = registerVal38
	local registerVal39 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal39:setLeftRight(false, false, -431.000000, -281.000000)
	registerVal39:setTopBottom(false, false, -198.000000, -138.000000)
	registerVal2:addElement(registerVal39)
	registerVal2.StartMenuframenoBG00 = registerVal39
	local registerVal40 = {}
	registerVal40.right = registerVal18
	registerVal40.down = registerVal17
	registerVal16.navigation = registerVal40
	registerVal40 = {}
	registerVal40.up = registerVal16
	registerVal40.right = registerVal19
	registerVal17.navigation = registerVal40
	registerVal40 = {}
	registerVal40.left = registerVal16
	registerVal40.right = registerVal20
	registerVal40.down = registerVal19
	registerVal18.navigation = registerVal40
	registerVal40 = {}
	registerVal40.left = registerVal17
	registerVal40.up = registerVal18
	registerVal40.right = registerVal20
	registerVal19.navigation = registerVal40
	registerVal40 = {}
	local registerVal41 = {}
	registerVal41 = {registerVal18, registerVal19}
	registerVal40.left = registerVal41
	registerVal20.navigation = registerVal40
	registerVal40 = {}
	registerVal41 = {}
	local function __FUNC_53EE_()
		registerVal2:setupElementClipCounter(14.000000)
		local function __FUNC_5A77_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Emblem:setAlpha(0.000000)
		__FUNC_5A77_(registerVal5, {})
		local function __FUNC_5C29_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
		registerVal8:setAlpha(0.000000)
		registerVal8:registerEventHandler("transition_complete_keyframe", __FUNC_5C29_)
		local function __FUNC_5DDD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
		registerVal9:setAlpha(0.000000)
		registerVal9:registerEventHandler("transition_complete_keyframe", __FUNC_5DDD_)
		local function __FUNC_5F91_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
		registerVal10:setAlpha(0.000000)
		registerVal10:registerEventHandler("transition_complete_keyframe", __FUNC_5F91_)
		local function __FUNC_6145_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
		registerVal11:setAlpha(0.000000)
		registerVal11:registerEventHandler("transition_complete_keyframe", __FUNC_6145_)
		local function __FUNC_62F9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
		registerVal12:setAlpha(0.000000)
		registerVal12:registerEventHandler("transition_complete_keyframe", __FUNC_62F9_)
		local function __FUNC_64AD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
		registerVal13:setAlpha(0.000000)
		registerVal13:registerEventHandler("transition_complete_keyframe", __FUNC_64AD_)
		local function __FUNC_6661_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
		registerVal14:setAlpha(0.000000)
		registerVal14:registerEventHandler("transition_complete_keyframe", __FUNC_6661_)
		local function __FUNC_6815_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
		registerVal15:setAlpha(0.000000)
		registerVal15:registerEventHandler("transition_complete_keyframe", __FUNC_6815_)
		local function __FUNC_69C9_(arg0, arg1)
			local function __FUNC_6B43_(arg0, arg1)
				local function __FUNC_6CBB_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_6CBB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.540000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6CBB_)
			end

			if arg1.interrupted then
				__FUNC_6B43_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Bounce)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6B43_)
		end

		registerVal16:completeAnimation()
		registerVal2.WeaponsButton:setAlpha(0.000000)
		__FUNC_69C9_(registerVal16, {})
		local function __FUNC_6E6D_(arg0, arg1)
			local function __FUNC_6FC4_(arg0, arg1)
				local function __FUNC_713F_(arg0, arg1)
					local function __FUNC_72B7_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_72B7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.520000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_72B7_)
				end

				if arg1.interrupted then
					__FUNC_713F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_713F_)
			end

			if arg1.interrupted then
				__FUNC_6FC4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6FC4_)
		end

		registerVal17:completeAnimation()
		registerVal2.EquipmentButton:setAlpha(0.000000)
		__FUNC_6E6D_(registerVal17, {})
		local function __FUNC_7469_(arg0, arg1)
			local function __FUNC_75E3_(arg0, arg1)
				local function __FUNC_7738_(arg0, arg1)
					local function __FUNC_78B3_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_78B3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.540000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_78B3_)
				end

				if arg1.interrupted then
					__FUNC_7738_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7738_)
			end

			if arg1.interrupted then
				__FUNC_75E3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_75E3_)
		end

		registerVal18:completeAnimation()
		registerVal2.SpecialistButton:setAlpha(0.000000)
		__FUNC_7469_(registerVal18, {})
		local function __FUNC_7A65_(arg0, arg1)
			local function __FUNC_7BBC_(arg0, arg1)
				local function __FUNC_7D37_(arg0, arg1)
					local function __FUNC_7EAF_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_7EAF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.590000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7EAF_)
				end

				if arg1.interrupted then
					__FUNC_7D37_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7D37_)
			end

			if arg1.interrupted then
				__FUNC_7BBC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7BBC_)
		end

		registerVal19:completeAnimation()
		registerVal2.ScorestreakButton:setAlpha(0.000000)
		__FUNC_7A65_(registerVal19, {})
		local function __FUNC_8061_(arg0, arg1)
			local function __FUNC_81B8_(arg0, arg1)
				local function __FUNC_8333_(arg0, arg1)
					local function __FUNC_84AB_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_84AB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.340000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_84AB_)
				end

				if arg1.interrupted then
					__FUNC_8333_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8333_)
			end

			if arg1.interrupted then
				__FUNC_81B8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_81B8_)
		end

		registerVal20:completeAnimation()
		registerVal2.CombatRecordItemButton0:setAlpha(0.000000)
		__FUNC_8061_(registerVal20, {})
	end

	registerVal41.DefaultClip = __FUNC_53EE_
	registerVal40.DefaultState = registerVal41
	registerVal2.clipsPerState = registerVal40
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal16.id = "WeaponsButton"
	registerVal17.id = "EquipmentButton"
	registerVal18.id = "SpecialistButton"
	registerVal19.id = "ScorestreakButton"
	registerVal20.id = "CombatRecordItemButton0"
	local function __FUNC_865D_(arg0, arg1)
		local registerVal2 = arg0.WeaponsButton:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_865D_)
	local function __FUNC_8765_(arg0)
		arg0.Kills:close()
		arg0.Wins:close()
		arg0.Score:close()
		arg0.KDRatio:close()
		arg0.WLRatio:close()
		arg0.SPM:close()
		arg0.WeaponsButton:close()
		arg0.EquipmentButton:close()
		arg0.SpecialistButton:close()
		arg0.ScorestreakButton:close()
		arg0.CombatRecordItemButton0:close()
		arg0.CombatRecordLineDivider:close()
		arg0.CombatRecordLineDivider0:close()
		arg0.CombatRecordLineDivider1:close()
		arg0.CombatRecordLineDivider2:close()
		arg0.StartMenuframenoBG00:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_8765_)
	if __FUNC_4F9_ then
		__FUNC_4F9_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.CombatRecordArenaPanel.new = __FUNC_562_
