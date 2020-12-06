-- Decompiled with CoDLUIDecompiler by JariK

require("ui.T6.CoDBase")
require("ui.T6.HUD.GameMessages")
require("ui.T6.HUD.VisibilityBits")
require("ui_mp.T6.HUD.gametypes.GametypeBase")
require("ui_mp.T6.HUD.GrenadeEffect")
require("ui_mp.T6.HUD.ScoreBoard")
require("ui_mp.T6.HUD.Loading")
require("ui_mp.T6.HUD.InGamePopups")
require("ui_mp.T6.HUD.Migration")
if CoD.isZombie == true then
	require("ui_mp.T6.Zombie.BaseZombie")
	require("ui_mp.T6.Zombie.HudPowerUpsZombie")
end
require("ui_mp.T6.Menus.LiveStream")
require("ui.uieditor.menus.OverlaySystem.SystemOverlay_MessageDialog")
require("ui.uieditor.menus.OverlaySystem.SystemOverlay_NoBG")
require("ui.T7.Utility.CoDUtilityRequire")
local function __FUNC_2E31_()
end

HUD_IngameMenuClosed = __FUNC_2E31_
local function __FUNC_2E64_()
	if false then
		return 
	end
	require("ui_mp.T6.HUD.InGameMenus")
	require("ui.uieditor.menus.Core_UI_require")
	require("ui.uieditor.menus.core_patch_require")
	if CoD.isPC then
		require("ui.uieditor.menus.core_patch_pc_require")
	end
	if CoD.isCampaign then
		require("ui.uieditor.menus.hud.HUD_CP_require")
		require("ui.uieditor.menus.hud.cp_patch_require")
		require("ui.uieditor.widgets.Reticles.RocketLaunchers.rocketLauncherReticle")
		local registerVal0 = Engine.GetCurrentMap()
		if registerVal0 == "cp_mi_eth_prologue" then
			require("ui.uieditor.menus.CPLevels.Prologue.SecurityCamera")
			require("ui.uieditor.menus.SpinnerFullscreenBlack")
		else
			registerVal0 = Engine.GetCurrentMap()
			if registerVal0 == "cp_mi_zurich_coalescence" then
				require("ui.uieditor.menus.SpinnerFullscreenBlack")
			else
				if CoD.isZombie then
					require("ui.uieditor.menus.hud.HUD_ZM_require")
					require("ui.uieditor.menus.hud.zm_patch_require")
					require("ui.uieditor.widgets.Reticles.Magnifier.MagnifierReticle_UI3D")
					require("ui.uieditor.widgets.Demo.Demo")
					registerVal0 = Mods_IsUsingMods()
					if registerVal0 then
						require("ui.uieditor.widgets.HUD.Console.Console")
					end
					registerVal0 = Engine.GetCurrentMap()
					if registerVal0 == "zm_zod" then
						require("ui.uieditor.menus.hud.T7Hud_ZM")
						require("ui.uieditor.widgets.HUD.ZM_AmmoWidget.ZmAmmo_DpadAmmoNumbers")
						require("ui.uieditor.menus.ZMLevels.ZOD.JumpScare")
						require("ui.uieditor.widgets.HUD.ZM_TimeBar.ZM_BeastmodeTimeBarWidget")
						require("ui.uieditor.widgets.ZMInventory.FuseBox.FuseWidget")
						require("ui.uieditor.widgets.ZMInventory.InventoryWidget")
						require("ui.uieditor.widgets.ZMInventory.Ritual.RitualItem")
						require("ui.uieditor.widgets.ZMInventory.Ritual.RitualWidget")
					else
						registerVal0 = Engine.GetCurrentMap()
						if registerVal0 == "zm_factory" then
							require("ui.uieditor.menus.hud.T7Hud_zm_factory")
							require("ui.uieditor.widgets.HUD.ZM_AmmoWidget.ZmAmmo_DpadAmmoNumbers")
						else
							registerVal0 = Engine.GetCurrentMap()
							if registerVal0 == "zm_castle" then
								require("ui.uieditor.menus.hud.T7Hud_zm_castle")
								require("ui.uieditor.widgets.HUD.ZM_AmmoWidget.ZmAmmo_DpadAmmoNumbers")
							else
								registerVal0 = Engine.GetCurrentMap()
								if registerVal0 == "zm_island" then
									require("ui.uieditor.menus.hud.T7Hud_zm_island")
									require("ui.uieditor.widgets.HUD.ZM_AmmoWidget.ZmAmmo_DpadAmmoNumbers")
								else
									registerVal0 = Engine.GetCurrentMap()
									if registerVal0 == "zm_stalingrad" then
										require("ui.uieditor.menus.hud.T7Hud_zm_stalingrad")
										require("ui.uieditor.widgets.HUD.ZM_AmmoWidget.ZmAmmo_DpadAmmoNumbers")
										require("ui.uieditor.widgets.Reticles.LauncherMulti.LauncherMultiReticle")
									else
										registerVal0 = Engine.GetCurrentMap()
										if registerVal0 == "zm_genesis" then
											require("ui.uieditor.menus.hud.T7Hud_zm_genesis")
											require("ui.uieditor.widgets.HUD.ZM_AmmoWidget.ZmAmmo_DpadAmmoNumbers")
										else
											registerVal0 = Engine.GetCurrentMap()
											if registerVal0 == "zm_tomb" then
												require("ui.uieditor.menus.hud.T7Hud_zm_tomb")
												require("ui.uieditor.widgets.HUD.ZM_AmmoWidget.ZmAmmo_DpadAmmoNumbers")
												require("ui.uieditor.menus.ZMLevels.TOMB.JumpScare-Tomb")
												require("ui.uieditor.widgets.Reticles.LauncherMulti.LauncherMultiReticle")
											else
												registerVal0 = Engine.GetCurrentMap()
												registerVal0 = Engine.GetCurrentMap()
												registerVal0 = Engine.GetCurrentMap()
												registerVal0 = Engine.GetCurrentMap()
												if registerVal0 ~= "zm_cosmodrome" and registerVal0 ~= "zm_moon" and registerVal0 == "zm_temple" or registerVal0 == "zm_theater" then
													require("ui.uieditor.menus.hud.T7Hud_zm_dlc5")
													require("ui.uieditor.widgets.HUD.ZM_AmmoWidget.ZmAmmo_DpadAmmoNumbers")
													require("ui.uieditor.widgets.Reticles.LauncherMulti.LauncherMultiReticle")
												else
													require("ui.uieditor.menus.hud.T7Hud_zm_factory")
													require("ui.uieditor.widgets.HUD.ZM_AmmoWidget.ZmAmmo_DpadAmmoNumbers")
												else
													require("ui.uieditor.menus.hud.HUD_MP_require")
													require("ui.uieditor.menus.hud.mp_patch_require")
													require("ui.uieditor.widgets.MPHudWidgets.CodCaster.CodCaster")
													require("ui.uieditor.widgets.Demo.Demo")
													require("ui.uieditor.widgets.Reticles.RocketLaunchers.rocketLauncherReticle")
													registerVal0 = Engine.GetCurrentMap()
													if registerVal0 == "mp_city" then
														require("ui.uieditor.menus.VehicleHUDs.Scorestreaks.VHUD_SiegeBot")
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
	end
end

local registerVal11 = Engine.GetCurrentMap()
if not nil or registerVal11 == "zm_zod" then
	__FUNC_2E64_()
end
local function __FUNC_3BF4_(arg0, arg1, arg2)
	if arg2 ~= nil then
	end
	local registerVal4 = {}
	registerVal4.text = arg0
	registerVal4.bindCommand = arg1
	registerVal4.screenSide = arg2
	return registerVal4
end

local function __FUNC_3C7C_(arg0, arg1, arg2)
	local registerVal3 = {}
	registerVal3.hudName = arg0
	registerVal3.bindings = arg1
	registerVal3.bindingColor = "255 255 255"
	if arg2 then
		registerVal3.bindingColor = (arg2.red .. " " .. arg2.green .. " " .. arg2.blue)
	end
	return registerVal3
end

local registerVal13 = {}
local registerVal16 = {}
local registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_ZOOM", "+speed_throw")
local registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate")
local registerVal19 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE", "+vehicleattack")
__FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_MACHINE_GUN", "+vehicleattacksecond")
registerVal16 = {}
local registerVal14 = __FUNC_3C7C_("VehicleHUD_DPS", registerVal16)
registerVal13.spawner_enemy_54i_vehicle_quadtank_cannon_player = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_ZOOM", "+speed_throw")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate")
registerVal19 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_ROCKETS", "+vehicleattack")
__FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_MACHINE_GUN", "+vehicleattacksecond")
registerVal16 = {}
registerVal14 = __FUNC_3C7C_("VehicleHUD_DPS", registerVal16)
registerVal13.spawner_enemy_54i_vehicle_quadtank_mlrs_player = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate", "left")
__FUNC_3BF4_("MENU_HUD_VEHICLE_DETONATE", "+attack", "right")
registerVal16 = {}
registerVal14 = __FUNC_3C7C_("VHUD_Sentinel", registerVal16)
registerVal13.spawner_enemy_54i_vehicle_raps_suicide_player = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate", "left")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FLYDOWN", "+vehiclemovedown", "left")
registerVal19 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FLYUP", "+vehiclemoveup", "left")
local registerVal20 = __FUNC_3BF4_("MENU_HUD_VEHICLE_ZOOM", "+speed_throw", "right")
__FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_MACHINE_GUN", "+vehicleattack", "right")
registerVal16 = {}
registerVal14 = __FUNC_3C7C_("VHUD_Sentinel", registerVal16)
registerVal13.spawner_enemy_54i_vehicle_wasp_mg_player = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate", "left")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FLYDOWN", "+vehiclemovedown", "left")
registerVal19 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FLYUP", "+vehiclemoveup", "left")
registerVal20 = __FUNC_3BF4_("MENU_HUD_VEHICLE_ZOOM", "+speed_throw", "right")
__FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_ROCKETS", "+vehicleattack", "right")
registerVal16 = {}
registerVal14 = __FUNC_3C7C_("VHUD_Sentinel", registerVal16)
registerVal13.spawner_enemy_54i_vehicle_wasp_rocket_player = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_ROCKETS", "+vehicleattack")
registerVal19 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE", "+vehicleattacksecond")
__FUNC_3BF4_("MENU_HUD_VEHICLE_RAISE_LOWER_GUNS", "+vehiclemoveup")
registerVal16 = {}
registerVal14 = __FUNC_3C7C_("VehicleHUD_DPS", registerVal16)
registerVal13.spawner_enemy_54i_vehicle_pamws_minigun_player = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_ROCKETS", "+vehicleattack")
registerVal19 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_MACHINE_GUN", "+vehicleattacksecond")
__FUNC_3BF4_("MENU_HUD_VEHICLE_RAISE_LOWER_GUNS", "+vehiclemoveup")
registerVal16 = {}
registerVal14 = __FUNC_3C7C_("VehicleHUD_DPS", registerVal16)
registerVal13.spawner_enemy_54i_vehicle_amws_minigun_player = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_ROCKETS", "+attack")
__FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_MACHINE_GUN", "+vehicleattacksecond")
registerVal16 = {}
registerVal14 = __FUNC_3C7C_("VehicleHUD_DPS", registerVal16)
registerVal13.spawner_enemy_54i_vehicle_siegebot_minigun_player = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_ZOOM", "+speed_throw")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_MACHINE_GUN", "+vehicleattack")
registerVal19 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_ROCKETS", "+gostand")
registerVal20 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate")
local registerVal21 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FLYDOWN", "+vehiclemovedown")
__FUNC_3BF4_("MENU_HUD_VEHICLE_FLYUP", "+vehiclemoveup")
registerVal16 = {}
registerVal14 = __FUNC_3C7C_("VehicleHUD_DPS", registerVal16)
registerVal13.spawner_enemy_54i_vehicle_hunter_rocket_player = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_ZOOM", "+speed_throw")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate")
registerVal19 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE", "+vehicleattack")
__FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_MACHINE_GUN", "+vehicleattacksecond")
registerVal16 = {}
registerVal14 = __FUNC_3C7C_("VehicleHUD_DPS", registerVal16)
registerVal13.spawner_enemy_nrc_vehicle_quadtank_cannon_player = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_ZOOM", "+speed_throw")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate")
registerVal19 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_ROCKETS", "+vehicleattack")
__FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_MACHINE_GUN", "+vehicleattacksecond")
registerVal16 = {}
registerVal14 = __FUNC_3C7C_("VehicleHUD_DPS", registerVal16)
registerVal13.spawner_enemy_nrc_vehicle_quadtank_mlrs_player = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate", "left")
__FUNC_3BF4_("MENU_HUD_VEHICLE_DETONATE", "+attack", "right")
registerVal16 = {}
registerVal14 = __FUNC_3C7C_("VHUD_Sentinel", registerVal16)
registerVal13.spawner_enemy_nrc_vehicle_raps_suicide_player = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate", "left")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FLYDOWN", "+vehiclemovedown", "left")
registerVal19 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FLYUP", "+vehiclemoveup", "left")
registerVal20 = __FUNC_3BF4_("MENU_HUD_VEHICLE_ZOOM", "+speed_throw", "right")
__FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_MACHINE_GUN", "+vehicleattack", "right")
registerVal16 = {}
registerVal14 = __FUNC_3C7C_("VHUD_Sentinel", registerVal16)
registerVal13.spawner_enemy_nrc_vehicle_wasp_mg_player = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate", "left")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FLYDOWN", "+vehiclemovedown", "left")
registerVal19 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FLYUP", "+vehiclemoveup", "left")
registerVal20 = __FUNC_3BF4_("MENU_HUD_VEHICLE_ZOOM", "+speed_throw", "right")
__FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_ROCKETS", "+vehicleattack", "right")
registerVal16 = {}
registerVal14 = __FUNC_3C7C_("VHUD_Sentinel", registerVal16)
registerVal13.spawner_enemy_nrc_vehicle_wasp_rocket_player = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_ROCKETS", "+vehicleattack")
registerVal19 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE", "+vehicleattacksecond")
__FUNC_3BF4_("MENU_HUD_VEHICLE_RAISE_LOWER_GUNS", "+vehiclemoveup")
registerVal16 = {}
registerVal14 = __FUNC_3C7C_("VehicleHUD_DPS", registerVal16)
registerVal13.spawner_enemy_nrc_vehicle_pamws_minigun_player = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_ROCKETS", "+vehicleattack")
registerVal19 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_MACHINE_GUN", "+vehicleattacksecond")
__FUNC_3BF4_("MENU_HUD_VEHICLE_RAISE_LOWER_GUNS", "+vehiclemoveup")
registerVal16 = {}
registerVal14 = __FUNC_3C7C_("VehicleHUD_DPS", registerVal16)
registerVal13.spawner_enemy_nrc_vehicle_amws_minigun_player = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_ROCKETS", "+attack")
__FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_MACHINE_GUN", "+vehicleattacksecond")
registerVal16 = {}
registerVal14 = __FUNC_3C7C_("VehicleHUD_DPS", registerVal16)
registerVal13.spawner_enemy_nrc_vehicle_siegebot_minigun_player = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_ZOOM", "+speed_throw")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_MACHINE_GUN", "+vehicleattack")
registerVal19 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_ROCKETS", "+gostand")
registerVal20 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate")
registerVal21 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FLYDOWN", "+vehiclemovedown")
__FUNC_3BF4_("MENU_HUD_VEHICLE_FLYUP", "+vehiclemoveup")
registerVal16 = {}
registerVal14 = __FUNC_3C7C_("VehicleHUD_DPS", registerVal16)
registerVal13.spawner_enemy_nrc_vehicle_hunter_rocket_player = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_ZOOM", "+speed_throw")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate")
registerVal19 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE", "+vehicleattack")
__FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_MACHINE_GUN", "+vehicleattacksecond")
registerVal16 = {}
registerVal14 = __FUNC_3C7C_("VehicleHUD_DPS", registerVal16)
registerVal13.spawner_enemy_sec_vehicle_quadtank_cannon_player = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_ZOOM", "+speed_throw")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate")
registerVal19 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_ROCKETS", "+vehicleattack")
__FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_MACHINE_GUN", "+vehicleattacksecond")
registerVal16 = {}
registerVal14 = __FUNC_3C7C_("VehicleHUD_DPS", registerVal16)
registerVal13.spawner_enemy_sec_vehicle_quadtank_mlrs_player = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate", "left")
__FUNC_3BF4_("MENU_HUD_VEHICLE_DETONATE", "+attack", "right")
registerVal16 = {}
registerVal14 = __FUNC_3C7C_("VHUD_Sentinel", registerVal16)
registerVal13.spawner_enemy_sec_vehicle_raps_suicide_player = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate", "left")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FLYDOWN", "+vehiclemovedown", "left")
registerVal19 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FLYUP", "+vehiclemoveup", "left")
registerVal20 = __FUNC_3BF4_("MENU_HUD_VEHICLE_ZOOM", "+speed_throw", "right")
__FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_MACHINE_GUN", "+vehicleattack", "right")
registerVal16 = {}
registerVal14 = __FUNC_3C7C_("VHUD_Sentinel", registerVal16)
registerVal13.spawner_enemy_sec_vehicle_wasp_mg_player = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate", "left")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FLYDOWN", "+vehiclemovedown", "left")
registerVal19 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FLYUP", "+vehiclemoveup", "left")
registerVal20 = __FUNC_3BF4_("MENU_HUD_VEHICLE_ZOOM", "+speed_throw", "right")
__FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_ROCKETS", "+vehicleattack", "right")
registerVal16 = {}
registerVal14 = __FUNC_3C7C_("VHUD_Sentinel", registerVal16)
registerVal13.spawner_enemy_sec_vehicle_wasp_rocket_player = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_ROCKETS", "+vehicleattack")
registerVal19 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE", "+vehicleattacksecond")
__FUNC_3BF4_("MENU_HUD_VEHICLE_RAISE_LOWER_GUNS", "+vehiclemoveup")
registerVal16 = {}
registerVal14 = __FUNC_3C7C_("VehicleHUD_DPS", registerVal16)
registerVal13.spawner_enemy_sec_vehicle_pamws_minigun_player = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_ROCKETS", "+vehicleattack")
registerVal19 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_MACHINE_GUN", "+vehicleattacksecond")
__FUNC_3BF4_("MENU_HUD_VEHICLE_RAISE_LOWER_GUNS", "+vehiclemoveup")
registerVal16 = {}
registerVal14 = __FUNC_3C7C_("VehicleHUD_DPS", registerVal16)
registerVal13.spawner_enemy_sec_vehicle_amws_minigun_player = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_ROCKETS", "+attack")
__FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_MACHINE_GUN", "+vehicleattacksecond")
registerVal16 = {}
registerVal14 = __FUNC_3C7C_("VehicleHUD_DPS", registerVal16)
registerVal13.spawner_enemy_sec_vehicle_siegebot_minigun_player = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_ZOOM", "+speed_throw")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_MACHINE_GUN", "+vehicleattack")
registerVal19 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_ROCKETS", "+gostand")
registerVal20 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate")
registerVal21 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FLYDOWN", "+vehiclemovedown")
__FUNC_3BF4_("MENU_HUD_VEHICLE_FLYUP", "+vehiclemoveup")
registerVal16 = {}
registerVal14 = __FUNC_3C7C_("VehicleHUD_DPS", registerVal16)
registerVal13.spawner_enemy_sec_vehicle_hunter_rocket_player = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate", "left")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FLYDOWN", "+vehiclemovedown", "left")
registerVal19 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FLYUP", "+vehiclemoveup", "left")
registerVal20 = __FUNC_3BF4_("MENU_HUD_VEHICLE_ZOOM", "+speed_throw", "right")
__FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_MACHINE_GUN", "+vehicleattack", "right")
registerVal16 = {}
registerVal14 = __FUNC_3C7C_("VHUD_Sentinel", registerVal16)
registerVal13.spawner_ally_ega_vehicle_wasp_mg_player = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_ROCKETS", "+vehicleattack")
registerVal19 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_MACHINE_GUN", "+vehicleattacksecond")
__FUNC_3BF4_("MENU_HUD_VEHICLE_RAISE_LOWER_GUNS", "+vehiclemoveup")
registerVal16 = {}
registerVal14 = __FUNC_3C7C_("VehicleHUD_DPS", registerVal16)
registerVal13.spawner_ally_ega_vehicle_amws_minigun_player = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_ZOOM", "+speed_throw", "left")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_MACHINE_GUN", "+vehicleattack", "right")
__FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_ROCKETS", "+vehicleattacksecond", "right")
registerVal16 = {}
registerVal14 = __FUNC_3C7C_("VehicleHUD_VTOL", registerVal16)
registerVal13.veh_bo3_mil_vtol_fighter_player_agile = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_MACHINE_GUN", "+vehicleattack", "right")
__FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_ROCKETS", "+vehicleattacksecond", "right")
registerVal16 = {}
registerVal14 = __FUNC_3C7C_("VehicleHUD_VTOL", registerVal16)
registerVal13.veh_bo3_mil_vtol_fighter_player_dogfight = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_MACHINE_GUN", "+vehicleattack", "right")
__FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_ROCKETS", "+vehicleattacksecond", "right")
registerVal16 = {}
registerVal14 = __FUNC_3C7C_("VehicleHUD_VTOL", registerVal16)
registerVal13.veh_bo3_mil_vtol_fighter_player_dogfight_slow = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_ZOOM", "+speed_throw", "right")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate", "left")
__FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE", "+vehicleattack", "right")
registerVal16 = {}
registerVal14 = __FUNC_3C7C_("VehicleHUD_DPS", registerVal16)
registerVal13.veh_bo3_turret_auto_ceiling_player = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_ZOOM", "+speed_throw", "right")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate", "left")
__FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE", "+vehicleattack", "right")
registerVal16 = {}
registerVal14 = __FUNC_3C7C_("VehicleHUD_DPS", registerVal16)
registerVal13.veh_bo3_turret_auto_sentry_player = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_ZOOM", "+speed_throw", "right")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate", "left")
__FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE", "+vehicleattack", "right")
registerVal16 = {}
registerVal14 = __FUNC_3C7C_("VehicleHUD_DPS", registerVal16)
registerVal13.veh_bo3_turret_auto_sentry_sniper_player = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_ZOOM", "+speed_throw", "right")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate", "left")
__FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE", "+vehicleattack", "right")
registerVal16 = {}
registerVal14 = __FUNC_3C7C_("VehicleHUD_DPS", registerVal16)
registerVal13.veh_bo3_turret_player = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_ZOOM", "+speed_throw", "right")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate", "left")
__FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE", "+vehicleattack", "right")
registerVal16 = {}
registerVal14 = __FUNC_3C7C_("VehicleHUD_DPS", registerVal16)
registerVal13.veh_bo3_turret_hyperion = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_ZOOM", "+speed_throw", "right")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate", "left")
__FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE", "+vehicleattack", "right")
registerVal16 = {}
registerVal14 = __FUNC_3C7C_("VehicleHUD_DPS", registerVal16)
registerVal13.veh_bo3_turret_player_inaccurate = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_ZOOM", "+speed_throw", "right")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate", "left")
__FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE", "+vehicleattack", "right")
registerVal16 = {}
registerVal14 = __FUNC_3C7C_("VehicleHUD_DPS", registerVal16)
registerVal13.veh_bo3_turret_sniper = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_ZOOM", "+speed_throw", "right")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate", "left")
__FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE", "+vehicleattack", "right")
registerVal16 = {}
registerVal14 = __FUNC_3C7C_("VehicleHUD_DPS", registerVal16)
registerVal13.veh_bo3_turret_mobile_wall_left = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_ZOOM", "+speed_throw", "right")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate", "left")
__FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE", "+vehicleattack", "right")
registerVal16 = {}
registerVal14 = __FUNC_3C7C_("VehicleHUD_DPS", registerVal16)
registerVal13.veh_bo3_turret_mobile_wall_right = registerVal14
__FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate", "left")
{} = {}
registerVal14 = __FUNC_3C7C_("VehicleHUD_DPS", {})
registerVal13.veh_bo3_turret_floodlight = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_ZOOM", "+speed_throw", "right")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate", "left")
__FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE", "+vehicleattack", "right")
registerVal16 = {}
registerVal17 = {}
registerVal17.red = 208.000000
registerVal17.green = 192.000000
registerVal17.blue = 129.000000
registerVal14 = __FUNC_3C7C_("VHUD_Turret", registerVal16, registerVal17)
registerVal13.sentry_turret = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate", "left")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FLYDOWN", "+vehiclemovedown", "left")
registerVal19 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FLYUP", "+vehiclemoveup", "left")
registerVal20 = __FUNC_3BF4_("MENU_HUD_VEHICLE_ZOOM", "+speed_throw", "right")
__FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_MACHINE_GUN", "+vehicleattack", "right")
registerVal16 = {}
registerVal14 = __FUNC_3C7C_("VHUD_Sentinel", registerVal16)
registerVal13.veh_sentinel_player_mp = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate", "left")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_TOGGLE", "+gostand", "left")
registerVal19 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_MACHINE_GUN", "+vehicleattacksecond", "right")
registerVal20 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_ROCKETS", "+vehicleattack", "right")
__FUNC_3BF4_("MENU_HUD_VEHICLE_ZOOM", "+speed_throw", "right")
registerVal16 = {}
registerVal17 = {}
registerVal17.red = 112.000000
registerVal17.green = 255.000000
registerVal17.blue = 113.000000
registerVal14 = __FUNC_3C7C_("VHUD_AGR", registerVal16, registerVal17)
registerVal13.spawner_bo3_ai_tank_mp_player = registerVal14
registerVal14 = {}
local registerVal15 = {}
local function __FUNC_3D7B_(arg0)
	local registerVal1 = Engine.GetModelForController(arg0, "vehicle.isVehicleOwner")
	local registerVal2 = Engine.GetModelValue(registerVal1)
	if registerVal2 ~= true then
	end
	return true
end

registerVal15.condition = __FUNC_3D7B_
registerVal18 = {}
registerVal19 = __FUNC_3BF4_("MENU_HUD_VEHICLE_SWITCH_CAMERA", "+gostand", "left")
registerVal20 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate", "left")
registerVal21 = __FUNC_3BF4_("MENU_HUD_VEHICLE_MOVE", "+smoke", "left")
local registerVal22 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_MACHINE_GUN", "+vehicleattack", "right")
local registerVal23 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_ROCKETS", "+vehicleattacksecond", "right")
__FUNC_3BF4_("MENU_HUD_VEHICLE_ZOOM", "+speed_throw", "right")
registerVal18 = {}
registerVal16 = __FUNC_3C7C_("VHUD_MS", registerVal18)
registerVal15.hud = registerVal16
registerVal16 = {}
registerVal19 = {}
registerVal20 = __FUNC_3BF4_("MENU_HUD_VEHICLE_SWITCH_CAMERA", "+gostand", "left")
registerVal21 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate", "left")
registerVal22 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_MACHINE_GUN", "+vehicleattack", "right")
__FUNC_3BF4_("MENU_HUD_VEHICLE_ZOOM", "+speed_throw", "right")
registerVal19 = {}
registerVal17 = __FUNC_3C7C_("VHUD_MS_Gunner", registerVal19)
registerVal16.hud = registerVal17
registerVal14 = {registerVal15, registerVal16}
registerVal13.veh_bo3_mil_gunship_mp = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_THROTTLE", "+movestick", "left")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_SPEEDBOOST", "+vehicleboost", "left")
registerVal19 = __FUNC_3BF4_("MENU_HUD_VEHICLE_JUMP", "+gostand", "left")
registerVal20 = __FUNC_3BF4_("MENU_HUD_VEHICLE_DETONATE", "+attack", "right")
__FUNC_3BF4_("MENU_HUD_VEHICLE_STEER", "+lookstick", "right")
registerVal16 = {}
registerVal14 = __FUNC_3C7C_("VHUD_HCXD", registerVal16)
registerVal13.rc_car_mp = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_SLOW", "+speed_throw", "left")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate", "left")
registerVal19 = __FUNC_3BF4_("MENU_HUD_VEHICLE_STEER", "+lookstick", "left")
__FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE", "+vehicleattack", "right")
registerVal16 = {}
registerVal17 = {}
registerVal17.red = 208.000000
registerVal17.green = 192.000000
registerVal17.blue = 129.000000
registerVal14 = __FUNC_3C7C_("VHUD_Dart", registerVal16, registerVal17)
registerVal13.veh_dart_mp = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_SLOW", "+speed_throw", "left")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_SPEEDBOOST", "+breath_sprint", "left")
registerVal19 = __FUNC_3BF4_("MENU_HUD_VEHICLE_CLUSTERBOMB", "+attack", "right")
__FUNC_3BF4_("MENU_HUD_VEHICLE_STEER", "+lookstick", "right")
registerVal16 = {}
registerVal14 = __FUNC_3C7C_("VHUD_Hellstorm", registerVal16)
registerVal13.operating_predator = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_ZOOM", "+speed_throw", "right")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate", "left")
__FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE", "+vehicleattack", "right")
registerVal16 = {}
registerVal17 = {}
registerVal17.red = 208.000000
registerVal17.green = 192.000000
registerVal17.blue = 129.000000
registerVal14 = __FUNC_3C7C_("VHUD_SiegeBot", registerVal16, registerVal17)
registerVal13.spawner_bo3_siegebot_mp = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_ZOOM", "+speed_throw", "right")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate", "left")
__FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE", "+vehicleattack", "right")
registerVal16 = {}
registerVal17 = {}
registerVal17.red = 208.000000
registerVal17.green = 192.000000
registerVal17.blue = 129.000000
registerVal14 = __FUNC_3C7C_("VHUD_SiegeBot", registerVal16, registerVal17)
registerVal13.variant_bo3_siegebot_mp = registerVal14
registerVal16 = {}
registerVal17 = __FUNC_3BF4_("MENU_HUD_VEHICLE_EXIT", "+activate", "left")
registerVal18 = __FUNC_3BF4_("MENU_HUD_VEHICLE_TOGGLE", "+gostand", "left")
registerVal19 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_MACHINE_GUN", "+vehicleattacksecond", "right")
registerVal20 = __FUNC_3BF4_("MENU_HUD_VEHICLE_FIRE_ROCKETS", "+vehicleattack", "right")
__FUNC_3BF4_("MENU_HUD_VEHICLE_ZOOM", "+speed_throw", "right")
registerVal16 = {}
registerVal17 = {}
registerVal17.red = 112.000000
registerVal17.green = 255.000000
registerVal17.blue = 113.000000
registerVal14 = __FUNC_3C7C_("VHUD_QuadTank", registerVal16, registerVal17)
registerVal13.spawner_bo3_quadtank_mp = registerVal14
local function __FUNC_3E5C_(arg0, arg1, arg2, arg3)
	if arg3 and arg0.vehicleHUD then
	end
	if arg0.vehicleHUD then
		if arg0.vehicleHUD.vehicleType == arg0.vehicleHUD.vehicleType and not arg3 then
			return 
		end
		arg0.vehicleHUD:close()
		arg0.vehicleHUD = nil
		local registerVal5 = arg0:getOwner()
		Engine.DisableSceneFilter(registerVal5, 4.000000)
	end
	if arg1 or arg0.vehicleHUD.vehicleType == "" then
		return 
	end
	local registerVal4 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
	if registerVal4 then
		return 
	end
	if not registerVal13[arg0.vehicleHUD.vehicleType] then
		registerVal4 = {}
		registerVal4.hudName = arg0.vehicleHUD.vehicleType
	end
	if not registerVal4.hudName then
		local registerVal6, registerVal7, registerVal8 = ipairs(registerVal4)
		for index9,value10 in registerVal6, registerVal7, registerVal8 do
			local registerVal11 = value10.condition(arg1)
			if arg1 or registerVal11 then
			else
			end
		end
		if value10 and arg1 or not value10.hud.hudName then
			return 
		end
	end
	if LUI.createMenu[value10.hud.hudName] then
		DataSources.VehicleInfo.setButtonModels(arg1, value10.hud.bindings, value10.hud.bindingColor)
		registerVal6 = LUI.createMenu[value10.hud.hudName](arg1)
		arg0.vehicleHUD = registerVal6
		arg0.vehicleHUD:setPriority(-10.000000)
		arg0.vehicleHUD.vehicleType = arg0.vehicleHUD.vehicleType
		arg0.vehicleHUD:setLeftRight(true, true, 0.000000, 0.000000)
		arg0.vehicleHUD:setTopBottom(true, true, 0.000000, 0.000000)
		local function __FUNC_45C0_(arg1)
			if arg1 == arg0.vehicleHUD then
				arg0.vehicleHUD = nil
			end
		end

		LUI.OverrideFunction_CallOriginalSecond(arg0.vehicleHUD, "close", __FUNC_45C0_)
		arg0:addForceClosedChild(arg0.vehicleHUD)
		if value10.hud.hudName ~= "VHUD_Dart" and value10.hud.hudName ~= "VHUD_Sentinel" and value10.hud.hudName ~= "VHUD_AGR" and value10.hud.hudName ~= "VHUD_HCXD" and value10.hud.hudName ~= "VHUD_Turret" and value10.hud.hudName ~= "VHUD_MS" and value10.hud.hudName == "VHUD_MS_Gunner" or value10.hud.hudName == "VehicleHUD_DPS" then
			registerVal8 = {}
			registerVal8.name = "menu_opened"
			registerVal8.controller = arg1
			arg0.vehicleHUD:processEvent(registerVal8)
		else
			arg0.vehicleHUD:sizeToSafeArea(arg1)
		end
	end
end

local function __FUNC_4621_(arg0, arg1)
	local registerVal3 = IsCampaign()
	if registerVal3 then
		local registerVal5 = Engine.GetModelForController(arg1)
		local registerVal4 = Engine.GetModel(registerVal5, "safehouse")
		if registerVal4 then
			registerVal5 = CoD.SafeGetModelValue(registerVal4, "inTrainingSim")
			if registerVal5 ~= 1.000000 then
			end
		end
		if CoD.isSafehouse and not true then
		end
	end
	registerVal4 = Engine.GetModelForController(arg1)
	registerVal3 = Engine.GetModel(registerVal4, "vehicle")
	registerVal4 = CoD.SafeGetModelValue(registerVal3, "vehicleType")
	if registerVal3 and registerVal4 == "killcamVehicle" then
	end
	registerVal4 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
	if registerVal4 then
	end
	arg0.reticleVisible = false
	if arg0.reticle then
		if arg1 or not 1.000000 then
		end
		arg0.reticle:setAlpha(0.000000)
	end
end

local function __FUNC_4985_(arg0, arg1, arg2, arg3)
	if arg0.reticle then
		if arg3 then
		end
		if arg0.reticle.reticleType == arg0.reticle.reticleType and not arg3 then
			return 
		end
		arg0.reticle:close()
		arg0.reticle = nil
	end
	if arg0.reticle.reticleType and arg0.reticle.reticleType ~= "" and CoD[arg0.reticle.reticleType] and CoD[arg0.reticle.reticleType].new then
		local registerVal4 = CoD[arg0.reticle.reticleType].new(arg0, arg1)
		arg0.reticle = registerVal4
		arg0.reticle.reticleType = arg0.reticle.reticleType
		local registerVal6 = {}
		registerVal6.name = "update_state"
		registerVal6.menu = arg0
		arg0.reticle:processEvent(registerVal6)
		arg0.reticle:setPriority(-100.000000)
		if arg1 or not 1.000000 then
		end
		arg0.reticle:setAlpha(0.000000)
		local function __FUNC_4CB7_(arg1)
			if arg1 == arg0.reticle then
				arg0.reticle = nil
			end
		end

		LUI.OverrideFunction_CallOriginalSecond(arg0.reticle, "close", __FUNC_4CB7_)
		arg0:addForceClosedChild(arg0.reticle)
	end
	__FUNC_4621_(arg0, arg1)
end

local function __FUNC_4D12_(arg0, arg1, arg2)
	if arg0.lockOnWidget then
		arg0.lockOnWidget:close()
		arg0.lockOnWidget = nil
	end
	if arg2 and arg2 ~= "" and CoD[arg2] and CoD[arg2].new then
		local registerVal4 = Engine.GetModelForController(arg1)
		local registerVal3 = Engine.CreateModel(registerVal4, "lockOnModel")
		local registerVal5 = Engine.CreateModel(registerVal3, "status")
		Engine.SetModelValue(registerVal5, 0.000000)
		registerVal5 = Engine.CreateModel(registerVal3, "lockOnPercent")
		Engine.SetModelValue(registerVal5, 0.000000)
		registerVal4 = CoD[arg2].new(arg0, arg1)
		arg0.lockOnWidget = registerVal4
		arg0.lockOnWidget:setModel(registerVal3)
		local registerVal6 = {}
		registerVal6.name = "update_state"
		registerVal6.menu = arg0
		arg0.lockOnWidget:processEvent(registerVal6)
		arg0:addForceClosedChild(arg0.lockOnWidget)
	end
end

local function __FUNC_5021_(arg0)
	local registerVal3 = {}
	registerVal3.leftAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.left = 0.000000
	registerVal3.right = 0.000000
	registerVal3.topAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.top = 0.000000
	registerVal3.bottom = 0.000000
	local registerVal1 = CoD.Menu.NewFromState("HUD", registerVal3, nil, arg0)
	local registerVal2 = Engine.GetCurrentMap()
	if not CoD.isCampaign and registerVal2 ~= "zm_zod" then
		if CoD.isZombie then
			__FUNC_2E64_()
		else
			registerVal1:registerEventHandler("delay_load_menus", __FUNC_2E64_)
		end
	end
	registerVal1:addElement(LUI.UITimer.new(3000.000000, "delay_load_menus", true))
	if not LUI.roots.UIRootFull.safeAreaOverlay then
		registerVal3 = CoD.SetupSafeAreaOverlay()
		LUI.roots.UIRootFull.safeAreaOverlay = registerVal3
		LUI.roots.UIRootFull:addElement(LUI.roots.UIRootFull.safeAreaOverlay)
	end
	registerVal1:setOwner(arg0)
	registerVal1.controller = arg0
	local function __FUNC_56BC_(arg0)
		local registerVal1, registerVal2, registerVal3 = ipairs(registerVal1.forceCloseChildren)
		if  == arg0 then
			return 
		end
		return -1.000000
	end

	local function __FUNC_5751_(arg0)
		local registerVal1 = __FUNC_56BC_(arg0)
		if registerVal1 ~= -1.000000 then
			table.remove(registerVal1.forceCloseChildren, registerVal1)
		end
	end

	registerVal1.forceCloseChildren = {}
	local function __FUNC_57F8_(arg0, arg1)
		arg0:addElement(arg1)
		local registerVal2 = __FUNC_56BC_(arg1)
		if registerVal2 == -1.000000 then
			table.insert(arg0.forceCloseChildren, arg1)
			LUI.OverrideFunction_CallOriginalFirst(arg1, "close", __FUNC_5751_)
		end
	end

	registerVal1.addForceClosedChild = __FUNC_57F8_
	local function __FUNC_5924_(arg0, arg1)
		arg0.safeArea:addElement(arg1)
		local registerVal2 = __FUNC_56BC_(arg1)
		if registerVal2 == -1.000000 then
			table.insert(arg0.forceCloseChildren, arg1)
			LUI.OverrideFunction_CallOriginalFirst(arg1, "close", __FUNC_5751_)
		end
	end

	registerVal1.addForceClosedSafeAreaChild = __FUNC_5924_
	local function __FUNC_5A6E_(arg0, arg1)
		local registerVal2 = __FUNC_56BC_(arg1)
		if registerVal2 == -1.000000 then
			table.insert(arg0.forceCloseChildren, arg1)
			LUI.OverrideFunction_CallOriginalFirst(arg1, "close", __FUNC_5751_)
		end
	end

	registerVal1.addCustomForceClosedWidget = __FUNC_5A6E_
	nil(registerVal1)
	registerVal1:registerEventHandler("debug_reload", HUD_DebugReload)
	if CoD.isPC then
		Engine.Exec(arg0, "ui_keyboard_cancel")
		Engine.SetForceMouseRootFull(false)
	end
	Engine.PlayMenuMusic("")
	if arg0 == 0.000000 then
		local registerVal4 = LUI.createMenu.Loading(arg0)
		registerVal1.loadingMenu = registerVal4
		registerVal1:addForceClosedChild(registerVal1.loadingMenu)
	end
	registerVal1:setAlpha(1.000000)
	return registerVal1
end

LUI.createMenu.HUD = __FUNC_5021_
local function __FUNC_5B78_(arg0)
	HUD_SetupEventHandlers_Common(arg0)
	if CoD.isZombie == false then
		HUD_SetupEventHandlers_Multiplayer(arg0)
	end
end

function UpdateHUDVisibility(arg0, arg1)
	local registerVal2 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_CAMERA_ANIM_HIDING_HUD)
	if registerVal2 then
		if arg0.T7HudMenu then
			arg0.T7HudMenu:setAlpha(0.000000)
		end
		if arg0.T7HudMenuGameMode then
			arg0.T7HudMenuGameMode:setAlpha(0.000000)
		else
			if arg0.T7HudMenu then
				arg0.T7HudMenu:setAlpha(1.000000)
			end
			if arg0.T7HudMenuGameMode then
				arg0.T7HudMenuGameMode:setAlpha(1.000000)
			end
		end
	end
end

function HUD_Hide(arg0, arg1)
	arg0:setAlpha(0.000000)
end

function HUD_Show(arg0, arg1)
	arg0:setAlpha(1.000000)
end

local function __FUNC_5EDB_(arg0, arg1)
	if LUI.roots[("UIRoot" .. arg1.controller)].ingameFriendsList then
		local registerVal5 = {}
		registerVal5.name = "closeFriendsList"
		registerVal5.controller = arg1.controller
		LUI.roots[rootName]:processEvent(registerVal5)
		registerVal5 = {}
		registerVal5.name = "closeallpopups"
		registerVal5.controller = arg1.controller
		LUI.roots[rootName]:processEvent(registerVal5)
	else
		arg0:openPopup("FriendsList", arg1.controller)
	end
end

local function __FUNC_60CF_(arg0, arg1)
	Engine.SetActiveMenu(arg1.controller, CoD.UIMENU_NONE)
	local registerVal4 = {}
	registerVal4.name = "close_scoreboard_menu"
	local registerVal5 = arg0:getOwner()
	registerVal4.controller = registerVal5
	arg0:processEvent(registerVal4)
end

local function __FUNC_61F6_(arg0, arg1)
	if arg1.isError == false then
		local registerVal6 = Engine.Localize("MENU_INVITE_SENT")
		CoD.OverlayUtility.ShowToast("Invite", registerVal6, arg1.gamertag, LuaEnums.INVITE_TOAST_POPUP_ICON)
	else
		registerVal6 = Engine.ToUpper(Engine.Localize("MENU_INVITE_FAILED"))
		CoD.OverlayUtility.ShowToast("Invite", registerVal6, arg1.gamertag, LuaEnums.INVITE_TOAST_POPUP_ERROR_ICON)
	end
	return true
end

local function __FUNC_6430_(arg0)
	arg0:registerEventHandler("first_snapshot", HUD_FirstSnapshot)
	arg0:registerEventHandler("open_ingame_menu", nil)
	arg0:registerEventHandler("close_ingame_menu", HUD_CloseInGameMenu)
	arg0:registerEventHandler("open_scoreboard_menu", HUD_OpenScoreBoard)
	arg0:registerEventHandler("close_scoreboard_menu", HUD_CloseScoreBoard)
	arg0:registerEventHandler("open_toaster_popup", __FUNC_61F6_)
	local registerVal4 = Engine.GetModelForController(arg0.controller)
	local registerVal3 = Engine.GetModel(registerVal4, "scriptNotify")
	local function __FUNC_6DA1_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 == "show_outcome" then
			local registerVal2 = {}
			registerVal2.controller = arg0.controller
			registerVal2.name = registerVal1
			local registerVal3 = CoD.GetScriptNotifyData(arg1)
			registerVal2.data = registerVal3
			__FUNC_60CF_(arg0, registerVal2)
		else
			if registerVal1 == "open_side_mission_countdown" then
				registerVal2 = CoD.GetScriptNotifyData(arg1)
				CoD.SideMissionIndex = registerVal2[1.000000]
				local registerVal5 = {}
				registerVal5.name = "open_hud_menu"
				registerVal5.controller = arg0.controller
				registerVal5.menuName = "LoadingSideMission"
				arg0:processEvent(registerVal5)
			else
				if registerVal1 == "close_side_mission_countdown" then
					local registerVal4 = {}
					registerVal4.name = "close_hud_menu"
					registerVal4.controller = arg0.controller
					registerVal4.menuName = "LoadingSideMission"
					arg0:processEvent(registerVal4)
				else
					if registerVal1 == "track_victim_death" then
						registerVal2 = {}
						registerVal2.controller = arg0.controller
						registerVal2.name = registerVal1
						registerVal3 = CoD.GetScriptNotifyData(arg1)
						registerVal2.data = registerVal3
						nil(arg0, registerVal2)
					else
						if registerVal1 == "force_scoreboard" then
							registerVal2 = Engine.IsDemoPlaying()
							if registerVal2 == false or CoD.isZombie == false then
								registerVal3 = CoD.GetScriptNotifyData(arg1)
								if CoD.isZombie == true and registerVal3 ~= nil then
								end
								registerVal4 = Engine.GetModelForController(arg0.controller)
								registerVal3 = Engine.CreateModel(registerVal4, "forceScoreboard")
								Engine.SetModelValue(registerVal3, registerVal3[1.000000])
							else
								if registerVal1 == "open_ingame_menu" then
									registerVal2 = {}
									registerVal2.controller = arg0.controller
									registerVal2.name = registerVal1
									registerVal3 = CoD.GetScriptNotifyData(arg1)
									registerVal2.data = registerVal3
									nil(arg0, registerVal2)
								else
									if registerVal1 == "close_ingame_menu" then
										registerVal2 = {}
										registerVal2.controller = arg0.controller
										registerVal2.name = registerVal1
										registerVal3 = CoD.GetScriptNotifyData(arg1)
										registerVal2.data = registerVal3
										HUD_CloseSpecificInGameMenu(arg0, registerVal2)
									end
								end
							end
						end
					end
				end
			end
		end
	end

	arg0:subscribeToModel(registerVal3, __FUNC_6DA1_)
	arg0:registerEventHandler("open_migration_menu", HUD_StartMigration)
	arg0:registerEventHandler("open_hud_menu", HUD_OpenHudMenu)
	arg0:registerEventHandler("close_hud_menu", HUD_CloseHudMenu)
	arg0:registerEventHandler("open_hud_popup", HUD_OpenHudPopup)
	arg0:registerEventHandler("close_hud", HUD_Close)
	arg0:registerEventHandler("spectate_hide_gamehud", HUD_Hide)
	arg0:registerEventHandler("spectate_show_gamehud", HUD_Show)
	arg0:registerEventHandler("fullscreen_viewport_start", HUD_FullscreenStart)
	arg0:registerEventHandler("fullscreen_viewport_stop", HUD_FullscreenStop)
	arg0:registerEventHandler("update_scoreboard_columns", HUD_UpdateScoreboardColumns)
	local registerVal1 = arg0:getOwner()
	if registerVal1 == nil then
		local registerVal2 = Engine.GetPrimaryController()
	end
	registerVal2 = Engine.GetModelForController(registerVal2)
	local registerVal5 = Engine.GetModel(registerVal2, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_CAMERA_ANIM_HIDING_HUD))
	local function __FUNC_7342_(arg1)
		local registerVal3 = {}
		registerVal3.controller = registerVal2
		UpdateHUDVisibility(arg0, registerVal3)
	end

	arg0:subscribeToModel(registerVal5, __FUNC_7342_)
	Engine.CreateModel(registerVal2, "vehicle.vehicleType")
	Engine.CreateModel(registerVal2, "forceUpdateVehicleBindings")
	Engine.CreateModel(registerVal2, "currentWeapon.weaponReticle")
	Engine.CreateModel(registerVal2, "currentWeapon.lockOnWidget")
	local function __FUNC_73B5_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			__FUNC_3E5C_(arg0, registerVal2, registerVal1, false)
			__FUNC_4621_(arg0, registerVal2)
		end
	end

	arg0:subscribeToGlobalModel(registerVal2, "PerController", "vehicle.vehicleType", __FUNC_73B5_)
	local function __FUNC_744F_(arg1)
		if arg0.vehicleHUD then
			__FUNC_3E5C_(arg0, registerVal2, vehicleType, true)
		end
	end

	arg0:subscribeToGlobalModel(registerVal2, "PerController", "forceUpdateVehicleBindings", __FUNC_744F_)
	arg0.reticleVisible = true
	local function __FUNC_74D1_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			__FUNC_4985_(arg0, registerVal2, registerVal1, false)
		end
	end

	arg0:subscribeToGlobalModel(registerVal2, "PerController", "currentWeapon.weaponReticle", __FUNC_74D1_)
	local function __FUNC_755B_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			__FUNC_4D12_(arg0, registerVal2, registerVal1)
		end
	end

	arg0:subscribeToGlobalModel(registerVal2, "PerController", "currentWeapon.lockOnWidget", __FUNC_755B_)
	CoD.DemoUtility.RegisterEventHandlers(arg0, registerVal2)
	registerVal3 = Engine.IsDemoPlaying()
	if registerVal3 then
		local function __FUNC_75DF_(arg1)
			local registerVal2 = DataSources.PerController.getModel(registerVal2)
			local registerVal1 = CoD.SafeGetModelValue(registerVal2, "vehicle.vehicleType")
			__FUNC_3E5C_(arg0, registerVal2, registerVal1, true)
			__FUNC_4621_(arg0, registerVal2)
		end

		arg0:subscribeToGlobalModel(registerVal2, "Demo", "cameraMode", __FUNC_75DF_)
	end
	local function __FUNC_76EF_(arg0)
		local registerVal1 = IsParamModelEqualToString(arg0, "hud_refresh")
		if registerVal1 then
			Engine.ForceHUDRefresh()
		end
	end

	arg0:subscribeToGlobalModel(registerVal2, "PerController", "scriptNotify", __FUNC_76EF_)
end

HUD_SetupEventHandlers_Common = __FUNC_6430_
local function __FUNC_77A5_(arg0)
	arg0:registerEventHandler("hud_force_kill_killstreak_hud", nil)
	local registerVal1 = arg0:getOwner()
	if registerVal1 == nil then
		local registerVal2 = Engine.GetPrimaryController()
	end
	local function __FUNC_7E6C_(arg1)
		local registerVal3 = {}
		registerVal3.controller = registerVal2
		HUD_UpdateRefresh(arg0, registerVal3)
	end

	local registerVal3 = Engine.GetModelForController(registerVal2)
	local registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SPECTATING_CLIENT))
	arg0:subscribeToModel(registerVal6, __FUNC_7E6C_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_TEAM_SPECTATOR))
	arg0:subscribeToModel(registerVal6, __FUNC_7E6C_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE))
	arg0:subscribeToModel(registerVal6, __FUNC_7E6C_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED))
	arg0:subscribeToModel(registerVal6, __FUNC_7E6C_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM))
	arg0:subscribeToModel(registerVal6, __FUNC_7E6C_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_FINAL_KILLCAM))
	arg0:subscribeToModel(registerVal6, __FUNC_7E6C_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_ROUND_END_KILLCAM))
	arg0:subscribeToModel(registerVal6, __FUNC_7E6C_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_MIGRATING_HOST))
	arg0:subscribeToModel(registerVal6, __FUNC_7E6C_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SELECTING_LOCATION))
	local function __FUNC_7EDF_(arg1)
		local registerVal3 = {}
		registerVal3.controller = registerVal2
		nil(arg0, registerVal3)
	end

	arg0:subscribeToModel(registerVal6, __FUNC_7EDF_)
	local registerVal4 = Engine.GetModel(registerVal3, "team")
	if registerVal4 == nil then
		local registerVal5 = Engine.CreateModel(registerVal3, "team")
		Engine.SetModelValue(registerVal5, 0.000000)
	end
	if CoD.isPC then
		arg0:registerEventHandler("chooseclass_hotkey", HUD_Handle_ChooseClass_HotKey)
	end
	registerVal6 = Engine.GetModelForController(registerVal2)
	registerVal5 = Engine.CreateModel(registerVal6, "forceScoreboard")
	Engine.SetModelValue(registerVal5, 0.000000)
	local function __FUNC_7F34_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if 0.000000 < registerVal1 then
			local registerVal3 = {}
			registerVal3.name = "open_scoreboard_menu"
			registerVal3.controller = registerVal2
			arg0:processEvent(registerVal3)
		else
			registerVal3 = {}
			registerVal3.name = "close_scoreboard_menu"
			registerVal3.controller = registerVal2
			arg0:processEvent(registerVal3)
		end
	end

	arg0:subscribeToModel(registerVal5, __FUNC_7F34_)
end

HUD_SetupEventHandlers_Multiplayer = __FUNC_77A5_
local function __FUNC_805D_(arg0, arg1)
	if CoD.isSafehouse then
		require("ui.uieditor.menus.CP_Safehouse_require")
		require("ui.uieditor.menus.cp_safehouse_patch_require")
	end
	local registerVal4 = {}
	registerVal4.name = "close_all_popups"
	registerVal4.controller = arg1.controller
	arg0:dispatchEventToChildren(registerVal4)
	arg0.bootOnOpen = false
	if arg0.T7HudMenu ~= nil then
		if arg1.debugReload then
			CoD.Menu.DebugCloseMenu(arg0.T7HudMenu)
			arg0.T7HudMenu = nil
		else
			arg0.bootOnOpen = arg0.T7HudMenu.hasBooted
		end
	end
	if arg0.T7HudMenuGameMode ~= nil and arg1.debugReload then
		CoD.Menu.DebugCloseMenu(arg0.T7HudMenuGameMode)
		arg0.T7HudMenuGameMode = nil
	end
	local registerVal2 = LUI.ShallowCopy(arg0.forceCloseChildren)
	local registerVal3, registerVal4, registerVal5 = ipairs(registerVal2)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		value7:close()
	end
	arg0.forceCloseChildren = {}
	arg0.loadingMenu = nil
	arg0:removeAllChildren()
	arg0:setOwner(arg1.controller)
	arg0.controller = arg1.controller
	HUD_FirstSnapshot_Common(arg0, arg1)
	if CoD.isZombie == false then
		HUD_FirstSnapshot_Multiplayer(arg0, arg1)
		if CoD.isCampaign == true then
			HUD_FirstSnapshot_Campaign(arg0, arg1)
		else
			registerVal5 = {}
			registerVal5.name = "close_menu"
			registerVal5.menuName = "StartMenu_Main"
			registerVal5.controller = arg1.controller
			arg0:dispatchEventToRoot(registerVal5)
			registerVal4 = Engine.GetModelForController(arg1.controller)
			registerVal3 = Engine.CreateModel(registerVal4, "forceScoreboard")
			Engine.SetModelValue(registerVal3, 0.000000)
			HUD_FirstSnapshot_Zombie(arg0, arg1)
		end
	end
	Engine.ForceHUDRefresh(arg1.controller)
	HUD_UpdateRefresh(arg0, arg1)
	arg0.firstSnapshotProcessed = true
	if arg0.pendingInGameMenuEvents then
		for index3=1.000000, #arg0.pendingInGameMenuEvents, 1.000000 do
			nil(arg0, arg0.pendingInGameMenuEvents[index3])
		end
		arg0.pendingInGameMenuEvents = nil
	end
	return true
end

HUD_FirstSnapshot = __FUNC_805D_
function HUD_StartMigration(arg0, arg1)
	arg0:removeAllChildren()
	local registerVal2 = LUI.createMenu.migration_ingame(arg1.controller, arg0)
	arg0:addElement(registerVal2)
end

function HUD_FirstSnapshot_Common(arg0, arg1)
	CoD.CACUtility.ForceStreamAttachmentImages(arg1.controller)
	if not CoD.isMultiplayer then
		local registerVal2 = CoD.MovieSubtitles.new(arg0, arg1.controller)
		arg0.cinematicSubtitles = registerVal2
		arg0.cinematicSubtitles:setLeftRight(false, false, -640.000000, 640.000000)
		arg0.cinematicSubtitles:setTopBottom(false, false, -360.000000, 360.000000)
		arg0:addElement(arg0.cinematicSubtitles)
	end
	HUD_AddHintTextElements(arg0, arg1.controller)
	local registerVal3 = CoD.Menu.NewSafeAreaFromState("hud_safearea", arg1.controller)
	registerVal3:setPriority(100.000000)
	registerVal3:setOwner(arg1.controller)
	arg0:addElement(registerVal3)
	if arg0.safeArea and arg0.safeArea.buttonModel then
		Engine.UnsubscribeAndFreeModel(arg0.safeArea.buttonModel)
		arg0.safeArea:close()
	end
	arg0.safeArea = registerVal3
	local registerVal6 = Engine.GetModelForController(arg1.controller)
	local registerVal5 = Engine.CreateModel(registerVal6, "HUD.buttonPrompts")
	arg0.safeArea.buttonModel = registerVal5
	local registerVal4 = CoD.GrenadeEffect.new(arg1.controller)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	arg0:addForceClosedSafeAreaChild(registerVal4)
	if CoD.isZombie == true then
		CoD.Zombie.SoloQuestMode = false
		registerVal5 = Engine.GetLobbyClientCount(Enum.LobbyType.LOBBY_TYPE_GAME)
		if registerVal5 == 1.000000 then
			registerVal6 = CoD.isOnlineGame()
			registerVal6 = Engine.GameModeIsMode(CoD.GAMEMODE_PRIVATE_MATCH)
			if registerVal6 == false or registerVal6 == false then
				CoD.Zombie.SoloQuestMode = true
			end
		end
		registerVal6 = Engine.GameModeIsMode(CoD.GAMEMODE_LOCAL_SPLITSCREEN)
		if registerVal6 == true and 2.000000 < registerVal5 then
			CoD.Zombie.LocalSplitscreenMultiplePlayers = true
		end
	end
	HUD_CloseScoreBoard(arg0, arg1)
	registerVal5 = Dvar.ui_gametype:get()
	registerVal5 = CoD.ShowNewScoreboard()
	if registerVal5 ~= "fr" and not registerVal5 then
		registerVal5 = LUI.createMenu.Scoreboard(arg1.controller)
		arg0.scoreBoard = registerVal5
		local registerVal7 = {}
		registerVal7.name = "update_scoreboard"
		registerVal7.controller = arg1.controller
		registerVal5 = LUI.UITimer.new(1000.000000, registerVal7, false)
		arg0.scoreboardUpdateTimer = registerVal5
	end
	Engine.Durango_CheckPrimaryStolenPopupAfterLoading()
end

function HUD_AddHintTextElements(arg0, arg1)
	local registerVal2 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.GetModel(registerVal2, "profile.colorblindMode")
	local registerVal4 = LUI.UIElement.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(false, false, 0.000000, CoD.textSize.Default)
	arg0:addElement(registerVal4)
	registerVal4:setupObjectiveIndicators3D()
	local registerVal5 = Dvar.ui_gametype:get()
	if registerVal5 == "codfu" then
		return 
	end
	registerVal5 = Dvar.ui_gametype:get()
	if registerVal5 == "doa" then
		return 
	end
	registerVal5 = LUI.UIElement.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(false, false, 180.000000, (180.000000 + CoD.textSize.Default))
	arg0:addElement(registerVal5)
	registerVal5:setupCursorHint(64.000000)
	local registerVal6 = LUI.UIElement.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6:setImage(RegisterMaterial("directional_damage_feedback"))
	arg0:addElement(registerVal6)
	registerVal6:setupDirectionalHitIndicator()
	local registerVal7 = LUI.UIElement.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(false, true, -180.000000, (-180.000000 + CoD.textSize.Default))
	arg0:addElement(registerVal7)
	registerVal7:setupMantleHint()
	local registerVal8 = LUI.UIElement.new()
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(false, true, -320.000000, (-320.000000 + CoD.textSize.ExtraSmall))
	arg0:addElement(registerVal8)
	registerVal8:setupPlayerStance()
	local registerVal9 = LUI.UIElement.new()
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(true, false, 180.000000, (180.000000 + CoD.textSize.Default))
	arg0:addElement(registerVal9)
	registerVal9:setupHoldBreathHint()
	local registerVal10 = LUI.UIElement.new()
	registerVal10:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal10:setTopBottom(true, false, 140.000000, (140.000000 + CoD.textSize.Default))
	arg0:addElement(registerVal10)
	registerVal10:setupHoldBreathZoomHint()
	local registerVal11 = LUI.UIElement.new()
	registerVal11:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal11:setTopBottom(true, false, 180.000000, (180.000000 + CoD.textSize.Default))
	arg0:addElement(registerVal11)
	registerVal11:setupCancelChargeShotHint()
	local registerVal12 = LUI.UIElement.new()
	registerVal12:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal12:setTopBottom(false, false, 90.000000, (90.000000 + CoD.textSize.Default))
	arg0:addElement(registerVal12)
	registerVal12:setupMeleeChargeHint()
	local registerVal13 = LUI.UIElement.new()
	registerVal13:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal13:setTopBottom(false, false, 90.000000, (90.000000 + CoD.textSize.Default))
	arg0:addElement(registerVal13)
	registerVal13:setupMeleeCounterHint()
	local registerVal14 = LUI.UIElement.new()
	registerVal14:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal14:setTopBottom(false, false, 45.000000, (45.000000 + CoD.textSize.ExtraSmall))
	arg0:addElement(registerVal14)
	registerVal14:setupInvalidCmdHint()
	local registerVal15 = LUI.UIElement.new()
	registerVal15:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal15:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal15:setImage(RegisterMaterial("compassping_enemy_diamond_bottom"))
	registerVal15:setRGB(CoD.ExplodeColor(CoD.GetColorBlindColorForPlayer(arg1, "EnemyScorestreakTarget")))
	arg0:addForceClosedChild(registerVal15)
	registerVal15:setupTargetHighlights_Enemy()
	if registerVal3 then
		local function __FUNC_A432_(arg0)
			registerVal15:setRGB(CoD.ExplodeColor(CoD.GetColorBlindColorForPlayer(arg1, "EnemyScorestreakTarget")))
		end

		registerVal15:subscribeToModel(registerVal3, __FUNC_A432_, false)
	end
	local registerVal16 = LUI.UIElement.new()
	registerVal16:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal16:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal16:setImage(RegisterMaterial("compassping_enemysatellite_diamond"))
	registerVal16:setRGB(CoD.ExplodeColor(CoD.GetColorBlindColorForPlayer(arg1, "EnemyScorestreakTarget")))
	arg0:addForceClosedChild(registerVal16)
	registerVal16:setupPlayerTargetHighlightsLineOfSight_Enemy()
	if registerVal3 then
		local function __FUNC_A510_(arg0)
			registerVal16:setRGB(CoD.ExplodeColor(CoD.GetColorBlindColorForPlayer(arg1, "EnemyScorestreakTarget")))
		end

		registerVal16:subscribeToModel(registerVal3, __FUNC_A510_, false)
	end
	local registerVal17 = LUI.UIElement.new()
	registerVal17:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal17:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal17:setImage(RegisterMaterial("compassping_enemy_diamond_bottom"))
	registerVal17:setRGB(CoD.ExplodeColor(CoD.GetColorBlindColorForPlayer(arg1, "PlayerYellow")))
	arg0:addForceClosedChild(registerVal17)
	registerVal17:setupTargetHighlights_Friendly()
	if registerVal3 then
		local function __FUNC_A5F0_(arg0)
			local registerVal1 = IsMultiplayer()
			if arg0 or not "PlayerYellow" then
			end
			registerVal17:setRGB(CoD.ExplodeColor(CoD.GetColorBlindColorForPlayer(arg1, "PlayerGreen")))
		end

		registerVal17:subscribeToModel(registerVal3, __FUNC_A5F0_, false)
	end
	local registerVal18 = LUI.UIElement.new()
	registerVal18:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal18:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal18:setImage(RegisterMaterial("compassping_enemysatellite_diamond"))
	registerVal18:setRGB(CoD.ExplodeColor(CoD.GetColorBlindColorForPlayer(arg1, "PlayerYellow")))
	arg0:addForceClosedChild(registerVal18)
	registerVal18:setupTargetHighlights_Friendly()
	if registerVal3 then
		local function __FUNC_A712_(arg0)
			local registerVal1 = IsMultiplayer()
			if arg0 or not "PlayerYellow" then
			end
			registerVal18:setRGB(CoD.ExplodeColor(CoD.GetColorBlindColorForPlayer(arg1, "PlayerGreen")))
		end

		registerVal18:subscribeToModel(registerVal3, __FUNC_A712_, false)
	end
	local registerVal19 = LUI.UIElement.new()
	registerVal19:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal19:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal19:setImage(RegisterMaterial("compassping_enemysatellite_diamond"))
	registerVal19:setRGB(1.000000, 0.000000, 0.000000)
	arg0:addElement(registerVal19)
	registerVal19:setupPlayerPivotTargetting()
	local registerVal20 = LUI.UIElement.new()
	registerVal20:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal20:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal20:setImage(RegisterMaterial("compassping_enemysatellite_diamond"))
	registerVal20:setRGB(1.000000, 0.000000, 0.000000)
	arg0:addElement(registerVal20)
	registerVal20:setupPlayerGrappleTargetting()
	local registerVal21 = LUI.UIElement.new()
	registerVal21:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal21:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal21:setImage(RegisterMaterial("compassping_enemysatellite_diamond"))
	registerVal21:setRGB(CoD.ExplodeColor(CoD.GetColorBlindColorForPlayer(arg1, "EnemyScorestreakTarget")))
	arg0:addForceClosedChild(registerVal21)
	registerVal21:setupLockonHighlights()
	if registerVal3 then
		local function __FUNC_A832_(arg0)
			registerVal21:setRGB(CoD.ExplodeColor(CoD.GetColorBlindColorForPlayer(arg1, "EnemyScorestreakTarget")))
		end

		registerVal21:subscribeToModel(registerVal3, __FUNC_A832_, false)
	end
	if CoD.isZombie == true or CoD.isCampaign == true then
		local registerVal22 = LUI.UIElement.new()
		registerVal22:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal22:setTopBottom(true, true, 0.000000, 0.000000)
		arg0:addElement(registerVal22)
		registerVal22:setupAmITalking()
	end
	if CoD.isZombie == true then
		registerVal22 = LUI.UIElement.new()
		registerVal22:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal22:setTopBottom(true, true, 0.000000, 0.000000)
		arg0:addElement(registerVal22)
		registerVal22:setupFriendlyArrows()
	end
end

local function __FUNC_A910_(arg0, arg1)
	local registerVal2 = Engine.IsDemoPlaying()
	if registerVal2 then
		return 
	end
	registerVal2 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.GetModel(registerVal2, "team")
	local function __FUNC_AA78_(arg2)
		local registerVal1 = Engine.GetModelValue(arg2)
		if registerVal1 == Enum.team_t.TEAM_SPECTATOR then
			if arg0.safeArea and arg0.safeArea.CodCaster == nil then
				local registerVal3 = CoD.CodCaster.new(arg0.safeArea, arg1)
				arg0.safeArea.CodCaster = registerVal3
				arg0.safeArea.CodCaster:setLeftRight(true, true, 0.000000, 0.000000)
				arg0.safeArea.CodCaster:setTopBottom(true, true, 0.000000, 0.000000)
				arg0:addForceClosedSafeAreaChild(arg0.safeArea.CodCaster)
				local registerVal2 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
				if not registerVal2 then
					local registerVal4 = {}
					registerVal4.name = "gain_focus"
					registerVal4.controller = arg1
					arg0.safeArea.CodCaster:processEvent(registerVal4)
					registerVal4 = {}
					registerVal4.controller = arg1
					arg0.safeArea.CodCaster:gainFocus(registerVal4)
				end
				if arg0.safeArea.PostCodCasterLoad then
					arg0.safeArea.PostCodCasterLoad(arg0.safeArea.CodCaster)
					arg0.safeArea.PostCodCasterLoad = nil
				end
				local function __FUNC_AFF7_(arg1)
					CoD.Menu.UnsubscribeFromControllerSubscriptionsForElement(arg0.safeArea, arg1)
				end

				LUI.OverrideFunction_CallOriginalSecond(arg0.safeArea.CodCaster, "close", __FUNC_AFF7_)
				UpdateState(arg0.safeArea.CodCaster)
			else
				if arg0.safeArea and arg0.safeArea.CodCaster ~= nil then
					arg0.safeArea.CodCaster:close()
					arg0.safeArea.CodCaster = nil
				end
			end
		end
	end

	if arg0.hasTeamModelSubscription then
		__FUNC_AA78_(registerVal3)
		return 
	end
	arg0.hasTeamModelSubscription = true
	arg0:subscribeToModel(registerVal3, __FUNC_AA78_)
end

local function __FUNC_B0BB_(arg0, arg1)
	local registerVal2 = Engine.IsSplitscreen()
	if not registerVal2 then
		local registerVal4 = {}
		registerVal4.leftAnchor = true
		registerVal4.rightAnchor = false
		registerVal4.left = 13.000000
		registerVal4.right = 277.000000
		registerVal4.topAnchor = false
		registerVal4.bottomAnchor = true
		registerVal4.top = (-149.000000 - CoD.textSize.ExtraSmall)
		registerVal4.bottom = -149.000000
		CoD.GameMessages.AddObituaryWindow(arg0, registerVal4, arg1.controller)
	end
	registerVal4 = {}
	registerVal4.leftAnchor = false
	registerVal4.rightAnchor = false
	registerVal4.left = 0.000000
	registerVal4.right = 0.000000
	registerVal4.topAnchor = false
	registerVal4.bottomAnchor = false
	registerVal4.top = 50.000000
	registerVal4.bottom = (50.000000 + CoD.textSize.Default)
	CoD.GameMessages.BoldGameMessagesWindow(arg0, registerVal4, arg1.controller)
	registerVal2 = Engine.GameModeIsMode(CoD.GAMEMODE_LOCAL_SPLITSCREEN)
	if registerVal2 == false then
		local registerVal5 = {}
		registerVal5.leftAnchor = false
		registerVal5.rightAnchor = true
		registerVal5.left = -200.000000
		registerVal5.right = 0.000000
		registerVal5.topAnchor = true
		registerVal5.bottomAnchor = false
		registerVal5.top = 0.000000
		registerVal5.bottom = 150.000000
		CoD.LiveStream.AddInGameStatusWidget(arg0, arg1.controller, registerVal5)
	end
	CoD.CodCasterUtility.SetupUIModels(arg1.controller)
	__FUNC_2E64_()
	registerVal2 = CoD.ToastNotification.new(arg0, arg1.controller)
	arg0.toastNotification = registerVal2
	arg0.toastNotification:setState("DefaultState")
	arg0.toastNotification:setPriority(9999.000000)
	registerVal2 = arg0:getParent()
	if registerVal2 then
		registerVal2:addElement(arg0.toastNotification)
	end
	local registerVal3 = Engine.GetModelForController(arg1.controller)
	if registerVal3 then
		registerVal4 = Engine.GetModel(registerVal3, "hudItems.playerSpawned")
	end
	registerVal4 = Engine.GetModelValue(registerVal4)
	if registerVal4 then
		Engine.SetModelValue(registerVal4, false)
	end
	if arg0.T7HudMenu then
		arg0.T7HudMenu.SafeAreaContainerBack.Notifications.NotificationQueueWidget:clearNotificationQueue()
		arg0.T7HudMenu.hasBooted = false
		arg0.T7HudMenu:setAlpha(1.000000)
		if arg0.T7HudMenu.PrematchCountdown then
			arg0.T7HudMenu.PrematchCountdown:close()
		end
		arg0.T7HudMenu.PrematchWaiting:close()
		registerVal5 = Dvar.ui_gametype:get()
		registerVal5 = Dvar.ui_gametype:get()
		if arg0.T7HudMenu.PrematchWaiting and registerVal5 ~= "doa" and registerVal5 ~= "codfu" then
			local registerVal6 = LUI.createMenu.T7Hud(arg1.controller)
			if arg0.bootOnOpen then
				arg0.bootOnOpen = false
				TryBootHUD(registerVal6, 0.000000)
			end
			arg0.T7HudMenu = registerVal6
		end
	end
	if arg0.T7HudMenu then
		arg0:addElement(arg0.T7HudMenu)
	end
	if CoD.isCampaign == true then
	else
	end
	registerVal6 = Dvar.ui_gametype:get()
	if registerVal6 == "codfu" then
	end
	registerVal6 = Dvar.ui_gametype:get()
	if registerVal6 == "doa" then
		require("ui.uieditor.widgets.DOA.doa_bubble")
		require("ui.uieditor.widgets.StartMenu.StartMenu_GameOptions_DOA")
		require("ui.uieditor.widgets.StartMenu.StartMenu_Options_DOA")
		require("ui.uieditor.menus.CPLevels.DOA.DOA_ControlsMenu")
		require("ui.uieditor.menus.CPLevels.DOA.DOA_INGAME_PAUSE")
		require("ui.uieditor.menus.CPLevels.DOA.DOA_overworld")
		require("ui.uieditor.menus.CPLevels.DOA.DOA_PlayerReady")
		require("ui.uieditor.menus.CPLevels.DOA.DOA_outro_frame")
		require("ui.uieditor.menus.hud.T7Hud_DOA")
	end
	registerVal6 = Dvar.ui_gametype:get()
	if registerVal6 == "fr" then
	end
	if not arg0.T7HudMenuGameMode then
		local registerVal7 = LUI.createMenu[("T7Hud_" .. "FR")](arg1.controller)
		registerVal7:sizeToSafeArea()
		if "FR" == "CP" and not arg0.InGameTalkersWidget then
			registerVal7 = CoD.InGameTalkersWidget.new(registerVal7, arg1.controller)
			local registerVal8 = IsCPAndInSafehouse()
			if registerVal8 then
				registerVal7:setLeftRight(false, true, -213.000000, -23.000000)
				registerVal7:setTopBottom(false, true, -123.000000, -36.000000)
			else
				registerVal7:setLeftRight(true, false, 64.000000, 254.000000)
				registerVal7:setTopBottom(true, false, 36.000000, 123.000000)
			end
			arg0:addElement(registerVal7)
			arg0.InGameTalkersWidget = registerVal7
		end
		if registerVal4 then
			Engine.SetModelValue(registerVal4, true)
		end
		arg0.T7HudMenuGameMode = registerVal7
	else
		arg0.T7HudMenuGameMode:setAlpha(1.000000)
		if arg0.T7HudMenuGameMode.Outcome then
			arg0.T7HudMenuGameMode.Outcome:setAlpha(0.000000)
		end
		if registerVal4 then
			Engine.SetModelValue(registerVal4, true)
		end
	end
	arg0:addElement(arg0.T7HudMenuGameMode)
	arg0:setAlpha(1.000000)
	__FUNC_A910_(arg0, arg1.controller)
	CoD.DemoUtility.AddHUDWidgets(arg0, arg1)
	LuaUtils.MessageDialogForceSubscriptionFire()
	registerVal6 = CoD.OverlayUtility.Overlays.MessageDialogBox.getStringRef(arg1.controller)
	if arg0.occludedBy and registerVal6 == "PLATFORM_PROFILE_CHANGE_MESSAGE" then
		LuaUtils.MessageDialogForceSubscriptionFire(true)
	end
end

HUD_FirstSnapshot_Multiplayer = __FUNC_B0BB_
function HUD_FirstSnapshot_Campaign(arg0, arg1)
	local registerVal4 = {}
	registerVal4.leftAnchor = true
	registerVal4.rightAnchor = true
	registerVal4.left = 0.000000
	registerVal4.right = 0.000000
	registerVal4.topAnchor = false
	registerVal4.bottomAnchor = true
	registerVal4.top = -100.000000
	registerVal4.bottom = (-100.000000 + CoD.textSize.Default)
	CoD.GameMessages.AddSubtitlesWindow(arg0, registerVal4)
	local registerVal2 = Engine.GetCurrentMap()
	if registerVal2 == "cp_mi_cairo_aquifer" then
		require("ui.uieditor.menus.CPLevels.Aquifer.HackUploadHUD")
		require("ui.uieditor.menus.CPLevels.Aquifer.SecurityCameraOverlay")
	end
end

local function __FUNC_C4ED_(arg0, arg1)
	local registerVal4 = {}
	registerVal4.leftAnchor = true
	registerVal4.rightAnchor = true
	registerVal4.left = 0.000000
	registerVal4.right = 0.000000
	registerVal4.topAnchor = false
	registerVal4.bottomAnchor = true
	registerVal4.top = -100.000000
	registerVal4.bottom = (-100.000000 + CoD.textSize.Default)
	CoD.GameMessages.AddSubtitlesWindow(arg0, registerVal4)
	local registerVal2 = LUI.UIElement.new()
	registerVal2:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal2:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:sizeToSafeArea()
	arg0:addForceClosedChild(registerVal2)
	local registerVal3 = CoD.Zombie.IsDLCMap(CoD.Zombie.DLC3Maps)
	if registerVal3 then
		registerVal2:registerEventHandler("time_bomb_hud_toggle", HUD_ToggleZombieHudContainer)
	end
	__FUNC_2E64_()
	if arg0.T7HudMenuGameMode == nil then
		registerVal3 = Engine.GetCurrentMap()
		if registerVal3 ~= "zm_zod" or not "T7Hud_ZM" then
		end
		if LUI.createMenu[("T7Hud_" .. registerVal3)] then
			local registerVal5 = LUI.createMenu[("T7Hud_" .. registerVal3)](arg1.controller)
			arg0.T7HudMenuGameMode = registerVal5
		else
			if registerVal3 ~= "zm_cosmodrome" and registerVal3 ~= "zm_moon" and registerVal3 == "zm_temple" or registerVal3 == "zm_theater" then
				registerVal5 = LUI.createMenu.T7Hud_zm_dlc5(arg1.controller)
				arg0.T7HudMenuGameMode = registerVal5
			else
				registerVal5 = LUI.createMenu.T7Hud_zm_factory(arg1.controller)
				arg0.T7HudMenuGameMode = registerVal5
			else
				arg0.T7HudMenuGameMode:setAlpha(1.000000)
				registerVal3 = Engine.GetModelForController(arg1.controller)
				if registerVal3 then
					registerVal4 = Engine.GetModel(registerVal3, "hudItems.playerSpawned")
				end
				registerVal4 = Engine.GetModelValue(registerVal4)
				if registerVal4 then
					Engine.SetModelValue(registerVal4, true)
				end
			end
		end
	end
	arg0:addElement(arg0.T7HudMenuGameMode)
	registerVal3 = LUI.createMenu.PowerUpsArea(arg1.controller)
	registerVal2:addElement(registerVal3)
	registerVal2.powerupsArea = registerVal3
	registerVal4 = Mods_IsUsingMods()
	if CoD.isZombie == true and registerVal4 then
		registerVal4 = CoD.Console.new(arg0, arg1.controller)
		registerVal4:setLeftRight(true, false, 39.000000, 809.000000)
		registerVal4:setTopBottom(false, true, -160.000000, -20.000000)
		registerVal4:setAlpha(1.000000)
		arg0:addElement(registerVal4)
		arg0.Console = registerVal4
	end
	local function __FUNC_D0C7_(arg0)
		arg0.powerupsArea:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_D0C7_)
	registerVal4 = Engine.IsSplitscreen()
	if not registerVal4 then
		local registerVal6 = {}
		registerVal6.leftAnchor = true
		registerVal6.rightAnchor = false
		registerVal6.left = 13.000000
		registerVal6.right = 277.000000
		registerVal6.topAnchor = false
		registerVal6.bottomAnchor = true
		registerVal6.top = (-220.000000 - CoD.textSize.ExtraSmall)
		registerVal6.bottom = -220.000000
		CoD.GameMessages.AddObituaryWindow(arg0, registerVal6, arg1.controller)
		registerVal6 = {}
		registerVal6.leftAnchor = false
		registerVal6.rightAnchor = false
		registerVal6.left = 0.000000
		registerVal6.right = 0.000000
		registerVal6.topAnchor = true
		registerVal6.bottomAnchor = false
		registerVal6.top = 50.000000
		registerVal6.bottom = (50.000000 + CoD.textSize.Default)
		CoD.GameMessages.BoldGameMessagesWindow(arg0, registerVal6, arg1.controller)
	end
	CoD.DemoUtility.AddHUDWidgets(arg0, arg1)
	registerVal4 = CoD.OverlayUtility.Overlays.MessageDialogBox.getStringRef(arg1.controller)
	if arg0.occludedBy and registerVal4 == "PLATFORM_PROFILE_CHANGE_MESSAGE" then
		LuaUtils.MessageDialogForceSubscriptionFire(true)
	end
end

HUD_FirstSnapshot_Zombie = __FUNC_C4ED_
function HUD_ToggleZombieHudContainer(arg0, arg1)
	if arg1.newValue == 0.000000 then
		arg0:beginAnimation("fade_in", 500.000000)
		arg0:setAlpha(1.000000)
	else
		arg0:beginAnimation("fade_out", 500.000000)
		arg0:setAlpha(0.000000)
	end
end

function HasAnyChildWithID(arg0, arg1)
	local registerVal2 = arg0:getFirstChild()
	if registerVal2.id == arg1 then
		return true
	end
	local registerVal3 = registerVal2:getNextSibling()
	return false
end

local function __FUNC_D2BC_(arg0, arg1)
	if not arg0.firstSnapshotProcessed then
		if not arg0.pendingInGameMenuEvents then
			arg0.pendingInGameMenuEvents = {}
		end
		table.insert(arg0.pendingInGameMenuEvents, arg1)
		return 
	end
	if arg1.menuName == "DOA_INGAME_PAUSE" and CoD.isDOAPauseMenuOpen ~= nil and CoD.isDOAPauseMenuOpen == true then
		return 
	end
	if arg1.menuName == "StartMenu_Main" then
		local registerVal2 = Engine.IsMigrating(arg1.controller)
		if registerVal2 == true then
			return 
		end
		registerVal2 = arg0:getParent()
		local registerVal3 = HasAnyChildWithID(registerVal2, "Menu.StartMenu_Main")
		if registerVal2 ~= nil and registerVal3 then
			return 
		end
	end
	registerVal2 = Engine.CanPauseGame()
	if registerVal2 then
		if CoD.InGameMenu.m_unpauseDisabled == nil then
			CoD.InGameMenu.m_unpauseDisabled = {}
		end
		CoD.InGameMenu.m_unpauseDisabled[(arg1.controller + 1.000000)] = 0.000000
		if arg1.unpausable ~= nil and arg1.unpausable == 0.000000 then
			CoD.InGameMenu.m_unpauseDisabled[(arg1.controller + 1.000000)] = 1.000000
		end
	end
	if arg1.data ~= nil then
		registerVal2 = Engine.GetIString(arg1.data[1.000000], "CS_SCRIPT_MENUS")
		arg1.menuName = registerVal2
	end
	CoD.Menu.ModelToUse = arg1.model
	if LUI.createMenu[arg1.menuName] ~= nil then
		if arg1.menuName == "ChooseClass_InGame" then
			local registerVal7 = {}
			registerVal7.name = "close_menu"
			registerVal7.menuName = arg1.menuName
			registerVal7.controller = arg1.controller
			arg0:dispatchEventToRoot(registerVal7)
			if arg0.occludedBy.id ~= "Menu.MessageDialogBox" then
			end
			if true then
				arg0.occludedBy:close()
			end
		end
		local registerVal5 = Engine.IsCampaignGame()
		registerVal5 = Engine.CanPauseGame()
		if CoD.isPC and registerVal5 and not registerVal5 and arg1.menuName == "chooseClass_TrainingSim" then
			registerVal7 = {}
			registerVal7.name = "close_menu"
			registerVal7.menuName = "StartMenu_Main"
			registerVal7.controller = arg1.controller
			arg0:dispatchEventToRoot(registerVal7)
		end
		if not arg1 or LUI.hudMenuType[arg1.menuName] == "hud" then
			registerVal5 = arg0:openMenu(arg1.menuName, arg1.controller)
		else
			registerVal5 = arg0:openPopup(arg1.menuName, arg1.controller)
		end
		LuaUtils.MessageDialogForceSubscriptionFire(true)
		local registerVal4 = CoD.OverlayUtility.CreateOverlay(arg1.controller, arg0, arg1.menuName)
		if true and registerVal4 then
		end
	end
	registerVal4 = registerVal4:getModel()
	if registerVal4 and registerVal4 then
		registerVal4 = registerVal4:getModel()
		registerVal5 = Engine.CreateModel(registerVal4, "close_current_menu")
		Engine.SetModelValue(registerVal5, 0.000000)
		registerVal4:subscribeToCloseMenuModel()
		registerVal4:subscribeToCurrAnimationModel()
	end
	CoD.Menu.ModelToUse = nil
	return registerVal4
end

function HUD_CloseSpecificInGameMenu(arg0, arg1)
	if arg1.data ~= nil then
		if arg0.pendingInGameMenuEvents then
			for index2=#arg0.pendingInGameMenuEvents, 1.000000, -1.000000 do
				if arg0.pendingInGameMenuEvents[index2].controller == arg1.controller then
					if arg1 or arg0.pendingInGameMenuEvents[index2].data[1.000000] ~= arg1.data[1.000000] then
						if arg0.pendingInGameMenuEvents[index2].menuName and arg0.pendingInGameMenuEvents[index2].menuName == arg1.menuName then
							table.remove(arg0.pendingInGameMenuEvents, index2)
						end
					end
				end
			end
		end
		local registerVal2 = Engine.GetIString(arg1.data[1.000000], "CS_SCRIPT_MENUS")
		local registerVal5 = {}
		registerVal5.name = "close_menu"
		registerVal5.menuName = registerVal2
		registerVal5.controller = arg1.controller
		arg0:dispatchEventToRoot(registerVal5)
	end
end

local function __FUNC_DFBF_(arg0, arg1)
	arg1.isMenu = true
	__FUNC_D2BC_(arg0, arg1)
	return true
end

HUD_OpenHudMenu = __FUNC_DFBF_
function HUD_CloseHudMenu(arg0, arg1)
	if arg1.menuName then
		local registerVal5 = {}
		registerVal5.name = "close_menu"
		registerVal5.menuName = arg1.menuName
		registerVal5.controller = arg1.controller
		arg0:dispatchEventToRoot(registerVal5)
	end
end

function HUD_Close(arg0, arg1)
	if arg0.safeArea and arg0.safeArea.buttonModel then
		Engine.UnsubscribeAndFreeModel(arg0.safeArea.buttonModel)
	end
	arg0.safeArea.buttonModel = nil
	arg0:close()
end

local function __FUNC_E1E8_(arg0, arg1)
	__FUNC_D2BC_(arg0, arg1)
	return true
end

HUD_OpenHudPopup = __FUNC_E1E8_
local function __FUNC_E22C_(arg0, arg1)
	local registerVal2 = Engine.CanPauseGame()
	if registerVal2 then
		if CoD.InGameMenu.m_unpauseDisabled == nil then
			CoD.InGameMenu.m_unpauseDisabled = {}
		end
		CoD.InGameMenu.m_unpauseDisabled[(arg1.controller + 1.000000)] = 0.000000
	end
	registerVal2 = Engine.CanPauseGame()
	if registerVal2 then
		Engine.SetActiveMenu(arg1.controller, CoD.UIMENU_NONE)
	end
end

HUD_CloseInGameMenu = __FUNC_E22C_
function HUD_OpenScoreBoard(arg0, arg1)
	local registerVal2 = CoD.ShowNewScoreboard()
	if registerVal2 then
		return true
	end
	registerVal2 = Engine.CanPauseGame()
	if registerVal2 and CoD.InGameMenu.m_unpauseDisabled ~= nil and CoD.InGameMenu.m_unpauseDisabled[(arg1.controller + 1.000000)] ~= nil and 0.000000 < CoD.InGameMenu.m_unpauseDisabled[(arg1.controller + 1.000000)] then
		return 
	end
	if arg0.scoreBoard then
		if arg0.safeArea.CodCaster == nil or not arg0.safeArea.CodCaster.m_controlsOpen then
			arg0:addElement(arg0.scoreBoard)
			local registerVal4 = {}
			registerVal4.name = "update_scoreboard"
			registerVal4.controller = arg1.controller
			arg0.scoreBoard:processEvent(registerVal4)
			if arg0.scoreboardUpdateTimer ~= nil then
				arg0:addElement(arg0.scoreboardUpdateTimer)
			end
			if CoD.isZombie == true then
				if arg0.scoreBoard.questItemDisplay then
					registerVal4 = {}
					registerVal4.name = "update_quest_item_display_scoreboard"
					registerVal4.controller = arg1.controller
					arg0.scoreBoard.questItemDisplay:processEvent(registerVal4)
				end
				if arg0.scoreBoard.persistentItemDisplay then
					registerVal4 = {}
					registerVal4.name = "update_persistent_item_display_scoreboard"
					registerVal4.controller = arg1.controller
					arg0.scoreBoard.persistentItemDisplay:processEvent(registerVal4)
				end
				if arg0.scoreBoard.craftableItemDisplay then
					registerVal4 = {}
					registerVal4.name = "update_craftable_item_display_scoreboard"
					registerVal4.controller = arg1.controller
					arg0.scoreBoard.craftableItemDisplay:processEvent(registerVal4)
				end
				if arg0.scoreBoard.captureZoneWheelDisplay then
					registerVal4 = {}
					registerVal4.name = "update_capture_zone_wheel_display_scoreboard"
					registerVal4.controller = arg1.controller
					arg0.scoreBoard.captureZoneWheelDisplay:processEvent(registerVal4)
				end
				if arg0.scoreBoard.questItemList then
					registerVal4 = {}
					registerVal4.name = "update_zod_item_display_scoreboard"
					registerVal4.controller = arg1.controller
					arg0.scoreBoard:processEvent(registerVal4)
				end
			end
		end
	end
end

function HUD_CloseScoreBoard(arg0, arg1)
	local registerVal2 = CoD.ShowNewScoreboard()
	if registerVal2 then
		return 
	end
	if arg0.scoreBoard then
		registerVal2 = arg0.scoreBoard:getParent()
		if registerVal2 == arg0 then
			arg0:removeElement(arg0.scoreBoard)
		end
		if arg0.scoreboardUpdateTimer then
			arg0.scoreboardUpdateTimer:close()
			arg0.scoreboardUpdateTimer:reset()
		end
	end
end

local function __FUNC_EBE3_(arg0, arg1)
	if arg0.m_eventHandlers.debug_reload ~= HUD_DebugReload then
		arg0:registerEventHandler("debug_reload", HUD_DebugReload)
		local registerVal4 = {}
		registerVal4.name = "debug_reload"
		arg0:processEvent(registerVal4)
		return 
	end
	__FUNC_5B78_(arg0)
	registerVal4 = {}
	registerVal4.controller = arg0.controller
	registerVal4.debugReload = true
	HUD_FirstSnapshot(arg0, registerVal4)
	Engine.ForceHUDRefresh(arg0.controller)
	registerVal4 = {}
	registerVal4.name = "hud_boot"
	registerVal4.controller = arg0.controller
	arg0:processEvent(registerVal4)
	local registerVal3 = Engine.GetModelForController(arg0.controller)
	local registerVal2 = Engine.GetModel(registerVal3, "scriptNotify")
	Engine.SetModelValue(registerVal2, "player_spawned")
end

HUD_DebugReload = __FUNC_EBE3_
local function __FUNC_EE99_(arg0, arg1)
	local registerVal3 = DataSources.PerController.getModel(arg1.controller)
	local registerVal2 = CoD.SafeGetModelValue(registerVal3, "vehicle.vehicleType")
	if registerVal2 then
		__FUNC_3E5C_(arg0, arg1.controller, registerVal2, true)
	end
	local registerVal4 = DataSources.PerController.getModel(arg1.controller)
	registerVal3 = CoD.SafeGetModelValue(registerVal4, "currentWeapon.weaponReticle")
	if registerVal3 then
		__FUNC_4985_(arg0, arg1.controller, registerVal3, true)
	end
	nil(arg0, arg1)
	nil(arg0, arg1)
end

HUD_UpdateRefresh = __FUNC_EE99_
function HUD_FullscreenStart(arg0, arg1)
	local registerVal2 = CoD.ShowNewScoreboard()
	if arg0.scoreBoard and not registerVal2 then
		arg0.scoreBoard:processEvent(arg1)
	end
	arg0:dispatchEventToChildren(arg1)
end

function HUD_FullscreenStop(arg0, arg1)
	local registerVal2 = CoD.ShowNewScoreboard()
	if arg0.scoreBoard and not registerVal2 then
		arg0.scoreBoard:processEvent(arg1)
	end
	arg0:dispatchEventToChildren(arg1)
end

function HUD_UpdateScoreboardColumns(arg0, arg1)
	local registerVal2 = CoD.ShowNewScoreboard()
	if not registerVal2 then
		if arg0.scoreBoard ~= nil then
			arg0.scoreBoard:processEvent(arg1)
		end
		arg0:dispatchEventToChildren(arg1)
	end
end

function HUD_StartKillcamHud(arg0, arg1)
	if arg0.T7HudMenu and not arg0.killcamHUD and not CoD.isCampaign then
		if Engine.UpdateKillcamUIModels then
			Engine.UpdateKillcamUIModels(arg1.controller, Engine.GetPredictedClientNum(arg1.controller))
		end
		local registerVal2 = LUI.createMenu.KillcamMenu(arg1.controller)
		arg0.killcamHUD = registerVal2
		arg0.killcamHUD:addElementBefore(arg0.T7HudMenu)
	end
end

function HUD_StopKillcamHud(arg0, arg1)
	if arg0.killcamHUD then
		arg0.killcamHUD:close()
		arg0.killcamHUD = nil
	end
end

local function __FUNC_F5D4_(arg0, arg1)
	local registerVal2 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_IN_KILLCAM)
	if registerVal2 then
		HUD_StartKillcamHud(arg0, arg1)
	else
		HUD_StopKillcamHud(arg0, arg1)
	end
end

local function __FUNC_F720_(arg0)
	local registerVal1 = Engine.IsSplitscreen()
	if registerVal1 == false then
		registerVal1 = Engine.IsDemoShoutcaster()
		if registerVal1 ~= true then
			registerVal1 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_SPECTATING_CLIENT)
			registerVal1 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_TEAM_SPECTATOR)
			if registerVal1 and registerVal1 then
				registerVal1 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_GAME_ENDED)
				if not registerVal1 then
					registerVal1 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
				else
				else
				end
			end
		end
	end
	return true
end

local function __FUNC_F973_(arg0)
	local registerVal1 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_SELECTING_LOCATION)
	if registerVal1 then
		registerVal1 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_IS_DEMO_PLAYING)
	end
	return (not registerVal1)
end

if not CoD.isZombie and not CoD.isCampaign then
	require("ui.uieditor.widgets.Tablet.TabletLocationSelector")
end
local function __FUNC_FAA4_(arg0, arg1)
	local registerVal2 = __FUNC_F973_(arg1.controller)
	if registerVal2 then
		registerVal2 = CoD.TabletLocationSelector.new(arg0, arg1.controller)
		arg0.newLocationSelectorMap = registerVal2
		local registerVal4 = {}
		registerVal4.name = "update_state"
		registerVal4.menu = arg0
		arg0.newLocationSelectorMap:processEvent(registerVal4)
		local function __FUNC_FCE1_()
			arg0.newLocationSelectorMap = nil
		end

		LUI.OverrideFunction_CallOriginalSecond(arg0.newLocationSelectorMap, "close", __FUNC_FCE1_)
		arg0:addForceClosedChild(arg0.newLocationSelectorMap)
		if arg0.newLocationSelectorMap == nil and arg0.newLocationSelectorMap ~= nil then
			arg0.newLocationSelectorMap:close()
			arg0.newLocationSelectorMap = nil
		end
	end
end

local function __FUNC_FD35_(arg0, arg1)
	local registerVal2 = arg0:getOwner()
	if arg0 ~= nil and registerVal2 ~= nil then
		Engine.DisableSceneFilter(registerVal2, 4.000000)
	end
end

local function __FUNC_FDD8_(arg0, arg1)
	local registerVal5 = Engine.GetModelForController(arg1.controller)
	local registerVal4 = Engine.CreateModel(registerVal5, "Attacker")
	registerVal5 = Engine.CreateModel(registerVal4, "kills")
	Engine.SetModelValue(registerVal5, arg1.data[1.000000])
	local registerVal7 = Engine.GetModelForController(arg1.controller)
	local registerVal6 = Engine.CreateModel(registerVal7, "Victim")
	registerVal7 = Engine.CreateModel(registerVal6, "kills")
	Engine.SetModelValue(registerVal7, arg1.data[2.000000])
end

local function __FUNC_FFCC_()
	if nil == nil then
		if CoD.isZombie == true then
			local registerVal0 = Engine.DvarString(nil, "ui_zm_gamemodegroup")
			if registerVal0 ~= CoD.Zombie.GAMETYPEGROUP_ZCLASSIC and registerVal0 ~= CoD.Zombie.GAMETYPEGROUP_ZSURVIVAL then
			end
		else
			registerVal0 = Engine.DvarString(nil, "ui_gametype")
			registerVal0 = Engine.DvarString(nil, "ui_gametype")
			registerVal0 = Engine.DvarString(nil, "ui_gametype")
			if registerVal0 ~= "dm" and registerVal0 ~= "hcdm" and registerVal0 ~= "hack" then
			end
		end
	end
	return true
end

HUD_IsFFA = __FUNC_FFCC_
local function __FUNC_10201_(arg0, arg1)
	local registerVal2 = UIExpression.Team(arg1.controller, "name")
	local registerVal3 = Engine.GetGametypeSetting("disableClassSelection")
	if registerVal3 ~= 1.000000 then
	end
	local registerVal4 = CoD.IsWagerMode()
	if registerVal2 ~= "TEAM_SPECTATOR" and registerVal4 == false and not true then
		local registerVal6 = {}
		registerVal6.menuName = "changeclass"
		registerVal6.controller = arg1.controller
		__FUNC_D2BC_(arg0, registerVal6)
	end
end

HUD_Handle_ChooseClass_HotKey = __FUNC_10201_
DisableGlobals()
Engine.StopEditingPresetClass()
