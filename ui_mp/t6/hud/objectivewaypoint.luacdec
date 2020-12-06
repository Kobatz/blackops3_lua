-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ObjectiveWaypoint = registerVal1
CoD.ObjectiveWaypoint.PlayerZOffset = 75.000000
CoD.ObjectiveWaypoint.iconWidth = 56.000000
CoD.ObjectiveWaypoint.iconHeight = 56.000000
CoD.ObjectiveWaypoint.iconAlpha = 0.500000
CoD.ObjectiveWaypoint.largeIconWidth = 64.000000
CoD.ObjectiveWaypoint.largeIconHeight = 64.000000
CoD.ObjectiveWaypoint.progressWidth = (CoD.ObjectiveWaypoint.largeIconWidth + 4.000000)
CoD.ObjectiveWaypoint.progressHeight = (CoD.ObjectiveWaypoint.largeIconHeight + 4.000000)
CoD.ObjectiveWaypoint.progressHeightNudge = 0.000000
CoD.ObjectiveWaypoint.snapToHeight = 112.000000
CoD.ObjectiveWaypoint.snapToTime = 250.000000
CoD.ObjectiveWaypoint.pulseAlphaLow = (CoD.ObjectiveWaypoint.iconAlpha * 0.350000)
CoD.ObjectiveWaypoint.pulseAlphaHigh = CoD.ObjectiveWaypoint.iconAlpha
CoD.ObjectiveWaypoint.pulseTime = 700.000000
CoD.ObjectiveWaypoint.pulseStopTime = 200.000000
CoD.ObjectiveWaypoint.ArrowMaterialNameWhite = "waypoint_circle_arrow"
CoD.ObjectiveWaypoint.ArrowMaterialNameRed = "waypoint_circle_arrow_red"
CoD.ObjectiveWaypoint.ArrowMaterialNameGreen = "waypoint_circle_arrow_green"
CoD.ObjectiveWaypoint.ArrowMaterialNameYellow = "waypoint_circle_arrow_yellow"
CoD.ObjectiveWaypoint.contestedProgressColor = CoD.BOIIOrange
CoD.ObjectiveWaypoint.progressColor = CoD.white
local registerVal0 = {}
registerVal0.name = "set_carry_icon"
function CoD.ObjectiveWaypoint.new(arg0, arg1, arg2)
	local registerVal3 = Engine.GetObjectiveName(arg0, arg1)
	local registerVal4 = LUI.UIElement.new()
	registerVal4:setClass(CoD.ObjectiveWaypoint)
	registerVal4:setupEntityContainer(arg1)
	registerVal4:setEntityContainerClamp(true)
	registerVal4:setEntityContainerFadeWhenTargeted(true)
	registerVal4.index = arg1
	registerVal4.zOffset = arg2
	registerVal4.snapToTime = CoD.ObjectiveWaypoint.snapToTime
	registerVal4.snapToCenterForObjectiveTeam = true
	local registerVal5 = LUI.UIElement.new()
	registerVal5:setLeftRight(false, false, 0.000000, 0.000000)
	registerVal5:setTopBottom(false, false, 0.000000, 0.000000)
	registerVal5:setAlpha(0.000000)
	registerVal4:addElement(registerVal5)
	registerVal4.progressController = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6:setImage(RegisterMaterial("hud_objective_full_circle_meter"))
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.500000)
	registerVal6:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:addElement(registerVal6)
	registerVal4.progressBackground = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setupObjectiveProgress(arg1)
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal7:setImage(RegisterMaterial("hud_objective_circle_meter"))
	registerVal5:addElement(registerVal7)
	registerVal4.progressBar = registerVal7
	local registerVal8 = LUI.UIElement.new()
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal8:setAlpha(registerVal4.iconAlpha)
	local function __FUNC_1311_(arg0, arg1)
		if arg1.interrupted ~= true then
			arg0:beginAnimation("pulse_high", registerVal4.pulseTime, false, false)
			arg0:setAlpha(registerVal4.pulseAlphaHigh)
		end
	end

	registerVal8:registerEventHandler("transition_complete_pulse_low", __FUNC_1311_)
	local function __FUNC_140C_(arg0, arg1)
		if arg1.interrupted ~= true then
			arg0:beginAnimation("pulse_low", registerVal4.pulseTime, false, false)
			arg0:setAlpha(registerVal4.pulseAlphaLow)
		end
	end

	registerVal8:registerEventHandler("transition_complete_pulse_high", __FUNC_140C_)
	registerVal4:addElement(registerVal8)
	registerVal4.alphaController = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal8:addElement(registerVal9)
	registerVal4.mainImage = registerVal9
	local registerVal10 = LUI.UIElement.new()
	registerVal10:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal10:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal8:addElement(registerVal10)
	registerVal4.edgePointerContainer = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, false, -16.000000, 16.000000)
	registerVal11:setTopBottom(false, true, -10.000000, 22.000000)
	registerVal11:setImage(RegisterMaterial(CoD.ObjectiveWaypoint.ArrowMaterialNameWhite))
	registerVal10:addElement(registerVal11)
	registerVal4.arrowImage = registerVal11
	registerVal4.showingProgress = false
	registerVal4.updateProgress = CoD.ObjectiveWaypoint.updateProgress
	registerVal4.updatePlayerUsing = CoD.ObjectiveWaypoint.updatePlayerUsing
	return registerVal4
end

function CoD.ObjectiveWaypoint.Clamped(arg0, arg1)
	arg0.edgePointerContainer:setupEdgePointer(90.000000)
end

function CoD.ObjectiveWaypoint.Unclamped(arg0, arg1)
	arg0.edgePointerContainer:setupUIElement()
	arg0.edgePointerContainer:setZRot(0.000000)
end

function CoD.ObjectiveWaypoint.isOwnedByMyTeam(arg0, arg1)
	local registerVal2 = Engine.GetPredictedClientNum(arg1)
	local registerVal3 = Engine.GetTeamID(arg1, registerVal2)
	local registerVal4 = Engine.GetObjectiveTeam(arg1, arg0.index)
	if registerVal3 ~= registerVal4 then
		return false
	end
	return true
end

local function __FUNC_172F_(arg0, arg1)
	if arg1 ~= arg0.carryIconMaterial then
		arg0.carryIconMaterial = arg1
		registerVal0.material = arg1
		arg0:dispatchEventToParent(registerVal0)
	end
end

CoD.ObjectiveWaypoint.setCarryIcon = __FUNC_172F_
function CoD.ObjectiveWaypoint.shouldShow(arg0, arg1)
	local registerVal4 = Engine.GetObjectiveState(arg1.controller, arg0.index)
	if registerVal4 ~= CoD.OBJECTIVESTATE_ACTIVE then
		return false
	end
	local registerVal5 = Engine.GetObjectiveEntity(arg1.controller, arg0.index)
	local registerVal6 = Engine.GetPredictedClientNum(arg1.controller)
	if registerVal5 == registerVal6 then
		return false
	end
	registerVal6 = Engine.GetObjectiveTeam(arg1.controller, arg0.index)
	local registerVal7 = Engine.GetPredictedClientNum(arg1.controller)
	local registerVal8 = Engine.GetTeamID(arg1.controller, registerVal7)
	if registerVal6 ~= 0.000000 and registerVal8 ~= registerVal6 then
		return false
	end
	return true
end

function CoD.ObjectiveWaypoint.update(arg0, arg1)
	local registerVal5 = Engine.GetObjectiveEntity(arg1.controller, arg0.index)
	if registerVal5 and not arg0.ping then
		arg0:setupEntityContainer(arg0.index, 0.000000, 0.000000, arg0.zOffset)
	else
		local registerVal6, registerVal7, registerVal8 = Engine.GetObjectivePosition(arg1.controller, arg0.index)
		arg0:setupEntityContainer(arg0.index, registerVal6, registerVal7, (registerVal8 + arg0.zOffset))
		if arg0.ping then
			arg0.alphaController:setAlpha(arg0.iconAlpha)
			local registerVal9 = Engine.GetGametypeSetting("objectivePingTime")
			arg0.alphaController:beginAnimation("ping", ((registerVal9 * 1000.000000) + 1000.000000))
			arg0.alphaController:setAlpha(0.100000)
		end
	end
	registerVal6 = arg0:shouldShow(arg1)
	if not registerVal6 then
		arg0.progressController:close()
		arg0.alphaController:close()
		return 
	end
	arg0:addElement(arg0.progressController)
	arg0:addElement(arg0.alphaController)
	registerVal6 = Engine.GetPredictedClientNum(arg1.controller)
	registerVal7 = Engine.GetTeamID(arg1.controller, registerVal6)
	registerVal8 = Engine.ObjectiveIsTeamUsing(arg1.controller, arg0.index, registerVal7)
	registerVal9 = Engine.ObjectiveIsAnyOtherTeamUsing(arg1.controller, arg0.index, registerVal7)
	arg0:updatePlayerUsing(arg1.controller, registerVal8, registerVal9)
	arg0:updateProgress(arg1.controller, registerVal8, registerVal9)
end

function CoD.ObjectiveWaypoint.isPlayerUsing(arg0, arg1, arg2, arg3)
	local registerVal4 = Engine.IsPlayerInVehicle(arg1)
	if registerVal4 == true then
		return false
	end
	registerVal4 = Engine.IsPlayerRemoteControlling(arg1)
	if registerVal4 == true then
		return false
	end
	registerVal4 = Engine.IsPlayerWeaponViewOnlyLinked(arg1)
	if registerVal4 == true then
		return false
	end
	registerVal4 = Engine.GetPredictedClientNum(arg1)
	local registerVal6 = Engine.GetTeamID(arg1, registerVal4)
	local registerVal7 = Engine.GetObjectiveTeam(arg1, arg0.index)
	if arg0.snapToCenterForObjectiveTeam == false and not arg3 and registerVal6 == registerVal7 then
		return false
	end
	return Engine.ObjectiveIsPlayerUsing(arg1, arg0.index, registerVal4)
end

function CoD.ObjectiveWaypoint.updatePlayerUsing(arg0, arg1, arg2, arg3)
	local registerVal4 = CoD.ObjectiveWaypoint.isPlayerUsing(arg0, arg1, arg2, arg3)
	if arg0.playerUsing == registerVal4 then
		return 
	end
	if registerVal4 == true then
		if arg0.playerUsing ~= nil then
			arg0:beginAnimation("snap_in", arg0.snapToTime, true, true)
		end
		arg0:setEntityContainerStopUpdating(true)
		arg0:setLeftRight(false, false, (-arg0.largeIconWidth / 2.000000), (arg0.largeIconWidth / 2.000000))
		arg0:setTopBottom(false, false, (-arg0.largeIconHeight - arg0.snapToHeight), -arg0.snapToHeight)
		arg0.edgePointerContainer:setAlpha(0.000000)
	else
		if arg0.playerUsing ~= nil then
			arg0:beginAnimation("snap_out", arg0.snapToTime, true, true)
		end
		arg0:setEntityContainerStopUpdating(false)
		arg0:setLeftRight(false, false, (-arg0.iconWidth / 2.000000), (arg0.iconWidth / 2.000000))
		arg0:setTopBottom(false, true, -arg0.iconHeight, 0.000000)
		arg0.edgePointerContainer:setAlpha(1.000000)
	end
	arg0.playerUsing = registerVal4
end

function CoD.ObjectiveWaypoint.updateProgress(arg0, arg1, arg2, arg3)
	local registerVal4 = Engine.GetObjectiveProgress(arg1, arg0.index)
	if not arg0.showProgressToEveryone then
		if arg0.playerUsing == nil or arg0.playerUsing == false then
		end
	end
	if false and arg0.mayShowProgress then
		local registerVal7 = arg0:mayShowProgress(arg1)
	end
	if not arg3 and false then
	end
	if registerVal7 and not arg0.showProgressToEveryone then
		if arg3 then
			arg0.progressBar:setRGB(arg0.contestedProgressColor.r, arg0.contestedProgressColor.g, arg0.contestedProgressColor.b)
			arg0.progressBar:setupUIImage()
			arg0.progressBar:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		else
			arg0.progressBar:setRGB(arg0.progressColor.r, arg0.progressColor.g, arg0.progressColor.b)
			arg0.progressBar:setupObjectiveProgress(arg0.index)
		end
	end
	if arg0.showingProgress == false and registerVal7 == true then
		if 0.000000 < registerVal4 or arg3 then
			if arg0.showProgressToEveryone then
				if arg2 and arg3 then
					arg0.progressBar:setRGB(arg0.contestedProgressColor.r, arg0.contestedProgressColor.g, arg0.contestedProgressColor.b)
				else
					if arg2 then
						arg0.progressBar:setRGB(CoD.teamColorFriendly.r, CoD.teamColorFriendly.g, CoD.teamColorFriendly.b)
					else
						arg0.progressBar:setRGB(CoD.teamColorEnemy.r, CoD.teamColorEnemy.g, CoD.teamColorEnemy.b)
					end
				end
			end
			arg0.progressController:beginAnimation("progress", arg0.snapToTime, true, true)
			arg0.progressController:setLeftRight(false, false, (-CoD.ObjectiveWaypoint.progressWidth / 2.000000), (CoD.ObjectiveWaypoint.progressWidth / 2.000000))
			arg0.progressController:setTopBottom(false, false, (-(CoD.ObjectiveWaypoint.progressHeight / 2.000000) - CoD.ObjectiveWaypoint.progressHeightNudge), ((CoD.ObjectiveWaypoint.progressHeight / 2.000000) - CoD.ObjectiveWaypoint.progressHeightNudge))
			arg0.progressController:setAlpha(1.000000)
			arg0.showingProgress = true
		else
		else
			if arg0.showingProgress == true then
				if registerVal4 ~= 0.000000 or arg3 then
					if registerVal7 == false then
						arg0.progressController:beginAnimation("progress", arg0.snapToTime, true, true)
						arg0.progressController:setLeftRight(false, false, 0.000000, 0.000000)
						arg0.progressController:setTopBottom(false, false, 0.000000, 0.000000)
						arg0.progressController:setAlpha(0.000000)
						arg0.showingProgress = false
					end
				end
			end
		end
	end
	if not arg0.disablePulse then
		if not arg0.pulsing and 0.000000 < registerVal4 then
			arg0.alphaController:beginAnimation("pulse_low", arg0.pulseTime, false, false)
			arg0.alphaController:setAlpha(arg0.pulseAlphaLow)
			arg0.pulsing = true
		else
			if arg0.pulsing and registerVal4 == 0.000000 then
				arg0.alphaController:beginAnimation("pulse_stop", arg0.pulseStopTime, false, false)
				arg0.alphaController:setAlpha(arg0.iconAlpha)
				arg0.pulsing = nil
			end
		end
	end
end

function CoD.ObjectiveWaypoint.setPing(arg0, arg1)
	if arg0.ping and not arg1 then
		arg0.alphaController:setAlpha(arg0.iconAlpha)
	end
	arg0.ping = arg1
end

function CoD.ObjectiveWaypoint.SnapInFinished(arg0, arg1)
	if arg1.interrupted ~= true then
	end

CoD.ObjectiveWaypoint:registerEventHandler("transition_complete_snap_in", CoD.ObjectiveWaypoint.SnapInFinished)
CoD.ObjectiveWaypoint:registerEventHandler("entity_container_clamped", CoD.ObjectiveWaypoint.Clamped)
CoD.ObjectiveWaypoint:registerEventHandler("entity_container_unclamped", CoD.ObjectiveWaypoint.Unclamped)
