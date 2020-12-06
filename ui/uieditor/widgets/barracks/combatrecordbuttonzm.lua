-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.StartMenu.StartMenu_Barracks_Stat")
require("ui.uieditor.widgets.StartMenu.StartMenu_Identity_SubTitle")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.Prestige.Prestige_MasterTierWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CombatRecordButtonZM = registerVal1
function CoD.CombatRecordButtonZM.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CombatRecordButtonZM)
	registerVal2.id = "CombatRecordButtonZM"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 707.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 298.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ButtonBoxLrgInactive.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal3:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal3:setRGB(0.870000, 0.970000, 1.000000)
	registerVal3:setAlpha(0.400000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxButtonLrgInactive = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 3.000000, -2.000000)
	registerVal4:setTopBottom(true, true, 3.000000, -3.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.050000)
	registerVal2:addElement(registerVal4)
	registerVal2.BlackTint = registerVal4
	local registerVal5 = CoD.cac_ButtonBoxLrgInactiveDiags.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, -1.000000)
	registerVal5:setTopBottom(true, true, 0.000000, -1.000000)
	registerVal5:setAlpha(0.300000)
	registerVal2:addElement(registerVal5)
	registerVal2.BoxButtonLrgInactiveDiag = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -298.000000, -170.000000)
	registerVal6:setTopBottom(true, false, 21.000000, 149.000000)
	local function __FUNC_2244_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setImage(RegisterImage(GetRankIconLarge(GetRankOrParagonIcon(arg1, "playerstatslist.rank.statvalue", "playerstatslist.plevel.statvalue", "playerstatslist.paragon_icon_id.statvalue", "zm", registerVal1))))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "StorageGlobal", "stats_zm", __FUNC_2244_)
	registerVal2:addElement(registerVal6)
	registerVal2.Emblem = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -330.500000, -136.000000)
	registerVal7:setTopBottom(true, false, 166.500000, 194.500000)
	registerVal7:setAlpha(0.600000)
	registerVal2:addElement(registerVal7)
	registerVal2.RankNameBackground = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -330.500000, -136.000000)
	registerVal8:setTopBottom(true, false, 196.500000, 224.500000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal8:setAlpha(0.800000)
	registerVal2:addElement(registerVal8)
	registerVal2.RankBackground = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(false, false, -307.000000, -161.000000)
	registerVal9:setTopBottom(true, false, 198.500000, 220.500000)
	registerVal9:setTTF("fonts/escom.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_23E5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setRGB(SetToParagonColorIfPrestigeMasterFromStorage(arg1, "zm", 255.000000, 255.000000, 255.000000, registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "StorageGlobal", "stats_zm", __FUNC_23E5_)
	local function __FUNC_24DA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setText(Engine.Localize(LevelStringFromStorage(arg1, "zm", registerVal1)))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "StorageGlobal", "stats_zm", __FUNC_24DA_)
	registerVal2:addElement(registerVal9)
	registerVal2.Rank = registerVal9
	local registerVal10 = CoD.StartMenu_Barracks_Stat.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 242.330000, 362.000000)
	registerVal10:setTopBottom(true, false, 47.000000, 108.000000)
	registerVal10.Value:setText(Engine.Localize("MPUI_KILLS"))
	local function __FUNC_25CE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.Title:setText(Engine.Localize(StorageLookup(arg1, "playerstatslist.kills.statvalue", registerVal1)))
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "StorageGlobal", "stats_zm", __FUNC_25CE_)
	registerVal2:addElement(registerVal10)
	registerVal2.TotalKills = registerVal10
	local registerVal11 = CoD.StartMenu_Barracks_Stat.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 404.080000, 523.750000)
	registerVal11:setTopBottom(true, false, 47.000000, 108.000000)
	registerVal11.Value:setText(Engine.Localize("MENU_ROUNDS_SURVIVED"))
	local function __FUNC_26F1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.Title:setText(Engine.Localize(StorageLookup(arg1, "playerstatslist.TOTAL_ROUNDS_SURVIVED.statvalue", registerVal1)))
		end
	end

	registerVal11:subscribeToGlobalModel(arg1, "StorageGlobal", "stats_zm", __FUNC_26F1_)
	registerVal2:addElement(registerVal11)
	registerVal2.StartMenuBarracksStat0 = registerVal11
	local registerVal12 = CoD.StartMenu_Barracks_Stat.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 565.830000, 685.500000)
	registerVal12:setTopBottom(true, false, 47.000000, 108.000000)
	registerVal12.Value:setText(Engine.Localize("MENU_AVERAGE_GAME_SCORE"))
	local function __FUNC_2825_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.Title:setText(Engine.Localize(StorageLookup(arg1, "playerstatslist.score.statvalue", registerVal1)))
		end
	end

	registerVal12:subscribeToGlobalModel(arg1, "StorageGlobal", "stats_zm", __FUNC_2825_)
	registerVal2:addElement(registerVal12)
	registerVal2.StartMenuBarracksStat1 = registerVal12
	local registerVal13 = CoD.StartMenu_Barracks_Stat.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 242.330000, 362.000000)
	registerVal13:setTopBottom(true, false, 153.000000, 214.000000)
	registerVal13.Value:setText(Engine.Localize("MPUI_HEADSHOTS"))
	local function __FUNC_2949_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.Title:setText(Engine.Localize(StorageLookup(arg1, "playerstatslist.headshots.statvalue", registerVal1)))
		end
	end

	registerVal13:subscribeToGlobalModel(arg1, "StorageGlobal", "stats_zm", __FUNC_2949_)
	registerVal2:addElement(registerVal13)
	registerVal2.StartMenuBarracksStat2 = registerVal13
	local registerVal14 = CoD.StartMenu_Barracks_Stat.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 404.080000, 523.750000)
	registerVal14:setTopBottom(true, false, 153.000000, 214.000000)
	registerVal14.Value:setText(Engine.Localize("MENU_AVERAGE_ROUNDS_PER_GAME"))
	local function __FUNC_2A71_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14.Title:setText(Engine.Localize(StorageLookupTwoStatRatioRounded(arg1, "playerstatslist.total_rounds_survived.statvalue", "playerstatslist.total_games_played.statvalue", registerVal1)))
		end
	end

	registerVal14:subscribeToGlobalModel(arg1, "StorageGlobal", "stats_zm", __FUNC_2A71_)
	registerVal2:addElement(registerVal14)
	registerVal2.StartMenuBarracksStat3 = registerVal14
	local registerVal15 = CoD.StartMenu_Barracks_Stat.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 565.830000, 685.500000)
	registerVal15:setTopBottom(true, false, 153.000000, 214.000000)
	registerVal15.Value:setText(Engine.Localize("MENU_SCORE_PER_MINUTE"))
	local function __FUNC_2BF2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15.Title:setText(Engine.Localize(StorageLookupSPM(arg1, "playerstatslist.score.statvalue", "playerstatslist.time_played_total.statvalue", registerVal1)))
		end
	end

	registerVal15:subscribeToGlobalModel(arg1, "StorageGlobal", "stats_zm", __FUNC_2BF2_)
	registerVal2:addElement(registerVal15)
	registerVal2.StartMenuBarracksStat4 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, true, 5.000000, -5.000000)
	registerVal16:setTopBottom(false, true, -44.000000, -5.000000)
	registerVal16:setRGB(0.000000, 0.000000, 0.000000)
	registerVal16:setAlpha(0.000000)
	registerVal2:addElement(registerVal16)
	registerVal2.ButtonTitleBG = registerVal16
	local registerVal17 = LUI.UIText.new()
	registerVal17:setLeftRight(true, true, 11.000000, -5.000000)
	registerVal17:setTopBottom(false, true, -44.000000, -5.000000)
	registerVal17:setAlpha(0.000000)
	registerVal17:setText(Engine.Localize("FEATURE_COMBAT_RECORD"))
	registerVal17:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal17)
	registerVal2.ButtonTitle = registerVal17
	local registerVal18 = LUI.UIText.new()
	registerVal18:setLeftRight(false, false, -307.000000, -161.000000)
	registerVal18:setTopBottom(true, false, 170.500000, 190.500000)
	registerVal18:setRGB(0.000000, 0.000000, 0.000000)
	registerVal18:setTTF("fonts/escom.ttf")
	registerVal18:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal18:setShaderVector(0.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal18:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal18:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal18:setLetterSpacing(1.000000)
	registerVal18:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal18:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_2D51_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal18:setText(Engine.Localize(RankTitleFromStorage(arg1, "zm", registerVal1)))
		end
	end

	registerVal18:subscribeToGlobalModel(arg1, "StorageGlobal", "stats_zm", __FUNC_2D51_)
	registerVal2:addElement(registerVal18)
	registerVal2.RankName = registerVal18
	local registerVal19 = CoD.StartMenu_Identity_SubTitle.new(arg0, arg1)
	registerVal19:setLeftRight(true, false, 5.000000, 361.000000)
	registerVal19:setTopBottom(true, false, 267.000000, 293.000000)
	registerVal19.SubTitle:setText(Engine.Localize("Combat"))
	registerVal19.SubTitle:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal19)
	registerVal2.StartMenuIdentitySubTitle0 = registerVal19
	local registerVal20 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal20:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal20:setTopBottom(true, false, -1.000000, 3.000000)
	registerVal20:setAlpha(0.000000)
	registerVal20:setZoom(1.000000)
	registerVal2:addElement(registerVal20)
	registerVal2.FocusBarT = registerVal20
	local registerVal21 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal21:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal21:setTopBottom(false, true, -3.000000, 1.000000)
	registerVal21:setAlpha(0.000000)
	registerVal21:setZoom(1.000000)
	registerVal2:addElement(registerVal21)
	registerVal2.FocusBarB = registerVal21
	local registerVal22 = LUI.UIImage.new()
	registerVal22:setLeftRight(true, true, 362.000000, -464.670000)
	registerVal22:setTopBottom(false, true, -168.000000, -160.000000)
	registerVal22:setAlpha(0.250000)
	registerVal22:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal22:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal22)
	registerVal2.Image0 = registerVal22
	local registerVal23 = LUI.UIImage.new()
	registerVal23:setLeftRight(true, true, 526.000000, -300.670000)
	registerVal23:setTopBottom(false, true, -168.000000, -160.000000)
	registerVal23:setAlpha(0.250000)
	registerVal23:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal23:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal23)
	registerVal2.Image1 = registerVal23
	local registerVal24 = LUI.UIImage.new()
	registerVal24:setLeftRight(true, true, 687.500000, -139.170000)
	registerVal24:setTopBottom(false, true, -168.000000, -160.000000)
	registerVal24:setAlpha(0.250000)
	registerVal24:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal24:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal24)
	registerVal2.Image2 = registerVal24
	local registerVal25 = LUI.UIImage.new()
	registerVal25:setLeftRight(true, false, 382.170000, 384.170000)
	registerVal25:setTopBottom(true, false, 48.500000, 217.000000)
	registerVal25:setAlpha(0.350000)
	registerVal25:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal25:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal25)
	registerVal2.Vline2 = registerVal25
	local registerVal26 = LUI.UIImage.new()
	registerVal26:setLeftRight(true, false, 545.170000, 547.170000)
	registerVal26:setTopBottom(true, false, 48.500000, 217.000000)
	registerVal26:setAlpha(0.350000)
	registerVal26:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal26:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal26)
	registerVal2.Image3 = registerVal26
	local registerVal27 = LUI.UIText.new()
	registerVal27:setLeftRight(true, false, 485.500000, 685.500000)
	registerVal27:setTopBottom(true, false, 247.000000, 267.000000)
	registerVal27:setTTF("fonts/default.ttf")
	registerVal27:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal27:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_2E44_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal27:setText(Engine.Localize(SecondsAsTimePlayedString(StorageLookup(arg1, "playerstatslist.time_played_total.statvalue", registerVal1))))
		end
	end

	registerVal27:subscribeToGlobalModel(arg1, "StorageGlobal", "stats_zm", __FUNC_2E44_)
	registerVal2:addElement(registerVal27)
	registerVal2.time = registerVal27
	local registerVal28 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal28:setLeftRight(false, false, -333.000000, -134.000000)
	registerVal28:setTopBottom(false, false, 15.500000, 77.500000)
	registerVal2:addElement(registerVal28)
	registerVal2.StartMenuframenoBG00 = registerVal28
	local registerVal29 = CoD.Prestige_MasterTierWidget.new(arg0, arg1)
	registerVal29:setLeftRight(false, false, -330.500000, -136.000000)
	registerVal29:setTopBottom(true, false, 224.500000, 248.500000)
	local function __FUNC_2F85_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal29.ParagonStars:setHorizontalCount(GetPrestigeMasterTierCountFromStorage(arg1, "zm", registerVal1))
		end
	end

	registerVal29:subscribeToGlobalModel(arg1, "StorageGlobal", "stats_zm", __FUNC_2F85_)
	local registerVal32 = {}
	local registerVal33 = {}
	registerVal33.stateName = "Visible"
	local function __FUNC_3090_(arg0, arg2, arg3)
		return IsMaxPrestigeLevelForMode(arg1, Enum.eModes.MODE_ZOMBIES)
	end

	registerVal33.condition = __FUNC_3090_
	registerVal32 = {registerVal33}
	registerVal29:mergeStateConditions(registerVal32)
	registerVal2:addElement(registerVal29)
	registerVal2.PrestigeMasterTierWidget = registerVal29
	local registerVal30 = {}
	local registerVal31 = {}
	local function __FUNC_313F_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BlackTint:setAlpha(0.050000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal20:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
	end

	registerVal31.DefaultClip = __FUNC_313F_
	local function __FUNC_33BD_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BlackTint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal20:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal21, {})
	end

	registerVal31.Focus = __FUNC_33BD_
	registerVal30.DefaultState = registerVal31
	registerVal2.clipsPerState = registerVal30
	local function __FUNC_363D_(arg0)
		arg0.BoxButtonLrgInactive:close()
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.TotalKills:close()
		arg0.StartMenuBarracksStat0:close()
		arg0.StartMenuBarracksStat1:close()
		arg0.StartMenuBarracksStat2:close()
		arg0.StartMenuBarracksStat3:close()
		arg0.StartMenuBarracksStat4:close()
		arg0.StartMenuIdentitySubTitle0:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.StartMenuframenoBG00:close()
		arg0.PrestigeMasterTierWidget:close()
		arg0.Emblem:close()
		arg0.Rank:close()
		arg0.RankName:close()
		arg0.time:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_363D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

