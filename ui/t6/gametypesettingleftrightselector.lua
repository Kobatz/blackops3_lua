-- Decompiled with CoDLUIDecompiler by JariK

require("ui.T6.LeftRightSelector")
CoD.GametypeSettingLeftRightSelector = {}
function CoD.GametypeSettingLeftRightSelector.AddChoice(arg0, arg1, arg2, arg3, arg4, arg5)
	if arg5 ~= nil then
	else
	end
	local registerVal11 = {}
	registerVal11.parentSelectorButton = arg0
	registerVal11.value = arg3
	registerVal11.extraParams = arg4
	CoD.LeftRightSelector.AddChoice(arg0, arg2, CoD.GametypeSettingLeftRightSelector.SelectionChanged, registerVal11)
end

function CoD.GametypeSettingLeftRightSelector.SelectionChanged(arg0)
	Engine.SetGametypeSetting(arg0.parentSelectorButton.m_settingName, arg0.value)
	local registerVal3 = Engine.IsGametypeSettingDefault(arg0.parentSelectorButton.m_settingName)
	if registerVal3 then
		arg0.parentSelectorButton:showStarIcon(false)
	else
		arg0.parentSelectorButton:showStarIcon(true)
	end
end

function CoD.GametypeSettingLeftRightSelector.getCurrentValue(arg0)
	return Engine.GetGametypeSetting(arg0.m_settingName)
end

function CoD.GametypeSettingLeftRightSelector.new(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = Engine.GetGametypeSetting(arg2)
	local registerVal6 = CoD.LeftRightSelector.new(arg1, registerVal5, arg3, arg4, "cac_grid_nav")
	registerVal6.m_settingName = arg2
	registerVal6.addChoice = CoD.GametypeSettingLeftRightSelector.AddChoice
	registerVal6.getCurrentValue = CoD.GametypeSettingLeftRightSelector.getCurrentValue
	return registerVal6
end

