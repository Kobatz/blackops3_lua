-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Scoreboard.ScoreboardRowWidget")
local function __FUNC_235_(arg0, arg1, arg2)
	arg0.Team1:updateDataSource()
	arg0.Team2:updateDataSource()
end

local function __FUNC_2C0_(arg0, arg1, arg2)
	local function __FUNC_308_(...)
		local registerVal0 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
		if registerVal0 then
			Engine.BlockGameFromKeyEvent()
		end
		return arg1[arg2](...)
	end

	arg1[arg2] = __FUNC_308_
end

local function __FUNC_423_(arg0, arg1, arg2)
	local registerVal3 = Engine.GetGametypeSetting("teamCount")
	if registerVal3 == 1.000000 then
		arg0.Team1.navigation.down = nil
	end
	if not CoD.isMultiplayer then
		local function __FUNC_6C9_(arg0)
			local registerVal1 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
			if registerVal1 then
				Engine.BlockGameFromKeyEvent()
			end
		end

		LUI.OverrideFunction_CallOriginalSecond(arg0.Team1, "navigateItemUp", __FUNC_6C9_)
		local function __FUNC_7D3_(arg0)
			local registerVal1 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
			if registerVal1 then
				Engine.BlockGameFromKeyEvent()
			end
		end

		LUI.OverrideFunction_CallOriginalSecond(arg0.Team1, "navigateItemDown", __FUNC_7D3_)
	else
		registerVal3 = Dvar.ui_gametype:get()
		if registerVal3 == "prop" then
			__FUNC_2C0_(arg1, arg0.Team1, "navigateItemDown")
			__FUNC_2C0_(arg1, arg0.Team2, "navigateItemDown")
		end
	end
	arg0.updateDataSource = __FUNC_235_
end

local registerVal4 = InheritFrom(LUI.UIElement)
CoD.ScoreboardFactionScoresList = registerVal4
local function __FUNC_8DB_(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 4.000000
	local registerVal2 = LUI.UIVerticalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Top)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ScoreboardFactionScoresList)
	registerVal2.id = "ScoreboardFactionScoresList"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 829.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 468.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIList.new(arg0, arg1, 1.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 0.000000, 853.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 467.000000)
	registerVal3:setWidgetType(CoD.ScoreboardRowWidget)
	registerVal3:setVerticalCount(18.000000)
	registerVal3:setSpacing(1.000000)
	registerVal3:setDataSource("ScoreboardTeam1List")
	local registerVal7 = Engine.GetModelForController(arg1)
	local registerVal6 = Engine.GetModel(registerVal7, "scoreboardInfo.muteButtonPromptVisible")
	local function __FUNC_15F1_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "scoreboardInfo.muteButtonPromptVisible"
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_15F1_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "forceScoreboard")
	local function __FUNC_17CB_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "forceScoreboard"
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_LSTICK_PRESSED)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_17CB_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "factions.isCoDCaster")
	local function __FUNC_19F4_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "factions.isCoDCaster"
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_LSTICK_PRESSED)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_19F4_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "CodCaster.showCodCasterScoreboard")
	local function __FUNC_1BC0_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "CodCaster.showCodCasterScoreboard"
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_LSTICK_PRESSED)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_1BC0_)
	local function __FUNC_1D99_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_START)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_LSTICK_PRESSED)
		return registerVal3
	end

	registerVal3:registerEventHandler("gain_focus", __FUNC_1D99_)
	local function __FUNC_1FF2_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_1FF2_)
	local function __FUNC_20C2_(arg0, arg1, arg2, arg3)
		local registerVal4 = ScoreboardCanShowGamerCard(arg0, arg2)
		if registerVal4 then
			ShowGamerCardForScoreboardRow(arg2, arg0)
			return true
		end
	end

	local function __FUNC_2167_(arg0, arg1, arg2)
		local registerVal3 = ScoreboardCanShowGamerCard(arg0, arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "PLATFORM_SHOW_GAMERCARD")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_START, nil, __FUNC_20C2_, __FUNC_2167_, false)
	local function __FUNC_22AC_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsScoreboardPlayerMuted(arg2, arg0)
		registerVal4 = ScoreboardMuteButtonPromptHidden(arg0, arg2)
		if registerVal4 and not registerVal4 then
			ToggleScoreboardClientMute(arg0, arg2)
			return true
		else
			registerVal4 = IsScoreboardPlayerMuted(arg2, arg0)
			registerVal4 = ScoreboardMuteButtonPromptHidden(arg0, arg2)
			if not registerVal4 and not registerVal4 then
				ToggleScoreboardClientMute(arg0, arg2)
				return true
			end
		end
	end

	local function __FUNC_23DB_(arg0, arg1, arg2)
		local registerVal3 = IsScoreboardPlayerMuted(arg2, arg0)
		registerVal3 = ScoreboardMuteButtonPromptHidden(arg0, arg2)
		if registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_UNMUTE_CAPS")
			return true
		else
			registerVal3 = IsScoreboardPlayerMuted(arg2, arg0)
			registerVal3 = ScoreboardMuteButtonPromptHidden(arg0, arg2)
			if not registerVal3 and not registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_MUTE_CAPS")
				return true
			end
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_22AC_, __FUNC_23DB_, false)
	local function __FUNC_25F6_(arg0, arg1, arg2, arg3)
		local registerVal4 = ScoreboardVisible(arg2)
		registerVal4 = IsCodCaster(arg2)
		registerVal4 = IsModelValueTrue(arg2, "CodCaster.showCodCasterScoreboard")
		if registerVal4 and registerVal4 and not registerVal4 then
			SetControllerModelValue(arg2, "CodCaster.showCodCasterScoreboard", true)
			return true
		else
			registerVal4 = ScoreboardVisible(arg2)
			registerVal4 = IsCodCaster(arg2)
			registerVal4 = IsModelValueTrue(arg2, "CodCaster.showCodCasterScoreboard")
			if registerVal4 and registerVal4 and registerVal4 then
				SetControllerModelValue(arg2, "CodCaster.showCodCasterScoreboard", false)
				return true
			end
		end
	end

	local function __FUNC_2772_(arg0, arg1, arg2)
		local registerVal3 = ScoreboardVisible(arg2)
		registerVal3 = IsCodCaster(arg2)
		registerVal3 = IsModelValueTrue(arg2, "CodCaster.showCodCasterScoreboard")
		if registerVal3 and registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LSTICK_PRESSED, "MENU_TOGGLE_CODCASTERS")
			return true
		else
			registerVal3 = ScoreboardVisible(arg2)
			registerVal3 = IsCodCaster(arg2)
			registerVal3 = IsModelValueTrue(arg2, "CodCaster.showCodCasterScoreboard")
			if registerVal3 and registerVal3 and registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LSTICK_PRESSED, "MENU_TOGGLE_CODCASTERS")
				return true
			end
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_LSTICK_PRESSED, "C", __FUNC_25F6_, __FUNC_2772_, false)
	registerVal2:addElement(registerVal3)
	registerVal2.Team1 = registerVal3
	local registerVal4 = LUI.UIList.new(arg0, arg1, 1.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(true, false, 0.000000, 853.000000)
	registerVal4:setTopBottom(true, false, 471.000000, 704.000000)
	registerVal4:setWidgetType(CoD.ScoreboardRowWidget)
	registerVal4:setVerticalCount(9.000000)
	registerVal4:setSpacing(1.000000)
	registerVal4:setDataSource("ScoreboardTeam2List")
	local registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "scoreboardInfo.muteButtonPromptVisible")
	local function __FUNC_29C9_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "scoreboardInfo.muteButtonPromptVisible"
		CoD.Menu.UpdateButtonShownState(registerVal4, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_29C9_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "forceScoreboard")
	local function __FUNC_2BA3_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "forceScoreboard"
		CoD.Menu.UpdateButtonShownState(registerVal4, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(registerVal4, arg0, arg1, Enum.LUIButton.LUI_KEY_LSTICK_PRESSED)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_2BA3_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "factions.isCoDCaster")
	local function __FUNC_2DCC_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "factions.isCoDCaster"
		CoD.Menu.UpdateButtonShownState(registerVal4, arg0, arg1, Enum.LUIButton.LUI_KEY_LSTICK_PRESSED)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_2DCC_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "CodCaster.showCodCasterScoreboard")
	local function __FUNC_2F98_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "CodCaster.showCodCasterScoreboard"
		CoD.Menu.UpdateButtonShownState(registerVal4, arg0, arg1, Enum.LUIButton.LUI_KEY_LSTICK_PRESSED)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_2F98_)
	local function __FUNC_3171_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_START)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_LSTICK_PRESSED)
		return registerVal3
	end

	registerVal4:registerEventHandler("gain_focus", __FUNC_3171_)
	local function __FUNC_33CA_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_33CA_)
	local function __FUNC_349A_(arg0, arg1, arg2, arg3)
		local registerVal4 = ScoreboardCanShowGamerCard(arg0, arg2)
		if registerVal4 then
			ShowGamerCardForScoreboardRow(arg2, arg0)
			return true
		end
	end

	local function __FUNC_353F_(arg0, arg1, arg2)
		local registerVal3 = ScoreboardCanShowGamerCard(arg0, arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "PLATFORM_SHOW_GAMERCARD")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_START, nil, __FUNC_349A_, __FUNC_353F_, false)
	local function __FUNC_3684_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsScoreboardPlayerMuted(arg2, arg0)
		registerVal4 = ScoreboardMuteButtonPromptHidden(arg0, arg2)
		if registerVal4 and not registerVal4 then
			ToggleScoreboardClientMute(arg0, arg2)
			return true
		else
			registerVal4 = IsScoreboardPlayerMuted(arg2, arg0)
			registerVal4 = ScoreboardMuteButtonPromptHidden(arg0, arg2)
			if not registerVal4 and not registerVal4 then
				ToggleScoreboardClientMute(arg0, arg2)
				return true
			end
		end
	end

	local function __FUNC_37B3_(arg0, arg1, arg2)
		local registerVal3 = IsScoreboardPlayerMuted(arg2, arg0)
		registerVal3 = ScoreboardMuteButtonPromptHidden(arg0, arg2)
		if registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_UNMUTE_CAPS")
			return true
		else
			registerVal3 = IsScoreboardPlayerMuted(arg2, arg0)
			registerVal3 = ScoreboardMuteButtonPromptHidden(arg0, arg2)
			if not registerVal3 and not registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_MUTE_CAPS")
				return true
			end
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_3684_, __FUNC_37B3_, false)
	local function __FUNC_39CE_(arg0, arg1, arg2, arg3)
		local registerVal4 = ScoreboardVisible(arg2)
		registerVal4 = IsCodCaster(arg2)
		registerVal4 = IsModelValueTrue(arg2, "CodCaster.showCodCasterScoreboard")
		if registerVal4 and registerVal4 and not registerVal4 then
			SetControllerModelValue(arg2, "CodCaster.showCodCasterScoreboard", true)
			return true
		else
			registerVal4 = ScoreboardVisible(arg2)
			registerVal4 = IsCodCaster(arg2)
			registerVal4 = IsModelValueTrue(arg2, "CodCaster.showCodCasterScoreboard")
			if registerVal4 and registerVal4 and registerVal4 then
				SetControllerModelValue(arg2, "CodCaster.showCodCasterScoreboard", false)
				return true
			end
		end
	end

	local function __FUNC_3B4A_(arg0, arg1, arg2)
		local registerVal3 = ScoreboardVisible(arg2)
		registerVal3 = IsCodCaster(arg2)
		registerVal3 = IsModelValueTrue(arg2, "CodCaster.showCodCasterScoreboard")
		if registerVal3 and registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LSTICK_PRESSED, "MENU_TOGGLE_CODCASTERS")
			return true
		else
			registerVal3 = ScoreboardVisible(arg2)
			registerVal3 = IsCodCaster(arg2)
			registerVal3 = IsModelValueTrue(arg2, "CodCaster.showCodCasterScoreboard")
			if registerVal3 and registerVal3 and registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LSTICK_PRESSED, "MENU_TOGGLE_CODCASTERS")
				return true
			end
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_LSTICK_PRESSED, "C", __FUNC_39CE_, __FUNC_3B4A_, false)
	registerVal2:addElement(registerVal4)
	registerVal2.Team2 = registerVal4
	local registerVal5 = {}
	registerVal5.down = registerVal4
	registerVal3.navigation = registerVal5
	registerVal5 = {}
	registerVal5.up = registerVal3
	registerVal4.navigation = registerVal5
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal3.id = "Team1"
	registerVal4.id = "Team2"
	local function __FUNC_3DA1_(arg0, arg1)
		local registerVal2 = arg0.Team1:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_3DA1_)
	local function __FUNC_3EA1_(arg0)
		arg0.Team1:close()
		arg0.Team2:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3EA1_)
	if __FUNC_423_ then
		__FUNC_423_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ScoreboardFactionScoresList.new = __FUNC_8DB_
