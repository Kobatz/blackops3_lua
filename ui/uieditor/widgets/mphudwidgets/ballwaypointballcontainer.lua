-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MPHudWidgets.Waypoint")
local function __FUNC_242_(arg0, arg1, arg2)
	local registerVal5 = Engine.GetObjectiveEntity(arg1, arg2)
	local registerVal6 = Dvar.com_maxclients:get()
	if registerVal5 >= registerVal6 then
	end
	local registerVal7 = Engine.GetObjectiveGamemodeFlags(arg1, arg2)
	if registerVal7 == arg0.objectiveUpload then
		{}.waypointType = arg0.waypoint_label_upload
		{}.imagename = arg0.waypoint_image_upload
		{}.imagecolor = CoD.white
	else
		if registerVal7 == arg0.objectiveDownload then
			{}.waypointType = arg0.waypoint_label_download
			{}.imagename = arg0.waypoint_image_download
			{}.imagecolor = CoD.white
		else
			if true == true then
				local registerVal8 = arg0.Waypoint:isOwnedByMyTeam(arg1)
				if registerVal8 then
					{}.waypointType = arg0.waypoint_label_escort
					{}.imagename = arg0.waypoint_image_escort
					registerVal8 = CoD.GetColorSetFriendlyColor(arg1, arg0.Waypoint:getTeam(arg1))
					{}.imagecolor = registerVal8
				else
					{}.waypointType = arg0.waypoint_label_kill
					{}.imagename = arg0.waypoint_image_kill
					registerVal8 = CoD.GetColorSetEnemyColor(arg1, arg0.Waypoint:getTeam(arg1))
					{}.imagecolor = registerVal8
					registerVal8 = Engine.GetGametypeSetting("enemyCarrierVisible")
					if registerVal8 == 2.000000 then
					else
						{}.waypointType = arg0.waypoint_label_grab
						{}.imagename = arg0.waypoint_image_grab
						{}.imagecolor = CoD.white
					end
				end
			end
		end
	end
	if true == true then
		arg0.Waypoint.zOffset = arg0.waypoint_player_z_offset
	else
		arg0.Waypoint.zOffset = arg0.waypoint_base_z_offset
	end
	arg0.Waypoint:setPing(true)
	return {}
end

local function __FUNC_822_(arg0, arg1)
	local registerVal2 = Engine.GetObjectiveTeam(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal4 = Engine.CreateModel(registerVal3, "ballGametype")
	local registerVal5 = Engine.Localize("MPUI_BALL_HOME")
	if registerVal2 == Enum.team_t.TEAM_ALLIES or registerVal2 == Enum.team_t.TEAM_AXIS then
		local registerVal6 = Engine.GetObjectiveEntity(arg0, arg1)
		local registerVal7 = Engine.GetGamertagForClient(arg0, registerVal6)
	else
		registerVal6 = Engine.GetModelValue(Engine.CreateModel(registerVal4, "ballAway"))
		if registerVal6 == 1.000000 then
			registerVal7 = Engine.Localize("MPUI_BALL_AWAY")
		end
	end
	registerVal7 = Engine.CreateModel(registerVal4, "ballStatusText")
	Engine.SetModelValue(registerVal7, registerVal7)
	registerVal6 = CoD.IsShoutcaster(arg0)
	if registerVal6 then
		registerVal7 = Engine.CreateModel(registerVal4, "ballHeldByFriendly")
		if registerVal2 ~= Enum.team_t.TEAM_ALLIES then
		end
		Engine.SetModelValue(registerVal7, true)
		registerVal7 = Engine.CreateModel(registerVal4, "ballHeldByEnemy")
		if registerVal2 ~= Enum.team_t.TEAM_AXIS then
		end
		Engine.SetModelValue(registerVal7, true)
	else
		registerVal6 = CoD.GetTeamID(arg0)
		local registerVal8 = Engine.CreateModel(registerVal4, "ballHeldByFriendly")
		if registerVal2 ~= registerVal6 then
		end
		Engine.SetModelValue(registerVal8, true)
		registerVal8 = Engine.CreateModel(registerVal4, "ballHeldByEnemy")
		if registerVal2 == registerVal6 or registerVal2 == Enum.team_t.TEAM_NEUTRAL then
		end
		Engine.SetModelValue(registerVal8, true)
	end
end

local function __FUNC_D71_(arg0, arg1)
	local registerVal5 = Engine.ObjectiveGetTeamUsingCount(arg1.controller, arg0.objId)
	local registerVal6 = Engine.GetObjectiveEntity(arg1.controller, arg0.objId)
	local registerVal7 = __FUNC_242_(arg0, arg1.controller, arg0.objId)
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
	__FUNC_822_(arg1.controller, arg0.objId)
end

local function __FUNC_1292_(arg0, arg1)
	if arg1.objId then
		arg0.objId = arg1.objId
		arg0.Waypoint.objective = arg0.objective
		arg0.Waypoint:setupWaypoint(arg1)
		local registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_label_grab")
		arg0.waypoint_label_grab = registerVal4
		registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_label_escort")
		arg0.waypoint_label_escort = registerVal4
		registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_label_kill")
		arg0.waypoint_label_kill = registerVal4
		registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_label_upload")
		arg0.waypoint_label_upload = registerVal4
		registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_label_download")
		arg0.waypoint_label_download = registerVal4
		registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_image_grab")
		arg0.waypoint_image_grab = registerVal4
		registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_image_escort")
		arg0.waypoint_image_escort = registerVal4
		registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_image_kill")
		arg0.waypoint_image_kill = registerVal4
		registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_image_upload")
		arg0.waypoint_image_upload = registerVal4
		registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_image_download")
		arg0.waypoint_image_download = registerVal4
		registerVal4 = Engine.StructTableLookupNumber("objectives", "id", arg0.objective.id, "waypoint_player_z_offset")
		arg0.waypoint_player_z_offset = registerVal4
		registerVal4 = Engine.StructTableLookupNumber("objectives", "id", arg0.objective.id, "waypoint_z_offset")
		arg0.waypoint_base_z_offset = registerVal4
	end
end

local function __FUNC_174C_(arg0, arg1)
	local registerVal5 = arg0.Waypoint:isOwnedByMyTeam(arg1.controller)
	registerVal5 = Engine.GetObjectiveEntity(arg1.controller, arg0.objId)
	registerVal5 = Engine.GetGametypeSetting("enemyCarrierVisible")
	if registerVal5 and registerVal5 and registerVal5 == 0.000000 then
		return false
	end
	return true
end

local function __FUNC_18BC_(arg0)
	arg0.update = __FUNC_D71_
	arg0.setupWaypointContainer = __FUNC_1292_
	arg0.shouldShow = __FUNC_174C_
	arg0.objectiveNormal = 0.000000
	arg0.objectiveUpload = 1.000000
	arg0.objectiveDownload = 2.000000
end

local registerVal7 = InheritFrom(LUI.UIElement)
CoD.BallWaypointBallContainer = registerVal7
local function __FUNC_19AC_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BallWaypointBallContainer)
	registerVal2.id = "BallWaypointBallContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Waypoint.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 600.000000, -600.000000)
	registerVal3:setTopBottom(true, true, 315.000000, -315.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Waypoint = registerVal3
	local function __FUNC_1CBE_(arg0)
		arg0.Waypoint:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1CBE_)
	if __FUNC_18BC_ then
		__FUNC_18BC_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.BallWaypointBallContainer.new = __FUNC_19AC_
