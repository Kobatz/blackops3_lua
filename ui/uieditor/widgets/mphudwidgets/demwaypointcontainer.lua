-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MPHudWidgets.Waypoint")
local function __FUNC_22D_(arg0, arg1, arg2)
	local registerVal3 = Engine.GetObjectiveTeam(arg1, arg2)
	local registerVal5 = Engine.GetObjectiveGamemodeFlags(arg1, arg2)
	if registerVal5 ~= arg0.bombPlanted then
	end
	local registerVal8 = Engine.GetModelForController(arg1)
	local registerVal7 = Engine.GetModel(registerVal8, "Demolition")
	registerVal8 = arg0.Waypoint:isOwnedByMyTeam(arg1)
	if registerVal8 then
		local registerVal9 = Engine.GetModel(registerVal7, "defending")
		Engine.SetModelValue(registerVal9, true)
		if true then
			{}.waypointType = arg0.waypoint_label_defuse
			{}.imagename = arg0.waypoint_image_defuse
			registerVal8 = CoD.GetColorSetEnemyColor(arg1, arg0.Waypoint:getTeam(arg1))
			{}.imagecolor = registerVal8
		else
			{}.waypointType = arg0.waypoint_label_defend
			{}.imagename = arg0.waypoint_image_defend
			registerVal8 = CoD.GetColorSetFriendlyColor(arg1, arg0.Waypoint:getTeam(arg1))
			{}.imagecolor = registerVal8
		else
			registerVal9 = Engine.GetModel(registerVal7, "defending")
			Engine.SetModelValue(registerVal9, false)
			if true then
				{}.waypointType = arg0.waypoint_label_defend
				{}.imagename = arg0.waypoint_image_defend
				registerVal8 = CoD.GetColorSetFriendlyColor(arg1, arg0.Waypoint:getTeam(arg1))
				{}.imagecolor = registerVal8
			else
				{}.waypointType = arg0.waypoint_label_target
				{}.imagename = arg0.waypoint_image_target
				registerVal8 = CoD.GetColorSetEnemyColor(arg1, arg0.Waypoint:getTeam(arg1))
				{}.imagecolor = registerVal8
			end
		end
	end
	return {}
end

local function __FUNC_6FA_(arg0, arg1)
	local registerVal5 = Engine.GetObjectiveName(arg1.controller, arg0.objId)
	if arg0.visible == true then
		arg0:setAlpha(1.000000)
		local registerVal8 = Engine.GetModelForController(arg1.controller)
		local registerVal7 = Engine.CreateModel(registerVal8, ("Demolition." .. registerVal5 .. "_visible"))
		Engine.SetModelValue(registerVal7, true)
	else
		arg0:setAlpha(0.000000)
		registerVal8 = Engine.GetModelForController(arg1.controller)
		registerVal7 = Engine.CreateModel(registerVal8, ("Demolition." .. registerVal5 .. "_visible"))
		Engine.SetModelValue(registerVal7, false)
		return 
	end
	arg0.Waypoint:update(arg1)
	if not registerVal5 then
		return 
	end
	local registerVal6 = __FUNC_22D_(arg0, arg1.controller, arg0.objId)
	arg0.Waypoint.WaypointCenter.waypointCenterImage:setImage(RegisterImage(registerVal6.imagename))
	if registerVal6.imagename and registerVal6.imagecolor then
		arg0.Waypoint.WaypointCenter.waypointCenterImage:setRGB(registerVal6.imagecolor.r, registerVal6.imagecolor.g, registerVal6.imagecolor.b)
	end
	if registerVal6.waypointType then
		arg0.Waypoint.WaypointText.text:setText(Engine.Localize(registerVal6.waypointType))
	end
	arg0.Waypoint:setCompassObjectiveIcon(arg1.controller, arg0.objId, (registerVal6.imagename .. "_mini"), registerVal6.imagecolor)
end

local function __FUNC_C0B_(arg0, arg1)
	if arg1.objId then
		arg0.objId = arg1.objId
		arg0.Waypoint.objective = arg0.objective
		arg0.Waypoint:setupWaypoint(arg1)
		local registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_label_target")
		arg0.waypoint_label_target = registerVal4
		registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_label_defuse")
		arg0.waypoint_label_defuse = registerVal4
		registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_label_defend")
		arg0.waypoint_label_defend = registerVal4
		registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_image_defuse")
		arg0.waypoint_image_defuse = registerVal4
		registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_image_target")
		arg0.waypoint_image_target = registerVal4
		registerVal4 = Engine.StructTableLookupString("objectives", "id", arg0.objective.id, "waypoint_image_defend")
		arg0.waypoint_image_defend = registerVal4
	end
end

local function __FUNC_EDE_(arg0)
	arg0.update = __FUNC_6FA_
	arg0.setupWaypointContainer = __FUNC_C0B_
	arg0.bombPlanted = 1.000000
end

local registerVal5 = InheritFrom(LUI.UIElement)
CoD.DemWaypointContainer = registerVal5
local function __FUNC_F66_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.DemWaypointContainer)
	registerVal2.id = "DemWaypointContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Waypoint.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 600.000000, -600.000000)
	registerVal3:setTopBottom(true, true, 315.000000, -315.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Waypoint = registerVal3
	local function __FUNC_1271_(arg0)
		arg0.Waypoint:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1271_)
	if __FUNC_EDE_ then
		__FUNC_EDE_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.DemWaypointContainer.new = __FUNC_F66_
