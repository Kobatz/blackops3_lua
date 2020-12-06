-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MPHudWidgets.Waypoint")
local function __FUNC_231_(arg0, arg1)
	arg0.Waypoint.WaypointCenter.waypointCenterImage:setImage(RegisterImage("waypoint_waitfor_flag"))
	if arg0.visible == true then
		arg0:show()
		arg0.Waypoint:update(arg1)
		arg0.Waypoint:setCompassObjectiveIcon(arg1.controller, arg0.objId, minimapIcon)
	else
		arg0:hide()
		arg0.Waypoint:clearCompassObjectiveIcon(arg1.controller, arg0.objId)
	end
end

local function __FUNC_452_(arg0, arg1)
	if arg1.objId then
		arg0.objId = arg1.objId
		arg0.Waypoint.objective = arg0.objective
		arg0.Waypoint:setupWaypoint(arg1)
		local registerVal4 = string.sub(arg0.objective.id, 1.000000, -5.000000)
		local registerVal5 = Engine.GetObjectiveIndexFromName(arg1.controller, (registerVal4 .. "flag"))
		arg0.flagObjectiveIndex = registerVal5
	end
end

local function __FUNC_61F_(arg0, arg1)
	local registerVal5 = arg0.Waypoint:isOwnedByMyTeam(arg1.controller)
	if not registerVal5 then
		return false
	end
	registerVal5 = Engine.GetObjectiveGamemodeFlags(arg1.controller, arg0.objId)
	if registerVal5 ~= arg0.objectiveFlagAway then
		return false
	end
	if arg0.flagObjectiveIndex then
		local registerVal6 = Engine.GetObjectiveGamemodeFlags(arg1.controller, arg0.flagObjectiveIndex)
		if registerVal6 ~= arg0.objectiveFlagAway then
			return false
		end
		registerVal6 = Engine.GetPredictedClientNum(arg1.controller)
		local registerVal7 = Engine.ObjectiveIsPlayerUsing(arg1.controller, arg0.flagObjectiveIndex, registerVal6)
		if not registerVal7 then
			return false
		end
	end
	return true
end

local function __FUNC_853_(arg0)
	arg0.update = __FUNC_231_
	arg0.setupWaypointContainer = __FUNC_452_
	arg0.shouldShow = __FUNC_61F_
	arg0.objectiveAtBase = 0.000000
	arg0.objectiveFlagAway = 1.000000
end

local registerVal5 = InheritFrom(LUI.UIElement)
CoD.CtfWaypointBaseContainer = registerVal5
local function __FUNC_91E_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CtfWaypointBaseContainer)
	registerVal2.id = "CtfWaypointBaseContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Waypoint.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 600.000000, -600.000000)
	registerVal3:setTopBottom(true, true, 315.000000, -315.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Waypoint = registerVal3
	local function __FUNC_C2D_(arg0)
		arg0.Waypoint:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_C2D_)
	if __FUNC_853_ then
		__FUNC_853_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.CtfWaypointBaseContainer.new = __FUNC_91E_
