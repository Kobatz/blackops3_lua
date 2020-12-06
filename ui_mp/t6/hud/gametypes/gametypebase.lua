-- Decompiled with CoDLUIDecompiler by JariK

require("ui_mp.T6.HUD.ObjectiveWaypoint")
local registerVal1 = InheritFrom(CoD.Menu)
CoD.GametypeBase = registerVal1
CoD.GametypeBase.CarryIconSize = 64.000000
CoD.GametypeBase.CarryIconRightOffset = -20.000000
CoD.GametypeBase.CarryIconBottomOffset = -150.000000
CoD.GametypeBase.maxObjectives = 32.000000
CoD.GametypeBase.mapIconType = 0.000000
CoD.GametypeBase.GametypeInfoLeftOffset = 13.000000
CoD.GametypeBase.GametypeInfoTopOffset = 185.000000
CoD.GametypeBase.shoutcasterMapIconType = 1.000000
CoD.CarepackageObjective = {}
registerVal1 = InheritFrom(CoD.ObjectiveWaypoint)
CoD.ObjectiveRemoteMortar = registerVal1
registerVal1 = InheritFrom(CoD.ObjectiveWaypoint)
CoD.ObjectiveBomb = registerVal1
CoD.ObjectiveBomb.GroundZOffset = 32.000000
registerVal1 = InheritFrom(CoD.ObjectiveWaypoint)
CoD.ObjectiveBombSite = registerVal1
CoD.ObjectiveBombSite.BombSiteZOffset = 64.000000
CoD.ObjectiveBombSite.OBJECTIVE_FLAG_PLANTED = 1.000000
CoD.ObjectiveBombSite.disablePulse = true
registerVal1 = InheritFrom(CoD.ObjectiveWaypoint)
CoD.ObjectiveDefuseSite = registerVal1
CoD.ObjectiveDefuseSite.DefuseSiteZOffset = 32.000000
CoD.ObjectiveDefuseSite.disablePulse = true
local function __FUNC_959_(arg0, arg1)
	local function __FUNC_E3E_(arg2)
		local registerVal3 = {}
		registerVal3.controller = arg1
		CoD.GametypeBase.updateVisibility(arg0, registerVal3)
	end

	local registerVal3 = Engine.GetModelForController(arg1)
	local registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED))
	arg0:subscribeToModel(registerVal6, __FUNC_E3E_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE))
	arg0:subscribeToModel(registerVal6, __FUNC_E3E_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM))
	arg0:subscribeToModel(registerVal6, __FUNC_E3E_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE))
	arg0:subscribeToModel(registerVal6, __FUNC_E3E_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE))
	arg0:subscribeToModel(registerVal6, __FUNC_E3E_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN))
	arg0:subscribeToModel(registerVal6, __FUNC_E3E_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM))
	arg0:subscribeToModel(registerVal6, __FUNC_E3E_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN))
	arg0:subscribeToModel(registerVal6, __FUNC_E3E_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE))
	arg0:subscribeToModel(registerVal6, __FUNC_E3E_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC))
	arg0:subscribeToModel(registerVal6, __FUNC_E3E_)
end

local function __FUNC_EE9_(arg0, arg1)
	local registerVal2 = CoD.Menu.NewSafeAreaFromState(arg0, arg1)
	registerVal2:setClass(CoD.GametypeBase)
	registerVal2:setAlpha(0.000000)
	local registerVal3 = {}
	registerVal3.bomb = CoD.ObjectiveBomb
	registerVal3.carepackage = CoD.CarepackageObjective
	registerVal3.remotemortar = CoD.ObjectiveRemoteMortar
	registerVal2.objectiveTypes = registerVal3
	registerVal2.objectives = {}
	__FUNC_959_(registerVal2, arg1)
	return registerVal2
end

CoD.GametypeBase.new = __FUNC_EE9_
function CoD.GametypeBase.NewObjectiveEvent(arg0, arg1)
	local registerVal2 = arg0:createObjectiveIfNeeded(arg1, arg1.objId)
	if registerVal2 then
		registerVal2:update(arg1)
	end
end

function CoD.GametypeBase.createObjectiveIfNeeded(arg0, arg1, arg2)
	local registerVal3 = Engine.GetObjectiveName(arg1.controller, arg2)
	if registerVal3 and arg0.objectiveTypes[registerVal3] then
		if not arg0.objectives[arg2] then
			local registerVal5 = arg0.objectiveTypes[registerVal3].new(arg1.controller, arg2)
			arg0:addElement(registerVal5)
			arg0.objectives[arg2] = registerVal5
		end
		return registerVal5
	end
end

function CoD.GametypeBase.SetCompassObjectiveIcon(arg0, arg1, arg2, arg3)
	if arg2 then
		Engine.SetObjectiveIcon(arg0, arg1, CoD.GametypeBase.mapIconType, arg2)
	else
		Engine.ClearObjectiveIcon(arg0, arg1, CoD.GametypeBase.mapIconType)
	end
	Engine.SetObjectiveIcon(arg0, arg1, CoD.GametypeBase.shoutcasterMapIconType, arg3)
end

function CoD.GametypeBase.ClearCompassObjectiveIcon(arg0, arg1)
	Engine.ClearObjectiveIcon(arg0, arg1, CoD.GametypeBase.mapIconType)
	Engine.ClearObjectiveIcon(arg0, arg1, CoD.GametypeBase.shoutcasterMapIconType)
end

function CoD.GametypeBase.setCarryIcon(arg0, arg1)
	if arg1 then
		if not arg0.carryIcon then
			local registerVal2 = CoD.SplitscreenScaler.new(nil, CoD.SplitscreenMultiplier)
			arg0.carryIconScaleContainer = registerVal2
			arg0.carryIconScaleContainer:setLeftRight(false, true, 0.000000, 0.000000)
			arg0.carryIconScaleContainer:setTopBottom(false, true, 0.000000, 0.000000)
			arg0:addElement(arg0.carryIconScaleContainer)
			registerVal2 = LUI.UIImage.new()
			arg0.carryIcon = registerVal2
			arg0.carryIcon:setLeftRight(false, true, (CoD.GametypeBase.CarryIconRightOffset - CoD.GametypeBase.CarryIconSize), CoD.GametypeBase.CarryIconRightOffset)
			arg0.carryIcon:setTopBottom(false, true, (CoD.GametypeBase.CarryIconBottomOffset - CoD.GametypeBase.CarryIconSize), CoD.GametypeBase.CarryIconBottomOffset)
			arg0.carryIconScaleContainer:addElement(arg0.carryIcon)
		end
		arg0.carryIcon:setImage(arg1)
	else
		if arg0.carryIcon then
			arg0.carryIcon:close()
			arg0.carryIcon = nil
			arg0.carryIconScaleContainer:close()
			arg0.carryIconScaleContainer = nil
		end
	end
end

function CoD.GametypeBase.SetCarryIconEvent(arg0, arg1)
	arg0:setCarryIcon(arg1.material)
end

function CoD.GametypeBase.updateVisibility(arg0, arg1)
	local registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_GAME_ENDED)
	registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_HUD_VISIBLE)
	registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_IN_KILLCAM)
	registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
	registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
	registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_IN_VEHICLE)
	registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
	registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN)
	registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE)
	registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC)
	if not registerVal3 and registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
		arg0:setAlpha(1.000000)
		arg0.visible = true
		if arg0.visible ~= true and arg0.visible == true then
			arg0:setAlpha(0.000000)
			arg0.visible = nil
		end
	end
end

CoD.GametypeBase:registerEventHandler("objective_new", CoD.GametypeBase.NewObjectiveEvent)
CoD.GametypeBase:registerEventHandler("set_carry_icon", CoD.GametypeBase.SetCarryIconEvent)
function CoD.ObjectiveBomb.new(arg0, arg1)
	local registerVal2 = CoD.ObjectiveWaypoint.new(arg0, arg1, CoD.ObjectiveBomb.GroundZOffset)
	registerVal2:setClass(CoD.ObjectiveBomb)
	local registerVal3 = Engine.GetObjectiveName(arg0, arg1)
	registerVal2:registerEventHandler(("objective_update_" .. registerVal3), registerVal2.update)
	return registerVal2
end

function CoD.ObjectiveBomb.update(arg0, arg1)
	local registerVal4 = Engine.GetObjectiveEntity(arg1.controller, arg0.index)
	if registerVal4 then
		arg0.zOffset = arg0.PlayerZOffset
	else
		arg0.zOffset = arg0.GroundZOffset
	end
	CoD.ObjectiveBomb.super.update(arg0, arg1)
	local registerVal5 = arg0:shouldShow(arg1)
	local registerVal6 = CoD.ObjectiveBomb.shouldShowToCaster(arg0, arg1)
	if registerVal5 then
		if registerVal4 then
			arg0.arrowImage:setImage(RegisterMaterial(CoD.ObjectiveWaypoint.ArrowMaterialNameGreen))
		else
			arg0.arrowImage:setImage(RegisterMaterial(CoD.ObjectiveWaypoint.ArrowMaterialNameYellow))
		end
		arg0.mainImage:setImage(RegisterMaterial("waypoint_bomb"))
	end
	if registerVal5 == true or registerVal6 == true then
		CoD.GametypeBase.SetCompassObjectiveIcon(arg1.controller, arg0.index, "waypoint_bomb", "white_waypoint_bomb")
	else
		CoD.GametypeBase.ClearCompassObjectiveIcon(arg1.controller, arg0.index)
	end
	local registerVal8 = Engine.GetPredictedClientNum(arg1.controller)
	if registerVal4 == registerVal8 then
		arg0:setCarryIcon(RegisterMaterial("hud_suitcase_bomb"))
	else
		arg0:setCarryIcon(nil)
	end
end

function CoD.ObjectiveBomb.shouldShow(arg0, arg1)
	local registerVal2 = CoD.ObjectiveBomb.super.shouldShow(arg0, arg1)
	if not registerVal2 then
		return false
	end
	local registerVal4 = arg0:isOwnedByMyTeam(arg1.controller)
	if not registerVal4 then
		return false
	end
	return true
end

function CoD.ObjectiveBomb.shouldShowToCaster(arg0, arg1)
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

function CoD.ObjectiveBombSite.new(arg0, arg1)
	local registerVal2 = CoD.ObjectiveWaypoint.new(arg0, arg1, CoD.ObjectiveBombSite.BombSiteZOffset)
	registerVal2:setClass(CoD.ObjectiveBombSite)
	local registerVal3 = Engine.GetObjectiveName(arg0, arg1)
	registerVal2:registerEventHandler(("objective_update_" .. registerVal3), registerVal2.update)
	return registerVal2
end

function CoD.ObjectiveBombSite.update(arg0, arg1)
	CoD.ObjectiveBombSite.super.update(arg0, arg1)
	local registerVal4 = Engine.GetObjectiveName(arg1.controller, arg0.index)
	if not registerVal4 then
		return 
	end
	local registerVal5 = string.sub(registerVal4, -2.000000)
	local registerVal6 = Engine.GetObjectiveGamemodeFlags(arg1.controller, arg0.index)
	if registerVal6 ~= CoD.ObjectiveBombSite.OBJECTIVE_FLAG_PLANTED then
	end
	local registerVal7 = Engine.GetGametypeSetting("multiBomb")
	if registerVal7 ~= 1.000000 then
	end
	local registerVal9 = arg0:isOwnedByMyTeam(arg1.controller)
	if registerVal9 then
		if true then
			arg0.arrowImage:setImage(RegisterMaterial(CoD.ObjectiveWaypoint.ArrowMaterialNameRed))
		else
			arg0.arrowImage:setImage(RegisterMaterial(CoD.ObjectiveWaypoint.ArrowMaterialNameGreen))
		end
		if true then
			arg0:setCarryIcon(nil)
		else
			if true then
				arg0.arrowImage:setImage(RegisterMaterial(CoD.ObjectiveWaypoint.ArrowMaterialNameGreen))
			else
				arg0.arrowImage:setImage(RegisterMaterial(CoD.ObjectiveWaypoint.ArrowMaterialNameRed))
			end
			if true then
				arg0:setCarryIcon(RegisterMaterial("hud_suitcase_bomb"))
			end
		end
	end
	arg0.mainImage:setImage(RegisterMaterial(("waypoint_target" .. registerVal5)))
	CoD.GametypeBase.SetCompassObjectiveIcon(arg1.controller, arg0.index, ("waypoint_target" .. registerVal5), ("white_" .. ("waypoint_target" .. registerVal5)))
end

function CoD.ObjectiveDefuseSite.new(arg0, arg1)
	local registerVal2 = CoD.ObjectiveWaypoint.new(arg0, arg1, CoD.ObjectiveDefuseSite.DefuseSiteZOffset)
	registerVal2:setClass(CoD.ObjectiveDefuseSite)
	local registerVal3 = Engine.GetObjectiveName(arg0, arg1)
	registerVal2:registerEventHandler(("objective_update_" .. registerVal3), registerVal2.update)
	return registerVal2
end

CoD.ObjectiveDefuseSite.update = CoD.ObjectiveBombSite.update
function CoD.CarepackageObjective.new(arg0, arg1)
end

function CoD.ObjectiveRemoteMortar.new(arg0, arg1)
	local registerVal2 = CoD.ObjectiveWaypoint.new(arg0, arg1, 0.000000)
	registerVal2:setClass(CoD.ObjectiveRemoteMortar)
	registerVal2.arrowImage:close()
	return registerVal2
end

function CoD.ObjectiveRemoteMortar.update(arg0, arg1)
	Engine.SetObjectiveRotateWithEntity(arg1.controller, arg0.index, CoD.GametypeBase.mapIconType, true)
	Engine.SetObjectiveColorMaterialInCode(arg1.controller, arg0.index, CoD.GametypeBase.mapIconType, true)
	CoD.GametypeBase.SetCompassObjectiveIcon(arg1.controller, arg0.index, "compass_lodestar", "compass_lodestar")
end

