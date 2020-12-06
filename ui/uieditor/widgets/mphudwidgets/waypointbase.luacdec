-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MPHudWidgets.WaypointWidgetContainer")
if not CoD.isCampaign and not CoD.isZombie then
	require("ui.uieditor.widgets.HUD.Flag.CTFOverlay")
end
local function __FUNC_303_(arg0, arg1)
	local registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_GAME_ENDED)
	registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_HUD_VISIBLE)
	registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_IN_KILLCAM)
	registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
	registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
	if not registerVal3 and registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
		registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_IN_VEHICLE)
		if arg1 or CoD.isCampaign == true then
			registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
			registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN)
			if not registerVal3 and not registerVal3 then
				registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE)
				if arg1 or CoD.isMultiplayer == true then
					registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC)
					if not registerVal3 then
						arg0:setAlpha(1.000000)
						arg0.visible = true
						if arg0.visible ~= true and arg0.visible == true then
							arg0:setAlpha(0.000000)
							arg0.visible = nil
						end
					end
				end
			end
		end
	end
	arg0:dispatchEventToChildren(arg1)
end

local function __FUNC_832_(arg0, arg1)
	for index2=1.000000, #arg0.WaypointContainerList, 1.000000 do
		local registerVal7 = Engine.GetObjectiveName(arg1.controller, arg0.WaypointContainerList[index2].gameTypeContainer.objId)
		if registerVal7 and registerVal7 ~= "" then
			arg0.WaypointContainerList[index2]:update(arg1)
		end
	end
	__FUNC_303_(arg0, arg1)
end

local function __FUNC_9BA_(arg0)
	local registerVal2 = arg0:getParent()
	return registerVal2
end

local function __FUNC_A3D_(arg0, arg1, arg2)
	if arg2 then
		local registerVal3 = CoD.CTFOverlay.new(arg2, arg1)
		registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
		arg0:addElement(registerVal3)
		arg0.CTFOverlay = registerVal3
	end
end

local function __FUNC_B4B_(arg0, arg1, arg2)
	if arg2 then
		local registerVal3 = CoD.DemOverlay.new(arg2, arg1)
		registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
		arg0:addElement(registerVal3)
		arg0.DemOverlay = registerVal3
	end
end

local function __FUNC_C57_(arg0, arg1, arg2)
	if arg2 then
		local registerVal3 = CoD.SDOverlay.new(arg2, arg1)
		registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
		arg0:addElement(registerVal3)
		arg0.SDOverlay = registerVal3
	end
end

local function __FUNC_D62_(arg0, arg1, arg2)
	if arg2 then
		local registerVal3 = CoD.BallOverlay.new(arg2, arg1)
		registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
		arg0:addElement(registerVal3)
		arg0.BallOverlay = registerVal3
	end
end

local function __FUNC_E70_(arg0, arg1, arg2)
	if arg2 then
		local registerVal3 = CoD.EscortOverlay.new(arg2, arg1)
		registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
		arg0:addElement(registerVal3)
		arg0.EscortOverlay = registerVal3
	end
end

local function __FUNC_F82_(arg0, arg1, arg2)
	if arg2 then
		local registerVal3 = CoD.KOTHOverlay.new(arg2, arg1)
		registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
		arg0:addElement(registerVal3)
		arg0.KOTHOverlay = registerVal3
	end
end

local function __FUNC_1090_(arg0, arg1, arg2)
	if arg2 then
		local registerVal3 = CoD.FractureOverlay.new(arg2, arg1)
		registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
		arg0:addElement(registerVal3)
		arg0.FractureOverlay = registerVal3
	end
end

local function __FUNC_11A4_(arg0, arg1)
	for index3=1.000000, #arg0.WaypointContainerList, 1.000000 do
		if arg0.WaypointContainerList[index3].gameTypeContainer.objId == arg1 then
		else
		end
	end
	if 0.000000 < index3 then
		arg0.WaypointContainerList[index3].gameTypeContainer:close()
		arg0.WaypointContainerList[index3]:close()
		table.remove(arg0.WaypointContainerList, index3)
		return true
	end
	return false
end

local function __FUNC_133D_(arg0, arg1, arg2)
	local registerVal3 = Engine.DvarString(nil, "g_gametype")
	if registerVal3 == "ctf" then
		__FUNC_A3D_(arg0, arg1, arg2)
	else
		if registerVal3 == "dem" then
			__FUNC_B4B_(arg0, arg1, arg2)
		else
			if registerVal3 == "sd" then
				__FUNC_C57_(arg0, arg1, arg2)
			else
				if registerVal3 == "sr" then
					__FUNC_C57_(arg0, arg1, arg2)
				else
					if registerVal3 == "koth" then
						__FUNC_F82_(arg0, arg1, arg2)
					else
						if registerVal3 == "ball" then
							__FUNC_D62_(arg0, arg1, arg2)
						else
							if registerVal3 == "escort" then
								__FUNC_E70_(arg0, arg1, arg2)
							else
								if registerVal3 == "clean" then
									__FUNC_1090_(arg0, arg1, arg2)
								else
									if registerVal3 == "infect" then
										__FUNC_C57_(arg0, arg1, arg2)
									end
								end
							end
						end
					end
				end
			end
		end
	end
	arg0.removeWaypoint = __FUNC_11A4_
	arg0.WaypointWidgetContainer:setAlpha(0.000000)
	local function __FUNC_1B77_(arg2)
		local registerVal3 = {}
		registerVal3.name = "visibility_update"
		registerVal3.controller = arg1
		__FUNC_303_(arg0, registerVal3)
	end

	local registerVal5 = Engine.GetModelForController(arg1)
	local registerVal8 = Engine.GetModel(registerVal5, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED))
	arg0:subscribeToModel(registerVal8, __FUNC_1B77_)
	registerVal8 = Engine.GetModel(registerVal5, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE))
	arg0:subscribeToModel(registerVal8, __FUNC_1B77_)
	registerVal8 = Engine.GetModel(registerVal5, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM))
	arg0:subscribeToModel(registerVal8, __FUNC_1B77_)
	registerVal8 = Engine.GetModel(registerVal5, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE))
	arg0:subscribeToModel(registerVal8, __FUNC_1B77_)
	registerVal8 = Engine.GetModel(registerVal5, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE))
	arg0:subscribeToModel(registerVal8, __FUNC_1B77_)
	registerVal8 = Engine.GetModel(registerVal5, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN))
	arg0:subscribeToModel(registerVal8, __FUNC_1B77_)
	registerVal8 = Engine.GetModel(registerVal5, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM))
	arg0:subscribeToModel(registerVal8, __FUNC_1B77_)
	registerVal8 = Engine.GetModel(registerVal5, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN))
	arg0:subscribeToModel(registerVal8, __FUNC_1B77_)
	registerVal8 = Engine.GetModel(registerVal5, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE))
	arg0:subscribeToModel(registerVal8, __FUNC_1B77_)
	registerVal8 = Engine.GetModel(registerVal5, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC))
	arg0:subscribeToModel(registerVal8, __FUNC_1B77_)
	local registerVal6 = IsMultiplayer()
	if registerVal6 then
		registerVal8 = Engine.GetModel(registerVal5, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_TEAM_SPECTATOR))
		arg0:subscribeToModel(registerVal8, __FUNC_1B77_)
		registerVal8 = Engine.GetModel(registerVal5, "CodCaster.profileSettingsUpdated")
		arg0:subscribeToModel(registerVal8, __FUNC_1B77_)
	end
	local function __FUNC_1BF9_(arg0)
		arg0.WaypointContainerList[1.000000]:close()
		table.remove(arg0.WaypointContainerList, 1.000000)
		if arg0.SDOverlay ~= nil then
			arg0.SDOverlay:close()
			arg0.SDOverlay = nil
		end
		if arg0.CTFOverlay ~= nil then
			arg0.CTFOverlay:close()
			arg0.CTFOverlay = nil
		end
		if arg0.DemOverlay ~= nil then
			arg0.DemOverlay:close()
			arg0.DemOverlay = nil
		end
		if arg0.KOTHOverlay ~= nil then
			arg0.KOTHOverlay:close()
			arg0.KOTHOverlay = nil
		end
		if arg0.BallOverlay ~= nil then
			arg0.BallOverlay:close()
			arg0.BallOverlay = nil
		end
		if arg0.EscortOverlay ~= nil then
			arg0.EscortOverlay:close()
			arg0.EscortOverlay = nil
		end
		arg0.close(arg0)
	end

	arg0.close = __FUNC_1BF9_
end

local registerVal13 = InheritFrom(LUI.UIElement)
CoD.WaypointBase = registerVal13
local function __FUNC_1E67_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.WaypointBase)
	registerVal2.id = "WaypointBase"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	local registerVal3 = CoD.WaypointWidgetContainer.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.WaypointWidgetContainer = registerVal3
	local function __FUNC_213D_(arg0)
		arg0.WaypointWidgetContainer:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_213D_)
	if __FUNC_133D_ then
		__FUNC_133D_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.WaypointBase.new = __FUNC_1E67_
