-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MPHudWidgets.WaypointCenter")
local function __FUNC_220_(arg0, arg1, arg2)
	local registerVal3 = Engine.GetObjectiveProgress(arg1, arg0.objId)
	local registerVal4 = Engine.ObjectiveIsTeamUsing(arg1, arg2, Enum.team_t.TEAM_ALLIES)
	local registerVal5 = Engine.ObjectiveIsAnyOtherTeamUsing(arg1, arg2, Enum.team_t.TEAM_ALLIES)
	local registerVal7 = Engine.ObjectiveGetTeamUsingCount(arg1, arg0.objId)
	if registerVal5 == true then
		arg0.WaypointCenter:setState("DefaultState")
		arg0.progressMeter:setRGB(1.000000, 0.400000, 0.000000)
		arg0.progressMeter:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	else
		if registerVal7 == 1.000000 and arg0.pulse == true and 0.000000 < registerVal3 then
			arg0.WaypointCenter:setState("Pulsing")
		else
			arg0.WaypointCenter:setState("DefaultState")
		end
		if registerVal3 <= 0.000000 then
		end
		arg0.progressMeter:setRGB(1.000000, 1.000000, 1.000000)
		arg0.progressMeter:setShaderVector(0.000000, -0.050000, 0.000000, 0.000000, 0.000000)
	end
end

local function __FUNC_5B6_(arg0, arg1)
	arg0.updateProgress = __FUNC_220_
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.CodCasterWaypoint = registerVal3
local function __FUNC_600_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CodCasterWaypoint)
	registerVal2.id = "CodCasterWaypoint"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 30.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -26.000000, 26.000000)
	registerVal3:setTopBottom(false, false, -25.000000, 25.000000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_waypoints_new_framefill"))
	registerVal2:addElement(registerVal3)
	registerVal2.ProgressMeterFrame = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -17.000000, 17.000000)
	registerVal4:setTopBottom(false, false, -17.000000, 17.000000)
	registerVal4:setAlpha(0.900000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_interact_meter_diamond"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_clock_normal"))
	registerVal4:setShaderVector(0.000000, 1.030000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.progressMeter = registerVal4
	local registerVal5 = CoD.WaypointCenter.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -14.000000, 14.000000)
	registerVal5:setTopBottom(false, false, -14.000000, 14.000000)
	registerVal5:setAlpha(0.950000)
	registerVal2:addElement(registerVal5)
	registerVal2.WaypointCenter = registerVal5
	local function __FUNC_C17_(arg0)
		arg0.WaypointCenter:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_C17_)
	if __FUNC_5B6_ then
		__FUNC_5B6_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.CodCasterWaypoint.new = __FUNC_600_
