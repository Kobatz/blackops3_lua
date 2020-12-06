-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Scoreboard.CP.ScoreboardHeaderWidgetCP")
require("ui.uieditor.widgets.Scoreboard.ScoreboardFactionScoresList")
require("ui.uieditor.widgets.Scoreboard.ScoreboardWidgetButtonContainer")
local function __FUNC_2D0_(arg0, arg1)
	local registerVal5 = Engine.GetModelForController(arg1)
	local registerVal4 = Engine.CreateModel(registerVal5, "updateScoreboard")
	local function __FUNC_4D3_(arg0)
		CoD.ScoreboardUtility.UpdateScoreboardTeamScores(arg1)
	end

	arg0.ScoreboardFactionScoresListCP0.Team1:subscribeToModel(registerVal4, __FUNC_4D3_)
	registerVal5 = Engine.GetModelForController(arg1)
	registerVal4 = Engine.GetModel(registerVal5, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN))
	local function __FUNC_56C_(arg1)
		local registerVal2 = Engine.GetModelValue(arg1)
		arg0.m_inputDisabled = (not registerVal2)
	end

	arg0:subscribeToModel(registerVal4, __FUNC_56C_)
end

local function __FUNC_5FC_(arg0, arg1)
	CoD.ScoreboardUtility.SetScoreboardUIModels(arg1)
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.ScoreboardWidgetCP = registerVal3
local function __FUNC_693_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_5FC_ then
		__FUNC_5FC_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ScoreboardWidgetCP)
	registerVal2.id = "ScoreboardWidgetCP"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1006.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 526.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.ScoreboardHeaderWidgetCP.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 88.000000, 893.500000)
	registerVal3:setTopBottom(true, false, 10.000000, 47.000000)
	registerVal3:setAlpha(0.000000)
	local function __FUNC_120E_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:subscribeToGlobalModel(arg1, "Scoreboard", nil, __FUNC_120E_)
	registerVal2:addElement(registerVal3)
	registerVal2.ScoreboardHeaderWidgetCP0 = registerVal3
	local registerVal4 = CoD.ScoreboardFactionScoresList.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 88.500000, 914.500000)
	registerVal4:setTopBottom(true, false, 47.000000, 515.000000)
	registerVal4.Team1:setVerticalCount(4.000000)
	registerVal4.Team2:setAlpha(0.000000)
	registerVal4.Team2:setVerticalCount(1.000000)
	local registerVal8 = Engine.GetModelForController(arg1)
	local registerVal7 = Engine.GetModel(registerVal8, "forceScoreboard")
	local function __FUNC_125E_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "forceScoreboard"
		CoD.Menu.UpdateButtonShownState(registerVal4, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_125E_)
	local function __FUNC_1420_(arg0, arg2)
		UpdateScoreboardClientMuteButtonPrompt(arg0, arg1)
		return nil
	end

	registerVal4:registerEventHandler("list_item_gain_focus", __FUNC_1420_)
	local function __FUNC_1494_(arg2, arg3)
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

	registerVal4:registerEventHandler("gain_focus", __FUNC_1494_)
	local function __FUNC_1627_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_1627_)
	local function __FUNC_16F6_(arg0, arg1, arg2, arg3)
		local registerVal4 = ScoreboardVisible(arg2)
		if registerVal4 then
			BlockGameFromKeyEvent(arg2)
			return true
		end
	end

	local function __FUNC_1782_(arg0, arg1, arg2)
		local registerVal3 = ScoreboardVisible(arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_16F6_, __FUNC_1782_, false)
	registerVal2:addElement(registerVal4)
	registerVal2.ScoreboardFactionScoresListCP0 = registerVal4
	local registerVal5 = CoD.ScoreboardWidgetButtonContainer.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 88.500000, 533.500000)
	registerVal5:setTopBottom(true, false, 152.000000, 184.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.ScoreboardWidgetButtonContainer = registerVal5
	local registerVal6 = {}
	registerVal7 = {}
	local function __FUNC_18AA_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.ScoreboardHeaderWidgetCP0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ScoreboardFactionScoresListCP0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ScoreboardWidgetButtonContainer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_18AA_
	local function __FUNC_1A92_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_1C8E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.ScoreboardHeaderWidgetCP0:setAlpha(0.000000)
		__FUNC_1C8E_(registerVal3, {})
		local function __FUNC_1E41_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
		registerVal4:setAlpha(0.000000)
		registerVal4:registerEventHandler("transition_complete_keyframe", __FUNC_1E41_)
	end

	registerVal7.Intro = __FUNC_1A92_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_1FF5_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.ScoreboardHeaderWidgetCP0:setLeftRight(true, false, 152.500000, 954.500000)
		registerVal2.ScoreboardHeaderWidgetCP0:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.ScoreboardHeaderWidgetCP0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ScoreboardFactionScoresListCP0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ScoreboardWidgetButtonContainer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1FF5_
	registerVal6.ArabicZombieAAR = registerVal7
	registerVal7 = {}
	local function __FUNC_226E_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.ScoreboardHeaderWidgetCP0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ScoreboardFactionScoresListCP0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ScoreboardWidgetButtonContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_226E_
	registerVal6.Visible = registerVal7
	registerVal7 = {}
	local function __FUNC_2456_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.ScoreboardHeaderWidgetCP0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ScoreboardFactionScoresListCP0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ScoreboardWidgetButtonContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_2456_
	registerVal6.ForceVisible = registerVal7
	registerVal7 = {}
	local function __FUNC_263E_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.ScoreboardHeaderWidgetCP0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ScoreboardFactionScoresListCP0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ScoreboardWidgetButtonContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_263E_
	registerVal6.Frontend = registerVal7
	registerVal2.clipsPerState = registerVal6
	registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "ArabicZombieAAR"
	local function __FUNC_282B_(arg0, arg1, arg2)
		local registerVal3 = IsCurrentLanguageArabic()
		registerVal3 = IsZombies()
		if registerVal3 and registerVal3 then
			registerVal3 = AlwaysFalse()
		end
		return registerVal3
	end

	registerVal9.condition = __FUNC_282B_
	local registerVal10 = {}
	registerVal10.stateName = "Visible"
	local function __FUNC_28C9_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
		return registerVal3
	end

	registerVal10.condition = __FUNC_28C9_
	local registerVal11 = {}
	registerVal11.stateName = "ForceVisible"
	local function __FUNC_299C_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "forceScoreboard", 1.000000)
	end

	registerVal11.condition = __FUNC_299C_
	local registerVal12 = {}
	registerVal12.stateName = "Frontend"
	local function __FUNC_2A1B_(arg0, arg1, arg2)
		local registerVal3 = IsInGame()
		return (not registerVal3)
	end

	registerVal12.condition = __FUNC_2A1B_
	registerVal8 = {registerVal9, registerVal10, registerVal11, registerVal12}
	registerVal2:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "lobbyRoot.lobbyNav")
	local function __FUNC_2A66_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_2A66_)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN))
	local function __FUNC_2B8C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_2B8C_)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "forceScoreboard")
	local function __FUNC_2D1A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "forceScoreboard"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_2D1A_)
	registerVal4.id = "ScoreboardFactionScoresListCP0"
	registerVal5:setModel(arg0.buttonModel, arg1)
	local function __FUNC_2E3D_(arg0, arg1)
		local registerVal2 = arg0.ScoreboardFactionScoresListCP0:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_2E3D_)
	local function __FUNC_2F56_(arg0)
		arg0.ScoreboardHeaderWidgetCP0:close()
		arg0.ScoreboardFactionScoresListCP0:close()
		arg0.ScoreboardWidgetButtonContainer:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2F56_)
	if __FUNC_2D0_ then
		__FUNC_2D0_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ScoreboardWidgetCP.new = __FUNC_693_
