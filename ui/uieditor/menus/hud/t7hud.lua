-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MPHudWidgets.ArmorOverlayContainer")
require("ui.uieditor.widgets.HUD.fx.vignette_corner_right")
require("ui.uieditor.widgets.HUD.fx.vignette_corner")
require("ui.uieditor.widgets.HUD.SafeAreaContainers.T7Hud_SafeAreaContainer_Back")
require("ui.uieditor.widgets.MPHudWidgets.WaypointBase")
require("ui.uieditor.widgets.DynamicContainerWidget")
require("ui.uieditor.widgets.Notifications.OutOfBounds.OutOfBounds")
require("ui.uieditor.widgets.Notifications.PlayerCard.PlayerCard_ObituaryCallout")
require("ui.uieditor.widgets.MPHudWidgets.ThrustMeter.Boot.ThrustMeterBootContainer")
require("ui.uieditor.widgets.MPHudWidgets.Stuck")
require("ui.uieditor.widgets.MPHudWidgets.CursorHint")
require("ui.uieditor.widgets.MPHudWidgets.ShockCharge")
require("ui.uieditor.widgets.HUD.ProximityAlarm.ProximityAlarm")
require("ui.uieditor.widgets.HUD.CarePackage.CaptureCrate")
require("ui.uieditor.widgets.MPHudWidgets.ThrustMeter.ThrustMeterContainer")
require("ui.uieditor.widgets.HUD.DeadSpectate.DeadSpectate")
require("ui.uieditor.widgets.HUD.CenterConsole.CenterConsole")
require("ui.uieditor.widgets.HUD.SafeAreaContainers.T7Hud_SafeAreaContainer_Front")
require("ui.uieditor.widgets.HUD.PrematchCountdown.PrematchCountdown")
CoD.T7Hud = {}
function CoD.GetCachedObjective(arg0)
	if arg0 == nil then
		return nil
	end
	if CoD.T7Hud.ObjectivesTable[arg0] ~= nil then
		return CoD.T7Hud.ObjectivesTable[arg0]
	end
	local registerVal1 = Engine.GetObjectiveInfo(arg0)
	if registerVal1 ~= nil then
		CoD.T7Hud.ObjectivesTable[arg0] = registerVal1
	end
	return registerVal1
end

local function __FUNC_8A0_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	local registerVal2 = Engine.CreateModel(registerVal3, "displayTop3Players")
end

local function __FUNC_95C_(arg0, arg1)
	local function __FUNC_1132_(arg2, arg3)
		if not arg3.controller then
		end
		local registerVal3 = Engine.GetObjectiveName(arg1, arg3.objId)
		local registerVal4 = CoD.GetCachedObjective(registerVal3)
		if registerVal4 == nil then
			return 
		end
		local registerVal6 = Engine.GetModelForController(arg1)
		local registerVal5 = Engine.GetModel(registerVal6, ("objective" .. arg3.objId))
		registerVal6 = Engine.GetModel(registerVal5, "state")
		local registerVal7 = Engine.CreateModel(registerVal5, "clamped")
		local registerVal8 = Engine.CreateModel(registerVal5, "direction")
		local registerVal9 = Dvar.cg_luiDebug:get()
		if registerVal9 == true then
			local registerVal10 = arg0.interactPromptContainer:getFirstChild()
			local registerVal11 = registerVal10:getNextSibling()
			DebugPrint(("Interactive Prompt " .. arg3.objId .. ": " .. registerVal3 .. ": " .. (0.000000 + 1.000000) .. " prompts active"))
		end
		if arg0.interactPromptContainer[("button" .. arg3.objId)] ~= nil then
		end
		registerVal10 = Engine.GetObjectiveState(arg1, arg3.objId)
		if registerVal10 == CoD.OBJECTIVESTATE_ACTIVE or registerVal10 == CoD.OBJECTIVESTATE_INVISIBLE then
			if arg0.interactPromptContainer[("button" .. arg3.objId)].state ~= CoD.OBJECTIVESTATE_ACTIVE and arg0.interactPromptContainer[("button" .. arg3.objId)].state ~= CoD.OBJECTIVESTATE_INVISIBLE and registerVal4.notify_string ~= nil and registerVal4.notify_string ~= "" then
				registerVal11 = arg0:getParent()
				local registerVal13 = {}
				registerVal13.name = "comms_event_message"
				registerVal13.controller = arg3.controller
				local registerVal14 = {}
				registerVal14 = {registerVal4.notify_string}
				registerVal13.data = registerVal14
				registerVal11.T7HudMenuGameMode.CommsSystemWidget:AddCommsEventMessage(registerVal13)
			end
			if arg0.interactPromptContainer[("button" .. arg3.objId)] == nil then
				if not arg3 or CoD.isZombie then
					registerVal11 = CoD.ButtonPrompt3dCPZM.new(arg0, arg1)
				else
					registerVal11 = CoD.ButtonPrompt3d.new(arg0, arg1)
				end
				registerVal11.objective = registerVal4
				registerVal11:setupEntity(arg3)
				registerVal11:setModel(registerVal5)
				arg0.interactPromptContainer:addElement(registerVal11)
				arg0.interactPromptContainer[("button" .. arg3.objId)] = registerVal11
				local function __FUNC_1964_(arg0)
					local registerVal1 = Engine.GetModelValue(arg0)
					if registerVal1 ~= CoD.OBJECTIVESTATE_ACTIVE and registerVal1 ~= CoD.OBJECTIVESTATE_INVISIBLE then
						registerVal11:close()
					else
						if registerVal1 == CoD.OBJECTIVESTATE_ACTIVE then
							registerVal11:show()
						else
							registerVal11:hide()
						end
					end
				end

				registerVal11:subscribeToModel(registerVal6, __FUNC_1964_)
			else
				registerVal11.objective = registerVal4
				registerVal11:setupEntity(arg3)
			end
			registerVal11.state = registerVal10
		end
		return true
	end

	local function __FUNC_1ABC_(arg2, arg3)
		local registerVal2 = Engine.GetObjectiveName(arg3.controller, arg3.objId)
		local registerVal3 = CoD.GetCachedObjective(registerVal2)
		if registerVal3 == nil then
			return 
		end
		local registerVal4 = Dvar.cg_luiDebug:get()
		if registerVal4 == true then
			DebugPrint(("Waypoint ID " .. arg3.objId .. ": " .. registerVal2 .. ": " .. #arg2.WaypointContainerList .. " waypoints active"))
		end
		if not arg2.savedStates then
			arg2.savedStates = {}
			arg2.savedEntNums = {}
			arg2.savedObjectiveNames = {}
			arg2.savedTeam = -1.000000
			arg2.savedRound = -1.000000
		end
		registerVal4 = Engine.GetObjectiveState(arg1, arg3.objId)
		if not arg2.savedStates[arg3.objId] then
		end
		if registerVal4 == CoD.OBJECTIVESTATE_ACTIVE or registerVal4 == CoD.OBJECTIVESTATE_INVISIBLE then
			if CoD.OBJECTIVESTATE_EMPTY ~= CoD.OBJECTIVESTATE_ACTIVE and CoD.OBJECTIVESTATE_EMPTY ~= CoD.OBJECTIVESTATE_INVISIBLE and registerVal3.notify_string ~= nil and registerVal3.notify_string ~= "" then
				if registerVal4 ~= CoD.OBJECTIVESTATE_INVISIBLE or registerVal3.notify_string ~= "CP_MI_CAIRO_AQUIFER_TAKE_OFF" then
					local registerVal6 = arg0:getParent()
					local registerVal8 = {}
					registerVal8.name = "comms_event_message"
					registerVal8.controller = arg3.controller
					local registerVal9 = {}
					registerVal9 = {registerVal3.notify_string}
					registerVal8.data = registerVal9
					registerVal6.T7HudMenuGameMode.CommsSystemWidget:AddCommsEventMessage(registerVal8)
				end
			end
		end
		registerVal6 = Engine.GetModelForController(arg3.controller)
		local registerVal7 = Engine.GetModel(registerVal6, ("objective" .. arg3.objId))
		registerVal8 = Engine.GetModel(registerVal7, "state")
		registerVal9 = CoD.SafeGetModelValue(registerVal7, "entNum")
		local registerVal10 = CoD.GetTeamID(arg1)
		local registerVal11 = Engine.GetRoundsPlayed(arg1)
		if registerVal10 ~= arg2.savedTeam or registerVal11 ~= arg2.savedRound then
			arg2.savedStates = {}
			arg2.savedEntNums = {}
			arg2.savedObjectiveNames = {}
		end
		local registerVal12 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_GAME_ENDED)
		if not CoD.isCampaign and registerVal12 and registerVal4 == CoD.OBJECTIVESTATE_EMPTY and registerVal9 == arg2.savedEntNums[arg3.objId] and registerVal2 == arg2.savedObjectiveNames[arg3.objId] then
			if registerVal8 ~= nil then
				Engine.ForceNotifyModelSubscriptions(registerVal8)
			end
			return 
		end
		if registerVal8 ~= nil then
			registerVal12 = Engine.GetModelValue(registerVal8)
			Engine.SetModelValue(registerVal8, CoD.OBJECTIVESTATE_EMPTY)
			Engine.SetModelValue(registerVal8, registerVal12)
		end
		arg2.savedStates[arg3.objId] = registerVal4
		arg2.savedEntNums[arg3.objId] = registerVal9
		arg2.savedObjectiveNames[arg3.objId] = registerVal2
		arg2.savedTeam = registerVal10
		arg2.savedRound = registerVal11
		registerVal12 = CoD.IsShoutcaster(arg3.controller)
		registerVal12 = arg0:getParent()
		local registerVal14 = IsGameTypeEqualToString("dom")
		if registerVal12 and registerVal12.safeArea.CodCaster and registerVal12.safeArea.CodCaster.CodCasterHeaderWidget and registerVal12.safeArea.CodCaster.CodCasterHeaderWidget.CodCasterHeaderGameModeWidget and registerVal14 and registerVal12.safeArea.CodCaster.CodCasterHeaderWidget.CodCasterHeaderGameModeWidget.DomFlags then
			registerVal12.safeArea.CodCaster.CodCasterHeaderWidget.CodCasterHeaderGameModeWidget.DomFlags:create(arg3)
		end
		if registerVal2 then
			registerVal12 = CoD.WaypointWidgetContainer.new(arg2, arg3.controller)
			registerVal12.objective = registerVal3
			registerVal12:setupWaypoint(arg3)
			registerVal12:setLeftRight(true, true, 0.000000, 0.000000)
			registerVal12:setTopBottom(true, true, 0.000000, 0.000000)
			arg2:addElement(registerVal12)
			table.insert(arg2.WaypointContainerList, registerVal12)
			registerVal12:update(arg3)
			registerVal12:setModel(registerVal7)
			registerVal14 = Engine.GetModel(registerVal7, "entNum")
			if registerVal14 ~= nil and registerVal2 == "sd_bomb" then
				local registerVal16 = Engine.GetModel(registerVal7, "entNum")
				local function __FUNC_2949_(arg0)
					local registerVal1 = Engine.GetModelForController(arg3.controller)
					local registerVal3 = Engine.CreateModel(registerVal1, "hudItems.SDBombClient")
					Engine.SetModelValue(registerVal3, Engine.GetModelValue(arg0))
				end

				registerVal12:subscribeToModel(registerVal16, __FUNC_2949_)
			end
			local function __FUNC_2A65_(arg0)
				local registerVal1 = Engine.GetModelValue(arg0)
				arg2.savedStates[arg3.objId] = registerVal1
				if registerVal1 ~= CoD.OBJECTIVESTATE_ACTIVE and registerVal1 == CoD.OBJECTIVESTATE_CURRENT or registerVal1 == CoD.OBJECTIVESTATE_DONE then
					registerVal12:show()
					local registerVal4 = {}
					registerVal4.controller = arg3.controller
					registerVal4.objState = registerVal1
					registerVal12:update(registerVal4)
				else
					if registerVal1 == CoD.OBJECTIVESTATE_EMPTY then
						arg2:removeWaypoint(arg3.objId)
						arg2.savedEntNums[arg3.objId] = nil
					else
						registerVal12:hide()
					end
				end
			end

			registerVal12:subscribeToModel(registerVal8, __FUNC_2A65_)
			local registerVal15 = Engine.GetModel(registerVal7, "updateTime")
			if registerVal15 ~= nil then
				local function __FUNC_2CFB_(arg0)
					local registerVal3 = {}
					registerVal3.controller = arg3.controller
					registerVal12:update(registerVal3)
				end

				registerVal12:subscribeToModel(registerVal15, __FUNC_2CFB_)
			end
			local registerVal18 = Engine.GetModel(registerVal7, "progress")
			local function __FUNC_2D60_(arg0)
				local registerVal3 = {}
				registerVal3.controller = arg3.controller
				local registerVal4 = Engine.GetModelValue(arg0)
				registerVal3.progress = registerVal4
				registerVal12:update(registerVal3)
			end

			registerVal12:subscribeToModel(registerVal18, __FUNC_2D60_)
			registerVal18 = Engine.GetModel(registerVal7, "clientUseMask")
			local function __FUNC_2E1D_(arg0)
				local registerVal3 = {}
				registerVal3.controller = arg3.controller
				local registerVal4 = Engine.GetModelValue(arg0)
				registerVal3.clientUseMask = registerVal4
				registerVal12:update(registerVal3)
			end

			registerVal12:subscribeToModel(registerVal18, __FUNC_2E1D_)
			registerVal16 = Engine.GetModel(registerVal6, "profile.colorBlindMode")
			if registerVal16 then
				local function __FUNC_2EDE_(arg0)
					local registerVal3 = {}
					registerVal3.controller = arg3.controller
					registerVal12:update(registerVal3)
				end

				registerVal12:subscribeToModel(registerVal16, __FUNC_2EDE_, false)
			end
		end
		return true
	end

	arg0.WaypointBase.WaypointContainerList = {}
	local registerVal6 = Engine.BuildObjectivesTable()
	CoD.T7Hud.ObjectivesTable = registerVal6
	if CoD.T7Hud.ObjectivesTable == nil or #CoD.T7Hud.ObjectivesTable == 0.000000 then
		error("LUI Error: Failed to load objectives.json!")
	end
	for index5=#CoD.T7Hud.ObjectivesTable, 1.000000, -1.000000 do
		CoD.T7Hud.ObjectivesTable[CoD.T7Hud.ObjectivesTable[index5].id] = CoD.T7Hud.ObjectivesTable[index5]
		table.remove(CoD.T7Hud.ObjectivesTable, index5)
	end
	registerVal6 = Engine.GetModelForController(arg1)
	local registerVal5 = Engine.CreateModel(registerVal6, ("newObjectiveType" .. Enum.ObjectiveTypes.OBJECTIVE_TYPE_WAYPOINT))
	local function __FUNC_2F44_(arg2)
		local registerVal1 = Engine.GetModelValue(arg2)
		local registerVal4 = {}
		registerVal4.controller = arg1
		registerVal4.objId = registerVal1
		registerVal4.objType = Enum.ObjectiveTypes.OBJECTIVE_TYPE_WAYPOINT
		__FUNC_1ABC_(arg0.WaypointBase, registerVal4)
	end

	arg0:subscribeToModel(registerVal5, __FUNC_2F44_, false)
	local registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.CreateModel(registerVal7, ("newObjectiveType" .. Enum.ObjectiveTypes.OBJECTIVE_TYPE_3DPROMPT))
	local function __FUNC_3088_(arg2)
		local registerVal1 = Engine.GetModelValue(arg2)
		local registerVal4 = {}
		registerVal4.controller = arg1
		registerVal4.objId = registerVal1
		registerVal4.objType = Enum.ObjectiveTypes.OBJECTIVE_TYPE_3DPROMPT
		__FUNC_1132_(arg0.interactPromptContainer, registerVal4)
	end

	arg0:subscribeToModel(registerVal6, __FUNC_3088_, false)
	arg0.m_inputDisabled = true
	local registerVal10 = Engine.GetModelForController(arg1)
	local registerVal9 = Engine.GetModel(registerVal10, "currentWeapon.viewmodelWeaponName")
	local function __FUNC_31D7_(arg2)
		local registerVal1 = IsCurrentViewmodelWeaponName(arg1, "pda_hack")
		if registerVal1 then
			local registerVal2 = CoD.BlackHat.new(arg0, arg1)
			arg0.BlackHat = registerVal2
			arg0:addElement(arg0.BlackHat)
			local registerVal3 = {}
			registerVal3.name = "update_state"
			registerVal3.controller = arg1
			arg0.BlackHat:dispatchEventToChildren(registerVal3)
		else
			if arg0.BlackHat ~= nil then
				arg0.BlackHat:close()
				arg0.BlackHat = nil
			end
		end
	end

	arg0:subscribeToModel(registerVal9, __FUNC_31D7_)
	local function __FUNC_33A9_(arg0)
		arg0.close(arg0)
		if arg0.BlackHat ~= nil then
			arg0.BlackHat:close()
		end
	end

	arg0.close = __FUNC_33A9_
	local function __FUNC_342A_(arg0, arg1)
		return true
	end

	arg0:registerEventHandler("game_options_update", __FUNC_342A_)
	if LUI.DEV ~= nil then
		local function __FUNC_345C_(arg0, arg1)
			if arg1 or not 1.000000 then
			end
			arg0.CursorHint:setAlpha(0.000000)
		end

		arg0:registerEventHandler("hide_button_prompts", __FUNC_345C_)
	end
	function arg0.PlayerCardObituaryCallout.playNotification(arg0, arg1)
		arg0.currentNotification = arg1
		local registerVal2 = GetBackgroundByID(arg1.selectedBg)
		CoD.ChallengesUtility.SetCallingCardForWidget(arg0.PlayerCard0.CallingCardsFrameWidget.CardIconFrame, registerVal2, "HUD")
		arg0.PlayerCard0.GamerTag:setAlpha(HideIfEmptyString(arg1.playerName))
		arg0.PlayerCard0.GamerTag.itemName:setText(Engine.Localize(arg1.playerName))
		arg0.PlayerCard0.ClanTag:setAlpha(HideIfEmptyString(arg1.clanTag))
		arg0.PlayerCard0.ClanTag.itemName:setText(StringAsClanTag(arg1.clanTag))
		arg0.PlayerCard0.HeroLobbyClientExtraCamRender:setupCharacterExtraCamRenderForLobbyClient(arg1.xuid)
		arg0.PlayerCard0.RankIcon:setImage(RegisterImage(arg1.rankIcon))
		arg0.PlayerCard0.Rank:setText(Engine.Localize(arg1.rank))
		arg0.PlayerCard0.PlayerEmblem:setupPlayerEmblemByXUID(arg1.xuid)
		arg0:playClip("Bottom")
	end

	function arg0.PlayerCardObituaryCallout.appendNotification(arg0, arg1)
		if arg1 == nil then
			return 
		end
		if arg0.currentNotification ~= nil then
			if arg0.nextNotification == nil then
				arg0.nextNotification = arg1
			else
				arg0.nextNotification.next.next = arg1
			else
				arg0:playNotification(arg1)
			end
		end
	end

	function arg0.PlayerCardObituaryCallout.getModelValueTable(arg0, arg1)
		local registerVal3 = Engine.GetModelValue(Engine.GetModel(arg1, "xuid"))
		{}.xuid = registerVal3
		registerVal3 = Engine.GetModelValue(Engine.GetModel(arg1, "playerName"))
		{}.playerName = registerVal3
		registerVal3 = Engine.GetModelValue(Engine.GetModel(arg1, "clanTag"))
		{}.clanTag = registerVal3
		registerVal3 = Engine.GetModelValue(Engine.GetModel(arg1, "selectedBg"))
		{}.selectedBg = registerVal3
		registerVal3 = Engine.GetModelValue(Engine.GetModel(arg1, "rankIcon"))
		{}.rankIcon = registerVal3
		registerVal3 = Engine.GetModelValue(Engine.GetModel(arg1, "rank"))
		{}.rank = registerVal3
		return {}
	end

	arg0.PlayerCardObituaryCallout.currentNotification = nil
	arg0.PlayerCardObituaryCallout.nextNotification = nil
	registerVal9 = Engine.GetModelForController(arg1)
	local registerVal8 = Engine.CreateModel(registerVal9, "playerKilledCallout")
	Engine.SetModelValue(registerVal8, false)
	if not CoD.isCampaign then
		local function __FUNC_3D5C_(arg2)
			local registerVal1 = Engine.GetModelValue(arg2)
			registerVal1 = Engine.GetModelValue(arg2)
			if registerVal1 == true or registerVal1 == 1.000000 then
				Engine.SetModelValue(registerVal8, false)
				local registerVal2 = Engine.GetModelForController(arg1)
				registerVal1 = Engine.GetModel(registerVal2, "playerObituary")
				registerVal2 = arg0.PlayerCardObituaryCallout:getModelValueTable(registerVal1)
				arg0.PlayerCardObituaryCallout:appendNotification(registerVal2)
			end
		end

		arg0.PlayerCardObituaryCallout:subscribeToModel(registerVal8, __FUNC_3D5C_)
	end
	local function __FUNC_3F35_(arg0, arg1)
		arg0.currentNotification = nil
		if arg0.nextNotification ~= nil then
			arg0:playNotification(arg0.nextNotification)
			arg0.nextNotification = arg0.nextNotification.next
		end
	end

	arg0.PlayerCardObituaryCallout:registerEventHandler("clip_over", __FUNC_3F35_)
end

local function __FUNC_4008_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("T7Hud")
	if __FUNC_8A0_ then
		__FUNC_8A0_(registerVal1, arg0)
	end
	registerVal1.soundSet = "HUD"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "T7Hud.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.ArmorOverlayContainer.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.750000)
	registerVal1:addElement(registerVal3)
	registerVal1.ArmorOverlayContainer0 = registerVal3
	local registerVal4 = CoD.vignette_corner_right.new(registerVal1, arg0)
	registerVal4:setLeftRight(false, true, -384.500000, 71.500000)
	registerVal4:setTopBottom(false, true, -279.080000, 18.000000)
	registerVal4:setAlpha(0.250000)
	registerVal1:addElement(registerVal4)
	registerVal1.vignettecornerright0 = registerVal4
	local registerVal5 = CoD.vignette_corner.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, -71.500000, 386.500000)
	registerVal5:setTopBottom(false, true, -279.080000, 18.000000)
	registerVal5:setAlpha(0.250000)
	registerVal1:addElement(registerVal5)
	registerVal1.vignettecornerL = registerVal5
	local registerVal6 = CoD.T7Hud_SafeAreaContainer_Back.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_5E4E_(arg1, arg2)
		local registerVal3 = IsMultiplayer()
		registerVal3 = IsGameTypeEqualToString("fr")
		if registerVal3 and not registerVal3 then
			SizeToSafeArea(arg1, arg0)
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("menu_loaded", __FUNC_5E4E_)
	registerVal1:addElement(registerVal6)
	registerVal1.SafeAreaContainerBack = registerVal6
	local registerVal7 = CoD.WaypointBase.new(registerVal1, arg0)
	registerVal7:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal7:setTopBottom(false, false, -360.000000, 360.000000)
	local function __FUNC_5F49_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("menu_loaded", __FUNC_5F49_)
	registerVal1:addElement(registerVal7)
	registerVal1.WaypointBase = registerVal7
	local registerVal8 = CoD.DynamicContainerWidget.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.interactPromptContainer = registerVal8
	local registerVal9 = CoD.OutOfBounds.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "IsOutOfBounds"
	local function __FUNC_5FDD_(arg1, arg2, arg3)
		local registerVal3 = IsOutOfBounds(arg0)
		if registerVal3 then
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
		end
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_5FDD_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetModelForController(arg0)
	registerVal12 = Engine.GetModel(registerVal13, "hudItems.outOfBoundsEndTime")
	local function __FUNC_60E9_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hudItems.outOfBoundsEndTime"
		registerVal1:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_60E9_)
	registerVal13 = Engine.GetModelForController(arg0)
	registerVal12 = Engine.GetModel(registerVal13, "displayTop3Players")
	local function __FUNC_6219_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "displayTop3Players"
		registerVal1:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_6219_)
	registerVal13 = Engine.GetModelForController(arg0)
	registerVal12 = Engine.GetModel(registerVal13, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM))
	local function __FUNC_6340_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
		registerVal1:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_6340_)
	registerVal1:addElement(registerVal9)
	registerVal1.OutOfBounds = registerVal9
	local registerVal10 = CoD.PlayerCard_ObituaryCallout.new(registerVal1, arg0)
	registerVal10:setLeftRight(false, false, -153.000000, 150.000000)
	registerVal10:setTopBottom(false, true, -81.000000, -22.000000)
	registerVal10:setAlpha(0.900000)
	registerVal1:addElement(registerVal10)
	registerVal1.PlayerCardObituaryCallout = registerVal10
	local registerVal11 = LUI.UITightText.new()
	registerVal11:setLeftRight(false, false, -67.500000, 67.500000)
	registerVal11:setTopBottom(true, false, 299.000000, 359.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal11)
	registerVal1.PreMatchTimer = registerVal11
	registerVal12 = CoD.ThrustMeterBootContainer.new(registerVal1, arg0)
	registerVal12:setLeftRight(false, false, -154.500000, 154.500000)
	registerVal12:setTopBottom(false, false, -150.000000, 163.000000)
	registerVal12:setAlpha(0.700000)
	local function __FUNC_64D8_(arg1, arg2)
		local registerVal3 = ShouldBootUpHUD(registerVal1)
		if registerVal3 then
			local registerVal5 = {}
			registerVal5.elementName = "ThrustMeterBoot"
			registerVal5.clipName = "thrust_boot"
			PlayClipOnElement(registerVal1, registerVal5, arg0)
			SetHudHasBooted(registerVal1)
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal12:registerEventHandler("hud_boot", __FUNC_64D8_)
	registerVal1:addElement(registerVal12)
	registerVal1.ThrustMeterBoot = registerVal12
	registerVal13 = CoD.Stuck.new(registerVal1, arg0)
	registerVal13:setLeftRight(false, false, -32.000000, 32.000000)
	registerVal13:setTopBottom(false, true, -240.000000, -176.000000)
	local registerVal16 = {}
	local registerVal17 = {}
	registerVal17.stateName = "Stuck"
	local function __FUNC_6623_(arg1, arg2, arg3)
		return IsStickyImageActive(arg0)
	end

	registerVal17.condition = __FUNC_6623_
	registerVal16 = {registerVal17}
	registerVal13:mergeStateConditions(registerVal16)
	registerVal17 = Engine.GetModelForController(arg0)
	registerVal16 = Engine.GetModel(registerVal17, "hudItems.stickyImage")
	local function __FUNC_6679_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hudItems.stickyImage"
		registerVal1:updateElementState(registerVal13, registerVal4)
	end

	registerVal13:subscribeToModel(registerVal16, __FUNC_6679_)
	registerVal1:addElement(registerVal13)
	registerVal1.Stuck = registerVal13
	local registerVal14 = CoD.CursorHint.new(registerVal1, arg0)
	registerVal14:setLeftRight(false, false, -250.000000, 250.000000)
	registerVal14:setTopBottom(false, false, 152.000000, 246.000000)
	registerVal17 = {}
	local registerVal18 = {}
	registerVal18.stateName = "Active_1x1"
	local function __FUNC_67A2_(arg1, arg2, arg3)
		local registerVal3 = IsCursorHintActive(arg0)
		if registerVal3 then
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_HUD_HARDCORE)
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_HUD_VISIBLE)
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE)
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_IS_DEMO_PLAYING)
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED)
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_SELECTING_LOCATIONAL_KILLSTREAK)
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_SPECTATING_CLIENT)
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
			if not registerVal3 and registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
				registerVal3 = IsModelValueEqualTo(arg0, "hudItems.cursorHintIconRatio", 1.000000)
			else
			end
		end
		return true
	end

	registerVal18.condition = __FUNC_67A2_
	local registerVal19 = {}
	registerVal19.stateName = "Active_2x1"
	local function __FUNC_6B8A_(arg1, arg2, arg3)
		local registerVal3 = IsCursorHintActive(arg0)
		if registerVal3 then
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_HUD_HARDCORE)
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_HUD_VISIBLE)
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE)
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_IS_DEMO_PLAYING)
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED)
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_SELECTING_LOCATIONAL_KILLSTREAK)
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_SPECTATING_CLIENT)
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
			if not registerVal3 and registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
				registerVal3 = IsModelValueEqualTo(arg0, "hudItems.cursorHintIconRatio", 2.000000)
			else
			end
		end
		return true
	end

	registerVal19.condition = __FUNC_6B8A_
	local registerVal20 = {}
	registerVal20.stateName = "Active_4x1"
	local function __FUNC_6F72_(arg1, arg2, arg3)
		local registerVal3 = IsCursorHintActive(arg0)
		if registerVal3 then
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_HUD_HARDCORE)
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_HUD_VISIBLE)
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE)
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_IS_DEMO_PLAYING)
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED)
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_SELECTING_LOCATIONAL_KILLSTREAK)
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_SPECTATING_CLIENT)
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
			if not registerVal3 and registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
				registerVal3 = IsModelValueEqualTo(arg0, "hudItems.cursorHintIconRatio", 4.000000)
			else
			end
		end
		return true
	end

	registerVal20.condition = __FUNC_6F72_
	local registerVal21 = {}
	registerVal21.stateName = "Active_NoImage"
	local function __FUNC_735A_(arg1, arg2, arg3)
		local registerVal3 = IsCursorHintActive(arg0)
		if registerVal3 then
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_HUD_HARDCORE)
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_HUD_VISIBLE)
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE)
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_IS_DEMO_PLAYING)
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED)
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_SELECTING_LOCATIONAL_KILLSTREAK)
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_SPECTATING_CLIENT)
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
			if not registerVal3 and registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
				registerVal3 = IsModelValueEqualTo(arg0, "hudItems.cursorHintIconRatio", 0.000000)
			else
			end
		end
		return true
	end

	registerVal21.condition = __FUNC_735A_
	registerVal17 = {registerVal18, registerVal19, registerVal20, registerVal21}
	registerVal14:mergeStateConditions(registerVal17)
	registerVal18 = Engine.GetModelForController(arg0)
	registerVal17 = Engine.GetModel(registerVal18, "hudItems.showCursorHint")
	local function __FUNC_7742_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hudItems.showCursorHint"
		registerVal1:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:subscribeToModel(registerVal17, __FUNC_7742_)
	registerVal18 = Engine.GetModelForController(arg0)
	registerVal17 = Engine.GetModel(registerVal18, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_HARDCORE))
	local function __FUNC_786D_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_HARDCORE)
		registerVal1:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:subscribeToModel(registerVal17, __FUNC_786D_)
	registerVal18 = Engine.GetModelForController(arg0)
	registerVal17 = Engine.GetModel(registerVal18, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE))
	local function __FUNC_79F7_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE)
		registerVal1:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:subscribeToModel(registerVal17, __FUNC_79F7_)
	registerVal18 = Engine.GetModelForController(arg0)
	registerVal17 = Engine.GetModel(registerVal18, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE))
	local function __FUNC_7B7E_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE)
		registerVal1:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:subscribeToModel(registerVal17, __FUNC_7B7E_)
	registerVal18 = Engine.GetModelForController(arg0)
	registerVal17 = Engine.GetModel(registerVal18, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_DEMO_PLAYING))
	local function __FUNC_7D0C_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_DEMO_PLAYING)
		registerVal1:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:subscribeToModel(registerVal17, __FUNC_7D0C_)
	registerVal18 = Engine.GetModelForController(arg0)
	registerVal17 = Engine.GetModel(registerVal18, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED))
	local function __FUNC_7E9A_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED)
		registerVal1:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:subscribeToModel(registerVal17, __FUNC_7E9A_)
	registerVal18 = Engine.GetModelForController(arg0)
	registerVal17 = Engine.GetModel(registerVal18, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SELECTING_LOCATIONAL_KILLSTREAK))
	local function __FUNC_8026_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SELECTING_LOCATIONAL_KILLSTREAK)
		registerVal1:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:subscribeToModel(registerVal17, __FUNC_8026_)
	registerVal18 = Engine.GetModelForController(arg0)
	registerVal17 = Engine.GetModel(registerVal18, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SPECTATING_CLIENT))
	local function __FUNC_81C2_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SPECTATING_CLIENT)
		registerVal1:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:subscribeToModel(registerVal17, __FUNC_81C2_)
	registerVal18 = Engine.GetModelForController(arg0)
	registerVal17 = Engine.GetModel(registerVal18, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE))
	local function __FUNC_8350_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		registerVal1:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:subscribeToModel(registerVal17, __FUNC_8350_)
	registerVal18 = Engine.GetModelForController(arg0)
	registerVal17 = Engine.GetModel(registerVal18, "hudItems.cursorHintIconRatio")
	local function __FUNC_84D8_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hudItems.cursorHintIconRatio"
		registerVal1:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:subscribeToModel(registerVal17, __FUNC_84D8_)
	registerVal1:addElement(registerVal14)
	registerVal1.CursorHint = registerVal14
	local registerVal15 = CoD.ShockCharge.new(registerVal1, arg0)
	registerVal15:setLeftRight(false, false, -110.670000, 110.670000)
	registerVal15:setTopBottom(false, false, -114.000000, 94.000000)
	registerVal18 = {}
	registerVal19 = {}
	registerVal19.stateName = "ShockTop"
	local function __FUNC_860A_(arg1, arg2, arg3)
		return IsShockImageTopActive(arg0)
	end

	registerVal19.condition = __FUNC_860A_
	registerVal20 = {}
	registerVal20.stateName = "ShockLeft"
	local function __FUNC_8663_(arg1, arg2, arg3)
		return IsShockImageLeftActive(arg0)
	end

	registerVal20.condition = __FUNC_8663_
	registerVal21 = {}
	registerVal21.stateName = "ShockRight"
	local function __FUNC_86BC_(arg1, arg2, arg3)
		return IsShockImageRightActive(arg0)
	end

	registerVal21.condition = __FUNC_86BC_
	local registerVal22 = {}
	registerVal22.stateName = "ShockBottom"
	local function __FUNC_8719_(arg1, arg2, arg3)
		return IsShockImageBottomActive(arg0)
	end

	registerVal22.condition = __FUNC_8719_
	registerVal18 = {registerVal19, registerVal20, registerVal21, registerVal22}
	registerVal15:mergeStateConditions(registerVal18)
	registerVal19 = Engine.GetModelForController(arg0)
	registerVal18 = Engine.GetModel(registerVal19, "hudItems.shockImageTop")
	local function __FUNC_8776_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hudItems.shockImageTop"
		registerVal1:updateElementState(registerVal15, registerVal4)
	end

	registerVal15:subscribeToModel(registerVal18, __FUNC_8776_)
	registerVal19 = Engine.GetModelForController(arg0)
	registerVal18 = Engine.GetModel(registerVal19, "hudItems.shockImageLeft")
	local function __FUNC_88A0_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hudItems.shockImageLeft"
		registerVal1:updateElementState(registerVal15, registerVal4)
	end

	registerVal15:subscribeToModel(registerVal18, __FUNC_88A0_)
	registerVal19 = Engine.GetModelForController(arg0)
	registerVal18 = Engine.GetModel(registerVal19, "hudItems.shockImageRight")
	local function __FUNC_89CD_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hudItems.shockImageRight"
		registerVal1:updateElementState(registerVal15, registerVal4)
	end

	registerVal15:subscribeToModel(registerVal18, __FUNC_89CD_)
	registerVal19 = Engine.GetModelForController(arg0)
	registerVal18 = Engine.GetModel(registerVal19, "hudItems.shockImageBottom")
	local function __FUNC_8AFA_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hudItems.shockImageBottom"
		registerVal1:updateElementState(registerVal15, registerVal4)
	end

	registerVal15:subscribeToModel(registerVal18, __FUNC_8AFA_)
	registerVal1:addElement(registerVal15)
	registerVal1.ShockCharge0 = registerVal15
	registerVal16 = CoD.ProximityAlarm.new(registerVal1, arg0)
	registerVal16:setLeftRight(false, false, -125.000000, 125.000000)
	registerVal16:setTopBottom(false, false, 72.000000, 104.000000)
	registerVal1:addElement(registerVal16)
	registerVal1.proximityAlarm = registerVal16
	registerVal17 = CoD.CaptureCrate.new(registerVal1, arg0)
	registerVal17:setLeftRight(false, false, -149.000000, 151.000000)
	registerVal17:setTopBottom(false, false, -165.000000, -101.000000)
	registerVal1:addElement(registerVal17)
	registerVal1.CaptureCrate = registerVal17
	registerVal18 = CoD.ThrustMeterContainer.new(registerVal1, arg0)
	registerVal18:setLeftRight(false, false, -85.000000, 85.000000)
	registerVal18:setTopBottom(false, false, 116.000000, 156.000000)
	registerVal1:addElement(registerVal18)
	registerVal1.ThrustMeterContainer0 = registerVal18
	registerVal19 = CoD.DeadSpectate.new(registerVal1, arg0)
	registerVal19:setLeftRight(false, false, -150.000000, 150.000000)
	registerVal19:setTopBottom(false, true, -180.000000, -120.000000)
	registerVal1:addElement(registerVal19)
	registerVal1.DeadSpectate = registerVal19
	registerVal20 = CoD.CenterConsole.new(registerVal1, arg0)
	registerVal20:setLeftRight(false, false, -370.000000, 370.000000)
	registerVal20:setTopBottom(true, false, 64.000000, 162.000000)
	registerVal1:addElement(registerVal20)
	registerVal1.ConsoleCenter = registerVal20
	registerVal21 = CoD.T7Hud_SafeAreaContainer_Front.new(registerVal1, arg0)
	registerVal21:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal21:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_8C27_(arg1, arg2)
		local registerVal3 = IsMultiplayer()
		registerVal3 = IsGameTypeEqualToString("fr")
		if registerVal3 and not registerVal3 then
			SizeToSafeArea(arg1, arg0)
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal21:registerEventHandler("menu_loaded", __FUNC_8C27_)
	registerVal1:addElement(registerVal21)
	registerVal1.SafeAreaContainerFront = registerVal21
	local registerVal24 = {}
	local registerVal25 = {}
	registerVal25.stateName = "HideNotifications"
	local function __FUNC_8D21_(arg1, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_FINAL_KILLCAM)
		registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_ROUND_END_KILLCAM)
		registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_GAME_ENDED)
		if not registerVal3 and not registerVal3 and not registerVal3 then
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_IN_KILLCAM)
		end
		return registerVal3
	end

	registerVal25.condition = __FUNC_8D21_
	registerVal24 = {registerVal25}
	registerVal1:mergeStateConditions(registerVal24)
	registerVal25 = Engine.GetModelForController(arg0)
	registerVal24 = Engine.GetModel(registerVal25, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_FINAL_KILLCAM))
	local function __FUNC_8EF5_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_FINAL_KILLCAM)
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal24, __FUNC_8EF5_)
	registerVal25 = Engine.GetModelForController(arg0)
	registerVal24 = Engine.GetModel(registerVal25, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_ROUND_END_KILLCAM))
	local function __FUNC_9080_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_ROUND_END_KILLCAM)
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal24, __FUNC_9080_)
	registerVal25 = Engine.GetModelForController(arg0)
	registerVal24 = Engine.GetModel(registerVal25, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED))
	local function __FUNC_9210_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED)
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal24, __FUNC_9210_)
	registerVal25 = Engine.GetModelForController(arg0)
	registerVal24 = Engine.GetModel(registerVal25, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM))
	local function __FUNC_9399_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM)
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal24, __FUNC_9399_)
	local function __FUNC_9521_(arg0, arg1)
		local registerVal3 = ShouldBootUpHUD(registerVal1)
		if registerVal3 then
			PlaySoundSetSound(registerVal1, "hud_boot")
		end
		if not nil then
			registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("hud_boot", __FUNC_9521_)
	local function __FUNC_95F7_(arg1)
		local registerVal2 = IsParamModelEqualToString(arg1, "player_spawned")
		registerVal2 = IsInPrematchPeriod()
		if registerVal2 and registerVal2 then
			TryBootHUD(registerVal1, "1000")
		else
			registerVal2 = IsParamModelEqualToString(arg1, "player_spawned")
			registerVal2 = IsInPrematchPeriod()
			if registerVal2 and not registerVal2 then
				TryBootHUD(registerVal1, "0")
			else
				registerVal2 = IsParamModelEqualToString(arg1, "create_prematch_timer")
				if registerVal2 then
					CreatePrematchTimer(registerVal1, arg0, arg1)
				else
					registerVal2 = IsParamModelEqualToString(arg1, "prematch_waiting_for_players")
					if registerVal2 then
						PrematchWaitingForPlayers(registerVal1, arg0)
					end
				end
			end
		end
	end

	registerVal1:subscribeToGlobalModel(arg0, "PerController", "scriptNotify", __FUNC_95F7_)
	registerVal24 = {}
	registerVal24.name = "menu_loaded"
	registerVal24.controller = arg0
	registerVal1:processEvent(registerVal24)
	registerVal24 = {}
	registerVal24.name = "update_state"
	registerVal24.menu = registerVal1
	registerVal1:processEvent(registerVal24)
	local function __FUNC_97FD_(arg1)
		arg1.ArmorOverlayContainer0:close()
		arg1.vignettecornerright0:close()
		arg1.vignettecornerL:close()
		arg1.SafeAreaContainerBack:close()
		arg1.WaypointBase:close()
		arg1.interactPromptContainer:close()
		arg1.OutOfBounds:close()
		arg1.PlayerCardObituaryCallout:close()
		arg1.ThrustMeterBoot:close()
		arg1.Stuck:close()
		arg1.CursorHint:close()
		arg1.ShockCharge0:close()
		arg1.proximityAlarm:close()
		arg1.CaptureCrate:close()
		arg1.ThrustMeterContainer0:close()
		arg1.DeadSpectate:close()
		arg1.ConsoleCenter:close()
		arg1.SafeAreaContainerFront:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "T7Hud.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_97FD_)
	if __FUNC_95C_ then
		__FUNC_95C_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.T7Hud = __FUNC_4008_
