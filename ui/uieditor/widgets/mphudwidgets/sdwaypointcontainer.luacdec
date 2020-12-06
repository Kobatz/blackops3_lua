-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MPHudWidgets.Waypoint")
local function __FUNC_25C_(arg0, arg1)
	local registerVal2 = CoD.IsShoutcaster(arg1)
	if registerVal2 then
		return true
	end
	local registerVal3 = arg0.Waypoint:isOwnedByMyTeam(arg1)
	if not registerVal3 then
		return false
	end
	return true
end

local function __FUNC_32F_(arg0, arg1, arg2)
	local registerVal3 = Engine.GetObjectiveTeam(arg1, arg2)
	local registerVal5 = Engine.GetObjectiveGamemodeFlags(arg1, arg2)
	if registerVal5 ~= arg0.bombPlanted then
	end
	{}.team = registerVal3
	local registerVal7 = arg0.Waypoint:isOwnedByMyTeam(arg1)
	if registerVal7 then
		{}.ownedByMyTeam = true
		if true then
			{}.waypointType = arg0.waypoint_label_defuse
			{}.imagename = arg0.waypoint_image_defuse
			registerVal7 = CoD.GetColorSetEnemyColor(arg1, arg0.Waypoint:getTeam(arg1))
			{}.imagecolor = registerVal7
		else
			{}.waypointType = arg0.waypoint_label_defend
			{}.imagename = arg0.waypoint_image_defend
			registerVal7 = CoD.GetColorSetFriendlyColor(arg1, arg0.Waypoint:getTeam(arg1))
			{}.imagecolor = registerVal7
		else
			{}.ownedByMyTeam = false
			if true then
				{}.waypointType = arg0.waypoint_label_defend
				{}.imagename = arg0.waypoint_image_defend
				registerVal7 = CoD.GetColorSetFriendlyColor(arg1, arg0.Waypoint:getTeam(arg1))
				{}.imagecolor = registerVal7
			else
				{}.waypointType = arg0.waypoint_label_target
				{}.imagename = arg0.waypoint_image_target
				registerVal7 = CoD.GetColorSetEnemyColor(arg1, arg0.Waypoint:getTeam(arg1))
				{}.imagecolor = registerVal7
			end
		end
	end
	return {}
end

local function __FUNC_728_(arg0, arg1, arg2)
	local registerVal3 = Engine.GetObjectiveTeam(arg1, arg2)
	local registerVal5 = Engine.GetObjectiveGamemodeFlags(arg1, arg2)
	if registerVal5 ~= arg0.bombPlanted then
	end
	local registerVal6 = Engine.GetGametypeSetting("multiBomb")
	if registerVal6 ~= 1.000000 then
	end
	local registerVal8 = __FUNC_25C_(arg0, arg1)
	local registerVal9 = Engine.GetObjectiveEntity(arg1, arg2)
	if registerVal8 then
		if registerVal9 then
			{}.waypointType = arg0.waypoint_label_defend
			local registerVal10 = arg0.Waypoint:isOwnedByMyTeam(arg1)
			if not registerVal10 then
				{}.waypointType = arg0.waypoint_label_bomb
			end
			{}.imagename = arg0.waypoint_image_defend
			registerVal10 = CoD.GetColorSetFriendlyColor(arg1, arg0.Waypoint:getTeam(arg1))
			{}.imagecolor = registerVal10
		else
			{}.waypointType = arg0.waypoint_label_bomb
			{}.imagename = arg0.waypoint_image_bomb
			registerVal10 = CoD.GetColorBlindColorForPlayer(arg1, "PlayerYellow")
			{}.imagecolor = registerVal10
		end
	end
	return {}
end

local function __FUNC_ADD_(arg0, arg1)
	if arg0.visible == true then
		arg0:show()
		return true
	else
		arg0:hide()
		arg0.Waypoint:clearCompassObjectiveIcon(arg1.controller, arg0.objId)
		return false
	end
end

local function __FUNC_BF3_(arg0, arg1)
	local registerVal2 = __FUNC_ADD_(arg0, arg1)
	if registerVal2 == false then
		return 
	end
	arg0.Waypoint:update(arg1)
	local registerVal5 = Engine.GetObjectiveName(arg1.controller, arg0.objId)
	if not registerVal5 then
		return 
	end
	local registerVal6 = __FUNC_32F_(arg0, arg1.controller, arg0.objId)
	local registerVal7 = CoD.IsShoutcaster(arg1.controller)
	if registerVal7 then
		if registerVal6.team == Enum.team_t.TEAM_AXIS then
			registerVal6.ownedByMyTeam = true
		else
			registerVal6.ownedByMyTeam = false
		end
	end
	local registerVal8 = Engine.GetModelForController(arg1.controller)
	registerVal7 = Engine.CreateModel(registerVal8, "SearchAndDestroy")
	local registerVal9 = Engine.GetModel(registerVal7, "defending")
	Engine.SetModelValue(registerVal9, registerVal6.ownedByMyTeam)
	arg0.Waypoint.WaypointCenter.waypointCenterImage:setImage(RegisterImage(registerVal6.imagename))
	if registerVal6.imagename and registerVal6.imagecolor then
		arg0.Waypoint.WaypointCenter.waypointCenterImage:setRGB(registerVal6.imagecolor.r, registerVal6.imagecolor.g, registerVal6.imagecolor.b)
	end
	if registerVal6.waypointType then
		arg0.Waypoint.WaypointText.text:setText(Engine.Localize(registerVal6.waypointType))
	end
	arg0.Waypoint:setCompassObjectiveIcon(arg1.controller, arg0.objId, (registerVal6.imagename .. "_mini"), registerVal6.imagecolor)
end

local function __FUNC_1172_(arg0, arg1)
	local registerVal2 = __FUNC_ADD_(arg0, arg1)
	if registerVal2 == false then
		return 
	end
	local registerVal5 = Engine.GetObjectiveEntity(arg1.controller, arg0.objId)
	if registerVal5 then
		arg0.Waypoint.zOffset = arg0.waypoint_player_z_offset
	else
		arg0.Waypoint.zOffset = arg0.waypoint_z_offset
	end
	local registerVal6 = __FUNC_728_(arg0, arg1.controller, arg0.objId)
	local registerVal7 = __FUNC_25C_(arg0, arg1.controller)
	if registerVal7 == true then
		if registerVal6.imagename then
			arg0.Waypoint.WaypointCenter.waypointCenterImage:setImage(RegisterImage(registerVal6.imagename))
			arg0.Waypoint:setCompassObjectiveIcon(arg1.controller, arg0.objId, (registerVal6.imagename .. "_mini"), registerVal6.imagecolor)
		end
		if registerVal6.imagecolor then
			arg0.Waypoint.WaypointCenter.waypointCenterImage:setRGB(registerVal6.imagecolor.r, registerVal6.imagecolor.g, registerVal6.imagecolor.b)
		end
		if registerVal6.waypointType then
			arg0.Waypoint.WaypointText.text:setText(Engine.Localize(registerVal6.waypointType))
		end
		arg0.Waypoint:update(arg1)
	else
		arg0:hide()
		arg0.Waypoint:clearCompassObjectiveIcon(arg1.controller, arg0.objId)
	end
end

local function __FUNC_15FB_(arg0, arg1)
	local registerVal2 = Engine.GetObjectiveName(arg1.controller, arg0.objId)
	if registerVal2 == "sd_bomb" then
		__FUNC_1172_(arg0, arg1)
	else
		__FUNC_BF3_(arg0, arg1)
	end
end

local function __FUNC_16DA_(arg0, arg1)
	if arg1.objId then
		arg0.objId = arg1.objId
		arg0.Waypoint.objective = arg0.objective
		arg0.Waypoint:setupWaypoint(arg1)
		local registerVal3 = Engine.GetObjectiveName(arg1.controller, arg0.objId)
		if registerVal3 == "sd_bomb" then
			local registerVal4 = Engine.StructTableLookupString("objectives", "id", registerVal3, "waypoint_label_bomb")
			arg0.waypoint_label_bomb = registerVal4
			registerVal4 = Engine.StructTableLookupString("objectives", "id", registerVal3, "waypoint_label_defend")
			arg0.waypoint_label_defend = registerVal4
			registerVal4 = Engine.StructTableLookupString("objectives", "id", registerVal3, "waypoint_image_bomb")
			arg0.waypoint_image_bomb = registerVal4
			registerVal4 = Engine.StructTableLookupString("objectives", "id", registerVal3, "waypoint_image_defend")
			arg0.waypoint_image_defend = registerVal4
			registerVal4 = Engine.StructTableLookupNumber("objectives", "id", registerVal3, "waypoint_player_z_offset")
			arg0.waypoint_player_z_offset = registerVal4
			registerVal4 = Engine.StructTableLookupNumber("objectives", "id", registerVal3, "waypoint_z_offset")
			arg0.waypoint_z_offset = registerVal4
		else
			registerVal4 = Engine.StructTableLookupString("objectives", "id", registerVal3, "waypoint_label_target")
			arg0.waypoint_label_target = registerVal4
			registerVal4 = Engine.StructTableLookupString("objectives", "id", registerVal3, "waypoint_label_defuse")
			arg0.waypoint_label_defuse = registerVal4
			registerVal4 = Engine.StructTableLookupString("objectives", "id", registerVal3, "waypoint_label_defend")
			arg0.waypoint_label_defend = registerVal4
			registerVal4 = Engine.StructTableLookupString("objectives", "id", registerVal3, "waypoint_image_defuse")
			arg0.waypoint_image_defuse = registerVal4
			registerVal4 = Engine.StructTableLookupString("objectives", "id", registerVal3, "waypoint_image_target")
			arg0.waypoint_image_target = registerVal4
			registerVal4 = Engine.StructTableLookupString("objectives", "id", registerVal3, "waypoint_image_defend")
			arg0.waypoint_image_defend = registerVal4
		end
	end
end

local function __FUNC_1B95_(arg0)
	arg0.update = __FUNC_15FB_
	arg0.setupWaypointContainer = __FUNC_16DA_
	arg0.bombPlanted = 1.000000
end

local registerVal10 = InheritFrom(LUI.UIElement)
CoD.SDWaypointContainer = registerVal10
local function __FUNC_1C1E_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SDWaypointContainer)
	registerVal2.id = "SDWaypointContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Waypoint.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 600.000000, -600.000000)
	registerVal3:setTopBottom(true, true, 315.000000, -315.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Waypoint = registerVal3
	local function __FUNC_1F28_(arg0)
		arg0.Waypoint:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1F28_)
	if __FUNC_1B95_ then
		__FUNC_1B95_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.SDWaypointContainer.new = __FUNC_1C1E_
