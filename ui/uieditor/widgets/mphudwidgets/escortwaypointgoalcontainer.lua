-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MPHudWidgets.Waypoint")
local function __FUNC_23C_(arg0, arg1, arg2)
	local registerVal5 = Engine.GetObjectiveEntity(arg1, arg2)
	{}.imagename = arg0.waypoint_image
	{}.mapimagename = arg0.waypoint_image_map
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

local function __FUNC_4B1_(arg0, arg1)
	arg0.Waypoint.zOffset = arg0.waypoint_z_offset
	local registerVal5 = __FUNC_23C_(arg0, arg1.controller, arg0.objId)
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
		arg0.Waypoint:setCompassObjectiveIcon(arg1.controller, arg0.objId, registerVal5.mapimagename, registerVal5.imagecolor)
		if arg0.Waypoint.ping ~= true then
		end
		Engine.SetObjectiveIgnoreEntity(arg1.controller, arg0.objId, CoD.GametypeBase.mapIconType, true)
	else
		arg0:hide()
		arg0.Waypoint:clearCompassObjectiveIcon(arg1.controller, arg0.objId)
	end
end

local function __FUNC_981_(arg0, arg1)
	if arg1.objId then
		arg0.objId = arg1.objId
		arg0.Waypoint.objective = arg0.objective
		arg0.Waypoint:setupWaypoint(arg1)
		arg0.Waypoint.snapToCenterWhenContested = false
		arg0.Waypoint.snapToCenterForObjectiveTeam = false
		arg0.Waypoint.snapToCenterForOtherTeams = false
		local registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_text")
		arg0.waypoint_text = registerVal4
		registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_text_enemy")
		arg0.waypoint_text_enemy = registerVal4
		registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_image")
		arg0.waypoint_image = registerVal4
		registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_image_map")
		arg0.waypoint_image_map = registerVal4
		registerVal4 = Engine.StructTableLookupNumber("objectives", "id", arg0.objective.id, "waypoint_z_offset")
		arg0.waypoint_z_offset = registerVal4
	end
end

local function __FUNC_C92_(arg0, arg1)
	return true
end

local function __FUNC_CC4_(arg0)
	arg0.update = __FUNC_4B1_
	arg0.setupWaypointContainer = __FUNC_981_
	arg0.shouldShow = __FUNC_C92_
end

local registerVal6 = InheritFrom(LUI.UIElement)
CoD.EscortWaypointGoalContainer = registerVal6
local function __FUNC_D4C_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.EscortWaypointGoalContainer)
	registerVal2.id = "EscortWaypointGoalContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Waypoint.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 600.000000, -600.000000)
	registerVal3:setTopBottom(true, true, 315.000000, -315.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Waypoint = registerVal3
	local function __FUNC_1060_(arg0)
		arg0.Waypoint:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1060_)
	if __FUNC_CC4_ then
		__FUNC_CC4_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.EscortWaypointGoalContainer.new = __FUNC_D4C_
