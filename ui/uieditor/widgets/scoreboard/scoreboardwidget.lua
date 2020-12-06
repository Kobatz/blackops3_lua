-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Scoreboard.ScoreboardFactionScoresList")
require("ui.uieditor.widgets.Scoreboard.ScoreboardFactionWidget")
require("ui.uieditor.widgets.Scoreboard.ScoreboardHeaderWidget")
require("ui.uieditor.widgets.Scoreboard.ScoreboardWidgetButtonContainer")
local function __FUNC_321_(arg0, arg1)
	local registerVal7 = Engine.GetModelForController(arg1)
	local registerVal6 = Engine.CreateModel(registerVal7, "CodCaster")
	registerVal7 = Engine.CreateModel(registerVal6, "showCodCasterScoreboard")
	local registerVal8 = Engine.GetModelValue(registerVal7)
	local registerVal9 = IsCodCaster(arg1)
	if arg1 or not registerVal8 then
		registerVal9 = IsInGame()
		registerVal9 = IsTeamBasedOrInfect(arg1)
		registerVal9 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_GAME_ENDED)
		registerVal9 = Engine.GetScoreboardData(arg1)
		if registerVal9 and registerVal9 and registerVal9 and registerVal9.scores.TEAM_ALLIES < registerVal9.scores.TEAM_AXIS then
		end
	end
	if arg1 or not arg0.ScoreboardFactionScoresList.Team1.height then
		return 
	end
	arg0.ScoreboardFactionWidget3:setTopBottom(true, false, 34.000000, (34.000000 + arg0.ScoreboardFactionScoresList.Team2.height))
	arg0.ScoreboardFactionWidget2:setTopBottom(true, false, 34.000000, (34.000000 + arg0.ScoreboardFactionScoresList.Team2.height))
	arg0.ScoreboardFactionScoresList.Team2:setPriority(0.000000)
	local registerVal13 = {}
	registerVal13.down = arg0.ScoreboardFactionScoresList.Team1
	arg0.ScoreboardFactionScoresList.Team2.navigation = registerVal13
	arg0.ScoreboardFactionWidget1:setTopBottom(true, false, ((34.000000 + arg0.ScoreboardFactionScoresList.Team2.height) + 3.000000), (((34.000000 + arg0.ScoreboardFactionScoresList.Team2.height) + 3.000000) + arg0.ScoreboardFactionScoresList.Team1.height))
	arg0.ScoreboardFactionScoresList.Team1:setPriority(1.000000)
	local registerVal16 = {}
	registerVal16.up = arg0.ScoreboardFactionScoresList.Team2
	arg0.ScoreboardFactionScoresList.Team1.navigation = registerVal16
	registerVal16 = IsCodCaster(arg1)
	if registerVal16 and registerVal8 then
		arg0.ScoreboardWidgetButtonContainer:setTopBottom(true, false, (34.000000 + arg0.ScoreboardFactionScoresList.Team2.height), ((34.000000 + arg0.ScoreboardFactionScoresList.Team2.height) + 32.000000))
	else
		registerVal16 = IsTeamBasedOrInfect(arg1)
		if registerVal16 then
			arg0.ScoreboardWidgetButtonContainer:setTopBottom(true, false, (((34.000000 + arg0.ScoreboardFactionScoresList.Team2.height) + 3.000000) + arg0.ScoreboardFactionScoresList.Team1.height), ((((34.000000 + arg0.ScoreboardFactionScoresList.Team2.height) + 3.000000) + arg0.ScoreboardFactionScoresList.Team1.height) + 32.000000))
		else
			arg0.ScoreboardWidgetButtonContainer:setTopBottom(true, false, (34.000000 + arg0.ScoreboardFactionScoresList.Team2.height), ((34.000000 + arg0.ScoreboardFactionScoresList.Team2.height) + 32.000000))
		end
	end
end

local function __FUNC_919_(arg0)
	if arg0.requestedRowCount == #arg0.layoutItems then
	end
	return true
end

local function __FUNC_9A4_(arg0, arg1, arg2)
	local function __FUNC_CF3_(arg2)
		__FUNC_321_(arg0, arg1)
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0.ScoreboardFactionScoresList.Team1, "updateLayout", __FUNC_CF3_)
	local function __FUNC_D2C_(arg2)
		__FUNC_321_(arg0, arg1)
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0.ScoreboardFactionScoresList.Team2, "updateLayout", __FUNC_D2C_)
	local registerVal6 = Engine.GetModelForController(arg1)
	local registerVal5 = Engine.GetModel(registerVal6, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED))
	local function __FUNC_D68_()
		__FUNC_321_(arg0, arg1)
	end

	arg0:subscribeToModel(registerVal5, __FUNC_D68_, false)
	local registerVal3 = Engine.GetCurrentTeamCount()
	if registerVal3 < 2.000000 then
		arg0.ScoreboardFactionWidget2:close()
		arg0.ScoreboardFactionScoresList.Team2:close()
	end
	local function __FUNC_DA4_(arg0, arg1)
		arg0.ScoreboardFactionScoresList.Team1.m_disableNavigation = arg1
		arg0.ScoreboardFactionScoresList.Team2.m_disableNavigation = arg1
	end

	local function __FUNC_E68_(arg3)
		arg0.m_inputDisabled = arg3
		__FUNC_DA4_(arg0, arg0.m_inputDisabled)
		if not arg0.m_inputDisabled then
			local registerVal1 = {}
			local registerVal2 = Engine.GetClientNum(arg1)
			registerVal1.clientNum = registerVal2
			local registerVal4 = {}
			registerVal4.name = "lose_focus"
			registerVal4.controller = arg1
			arg0.loseFocus(arg0, registerVal4)
			registerVal2 = {}
			registerVal2 = {arg0.ScoreboardFactionScoresList.Team1, arg0.ScoreboardFactionScoresList.Team2}
			local registerVal3, registerVal4, registerVal5 = ipairs(registerVal2)
			for index6,value7 in registerVal3, registerVal4, registerVal5 do
				local registerVal8 = value7:findItem(registerVal1, nil, true)
				if registerVal8 == nil then
				end
				value7.m_focusable = true
			end
			registerVal5 = {}
			registerVal5.name = "gain_focus"
			registerVal5.controller = arg1
			arg0.gainFocus(arg0, registerVal5)
			registerVal3, registerVal4, registerVal5 = ipairs(registerVal2)
			for index6,value7 in registerVal3, registerVal4, registerVal5 do
				value7.m_focusable = true
			end
		else
			if arg2.SafeAreaContainer.ScrStkContainer then
				registerVal3 = {}
				registerVal3.name = "gain_focus"
				registerVal3.controller = arg1
				arg2.SafeAreaContainer.ScrStkContainer:processEvent(registerVal3)
			end
		end
	end

	local function __FUNC_11C1_(arg0, arg1)
		if arg1 ~= "Visible" and arg1 ~= "ForceVisible" then
		end
		__FUNC_E68_((not ))
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "setState", __FUNC_11C1_)
end

local function __FUNC_1237_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	Engine.CreateModel(registerVal3, "forceScoreboard")
	CoD.ScoreboardUtility.SetScoreboardUIModels(arg1)
	registerVal3 = Engine.GetModelForController(arg1)
	local registerVal2 = Engine.CreateModel(registerVal3, "CodCaster")
	registerVal3 = Engine.CreateModel(registerVal2, "showCodCasterScoreboard")
	Engine.SetModelValue(registerVal3, false)
end

local registerVal5 = InheritFrom(LUI.UIElement)
CoD.ScoreboardWidget = registerVal5
local function __FUNC_140B_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_1237_ then
		__FUNC_1237_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ScoreboardWidget)
	registerVal2.id = "ScoreboardWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1031.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 504.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.ScoreboardFactionScoresList.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 203.000000, 1031.000000)
	registerVal3:setTopBottom(true, false, 34.000000, 646.000000)
	registerVal3.Team2:setVerticalCount(18.000000)
	local registerVal7 = Engine.GetModelForController(arg1)
	local registerVal6 = Engine.GetModel(registerVal7, "forceScoreboard")
	local function __FUNC_2789_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "forceScoreboard"
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_2789_)
	local function __FUNC_294C_(arg0, arg2)
		UpdateScoreboardClientMuteButtonPrompt(arg0, arg1)
		return nil
	end

	registerVal3:registerEventHandler("list_item_gain_focus", __FUNC_294C_)
	local function __FUNC_29C0_(arg2, arg3)
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

	registerVal3:registerEventHandler("gain_focus", __FUNC_29C0_)
	local function __FUNC_2B53_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_2B53_)
	local function __FUNC_2C22_(arg0, arg1, arg2, arg3)
		local registerVal4 = ScoreboardVisible(arg2)
		if registerVal4 then
			BlockGameFromKeyEvent(arg2)
			return true
		end
	end

	local function __FUNC_2CAE_(arg0, arg1, arg2)
		local registerVal3 = ScoreboardVisible(arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2C22_, __FUNC_2CAE_, false)
	registerVal2:addElement(registerVal3)
	registerVal2.ScoreboardFactionScoresList = registerVal3
	local registerVal4 = CoD.ScoreboardFactionWidget.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 1.000000, 201.000000)
	registerVal4:setTopBottom(true, false, 33.000000, 266.000000)
	registerVal4.ffaName.FactionName:setText(Engine.Localize("MPUI_AXIS_CAPS"))
	local function __FUNC_2DD6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.FactionIcon:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "FactionsGlobal", "alliesFactionIcon", __FUNC_2DD6_)
	local function __FUNC_2EA9_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.Score0.Numbers:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "GameScore", "alliesScore", __FUNC_2EA9_)
	local function __FUNC_2F9B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.ScoreboardFactionNameWidget.FactionName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "FactionsGlobal", "alliesFactionDisplayName", __FUNC_2F9B_)
	local function __FUNC_30A4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.ffaEmblem:setupPlayerEmblemByXUID(registerVal1)
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "GameScore", "firstPlaceXUID", __FUNC_30A4_)
	local function __FUNC_3167_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.ffaScore.Numbers:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "GameScore", "highestScore", __FUNC_3167_)
	local function __FUNC_3259_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.FactionColor:setRGB(registerVal1)
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "FactionsGlobal", "alliesFactionColor", __FUNC_3259_)
	local function __FUNC_330D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.ScoreboardFFANameWidget.FactionName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "GameScore", "highestScoreName", __FUNC_330D_)
	registerVal2:addElement(registerVal4)
	registerVal2.ScoreboardFactionWidget1 = registerVal4
	local registerVal5 = CoD.ScoreboardFactionWidget.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 1.000000, 201.000000)
	registerVal5:setTopBottom(true, false, 269.000000, 502.000000)
	registerVal5.ffaScore.Numbers:setText(Engine.Localize("2150"))
	registerVal5.ffaName.FactionName:setText(Engine.Localize("MPUI_AXIS_CAPS"))
	registerVal5.ScoreboardFFANameWidget.FactionName:setText(Engine.Localize("WWWWWWWWWWWWWWWWW"))
	local function __FUNC_3414_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.FactionIcon:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "FactionsGlobal", "axisFactionIcon", __FUNC_3414_)
	local function __FUNC_34E9_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.Score0.Numbers:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "GameScore", "axisScore", __FUNC_34E9_)
	local function __FUNC_35DB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.ScoreboardFactionNameWidget.FactionName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "FactionsGlobal", "axisFactionDisplayName", __FUNC_35DB_)
	local function __FUNC_36E4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.FactionColor:setRGB(registerVal1)
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "FactionsGlobal", "axisFactionColor", __FUNC_36E4_)
	registerVal2:addElement(registerVal5)
	registerVal2.ScoreboardFactionWidget2 = registerVal5
	registerVal6 = CoD.ScoreboardHeaderWidget.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 0.000000, 996.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.ScoreboardHeaderWidget = registerVal6
	registerVal7 = CoD.ScoreboardWidgetButtonContainer.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, -15.000000, 430.000000)
	registerVal7:setTopBottom(true, false, 504.000000, 536.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.ScoreboardWidgetButtonContainer = registerVal7
	local registerVal8 = CoD.ScoreboardFactionWidget.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 1.000000, 201.000000)
	registerVal8:setTopBottom(true, false, 33.000000, 266.000000)
	registerVal8.Score0.Numbers:setText(Engine.Localize(""))
	registerVal8.ScoreboardFactionNameWidget.FactionName:setText(Engine.Localize("MENU_CODCASTERS"))
	registerVal8.ffaScore.Numbers:setText(Engine.Localize(""))
	registerVal8.ffaName.FactionName:setText(Engine.Localize("MENU_CODCASTERS"))
	registerVal8.ScoreboardFFANameWidget.FactionName:setText(Engine.Localize(""))
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "FFA"
	local function __FUNC_3799_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal12.condition = __FUNC_3799_
	local registerVal13 = {}
	registerVal13.stateName = "CodCaster"
	local function __FUNC_37E5_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal13.condition = __FUNC_37E5_
	local registerVal14 = {}
	registerVal14.stateName = "CodCasterAAR"
	local function __FUNC_3831_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal14.condition = __FUNC_3831_
	local registerVal15 = {}
	registerVal15.stateName = "TeamCoDCaster"
	local function __FUNC_387D_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal15.condition = __FUNC_387D_
	registerVal11 = {registerVal12, registerVal13, registerVal14, registerVal15}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal2:addElement(registerVal8)
	registerVal2.ScoreboardFactionWidget3 = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_38C8_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.ScoreboardFactionScoresList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ScoreboardFactionWidget1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ScoreboardFactionWidget2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ScoreboardHeaderWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ScoreboardWidgetButtonContainer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.ScoreboardFactionWidget3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_38C8_
	local function __FUNC_3BDE_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_3E75_(arg0, arg1)
			local function __FUNC_3FCC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 299.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3FCC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3FCC_)
		end

		registerVal3:completeAnimation()
		registerVal2.ScoreboardFactionScoresList:setAlpha(0.000000)
		__FUNC_3E75_(registerVal3, {})
		local function __FUNC_4181_(arg0, arg1)
			local function __FUNC_42D8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_42D8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42D8_)
		end

		registerVal4:completeAnimation()
		registerVal2.ScoreboardFactionWidget1:setAlpha(0.000000)
		__FUNC_4181_(registerVal4, {})
		local function __FUNC_448D_(arg0, arg1)
			local function __FUNC_45E4_(arg0, arg1)
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
				__FUNC_45E4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_45E4_)
		end

		registerVal5:completeAnimation()
		registerVal2.ScoreboardFactionWidget2:setAlpha(0.000000)
		__FUNC_448D_(registerVal5, {})
		local function __FUNC_4799_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.ScoreboardHeaderWidget:setAlpha(0.000000)
		__FUNC_4799_(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.ScoreboardFactionWidget3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.Intro = __FUNC_3BDE_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_494D_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.ScoreboardFactionScoresList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ScoreboardFactionWidget1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ScoreboardFactionWidget2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ScoreboardHeaderWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ScoreboardWidgetButtonContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.ScoreboardFactionWidget3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_494D_
	registerVal9.Visible = registerVal10
	registerVal10 = {}
	local function __FUNC_4C67_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.ScoreboardFactionScoresList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ScoreboardFactionWidget1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ScoreboardFactionWidget2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ScoreboardHeaderWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.ScoreboardFactionWidget3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_4C67_
	registerVal9.ForceVisible = registerVal10
	registerVal10 = {}
	local function __FUNC_4F12_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.ScoreboardFactionScoresList:setLeftRight(true, false, 126.000000, 954.000000)
		registerVal2.ScoreboardFactionScoresList:setTopBottom(true, false, 33.000000, 645.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal8:completeAnimation()
		registerVal2.ScoreboardFactionWidget3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_4F12_
	registerVal9.ArabicFrontend = registerVal10
	registerVal10 = {}
	local function __FUNC_50FD_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.ScoreboardFactionScoresList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ScoreboardFactionWidget1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ScoreboardFactionWidget2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ScoreboardHeaderWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ScoreboardWidgetButtonContainer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.ScoreboardFactionWidget3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_50FD_
	registerVal9.Frontend = registerVal10
	registerVal10 = {}
	local function __FUNC_5417_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.ScoreboardFactionScoresList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ScoreboardFactionWidget1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ScoreboardFactionWidget2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ScoreboardHeaderWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ScoreboardWidgetButtonContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.ScoreboardFactionWidget3:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_5417_
	registerVal9.CodCaster = registerVal10
	registerVal2.clipsPerState = registerVal9
	registerVal11 = {}
	registerVal12 = {}
	registerVal12.stateName = "CodCaster"
	local function __FUNC_572F_(arg0, arg2, arg3)
		local registerVal3 = IsCodCaster(arg1)
		registerVal3 = ScoreboardVisible(arg1)
		if registerVal3 and registerVal3 then
			registerVal3 = IsModelValueTrue(arg1, "CodCaster.showCodCasterScoreboard")
		end
		return registerVal3
	end

	registerVal12.condition = __FUNC_572F_
	registerVal13 = {}
	registerVal13.stateName = "Visible"
	local function __FUNC_5809_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
		return registerVal3
	end

	registerVal13.condition = __FUNC_5809_
	registerVal14 = {}
	registerVal14.stateName = "ForceVisible"
	local function __FUNC_58DC_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "forceScoreboard", 1.000000)
	end

	registerVal14.condition = __FUNC_58DC_
	registerVal15 = {}
	registerVal15.stateName = "ArabicFrontend"
	local function __FUNC_595B_(arg0, arg1, arg2)
		local registerVal3 = IsInGame()
		if not registerVal3 then
			registerVal3 = IsCurrentLanguageArabic()
		else
		end
		return true
	end

	registerVal15.condition = __FUNC_595B_
	local registerVal16 = {}
	registerVal16.stateName = "Frontend"
	local function __FUNC_59DF_(arg0, arg1, arg2)
		local registerVal3 = IsInGame()
		return (not registerVal3)
	end

	registerVal16.condition = __FUNC_59DF_
	registerVal11 = {registerVal12, registerVal13, registerVal14, registerVal15, registerVal16}
	registerVal2:mergeStateConditions(registerVal11)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "factions.isCoDCaster")
	local function __FUNC_5A2A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "factions.isCoDCaster"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_5A2A_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "forceScoreboard")
	local function __FUNC_5B52_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "forceScoreboard"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_5B52_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "CodCaster.showCodCasterScoreboard")
	local function __FUNC_5C75_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CodCaster.showCodCasterScoreboard"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_5C75_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN))
	local function __FUNC_5DAB_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_5DAB_)
	registerVal3.id = "ScoreboardFactionScoresList"
	registerVal7:setModel(arg0.buttonModel, arg1)
	local function __FUNC_5F36_(arg0, arg1)
		local registerVal2 = arg0.ScoreboardFactionScoresList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_5F36_)
	local function __FUNC_604B_(arg0)
		arg0.ScoreboardFactionScoresList:close()
		arg0.ScoreboardFactionWidget1:close()
		arg0.ScoreboardFactionWidget2:close()
		arg0.ScoreboardHeaderWidget:close()
		arg0.ScoreboardWidgetButtonContainer:close()
		arg0.ScoreboardFactionWidget3:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_604B_)
	if __FUNC_9A4_ then
		__FUNC_9A4_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ScoreboardWidget.new = __FUNC_140B_
