-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Shared.LuaEnums")
require("ui.T7.Utility.OverlayUtility")
CoD.AnalyticsUtility = {}
local registerVal1 = LuaEnums.createEnum("SkipBack", "SkipRead", "No", "Yes")
CoD.AnalyticsUtility.SurveyResult = registerVal1
function RecordPostMatchSurveyResult(arg0, arg1)
	{}.surveyId = 1.000000
	{}.result = arg1
	local registerVal4 = CoD.GetPlayerStats(arg0)
	local registerVal5 = registerVal4.AfterActionReportStats.demoFileId:get()
	{}.matchId = registerVal5
	{}.buttons = (CoD.AnalyticsUtility.Surveys[{}.surveyId].order[1.000000] .. CoD.AnalyticsUtility.Surveys[{}.surveyId].order[2.000000] .. CoD.AnalyticsUtility.Surveys[{}.surveyId].order[3.000000])
	LuaUtils.LogClientTrack("postmatch_survey", {})
	LuaUtils.FlushClientTrack()
end

function shuffle(arg0)
	local registerVal2 = math.random(#)
	arg0[registerVal2] = arg0[#]
	arg0[#] = arg0[registerVal2]
	return arg0
end

CoD.AnalyticsUtility.Surveys = {}
registerVal1 = {}
local registerVal2 = {}
local registerVal3 = {}
local registerVal4 = {}
registerVal4.displayText = "MENU_SKIP_CAPS1"
registerVal3.models = registerVal4
registerVal4 = {}
local function __FUNC_98C_(arg0, arg1, arg2, arg3, arg4)
	RecordPostMatchSurveyResult(arg2, CoD.AnalyticsUtility.SurveyResult.SkipRead)
	GoBack(arg0, arg2)
end

registerVal4.action = __FUNC_98C_
registerVal3.properties = registerVal4
registerVal4 = {}
local registerVal5 = {}
registerVal5.displayText = "MENU_YES_CAPS"
registerVal4.models = registerVal5
registerVal5 = {}
local function __FUNC_A80_(arg0, arg1, arg2, arg3, arg4)
	RecordPostMatchSurveyResult(arg2, CoD.AnalyticsUtility.SurveyResult.Yes)
	GoBack(arg0, arg2)
end

registerVal5.action = __FUNC_A80_
registerVal4.properties = registerVal5
registerVal5 = {}
local registerVal6 = {}
registerVal6.displayText = "MENU_NO_CAPS"
registerVal5.models = registerVal6
registerVal6 = {}
local function __FUNC_B6F_(arg0, arg1, arg2, arg3, arg4)
	RecordPostMatchSurveyResult(arg2, CoD.AnalyticsUtility.SurveyResult.No)
	GoBack(arg0, arg2)
end

registerVal6.action = __FUNC_B6F_
registerVal5.properties = registerVal6
registerVal2 = {registerVal3, registerVal4, registerVal5}
registerVal1.buttons = registerVal2
registerVal3 = {}
registerVal3 = {1.000000, 2.000000, 3.000000}
registerVal2 = shuffle(registerVal3)
registerVal1.order = registerVal2
CoD.AnalyticsUtility.Surveys[1.000000] = registerVal1
function CoD.AnalyticsUtility.GoBack()
	local function __FUNC_C8C_(arg0, arg1, arg2, arg3)
		RecordPostMatchSurveyResult(arg2, CoD.AnalyticsUtility.SurveyResult.SkipBack)
		GoBack(arg3, arg2)
	end

	return __FUNC_C8C_
end

registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Full"
registerVal2.title = "MENU_SURVEY_1"
registerVal2.description = "MENU_SURVEY_INTRO"
registerVal2.image = ""
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Connection
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = CoD.AnalyticsUtility.GoBack
local function __FUNC_D80_()
	local function __FUNC_E43_(arg0)
		for index4=1.000000, #, 1.000000 do
			{}[index4] = CoD.AnalyticsUtility.Surveys[1.000000].buttons[CoD.AnalyticsUtility.Surveys[1.000000].order[index4]]
		end
		return {}
	end

	local registerVal1 = DataSourceHelpers.ListSetup("PostMatchSurveyButtons", __FUNC_E43_, true, nil)
	DataSources.PostMatchSurveyButtons = registerVal1
	return "PostMatchSurveyButtons"
end

registerVal2.listDatasource = __FUNC_D80_
CoD.OverlayUtility.AddSystemOverlay("PostMatchSurvey", registerVal2)
