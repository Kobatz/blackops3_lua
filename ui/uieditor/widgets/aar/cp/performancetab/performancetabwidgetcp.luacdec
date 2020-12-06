-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.CP_DamageWidget.DamageWidgetMP_PanelContainer")
require("ui.uieditor.widgets.VehicleHUDs.Ground.VehicleGround_VignetteBack")
require("ui.uieditor.widgets.AAR.PerformanceTab.XpBarContainer")
require("ui.uieditor.widgets.AAR.PerformanceTab.ScoreWidget")
require("ui.uieditor.widgets.AAR.PerformanceTab.BestWidgetContainer")
require("ui.uieditor.widgets.MissionRecordVault.MissionRecordVault_PerformanceCollectible")
require("ui.uieditor.widgets.StartMenu.StartMenu_Identity_SubTitle")
require("ui.uieditor.widgets.MissionRecordVault.MissionRecordVault_Heading")
local function __FUNC_481_(arg0, arg1)
	CoD.AARUtility.SetCurrLevelModels(arg1, 1.000000)
	CoD.AARUtility.SetNextLevelModels(arg1, 1.000000)
end

local function __FUNC_55A_(arg0, arg1, arg2)
	CoD.AARUtility.DoXPBarAnimation(arg0, arg1)
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.PerformanceTabWidgetCP = registerVal3
local function __FUNC_5E7_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_481_ then
		__FUNC_481_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PerformanceTabWidgetCP)
	registerVal2.id = "PerformanceTabWidgetCP"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 1150.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 526.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.DamageWidgetMP_PanelContainer.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, -14.000000, 374.380000)
	registerVal3:setTopBottom(false, false, -265.130000, 190.460000)
	registerVal3:setRGB(0.250000, 0.250000, 0.250000)
	registerVal3.PanelAmmo0:setShaderVector(0.000000, 30.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Panel10 = registerVal3
	local registerVal4 = CoD.DamageWidgetMP_PanelContainer.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 377.000000, 772.380000)
	registerVal4:setTopBottom(false, false, -265.130000, 190.460000)
	registerVal4:setRGB(0.250000, 0.250000, 0.250000)
	registerVal4.PanelAmmo0:setShaderVector(0.000000, 30.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Panel20 = registerVal4
	local registerVal5 = CoD.DamageWidgetMP_PanelContainer.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 775.000000, 1162.620000)
	registerVal5:setTopBottom(false, false, -265.130000, 190.460000)
	registerVal5:setRGB(0.250000, 0.250000, 0.250000)
	registerVal5.PanelAmmo0:setShaderVector(0.000000, 30.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.Panel30 = registerVal5
	local registerVal6 = CoD.DamageWidgetMP_PanelContainer.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -631.000000, 587.620000)
	registerVal6:setTopBottom(false, false, 191.580000, 257.990000)
	registerVal6:setRGB(0.250000, 0.250000, 0.250000)
	registerVal6.PanelAmmo0:setShaderVector(0.000000, 30.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.Panel40 = registerVal6
	local registerVal7 = CoD.VehicleGround_VignetteBack.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, -65.000000, 65.000000)
	registerVal7:setTopBottom(true, false, -84.500000, 635.500000)
	registerVal2:addElement(registerVal7)
	registerVal2.VignetteBack = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 5.000000, 363.000000)
	registerVal8:setTopBottom(true, false, 262.300000, 270.870000)
	registerVal8:setAlpha(0.330000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.CategoryListLine = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 393.000000, 755.000000)
	registerVal9:setTopBottom(true, false, 262.300000, 270.870000)
	registerVal9:setAlpha(0.330000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.CategoryListLine0 = registerVal9
	local registerVal10 = CoD.XpBarContainer.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 50.000000, 1092.620000)
	registerVal10:setTopBottom(true, false, 456.790000, 511.000000)
	registerVal10.XPEarnedDisplay.SubTitle:setText(Engine.Localize("MENU_XP_EARNED_CAPS"))
	registerVal10.ProgressDescription.SubTitle:setText(Engine.Localize("MENU_PROGRESS_TO_NEXT_LEVEL_CAPS"))
	registerVal10.NextLevelDisplay.SubTitle:setText(Engine.Localize("MENU_NEXT_LEVEL_XP_NEEDED"))
	local function __FUNC_2677_(arg0)
		registerVal10:setModel(arg0, arg1)
	end

	registerVal10:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "xpBarInfo", __FUNC_2677_)
	registerVal2:addElement(registerVal10)
	registerVal2.XpBarContainer = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 113.780000, 227.840000)
	registerVal11:setTopBottom(true, false, 322.300000, 436.890000)
	local function __FUNC_26C6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setImage(RegisterImage(DifficultyIconFromNumber(registerVal1)))
		end
	end

	registerVal11:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "difficulty", __FUNC_26C6_)
	registerVal2:addElement(registerVal11)
	registerVal2.DifficultyImage = registerVal11
	local registerVal12 = CoD.ScoreWidget.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 426.000000, 562.770000)
	registerVal12:setTopBottom(true, false, 96.300000, 225.660000)
	registerVal12.ScoreLabel:setText(Engine.Localize("MENU_KILLS_CAPS"))
	registerVal12.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_KILLS_CAPS"))
	local function __FUNC_27A2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.Score.Numbers:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal12:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "kills", __FUNC_27A2_)
	registerVal2:addElement(registerVal12)
	registerVal2.Kills = registerVal12
	local registerVal13 = CoD.ScoreWidget.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 589.230000, 726.000000)
	registerVal13:setTopBottom(true, false, 96.300000, 225.660000)
	registerVal13.ScoreLabel:setText(Engine.Localize("MPUI_ASSISTS_CAPS"))
	registerVal13.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MPUI_ASSISTS_CAPS"))
	local function __FUNC_2892_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.Score.Numbers:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal13:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "assists", __FUNC_2892_)
	registerVal2:addElement(registerVal13)
	registerVal2.Assists = registerVal13
	local registerVal14 = CoD.BestWidgetContainer.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 108.780000, 159.780000)
	registerVal14:setTopBottom(true, false, 319.300000, 369.870000)
	local function __FUNC_2982_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14:setAlpha(registerVal1)
		end
	end

	registerVal14:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "showBestDifficultyIcon", __FUNC_2982_)
	local function __FUNC_2A15_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14.BestIconForKDR:setAlpha(registerVal1)
		end
	end

	registerVal14:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "showBestScoreIcon", __FUNC_2A15_)
	registerVal2:addElement(registerVal14)
	registerVal2.BestCompletionTime = registerVal14
	local registerVal15 = CoD.ScoreWidget.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 589.230000, 726.000000)
	registerVal15:setTopBottom(true, false, 299.580000, 427.440000)
	registerVal15.ScoreLabel:setText(Engine.Localize("MENU_INCAPS_CAPS"))
	registerVal15.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_INCAPS_CAPS"))
	local function __FUNC_2ACD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15.Score.Numbers:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal15:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "incaps", __FUNC_2ACD_)
	registerVal2:addElement(registerVal15)
	registerVal2.Incaps = registerVal15
	local registerVal16 = CoD.ScoreWidget.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, 426.000000, 562.770000)
	registerVal16:setTopBottom(true, false, 299.580000, 427.440000)
	registerVal16.ScoreLabel:setText(Engine.Localize("MPUI_REVIVES_CAPS"))
	registerVal16.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MPUI_REVIVES_CAPS"))
	local function __FUNC_2BBE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16.Score.Numbers:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal16:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "revives", __FUNC_2BBE_)
	registerVal2:addElement(registerVal16)
	registerVal2.Revives = registerVal16
	local registerVal17 = CoD.BestWidgetContainer.new(arg0, arg1)
	registerVal17:setLeftRight(true, false, 420.890000, 471.890000)
	registerVal17:setTopBottom(true, false, 124.800000, 175.370000)
	local function __FUNC_2CAE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.BestIconForKDR:setAlpha(registerVal1)
		end
	end

	registerVal17:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "showBestKillsIcon", __FUNC_2CAE_)
	registerVal2:addElement(registerVal17)
	registerVal2.BestKills = registerVal17
	local registerVal18 = LUI.GridLayout.new(arg0, arg1, false, 0.000000, 0.000000, 7.000000, 0.000000, nil, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal18:setLeftRight(true, false, 865.310000, 1082.310000)
	registerVal18:setTopBottom(true, false, 128.440000, 427.440000)
	registerVal18:setDataSource("CollectiblesListAAR")
	registerVal18:setWidgetType(CoD.MissionRecordVault_PerformanceCollectible)
	registerVal18:setHorizontalCount(2.000000)
	registerVal18:setVerticalCount(3.000000)
	registerVal18:setSpacing(7.000000)
	registerVal2:addElement(registerVal18)
	registerVal2.Collectibles = registerVal18
	local registerVal19 = CoD.BestWidgetContainer.new(arg0, arg1)
	registerVal19:setLeftRight(true, false, 584.120000, 635.120000)
	registerVal19:setTopBottom(true, false, 124.800000, 175.370000)
	local function __FUNC_2D65_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal19.BestIconForKDR:setAlpha(registerVal1)
		end
	end

	registerVal19:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "showBestAssistsIcon", __FUNC_2D65_)
	registerVal2:addElement(registerVal19)
	registerVal2.BestAssists = registerVal19
	local registerVal20 = CoD.BestWidgetContainer.new(arg0, arg1)
	registerVal20:setLeftRight(true, false, 583.230000, 634.230000)
	registerVal20:setTopBottom(true, false, 328.500000, 379.060000)
	local function __FUNC_2E1D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal20.BestIconForKDR:setAlpha(registerVal1)
		end
	end

	registerVal20:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "showBestIncapsIcon", __FUNC_2E1D_)
	registerVal2:addElement(registerVal20)
	registerVal2.BestIncaps = registerVal20
	local registerVal21 = CoD.BestWidgetContainer.new(arg0, arg1)
	registerVal21:setLeftRight(true, false, 420.000000, 471.000000)
	registerVal21:setTopBottom(true, false, 328.500000, 379.060000)
	local function __FUNC_2ED5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal21.BestIconForKDR:setAlpha(registerVal1)
		end
	end

	registerVal21:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "showBestRevivesIcon", __FUNC_2ED5_)
	registerVal2:addElement(registerVal21)
	registerVal2.BestRevives = registerVal21
	local registerVal22 = CoD.ScoreWidget.new(arg0, arg1)
	registerVal22:setLeftRight(true, false, 50.000000, 303.770000)
	registerVal22:setTopBottom(true, false, 96.000000, 225.660000)
	registerVal22.ScoreLabel:setText(Engine.Localize("MENU_SCORE_CAPS"))
	registerVal22.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_SCORE_CAPS"))
	local function __FUNC_2F8D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal22.Score.Numbers:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal22:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "score", __FUNC_2F8D_)
	registerVal2:addElement(registerVal22)
	registerVal2.Kills0 = registerVal22
	local registerVal23 = CoD.BestWidgetContainer.new(arg0, arg1)
	registerVal23:setLeftRight(true, false, 43.650000, 94.650000)
	registerVal23:setTopBottom(true, false, 126.800000, 177.370000)
	local function __FUNC_307E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal23.BestIconForKDR:setAlpha(registerVal1)
		end
	end

	registerVal23:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "showBestScoreIcon", __FUNC_307E_)
	registerVal2:addElement(registerVal23)
	registerVal2.BestWidgetContainer0 = registerVal23
	local registerVal24 = CoD.StartMenu_Identity_SubTitle.new(arg0, arg1)
	registerVal24:setLeftRight(true, false, 865.310000, 1082.310000)
	registerVal24:setTopBottom(true, false, 93.000000, 119.000000)
	registerVal24.SubTitle:setText(Engine.Localize("MENU_COLLECTIBLES_CAPS"))
	registerVal24.SubTitle:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal24)
	registerVal2.StartMenuIdentitySubTitle0 = registerVal24
	local registerVal25 = CoD.StartMenu_Identity_SubTitle.new(arg0, arg1)
	registerVal25:setLeftRight(true, false, 50.000000, 147.630000)
	registerVal25:setTopBottom(true, false, 296.000000, 322.560000)
	registerVal25.SubTitle:setText(Engine.Localize("MENU_DIFFICULTY_CAPS"))
	registerVal25.SubTitle:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal25)
	registerVal2.StartMenuIdentitySubTitle00 = registerVal25
	local registerVal26 = LUI.UIImage.new()
	registerVal26:setLeftRight(true, false, -76.140000, 469.860000)
	registerVal26:setTopBottom(true, false, 5.000000, 75.000000)
	registerVal26:setImage(RegisterImage("uie_t7_menu_cp_vault_pri_title_bg"))
	registerVal2:addElement(registerVal26)
	registerVal2.TitleBG = registerVal26
	local registerVal27 = LUI.UITightText.new()
	registerVal27:setLeftRight(true, false, 9.860000, 299.860000)
	registerVal27:setTopBottom(true, false, 50.000000, 68.000000)
	registerVal27:setAlpha(0.500000)
	registerVal27:setText(Engine.Localize("MENU_MISSION_OVERVIEW_CAP"))
	registerVal27:setTTF("fonts/escom.ttf")
	registerVal27:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal27:setShaderVector(0.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal27:setShaderVector(1.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal27:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal27:setLetterSpacing(1.000000)
	registerVal2:addElement(registerVal27)
	registerVal2.Subtitle = registerVal27
	local registerVal28 = CoD.MissionRecordVault_Heading.new(arg0, arg1)
	registerVal28:setLeftRight(true, false, -9.000000, 1281.620000)
	registerVal28:setTopBottom(true, false, -3.000000, 100.000000)
	registerVal28.Title:setText(Engine.Localize("MENU_MISSION_COMPLETE_CAPS"))
	registerVal2:addElement(registerVal28)
	registerVal2.MissionRecordVaultHeading = registerVal28
	local registerVal29 = {}
	local registerVal30 = {}
	local function __FUNC_3135_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal13:completeAnimation()
		registerVal2.Assists:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal15:completeAnimation()
		registerVal2.Incaps:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.Revives:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal19:completeAnimation()
		registerVal2.BestAssists:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.BestIncaps:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.BestRevives:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal21, {})
	end

	registerVal30.DefaultClip = __FUNC_3135_
	registerVal29.DefaultState = registerVal30
	registerVal30 = {}
	local function __FUNC_33E6_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal4:completeAnimation()
		registerVal2.Panel20:setLeftRight(false, false, -197.690000, 197.690000)
		registerVal2.Panel20:setTopBottom(false, false, -265.130000, 190.460000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal9:completeAnimation()
		registerVal2.CategoryListLine0:setLeftRight(true, false, 393.310000, 755.310000)
		registerVal2.CategoryListLine0:setTopBottom(true, false, 261.870000, 269.870000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal12:completeAnimation()
		registerVal2.Kills:setLeftRight(true, false, 455.160000, 700.540000)
		registerVal2.Kills:setTopBottom(true, false, 96.870000, 225.220000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Assists:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal15:completeAnimation()
		registerVal2.Incaps:setLeftRight(true, false, 455.160000, 700.540000)
		registerVal2.Incaps:setTopBottom(true, false, 301.560000, 428.870000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.Revives:setLeftRight(true, false, 426.310000, 563.080000)
		registerVal2.Revives:setTopBottom(true, false, 261.560000, 388.870000)
		registerVal2.Revives:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.BestKills:setLeftRight(true, false, 449.620000, 500.620000)
		registerVal2.BestKills:setTopBottom(true, false, 126.200000, 176.200000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal19:completeAnimation()
		registerVal2.BestAssists:setLeftRight(true, false, 584.120000, 635.120000)
		registerVal2.BestAssists:setTopBottom(true, false, 125.800000, 176.370000)
		registerVal2.BestAssists:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.BestIncaps:setLeftRight(true, false, 449.620000, 500.620000)
		registerVal2.BestIncaps:setTopBottom(true, false, 330.220000, 380.220000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.BestRevives:setLeftRight(true, false, 420.310000, 471.310000)
		registerVal2.BestRevives:setTopBottom(true, false, 293.060000, 343.060000)
		registerVal2.BestRevives:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
	end

	registerVal30.DefaultClip = __FUNC_33E6_
	registerVal29.Solo = registerVal30
	registerVal2.clipsPerState = registerVal29
	local registerVal31 = {}
	local registerVal32 = {}
	registerVal32.stateName = "Solo"
	local function __FUNC_3AE8_(arg0, arg2, arg3)
		return WasCampaignSoloGame(arg1)
	end

	registerVal32.condition = __FUNC_3AE8_
	registerVal31 = {registerVal32}
	registerVal2:mergeStateConditions(registerVal31)
	local function __FUNC_3B41_(arg0)
		arg0.Panel10:close()
		arg0.Panel20:close()
		arg0.Panel30:close()
		arg0.Panel40:close()
		arg0.VignetteBack:close()
		arg0.XpBarContainer:close()
		arg0.Kills:close()
		arg0.Assists:close()
		arg0.BestCompletionTime:close()
		arg0.Incaps:close()
		arg0.Revives:close()
		arg0.BestKills:close()
		arg0.Collectibles:close()
		arg0.BestAssists:close()
		arg0.BestIncaps:close()
		arg0.BestRevives:close()
		arg0.Kills0:close()
		arg0.BestWidgetContainer0:close()
		arg0.StartMenuIdentitySubTitle0:close()
		arg0.StartMenuIdentitySubTitle00:close()
		arg0.MissionRecordVaultHeading:close()
		arg0.DifficultyImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3B41_)
	if __FUNC_55A_ then
		__FUNC_55A_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.PerformanceTabWidgetCP.new = __FUNC_5E7_
