-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Background")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrameIdentity")
require("ui.uieditor.widgets.Barracks.CombatRecordSummaryStat")
require("ui.uieditor.widgets.Barracks.CombatRecordSummaryStatSmall")
require("ui.uieditor.widgets.Barracks.CombatRecordItemButton")
require("ui.uieditor.menus.Barracks.CombatRecordZM.CombatRecordWeaponsZM")
require("ui.uieditor.menus.Barracks.CombatRecordZM.CombatRecordBubblegumBuffs")
require("ui.uieditor.menus.Barracks.CombatRecordZM.CombatRecordZMMaps")
require("ui.uieditor.widgets.Barracks.CombatRecord_LineDivider")
require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.Prestige.Prestige_MasterTierWidget")
local function __FUNC_52A_(arg0, arg1)
	arg0.disablePopupOpenCloseAnim = true
end

local function __FUNC_57D_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("CombatRecordZM")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "CombatRecordZM.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.StartMenu_Background.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "InGame"
	local function __FUNC_3746_(arg0, arg1, arg2)
		return IsInGame()
	end

	registerVal7.condition = __FUNC_3746_
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
	registerVal6.titleLabel:setText(Engine.Localize("MPUI_COMBAT_RECORD_CAPS"))
	registerVal6.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MPUI_COMBAT_RECORD_CAPS"))
	registerVal1:addElement(registerVal6)
	registerVal1.MenuFrame = registerVal6
	registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(true, false, 77.000000, 245.000000)
	registerVal7:setTopBottom(true, false, 98.000000, 123.000000)
	registerVal7:setText(Engine.Localize("MENU_GLOBAL_CAREER_SNAPSHOT_CAPS"))
	registerVal7:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal7)
	registerVal1.SummaryTitle = registerVal7
	local registerVal8 = LUI.UITightText.new()
	registerVal8:setLeftRight(false, true, -245.170000, -98.000000)
	registerVal8:setTopBottom(true, false, 98.000000, 123.000000)
	registerVal8:setText(SecondsAsTimePlayedString(CombatRecordGetStat(arg0, "playerstatslist.time_played_total", "Played 8d 19h 33m 19s")))
	registerVal8:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal8)
	registerVal1.TimePlayedText = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, -563.000000, -435.000000)
	registerVal9:setTopBottom(true, false, 139.000000, 267.000000)
	local function __FUNC_378E_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal9:setImage(RegisterImage(GetRankIconLarge(CombatRecordGetRankIcon(arg0, registerVal1))))
		end
	end

	registerVal9:subscribeToGlobalModel(arg0, "StorageGlobal", "stats_zm", __FUNC_378E_)
	registerVal1:addElement(registerVal9)
	registerVal1.RankOrEmblem = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, false, -410.000000, -243.000000)
	registerVal10:setTopBottom(true, false, 175.000000, 203.000000)
	registerVal10:setAlpha(0.600000)
	registerVal1:addElement(registerVal10)
	registerVal1.RankNameBackground = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, false, -410.000000, -243.000000)
	registerVal11:setTopBottom(true, false, 203.000000, 231.000000)
	registerVal11:setRGB(0.000000, 0.000000, 0.000000)
	registerVal11:setAlpha(0.800000)
	registerVal1:addElement(registerVal11)
	registerVal1.RankBackground = registerVal11
	local registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(false, false, -410.000000, -243.000000)
	registerVal12:setTopBottom(true, false, 179.000000, 199.000000)
	registerVal12:setRGB(0.000000, 0.000000, 0.000000)
	registerVal12:setText(Engine.Localize(CombatRecordGetRankTitle(arg0, "Vindicator")))
	registerVal12:setTTF("fonts/escom.ttf")
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal12:setShaderVector(0.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal12:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal12:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal12:setLetterSpacing(1.000000)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal12)
	registerVal1.RankName = registerVal12
	local registerVal13 = LUI.UIText.new()
	registerVal13:setLeftRight(false, false, -410.000000, -243.000000)
	registerVal13:setTopBottom(true, false, 203.000000, 231.000000)
	registerVal13:setRGB(CombatRecordGetParagonColorByRank(arg0, 255.000000, 255.000000, 255.000000, 1.000000, 1.000000, 1.000000))
	registerVal13:setTTF("fonts/escom.ttf")
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_388F_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal13:setText(CombatRecordGetLevelString(arg0, registerVal1))
		end
	end

	registerVal13:subscribeToGlobalModel(arg0, "StorageGlobal", "stats_zm", __FUNC_388F_)
	registerVal1:addElement(registerVal13)
	registerVal1.Rank = registerVal13
	local registerVal14 = CoD.CombatRecordSummaryStat.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 448.000000, 571.670000)
	registerVal14:setTopBottom(true, false, 152.000000, 198.000000)
	registerVal14.StatLabel:setText(Engine.Localize("MPUI_KILLS"))
	local function __FUNC_3950_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal14.StatValue:setText(Engine.Localize(CombatRecordGetStat(arg0, "playerstatslist.kills", registerVal1)))
		end
	end

	registerVal14:subscribeToGlobalModel(arg0, "StorageGlobal", "stats_zm", __FUNC_3950_)
	registerVal1:addElement(registerVal14)
	registerVal1.Kills = registerVal14
	local registerVal15 = CoD.CombatRecordSummaryStat.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, false, 565.170000, 688.830000)
	registerVal15:setTopBottom(true, false, 152.000000, 198.000000)
	registerVal15.StatLabel:setText(Engine.Localize("MENU_ROUNDS_SURVIVED"))
	registerVal15.StatValue:setText(Engine.Localize(CombatRecordGetStat(arg0, "playerstatslist.total_rounds_survived", "888")))
	registerVal1:addElement(registerVal15)
	registerVal1.RoundsSurvived = registerVal15
	local registerVal16 = CoD.CombatRecordSummaryStat.new(registerVal1, arg0)
	registerVal16:setLeftRight(true, false, 701.330000, 825.000000)
	registerVal16:setTopBottom(true, false, 153.000000, 199.000000)
	registerVal16.StatLabel:setText(Engine.Localize("MENU_AVERAGE_GAME_SCORE"))
	registerVal16.StatValue:setText(Engine.Localize(CombatRecordGetTwoStatRatioRounded(arg0, "playerstatslist.score", "playerstatslist.total_games_played", "888")))
	registerVal1:addElement(registerVal16)
	registerVal1.AvgGameScore = registerVal16
	local registerVal17 = CoD.CombatRecordSummaryStatSmall.new(registerVal1, arg0)
	registerVal17:setLeftRight(true, false, 447.000000, 570.670000)
	registerVal17:setTopBottom(true, false, 217.000000, 253.000000)
	registerVal17.StatLabel:setText(Engine.Localize("MPUI_HEADSHOTS"))
	registerVal17.StatValue:setText(Engine.Localize(CombatRecordGetStat(arg0, "playerstatslist.headshots", "888")))
	registerVal1:addElement(registerVal17)
	registerVal1.Headshots = registerVal17
	local registerVal18 = CoD.CombatRecordSummaryStatSmall.new(registerVal1, arg0)
	registerVal18:setLeftRight(true, false, 564.170000, 687.830000)
	registerVal18:setTopBottom(true, false, 217.000000, 253.000000)
	registerVal18.StatLabel:setText(Engine.Localize("MENU_AVERAGE_ROUNDS_PER_GAME"))
	registerVal18.StatValue:setText(Engine.Localize(CombatRecordGetTwoStatRatioRounded(arg0, "playerstatslist.total_rounds_survived", "playerstatslist.total_games_played", "888")))
	registerVal1:addElement(registerVal18)
	registerVal1.AvgRoundsPerGame = registerVal18
	local registerVal19 = CoD.CombatRecordSummaryStatSmall.new(registerVal1, arg0)
	registerVal19:setLeftRight(true, false, 701.330000, 825.000000)
	registerVal19:setTopBottom(true, false, 217.000000, 253.000000)
	registerVal19.StatLabel:setText(Engine.Localize("MENU_SCORE_PER_MINUTE"))
	registerVal19.StatValue:setText(Engine.Localize(CombatRecordGetSPM(arg0, "playerstatslist.score", "playerstatslist.time_played_total", "425")))
	registerVal1:addElement(registerVal19)
	registerVal1.SPM = registerVal19
	local registerVal20 = CoD.CombatRecordItemButton.new(registerVal1, arg0)
	registerVal20:setLeftRight(true, false, 77.000000, 447.000000)
	registerVal20:setTopBottom(true, false, 307.500000, 471.500000)
	registerVal20.ItemImage:setAlpha(0.000000)
	registerVal20.GameModeImage2:setAlpha(0.000000)
	registerVal20.ButtonTitle:setText(Engine.Localize("MENU_WEAPONS"))
	local function __FUNC_3A75_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal20.WeaponImage:setImage(RegisterImage(AppendIfMatch("menu_mp_lobby_none_selected", "_rec", AppendIfNotMatch("menu_mp_lobby_none_selected", "_pu", GetWeaponImageByIndexAndMode("mp", registerVal1)))))
		end
	end

	registerVal20:subscribeToGlobalModel(arg0, "CombatRecordDeadliestWeapon", "itemIndex", __FUNC_3A75_)
	local function __FUNC_3C18_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal20.ButtonTitle0:setText(LocalizeIntoString("MENU_CR_DEADLIEST", registerVal1))
		end
	end

	registerVal20:subscribeToGlobalModel(arg0, "CombatRecordDeadliestWeapon", "itemName", __FUNC_3C18_)
	local function __FUNC_3D11_(arg1, arg2)
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

	registerVal20:registerEventHandler("gain_focus", __FUNC_3D11_)
	local function __FUNC_3EA3_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal20:registerEventHandler("lose_focus", __FUNC_3EA3_)
	local function __FUNC_3F72_(arg0, arg1, arg2, arg3)
		NavigateToMenu(registerVal1, "CombatRecordWeaponsZM", true, arg2)
		return true
	end

	local function __FUNC_3FF3_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal20, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_3F72_, __FUNC_3FF3_, false)
	registerVal1:addElement(registerVal20)
	registerVal1.WeaponsButton = registerVal20
	local registerVal21 = CoD.CombatRecordItemButton.new(registerVal1, arg0)
	registerVal21:setLeftRight(true, false, 455.000000, 825.000000)
	registerVal21:setTopBottom(true, false, 307.500000, 471.500000)
	registerVal21.WeaponImage:setAlpha(0.000000)
	registerVal21.GameModeImage2:setAlpha(0.000000)
	registerVal21.ButtonTitle:setText(Engine.Localize("MENU_STORE_BUBBLEGUM_BUFFS"))
	local function __FUNC_40EE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal21.ItemImage:setImage(RegisterImage(AppendIfMatch("menu_mp_lobby_none_selected", "_new", GetItemImageByIndexAndMode("zm", registerVal1))))
		end
	end

	registerVal21:subscribeToGlobalModel(arg0, "CombatRecordMostUsedBubblegumBuff", "itemIndex", __FUNC_40EE_)
	local function __FUNC_4255_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal21.ButtonTitle0:setText(LocalizeIntoString("MENU_CR_MOST_USED", registerVal1))
		end
	end

	registerVal21:subscribeToGlobalModel(arg0, "CombatRecordMostUsedBubblegumBuff", "itemName", __FUNC_4255_)
	local function __FUNC_434D_(arg1, arg2)
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

	registerVal21:registerEventHandler("gain_focus", __FUNC_434D_)
	local function __FUNC_44DF_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal21:registerEventHandler("lose_focus", __FUNC_44DF_)
	local function __FUNC_45AE_(arg0, arg1, arg2, arg3)
		NavigateToMenu(registerVal1, "CombatRecordBubblegumBuffs", true, arg2)
		return true
	end

	local function __FUNC_4634_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal21, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_45AE_, __FUNC_4634_, false)
	registerVal1:addElement(registerVal21)
	registerVal1.BubblegumBuffsButton = registerVal21
	local registerVal22 = CoD.CombatRecordItemButton.new(registerVal1, arg0)
	registerVal22:setLeftRight(true, false, 831.500000, 1201.500000)
	registerVal22:setTopBottom(true, false, 307.500000, 471.500000)
	registerVal22.ItemImage:setAlpha(0.000000)
	registerVal22.GameModeImage2:setAlpha(0.000000)
	registerVal22.ButtonTitle:setText(Engine.Localize("MENU_MAPS"))
	local function __FUNC_4732_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal22.WeaponImage:setImage(RegisterImage(SetValueIfStringEqualTo("$black", "menu_mp_lobby_none_selected_rec", MapNameToMapImage(registerVal1))))
		end
	end

	registerVal22:subscribeToGlobalModel(arg0, "CombatRecordZMHighestRound", "mapName", __FUNC_4732_)
	local function __FUNC_4892_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal22.ButtonTitle0:setText(LocalizeIntoString("MENU_CR_HIGHEST_ROUND", MapNameToLocalizedMapName(registerVal1)))
		end
	end

	registerVal22:subscribeToGlobalModel(arg0, "CombatRecordZMHighestRound", "mapName", __FUNC_4892_)
	local function __FUNC_49B8_(arg1, arg2)
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

	registerVal22:registerEventHandler("gain_focus", __FUNC_49B8_)
	local function __FUNC_4B4B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal22:registerEventHandler("lose_focus", __FUNC_4B4B_)
	local function __FUNC_4C1A_(arg0, arg1, arg2, arg3)
		NavigateToMenu(registerVal1, "CombatRecordZMMaps", true, arg2)
		return true
	end

	local function __FUNC_4C98_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal22, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_4C1A_, __FUNC_4C98_, false)
	registerVal1:addElement(registerVal22)
	registerVal1.MapsButton = registerVal22
	local registerVal23 = LUI.UIImage.new()
	registerVal23:setLeftRight(true, true, 64.000000, -1191.000000)
	registerVal23:setTopBottom(true, false, 123.000000, 131.000000)
	registerVal23:setAlpha(0.660000)
	registerVal23:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal23:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal23)
	registerVal1.Line10 = registerVal23
	local registerVal24 = LUI.UIImage.new()
	registerVal24:setLeftRight(true, true, 64.000000, -1191.000000)
	registerVal24:setTopBottom(true, false, 277.000000, 285.000000)
	registerVal24:setAlpha(0.660000)
	registerVal24:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal24:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal24)
	registerVal1.Image3 = registerVal24
	local registerVal25 = CoD.CombatRecord_LineDivider.new(registerVal1, arg0)
	registerVal25:setLeftRight(true, false, 438.000000, 463.000000)
	registerVal25:setTopBottom(true, false, 123.000000, 136.000000)
	registerVal1:addElement(registerVal25)
	registerVal1.CombatRecordLineDivider1 = registerVal25
	local registerVal26 = CoD.CombatRecord_LineDivider.new(registerVal1, arg0)
	registerVal26:setLeftRight(true, false, 438.000000, 463.000000)
	registerVal26:setTopBottom(true, false, 272.000000, 285.000000)
	registerVal26:setZRot(180.000000)
	registerVal1:addElement(registerVal26)
	registerVal1.CombatRecordLineDivider2 = registerVal26
	local registerVal27 = CoD.CombatRecord_LineDivider.new(registerVal1, arg0)
	registerVal27:setLeftRight(true, false, 816.000000, 841.000000)
	registerVal27:setTopBottom(true, false, 123.000000, 136.000000)
	registerVal1:addElement(registerVal27)
	registerVal1.CombatRecordLineDivider = registerVal27
	local registerVal28 = CoD.CombatRecord_LineDivider.new(registerVal1, arg0)
	registerVal28:setLeftRight(true, false, 816.000000, 841.000000)
	registerVal28:setTopBottom(true, false, 272.000000, 285.000000)
	registerVal28:setZRot(180.000000)
	registerVal1:addElement(registerVal28)
	registerVal1.CombatRecordLineDivider0 = registerVal28
	local registerVal29 = LUI.UIImage.new()
	registerVal29:setLeftRight(true, true, 1191.000000, -64.000000)
	registerVal29:setTopBottom(true, false, 123.000000, 131.000000)
	registerVal29:setAlpha(0.660000)
	registerVal29:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal29:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal29)
	registerVal1.Image4 = registerVal29
	local registerVal30 = LUI.UIImage.new()
	registerVal30:setLeftRight(true, true, 1191.000000, -64.000000)
	registerVal30:setTopBottom(true, false, 277.000000, 285.000000)
	registerVal30:setAlpha(0.660000)
	registerVal30:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal30:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal30)
	registerVal1.Image5 = registerVal30
	local registerVal31 = LUI.UIImage.new()
	registerVal31:setLeftRight(true, true, 458.000000, -730.830000)
	registerVal31:setTopBottom(true, false, 204.000000, 208.000000)
	registerVal31:setAlpha(0.330000)
	registerVal31:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal31:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal31)
	registerVal1.Image0 = registerVal31
	local registerVal32 = LUI.UIImage.new()
	registerVal32:setLeftRight(true, false, 556.170000, 558.170000)
	registerVal32:setTopBottom(true, false, 131.000000, 277.000000)
	registerVal32:setAlpha(0.500000)
	registerVal32:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal32:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal32)
	registerVal1.Vline2 = registerVal32
	local registerVal33 = LUI.UIImage.new()
	registerVal33:setLeftRight(true, false, 827.500000, 829.500000)
	registerVal33:setTopBottom(true, false, 127.000000, 285.000000)
	registerVal33:setAlpha(0.350000)
	registerVal33:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal33:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal33)
	registerVal1.Image1 = registerVal33
	local registerVal34 = LUI.UIImage.new()
	registerVal34:setLeftRight(true, false, 449.500000, 451.500000)
	registerVal34:setTopBottom(true, false, 127.000000, 285.000000)
	registerVal34:setAlpha(0.350000)
	registerVal34:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal34:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal34)
	registerVal1.Image2 = registerVal34
	local registerVal35 = LUI.UIImage.new()
	registerVal35:setLeftRight(true, true, 566.000000, -591.830000)
	registerVal35:setTopBottom(true, false, 204.000000, 208.000000)
	registerVal35:setAlpha(0.330000)
	registerVal35:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal35:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal35)
	registerVal1.Image6 = registerVal35
	local registerVal36 = LUI.UIImage.new()
	registerVal36:setLeftRight(true, false, 694.170000, 696.170000)
	registerVal36:setTopBottom(true, false, 131.000000, 277.000000)
	registerVal36:setAlpha(0.500000)
	registerVal36:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal36:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal36)
	registerVal1.Image7 = registerVal36
	local registerVal37 = LUI.UIImage.new()
	registerVal37:setLeftRight(true, true, 701.830000, -458.000000)
	registerVal37:setTopBottom(true, false, 204.000000, 208.000000)
	registerVal37:setAlpha(0.330000)
	registerVal37:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal37:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal37)
	registerVal1.Image8 = registerVal37
	local registerVal38 = CoD.StartMenu_frame_noBG.new(registerVal1, arg0)
	registerVal38:setLeftRight(false, false, -413.000000, -241.000000)
	registerVal38:setTopBottom(false, false, -187.500000, -126.500000)
	registerVal1:addElement(registerVal38)
	registerVal1.StartMenuframenoBG00 = registerVal38
	local registerVal39 = LUI.UIImage.new()
	registerVal39:setLeftRight(true, true, 64.000000, -64.000000)
	registerVal39:setTopBottom(true, false, 124.500000, 129.500000)
	registerVal39:setAlpha(0.150000)
	registerVal39:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal39:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal39)
	registerVal1.Image60 = registerVal39
	local registerVal40 = LUI.UIImage.new()
	registerVal40:setLeftRight(true, true, 64.000000, -64.000000)
	registerVal40:setTopBottom(true, false, 278.500000, 283.500000)
	registerVal40:setAlpha(0.150000)
	registerVal40:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal40:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal40)
	registerVal1.Image9 = registerVal40
	local registerVal41 = CoD.Prestige_MasterTierWidget.new(registerVal1, arg0)
	registerVal41:setLeftRight(false, false, -429.000000, -224.500000)
	registerVal41:setTopBottom(true, false, 230.000000, 254.000000)
	registerVal41:setAlpha(ShowIfPrestigeMasterByPLevel("zm", GetPLevelFromCombatRecord(arg0, 1.000000)))
	registerVal41:setScale(0.820000)
	registerVal41.ParagonStars:"setHorizontalCount"(GetPrestigeMasterTierCountFromCombatRecord(arg0, "zm", 10.000000))
	local registerVal44 = {}
	local registerVal45 = {}
	registerVal45.stateName = "Visible"
	local function __FUNC_4D96_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal45.condition = __FUNC_4D96_
	registerVal44 = {registerVal45}
	registerVal41:mergeStateConditions(registerVal44)
	registerVal1:addElement(registerVal41)
	registerVal1["PrestigeMasterTierWidget"] = registerVal41
	local registerVal43 = {}
	registerVal43["right"] = registerVal21
	registerVal20["navigation"] = registerVal43
	registerVal43 = {}
	registerVal43["left"] = registerVal20
	registerVal43["right"] = registerVal22
	registerVal21["navigation"] = registerVal43
	registerVal43 = {}
	registerVal43["left"] = registerVal21
	registerVal22["navigation"] = registerVal43
	CoD.Menu["AddNavigationHandler"](registerVal1, registerVal1, arg0)
	local function __FUNC_4DE0_(arg1, arg2)
		CombatRecordUpdateSelfIdentityWidget(registerVal1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_4DE0_)
	local function __FUNC_4E8B_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_4EDC_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton["LUI_KEY_XBB_PSCIRCLE"], nil, __FUNC_4E8B_, __FUNC_4EDC_, false)
	registerVal6:"setModel"(registerVal1.buttonModel, arg0)
	registerVal20["id"] = "WeaponsButton"
	registerVal21["id"] = "BubblegumBuffsButton"
	registerVal22["id"] = "MapsButton"
	registerVal44 = {}
	registerVal44["name"] = "menu_loaded"
	registerVal44["controller"] = arg0
	registerVal1:"processEvent"(registerVal44)
	registerVal44 = {}
	registerVal44["name"] = "update_state"
	registerVal44["menu"] = registerVal1
	registerVal1:"processEvent"(registerVal44)
	local registerVal42 = registerVal1:"restoreState"()
	if not registerVal42 then
		registerVal44 = {}
		registerVal44["name"] = "gain_focus"
		registerVal44["controller"] = arg0
		registerVal1.WeaponsButton:"processEvent"(registerVal44)
	end
	local function __FUNC_4FD9_(arg1)
		arg1.StartMenuBackground0:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.MenuFrame:close()
		arg1.Kills:close()
		arg1.RoundsSurvived:close()
		arg1.AvgGameScore:close()
		arg1.Headshots:close()
		arg1.AvgRoundsPerGame:close()
		arg1.SPM:close()
		arg1.WeaponsButton:close()
		arg1.BubblegumBuffsButton:close()
		arg1.MapsButton:close()
		arg1.CombatRecordLineDivider1:close()
		arg1.CombatRecordLineDivider2:close()
		arg1.CombatRecordLineDivider:close()
		arg1.CombatRecordLineDivider0:close()
		arg1.StartMenuframenoBG00:close()
		arg1.PrestigeMasterTierWidget:close()
		arg1.RankOrEmblem:close()
		arg1.Rank:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "CombatRecordZM.buttonPrompts"))
	end

	LUI["OverrideFunction_CallOriginalSecond"](registerVal1, "close", __FUNC_4FD9_)
	if __FUNC_52A_ then
		__FUNC_52A_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.CombatRecordZM = __FUNC_57D_
