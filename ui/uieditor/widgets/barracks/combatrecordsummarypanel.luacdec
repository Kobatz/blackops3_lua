-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Barracks.CombatRecord_LineDivider")
require("ui.uieditor.widgets.Barracks.CombatRecordSummaryStat")
require("ui.uieditor.widgets.Barracks.CombatRecordSummaryStatSmall")
require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.Prestige.Prestige_MasterTierWidget")
require("ui.uieditor.widgets.Primary_Profile_Snapshot")
require("ui.uieditor.widgets.Barracks.CombatRecordCallingCard")
local function __FUNC_3E6_(arg0, arg1)
	CoD.CombatRecordMode = "summary"
end

local function __FUNC_450_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	Engine.CreateModel(registerVal3, "FileshareRoot.SelectedFileID")
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.CombatRecordSummaryPanel = registerVal3
local function __FUNC_50B_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_3E6_ then
		__FUNC_3E6_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CombatRecordSummaryPanel)
	registerVal2.id = "CombatRecordSummaryPanel"
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
	registerVal6:setLeftRight(true, false, 13.000000, 213.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal6:setText(Engine.Localize("MENU_GLOBAL_CAREER_SNAPSHOT_CAPS"))
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
	registerVal12:setText(CombatRecordGetLevelString(arg1, "Level 88"))
	registerVal12:setTTF("fonts/escom.ttf")
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_347E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setRGB(CombatRecordGetParagonColorByRank(arg1, 255.000000, 255.000000, 255.000000, registerVal1))
		end
	end

	registerVal12:subscribeToGlobalModel(arg1, "StorageGlobal", "stats_mp", __FUNC_347E_)
	registerVal2:addElement(registerVal12)
	registerVal2.Rank = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, true, 0.000000, -1191.000000)
	registerVal13:setTopBottom(true, false, 25.000000, 33.000000)
	registerVal13:setAlpha(0.660000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.Line10 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, true, 0.000000, -1191.000000)
	registerVal14:setTopBottom(true, false, 179.000000, 187.000000)
	registerVal14:setAlpha(0.660000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.Image3 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, true, 1127.000000, -64.000000)
	registerVal15:setTopBottom(true, false, 25.000000, 33.000000)
	registerVal15:setAlpha(0.660000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.Image4 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, true, 1127.000000, -64.000000)
	registerVal16:setTopBottom(true, false, 179.000000, 187.000000)
	registerVal16:setAlpha(0.660000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal16)
	registerVal2.Image5 = registerVal16
	local registerVal17 = CoD.CombatRecord_LineDivider.new(arg0, arg1)
	registerVal17:setLeftRight(true, false, 758.000000, 783.000000)
	registerVal17:setTopBottom(true, false, 25.000000, 38.000000)
	registerVal2:addElement(registerVal17)
	registerVal2.CombatRecordLineDivider = registerVal17
	local registerVal18 = CoD.CombatRecord_LineDivider.new(arg0, arg1)
	registerVal18:setLeftRight(true, false, 758.000000, 783.000000)
	registerVal18:setTopBottom(true, false, 174.000000, 187.000000)
	registerVal18:setZRot(180.000000)
	registerVal2:addElement(registerVal18)
	registerVal2.CombatRecordLineDivider0 = registerVal18
	local registerVal19 = CoD.CombatRecord_LineDivider.new(arg0, arg1)
	registerVal19:setLeftRight(true, false, 368.000000, 393.000000)
	registerVal19:setTopBottom(true, false, 25.000000, 38.000000)
	registerVal2:addElement(registerVal19)
	registerVal2.CombatRecordLineDivider1 = registerVal19
	local registerVal20 = CoD.CombatRecord_LineDivider.new(arg0, arg1)
	registerVal20:setLeftRight(true, false, 368.000000, 393.000000)
	registerVal20:setTopBottom(true, false, 174.000000, 187.000000)
	registerVal20:setZRot(180.000000)
	registerVal2:addElement(registerVal20)
	registerVal2.CombatRecordLineDivider2 = registerVal20
	local registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(true, true, 0.000000, -64.000000)
	registerVal21:setTopBottom(true, false, 181.500000, 184.500000)
	registerVal21:setAlpha(0.250000)
	registerVal21:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal21:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal21)
	registerVal2.Image50 = registerVal21
	local registerVal22 = LUI.UIImage.new()
	registerVal22:setLeftRight(true, true, 0.000000, -64.000000)
	registerVal22:setTopBottom(true, false, 27.500000, 30.000000)
	registerVal22:setAlpha(0.250000)
	registerVal22:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal22:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal22)
	registerVal2.Image500 = registerVal22
	local registerVal23 = LUI.UIImage.new()
	registerVal23:setLeftRight(true, false, 379.500000, 381.500000)
	registerVal23:setTopBottom(true, false, 30.000000, 183.000000)
	registerVal23:setAlpha(0.350000)
	registerVal23:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal23:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal23)
	registerVal2.Image0 = registerVal23
	local registerVal24 = LUI.UIImage.new()
	registerVal24:setLeftRight(true, false, 769.500000, 771.500000)
	registerVal24:setTopBottom(true, false, 28.000000, 186.000000)
	registerVal24:setAlpha(0.350000)
	registerVal24:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal24:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal24)
	registerVal2.Image1 = registerVal24
	local registerVal25 = CoD.CombatRecordSummaryStat.new(arg0, arg1)
	registerVal25:setLeftRight(true, false, 394.000000, 499.170000)
	registerVal25:setTopBottom(true, false, 48.000000, 94.000000)
	registerVal25.StatLabel:setText(Engine.Localize("MENU_KILLS_CAPS"))
	registerVal25.StatValue:setText(Engine.Localize(CombatRecordGetStat(arg1, "playerstatslist.kills", "888")))
	registerVal2:addElement(registerVal25)
	registerVal2.Kills = registerVal25
	local registerVal26 = CoD.CombatRecordSummaryStat.new(arg0, arg1)
	registerVal26:setLeftRight(true, false, 510.170000, 624.830000)
	registerVal26:setTopBottom(true, false, 48.000000, 94.000000)
	registerVal26.StatLabel:setText(Engine.Localize("MENU_WINS_CAPS"))
	registerVal26.StatValue:setText(Engine.Localize(CombatRecordGetStat(arg1, "playerstatslist.wins", "888")))
	registerVal2:addElement(registerVal26)
	registerVal2.Wins = registerVal26
	local registerVal27 = CoD.CombatRecordSummaryStat.new(arg0, arg1)
	registerVal27:setLeftRight(true, false, 630.830000, 754.500000)
	registerVal27:setTopBottom(true, false, 49.000000, 95.000000)
	registerVal27.StatLabel:setText(Engine.Localize("MENU_SCORE_CAPS"))
	registerVal27.StatValue:setText(Engine.Localize(CombatRecordGetStat(arg1, "playerstatslist.score", "888")))
	registerVal2:addElement(registerVal27)
	registerVal2.Score = registerVal27
	local registerVal28 = CoD.CombatRecordSummaryStatSmall.new(arg0, arg1)
	registerVal28:setLeftRight(true, false, 394.000000, 499.170000)
	registerVal28:setTopBottom(true, false, 123.000000, 159.000000)
	registerVal28.StatLabel:setText(Engine.Localize("MENU_KDRATIO_ABBR"))
	registerVal28.StatValue:setText(Engine.Localize(CombatRecordGetTwoStatRatio(arg1, "playerstatslist.kills", "playerstatslist.deaths", "0.93")))
	registerVal2:addElement(registerVal28)
	registerVal2.KDRatio = registerVal28
	local registerVal29 = CoD.CombatRecordSummaryStatSmall.new(arg0, arg1)
	registerVal29:setLeftRight(true, false, 512.170000, 624.830000)
	registerVal29:setTopBottom(true, false, 123.000000, 159.000000)
	registerVal29.StatLabel:setText(Engine.Localize("MENU_WLRATIO"))
	registerVal29.StatValue:setText(Engine.Localize(CombatRecordGetTwoStatRatio(arg1, "playerstatslist.wins", "playerstatslist.losses", "0.93")))
	registerVal2:addElement(registerVal29)
	registerVal2.WLRatio = registerVal29
	local registerVal30 = CoD.CombatRecordSummaryStatSmall.new(arg0, arg1)
	registerVal30:setLeftRight(true, false, 630.830000, 754.500000)
	registerVal30:setTopBottom(true, false, 123.000000, 159.000000)
	registerVal30.StatLabel:setText(Engine.Localize("MENU_SCORE_PER_MINUTE"))
	registerVal30.StatValue:setText(Engine.Localize(CombatRecordGetSPM(arg1, "playerstatslist.score", "playerstatslist.time_played_total", "425")))
	registerVal2:addElement(registerVal30)
	registerVal2.SPM = registerVal30
	local registerVal31 = LUI.UIImage.new()
	registerVal31:setLeftRight(true, true, 394.000000, -714.830000)
	registerVal31:setTopBottom(false, true, -441.000000, -435.000000)
	registerVal31:setAlpha(0.250000)
	registerVal31:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal31:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal31)
	registerVal2.Image00 = registerVal31
	local registerVal32 = LUI.UIImage.new()
	registerVal32:setLeftRight(true, true, 514.920000, -593.920000)
	registerVal32:setTopBottom(false, true, -441.000000, -435.000000)
	registerVal32:setAlpha(0.250000)
	registerVal32:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal32:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal32)
	registerVal2.Image2 = registerVal32
	local registerVal33 = LUI.UIImage.new()
	registerVal33:setLeftRight(true, true, 639.920000, -468.920000)
	registerVal33:setTopBottom(false, true, -441.000000, -435.000000)
	registerVal33:setAlpha(0.250000)
	registerVal33:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal33:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal33)
	registerVal2.Image6 = registerVal33
	local registerVal34 = LUI.UIImage.new()
	registerVal34:setLeftRight(true, false, 507.170000, 509.170000)
	registerVal34:setTopBottom(true, false, 33.000000, 179.000000)
	registerVal34:setAlpha(0.350000)
	registerVal34:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal34:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal34)
	registerVal2.Vline2 = registerVal34
	local registerVal35 = LUI.UIImage.new()
	registerVal35:setLeftRight(true, false, 629.830000, 631.830000)
	registerVal35:setTopBottom(true, false, 33.000000, 179.000000)
	registerVal35:setAlpha(0.350000)
	registerVal35:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal35:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal35)
	registerVal2.Image20 = registerVal35
	local registerVal36 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal36:setLeftRight(false, false, -450.500000, -279.000000)
	registerVal36:setTopBottom(false, false, -198.500000, -137.500000)
	registerVal2:addElement(registerVal36)
	registerVal2.StartMenuframenoBG00 = registerVal36
	local registerVal37 = LUI.UITightText.new()
	registerVal37:setLeftRight(true, false, 447.080000, 607.080000)
	registerVal37:setTopBottom(true, false, 228.500000, 253.500000)
	registerVal37:setText(Engine.Localize("MENU_CALLING_CARD_SHOWCASE_CAPS"))
	registerVal37:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal37)
	registerVal2.CallingCardShowcaseLabel = registerVal37
	local registerVal38 = CoD.Prestige_MasterTierWidget.new(arg0, arg1)
	registerVal38:setLeftRight(false, false, -468.000000, -261.500000)
	registerVal38:setTopBottom(true, false, 131.000000, 155.000000)
	registerVal38:setAlpha(ShowIfPrestigeMasterByPLevel("mp", GetPLevelFromCombatRecord(arg1, 1.000000)))
	registerVal38:setScale(0.820000)
	registerVal38.ParagonStars:setHorizontalCount(GetPrestigeMasterTierCountFromCombatRecord(arg1, "mp", 10.000000))
	local registerVal41 = {}
	local registerVal42 = {}
	registerVal42.stateName = "Visible"
	local function __FUNC_3557_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal42.condition = __FUNC_3557_
	registerVal41 = {registerVal42}
	registerVal38:mergeStateConditions(registerVal41)
	registerVal2:addElement(registerVal38)
	registerVal2.PrestigeMasterTierWidget = registerVal38
	local registerVal39 = CoD.Primary_Profile_Snapshot.new(arg0, arg1)
	registerVal39:setLeftRight(true, false, 13.000000, 403.000000)
	registerVal39:setTopBottom(true, false, 260.500000, 488.500000)
	registerVal39.StartMenuProfileSnapshotPreview.ImageContainer.ImageContainer:setImage(RegisterImage("uie_img_t7_menu_startmenu_option_screenshots"))
	local registerVal43 = Engine.GetModelForController(arg1)
	registerVal42 = Engine.GetModel(registerVal43, "CombatRecordProfileSnapshot.fileId")
	local function __FUNC_35A0_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "CombatRecordProfileSnapshot.fileId"
		CoD.Menu.UpdateButtonShownState(registerVal39, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(registerVal39, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal39:subscribeToModel(registerVal42, __FUNC_35A0_)
	local function __FUNC_37DD_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		return registerVal3
	end

	registerVal39:registerEventHandler("gain_focus", __FUNC_37DD_)
	local function __FUNC_39D5_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal39:registerEventHandler("lose_focus", __FUNC_39D5_)
	local function __FUNC_3AA6_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsCombatRecordForRemotePlayer()
		registerVal4 = IsControllerModelValueDefaultID64Value(arg0, arg2, "CombatRecordProfileSnapshot.fileId")
		if not registerVal4 and registerVal4 then
			CombatRecordOpenProfileSnapshot(arg1, arg2)
			return true
		else
			registerVal4 = IsControllerModelValueDefaultID64Value(arg0, arg2, "CombatRecordProfileSnapshot.fileId")
			if not registerVal4 then
				CombatRecordProfileSnapshotFullscreenView(registerVal2, arg2)
				return true
			end
		end
	end

	local function __FUNC_3C2B_(arg0, arg1, arg2)
		local registerVal3 = IsCombatRecordForRemotePlayer()
		registerVal3 = IsControllerModelValueDefaultID64Value(arg0, arg2, "CombatRecordProfileSnapshot.fileId")
		if not registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		else
			registerVal3 = IsControllerModelValueDefaultID64Value(arg0, arg2, "CombatRecordProfileSnapshot.fileId")
			if not registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
				return true
			end
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal39, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_3AA6_, __FUNC_3C2B_, false)
	local function __FUNC_3E49_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsCombatRecordForRemotePlayer()
		registerVal4 = IsControllerModelValueDefaultID64Value(arg0, arg2, "CombatRecordProfileSnapshot.fileId")
		if not registerVal4 and not registerVal4 then
			CombatRecordClearProfileSnapshot(arg2)
			return true
		end
	end

	local function __FUNC_3F61_(arg0, arg1, arg2)
		local registerVal3 = IsCombatRecordForRemotePlayer()
		registerVal3 = IsControllerModelValueDefaultID64Value(arg0, arg2, "CombatRecordProfileSnapshot.fileId")
		if not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_CLEAR")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal39, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "C", __FUNC_3E49_, __FUNC_3F61_, false)
	registerVal2:addElement(registerVal39)
	registerVal2.PrimaryProfileSnapshot = registerVal39
	local registerVal40 = LUI.UITightText.new()
	registerVal40:setLeftRight(true, false, 13.000000, 221.000000)
	registerVal40:setTopBottom(true, false, 228.500000, 253.500000)
	registerVal40:setText(Engine.Localize("MENU_PROFILE_SNAPSHOT_CAPS"))
	registerVal40:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal40)
	registerVal2.PrimaryProfileSnapshotLabel = registerVal40
	registerVal41 = LUI.UIList.new(arg0, arg1, 4.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal41:makeFocusable()
	registerVal41:setLeftRight(true, false, 447.080000, 747.080000)
	registerVal41:setTopBottom(true, false, 261.500000, 494.500000)
	registerVal41:setWidgetType(CoD["CombatRecordCallingCard"])
	registerVal41:"setVerticalCount"(3.000000)
	registerVal41:"setSpacing"(4.000000)
	registerVal41:"setDataSource"("CombatRecordCallingCardShowcase")
	local function __FUNC_4115_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "backgroundID"
		CoD.Menu.UpdateButtonShownState(registerVal41, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal41:"linkToElementModel"(registerVal41, "backgroundID", true, __FUNC_4115_)
	local function __FUNC_42D6_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		return registerVal3
	end

	registerVal41:registerEventHandler("gain_focus", __FUNC_42D6_)
	local function __FUNC_44CD_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal41:registerEventHandler("lose_focus", __FUNC_44CD_)
	local function __FUNC_459E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsCombatRecordForRemotePlayer()
		if not registerVal4 then
			CombatRecordOpenCallingCards(registerVal2, arg2, arg1, arg0)
			return true
		end
	end

	local function __FUNC_4645_(arg0, arg1, arg2)
		local registerVal3 = IsCombatRecordForRemotePlayer()
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal41, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_459E_, __FUNC_4645_, false)
	local function __FUNC_4781_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsCombatRecordForRemotePlayer()
		registerVal4 = IsSelfModelValueEqualTo(arg0, arg2, "backgroundID", 0.000000)
		if not registerVal4 and not registerVal4 then
			CombatRecordClearCallingCard(arg1, arg0, arg2)
			return true
		end
	end

	local function __FUNC_4881_(arg0, arg1, arg2)
		local registerVal3 = IsCombatRecordForRemotePlayer()
		registerVal3 = IsSelfModelValueEqualTo(arg0, arg2, "backgroundID", 0.000000)
		if not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_CLEAR")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal41, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "C", __FUNC_4781_, __FUNC_4881_, false)
	registerVal2:addElement(registerVal41)
	registerVal2["CallingCardShowcaseList"] = registerVal41
	registerVal43 = {}
	registerVal43["right"] = registerVal41
	registerVal39["navigation"] = registerVal43
	registerVal43 = {}
	registerVal43["left"] = registerVal39
	registerVal41["navigation"] = registerVal43
	registerVal43 = {}
	local registerVal45 = {}
	local function __FUNC_4A19_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_4C6C_(arg0, arg1)
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
		__FUNC_4C6C_(registerVal8, {})
		local function __FUNC_4E21_(arg0, arg1)
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
		registerVal11:registerEventHandler("transition_complete_keyframe", __FUNC_4E21_)
		local function __FUNC_4FD5_(arg0, arg1)
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
		registerVal12:registerEventHandler("transition_complete_keyframe", __FUNC_4FD5_)
	end

	registerVal45["DefaultClip"] = __FUNC_4A19_
	registerVal43["DefaultState"] = registerVal45
	registerVal2["clipsPerState"] = registerVal43
	CoD["Menu"]["AddNavigationHandler"](arg0, registerVal2, arg1)
	local function __FUNC_5189_(arg0)
		CombatRecordProfileSnapshotDownloadScreenshot(arg1)
	end

	registerVal2:subscribeToGlobalModel(arg1, "PerController", "CombatRecordProfileSnapshot.fileId", __FUNC_5189_)
	registerVal39.id = "PrimaryProfileSnapshot"
	registerVal41.id = "CallingCardShowcaseList"
	local function __FUNC_51FB_(arg0, arg1)
		local registerVal2 = arg0.PrimaryProfileSnapshot:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_51FB_)
	local function __FUNC_530A_(arg0)
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
		arg0.PrimaryProfileSnapshot:close()
		arg0.CallingCardShowcaseList:close()
		arg0.Rank:close()
	end

	LUI["OverrideFunction_CallOriginalSecond"](registerVal2, "close", __FUNC_530A_)
	if __FUNC_450_ then
		__FUNC_450_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.CombatRecordSummaryPanel.new = __FUNC_50B_
