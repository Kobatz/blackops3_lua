-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MPHudWidgets.CodCaster.CodCasterTimer")
require("ui.uieditor.widgets.CodCaster.CodCasterHeaderGameModeWidget")
require("ui.uieditor.widgets.CodCaster.codcaster_ScoreLogoWidget")
require("ui.uieditor.widgets.CodCaster.codcasterRoundsContainer")
local function __FUNC_313_(arg0, arg1, arg2)
	local registerVal3 = Engine.GetCurrentGameType()
	local registerVal4 = Engine.StructTableLookupString("game_types", "name", registerVal3, "name_ref")
	arg0.ModeAndMapName:setText(Engine.Localize(registerVal4))
	local registerVal6 = Engine.GetModelForController(arg1)
	local registerVal5 = CoD.SafeGetModelValue(registerVal6, "deadSpectator.playerTeam")
	arg0.spectatedPlayerTeam = registerVal5
	local registerVal8 = Engine.GetModelForController(arg1)
	local registerVal7 = Engine.GetModel(registerVal8, "deadSpectator.playerTeam")
	local function __FUNC_582_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if arg0.spectatedPlayerTeam ~= registerVal1 then
			if registerVal1 == Enum.team_t.TEAM_AXIS then
				arg0:playClip("SpectatingTeamAxis")
			else
				if registerVal1 == Enum.team_t.TEAM_ALLIES then
					arg0:playClip("SpectatingTeamAllies")
				end
			end
		end
		arg0.spectatedPlayerTeam = registerVal1
	end

	arg0:subscribeToModel(registerVal7, __FUNC_582_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.CodCasterHeaderTeamBased = registerVal2
local function __FUNC_726_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CodCasterHeaderTeamBased)
	registerVal2.id = "CodCasterHeaderTeamBased"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 591.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 131.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -284.000000, 283.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 258.060000)
	registerVal3:setAlpha(0.500000)
	registerVal3:setImage(RegisterImage("uie_t7_codcaster_centerheader"))
	registerVal2:addElement(registerVal3)
	registerVal2.modeBG00 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -284.000000, 283.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 258.060000)
	registerVal4:setImage(RegisterImage("uie_t7_codcaster_centerheader"))
	registerVal2:addElement(registerVal4)
	registerVal2.modeBG = registerVal4
	local registerVal5 = CoD.CodCasterTimer.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -35.700000, 36.300000)
	registerVal5:setTopBottom(true, false, 51.500000, 87.500000)
	registerVal2:addElement(registerVal5)
	registerVal2.CodCasterTimer = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(false, false, -94.700000, 93.300000)
	registerVal6:setTopBottom(true, false, 12.500000, 29.500000)
	registerVal6:setRGB(ColorSet.BadgeText.r, ColorSet.BadgeText.g, ColorSet.BadgeText.b)
	registerVal6:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal6:setLetterSpacing(-0.500000)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1F7D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(LocalizeToUpperString(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "Scoreboard", "gameType", __FUNC_1F7D_)
	registerVal2:addElement(registerVal6)
	registerVal2.ModeAndMapName = registerVal6
	local registerVal7 = CoD.CodCasterHeaderGameModeWidget.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -250.000000, 252.000000)
	registerVal7:setTopBottom(true, false, 100.000000, 130.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.CodCasterHeaderGameModeWidget = registerVal7
	local registerVal8 = CoD.codcaster_ScoreLogoWidget.new(arg0, arg1)
	registerVal8:setLeftRight(false, true, -246.000000, -38.000000)
	registerVal8:setTopBottom(true, false, 42.000000, 109.000000)
	local function __FUNC_2037_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.teamcolor:setRGB(registerVal1)
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "Factions", "axisFactionColor", __FUNC_2037_)
	local function __FUNC_20E6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.logo:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "Factions", "axisFactionIcon", __FUNC_20E6_)
	local function __FUNC_21B2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.testElementFull:setRGB(CodcasterGetAccentColorForTeamColor(arg1, "team2", registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "Factions", "axisFactionColor", __FUNC_21B2_)
	local function __FUNC_22B4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.testElement:setRGB(registerVal1)
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "Factions", "axisFactionColor", __FUNC_22B4_)
	local function __FUNC_2368_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.testElement0Full:setRGB(CodcasterGetAccentColorForTeamColor(arg1, "team2", registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "Factions", "axisFactionColor", __FUNC_2368_)
	local function __FUNC_246D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.testElement0:setRGB(registerVal1)
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "Factions", "axisFactionColor", __FUNC_246D_)
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "SpectatingThisTeam"
	local function __FUNC_2521_(arg0, arg2, arg3)
		return IsCodCasterSpectatingPlayerInTeam(arg1, Enum.team_t.TEAM_AXIS)
	end

	registerVal12.condition = __FUNC_2521_
	registerVal11 = {registerVal12}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "deadSpectator.playerTeam")
	local function __FUNC_25D4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "deadSpectator.playerTeam"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_25D4_)
	registerVal2:addElement(registerVal8)
	registerVal2.codcasterScoreLogoWidgetDarkOps = registerVal8
	local registerVal9 = CoD.codcaster_ScoreLogoWidget.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 36.930000, 245.930000)
	registerVal9:setTopBottom(true, false, 42.000000, 109.000000)
	registerVal9:setYRot(180.000000)
	local function __FUNC_2702_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.teamcolor:setRGB(registerVal1)
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "Factions", "alliesFactionColor", __FUNC_2702_)
	local function __FUNC_27B2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.logo:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "Factions", "alliesFactionIcon", __FUNC_27B2_)
	local function __FUNC_287E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.testElementFull:setRGB(CodcasterGetAccentColorForTeamColor(arg1, "team1", registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "Factions", "alliesFactionColor", __FUNC_287E_)
	local function __FUNC_2980_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.testElement:setRGB(registerVal1)
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "Factions", "alliesFactionColor", __FUNC_2980_)
	local function __FUNC_2A34_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.testElement0Full:setRGB(CodcasterGetAccentColorForTeamColor(arg1, "team1", registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "Factions", "alliesFactionColor", __FUNC_2A34_)
	local function __FUNC_2B39_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.testElement0:setRGB(registerVal1)
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "Factions", "alliesFactionColor", __FUNC_2B39_)
	registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "SpectatingThisTeam"
	local function __FUNC_2BED_(arg0, arg2, arg3)
		return IsCodCasterSpectatingPlayerInTeam(arg1, Enum.team_t.TEAM_ALLIES)
	end

	registerVal13.condition = __FUNC_2BED_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, "deadSpectator.playerTeam")
	local function __FUNC_2CA2_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "deadSpectator.playerTeam"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_2CA2_)
	registerVal2:addElement(registerVal9)
	registerVal2.codcasterScoreLogoWidgetBlackOps = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(false, true, -213.500000, -52.500000)
	registerVal10:setTopBottom(true, false, 30.000000, 46.000000)
	registerVal10:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	local function __FUNC_2DCE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setText(registerVal1)
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "Factions", "axisFactionDisplayName", __FUNC_2DCE_)
	registerVal2:addElement(registerVal10)
	registerVal2.teamNameDarkOps = registerVal10
	registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, 54.000000, 217.000000)
	registerVal11:setTopBottom(true, false, 30.000000, 46.000000)
	registerVal11:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	local function __FUNC_2E60_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setText(registerVal1)
		end
	end

	registerVal11:subscribeToGlobalModel(arg1, "Factions", "alliesFactionDisplayName", __FUNC_2E60_)
	registerVal2:addElement(registerVal11)
	registerVal2.teamNameBlackOps = registerVal11
	registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, true, -293.500000, -208.500000)
	registerVal12:setTopBottom(true, false, 38.370000, 106.370000)
	registerVal12:setImage(RegisterImage("uie_t7_codcaster_innercircle"))
	registerVal2:addElement(registerVal12)
	registerVal2.InnerCircle = registerVal12
	registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 209.110000, 294.110000)
	registerVal13:setTopBottom(true, false, 38.370000, 106.370000)
	registerVal13:setYRot(180.000000)
	registerVal13:setImage(RegisterImage("uie_t7_codcaster_innercircle"))
	registerVal2:addElement(registerVal13)
	registerVal2.InnerCircle0 = registerVal13
	local registerVal14 = LUI.UIText.new()
	registerVal14:setLeftRight(false, true, -240.000000, -160.000000)
	registerVal14:setTopBottom(true, false, 56.000000, 98.000000)
	registerVal14:setRGB(0.000000, 0.000000, 0.000000)
	registerVal14:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal14:setLetterSpacing(-2.000000)
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_2EF4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal14:subscribeToGlobalModel(arg1, "GameScore", "axisScore", __FUNC_2EF4_)
	registerVal2:addElement(registerVal14)
	registerVal2.teamScoreDarkOps = registerVal14
	local registerVal15 = LUI.UIText.new()
	registerVal15:setLeftRight(true, false, 160.000000, 240.000000)
	registerVal15:setTopBottom(true, false, 56.000000, 98.000000)
	registerVal15:setRGB(0.000000, 0.000000, 0.000000)
	registerVal15:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal15:setLetterSpacing(-2.000000)
	registerVal15:setLineSpacing(-1.000000)
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	local function __FUNC_2FAE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal15:subscribeToGlobalModel(arg1, "GameScore", "alliesScore", __FUNC_2FAE_)
	registerVal2:addElement(registerVal15)
	registerVal2.teamScoreBlackOps = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, 142.110000, 452.110000)
	registerVal16:setTopBottom(true, false, 8.000000, 167.000000)
	registerVal16:setAlpha(0.350000)
	registerVal16:setImage(RegisterImage("uie_t7_codcaster_light"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal16)
	registerVal2.light = registerVal16
	local registerVal17 = CoD.codcasterRoundsContainer.new(arg0, arg1)
	registerVal17:setLeftRight(true, false, 246.930000, 342.680000)
	registerVal17:setTopBottom(true, false, 82.000000, 122.000000)
	registerVal17:setScale(0.900000)
	local registerVal20 = {}
	local registerVal21 = {}
	registerVal21.stateName = "Invisible"
	local function __FUNC_3066_(arg0, arg2, arg3)
		return IsSingleRound(arg1)
	end

	registerVal21.condition = __FUNC_3066_
	local registerVal22 = {}
	registerVal22.stateName = "Overtime"
	local function __FUNC_30B7_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_OVERTIME)
		return registerVal3
	end

	registerVal22.condition = __FUNC_30B7_
	local registerVal23 = {}
	registerVal23.stateName = "RoundBasedNoLimit"
	local function __FUNC_3181_(arg0, arg2, arg3)
		local registerVal3 = HasRoundLimit(arg1)
		return (not registerVal3)
	end

	registerVal23.condition = __FUNC_3181_
	local registerVal24 = {}
	registerVal24.stateName = "RoundBasedLimitedRounds"
	local function __FUNC_31D7_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal24.condition = __FUNC_31D7_
	registerVal20 = {registerVal21, registerVal22, registerVal23, registerVal24}
	registerVal17:mergeStateConditions(registerVal20)
	registerVal21 = Engine.GetModelForController(arg1)
	registerVal20 = Engine.GetModel(registerVal21, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_OVERTIME))
	local function __FUNC_3220_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_OVERTIME)
		arg0:updateElementState(registerVal17, registerVal4)
	end

	registerVal17:subscribeToModel(registerVal20, __FUNC_3220_)
	registerVal2:addElement(registerVal17)
	registerVal2.codcasterRoundsContainer = registerVal17
	local registerVal18 = {}
	local registerVal19 = {}
	local function __FUNC_33A7_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal8:completeAnimation()
		registerVal2.codcasterScoreLogoWidgetDarkOps:setScale(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal17:completeAnimation()
		registerVal2.codcasterRoundsContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_33A7_
	local function __FUNC_3533_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_3770_(arg0, arg1)
			local function __FUNC_38EB_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setScale(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_38EB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:setScale(1.100000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38EB_)
		end

		registerVal8:completeAnimation()
		registerVal2.codcasterScoreLogoWidgetDarkOps:setScale(1.000000)
		__FUNC_3770_(registerVal8, {})
		local function __FUNC_3A9D_(arg0, arg1)
			local function __FUNC_3C4F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, true, -213.500000, -52.500000)
				arg0:setTopBottom(true, false, 30.000000, 46.000000)
				arg0:setScale(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3C4F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 26.000000, 42.000000)
			arg0:setScale(1.100000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C4F_)
		end

		registerVal10:completeAnimation()
		registerVal2.teamNameDarkOps:setLeftRight(false, true, -213.500000, -52.500000)
		registerVal2.teamNameDarkOps:setTopBottom(true, false, 30.000000, 46.000000)
		registerVal2.teamNameDarkOps:setScale(1.000000)
		__FUNC_3A9D_(registerVal10, {})
		local function __FUNC_3E71_(arg0, arg1)
			local function __FUNC_3FEB_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setScale(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3FEB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:setScale(1.100000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3FEB_)
		end

		registerVal14:completeAnimation()
		registerVal2.teamScoreDarkOps:setScale(1.000000)
		__FUNC_3E71_(registerVal14, {})
	end

	registerVal19.SpectatingTeamAxis = __FUNC_3533_
	local function __FUNC_419D_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_43DF_(arg0, arg1)
			local function __FUNC_4557_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setScale(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4557_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:setScale(1.100000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4557_)
		end

		registerVal9:completeAnimation()
		registerVal2.codcasterScoreLogoWidgetBlackOps:setScale(1.000000)
		__FUNC_43DF_(registerVal9, {})
		local function __FUNC_4709_(arg0, arg1)
			local function __FUNC_48BB_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 54.000000, 217.000000)
				arg0:setTopBottom(true, false, 30.000000, 46.000000)
				arg0:setScale(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_48BB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 26.000000, 42.000000)
			arg0:setScale(1.100000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_48BB_)
		end

		registerVal11:completeAnimation()
		registerVal2.teamNameBlackOps:setLeftRight(true, false, 54.000000, 217.000000)
		registerVal2.teamNameBlackOps:setTopBottom(true, false, 30.000000, 46.000000)
		registerVal2.teamNameBlackOps:setScale(1.000000)
		__FUNC_4709_(registerVal11, {})
		local function __FUNC_4ADD_(arg0, arg1)
			local function __FUNC_4C57_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setScale(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4C57_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:setScale(1.100000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C57_)
		end

		registerVal15:completeAnimation()
		registerVal2.teamScoreBlackOps:setScale(1.000000)
		__FUNC_4ADD_(registerVal15, {})
	end

	registerVal19.SpectatingTeamAllies = __FUNC_419D_
	registerVal18.DefaultState = registerVal19
	registerVal19 = {}
	local function __FUNC_4E09_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal14:completeAnimation()
		registerVal2.teamScoreDarkOps:setScale(0.700000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.teamScoreBlackOps:setScale(0.700000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal17:completeAnimation()
		registerVal2.codcasterRoundsContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_4E09_
	registerVal18.TenThousandPLus = registerVal19
	registerVal2.clipsPerState = registerVal18
	local function __FUNC_4FEC_(arg0)
		arg0.CodCasterTimer:close()
		arg0.CodCasterHeaderGameModeWidget:close()
		arg0.codcasterScoreLogoWidgetDarkOps:close()
		arg0.codcasterScoreLogoWidgetBlackOps:close()
		arg0.codcasterRoundsContainer:close()
		arg0.ModeAndMapName:close()
		arg0.teamNameDarkOps:close()
		arg0.teamNameBlackOps:close()
		arg0.teamScoreDarkOps:close()
		arg0.teamScoreBlackOps:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_4FEC_)
	if __FUNC_313_ then
		__FUNC_313_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.CodCasterHeaderTeamBased.new = __FUNC_726_
