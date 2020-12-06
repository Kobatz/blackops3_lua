-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.EndGameFlow.KillcamWidgetPnlRT")
require("ui.uieditor.widgets.VehicleHUDs.Ground.VehicleGround_VignetteBack")
require("ui.uieditor.widgets.EndGameFlow.FFATopPlayerInfo")
require("ui.uieditor.widgets.EndGameFlow.FFARunnerUpPlayerInfo")
require("ui.uieditor.widgets.EndGameFlow.KillcamWidgetNumbers")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.WeaponNameWidget")
require("ui.uieditor.widgets.EndGameFlow.OutcomeFactionIcon")
require("ui.uieditor.widgets.HUD.Outcome.TimeToBeatBox")
require("ui.uieditor.widgets.EndGameFlow.KillcamWidgetTeamNameR")
require("ui.uieditor.widgets.HUD.PrematchCountdown.PrematchCountdown_BeginsIn")
require("ui.uieditor.widgets.Lobby.Common.FE_ListHeaderGlow")
require("ui.uieditor.widgets.HUD.Outcome.WinnerFactionInfo")
require("ui.uieditor.widgets.EndGameFlow.KillcamWidgetTitle")
require("ui.uieditor.widgets.HUD.Outcome.MatchBonusWidget")
local function __FUNC_608_(arg0, arg1)
	local registerVal2 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_IN_KILLCAM)
	registerVal2 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_FINAL_KILLCAM)
	if not arg1 or registerVal2 then
		arg0:setAlpha(0.000000)
	end
end

local function __FUNC_779_(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
	local registerVal11 = Engine.GetClientNum(arg1)
	local registerVal12 = Engine.GetTeamID(arg1, registerVal11)
	local registerVal13 = IsCodCaster(arg1)
	if registerVal13 then
		registerVal13 = Engine.GetPredictedClientNum(arg1)
		local registerVal14 = Engine.GetTeamID(arg1, registerVal13)
	end
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, "gameScore")
	if arg2 ~= Enum.team_t.TEAM_BAD then
	end
	local registerVal16 = Engine.GetGlobalModel()
	local registerVal15 = Engine.GetModel(registerVal16, "factions")
	local registerVal17 = Engine.CreateModel(registerVal13, "draw")
	Engine.SetModelValue(registerVal17, true)
	registerVal16 = Engine.GetModel(registerVal13, "alliesScore")
	registerVal17 = Engine.GetModelValue(registerVal16)
	{}.score = registerVal17
	registerVal17 = Engine.CreateModel(registerVal15, "winningTeamScore")
	local registerVal18 = Engine.CreateModel(registerVal15, "losingTeamScore")
	local registerVal19 = CoD.GetTeamNameCaps(Enum.team_t.TEAM_ALLIES)
	{}.displayName = registerVal19
	registerVal19 = CoD.GetTeamFactionIcon(Enum.team_t.TEAM_ALLIES)
	{}.factionIcon = registerVal19
	registerVal19 = Engine.GetModel(registerVal13, "axisScore")
	local registerVal20 = Engine.GetModelValue(registerVal19)
	{}.score = registerVal20
	registerVal20 = CoD.GetTeamNameCaps(Enum.team_t.TEAM_AXIS)
	{}.displayName = registerVal20
	registerVal20 = CoD.GetTeamFactionIcon(Enum.team_t.TEAM_AXIS)
	{}.factionIcon = registerVal20
	if not true and not arg3 then
		if arg4 then
			local registerVal21 = Engine.CreateModel(registerVal13, "victory")
			Engine.SetModelValue(registerVal21, true)
		else
			if arg5 then
				registerVal21 = Engine.CreateModel(registerVal13, "defeat")
				Engine.SetModelValue(registerVal21, true)
			else
				if arg2 == registerVal14 then
					registerVal21 = Engine.CreateModel(registerVal13, "victory")
					Engine.SetModelValue(registerVal21, true)
				else
					registerVal21 = Engine.CreateModel(registerVal13, "defeat")
					Engine.SetModelValue(registerVal21, true)
				end
			end
		end
	end
	if arg2 ~= registerVal14 or not "playerScoreOrTime" then
	end
	if arg2 == registerVal14 or not "playerScoreOrTime" then
	end
	if 7.000000 > #arg6.data then
	end
	if #arg6.data ~= 6.000000 then
	end
	Engine.CreateModel(registerVal13, "enemyScoreOrTime")
	Engine.CreateModel(registerVal13, "playerScoreOrTime")
	if arg2 == Enum.team_t.TEAM_ALLIES or true then
		local registerVal26 = IsCodCaster(arg1)
		registerVal26 = IsCodCaster(arg1)
		if registerVal26 and registerVal26 then
		end
	end
	if arg0.hasWinningAndLosingSubscriptions then
		arg0:removeSubscription(arg0.winningScoreSubscription)
		arg0:removeSubscription(arg0.losingScoreSubscription)
		arg0.hasWinningAndLosingSubscriptions = false
	end
	if not true and not true then
		arg0.hasWinningAndLosingSubscriptions = true
		local function __FUNC_16B1_(arg0)
			local registerVal1 = Engine.GetModelValue(arg0)
			Engine.SetModelValue(registerVal17, registerVal1)
			local registerVal3 = Engine.GetModel(registerVal13, "enemyScoreOrTime")
			Engine.SetModelValue(registerVal3, ("" .. registerVal1))
		end

		registerVal26 = arg0:subscribeToModel(registerVal19, __FUNC_16B1_)
		arg0.winningScoreSubscription = registerVal26
		local function __FUNC_17A6_(arg0)
			local registerVal1 = Engine.GetModelValue(arg0)
			Engine.SetModelValue(registerVal18, Engine.GetModelValue(arg0))
			local registerVal3 = Engine.GetModel(registerVal13, "playerScoreOrTime")
			Engine.SetModelValue(registerVal3, ("" .. registerVal1))
		end

		registerVal26 = arg0:subscribeToModel(registerVal16, __FUNC_17A6_)
		arg0.losingScoreSubscription = registerVal26
	end
	local function __FUNC_18AE_(arg0)
		if arg0 == nil or arg0 == 0.000000 then
			return "-:--"
		end
		local registerVal1 = math.floor((arg0 / 60.000000))
		local registerVal4 = string.format("%02d", (arg0 - (60.000000 * registerVal1)))
		return (registerVal1 .. ":" .. registerVal4)
	end

	local registerVal28 = Engine.GetModel(registerVal13, "showTimeResults")
	Engine.SetModelValue(registerVal28, true)
	registerVal28 = Engine.GetModel(registerVal13, "playerScoreIsTimeToBeat")
	Engine.SetModelValue(registerVal28, false)
	registerVal28 = Engine.GetModel(registerVal13, "enemyScoreIsTimeToBeat")
	Engine.SetModelValue(registerVal28, false)
	if true then
		local registerVal27 = IsCodCaster(arg1)
		if registerVal27 then
			registerVal28 = Engine.GetModel(registerVal13, "playerScoreIsTimeToBeat")
			if not arg1 or arg2 ~= Enum.team_t.TEAM_ALLIES then
			end
			Engine.SetModelValue(registerVal28, true)
			registerVal28 = Engine.GetModel(registerVal13, "enemyScoreIsTimeToBeat")
			if not arg1 or arg2 == Enum.team_t.TEAM_ALLIES then
			end
			Engine.SetModelValue(registerVal28, true)
		else
			registerVal28 = Engine.GetModel(registerVal13, "playerScoreIsTimeToBeat")
			if not arg1 or arg2 ~= registerVal14 then
			end
			Engine.SetModelValue(registerVal28, true)
			registerVal28 = Engine.GetModel(registerVal13, "enemyScoreIsTimeToBeat")
			if not arg1 or arg2 == registerVal14 then
			end
			Engine.SetModelValue(registerVal28, true)
		end
		registerVal28 = Engine.GetModel(registerVal13, "enemyScoreOrTime")
		Engine.SetModelValue(registerVal28, __FUNC_18AE_(arg6.data[6.000000]))
		registerVal28 = Engine.GetModel(registerVal13, "playerScoreOrTime")
		Engine.SetModelValue(registerVal28, __FUNC_18AE_(arg6.data[7.000000]))
	end
	if true then
		if 65536.000000 <= arg6.data[6.000000] then
			DebugPrint("WARNING: score override sent from show_outcome event has a score > 255")
		else
		end
		local registerVal31 = Engine.GetModel(registerVal13, "enemyScoreOrTime")
		Engine.SetModelValue(registerVal31, (arg6.data[6.000000] >> 8.000000))
		registerVal31 = Engine.GetModel(registerVal13, "playerScoreOrTime")
		Engine.SetModelValue(registerVal31, (arg6.data[6.000000] & 255.000000))
	end
	Engine.SetModelValue(registerVal17, {}.score)
	Engine.SetModelValue(registerVal18, {}.score)
	registerVal28 = Engine.CreateModel(registerVal15, "winnersFactionDisplayName")
	Engine.SetModelValue(registerVal28, {}.displayName)
	registerVal28 = Engine.CreateModel(registerVal15, "winnersFactionIcon")
	Engine.SetModelValue(registerVal28, {}.factionIcon)
	registerVal28 = Engine.CreateModel(registerVal15, "losersFactionDisplayName")
	Engine.SetModelValue(registerVal28, {}.displayName)
	registerVal28 = Engine.CreateModel(registerVal15, "losersFactionIcon")
	Engine.SetModelValue(registerVal28, {}.factionIcon)
end

local function __FUNC_19A7_(arg0, arg1, arg2)
	Engine.UpdateTopPlayerUIModels(arg1.controller)
	arg0:setAlpha(1.000000)
	if arg1.data[5.000000] ~= 1.000000 and arg1.data[5.000000] ~= true then
	end
	local registerVal10 = Engine.GetModelForController(arg1.controller)
	local registerVal9 = Engine.GetModel(registerVal10, "gameScore")
	local registerVal12 = Engine.GetModelForController(arg1.controller)
	local registerVal11 = Engine.CreateModel(registerVal12, "aarStats.performanceTabStats.outcome", true)
	Engine.SetModelValue(registerVal11, Engine.Localize(Engine.GetIString(arg1.data[1.000000], "CS_LOCALIZED_STRINGS")))
	registerVal11 = Engine.CreateModel(registerVal9, "isRoundEnd")
	Engine.SetModelValue(registerVal11, true)
	registerVal11 = Engine.CreateModel(registerVal9, "matchBonus")
	Engine.SetModelValue(registerVal11, arg1.data[3.000000])
	arg0.TitleNew:setAlpha(0.000000)
	arg0.SubTitleNew:setAlpha(0.000000)
	registerVal10 = Engine.GetIString(arg1.data[1.000000], "CS_LOCALIZED_STRINGS")
	registerVal11 = CoD.IsShoutcaster(arg1.controller)
	if registerVal11 then
		registerVal11 = Engine.Localize(registerVal10, CoD.GetTeamName(arg1.data[4.000000]))
	end
	local registerVal13 = Dvar.ui_gametype:get()
	if registerVal13 == "infect" then
		if registerVal11 ~= "MP_VICTORY_CAPS" then
		end
		if registerVal11 ~= "MP_DEFEAT_CAPS" then
		end
	end
	if registerVal11 ~= "MP_OVERTIME_CAPS" then
	end
	arg0.TitleNew.isOvertime = true
	arg0.TitleNew.KillcamText0:setText(Engine.Localize(registerVal11))
	registerVal13 = Engine.GetIString(arg1.data[2.000000], "CS_LOCALIZED_STRINGS")
	local registerVal14 = CoD.IsShoutcaster(arg1.controller)
	if registerVal14 and registerVal13 == "MP_TEAM_ELIMINATED" then
		if arg1.data[4.000000] == Enum.team_t.TEAM_AXIS then
		end
		local registerVal15 = Engine.Localize(registerVal13, CoD.GetTeamName(Enum.team_t.TEAM_ALLIES))
	end
	arg0.SubTitleNew.MatchText:setText(Engine.Localize(registerVal15))
	registerVal14 = Engine.GetGametypeSetting("teamCount")
	if registerVal14 == 2.000000 then
		__FUNC_779_(arg0, arg1.controller, arg1.data[4.000000], true, true, true, arg1)
		registerVal15 = CoD.IsShoutcaster(arg1.controller)
		if registerVal15 and arg1.data[4.000000] ~= Enum.team_t.TEAM_FREE then
			registerVal15 = CoD.GetColorFromFormattedColorString(CoD.GetTeamFactionColor(arg1.data[4.000000]))
			arg0.TitleNew.TopFrame:setRGB(registerVal15.r, registerVal15.g, registerVal15.b)
			arg0.TitleNew.CornerFrameUL:setRGB(registerVal15.r, registerVal15.g, registerVal15.b)
			arg0.TitleNew.CornerFrameUR:setRGB(registerVal15.r, registerVal15.g, registerVal15.b)
			arg0.TitleNew.CornerFrameLL:setRGB(registerVal15.r, registerVal15.g, registerVal15.b)
			arg0.TitleNew.CornerFrameLR:setRGB(registerVal15.r, registerVal15.g, registerVal15.b)
			arg0.TitleNew.LineColorLeft:setRGB(registerVal15.r, registerVal15.g, registerVal15.b)
			arg0.TitleNew.LineColorRight:setRGB(registerVal15.r, registerVal15.g, registerVal15.b)
		end
		arg0:playClip("Show_Two_Team")
	else
		if registerVal14 == 1.000000 then
			local registerVal16 = arg0.TitleNew.KillcamText0:getText()
			local registerVal17 = Engine.Localize("MP_MATCH_TIE")
			if registerVal16 == registerVal17 then
				arg0:playClip("ShowFFATie")
			else
				if arg1.data[4.000000] < 3.000000 then
					if arg1.data[4.000000] < 2.000000 then
						arg0.FFAFirstRunnerUpPlayerInfo:close()
					end
					arg0.FFASecondRunnerUpPlayerInfo:close()
				end
				arg0:playClip("ShowFFAOutcome")
			end
		end
	end
	arg2:updateElementState(arg0.TitleNew)
end

local function __FUNC_26D9_(arg0, arg1, arg2)
	local function __FUNC_2A3B_(arg2)
		local registerVal3 = {}
		registerVal3.controller = arg1
		__FUNC_608_(arg0, registerVal3)
	end

	local registerVal4 = Engine.GetModelForController(arg1)
	local registerVal7 = Engine.GetModel(registerVal4, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM))
	arg0:subscribeToModel(registerVal7, __FUNC_2A3B_)
	registerVal7 = Engine.GetModel(registerVal4, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_FINAL_KILLCAM))
	arg0:subscribeToModel(registerVal7, __FUNC_2A3B_)
	local function __FUNC_2A90_(arg3)
		local registerVal1 = Engine.GetModelValue(arg3)
		if registerVal1 == "show_outcome" then
			local registerVal2 = {}
			registerVal2.controller = arg1
			registerVal2.name = registerVal1
			local registerVal3 = CoD.GetScriptNotifyData(arg3)
			registerVal2.data = registerVal3
			__FUNC_19A7_(arg0, registerVal2, arg2)
		else
			if registerVal1 == "pre_killcam_transition" then
				registerVal2 = Engine.GetGametypeSetting("teamCount")
				if registerVal2 >= 2.000000 then
				end
				if registerVal1 or not "_FFA" then
				end
				arg0:playClip(("End_Transition" .. ""))
			end
		end
	end

	arg0:subscribeToGlobalModel(arg1, "PerController", "scriptNotify", __FUNC_2A90_)
	local registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.CreateModel(registerVal8, "hudItems.hideOutcomeUI")
	local function __FUNC_2CA9_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 == 1.000000 then
			arg0:setAlpha(0.000000)
		end
	end

	arg0:subscribeToModel(registerVal7, __FUNC_2CA9_)
	arg0:setState("DefaultState")
	local registerVal5 = Engine.GetGametypeSetting("teamCount")
	if registerVal5 == 1.000000 then
		arg0.WinnerFactionInfo:close()
	end
end

local function __FUNC_2D47_(arg0)
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal1 = Engine.CreateModel(registerVal2, "gameScore")
	local registerVal3 = Engine.CreateModel(registerVal1, "draw")
	Engine.SetModelValue(registerVal3, false)
	registerVal3 = Engine.CreateModel(registerVal1, "isRoundEnd")
	Engine.SetModelValue(registerVal3, false)
	registerVal3 = Engine.CreateModel(registerVal1, "matchBonus")
	Engine.SetModelValue(registerVal3, 0.000000)
	registerVal3 = Engine.CreateModel(registerVal1, "alliesScore")
	Engine.SetModelValue(registerVal3, 0.000000)
	registerVal3 = Engine.CreateModel(registerVal1, "axisScore")
	Engine.SetModelValue(registerVal3, 0.000000)
	registerVal3 = Engine.CreateModel(registerVal1, "victory")
	Engine.SetModelValue(registerVal3, false)
	registerVal3 = Engine.CreateModel(registerVal1, "defeat")
	Engine.SetModelValue(registerVal3, false)
	registerVal3 = Engine.CreateModel(registerVal1, "enemyScoreOrTime")
	Engine.SetModelValue(registerVal3, "")
	registerVal3 = Engine.CreateModel(registerVal1, "playerScoreOrTime")
	Engine.SetModelValue(registerVal3, "")
	registerVal3 = Engine.GetGlobalModel()
	registerVal2 = Engine.CreateModel(registerVal3, "factions")
	local registerVal4 = Engine.CreateModel(registerVal2, "winningTeamScore")
	Engine.SetModelValue(registerVal4, 0.000000)
	registerVal4 = Engine.CreateModel(registerVal2, "losingTeamScore")
	Engine.SetModelValue(registerVal4, 0.000000)
	registerVal4 = Engine.CreateModel(registerVal2, "winnersFactionDisplayName")
	Engine.SetModelValue(registerVal4, "")
	registerVal4 = Engine.CreateModel(registerVal2, "winnersFactionIcon")
	Engine.SetModelValue(registerVal4, "")
	registerVal4 = Engine.CreateModel(registerVal2, "losersFactionDisplayName")
	Engine.SetModelValue(registerVal4, "")
	registerVal4 = Engine.CreateModel(registerVal2, "losersFactionIcon")
	Engine.SetModelValue(registerVal4, "")
end

local function __FUNC_32E2_(arg0, arg1)
	Engine.UpdateTopPlayerUIModels(arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	local registerVal2 = Engine.CreateModel(registerVal3, "gameScore")
	local registerVal4 = Engine.CreateModel(registerVal2, "showTimeResults")
	Engine.SetModelValue(registerVal4, false)
	registerVal4 = Engine.CreateModel(registerVal2, "playerScoreIsTimeToBeat")
	Engine.SetModelValue(registerVal4, false)
	registerVal4 = Engine.CreateModel(registerVal2, "enemyScoreIsTimeToBeat")
	Engine.SetModelValue(registerVal4, false)
	registerVal4 = Engine.GetModelForController(arg1)
	registerVal3 = Engine.CreateModel(registerVal4, "displayTop3Players")
	local function __FUNC_355F_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 == 1.000000 then
			arg0:close()
		end
	end

	arg0:subscribeToModel(registerVal3, __FUNC_355F_)
	__FUNC_2D47_(arg1)
end

local registerVal7 = InheritFrom(LUI.UIElement)
CoD.Outcome = registerVal7
local function __FUNC_35EF_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_32E2_ then
		__FUNC_32E2_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Outcome)
	registerVal2.id = "Outcome"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.KillcamWidgetPnlRT.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, 0.000000, 675.000000)
	registerVal3:setTopBottom(false, false, -37.000000, 43.000000)
	registerVal3:setRGB(0.500000, 0.500000, 0.500000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setYRot(180.000000)
	registerVal3.KillcamWidgetPnlRTInt0:setShaderVector(0.000000, 0.000000, 3.000000, 0.000000, 0.000000)
	local function __FUNC_5D25_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.CodCasterKillcamWidgetPnlRT:setRGB(CodcasterGetAccentColorForTeamColor(arg1, "team2", registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "Factions", "axisFactionColor", __FUNC_5D25_)
	local function __FUNC_5E34_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.FactionColorBar:setRGB(registerVal1)
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "Factions", "enemyFactionColor", __FUNC_5E34_)
	registerVal2:addElement(registerVal3)
	registerVal2.LeftPanelR = registerVal3
	local registerVal4 = CoD.KillcamWidgetPnlRT.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -675.000000, 0.000000)
	registerVal4:setTopBottom(false, false, -37.000000, 43.000000)
	registerVal4:setRGB(0.500000, 0.500000, 0.500000)
	registerVal4:setAlpha(0.000000)
	registerVal4.KillcamWidgetPnlRTInt0:setShaderVector(0.000000, 0.000000, 3.000000, 0.000000, 0.000000)
	local function __FUNC_5EEC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.CodCasterKillcamWidgetPnlRT:setRGB(CodcasterGetAccentColorForTeamColor(arg1, "team1", registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "Factions", "alliesFactionColor", __FUNC_5EEC_)
	local function __FUNC_5FFC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.FactionColorBar:setRGB(registerVal1)
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "Factions", "playerFactionColor", __FUNC_5FFC_)
	registerVal2:addElement(registerVal4)
	registerVal2.LeftPanelL = registerVal4
	local registerVal5 = CoD.VehicleGround_VignetteBack.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.VignetteBack = registerVal5
	local registerVal6 = CoD.FFATopPlayerInfo.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -301.290000, 390.290000)
	registerVal6:setTopBottom(false, false, -194.000000, -51.500000)
	registerVal6:setAlpha(0.000000)
	local function __FUNC_60B4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.Score0:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "TopPlayerInfoData1", "score", __FUNC_60B4_)
	local function __FUNC_618A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.Score.Numbers:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "TopPlayerInfoData1", "score", __FUNC_618A_)
	local function __FUNC_627A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.emblem:setupPlayerEmblemByXUID(registerVal1)
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "TopPlayerInfoData1", "xuid", __FUNC_627A_)
	local function __FUNC_6338_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.FFAGamerTag.itemName:setText(registerVal1)
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "TopPlayerInfoData1", "name", __FUNC_6338_)
	local function __FUNC_640B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.FFAClanTag:setAlpha(HideIfEmptyString(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "TopPlayerInfoData1", "clanTag", __FUNC_640B_)
	local function __FUNC_64E0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.FFAClanTag.itemName:setText(StringAsClanTag(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "TopPlayerInfoData1", "clanTag", __FUNC_64E0_)
	registerVal2:addElement(registerVal6)
	registerVal2.FFATopPlayerInfo = registerVal6
	local registerVal7 = CoD.FFARunnerUpPlayerInfo.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -269.500000, 316.500000)
	registerVal7:setTopBottom(false, false, -36.400000, 57.600000)
	registerVal7:setAlpha(0.000000)
	registerVal7.RibbonImageInvert:setImage(RegisterImage("uie_t7_hud_mp_notifications_endgame_ribbon2"))
	registerVal7.Ribbon:setImage(RegisterImage("uie_t7_hud_mp_notifications_endgame_ribbon2"))
	local function __FUNC_65D3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.Score0:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "TopPlayerInfoData2", "score", __FUNC_65D3_)
	local function __FUNC_66A6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.Emblem:setupPlayerEmblemByXUID(registerVal1)
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "TopPlayerInfoData2", "xuid", __FUNC_66A6_)
	local function __FUNC_6764_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.Score.Numbers:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "TopPlayerInfoData2", "score", __FUNC_6764_)
	local function __FUNC_6856_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.emblem:setupPlayerEmblemByXUID(registerVal1)
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "TopPlayerInfoData2", "xuid", __FUNC_6856_)
	local function __FUNC_6914_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.FFAGamerTag.itemName:setText(registerVal1)
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "TopPlayerInfoData2", "name", __FUNC_6914_)
	local function __FUNC_69E7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.FFAClanTag:setAlpha(HideIfEmptyString(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "TopPlayerInfoData2", "clanTag", __FUNC_69E7_)
	local function __FUNC_6ABC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.FFAClanTag.itemName:setText(StringAsClanTag(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "TopPlayerInfoData2", "clanTag", __FUNC_6ABC_)
	registerVal2:addElement(registerVal7)
	registerVal2.FFAFirstRunnerUpPlayerInfo = registerVal7
	local registerVal8 = CoD.FFARunnerUpPlayerInfo.new(arg0, arg1)
	registerVal8:setLeftRight(false, false, -269.500000, 316.500000)
	registerVal8:setTopBottom(false, false, 65.000000, 159.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8.RibbonImageInvert:setImage(RegisterImage("uie_t7_hud_mp_notifications_endgame_ribbon3"))
	registerVal8.Ribbon:setImage(RegisterImage("uie_t7_hud_mp_notifications_endgame_ribbon3"))
	local function __FUNC_6BAF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.Score0:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "TopPlayerInfoData3", "score", __FUNC_6BAF_)
	local function __FUNC_6C82_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.Emblem:setupPlayerEmblemByXUID(registerVal1)
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "TopPlayerInfoData3", "xuid", __FUNC_6C82_)
	local function __FUNC_6D40_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.Score.Numbers:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "TopPlayerInfoData3", "score", __FUNC_6D40_)
	local function __FUNC_6E32_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.emblem:setupPlayerEmblemByXUID(registerVal1)
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "TopPlayerInfoData3", "xuid", __FUNC_6E32_)
	local function __FUNC_6EF0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.FFAGamerTag.itemName:setText(registerVal1)
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "TopPlayerInfoData3", "name", __FUNC_6EF0_)
	local function __FUNC_6FC3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.FFAClanTag:setAlpha(HideIfEmptyString(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "TopPlayerInfoData3", "clanTag", __FUNC_6FC3_)
	local function __FUNC_7098_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.FFAClanTag.itemName:setText(StringAsClanTag(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "TopPlayerInfoData3", "clanTag", __FUNC_7098_)
	registerVal2:addElement(registerVal8)
	registerVal2.FFASecondRunnerUpPlayerInfo = registerVal8
	local registerVal9 = CoD.KillcamWidgetNumbers.new(arg0, arg1)
	registerVal9:setLeftRight(false, false, -153.780000, -33.780000)
	registerVal9:setTopBottom(false, false, -21.000000, 33.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setScale(1.200000)
	registerVal9:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal9:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(4.000000, 0.240000, 0.020000, 0.000000, 0.000000)
	registerVal9.Numbers:setRGB(1.000000, 1.000000, 1.000000)
	local function __FUNC_718B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.Numbers:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "GameScore", "playerScoreOrTime", __FUNC_718B_)
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "WinTime"
	local function __FUNC_725F_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueEqualTo(arg1, "gameScore.victory", true)
		registerVal3 = IsModelValueEqualTo(arg1, "gameScore.showTimeResults", true)
		if registerVal3 and registerVal3 then
			registerVal3 = IsCodCaster(arg1)
		end
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_725F_
	local registerVal14 = {}
	registerVal14.stateName = "LossTime"
	local function __FUNC_7344_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueEqualTo(arg1, "gameScore.defeat", true)
		registerVal3 = IsModelValueEqualTo(arg1, "gameScore.showTimeResults", true)
		if registerVal3 and registerVal3 then
			registerVal3 = IsCodCaster(arg1)
		end
		return (not registerVal3)
	end

	registerVal14.condition = __FUNC_7344_
	registerVal12 = {registerVal13, registerVal14}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, "gameScore.victory")
	local function __FUNC_742B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "gameScore.victory"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_742B_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, "gameScore.showTimeResults")
	local function __FUNC_754F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "gameScore.showTimeResults"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_754F_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, "factions.isCoDCaster")
	local function __FUNC_767B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "factions.isCoDCaster"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_767B_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, "gameScore.defeat")
	local function __FUNC_77A2_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "gameScore.defeat"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_77A2_)
	registerVal2:addElement(registerVal9)
	registerVal2.WinningTeamScoreNew = registerVal9
	local registerVal10 = CoD.KillcamWidgetNumbers.new(arg0, arg1)
	registerVal10:setLeftRight(false, false, 34.220000, 154.220000)
	registerVal10:setTopBottom(false, false, -21.000000, 33.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setScale(1.200000)
	registerVal10:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal10:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(4.000000, 0.240000, 0.020000, 0.000000, 0.000000)
	registerVal10.Numbers:setRGB(1.000000, 1.000000, 1.000000)
	local function __FUNC_78C6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.Numbers:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "GameScore", "enemyScoreOrTime", __FUNC_78C6_)
	registerVal13 = {}
	registerVal14 = {}
	registerVal14.stateName = "WinTime"
	local function __FUNC_799B_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal14.condition = __FUNC_799B_
	local registerVal15 = {}
	registerVal15.stateName = "LossTime"
	local function __FUNC_79E5_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal15.condition = __FUNC_79E5_
	registerVal13 = {registerVal14, registerVal15}
	registerVal10:mergeStateConditions(registerVal13)
	registerVal2:addElement(registerVal10)
	registerVal2.LosingTeamScoreNew = registerVal10
	local registerVal11 = CoD.WeaponNameWidget.new(arg0, arg1)
	registerVal11:setLeftRight(false, false, -352.000000, -134.000000)
	registerVal11:setTopBottom(false, false, -15.000000, 19.000000)
	registerVal11:setAlpha(0.000000)
	local function __FUNC_7A31_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.weaponNameLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:subscribeToGlobalModel(arg1, "Factions", "playerFactionDisplayName", __FUNC_7A31_)
	local function __FUNC_7B0F_(arg0, arg1)
		SetupAutoHorizontalAlignArabicText(arg0)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal11:registerEventHandler("menu_loaded", __FUNC_7B0F_)
	registerVal2:addElement(registerVal11)
	registerVal2.WinningTeamFactionNameNew = registerVal11
	registerVal12 = CoD.OutcomeFactionIcon.new(arg0, arg1)
	registerVal12:setLeftRight(false, false, -506.000000, -116.000000)
	registerVal12:setTopBottom(false, false, -76.000000, 104.000000)
	registerVal12:setAlpha(0.000000)
	local function __FUNC_7BB1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.OutcomeFactionIconItem.WinningTeamFactionIcon0:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal12:subscribeToGlobalModel(arg1, "Factions", "playerFactionIcon", __FUNC_7BB1_)
	local function __FUNC_7CBD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.OutcomeFactionIconItem.WinningTeamFactionIcon:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal12:subscribeToGlobalModel(arg1, "Factions", "playerFactionIcon", __FUNC_7CBD_)
	local function __FUNC_7DC8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.OutcomeFactionIconItemForCodCaster.WinningTeamFactionIcon0:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal12:subscribeToGlobalModel(arg1, "Factions", "playerFactionIcon", __FUNC_7DC8_)
	local function __FUNC_7EE1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.OutcomeFactionIconItemForCodCaster.WinningTeamFactionIcon:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal12:subscribeToGlobalModel(arg1, "Factions", "playerFactionIcon", __FUNC_7EE1_)
	registerVal2:addElement(registerVal12)
	registerVal2.WinningTeamFactionIconNew = registerVal12
	registerVal13 = CoD.TimeToBeatBox.new(arg0, arg1)
	registerVal13:setLeftRight(false, false, -133.780000, -53.780000)
	registerVal13:setTopBottom(false, true, -327.500000, -306.500000)
	registerVal13:setAlpha(0.000000)
	local registerVal16 = {}
	local registerVal17 = {}
	registerVal17.stateName = "NoText"
	local function __FUNC_7FF8_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueEqualTo(arg1, "gameScore.playerScoreIsTimeToBeat", true)
		return (not registerVal3)
	end

	registerVal17.condition = __FUNC_7FF8_
	registerVal16 = {registerVal17}
	registerVal13:mergeStateConditions(registerVal16)
	registerVal17 = Engine.GetModelForController(arg1)
	registerVal16 = Engine.GetModel(registerVal17, "gameScore.playerScoreIsTimeToBeat")
	local function __FUNC_8088_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "gameScore.playerScoreIsTimeToBeat"
		arg0:updateElementState(registerVal13, registerVal4)
	end

	registerVal13:subscribeToModel(registerVal16, __FUNC_8088_)
	registerVal2:addElement(registerVal13)
	registerVal2.PlayerTimeToBeatBox = registerVal13
	registerVal14 = CoD.KillcamWidgetTeamNameR.new(arg0, arg1)
	registerVal14:setLeftRight(false, false, 135.500000, 353.500000)
	registerVal14:setTopBottom(false, false, -15.000000, 19.000000)
	registerVal14:setAlpha(0.000000)
	local function __FUNC_81BF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14.weaponNameLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal14:subscribeToGlobalModel(arg1, "Factions", "enemyFactionDisplayName", __FUNC_81BF_)
	registerVal2:addElement(registerVal14)
	registerVal2.LosingTeamFactionNameNew = registerVal14
	registerVal15 = CoD.OutcomeFactionIcon.new(arg0, arg1)
	registerVal15:setLeftRight(false, false, 117.500000, 507.500000)
	registerVal15:setTopBottom(false, false, -76.000000, 104.000000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setYRot(180.000000)
	local function __FUNC_829B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15.OutcomeFactionIconItem.WinningTeamFactionIcon0:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal15:subscribeToGlobalModel(arg1, "Factions", "enemyFactionIcon", __FUNC_829B_)
	local function __FUNC_83A5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15.OutcomeFactionIconItem.WinningTeamFactionIcon:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal15:subscribeToGlobalModel(arg1, "Factions", "enemyFactionIcon", __FUNC_83A5_)
	local function __FUNC_84B0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15.OutcomeFactionIconItemForCodCaster.WinningTeamFactionIcon0:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal15:subscribeToGlobalModel(arg1, "Factions", "enemyFactionIcon", __FUNC_84B0_)
	local function __FUNC_85C9_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15.OutcomeFactionIconItemForCodCaster.WinningTeamFactionIcon:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal15:subscribeToGlobalModel(arg1, "Factions", "enemyFactionIcon", __FUNC_85C9_)
	registerVal2:addElement(registerVal15)
	registerVal2.LosingTeamFactionIconNew = registerVal15
	registerVal16 = CoD.TimeToBeatBox.new(arg0, arg1)
	registerVal16:setLeftRight(false, false, 54.220000, 134.220000)
	registerVal16:setTopBottom(false, true, -327.500000, -306.500000)
	registerVal16:setAlpha(0.000000)
	local registerVal19 = {}
	local registerVal20 = {}
	registerVal20.stateName = "NoText"
	local function __FUNC_86E0_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueEqualTo(arg1, "gameScore.enemyScoreIsTimeToBeat", true)
		return (not registerVal3)
	end

	registerVal20.condition = __FUNC_86E0_
	registerVal19 = {registerVal20}
	registerVal16:mergeStateConditions(registerVal19)
	registerVal20 = Engine.GetModelForController(arg1)
	registerVal19 = Engine.GetModel(registerVal20, "gameScore.enemyScoreIsTimeToBeat")
	local function __FUNC_876F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "gameScore.enemyScoreIsTimeToBeat"
		arg0:updateElementState(registerVal16, registerVal4)
	end

	registerVal16:subscribeToModel(registerVal19, __FUNC_876F_)
	registerVal2:addElement(registerVal16)
	registerVal2.EnemyTimeToBeatBox = registerVal16
	registerVal17 = CoD.PrematchCountdown_BeginsIn.new(arg0, arg1)
	registerVal17:setLeftRight(false, false, -142.000000, 142.000000)
	registerVal17:setTopBottom(true, false, 99.290000, 131.500000)
	registerVal17:setAlpha(0.000000)
	registerVal17.FEButtonPanel0:setAlpha(0.300000)
	registerVal17.MatchText:setText(Engine.Localize("MP_SCORE_LIMIT_REACHED"))
	registerVal17.MatchText:setTTF("fonts/escom.ttf")
	registerVal2:addElement(registerVal17)
	registerVal2.SubTitleNew = registerVal17
	local registerVal18 = CoD.FE_ListHeaderGlow.new(arg0, arg1)
	registerVal18:setLeftRight(false, false, -20.500000, 20.500000)
	registerVal18:setTopBottom(false, false, -10.000000, 18.000000)
	registerVal18:setAlpha(0.000000)
	registerVal2:addElement(registerVal18)
	registerVal2.VSBanner = registerVal18
	registerVal19 = LUI.UITightText.new()
	registerVal19:setLeftRight(false, false, -13.000000, 17.000000)
	registerVal19:setTopBottom(false, false, -9.000000, 16.000000)
	registerVal19:setRGB(0.000000, 0.000000, 0.000000)
	registerVal19:setAlpha(0.000000)
	registerVal19:setText(Engine.Localize("MP_VERSUS"))
	registerVal19:setTTF("fonts/escom.ttf")
	registerVal19:setLetterSpacing(2.000000)
	registerVal2:addElement(registerVal19)
	registerVal2.VSLabel = registerVal19
	registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal20:setTopBottom(false, true, -302.400000, 57.600000)
	registerVal20:setRGB(0.000000, 0.000000, 0.000000)
	registerVal20:setAlpha(0.000000)
	registerVal2:addElement(registerVal20)
	registerVal2.TransitionImageBottom = registerVal20
	local registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal21:setTopBottom(true, false, -57.600000, 302.400000)
	registerVal21:setRGB(0.000000, 0.000000, 0.000000)
	registerVal21:setAlpha(0.000000)
	registerVal2:addElement(registerVal21)
	registerVal2.TransitionImageTop = registerVal21
	local registerVal22 = CoD.WinnerFactionInfo.new(arg0, arg1)
	registerVal22:setLeftRight(true, false, 24.000000, 414.000000)
	registerVal22:setTopBottom(true, false, 2.500000, 182.500000)
	registerVal22:setAlpha(0.000000)
	registerVal22.KillcamWidgetTitleStatus0.SubTitle:setText(Engine.Localize("MENU_WINNERS_CAPS"))
	local function __FUNC_88A2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal22.WeaponNameWidget0.weaponNameLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal22:subscribeToGlobalModel(arg1, "FactionsGlobal", "winnersFactionDisplayName", __FUNC_88A2_)
	local function __FUNC_89A6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal22.OutcomeFactionIcon.OutcomeFactionIconItem.WinningTeamFactionIcon0:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal22:subscribeToGlobalModel(arg1, "FactionsGlobal", "winnersFactionIcon", __FUNC_89A6_)
	local function __FUNC_8AD9_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal22.OutcomeFactionIcon.OutcomeFactionIconItem.WinningTeamFactionIcon:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal22:subscribeToGlobalModel(arg1, "FactionsGlobal", "winnersFactionIcon", __FUNC_8AD9_)
	local function __FUNC_8C0C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal22.OutcomeFactionIcon.OutcomeFactionIconItemForCodCaster.WinningTeamFactionIcon0:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal22:subscribeToGlobalModel(arg1, "FactionsGlobal", "winnersFactionIcon", __FUNC_8C0C_)
	local function __FUNC_8D4D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal22.OutcomeFactionIcon.OutcomeFactionIconItemForCodCaster.WinningTeamFactionIcon:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal22:subscribeToGlobalModel(arg1, "FactionsGlobal", "winnersFactionIcon", __FUNC_8D4D_)
	registerVal2:addElement(registerVal22)
	registerVal2.WinnerFactionInfo = registerVal22
	local registerVal23 = CoD.KillcamWidgetTitle.new(arg0, arg1)
	registerVal23:setLeftRight(false, false, -250.000000, 250.000000)
	registerVal23:setTopBottom(true, false, 37.500000, 92.500000)
	registerVal23:setAlpha(0.000000)
	registerVal23.KillcamText0:setText(Engine.Localize("VICTORY"))
	local registerVal26 = {}
	local registerVal27 = {}
	registerVal27.stateName = "VictoryGreen"
	local function __FUNC_8E8C_(arg0, arg2, arg3)
		return IsVictory(arg1)
	end

	registerVal27.condition = __FUNC_8E8C_
	local registerVal28 = {}
	registerVal28.stateName = "DefeatRed"
	local function __FUNC_8EDB_(arg0, arg2, arg3)
		return IsDefeat(arg1)
	end

	registerVal28.condition = __FUNC_8EDB_
	local registerVal29 = {}
	registerVal29.stateName = "OvertimeOrange"
	local function __FUNC_8F26_(arg0, arg1, arg2)
		return IsElementPropertyValue(arg1, "isOvertime", true)
	end

	registerVal29.condition = __FUNC_8F26_
	registerVal26 = {registerVal27, registerVal28, registerVal29}
	registerVal23:mergeStateConditions(registerVal26)
	registerVal27 = Engine.GetModelForController(arg1)
	registerVal26 = Engine.GetModel(registerVal27, "gameScore.victory")
	local function __FUNC_8F9C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "gameScore.victory"
		arg0:updateElementState(registerVal23, registerVal4)
	end

	registerVal23:subscribeToModel(registerVal26, __FUNC_8F9C_)
	registerVal27 = Engine.GetModelForController(arg1)
	registerVal26 = Engine.GetModel(registerVal27, "gameScore.defeat")
	local function __FUNC_90C3_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "gameScore.defeat"
		arg0:updateElementState(registerVal23, registerVal4)
	end

	registerVal23:subscribeToModel(registerVal26, __FUNC_90C3_)
	registerVal27 = Engine.GetModelForController(arg1)
	registerVal26 = Engine.GetModel(registerVal27, "gameScore.isRoundEnd")
	local function __FUNC_91E6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "gameScore.isRoundEnd"
		arg0:updateElementState(registerVal23, registerVal4)
	end

	registerVal23:subscribeToModel(registerVal26, __FUNC_91E6_)
	registerVal2:addElement(registerVal23)
	registerVal2.TitleNew = registerVal23
	local registerVal24 = CoD.MatchBonusWidget.new(arg0, arg1)
	registerVal24:setLeftRight(false, false, -142.000000, 142.000000)
	registerVal24:setTopBottom(false, true, -164.500000, -36.000000)
	registerVal24:setAlpha(0.000000)
	registerVal2:addElement(registerVal24)
	registerVal2.MatchBonusWidget0 = registerVal24
	local registerVal25 = {}
	registerVal26 = {}
	local function __FUNC_930E_()
		registerVal2:setupElementClipCounter(18.000000)
		registerVal3:completeAnimation()
		registerVal2.LeftPanelR:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LeftPanelL:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.VignetteBack:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FFATopPlayerInfo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FFAFirstRunnerUpPlayerInfo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FFASecondRunnerUpPlayerInfo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.WinningTeamScoreNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.LosingTeamScoreNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.WinningTeamFactionNameNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.WinningTeamFactionIconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal2.LosingTeamFactionNameNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.LosingTeamFactionIconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal17:completeAnimation()
		registerVal2.SubTitleNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.VSBanner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.VSLabel:setLeftRight(false, false, -15.000000, 15.000000)
		registerVal2.VSLabel:setTopBottom(false, false, -6.000000, 19.000000)
		registerVal2.VSLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal22:completeAnimation()
		registerVal2.WinnerFactionInfo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.TitleNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.MatchBonusWidget0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal24, {})
	end

	registerVal26.DefaultClip = __FUNC_930E_
	local function __FUNC_9B0A_()
		registerVal2:setupElementClipCounter(19.000000)
		local function __FUNC_A73F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 0.000000, 675.000000)
			arg0:setTopBottom(false, false, -37.000000, 43.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.LeftPanelR:setLeftRight(false, false, 170.000000, 845.000000)
		registerVal2.LeftPanelR:setTopBottom(false, false, -37.000000, 43.000000)
		registerVal2.LeftPanelR:setAlpha(0.000000)
		__FUNC_A73F_(registerVal3, {})
		local function __FUNC_A961_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -675.000000, 0.000000)
			arg0:setTopBottom(false, false, -37.000000, 43.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.LeftPanelL:setLeftRight(false, false, -885.000000, -210.000000)
		registerVal2.LeftPanelL:setTopBottom(false, false, -37.000000, 43.000000)
		registerVal2.LeftPanelL:setAlpha(0.000000)
		__FUNC_A961_(registerVal4, {})
		local function __FUNC_AB85_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.VignetteBack:setRGB(0.000000, 0.000000, 0.000000)
		__FUNC_AB85_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FFATopPlayerInfo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.FFASecondRunnerUpPlayerInfo:setLeftRight(false, false, -269.500000, 316.500000)
		registerVal2.FFASecondRunnerUpPlayerInfo:setTopBottom(false, false, 64.000000, 158.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_AD3F_(arg0, arg1)
			local function __FUNC_AE94_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
				arg0:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
				arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
				arg0:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
				arg0:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
				arg0:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_AE94_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AE94_)
		end

		registerVal9:completeAnimation()
		registerVal2.WinningTeamScoreNew:setAlpha(0.000000)
		registerVal2.WinningTeamScoreNew:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
		registerVal2.WinningTeamScoreNew:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
		registerVal2.WinningTeamScoreNew:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.WinningTeamScoreNew:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.WinningTeamScoreNew:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.WinningTeamScoreNew:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_AD3F_(registerVal9, {})
		local function __FUNC_B1A4_(arg0, arg1)
			local function __FUNC_B2FC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
				arg0:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
				arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
				arg0:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
				arg0:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
				arg0:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_B2FC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 649.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B2FC_)
		end

		registerVal10:completeAnimation()
		registerVal2.LosingTeamScoreNew:setAlpha(0.000000)
		registerVal2.LosingTeamScoreNew:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
		registerVal2.LosingTeamScoreNew:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
		registerVal2.LosingTeamScoreNew:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.LosingTeamScoreNew:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.LosingTeamScoreNew:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.LosingTeamScoreNew:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_B1A4_(registerVal10, {})
		local function __FUNC_B60C_(arg0, arg1)
			local function __FUNC_B764_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_B764_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B764_)
		end

		registerVal11:completeAnimation()
		registerVal2.WinningTeamFactionNameNew:setAlpha(0.000000)
		__FUNC_B60C_(registerVal11, {})
		local function __FUNC_B919_(arg0, arg1)
			local function __FUNC_BA70_(arg0, arg1)
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
				__FUNC_BA70_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 469.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BA70_)
		end

		registerVal12:completeAnimation()
		registerVal2.WinningTeamFactionIconNew:setAlpha(0.000000)
		__FUNC_B919_(registerVal12, {})
		local function __FUNC_BC25_(arg0, arg1)
			local function __FUNC_BD7C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_BD7C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BD7C_)
		end

		registerVal13:completeAnimation()
		registerVal2.PlayerTimeToBeatBox:setAlpha(0.000000)
		__FUNC_BC25_(registerVal13, {})
		local function __FUNC_BF31_(arg0, arg1)
			local function __FUNC_C088_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_C088_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 720.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C088_)
		end

		registerVal14:completeAnimation()
		registerVal2.LosingTeamFactionNameNew:setAlpha(0.000000)
		__FUNC_BF31_(registerVal14, {})
		local function __FUNC_C23D_(arg0, arg1)
			local function __FUNC_C394_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_C394_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 819.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C394_)
		end

		registerVal15:completeAnimation()
		registerVal2.LosingTeamFactionIconNew:setAlpha(0.000000)
		__FUNC_C23D_(registerVal15, {})
		local function __FUNC_C549_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:beginAnimation("keyframe", 649.000000, false, false, CoD.TweenType.Linear)
		registerVal16:setAlpha(0.000000)
		registerVal16:registerEventHandler("transition_complete_keyframe", __FUNC_C549_)
		local function __FUNC_C6FD_(arg0, arg1)
			local function __FUNC_C854_(arg0, arg1)
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
				__FUNC_C854_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C854_)
		end

		registerVal17:completeAnimation()
		registerVal2.SubTitleNew:setAlpha(0.000000)
		__FUNC_C6FD_(registerVal17, {})
		local function __FUNC_CA09_(arg0, arg1)
			local function __FUNC_CB60_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_CB60_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CB60_)
		end

		registerVal18:completeAnimation()
		registerVal2.VSBanner:setAlpha(0.000000)
		__FUNC_CA09_(registerVal18, {})
		local function __FUNC_CD15_(arg0, arg1)
			local function __FUNC_CE6C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_CE6C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 560.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CE6C_)
		end

		registerVal19:completeAnimation()
		registerVal2.VSLabel:setAlpha(0.000000)
		__FUNC_CD15_(registerVal19, {})
		registerVal22:completeAnimation()
		registerVal2.WinnerFactionInfo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		local function __FUNC_D021_(arg0, arg1)
			local function __FUNC_D178_(arg0, arg1)
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

			if arg1.interrupted then
				__FUNC_D178_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D178_)
		end

		registerVal23:completeAnimation()
		registerVal2.TitleNew:setAlpha(0.000000)
		__FUNC_D021_(registerVal23, {})
		local function __FUNC_D32D_(arg0, arg1)
			local function __FUNC_D484_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_D484_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D484_)
		end

		registerVal24:completeAnimation()
		registerVal2.MatchBonusWidget0:setAlpha(0.000000)
		__FUNC_D32D_(registerVal24, {})
	end

	registerVal26.Show_Two_Team = __FUNC_9B0A_
	local function __FUNC_D639_()
		registerVal2:setupElementClipCounter(22.000000)
		local function __FUNC_E2FC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.LeftPanelR:setAlpha(1.000000)
		__FUNC_E2FC_(registerVal3, {})
		local function __FUNC_E4B1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.LeftPanelL:setAlpha(1.000000)
		__FUNC_E4B1_(registerVal4, {})
		local function __FUNC_E665_(arg0, arg1)
			local function __FUNC_E7BC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 339.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(0.000000, 0.000000, 0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_E7BC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E7BC_)
		end

		registerVal5:completeAnimation()
		registerVal2.VignetteBack:setRGB(1.000000, 1.000000, 1.000000)
		__FUNC_E665_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FFATopPlayerInfo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FFAFirstRunnerUpPlayerInfo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FFASecondRunnerUpPlayerInfo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_E977_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
			arg0:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(4.000000, 0.000000, 0.020000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.WinningTeamScoreNew:setAlpha(1.000000)
		registerVal2.WinningTeamScoreNew:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
		registerVal2.WinningTeamScoreNew:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
		registerVal2.WinningTeamScoreNew:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.WinningTeamScoreNew:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.WinningTeamScoreNew:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.WinningTeamScoreNew:setShaderVector(4.000000, 0.000000, 0.020000, 0.000000, 0.000000)
		__FUNC_E977_(registerVal9, {})
		local function __FUNC_EC89_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
			arg0:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(4.000000, 0.000000, 0.020000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.LosingTeamScoreNew:setAlpha(1.000000)
		registerVal2.LosingTeamScoreNew:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
		registerVal2.LosingTeamScoreNew:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
		registerVal2.LosingTeamScoreNew:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.LosingTeamScoreNew:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.LosingTeamScoreNew:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.LosingTeamScoreNew:setShaderVector(4.000000, 0.000000, 0.020000, 0.000000, 0.000000)
		__FUNC_EC89_(registerVal10, {})
		local function __FUNC_EF9D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.WinningTeamFactionNameNew:setAlpha(1.000000)
		__FUNC_EF9D_(registerVal11, {})
		local function __FUNC_F151_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.WinningTeamFactionIconNew:setAlpha(1.000000)
		__FUNC_F151_(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.PlayerTimeToBeatBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		local function __FUNC_F305_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.LosingTeamFactionNameNew:setAlpha(1.000000)
		__FUNC_F305_(registerVal14, {})
		local function __FUNC_F4B9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.LosingTeamFactionIconNew:setAlpha(1.000000)
		__FUNC_F4B9_(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.EnemyTimeToBeatBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		local function __FUNC_F66D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.SubTitleNew:setAlpha(1.000000)
		__FUNC_F66D_(registerVal17, {})
		local function __FUNC_F821_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.VSBanner:setAlpha(1.000000)
		__FUNC_F821_(registerVal18, {})
		local function __FUNC_F9D5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal2.VSLabel:setAlpha(1.000000)
		__FUNC_F9D5_(registerVal19, {})
		local function __FUNC_FB89_(arg0, arg1)
			local function __FUNC_FD3B_(arg0, arg1)
				local function __FUNC_FE90_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 250.000000, true, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, true, 0.000000, 0.000000)
					arg0:setTopBottom(false, true, 0.000000, 360.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_FE90_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FE90_)
			end

			if arg1.interrupted then
				__FUNC_FD3B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, true, CoD.TweenType.Linear)
			arg0:setTopBottom(false, true, -360.000000, 0.000000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FD3B_)
		end

		registerVal20:completeAnimation()
		registerVal2.TransitionImageBottom:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.TransitionImageBottom:setTopBottom(false, true, 0.000000, 360.000000)
		registerVal2.TransitionImageBottom:setAlpha(0.000000)
		__FUNC_FB89_(registerVal20, {})
		local function __FUNC_100A6_(arg0, arg1)
			local function __FUNC_10257_(arg0, arg1)
				local function __FUNC_103AC_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 250.000000, true, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, true, 0.000000, 0.000000)
					arg0:setTopBottom(true, false, -360.000000, 0.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_103AC_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_103AC_)
			end

			if arg1.interrupted then
				__FUNC_10257_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, true, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 0.000000, 360.000000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10257_)
		end

		registerVal21:completeAnimation()
		registerVal2.TransitionImageTop:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.TransitionImageTop:setTopBottom(true, false, -360.000000, 0.000000)
		registerVal2.TransitionImageTop:setAlpha(0.000000)
		__FUNC_100A6_(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.WinnerFactionInfo:setLeftRight(true, false, 64.000000, 454.000000)
		registerVal2.WinnerFactionInfo:setTopBottom(true, false, 37.500000, 217.500000)
		registerVal2.WinnerFactionInfo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		local function __FUNC_105C2_(arg0, arg1)
			local function __FUNC_1073B_(arg0, arg1)
				local function __FUNC_108B3_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_108B3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.820000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_108B3_)
			end

			if arg1.interrupted then
				__FUNC_1073B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1073B_)
		end

		registerVal23:completeAnimation()
		registerVal2.TitleNew:setAlpha(1.000000)
		__FUNC_105C2_(registerVal23, {})
		local function __FUNC_10A65_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal24:completeAnimation()
		registerVal2.MatchBonusWidget0:setAlpha(1.000000)
		__FUNC_10A65_(registerVal24, {})
	end

	registerVal26.End_Transition = __FUNC_D639_
	local function __FUNC_10C19_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_10F3F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.VignetteBack:setRGB(0.000000, 0.000000, 0.000000)
		__FUNC_10F3F_(registerVal5, {})
		local function __FUNC_110F7_(arg0, arg1)
			local function __FUNC_1124C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1124C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1124C_)
		end

		registerVal6:completeAnimation()
		registerVal2.FFATopPlayerInfo:setAlpha(0.000000)
		__FUNC_110F7_(registerVal6, {})
		local function __FUNC_11401_(arg0, arg1)
			local function __FUNC_11558_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_11558_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11558_)
		end

		registerVal7:completeAnimation()
		registerVal2.FFAFirstRunnerUpPlayerInfo:setAlpha(0.000000)
		__FUNC_11401_(registerVal7, {})
		local function __FUNC_1170D_(arg0, arg1)
			local function __FUNC_11864_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_11864_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11864_)
		end

		registerVal8:completeAnimation()
		registerVal2.FFASecondRunnerUpPlayerInfo:setAlpha(0.000000)
		__FUNC_1170D_(registerVal8, {})
		local function __FUNC_11A19_(arg0, arg1)
			local function __FUNC_11B70_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_11B70_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11B70_)
		end

		registerVal17:completeAnimation()
		registerVal2.SubTitleNew:setAlpha(0.000000)
		__FUNC_11A19_(registerVal17, {})
		local function __FUNC_11D25_(arg0, arg1)
			local function __FUNC_11E7C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_11E7C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11E7C_)
		end

		registerVal23:completeAnimation()
		registerVal2.TitleNew:setAlpha(0.000000)
		__FUNC_11D25_(registerVal23, {})
		local function __FUNC_12031_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal24:completeAnimation()
		registerVal2.MatchBonusWidget0:setAlpha(0.000000)
		__FUNC_12031_(registerVal24, {})
	end

	registerVal26.ShowFFAOutcome = __FUNC_10C19_
	local function __FUNC_121E5_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_123E8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.VignetteBack:setRGB(0.000000, 0.000000, 0.000000)
		__FUNC_123E8_(registerVal5, {})
		local function __FUNC_125A3_(arg0, arg1)
			local function __FUNC_126F8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_126F8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_126F8_)
		end

		registerVal17:completeAnimation()
		registerVal2.SubTitleNew:setAlpha(0.000000)
		__FUNC_125A3_(registerVal17, {})
		local function __FUNC_128AD_(arg0, arg1)
			local function __FUNC_12A04_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_12A04_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12A04_)
		end

		registerVal23:completeAnimation()
		registerVal2.TitleNew:setAlpha(0.000000)
		__FUNC_128AD_(registerVal23, {})
		local function __FUNC_12BB9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal24:completeAnimation()
		registerVal2.MatchBonusWidget0:setAlpha(0.000000)
		__FUNC_12BB9_(registerVal24, {})
	end

	registerVal26.ShowFFATie = __FUNC_121E5_
	local function __FUNC_12D6D_()
		registerVal2:setupElementClipCounter(12.000000)
		local function __FUNC_133C3_(arg0, arg1)
			local function __FUNC_13518_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 339.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(0.000000, 0.000000, 0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_13518_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13518_)
		end

		registerVal5:completeAnimation()
		registerVal2.VignetteBack:setRGB(1.000000, 1.000000, 1.000000)
		__FUNC_133C3_(registerVal5, {})
		local function __FUNC_136D3_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.FFATopPlayerInfo:setAlpha(1.000000)
		__FUNC_136D3_(registerVal6, {})
		local function __FUNC_13885_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.FFAFirstRunnerUpPlayerInfo:setAlpha(1.000000)
		__FUNC_13885_(registerVal7, {})
		local function __FUNC_13A39_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.FFASecondRunnerUpPlayerInfo:setAlpha(1.000000)
		__FUNC_13A39_(registerVal8, {})
		registerVal13:completeAnimation()
		registerVal2.PlayerTimeToBeatBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal16:completeAnimation()
		registerVal2.EnemyTimeToBeatBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		local function __FUNC_13BED_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.SubTitleNew:setAlpha(1.000000)
		__FUNC_13BED_(registerVal17, {})
		local function __FUNC_13DA1_(arg0, arg1)
			local function __FUNC_13F53_(arg0, arg1)
				local function __FUNC_140A8_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 250.000000, true, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, true, 0.000000, 0.000000)
					arg0:setTopBottom(false, true, 0.000000, 360.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_140A8_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_140A8_)
			end

			if arg1.interrupted then
				__FUNC_13F53_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, true, CoD.TweenType.Linear)
			arg0:setTopBottom(false, true, -360.000000, 0.000000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13F53_)
		end

		registerVal20:completeAnimation()
		registerVal2.TransitionImageBottom:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.TransitionImageBottom:setTopBottom(false, true, 0.000000, 360.000000)
		registerVal2.TransitionImageBottom:setAlpha(0.000000)
		__FUNC_13DA1_(registerVal20, {})
		local function __FUNC_142BE_(arg0, arg1)
			local function __FUNC_1446F_(arg0, arg1)
				local function __FUNC_145C4_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 250.000000, true, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, true, 0.000000, 0.000000)
					arg0:setTopBottom(true, false, -360.000000, 0.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_145C4_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_145C4_)
			end

			if arg1.interrupted then
				__FUNC_1446F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, true, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 0.000000, 360.000000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1446F_)
		end

		registerVal21:completeAnimation()
		registerVal2.TransitionImageTop:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.TransitionImageTop:setTopBottom(true, false, -360.000000, 0.000000)
		registerVal2.TransitionImageTop:setAlpha(0.000000)
		__FUNC_142BE_(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.WinnerFactionInfo:setLeftRight(true, false, 64.000000, 454.000000)
		registerVal2.WinnerFactionInfo:setTopBottom(true, false, 37.500000, 217.500000)
		registerVal2.WinnerFactionInfo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		local function __FUNC_147DA_(arg0, arg1)
			local function __FUNC_14953_(arg0, arg1)
				local function __FUNC_14ACB_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_14ACB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.820000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14ACB_)
			end

			if arg1.interrupted then
				__FUNC_14953_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14953_)
		end

		registerVal23:completeAnimation()
		registerVal2.TitleNew:setAlpha(1.000000)
		__FUNC_147DA_(registerVal23, {})
		local function __FUNC_14C7D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal24:completeAnimation()
		registerVal2.MatchBonusWidget0:setAlpha(1.000000)
		__FUNC_14C7D_(registerVal24, {})
	end

	registerVal26.End_Transition_FFA = __FUNC_12D6D_
	registerVal25.DefaultState = registerVal26
	registerVal2.clipsPerState = registerVal25
	local function __FUNC_14E31_(arg0)
		arg0.LeftPanelR:close()
		arg0.LeftPanelL:close()
		arg0.VignetteBack:close()
		arg0.FFATopPlayerInfo:close()
		arg0.FFAFirstRunnerUpPlayerInfo:close()
		arg0.FFASecondRunnerUpPlayerInfo:close()
		arg0.WinningTeamScoreNew:close()
		arg0.LosingTeamScoreNew:close()
		arg0.WinningTeamFactionNameNew:close()
		arg0.WinningTeamFactionIconNew:close()
		arg0.PlayerTimeToBeatBox:close()
		arg0.LosingTeamFactionNameNew:close()
		arg0.LosingTeamFactionIconNew:close()
		arg0.EnemyTimeToBeatBox:close()
		arg0.SubTitleNew:close()
		arg0.VSBanner:close()
		arg0.WinnerFactionInfo:close()
		arg0.TitleNew:close()
		arg0.MatchBonusWidget0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_14E31_)
	if __FUNC_26D9_ then
		__FUNC_26D9_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.Outcome.new = __FUNC_35EF_
