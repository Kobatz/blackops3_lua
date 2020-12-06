-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MPHudWidgets.WaypointArrowContainer")
require("ui.uieditor.widgets.MPHudWidgets.WaypointDistanceIndicatorContainer")
require("ui.uieditor.widgets.MPHudWidgets.Waypoint_TextBG")
require("ui.uieditor.widgets.MPHudWidgets.WaypointCenter")
local function __FUNC_381_(arg0, arg1)
	if arg1.objId then
		arg0:setLeftRight(false, false, 0.000000, 0.000000)
		arg0:setTopBottom(false, false, 0.000000, 0.000000)
		arg0.objId = arg1.objId
		arg0.waypoint_label_default = arg0.objective.waypoint_text
		if arg0.waypoint_label_default == nil then
			arg0.waypoint_label_default = ""
		end
		if arg0.objective.waypoint_fade_when_targeted ~= "enable" and arg0.objective.waypoint_fade_when_targeted ~= true then
		end
		arg0.waypoint_fade_when_targeted = true
		if arg0.objective.waypoint_clamp ~= "enable" and arg0.objective.waypoint_clamp ~= true then
		end
		arg0.waypoint_container_clamp = true
		if arg0.objective.show_distance ~= "enable" and arg0.objective.show_distance ~= true then
		end
		arg0.show_distance = true
		if arg0.objective.hide_arrow ~= "enable" and arg0.objective.hide_arrow ~= true then
		end
		arg0.hide_arrow = true
		arg0.waypoint_image_default = nil
		if arg0.objective.waypoint_image ~= nil then
			arg0.waypoint_image_default = arg0.objective.waypoint_image
		end
		arg0:setupWaypointContainer(arg0.objId)
		if arg0.waypoint_container_clamp then
			arg0:setEntityContainerClamp(true)
		end
		if arg0.waypoint_fade_when_targeted then
			arg0:setEntityContainerFadeWhenTargeted(true)
		end
		if arg0.objective.waypoint_fade_when_in_combat then
			arg0:setEntityContainerFadeWhenInCombat(true)
		end
		if not arg0.isClamped then
			arg0.WaypointDistanceIndicatorContainer:setAlpha(1.000000)
		end
		local registerVal4 = Engine.GetObjectiveEntity(arg1.controller, arg1.objId)
		if registerVal4 ~= nil then
		end
		arg0.WaypointDistanceIndicatorContainer.DistanceIndicator:setupDistanceIndicator(arg1.objId, true, arg0.show_distance)
		if CoD.isCampaign and arg0.objective.waypoint_show_distance_when_far then
			if registerVal4 ~= nil then
			end
			arg0.WaypointText.text:setupDistanceIndicator(arg1.objId, true, arg0.show_distance)
		end
		arg0.snapToCenterWhenContested = true
		arg0.snapToCenterForObjectiveTeam = true
		arg0.snapToCenterForOtherTeams = true
		arg0.updateState = true
		arg0.zOffset = 0.000000
		if arg0.objective.waypoint_z_offset ~= nil then
			arg0.zOffset = arg0.objective.waypoint_z_offset
		end
		arg0.pulse = false
		if arg0.objective.pulse_waypoint ~= nil then
			if arg0.objective.pulse_waypoint ~= "enable" then
			end
			arg0.pulse = true
		end
	end
end

local function __FUNC_BE9_(arg0, arg1)
	local registerVal2 = Engine.GetPredictedClientNum(arg1)
	local registerVal3 = Engine.GetTeamID(arg1, registerVal2)
	local registerVal4 = Engine.GetObjectiveTeam(arg1, arg0.objId)
	if registerVal3 ~= registerVal4 then
		return false
	end
	return true
end

local function __FUNC_CEF_(arg0, arg1)
	return Engine.GetObjectiveTeam(arg1, arg0.objId)
end

local function __FUNC_D79_(arg0, arg1, arg2, arg3)
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
	local registerVal6 = arg0:isOwnedByMyTeam(arg1)
	if registerVal6 then
		return false
		if not arg0.snapToCenterForObjectiveTeam and not arg0.snapToCenterWhenContested and not arg0.snapToCenterForOtherTeams and not arg0.snapToCenterWhenContested then
			return false
		end
	end
	return Engine.ObjectiveIsPlayerUsing(arg1, arg0.objId, registerVal4)
end

local function __FUNC_1025_(arg0, arg1)
	arg0.isClamped = true
	arg0.WaypointArrowContainer:setupEdgePointer(90.000000)
	arg0.WaypointArrowContainer.WaypointArrowWidget:setState("DefaultState")
	if arg1 or not 1.000000 then
	end
	arg0.WaypointText:setAlpha(0.000000)
	arg0.WaypointDistanceIndicatorContainer:setAlpha(0.000000)
end

local function __FUNC_11E8_(arg0, arg1)
	arg0.isClamped = false
	arg0.WaypointArrowContainer:setupUIElement()
	arg0.WaypointArrowContainer:setZRot(0.000000)
	arg0.WaypointArrowContainer.WaypointArrowWidget:setState("DefaultState")
	arg0.WaypointText:setAlpha(1.000000)
	arg0.WaypointDistanceIndicatorContainer:setAlpha(1.000000)
end

local function __FUNC_1399_(arg0, arg1, arg2, arg3, arg4)
	if arg3 then
		if arg4 then
			Engine.SetObjectiveIcon(arg1, arg2, arg0.mapIconType, arg3, arg4.r, arg4.g, arg4.b)
			Engine.SetObjectiveIcon(arg1, arg2, CoD.GametypeBase.shoutcasterMapIconType, arg3, arg4.r, arg4.g, arg4.b)
		else
			Engine.SetObjectiveIcon(arg1, arg2, arg0.mapIconType, arg3)
			Engine.SetObjectiveIcon(arg1, arg2, CoD.GametypeBase.shoutcasterMapIconType, arg3)
		end
		Engine.SetObjectiveIconPulse(arg1, arg2, arg0.mapIconType, arg0.pulse)
	else
		Engine.ClearObjectiveIcon(arg1, arg2, arg0.mapIconType)
		Engine.ClearObjectiveIcon(arg1, arg2, CoD.GametypeBase.shoutcasterMapIconType)
		Engine.SetObjectiveIconPulse(arg1, arg2, arg0.mapIconType, false)
	end
end

local function __FUNC_16A1_(arg0, arg1, arg2)
	Engine.ClearObjectiveIcon(arg1, arg2, arg0.mapIconType)
	Engine.ClearObjectiveIcon(arg1, arg2, CoD.GametypeBase.shoutcasterMapIconType)
end

local function __FUNC_17B0_(arg0, arg1, arg2, arg3)
	local registerVal4 = Engine.GetObjectiveProgress(arg1, arg0.objId)
	local registerVal5 = __FUNC_D79_(arg0, arg1, arg2, arg3)
	local registerVal7 = Engine.ObjectiveGetTeamUsingCount(arg1, arg0.objId)
	if not registerVal5 and 0.000000 < registerVal4 then
		arg0.ProgressMeterFrame:setAlpha(0.000000)
		arg0.progressMeter:setRGB(1.000000, 1.000000, 1.000000)
		arg0.progressMeter:setShaderVector(0.000000, -0.050000, 0.000000, 0.000000, 0.000000)
		if arg0.updateState then
			if registerVal7 == 1.000000 and arg0.pulse == true then
				arg0.WaypointCenter:setState("Pulsing")
			else
				arg0.WaypointCenter:setState("DefaultState")
			else
				if arg0.updateState then
					arg0.WaypointCenter:setState("DefaultState")
				end
				if (not arg0.never_contested) == true and registerVal5 then
					arg0.ProgressMeterFrame:setAlpha(1.000000)
					arg0.progressMeter:setRGB(1.000000, 0.400000, 0.000000)
					arg0.progressMeter:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
				else
					if registerVal4 <= 0.000000 then
						arg0.ProgressMeterFrame:setAlpha(0.000000)
					else
						arg0.ProgressMeterFrame:setAlpha(1.000000)
					end
					arg0.progressMeter:setRGB(1.000000, 1.000000, 1.000000)
					arg0.progressMeter:setShaderVector(0.000000, -0.050000, 0.000000, 0.000000, 0.000000)
				end
			end
		end
	end
end

local function __FUNC_1BCF_(arg0, arg1, arg2, arg3)
	local registerVal5 = __FUNC_D79_(arg0, arg1.controller, arg2, arg3)
	CoD.ObjectiveWaypoint.largeIconWidth = 64.000000
	CoD.ObjectiveWaypoint.largeIconHeight = 64.000000
	CoD.ObjectiveWaypoint.progressWidth = (CoD.ObjectiveWaypoint.largeIconWidth + 4.000000)
	CoD.ObjectiveWaypoint.progressHeight = (CoD.ObjectiveWaypoint.largeIconHeight + 4.000000)
	CoD.ObjectiveWaypoint.progressHeightNudge = 0.000000
	CoD.ObjectiveWaypoint.snapToHeight = 112.000000
	CoD.ObjectiveWaypoint.snapToTime = 250.000000
	if arg0.playerUsing == registerVal5 then
		return 
	end
	if registerVal5 == true then
		if arg0.playerUsing ~= nil then
			arg0:beginAnimation("snap_in", 250.000000, true, true)
		end
		arg0.snapped = true
		arg0.WaypointText:setAlpha(1.000000)
		arg0:setEntityContainerStopUpdating(true)
		arg0:setLeftRight(false, false, -32.000000, 32.000000)
		arg0:setTopBottom(false, false, -176.000000, -112.000000)
		arg0.WaypointArrowContainer:setAlpha(0.000000)
	else
		if arg0.playerUsing ~= nil then
			arg0:beginAnimation("snap_out", 250.000000, true, true)
		end
		arg0.snapped = false
		arg0:setEntityContainerStopUpdating(false)
		arg0:setLeftRight(false, false, -28.000000, 28.000000)
		arg0:setTopBottom(false, true, -56.000000, 0.000000)
		arg0.WaypointArrowContainer:setAlpha(1.000000)
	end
	arg0.playerUsing = registerVal5
end

local function __FUNC_2056_(arg0, arg1)
	local registerVal5 = Engine.GetObjectiveEntity(arg1.controller, arg0.objId)
	if registerVal5 and not arg0.ping then
		arg0:setupWaypointContainer(arg0.objId, 0.000000, 0.000000, arg0.zOffset)
		if arg0.pinging == true then
			arg0:clearEntityMidpoint(false)
			arg0:completeAnimation()
			arg0:setAlpha(1.000000)
		else
			local registerVal6, registerVal7, registerVal8 = Engine.GetObjectivePosition(arg1.controller, arg0.objId)
			arg0:setupWaypointContainer(arg0.objId, registerVal6, registerVal7, (registerVal8 + arg0.zOffset))
			if arg0.ping then
				arg0:clearEntityMidpoint(true)
				arg0:setAlpha(0.800000)
				local registerVal9 = Engine.GetGametypeSetting("objectivePingTime")
				arg0:beginAnimation("ping", (registerVal9 * 1000.000000))
				arg0:setAlpha(0.300000)
				arg0.pinging = true
			else
				if arg0.pinging == true then
					arg0:clearEntityMidpoint(false)
					arg0:completeAnimation()
					arg0:setAlpha(1.000000)
				end
			end
		end
	end
	if arg1 or arg0.objective.scale3d == 0.000000 then
	end
	arg0:setEntityContainerScale(true)
	if arg0.objective.show3dDirectionArrow and arg0.objective.show3dDirectionArrow ~= 0.000000 then
		arg0.WaypointArrowContainer:setup3dPointer(arg0.objId)
	end
	registerVal7 = Engine.GetPredictedClientNum(arg1.controller)
	registerVal8 = Engine.GetTeamID(arg1.controller, registerVal7)
	registerVal9 = Engine.ObjectiveIsTeamUsing(arg1.controller, arg0.objId, registerVal8)
	local registerVal10 = Engine.ObjectiveIsAnyOtherTeamUsing(arg1.controller, arg0.objId, registerVal8)
	arg0:updatePlayerUsing(arg1, registerVal9, registerVal10)
	arg0:updateProgress(arg1.controller, registerVal9, registerVal10)
end

local function __FUNC_25F7_(arg0, arg1)
	arg0.ping = arg1
end

local function __FUNC_2632_(arg0, arg1)
	if arg0.animationState == arg1 then
		return 
	end
	if arg1 == "waypoint_line_of_sight" then
		arg0:setAlpha(1.000000)
		arg0.WaypointArrowContainer.WaypointArrowWidget:setState("SolidArrowState")
		if not arg1 or not arg0.isClamped then
			if not 1.000000 then
			end
		end
		arg0.WaypointText:setAlpha(0.000000)
	else
		if arg1 == "waypoint_out_of_line_of_sight" then
			arg0:setAlpha(1.000000)
			arg0.WaypointArrowContainer.WaypointArrowWidget:setState("DefaultState")
			if not arg1 or not arg0.isClamped then
				if not 1.000000 then
				end
			end
			arg0.WaypointText:setAlpha(0.000000)
		else
			if arg1 == "waypoint_distance_culled" then
				arg0:setAlpha(0.000000)
			end
		end
	end
end

local function __FUNC_28ED_(arg0, arg1)
	arg0.setupWaypoint = __FUNC_381_
	arg0.setPing = __FUNC_25F7_
	arg0.update = __FUNC_2056_
	arg0.updateProgress = __FUNC_17B0_
	arg0.updatePlayerUsing = __FUNC_1BCF_
	arg0.isOwnedByMyTeam = __FUNC_BE9_
	arg0.getTeam = __FUNC_CEF_
	arg0.SetWaypointState = __FUNC_2632_
	arg0.setCompassObjectiveIcon = __FUNC_1399_
	arg0.clearCompassObjectiveIcon = __FUNC_16A1_
	arg0:registerEventHandler("entity_container_clamped", __FUNC_1025_)
	arg0:registerEventHandler("entity_container_unclamped", __FUNC_11E8_)
	arg0.mapIconType = CoD.GametypeBase.mapIconType
	arg0.neutralTeamID = 8.000000
end

local registerVal17 = InheritFrom(LUI.UIElement)
CoD.Waypoint = registerVal17
local function __FUNC_2B57_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Waypoint)
	registerVal2.id = "Waypoint"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 80.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -35.000000, 36.500000)
	registerVal3:setTopBottom(false, false, -35.000000, 34.500000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_waypoints_new_framefill"))
	registerVal2:addElement(registerVal3)
	registerVal2.ProgressMeterFrame = registerVal3
	local registerVal4 = CoD.WaypointArrowContainer.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -14.000000, 14.000000)
	registerVal4:setTopBottom(false, false, -17.000000, 14.000000)
	registerVal4:setAlpha(0.950000)
	registerVal2:addElement(registerVal4)
	registerVal2.WaypointArrowContainer = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -23.000000, 24.000000)
	registerVal5:setTopBottom(false, false, -24.000000, 23.000000)
	registerVal5:setAlpha(0.900000)
	registerVal5:setImage(RegisterImage("uie_t7_hud_interact_meter_diamond"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_clock_normal"))
	registerVal5:setShaderVector(0.000000, 1.030000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.progressMeter = registerVal5
	local registerVal6 = CoD.WaypointDistanceIndicatorContainer.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(false, false, -62.000000, -45.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.WaypointDistanceIndicatorContainer = registerVal6
	local registerVal7 = CoD.Waypoint_TextBG.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -40.000000, 40.000000)
	registerVal7:setTopBottom(false, false, -45.000000, -24.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.WaypointText = registerVal7
	local registerVal8 = CoD.WaypointCenter.new(arg0, arg1)
	registerVal8:setLeftRight(false, false, -16.500000, 17.500000)
	registerVal8:setTopBottom(false, false, -17.500000, 16.500000)
	registerVal8:setAlpha(0.950000)
	registerVal2:addElement(registerVal8)
	registerVal2.WaypointCenter = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_33E2_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal10.DefaultClip = __FUNC_33E2_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_3442_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal7:completeAnimation()
		registerVal2.WaypointText:setLeftRight(false, false, -40.000000, 40.000000)
		registerVal2.WaypointText:setTopBottom(false, false, -9.000000, 12.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.WaypointCenter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_3442_
	registerVal9.NoIcon = registerVal10
	registerVal2.clipsPerState = registerVal9
	local function __FUNC_3614_(arg0)
		arg0.WaypointArrowContainer:close()
		arg0.WaypointDistanceIndicatorContainer:close()
		arg0.WaypointText:close()
		arg0.WaypointCenter:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3614_)
	if __FUNC_28ED_ then
		__FUNC_28ED_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.Waypoint.new = __FUNC_2B57_
