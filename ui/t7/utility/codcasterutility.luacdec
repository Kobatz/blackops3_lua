-- Decompiled with CoDLUIDecompiler by JariK

CoD.CodCasterUtility = {}
function CoD.CodCasterUtility.SetupUIModels(arg0)
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal1 = Engine.CreateModel(registerVal2, "CodCaster")
	local registerVal3 = Engine.CreateModel(registerVal1, "showLoadout")
	Engine.SetModelValue(registerVal3, false)
	registerVal3 = Engine.CreateModel(registerVal1, "showFullscreenMap")
	Engine.SetModelValue(registerVal3, false)
	registerVal3 = Engine.CreateModel(registerVal1, "showSettingsSideBar")
	Engine.SetModelValue(registerVal3, 0.000000)
	registerVal3 = Engine.CreateModel(registerVal1, "showQuickSettingsSideBar")
	Engine.SetModelValue(registerVal3, 0.000000)
	registerVal3 = Engine.CreateModel(registerVal1, "profileSettingsUpdated")
	Engine.SetModelValue(registerVal3, 0.000000)
end

function CoD.CodCasterUtility.Options_ItemSelected(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = CoD.ShoutcasterProfileVarValue(arg2, arg3)
	if registerVal5 == arg1.value then
		return 
	end
	CoD.SetShoutcasterProfileVarValue(arg2, arg3, arg1.value)
	if arg1.valueChangedCallback then
		arg1.valueChangedCallback(arg4, arg2, arg3, arg1.value)
	end
end

function CoD.CodCasterUtility.Options_RevertItemSelected(arg0, arg1, arg2, arg3, arg4, arg5)
	local registerVal6 = CoD.OptionsUtility.GetCustomProfileSelection(arg2, arg1.options, CoD.ShoutcasterProfileVarValue(arg2, arg3))
	local registerVal7 = arg0:getModel(arg2, "currentSelection")
	local registerVal8 = Engine.GetModelValue(registerVal7)
	local registerVal9, registerVal10 = arg0.Slider:getRowAndColumnForIndex((registerVal8 - 1.000000))
	arg0.Slider:setActiveIndex(registerVal9, registerVal10, 0.000000)
end

function CoD.CodCasterUtility.Options_GetProfileSelection(arg0, arg1, arg2)
	local registerVal3 = CoD.ShoutcasterProfileVarValue(arg0, arg2)
	return CoD.OptionsUtility.GetCustomProfileSelection(arg0, arg1, registerVal3)
end

function CoD.CodCasterUtility.SetTeamSettings(arg0, arg1, arg2, arg3)
	CoD.SetShoutcasterProfileVarValue(arg0, ("shoutcaster_fe_" .. arg1 .. "_" .. arg2), arg3)
end

function CoD.CodCasterUtility.SwapTeamSettings(arg0)
	local registerVal1 = CoD.ShoutcasterProfileVarBool(arg0, "shoutcaster_fe_team_identity")
	if not registerVal1 then
		return 
	end
	local registerVal2 = CoD.ShoutcasterProfileVarValue(arg0, ("shoutcaster_fe_" .. "team1" .. "_name"))
	local registerVal3 = CoD.ShoutcasterProfileVarValue(arg0, ("shoutcaster_fe_" .. "team1" .. "_icon"))
	local registerVal4 = CoD.ShoutcasterProfileVarValue(arg0, ("shoutcaster_fe_" .. "team1" .. "_color"))
	CoD.CodCasterUtility.SetTeamSettings(arg0, "team1", "name", CoD.ShoutcasterProfileVarValue(arg0, "shoutcaster_fe_team2_name"))
	CoD.CodCasterUtility.SetTeamSettings(arg0, "team1", "icon", CoD.ShoutcasterProfileVarValue(arg0, "shoutcaster_fe_team2_icon"))
	CoD.CodCasterUtility.SetTeamSettings(arg0, "team1", "color", CoD.ShoutcasterProfileVarValue(arg0, "shoutcaster_fe_team2_color"))
	CoD.CodCasterUtility.SetTeamSettings(arg0, "team2", "name", registerVal2)
	CoD.CodCasterUtility.SetTeamSettings(arg0, "team2", "icon", registerVal3)
	CoD.CodCasterUtility.SetTeamSettings(arg0, "team2", "color", registerVal4)
end

