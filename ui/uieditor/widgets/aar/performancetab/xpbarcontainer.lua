-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.AAR.XPbarFrame")
require("ui.uieditor.widgets.AAR.PerformanceTab.XpBar")
require("ui.uieditor.widgets.AAR.PerformanceTab.RankIconAndNumberWidget")
require("ui.uieditor.widgets.StartMenu.StartMenu_Identity_SubTitle")
require("ui.uieditor.widgets.AAR.PerformanceTab.XpBarTitleRight")
require("ui.uieditor.widgets.AAR.PerformanceTab.RankIconAndNumberBig")
local function __FUNC_38A_(arg0, arg1)
	if CoD.isCampaign == true then
		SoundSet.AAR.rank_music = "uin_level_up_cp"
	else
		if CoD.isZombie == true then
			SoundSet.AAR.rank_music = "uin_level_up_zm"
		end
	end
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.XpBarContainer = registerVal2
local function __FUNC_4AA_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.XpBarContainer)
	registerVal2.id = "XpBarContainer"
	registerVal2.soundSet = "AAR"
	registerVal2:setLeftRight(true, false, 0.000000, 1150.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 60.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.XPbarFrame.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 58.500000, -62.000000)
	registerVal3:setTopBottom(true, false, 29.000000, 54.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.XpBarFrame = registerVal3
	local registerVal4 = CoD.XpBar.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 61.000000, -65.000000)
	registerVal4:setTopBottom(true, false, 34.000000, 49.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.XpBar = registerVal4
	local registerVal5 = CoD.RankIconAndNumberWidget.new(arg0, arg1)
	registerVal5:setLeftRight(false, true, -644.500000, -507.500000)
	registerVal5:setTopBottom(true, false, 9.000000, 49.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setScale(1.500000)
	local function __FUNC_1DC7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.NextRankIcon:setImage(RegisterImage(GetRankIconLarge(registerVal1)))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "nextLevelIcon", true, __FUNC_1DC7_)
	local function __FUNC_1EBC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.NextRank:setRGB(SetToParagonColorIfPrestigeMasterByRank(255.000000, 255.000000, 255.000000, registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "nextLevel", true, __FUNC_1EBC_)
	local function __FUNC_1FB7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.NextRank:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "nextLevel", true, __FUNC_1FB7_)
	registerVal2:addElement(registerVal5)
	registerVal2.RankIconAndNumberWidgetNextBase = registerVal5
	local registerVal6 = CoD.RankIconAndNumberWidget.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, -34.000000, 46.000000)
	registerVal6:setTopBottom(true, false, 20.000000, 60.000000)
	local function __FUNC_208C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.NextRankIcon:setImage(RegisterImage(GetRankIconLarge(registerVal1)))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "currLevelIcon", true, __FUNC_208C_)
	local function __FUNC_2184_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.NextRank:setRGB(SetToParagonColorIfPrestigeMasterByRank(255.000000, 255.000000, 255.000000, registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "currLevel", true, __FUNC_2184_)
	local function __FUNC_227F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.NextRank:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "currLevel", true, __FUNC_227F_)
	registerVal2:addElement(registerVal6)
	registerVal2.RankIconAndNumberWidgetPrevious = registerVal6
	local registerVal7 = CoD.StartMenu_Identity_SubTitle.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 55.000000, 812.000000)
	registerVal7:setTopBottom(true, false, 5.000000, 31.000000)
	registerVal7.FEButtonPanel0:setAlpha(0.000000)
	registerVal7.SubTitle:setRGB(0.950000, 0.910000, 0.110000)
	registerVal7.SubTitle:setText(Engine.Localize(GetAARXpEarned(arg1, "XP Earned: 0")))
	registerVal7.SubTitle:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal7)
	registerVal2.XPEarnedDisplay = registerVal7
	local registerVal8 = CoD.StartMenu_Identity_SubTitle.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 58.500000, 520.500000)
	registerVal8:setTopBottom(true, false, 4.120000, 30.120000)
	registerVal8:setAlpha(0.000000)
	registerVal8.SubTitle:setText(Engine.Localize("MENU_PROGRESS_TO_NEXT_LEVEL_CAPS"))
	registerVal8.SubTitle:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal8)
	registerVal2.ProgressDescription = registerVal8
	local registerVal9 = CoD.XpBarTitleRight.new(arg0, arg1)
	registerVal9:setLeftRight(false, true, -256.000000, -58.000000)
	registerVal9:setTopBottom(true, false, 5.000000, 31.000000)
	registerVal9.FEButtonPanel0:setAlpha(0.000000)
	registerVal9.SubTitle:setText(Engine.Localize(GetAARXPNextLevel(arg1, "Next Level: 43600 XP Needed")))
	registerVal9.SubTitle:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal9)
	registerVal2.NextLevelDisplay = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 1049.170000, 1210.170000)
	registerVal10:setTopBottom(true, false, -31.590000, 105.010000)
	registerVal10:setRGB(0.000000, 0.000000, 0.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal2:addElement(registerVal10)
	registerVal2.BackGlow = registerVal10
	local registerVal11 = CoD.RankIconAndNumberWidget.new(arg0, arg1)
	registerVal11:setLeftRight(false, true, -60.000000, 20.000000)
	registerVal11:setTopBottom(true, false, 20.000000, 60.000000)
	local function __FUNC_2354_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.NextRankIcon:setImage(RegisterImage(GetRankIconLarge(registerVal1)))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "nextLevelIcon", true, __FUNC_2354_)
	local function __FUNC_244C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.NextRank:setRGB(SetToParagonColorIfPrestigeMasterByRank(255.000000, 255.000000, 255.000000, registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "nextLevel", true, __FUNC_244C_)
	local function __FUNC_2547_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.NextRank:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "nextLevel", true, __FUNC_2547_)
	registerVal2:addElement(registerVal11)
	registerVal2.RankIconAndNumberWidgetNextTop = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, false, -150.000000, 150.000000)
	registerVal12:setTopBottom(false, true, -38.650000, -13.650000)
	registerVal12:setRGB(0.250000, 0.060000, 0.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.Glow0 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(false, false, 464.620000, 619.620000)
	registerVal13:setTopBottom(false, true, -72.480000, 42.910000)
	registerVal13:setRGB(0.590000, 0.310000, 0.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.Glow1 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, true, 48.000000, -42.000000)
	registerVal14:setTopBottom(true, false, 13.210000, 72.210000)
	registerVal14:setRGB(1.000000, 0.200000, 0.000000)
	registerVal14:setImage(RegisterImage("uie_t7_mp_menu_startflow_meterglow"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.MeterGlow = registerVal14
	local registerVal15 = CoD.RankIconAndNumberBig.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 450.500000, 695.500000)
	registerVal15:setTopBottom(true, false, 9.000000, 49.000000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setScale(1.500000)
	local function __FUNC_261C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15.NextRankIcon:setImage(RegisterImage(GetRankIconLarge(registerVal1)))
		end
	end

	registerVal15:linkToElementModel(registerVal2, "nextLevelIcon", true, __FUNC_261C_)
	local function __FUNC_2714_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15.NextRank:setRGB(SetToParagonColorIfPrestigeMasterByRank(255.000000, 255.000000, 255.000000, registerVal1))
		end
	end

	registerVal15:linkToElementModel(registerVal2, "nextLevel", true, __FUNC_2714_)
	local function __FUNC_280F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15.NextRank:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal15:linkToElementModel(registerVal2, "nextLevel", true, __FUNC_280F_)
	local function __FUNC_28E4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15.LEVEL:setRGB(SetToParagonColorIfPrestigeMasterByRank(255.000000, 255.000000, 255.000000, registerVal1))
		end
	end

	registerVal15:linkToElementModel(registerVal2, "nextLevel", true, __FUNC_28E4_)
	registerVal2:addElement(registerVal15)
	registerVal2.RankIconAndNumberBig = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(false, false, -174.000000, 196.820000)
	registerVal16:setTopBottom(false, true, -69.000000, 9.240000)
	registerVal16:setRGB(0.720000, 0.460000, 0.000000)
	registerVal16:setAlpha(0.000000)
	registerVal16:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal16)
	registerVal2.Glow10 = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(false, false, -191.000000, 211.000000)
	registerVal17:setTopBottom(false, true, -55.090000, -2.980000)
	registerVal17:setRGB(0.250000, 0.060000, 0.000000)
	registerVal17:setAlpha(0.000000)
	registerVal17:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal17)
	registerVal2.Glow00 = registerVal17
	local registerVal18 = LUI.UIElement.new()
	registerVal18:setLeftRight(true, false, -163.500000, -115.500000)
	registerVal18:setTopBottom(true, false, 57.010000, 105.010000)
	registerVal2:addElement(registerVal18)
	registerVal2.promotionSound = registerVal18
	local registerVal19 = LUI.UIElement.new()
	registerVal19:setLeftRight(true, false, -163.500000, -115.500000)
	registerVal19:setTopBottom(true, false, 115.010000, 163.010000)
	registerVal2:addElement(registerVal19)
	registerVal2.promotionMusic = registerVal19
	local registerVal20 = LUI.UIText.new()
	registerVal20:setLeftRight(true, false, 61.000000, 828.000000)
	registerVal20:setTopBottom(true, false, 52.000000, 72.210000)
	registerVal20:setAlpha(0.000000)
	registerVal20:setText(Engine.Localize(GetAARXPStarterPackNotice(arg1, "You are at Maximum Level and XP for MP45. Purchase Full Version to continue leveling.")))
	registerVal20:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal20:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal20:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal20)
	registerVal2.starterPackXPNotice = registerVal20
	local registerVal21 = {}
	local registerVal22 = {}
	local function __FUNC_29DC_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal6:completeAnimation()
		registerVal2.RankIconAndNumberWidgetPrevious:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.XPEarnedDisplay:setLeftRight(true, false, 54.500000, 535.910000)
		registerVal2.XPEarnedDisplay:setTopBottom(true, false, 5.000000, 31.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal8.FEButtonPanel0:completeAnimation()
		registerVal2.ProgressDescription:setLeftRight(true, false, -67.000000, 208.410000)
		registerVal2.ProgressDescription:setTopBottom(true, false, -13.000000, 13.000000)
		registerVal2.ProgressDescription.FEButtonPanel0:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.NextLevelDisplay:setLeftRight(false, true, -255.000000, -57.000000)
		registerVal2.NextLevelDisplay:setTopBottom(true, false, 5.000000, 31.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BackGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.Glow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Glow1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.MeterGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.RankIconAndNumberBig:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal20:completeAnimation()
		registerVal2.starterPackXPNotice:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal22.DefaultClip = __FUNC_29DC_
	local function __FUNC_2F81_()
		registerVal2:setupElementClipCounter(18.000000)
		local function __FUNC_3A77_(arg0, arg1)
			local function __FUNC_3BEF_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 2609.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3BEF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3BEF_)
		end

		registerVal3:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
		registerVal3:setAlpha(1.000000)
		registerVal3:registerEventHandler("transition_complete_keyframe", __FUNC_3A77_)
		local function __FUNC_3DA1_(arg0, arg1)
			local function __FUNC_3F1B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 2609.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3F1B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F1B_)
		end

		registerVal4:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
		registerVal4:setAlpha(1.000000)
		registerVal4:registerEventHandler("transition_complete_keyframe", __FUNC_3DA1_)
		local function __FUNC_40CD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 3369.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.RankIconAndNumberWidgetNextBase:setAlpha(0.000000)
		__FUNC_40CD_(registerVal5, {})
		local function __FUNC_4281_(arg0, arg1)
			local function __FUNC_43D8_(arg0, arg1)
				local function __FUNC_4553_(arg0, arg1)
					local function __FUNC_46A8_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 1789.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_46A8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 690.000000, false, false, CoD.TweenType.Bounce)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_46A8_)
				end

				if arg1.interrupted then
					__FUNC_4553_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4553_)
			end

			if arg1.interrupted then
				__FUNC_43D8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 649.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_43D8_)
		end

		registerVal6:completeAnimation()
		registerVal2.RankIconAndNumberWidgetPrevious:setAlpha(1.000000)
		__FUNC_4281_(registerVal6, {})
		local function __FUNC_485D_(arg0, arg1)
			local function __FUNC_49D7_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 2389.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_49D7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 379.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_49D7_)
		end

		registerVal7:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
		registerVal7:setAlpha(1.000000)
		registerVal7:registerEventHandler("transition_complete_keyframe", __FUNC_485D_)
		registerVal8:beginAnimation("keyframe", 3369.000000, false, false, CoD.TweenType.Linear)
		registerVal8:setAlpha(0.000000)
		registerVal8:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		local function __FUNC_4B89_(arg0, arg1)
			local function __FUNC_4D03_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 2389.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4D03_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 379.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D03_)
		end

		registerVal9:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
		registerVal9:setAlpha(1.000000)
		registerVal9:registerEventHandler("transition_complete_keyframe", __FUNC_4B89_)
		local function __FUNC_4EB5_(arg0, arg1)
			local function __FUNC_5044_(arg0, arg1)
				local function __FUNC_51D4_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 1589.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, -44.830000, 116.170000)
					arg0:setTopBottom(true, false, -31.590000, 105.010000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_51D4_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 470.000000, true, true, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, -44.830000, 116.170000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_51D4_)
			end

			if arg1.interrupted then
				__FUNC_5044_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1309.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 1034.170000, 1195.170000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5044_)
		end

		registerVal10:completeAnimation()
		registerVal2.BackGlow:setLeftRight(true, false, 1034.170000, 1195.170000)
		registerVal2.BackGlow:setTopBottom(true, false, -31.590000, 105.010000)
		registerVal2.BackGlow:setAlpha(0.000000)
		__FUNC_4EB5_(registerVal10, {})
		local function __FUNC_53F9_(arg0, arg1)
			local function __FUNC_5550_(arg0, arg1)
				local function __FUNC_56CB_(arg0, arg1)
					local function __FUNC_5843_(arg0, arg1)
						local function __FUNC_5998_(arg0, arg1)
							local function __FUNC_5B13_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 2480.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_5B13_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B13_)
						end

						if arg1.interrupted then
							__FUNC_5998_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 469.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5998_)
					end

					if arg1.interrupted then
						__FUNC_5843_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5843_)
				end

				if arg1.interrupted then
					__FUNC_56CB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_56CB_)
			end

			if arg1.interrupted then
				__FUNC_5550_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5550_)
		end

		registerVal11:completeAnimation()
		registerVal2.RankIconAndNumberWidgetNextTop:setAlpha(1.000000)
		__FUNC_53F9_(registerVal11, {})
		local function __FUNC_5CC5_(arg0, arg1)
			local function __FUNC_5E77_(arg0, arg1)
				local function __FUNC_6027_(arg0, arg1)
					local function __FUNC_61D7_(arg0, arg1)
						local function __FUNC_6387_(arg0, arg1)
							local function __FUNC_6537_(arg0, arg1)
								local function __FUNC_66C4_(arg0, arg1)
									local function __FUNC_681C_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 2239.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setLeftRight(false, false, 403.120000, 703.120000)
										arg0:setTopBottom(false, true, -29.790000, -4.790000)
										arg0:setAlpha(0.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_681C_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 449.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_681C_)
								end

								if arg1.interrupted then
									__FUNC_66C4_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
								arg0:setTopBottom(false, true, -29.790000, -4.790000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_66C4_)
							end

							if arg1.interrupted then
								__FUNC_6537_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 479.000000, false, false, CoD.TweenType.Bounce)
							arg0:setTopBottom(false, true, -30.700000, -4.790000)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6537_)
						end

						if arg1.interrupted then
							__FUNC_6387_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:setTopBottom(false, true, -35.590000, -4.790000)
						arg0:setAlpha(0.510000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6387_)
					end

					if arg1.interrupted then
						__FUNC_61D7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(false, true, -35.790000, -4.790000)
					arg0:setAlpha(0.420000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_61D7_)
				end

				if arg1.interrupted then
					__FUNC_6027_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(false, true, -42.000000, -4.790000)
				arg0:setAlpha(0.370000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6027_)
			end

			if arg1.interrupted then
				__FUNC_5E77_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(false, true, -46.790000, -4.790000)
			arg0:setAlpha(0.280000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E77_)
		end

		registerVal12:completeAnimation()
		registerVal2.Glow0:setLeftRight(false, false, 403.120000, 703.120000)
		registerVal2.Glow0:setTopBottom(false, true, -29.790000, -4.790000)
		registerVal2.Glow0:setAlpha(0.000000)
		__FUNC_5CC5_(registerVal12, {})
		local function __FUNC_6A41_(arg0, arg1)
			local function __FUNC_6C5E_(arg0, arg1)
				local function __FUNC_6E7A_(arg0, arg1)
					local function __FUNC_7096_(arg0, arg1)
						local function __FUNC_727F_(arg0, arg1)
							local function __FUNC_7444_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 1599.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(false, false, 488.620000, 596.620000)
								arg0:setTopBottom(false, true, -61.800000, 22.210000)
								arg0:setRGB(0.590000, 0.310000, 0.000000)
								arg0:setAlpha(0.000000)
								arg0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_7444_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 1069.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(false, false, 488.620000, 596.620000)
							arg0:setTopBottom(false, true, -61.800000, 22.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7444_)
						end

						if arg1.interrupted then
							__FUNC_727F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Bounce)
						arg0:setLeftRight(false, false, 498.290000, 594.690000)
						arg0:setTopBottom(false, true, -64.380000, 17.700000)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_727F_)
					end

					if arg1.interrupted then
						__FUNC_7096_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 449.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, false, 499.550000, 594.430000)
					arg0:setTopBottom(false, true, -64.710000, 17.110000)
					arg0:setRGB(0.590000, 0.310000, 0.000000)
					arg0:setAlpha(0.090000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7096_)
				end

				if arg1.interrupted then
					__FUNC_6E7A_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, 503.620000, 593.620000)
				arg0:setTopBottom(false, true, -65.800000, 15.210000)
				arg0:setRGB(0.880000, 0.620000, 0.000000)
				arg0:setAlpha(0.840000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6E7A_)
			end

			if arg1.interrupted then
				__FUNC_6C5E_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, 504.870000, 594.870000)
			arg0:setTopBottom(false, true, -53.250000, 15.020000)
			arg0:setRGB(0.940000, 0.690000, 0.000000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6C5E_)
		end

		registerVal13:completeAnimation()
		registerVal2.Glow1:setLeftRight(false, false, 505.000000, 595.000000)
		registerVal2.Glow1:setTopBottom(false, true, -52.000000, 15.000000)
		registerVal2.Glow1:setRGB(0.950000, 0.700000, 0.000000)
		registerVal2.Glow1:setAlpha(0.000000)
		registerVal2.Glow1:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_6A41_(registerVal13, {})
		local function __FUNC_7721_(arg0, arg1)
			local function __FUNC_78C9_(arg0, arg1)
				local function __FUNC_7A53_(arg0, arg1)
					local function __FUNC_7BCB_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 2599.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setRGB(1.000000, 0.200000, 0.000000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_7BCB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 519.000000, false, false, CoD.TweenType.Bounce)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7BCB_)
				end

				if arg1.interrupted then
					__FUNC_7A53_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
				arg0:setRGB(1.000000, 0.200000, 0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7A53_)
			end

			if arg1.interrupted then
				__FUNC_78C9_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:setRGB(1.000000, 0.520000, 0.000000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_78C9_)
		end

		registerVal14:completeAnimation()
		registerVal2.MeterGlow:setRGB(1.000000, 0.200000, 0.000000)
		registerVal2.MeterGlow:setAlpha(0.000000)
		__FUNC_7721_(registerVal14, {})
		local function __FUNC_7DAB_(arg0, arg1)
			local function __FUNC_7F38_(arg0, arg1)
				local function __FUNC_80EB_(arg0, arg1)
					local function __FUNC_829B_(arg0, arg1)
						local function __FUNC_8428_(arg0, arg1)
							local function __FUNC_85B8_(arg0, arg1)
								local function __FUNC_8748_(arg0, arg1)
									local function __FUNC_88D8_(arg0, arg1)
										local function __FUNC_8A8B_(arg0, arg1)
											local function __FUNC_8C3B_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setLeftRight(true, false, 0.000000, 246.000000)
												arg0:setTopBottom(true, false, 9.000000, 49.000000)
												arg0:setAlpha(0.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_8C3B_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
											arg0:setLeftRight(true, false, 132.000000, 377.700000)
											arg0:setAlpha(0.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8C3B_)
										end

										if arg1.interrupted then
											__FUNC_8A8B_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
										arg0:setLeftRight(true, false, 440.000000, 685.000000)
										arg0:setAlpha(0.230000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8A8B_)
									end

									if arg1.interrupted then
										__FUNC_88D8_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
									arg0:setLeftRight(true, false, 446.220000, 691.220000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_88D8_)
								end

								if arg1.interrupted then
									__FUNC_8748_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(true, false, 450.000000, 695.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8748_)
							end

							if arg1.interrupted then
								__FUNC_85B8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 2000.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, 449.880000, 695.500000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_85B8_)
						end

						if arg1.interrupted then
							__FUNC_8428_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 447.000000, 707.930000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8428_)
					end

					if arg1.interrupted then
						__FUNC_829B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 483.800000, 731.990000)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_829B_)
				end

				if arg1.interrupted then
					__FUNC_80EB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 505.500000, 750.500000)
				arg0:setAlpha(0.880000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_80EB_)
			end

			if arg1.interrupted then
				__FUNC_7F38_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 714.690000, 959.690000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7F38_)
		end

		registerVal15:beginAnimation("keyframe", 639.000000, false, false, CoD.TweenType.Linear)
		registerVal15:setLeftRight(true, false, 894.000000, 1139.000000)
		registerVal15:setTopBottom(true, false, 9.000000, 49.000000)
		registerVal15:setAlpha(0.000000)
		registerVal15:registerEventHandler("transition_complete_keyframe", __FUNC_7DAB_)
		local function __FUNC_8E58_(arg0, arg1)
			local function __FUNC_8FB0_(arg0, arg1)
				local function __FUNC_912B_(arg0, arg1)
					local function __FUNC_92A3_(arg0, arg1)
						local function __FUNC_941B_(arg0, arg1)
							local function __FUNC_9593_(arg0, arg1)
								local function __FUNC_970B_(arg0, arg1)
									local function __FUNC_9860_(arg0, arg1)
										local function __FUNC_99DB_(arg0, arg1)
											local function __FUNC_9B30_(arg0, arg1)
												local function __FUNC_9CAB_(arg0, arg1)
													local function __FUNC_9E23_(arg0, arg1)
														local function __FUNC_9F9B_(arg0, arg1)
															local function __FUNC_A113_(arg0, arg1)
																local function __FUNC_A268_(arg0, arg1)
																	local function __FUNC_A3C0_(arg0, arg1)
																		local function __FUNC_A53B_(arg0, arg1)
																			local function __FUNC_A6B3_(arg0, arg1)
																				local function __FUNC_A82B_(arg0, arg1)
																					local function __FUNC_A980_(arg0, arg1)
																						local function __FUNC_AAFB_(arg0, arg1)
																							local function __FUNC_AC50_(arg0, arg1)
																								local function __FUNC_ADCB_(arg0, arg1)
																									local function __FUNC_AF43_(arg0, arg1)
																										local function __FUNC_B0BB_(arg0, arg1)
																											local function __FUNC_B233_(arg0, arg1)
																												local function __FUNC_B388_(arg0, arg1)
																													local function __FUNC_B4E0_(arg0, arg1)
																														local function __FUNC_B65B_(arg0, arg1)
																															local function __FUNC_B7D3_(arg0, arg1)
																																local function __FUNC_B928_(arg0, arg1)
																																	local function __FUNC_BA80_(arg0, arg1)
																																		local function __FUNC_BBFB_(arg0, arg1)
																																			local function __FUNC_BD73_(arg0, arg1)
																																				local function __FUNC_BEC8_(arg0, arg1)
																																					local function __FUNC_C043_(arg0, arg1)
																																						local function __FUNC_C1BB_(arg0, arg1)
																																							local function __FUNC_C310_(arg0, arg1)
																																								local function __FUNC_C48B_(arg0, arg1)
																																									local function __FUNC_C603_(arg0, arg1)
																																										local function __FUNC_C758_(arg0, arg1)
																																											if not arg1.interrupted then
																																												arg0:beginAnimation("keyframe", 190.000000, false, false, CoD.TweenType.Linear)
																																											end
																																											arg0:setAlpha(0.000000)
																																											if arg1.interrupted then
																																												registerVal2.clipFinished(arg0, arg1)
																																											else
																																												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																																											end
																																										end

																																										if arg1.interrupted then
																																											__FUNC_C758_(arg0, arg1)
																																											return 
																																										end
																																										arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																																										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C758_)
																																									end

																																									if arg1.interrupted then
																																										__FUNC_C603_(arg0, arg1)
																																										return 
																																									end
																																									arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
																																									arg0:setAlpha(0.000000)
																																									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C603_)
																																								end

																																								if arg1.interrupted then
																																									__FUNC_C48B_(arg0, arg1)
																																									return 
																																								end
																																								arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																																								arg0:setAlpha(1.000000)
																																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C48B_)
																																							end

																																							if arg1.interrupted then
																																								__FUNC_C310_(arg0, arg1)
																																								return 
																																							end
																																							arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
																																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C310_)
																																						end

																																						if arg1.interrupted then
																																							__FUNC_C1BB_(arg0, arg1)
																																							return 
																																						end
																																						arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
																																						arg0:setAlpha(0.000000)
																																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C1BB_)
																																					end

																																					if arg1.interrupted then
																																						__FUNC_C043_(arg0, arg1)
																																						return 
																																					end
																																					arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
																																					arg0:setAlpha(1.000000)
																																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C043_)
																																				end

																																				if arg1.interrupted then
																																					__FUNC_BEC8_(arg0, arg1)
																																					return 
																																				end
																																				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BEC8_)
																																			end

																																			if arg1.interrupted then
																																				__FUNC_BD73_(arg0, arg1)
																																				return 
																																			end
																																			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
																																			arg0:setAlpha(0.000000)
																																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BD73_)
																																		end

																																		if arg1.interrupted then
																																			__FUNC_BBFB_(arg0, arg1)
																																			return 
																																		end
																																		arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
																																		arg0:setAlpha(1.000000)
																																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BBFB_)
																																	end

																																	if arg1.interrupted then
																																		__FUNC_BA80_(arg0, arg1)
																																		return 
																																	end
																																	arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BA80_)
																																end

																																if arg1.interrupted then
																																	__FUNC_B928_(arg0, arg1)
																																	return 
																																end
																																arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
																																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B928_)
																															end

																															if arg1.interrupted then
																																__FUNC_B7D3_(arg0, arg1)
																																return 
																															end
																															arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
																															arg0:setAlpha(0.000000)
																															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B7D3_)
																														end

																														if arg1.interrupted then
																															__FUNC_B65B_(arg0, arg1)
																															return 
																														end
																														arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
																														arg0:setAlpha(0.850000)
																														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B65B_)
																													end

																													if arg1.interrupted then
																														__FUNC_B4E0_(arg0, arg1)
																														return 
																													end
																													arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
																													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B4E0_)
																												end

																												if arg1.interrupted then
																													__FUNC_B388_(arg0, arg1)
																													return 
																												end
																												arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B388_)
																											end

																											if arg1.interrupted then
																												__FUNC_B233_(arg0, arg1)
																												return 
																											end
																											arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
																											arg0:setAlpha(0.000000)
																											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B233_)
																										end

																										if arg1.interrupted then
																											__FUNC_B0BB_(arg0, arg1)
																											return 
																										end
																										arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
																										arg0:setAlpha(1.000000)
																										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B0BB_)
																									end

																									if arg1.interrupted then
																										__FUNC_AF43_(arg0, arg1)
																										return 
																									end
																									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
																									arg0:setAlpha(0.000000)
																									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AF43_)
																								end

																								if arg1.interrupted then
																									__FUNC_ADCB_(arg0, arg1)
																									return 
																								end
																								arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
																								arg0:setAlpha(1.000000)
																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ADCB_)
																							end

																							if arg1.interrupted then
																								__FUNC_AC50_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AC50_)
																						end

																						if arg1.interrupted then
																							__FUNC_AAFB_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
																						arg0:setAlpha(0.000000)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AAFB_)
																					end

																					if arg1.interrupted then
																						__FUNC_A980_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A980_)
																				end

																				if arg1.interrupted then
																					__FUNC_A82B_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
																				arg0:setAlpha(1.000000)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A82B_)
																			end

																			if arg1.interrupted then
																				__FUNC_A6B3_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
																			arg0:setAlpha(0.000000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A6B3_)
																		end

																		if arg1.interrupted then
																			__FUNC_A53B_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
																		arg0:setAlpha(1.000000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A53B_)
																	end

																	if arg1.interrupted then
																		__FUNC_A3C0_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A3C0_)
																end

																if arg1.interrupted then
																	__FUNC_A268_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A268_)
															end

															if arg1.interrupted then
																__FUNC_A113_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
															arg0:setAlpha(0.000000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A113_)
														end

														if arg1.interrupted then
															__FUNC_9F9B_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
														arg0:setAlpha(1.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9F9B_)
													end

													if arg1.interrupted then
														__FUNC_9E23_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9E23_)
												end

												if arg1.interrupted then
													__FUNC_9CAB_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(1.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9CAB_)
											end

											if arg1.interrupted then
												__FUNC_9B30_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9B30_)
										end

										if arg1.interrupted then
											__FUNC_99DB_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_99DB_)
									end

									if arg1.interrupted then
										__FUNC_9860_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9860_)
								end

								if arg1.interrupted then
									__FUNC_970B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_970B_)
							end

							if arg1.interrupted then
								__FUNC_9593_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9593_)
						end

						if arg1.interrupted then
							__FUNC_941B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_941B_)
					end

					if arg1.interrupted then
						__FUNC_92A3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_92A3_)
				end

				if arg1.interrupted then
					__FUNC_912B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_912B_)
			end

			if arg1.interrupted then
				__FUNC_8FB0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8FB0_)
		end

		registerVal16:beginAnimation("keyframe", 670.000000, false, false, CoD.TweenType.Linear)
		registerVal16:setAlpha(0.000000)
		registerVal16:registerEventHandler("transition_complete_keyframe", __FUNC_8E58_)
		local function __FUNC_C90D_(arg0, arg1)
			local function __FUNC_CA64_(arg0, arg1)
				local function __FUNC_CBDF_(arg0, arg1)
					local function __FUNC_CD57_(arg0, arg1)
						local function __FUNC_CECF_(arg0, arg1)
							local function __FUNC_D047_(arg0, arg1)
								local function __FUNC_D1BF_(arg0, arg1)
									local function __FUNC_D337_(arg0, arg1)
										local function __FUNC_D48C_(arg0, arg1)
											local function __FUNC_D607_(arg0, arg1)
												local function __FUNC_D77F_(arg0, arg1)
													local function __FUNC_D8F7_(arg0, arg1)
														local function __FUNC_DA4C_(arg0, arg1)
															local function __FUNC_DBC7_(arg0, arg1)
																local function __FUNC_DD1C_(arg0, arg1)
																	local function __FUNC_DE97_(arg0, arg1)
																		local function __FUNC_E00F_(arg0, arg1)
																			if not arg1.interrupted then
																				arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
																			end
																			arg0:setAlpha(0.000000)
																			if arg1.interrupted then
																				registerVal2.clipFinished(arg0, arg1)
																			else
																				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																			end
																		end

																		if arg1.interrupted then
																			__FUNC_E00F_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																		arg0:setAlpha(0.000000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E00F_)
																	end

																	if arg1.interrupted then
																		__FUNC_DE97_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
																	arg0:setAlpha(1.000000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DE97_)
																end

																if arg1.interrupted then
																	__FUNC_DD1C_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DD1C_)
															end

															if arg1.interrupted then
																__FUNC_DBC7_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
															arg0:setAlpha(0.000000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DBC7_)
														end

														if arg1.interrupted then
															__FUNC_DA4C_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DA4C_)
													end

													if arg1.interrupted then
														__FUNC_D8F7_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(1.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D8F7_)
												end

												if arg1.interrupted then
													__FUNC_D77F_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(0.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D77F_)
											end

											if arg1.interrupted then
												__FUNC_D607_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(1.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D607_)
										end

										if arg1.interrupted then
											__FUNC_D48C_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 419.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D48C_)
									end

									if arg1.interrupted then
										__FUNC_D337_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D337_)
								end

								if arg1.interrupted then
									__FUNC_D1BF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D1BF_)
							end

							if arg1.interrupted then
								__FUNC_D047_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D047_)
						end

						if arg1.interrupted then
							__FUNC_CECF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CECF_)
					end

					if arg1.interrupted then
						__FUNC_CD57_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CD57_)
				end

				if arg1.interrupted then
					__FUNC_CBDF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CBDF_)
			end

			if arg1.interrupted then
				__FUNC_CA64_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CA64_)
		end

		registerVal17:beginAnimation("keyframe", 670.000000, false, false, CoD.TweenType.Linear)
		registerVal17:setAlpha(0.000000)
		registerVal17:registerEventHandler("transition_complete_keyframe", __FUNC_C90D_)
		local function __FUNC_E1C1_(arg0, arg2)
			if not arg2.interrupted then
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:playSound("rank_sound", arg1)
			if arg2.interrupted then
				registerVal2.clipFinished(arg0, arg2)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.promotionSound:playSound("0", arg1)
		__FUNC_E1C1_(registerVal18, {})
		local function __FUNC_E389_(arg0, arg2)
			if not arg2.interrupted then
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:playSound("rank_music", arg1)
			if arg2.interrupted then
				registerVal2.clipFinished(arg0, arg2)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:beginAnimation("keyframe", 839.000000, false, false, CoD.TweenType.Linear)
		registerVal19:playSound("0", arg1)
		registerVal19:registerEventHandler("transition_complete_keyframe", __FUNC_E389_)
		registerVal20:completeAnimation()
		registerVal2.starterPackXPNotice:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal22.Update = __FUNC_2F81_
	local function __FUNC_E551_()
		registerVal2:setupElementClipCounter(11.000000)
		local function __FUNC_EB8C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
		registerVal3:setAlpha(0.000000)
		registerVal3:registerEventHandler("transition_complete_keyframe", __FUNC_EB8C_)
		local function __FUNC_ED41_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
		registerVal4:setAlpha(0.000000)
		registerVal4:registerEventHandler("transition_complete_keyframe", __FUNC_ED41_)
		local function __FUNC_EEF5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
		registerVal6:setAlpha(0.000000)
		registerVal6:registerEventHandler("transition_complete_keyframe", __FUNC_EEF5_)
		local function __FUNC_F0A9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
		registerVal7:setAlpha(0.000000)
		registerVal7:registerEventHandler("transition_complete_keyframe", __FUNC_F0A9_)
		local function __FUNC_F25D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
		registerVal9:setAlpha(0.000000)
		registerVal9:registerEventHandler("transition_complete_keyframe", __FUNC_F25D_)
		registerVal10:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
		registerVal10:setAlpha(0.000000)
		registerVal10:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		local function __FUNC_F411_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
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
		registerVal11:registerEventHandler("transition_complete_keyframe", __FUNC_F411_)
		local function __FUNC_F5C5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -673.000000, -463.000000)
			arg0:setTopBottom(false, true, -44.790000, -10.790000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.Glow0:setLeftRight(false, false, -626.500000, -535.500000)
		registerVal2.Glow0:setTopBottom(false, true, -42.000000, -13.500000)
		__FUNC_F5C5_(registerVal12, {})
		local function __FUNC_F7C6_(arg0, arg1)
			local function __FUNC_F91C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -625.000000, -525.000000)
				arg0:setTopBottom(false, true, -65.000000, 11.000000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_F91C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F91C_)
		end

		registerVal13:completeAnimation()
		registerVal2.Glow1:setLeftRight(false, false, -625.000000, -525.000000)
		registerVal2.Glow1:setTopBottom(false, true, -65.000000, 11.000000)
		registerVal2.Glow1:setAlpha(0.000000)
		__FUNC_F7C6_(registerVal13, {})
		local function __FUNC_FB41_(arg0, arg1)
			local function __FUNC_FCBB_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_FCBB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FCBB_)
		end

		registerVal14:completeAnimation()
		registerVal2.MeterGlow:setAlpha(0.000000)
		__FUNC_FB41_(registerVal14, {})
		registerVal20:completeAnimation()
		registerVal2.starterPackXPNotice:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal22.FlashNextLevel = __FUNC_E551_
	local function __FUNC_FE6D_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal2.XpBarFrame:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.XpBar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_1049F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
		registerVal6:setAlpha(0.000000)
		registerVal6:registerEventHandler("transition_complete_keyframe", __FUNC_1049F_)
		local function __FUNC_10651_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
		registerVal7:setAlpha(0.000000)
		registerVal7:registerEventHandler("transition_complete_keyframe", __FUNC_10651_)
		registerVal9:completeAnimation()
		registerVal2.NextLevelDisplay:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BackGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.RankIconAndNumberWidgetNextTop:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Glow0:setLeftRight(false, false, -686.380000, -386.380000)
		registerVal2.Glow0:setTopBottom(false, true, -29.790000, -4.790000)
		registerVal2.Glow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		local function __FUNC_10805_(arg0, arg1)
			local function __FUNC_1095C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -625.000000, -525.000000)
				arg0:setTopBottom(false, true, -65.000000, 11.000000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1095C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1095C_)
		end

		registerVal13:completeAnimation()
		registerVal2.Glow1:setLeftRight(false, false, -625.000000, -525.000000)
		registerVal2.Glow1:setTopBottom(false, true, -65.000000, 11.000000)
		registerVal2.Glow1:setAlpha(0.840000)
		__FUNC_10805_(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.MeterGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal20:completeAnimation()
		registerVal2.starterPackXPNotice:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal22.FlashLastLevel = __FUNC_FE6D_
	registerVal21.DefaultState = registerVal22
	registerVal22 = {}
	local function __FUNC_10B81_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal6:completeAnimation()
		registerVal2.RankIconAndNumberWidgetPrevious:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.XPEarnedDisplay:setLeftRight(true, false, -67.000000, 216.410000)
		registerVal2.XPEarnedDisplay:setTopBottom(true, false, 8.000000, 34.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal8.FEButtonPanel0:completeAnimation()
		registerVal2.ProgressDescription:setLeftRight(true, false, -67.000000, 216.410000)
		registerVal2.ProgressDescription:setTopBottom(true, false, -13.000000, 13.000000)
		registerVal2.ProgressDescription:setAlpha(1.000000)
		registerVal2.ProgressDescription.FEButtonPanel0:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.NextLevelDisplay:setLeftRight(false, true, -344.000000, -42.000000)
		registerVal2.NextLevelDisplay:setTopBottom(true, false, 5.000000, 31.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BackGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.Glow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Glow1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.MeterGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.RankIconAndNumberBig:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal20:completeAnimation()
		registerVal2.starterPackXPNotice:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal22.DefaultClip = __FUNC_10B81_
	local function __FUNC_11141_()
		registerVal2:setupElementClipCounter(18.000000)
		local function __FUNC_11C37_(arg0, arg1)
			local function __FUNC_11DAF_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 2609.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_11DAF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11DAF_)
		end

		registerVal3:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
		registerVal3:setAlpha(1.000000)
		registerVal3:registerEventHandler("transition_complete_keyframe", __FUNC_11C37_)
		local function __FUNC_11F61_(arg0, arg1)
			local function __FUNC_120DB_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 2609.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_120DB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_120DB_)
		end

		registerVal4:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
		registerVal4:setAlpha(1.000000)
		registerVal4:registerEventHandler("transition_complete_keyframe", __FUNC_11F61_)
		local function __FUNC_1228D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 3369.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.RankIconAndNumberWidgetNextBase:setAlpha(0.000000)
		__FUNC_1228D_(registerVal5, {})
		local function __FUNC_12441_(arg0, arg1)
			local function __FUNC_12598_(arg0, arg1)
				local function __FUNC_12713_(arg0, arg1)
					local function __FUNC_12868_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 1789.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_12868_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 690.000000, false, false, CoD.TweenType.Bounce)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12868_)
				end

				if arg1.interrupted then
					__FUNC_12713_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12713_)
			end

			if arg1.interrupted then
				__FUNC_12598_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 649.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12598_)
		end

		registerVal6:completeAnimation()
		registerVal2.RankIconAndNumberWidgetPrevious:setAlpha(1.000000)
		__FUNC_12441_(registerVal6, {})
		local function __FUNC_12A1D_(arg0, arg1)
			local function __FUNC_12B97_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 2389.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_12B97_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 379.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12B97_)
		end

		registerVal7:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
		registerVal7:setAlpha(1.000000)
		registerVal7:registerEventHandler("transition_complete_keyframe", __FUNC_12A1D_)
		registerVal8:beginAnimation("keyframe", 3369.000000, false, false, CoD.TweenType.Linear)
		registerVal8:setAlpha(0.000000)
		registerVal8:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		local function __FUNC_12D49_(arg0, arg1)
			local function __FUNC_12EC3_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 2389.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_12EC3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 379.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12EC3_)
		end

		registerVal9:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
		registerVal9:setAlpha(1.000000)
		registerVal9:registerEventHandler("transition_complete_keyframe", __FUNC_12D49_)
		local function __FUNC_13075_(arg0, arg1)
			local function __FUNC_13204_(arg0, arg1)
				local function __FUNC_13394_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 1589.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, -44.830000, 116.170000)
					arg0:setTopBottom(true, false, -31.590000, 105.010000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_13394_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 470.000000, true, true, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, -44.830000, 116.170000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13394_)
			end

			if arg1.interrupted then
				__FUNC_13204_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1309.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 1034.170000, 1195.170000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13204_)
		end

		registerVal10:completeAnimation()
		registerVal2.BackGlow:setLeftRight(true, false, 1034.170000, 1195.170000)
		registerVal2.BackGlow:setTopBottom(true, false, -31.590000, 105.010000)
		registerVal2.BackGlow:setAlpha(0.000000)
		__FUNC_13075_(registerVal10, {})
		local function __FUNC_135B9_(arg0, arg1)
			local function __FUNC_13710_(arg0, arg1)
				local function __FUNC_1388B_(arg0, arg1)
					local function __FUNC_13A03_(arg0, arg1)
						local function __FUNC_13B58_(arg0, arg1)
							local function __FUNC_13CD3_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 2480.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_13CD3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13CD3_)
						end

						if arg1.interrupted then
							__FUNC_13B58_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 469.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13B58_)
					end

					if arg1.interrupted then
						__FUNC_13A03_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13A03_)
				end

				if arg1.interrupted then
					__FUNC_1388B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1388B_)
			end

			if arg1.interrupted then
				__FUNC_13710_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13710_)
		end

		registerVal11:completeAnimation()
		registerVal2.RankIconAndNumberWidgetNextTop:setAlpha(1.000000)
		__FUNC_135B9_(registerVal11, {})
		local function __FUNC_13E85_(arg0, arg1)
			local function __FUNC_14037_(arg0, arg1)
				local function __FUNC_141E7_(arg0, arg1)
					local function __FUNC_14397_(arg0, arg1)
						local function __FUNC_14547_(arg0, arg1)
							local function __FUNC_146F7_(arg0, arg1)
								local function __FUNC_14884_(arg0, arg1)
									local function __FUNC_149DC_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 2239.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setLeftRight(false, false, 403.120000, 703.120000)
										arg0:setTopBottom(false, true, -29.790000, -4.790000)
										arg0:setAlpha(0.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_149DC_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 449.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_149DC_)
								end

								if arg1.interrupted then
									__FUNC_14884_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
								arg0:setTopBottom(false, true, -29.790000, -4.790000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14884_)
							end

							if arg1.interrupted then
								__FUNC_146F7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 479.000000, false, false, CoD.TweenType.Bounce)
							arg0:setTopBottom(false, true, -30.700000, -4.790000)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_146F7_)
						end

						if arg1.interrupted then
							__FUNC_14547_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:setTopBottom(false, true, -35.590000, -4.790000)
						arg0:setAlpha(0.510000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14547_)
					end

					if arg1.interrupted then
						__FUNC_14397_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(false, true, -35.790000, -4.790000)
					arg0:setAlpha(0.420000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14397_)
				end

				if arg1.interrupted then
					__FUNC_141E7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(false, true, -42.000000, -4.790000)
				arg0:setAlpha(0.370000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_141E7_)
			end

			if arg1.interrupted then
				__FUNC_14037_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(false, true, -46.790000, -4.790000)
			arg0:setAlpha(0.280000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14037_)
		end

		registerVal12:completeAnimation()
		registerVal2.Glow0:setLeftRight(false, false, 403.120000, 703.120000)
		registerVal2.Glow0:setTopBottom(false, true, -29.790000, -4.790000)
		registerVal2.Glow0:setAlpha(0.000000)
		__FUNC_13E85_(registerVal12, {})
		local function __FUNC_14C01_(arg0, arg1)
			local function __FUNC_14E1E_(arg0, arg1)
				local function __FUNC_1503A_(arg0, arg1)
					local function __FUNC_15256_(arg0, arg1)
						local function __FUNC_1543F_(arg0, arg1)
							local function __FUNC_15604_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 1599.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(false, false, 488.620000, 596.620000)
								arg0:setTopBottom(false, true, -61.800000, 22.210000)
								arg0:setRGB(0.590000, 0.310000, 0.000000)
								arg0:setAlpha(0.000000)
								arg0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_15604_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 1069.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(false, false, 488.620000, 596.620000)
							arg0:setTopBottom(false, true, -61.800000, 22.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15604_)
						end

						if arg1.interrupted then
							__FUNC_1543F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Bounce)
						arg0:setLeftRight(false, false, 498.290000, 594.690000)
						arg0:setTopBottom(false, true, -64.380000, 17.700000)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1543F_)
					end

					if arg1.interrupted then
						__FUNC_15256_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 449.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, false, 499.550000, 594.430000)
					arg0:setTopBottom(false, true, -64.710000, 17.110000)
					arg0:setRGB(0.590000, 0.310000, 0.000000)
					arg0:setAlpha(0.090000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15256_)
				end

				if arg1.interrupted then
					__FUNC_1503A_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, 503.620000, 593.620000)
				arg0:setTopBottom(false, true, -65.800000, 15.210000)
				arg0:setRGB(0.880000, 0.620000, 0.000000)
				arg0:setAlpha(0.840000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1503A_)
			end

			if arg1.interrupted then
				__FUNC_14E1E_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, 504.870000, 594.870000)
			arg0:setTopBottom(false, true, -53.250000, 15.020000)
			arg0:setRGB(0.940000, 0.690000, 0.000000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14E1E_)
		end

		registerVal13:completeAnimation()
		registerVal2.Glow1:setLeftRight(false, false, 505.000000, 595.000000)
		registerVal2.Glow1:setTopBottom(false, true, -52.000000, 15.000000)
		registerVal2.Glow1:setRGB(0.950000, 0.700000, 0.000000)
		registerVal2.Glow1:setAlpha(0.000000)
		registerVal2.Glow1:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_14C01_(registerVal13, {})
		local function __FUNC_158E1_(arg0, arg1)
			local function __FUNC_15A89_(arg0, arg1)
				local function __FUNC_15C13_(arg0, arg1)
					local function __FUNC_15D8B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 2599.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setRGB(1.000000, 0.200000, 0.000000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_15D8B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 519.000000, false, false, CoD.TweenType.Bounce)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15D8B_)
				end

				if arg1.interrupted then
					__FUNC_15C13_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
				arg0:setRGB(1.000000, 0.200000, 0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15C13_)
			end

			if arg1.interrupted then
				__FUNC_15A89_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:setRGB(1.000000, 0.520000, 0.000000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15A89_)
		end

		registerVal14:completeAnimation()
		registerVal2.MeterGlow:setRGB(1.000000, 0.200000, 0.000000)
		registerVal2.MeterGlow:setAlpha(0.000000)
		__FUNC_158E1_(registerVal14, {})
		local function __FUNC_15F6B_(arg0, arg1)
			local function __FUNC_160F8_(arg0, arg1)
				local function __FUNC_162AB_(arg0, arg1)
					local function __FUNC_1645B_(arg0, arg1)
						local function __FUNC_165E8_(arg0, arg1)
							local function __FUNC_16778_(arg0, arg1)
								local function __FUNC_16908_(arg0, arg1)
									local function __FUNC_16A98_(arg0, arg1)
										local function __FUNC_16C4B_(arg0, arg1)
											local function __FUNC_16DFB_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setLeftRight(true, false, 0.000000, 246.000000)
												arg0:setTopBottom(true, false, 9.000000, 49.000000)
												arg0:setAlpha(0.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_16DFB_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
											arg0:setLeftRight(true, false, 132.000000, 377.700000)
											arg0:setAlpha(0.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16DFB_)
										end

										if arg1.interrupted then
											__FUNC_16C4B_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
										arg0:setLeftRight(true, false, 440.000000, 685.000000)
										arg0:setAlpha(0.230000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16C4B_)
									end

									if arg1.interrupted then
										__FUNC_16A98_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
									arg0:setLeftRight(true, false, 446.220000, 691.220000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16A98_)
								end

								if arg1.interrupted then
									__FUNC_16908_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(true, false, 450.000000, 695.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16908_)
							end

							if arg1.interrupted then
								__FUNC_16778_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 2000.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, 449.880000, 695.500000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16778_)
						end

						if arg1.interrupted then
							__FUNC_165E8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 447.000000, 707.930000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_165E8_)
					end

					if arg1.interrupted then
						__FUNC_1645B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 483.800000, 731.990000)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1645B_)
				end

				if arg1.interrupted then
					__FUNC_162AB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 505.500000, 750.500000)
				arg0:setAlpha(0.880000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_162AB_)
			end

			if arg1.interrupted then
				__FUNC_160F8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 714.690000, 959.690000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_160F8_)
		end

		registerVal15:beginAnimation("keyframe", 639.000000, false, false, CoD.TweenType.Linear)
		registerVal15:setLeftRight(true, false, 894.000000, 1139.000000)
		registerVal15:setTopBottom(true, false, 9.000000, 49.000000)
		registerVal15:setAlpha(0.000000)
		registerVal15:registerEventHandler("transition_complete_keyframe", __FUNC_15F6B_)
		local function __FUNC_17018_(arg0, arg1)
			local function __FUNC_17170_(arg0, arg1)
				local function __FUNC_172EB_(arg0, arg1)
					local function __FUNC_17463_(arg0, arg1)
						local function __FUNC_175DB_(arg0, arg1)
							local function __FUNC_17753_(arg0, arg1)
								local function __FUNC_178CB_(arg0, arg1)
									local function __FUNC_17A20_(arg0, arg1)
										local function __FUNC_17B9B_(arg0, arg1)
											local function __FUNC_17CF0_(arg0, arg1)
												local function __FUNC_17E6B_(arg0, arg1)
													local function __FUNC_17FE3_(arg0, arg1)
														local function __FUNC_1815B_(arg0, arg1)
															local function __FUNC_182D3_(arg0, arg1)
																local function __FUNC_18428_(arg0, arg1)
																	local function __FUNC_18580_(arg0, arg1)
																		local function __FUNC_186FB_(arg0, arg1)
																			local function __FUNC_18873_(arg0, arg1)
																				local function __FUNC_189EB_(arg0, arg1)
																					local function __FUNC_18B40_(arg0, arg1)
																						local function __FUNC_18CBB_(arg0, arg1)
																							local function __FUNC_18E10_(arg0, arg1)
																								local function __FUNC_18F8B_(arg0, arg1)
																									local function __FUNC_19103_(arg0, arg1)
																										local function __FUNC_1927B_(arg0, arg1)
																											local function __FUNC_193F3_(arg0, arg1)
																												local function __FUNC_19548_(arg0, arg1)
																													local function __FUNC_196A0_(arg0, arg1)
																														local function __FUNC_1981B_(arg0, arg1)
																															local function __FUNC_19993_(arg0, arg1)
																																local function __FUNC_19AE8_(arg0, arg1)
																																	local function __FUNC_19C40_(arg0, arg1)
																																		local function __FUNC_19DBB_(arg0, arg1)
																																			local function __FUNC_19F33_(arg0, arg1)
																																				local function __FUNC_1A088_(arg0, arg1)
																																					local function __FUNC_1A203_(arg0, arg1)
																																						local function __FUNC_1A37B_(arg0, arg1)
																																							local function __FUNC_1A4D0_(arg0, arg1)
																																								local function __FUNC_1A64B_(arg0, arg1)
																																									local function __FUNC_1A7C3_(arg0, arg1)
																																										local function __FUNC_1A918_(arg0, arg1)
																																											if not arg1.interrupted then
																																												arg0:beginAnimation("keyframe", 190.000000, false, false, CoD.TweenType.Linear)
																																											end
																																											arg0:setAlpha(0.000000)
																																											if arg1.interrupted then
																																												registerVal2.clipFinished(arg0, arg1)
																																											else
																																												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																																											end
																																										end

																																										if arg1.interrupted then
																																											__FUNC_1A918_(arg0, arg1)
																																											return 
																																										end
																																										arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																																										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A918_)
																																									end

																																									if arg1.interrupted then
																																										__FUNC_1A7C3_(arg0, arg1)
																																										return 
																																									end
																																									arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
																																									arg0:setAlpha(0.000000)
																																									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A7C3_)
																																								end

																																								if arg1.interrupted then
																																									__FUNC_1A64B_(arg0, arg1)
																																									return 
																																								end
																																								arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																																								arg0:setAlpha(1.000000)
																																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A64B_)
																																							end

																																							if arg1.interrupted then
																																								__FUNC_1A4D0_(arg0, arg1)
																																								return 
																																							end
																																							arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
																																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A4D0_)
																																						end

																																						if arg1.interrupted then
																																							__FUNC_1A37B_(arg0, arg1)
																																							return 
																																						end
																																						arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
																																						arg0:setAlpha(0.000000)
																																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A37B_)
																																					end

																																					if arg1.interrupted then
																																						__FUNC_1A203_(arg0, arg1)
																																						return 
																																					end
																																					arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
																																					arg0:setAlpha(1.000000)
																																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A203_)
																																				end

																																				if arg1.interrupted then
																																					__FUNC_1A088_(arg0, arg1)
																																					return 
																																				end
																																				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A088_)
																																			end

																																			if arg1.interrupted then
																																				__FUNC_19F33_(arg0, arg1)
																																				return 
																																			end
																																			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
																																			arg0:setAlpha(0.000000)
																																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19F33_)
																																		end

																																		if arg1.interrupted then
																																			__FUNC_19DBB_(arg0, arg1)
																																			return 
																																		end
																																		arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
																																		arg0:setAlpha(1.000000)
																																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19DBB_)
																																	end

																																	if arg1.interrupted then
																																		__FUNC_19C40_(arg0, arg1)
																																		return 
																																	end
																																	arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19C40_)
																																end

																																if arg1.interrupted then
																																	__FUNC_19AE8_(arg0, arg1)
																																	return 
																																end
																																arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
																																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19AE8_)
																															end

																															if arg1.interrupted then
																																__FUNC_19993_(arg0, arg1)
																																return 
																															end
																															arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
																															arg0:setAlpha(0.000000)
																															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19993_)
																														end

																														if arg1.interrupted then
																															__FUNC_1981B_(arg0, arg1)
																															return 
																														end
																														arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
																														arg0:setAlpha(0.850000)
																														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1981B_)
																													end

																													if arg1.interrupted then
																														__FUNC_196A0_(arg0, arg1)
																														return 
																													end
																													arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
																													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_196A0_)
																												end

																												if arg1.interrupted then
																													__FUNC_19548_(arg0, arg1)
																													return 
																												end
																												arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19548_)
																											end

																											if arg1.interrupted then
																												__FUNC_193F3_(arg0, arg1)
																												return 
																											end
																											arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
																											arg0:setAlpha(0.000000)
																											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_193F3_)
																										end

																										if arg1.interrupted then
																											__FUNC_1927B_(arg0, arg1)
																											return 
																										end
																										arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
																										arg0:setAlpha(1.000000)
																										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1927B_)
																									end

																									if arg1.interrupted then
																										__FUNC_19103_(arg0, arg1)
																										return 
																									end
																									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
																									arg0:setAlpha(0.000000)
																									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19103_)
																								end

																								if arg1.interrupted then
																									__FUNC_18F8B_(arg0, arg1)
																									return 
																								end
																								arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
																								arg0:setAlpha(1.000000)
																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18F8B_)
																							end

																							if arg1.interrupted then
																								__FUNC_18E10_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18E10_)
																						end

																						if arg1.interrupted then
																							__FUNC_18CBB_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
																						arg0:setAlpha(0.000000)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18CBB_)
																					end

																					if arg1.interrupted then
																						__FUNC_18B40_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18B40_)
																				end

																				if arg1.interrupted then
																					__FUNC_189EB_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
																				arg0:setAlpha(1.000000)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_189EB_)
																			end

																			if arg1.interrupted then
																				__FUNC_18873_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
																			arg0:setAlpha(0.000000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18873_)
																		end

																		if arg1.interrupted then
																			__FUNC_186FB_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
																		arg0:setAlpha(1.000000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_186FB_)
																	end

																	if arg1.interrupted then
																		__FUNC_18580_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18580_)
																end

																if arg1.interrupted then
																	__FUNC_18428_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18428_)
															end

															if arg1.interrupted then
																__FUNC_182D3_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
															arg0:setAlpha(0.000000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_182D3_)
														end

														if arg1.interrupted then
															__FUNC_1815B_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
														arg0:setAlpha(1.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1815B_)
													end

													if arg1.interrupted then
														__FUNC_17FE3_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17FE3_)
												end

												if arg1.interrupted then
													__FUNC_17E6B_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(1.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17E6B_)
											end

											if arg1.interrupted then
												__FUNC_17CF0_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17CF0_)
										end

										if arg1.interrupted then
											__FUNC_17B9B_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17B9B_)
									end

									if arg1.interrupted then
										__FUNC_17A20_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17A20_)
								end

								if arg1.interrupted then
									__FUNC_178CB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_178CB_)
							end

							if arg1.interrupted then
								__FUNC_17753_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17753_)
						end

						if arg1.interrupted then
							__FUNC_175DB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_175DB_)
					end

					if arg1.interrupted then
						__FUNC_17463_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17463_)
				end

				if arg1.interrupted then
					__FUNC_172EB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_172EB_)
			end

			if arg1.interrupted then
				__FUNC_17170_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17170_)
		end

		registerVal16:beginAnimation("keyframe", 670.000000, false, false, CoD.TweenType.Linear)
		registerVal16:setAlpha(0.000000)
		registerVal16:registerEventHandler("transition_complete_keyframe", __FUNC_17018_)
		local function __FUNC_1AACD_(arg0, arg1)
			local function __FUNC_1AC24_(arg0, arg1)
				local function __FUNC_1AD9F_(arg0, arg1)
					local function __FUNC_1AF17_(arg0, arg1)
						local function __FUNC_1B08F_(arg0, arg1)
							local function __FUNC_1B207_(arg0, arg1)
								local function __FUNC_1B37F_(arg0, arg1)
									local function __FUNC_1B4F7_(arg0, arg1)
										local function __FUNC_1B64C_(arg0, arg1)
											local function __FUNC_1B7C7_(arg0, arg1)
												local function __FUNC_1B93F_(arg0, arg1)
													local function __FUNC_1BAB7_(arg0, arg1)
														local function __FUNC_1BC0C_(arg0, arg1)
															local function __FUNC_1BD87_(arg0, arg1)
																local function __FUNC_1BEDC_(arg0, arg1)
																	local function __FUNC_1C057_(arg0, arg1)
																		local function __FUNC_1C1CF_(arg0, arg1)
																			if not arg1.interrupted then
																				arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
																			end
																			arg0:setAlpha(0.000000)
																			if arg1.interrupted then
																				registerVal2.clipFinished(arg0, arg1)
																			else
																				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																			end
																		end

																		if arg1.interrupted then
																			__FUNC_1C1CF_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																		arg0:setAlpha(0.000000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C1CF_)
																	end

																	if arg1.interrupted then
																		__FUNC_1C057_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
																	arg0:setAlpha(1.000000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C057_)
																end

																if arg1.interrupted then
																	__FUNC_1BEDC_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BEDC_)
															end

															if arg1.interrupted then
																__FUNC_1BD87_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
															arg0:setAlpha(0.000000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BD87_)
														end

														if arg1.interrupted then
															__FUNC_1BC0C_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BC0C_)
													end

													if arg1.interrupted then
														__FUNC_1BAB7_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(1.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BAB7_)
												end

												if arg1.interrupted then
													__FUNC_1B93F_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(0.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B93F_)
											end

											if arg1.interrupted then
												__FUNC_1B7C7_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(1.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B7C7_)
										end

										if arg1.interrupted then
											__FUNC_1B64C_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 419.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B64C_)
									end

									if arg1.interrupted then
										__FUNC_1B4F7_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B4F7_)
								end

								if arg1.interrupted then
									__FUNC_1B37F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B37F_)
							end

							if arg1.interrupted then
								__FUNC_1B207_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B207_)
						end

						if arg1.interrupted then
							__FUNC_1B08F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B08F_)
					end

					if arg1.interrupted then
						__FUNC_1AF17_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AF17_)
				end

				if arg1.interrupted then
					__FUNC_1AD9F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AD9F_)
			end

			if arg1.interrupted then
				__FUNC_1AC24_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AC24_)
		end

		registerVal17:beginAnimation("keyframe", 670.000000, false, false, CoD.TweenType.Linear)
		registerVal17:setAlpha(0.000000)
		registerVal17:registerEventHandler("transition_complete_keyframe", __FUNC_1AACD_)
		local function __FUNC_1C381_(arg0, arg2)
			if not arg2.interrupted then
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:playSound("rank_sound", arg1)
			if arg2.interrupted then
				registerVal2.clipFinished(arg0, arg2)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.promotionSound:playSound("0", arg1)
		__FUNC_1C381_(registerVal18, {})
		local function __FUNC_1C549_(arg0, arg2)
			if not arg2.interrupted then
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:playSound("rank_music", arg1)
			if arg2.interrupted then
				registerVal2.clipFinished(arg0, arg2)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:beginAnimation("keyframe", 839.000000, false, false, CoD.TweenType.Linear)
		registerVal19:playSound("0", arg1)
		registerVal19:registerEventHandler("transition_complete_keyframe", __FUNC_1C549_)
		registerVal20:completeAnimation()
		registerVal2.starterPackXPNotice:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal22.Update = __FUNC_11141_
	local function __FUNC_1C711_()
		registerVal2:setupElementClipCounter(10.000000)
		local function __FUNC_1CCF0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
		registerVal3:setAlpha(0.000000)
		registerVal3:registerEventHandler("transition_complete_keyframe", __FUNC_1CCF0_)
		local function __FUNC_1CEA5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
		registerVal4:setAlpha(0.000000)
		registerVal4:registerEventHandler("transition_complete_keyframe", __FUNC_1CEA5_)
		local function __FUNC_1D059_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
		registerVal6:setAlpha(0.000000)
		registerVal6:registerEventHandler("transition_complete_keyframe", __FUNC_1D059_)
		local function __FUNC_1D20D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
		registerVal7:setAlpha(0.000000)
		registerVal7:registerEventHandler("transition_complete_keyframe", __FUNC_1D20D_)
		local function __FUNC_1D3C1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
		registerVal9:setAlpha(0.000000)
		registerVal9:registerEventHandler("transition_complete_keyframe", __FUNC_1D3C1_)
		registerVal10:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
		registerVal10:setAlpha(0.000000)
		registerVal10:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		local function __FUNC_1D575_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
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
		registerVal11:registerEventHandler("transition_complete_keyframe", __FUNC_1D575_)
		local function __FUNC_1D729_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -673.000000, -463.000000)
			arg0:setTopBottom(false, true, -44.790000, -10.790000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.Glow0:setLeftRight(false, false, -626.500000, -535.500000)
		registerVal2.Glow0:setTopBottom(false, true, -42.000000, -13.500000)
		__FUNC_1D729_(registerVal12, {})
		local function __FUNC_1D92A_(arg0, arg1)
			local function __FUNC_1DA80_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -625.000000, -525.000000)
				arg0:setTopBottom(false, true, -65.000000, 11.000000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1DA80_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DA80_)
		end

		registerVal13:completeAnimation()
		registerVal2.Glow1:setLeftRight(false, false, -625.000000, -525.000000)
		registerVal2.Glow1:setTopBottom(false, true, -65.000000, 11.000000)
		registerVal2.Glow1:setAlpha(0.000000)
		__FUNC_1D92A_(registerVal13, {})
		local function __FUNC_1DCA5_(arg0, arg1)
			local function __FUNC_1DE1F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1DE1F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DE1F_)
		end

		registerVal14:completeAnimation()
		registerVal2.MeterGlow:setAlpha(0.000000)
		__FUNC_1DCA5_(registerVal14, {})
	end

	registerVal22.FlashNextLevel = __FUNC_1C711_
	local function __FUNC_1DFD1_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.XpBarFrame:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.XpBar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_1E5A7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
		registerVal6:setAlpha(0.000000)
		registerVal6:registerEventHandler("transition_complete_keyframe", __FUNC_1E5A7_)
		local function __FUNC_1E759_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
		registerVal7:setAlpha(0.000000)
		registerVal7:registerEventHandler("transition_complete_keyframe", __FUNC_1E759_)
		registerVal9:completeAnimation()
		registerVal2.NextLevelDisplay:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BackGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.RankIconAndNumberWidgetNextTop:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Glow0:setLeftRight(false, false, -686.380000, -386.380000)
		registerVal2.Glow0:setTopBottom(false, true, -29.790000, -4.790000)
		registerVal2.Glow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		local function __FUNC_1E90D_(arg0, arg1)
			local function __FUNC_1EA64_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -625.000000, -525.000000)
				arg0:setTopBottom(false, true, -65.000000, 11.000000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1EA64_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EA64_)
		end

		registerVal13:completeAnimation()
		registerVal2.Glow1:setLeftRight(false, false, -625.000000, -525.000000)
		registerVal2.Glow1:setTopBottom(false, true, -65.000000, 11.000000)
		registerVal2.Glow1:setAlpha(0.840000)
		__FUNC_1E90D_(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.MeterGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal22.FlashLastLevel = __FUNC_1DFD1_
	registerVal21.Arabic = registerVal22
	registerVal2.clipsPerState = registerVal21
	local registerVal23 = {}
	local registerVal24 = {}
	registerVal24.stateName = "Arabic"
	local function __FUNC_1EC89_(arg0, arg1, arg2)
		return IsCurrentLanguageArabic()
	end

	registerVal24.condition = __FUNC_1EC89_
	registerVal23 = {registerVal24}
	registerVal2:mergeStateConditions(registerVal23)
	local function __FUNC_1ECE1_(arg0)
		arg0.XpBarFrame:close()
		arg0.XpBar:close()
		arg0.RankIconAndNumberWidgetNextBase:close()
		arg0.RankIconAndNumberWidgetPrevious:close()
		arg0.XPEarnedDisplay:close()
		arg0.ProgressDescription:close()
		arg0.NextLevelDisplay:close()
		arg0.RankIconAndNumberWidgetNextTop:close()
		arg0.RankIconAndNumberBig:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1ECE1_)
	if __FUNC_38A_ then
		__FUNC_38A_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.XpBarContainer.new = __FUNC_4AA_
