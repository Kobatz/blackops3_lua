-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MPHudWidgets.Waypoint")
local function __FUNC_22D_(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = Engine.GetGametypeSetting("flagCanBeNeutralized")
	local registerVal6 = Engine.GetObjectiveTeam(arg1, arg2)
	if registerVal6 == Enum.team_t.TEAM_FREE then
		{}.waypointType = arg0.waypoint_label_capture
		if arg0.Waypoint.waypoint_image_default ~= nil then
			{}.imagename = arg0.Waypoint.waypoint_image_default
		else
			{}.imagename = "t7_hud_waypoints_neutral_new"
		else
			if registerVal6 == Enum.team_t.TEAM_NEUTRAL then
				{}.imagename = arg0.waypoint_image_neutral
				{}.imagecolor = CoD.white
				if arg4 then
					{}.waypointType = arg0.waypoint_label_contested
				else
					if arg3 then
						{}.waypointType = arg0.waypoint_label_capturing
					else
						if arg4 then
							{}.waypointType = arg0.waypoint_label_losing
						else
							{}.waypointType = arg0.waypoint_label_capture
						else
							local registerVal10 = arg0.Waypoint:isOwnedByMyTeam(arg1)
							if registerVal10 then
								{}.imagename = arg0.waypoint_image_defend
								registerVal10 = CoD.GetColorSetFriendlyColor(arg1, arg0.Waypoint:getTeam(arg1))
								{}.imagecolor = registerVal10
								{}.waypointType = arg0.waypoint_label_defend
								if arg4 then
									{}.waypointType = arg0.waypoint_label_contested
								else
									{}.waypointType = arg0.waypoint_label_losing
									registerVal10 = arg0.Waypoint:isOwnedByMyTeam(arg1)
									if arg4 and not registerVal10 then
										{}.imagename = arg0.waypoint_image_capture
										registerVal10 = CoD.GetColorSetEnemyColor(arg1, arg0.Waypoint:getTeam(arg1))
										{}.imagecolor = registerVal10
										{}.waypointType = arg0.waypoint_label_capture
										if arg4 then
											{}.waypointType = arg0.waypoint_label_contested
										else
											if arg3 and registerVal5 == 1.000000 then
												{}.waypointType = arg0.waypoint_label_neutralizing
											else
												if arg3 then
													{}.waypointType = arg0.waypoint_label_capturing
												end
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
	return {}
end

local function __FUNC_7FB_(arg0, arg1)
	if arg0.visible == true then
		arg0:setAlpha(1.000000)
	else
		arg0:setAlpha(0.000000)
		return 
	end
	arg0.Waypoint:update(arg1)
	local registerVal5 = Engine.GetObjectiveName(arg1.controller, arg0.objId)
	if not registerVal5 then
		return 
	end
	local registerVal6 = Engine.GetPredictedClientNum(arg1.controller)
	local registerVal7 = Engine.GetTeamID(arg1.controller, registerVal6)
	local registerVal8 = Engine.ObjectiveIsTeamUsing(arg1.controller, arg0.objId, registerVal7)
	local registerVal9 = Engine.ObjectiveIsAnyOtherTeamUsing(arg1.controller, arg0.objId, registerVal7)
	local registerVal10 = __FUNC_22D_(arg0, arg1.controller, arg0.objId, registerVal8, registerVal9)
	arg0.Waypoint.WaypointCenter.waypointCenterImage:setImage(RegisterImage(registerVal10.imagename))
	if registerVal10.imagename and registerVal10.imagecolor then
		arg0.Waypoint.WaypointCenter.waypointCenterImage:setRGB(registerVal10.imagecolor.r, registerVal10.imagecolor.g, registerVal10.imagecolor.b)
	end
	if registerVal10.waypointType then
		arg0.Waypoint.WaypointText.text:setText(Engine.Localize(registerVal10.waypointType))
	end
	arg0.Waypoint:setCompassObjectiveIcon(arg1.controller, arg0.objId, (registerVal10.imagename .. "_mini"), registerVal10.imagecolor)
end

local function __FUNC_CE3_(arg0, arg1)
	if arg1.objId then
		arg0.objId = arg1.objId
		arg0.Waypoint.objective = arg0.objective
		arg0.Waypoint:setupWaypoint(arg1)
		arg0.Waypoint.snapToCenterForObjectiveTeam = false
		local registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_label_capture")
		arg0.waypoint_label_capture = registerVal4
		registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_label_contested")
		arg0.waypoint_label_contested = registerVal4
		registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_label_capturing")
		arg0.waypoint_label_capturing = registerVal4
		registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_label_neutralizing")
		arg0.waypoint_label_neutralizing = registerVal4
		registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_label_losing")
		arg0.waypoint_label_losing = registerVal4
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

local function __FUNC_10C6_(arg0)
	arg0.update = __FUNC_7FB_
	arg0.setupWaypointContainer = __FUNC_CE3_
end

local registerVal5 = InheritFrom(LUI.UIElement)
CoD.DomWaypointContainer = registerVal5
local function __FUNC_1130_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.DomWaypointContainer)
	registerVal2.id = "DomWaypointContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Waypoint.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 600.000000, -600.000000)
	registerVal3:setTopBottom(true, true, 315.000000, -315.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Waypoint = registerVal3
	local function __FUNC_143D_(arg0)
		arg0.Waypoint:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_143D_)
	if __FUNC_10C6_ then
		__FUNC_10C6_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.DomWaypointContainer.new = __FUNC_1130_
