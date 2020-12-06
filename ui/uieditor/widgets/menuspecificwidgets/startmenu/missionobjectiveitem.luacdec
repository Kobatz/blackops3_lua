-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MenuSpecificWidgets.StartMenu.MissionObjectiveItemInternal")
local function __FUNC_23A_(arg0, arg1)
	local function __FUNC_285_(arg0, arg1)
		local registerVal2, registerVal3, registerVal4, registerVal5 = arg0:getLocalRect()
		local registerVal6 = arg0.internal:getHeightInList(arg1)
		arg0:setTopBottom(true, false, registerVal3, (registerVal3 + registerVal6))
		return registerVal6
	end

	arg0.getHeightInList = __FUNC_285_
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.MissionObjectiveItem = registerVal2
local function __FUNC_343_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MissionObjectiveItem)
	registerVal2.id = "MissionObjectiveItem"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 250.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 115.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.MissionObjectiveItemInternal.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 250.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 115.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Done"
	local function __FUNC_752_(arg0, arg2, arg3)
		return IsObjectiveComplete(arg2, arg1)
	end

	registerVal7.condition = __FUNC_752_
	local registerVal8 = {}
	registerVal8.stateName = "Active"
	local function __FUNC_7AD_(arg0, arg2, arg3)
		return IsObjectiveActive(arg2, arg1)
	end

	registerVal8.condition = __FUNC_7AD_
	registerVal6 = {registerVal7, registerVal8}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal2:addElement(registerVal3)
	registerVal2.internal = registerVal3
	local function __FUNC_807_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.objectiveName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.internal:linkToElementModel(registerVal2, "displayText", true, __FUNC_807_)
	local function __FUNC_8E1_(arg0)
		arg0.internal:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_8E1_)
	if __FUNC_23A_ then
		__FUNC_23A_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.MissionObjectiveItem.new = __FUNC_343_
