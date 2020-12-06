-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Common.common_PanelBox01")
require("ui.uieditor.widgets.AAR.PerformanceTab.ScoreWidget")
require("ui.uieditor.widgets.AAR.PerformanceTab.WinLossRatioWidget")
require("ui.uieditor.widgets.AAR.PerformanceTab.YellowLine")
require("ui.uieditor.widgets.AAR.PerformanceTab.SPMGraphWidget")
require("ui.uieditor.widgets.AAR.PerformanceTab.KDRGraphWidget")
require("ui.uieditor.widgets.StartMenu.StartMenu_Identity_SubTitle")
require("ui.uieditor.widgets.AAR.PerformanceTab.XpBarContainer")
require("ui.uieditor.widgets.AAR.PerformanceTab.TitleWidgetSmall")
require("ui.uieditor.widgets.AAR.PerformanceTab.BestWidgetContainer")
require("ui.uieditor.widgets.AAR.PerformanceTab.TitleWidget")
local function __FUNC_513_(arg0, arg1)
	CoD.AARUtility.DoXPBarAnimation(arg0, arg1)
end

local function __FUNC_59F_(arg0, arg1)
	CoD.AARUtility.SetCurrLevelModels(arg1, 1.000000)
	CoD.AARUtility.SetNextLevelModels(arg1, 1.000000)
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.PerformanceTabWidget = registerVal3
local function __FUNC_676_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_59F_ then
		__FUNC_59F_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PerformanceTabWidget)
	registerVal2.id = "PerformanceTabWidget"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 550.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.common_PanelBox01.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 34.000000, 360.000000)
	registerVal3:setTopBottom(true, false, 12.000000, 463.000000)
	registerVal3.Backing:setAlpha(0.050000)
	registerVal3.Image:setAlpha(0.250000)
	registerVal2:addElement(registerVal3)
	registerVal2.commonPanelBox01 = registerVal3
	local registerVal4 = CoD.common_PanelBox01.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 370.000000, 803.000000)
	registerVal4:setTopBottom(true, false, 12.000000, 463.000000)
	registerVal4.Backing:setAlpha(0.050000)
	registerVal4.Image:setAlpha(0.250000)
	registerVal2:addElement(registerVal4)
	registerVal2.commonPanelBox02 = registerVal4
	local registerVal5 = CoD.common_PanelBox01.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 813.000000, 1246.000000)
	registerVal5:setTopBottom(true, false, 12.000000, 463.000000)
	registerVal5.Backing:setAlpha(0.050000)
	registerVal5.Image:setAlpha(0.250000)
	registerVal2:addElement(registerVal5)
	registerVal2.commonPanelBox03 = registerVal5
	local registerVal6 = CoD.common_PanelBox01.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 33.000000, 1246.000000)
	registerVal6:setTopBottom(true, false, 466.590000, 534.000000)
	registerVal6.Backing:setAlpha(0.250000)
	registerVal6.Image:setAlpha(0.250000)
	registerVal2:addElement(registerVal6)
	registerVal2.commonPanelBox04 = registerVal6
	local registerVal7 = CoD.ScoreWidget.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 885.960000, 1021.960000)
	registerVal7:setTopBottom(true, false, 40.300000, 157.300000)
	registerVal7.ScoreLabel:setText(Engine.Localize("MENU_KILLS_CAPS"))
	registerVal7.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_KILLS_CAPS"))
	local function __FUNC_22E8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.Score.Numbers:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "kills", __FUNC_22E8_)
	registerVal2:addElement(registerVal7)
	registerVal2.KillsInfo = registerVal7
	local registerVal8 = CoD.ScoreWidget.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 1051.000000, 1187.000000)
	registerVal8:setTopBottom(true, false, 41.000000, 158.000000)
	registerVal8.ScoreLabel:setText(Engine.Localize("MPUI_DEATHS_CAPS"))
	registerVal8.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MPUI_DEATHS_CAPS"))
	local function __FUNC_23DA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.Score.Numbers:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "deaths", __FUNC_23DA_)
	registerVal2:addElement(registerVal8)
	registerVal2.DeathsInfo = registerVal8
	local registerVal9 = CoD.WinLossRatioWidget.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 97.500000, 289.500000)
	registerVal9:setTopBottom(true, false, 232.800000, 424.800000)
	local function __FUNC_24CA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.TotalWins:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "wins", __FUNC_24CA_)
	local function __FUNC_25A1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.TotalLosses:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "losses", __FUNC_25A1_)
	local function __FUNC_267B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal9.LossesRing:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "lossesRingClockFrac", __FUNC_267B_)
	local function __FUNC_27F0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.WinLossRatio:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "winLossRatio", __FUNC_27F0_)
	registerVal2:addElement(registerVal9)
	registerVal2.WinLossRatioWidget = registerVal9
	local registerVal10 = CoD.YellowLine.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 741.500000, 743.500000)
	registerVal10:setTopBottom(true, false, 284.500000, 408.500000)
	local function __FUNC_28CC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.YellowLine:setAlpha(registerVal1)
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "showBestSPMIcon", __FUNC_28CC_)
	registerVal2:addElement(registerVal10)
	registerVal2.YellowLine = registerVal10
	local registerVal11 = CoD.YellowLine.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 1186.500000, 1188.500000)
	registerVal11:setTopBottom(true, false, 285.500000, 409.500000)
	local function __FUNC_2981_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.YellowLine:setAlpha(registerVal1)
		end
	end

	registerVal11:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "showBestKDRIcon", __FUNC_2981_)
	registerVal2:addElement(registerVal11)
	registerVal2.YellowLine0 = registerVal11
	local registerVal12 = CoD.SPMGraphWidget.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 385.000000, 769.000000)
	registerVal12:setTopBottom(true, false, 234.000000, 445.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.SPMGraphWidget = registerVal12
	local registerVal13 = CoD.KDRGraphWidget.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 829.000000, 1217.000000)
	registerVal13:setTopBottom(true, false, 235.000000, 441.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.KDRGraphWidget0 = registerVal13
	local registerVal14 = CoD.StartMenu_Identity_SubTitle.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 883.960000, 943.960000)
	registerVal14:setTopBottom(true, false, 218.800000, 243.800000)
	registerVal14.SubTitle:setText(Engine.Localize("MENU_KDRATIO_CAPS"))
	registerVal14.SubTitle:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal14)
	registerVal2.StartMenuIdentitySubTitle00 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, 50.000000, 344.000000)
	registerVal15:setTopBottom(true, false, 205.000000, 213.000000)
	registerVal15:setAlpha(0.150000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.CategoryListLine = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, 386.000000, 787.000000)
	registerVal16:setTopBottom(true, false, 205.000000, 213.000000)
	registerVal16:setAlpha(0.150000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal16)
	registerVal2.CategoryListLine0 = registerVal16
	local registerVal17 = CoD.XpBarContainer.new(arg0, arg1)
	registerVal17:setLeftRight(true, false, 89.500000, 1196.000000)
	registerVal17:setTopBottom(true, false, 466.590000, 530.000000)
	registerVal17.XPEarnedDisplay.SubTitle:setText(Engine.Localize(GetAARXpEarned(arg1, "XP Earned: 0")))
	registerVal17.ProgressDescription.SubTitle:setText(Engine.Localize(""))
	registerVal17.NextLevelDisplay.SubTitle:setText(Engine.Localize(GetAARXPNextLevel(arg1, "Next Level: 43600 XP Needed")))
	local function __FUNC_2A35_(arg0)
		registerVal17:setModel(arg0, arg1)
	end

	registerVal17:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "xpBarInfo", __FUNC_2A35_)
	registerVal2:addElement(registerVal17)
	registerVal2.XpBarContainer = registerVal17
	local registerVal18 = CoD.ScoreWidget.new(arg0, arg1)
	registerVal18:setLeftRight(true, false, 442.250000, 744.500000)
	registerVal18:setTopBottom(true, false, 41.300000, 158.300000)
	registerVal18.ScoreLabel:setText(Engine.Localize("MPUI_SCORE_CAPS"))
	registerVal18.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MPUI_SCORE_CAPS"))
	local function __FUNC_2A86_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal18.Score.Numbers:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal18:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "score", __FUNC_2A86_)
	registerVal2:addElement(registerVal18)
	registerVal2.ScoreInfo = registerVal18
	local registerVal19 = CoD.TitleWidgetSmall.new(arg0, arg1)
	registerVal19:setLeftRight(true, false, 154.000000, 242.000000)
	registerVal19:setTopBottom(true, false, 173.290000, 194.290000)
	local function __FUNC_2B76_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal19.SubTitle:setText(registerVal1)
		end
	end

	registerVal19:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "outcome", __FUNC_2B76_)
	registerVal2:addElement(registerVal19)
	registerVal2.VictoryText = registerVal19
	local registerVal20 = CoD.BestWidgetContainer.new(arg0, arg1)
	registerVal20:setLeftRight(true, false, 717.000000, 768.000000)
	registerVal20:setTopBottom(true, false, 405.500000, 456.500000)
	local function __FUNC_2C26_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal20.BestIconForKDR:setAlpha(registerVal1)
		end
	end

	registerVal20:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "showBestSPMIcon", __FUNC_2C26_)
	registerVal2:addElement(registerVal20)
	registerVal2.BestWidgetContainer0 = registerVal20
	local registerVal21 = CoD.BestWidgetContainer.new(arg0, arg1)
	registerVal21:setLeftRight(true, false, 1161.500000, 1212.500000)
	registerVal21:setTopBottom(true, false, 406.500000, 456.500000)
	local function __FUNC_2CDD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal21.BestIconForKDR:setAlpha(registerVal1)
		end
	end

	registerVal21:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "showBestKDRIcon", __FUNC_2CDD_)
	registerVal2:addElement(registerVal21)
	registerVal2.BestWidgetContainer00 = registerVal21
	local registerVal22 = CoD.BestWidgetContainer.new(arg0, arg1)
	registerVal22:setLeftRight(true, false, 435.460000, 486.460000)
	registerVal22:setTopBottom(true, false, 70.000000, 120.000000)
	local function __FUNC_2D95_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal22.BestIconForKDR:setAlpha(registerVal1)
		end
	end

	registerVal22:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "showBestScoreIcon", __FUNC_2D95_)
	registerVal2:addElement(registerVal22)
	registerVal2.BestWidgetContainer01 = registerVal22
	local registerVal23 = CoD.BestWidgetContainer.new(arg0, arg1)
	registerVal23:setLeftRight(true, false, 880.240000, 931.240000)
	registerVal23:setTopBottom(true, false, 69.000000, 119.000000)
	local function __FUNC_2E4D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal23.BestIconForKDR:setAlpha(registerVal1)
		end
	end

	registerVal23:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "showBestKillsIcon", __FUNC_2E4D_)
	registerVal2:addElement(registerVal23)
	registerVal2.BestWidgetContainer010 = registerVal23
	local registerVal24 = LUI.UIImage.new()
	registerVal24:setLeftRight(true, false, 131.500000, 259.500000)
	registerVal24:setTopBottom(true, false, 23.290000, 152.290000)
	local function __FUNC_2F05_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal24:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal24:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "gameTypeIcon", __FUNC_2F05_)
	registerVal2:addElement(registerVal24)
	registerVal2.GameTypeIcon = registerVal24
	local registerVal25 = LUI.UIImage.new()
	registerVal25:setLeftRight(true, false, 829.000000, 1230.000000)
	registerVal25:setTopBottom(true, false, 205.000000, 213.000000)
	registerVal25:setAlpha(0.150000)
	registerVal25:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal25:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal25)
	registerVal2.CategoryListLine00 = registerVal25
	local registerVal26 = CoD.TitleWidget.new(arg0, arg1)
	registerVal26:setLeftRight(true, false, 61.500000, 336.500000)
	registerVal26:setTopBottom(true, false, 143.290000, 169.290000)
	local function __FUNC_2FB8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal26.weaponNameLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal26:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "gameTypeName", __FUNC_2FB8_)
	registerVal2:addElement(registerVal26)
	registerVal2.TitleWidget0 = registerVal26
	local registerVal27 = CoD.StartMenu_Identity_SubTitle.new(arg0, arg1)
	registerVal27:setLeftRight(true, false, 435.460000, 553.460000)
	registerVal27:setTopBottom(true, false, 218.800000, 243.800000)
	registerVal27.SubTitle:setText(Engine.Localize("MENU_SCORE_PER_MINUTE_CAPS"))
	registerVal27.SubTitle:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal27)
	registerVal2.StartMenuIdentitySubTitle000 = registerVal27
	local registerVal28 = {}
	local registerVal29 = {}
	local function __FUNC_3097_()
		registerVal2:setupElementClipCounter(25.000000)
		local function __FUNC_3A9C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.commonPanelBox01:setAlpha(0.000000)
		__FUNC_3A9C_(registerVal3, {})
		local function __FUNC_3C51_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 579.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.commonPanelBox02:setAlpha(0.000000)
		__FUNC_3C51_(registerVal4, {})
		local function __FUNC_3E05_(arg0, arg1)
			local function __FUNC_3F5C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3F5C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F5C_)
		end

		registerVal5:completeAnimation()
		registerVal2.commonPanelBox03:setAlpha(0.000000)
		__FUNC_3E05_(registerVal5, {})
		local function __FUNC_4111_(arg0, arg1)
			local function __FUNC_4268_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4268_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4268_)
		end

		registerVal6:completeAnimation()
		registerVal2.commonPanelBox04:setAlpha(0.000000)
		__FUNC_4111_(registerVal6, {})
		local function __FUNC_441D_(arg0, arg1)
			local function __FUNC_4574_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4574_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4574_)
		end

		registerVal7:completeAnimation()
		registerVal2.KillsInfo:setAlpha(0.000000)
		__FUNC_441D_(registerVal7, {})
		local function __FUNC_4729_(arg0, arg1)
			local function __FUNC_4880_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4880_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 270.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4880_)
		end

		registerVal8:completeAnimation()
		registerVal2.DeathsInfo:setAlpha(0.000000)
		__FUNC_4729_(registerVal8, {})
		local function __FUNC_4A35_(arg0, arg1)
			local function __FUNC_4B8C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4B8C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B8C_)
		end

		registerVal9:completeAnimation()
		registerVal2.WinLossRatioWidget:setAlpha(0.000000)
		__FUNC_4A35_(registerVal9, {})
		local function __FUNC_4D41_(arg0, arg1)
			local function __FUNC_4E98_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4E98_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 460.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4E98_)
		end

		registerVal10:completeAnimation()
		registerVal2.YellowLine:setAlpha(0.000000)
		__FUNC_4D41_(registerVal10, {})
		local function __FUNC_504D_(arg0, arg1)
			local function __FUNC_51A4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_51A4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 479.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_51A4_)
		end

		registerVal11:completeAnimation()
		registerVal2.YellowLine0:setAlpha(0.000000)
		__FUNC_504D_(registerVal11, {})
		local function __FUNC_5359_(arg0, arg1)
			local function __FUNC_54B0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_54B0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 419.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_54B0_)
		end

		registerVal12:completeAnimation()
		registerVal2.SPMGraphWidget:setAlpha(0.000000)
		__FUNC_5359_(registerVal12, {})
		local function __FUNC_5665_(arg0, arg1)
			local function __FUNC_57BC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_57BC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_57BC_)
		end

		registerVal13:completeAnimation()
		registerVal2.KDRGraphWidget0:setAlpha(0.000000)
		__FUNC_5665_(registerVal13, {})
		local function __FUNC_5971_(arg0, arg1)
			local function __FUNC_5AC8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_5AC8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5AC8_)
		end

		registerVal14:completeAnimation()
		registerVal2.StartMenuIdentitySubTitle00:setAlpha(0.000000)
		__FUNC_5971_(registerVal14, {})
		local function __FUNC_5C7D_(arg0, arg1)
			local function __FUNC_5DD4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.330000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_5DD4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5DD4_)
		end

		registerVal15:completeAnimation()
		registerVal2.CategoryListLine:setAlpha(0.000000)
		__FUNC_5C7D_(registerVal15, {})
		local function __FUNC_5F89_(arg0, arg1)
			local function __FUNC_60E0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.330000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_60E0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_60E0_)
		end

		registerVal16:completeAnimation()
		registerVal2.CategoryListLine0:setAlpha(0.000000)
		__FUNC_5F89_(registerVal16, {})
		local function __FUNC_6295_(arg0, arg1)
			local function __FUNC_63EC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_63EC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 330.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_63EC_)
		end

		registerVal17:completeAnimation()
		registerVal2.XpBarContainer:setAlpha(0.000000)
		__FUNC_6295_(registerVal17, {})
		local function __FUNC_65A1_(arg0, arg1)
			local function __FUNC_66F8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_66F8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_66F8_)
		end

		registerVal18:completeAnimation()
		registerVal2.ScoreInfo:setAlpha(0.000000)
		__FUNC_65A1_(registerVal18, {})
		local function __FUNC_68AD_(arg0, arg1)
			local function __FUNC_6A04_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 169.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_6A04_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6A04_)
		end

		registerVal19:completeAnimation()
		registerVal2.VictoryText:setAlpha(0.000000)
		__FUNC_68AD_(registerVal19, {})
		local function __FUNC_6BB9_(arg0, arg1)
			local function __FUNC_6D10_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_6D10_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 560.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6D10_)
		end

		registerVal20:completeAnimation()
		registerVal2.BestWidgetContainer0:setAlpha(0.000000)
		__FUNC_6BB9_(registerVal20, {})
		local function __FUNC_6EC5_(arg0, arg1)
			local function __FUNC_701C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 130.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_701C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 409.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_701C_)
		end

		registerVal21:completeAnimation()
		registerVal2.BestWidgetContainer00:setAlpha(0.000000)
		__FUNC_6EC5_(registerVal21, {})
		local function __FUNC_71D1_(arg0, arg1)
			local function __FUNC_7328_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_7328_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 460.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7328_)
		end

		registerVal22:completeAnimation()
		registerVal2.BestWidgetContainer01:setAlpha(0.000000)
		__FUNC_71D1_(registerVal22, {})
		local function __FUNC_74DD_(arg0, arg1)
			local function __FUNC_7634_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_7634_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7634_)
		end

		registerVal23:completeAnimation()
		registerVal2.BestWidgetContainer010:setAlpha(0.000000)
		__FUNC_74DD_(registerVal23, {})
		local function __FUNC_77E9_(arg0, arg1)
			local function __FUNC_7940_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 179.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_7940_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7940_)
		end

		registerVal24:completeAnimation()
		registerVal2.GameTypeIcon:setAlpha(0.000000)
		__FUNC_77E9_(registerVal24, {})
		local function __FUNC_7AF5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.330000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal25:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
		registerVal25:setAlpha(0.000000)
		registerVal25:registerEventHandler("transition_complete_keyframe", __FUNC_7AF5_)
		local function __FUNC_7CA9_(arg0, arg1)
			local function __FUNC_7E00_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_7E00_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7E00_)
		end

		registerVal26:completeAnimation()
		registerVal2.TitleWidget0:setAlpha(0.000000)
		__FUNC_7CA9_(registerVal26, {})
		local function __FUNC_7FB5_(arg0, arg1)
			local function __FUNC_810C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_810C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_810C_)
		end

		registerVal27:completeAnimation()
		registerVal2.StartMenuIdentitySubTitle000:setAlpha(0.000000)
		__FUNC_7FB5_(registerVal27, {})
	end

	registerVal29.DefaultClip = __FUNC_3097_
	registerVal28.DefaultState = registerVal29
	registerVal2.clipsPerState = registerVal28
	local function __FUNC_82C1_(arg0)
		arg0.commonPanelBox01:close()
		arg0.commonPanelBox02:close()
		arg0.commonPanelBox03:close()
		arg0.commonPanelBox04:close()
		arg0.KillsInfo:close()
		arg0.DeathsInfo:close()
		arg0.WinLossRatioWidget:close()
		arg0.YellowLine:close()
		arg0.YellowLine0:close()
		arg0.SPMGraphWidget:close()
		arg0.KDRGraphWidget0:close()
		arg0.StartMenuIdentitySubTitle00:close()
		arg0.XpBarContainer:close()
		arg0.ScoreInfo:close()
		arg0.VictoryText:close()
		arg0.BestWidgetContainer0:close()
		arg0.BestWidgetContainer00:close()
		arg0.BestWidgetContainer01:close()
		arg0.BestWidgetContainer010:close()
		arg0.TitleWidget0:close()
		arg0.StartMenuIdentitySubTitle000:close()
		arg0.GameTypeIcon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_82C1_)
	if __FUNC_513_ then
		__FUNC_513_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.PerformanceTabWidget.new = __FUNC_676_
