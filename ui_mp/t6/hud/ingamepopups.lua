-- Decompiled with CoDLUIDecompiler by JariK

require("ui_mp.T6.HUD.InGameMenus")
require("ui_mp.T6.HUD.InGamePopupMenu")
CoD.InGamePopups = {}
function LUI.createMenu.QuitGamePopup(arg0)
	local registerVal1 = Engine.GameModeIsMode(CoD.GAMEMODE_RTS)
	if registerVal1 then
	else
	end
	local registerVal7 = Engine.Localize("MENU_QUIT_WARNING")
	local registerVal8 = Engine.Localize("MENU_NOPROFILE_QUIT_WARNING_DESC")
	local registerVal9 = {}
	local registerVal10 = {}
	local registerVal11 = Engine.Localize("MENU_RESUMEGAME_CAPS")
	registerVal10.text = registerVal11
	registerVal10.event = "resume_game"
	registerVal11 = {}
	local registerVal12 = Engine.Localize("PLATFORM_QUIT_CAPS")
	registerVal11.text = registerVal12
	registerVal11.event = "quit_game"
	registerVal9 = {registerVal10, registerVal11}
	local registerVal3 = CoD.InGamePopupMenu.New("QuitGamePopup", arg0, "default", registerVal7, registerVal8, registerVal9, true)
	registerVal3:registerEventHandler("quit_game", CoD.InGamePopups.QuitGameEvent)
	registerVal3:registerEventHandler("resume_game", CoD.InGamePopups.ResumeGameEvent)
	return registerVal3
end

function LUI.createMenu.SaveAndQuitGamePopup(arg0)
	local registerVal2 = Engine.Localize("MENU_SAVEQUIT_TEXT_WITHOUT_DEVICE_CHANGE")
	local registerVal8 = Engine.Localize("MENU_CONTINUE_SAVING")
	local registerVal10 = {}
	local registerVal11 = {}
	local registerVal12 = Engine.Localize("MENU_RESUMEGAME_CAPS")
	registerVal11.text = registerVal12
	registerVal11.event = "resume_game"
	registerVal12 = {}
	local registerVal13 = Engine.Localize("MENU_SAVE_AND_QUIT_CAPS")
	registerVal12.text = registerVal13
	registerVal12.event = "save_and_quit_available"
	registerVal10 = {registerVal11, registerVal12}
	local registerVal4 = CoD.InGamePopupMenu.New("SaveAndQuitGamePopup", arg0, "default", registerVal8, registerVal2, registerVal10, true)
	registerVal4:registerEventHandler("resume_game", CoD.InGamePopups.SaveAndQuitGamePopupResume)
	registerVal4:registerEventHandler("save_and_quit_available", CoD.InGamePopups.SaveAndQuitGameEvent)
	return registerVal4
end

function CoD.InGamePopups.SaveAndQuitGamePopupResume(arg0, arg1)
	CoD.InGamePopups.ResumeGameEvent(arg0, arg1)
end

function LUI.createMenu.SaveGameErrorPopup(arg0, arg1)
	local registerVal7 = Dvar.sv_saveDeviceAvailable:get()
	if registerVal7 then
		registerVal7 = Engine.Localize("PLATFORM_SAVE_ERROR_NOW_OKAY")
		registerVal7 = Engine.Localize("MENU_NO_SAVE_DEVICE_WARNING_NOW_OKAY")
		registerVal7 = Engine.Localize("MENU_RETRY_SAVE")
	else
		registerVal7 = Engine.Localize("PLATFORM_SAVE_ERROR")
		registerVal7 = Engine.Localize("MENU_NO_SAVE_DEVICE_WARNING")
		registerVal7 = Engine.Localize("PLATFORM_SELECT_SAVE_DEVICE_CAPS")
	end
	registerVal7 = {}
	local registerVal8 = {}
	registerVal8.text = registerVal7
	registerVal8.event = "retry_save_game"
	local registerVal9 = {}
	local registerVal10 = Engine.Localize("MENU_RESUMEGAME_CAPS")
	registerVal9.text = registerVal10
	registerVal9.event = "resume_no_save"
	registerVal10 = {}
	local registerVal11 = Engine.Localize("MENU_QUIT_NO_SAVE")
	registerVal10.text = registerVal11
	registerVal10.event = "quit_no_save"
	registerVal7 = {registerVal8, registerVal9, registerVal10}
	if arg1 and arg1.saveGameErrorPopupFromCode then
		registerVal8 = Engine.Localize("MENU_QUIT_NO_SAVE")
		for index9=1.000000, #registerVal10, 1.000000 do
			if registerVal7[index9].text == registerVal8 then
				table.remove(registerVal7, index9)
			end
		end
	end
	registerVal8 = CoD.InGamePopupMenu.New("SaveGameErrorPopup", arg0, "default", registerVal7, registerVal7, registerVal7)
	registerVal8:registerEventHandler("svSaveDeviceAvailableModified", CoD.InGamePopups.SaveDeviceAvailable)
	registerVal8:registerEventHandler("resume_no_save", CoD.InGamePopups.NoSaveResumeGameEvent)
	registerVal8:registerEventHandler("quit_no_save", CoD.InGamePopups.NoSaveQuitGameEvent)
	registerVal8:registerEventHandler("retry_save_game", CoD.InGamePopups.SelectSaveDeviceWarningEvent)
	return registerVal8
end

function LUI.createMenu.SaveGameWarningPopup(arg0)
	local registerVal5 = Engine.Localize("MENU_NOTICE")
	local registerVal6 = Engine.Localize("MENU_WARNING_SELECTSAVEDEVICE")
	local registerVal7 = {}
	local registerVal8 = {}
	local registerVal9 = Engine.Localize("MENU_OK")
	registerVal8.text = registerVal9
	registerVal8.event = "force_select_save"
	registerVal7 = {registerVal8}
	local registerVal1 = CoD.InGamePopupMenu.New("SaveGameWarningPopup", arg0, "default", registerVal5, registerVal6, registerVal7)
	registerVal1:registerEventHandler("force_select_save", CoD.InGamePopups.ForceSelectSaveDeviceEvent)
	return registerVal1
end

function LUI.createMenu.SaveDeviceWarningPopup(arg0)
	local registerVal5 = Engine.Localize("MENU_NOTICE")
	local registerVal6 = Engine.Localize("MENU_WARNING_SELECTSAVEDEVICE")
	local registerVal7 = {}
	local registerVal8 = {}
	local registerVal9 = Engine.Localize("MENU_OK")
	registerVal8.text = registerVal9
	registerVal8.event = "force_select_save"
	registerVal7 = {registerVal8}
	local registerVal1 = CoD.InGamePopupMenu.New("SaveDeviceWarningPopup", arg0, "default", registerVal5, registerVal6, registerVal7)
	registerVal1:registerEventHandler("force_select_save", CoD.InGamePopups.SaveDeviceWarningEvent)
	registerVal1:registerEventHandler("button_prompt_back", CoD.InGamePopups.CancelEvent)
	return registerVal1
end

function LUI.createMenu.SaveGameSavingPopup(arg0)
	local registerVal1 = CoD.InGamePopupMenu.New("SaveGameSavingPopup", arg0, "saving", Engine.Localize("PLATFORM_NOW_SAVING"))
	Engine.SaveGame()
	registerVal1.saveTimeUp = false
	registerVal1.saveSaved = false
	registerVal1.controller = arg0
	registerVal1:registerEventHandler("notify_save_complete", CoD.InGamePopups.SaveSaved)
	registerVal1:registerEventHandler("notify_save_timeup", CoD.InGamePopups.SaveTimeUp)
	registerVal1:registerEventHandler("notify_save_forceclose", CoD.InGamePopups.SaveForceClose)
	registerVal1:addElement(LUI.UITimer.new(4000.000000, "notify_save_timeup", true, registerVal1))
	registerVal1:setPriority(10000.000000)
	return registerVal1
end

function LUI.createMenu.RestartLevelPopup(arg0)
	local registerVal5 = Engine.Localize("MENU_CONTINUE_RESTART")
	local registerVal6 = Engine.Localize("MENU_RESTART_LEVEL_TEXT")
	local registerVal7 = {}
	local registerVal8 = {}
	local registerVal9 = Engine.Localize("MENU_RESUMEGAME_CAPS")
	registerVal8.text = registerVal9
	registerVal8.event = "resume_game"
	registerVal9 = {}
	local registerVal10 = Engine.Localize("MENU_RESTART_LEVEL_CAPS")
	registerVal9.text = registerVal10
	registerVal9.event = "restart_level"
	registerVal7 = {registerVal8, registerVal9}
	local registerVal1 = CoD.InGamePopupMenu.New("RestartLevelPopup", arg0, "default", registerVal5, registerVal6, registerVal7, true)
	registerVal1:registerEventHandler("restart_level", CoD.InGamePopups.RestartLevelEvent)
	registerVal1:registerEventHandler("resume_game", CoD.InGamePopups.ResumeGameEvent)
	return registerVal1
end

function LUI.createMenu.RestartFromCheckpointPopup(arg0)
	local registerVal5 = Engine.Localize("MENU_CONTINUE_RESTART_CHECKPOINT")
	local registerVal6 = Engine.Localize("MENU_CHECKPOINT_RESTART_TEXT")
	local registerVal7 = {}
	local registerVal8 = {}
	local registerVal9 = Engine.Localize("MENU_RESUMEGAME_CAPS")
	registerVal8.text = registerVal9
	registerVal8.event = "resume_game"
	registerVal9 = {}
	local registerVal10 = Engine.Localize("MENU_RESTART_CHECKPOINT_CAPS")
	registerVal9.text = registerVal10
	registerVal9.event = "restart_from_checkpoint"
	registerVal7 = {registerVal8, registerVal9}
	local registerVal1 = CoD.InGamePopupMenu.New("RestartFromCheckpointPopup", arg0, "default", registerVal5, registerVal6, registerVal7, true)
	registerVal1:registerEventHandler("restart_from_checkpoint", CoD.InGamePopups.RestartFromCheckpointEvent)
	registerVal1:registerEventHandler("resume_game", CoD.InGamePopups.ResumeGameEvent)
	return registerVal1
end

function LUI.createMenu.RestartMissionPopup(arg0)
	local registerVal5 = Engine.Localize("MENU_CONTINUE_RESTART")
	local registerVal6 = Engine.Localize("MENU_RESTART_MISSION_TEXT")
	local registerVal7 = {}
	local registerVal8 = {}
	local registerVal9 = Engine.Localize("MENU_RESUMEGAME_CAPS")
	registerVal8.text = registerVal9
	registerVal8.event = "resume_game"
	registerVal9 = {}
	local registerVal10 = Engine.Localize("MENU_RESTART_MISSION_CAPS")
	registerVal9.text = registerVal10
	registerVal9.event = "restart_mission"
	registerVal7 = {registerVal8, registerVal9}
	local registerVal1 = CoD.InGamePopupMenu.New("RestartMissionPopup", arg0, "default", registerVal5, registerVal6, registerVal7, true)
	registerVal1:registerEventHandler("restart_mission", CoD.InGamePopups.RestartMissionEvent)
	registerVal1:registerEventHandler("resume_game", CoD.InGamePopups.ResumeGameEvent)
	return registerVal1
end

function CoD.InGamePopups.SaveSaved(arg0, arg1)
	arg0.saveSaved = true
	if arg0.saveTimeUp == true then
		arg0.previousMenuName = nil
		arg0:animateOutAndGoBack()
		Engine.SetDvar("cl_paused", 0.000000)
		Engine.Exec(arg1.controller, "disconnect")
	end
end

function CoD.InGamePopups.SaveTimeUp(arg0, arg1)
	arg0.saveTimeUp = true
	if arg0.saveSaved == true then
		arg0.previousMenuName = nil
		arg0:animateOutAndGoBack()
		Engine.SetDvar("cl_paused", 0.000000)
		Engine.Exec(arg1.controller, "disconnect")
	end
end

function CoD.InGamePopups.SaveForceClose(arg0, arg1)
	arg0.previousMenuName = nil
	arg0:animateOutAndGoBack()
	Engine.SetDvar("cl_paused", 0.000000)
end

function CoD.InGamePopups.SaveDeviceAvailable(arg0, arg1)
	arg0:openMenu("SaveGameErrorPopup", arg1.controller)
	arg0:close()
end

function CoD.InGamePopups.ResumeGameEvent(arg0, arg1)
	Engine.SetDvar("cl_paused", 0.000000)
	local registerVal4 = {}
	registerVal4.name = "close_all_ingame_menus"
	registerVal4.controller = arg1.controller
	arg0:processEvent(registerVal4)
end

function CoD.InGamePopups.RetrySaveGameEvent(arg0, arg1)
	arg0:openMenu("SaveGameSavingPopup", arg1.controller)
	local registerVal4 = {}
	registerVal4.name = "close_all_ingame_menus"
	registerVal4.controller = arg1.controller
	arg0:processEvent(registerVal4)
end

function CoD.InGamePopups.NoSaveResumeGameEvent(arg0, arg1)
	local registerVal4 = {}
	registerVal4.name = "close_all_ingame_menus"
	registerVal4.controller = arg1.controller
	arg0:processEvent(registerVal4)
end

function CoD.InGamePopups.NoSaveQuitGameEvent(arg0, arg1)
	local registerVal4 = {}
	registerVal4.name = "close_all_ingame_menus"
	registerVal4.controller = arg1.controller
	arg0:processEvent(registerVal4)
	Engine.SendMenuResponse(arg1.controller, "popup_leavegame", "endround")
end

function CoD.InGamePopups.SelectSaveDeviceWarningEvent(arg0, arg1)
	arg0:openMenu("SaveGameWarningPopup", arg1.controller)
	arg0:close()
end

function CoD.InGamePopups.ForceSelectSaveDeviceEvent(arg0, arg1)
	Engine.ExecNow(arg1.controller, "force_select_save_device")
	arg0:openMenu("SaveGameErrorPopup", arg1.controller)
	arg0:close()
end

function CoD.InGamePopups.SaveDeviceWarningEvent(arg0, arg1)
	Engine.ExecNow(arg1.controller, "force_select_save_device")
	arg0:goBack(arg1.controller)
end

function CoD.InGamePopups.CancelEvent(arg0, arg1)
	arg0:goBack(arg1.controller)
end

function CoD.InGamePopups.LowerDifficultyEvent(arg0, arg1)
	local registerVal2 = Engine.GetProfileVarInt(arg1.controller, "g_gameskill")
	if 0.000000 < registerVal2 then
		Engine.SetProfileVar(arg1.controller, "g_gameskill", (registerVal2 - 1.000000))
		Dvar.saved_gameskill:set(((registerVal2 - 1.000000) .. ""))
	end
	Engine.Exec(arg1.controller, "updategamerprofile")
	Engine.Exec(arg1.controller, "updateDifficultyFromProfile")
	arg0:goBack(arg1.controller)
end

function CoD.InGamePopups.QuitGameEvent(arg0, arg1)
	local registerVal4 = {}
	registerVal4.name = "close_all_ingame_menus"
	registerVal4.controller = arg1.controller
	arg0:processEvent(registerVal4)
	local registerVal2 = Dvar.ui_singlemission:get()
	if registerVal2 ~= 0.000000 then
		Engine.ExecNow(arg1.controller, "checkinvite")
	end
	Engine.SetDvar("cl_paused", 0.000000)
	Engine.SendMenuResponse(arg1.controller, "popup_leavegame", "endround")
	Engine.Exec(arg1.controller, "disconnect")
end

function CoD.InGamePopups.SaveAndQuitGameEvent(arg0, arg1)
	Engine.Exec(arg1.controller, "updategamerprofile")
	arg0:openMenu("SaveGameSavingPopup", arg1.controller)
	arg0:close()
	Engine.SendMenuResponse(arg1.controller, "popup_leavegame", "endround")
end

function CoD.InGamePopups.SaveAndQuitGameUnavailableEvent(arg0, arg1)
	arg0:openMenu("SaveGameErrorPopup", arg1.controller)
	arg0:close()
end

function CoD.InGamePopups.RestartMissionEvent(arg0, arg1)
	Dvar.ui_busyBlockIngameMenu:set(1.000000)
	local registerVal4 = {}
	registerVal4.name = "close_all_ingame_menus"
	registerVal4.controller = arg1.controller
	arg0:processEvent(registerVal4)
	Engine.SetDvar("cl_paused", 0.000000)
	Engine.PlayMenuMusic("death")
	Engine.Exec(arg1.controller, "stopControllerRumble")
	Engine.Exec(arg1.controller, "fade 0 0 0 255 0 0 1")
	Engine.Exec(arg1.controller, "silence")
	Engine.Exec(arg1.controller, "mission_restart")
end

function CoD.InGamePopups.RestartLevelEvent(arg0, arg1)
	Dvar.ui_busyBlockIngameMenu:set(1.000000)
	local registerVal4 = {}
	registerVal4.name = "close_all_ingame_menus"
	registerVal4.controller = arg1.controller
	arg0:processEvent(registerVal4)
	Engine.SetDvar("cl_paused", 0.000000)
	Engine.Exec(arg1.controller, "stopControllerRumble")
	Engine.Exec(arg1.controller, "fade 0 0 0 255 0 0 1")
	Engine.Exec(arg1.controller, "silence")
	Engine.Exec(arg1.controller, "fast_restart")
end

function CoD.InGamePopups.RestartFromCheckpointEvent(arg0, arg1)
	Dvar.ui_busyBlockIngameMenu:set(1.000000)
	local registerVal4 = {}
	registerVal4.name = "flush_dynamic_hud"
	arg0:dispatchEventToRoot(registerVal4)
	registerVal4 = {}
	registerVal4.name = "close_all_ingame_menus"
	registerVal4.controller = arg1.controller
	arg0:processEvent(registerVal4)
	Engine.SetDvar("cl_paused", 0.000000)
	Engine.Exec(arg1.controller, "fade 0 0 0 255 0 0 1")
	Engine.Exec(arg1.controller, "stopControllerRumble")
	Engine.Exec(arg1.controller, "silence")
	Engine.Exec(arg1.controller, "checkpoint_restart")
end

