-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.Ground.VehicleGround_VignetteBack")
require("ui.uieditor.widgets.Footer.fe_LeftContainer_NOTLobby")
require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.Barracks.CombatRecordCallingCard")
require("ui.uieditor.widgets.Social.Social_CallingCard")
require("ui.uieditor.widgets.Barracks.CombatRecordSummaryStat")
require("ui.uieditor.widgets.Scorestreaks.scorestreaks_BoxLabel")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.Primary_Profile_Snapshot")
require("ui.uieditor.widgets.Barracks.CombatRecord_LineDivider")
function LUI.createMenu.Social_InspectPlayerPopup(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Social_InspectPlayerPopup")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "MultiplayerMain"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Social_InspectPlayerPopup.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.VehicleGround_VignetteBack.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.750000)
	registerVal1:addElement(registerVal3)
	registerVal1.VignetteBack = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.120000, 0.120000, 0.120000)
	registerVal4:setAlpha(0.700000)
	registerVal1:addElement(registerVal4)
	registerVal1.darkbg = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 105.000000, -107.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.900000)
	registerVal1:addElement(registerVal5)
	registerVal1.Black = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 13.500000, 1294.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal6:setAlpha(0.250000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_welcome_bg2"))
	registerVal1:addElement(registerVal6)
	registerVal1.TextureBackground = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, -21.000000, 25.000000)
	registerVal7:setTopBottom(false, false, -254.000000, -246.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setAlpha(0.700000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_barfocussolidfull"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal7:setShaderVector(0.000000, 0.003017, 0.500000, 0.000000, 0.000000)
	registerVal7:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.FEFocusBarSolid = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, -24.000000, 25.000000)
	registerVal8:setTopBottom(false, false, -257.000000, -249.000000)
	registerVal8:setRGB(1.000000, 0.900000, 0.800000)
	registerVal8:setAlpha(0.990000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_barfocusfull"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal8:setShaderVector(0.000000, 0.003010, 0.500000, 0.000000, 0.000000)
	registerVal8:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.FEFocusBarAdd = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, true, -21.000000, 25.000000)
	registerVal9:setTopBottom(false, false, 248.500000, 256.500000)
	registerVal9:setRGB(0.000000, 0.000000, 0.000000)
	registerVal9:setAlpha(0.700000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_frontend_barfocussolidfull"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal9:setShaderVector(0.000000, 0.003017, 0.500000, 0.000000, 0.000000)
	registerVal9:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.FEFocusBarSolid0 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, -24.000000, 25.000000)
	registerVal10:setTopBottom(false, false, 248.500000, 256.500000)
	registerVal10:setRGB(1.000000, 0.900000, 0.800000)
	registerVal10:setAlpha(0.990000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_barfocusfull"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal10:setShaderVector(0.000000, 0.003010, 0.500000, 0.000000, 0.000000)
	registerVal10:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal10)
	registerVal1.FEFocusBarAdd0 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal11:setTopBottom(false, true, -147.500000, -111.500000)
	registerVal11:setRGB(0.130000, 0.110000, 0.120000)
	registerVal11:setAlpha(0.000000)
	registerVal1:addElement(registerVal11)
	registerVal1.buttonBacking = registerVal11
	local registerVal12 = CoD.fe_LeftContainer_NOTLobby.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 53.000000, 485.000000)
	registerVal12:setTopBottom(false, true, -153.500000, -121.500000)
	registerVal1:addElement(registerVal12)
	registerVal1.buttons = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(false, false, -160.000000, -59.000000)
	registerVal13:setTopBottom(true, false, 148.000000, 249.000000)
	registerVal13:setImage(RegisterImage(GetRankIconLarge(CombatRecordGetRankIcon(arg0, "uie_t7_icon_rank_mp_level_25_lrg"))))
	registerVal1:addElement(registerVal13)
	registerVal1.RankIcon = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(false, false, -165.000000, -37.000000)
	registerVal14:setTopBottom(true, false, 133.000000, 261.000000)
	registerVal14:setImage(RegisterImage(GetArenaRankIconLG(CombatRecordGetStat(arg0, "arenaBest.points", "uie_t7_icon_rank_arena_level_21_lrg"))))
	registerVal1:addElement(registerVal14)
	registerVal1.ArenaRankIcon = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(false, false, -19.000000, 127.000000)
	registerVal15:setTopBottom(true, false, 169.000000, 197.000000)
	registerVal15:setAlpha(0.700000)
	registerVal1:addElement(registerVal15)
	registerVal1.RankNameBackground = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(false, false, -19.000000, 127.000000)
	registerVal16:setTopBottom(true, false, 197.000000, 225.000000)
	registerVal16:setRGB(0.000000, 0.000000, 0.000000)
	registerVal16:setAlpha(0.800000)
	registerVal1:addElement(registerVal16)
	registerVal1.RankBackground = registerVal16
	local registerVal17 = LUI.UIText.new()
	registerVal17:setLeftRight(false, false, -19.000000, 127.000000)
	registerVal17:setTopBottom(true, false, 173.000000, 193.000000)
	registerVal17:setRGB(0.000000, 0.000000, 0.000000)
	registerVal17:setText(Engine.Localize(CombatRecordGetRankTitle(arg0, "Vindicator")))
	registerVal17:setTTF("fonts/escom.ttf")
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal17:setShaderVector(0.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal17:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal17:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal17:setLetterSpacing(1.000000)
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal17)
	registerVal1.RankName = registerVal17
	local registerVal18 = LUI.UIText.new()
	registerVal18:setLeftRight(false, false, -11.000000, 135.000000)
	registerVal18:setTopBottom(true, false, 173.000000, 193.000000)
	registerVal18:setRGB(0.000000, 0.000000, 0.000000)
	registerVal18:setText(Engine.Localize(SetValueIfEmptyString("--", CombatRecordGetArenaBestPlaylistName(arg0, "-"))))
	registerVal18:setTTF("fonts/escom.ttf")
	registerVal18:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal18:setShaderVector(0.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal18:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal18:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal18:setLetterSpacing(1.000000)
	registerVal18:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal18:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal18)
	registerVal1.ArenaRankName = registerVal18
	local registerVal19 = LUI.UIText.new()
	registerVal19:setLeftRight(false, false, -19.000000, 127.000000)
	registerVal19:setTopBottom(true, false, 197.000000, 225.000000)
	registerVal19:setRGB(CombatRecordGetParagonColorByRank(arg0, 255.000000, 255.000000, 255.000000, 1.000000, 1.000000, 1.000000))
	registerVal19:setText(RankToLevelString("mp", CombatRecordGetStat(arg0, "playerstatslist.rank", "Level 88")))
	registerVal19:setTTF("fonts/escom.ttf")
	registerVal19:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal19:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal19)
	registerVal1.Rank = registerVal19
	local registerVal20 = LUI.UIText.new()
	registerVal20:setLeftRight(false, false, -11.000000, 135.000000)
	registerVal20:setTopBottom(true, false, 198.500000, 223.500000)
	registerVal20:setText(Engine.Localize(GetArenaRankName(CombatRecordGetStat(arg0, "arenaBest.points", "Rank 15"))))
	registerVal20:setTTF("fonts/escom.ttf")
	registerVal20:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal20:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal20)
	registerVal1.ArenaRank = registerVal20
	local registerVal21 = CoD.StartMenu_frame_noBG.new(registerVal1, arg0)
	registerVal21:setLeftRight(false, false, -22.000000, 130.000000)
	registerVal21:setTopBottom(true, false, 165.500000, 226.500000)
	registerVal1:addElement(registerVal21)
	registerVal1.StartMenuframenoBG00 = registerVal21
	local registerVal22 = LUI.UIList.new(registerVal1, arg0, 4.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal22:makeFocusable()
	registerVal22:setLeftRight(true, false, 490.500000, 790.500000)
	registerVal22:setTopBottom(true, false, 312.500000, 545.500000)
	registerVal22:setWidgetType(CoD.CombatRecordCallingCard)
	registerVal22:setVerticalCount(3.000000)
	registerVal22:setSpacing(4.000000)
	registerVal22:setDataSource("CombatRecordCallingCardShowcase")
	registerVal1:addElement(registerVal22)
	registerVal1.CallingCardShowcaseList = registerVal22
	local registerVal23 = LUI.UITightText.new()
	registerVal23:setLeftRight(true, false, 490.500000, 650.500000)
	registerVal23:setTopBottom(true, false, 281.500000, 306.500000)
	registerVal23:setText(Engine.Localize("MENU_CALLING_CARD_SHOWCASE_CAPS"))
	registerVal23:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal23)
	registerVal1.CallingCardShowcaseLabel = registerVal23
	local registerVal24 = CoD.Social_CallingCard.new(registerVal1, arg0)
	registerVal24:setLeftRight(true, false, 83.000000, 411.000000)
	registerVal24:setTopBottom(true, false, 156.200000, 235.800000)
	local function __FUNC_407A_(arg1)
		registerVal24:setModel(arg1, arg0)
	end

	registerVal24:subscribeToGlobalModel(arg0, "SocialPlayerInfo", nil, __FUNC_407A_)
	local function __FUNC_40CA_(arg1)
		registerVal24.CallingCardsFrameWidget:setModel(arg1, arg0)
	end

	registerVal24:subscribeToGlobalModel(arg0, "SocialPlayerInfo", nil, __FUNC_40CA_)
	registerVal1:addElement(registerVal24)
	registerVal1.callingCard = registerVal24
	local registerVal25 = CoD.CombatRecordSummaryStat.new(registerVal1, arg0)
	registerVal25:setLeftRight(true, false, 840.250000, 945.420000)
	registerVal25:setTopBottom(true, false, 189.800000, 235.800000)
	registerVal25.StatLabel:setText(Engine.Localize("MENU_KILLS_CAPS"))
	registerVal25.StatValue:setText(Engine.Localize(CombatRecordGetStat(arg0, "playerstatslist.kills", "888")))
	registerVal1:addElement(registerVal25)
	registerVal1.Kills = registerVal25
	local registerVal26 = CoD.CombatRecordSummaryStat.new(registerVal1, arg0)
	registerVal26:setLeftRight(true, false, 956.420000, 1071.090000)
	registerVal26:setTopBottom(true, false, 189.800000, 235.800000)
	registerVal26.StatLabel:setText(Engine.Localize("MENU_WINS_CAPS"))
	registerVal26.StatValue:setText(Engine.Localize(CombatRecordGetStat(arg0, "playerstatslist.wins", "888")))
	registerVal1:addElement(registerVal26)
	registerVal1.Wins = registerVal26
	local registerVal27 = CoD.CombatRecordSummaryStat.new(registerVal1, arg0)
	registerVal27:setLeftRight(true, false, 1077.090000, 1200.750000)
	registerVal27:setTopBottom(true, false, 190.800000, 236.800000)
	registerVal27.StatLabel:setText(Engine.Localize("MENU_SCORE_CAPS"))
	registerVal27.StatValue:setText(Engine.Localize(CombatRecordGetStat(arg0, "playerstatslist.score", "888")))
	registerVal1:addElement(registerVal27)
	registerVal1.Score = registerVal27
	local registerVal28 = LUI.UIText.new()
	registerVal28:setLeftRight(true, false, 863.750000, 1163.750000)
	registerVal28:setTopBottom(true, false, 137.500000, 162.500000)
	registerVal28:setText(Engine.Localize("MENU_PUBLIC_MATCH_CAREER_CAPS"))
	registerVal28:setTTF("fonts/default.ttf")
	registerVal28:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal28:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal28)
	registerVal1.PublicMatchCareerLabel = registerVal28
	local registerVal29 = LUI.UIText.new()
	registerVal29:setLeftRight(true, false, 863.750000, 1163.750000)
	registerVal29:setTopBottom(true, false, 136.500000, 161.500000)
	registerVal29:setAlpha(0.000000)
	registerVal29:setText(Engine.Localize("MENU_ARENA_CAREER_CAPS"))
	registerVal29:setTTF("fonts/default.ttf")
	registerVal29:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal29:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal29)
	registerVal1.ArenaCareerLabel = registerVal29
	local registerVal30 = LUI.UITightText.new()
	registerVal30:setLeftRight(true, false, 83.250000, 243.250000)
	registerVal30:setTopBottom(true, false, 281.500000, 306.500000)
	registerVal30:setText(Engine.Localize("MENU_DEADLIEST_SPECIALIST_CAPS"))
	registerVal30:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal30)
	registerVal1.FavoriteSpecialistLabel = registerVal30
	local registerVal31 = LUI.UIImage.new()
	registerVal31:setLeftRight(true, false, 83.250000, 316.250000)
	registerVal31:setTopBottom(true, false, 312.500000, 545.500000)
	local function __FUNC_4147_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal31:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal31:subscribeToGlobalModel(arg0, "FavoriteSpecialist", "heroImage", __FUNC_4147_)
	registerVal1:addElement(registerVal31)
	registerVal1.FavoriteSpecialistImage = registerVal31
	local registerVal32 = CoD.scorestreaks_BoxLabel.new(registerVal1, arg0)
	registerVal32:setLeftRight(true, false, 83.250000, 316.250000)
	registerVal32:setTopBottom(true, false, 526.500000, 545.500000)
	local function __FUNC_41F8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal32.name:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal32:subscribeToGlobalModel(arg0, "FavoriteSpecialist", "displayString", __FUNC_41F8_)
	registerVal1:addElement(registerVal32)
	registerVal1.FavoriteSpecialistName = registerVal32
	local registerVal33 = CoD.cac_ButtonBoxLrgInactive.new(registerVal1, arg0)
	registerVal33:setLeftRight(true, true, 83.250000, -831.500000)
	registerVal33:setTopBottom(true, true, 312.500000, -174.500000)
	registerVal33:setRGB(0.870000, 0.970000, 1.000000)
	registerVal33:setAlpha(0.400000)
	registerVal1:addElement(registerVal33)
	registerVal1.BoxButtonLrgInactive = registerVal33
	local registerVal34 = CoD.CombatRecordSummaryStat.new(registerVal1, arg0)
	registerVal34:setLeftRight(true, false, 324.840000, 430.000000)
	registerVal34:setTopBottom(true, false, 336.000000, 382.000000)
	registerVal34.StatLabel:setText(Engine.Localize("MENU_KILLS_CAPS"))
	local function __FUNC_42CC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal34.StatValue:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal34:subscribeToGlobalModel(arg0, "FavoriteSpecialist", "numKills", __FUNC_42CC_)
	registerVal1:addElement(registerVal34)
	registerVal1.CombatRecordSummaryStat0 = registerVal34
	local registerVal35 = CoD.Primary_Profile_Snapshot.new(registerVal1, arg0)
	registerVal35:setLeftRight(true, false, 817.750000, 1209.750000)
	registerVal35:setTopBottom(true, false, 312.500000, 545.500000)
	registerVal35.ImageContainer.ImageContainer:setImage(RegisterImage("uie_img_t7_menu_startmenu_option_screenshots"))
	registerVal1:addElement(registerVal35)
	registerVal1.PrimaryProfileSnapshot = registerVal35
	local registerVal36 = LUI.UITightText.new()
	registerVal36:setLeftRight(true, false, 817.750000, 935.750000)
	registerVal36:setTopBottom(true, false, 281.500000, 306.500000)
	registerVal36:setText(Engine.Localize("MENU_PROFILE_SNAPSHOT_CAPS"))
	registerVal36:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal36)
	registerVal1.CallingCardShowcaseLabel0 = registerVal36
	local registerVal37 = LUI.UIImage.new()
	registerVal37:setLeftRight(true, true, 64.000000, -64.000000)
	registerVal37:setTopBottom(true, false, 135.500000, 138.000000)
	registerVal37:setAlpha(0.250000)
	registerVal37:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal37:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal37)
	registerVal1.Image500 = registerVal37
	local registerVal38 = LUI.UIImage.new()
	registerVal38:setLeftRight(true, true, 64.000000, -64.000000)
	registerVal38:setTopBottom(true, false, 260.500000, 263.500000)
	registerVal38:setAlpha(0.250000)
	registerVal38:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal38:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal38)
	registerVal1.Image50 = registerVal38
	local registerVal39 = LUI.UIImage.new()
	registerVal39:setLeftRight(true, false, 448.500000, 450.500000)
	registerVal39:setTopBottom(true, false, 136.750000, 261.800000)
	registerVal39:setAlpha(0.350000)
	registerVal39:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal39:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal39)
	registerVal1["Image0"] = registerVal39
	local registerVal40 = LUI.UIImage.new()
	registerVal40:setLeftRight(true, false, 816.500000, 818.500000)
	registerVal40:setTopBottom(true, false, 136.750000, 261.800000)
	registerVal40:setAlpha(0.350000)
	registerVal40:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal40:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal40)
	registerVal1["Image000"] = registerVal40
	local registerVal41 = CoD["CombatRecord_LineDivider"].new(registerVal1, arg0)
	registerVal41:setLeftRight(true, false, 437.000000, 462.000000)
	registerVal41:setTopBottom(true, false, 253.000000, 266.000000)
	registerVal41:"setZRot"(180.000000)
	registerVal1:addElement(registerVal41)
	registerVal1["CombatRecordLineDivider20"] = registerVal41
	local registerVal42 = CoD["CombatRecord_LineDivider"].new(registerVal1, arg0)
	registerVal42:setLeftRight(true, false, 437.000000, 462.000000)
	registerVal42:setTopBottom(true, false, 133.000000, 146.000000)
	registerVal1:addElement(registerVal42)
	registerVal1["CombatRecordLineDivider1"] = registerVal42
	local registerVal43 = CoD["CombatRecord_LineDivider"].new(registerVal1, arg0)
	registerVal43:setLeftRight(true, false, 805.000000, 830.000000)
	registerVal43:setTopBottom(true, false, 253.000000, 266.000000)
	registerVal43:"setZRot"(180.000000)
	registerVal1:addElement(registerVal43)
	registerVal1["CombatRecordLineDivider200"] = registerVal43
	local registerVal44 = CoD["CombatRecord_LineDivider"].new(registerVal1, arg0)
	registerVal44:setLeftRight(true, false, 805.000000, 830.000000)
	registerVal44:setTopBottom(true, false, 133.000000, 146.000000)
	registerVal1:addElement(registerVal44)
	registerVal1["CombatRecordLineDivider10"] = registerVal44
	local registerVal45 = LUI.UIImage.new()
	registerVal45:setLeftRight(true, true, 818.500000, -64.000000)
	registerVal45:setTopBottom(false, true, -560.500000, -554.500000)
	registerVal45:setAlpha(0.250000)
	registerVal45:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal45:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal45)
	registerVal1["Image00"] = registerVal45
	local registerVal46 = LUI.UIImage.new()
	registerVal46:setLeftRight(true, false, 952.500000, 954.500000)
	registerVal46:setTopBottom(true, false, 193.000000, 230.800000)
	registerVal46:setAlpha(0.350000)
	registerVal46:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal46:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal46)
	registerVal1["Image0000"] = registerVal46
	local registerVal47 = LUI.UIImage.new()
	registerVal47:setLeftRight(true, false, 1073.500000, 1075.500000)
	registerVal47:setTopBottom(true, false, 193.000000, 230.800000)
	registerVal47:setAlpha(0.350000)
	registerVal47:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal47:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal47)
	registerVal1["Image00000"] = registerVal47
	local registerVal48 = LUI.UIImage.new()
	registerVal48:setLeftRight(true, true, 64.000000, -1190.000000)
	registerVal48:setTopBottom(true, false, 132.500000, 140.500000)
	registerVal48:setAlpha(0.660000)
	registerVal48:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal48:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal48)
	registerVal1["Image3"] = registerVal48
	local registerVal49 = LUI.UIImage.new()
	registerVal49:setLeftRight(true, true, 64.000000, -1190.000000)
	registerVal49:setTopBottom(true, false, 257.800000, 265.800000)
	registerVal49:setAlpha(0.660000)
	registerVal49:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal49:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal49)
	registerVal1["Image30"] = registerVal49
	local registerVal50 = LUI.UIImage.new()
	registerVal50:setLeftRight(true, true, 1190.000000, -64.000000)
	registerVal50:setTopBottom(true, false, 257.800000, 265.800000)
	registerVal50:setAlpha(0.660000)
	registerVal50:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal50:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal50)
	registerVal1["Image31"] = registerVal50
	local registerVal51 = LUI.UIImage.new()
	registerVal51:setLeftRight(true, true, 1190.000000, -64.000000)
	registerVal51:setTopBottom(true, false, 132.500000, 140.500000)
	registerVal51:setAlpha(0.660000)
	registerVal51:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal51:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal51)
	registerVal1["Image310"] = registerVal51
	local registerVal52 = LUI.UIImage.new()
	registerVal52:setLeftRight(true, true, 324.840000, -850.000000)
	registerVal52:setTopBottom(false, true, -395.500000, -389.500000)
	registerVal52:setAlpha(0.250000)
	registerVal52:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal52:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal52)
	registerVal1["Image001"] = registerVal52
	local registerVal53 = LUI.UIImage.new()
	registerVal53:setLeftRight(true, true, 324.840000, -850.000000)
	registerVal53:setTopBottom(false, true, -334.500000, -328.500000)
	registerVal53:setAlpha(0.250000)
	registerVal53:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal53:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal53)
	registerVal1["Image0010"] = registerVal53
	local registerVal55 = {}
	registerVal55["right"] = registerVal35
	registerVal22["navigation"] = registerVal55
	registerVal55 = {}
	registerVal55["left"] = registerVal22
	registerVal35["navigation"] = registerVal55
	registerVal55 = {}
	local registerVal57 = {}
	local function __FUNC_43A5_()
		registerVal1:setupElementClipCounter(7.000000)
		registerVal13:completeAnimation()
		registerVal1.RankIcon:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.ArenaRankIcon:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal17:completeAnimation()
		registerVal1.RankName:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal1.ArenaRankName:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal18, {})
		registerVal20:completeAnimation()
		registerVal1.ArenaRank:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal20, {})
		registerVal28:completeAnimation()
		registerVal1.PublicMatchCareerLabel:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal28, {})
		registerVal29:completeAnimation()
		registerVal1.ArenaCareerLabel:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal29, {})
	end

	registerVal57["DefaultClip"] = __FUNC_43A5_
	registerVal55["DefaultState"] = registerVal57
	registerVal57 = {}
	local function __FUNC_46CE_()
		registerVal1:setupElementClipCounter(7.000000)
		registerVal13:completeAnimation()
		registerVal1.RankIcon:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.ArenaRankIcon:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal17:completeAnimation()
		registerVal1.RankName:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal1.ArenaRankName:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal1.Rank:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal19, {})
		registerVal28:completeAnimation()
		registerVal1.PublicMatchCareerLabel:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal28, {})
		registerVal29:completeAnimation()
		registerVal1.ArenaCareerLabel:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal29, {})
	end

	registerVal57["DefaultClip"] = __FUNC_46CE_
	registerVal55["Arena"] = registerVal57
	registerVal1["clipsPerState"] = registerVal55
	local registerVal56 = {}
	registerVal57 = {}
	registerVal57["stateName"] = "Arena"
	local function __FUNC_49F1_(arg0, arg1, arg2)
		return IsArenaMode()
	end

	registerVal57["condition"] = __FUNC_49F1_
	registerVal56 = {registerVal57}
	registerVal1:"mergeStateConditions"(registerVal56)
	registerVal57 = Engine["GetGlobalModel"]()
	registerVal56 = Engine["GetModel"](registerVal57, "lobbyRoot.lobbyNav")
	local function __FUNC_4A3D_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:"subscribeToModel"(registerVal56, __FUNC_4A3D_)
	CoD.Menu["AddNavigationHandler"](registerVal1, registerVal1, arg0)
	local function __FUNC_4B64_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_4BB8_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:"AddButtonCallbackFunction"(registerVal1, arg0, Enum["LUIButton"]["LUI_KEY_XBB_PSCIRCLE"], nil, __FUNC_4B64_, __FUNC_4BB8_, false)
	registerVal12:"setModel"(registerVal1.buttonModel, arg0)
	registerVal22["id"] = "CallingCardShowcaseList"
	registerVal35["id"] = "PrimaryProfileSnapshot"
	registerVal56 = {}
	registerVal56["name"] = "menu_loaded"
	registerVal56["controller"] = arg0
	registerVal1:"processEvent"(registerVal56)
	registerVal56 = {}
	registerVal56["name"] = "update_state"
	registerVal56["menu"] = registerVal1
	registerVal1:"processEvent"(registerVal56)
	local registerVal54 = registerVal1:"restoreState"()
	if not registerVal54 then
		registerVal56 = {}
		registerVal56["name"] = "gain_focus"
		registerVal56["controller"] = arg0
		registerVal1.PrimaryProfileSnapshot:"processEvent"(registerVal56)
	end
	local function __FUNC_4CB5_(arg1)
		arg1.VignetteBack:close()
		arg1.buttons:close()
		arg1.StartMenuframenoBG00:close()
		arg1.CallingCardShowcaseList:close()
		arg1.callingCard:close()
		arg1.Kills:close()
		arg1.Wins:close()
		arg1.Score:close()
		arg1.FavoriteSpecialistName:close()
		arg1.BoxButtonLrgInactive:close()
		arg1.CombatRecordSummaryStat0:close()
		arg1.PrimaryProfileSnapshot:close()
		arg1.CombatRecordLineDivider20:close()
		arg1.CombatRecordLineDivider1:close()
		arg1.CombatRecordLineDivider200:close()
		arg1.CombatRecordLineDivider10:close()
		arg1.FavoriteSpecialistImage:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Social_InspectPlayerPopup.buttonPrompts"))
	end

	LUI["OverrideFunction_CallOriginalSecond"](registerVal1, "close", __FUNC_4CB5_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

