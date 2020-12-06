-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Barracks.CombatRecordItemButton")
require("ui.uieditor.menus.Barracks.CombatRecordMP.CombatRecordWeapons")
require("ui.uieditor.menus.Barracks.CombatRecordMP.CombatRecordEquipment")
require("ui.uieditor.menus.Barracks.CombatRecordMP.CombatRecordSpecialists")
require("ui.uieditor.menus.Barracks.CombatRecordMP.CombatRecordScorestreaks")
require("ui.uieditor.menus.Barracks.CombatRecordMP.CombatRecordGameModes")
require("ui.uieditor.widgets.Barracks.CombatRecord_LineDivider")
require("ui.uieditor.widgets.Barracks.CombatRecordSummaryStat")
require("ui.uieditor.widgets.Barracks.CombatRecordSummaryStatSmall")
require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.Prestige.Prestige_MasterTierWidget")
local function __FUNC_54B_(arg0, arg1)
	CoD.CombatRecordMode = "public"
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.CombatRecordPublicMatchPanel = registerVal2
local function __FUNC_5B3_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CombatRecordPublicMatchPanel)
	registerVal2.id = "CombatRecordPublicMatchPanel"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1216.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 546.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 381.000000)
	registerVal3:setTopBottom(true, false, 30.000000, 181.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BlackTint = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 392.000000, 759.000000)
	registerVal4:setTopBottom(true, false, 30.000000, 181.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BlackTint2 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 769.000000, 1152.000000)
	registerVal5:setTopBottom(true, false, 30.000000, 181.000000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.BlackTint3 = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 13.000000, 174.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal6:setText(Engine.Localize("MENU_PUBLIC_MATCH_SNAPSHOT_CAPS"))
	registerVal6:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal6)
	registerVal2.SummaryTitle = registerVal6
	local registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(false, true, -211.170000, -64.000000)
	registerVal7:setTopBottom(true, false, 5.000000, 25.000000)
	registerVal7:setText(SecondsAsTimePlayedString(CombatRecordGetStat(arg1, "playerstatslist.time_played_total", "Played 8d 19h 33m 19s")))
	registerVal7:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal7)
	registerVal2.TimePlayedText = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -583.000000, -455.000000)
	registerVal8:setTopBottom(true, false, 41.000000, 169.000000)
	registerVal8:setImage(RegisterImage(GetRankIconLarge(CombatRecordGetRankIcon(arg1, "uie_t7_icon_rank_mp_level_25_lrg"))))
	registerVal2:addElement(registerVal8)
	registerVal2.Emblem = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, -448.000000, -281.000000)
	registerVal9:setTopBottom(true, false, 77.000000, 105.000000)
	registerVal9:setAlpha(0.700000)
	registerVal2:addElement(registerVal9)
	registerVal2.RankNameBackground = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, false, -448.000000, -281.000000)
	registerVal10:setTopBottom(true, false, 105.000000, 133.000000)
	registerVal10:setRGB(0.000000, 0.000000, 0.000000)
	registerVal10:setAlpha(0.800000)
	registerVal2:addElement(registerVal10)
	registerVal2.RankBackground = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(false, false, -448.000000, -281.000000)
	registerVal11:setTopBottom(true, false, 81.000000, 101.000000)
	registerVal11:setRGB(0.000000, 0.000000, 0.000000)
	registerVal11:setText(Engine.Localize(CombatRecordGetRankTitle(arg1, "Vindicator")))
	registerVal11:setTTF("fonts/escom.ttf")
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal11:setShaderVector(0.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal11)
	registerVal2.RankName = registerVal11
	local registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(false, false, -448.000000, -281.000000)
	registerVal12:setTopBottom(true, false, 107.000000, 132.000000)
	registerVal12:setRGB(CombatRecordGetParagonColorByRank(arg1, 255.000000, 255.000000, 255.000000, 1.000000, 1.000000, 1.000000))
	registerVal12:setText(CombatRecordGetLevelString(arg1, "Level 88"))
	registerVal12:setTTF("fonts/escom.ttf")
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal12)
	registerVal2.Rank = registerVal12
	local registerVal13 = CoD.CombatRecordItemButton.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, -1.500000, 368.500000)
	registerVal13:setTopBottom(true, false, 193.500000, 357.500000)
	registerVal13.ItemImage:setAlpha(0.000000)
	registerVal13.GameModeImage2:setAlpha(0.000000)
	registerVal13.ButtonTitle:setText(Engine.Localize("MENU_WEAPONS"))
	local function __FUNC_3836_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.WeaponImage:setImage(RegisterImage(AppendIfMatch("menu_mp_lobby_none_selected", "_rec", AppendIfNotMatch("menu_mp_lobby_none_selected", "_pu", GetWeaponImageByIndexAndMode("mp", registerVal1)))))
		end
	end

	registerVal13:subscribeToGlobalModel(arg1, "CombatRecordDeadliestWeapon", "itemIndex", __FUNC_3836_)
	local function __FUNC_39D8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.ButtonTitle0:setText(LocalizeIntoString("MENU_CR_DEADLIEST", registerVal1))
		end
	end

	registerVal13:subscribeToGlobalModel(arg1, "CombatRecordDeadliestWeapon", "itemName", __FUNC_39D8_)
	local function __FUNC_3AD1_(arg2, arg3)
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

	registerVal13:registerEventHandler("gain_focus", __FUNC_3AD1_)
	local function __FUNC_3C63_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal13:registerEventHandler("lose_focus", __FUNC_3C63_)
	local function __FUNC_3D32_(arg0, arg1, arg2, arg3)
		OpenOverlay(registerVal2, "CombatRecordWeapons", arg2, "", "")
		return true
	end

	local function __FUNC_3DBC_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal13, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_3D32_, __FUNC_3DBC_, false)
	registerVal2:addElement(registerVal13)
	registerVal2.WeaponsButton = registerVal13
	local registerVal14 = CoD.CombatRecordItemButton.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, -1.500000, 368.500000)
	registerVal14:setTopBottom(true, false, 358.000000, 522.000000)
	registerVal14.WeaponImage:setAlpha(0.000000)
	registerVal14.GameModeImage2:setAlpha(0.000000)
	registerVal14.ButtonTitle:setText(Engine.Localize("MENU_EQUIPMENT"))
	local function __FUNC_3EBA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14.ItemImage:setImage(RegisterImage(AppendIfMatch("menu_mp_lobby_none_selected", "_new", GetItemImageByIndexAndMode("mp", registerVal1))))
		end
	end

	registerVal14:subscribeToGlobalModel(arg1, "CombatRecordDeadliestEquipment", "itemIndex", __FUNC_3EBA_)
	local function __FUNC_4021_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14.ButtonTitle0:setText(LocalizeIntoString("MENU_CR_MOST_EFFECTIVE", registerVal1))
		end
	end

	registerVal14:subscribeToGlobalModel(arg1, "CombatRecordDeadliestEquipment", "itemName", __FUNC_4021_)
	local function __FUNC_411E_(arg2, arg3)
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

	registerVal14:registerEventHandler("gain_focus", __FUNC_411E_)
	local function __FUNC_42AF_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal14:registerEventHandler("lose_focus", __FUNC_42AF_)
	local function __FUNC_437E_(arg0, arg1, arg2, arg3)
		OpenOverlay(registerVal2, "CombatRecordEquipment", arg2, "", "")
		return true
	end

	local function __FUNC_440A_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal14, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_437E_, __FUNC_440A_, false)
	registerVal2:addElement(registerVal14)
	registerVal2.EquipmentButton = registerVal14
	local registerVal15 = CoD.CombatRecordItemButton.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 392.000000, 762.000000)
	registerVal15:setTopBottom(true, false, 193.500000, 357.500000)
	registerVal15.WeaponImage:setAlpha(0.000000)
	registerVal15.GameModeImage2:setAlpha(0.000000)
	registerVal15.ButtonTitle:setText(Engine.Localize("MENU_SPECIALISTS"))
	local function __FUNC_4506_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15.ItemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal15:subscribeToGlobalModel(arg1, "FavoriteSpecialist", "heroImage", __FUNC_4506_)
	local function __FUNC_45D7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15.ButtonTitle0:setText(LocalizeIntoString("MENU_CR_DEADLIEST", registerVal1))
		end
	end

	registerVal15:subscribeToGlobalModel(arg1, "FavoriteSpecialist", "heroName", __FUNC_45D7_)
	local function __FUNC_46CD_(arg2, arg3)
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

	registerVal15:registerEventHandler("gain_focus", __FUNC_46CD_)
	local function __FUNC_485F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal15:registerEventHandler("lose_focus", __FUNC_485F_)
	local function __FUNC_492E_(arg0, arg1, arg2, arg3)
		OpenOverlay(registerVal2, "CombatRecordSpecialists", arg2, "", "")
		return true
	end

	local function __FUNC_49BC_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal15, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_492E_, __FUNC_49BC_, false)
	registerVal2:addElement(registerVal15)
	registerVal2.SpecialistButton = registerVal15
	local registerVal16 = CoD.CombatRecordItemButton.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, 392.000000, 762.000000)
	registerVal16:setTopBottom(true, false, 358.000000, 522.000000)
	registerVal16.WeaponImage:setAlpha(0.000000)
	registerVal16.GameModeImage2:setAlpha(0.000000)
	registerVal16.ButtonTitle:setText(Engine.Localize("MENU_SCORESTREAKS"))
	local function __FUNC_4ABA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16.ItemImage:setImage(RegisterImage(AppendIfMatch("menu_mp_lobby_none_selected", "_new", AppendIfNotMatch("menu_mp_lobby_none_selected", "_menu", GetItemImageByIndexAndMode("mp", registerVal1)))))
		end
	end

	registerVal16:subscribeToGlobalModel(arg1, "CombatRecordDeadliestScorestreak", "itemIndex", __FUNC_4ABA_)
	local function __FUNC_4C5A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16.ButtonTitle0:setText(LocalizeIntoString("MENU_CR_MOST_EFFECTIVE", registerVal1))
		end
	end

	registerVal16:subscribeToGlobalModel(arg1, "CombatRecordDeadliestScorestreak", "itemName", __FUNC_4C5A_)
	local function __FUNC_4D56_(arg2, arg3)
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

	registerVal16:registerEventHandler("gain_focus", __FUNC_4D56_)
	local function __FUNC_4EE7_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal16:registerEventHandler("lose_focus", __FUNC_4EE7_)
	local function __FUNC_4FB6_(arg0, arg1, arg2, arg3)
		OpenOverlay(registerVal2, "CombatRecordScorestreaks", arg2, "", "")
		return true
	end

	local function __FUNC_5045_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal16, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_4FB6_, __FUNC_5045_, false)
	registerVal2:addElement(registerVal16)
	registerVal2.ScorestreakButton = registerVal16
	local registerVal17 = CoD.CombatRecordItemButton.new(arg0, arg1)
	registerVal17:setLeftRight(true, false, 782.000000, 1152.000000)
	registerVal17:setTopBottom(true, false, 193.500000, 522.000000)
	registerVal17.WeaponImage:setAlpha(0.000000)
	registerVal17.ItemImage:setAlpha(0.000000)
	registerVal17.ButtonTitle:setText(Engine.Localize("MENU_CHALLENGES_GAMEMODES"))
	local function __FUNC_5142_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.ItemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal17:subscribeToGlobalModel(arg1, "CombatRecordMostWonGameMode", "image", __FUNC_5142_)
	local function __FUNC_5213_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.GameModeImage2:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal17:subscribeToGlobalModel(arg1, "CombatRecordMostWonGameMode", "image", __FUNC_5213_)
	local function __FUNC_52E8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.ButtonTitle0:setText(LocalizeIntoString("MENU_CR_MOST_WINS", registerVal1))
		end
	end

	registerVal17:subscribeToGlobalModel(arg1, "CombatRecordMostWonGameMode", "name", __FUNC_52E8_)
	local function __FUNC_53E1_(arg2, arg3)
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

	registerVal17:registerEventHandler("gain_focus", __FUNC_53E1_)
	local function __FUNC_5573_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal17:registerEventHandler("lose_focus", __FUNC_5573_)
	local function __FUNC_5642_(arg0, arg1, arg2, arg3)
		OpenOverlay(registerVal2, "CombatRecordGameModes", arg2, "", "")
		return true
	end

	local function __FUNC_56CE_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal17, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_5642_, __FUNC_56CE_, false)
	registerVal2:addElement(registerVal17)
	registerVal2.CombatRecordItemButton0 = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(true, true, 0.000000, -1191.000000)
	registerVal18:setTopBottom(true, false, 25.000000, 33.000000)
	registerVal18:setAlpha(0.660000)
	registerVal18:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal18:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal18)
	registerVal2.Line10 = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(true, true, 0.000000, -1191.000000)
	registerVal19:setTopBottom(true, false, 179.000000, 187.000000)
	registerVal19:setAlpha(0.660000)
	registerVal19:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal19:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal19)
	registerVal2.Image3 = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(true, true, 1127.000000, -64.000000)
	registerVal20:setTopBottom(true, false, 25.000000, 33.000000)
	registerVal20:setAlpha(0.660000)
	registerVal20:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal20:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal20)
	registerVal2.Image4 = registerVal20
	local registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(true, true, 1127.000000, -64.000000)
	registerVal21:setTopBottom(true, false, 179.000000, 187.000000)
	registerVal21:setAlpha(0.660000)
	registerVal21:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal21:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal21)
	registerVal2.Image5 = registerVal21
	local registerVal22 = CoD.CombatRecord_LineDivider.new(arg0, arg1)
	registerVal22:setLeftRight(true, false, 758.000000, 783.000000)
	registerVal22:setTopBottom(true, false, 25.000000, 38.000000)
	registerVal2:addElement(registerVal22)
	registerVal2.CombatRecordLineDivider = registerVal22
	local registerVal23 = CoD.CombatRecord_LineDivider.new(arg0, arg1)
	registerVal23:setLeftRight(true, false, 757.000000, 782.000000)
	registerVal23:setTopBottom(true, false, 174.000000, 187.000000)
	registerVal23:setZRot(180.000000)
	registerVal2:addElement(registerVal23)
	registerVal2.CombatRecordLineDivider0 = registerVal23
	local registerVal24 = CoD.CombatRecord_LineDivider.new(arg0, arg1)
	registerVal24:setLeftRight(true, false, 368.000000, 393.000000)
	registerVal24:setTopBottom(true, false, 25.000000, 38.000000)
	registerVal2:addElement(registerVal24)
	registerVal2.CombatRecordLineDivider1 = registerVal24
	local registerVal25 = CoD.CombatRecord_LineDivider.new(arg0, arg1)
	registerVal25:setLeftRight(true, false, 368.000000, 393.000000)
	registerVal25:setTopBottom(true, false, 174.000000, 187.000000)
	registerVal25:setZRot(180.000000)
	registerVal2:addElement(registerVal25)
	registerVal2.CombatRecordLineDivider2 = registerVal25
	local registerVal26 = LUI.UIImage.new()
	registerVal26:setLeftRight(true, true, 0.000000, -64.000000)
	registerVal26:setTopBottom(true, false, 181.500000, 184.500000)
	registerVal26:setAlpha(0.250000)
	registerVal26:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal26:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal26)
	registerVal2.Image50 = registerVal26
	local registerVal27 = LUI.UIImage.new()
	registerVal27:setLeftRight(true, true, 0.000000, -64.000000)
	registerVal27:setTopBottom(true, false, 27.500000, 30.500000)
	registerVal27:setAlpha(0.250000)
	registerVal27:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal27:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal27)
	registerVal2.Image500 = registerVal27
	local registerVal28 = LUI.UIImage.new()
	registerVal28:setLeftRight(true, false, 379.500000, 381.500000)
	registerVal28:setTopBottom(true, false, 30.000000, 183.000000)
	registerVal28:setAlpha(0.350000)
	registerVal28:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal28:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal28)
	registerVal2.Image0 = registerVal28
	local registerVal29 = LUI.UIImage.new()
	registerVal29:setLeftRight(true, false, 769.500000, 771.500000)
	registerVal29:setTopBottom(true, false, 28.000000, 186.000000)
	registerVal29:setAlpha(0.350000)
	registerVal29:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal29:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal29)
	registerVal2.Image1 = registerVal29
	local registerVal30 = CoD.CombatRecordSummaryStat.new(arg0, arg1)
	registerVal30:setLeftRight(true, false, 394.000000, 499.170000)
	registerVal30:setTopBottom(true, false, 48.000000, 94.000000)
	registerVal30.StatLabel:setText(Engine.Localize("MENU_KILLS_CAPS"))
	registerVal30.StatValue:setText(Engine.Localize(CombatRecordGetStat(arg1, "playerstatslist.kills", "888")))
	registerVal2:addElement(registerVal30)
	registerVal2.Kills = registerVal30
	local registerVal31 = CoD.CombatRecordSummaryStat.new(arg0, arg1)
	registerVal31:setLeftRight(true, false, 510.170000, 624.830000)
	registerVal31:setTopBottom(true, false, 48.000000, 94.000000)
	registerVal31.StatLabel:setText(Engine.Localize("MENU_WINS_CAPS"))
	registerVal31.StatValue:setText(Engine.Localize(CombatRecordGetStat(arg1, "playerstatslist.wins", "888")))
	registerVal2:addElement(registerVal31)
	registerVal2.Wins = registerVal31
	local registerVal32 = CoD.CombatRecordSummaryStat.new(arg0, arg1)
	registerVal32:setLeftRight(true, false, 630.830000, 754.500000)
	registerVal32:setTopBottom(true, false, 49.000000, 95.000000)
	registerVal32.StatLabel:setText(Engine.Localize("MENU_SCORE_CAPS"))
	registerVal32.StatValue:setText(Engine.Localize(CombatRecordGetStat(arg1, "playerstatslist.score", "888")))
	registerVal2:addElement(registerVal32)
	registerVal2.Score = registerVal32
	local registerVal33 = CoD.CombatRecordSummaryStatSmall.new(arg0, arg1)
	registerVal33:setLeftRight(true, false, 394.000000, 499.170000)
	registerVal33:setTopBottom(true, false, 123.000000, 159.000000)
	registerVal33.StatLabel:setText(Engine.Localize("MENU_KDRATIO_ABBR"))
	registerVal33.StatValue:setText(Engine.Localize(CombatRecordGetTwoStatRatio(arg1, "playerstatslist.kills", "playerstatslist.deaths", "0.93")))
	registerVal2:addElement(registerVal33)
	registerVal2.KDRatio = registerVal33
	local registerVal34 = CoD.CombatRecordSummaryStatSmall.new(arg0, arg1)
	registerVal34:setLeftRight(true, false, 512.170000, 624.830000)
	registerVal34:setTopBottom(true, false, 123.000000, 159.000000)
	registerVal34.StatLabel:setText(Engine.Localize("MENU_WLRATIO"))
	registerVal34.StatValue:setText(Engine.Localize(CombatRecordGetTwoStatRatio(arg1, "playerstatslist.wins", "playerstatslist.losses", "0.93")))
	registerVal2:addElement(registerVal34)
	registerVal2.WLRatio = registerVal34
	local registerVal35 = CoD.CombatRecordSummaryStatSmall.new(arg0, arg1)
	registerVal35:setLeftRight(true, false, 630.830000, 754.500000)
	registerVal35:setTopBottom(true, false, 123.000000, 159.000000)
	registerVal35.StatLabel:setText(Engine.Localize("MENU_SCORE_PER_MINUTE"))
	registerVal35.StatValue:setText(Engine.Localize(CombatRecordGetSPM(arg1, "playerstatslist.score", "playerstatslist.time_played_total", "425")))
	registerVal2:addElement(registerVal35)
	registerVal2.SPM = registerVal35
	local registerVal36 = LUI.UIImage.new()
	registerVal36:setLeftRight(true, true, 394.000000, -714.830000)
	registerVal36:setTopBottom(false, true, -441.000000, -435.000000)
	registerVal36:setAlpha(0.250000)
	registerVal36:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal36:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal36)
	registerVal2.Image00 = registerVal36
	local registerVal37 = LUI.UIImage.new()
	registerVal37:setLeftRight(true, true, 514.920000, -593.920000)
	registerVal37:setTopBottom(false, true, -441.000000, -435.000000)
	registerVal37:setAlpha(0.250000)
	registerVal37:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal37:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal37)
	registerVal2.Image2 = registerVal37
	local registerVal38 = LUI.UIImage.new()
	registerVal38:setLeftRight(true, true, 639.920000, -468.920000)
	registerVal38:setTopBottom(false, true, -441.000000, -435.000000)
	registerVal38:setAlpha(0.250000)
	registerVal38:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal38:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal38)
	registerVal2.Image6 = registerVal38
	local registerVal39 = LUI.UIImage.new()
	registerVal39:setLeftRight(true, false, 507.170000, 509.170000)
	registerVal39:setTopBottom(true, false, 33.000000, 179.000000)
	registerVal39:setAlpha(0.350000)
	registerVal39:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal39:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal39)
	registerVal2.Vline2 = registerVal39
	local registerVal40 = LUI.UIImage.new()
	registerVal40:setLeftRight(true, false, 629.830000, 631.830000)
	registerVal40:setTopBottom(true, false, 33.000000, 179.000000)
	registerVal40:setAlpha(0.350000)
	registerVal40:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal40:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal40)
	registerVal2.Image20 = registerVal40
	local registerVal41 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal41:setLeftRight(false, false, -450.500000, -279.000000)
	registerVal41:setTopBottom(false, false, -198.500000, -137.500000)
	registerVal2:addElement(registerVal41)
	registerVal2.StartMenuframenoBG00 = registerVal41
	local registerVal42 = CoD.Prestige_MasterTierWidget.new(arg0, arg1)
	registerVal42:setLeftRight(false, false, -468.000000, -261.500000)
	registerVal42:setTopBottom(true, false, 131.000000, 155.000000)
	registerVal42:setAlpha(ShowIfPrestigeMasterByPLevel("mp", GetPLevelFromCombatRecord(arg1, 1.000000)))
	registerVal42:setScale(0.820000)
	registerVal42.ParagonStars:setHorizontalCount(GetPrestigeMasterTierCountFromCombatRecord(arg1, "mp", 10.000000))
	local registerVal45 = {}
	local registerVal46 = {}
	registerVal46["stateName"] = "Visible"
	local function __FUNC_57CA_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal46["condition"] = __FUNC_57CA_
	registerVal45 = {registerVal46}
	registerVal42:"mergeStateConditions"(registerVal45)
	registerVal2:addElement(registerVal42)
	registerVal2["PrestigeMasterTierWidget"] = registerVal42
	local registerVal44 = {}
	registerVal44["right"] = registerVal15
	registerVal44["down"] = registerVal14
	registerVal13["navigation"] = registerVal44
	registerVal44 = {}
	registerVal44["up"] = registerVal13
	registerVal44["right"] = registerVal16
	registerVal14["navigation"] = registerVal44
	registerVal44 = {}
	registerVal44["left"] = registerVal13
	registerVal44["right"] = registerVal17
	registerVal44["down"] = registerVal16
	registerVal15["navigation"] = registerVal44
	registerVal44 = {}
	registerVal44["left"] = registerVal14
	registerVal44["up"] = registerVal15
	registerVal44["right"] = registerVal17
	registerVal16["navigation"] = registerVal44
	registerVal44 = {}
	registerVal46 = {}
	registerVal46 = {registerVal15, registerVal16}
	registerVal44["left"] = registerVal46
	registerVal17["navigation"] = registerVal44
	registerVal44 = {}
	registerVal46 = {}
	local function __FUNC_5814_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_5CB6_(arg0, arg1)
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

		registerVal8:completeAnimation()
		registerVal2.Emblem:setAlpha(0.000000)
		__FUNC_5CB6_(registerVal8, {})
		registerVal10:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
		registerVal10:setAlpha(1.000000)
		registerVal10:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		local function __FUNC_5E69_(arg0, arg1)
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

		registerVal11:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
		registerVal11:setAlpha(0.000000)
		registerVal11:registerEventHandler("transition_complete_keyframe", __FUNC_5E69_)
		local function __FUNC_601D_(arg0, arg1)
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

		registerVal12:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
		registerVal12:setAlpha(0.000000)
		registerVal12:registerEventHandler("transition_complete_keyframe", __FUNC_601D_)
		local function __FUNC_61D1_(arg0, arg1)
			local function __FUNC_634B_(arg0, arg1)
				local function __FUNC_64C3_(arg0, arg1)
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
					__FUNC_64C3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.540000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_64C3_)
			end

			if arg1.interrupted then
				__FUNC_634B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Bounce)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_634B_)
		end

		registerVal13:completeAnimation()
		registerVal2.WeaponsButton:setAlpha(0.000000)
		__FUNC_61D1_(registerVal13, {})
		local function __FUNC_6675_(arg0, arg1)
			local function __FUNC_67CC_(arg0, arg1)
				local function __FUNC_6947_(arg0, arg1)
					local function __FUNC_6ABF_(arg0, arg1)
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
						__FUNC_6ABF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.520000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6ABF_)
				end

				if arg1.interrupted then
					__FUNC_6947_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6947_)
			end

			if arg1.interrupted then
				__FUNC_67CC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_67CC_)
		end

		registerVal14:completeAnimation()
		registerVal2.EquipmentButton:setAlpha(0.000000)
		__FUNC_6675_(registerVal14, {})
		local function __FUNC_6C71_(arg0, arg1)
			local function __FUNC_6DEB_(arg0, arg1)
				local function __FUNC_6F40_(arg0, arg1)
					local function __FUNC_70BB_(arg0, arg1)
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
						__FUNC_70BB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.540000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_70BB_)
				end

				if arg1.interrupted then
					__FUNC_6F40_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6F40_)
			end

			if arg1.interrupted then
				__FUNC_6DEB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6DEB_)
		end

		registerVal15:completeAnimation()
		registerVal2.SpecialistButton:setAlpha(0.000000)
		__FUNC_6C71_(registerVal15, {})
		local function __FUNC_726D_(arg0, arg1)
			local function __FUNC_73C4_(arg0, arg1)
				local function __FUNC_753F_(arg0, arg1)
					local function __FUNC_76B7_(arg0, arg1)
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
						__FUNC_76B7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.590000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_76B7_)
				end

				if arg1.interrupted then
					__FUNC_753F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_753F_)
			end

			if arg1.interrupted then
				__FUNC_73C4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_73C4_)
		end

		registerVal16:completeAnimation()
		registerVal2.ScorestreakButton:setAlpha(0.000000)
		__FUNC_726D_(registerVal16, {})
		local function __FUNC_7869_(arg0, arg1)
			local function __FUNC_79C0_(arg0, arg1)
				local function __FUNC_7B3B_(arg0, arg1)
					local function __FUNC_7CB3_(arg0, arg1)
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
						__FUNC_7CB3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.340000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7CB3_)
				end

				if arg1.interrupted then
					__FUNC_7B3B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7B3B_)
			end

			if arg1.interrupted then
				__FUNC_79C0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_79C0_)
		end

		registerVal17:completeAnimation()
		registerVal2.CombatRecordItemButton0:setAlpha(0.000000)
		__FUNC_7869_(registerVal17, {})
	end

	registerVal46["DefaultClip"] = __FUNC_5814_
	registerVal44["DefaultState"] = registerVal46
	registerVal2["clipsPerState"] = registerVal44
	CoD["Menu"]["AddNavigationHandler"](arg0, registerVal2, arg1)
	registerVal13.id = "WeaponsButton"
	registerVal14.id = "EquipmentButton"
	registerVal15.id = "SpecialistButton"
	registerVal16.id = "ScorestreakButton"
	registerVal17.id = "CombatRecordItemButton0"
	local function __FUNC_7E65_(arg0, arg1)
		local registerVal2 = arg0.WeaponsButton:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_7E65_)
	local function __FUNC_7F6D_(arg0)
		arg0.WeaponsButton:close()
		arg0.EquipmentButton:close()
		arg0.SpecialistButton:close()
		arg0.ScorestreakButton:close()
		arg0.CombatRecordItemButton0:close()
		arg0.CombatRecordLineDivider:close()
		arg0.CombatRecordLineDivider0:close()
		arg0.CombatRecordLineDivider1:close()
		arg0.CombatRecordLineDivider2:close()
		arg0.Kills:close()
		arg0.Wins:close()
		arg0.Score:close()
		arg0.KDRatio:close()
		arg0.WLRatio:close()
		arg0.SPM:close()
		arg0.StartMenuframenoBG00:close()
		arg0.PrestigeMasterTierWidget:close()
	end

	LUI["OverrideFunction_CallOriginalSecond"](registerVal2, "close", __FUNC_7F6D_)
	if __FUNC_54B_ then
		__FUNC_54B_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.CombatRecordPublicMatchPanel.new = __FUNC_5B3_
