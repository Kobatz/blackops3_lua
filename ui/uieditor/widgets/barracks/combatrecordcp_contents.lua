-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.Barracks.CombatRecordItemButton")
require("ui.uieditor.menus.Barracks.CombatRecordMP.CombatRecordWeapons")
require("ui.uieditor.menus.Barracks.CombatRecordMP.CombatRecordEquipment")
require("ui.uieditor.menus.Barracks.CombatRecordCP.CombatRecordCybercore")
require("ui.uieditor.widgets.Barracks.CombatRecord_LineDivider")
require("ui.uieditor.widgets.Barracks.CombatRecordSummaryStatBig")
require("ui.uieditor.menus.Barracks.CombatRecordCP.CombatRecordCPMaps")
require("ui.uieditor.menus.Barracks.CombatRecordCP.CombatRecordAccolades")
require("ui.uieditor.menus.Barracks.CombatRecordCP.CombatRecordCollectibles")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CombatRecordCP_Contents = registerVal1
function CoD.CombatRecordCP_Contents.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CombatRecordCP_Contents)
	registerVal2.id = "CombatRecordCP_Contents"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1125.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 545.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 200.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal3:setText(Engine.Localize("MENU_GLOBAL_CAREER_SNAPSHOT_CAPS"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal3)
	registerVal2.SummaryTitle = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(false, true, -146.500000, 0.000000)
	registerVal4:setTopBottom(true, false, 5.000000, 25.000000)
	registerVal4:setText(SecondsAsTimePlayedString(CombatRecordGetStat(arg1, "playerstatslist.time_played_total", "Played 8d 19h 33m 19s")))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal4)
	registerVal2.TimePlayedText = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -555.000000, -429.000000)
	registerVal5:setTopBottom(true, false, 42.000000, 168.000000)
	registerVal5:setImage(RegisterImage(GetRankIconLarge(CombatRecordGetRankIcon(arg1, "uie_t7_icon_rank_mp_level_25_lrg"))))
	registerVal2:addElement(registerVal5)
	registerVal2.Emblem = registerVal5
	local registerVal6 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -420.000000, -199.000000)
	registerVal6:setTopBottom(false, false, -198.000000, -137.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.StartMenuframenoBG00 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -417.250000, -201.500000)
	registerVal7:setTopBottom(true, false, 77.000000, 105.000000)
	registerVal7:setAlpha(0.600000)
	registerVal2:addElement(registerVal7)
	registerVal2.RankNameBackground = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -417.250000, -201.500000)
	registerVal8:setTopBottom(true, false, 105.000000, 133.000000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal8:setAlpha(0.800000)
	registerVal2:addElement(registerVal8)
	registerVal2.RankBackground = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(false, false, -417.250000, -201.500000)
	registerVal9:setTopBottom(true, false, 81.000000, 101.000000)
	registerVal9:setRGB(0.000000, 0.000000, 0.000000)
	registerVal9:setText(Engine.Localize(CombatRecordGetRankTitle(arg1, "Vindicator")))
	registerVal9:setTTF("fonts/escom.ttf")
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal9:setShaderVector(0.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setLetterSpacing(1.000000)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal9)
	registerVal2.RankName = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(false, false, -417.250000, -201.500000)
	registerVal10:setTopBottom(true, false, 107.000000, 129.000000)
	registerVal10:setTTF("fonts/escom.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_3096_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setText(RankToLevelString("cp", CombatRecordGetStat(arg1, "playerstatslist.rank", registerVal1)))
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "StorageGlobal", "stats_cp", __FUNC_3096_)
	registerVal2:addElement(registerVal10)
	registerVal2.Rank = registerVal10
	local registerVal11 = CoD.CombatRecordItemButton.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 0.000000, 370.000000)
	registerVal11:setTopBottom(true, false, 209.500000, 373.500000)
	registerVal11.ItemImage:setAlpha(0.000000)
	registerVal11.GameModeImage2:setAlpha(0.000000)
	registerVal11.ButtonTitle:setText(Engine.Localize("MENU_WEAPONS"))
	local function __FUNC_31A6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.WeaponImage:setImage(RegisterImage(AppendIfMatch("menu_mp_lobby_none_selected", "_rec", AppendIfNotMatch("menu_mp_lobby_none_selected", "_pu", GetWeaponImageByIndexAndMode("cp", registerVal1)))))
		end
	end

	registerVal11:subscribeToGlobalModel(arg1, "CombatRecordDeadliestWeapon", "itemIndex", __FUNC_31A6_)
	local function __FUNC_3348_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.ButtonTitle0:setText(LocalizeIntoString("MENU_CR_DEADLIEST", registerVal1))
		end
	end

	registerVal11:subscribeToGlobalModel(arg1, "CombatRecordDeadliestWeapon", "itemName", __FUNC_3348_)
	local function __FUNC_3441_(arg2, arg3)
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

	registerVal11:registerEventHandler("gain_focus", __FUNC_3441_)
	local function __FUNC_35D3_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal11:registerEventHandler("lose_focus", __FUNC_35D3_)
	local function __FUNC_36A2_(arg0, arg1, arg2, arg3)
		local registerVal4 = InSafehouse()
		if registerVal4 then
			OpenOverlay(registerVal2, "CombatRecordWeapons", arg2, "", "")
			UnpauseGame(arg1, arg2)
			return true
		else
			NavigateToMenu(registerVal2, "CombatRecordWeapons", true, arg2)
			return true
		end
	end

	local function __FUNC_37B2_(arg0, arg1, arg2)
		local registerVal3 = InSafehouse()
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
			return false
		else
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal11, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_36A2_, __FUNC_37B2_, false)
	registerVal2:addElement(registerVal11)
	registerVal2.WeaponsButton = registerVal11
	local registerVal12 = CoD.CombatRecordItemButton.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 377.000000, 747.000000)
	registerVal12:setTopBottom(true, false, 209.500000, 373.500000)
	registerVal12.WeaponImage:setAlpha(0.000000)
	registerVal12.GameModeImage2:setAlpha(0.000000)
	registerVal12.ButtonTitle:setText(Engine.Localize("MENU_EQUIPMENT"))
	local function __FUNC_3935_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.ItemImage:setImage(RegisterImage(AppendIfMatch("menu_mp_lobby_none_selected", "_new", GetItemImageByIndexAndMode("mp", registerVal1))))
		end
	end

	registerVal12:subscribeToGlobalModel(arg1, "CombatRecordDeadliestEquipment", "itemIndex", __FUNC_3935_)
	local function __FUNC_3A9D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.ButtonTitle0:setText(LocalizeIntoString("MENU_CR_MOST_USED", registerVal1))
		end
	end

	registerVal12:subscribeToGlobalModel(arg1, "CombatRecordDeadliestEquipment", "itemName", __FUNC_3A9D_)
	local function __FUNC_3B95_(arg2, arg3)
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

	registerVal12:registerEventHandler("gain_focus", __FUNC_3B95_)
	local function __FUNC_3D27_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal12:registerEventHandler("lose_focus", __FUNC_3D27_)
	local function __FUNC_3DF6_(arg0, arg1, arg2, arg3)
		local registerVal4 = InSafehouse()
		if registerVal4 then
			OpenOverlay(registerVal2, "CombatRecordEquipment", arg2, "", "")
			UnpauseGame(arg1, arg2)
			return true
		else
			NavigateToMenu(registerVal2, "CombatRecordEquipment", true, arg2)
			return true
		end
	end

	local function __FUNC_3F08_(arg0, arg1, arg2)
		local registerVal3 = InSafehouse()
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
			return false
		else
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal12, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_3DF6_, __FUNC_3F08_, false)
	registerVal2:addElement(registerVal12)
	registerVal2.EquipmentButton = registerVal12
	local registerVal13 = CoD.CombatRecordItemButton.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 754.000000, 1124.000000)
	registerVal13:setTopBottom(true, false, 209.500000, 373.500000)
	registerVal13.WeaponImage:setAlpha(0.000000)
	registerVal13.GameModeImage2:setAlpha(0.000000)
	registerVal13.ButtonTitle:setText(Engine.Localize("MENU_CYBERNETIC_COMBAT"))
	local function __FUNC_408D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.ItemImage:setImage(RegisterImage(GetCybercoreImageByIndexAndMode("cp", registerVal1)))
		end
	end

	registerVal13:subscribeToGlobalModel(arg1, "CombatRecordDeadliestCybercore", "itemIndex", __FUNC_408D_)
	local function __FUNC_41A0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.ButtonTitle0:setText(LocalizeIntoString("MENU_CR_MOST_USED", registerVal1))
		end
	end

	registerVal13:subscribeToGlobalModel(arg1, "CombatRecordDeadliestCybercore", "itemName", __FUNC_41A0_)
	local function __FUNC_4299_(arg2, arg3)
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

	registerVal13:registerEventHandler("gain_focus", __FUNC_4299_)
	local function __FUNC_442B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal13:registerEventHandler("lose_focus", __FUNC_442B_)
	local function __FUNC_44FA_(arg0, arg1, arg2, arg3)
		local registerVal4 = InSafehouse()
		if registerVal4 then
			OpenOverlay(registerVal2, "CombatRecordCybercore", arg2, "", "")
			UnpauseGame(arg1, arg2)
			return true
		else
			NavigateToMenu(registerVal2, "CombatRecordCybercore", true, arg2)
			return true
		end
	end

	local function __FUNC_460C_(arg0, arg1, arg2)
		local registerVal3 = InSafehouse()
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
			return false
		else
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal13, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_44FA_, __FUNC_460C_, false)
	registerVal2:addElement(registerVal13)
	registerVal2.CybercoreButton = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, true, 1.000000, -1098.500000)
	registerVal14:setTopBottom(true, false, 25.000000, 33.000000)
	registerVal14:setAlpha(0.660000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.Line10 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, true, 1.000000, -1098.500000)
	registerVal15:setTopBottom(true, false, 179.000000, 187.000000)
	registerVal15:setAlpha(0.660000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.Image3 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, true, 1099.500000, 0.000000)
	registerVal16:setTopBottom(true, false, 25.000000, 33.000000)
	registerVal16:setAlpha(0.660000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal16)
	registerVal2.Image4 = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(true, true, 1099.500000, 0.000000)
	registerVal17:setTopBottom(true, false, 179.000000, 187.000000)
	registerVal17:setAlpha(0.660000)
	registerVal17:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal17)
	registerVal2.Image5 = registerVal17
	local registerVal18 = CoD.CombatRecord_LineDivider.new(arg0, arg1)
	registerVal18:setLeftRight(true, false, 362.500000, 387.500000)
	registerVal18:setTopBottom(true, false, 25.000000, 38.000000)
	registerVal2:addElement(registerVal18)
	registerVal2.CombatRecordLineDivider = registerVal18
	local registerVal19 = CoD.CombatRecord_LineDivider.new(arg0, arg1)
	registerVal19:setLeftRight(true, false, 361.000000, 386.000000)
	registerVal19:setTopBottom(true, false, 174.000000, 187.000000)
	registerVal19:setZRot(180.000000)
	registerVal2:addElement(registerVal19)
	registerVal2.CombatRecordLineDivider2 = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(true, true, 1.000000, 0.000000)
	registerVal20:setTopBottom(true, false, 180.500000, 185.500000)
	registerVal20:setAlpha(0.150000)
	registerVal20:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal20:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal20)
	registerVal2.Image6 = registerVal20
	local registerVal21 = CoD.CombatRecordSummaryStatBig.new(arg0, arg1)
	registerVal21:setLeftRight(true, false, 392.500000, 539.500000)
	registerVal21:setTopBottom(true, false, 77.000000, 138.000000)
	registerVal21.StatLabel:setText(Engine.Localize("MENU_KILLS_CAPS"))
	registerVal21.StatValue:setText(Engine.Localize(CombatRecordGetStat(arg1, "playerstatslist.kills", "888")))
	registerVal2:addElement(registerVal21)
	registerVal2.Kills = registerVal21
	local registerVal22 = CoD.CombatRecordSummaryStatBig.new(arg0, arg1)
	registerVal22:setLeftRight(true, false, 576.000000, 728.000000)
	registerVal22:setTopBottom(true, false, 77.000000, 138.000000)
	registerVal22.StatLabel:setText(Engine.Localize("MENU_ACCURACY_CAPS"))
	local function __FUNC_4791_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal22.StatValue:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal22:subscribeToGlobalModel(arg1, "CombatRecordTotalWeaponAccuracy", "percent", __FUNC_4791_)
	registerVal2:addElement(registerVal22)
	registerVal2.Accuracy = registerVal22
	local registerVal23 = CoD.CombatRecordSummaryStatBig.new(arg0, arg1)
	registerVal23:setLeftRight(true, false, 766.960000, 910.960000)
	registerVal23:setTopBottom(true, false, 77.000000, 138.000000)
	registerVal23.StatLabel:setText(Engine.Localize("MENU_TOTAL_SCORE_CAPS"))
	registerVal23.StatValue:setText(Engine.Localize(CombatRecordGetStat(arg1, "playerstatslist.score", "888")))
	registerVal2:addElement(registerVal23)
	registerVal2.TotalScore = registerVal23
	local registerVal24 = CoD.CombatRecordSummaryStatBig.new(arg0, arg1)
	registerVal24:setLeftRight(true, false, 947.250000, 1112.250000)
	registerVal24:setTopBottom(true, false, 77.000000, 138.000000)
	registerVal24.StatLabel:setText(Engine.Localize("MENU_PERCENT_COMPLETE_CAPS"))
	local function __FUNC_4869_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal24.StatValue:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal24:subscribeToGlobalModel(arg1, "CombatRecordCPPercentComplete", "percent", __FUNC_4869_)
	registerVal2:addElement(registerVal24)
	registerVal2.PercentComplete = registerVal24
	local registerVal25 = CoD.CombatRecordItemButton.new(arg0, arg1)
	registerVal25:setLeftRight(true, false, 0.000000, 370.000000)
	registerVal25:setTopBottom(true, false, 380.500000, 544.500000)
	registerVal25.WeaponImage:setAlpha(0.000000)
	registerVal25.ItemImage:setImage(RegisterImage("uie_score"))
	registerVal25.GameModeImage2:setAlpha(0.000000)
	registerVal25.ButtonTitle:setText(Engine.Localize("MENU_MISSIONS"))
	local function __FUNC_4941_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal25.ButtonTitle0:setText(LocalizeIntoString("MENU_CR_HIGHEST_SCORE", MapNameToLocalizedMapName(registerVal1)))
		end
	end

	registerVal25:subscribeToGlobalModel(arg1, "CombatRecordBestScoreMap", "mapName", __FUNC_4941_)
	local function __FUNC_4A68_(arg2, arg3)
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

	registerVal25:registerEventHandler("gain_focus", __FUNC_4A68_)
	local function __FUNC_4BFB_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal25:registerEventHandler("lose_focus", __FUNC_4BFB_)
	local function __FUNC_4CCA_(arg0, arg1, arg2, arg3)
		local registerVal4 = InSafehouse()
		if registerVal4 then
			OpenOverlay(registerVal2, "CombatRecordCPMaps", arg2, "", "")
			return true
		else
			NavigateToMenu(registerVal2, "CombatRecordCPMaps", true, arg2)
			return true
		end
	end

	local function __FUNC_4DB4_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal25, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_4CCA_, __FUNC_4DB4_, false)
	registerVal2:addElement(registerVal25)
	registerVal2.MissionButton = registerVal25
	local registerVal26 = CoD.CombatRecordItemButton.new(arg0, arg1)
	registerVal26:setLeftRight(true, false, 377.000000, 747.000000)
	registerVal26:setTopBottom(true, false, 380.500000, 544.500000)
	registerVal26.WeaponImage:setAlpha(0.000000)
	registerVal26.ItemImage:setImage(RegisterImage("uie_indestructible"))
	registerVal26.GameModeImage2:setAlpha(0.000000)
	registerVal26.ButtonTitle:setText(Engine.Localize("MENU_ACCOLADES"))
	local function __FUNC_4EB2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal26.ButtonTitle0:setText(LocalizeIntoString("MENU_CR_EARNED", registerVal1))
		end
	end

	registerVal26:subscribeToGlobalModel(arg1, "CombatRecordTotalAccoladesCompleted", "accoladesCompleted", __FUNC_4EB2_)
	local function __FUNC_4FA6_(arg2, arg3)
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

	registerVal26:registerEventHandler("gain_focus", __FUNC_4FA6_)
	local function __FUNC_5137_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal26:registerEventHandler("lose_focus", __FUNC_5137_)
	local function __FUNC_5206_(arg0, arg1, arg2, arg3)
		local registerVal4 = InSafehouse()
		if registerVal4 then
			OpenOverlay(registerVal2, "CombatRecordAccolades", arg2, "", "")
			return true
		else
			NavigateToMenu(registerVal2, "CombatRecordAccolades", true, arg2)
			return true
		end
	end

	local function __FUNC_52F3_(arg0, arg1, arg2)
		local registerVal3 = InSafehouse()
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
			return false
		else
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal26, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_5206_, __FUNC_52F3_, false)
	registerVal2:addElement(registerVal26)
	registerVal2.AccoladesButton = registerVal26
	local registerVal27 = CoD.CombatRecordItemButton.new(arg0, arg1)
	registerVal27:setLeftRight(true, false, 754.000000, 1124.000000)
	registerVal27:setTopBottom(true, false, 380.500000, 544.500000)
	registerVal27.WeaponImage:setAlpha(0.000000)
	registerVal27.ItemImage:setImage(RegisterImage("uie_collectibles"))
	registerVal27.GameModeImage2:setAlpha(0.000000)
	registerVal27.ButtonTitle:setText(Engine.Localize("CPUI_COLLECTIBLES"))
	local function __FUNC_5475_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal27.ButtonTitle0:setText(LocalizeIntoString("MENU_CR_FOUND", registerVal1))
		end
	end

	registerVal27:subscribeToGlobalModel(arg1, "CombatRecordTotalCollectiblesFound", "collectiblesFound", __FUNC_5475_)
	local function __FUNC_5569_(arg2, arg3)
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

	registerVal27:registerEventHandler("gain_focus", __FUNC_5569_)
	local function __FUNC_56FB_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal27:registerEventHandler("lose_focus", __FUNC_56FB_)
	local function __FUNC_57CA_(arg0, arg1, arg2, arg3)
		local registerVal4 = InSafehouse()
		if registerVal4 then
			OpenOverlay(registerVal2, "CombatRecordCollectibles", arg2, "", "")
			UnpauseGame(arg1, arg2)
			return true
		else
			NavigateToMenu(registerVal2, "CombatRecordCollectibles", true, arg2)
			return true
		end
	end

	local function __FUNC_58DF_(arg0, arg1, arg2)
		local registerVal3 = InSafehouse()
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
			return false
		else
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal27, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_57CA_, __FUNC_58DF_, false)
	registerVal2:addElement(registerVal27)
	registerVal2.CollectibleButton = registerVal27
	local registerVal28 = CoD.CombatRecord_LineDivider.new(arg0, arg1)
	registerVal28:setLeftRight(true, false, 738.500000, 763.500000)
	registerVal28:setTopBottom(true, false, 25.000000, 38.000000)
	registerVal2:addElement(registerVal28)
	registerVal2.CombatRecordLineDivider0 = registerVal28
	local registerVal29 = CoD.CombatRecord_LineDivider.new(arg0, arg1)
	registerVal29:setLeftRight(true, false, 738.000000, 763.000000)
	registerVal29:setTopBottom(true, false, 174.000000, 187.000000)
	registerVal29:setZRot(180.000000)
	registerVal2:addElement(registerVal29)
	registerVal2.CombatRecordLineDivider1 = registerVal29
	local registerVal30 = LUI.UIImage.new()
	registerVal30:setLeftRight(true, true, 1.000000, 0.000000)
	registerVal30:setTopBottom(true, false, 26.000000, 31.000000)
	registerVal30:setAlpha(0.150000)
	registerVal30:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal30:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal30)
	registerVal2.Image60 = registerVal30
	local registerVal31 = LUI.UIImage.new()
	registerVal31:setLeftRight(true, false, 553.170000, 555.170000)
	registerVal31:setTopBottom(true, false, 33.000000, 179.000000)
	registerVal31:setAlpha(0.350000)
	registerVal31:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal31:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal31)
	registerVal2.Vline2 = registerVal31
	local registerVal32 = LUI.UIImage.new()
	registerVal32:setLeftRight(true, false, 927.170000, 929.170000)
	registerVal32:setTopBottom(true, false, 33.000000, 179.000000)
	registerVal32:setAlpha(0.350000)
	registerVal32:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal32:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal32)
	registerVal2.Vline20 = registerVal32
	local registerVal33 = LUI.UIImage.new()
	registerVal33:setLeftRight(true, false, 373.500000, 375.500000)
	registerVal33:setTopBottom(true, false, 30.000000, 183.000000)
	registerVal33:setAlpha(0.350000)
	registerVal33:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal33:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal33)
	registerVal2.Image0 = registerVal33
	local registerVal34 = LUI.UIImage.new()
	registerVal34:setLeftRight(true, false, 749.500000, 751.500000)
	registerVal34:setTopBottom(true, false, 28.000000, 186.000000)
	registerVal34:setAlpha(0.350000)
	registerVal34:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal34:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal34)
	registerVal2.Image1 = registerVal34
	local registerVal35 = {}
	registerVal35.right = registerVal12
	registerVal35.down = registerVal25
	registerVal11.navigation = registerVal35
	registerVal35 = {}
	registerVal35.left = registerVal11
	registerVal35.right = registerVal13
	registerVal35.down = registerVal26
	registerVal12.navigation = registerVal35
	registerVal35 = {}
	registerVal35.left = registerVal12
	registerVal35.down = registerVal27
	registerVal13.navigation = registerVal35
	registerVal35 = {}
	registerVal35.up = registerVal11
	registerVal35.right = registerVal26
	registerVal25.navigation = registerVal35
	registerVal35 = {}
	registerVal35.left = registerVal25
	registerVal35.up = registerVal12
	registerVal35.right = registerVal27
	registerVal26.navigation = registerVal35
	registerVal35 = {}
	registerVal35.left = registerVal26
	registerVal35.up = registerVal13
	registerVal27.navigation = registerVal35
	registerVal35 = {}
	local registerVal36 = {}
	local function __FUNC_5A61_()
		registerVal2:setupElementClipCounter(11.000000)
		local function __FUNC_5F90_(arg0, arg1)
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
		__FUNC_5F90_(registerVal5, {})
		local function __FUNC_6145_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.600000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
		registerVal7:setAlpha(0.000000)
		registerVal7:registerEventHandler("transition_complete_keyframe", __FUNC_6145_)
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

		registerVal8:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
		registerVal8:setAlpha(0.000000)
		registerVal8:registerEventHandler("transition_complete_keyframe", __FUNC_62F9_)
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

		registerVal9:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
		registerVal9:setAlpha(0.000000)
		registerVal9:registerEventHandler("transition_complete_keyframe", __FUNC_64AD_)
		local function __FUNC_6661_(arg0, arg1)
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

		registerVal10:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
		registerVal10:setAlpha(0.000000)
		registerVal10:registerEventHandler("transition_complete_keyframe", __FUNC_6661_)
		local function __FUNC_6815_(arg0, arg1)
			local function __FUNC_698F_(arg0, arg1)
				local function __FUNC_6B07_(arg0, arg1)
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
					__FUNC_6B07_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.540000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6B07_)
			end

			if arg1.interrupted then
				__FUNC_698F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Bounce)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_698F_)
		end

		registerVal11:completeAnimation()
		registerVal2.WeaponsButton:setAlpha(0.000000)
		__FUNC_6815_(registerVal11, {})
		local function __FUNC_6CB9_(arg0, arg1)
			local function __FUNC_6E10_(arg0, arg1)
				local function __FUNC_6F8B_(arg0, arg1)
					local function __FUNC_7103_(arg0, arg1)
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
						__FUNC_7103_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.520000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7103_)
				end

				if arg1.interrupted then
					__FUNC_6F8B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6F8B_)
			end

			if arg1.interrupted then
				__FUNC_6E10_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6E10_)
		end

		registerVal12:completeAnimation()
		registerVal2.EquipmentButton:setAlpha(0.000000)
		__FUNC_6CB9_(registerVal12, {})
		local function __FUNC_72B5_(arg0, arg1)
			local function __FUNC_742F_(arg0, arg1)
				local function __FUNC_7584_(arg0, arg1)
					local function __FUNC_76FF_(arg0, arg1)
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
						__FUNC_76FF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.540000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_76FF_)
				end

				if arg1.interrupted then
					__FUNC_7584_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7584_)
			end

			if arg1.interrupted then
				__FUNC_742F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_742F_)
		end

		registerVal13:completeAnimation()
		registerVal2.CybercoreButton:setAlpha(0.000000)
		__FUNC_72B5_(registerVal13, {})
		local function __FUNC_78B1_(arg0, arg1)
			local function __FUNC_7A08_(arg0, arg1)
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
				__FUNC_7A08_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7A08_)
		end

		registerVal25:completeAnimation()
		registerVal2.MissionButton:setAlpha(0.000000)
		__FUNC_78B1_(registerVal25, {})
		local function __FUNC_7BBD_(arg0, arg1)
			local function __FUNC_7D14_(arg0, arg1)
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
				__FUNC_7D14_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7D14_)
		end

		registerVal26:completeAnimation()
		registerVal2.AccoladesButton:setAlpha(0.000000)
		__FUNC_7BBD_(registerVal26, {})
		local function __FUNC_7EC9_(arg0, arg1)
			local function __FUNC_8020_(arg0, arg1)
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
				__FUNC_8020_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8020_)
		end

		registerVal27:completeAnimation()
		registerVal2.CollectibleButton:setAlpha(0.000000)
		__FUNC_7EC9_(registerVal27, {})
	end

	registerVal36.DefaultClip = __FUNC_5A61_
	registerVal35.DefaultState = registerVal36
	registerVal36 = {}
	local function __FUNC_81D5_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal11:completeAnimation()
		registerVal2.WeaponsButton:setLeftRight(true, false, 0.000000, 370.000000)
		registerVal2.WeaponsButton:setTopBottom(true, false, 191.000000, 355.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.EquipmentButton:setLeftRight(true, false, 377.000000, 747.000000)
		registerVal2.EquipmentButton:setTopBottom(true, false, 191.000000, 355.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.CybercoreButton:setLeftRight(true, false, 754.000000, 1124.000000)
		registerVal2.CybercoreButton:setTopBottom(true, false, 191.000000, 355.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal25:completeAnimation()
		registerVal2.MissionButton:setLeftRight(true, false, 0.000000, 370.000000)
		registerVal2.MissionButton:setTopBottom(true, false, 362.000000, 526.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.AccoladesButton:setLeftRight(true, false, 377.000000, 747.000000)
		registerVal2.AccoladesButton:setTopBottom(true, false, 362.000000, 526.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.CollectibleButton:setLeftRight(true, false, 754.000000, 1124.000000)
		registerVal2.CollectibleButton:setTopBottom(true, false, 362.000000, 526.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal36.DefaultClip = __FUNC_81D5_
	registerVal35.Safehouse = registerVal36
	registerVal2.clipsPerState = registerVal35
	local registerVal37 = {}
	local registerVal38 = {}
	registerVal38.stateName = "Safehouse"
	local function __FUNC_8629_(arg0, arg1, arg2)
		return InSafehouse()
	end

	registerVal38.condition = __FUNC_8629_
	registerVal37 = {registerVal38}
	registerVal2:mergeStateConditions(registerVal37)
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal11.id = "WeaponsButton"
	registerVal12.id = "EquipmentButton"
	registerVal13.id = "CybercoreButton"
	registerVal25.id = "MissionButton"
	registerVal26.id = "AccoladesButton"
	registerVal27.id = "CollectibleButton"
	local function __FUNC_8675_(arg0, arg1)
		local registerVal2 = arg0.WeaponsButton:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_8675_)
	local function __FUNC_877D_(arg0)
		arg0.StartMenuframenoBG00:close()
		arg0.WeaponsButton:close()
		arg0.EquipmentButton:close()
		arg0.CybercoreButton:close()
		arg0.CombatRecordLineDivider:close()
		arg0.CombatRecordLineDivider2:close()
		arg0.Kills:close()
		arg0.Accuracy:close()
		arg0.TotalScore:close()
		arg0.PercentComplete:close()
		arg0.MissionButton:close()
		arg0.AccoladesButton:close()
		arg0.CollectibleButton:close()
		arg0.CombatRecordLineDivider0:close()
		arg0.CombatRecordLineDivider1:close()
		arg0.Rank:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_877D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

