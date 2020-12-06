-- Decompiled with CoDLUIDecompiler by JariK

require("ui.T6.LeftRightSelector")
CoD.DvarLeftRightSelector = {}
local function __FUNC_217_(arg0)
	Engine.SetDvar(arg0.parentSelectorButton.m_dvarName, arg0.value)
end

local function __FUNC_2DA_(arg0, arg1, arg2, arg3, arg4, arg5)
	if arg5 ~= nil then
	else
	end
	local registerVal11 = {}
	registerVal11.parentSelectorButton = arg0
	registerVal11.value = arg3
	registerVal11.extraParams = arg4
	CoD.LeftRightSelector.AddChoice(arg0, arg2, __FUNC_217_, registerVal11)
end

CoD.DvarLeftRightSelector.AddChoice = __FUNC_2DA_
function CoD.DvarLeftRightSelector.getCurrentValue(arg0)
	return Engine.DvarString(nil, arg0.m_dvarName)
end

function CoD.DvarLeftRightSelector.new(arg0, arg1, arg2, arg3, arg4)
	if arg2 then
		local registerVal6 = Engine.DvarString(nil, arg2)
	end
	registerVal6 = CoD.LeftRightSelector.new(arg1, registerVal6, arg3, arg4, "cac_grid_nav")
	registerVal6.m_dvarName = arg2
	registerVal6.m_currentController = arg0
	registerVal6.addChoice = CoD.DvarLeftRightSelector.AddChoice
	registerVal6.getCurrentValue = CoD.DvarLeftRightSelector.getCurrentValue
	return registerVal6
end

