-- Decompiled with CoDLUIDecompiler by JariK

require("ui.T6.LeftRightSelector")
CoD.ProfileLeftRightSelector = {}
local function __FUNC_21A_(arg0, arg1)
	if arg1 then
		Engine.SetProfileVar(arg0.parentSelectorButton.m_currentController, arg0.parentSelectorButton.m_profileVarName, arg0.value)
	end
end

local function __FUNC_327_(arg0, arg1, arg2, arg3, arg4)
	if arg4 ~= nil then
	else
	end
	local registerVal10 = {}
	registerVal10.parentSelectorButton = arg0
	registerVal10.value = arg2
	registerVal10.extraParams = arg3
	CoD.LeftRightSelector.AddChoice(arg0, arg1, __FUNC_21A_, registerVal10)
end

CoD.ProfileLeftRightSelector.AddChoice = __FUNC_327_
function CoD.ProfileLeftRightSelector.getCurrentValue(arg0)
	return Engine.ProfileValueAsString(arg0.m_currentController, arg0.m_profileVarName)
end

function CoD.ProfileLeftRightSelector.new(arg0, arg1, arg2, arg3, arg4, arg5)
	local registerVal6 = Engine.ProfileValueAsString(arg0, arg2)
	if not arg5 then
	end
	local registerVal7 = CoD.LeftRightSelector.new(arg1, registerVal6, arg3, arg4, CoD.LeftRightSelector.ChangeSFX)
	registerVal7.m_profileVarName = arg2
	registerVal7.m_currentController = arg0
	registerVal7.addChoice = CoD.ProfileLeftRightSelector.AddChoice
	local registerVal8 = Engine.ProfileValueAsString(arg0, arg2)
	registerVal7.currentProfileVarValue = registerVal8
	registerVal7.getCurrentValue = CoD.ProfileLeftRightSelector.getCurrentValue
	return registerVal7
end

