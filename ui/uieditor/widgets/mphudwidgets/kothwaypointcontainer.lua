-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MPHudWidgets.Waypoint")
local function __FUNC_22E_(arg0, arg1, arg2)
	local registerVal4 = Engine.ObjectiveGetTeamUsingCount(arg1, arg2)
	local registerVal5 = Engine.GetObjectiveTeam(arg1, arg2)
	if 1.000000 >= registerVal4 then
	end
	{}.contested = true
	local registerVal7 = CoD.IsShoutcaster(arg1)
	local registerVal9 = Engine.GetModelForController(arg1)
	local registerVal8 = Engine.CreateModel(registerVal9, "Hardpoint")
	registerVal9 = Engine.GetModel(registerVal8, "state")
	local registerVal10 = Engine.GetModel(registerVal8, "objId")
	local registerVal11 = Engine.GetModel(registerVal8, "team")
	local registerVal12 = Engine.GetModelValue(registerVal10)
	if registerVal12 ~= arg2 then
		Engine.SetModelValue(registerVal10, arg2)
	end
	registerVal12 = Engine.GetModelValue(registerVal11)
	if registerVal12 ~= registerVal5 then
		Engine.SetModelValue(registerVal11, registerVal5)
	end
	if registerVal5 == Enum.team_t.TEAM_FREE or registerVal5 == Enum.team_t.TEAM_NEUTRAL then
		{}.waypointType = arg0.waypoint_label_capture
		{}.imagename = arg0.waypoint_image_neutral
		{}.imagecolor = ColorSet.WaypointNeutral
		if {}.contested then
			Engine.SetModelValue(registerVal9, "contested")
		else
			Engine.SetModelValue(registerVal9, "neutral")
		else
			registerVal12 = arg0.Waypoint:isOwnedByMyTeam(arg1)
			if registerVal12 then
				{}.imagename = arg0.waypoint_image_defend
				registerVal12 = CoD.GetColorSetFriendlyColor(arg1, arg0.Waypoint:getTeam(arg1))
				{}.imagecolor = registerVal12
				if {}.contested then
					{}.waypointType = arg0.waypoint_label_contested
					{}.imagecolor = ColorSet.WaypointNeutral
					Engine.SetModelValue(registerVal9, "contested")
				else
					{}.waypointType = arg0.waypoint_label_defend
					if registerVal7 then
						Engine.SetModelValue(registerVal9, "anyteam")
					else
						Engine.SetModelValue(registerVal9, "friendly")
					else
						{}.imagename = arg0.waypoint_image_capture
						registerVal12 = CoD.GetColorSetEnemyColor(arg1, arg0.Waypoint:getTeam(arg1))
						{}.imagecolor = registerVal12
						if {}.contested then
							{}.waypointType = arg0.waypoint_label_contested
							{}.imagecolor = ColorSet.WaypointNeutral
							Engine.SetModelValue(registerVal9, "contested")
						else
							{}.waypointType = arg0.waypoint_label_capture
							if registerVal7 then
								Engine.SetModelValue(registerVal9, "anyteam")
							else
								Engine.SetModelValue(registerVal9, "enemy")
							end
						end
					end
				end
			end
		end
	end
	return {}
end

local function __FUNC_9E8_(arg0, arg1)
	if arg0.visible == true then
		arg0:show()
	else
		arg0:hide()
		return 
	end
	arg0.Waypoint:update(arg1)
	local registerVal5 = Engine.GetObjectiveState(arg1.controller, arg0.objId)
	if registerVal5 ~= CoD.OBJECTIVESTATE_ACTIVE then
		return 
	end
	local registerVal6 = __FUNC_22E_(arg0, arg1.controller, arg0.objId)
	arg0.Waypoint.WaypointCenter.waypointCenterImage:setImage(RegisterImage(registerVal6.imagename))
	if registerVal6.imagename and registerVal6.imagecolor then
		arg0.Waypoint.WaypointCenter.waypointCenterImage:setRGB(registerVal6.imagecolor.r, registerVal6.imagecolor.g, registerVal6.imagecolor.b)
	end
	if registerVal6.waypointType then
		arg0.Waypoint.WaypointText.text:setText(Engine.Localize(registerVal6.waypointType))
	end
	local registerVal7 = CoD.IsShoutcaster(arg1.controller)
	if registerVal7 and registerVal6.contested then
		arg0.Waypoint:setCompassObjectiveIcon(arg1.controller, arg0.objId, "t7_hud_waypoints_contested_koth", registerVal6.imagecolor)
	else
		arg0.Waypoint:setCompassObjectiveIcon(arg1.controller, arg0.objId, (registerVal6.imagename .. "_mini"), registerVal6.imagecolor)
	end
end

local function __FUNC_EC5_(arg0, arg1)
	if arg1.objId then
		arg0.objId = arg1.objId
		arg0.Waypoint.objective = arg0.objective
		arg0.Waypoint:setupWaypoint(arg1)
		local registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_label_capture")
		arg0.waypoint_label_capture = registerVal4
		registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_label_contested")
		arg0.waypoint_label_contested = registerVal4
		registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_label_capturing")
		arg0.waypoint_label_capturing = registerVal4
		registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_label_defend")
		arg0.waypoint_label_defend = registerVal4
		registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_image_neutral")
		arg0.waypoint_image_neutral = registerVal4
		registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_image_capture")
		arg0.waypoint_image_capture = registerVal4
		registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_image_defend")
		arg0.waypoint_image_defend = registerVal4
	end
end

local function __FUNC_11EA_(arg0)
	arg0.update = __FUNC_9E8_
	arg0.setupWaypointContainer = __FUNC_EC5_
end

local registerVal5 = InheritFrom(LUI.UIElement)
CoD.KothWaypointContainer = registerVal5
local function __FUNC_1254_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.KothWaypointContainer)
	registerVal2.id = "KothWaypointContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Waypoint.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 600.000000, -600.000000)
	registerVal3:setTopBottom(true, true, 315.000000, -315.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Waypoint = registerVal3
	local function __FUNC_1562_(arg0)
		arg0.Waypoint:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1562_)
	if __FUNC_11EA_ then
		__FUNC_11EA_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.KothWaypointContainer.new = __FUNC_1254_
