-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.CP_DamageWidget.DamageWidgetMP_PanelContainer")
require("ui.uieditor.widgets.VehicleHUDs.Ground.VehicleGround_VignetteBack")
require("ui.uieditor.widgets.AAR.PerformanceTab.XpBarContainer")
require("ui.uieditor.widgets.AAR.PerformanceTab.ScoreWidget")
require("ui.uieditor.widgets.AAR.PerformanceTab.BestWidgetContainer")
local function __FUNC_375_(arg0, arg1)
	CoD.AARUtility.SetCurrLevelModels(arg1, 1.000000)
	CoD.AARUtility.SetNextLevelModels(arg1, 1.000000)
end

local function __FUNC_44E_(arg0, arg1)
	CoD.AARUtility.DoXPBarAnimation(arg0, arg1)
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.PerformanceTabWidgetZM = registerVal3
local function __FUNC_4DB_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_375_ then
		__FUNC_375_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PerformanceTabWidgetZM)
	registerVal2.id = "PerformanceTabWidgetZM"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 526.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.DamageWidgetMP_PanelContainer.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -611.000000, -210.000000)
	registerVal3:setTopBottom(false, false, -263.000000, 192.590000)
	registerVal3:setRGB(0.250000, 0.250000, 0.250000)
	registerVal3.PanelAmmo0:setShaderVector(0.000000, 30.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Panel10 = registerVal3
	local registerVal4 = CoD.DamageWidgetMP_PanelContainer.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -207.000000, 367.000000)
	registerVal4:setTopBottom(false, false, -263.000000, 192.590000)
	registerVal4:setRGB(0.250000, 0.250000, 0.250000)
	registerVal4.PanelAmmo0:setShaderVector(0.000000, 30.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Panel20 = registerVal4
	local registerVal5 = CoD.DamageWidgetMP_PanelContainer.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, 372.810000, 607.620000)
	registerVal5:setTopBottom(false, false, -263.000000, 192.590000)
	registerVal5:setRGB(0.250000, 0.250000, 0.250000)
	registerVal5.PanelAmmo0:setShaderVector(0.000000, 30.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.Panel30 = registerVal5
	local registerVal6 = CoD.DamageWidgetMP_PanelContainer.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -611.000000, 607.620000)
	registerVal6:setTopBottom(false, false, 196.590000, 263.000000)
	registerVal6:setRGB(0.250000, 0.250000, 0.250000)
	registerVal6.PanelAmmo0:setShaderVector(0.000000, 30.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.Panel40 = registerVal6
	local registerVal7 = CoD.VehicleGround_VignetteBack.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal7:setTopBottom(true, false, -94.370000, 625.630000)
	registerVal2:addElement(registerVal7)
	registerVal2.VignetteBack = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 55.000000, 413.000000)
	registerVal8:setTopBottom(true, false, 192.000000, 200.000000)
	registerVal8:setAlpha(0.330000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.CategoryListLine = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 456.000000, 980.000000)
	registerVal9:setTopBottom(true, false, 192.000000, 200.000000)
	registerVal9:setAlpha(0.330000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.CategoryListLine0 = registerVal9
	local registerVal10 = CoD.XpBarContainer.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 69.500000, 1207.120000)
	registerVal10:setTopBottom(true, false, 459.590000, 513.810000)
	registerVal10.XPEarnedDisplay.SubTitle:setText(Engine.Localize("MENU_XP_EARNED_CAPS"))
	registerVal10.ProgressDescription.SubTitle:setText(Engine.Localize("MENU_PROGRESS_TO_NEXT_LEVEL_CAPS"))
	registerVal10.NextLevelDisplay.SubTitle:setText(Engine.Localize("MENU_NEXT_LEVEL_XP_NEEDED"))
	local function __FUNC_2396_(arg0)
		registerVal10:setModel(arg0, arg1)
	end

	registerVal10:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "xpBarInfo", __FUNC_2396_)
	registerVal2:addElement(registerVal10)
	registerVal2.XpBarContainer = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, 124.290000, 324.290000)
	registerVal11:setTopBottom(true, false, 68.000000, 93.000000)
	registerVal11:setText(Engine.Localize("MENU_SCORE_CAPS"))
	registerVal11:setTTF("fonts/default.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal11)
	registerVal2.ScoreLabel = registerVal11
	local registerVal12 = CoD.ScoreWidget.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 440.620000, 620.390000)
	registerVal12:setTopBottom(true, false, 68.000000, 151.500000)
	registerVal12.ScoreLabel:setText(Engine.Localize("MENU_KILLS_CAPS"))
	registerVal12.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_KILLS_CAPS"))
	local function __FUNC_23E6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.Score.Numbers:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal12:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "kills", __FUNC_23E6_)
	registerVal2:addElement(registerVal12)
	registerVal2.Kills = registerVal12
	local registerVal13 = CoD.ScoreWidget.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 628.480000, 808.250000)
	registerVal13:setTopBottom(true, false, 68.000000, 151.500000)
	registerVal13.ScoreLabel:setText(Engine.Localize("ZMUI_HEADSHOTS_CAPS"))
	registerVal13.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("ZMUI_HEADSHOTS_CAPS"))
	local function __FUNC_24D6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.Score.Numbers:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal13:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "headshots", __FUNC_24D6_)
	registerVal2:addElement(registerVal13)
	registerVal2.Assists = registerVal13
	local registerVal14 = CoD.BestWidgetContainer.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 198.790000, 249.790000)
	registerVal14:setTopBottom(true, false, 291.630000, 341.630000)
	local function __FUNC_25C6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14.BestIconForKDR:setAlpha(registerVal1)
		end
	end

	registerVal14:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "showBestRoundIcon", __FUNC_25C6_)
	registerVal2:addElement(registerVal14)
	registerVal2.BestRound = registerVal14
	local registerVal15 = LUI.UIText.new()
	registerVal15:setLeftRight(true, false, 115.790000, 332.790000)
	registerVal15:setTopBottom(true, false, 93.000000, 137.000000)
	registerVal15:setTTF("fonts/default.ttf")
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_267D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal15:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "total_points", __FUNC_267D_)
	registerVal2:addElement(registerVal15)
	registerVal2.Score = registerVal15
	local registerVal16 = CoD.ScoreWidget.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, 628.480000, 808.250000)
	registerVal16:setTopBottom(true, false, 241.300000, 324.610000)
	registerVal16.ScoreLabel:setText(Engine.Localize("ZMUI_REVIVES_CAPS"))
	registerVal16.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("ZMUI_REVIVES_CAPS"))
	local function __FUNC_2736_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16.Score.Numbers:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal16:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "revives", __FUNC_2736_)
	registerVal2:addElement(registerVal16)
	registerVal2.Incaps = registerVal16
	local registerVal17 = LUI.UIText.new()
	registerVal17:setLeftRight(true, false, 124.290000, 324.290000)
	registerVal17:setTopBottom(true, false, 216.300000, 241.300000)
	registerVal17:setText(Engine.Localize("MENU_SURVIVED_UNTIL_ROUND_CAPS"))
	registerVal17:setTTF("fonts/default.ttf")
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal17)
	registerVal2.CompletionTimeLabel = registerVal17
	local registerVal18 = CoD.BestWidgetContainer.new(arg0, arg1)
	registerVal18:setLeftRight(true, false, 198.790000, 249.790000)
	registerVal18:setTopBottom(true, false, 137.000000, 187.000000)
	local function __FUNC_2826_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal18.BestIconForKDR:setAlpha(registerVal1)
		end
	end

	registerVal18:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "showBestScoreIcon", __FUNC_2826_)
	registerVal2:addElement(registerVal18)
	registerVal2.BestPoints = registerVal18
	local registerVal19 = CoD.ScoreWidget.new(arg0, arg1)
	registerVal19:setLeftRight(true, false, 818.000000, 997.770000)
	registerVal19:setTopBottom(true, false, 241.300000, 324.610000)
	registerVal19.ScoreLabel:setText(Engine.Localize("ZMUI_DOWNS_CAPS"))
	registerVal19.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("ZMUI_DOWNS_CAPS"))
	local function __FUNC_28DD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal19.Score.Numbers:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal19:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "downs", __FUNC_28DD_)
	registerVal2:addElement(registerVal19)
	registerVal2.ScoreWidget1 = registerVal19
	local registerVal20 = CoD.ScoreWidget.new(arg0, arg1)
	registerVal20:setLeftRight(true, false, 818.000000, 997.770000)
	registerVal20:setTopBottom(true, false, 68.000000, 151.500000)
	registerVal20.ScoreLabel:setText(Engine.Localize("MENU_MELEE_KILLS_CAPS"))
	registerVal20.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_MELEE_KILLS_CAPS"))
	local function __FUNC_29CE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal20.Score.Numbers:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal20:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "meleeKills", __FUNC_29CE_)
	registerVal2:addElement(registerVal20)
	registerVal2.ScoreWidget2 = registerVal20
	local registerVal21 = LUI.UIText.new()
	registerVal21:setLeftRight(true, false, 115.790000, 332.790000)
	registerVal21:setTopBottom(true, false, 243.630000, 287.630000)
	registerVal21:setTTF("fonts/default.ttf")
	registerVal21:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal21:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_2ABE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal21:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal21:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "rounds", __FUNC_2ABE_)
	registerVal2:addElement(registerVal21)
	registerVal2.Score0 = registerVal21
	local registerVal22 = LUI.UIText.new()
	registerVal22:setLeftRight(true, false, 1030.210000, 1230.210000)
	registerVal22:setTopBottom(true, false, 55.500000, 80.500000)
	registerVal22:setText(Engine.Localize("MENU_BGB_TOKENS_GAINED_THIS_GAME_CAPS"))
	registerVal22:setTTF("fonts/default.ttf")
	registerVal22:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal22:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal22)
	registerVal2.CompletionTimeLabel0 = registerVal22
	local registerVal23 = LUI.UIText.new()
	registerVal23:setLeftRight(true, false, 1037.510000, 1222.920000)
	registerVal23:setTopBottom(true, false, 87.750000, 131.750000)
	registerVal23:setTTF("fonts/default.ttf")
	registerVal23:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal23:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_2B76_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal23:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal23:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "bgbTokensGainedThisGame", __FUNC_2B76_)
	registerVal2:addElement(registerVal23)
	registerVal2.Score00 = registerVal23
	local registerVal24 = LUI.UIImage.new()
	registerVal24:setLeftRight(true, false, 1030.210000, 1210.210000)
	registerVal24:setTopBottom(true, false, 30.950000, 534.950000)
	registerVal24:setScale(0.500000)
	registerVal24:setImage(RegisterImage("uie_t7_hud_zm_vial"))
	registerVal2:addElement(registerVal24)
	registerVal2.vial = registerVal24
	local registerVal25 = CoD.ScoreWidget.new(arg0, arg1)
	registerVal25:setLeftRight(true, false, 440.620000, 615.390000)
	registerVal25:setTopBottom(true, false, 241.300000, 324.610000)
	registerVal25.ScoreLabel:setText(Engine.Localize("MENU_BGBS_CHEWED_CAPS"))
	registerVal25.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_BGBS_CHEWED_CAPS"))
	local function __FUNC_2C2E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal25.Score.Numbers:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal25:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "pointsPerKill", __FUNC_2C2E_)
	registerVal2:addElement(registerVal25)
	registerVal2.Revives00 = registerVal25
	local registerVal26 = {}
	local registerVal27 = {}
	local function __FUNC_2D1E_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_3057_(arg0, arg1)
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
		registerVal2.Panel10:setAlpha(0.000000)
		__FUNC_3057_(registerVal3, {})
		local function __FUNC_3209_(arg0, arg1)
			local function __FUNC_3360_(arg0, arg1)
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
				__FUNC_3360_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3360_)
		end

		registerVal4:completeAnimation()
		registerVal2.Panel20:setAlpha(0.000000)
		__FUNC_3209_(registerVal4, {})
		local function __FUNC_3515_(arg0, arg1)
			local function __FUNC_366C_(arg0, arg1)
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
				__FUNC_366C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_366C_)
		end

		registerVal5:completeAnimation()
		registerVal2.Panel30:setAlpha(0.000000)
		__FUNC_3515_(registerVal5, {})
		local function __FUNC_3821_(arg0, arg1)
			local function __FUNC_3978_(arg0, arg1)
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
				__FUNC_3978_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3978_)
		end

		registerVal6:completeAnimation()
		registerVal2.Panel40:setAlpha(0.000000)
		__FUNC_3821_(registerVal6, {})
		local function __FUNC_3B2D_(arg0, arg1)
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

		registerVal7:completeAnimation()
		registerVal2.VignetteBack:setAlpha(0.000000)
		__FUNC_3B2D_(registerVal7, {})
		local function __FUNC_3CE1_(arg0, arg1)
			local function __FUNC_3E38_(arg0, arg1)
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
				__FUNC_3E38_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E38_)
		end

		registerVal8:completeAnimation()
		registerVal2.CategoryListLine:setAlpha(0.000000)
		__FUNC_3CE1_(registerVal8, {})
		local function __FUNC_3FED_(arg0, arg1)
			local function __FUNC_4144_(arg0, arg1)
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
				__FUNC_4144_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4144_)
		end

		registerVal9:completeAnimation()
		registerVal2.CategoryListLine0:setAlpha(0.000000)
		__FUNC_3FED_(registerVal9, {})
		local function __FUNC_42F9_(arg0, arg1)
			local function __FUNC_4450_(arg0, arg1)
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
				__FUNC_4450_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 330.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4450_)
		end

		registerVal10:completeAnimation()
		registerVal2.XpBarContainer:setAlpha(0.000000)
		__FUNC_42F9_(registerVal10, {})
	end

	registerVal27.DefaultClip = __FUNC_2D1E_
	registerVal26.DefaultState = registerVal27
	registerVal27 = {}
	local function __FUNC_4605_()
		registerVal2:setupElementClipCounter(11.000000)
		local function __FUNC_4A5E_(arg0, arg1)
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
		registerVal2.Panel10:setAlpha(0.000000)
		__FUNC_4A5E_(registerVal3, {})
		local function __FUNC_4C11_(arg0, arg1)
			local function __FUNC_4D68_(arg0, arg1)
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
				__FUNC_4D68_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D68_)
		end

		registerVal4:completeAnimation()
		registerVal2.Panel20:setAlpha(0.000000)
		__FUNC_4C11_(registerVal4, {})
		local function __FUNC_4F1D_(arg0, arg1)
			local function __FUNC_5074_(arg0, arg1)
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
				__FUNC_5074_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5074_)
		end

		registerVal5:completeAnimation()
		registerVal2.Panel30:setAlpha(0.000000)
		__FUNC_4F1D_(registerVal5, {})
		local function __FUNC_5229_(arg0, arg1)
			local function __FUNC_5380_(arg0, arg1)
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
				__FUNC_5380_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5380_)
		end

		registerVal6:completeAnimation()
		registerVal2.Panel40:setAlpha(0.000000)
		__FUNC_5229_(registerVal6, {})
		local function __FUNC_5535_(arg0, arg1)
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

		registerVal7:completeAnimation()
		registerVal2.VignetteBack:setAlpha(0.000000)
		__FUNC_5535_(registerVal7, {})
		local function __FUNC_56E9_(arg0, arg1)
			local function __FUNC_5840_(arg0, arg1)
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
				__FUNC_5840_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5840_)
		end

		registerVal8:completeAnimation()
		registerVal2.CategoryListLine:setAlpha(0.000000)
		__FUNC_56E9_(registerVal8, {})
		local function __FUNC_59F5_(arg0, arg1)
			local function __FUNC_5B4C_(arg0, arg1)
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
				__FUNC_5B4C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B4C_)
		end

		registerVal9:completeAnimation()
		registerVal2.CategoryListLine0:setAlpha(0.000000)
		__FUNC_59F5_(registerVal9, {})
		local function __FUNC_5D01_(arg0, arg1)
			local function __FUNC_5E58_(arg0, arg1)
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
				__FUNC_5E58_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 330.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E58_)
		end

		registerVal10:completeAnimation()
		registerVal2.XpBarContainer:setAlpha(0.000000)
		__FUNC_5D01_(registerVal10, {})
		registerVal22:completeAnimation()
		registerVal2.CompletionTimeLabel0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.Score00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.vial:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal24, {})
	end

	registerVal27.DefaultClip = __FUNC_4605_
	registerVal26.Offline = registerVal27
	registerVal2.clipsPerState = registerVal26
	local registerVal28 = {}
	local registerVal29 = {}
	registerVal29.stateName = "Offline"
	local function __FUNC_600D_(arg0, arg1, arg2)
		local registerVal3 = IsLive()
		return (not registerVal3)
	end

	registerVal29.condition = __FUNC_600D_
	registerVal28 = {registerVal29}
	registerVal2:mergeStateConditions(registerVal28)
	registerVal29 = Engine.GetGlobalModel()
	registerVal28 = Engine.GetModel(registerVal29, "lobbyRoot.lobbyNetworkMode")
	local function __FUNC_6058_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNetworkMode"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal28, __FUNC_6058_)
	registerVal29 = Engine.GetGlobalModel()
	registerVal28 = Engine.GetModel(registerVal29, "lobbyRoot.lobbyNav")
	local function __FUNC_6188_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal28, __FUNC_6188_)
	local function __FUNC_62B0_(arg0)
		arg0.Panel10:close()
		arg0.Panel20:close()
		arg0.Panel30:close()
		arg0.Panel40:close()
		arg0.VignetteBack:close()
		arg0.XpBarContainer:close()
		arg0.Kills:close()
		arg0.Assists:close()
		arg0.BestRound:close()
		arg0.Incaps:close()
		arg0.BestPoints:close()
		arg0.ScoreWidget1:close()
		arg0.ScoreWidget2:close()
		arg0.Revives00:close()
		arg0.Score:close()
		arg0.Score0:close()
		arg0.Score00:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_62B0_)
	if __FUNC_44E_ then
		__FUNC_44E_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.PerformanceTabWidgetZM.new = __FUNC_4DB_
