-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MPHudWidgets.Waypoint")
local function __FUNC_239_(arg0, arg1, arg2)
	local registerVal5 = Engine.GetObjectiveEntity(arg1, arg2)
	local registerVal7 = arg0.Waypoint:isOwnedByMyTeam(arg1)
	if registerVal7 then
		registerVal7 = Engine.GetObjectiveGamemodeFlags(arg1, arg2)
		if registerVal7 == arg0.objectiveAtBase then
			{}.waypointType = arg0.waypoint_label_defend
			{}.imagename = arg0.waypoint_image_defend
			registerVal7 = CoD.GetColorSetFriendlyColor(arg1, arg0.Waypoint:getTeam(arg1))
			{}.imagecolor = registerVal7
		else
			if registerVal5 then
				{}.waypointType = arg0.waypoint_label_kill
				{}.imagename = arg0.waypoint_image_grab
				registerVal7 = CoD.GetColorSetEnemyColor(arg1, arg0.Waypoint:getTeam(arg1))
				{}.imagecolor = registerVal7
				registerVal7 = Engine.GetGametypeSetting("enemyCarrierVisible")
				if registerVal7 == 2.000000 then
				else
					{}.waypointType = arg0.waypoint_label_return
					{}.imagename = arg0.waypoint_image_defend
					registerVal7 = CoD.GetColorSetFriendlyColor(arg1, arg0.Waypoint:getTeam(arg1))
					{}.imagecolor = registerVal7
				else
					if registerVal5 then
						{}.waypointType = arg0.waypoint_label_escort
						{}.imagename = arg0.waypoint_image_defend
						registerVal7 = CoD.GetColorSetFriendlyColor(arg1, arg0.Waypoint:getTeam(arg1))
						{}.imagecolor = registerVal7
					else
						{}.waypointType = arg0.waypoint_label_grab
						{}.imagename = arg0.waypoint_image_grab
						registerVal7 = CoD.GetColorSetEnemyColor(arg1, arg0.Waypoint:getTeam(arg1))
						{}.imagecolor = registerVal7
					end
				end
			end
		end
	end
	arg0.Waypoint:setPing(true)
	return {}
end

local function __FUNC_6E5_(arg0, arg1)
	local registerVal5 = Engine.ObjectiveGetTeamUsingCount(arg1.controller, arg0.objId)
	local registerVal6 = Engine.GetObjectiveEntity(arg1.controller, arg0.objId)
	if registerVal6 then
		arg0.Waypoint.zOffset = arg0.waypoint_player_z_offset
	else
		arg0.Waypoint.zOffset = arg0.waypoint_base_z_offset
	end
	local registerVal7 = __FUNC_239_(arg0, arg1.controller, arg0.objId)
	arg0.Waypoint.WaypointCenter.waypointCenterImage:setImage(RegisterImage(registerVal7.imagename))
	if registerVal7.imagename and registerVal7.imagecolor then
		arg0.Waypoint.WaypointCenter.waypointCenterImage:setRGB(registerVal7.imagecolor.r, registerVal7.imagecolor.g, registerVal7.imagecolor.b)
	end
	if registerVal7.waypointType then
		arg0.Waypoint.WaypointText.text:setText(Engine.Localize(registerVal7.waypointType))
	end
	if arg0.visible == true then
		arg0:show()
		arg0.Waypoint:update(arg1)
		arg0.Waypoint:setCompassObjectiveIcon(arg1.controller, arg0.objId, (registerVal7.imagename .. "_mini"), registerVal7.imagecolor)
		if arg0.Waypoint.ping ~= true then
		end
		Engine.SetObjectiveIgnoreEntity(arg1.controller, arg0.objId, CoD.GametypeBase.mapIconType, true)
	else
		arg0:hide()
		arg0.Waypoint:clearCompassObjectiveIcon(arg1.controller, arg0.objId)
	end
end

local function __FUNC_C75_(arg0, arg1)
	if arg1.objId then
		arg0.objId = arg1.objId
		arg0.Waypoint.objective = arg0.objective
		arg0.Waypoint:setupWaypoint(arg1)
		local registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_label_grab")
		arg0.waypoint_label_grab = registerVal4
		registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_label_kill")
		arg0.waypoint_label_kill = registerVal4
		registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_label_escort")
		arg0.waypoint_label_escort = registerVal4
		registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_label_return")
		arg0.waypoint_label_return = registerVal4
		registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_label_defend")
		arg0.waypoint_label_defend = registerVal4
		registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_image_grab")
		arg0.waypoint_image_grab = registerVal4
		registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_image_defend")
		arg0.waypoint_image_defend = registerVal4
		registerVal4 = Engine.StructTableLookupNumber("objectives", "id", arg0.objective.id, "waypoint_player_z_offset")
		arg0.waypoint_player_z_offset = registerVal4
		registerVal4 = Engine.StructTableLookupNumber("objectives", "id", arg0.objective.id, "waypoint_z_offset")
		arg0.waypoint_base_z_offset = registerVal4
	end
end

local function __FUNC_1059_(arg0, arg1)
	local registerVal5 = arg0.Waypoint:isOwnedByMyTeam(arg1.controller)
	registerVal5 = Engine.GetObjectiveGamemodeFlags(arg1.controller, arg0.objId)
	registerVal5 = Engine.GetObjectiveEntity(arg1.controller, arg0.objId)
	registerVal5 = Engine.GetGametypeSetting("enemyCarrierVisible")
	if registerVal5 and registerVal5 ~= arg0.objectiveAtBase and registerVal5 and registerVal5 == 0.000000 then
		return false
	end
	return true
end

local function __FUNC_1234_(arg0)
	arg0.update = __FUNC_6E5_
	arg0.setupWaypointContainer = __FUNC_C75_
	arg0.shouldShow = __FUNC_1059_
	arg0.objectiveAtBase = 0.000000
	arg0.objectiveFlagAway = 1.000000
end

local registerVal6 = InheritFrom(LUI.UIElement)
CoD.CtfWaypointFlagContainer = registerVal6
local function __FUNC_1302_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CtfWaypointFlagContainer)
	registerVal2.id = "CtfWaypointFlagContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Waypoint.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 600.000000, -600.000000)
	registerVal3:setTopBottom(true, true, 315.000000, -315.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Waypoint = registerVal3
	local function __FUNC_1611_(arg0)
		arg0.Waypoint:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1611_)
	if __FUNC_1234_ then
		__FUNC_1234_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.CtfWaypointFlagContainer.new = __FUNC_1302_
