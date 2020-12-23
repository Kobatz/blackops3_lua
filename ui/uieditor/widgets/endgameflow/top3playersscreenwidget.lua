-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.Killcam.KillcamHeader")
require("ui.uieditor.widgets.EndGameFlow.Top3PlayersScreenScoreWidget2")
require("ui.uieditor.widgets.EndGameFlow.Top3PlayersScreenScoreWidget1")
require("ui.uieditor.widgets.EndGameFlow.Top3PlayersScreenScoreWidget3")
require("ui.uieditor.widgets.EndGameFlow.KillcamWidgetFctnPnl")
require("ui.uieditor.widgets.HUD.Outcome.WinnerFactionInfo")
require("ui.uieditor.widgets.CharacterCustomization.tauntWidget")
local function __FUNC_3FA_(arg0, arg1, arg2)
	arg0:subscribeToGlobalModel(arg1, "PerController", "scriptNotify", __FUNC_54F_(arg1)
		local registerVal1 = IsParamModelEqualToString(arg1, "show_outcome")
		if registerVal1 then
			registerVal1 = CoD.GetScriptNotifyData(arg1)
			local registerVal3 = HUD_IsFFA()
			if registerVal1[4.000000] == Enum.team_t.TEAM_BAD or registerVal3 then
				arg0.WinnerFactionInfo:close()
			end
		end
	end)

	local registerVal4 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.CreateModel(registerVal4, "displayTop3Players")
	local function __FUNC_6D5_(arg2)
		local registerVal1 = Engine.GetModelValue(arg2)
		if registerVal1 == 1.000000 then
			arg0.KillcamHeader.KillcamWidgetTitle0.KillcamText0:setText(Engine.Localize("MENU_TOP_SCORERS_CAPS"))
			registerVal1 = Engine.UpdateTopPlayerUIModels(arg1)
			local registerVal4 = Engine.GetModelForController(arg1)
			local registerVal2 = Engine.GetModelValue(Engine.GetModel(registerVal4, "displayTopPlayer3"))
			if registerVal1 < 3.000000 or registerVal2 == 0.000000 then
				arg0.Player3ScoreWidget:close()
			end
			registerVal4 = Engine.GetModelForController(arg1)
			registerVal2 = Engine.GetModelValue(Engine.GetModel(registerVal4, "displayTopPlayer2"))
			if registerVal1 < 2.000000 or registerVal2 == 0.000000 then
				arg0.Player2ScoreWidget:close()
			end
			arg0:setAlpha(1.000000)
			arg0:playClip("DefaultClip")
		end
	end

	arg0:subscribeToModel(registerVal3, __FUNC_6D5_)
end

local function __FUNC_A47_(arg0, arg1)
	Engine.UpdateTopPlayerUIModels(arg1)
	for index3=1.000000, 3.000000, 1.000000 do
		local registerVal9 = Engine.GetModelForController(arg1)
		local registerVal8 = Engine.CreateModel(registerVal9, ("displayTopPlayer" .. index3))
		Engine.SetModelValue(registerVal8, 0.000000)
	end
	local registerVal5 = DataSources.TopScorerMenuData.getModel(arg1)
	local registerVal4 = Engine.CreateModel(registerVal5, "showGestures")
	Engine.SetModelValue(registerVal4, false)
	registerVal4 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.CreateModel(registerVal4, "forceScoreboard")
	local function __FUNC_E05_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 == 1.000000 then
			arg0:setAlpha(0.000000)
		end
	end

	arg0:subscribeToModel(registerVal3, __FUNC_E05_)
	registerVal5 = Engine.GetGlobalModel()
	registerVal4 = Engine.GetModel(registerVal5, "factions")
	if not registerVal4 then
		local registerVal6 = Engine.GetGlobalModel()
		Engine.CreateModel(registerVal6, "factions")
	end
	registerVal6 = Engine.CreateModel(registerVal4, "winnersFactionDisplayName")
	Engine.SetModelValue(registerVal6, "")
	registerVal6 = Engine.CreateModel(registerVal4, "winnersFactionIcon")
	Engine.SetModelValue(registerVal6, "")
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.Top3PlayersScreenWidget = registerVal3
local function __FUNC_EA3_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_A47_ then
		__FUNC_A47_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Top3PlayersScreenWidget)
	registerVal2.id = "Top3PlayersScreenWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.KillcamHeader.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 128.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Killcam"
	local function __FUNC_1D41_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_KILLCAM)
		if registerVal3 then
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_NEMESIS_KILLCAM)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_FINAL_KILLCAM)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_ROUND_END_KILLCAM)
			if not registerVal3 and not registerVal3 and not registerVal3 then
				registerVal3 = AlwaysFalse()
			else
			end
		end
		return true
	end

	registerVal7.condition = __FUNC_1D41_
	local registerVal8 = {}
	registerVal8.stateName = "FinalKillcam"
	local function __FUNC_1F4B_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_FINAL_KILLCAM)
		if registerVal3 then
			registerVal3 = AlwaysFalse()
		end
		return registerVal3
	end

	registerVal8.condition = __FUNC_1F4B_
	local registerVal9 = {}
	registerVal9.stateName = "RoundEndingKillcam"
	local function __FUNC_203F_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_ROUND_END_KILLCAM)
		if registerVal3 then
			registerVal3 = AlwaysFalse()
		end
		return registerVal3
	end

	registerVal9.condition = __FUNC_203F_
	local registerVal10 = {}
	registerVal10.stateName = "NemesisKillcam"
	local function __FUNC_2137_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_NEMESIS_KILLCAM)
		if registerVal3 then
			registerVal3 = AlwaysFalse()
		end
		return registerVal3
	end

	registerVal10.condition = __FUNC_2137_
	registerVal6 = {registerVal7, registerVal8, registerVal9, registerVal10}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM))
	local function __FUNC_222D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM)
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_222D_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_NEMESIS_KILLCAM))
	local function __FUNC_23B5_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_NEMESIS_KILLCAM)
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_23B5_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_FINAL_KILLCAM))
	local function __FUNC_2542_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_FINAL_KILLCAM)
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_2542_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_ROUND_END_KILLCAM))
	local function __FUNC_26CC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_ROUND_END_KILLCAM)
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_26CC_)
	registerVal2:addElement(registerVal3)
	registerVal2.KillcamHeader = registerVal3
	local registerVal4 = CoD.Top3PlayersScreenScoreWidget2.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -499.330000, -224.330000)
	registerVal4:setTopBottom(false, true, -176.350000, -72.350000)
	local function __FUNC_285C_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:subscribeToGlobalModel(arg1, "TopScorerMenuData", "2", __FUNC_285C_)
	registerVal2:addElement(registerVal4)
	registerVal2.Player2ScoreWidget = registerVal4
	local registerVal5 = CoD.Top3PlayersScreenScoreWidget1.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -137.500000, 137.500000)
	registerVal5:setTopBottom(false, true, -144.350000, -45.350000)
	local function __FUNC_28AE_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:subscribeToGlobalModel(arg1, "TopScorerMenuData", "1", __FUNC_28AE_)
	registerVal2:addElement(registerVal5)
	registerVal2.Player1ScoreWidget = registerVal5
	registerVal6 = CoD.Top3PlayersScreenScoreWidget3.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, 224.470000, 499.470000)
	registerVal6:setTopBottom(false, true, -176.350000, -72.350000)
	local function __FUNC_28FE_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:subscribeToGlobalModel(arg1, "TopScorerMenuData", "3", __FUNC_28FE_)
	registerVal2:addElement(registerVal6)
	registerVal2.Player3ScoreWidget = registerVal6
	registerVal7 = CoD.KillcamWidgetFctnPnl.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 200.000000)
	registerVal7:setRGB(0.400000, 0.400000, 0.400000)
	registerVal2:addElement(registerVal7)
	registerVal2.KillcamWidgetFctnPnl0 = registerVal7
	registerVal8 = CoD.WinnerFactionInfo.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 0.000000, 390.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 180.000000)
	registerVal8.KillcamWidgetTitleStatus0.SubTitle:setText(Engine.Localize("MENU_WINNERS_CAPS"))
	local function __FUNC_294E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.WeaponNameWidget0.weaponNameLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "FactionsGlobal", "winnersFactionDisplayName", __FUNC_294E_)
	local function __FUNC_2A52_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.OutcomeFactionIcon.OutcomeFactionIconItem.WinningTeamFactionIcon0:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "FactionsGlobal", "winnersFactionIcon", __FUNC_2A52_)
	local function __FUNC_2B85_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.OutcomeFactionIcon.OutcomeFactionIconItem.WinningTeamFactionIcon:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "FactionsGlobal", "winnersFactionIcon", __FUNC_2B85_)
	local function __FUNC_2CB8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.OutcomeFactionIcon.OutcomeFactionIconItemForCodCaster.WinningTeamFactionIcon0:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "FactionsGlobal", "winnersFactionIcon", __FUNC_2CB8_)
	local function __FUNC_2DF9_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.OutcomeFactionIcon.OutcomeFactionIconItemForCodCaster.WinningTeamFactionIcon:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "FactionsGlobal", "winnersFactionIcon", __FUNC_2DF9_)
	registerVal2:addElement(registerVal8)
	registerVal2.WinnerFactionInfo = registerVal8
	registerVal9 = CoD.tauntWidget.new(arg0, arg1)
	registerVal9:setLeftRight(false, true, -272.220000, -64.000000)
	registerVal9:setTopBottom(true, false, 14.000000, 140.000000)
	registerVal9:setScale(0.850000)
	local function __FUNC_2F38_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal2, nil, false, __FUNC_2F38_)
	registerVal2:addElement(registerVal9)
	registerVal2.gesturesOn = registerVal9
	registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_2F8A_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_33E9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 620.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(true, false, 0.000000, 128.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.KillcamHeader:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.KillcamHeader:setTopBottom(true, false, -64.000000, 64.000000)
		registerVal2.KillcamHeader:setAlpha(0.000000)
		__FUNC_33E9_(registerVal3, {})
		local function __FUNC_3603_(arg0, arg1)
			local function __FUNC_3758_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 499.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -499.330000, -224.330000)
				arg0:setTopBottom(false, true, -176.350000, -72.350000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3758_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3758_)
		end

		registerVal4:completeAnimation()
		registerVal2.Player2ScoreWidget:setLeftRight(false, false, -499.330000, -224.330000)
		registerVal2.Player2ScoreWidget:setTopBottom(false, true, -211.350000, -107.350000)
		registerVal2.Player2ScoreWidget:setAlpha(0.000000)
		__FUNC_3603_(registerVal4, {})
		local function __FUNC_397D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -137.500000, 137.500000)
			arg0:setTopBottom(false, true, -144.350000, -45.350000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Player1ScoreWidget:setLeftRight(false, false, -137.500000, 137.500000)
		registerVal2.Player1ScoreWidget:setTopBottom(false, true, -179.350000, -80.350000)
		registerVal2.Player1ScoreWidget:setAlpha(0.000000)
		__FUNC_397D_(registerVal5, {})
		local function __FUNC_3BA1_(arg0, arg1)
			local function __FUNC_3CF8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 500.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, 224.470000, 499.470000)
				arg0:setTopBottom(false, true, -176.350000, -72.350000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3CF8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 469.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3CF8_)
		end

		registerVal6:completeAnimation()
		registerVal2.Player3ScoreWidget:setLeftRight(false, false, 224.470000, 499.470000)
		registerVal2.Player3ScoreWidget:setTopBottom(false, true, -211.350000, -107.350000)
		registerVal2.Player3ScoreWidget:setAlpha(0.000000)
		__FUNC_3BA1_(registerVal6, {})
		local function __FUNC_3F1D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 839.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.KillcamWidgetFctnPnl0:setAlpha(0.000000)
		__FUNC_3F1D_(registerVal7, {})
		local function __FUNC_40D1_(arg0, arg1)
			local function __FUNC_4228_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4228_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 519.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4228_)
		end

		registerVal8:completeAnimation()
		registerVal2.WinnerFactionInfo:setAlpha(0.000000)
		__FUNC_40D1_(registerVal8, {})
	end

	registerVal11.DefaultClip = __FUNC_2F8A_
	registerVal10.DefaultState = registerVal11
	registerVal2.clipsPerState = registerVal10
	local function __FUNC_43DD_(arg0)
		local registerVal2 = IsParamModelEqualTo(arg0, true)
		if registerVal2 then
			CallCustomElementFunction_Self(registerVal2, "showGestures", arg0)
		end
	end

	registerVal2:subscribeToGlobalModel(arg1, "TopScorerMenuData", "showGestures", __FUNC_43DD_)
	registerVal3.id = "KillcamHeader"
	local function __FUNC_4493_(arg0, arg1)
		local registerVal2 = arg0.KillcamHeader:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_4493_)
	local function __FUNC_4599_(arg0)
		arg0.KillcamHeader:close()
		arg0.Player2ScoreWidget:close()
		arg0.Player1ScoreWidget:close()
		arg0.Player3ScoreWidget:close()
		arg0.KillcamWidgetFctnPnl0:close()
		arg0.WinnerFactionInfo:close()
		arg0.gesturesOn:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_4599_)
	if __FUNC_3FA_ then
		__FUNC_3FA_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.Top3PlayersScreenWidget.new = __FUNC_EA3_
