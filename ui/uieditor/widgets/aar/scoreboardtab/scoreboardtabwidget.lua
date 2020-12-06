-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.AAR.ScoreboardTab.AARScoreboardHeaderWidget")
require("ui.uieditor.widgets.Scoreboard.ScoreboardWidget")
require("ui.uieditor.widgets.AAR.ScoreboardTab.AARScoreboardRowWidget")
require("ui.uieditor.widgets.AAR.ScoreboardTab.NemesisWidget")
local function __FUNC_312_(arg0, arg1)
	local registerVal2 = Engine.GetCurrentTeamCount()
	local registerVal3 = CoD.GetPlayerStats(arg1)
	local registerVal5 = registerVal3.AfterActionReportStats.nemesisName:get()
	local registerVal6 = string.gsub(registerVal5, "%[.+%]", "")
	if registerVal6 ~= "" then
		local registerVal7 = IsTeamBasedOrInfect(arg1)
		for index8=1.000000, registerVal2, 1.000000 do
			if DataSources[("ScoreboardTeam" .. index8 .. "List")] then
				local registerVal14 = Engine.GetGlobalModel()
				local registerVal13 = Engine.GetModel(registerVal14, ("scoreboard.team" .. index8))
				local registerVal15 = {}
				registerVal15.scoreboardInfoModel = registerVal13
				registerVal14 = DataSources[("ScoreboardTeam" .. index8 .. "List")].getCount(registerVal15)
				for index15=1.000000, registerVal14, 1.000000 do
					local registerVal21 = {}
					registerVal21.scoreboardInfoModel = registerVal13
					local registerVal19 = DataSources[("ScoreboardTeam" .. index8 .. "List")].getItem(arg1, registerVal21, index15)
					local registerVal20 = Engine.GetModelValue(Engine.GetModel(registerVal19, "clientNum"))
					registerVal21 = GetScoreboardPlayerName(arg1, registerVal20)
					if registerVal21 == registerVal6 then
						local function __FUNC_822_(arg1, arg2)
							local registerVal2 = LUI.getTableFromPath(("ScoreboardWidget.ScoreboardFactionScoresList.Team" .. arg1), arg0)
							if not registerVal2 then
								Engine.PrintWarning(Enum.consoleLabel.LABEL_LUI, "WARNING: Could not find scoreboard team list, nemesis widget will not be created.")
								return nil
							end
							local registerVal5 = {}
							registerVal5.clientNum = arg2
							return registerVal2:findItem(registerVal5)
						end

						if registerVal7 then
							local registerVal23 = __FUNC_822_(index8, registerVal20)
						else
							registerVal23 = __FUNC_822_(1.000000, registerVal20)
						end
						if registerVal23 then
							arg0:removeElement(arg0.NemesisWidget)
							arg0.NemesisWidget:setLeftRight(false, true, 2.000000, 2.000000)
							arg0.NemesisWidget:setTopBottom(false, false, 0.000000, 0.000000)
							registerVal23:addElement(arg0.NemesisWidget)
						else
						end
					end
				end
			end
		end
	end
	if not true then
		arg0.NemesisWidget:close()
	end
end

local function __FUNC_A07_(arg0, arg1)
	CoD.ScoreboardUtility.SetScoreboardUIModels(arg1)
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.ScoreboardTabWidget = registerVal3
local function __FUNC_A9B_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_A07_ then
		__FUNC_A07_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ScoreboardTabWidget)
	registerVal2.id = "ScoreboardTabWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 526.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.AARScoreboardHeaderWidget.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 71.500000, 1049.500000)
	registerVal3:setTopBottom(true, false, 24.500000, 55.500000)
	registerVal2:addElement(registerVal3)
	registerVal2.AARScoreboardHeaderWidget = registerVal3
	local registerVal4 = CoD.ScoreboardWidget.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 71.500000, 1102.500000)
	registerVal4:setTopBottom(true, false, 24.500000, 676.500000)
	registerVal4.ScoreboardFactionScoresList.Team1:setWidgetType(CoD.AARScoreboardRowWidget)
	registerVal4.ScoreboardFactionScoresList.Team2:setWidgetType(CoD.AARScoreboardRowWidget)
	registerVal4.ScoreboardHeaderWidget:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.ScoreboardWidget = registerVal4
	local registerVal5 = CoD.NemesisWidget.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 1045.000000, 1275.000000)
	registerVal5:setTopBottom(true, false, 389.000000, 491.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.NemesisWidget = registerVal5
	registerVal4.id = "ScoreboardWidget"
	local function __FUNC_106B_(arg0, arg1)
		local registerVal2 = arg0.ScoreboardWidget:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_106B_)
	local function __FUNC_1174_(arg0)
		arg0.AARScoreboardHeaderWidget:close()
		arg0.ScoreboardWidget:close()
		arg0.NemesisWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1174_)
	if __FUNC_312_ then
		__FUNC_312_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ScoreboardTabWidget.new = __FUNC_A9B_
