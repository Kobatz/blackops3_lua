-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CodCaster.CodCasterWaypoint")
local function __FUNC_236_(arg0, arg1, arg2)
	local registerVal3 = Engine.GetGametypeSetting("flagCanBeNeutralized")
	local registerVal4 = Engine.GetObjectiveTeam(arg1, arg2)
	local registerVal5 = Engine.ObjectiveIsTeamUsing(arg1, arg2, Enum.team_t.TEAM_ALLIES)
	local registerVal6 = Engine.ObjectiveIsAnyOtherTeamUsing(arg1, arg2, Enum.team_t.TEAM_ALLIES)
	if registerVal4 == Enum.team_t.TEAM_FREE then
		{}.waypointType = arg0.waypoint_label_capture
		{}.imagename = "t7_hud_waypoints_neutral_new"
	else
		if registerVal4 == Enum.team_t.TEAM_NEUTRAL then
			{}.imagename = arg0.waypoint_image_neutral
			{}.imagecolor = CoD.white
			if registerVal6 then
				{}.waypointType = arg0.waypoint_label_contested
			else
				if not arg1 or registerVal6 then
					{}.waypointType = arg0.waypoint_label_capturing
				else
					{}.waypointType = arg0.waypoint_label_capture
				else
					if registerVal4 == Enum.team_t.TEAM_ALLIES then
						{}.imagename = arg0.waypoint_image_defend
						local registerVal9 = CoD.GetColorFromFormattedColorString(CoD.GetTeamFactionColor(registerVal4))
						{}.imagecolor = registerVal9
						{}.waypointType = arg0.waypoint_label_defend
						if registerVal6 then
							{}.waypointType = arg0.waypoint_label_contested
						else
							{}.waypointType = arg0.waypoint_label_capturing
							if registerVal6 and registerVal4 == Enum.team_t.TEAM_AXIS then
								{}.imagename = arg0.waypoint_image_capture
								registerVal9 = CoD.GetColorFromFormattedColorString(CoD.GetTeamFactionColor(registerVal4))
								{}.imagecolor = registerVal9
								{}.waypointType = arg0.waypoint_label_capture
								if registerVal6 then
									{}.waypointType = arg0.waypoint_label_contested
								else
									if registerVal5 and registerVal3 == 1.000000 then
										{}.waypointType = arg0.waypoint_label_neutralizing
									else
										if registerVal5 then
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
	return {}
end

local function __FUNC_851_(arg0, arg1)
	if arg0.visible == true then
		arg0:setAlpha(1.000000)
	else
		arg0:setAlpha(0.000000)
		return 
	end
	arg0:updateProgress(arg1.controller, arg0.objId)
	local registerVal4 = Engine.GetObjectiveName(arg1.controller, arg0.objId)
	if not registerVal4 then
		return 
	end
	local registerVal5 = __FUNC_236_(arg0, arg1.controller, arg0.objId)
	arg0.WaypointCenter.waypointCenterImage:setImage(RegisterImage(registerVal5.imagename))
	if registerVal5.imagename and registerVal5.imagecolor then
		arg0.WaypointCenter.waypointCenterImage:setRGB(registerVal5.imagecolor.r, registerVal5.imagecolor.g, registerVal5.imagecolor.b)
	end
end

local function __FUNC_B22_(arg0, arg1)
	if not arg1.objId then
		return 
	end
	local registerVal4 = Engine.GetObjectiveName(arg1.controller, arg1.objId)
	local registerVal5 = CoD.GetCachedObjective(registerVal4)
	local registerVal7 = Engine.GetModelForController(arg1.controller)
	local registerVal6 = Engine.GetModel(registerVal7, ("objective" .. arg1.objId))
	if registerVal4 == "dom_a" then
	else
		if registerVal4 == "dom_b" then
		else
			if registerVal4 == "dom_c" then
			else
				return 
			end
		end
	end
	arg0.C.objective = registerVal5
	arg0.C.objId = arg1.objId
	arg0.C:setModel(registerVal6)
	arg0.C.update = __FUNC_851_
	arg0.C.visible = true
	arg0.C.pulse = false
	if arg0.C.objective.pulse_waypoint ~= nil then
		if arg0.C.objective.pulse_waypoint ~= "enable" then
		end
		arg0.C.pulse = true
	end
	local registerVal9 = Engine.StructTableLookupString("objectives", "id", arg0.C.objective.id, "waypoint_label_capture")
	arg0.C.waypoint_label_capture = registerVal9
	registerVal9 = Engine.StructTableLookupString("objectives", "id", arg0.C.objective.id, "waypoint_label_contested")
	arg0.C.waypoint_label_contested = registerVal9
	registerVal9 = Engine.StructTableLookupString("objectives", "id", arg0.C.objective.id, "waypoint_label_capturing")
	arg0.C.waypoint_label_capturing = registerVal9
	registerVal9 = Engine.StructTableLookupString("objectives", "id", arg0.C.objective.id, "waypoint_label_neutralizing")
	arg0.C.waypoint_label_neutralizing = registerVal9
	registerVal9 = Engine.StructTableLookupString("objectives", "id", arg0.C.objective.id, "waypoint_label_defend")
	arg0.C.waypoint_label_defend = registerVal9
	registerVal9 = Engine.StructTableLookupString("objectives", "id", arg0.C.objective.id, "waypoint_image_neutral")
	arg0.C.waypoint_image_neutral = registerVal9
	registerVal9 = Engine.StructTableLookupString("objectives", "id", arg0.C.objective.id, "waypoint_image_capture")
	arg0.C.waypoint_image_capture = registerVal9
	registerVal9 = Engine.StructTableLookupString("objectives", "id", arg0.C.objective.id, "waypoint_image_defend")
	arg0.C.waypoint_image_defend = registerVal9
	registerVal9 = Engine.GetModel(registerVal6, "updateTime")
	if registerVal9 ~= nil then
		local function __FUNC_118B_(arg0)
			local registerVal3 = {}
			registerVal3.controller = arg1.controller
			arg0.C:update(registerVal3)
		end

		arg0.C:subscribeToModel(registerVal9, __FUNC_118B_)
	end
	local registerVal13 = Engine.GetModelForController(arg1.controller)
	local registerVal12 = Engine.GetModel(registerVal13, "CodCaster.profileSettingsUpdated")
	local function __FUNC_11F0_(arg0)
		local registerVal3 = {}
		registerVal3.controller = arg1.controller
		arg0.C:update(registerVal3)
	end

	arg0.C:subscribeToModel(registerVal12, __FUNC_11F0_)
end

local function __FUNC_1258_(arg0, arg1)
	arg0.A:setAlpha(0.000000)
	arg0.B:setAlpha(0.000000)
	arg0.C:setAlpha(0.000000)
	arg0.create = __FUNC_B22_
end

local registerVal5 = InheritFrom(LUI.UIElement)
CoD.CodCasterDomFlagsWidget = registerVal5
local function __FUNC_131C_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CodCasterDomFlagsWidget)
	registerVal2.id = "CodCasterDomFlagsWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 103.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.CodCasterWaypoint.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -47.000000, -17.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.A = registerVal3
	local registerVal4 = CoD.CodCasterWaypoint.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -14.000000, 16.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.B = registerVal4
	local registerVal5 = CoD.CodCasterWaypoint.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, 18.000000, 48.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.C = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_184C_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_184C_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_18AE_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_18AE_
	registerVal6.CTF = registerVal7
	registerVal7 = {}
	local function __FUNC_190E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_190E_
	registerVal6.SDorSRorDem = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "CTF"
	local function __FUNC_196E_(arg0, arg1, arg2)
		return IsGameTypeEqualToString("ctf")
	end

	registerVal9.condition = __FUNC_196E_
	local registerVal10 = {}
	registerVal10.stateName = "SDorSRorDem"
	local function __FUNC_19D6_(arg0, arg1, arg2)
		return IsBombBasedGameMode()
	end

	registerVal10.condition = __FUNC_19D6_
	registerVal8 = {registerVal9, registerVal10}
	registerVal2:mergeStateConditions(registerVal8)
	local function __FUNC_1A29_(arg0)
		arg0.A:close()
		arg0.B:close()
		arg0.C:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1A29_)
	if __FUNC_1258_ then
		__FUNC_1258_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.CodCasterDomFlagsWidget.new = __FUNC_131C_
