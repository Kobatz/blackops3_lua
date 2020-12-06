-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Shared.LuaEnums")
CoD.GameOptions = {}
local registerVal1 = InheritFrom(CoD.Menu)
CoD.GameOptionsMenu = registerVal1
function CoD.GameOptions.HardcoreSettingChanged(arg0, arg1)
	if arg0 == 0.000000 then
		local registerVal4 = Engine.GetGametypeSetting("allowKillcam", true)
		Engine.SetGametypeSetting("allowKillcam", registerVal4, false)
		registerVal4 = Engine.GetGametypeSetting("allowBattleChatter", true)
		Engine.SetGametypeSetting("allowBattleChatter", registerVal4, false)
		registerVal4 = Engine.GetGametypeSetting("playerMaxHealth", true)
		Engine.SetGametypeSetting("playerMaxHealth", registerVal4, false)
		registerVal4 = Engine.GetGametypeSetting("playerHealthRegenTime", true)
		Engine.SetGametypeSetting("playerHealthRegenTime", registerVal4, false)
		registerVal4 = Engine.GetGametypeSetting("friendlyfiretype", true)
		Engine.SetGametypeSetting("friendlyfiretype", registerVal4, false)
		registerVal4 = Engine.GetGametypeSetting("teamKillPointLoss", true)
		Engine.SetGametypeSetting("teamKillPointLoss", registerVal4, false)
		registerVal4 = Engine.GetGametypeSetting("teamKillPunishCount", true)
		Engine.SetGametypeSetting("teamKillPunishCount", registerVal4, false)
	else
		Engine.SetGametypeSetting("allowKillcam", 0.000000, false)
		Engine.SetGametypeSetting("allowBattlechatter", 0.000000, false)
		Engine.SetGametypeSetting("playerMaxHealth", 30.000000, false)
		Engine.SetGametypeSetting("playerHealthRegenTime", 0.000000, false)
		Engine.SetGametypeSetting("friendlyfiretype", 1.000000, false)
		Engine.SetGametypeSetting("teamKillPointLoss", 1.000000, false)
		Engine.SetGametypeSetting("teamKillPunishCount", 3.000000, false)
	end
end

local function __FUNC_7510_(arg0, arg1)
	if arg1 then
		if arg0.value == 0.000000 then
			Engine.SetGametypeSetting("roundLimit", 0.000000)
			Engine.SetGametypeSetting("roundWinLimit", 2.000000)
			Engine.SetGametypeSetting("scoreLimit", 3.000000)
		else
			Engine.SetGametypeSetting("roundLimit", 2.000000)
			Engine.SetGametypeSetting("roundWinLimit", 0.000000)
			Engine.SetGametypeSetting("scoreLimit", 0.000000)
		end
		CoD.GametypeSettingLeftRightSelector.SelectionChanged(arg0)
		local registerVal5 = {}
		registerVal5.name = "refresh_settings"
		arg0.parentSelectorButton:dispatchEventToParent(registerVal5)
	else
		CoD.GametypeSettingLeftRightSelector.SelectionChanged(arg0)
	end
end

local function __FUNC_77AB_()
	local registerVal0 = Engine.GetGametypeSetting("cumulativeRoundScores")
	if registerVal0 ~= 1.000000 then
	end
	return true
end

local function __FUNC_7850_()
	local registerVal0 = Engine.GetGametypeSetting("cumulativeRoundScores")
	if registerVal0 ~= 0.000000 then
	end
	return true
end

local function __FUNC_78F8_()
	local registerVal0 = Engine.GetGametypeSetting("loadoutKillstreaksEnabled", true)
	if registerVal0 ~= 1.000000 then
	end
	return true
end

local function __FUNC_79A8_()
	local registerVal0 = Engine.GetGametypeSetting("disableCAC")
	if registerVal0 ~= 0.000000 then
	end
	return true
end

local registerVal6 = {}
registerVal6 = {"MENU_ENABLED", "MENU_DISABLED"}
CoD.GameOptions.EnabledDisabledLabels = registerVal6
registerVal6 = {}
registerVal6 = {1.000000, 0.000000}
CoD.GameOptions.EnabledDisabledValues = registerVal6
registerVal6 = {}
local registerVal7 = {}
registerVal7.name = "MENU_ANNOUNCER"
local registerVal8 = {}
registerVal8 = {"MENU_ANNOUNCER_HINT"}
registerVal7.hintText = registerVal8
registerVal7.labels = CoD.GameOptions.EnabledDisabledLabels
registerVal7.values = CoD.GameOptions.EnabledDisabledValues
registerVal6.allowAnnouncer = registerVal7
registerVal7 = {}
registerVal7.name = "MENU_BATTLECHATTER"
registerVal8 = {}
registerVal8 = {"MENU_BATTLECHATTER_HINT"}
registerVal7.hintText = registerVal8
registerVal7.labels = CoD.GameOptions.EnabledDisabledLabels
registerVal7.values = CoD.GameOptions.EnabledDisabledValues
registerVal6.allowBattleChatter = registerVal7
registerVal7 = {}
registerVal7.name = "MENU_HIT_MARKERS"
registerVal8 = {}
registerVal8 = {"MENU_HIT_MARKERS_HINT"}
registerVal7.hintText = registerVal8
registerVal8 = {}
registerVal8 = {"MENU_DISABLED", "MENU_OFF_FOR_TACTICALS", "MENU_ENABLED"}
registerVal7.labels = registerVal8
registerVal8 = {}
registerVal8 = {0.000000, 1.000000, 2.000000}
registerVal7.values = registerVal8
registerVal6.allowhitmarkers = registerVal7
registerVal7 = {}
registerVal7.name = "MENU_INGAME_TEAM_CHANGE"
registerVal8 = {}
registerVal8 = {"MENU_INGAME_TEAM_CHANGE_HINT"}
registerVal7.hintText = registerVal8
registerVal7.labels = CoD.GameOptions.EnabledDisabledLabels
registerVal7.values = CoD.GameOptions.EnabledDisabledValues
registerVal6.allowInGameTeamChange = registerVal7
registerVal7 = {}
registerVal7.name = "MENU_ALLOW_KILLCAM"
registerVal8 = {}
registerVal8 = {"MENU_ALLOW_KILLCAM_HINT"}
registerVal7.hintText = registerVal8
registerVal7.labels = CoD.GameOptions.EnabledDisabledLabels
registerVal7.values = CoD.GameOptions.EnabledDisabledValues
registerVal6.allowKillcam = registerVal7
registerVal7 = {}
registerVal7.name = "MENU_ALLOW_MP_MAP_SCRIPTING"
registerVal8 = {}
registerVal8 = {"MENU_ALLOW_MP_MAP_SCRIPTING_HINT"}
registerVal7.hintText = registerVal8
registerVal7.labels = CoD.GameOptions.EnabledDisabledLabels
registerVal7.values = CoD.GameOptions.EnabledDisabledValues
registerVal6.allowMapScripting = registerVal7
registerVal7 = {}
registerVal7.name = "MENU_PRONE"
registerVal8 = {}
registerVal8 = {"MENU_PRONE_HINT"}
registerVal7.hintText = registerVal8
registerVal7.labels = CoD.GameOptions.EnabledDisabledLabels
registerVal7.values = CoD.GameOptions.EnabledDisabledValues
registerVal6.allowProne = registerVal7
registerVal7 = {}
registerVal7.name = "MENU_ALLOW_SHOUTCASTING"
registerVal8 = {}
registerVal8 = {"MENU_ALLOW_SHOUTCASTING_HINT"}
registerVal7.hintText = registerVal8
registerVal7.labels = CoD.GameOptions.EnabledDisabledLabels
registerVal7.values = CoD.GameOptions.EnabledDisabledValues
registerVal6.allowSpectating = registerVal7
registerVal7 = {}
registerVal7.name = "MENU_AUTO_DESTROY_TIME"
registerVal8 = {}
registerVal8 = {"MENU_AUTO_DESTROY_TIME_HINT"}
registerVal7.hintText = registerVal8
registerVal8 = {}
registerVal8 = {"MENU_UNLIMITED", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_1_MINUTE", "MENU_1_5_MINUTES", "MENU_2_MINUTES", "MENU_2_5_MINUTES", "MENU_3_MINUTES", "MENU_5_MINUTES"}
registerVal7.labels = registerVal8
registerVal8 = {}
registerVal8 = {0.000000, 30.000000, 45.000000, 60.000000, 90.000000, 120.000000, 150.000000, 180.000000, 300.000000}
registerVal7.values = registerVal8
registerVal6.autoDestroyTime = registerVal7
registerVal7 = {}
registerVal7.setting = "ballCount"
registerVal7.name = "MENU_BALL_COUNT"
registerVal8 = {}
registerVal8 = {"MENU_BALL_COUNT_HINT"}
registerVal7.hintText = registerVal8
registerVal8 = {}
registerVal8 = {"MENU_1_BALL", "MENU_X_BALLS"}
registerVal7.labels = registerVal8
registerVal8 = {}
registerVal8 = {1.000000, 2.000000, 3.000000, 4.000000, 5.000000}
registerVal7.values = registerVal8
registerVal6.ballCount = registerVal7
registerVal7 = {}
registerVal7.setting = "bootTime"
registerVal7.name = "MENU_BOOT_TIME"
registerVal8 = {}
registerVal8 = {"MENU_BOOT_TIME_HINT"}
registerVal7.hintText = registerVal8
registerVal8 = {}
registerVal8 = {"MENU_DISABLED", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS"}
registerVal7.labels = registerVal8
registerVal8 = {}
registerVal8 = {0.000000, 5.000000, 10.000000, 15.000000, 20.000000, 30.000000}
registerVal7.values = registerVal8
registerVal6.bootTime = registerVal7
registerVal7 = {}
registerVal7.name = "MENU_TEAM_ASSIGNMENT"
registerVal8 = {}
registerVal8 = {"MENU_TEAM_ASSIGNMENT_CLIENT_HINT", "MENU_TEAM_ASSIGNMENT_HOST_HINT", "MENU_TEAM_ASSIGNMENT_AUTO_HINT"}
registerVal7.hintText = registerVal8
registerVal8 = {}
registerVal8 = {"MENU_TEAM_ASSIGNMENT_CLIENT", "MENU_TEAM_ASSIGNMENT_HOST", "MENU_TEAM_ASSIGNMENT_AUTO"}
registerVal7.labels = registerVal8
registerVal8 = {}
registerVal8 = {LuaEnums.TEAM_ASSIGNMENT.CLIENT, LuaEnums.TEAM_ASSIGNMENT.HOST, LuaEnums.TEAM_ASSIGNMENT.AUTO}
registerVal7.values = registerVal8
registerVal6.teamAssignment = registerVal7
registerVal7 = {}
registerVal7.name = "MENU_BOMB_TIMER"
registerVal8 = {}
registerVal8 = {"MENU_BOMB_TIMER_HINT"}
registerVal7.hintText = registerVal8
registerVal8 = {}
registerVal8 = {"MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_1_MINUTE", "MENU_1_5_MINUTES", "MENU_2_MINUTES", "MENU_2_5_MINUTES"}
registerVal7.labels = registerVal8
registerVal8 = {}
registerVal8 = {2.500000, 5.000000, 7.500000, 10.000000, 15.000000, 20.000000, 30.000000, 45.000000, 60.000000, 90.000000, 120.000000, 150.000000}
registerVal7.values = registerVal8
registerVal6.bombTimer = registerVal7
registerVal7 = {}
registerVal7.setting = "carrierArmor"
registerVal7.name = "MENU_CARRIER_ARMOR"
registerVal8 = {}
registerVal8 = {"MENU_CARRIER_ARMOR_HINT"}
registerVal7.hintText = registerVal8
registerVal8 = {}
registerVal8 = {"MENU_DISABLED", "MENU_NORMAL", "MENU_DOUBLE", "MENU_HALF"}
registerVal7.labels = registerVal8
registerVal8 = {}
registerVal8 = {0.000000, 100.000000, 200.000000, 50.000000}
registerVal7.values = registerVal8
registerVal6.carrierArmor = registerVal7
registerVal7 = {}
registerVal7.setting = "carryScore"
registerVal7.name = "MENU_CARRY_SCORE"
registerVal8 = {}
registerVal8 = {"MENU_CARRY_SCORE_HINT"}
registerVal7.hintText = registerVal8
registerVal8 = {}
registerVal8 = {"MENU_1_POINT", "MENU_X_POINTS"}
registerVal7.labels = registerVal8
registerVal8 = {}
registerVal8 = {1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 6.000000, 7.000000, 8.000000, 9.000000}
registerVal7.values = registerVal8
registerVal6.carryScore = registerVal7
registerVal7 = {}
registerVal7.name = "MENU_DESTROY_TIME"
registerVal8 = {}
registerVal8 = {"MENU_DESTROY_TIME_HINT"}
registerVal7.hintText = registerVal8
registerVal8 = {}
registerVal8 = {"MENU_1_SECOND", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_1_MINUTE"}
registerVal7.labels = registerVal8
registerVal8 = {}
registerVal8 = {1.000000, 2.500000, 5.000000, 7.500000, 10.000000, 15.000000, 20.000000, 30.000000, 60.000000}
registerVal7.values = registerVal8
registerVal6.destroyTime = registerVal7
registerVal7 = {}
registerVal7.name = "MENU_CAPTURE_TIME"
registerVal8 = {}
registerVal8 = {"MENU_CAPTURE_TIME_HINT"}
registerVal7.hintText = registerVal8
registerVal8 = {}
registerVal8 = {"MENU_1_SECOND", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_1_MINUTE"}
registerVal7.labels = registerVal8
registerVal8 = {}
registerVal8 = {1.000000, 2.500000, 5.000000, 7.500000, 10.000000, 15.000000, 20.000000, 30.000000, 60.000000}
registerVal7.values = registerVal8
registerVal6.captureTime = registerVal7
registerVal7 = {}
registerVal7.setting = "captureTime"
registerVal7.name = "MENU_CAPTURE_TIME"
registerVal8 = {}
registerVal8 = {"MENU_CAPTURE_TIME_HINT"}
registerVal7.hintText = registerVal8
registerVal8 = {}
registerVal8 = {"MENU_DISABLED", "MENU_1_SECOND", "MENU_X_SECONDS"}
registerVal7.labels = registerVal8
registerVal8 = {}
registerVal8 = {0.000000, 1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 6.000000, 7.000000, 8.000000, 9.000000, 10.000000}
registerVal7.values = registerVal8
registerVal6.captureTime_koth = registerVal7
registerVal7 = {}
registerVal7.setting = "captureTime"
registerVal7.name = "MENU_PICKUP_TIME"
registerVal8 = {}
registerVal8 = {"MENU_PICKUP_TIME_HINT"}
registerVal7.hintText = registerVal8
registerVal8 = {}
registerVal8 = {"MENU_INSTANT", "MENU_X_SECONDS", "MENU_1_SECOND", "MENU_X_SECONDS"}
registerVal7.labels = registerVal8
registerVal8 = {}
registerVal8 = {0.000000, 0.500000, 1.000000, 1.500000, 2.000000, 2.500000, 3.000000, 4.000000, 5.000000, 6.000000, 7.000000, 8.000000, 9.000000, 10.000000}
registerVal7.values = registerVal8
registerVal6.captureTime_ctf = registerVal7
registerVal7 = {}
registerVal7.name = "MENU_DEFUSE_TIME"
registerVal8 = {}
registerVal8 = {"MENU_DEFUSE_TIME_HINT"}
registerVal7.hintText = registerVal8
registerVal8 = {}
registerVal8 = {"MENU_1_SECOND", "MENU_X_SECONDS"}
registerVal7.labels = registerVal8
registerVal8 = {}
registerVal8 = {1.000000, 2.500000, 3.000000, 3.500000, 4.000000, 4.500000, 5.000000, 5.500000, 6.000000, 6.500000, 7.000000, 7.500000, 8.000000, 8.500000, 9.000000, 9.500000, 10.000000}
registerVal7.values = registerVal8
registerVal6.defuseTime = registerVal7
registerVal7 = {}
registerVal7.name = "MENU_DISABLE_CAC"
registerVal8 = {}
registerVal8 = {"MENU_DISABLE_CAC_HINT"}
registerVal7.hintText = registerVal8
registerVal8 = {}
registerVal8 = {"MENU_ENABLED", "MENU_DISABLED"}
registerVal7.labels = registerVal8
registerVal8 = {}
registerVal8 = {0.000000, 1.000000}
registerVal7.values = registerVal8
registerVal6.disableCAC = registerVal7
registerVal7 = {}
registerVal7.name = "MENU_DISABLE_THIRD_PERSON_SPECTATING"
registerVal8 = {}
registerVal8 = {"MENU_DISABLE_THIRD_PERSON_SPECTATING_HINT"}
registerVal7.hintText = registerVal8
registerVal8 = {}
registerVal8 = {"MENU_ENABLED", "MENU_DISABLED"}
registerVal7.labels = registerVal8
registerVal8 = {}
registerVal8 = {0.000000, 1.000000}
registerVal7.values = registerVal8
registerVal6.disableThirdPersonSpectating = registerVal7
registerVal7 = {}
registerVal7.name = "MENU_VEHICLE_SPAWNERS"
registerVal8 = {}
registerVal8 = {"MENU_VEHICLE_SPAWNERS_HINT"}
registerVal7.hintText = registerVal8
registerVal8 = {}
registerVal8 = {"MENU_ENABLED", "MENU_DISABLED"}
registerVal7.labels = registerVal8
registerVal8 = {}
registerVal8 = {0.000000, 1.000000}
registerVal7.values = registerVal8
registerVal6.disableVehicleSpawners = registerVal7
registerVal7 = {}
registerVal7.name = "MENU_DOG_TAGS"
registerVal8 = {}
registerVal8 = {"MENU_DOG_TAGS_HINT"}
registerVal7.hintText = registerVal8
registerVal7.labels = CoD.GameOptions.EnabledDisabledLabels
registerVal7.values = CoD.GameOptions.EnabledDisabledValues
registerVal6.droppedTagRespawn = registerVal7
registerVal7 = {}
registerVal7.name = "MENU_ENEMY_CARRIER"
registerVal8 = {}
registerVal8 = {"MENU_ENEMY_CARRIER_HINT"}
registerVal7.hintText = registerVal8
registerVal8 = {}
registerVal8 = {"MENU_DISABLED", "MENU_ENABLED", "MENU_DELAYED"}
registerVal7.labels = registerVal8
registerVal8 = {}
registerVal8 = {0.000000, 1.000000, 2.000000}
registerVal7.values = registerVal8
registerVal6.enemyCarrierVisible = registerVal7
registerVal7 = {}
registerVal7.name = "MENU_EXTRA_TIME"
registerVal8 = {}
registerVal8 = {"MENU_EXTRA_TIME_HINT"}
registerVal7.hintText = registerVal8
registerVal8 = {}
registerVal8 = {"MENU_DISABLED", "MENU_30_SECONDS", "MENU_1_MINUTE", "MENU_X_MINUTES"}
registerVal7.labels = registerVal8
registerVal8 = {}
registerVal8 = {0.000000, 0.500000, 1.000000, 1.500000, 2.000000, 2.500000, 3.000000, 3.500000, 4.000000, 4.500000, 5.000000}
registerVal7.values = registerVal8
registerVal6.extraTime = registerVal7
registerVal7 = {}
registerVal7.name = "MENU_FLAG_CAPTURE_CONDITION"
registerVal8 = {}
registerVal8 = {"MENU_FLAG_CAPTURE_CONDITION_HINT"}
registerVal7.hintText = registerVal8
registerVal8 = {}
registerVal8 = {"MENU_DISABLED", "MENU_FLAG_AT_BASE"}
registerVal7.labels = registerVal8
registerVal8 = {}
registerVal8 = {0.000000, 1.000000}
registerVal7.values = registerVal8
registerVal6.flagCaptureCondition = registerVal7
registerVal7 = {}
registerVal7.setting = "flagCanBeNeutralized"
registerVal7.name = "MENU_FLAG_CAN_BE_NEUTRALIZED"
registerVal8 = {}
registerVal8 = {"MENU_FLAG_CAN_BE_NEUTRALIZED_HINT"}
registerVal7.hintText = registerVal8
registerVal7.labels = CoD.GameOptions.EnabledDisabledLabels
registerVal7.values = CoD.GameOptions.EnabledDisabledValues
registerVal6.flagCanBeNeutralized = registerVal7
registerVal7 = {}
registerVal7.name = "MENU_FLAG_RESPAWN_TIME"
registerVal8 = {}
registerVal8 = {"MENU_FLAG_RESPAWN_TIME_HINT"}
registerVal7.hintText = registerVal8
registerVal8 = {}
registerVal8 = {"MENU_1_SECOND", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_1_MINUTE"}
registerVal7.labels = registerVal8
registerVal8 = {}
registerVal8 = {1.000000, 5.000000, 10.000000, 15.000000, 20.000000, 30.000000, 40.000000, 50.000000, 60.000000}
registerVal7.values = registerVal8
registerVal6.flagRespawnTime = registerVal7
registerVal7 = {}
registerVal7.name = "MENU_RADAR_ALWAYS_ON"
registerVal8 = {}
registerVal8 = {"MENU_RADAR_ALWAYS_ON_HINT"}
registerVal7.hintText = registerVal8
registerVal8 = {}
registerVal8 = {"MENU_NORMAL", "MENU_SWEEPING", "MENU_CONSTANT"}
registerVal7.labels = registerVal8
registerVal8 = {}
registerVal8 = {0.000000, 1.000000, 2.000000}
registerVal7.values = registerVal8
registerVal6.forceRadar = registerVal7
registerVal7 = {}
registerVal7.name = "MENU_FRIENDLYFIRE"
registerVal8 = {}
registerVal8 = {"MENU_FRIENDLYFIRE_HINT", "MENU_FRIENDLYFIRE_HINT", "MENU_FRIENDLYFIRE_REFLECT_HINT", "MENU_FRIENDLYFIRE_SHARED_HINT"}
registerVal7.hintText = registerVal8
registerVal8 = {}
registerVal8 = {"MENU_DISABLED", "MENU_ENABLED", "MPUI_REFLECT", "MENU_SHARED"}
registerVal7.labels = registerVal8
registerVal8 = {}
registerVal8 = {0.000000, 1.000000, 2.000000, 3.000000}
registerVal7.values = registerVal8
registerVal7.shouldShow = CoDShared.IsGametypeTeamBased
registerVal6.friendlyfiretype = registerVal7
registerVal7 = {}
registerVal7.name = "MENU_GUNLIST"
registerVal8 = {}
registerVal8 = {"MENU_GUNLIST_NORMAL_HINT", "MENU_GUNLIST_CQB_HINT", "MENU_GUNLIST_MARKSMAN_HINT", "MENU_GUNLIST_RANDOM_HINT"}
registerVal7.hintText = registerVal8
registerVal8 = {}
registerVal8 = {"MENU_GUNLIST_NORMAL", "MENU_GUNLIST_CQB", "MENU_GUNLIST_MARKSMAN", "MENU_GUNLIST_RANDOM"}
registerVal7.labels = registerVal8
registerVal8 = {}
registerVal8 = {0.000000, 1.000000, 2.000000, 3.000000}
registerVal7.values = registerVal8
registerVal6.gunSelection = registerVal7
registerVal7 = {}
registerVal7.setting = "gunSelection"
registerVal7.name = "MENU_SETBACK_WEAPON"
registerVal8 = {}
registerVal8 = {"MENU_SETBACK_WEAPON_HINT"}
registerVal7.hintText = registerVal8
registerVal8 = {}
registerVal8 = {"MENU_NONE", "WEAPON_HATCHET", "WEAPON_CROSSBOW", "WEAPON_KNIFE_BALLISTIC"}
registerVal7.labels = registerVal8
registerVal8 = {}
registerVal8 = {0.000000, 1.000000, 2.000000, 3.000000}
registerVal7.values = registerVal8
registerVal6.gunSelection_sas = registerVal7
registerVal7 = {}
registerVal7.name = "MENU_RULES_HARDCORE"
registerVal8 = {}
registerVal8 = {"MENU_RULES_HARDCORE_HINT"}
registerVal7.hintText = registerVal8
registerVal7.labels = CoD.GameOptions.EnabledDisabledLabels
registerVal7.values = CoD.GameOptions.EnabledDisabledValues
registerVal7.callback = HardcoreSettingChanged
registerVal6.hardcoreMode = registerVal7
registerVal7 = {}
registerVal7.name = "MENU_FLAG_RETURN_TIME"
registerVal8 = {}
registerVal8 = {"MENU_FLAG_RETURN_TIME_HINT"}
registerVal7.hintText = registerVal8
registerVal8 = {}
registerVal8 = {"MENU_UNLIMITED", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_1_MINUTE"}
registerVal7.labels = registerVal8
registerVal8 = {}
registerVal8 = {0.000000, 5.000000, 10.000000, 15.000000, 20.000000, 30.000000, 40.000000, 50.000000, 60.000000}
registerVal7.values = registerVal8
registerVal6.idleFlagResetTime = registerVal7
registerVal7 = {}
registerVal7.name = "MENU_INCREMENTAL_SPAWN_DELAY"
registerVal8 = {}
registerVal8 = {"MENU_INCREMENTAL_SPAWN_DELAY_HINT"}
registerVal7.hintText = registerVal8
registerVal8 = {}
registerVal8 = {"MENU_DISABLED", "MENU_1_SECOND", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_1_MINUTE"}
registerVal7.labels = registerVal8
registerVal8 = {}
registerVal8 = {0.000000, 1.000000, 2.000000, 2.500000, 3.000000, 4.000000, 5.000000, 6.000000, 7.000000, 8.000000, 9.000000, 10.000000, 15.000000, 30.000000, 40.000000, 50.000000, 60.000000}
registerVal7.values = registerVal8
registerVal6.incrementalSpawnDelay = registerVal7
registerVal7 = {}
registerVal7.setting = "idleFlagResetTime"
registerVal7.name = "MENU_BALL_RETURN_TIME"
registerVal8 = {}
registerVal8 = {"MENU_BALL_RETURN_TIME_HINT"}
registerVal7.hintText = registerVal8
registerVal8 = {}
registerVal8 = {"MENU_INSTANT", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_1_MINUTE"}
registerVal7.labels = registerVal8
registerVal8 = {}
registerVal8 = {0.000000, 5.000000, 10.000000, 15.000000, 30.000000, 45.000000, 60.000000}
registerVal7.values = registerVal8
registerVal6.idleFlagResetTime_ball = registerVal7
registerVal7 = {}
registerVal7.name = "MENU_SCORE_MULTIPLIER"
registerVal8 = {}
registerVal8 = {"MENU_SCORE_MULTIPLIER_HINT"}
registerVal7.hintText = registerVal8
registerVal8 = {}
registerVal8 = {1.000000, 1.500000, 2.000000, 2.500000, 3.000000, 3.500000, 4.000000, 4.500000, 5.000000}
registerVal7.values = registerVal8
registerVal6.killEventScoreMultiplier = registerVal7
registerVal7 = {}
registerVal7.name = "MENU_SCORESTREAKS"
registerVal8 = {}
registerVal8 = {"MENU_SCORESTREAKS_HINT"}
registerVal7.hintText = registerVal8
registerVal7.labels = CoD.GameOptions.EnabledDisabledLabels
registerVal7.values = CoD.GameOptions.EnabledDisabledValues
registerVal7.shouldShow = __FUNC_78F8_
registerVal6.loadoutKillstreaksEnabled = registerVal7
registerVal7 = {}
registerVal7.name = "MENU_SCORESTREAK_TEAM_SCORING"
registerVal8 = {}
registerVal8 = {"MENU_SCORESTREAK_TEAM_SCORING_HINT"}
registerVal7.hintText = registerVal8
registerVal7.labels = CoD.GameOptions.EnabledDisabledLabels
registerVal7.values = CoD.GameOptions.EnabledDisabledValues
registerVal6.killstreaksGiveGameScore = registerVal7
registerVal7 = {}
registerVal7.name = "MENU_MAX_ALLOCATION"
registerVal8 = {}
registerVal8 = {"MENU_MAX_ALLOCATION_HINT"}
registerVal7.hintText = registerVal8
registerVal8 = {}
registerVal8 = {3.000000, 4.000000, 5.000000, 6.000000, 7.000000, 8.000000, 9.000000, 10.000000, 11.000000, 12.000000, 13.000000, 14.000000, 15.000000, 16.000000, 17.000000}
registerVal7.values = registerVal8
registerVal7.shouldShow = __FUNC_79A8_
registerVal6.maxAllocation = registerVal7
registerVal7 = {}
registerVal7.name = "MENU_MULTI_BOMB"
registerVal8 = {}
registerVal8 = {"MENU_MULTI_BOMB_HINT"}
registerVal7.hintText = registerVal8
registerVal7.labels = CoD.GameOptions.EnabledDisabledLabels
registerVal7.values = CoD.GameOptions.EnabledDisabledValues
registerVal6.multiBomb = registerVal7
registerVal7 = {}
registerVal7.name = "MENU_OBJECTIVE_SPAWN_TIME"
registerVal8 = {}
registerVal8 = {"MENU_OBJECTIVE_SPAWN_TIME_HINT"}
registerVal7.hintText = registerVal8
registerVal8 = {}
registerVal8 = {"MENU_DISABLED", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_1_MINUTE"}
registerVal7.labels = registerVal8
registerVal8 = {}
registerVal8 = {0.000000, 5.000000, 10.000000, 15.000000, 30.000000, 45.000000, 60.000000}
registerVal7.values = registerVal8
registerVal6.objectiveSpawnTime = registerVal7
registerVal7 = {}
registerVal7.name = "MENU_HEADSHOTSONLY"
registerVal8 = {}
registerVal8 = {"MENU_HEADSHOTSONLY_HINT"}
registerVal7.hintText = registerVal8
registerVal7.labels = CoD.GameOptions.EnabledDisabledLabels
registerVal7.values = CoD.GameOptions.EnabledDisabledValues
registerVal6.onlyHeadshots = registerVal7
registerVal7 = {}
registerVal7.name = "MENU_OVERTIME_TIME_LIMIT1"
registerVal8 = {}
registerVal8 = {"MENU_OVERTIME_TIME_LIMIT_HINT"}
registerVal7.hintText = registerVal8
registerVal8 = {}
registerVal8 = {"MENU_UNLIMITED", "MENU_1_MINUTE", "MENU_X_MINUTES"}
registerVal7.labels = registerVal8
registerVal8 = {}
registerVal8 = {0.000000, 1.000000, 1.500000, 2.000000, 2.500000, 3.000000, 4.000000, 5.000000, 6.000000, 7.000000, 8.000000, 9.000000, 10.000000, 11.000000, 12.000000, 13.000000, 14.000000, 15.000000, 20.000000, 30.000000}
registerVal7.values = registerVal8
registerVal6.OvertimetimeLimit = registerVal7
registerVal7 = {}
registerVal7.name = "MENU_PLANT_TIME"
registerVal8 = {}
registerVal8 = {"MENU_PLANT_TIME_HINT"}
registerVal7.hintText = registerVal8
registerVal8 = {}
registerVal8 = {"MENU_1_SECOND", "MENU_X_SECONDS"}
registerVal7.labels = registerVal8
registerVal8 = {}
registerVal8 = {1.000000, 2.500000, 3.000000, 3.500000, 4.000000, 4.500000, 5.000000, 5.500000, 6.000000, 6.500000, 7.000000, 7.500000, 8.000000, 8.500000, 9.000000, 9.500000, 10.000000}
registerVal7.values = registerVal8
registerVal6.plantTime = registerVal7
registerVal7 = {}
registerVal7.name = "MENU_FORCE_RESPAWN"
registerVal8 = {}
registerVal8 = {"MENU_FORCE_RESPAWN_HINT"}
registerVal7.hintText = registerVal8
registerVal7.labels = CoD.GameOptions.EnabledDisabledLabels
registerVal7.values = CoD.GameOptions.EnabledDisabledValues
registerVal6.playerForceRespawn = registerVal7
registerVal7 = {}
registerVal7.name = "MENU_HEALTH_REGENERATION"
registerVal8 = {}
registerVal8 = {"MENU_HEALTH_REGENERATION_HINT"}
registerVal7.hintText = registerVal8
registerVal8 = {}
registerVal8 = {"MENU_DISABLED", "MENU_SLOW", "MENU_NORMAL", "MENU_FAST"}
registerVal7.labels = registerVal8
registerVal8 = {}
registerVal8 = {0.000000, 10.000000, 5.000000, 2.000000}
registerVal7.values = registerVal8
registerVal6.playerHealthRegenTime = registerVal7
registerVal8 = {}
registerVal8.name = "CGAME_HEALTH"
local registerVal9 = {}
registerVal9 = {"MENU_HEALTH_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_HEALTH_X_PERCENT"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {30.000000, 35.000000, 40.000000, 45.000000, 50.000000, 55.000000, 60.000000, 65.000000, 70.000000, 75.000000, 80.000000, 85.000000, 90.000000, 95.000000, 100.000000, 110.000000, 120.000000, 125.000000, 130.000000, 140.000000, 150.000000, 160.000000, 170.000000, 175.000000, 180.000000, 190.000000, 200.000000}
registerVal8.values = registerVal9
registerVal6["playerMaxHealth"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_NUMBER_OF_LIVES"
registerVal9 = {}
registerVal9 = {"MENU_NUMBER_OF_LIVES_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_UNLIMITED", "MENU_1_LIFE", "MENU_X_LIVES"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 6.000000, 7.000000, 8.000000, 9.000000, 10.000000, 15.000000, 20.000000, 25.000000}
registerVal8.values = registerVal9
registerVal6["playerNumLives"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_RESPAWN_DELAY"
registerVal9 = {}
registerVal9 = {"MENU_RESPAWN_DELAY_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_DISABLED", "MENU_1_SECOND", "MENU_X_SECONDS"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 1.000000, 2.000000, 2.500000, 3.000000, 4.000000, 5.000000, 6.000000, 7.000000, 7.500000, 8.000000, 9.000000, 10.000000, 15.000000, 20.000000, 30.000000}
registerVal8.values = registerVal9
registerVal6["playerRespawnDelay"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_POINTS_FOR_SURVIVAL_BONUS"
registerVal9 = {}
registerVal9 = {"MENU_POINTS_FOR_SURVIVAL_BONUS_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_X_POINTS", "MENU_1_POINT", "MENU_X_POINTS"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 10.000000, 15.000000, 20.000000, 25.000000}
registerVal8.values = registerVal9
registerVal6["pointsForSurvivalBonus"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_POINTS_PER_PRIMARY_KILL"
registerVal9 = {}
registerVal9 = {"MENU_POINTS_PER_PRIMARY_KILL_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_X_POINTS", "MENU_1_POINT", "MENU_X_POINTS"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 10.000000, 25.000000}
registerVal8.values = registerVal9
registerVal6["pointsPerPrimaryKill"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_POINTS_PER_SECONDARY_KILL"
registerVal9 = {}
registerVal9 = {"MENU_POINTS_PER_SECONDARY_KILL_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_X_POINTS", "MENU_1_POINT", "MENU_X_POINTS"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 10.000000, 25.000000}
registerVal8.values = registerVal9
registerVal6["pointsPerSecondaryKill"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_POINTS_PER_PRIMARY_GRENADE_KILL"
registerVal9 = {}
registerVal9 = {"MENU_POINTS_PER_PRIMARY_GRENADE_KILL_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_X_POINTS", "MENU_1_POINT", "MENU_X_POINTS"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 10.000000, 25.000000}
registerVal8.values = registerVal9
registerVal6["pointsPerPrimaryGrenadeKill"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_POINTS_PER_MELEE_KILL"
registerVal9 = {}
registerVal9 = {"MENU_POINTS_PER_MELEE_KILL_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_X_POINTS", "MENU_1_POINT", "MENU_X_POINTS"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 10.000000, 15.000000, 20.000000, 25.000000}
registerVal8.values = registerVal9
registerVal6["pointsPerMeleeKill"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_POINTS_PER_WEAPON_KILL"
registerVal9 = {}
registerVal9 = {"MENU_POINTS_PER_WEAPON_KILL_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_X_POINTS", "MENU_1_POINT", "MENU_X_POINTS"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 10.000000, 15.000000, 20.000000, 25.000000}
registerVal8.values = registerVal9
registerVal6["pointsPerWeaponKill"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_PREMATCH_REQUIREMENT"
registerVal9 = {}
registerVal9 = {"MENU_PREMATCH_REQUIREMENT_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_DISABLED", "MENU_1_PLAYER", "MENU_X_PLAYERS"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 6.000000, 7.000000, 8.000000, 9.000000}
registerVal8.values = registerVal9
registerVal6["prematchrequirement"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_PREMATCH_REQUIREMENT_TIME"
registerVal9 = {}
registerVal9 = {"MENU_PREMATCH_REQUIREMENT_TIME_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_DISABLED", "MENU_X_SECONDS"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 15.000000, 30.000000, 45.000000, 60.000000}
registerVal8.values = registerVal9
registerVal6["prematchrequirementtime"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_PREMATCH_TIMER"
registerVal9 = {}
registerVal9 = {"MENU_PREMATCH_TIMER_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_X_SECONDS"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {15.000000, 30.000000, 45.000000, 60.000000}
registerVal8.values = registerVal9
registerVal6["prematchperiod"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_PREROUND_TIMER"
registerVal9 = {}
registerVal9 = {"MENU_PREROUND_TIMER_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_DISABLED", "MENU_1_SECOND", "MENU_X_SECONDS"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 6.000000, 7.000000, 8.000000, 9.000000, 10.000000, 12.000000, 15.000000, 18.000000, 20.000000, 25.000000, 30.000000}
registerVal8.values = registerVal9
registerVal6["preroundperiod"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_PRESET_CLASSES_PER_TEAM"
registerVal9 = {}
registerVal9 = {"MENU_PRESET_CLASSES_PER_TEAM_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_GLOBAL", "MENU_PER_TEAM"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 1.000000}
registerVal8.values = registerVal9
registerVal6["presetClassesPerTeam"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_RANDOM_OBJECTIVE_LOCATIONS"
registerVal9 = {}
registerVal9 = {"MENU_RANDOM_OBJECTIVE_LOCATIONS_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_LINEAR", "MENU_RANDOM_AFTER_FIRST", "MENU_RANDOM"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 2.000000, 1.000000}
registerVal8.values = registerVal9
registerVal6["randomObjectiveLocations"] = registerVal8
registerVal8 = {}
registerVal8.setting = "randomObjectiveLocations"
registerVal8.name = "MENU_RANDOM_OBJECTIVE_LOCATIONS"
registerVal9 = {}
registerVal9 = {"MENU_RANDOM_OBJECTIVE_LOCATIONS_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_LINEAR", "MENU_RANDOM_AFTER_FIRST"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 2.000000}
registerVal8.values = registerVal9
registerVal6["randomObjectiveLocations_koth"] = registerVal8
registerVal8 = {}
registerVal8.setting = "rebootPlayers"
registerVal8.name = "MENU_REBOOT_PLAYERS"
registerVal9 = {}
registerVal9 = {"MENU_REBOOT_AUTO_HINT", "MENU_REBOOT_INTERACTIVE_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_AUTO", "MENU_INTERACTIVE"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 1.000000}
registerVal8.values = registerVal9
registerVal6["rebootPlayers"] = registerVal8
registerVal8 = {}
registerVal8.setting = "rebootTime"
registerVal8.name = "MENU_REBOOT_TIME"
registerVal9 = {}
registerVal9 = {"MENU_REBOOT_TIME_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_X_SECONDS"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 6.000000, 7.000000, 8.000000, 9.000000, 10.000000, 15.000000, 20.000000, 25.000000, 30.000000, 45.000000, 60.000000}
registerVal8.values = registerVal9
registerVal6["rebootTime"] = registerVal8
registerVal8 = {}
registerVal8.setting = "robotSpeed"
registerVal8.name = "MENU_ROBOT_SPEED"
registerVal9 = {}
registerVal9 = {"MENU_ROBOT_SPEED_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_SLOW", "MENU_NORMAL", "MENU_FAST"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 1.000000, 2.000000}
registerVal8.values = registerVal9
registerVal6["robotSpeed"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_ROUND_LIMIT1"
registerVal9 = {}
registerVal9 = {"MENU_ROUND_LIMIT_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_UNLIMITED", "MENU_1_ROUND", "MENU_X_ROUNDS"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 6.000000, 7.000000, 8.000000, 9.000000}
registerVal8.values = registerVal9
registerVal6["roundLimit"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_WIN_RULE"
registerVal9 = {}
registerVal9 = {"MENU_TOTAL_FLAG_CAPS_HINT", "MENU_CTF_ROUND_WINS_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_TOTAL_FLAG_CAPTURES", "MENU_ROUND_WINS"}
registerVal8.labels = registerVal9
registerVal8.values = CoD.GameOptions.EnabledDisabledValues
registerVal8.callback = __FUNC_7510_
registerVal6["cumulativeRoundScores"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_ROUND_SWITCH"
registerVal9 = {}
registerVal9 = {"MENU_ROUND_SWITCH_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_DISABLED", "MENU_EVERY_ROUND", "MENU_EVERY_X_ROUNDS"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 1.000000, 2.000000, 3.000000, 4.000000}
registerVal8.values = registerVal9
registerVal6["roundswitch"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_EXPLOSIVE_DELAY"
registerVal9 = {}
registerVal9 = {"MENU_EXPLOSIVE_DELAY_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_DISABLED", "MENU_1_SECOND", "MENU_X_SECONDS"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 6.000000, 7.000000, 8.000000, 9.000000, 10.000000, 12.000000, 15.000000, 20.000000, 25.000000, 30.000000, 45.000000, 60.000000}
registerVal8.values = registerVal9
registerVal6["roundStartExplosiveDelay"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_KILLSTREAK_DELAY"
registerVal9 = {}
registerVal9 = {"MENU_KILLSTREAK_DELAY_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_DISABLED", "MENU_1_SECOND", "MENU_X_SECONDS"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 6.000000, 7.000000, 8.000000, 9.000000, 10.000000, 12.000000, 15.000000, 20.000000, 25.000000, 30.000000, 45.000000, 60.000000}
registerVal8.values = registerVal9
registerVal6["roundStartKillstreakDelay"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_ROUND_WIN_LIMIT"
registerVal9 = {}
registerVal9 = {"MENU_ROUND_WIN_LIMIT_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_UNLIMITED", "MENU_X_ROUNDS"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 6.000000, 7.000000, 8.000000, 9.000000}
registerVal8.values = registerVal9
registerVal6["roundWinLimit"] = registerVal8
registerVal8 = {}
registerVal8.setting = "roundWinLimit"
registerVal8.name = "MENU_ROUND_WIN_LIMIT"
registerVal9 = {}
registerVal9 = {"MENU_ROUND_WIN_LIMIT_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_UNLIMITED", "MENU_1_ROUND", "MENU_X_ROUNDS"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 6.000000, 7.000000, 8.000000, 9.000000}
registerVal8.values = registerVal9
registerVal8.shouldShow = __FUNC_7850_
registerVal6["roundWinLimit_ctf"] = registerVal8
registerVal8 = {}
registerVal8.setting = "roundWinLimit"
registerVal8.name = "MENU_ROUND_WIN_LIMIT"
registerVal9 = {}
registerVal9 = {"MENU_ROUND_WIN_LIMIT_HINT_DM"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_UNLIMITED", "MENU_1_ROUND", "MENU_X_ROUNDS"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 6.000000, 7.000000, 8.000000, 9.000000}
registerVal8.values = registerVal9
registerVal8.shouldShow = __FUNC_7850_
registerVal6["roundWinLimit_dm"] = registerVal8
registerVal8 = {}
registerVal8.setting = "roundWinLimit"
registerVal8.name = "MENU_ROUND_WIN_LIMIT"
registerVal9 = {}
registerVal9 = {"MENU_ROUND_WIN_LIMIT_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_UNLIMITED", "MENU_1_ROUND", "MENU_X_ROUNDS"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 6.000000, 7.000000, 8.000000, 9.000000, 10.000000, 12.000000, 24.000000}
registerVal8.values = registerVal9
registerVal6["roundWinLimit_escort"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_SCORE_LIMIT"
registerVal9 = {}
registerVal9 = {"MENU_SCORE_LIMIT_OPTION"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_UNLIMITED", "MENU_X_POINTS"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 5.000000, 10.000000, 15.000000, 20.000000, 25.000000, 30.000000, 35.000000, 40.000000, 45.000000, 50.000000, 55.000000, 60.000000, 65.000000, 70.000000, 75.000000, 80.000000, 85.000000, 90.000000, 95.000000, 100.000000, 125.000000, 150.000000, 175.000000, 200.000000, 225.000000, 250.000000, 275.000000, 300.000000, 350.000000, 400.000000, 450.000000, 500.000000, 550.000000, 600.000000, 650.000000, 700.000000, 750.000000, 800.000000, 850.000000, 900.000000, 950.000000, 1000.000000}
registerVal8.values = registerVal9
registerVal6["scoreLimit"] = registerVal8
registerVal8 = {}
registerVal8.setting = "scoreLimit"
registerVal8.name = "MENU_ROUND_WIN_LIMIT"
registerVal9 = {}
registerVal9 = {"MENU_ROUND_WIN_LIMIT_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_1_ROUND", "MENU_X_ROUNDS"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 6.000000, 7.000000, 8.000000, 9.000000, 10.000000, 12.000000, 24.000000}
registerVal8.values = registerVal9
registerVal6["scoreLimit_sd_dem"] = registerVal8
registerVal8 = {}
registerVal8.setting = "scoreLimit"
registerVal8.name = "MENU_SCORE_LIMIT"
registerVal9 = {}
registerVal9 = {"MENU_SCORE_LIMIT_OPTION"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_UNLIMITED", "MENU_X_POINTS"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 50.000000, 100.000000, 110.000000, 120.000000, 130.000000, 140.000000, 150.000000, 200.000000, 250.000000, 300.000000, 350.000000, 400.000000, 450.000000, 500.000000, 750.000000, 1000.000000, 1500.000000, 2000.000000}
registerVal8.values = registerVal9
registerVal6["scoreLimit_dom"] = registerVal8
registerVal8 = {}
registerVal8.setting = "scoreLimit"
registerVal8.name = "MENU_CAPTURE_LIMIT"
registerVal9 = {}
registerVal9 = {"MENU_CAPTURE_LIMIT_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_UNLIMITED", "MENU_1_FLAG", "MENU_X_FLAGS"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 1.000000, 3.000000, 5.000000, 10.000000, 15.000000, 30.000000}
registerVal8.values = registerVal9
registerVal8.shouldShow = __FUNC_77AB_
registerVal6["scoreLimit_ctf"] = registerVal8
registerVal8 = {}
registerVal8.setting = "scoreLimit"
registerVal8.name = "MENU_CAPTURE_LIMIT"
registerVal9 = {}
registerVal9 = {"MENU_ROUND_CAPTURE_LIMIT_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_UNLIMITED", "MENU_1_FLAG", "MENU_X_FLAGS"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 1.000000, 3.000000, 5.000000, 10.000000, 15.000000, 30.000000}
registerVal8.values = registerVal9
registerVal8.shouldShow = __FUNC_7850_
registerVal6["scoreLimit_ctfRound"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_SCORE_RESET_ON_DEATH"
registerVal9 = {}
registerVal9 = {"MENU_SCORE_RESET_ON_DEATH_HINT"}
registerVal8.hintText = registerVal9
registerVal8.labels = CoD.GameOptions.EnabledDisabledLabels
registerVal8.values = CoD.GameOptions.EnabledDisabledValues
registerVal6["scoreResetOnDeath"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_ROUND_SCORE_LIMIT"
registerVal9 = {}
registerVal9 = {"MENU_ROUND_SCORE_LIMIT_OPTION"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_UNLIMITED", "MENU_X_POINTS"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 5.000000, 10.000000, 15.000000, 20.000000, 25.000000, 30.000000, 35.000000, 40.000000, 45.000000, 50.000000, 55.000000, 60.000000, 65.000000, 70.000000, 75.000000, 80.000000, 85.000000, 90.000000, 95.000000, 100.000000, 150.000000, 200.000000, 250.000000, 300.000000, 350.000000, 400.000000, 450.000000, 500.000000, 550.000000, 600.000000, 650.000000, 700.000000, 750.000000, 800.000000, 850.000000, 900.000000, 950.000000, 1000.000000}
registerVal8.values = registerVal9
registerVal6["roundScoreLimit"] = registerVal8
registerVal8 = {}
registerVal8.setting = "scoreLimit"
registerVal8.name = "MENU_ROUND_SCORE_LIMIT"
registerVal9 = {}
registerVal9 = {"MENU_ROUND_SCORE_LIMIT_OPTION"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_UNLIMITED", "MENU_X_POINTS"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 25.000000, 50.000000, 55.000000, 60.000000, 65.000000, 70.000000, 75.000000, 100.000000, 125.000000, 150.000000, 175.000000, 200.000000, 225.000000, 250.000000, 375.000000, 500.000000, 750.000000, 1000.000000}
registerVal8.values = registerVal9
registerVal6["roundScoreLimit_dom"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_SCORING"
registerVal9 = {}
registerVal9 = {"MENU_SCORING_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_CONSTANT", "MENU_PLAYER_ADDITIVE"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 1.000000}
registerVal8.values = registerVal9
registerVal8.shouldShow = __FUNC_77AB_
registerVal6["scorePerPlayer"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_SETBACKS"
registerVal9 = {}
registerVal9 = {"MENU_SETBACKS_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_X_WEAPONS", "MENU_X_WEAPON", "MENU_X_WEAPONS"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 6.000000, 7.000000, 8.000000, 9.000000, 10.000000}
registerVal8.values = registerVal9
registerVal6["setbacks"] = registerVal8
registerVal8 = {}
registerVal8.setting = "setbacks"
registerVal8.name = "MENU_SETBACKS"
registerVal9 = {}
registerVal9 = {"MENU_SETBACKS_SAS_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_ALL_POINTS", "MENU_1_POINT", "MENU_X_POINTS"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 10.000000, 15.000000, 25.000000, 50.000000}
registerVal8.values = registerVal9
registerVal6["setbacks_sas"] = registerVal8
registerVal8 = {}
registerVal8.setting = "shutdownDamage"
registerVal8.name = "MENU_SHUTDOWN_DAMAGE"
registerVal9 = {}
registerVal9 = {"MENU_SHUTDOWN_DAMAGE_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_INVULNERABLE", "MENU_LOW", "MENU_NORMAL", "MENU_HIGH"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 1.000000, 2.000000, 3.000000}
registerVal8.values = registerVal9
registerVal6["shutdownDamage"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_SILENT_PLANT"
registerVal9 = {}
registerVal9 = {"MENU_SILENT_PLANT_HINT"}
registerVal8.hintText = registerVal9
registerVal8.labels = CoD.GameOptions.EnabledDisabledLabels
registerVal8.values = CoD.GameOptions.EnabledDisabledValues
registerVal6["silentPlant"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_SPAWN_SUICIDE_PENALTY"
registerVal9 = {}
registerVal9 = {"MENU_SPAWN_SUICIDE_PENALTY_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_DISABLED", "MENU_1_SECOND", "MENU_X_SECONDS"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 6.000000, 7.000000, 8.000000, 9.000000, 10.000000, 12.000000, 14.000000, 15.000000, 16.000000, 18.000000, 20.000000}
registerVal8.values = registerVal9
registerVal6["spawnsuicidepenalty"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_SPAWN_TEAMKILLED_PENALTY"
registerVal9 = {}
registerVal9 = {"MENU_SPAWN_TEAMKILLED_PENALTY_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_DISABLED", "MENU_X_SECONDS"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 6.000000, 7.000000, 8.000000, 9.000000, 10.000000, 12.000000, 14.000000, 15.000000, 16.000000, 18.000000, 20.000000}
registerVal8.values = registerVal9
registerVal6["spawnteamkilledpenalty"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_CLEAN_DEPOSIT_ONLINE_TIME"
registerVal9 = {}
registerVal9 = {"MENU_CLEAN_DEPOSIT_ONLINE_TIME_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_X_SECONDS", "MENU_1_MINUTE", "MENU_1_5_MINUTES", "MENU_2_MINUTES"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {15.000000, 30.000000, 45.000000, 60.000000, 90.000000, 120.000000}
registerVal8.values = registerVal9
registerVal6["cleanDepositOnlineTime"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_CLEAN_DEPOSIT_ROTATION"
registerVal9 = {}
registerVal9 = {"MENU_CLEAN_DEPOSIT_ROTATION_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_IN_ORDER", "MENU_FIXED_START_RANDOM", "MENU_RANDOM"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 1.000000, 2.000000}
registerVal8.values = registerVal9
registerVal6["cleanDepositRotation"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_TEAMKILL_KICK"
registerVal9 = {}
registerVal9 = {"MENU_TEAMKILL_KICK_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_DISABLED", "MENU_1_KILL", "MENU_X_KILLS"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 1.000000, 2.000000, 3.000000, 4.000000}
registerVal8.values = registerVal9
registerVal8.shouldShow = CoDShared.IsGametypeTeamBased
registerVal6["teamKillPunishCount"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_NUMBER_OF_TEAM_LIVES"
registerVal9 = {}
registerVal9 = {"MENU_NUMBER_OF_TEAM_LIVES_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_UNLIMITED", "MENU_1_LIFE", "MENU_X_LIVES"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 6.000000, 7.000000, 8.000000, 9.000000, 10.000000, 15.000000, 20.000000, 25.000000}
registerVal8.values = registerVal9
registerVal6["teamNumLives"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_TEAM_SCORE_PER_DEATH"
registerVal9 = {}
registerVal9 = {"MENU_TEAM_SCORE_PER_DEATH_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_X_POINTS", "MENU_1_POINT", "MENU_X_POINTS"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 10.000000, 15.000000, 20.000000, 25.000000}
registerVal8.values = registerVal9
registerVal6["teamScorePerDeath"] = registerVal8
registerVal8 = {}
registerVal8.setting = "teamScorePerDeath"
registerVal8.name = "MENU_TEAM_SCORE_PER_DEATH"
registerVal9 = {}
registerVal9 = {"MENU_TEAM_SCORE_PER_DEATH_HINT_DM"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_X_POINTS", "MENU_1_POINT", "MENU_X_POINTS"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 10.000000, 15.000000, 20.000000, 25.000000}
registerVal8.values = registerVal9
registerVal6["teamScorePerDeath_dm"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_TEAM_SCORE_PER_HEADSHOT"
registerVal9 = {}
registerVal9 = {"MENU_TEAM_SCORE_PER_HEADSHOT_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_X_POINTS", "MENU_1_POINT", "MENU_X_POINTS"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 10.000000, 15.000000, 20.000000, 25.000000}
registerVal8.values = registerVal9
registerVal6["teamScorePerHeadshot"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_TEAM_SCORE_PER_KILL"
registerVal9 = {}
registerVal9 = {"MENU_TEAM_SCORE_PER_KILL_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_X_POINTS", "MENU_1_POINT", "MENU_X_POINTS"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 10.000000, 15.000000, 20.000000, 25.000000}
registerVal8.values = registerVal9
registerVal6["teamScorePerKill"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_TEAM_SCORE_PER_KILL_CONFIRMED"
registerVal9 = {}
registerVal9 = {"MENU_TEAM_SCORE_PER_KILL_CONFIRMED_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_X_POINTS", "MENU_1_POINT", "MENU_X_POINTS"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 10.000000, 15.000000, 20.000000, 25.000000}
registerVal8.values = registerVal9
registerVal6["teamScorePerKillConfirmed"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_TEAM_SCORE_PER_KILL_DENIED"
registerVal9 = {}
registerVal9 = {"MENU_TEAM_SCORE_PER_KILL_DENIED_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_X_POINTS", "MENU_1_POINT", "MENU_X_POINTS"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 10.000000, 15.000000, 20.000000, 25.000000}
registerVal8.values = registerVal9
registerVal6["teamScorePerKillDenied"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_TEAM_SCORE_PER_CLEAN_DEPOSIT"
registerVal9 = {}
registerVal9 = {"MENU_TEAM_SCORE_PER_CLEAN_DEPOSIT_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_X_POINTS", "MENU_1_POINT", "MENU_X_POINTS"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 10.000000, 15.000000, 20.000000, 25.000000}
registerVal8.values = registerVal9
registerVal6["teamScorePerCleanDeposit"] = registerVal8
registerVal8 = {}
registerVal8.setting = "throwScore"
registerVal8.name = "MENU_THROW_SCORE"
registerVal9 = {}
registerVal9 = {"MENU_THROW_SCORE_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_1_POINT", "MENU_X_POINTS"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 6.000000, 7.000000, 8.000000, 9.000000}
registerVal8.values = registerVal9
registerVal6["throwScore"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_TIME_LIMIT1"
registerVal9 = {}
registerVal9 = {"MENU_TIME_LIMIT_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_UNLIMITED", "MENU_1_MINUTE", "MENU_X_MINUTES"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 1.000000, 1.500000, 2.000000, 2.500000, 3.000000, 4.000000, 5.000000, 6.000000, 7.000000, 8.000000, 9.000000, 10.000000, 11.000000, 12.000000, 13.000000, 14.000000, 15.000000, 20.000000, 30.000000}
registerVal8.values = registerVal9
registerVal6["timeLimit"] = registerVal8
registerVal8 = {}
registerVal8.setting = "timeLimit"
registerVal8.name = "MENU_ROUND_TIME_LIMIT1"
registerVal9 = {}
registerVal9 = {"MENU_ROUND_TIME_LIMIT_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_UNLIMITED", "MENU_1_MINUTE", "MENU_X_MINUTES"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 1.000000, 1.500000, 2.000000, 2.500000, 3.000000, 4.000000, 5.000000, 6.000000, 7.000000, 8.000000, 9.000000, 10.000000, 11.000000, 12.000000, 13.000000, 14.000000, 15.000000, 20.000000, 30.000000}
registerVal8.values = registerVal9
registerVal6["timeLimit_dom"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_TIME_PAUSE"
registerVal9 = {}
registerVal9 = {"MENU_TIME_PAUSE_DESC"}
registerVal8.hintText = registerVal9
registerVal8.labels = CoD.GameOptions.EnabledDisabledLabels
registerVal8.values = CoD.GameOptions.EnabledDisabledValues
registerVal6["timePausesWhenInZone"] = registerVal8
registerVal8 = {}
registerVal8.setting = "defuseTime"
registerVal8.name = "MENU_TOUCH_RETURN"
registerVal9 = {}
registerVal9 = {"MENU_TOUCH_RETURN_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_DISABLED", "MENU_INSTANT", "MENU_X_SECONDS", "MENU_1_SECOND", "MENU_X_SECONDS"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {63.000000, 0.000000, 0.500000, 1.000000, 1.500000, 2.000000, 2.500000, 3.000000, 4.000000, 5.000000, 6.000000, 7.000000, 8.000000, 9.000000, 10.000000}
registerVal8.values = registerVal9
registerVal6["touchReturn"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_VOIP_KILLERS_HEAR_VICTIM"
registerVal9 = {}
registerVal9 = {"MENU_VOIP_KILLERS_HEAR_VICTIM_HINT"}
registerVal8.hintText = registerVal9
registerVal8.labels = CoD.GameOptions.EnabledDisabledLabels
registerVal8.values = CoD.GameOptions.EnabledDisabledValues
registerVal6["voipKillersHearVictim"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_EMBLEMS_INSTEAD_OF_FACTIONS"
registerVal9 = {}
registerVal9 = {"MENU_EMBLEMS_INSTEAD_OF_FACTIONS_HINT"}
registerVal8.hintText = registerVal9
registerVal8.labels = CoD.GameOptions.EnabledDisabledLabels
registerVal8.values = CoD.GameOptions.EnabledDisabledValues
registerVal6["useEmblemInsteadOfFactionIcon"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_WAVE_SPAWN_DELAY"
registerVal9 = {}
registerVal9 = {"MENU_WAVE_SPAWN_DELAY_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_DISABLED", "MENU_X_SECONDS"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {0.000000, 2.500000, 5.000000, 7.500000, 10.000000, 15.000000, 20.000000, 30.000000}
registerVal8.values = registerVal9
registerVal6["waveRespawnDelay"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_SHRP_WEAPON_TIMER"
registerVal9 = {}
registerVal9 = {"MENU_SHRP_WEAPON_TIMER_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {"MENU_X_SECONDS"}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {10.000000, 15.000000, 20.000000, 25.000000, 30.000000, 35.000000, 40.000000, 45.000000, 50.000000, 55.000000, 60.000000, 90.000000, 120.000000}
registerVal8.values = registerVal9
registerVal6["weaponTimer"] = registerVal8
registerVal8 = {}
registerVal8.name = "MENU_SHRP_WEAPON_NUMBER"
registerVal9 = {}
registerVal9 = {"MENU_SHRP_WEAPON_NUMBER_HINT"}
registerVal8.hintText = registerVal9
registerVal9 = {}
registerVal9 = {5.000000, 6.000000, 7.000000, 8.000000, 9.000000, 10.000000, 11.000000, 12.000000, 13.000000, 14.000000, 15.000000, 16.000000, 17.000000, 18.000000, 19.000000, 20.000000}
registerVal8.labels = registerVal9
registerVal9 = {}
registerVal9 = {5.000000, 6.000000, 7.000000, 8.000000, 9.000000, 10.000000, 11.000000, 12.000000, 13.000000, 14.000000, 15.000000, 16.000000, 17.000000, 18.000000, 19.000000, 20.000000}
registerVal8.values = registerVal9
registerVal6["weaponCount"] = registerVal8
CoD.GameOptions.GameSettings = registerVal6
registerVal7 = {}
registerVal7 = {"teamAssignment", "allowInGameTeamChange", "allowSpectating", "disableThirdPersonSpectating", "allowMapScripting", "voipKillersHearVictim", "allowBattleChatter", "allowAnnouncer"}
CoD.GameOptions["GlobalSettings"] = registerVal7
registerVal7 = {}
registerVal7 = {"prematchrequirement", "prematchrequirementtime", "prematchperiod", "preroundperiod", "forceRadar", "roundStartExplosiveDelay", "allowKillcam", "roundStartKillstreakDelay", "killEventScoreMultiplier", "disableVehicleSpawners"}
CoD.GameOptions["GeneralSettings"] = registerVal7
registerVal7 = {}
registerVal7 = {"playerMaxHealth", "playerHealthRegenTime", "friendlyfiretype", "teamKillPunishCount", "onlyHeadshots", "allowhitmarkers"}
CoD.GameOptions["HealthAndDamageSettings"] = registerVal7
registerVal7 = {}
registerVal7 = {"playerRespawnDelay", "incrementalSpawnDelay", "playerForceRespawn", "waveRespawnDelay", "spawnsuicidepenalty", "spawnteamkilledpenalty"}
CoD.GameOptions["SpawnSettings"] = registerVal7
registerVal7 = {}
registerVal7 = {"disableCAC", "maxAllocation"}
CoD.GameOptions["CustomClassSettings"] = registerVal7
registerVal7 = {}
registerVal7 = {"presetClassesPerTeam"}
CoD.GameOptions["PresetClassSettings"] = registerVal7
registerVal7 = {}
registerVal9 = {}
registerVal9 = {"timeLimit_dom", "roundScoreLimit"}
registerVal7["ball"] = registerVal9
registerVal9 = {}
registerVal9 = {"timeLimit", "scoreLimit"}
registerVal7["clean"] = registerVal9
registerVal9 = {}
registerVal9 = {"timeLimit", "scoreLimit"}
registerVal7["conf"] = registerVal9
registerVal9 = {}
registerVal9 = {"cumulativeRoundScores", "timeLimit"}
registerVal7["ctf"] = registerVal9
registerVal9 = {}
registerVal9 = {"timeLimit", "scoreLimit_sd_dem"}
registerVal7["dem"] = registerVal9
registerVal9 = {}
registerVal9 = {"timeLimit", "scoreLimit"}
registerVal7["dm"] = registerVal9
registerVal9 = {}
registerVal9 = {"timeLimit_dom", "roundScoreLimit"}
registerVal7["dom"] = registerVal9
registerVal9 = {}
registerVal9 = {"timeLimit", "roundWinLimit_escort"}
registerVal7["escort"] = registerVal9
registerVal9 = {}
registerVal9 = {"timeLimit"}
registerVal7["gun"] = registerVal9
registerVal9 = {}
registerVal9 = {"timeLimit", "scoreLimit"}
registerVal7["hack"] = registerVal9
registerVal9 = {}
registerVal9 = {"timeLimit", "scoreLimit"}
registerVal7["hq"] = registerVal9
registerVal9 = {}
registerVal9 = {"timeLimit"}
registerVal7["infect"] = registerVal9
registerVal9 = {}
registerVal9 = {"timeLimit", "scoreLimit"}
registerVal7["koth"] = registerVal9
registerVal9 = {}
registerVal9 = {"cumulativeRoundScores", "timeLimit"}
registerVal7["oneflag"] = registerVal9
registerVal9 = {}
registerVal9 = {"timeLimit"}
registerVal7["prop"] = registerVal9
registerVal9 = {}
registerVal9 = {"timeLimit", "scoreLimit"}
registerVal7["sas"] = registerVal9
registerVal9 = {}
registerVal9 = {"timeLimit", "scoreLimit_sd_dem"}
registerVal7["sd"] = registerVal9
registerVal9 = {}
registerVal9 = {"scoreLimit"}
registerVal7["shrp"] = registerVal9
registerVal9 = {}
registerVal9 = {"timeLimit", "scoreLimit"}
registerVal7["sniperonly"] = registerVal9
registerVal9 = {}
registerVal9 = {"timeLimit", "scoreLimit"}
registerVal7["tdm"] = registerVal9
CoD.GameOptions["TopLevelGametypeSettings"] = registerVal7
registerVal7 = {}
registerVal7 = {"hardcoreMode"}
CoD.GameOptions["GlobalTopLevelGametypeSettings"] = registerVal7
registerVal7 = {}
registerVal9 = {}
registerVal9 = {"roundLimit", "carrierArmor", "carryScore", "throwScore", "enemyCarrierVisible", "idleFlagResetTime_ball", "ballCount"}
registerVal7["ball"] = registerVal9
registerVal9 = {}
registerVal9 = {"teamScorePerCleanDeposit", "cleanDepositRotation", "cleanDepositOnlineTime"}
registerVal7["clean"] = registerVal9
registerVal9 = {}
registerVal9 = {"teamScorePerKillConfirmed", "teamScorePerKillDenied", "teamScorePerKill", "playerNumLives", "teamNumLives"}
registerVal7["conf"] = registerVal9
registerVal9 = {}
registerVal9 = {"scoreLimit_ctfRound", "roundLimit", "roundWinLimit_ctf", "enemyCarrierVisible", "idleFlagResetTime", "flagCaptureCondition", "captureTime_ctf", "touchReturn"}
registerVal7["ctf"] = registerVal9
registerVal9 = {}
registerVal9 = {"bombTimer", "plantTime", "defuseTime", "extraTime", "OvertimetimeLimit", "silentPlant", "droppedTagRespawn"}
registerVal7["dem"] = registerVal9
registerVal9 = {}
registerVal9 = {"roundLimit", "captureTime", "flagCanBeNeutralized", "roundswitch"}
registerVal7["dom"] = registerVal9
registerVal9 = {}
registerVal9 = {"teamScorePerKill", "teamScorePerDeath_dm", "teamScorePerHeadshot", "playerNumLives", "roundLimit", "roundWinLimit_dm", "roundScoreLimit", "killstreaksGiveGameScore"}
registerVal7["dm"] = registerVal9
registerVal9 = {}
registerVal9 = {"roundLimit", "shutdownDamage", "bootTime", "rebootTime", "rebootPlayers"}
registerVal7["escort"] = registerVal9
registerVal9 = {}
registerVal9 = {"setbacks", "gunSelection"}
registerVal7["gun"] = registerVal9
registerVal9 = {}
registerVal9 = {"roundLimit"}
registerVal7["infect"] = registerVal9
registerVal9 = {}
registerVal9 = {"autoDestroyTime", "captureTime_koth", "objectiveSpawnTime", "randomObjectiveLocations_koth", "scorePerPlayer", "timePausesWhenInZone"}
registerVal7["koth"] = registerVal9
registerVal9 = {}
registerVal9 = {"roundLimit"}
registerVal7["prop"] = registerVal9
registerVal9 = {}
registerVal9 = {"gunSelection_sas", "setbacks_sas", "pointsPerPrimaryKill", "pointsPerSecondaryKill", "pointsPerPrimaryGrenadeKill", "pointsPerMeleeKill"}
registerVal7["sas"] = registerVal9
registerVal9 = {}
registerVal9 = {"bombTimer", "plantTime", "defuseTime", "multiBomb", "roundswitch", "silentPlant", "droppedTagRespawn", "playerNumLives"}
registerVal7["sd"] = registerVal9
registerVal9 = {}
registerVal9 = {"teamScorePerKill", "teamScorePerDeath", "teamScorePerHeadshot", "playerNumLives", "roundLimit", "roundWinLimit", "droppedTagRespawn", "roundScoreLimit"}
registerVal7["sniperonly"] = registerVal9
registerVal9 = {}
registerVal9 = {"teamScorePerKill", "teamScorePerDeath", "teamScorePerHeadshot", "playerNumLives", "roundLimit", "roundWinLimit", "droppedTagRespawn", "roundScoreLimit", "killstreaksGiveGameScore"}
registerVal7["tdm"] = registerVal9
CoD.GameOptions["SubLevelGametypeSettings"] = registerVal7
local function __FUNC_7A45_(arg0, arg1)
	local registerVal2, registerVal3, registerVal4 = ipairs(arg1)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		local registerVal8 = CoD.GameOptions.GameSettings[value6].shouldShow()
		if arg1 or registerVal8 then
			if CoD.GameOptions.GameSettings[value6].setting then
			end
			registerVal8 = Engine.IsGametypeSettingDefault(CoD.GameOptions.GameSettings[value6].setting)
			if not registerVal8 then
				arg0:showStarIcon(true)
				return true
			end
		end
	end
	arg0:showStarIcon(false)
	return false
end

CoD.GameOptions["ShowStarForGametypeSettings"] = __FUNC_7A45_
local function __FUNC_7BF9_(arg0, arg1, arg2, arg3)
	if arg2 == nil or # == 0.000000 then
		return 
	end
	for index4=1.000000, #, 1.000000 do
		local registerVal11 = Engine.Localize(arg2[index4])
		arg1:addChoice(arg0, registerVal11, arg3[index4])
	end
end

CoD.GameOptions["Button_AddChoices"] = __FUNC_7BF9_
local function __FUNC_7CC8_(arg0, arg1, arg2, arg3)
	if arg2 == nil or # == 0.000000 then
		return 0.000000
	end
	for index4=1.000000, #, 1.000000 do
		if arg2[index4].hintText ~= nil then
			local registerVal13 = Engine.Localize(arg2[index4].label)
			local registerVal9 = arg0.buttonList:addGametypeSettingLeftRightSelector(arg0, arg1, registerVal13, arg2[index4].settingName, Engine.Localize(arg2[index4].hintText))
		else
			registerVal13 = Engine.Localize(arg2[index4].label)
			registerVal9 = arg0.buttonList:addGametypeSettingLeftRightSelector(arg0, arg1, registerVal13, arg2[index4].settingName)
		end
		CoD.GameOptions.Button_AddChoices(arg1, registerVal9, arg2[index4].strings, arg2[index4].values)
		if arg3 == false then
			registerVal9:disableCycling()
		end
	end
	return #1.000000
end

CoD.GameOptions["AddSelectorButtons"] = __FUNC_7CC8_
local function __FUNC_7FCC_(arg0, arg1)
	local registerVal2 = {}
	registerVal2 = {"MENU_DISABLED_CAPS", "MENU_ENABLED_CAPS"}
	local registerVal3 = {}
	registerVal3 = {0.000000, 1.000000}
	CoD.GameOptions.Button_AddChoices(arg1, arg0, registerVal2, registerVal3)
end

CoD.GameOptions["Button_DemoRecording_AddChoices"] = __FUNC_7FCC_
local function __FUNC_80C6_(arg0, arg1, arg2, arg3)
	local registerVal4 = {}
	registerVal4 = {"MENU_DISABLED_CAPS", "MENU_ENABLED_CAPS"}
	local registerVal5 = {}
	registerVal5 = {0.000000, 1.000000}
	local registerVal10 = Engine.Localize(arg2)
	local registerVal6 = arg0.buttonList:addGametypeSettingLeftRightSelector(arg0, arg1, registerVal10, arg3)
	CoD.GameOptions.Button_AddChoices(arg1, registerVal6, registerVal4, registerVal5)
	return registerVal6
end

CoD.GameOptions["Button_EnabledDisabled_AddChoices"] = __FUNC_80C6_
local function __FUNC_825D_()
	local registerVal1 = Engine.GetAttachmentNameByIndex(1.000000)
	if registerVal1 == "" then
	else
		local registerVal2 = Engine.GetAttachmentAllocationCost(1.000000)
		if 0.000000 <= registerVal2 then
			return true
		end
	end
end

CoD.GameOptions["AreAnyAttachmentsRestricted"] = __FUNC_825D_
local function __FUNC_834B_(arg0, arg1)
	local registerVal2 = CoD.Menu.New(arg1)
	registerVal2:setClass(CoD.GameOptionsMenu)
	registerVal2:setOwner(arg0)
	registerVal2:addLargePopupBackground()
	registerVal2:addSelectButton()
	local registerVal4 = Engine.GetModelForController(arg0)
	local registerVal3 = Engine.CreateModel(registerVal4, (arg1 .. ".buttonPrompts"))
	registerVal2.buttonModel = registerVal3
	local function __FUNC_905D_(arg0, arg1, arg2, arg3)
		GoBack(registerVal2, arg2)
	end

	local function __FUNC_90A8_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal2:AddButtonCallbackFunction(registerVal2, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_905D_, __FUNC_90A8_, false)
	CoD.Menu.AddNavigationHandler(registerVal2, registerVal2, arg0)
	registerVal4 = LUI.UIElement.new()
	registerVal2.infoPane = registerVal4
	registerVal2.infoPane:setLeftRight(false, true, (-325.000000 + 45.000000), 0.000000)
	registerVal2.infoPane:setTopBottom(true, true, CoD.Menu.TitleHeight, 0.000000)
	registerVal2:addElement(registerVal2.infoPane)
	registerVal4 = LUI.UIText.new()
	registerVal2.infoPaneTitle = registerVal4
	registerVal2.infoPaneTitle:setLeftRight(true, false, 0.000000, 0.000000)
	registerVal2.infoPaneTitle:setTopBottom(true, false, 0.000000, CoD.textSize.Condensed)
	registerVal2.infoPaneTitle:setRGB(CoD.offWhite.r, CoD.offWhite.g, CoD.offWhite.b)
	registerVal2.infoPaneTitle:setTTF("fonts/escom.ttf")
	registerVal2.infoPane:addElement(registerVal2.infoPaneTitle)
	registerVal4 = LUI.UIText.new()
	registerVal2.infoPaneDefaultText = registerVal4
	registerVal2.infoPaneDefaultText:setLeftRight(true, false, 0.000000, 0.000000)
	registerVal2.infoPaneDefaultText:setTopBottom(true, false, 30.000000, (30.000000 + CoD.textSize.Default))
	registerVal2.infoPaneDefaultText:setRGB(CoD.offWhite.r, CoD.offWhite.g, CoD.offWhite.b)
	registerVal2.infoPaneDefaultText:setTTF("fonts/escom.ttf")
	registerVal2.infoPane:addElement(registerVal2.infoPaneDefaultText)
	registerVal4 = LUI.UIText.new()
	registerVal2.infoPaneDescription = registerVal4
	registerVal2.infoPaneDescription:setupUITextUncached()
	registerVal2.infoPaneDescription:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal2.infoPaneDescription:setTopBottom(true, false, 70.000000, (70.000000 + CoD.textSize.Default))
	registerVal2.infoPaneDescription:setAlignment(LUI.Alignment.Left)
	registerVal2.infoPaneDescription:setRGB(CoD.offWhite.r, CoD.offWhite.g, CoD.offWhite.b)
	registerVal2.infoPaneDescription:setTTF("fonts/escom.ttf")
	registerVal2.infoPane:addElement(registerVal2.infoPaneDescription)
	registerVal4 = Dvar.ui_gametype:get()
	local registerVal5 = RegisterMaterial(Engine.StructTableLookupString(CoDShared.gametypesStructTable, "name", registerVal4, "image"))
	local registerVal7 = LUI.UIImage.new()
	registerVal2.gametypeIcon = registerVal7
	registerVal2.gametypeIcon:setLeftRight(false, false, (-325.000000 / 2.000000), (325.000000 / 2.000000))
	registerVal2.gametypeIcon:setTopBottom(false, false, ((-CoD.Menu.TitleHeight / 2.000000) - (325.000000 / 2.000000)), ((-CoD.Menu.TitleHeight / 2.000000) + (325.000000 / 2.000000)))
	registerVal2.gametypeIcon:setImage(registerVal5)
	registerVal2.gametypeIcon:setAlpha(0.250000)
	registerVal2.infoPane:addElement(registerVal2.gametypeIcon)
	registerVal7 = CoD.ButtonList.new()
	registerVal2.buttonList = registerVal7
	registerVal2.buttonList:setLeftRight(true, false, 0.000000, CoD.ButtonList.DefaultWidth)
	registerVal2.buttonList:setTopBottom(true, true, CoD.Menu.TitleHeight, 0.000000)
	registerVal2.buttonList.id = (registerVal2.id .. "ButtonList")
	registerVal2.buttonList.hintText:close()
	registerVal2[registerVal2.buttonList.id] = registerVal2.buttonList
	registerVal2:addElement(registerVal2.buttonList)
	return registerVal2
end

CoD.GameOptionsMenu["New"] = __FUNC_834B_
local function __FUNC_91A5_(arg0, arg1, arg2, arg3)
	local registerVal5 = CoD.GameOptions.GameSettings[arg2].shouldShow()
	if not arg3 and CoD.GameOptions.GameSettings[arg2].shouldShow and not registerVal5 then
		return 
	end
	if CoD.GameOptions.GameSettings[arg2].setting then
	end
	if CoD.GameOptions.GameSettings[arg2].hintText then
		local registerVal6 = Engine.Localize(CoD.GameOptions.GameSettings[arg2].hintText)
	end
	local registerVal10 = Engine.Localize(CoD.GameOptions.GameSettings[arg2].name)
	registerVal6 = arg0.buttonList:addGametypeSettingLeftRightSelector(arg0, arg1, registerVal10, CoD.GameOptions.GameSettings[arg2].setting, registerVal6)
	local registerVal7, registerVal8, registerVal9 = ipairs(CoD.GameOptions.GameSettings[arg2].values)
	for index10,value11 in registerVal7, registerVal8, registerVal9 do
		if CoD.GameOptions.GameSettings[arg2].labels then
			if not CoD.GameOptions.GameSettings[arg2].labels[index10] then
			end
			local registerVal13 = Engine.Localize(CoD.GameOptions.GameSettings[arg2].labels[#CoD.GameOptions.GameSettings[arg2].labels], value11)
		end
		registerVal6:addChoice(arg1, registerVal13, value11, nil, CoD.GameOptions.GameSettings[arg2].callback)
	end
	return registerVal6
end

CoD.GameOptionsMenu["addGametypeSetting"] = __FUNC_91A5_
local function __FUNC_94C1_(arg0, arg1)
	if arg1.button.labelString then
		if not arg1 or arg1.button.m_settingName then
			arg0.infoPaneTitle:setText(arg1.button.labelString)
		else
		else
			arg0.infoPaneTitle:setText("")
		end
	end
	local registerVal4 = Engine.GetGametypeSetting(arg1.button.m_settingName, true)
	local registerVal5, registerVal6, registerVal7 = ipairs(arg1.button.m_choices)
	for index8,value9 in registerVal5, registerVal6, registerVal7 do
		if value9.params.value == registerVal4 then
			local registerVal10 = Engine.Localize("MENU_DEFAULT")
		else
		end
	end
	arg0.infoPaneDefaultText:setText((registerVal10 .. ": " .. value9.label))
	if arg1.button.hintText then
		arg0.infoPaneDescription:setText(arg1.button.hintText)
	else
		arg0.infoPaneDescription:setText("")
	end
end

CoD.GameOptionsMenu["ButtonGainedFocus"] = __FUNC_94C1_
local function __FUNC_97EF_(arg0, arg1)
	arg0.buttonList:saveState()
	local registerVal4 = {}
	registerVal4.lobbyType = Enum.LobbyType.LOBBY_TYPE_GAME
	registerVal4.lobbyModule = Enum.LobbyModule.LOBBY_MODULE_HOST
	Engine.LobbyVM_CallFunc("OnGametypeSettingsChange", registerVal4)
	CoD.Menu.ButtonPromptBack(arg0, arg1)
end

CoD.GameOptionsMenu["ButtonPromptBack"] = __FUNC_97EF_
local function __FUNC_99EA_(arg0, arg1)
	local registerVal4 = {}
	registerVal4.name = "button_update"
	arg0:processEvent(registerVal4)
end

CoD.GameOptionsMenu["RefreshSettings"] = __FUNC_99EA_
CoD.GameOptionsMenu:"registerEventHandler"("button_gained_focus", CoD.GameOptionsMenu["ButtonGainedFocus"])
CoD.GameOptionsMenu:"registerEventHandler"("button_prompt_back", CoD.GameOptionsMenu["ButtonPromptBack"])
CoD.GameOptionsMenu:"registerEventHandler"("refresh_settings", CoD.GameOptionsMenu["RefreshSettings"])
local function __FUNC_9A5F_(arg0, arg1)
	Engine.PartyHostClearUIState()
	CoD.GameOptionsMenu.ButtonPromptBack(arg0, arg1)
end

