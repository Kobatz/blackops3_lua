-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CodCaster.CodCasterPlayerListHeaderWidgetContainer")
require("ui.uieditor.widgets.CodCaster.CodCasterPlayerListRowWidget")
local function __FUNC_281_(arg0, arg1)
	local registerVal2 = Engine.GetCurrentTeamCount()
	if registerVal2 < 2.000000 then
		arg0.Team2Header:close()
		arg0.Team2:close()
	end
	arg0.Team1.navigation.up = arg0.Team2
	arg0.Team2.navigation.down = arg0.Team1
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.CodCasterPlayerList = registerVal2
local function __FUNC_3E2_(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 0.000000
	local registerVal2 = LUI.UIVerticalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Top)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CodCasterPlayerList)
	registerVal2.id = "CodCasterPlayerList"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 310.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 481.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = CoD.CodCasterPlayerListHeaderWidgetContainer.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -343.000000, -1.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal3.Header.whiteBG:setRGB(0.270000, 0.270000, 0.270000)
	local function __FUNC_16E9_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.Header.whiteBGAccent2:setRGB(CodcasterGetAccentColorForTeamColor(arg1, "team1", registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "Factions", "alliesFactionColor", __FUNC_16E9_)
	local function __FUNC_1807_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.Header.whiteBGcolor:setRGB(registerVal1)
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "Factions", "alliesFactionColor", __FUNC_1807_)
	local function __FUNC_18D5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.Header.TeamName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "Factions", "alliesFactionDisplayName", __FUNC_18D5_)
	local function __FUNC_19C8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.Header.TeamColor:setRGB(registerVal1)
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "Factions", "alliesFactionColor", __FUNC_19C8_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "VisibleSelectedTeam"
	local function __FUNC_1A96_(arg0, arg2, arg3)
		local registerVal3 = IsGlobalModelValueGreaterThan(arg1, "scoreboard.team1.count", 0.000000)
		if registerVal3 then
			registerVal3 = IsGlobalModelValueTrue(arg2, arg1, "scoreboard.team1.shoutcasterListenInActive")
			if not registerVal3 then
				registerVal3 = IsCodCasterSpectatingPlayerInTeam(arg1, Enum.team_t.TEAM_ALLIES)
			else
			end
		end
		return true
	end

	registerVal7.condition = __FUNC_1A96_
	local registerVal8 = {}
	registerVal8.stateName = "VisibleSelectedTeamWithListenIn"
	local function __FUNC_1C2E_(arg0, arg2, arg3)
		local registerVal3 = IsGlobalModelValueGreaterThan(arg1, "scoreboard.team1.count", 0.000000)
		registerVal3 = IsGlobalModelValueTrue(arg2, arg1, "scoreboard.team1.shoutcasterListenInActive")
		if registerVal3 and registerVal3 then
			registerVal3 = IsCodCasterSpectatingPlayerInTeam(arg1, Enum.team_t.TEAM_ALLIES)
		end
		return registerVal3
	end

	registerVal8.condition = __FUNC_1C2E_
	local registerVal9 = {}
	registerVal9.stateName = "Visible"
	local function __FUNC_1DBA_(arg0, arg2, arg3)
		local registerVal3 = IsGlobalModelValueGreaterThan(arg1, "scoreboard.team1.count", 0.000000)
		if registerVal3 then
			registerVal3 = IsGlobalModelValueTrue(arg2, arg1, "scoreboard.team1.shoutcasterListenInActive")
		end
		return (not registerVal3)
	end

	registerVal9.condition = __FUNC_1DBA_
	local registerVal10 = {}
	registerVal10.stateName = "VisibleWithListenIn"
	local function __FUNC_1EBC_(arg0, arg2, arg3)
		local registerVal3 = IsGlobalModelValueGreaterThan(arg1, "scoreboard.team1.count", 0.000000)
		if registerVal3 then
			registerVal3 = IsGlobalModelValueTrue(arg2, arg1, "scoreboard.team1.shoutcasterListenInActive")
		end
		return registerVal3
	end

	registerVal10.condition = __FUNC_1EBC_
	registerVal6 = {registerVal7, registerVal8, registerVal9, registerVal10}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "scoreboard.team1.count")
	local function __FUNC_1FBC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "scoreboard.team1.count"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_1FBC_)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "scoreboard.team1.shoutcasterListenInActive")
	local function __FUNC_20E8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "scoreboard.team1.shoutcasterListenInActive"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_20E8_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "deadSpectator.playerTeam")
	local function __FUNC_2228_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "deadSpectator.playerTeam"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_2228_)
	registerVal2:addElement(registerVal3)
	registerVal2.Team1Header = registerVal3
	local registerVal4 = LUI.UIList.new(arg0, arg1, -0.500000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(false, true, -331.000000, -1.000000)
	registerVal4:setTopBottom(true, false, 24.000000, 375.500000)
	registerVal4:setWidgetType(CoD.CodCasterPlayerListRowWidget)
	registerVal4:setVerticalCount(18.000000)
	registerVal4:setSpacing(-0.500000)
	registerVal4:setDataSource("CodCasterScoreboardTeam1List")
	local function __FUNC_2356_(arg0, arg2)
		SetShoutcastHighlightedPlayer(registerVal2, arg0, arg1)
		return nil
	end

	registerVal4:registerEventHandler("list_item_gain_focus", __FUNC_2356_)
	local function __FUNC_23C3_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_NONE)
		return registerVal3
	end

	registerVal4:registerEventHandler("gain_focus", __FUNC_23C3_)
	local function __FUNC_25B1_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_25B1_)
	local function __FUNC_2682_(arg0, arg1, arg2, arg3)
		SpectateSelectedPlayer(registerVal2, arg0, arg2)
		return true
	end

	local function __FUNC_26E8_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2682_, __FUNC_26E8_, false)
	local function __FUNC_27DB_(arg0, arg1, arg2, arg3)
		SpectateSelectedPlayer(registerVal2, arg0, arg2)
		return true
	end

	local function __FUNC_2840_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "")
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_NONE, "ENTER", __FUNC_27DB_, __FUNC_2840_, false, true)
	registerVal2:addElement(registerVal4)
	registerVal2.Team1 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 19.000000, 301.000000)
	registerVal5:setTopBottom(true, false, 375.500000, 387.500000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.spacer = registerVal5
	registerVal6 = CoD.CodCasterPlayerListHeaderWidgetContainer.new(arg0, arg1)
	registerVal6:setLeftRight(false, true, -347.000000, -1.000000)
	registerVal6:setTopBottom(true, false, 387.500000, 411.500000)
	registerVal6.Header.whiteBG:setRGB(0.270000, 0.270000, 0.270000)
	local function __FUNC_292C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.Header.whiteBGAccent2:setRGB(CodcasterGetAccentColorForTeamColor(arg1, "team2", registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "Factions", "axisFactionColor", __FUNC_292C_)
	local function __FUNC_2A4B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.Header.whiteBGcolor:setRGB(registerVal1)
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "Factions", "axisFactionColor", __FUNC_2A4B_)
	local function __FUNC_2B19_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.Header.TeamName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "Factions", "axisFactionDisplayName", __FUNC_2B19_)
	local function __FUNC_2C0C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.Header.TeamColor:setRGB(registerVal1)
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "Factions", "axisFactionColor", __FUNC_2C0C_)
	registerVal9 = {}
	registerVal10 = {}
	registerVal10.stateName = "VisibleSelectedTeam"
	local function __FUNC_2CDA_(arg0, arg2, arg3)
		local registerVal3 = IsGlobalModelValueGreaterThan(arg1, "scoreboard.team2.count", 0.000000)
		if registerVal3 then
			registerVal3 = IsGlobalModelValueTrue(arg2, arg1, "scoreboard.team2.shoutcasterListenInActive")
			if not registerVal3 then
				registerVal3 = IsCodCasterSpectatingPlayerInTeam(arg1, Enum.team_t.TEAM_AXIS)
			else
			end
		end
		return true
	end

	registerVal10.condition = __FUNC_2CDA_
	local registerVal11 = {}
	registerVal11.stateName = "VisibleSelectedTeamWithListenIn"
	local function __FUNC_2E70_(arg0, arg2, arg3)
		local registerVal3 = IsGlobalModelValueGreaterThan(arg1, "scoreboard.team2.count", 0.000000)
		registerVal3 = IsGlobalModelValueTrue(arg2, arg1, "scoreboard.team2.shoutcasterListenInActive")
		if registerVal3 and registerVal3 then
			registerVal3 = IsCodCasterSpectatingPlayerInTeam(arg1, Enum.team_t.TEAM_AXIS)
		end
		return registerVal3
	end

	registerVal11.condition = __FUNC_2E70_
	local registerVal12 = {}
	registerVal12.stateName = "Visible"
	local function __FUNC_2FFC_(arg0, arg2, arg3)
		local registerVal3 = IsGlobalModelValueGreaterThan(arg1, "scoreboard.team2.count", 0.000000)
		if registerVal3 then
			registerVal3 = IsGlobalModelValueTrue(arg2, arg1, "scoreboard.team2.shoutcasterListenInActive")
		end
		return (not registerVal3)
	end

	registerVal12.condition = __FUNC_2FFC_
	local registerVal13 = {}
	registerVal13.stateName = "VisibleWithListenIn"
	local function __FUNC_3100_(arg0, arg2, arg3)
		local registerVal3 = IsGlobalModelValueGreaterThan(arg1, "scoreboard.team2.count", 0.000000)
		if registerVal3 then
			registerVal3 = IsGlobalModelValueTrue(arg2, arg1, "scoreboard.team2.shoutcasterListenInActive")
		end
		return registerVal3
	end

	registerVal13.condition = __FUNC_3100_
	registerVal9 = {registerVal10, registerVal11, registerVal12, registerVal13}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetGlobalModel()
	registerVal9 = Engine.GetModel(registerVal10, "scoreboard.team2.count")
	local function __FUNC_3200_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "scoreboard.team2.count"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:subscribeToModel(registerVal9, __FUNC_3200_)
	registerVal10 = Engine.GetGlobalModel()
	registerVal9 = Engine.GetModel(registerVal10, "scoreboard.team2.shoutcasterListenInActive")
	local function __FUNC_332C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "scoreboard.team2.shoutcasterListenInActive"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:subscribeToModel(registerVal9, __FUNC_332C_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "deadSpectator.playerTeam")
	local function __FUNC_346C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "deadSpectator.playerTeam"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:subscribeToModel(registerVal9, __FUNC_346C_)
	registerVal2:addElement(registerVal6)
	registerVal2.Team2Header = registerVal6
	registerVal7 = LUI.UIList.new(arg0, arg1, -0.500000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal7:makeFocusable()
	registerVal7:setLeftRight(false, true, -331.000000, -1.000000)
	registerVal7:setTopBottom(true, false, 411.500000, 763.000000)
	registerVal7:setWidgetType(CoD.CodCasterPlayerListRowWidget)
	registerVal7:setVerticalCount(18.000000)
	registerVal7:setSpacing(-0.500000)
	registerVal7:setDataSource("CodCasterScoreboardTeam2List")
	local function __FUNC_359A_(arg0, arg2)
		SetShoutcastHighlightedPlayer(registerVal2, arg0, arg1)
		return nil
	end

	registerVal7:registerEventHandler("list_item_gain_focus", __FUNC_359A_)
	local function __FUNC_3607_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_NONE)
		return registerVal3
	end

	registerVal7:registerEventHandler("gain_focus", __FUNC_3607_)
	local function __FUNC_37F5_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_37F5_)
	local function __FUNC_38C6_(arg0, arg1, arg2, arg3)
		SpectateSelectedPlayer(registerVal2, arg0, arg2)
		return true
	end

	local function __FUNC_392C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal7, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_38C6_, __FUNC_392C_, false)
	local function __FUNC_3A1F_(arg0, arg1, arg2, arg3)
		SpectateSelectedPlayer(registerVal2, arg0, arg2)
		return true
	end

	local function __FUNC_3A84_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "")
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal7, arg1, Enum.LUIButton.LUI_KEY_NONE, "ENTER", __FUNC_3A1F_, __FUNC_3A84_, false, true)
	registerVal2:addElement(registerVal7)
	registerVal2.Team2 = registerVal7
	registerVal8 = {}
	registerVal8.down = registerVal7
	registerVal4.navigation = registerVal8
	registerVal8 = {}
	registerVal8.up = registerVal4
	registerVal7.navigation = registerVal8
	registerVal8 = {}
	registerVal9 = {}
	local function __FUNC_3B70_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.Team1Header:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Team1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.Team2Header:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Team2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_3B70_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_3D72_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.Team1Header:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Team1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.spacer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Team2Header:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Team2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_3D72_
	registerVal8.Visible = registerVal9
	registerVal2.clipsPerState = registerVal8
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	local function __FUNC_3FCB_(arg0, arg1)
		local registerVal2 = IsElementInState(arg0, "DefaultState")
		if registerVal2 then
			DisableNavigation(registerVal2, "Team1")
			DisableNavigation(registerVal2, "Team2")
		else
			EnableNavigation(registerVal2, "Team1")
			EnableNavigation(registerVal2, "Team2")
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_3FCB_)
	registerVal4.id = "Team1"
	registerVal7.id = "Team2"
	local function __FUNC_40D3_(arg0, arg1)
		local registerVal2 = arg0.Team1:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_40D3_)
	local function __FUNC_41D1_(arg0)
		arg0.Team1Header:close()
		arg0.Team1:close()
		arg0.Team2Header:close()
		arg0.Team2:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_41D1_)
	if __FUNC_281_ then
		__FUNC_281_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.CodCasterPlayerList.new = __FUNC_3E2_
