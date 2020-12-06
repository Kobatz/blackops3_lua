-- Decompiled with CoDLUIDecompiler by JariK

require("T6.HUD.gametypes.GametypeBase")
CoD.coop = {}
CoD.coop.FlagLeft = 15.000000
CoD.coop.FlagWidth = 32.000000
CoD.coop.FlagHeight = 32.000000
CoD.coop.FlagTop = 180.000000
CoD.coop.baseWaypointZOffset = 100.000000
CoD.coop.IconGroundZOffset = 32.000000
local registerVal1 = InheritFrom(CoD.ObjectiveWaypoint)
CoD.COOPObjectiveFlag = registerVal1
registerVal1 = InheritFrom(CoD.ObjectiveWaypoint)
CoD.COOPObjectiveIcon = registerVal1
function CoD.COOPObjectiveFlag.new(arg0, arg1)
	local registerVal2 = CoD.ObjectiveWaypoint.new(arg0, arg1, CoD.coop.baseWaypointZOffset)
	registerVal2:setClass(CoD.COOPObjectiveFlag)
	local registerVal3 = Engine.GetObjectiveName(arg0, arg1)
	registerVal2:registerEventHandler(("objective_update_" .. registerVal3), registerVal2.update)
	return registerVal2
end

function CoD.COOPObjectiveFlag.update(arg0, arg1)
	local registerVal4 = Engine.ObjectiveGetTeamUsingCount(arg1.controller, arg0.index)
	local registerVal5 = Engine.GetObjectiveEntity(arg1.controller, arg0.index)
	if registerVal5 then
		arg0.zOffset = arg0.PlayerZOffset
	else
		arg0.zOffset = CoD.coop.baseWaypointZOffset
	end
	local registerVal9 = arg0:isOwnedByMyTeam(arg1.controller)
	if registerVal9 then
		arg0.arrowImage:setImage(RegisterMaterial(CoD.ObjectiveWaypoint.ArrowMaterialNameGreen))
	else
		arg0.arrowImage:setImage(RegisterMaterial(CoD.ObjectiveWaypoint.ArrowMaterialNameRed))
	end
	arg0.mainImage:setImage(RegisterMaterial("waypoint_grab_red"))
	registerVal9 = Engine.GetPredictedClientNum(arg1.controller)
	if registerVal5 == registerVal9 then
		arg0:setCarryIcon(RegisterMaterial("hud_ctf_flag_icon_green"))
	else
		arg0:setCarryIcon(nil)
	end
	arg0:setPing(nil)
	CoD.COOPObjectiveFlag.super.update(arg0, arg1)
	local registerVal10 = arg0.alphaController:getParent()
	if registerVal10 then
		CoD.GametypeBase.SetCompassObjectiveIcon(arg1.controller, arg0.index, "waypoint_grab_red", ("white_" .. "waypoint_grab"))
		if arg0.ping ~= true then
		end
		Engine.SetObjectiveIgnoreEntity(arg1.controller, arg0.index, CoD.GametypeBase.mapIconType, true)
	else
		CoD.GametypeBase.ClearCompassObjectiveIcon(arg1.controller, arg0.index)
	end
end

function CoD.COOPObjectiveIcon.new(arg0, arg1)
	local registerVal2 = CoD.ObjectiveWaypoint.new(arg0, arg1, CoD.coop.IconGroundZOffset)
	registerVal2:setClass(CoD.COOPObjectiveIcon)
	registerVal2:setEntityContainerClamp(false)
	local registerVal3 = Engine.GetObjectiveName(arg0, arg1)
	registerVal2:registerEventHandler(("objective_update_" .. registerVal3), registerVal2.update)
	return registerVal2
end

function CoD.COOPObjectiveIcon.update(arg0, arg1)
	local registerVal4 = Engine.GetObjectiveEntity(arg1.controller, arg0.index)
	if registerVal4 then
		arg0.zOffset = arg0.PlayerZOffset
	else
		arg0.zOffset = CoD.coop.IconGroundZOffset
	end
	CoD.COOPObjectiveIcon.super.update(arg0, arg1)
	local registerVal5 = arg0:shouldShow(arg1)
	local registerVal6 = CoD.COOPObjectiveIcon.shouldShowToCaster(arg0, arg1)
	if registerVal5 then
		if registerVal4 then
			arg0.arrowImage:setImage(RegisterMaterial(CoD.ObjectiveWaypoint.ArrowMaterialNameGreen))
		else
			arg0.arrowImage:setImage(RegisterMaterial(CoD.ObjectiveWaypoint.ArrowMaterialNameYellow))
		end
		arg0.mainImage:setImage(RegisterMaterial("waypoint_kill"))
	end
	if registerVal5 == true or registerVal6 == true then
		CoD.GametypeBase.SetCompassObjectiveIcon(arg1.controller, arg0.index, "waypoint_kill", "white_waypoint_bomb")
	else
		CoD.GametypeBase.ClearCompassObjectiveIcon(arg1.controller, arg0.index)
	end
	local registerVal8 = Engine.GetPredictedClientNum(arg1.controller)
	if registerVal4 == registerVal8 then
		arg0:setCarryIcon(RegisterMaterial("hud_ctf_flag_icon_white"))
	else
		arg0:setCarryIcon(nil)
	end
end

function CoD.COOPObjectiveIcon.shouldShowToCaster(arg0, arg1)
	local registerVal4 = Engine.GetObjectiveState(arg1.controller, arg0.index)
	if registerVal4 ~= CoD.OBJECTIVESTATE_ACTIVE then
		return false
	end
	local registerVal5 = Engine.IsShoutcaster(arg1.controller)
	if registerVal5 then
		return true
	end
	return false
end

local function __FUNC_149D_(arg0)
	arg0.gametype_coop_objective_layer:setAlpha(0.000000)
	local registerVal2 = CoD.SplitscreenScaler.new(nil, CoD.SplitscreenMultiplier)
	registerVal2:setLeftRight(true, false, 0.000000, 0.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 0.000000)
	arg0.gametype_coop_objective_layer:addElement(registerVal2)
	local registerVal3 = Engine.IsSplitscreen()
	if registerVal3 then
		CoD.coop.FlagLeft = 10.000000
		CoD.coop.FlagTop = 135.000000
	end
	arg0.gametype_coop_objective_layer.objectiveTypes._a = CoD.ObjectiveBombSite
	arg0.gametype_coop_objective_layer.objectiveTypes.defuse_a = CoD.ObjectiveDefuseSite
	arg0.gametype_coop_objective_layer.objectiveTypes.allies_flag = CoD.COOPObjectiveFlag
	arg0.gametype_coop_objective_layer.objectiveTypes.axis_flag = CoD.COOPObjectiveFlag
	arg0.gametype_coop_objective_layer.objectiveTypes.no_offscreen = CoD.COOPObjectiveIcon
	registerVal3 = LUI.UIElement.new()
	registerVal3:setLeftRight(true, false, CoD.coop.FlagLeft, (CoD.coop.FlagLeft + CoD.coop.FlagWidth))
	registerVal3:setTopBottom(true, false, CoD.coop.FlagTop, (CoD.coop.FlagTop + CoD.coop.FlagHeight))
	registerVal2:addElement(registerVal3)
	local registerVal4 = LUI.UIElement.new()
	registerVal4:setLeftRight(true, false, CoD.coop.FlagLeft, (CoD.coop.FlagLeft + CoD.coop.FlagWidth))
	registerVal4:setTopBottom(true, false, (CoD.coop.FlagTop + CoD.coop.FlagHeight), (CoD.coop.FlagTop + (2.000000 * CoD.coop.FlagHeight)))
	registerVal2:addElement(registerVal4)
end

local function __FUNC_1AB2_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("gametype_coop")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "gametype_coop.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal3 = CoD.GametypeBase.new("gametype_coop_objective_layer", arg0)
	registerVal1:addElement(registerVal3)
	registerVal1.gametype_coop_objective_layer = registerVal3
	local registerVal6 = {}
	registerVal6.name = "menu_loaded"
	registerVal6.controller = arg0
	registerVal1:processEvent(registerVal6)
	registerVal6 = {}
	registerVal6.name = "update_state"
	registerVal6.menu = registerVal1
	registerVal1:processEvent(registerVal6)
	local function __FUNC_1EC9_(arg1)
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "gametype_coop.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1EC9_)
	if __FUNC_149D_ then
		__FUNC_149D_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.gametype_coop = __FUNC_1AB2_
