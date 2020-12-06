-- Decompiled with CoDLUIDecompiler by JariK

local registerVal33 = Engine.GetCurrentMap()
if registerVal33 ~= "core_frontend" then
end
CoD.isFrontend = true
if not CoD.isFrontend and not CoD.isZombie then
	Engine.RegisterClientUIModelField("hudItems.rejack.activationWindowEntered", Enum.UIModelClientFieldType.CF_INT, 1.000000, 1.000000)
	Engine.RegisterClientUIModelField("hudItems.rejack.rejackActivated", Enum.UIModelClientFieldType.CF_INT, 1.000000, 1.000000)
end
local registerVal32 = Engine.IsScrSystemActive("weaponobjects")
if registerVal32 then
	Engine.RegisterClientUIModelField("hudItems.proximityAlarm", Enum.UIModelClientFieldType.CF_INT, 2.000000, 1.000000)
end
Engine.RegisterClientUIModelField("hudItems.killcamAllowRespawn", Enum.UIModelClientFieldType.CF_INT, 1.000000, 1.000000)
Engine.RegisterClientUIModelField("hudItems.hideOutcomeUI", Enum.UIModelClientFieldType.CF_INT, 1.000000, 1.000000)
Engine.RegisterClientUIModelField("hudItems.remoteKillstreakActivated", Enum.UIModelClientFieldType.CF_INT, 1.000000, 1.000000)
Engine.RegisterClientUIModelField("hudItems.captureCrateState", Enum.UIModelClientFieldType.CF_INT, 2.000000, 5000.000000)
Engine.RegisterClientUIModelField("hudItems.captureCrateTotalTime", Enum.UIModelClientFieldType.CF_INT, 13.000000, 5000.000000)
registerVal32 = Dvar.ui_gametype:get()
if CoD.isMultiplayer and not CoD.isFrontend and registerVal32 == "clean" then
	Engine.RegisterClientUIModelField("hudItems.cleanCarryCount", Enum.UIModelClientFieldType.CF_INT, 4.000000, 12000.000000)
	Engine.RegisterClientUIModelField("hudItems.cleanCarryFull", Enum.UIModelClientFieldType.CF_INT, 1.000000, 12000.000000)
end
if CoD.isSafehouse then
	Engine.RegisterClientUIModelField("safehouse.inClientBunk", Enum.UIModelClientFieldType.CF_INT, 2.000000, 1.000000)
	Engine.RegisterClientUIModelField("safehouse.inTrainingSim", Enum.UIModelClientFieldType.CF_INT, 1.000000, 1.000000)
end
registerVal32 = Engine.IsScrSystemActive("cybercom")
if registerVal32 then
	Engine.RegisterClientUIModelField("playerAbilities.inRange", Enum.UIModelClientFieldType.CF_INT, 1.000000, 1.000000)
end
if CoD.isCampaign and not CoD.isFrontend then
	Engine.RegisterClientUIModelField("hudItems.cybercoreSelectMenuDisabled", Enum.UIModelClientFieldType.CF_INT, 1.000000, 1.000000)
	Engine.RegisterClientUIModelField("hudItems.playerInCombat", Enum.UIModelClientFieldType.CF_INT, 1.000000, 1.000000)
	Engine.RegisterClientUIModelField("playerAbilities.repulsorIndicatorDirection", Enum.UIModelClientFieldType.CF_INT, 2.000000, 1.000000)
	Engine.RegisterClientUIModelField("playerAbilities.repulsorIndicatorIntensity", Enum.UIModelClientFieldType.CF_INT, 2.000000, 1.000000)
	Engine.RegisterClientUIModelField("playerAbilities.proximityIndicatorDirection", Enum.UIModelClientFieldType.CF_INT, 2.000000, 1.000000)
	Engine.RegisterClientUIModelField("playerAbilities.proximityIndicatorIntensity", Enum.UIModelClientFieldType.CF_INT, 2.000000, 1.000000)
	Engine.RegisterClientUIModelField("serverDifficulty", Enum.UIModelClientFieldType.CF_INT, 3.000000, 1.000000)
end
registerVal32 = Engine.IsScrSystemActive("aquifer_util")
if registerVal32 then
	Engine.RegisterClientUIModelField("vehicle.weaponIndex", Enum.UIModelClientFieldType.CF_INT, 2.000000, 1.000000)
	Engine.RegisterClientUIModelField("vehicle.lockOn", Enum.UIModelClientFieldType.CF_FLOAT, 8.000000, 1.000000)
	Engine.RegisterClientUIModelField("vehicle.showLandHint", Enum.UIModelClientFieldType.CF_INT, 1.000000, 1.000000)
	Engine.RegisterClientUIModelField("vehicle.showAimHint", Enum.UIModelClientFieldType.CF_INT, 1.000000, 1.000000)
	Engine.RegisterClientUIModelField("hackUpload.percent", Enum.UIModelClientFieldType.CF_FLOAT, 8.000000, 1.000000)
end
if not CoD.isFrontend and not CoD.isCampaign and CoD.isZombie then
	Engine.RegisterClientUIModelField("hudItems.doublePointsActive", Enum.UIModelClientFieldType.CF_INT, 1.000000, 1.000000)
	Engine.RegisterClientUIModelField("player_lives", Enum.UIModelClientFieldType.CF_INT, 2.000000, 1.000000)
	Engine.RegisterClientUIModelField("zmhud.swordEnergy", Enum.UIModelClientFieldType.CF_FLOAT, 7.000000, 1.000000)
	Engine.RegisterClientUIModelField("zmhud.swordState", Enum.UIModelClientFieldType.CF_INT, 2.000000, 1.000000)
	Engine.RegisterClientUIModelField("hudItems.showDpadUp", Enum.UIModelClientFieldType.CF_INT, 1.000000, 1.000000)
	Engine.RegisterClientUIModelField("hudItems.showDpadDown", Enum.UIModelClientFieldType.CF_INT, 1.000000, 1.000000)
	Engine.RegisterClientUIModelField("hudItems.showDpadLeft", Enum.UIModelClientFieldType.CF_INT, 1.000000, 1.000000)
	Engine.RegisterClientUIModelField("hudItems.showDpadRight", Enum.UIModelClientFieldType.CF_INT, 1.000000, 1.000000)
	for index33=0.000000, (4.000000 - 1.000000), 1.000000 do
		Engine.RegisterClientUIModelField(("PlayerList.client" .. index33 .. ".score_cf_damage"), Enum.UIModelClientFieldType.CF_COUNTER, 3.000000, 1.000000)
		Engine.RegisterClientUIModelField(("PlayerList.client" .. index33 .. ".score_cf_death_normal"), Enum.UIModelClientFieldType.CF_COUNTER, 2.000000, 1.000000)
		Engine.RegisterClientUIModelField(("PlayerList.client" .. index33 .. ".score_cf_death_torso"), Enum.UIModelClientFieldType.CF_COUNTER, 2.000000, 1.000000)
		Engine.RegisterClientUIModelField(("PlayerList.client" .. index33 .. ".score_cf_death_neck"), Enum.UIModelClientFieldType.CF_COUNTER, 2.000000, 1.000000)
		Engine.RegisterClientUIModelField(("PlayerList.client" .. index33 .. ".score_cf_death_head"), Enum.UIModelClientFieldType.CF_COUNTER, 2.000000, 1.000000)
		Engine.RegisterClientUIModelField(("PlayerList.client" .. index33 .. ".score_cf_death_melee"), Enum.UIModelClientFieldType.CF_COUNTER, 2.000000, 1.000000)
	end
	registerVal33 = Engine.GetCurrentMap()
	if registerVal33 == "zm_island" then
		Engine.RegisterClientUIModelField("hudItems.showDpadRight_Spider", Enum.UIModelClientFieldType.CF_INT, 1.000000, 9000.000000)
	end
	registerVal33 = Engine.GetCurrentMap()
	if registerVal33 == "zm_stalingrad" then
		Engine.RegisterClientUIModelField("trialWidget.icon", Enum.UIModelClientFieldType.CF_INT, 2.000000, 12000.000000)
		Engine.RegisterClientUIModelField("trialWidget.challenge1state", Enum.UIModelClientFieldType.CF_INT, 2.000000, 12000.000000)
		Engine.RegisterClientUIModelField("trialWidget.challenge2state", Enum.UIModelClientFieldType.CF_INT, 2.000000, 12000.000000)
		Engine.RegisterClientUIModelField("trialWidget.challenge3state", Enum.UIModelClientFieldType.CF_INT, 2.000000, 12000.000000)
	end
	registerVal33 = Engine.GetCurrentMap()
	if registerVal33 == "zm_genesis" then
		Engine.RegisterClientUIModelField("trialWidget.icon", Enum.UIModelClientFieldType.CF_INT, 2.000000, 12000.000000)
	end
	registerVal33 = Engine.GetCurrentMap()
	registerVal33 = Engine.GetCurrentMap()
	registerVal33 = Engine.GetCurrentMap()
	if registerVal33 ~= "zm_island" and registerVal33 == "zm_stalingrad" or registerVal33 == "zm_genesis" then
		Engine.RegisterClientUIModelField("trialWidget.visible", Enum.UIModelClientFieldType.CF_INT, 1.000000, 9000.000000)
		Engine.RegisterClientUIModelField("trialWidget.progress", Enum.UIModelClientFieldType.CF_FLOAT, 7.000000, 9000.000000)
	end
end
