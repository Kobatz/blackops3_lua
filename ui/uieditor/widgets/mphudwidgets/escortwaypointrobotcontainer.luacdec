-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MPHudWidgets.Waypoint")
local function __FUNC_245_(arg0, arg1, arg2)
	local registerVal5 = Engine.GetObjectiveGamemodeFlags(arg1, arg0.objId)
	{}.mapimagename = arg0.waypoint_image_map
	if registerVal5 == arg0.robotShutdown then
		local registerVal6 = CoD.GetColorBlindColorForPlayer(arg1, "PlayerYellow")
		{}.progresscolor = registerVal6
		{}.imagename = arg0.waypoint_image_shutdown
	else
		{}.progresscolor = CoD.white
		{}.imagename = arg0.waypoint_image
	end
	registerVal6 = arg0.Waypoint:isOwnedByMyTeam(arg1)
	if registerVal6 then
		registerVal6 = CoD.GetColorSetFriendlyColor(arg1, arg0.Waypoint:getTeam(arg1))
		{}.imagecolor = registerVal6
		{}.centerPulse = false
		if registerVal5 == arg0.robotShutdown then
			{}.waypointType = arg0.waypoint_text_shutdown
		else
			if arg0.Waypoint.playerUsing ~= nil and arg0.Waypoint.playerUsing == true then
				{}.waypointType = arg0.waypoint_text_escorting
				{}.centerPulse = true
			else
				{}.waypointType = arg0.waypoint_text
			else
				registerVal6 = CoD.GetColorSetEnemyColor(arg1, arg0.Waypoint:getTeam(arg1))
				{}.imagecolor = registerVal6
				if registerVal5 == arg0.robotShutdown then
					{}.waypointType = arg0.waypoint_text_shutdown
				else
					{}.waypointType = arg0.waypoint_text_enemy
				end
			end
		end
	end
	return {}
end

local function __FUNC_6E8_(arg0, arg1)
	arg0.Waypoint.zOffset = arg0.waypoint_z_offset
	local registerVal5 = __FUNC_245_(arg0, arg1.controller, arg0.objId)
	if registerVal5.progresscolor then
		arg0.Waypoint.progressMeter:setRGB(registerVal5.progresscolor.r, registerVal5.progresscolor.g, registerVal5.progresscolor.b)
	end
	arg0.Waypoint.WaypointCenter.waypointCenterImage:setImage(RegisterImage(registerVal5.imagename))
	if registerVal5.imagename and registerVal5.imagecolor then
		arg0.Waypoint.WaypointCenter.waypointCenterImage:setRGB(registerVal5.imagecolor.r, registerVal5.imagecolor.g, registerVal5.imagecolor.b)
	end
	if registerVal5.waypointType then
		arg0.Waypoint.WaypointText.text:setText(Engine.Localize(registerVal5.waypointType))
	end
	if registerVal5.centerPulse then
		arg0.Waypoint.WaypointCenter:setState("Pulsing")
	else
		arg0.Waypoint.WaypointCenter:setState("DefaultState")
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

local function __FUNC_CED_(arg0, arg1, arg2, arg3)
	local registerVal4 = Engine.GetObjectiveProgress(arg1, arg0.objId)
	arg0.progressMeter:setShaderVector(0.000000, registerVal4, 0.000000, 0.000000, 0.000000)
end

local function __FUNC_DD6_(arg0, arg1)
	if arg1.objId then
		arg0.objId = arg1.objId
		arg0.Waypoint.objective = arg0.objective
		arg0.Waypoint:setupWaypoint(arg1)
		arg0.Waypoint.snapToCenterWhenContested = false
		arg0.Waypoint.snapToCenterForOtherTeams = false
		arg0.Waypoint.updateProgress = __FUNC_CED_
		arg0.Waypoint.ProgressMeterFrame:setAlpha(1.000000)
		arg0.Waypoint.WaypointArrowContainer:setState("Progress")
		local registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_text")
		arg0.waypoint_text = registerVal4
		registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_text_enemy")
		arg0.waypoint_text_enemy = registerVal4
		registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_text_escorting")
		arg0.waypoint_text_escorting = registerVal4
		registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_text_shutdown")
		arg0.waypoint_text_shutdown = registerVal4
		registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_image")
		arg0.waypoint_image = registerVal4
		registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_image_map")
		arg0.waypoint_image_map = registerVal4
		registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_image_shutdown")
		arg0.waypoint_image_shutdown = registerVal4
		registerVal4 = Engine.StructTableLookupNumber("objectives", "id", arg0.objective.id, "waypoint_z_offset")
		arg0.waypoint_z_offset = registerVal4
	end
end

local function __FUNC_125D_(arg0, arg1)
	return true
end

local function __FUNC_1290_(arg0)
	arg0.update = __FUNC_6E8_
	arg0.setupWaypointContainer = __FUNC_DD6_
	arg0.shouldShow = __FUNC_125D_
	arg0.robotNone = 0.000000
	arg0.robotMoving = 1.000000
	arg0.robotShutdown = 2.000000
end

local registerVal7 = InheritFrom(LUI.UIElement)
CoD.EscortWaypointRobotContainer = registerVal7
local function __FUNC_1372_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.EscortWaypointRobotContainer)
	registerVal2.id = "EscortWaypointRobotContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Waypoint.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 600.000000, -600.000000)
	registerVal3:setTopBottom(true, true, 315.000000, -315.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Waypoint = registerVal3
	local function __FUNC_1685_(arg0)
		arg0.Waypoint:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1685_)
	if __FUNC_1290_ then
		__FUNC_1290_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.EscortWaypointRobotContainer.new = __FUNC_1372_
