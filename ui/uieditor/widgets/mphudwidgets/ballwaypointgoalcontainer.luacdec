-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MPHudWidgets.Waypoint")
local function __FUNC_23A_(arg0, arg1, arg2)
	local registerVal5 = Engine.GetObjectiveEntity(arg1, arg2)
	{}.imagename = arg0.waypoint_image
	local registerVal6 = arg0.Waypoint:isOwnedByMyTeam(arg1)
	if registerVal6 then
		{}.waypointType = arg0.waypoint_text
		registerVal6 = CoD.GetColorSetFriendlyColor(arg1, arg0.Waypoint:getTeam(arg1))
		{}.imagecolor = registerVal6
	else
		{}.waypointType = arg0.waypoint_text_enemy
		registerVal6 = CoD.GetColorSetEnemyColor(arg1, arg0.Waypoint:getTeam(arg1))
		{}.imagecolor = registerVal6
	end
	return {}
end

local function __FUNC_46B_(arg0, arg1)
	arg0.Waypoint.zOffset = arg0.waypoint_z_offset
	local registerVal5 = __FUNC_23A_(arg0, arg1.controller, arg0.objId)
	arg0.Waypoint.WaypointCenter.waypointCenterImage:setImage(RegisterImage(registerVal5.imagename))
	if registerVal5.imagename and registerVal5.imagecolor then
		arg0.Waypoint.WaypointCenter.waypointCenterImage:setRGB(registerVal5.imagecolor.r, registerVal5.imagecolor.g, registerVal5.imagecolor.b)
	end
	if registerVal5.waypointType then
		arg0.Waypoint.WaypointText.text:setText(Engine.Localize(registerVal5.waypointType))
	end
	if arg0.visible == true then
		arg0:show()
		arg0.Waypoint:update(arg1)
		arg0.Waypoint:setCompassObjectiveIcon(arg1.controller, arg0.objId, (registerVal5.imagename .. "_mini"), registerVal5.imagecolor)
		if arg0.Waypoint.ping ~= true then
		end
		Engine.SetObjectiveIgnoreEntity(arg1.controller, arg0.objId, CoD.GametypeBase.mapIconType, true)
	else
		arg0:hide()
		arg0.Waypoint:clearCompassObjectiveIcon(arg1.controller, arg0.objId)
	end
end

local function __FUNC_93E_(arg0, arg1)
	if arg1.objId then
		arg0.objId = arg1.objId
		arg0.Waypoint.objective = arg0.objective
		arg0.Waypoint:setupWaypoint(arg1)
		local registerVal4 = string.sub(arg0.objective.id, 1.000000, -5.000000)
		local registerVal5 = Engine.GetObjectiveIndexFromName(arg1.controller, (registerVal4 .. "goal"))
		arg0.flagObjectiveIndex = registerVal5
		registerVal5 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_text")
		arg0.waypoint_text = registerVal5
		registerVal5 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_text_enemy")
		arg0.waypoint_text_enemy = registerVal5
		registerVal5 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_image")
		arg0.waypoint_image = registerVal5
		registerVal5 = Engine.StructTableLookupNumber("objectives", "id", arg0.objective.id, "waypoint_z_offset")
		arg0.waypoint_z_offset = registerVal5
		arg0.Waypoint.never_contested = true
	end
end

local function __FUNC_C87_(arg0, arg1)
	return true
end

local function __FUNC_CB8_(arg0)
	arg0.update = __FUNC_46B_
	arg0.setupWaypointContainer = __FUNC_93E_
	arg0.shouldShow = __FUNC_C87_
	arg0.objectiveAtBase = 0.000000
	arg0.objectiveFlagAway = 1.000000
end

local registerVal6 = InheritFrom(LUI.UIElement)
CoD.BallWaypointGoalContainer = registerVal6
local function __FUNC_D86_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BallWaypointGoalContainer)
	registerVal2.id = "BallWaypointGoalContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Waypoint.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 600.000000, -600.000000)
	registerVal3:setTopBottom(true, true, 315.000000, -315.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Waypoint = registerVal3
	local function __FUNC_1096_(arg0)
		arg0.Waypoint:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1096_)
	if __FUNC_CB8_ then
		__FUNC_CB8_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.BallWaypointGoalContainer.new = __FUNC_D86_
