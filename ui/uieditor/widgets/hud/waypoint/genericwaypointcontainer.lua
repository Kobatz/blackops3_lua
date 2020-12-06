-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MPHudWidgets.Waypoint")
local function __FUNC_231_(arg0, arg1)
	if arg1.objId then
		arg0.objId = arg1.objId
		arg0.Waypoint.objective = arg0.objective
		arg0.Waypoint:setupWaypoint(arg1)
		if arg0.Waypoint.waypoint_image_default == nil then
			arg0.Waypoint:setState("NoIcon")
		else
			arg0.Waypoint:setState("Default")
			arg0.Waypoint.WaypointCenter.waypointCenterImage:setImage(RegisterImage(arg0.Waypoint.waypoint_image_default))
		end
		if arg0.Waypoint.objective.minimapMaterial ~= nil then
			Engine.SetObjectiveIcon(arg1.controller, arg0.objId, CoD.GametypeBase.mapIconType, arg0.Waypoint.objective.minimapMaterial)
		else
			Engine.ClearObjectiveIcon(arg1.controller, arg0.objId, CoD.GametypeBase.mapIconType)
		end
		if arg0.Waypoint.waypoint_label_default == "" then
			arg0.Waypoint.WaypointText:setState("NoText")
		else
			arg0.Waypoint.WaypointText:setState("Default")
		end
		if arg0.Waypoint.objective.hide_arrow then
			arg0.Waypoint.WaypointArrowContainer:setState("Invisible")
		end
		arg0.Waypoint.WaypointText.text:setText(Engine.Localize(arg0.Waypoint.waypoint_label_default))
	end
end

local function __FUNC_700_(arg0, arg1)
	arg0.Waypoint:update(arg1)
	if arg1.objState ~= nil then
		if arg1.objState == CoD.OBJECTIVESTATE_DONE then
			arg0:setState("Done")
		else
			arg0:setState("Default")
		end
		if arg0.visible == true then
			arg0:show()
		else
			arg0:hide()
		end
	end
end

local function __FUNC_87F_(arg0, arg1)
	local registerVal4 = Engine.GetObjectiveTeam(arg1.controller, arg0.objId)
	if registerVal4 == Enum.team_t.TEAM_FREE or registerVal4 == Enum.team_t.TEAM_NEUTRAL then
		return true
	end
	return arg0.Waypoint:isOwnedByMyTeam(arg1.controller)
end

local function __FUNC_A03_(arg0)
	arg0.update = __FUNC_700_
	arg0.shouldShow = __FUNC_87F_
	arg0.setupWaypointContainer = __FUNC_231_
end

local registerVal5 = InheritFrom(LUI.UIElement)
CoD.GenericWaypointContainer = registerVal5
local function __FUNC_A88_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GenericWaypointContainer)
	registerVal2.id = "GenericWaypointContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Waypoint.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 600.000000, -600.000000)
	registerVal3:setTopBottom(true, true, 315.000000, -315.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Waypoint = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_E21_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Waypoint:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_E21_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_F1B_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_FF9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Waypoint:setAlpha(1.000000)
		__FUNC_FF9_(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_F1B_
	registerVal4.Done = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_11AD_(arg0)
		arg0.Waypoint:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_11AD_)
	if __FUNC_A03_ then
		__FUNC_A03_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.GenericWaypointContainer.new = __FUNC_A88_
