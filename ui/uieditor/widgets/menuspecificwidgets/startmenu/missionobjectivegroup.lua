-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MenuSpecificWidgets.StartMenu.MissionObjectiveGroupInternal")
local function __FUNC_23C_(arg0, arg1)
	local function __FUNC_289_(arg0)
		local registerVal1, registerVal2, registerVal3, registerVal4 = arg0:getLocalRect()
		local registerVal5 = arg0.internal:getHeightInList()
		arg0:setTopBottom(true, false, registerVal2, (registerVal2 + registerVal5))
		return registerVal5
	end

	arg0.getHeightInList = __FUNC_289_
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.MissionObjectiveGroup = registerVal2
local function __FUNC_343_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MissionObjectiveGroup)
	registerVal2.id = "MissionObjectiveGroup"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 260.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 270.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.MissionObjectiveGroupInternal.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 260.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 270.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Active"
	local function __FUNC_751_(arg0, arg2, arg3)
		return IsObjectiveActive(arg2, arg1)
	end

	registerVal7.condition = __FUNC_751_
	local registerVal8 = {}
	registerVal8.stateName = "Done"
	local function __FUNC_7AB_(arg0, arg2, arg3)
		return IsObjectiveComplete(arg2, arg1)
	end

	registerVal8.condition = __FUNC_7AB_
	registerVal6 = {registerVal7, registerVal8}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal2:addElement(registerVal3)
	registerVal2.internal = registerVal3
	local function __FUNC_805_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.groupHeaderText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.internal:linkToElementModel(registerVal2, "category", true, __FUNC_805_)
	local function __FUNC_8E3_(arg0)
		arg0.internal:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_8E3_)
	if __FUNC_23C_ then
		__FUNC_23C_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.MissionObjectiveGroup.new = __FUNC_343_
