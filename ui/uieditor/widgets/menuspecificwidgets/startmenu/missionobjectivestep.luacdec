-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MenuSpecificWidgets.StartMenu.MissionObjectiveStepInternal")
local function __FUNC_23A_(arg0, arg1)
	local function __FUNC_285_(arg0)
		local registerVal1, registerVal2, registerVal3, registerVal4 = arg0:getLocalRect()
		local registerVal5 = arg0.internal:getHeightInList()
		arg0:setTopBottom(true, false, registerVal2, (registerVal2 + registerVal5))
		return registerVal5
	end

	arg0.getHeightInList = __FUNC_285_
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.MissionObjectiveStep = registerVal2
local function __FUNC_33F_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MissionObjectiveStep)
	registerVal2.id = "MissionObjectiveStep"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 245.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.MissionObjectiveStepInternal.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 2.000000, 245.000000)
	registerVal3:setTopBottom(true, false, 2.000000, 27.000000)
	registerVal3.stepText:setText(Engine.Localize("MENU_NEW"))
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Complete"
	local function __FUNC_7D3_(arg0, arg2, arg3)
		return IsObjectiveComplete(arg2, arg1)
	end

	registerVal7.condition = __FUNC_7D3_
	local registerVal8 = {}
	registerVal8.stateName = "Active"
	local function __FUNC_82D_(arg0, arg2, arg3)
		return IsObjectiveActive(arg2, arg1)
	end

	registerVal8.condition = __FUNC_82D_
	local registerVal9 = {}
	registerVal9.stateName = "Failed"
	local function __FUNC_887_(arg0, arg2, arg3)
		return IsObjectiveFailed(arg2, arg1)
	end

	registerVal9.condition = __FUNC_887_
	local registerVal10 = {}
	registerVal10.stateName = "Description"
	local function __FUNC_8DF_(arg0, arg2, arg3)
		return IsObjectiveDescription(arg2, arg1)
	end

	registerVal10.condition = __FUNC_8DF_
	registerVal6 = {registerVal7, registerVal8, registerVal9, registerVal10}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal2:addElement(registerVal3)
	registerVal2.internal = registerVal3
	local function __FUNC_93C_(arg0)
		arg0.internal:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_93C_)
	if __FUNC_23A_ then
		__FUNC_23A_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.MissionObjectiveStep.new = __FUNC_33F_
