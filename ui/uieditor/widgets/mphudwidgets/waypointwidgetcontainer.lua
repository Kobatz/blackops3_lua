-- Decompiled with CoDLUIDecompiler by JariK

if not CoD.isCampaign and not CoD.isZombie then
	require("ui.uieditor.widgets.MPHudWidgets.DomWaypointContainer")
	require("ui.uieditor.widgets.MPHudWidgets.KothWaypointContainer")
	require("ui.uieditor.widgets.MPHudWidgets.BallWaypointBallContainer")
	require("ui.uieditor.widgets.MPHudWidgets.BallWaypointGoalContainer")
	require("ui.uieditor.widgets.MPHudWidgets.CleanWaypointCarryContainer")
	require("ui.uieditor.widgets.MPHudWidgets.CleanWaypointDepositContainer")
	require("ui.uieditor.widgets.MPHudWidgets.CtfWaypointFlagContainer")
	require("ui.uieditor.widgets.MPHudWidgets.CtfWaypointBaseContainer")
	require("ui.uieditor.widgets.MPHudWidgets.DemWaypointContainer")
	require("ui.uieditor.widgets.MPHudWidgets.EscortWaypointGoalContainer")
	require("ui.uieditor.widgets.MPHudWidgets.EscortWaypointRobotContainer")
	require("ui.uieditor.widgets.MPHudWidgets.SDWaypointContainer")
end
if not CoD.isZombie then
	require("ui.uieditor.widgets.HUD.Waypoint.GenericWaypointContainer")
end
local function __FUNC_673_(arg0, arg1)
	local registerVal4 = Engine.GetObjectiveState(arg1.controller, arg0.gameTypeContainer.objId)
	if registerVal4 ~= CoD.OBJECTIVESTATE_ACTIVE and registerVal4 ~= CoD.OBJECTIVESTATE_CURRENT and registerVal4 ~= CoD.OBJECTIVESTATE_DONE then
		return false
	end
	local registerVal5 = Engine.GetObjectiveEntity(arg1.controller, arg0.gameTypeContainer.objId)
	local registerVal6 = CoD.IsShoutcaster(arg1.controller)
	registerVal6 = Engine.GetPredictedClientNum(arg1.controller)
	if not registerVal6 and registerVal5 == registerVal6 then
		return false
	end
	registerVal6 = CoD.IsShoutcaster(arg1.controller)
	registerVal6 = CoD.ShoutcasterProfileVarBool(arg1.controller, "shoutcaster_waypoint_markers")
	if registerVal6 and registerVal6 == false then
		return false
	end
	if arg0.gameTypeContainer.shouldShow ~= nil then
		return arg0.gameTypeContainer:shouldShow(arg1)
	end
	return true
end

local function __FUNC_9A4_(arg0, arg1)
	local registerVal2 = __FUNC_673_(arg0, arg1)
	if not registerVal2 then
		arg0.gameTypeContainer.visible = false
	else
		arg0.gameTypeContainer.visible = true
	end
	arg0.gameTypeContainer:update(arg1)
end

local function __FUNC_A64_(arg0, arg1)
	if arg0.objective.gametype == nil then
	end
	if "" == "dom" then
		local registerVal5 = CoD.DomWaypointContainer.new(arg0.menu, arg1.controller)
		registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
		arg0:addElement(registerVal5)
		arg0.gameTypeContainer = registerVal5
	else
		if "" == "koth" then
			registerVal5 = CoD.KothWaypointContainer.new(arg0.menu, arg1.controller)
			registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
			registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
			arg0:addElement(registerVal5)
			arg0.gameTypeContainer = registerVal5
		else
			if "" == "dem" then
				registerVal5 = CoD.DemWaypointContainer.new(arg0.menu, arg1.controller)
				registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
				registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
				arg0:addElement(registerVal5)
				arg0.gameTypeContainer = registerVal5
			else
				if "" == "clean" then
					if arg0.objective.id == "clean_deposit" then
						local registerVal6 = CoD.CleanWaypointDepositContainer.new(arg0.menu, arg1.controller)
					else
						if arg0.objective.id == "clean_carry" then
							registerVal6 = CoD.CleanWaypointCarryContainer.new(arg0.menu, arg1.controller)
						end
					end
					if registerVal6 ~= nil then
						registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
						registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
						arg0:addElement(registerVal6)
						arg0.gameTypeContainer = registerVal6
					else
						if "" == "ctf" then
							if arg0.objective.id == "axis_flag" or arg0.objective.id == "allies_flag" then
								registerVal6 = CoD.CtfWaypointFlagContainer.new(arg0.menu, arg1.controller)
							else
								if arg0.objective.id == "axis_base" or arg0.objective.id == "allies_base" then
									registerVal6 = CoD.CtfWaypointBaseContainer.new(arg0.menu, arg1.controller)
								end
							end
							if registerVal6 ~= nil then
								registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
								registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
								arg0:addElement(registerVal6)
								arg0.gameTypeContainer = registerVal6
							else
								if "" == "ball" then
									if arg0.objective.id == "ball_ball" then
										registerVal6 = CoD.BallWaypointBallContainer.new(arg0.menu, arg1.controller)
									else
										if arg0.objective.id == "ball_goal_allies" or arg0.objective.id == "ball_goal_axis" then
											registerVal6 = CoD.BallWaypointGoalContainer.new(arg0.menu, arg1.controller)
										end
									end
									if registerVal6 ~= nil then
										registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
										registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
										arg0:addElement(registerVal6)
										arg0.gameTypeContainer = registerVal6
									else
										if "" == "escort" then
											if arg0.objective.id == "escort_goal" then
												registerVal6 = CoD.EscortWaypointGoalContainer.new(arg0.menu, arg1.controller)
											else
												if arg0.objective.id == "escort_robot" then
													registerVal6 = CoD.EscortWaypointRobotContainer.new(arg0.menu, arg1.controller)
												end
											end
											if registerVal6 ~= nil then
												registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
												registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
												arg0:addElement(registerVal6)
												arg0.gameTypeContainer = registerVal6
											else
												if "" == "sd" or "" == "sr" then
													registerVal5 = CoD.SDWaypointContainer.new(arg1.controller)
													registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
													registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
													arg0:addElement(registerVal5)
													arg0.gameTypeContainer = registerVal5
												else
													if arg0.objective.id ~= nil then
													else
													end
													registerVal6 = ({}[arg0.objective.id] or arg0.menu).new(arg0.menu, arg1.controller)
													registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
													registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
													arg0:addElement(registerVal6)
													arg0.gameTypeContainer = registerVal6
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
	arg0.gameTypeContainer.objective = arg0.objective
	arg0.gameTypeContainer:setupWaypointContainer(arg1)
end

local function __FUNC_1509_(arg0, arg1)
	local registerVal3 = CoD.IsShoutcaster(arg1.controller)
	registerVal3 = CoD.ShoutcasterProfileVarBool(arg1.controller, "shoutcaster_waypoint_markers")
	if registerVal3 and registerVal3 == false then
		arg0:setAlpha(0.000000)
	else
		arg0:setAlpha(1.000000)
	end
end

local function __FUNC_163F_(arg0, arg1, arg2)
	arg0.update = __FUNC_9A4_
	arg0.setupWaypoint = __FUNC_A64_
	arg0.menu = arg2
	arg0:registerEventHandler("visibility_update", __FUNC_1509_)
end

local registerVal7 = InheritFrom(LUI.UIElement)
CoD.WaypointWidgetContainer = registerVal7
local function __FUNC_16FA_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.WaypointWidgetContainer)
	registerVal2.id = "WaypointWidgetContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	if __FUNC_163F_ then
		__FUNC_163F_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.WaypointWidgetContainer.new = __FUNC_16FA_
