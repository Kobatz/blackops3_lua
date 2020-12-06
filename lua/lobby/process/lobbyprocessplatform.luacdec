-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Lobby.Process.LobbyActions")
require("lua.Lobby.Matchmaking.LobbyMatchmaking")
Lobby.ProcessPlatform = {}
function Lobby.ProcessPlatform.PS4AcceptInvite(arg0, arg1, arg2, arg3, arg4)
	Engine.LobbyLaunchClear()
	local registerVal5 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local function __FUNC_1D91_()
		local registerVal0 = Engine.GetLobbyUIScreen()
		if not registerVal5 and registerVal0 == LobbyData.UITargets.UI_MAIN.id then
			for index2=0.000000, (LuaEnums.MAX_CONTROLLER_COUNT - 1.000000), 1.000000 do
				local registerVal6 = Engine.IsUserActive(index2)
				if registerVal6 then
				end
			end
			local registerVal2 = Engine.GetPrimaryController()
			if (0.000000 + 1.000000) == 0.000000 or registerVal2 ~= arg0 then
				Engine.ActivatePrimaryLocalClient(arg0)
			end
		end
	end

	local registerVal7 = Engine.GetPrimaryController()
	local function __FUNC_1F97_()
		Engine.DeactivateAllLocalClients()
	end

	local function __FUNC_2007_()
		local registerVal1 = {}
		registerVal1.lobbyType = Enum.LobbyType.LOBBY_TYPE_GAME
		Lobby.Timer.HostingLobbyEnd(registerVal1)
		Engine.QoSProbeListenerEnable(Enum.LobbyType.LOBBY_TYPE_GAME, false)
	end

	local function __FUNC_215C_()
		Engine.PlatformSessionClearInviteJoinInfo()
	end

	local registerVal10 = Engine.GetLobbyNetworkMode()
	if registerVal10 == Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_INVALID then
	end
	if Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LAN ~= Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LAN then
	end
	local function __FUNC_21D8_()
		return Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	end

	if registerVal5 then
		local registerVal14 = Engine.GetLobbyMaxClients(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	end
	registerVal14 = Lobby.Process.ReloadPrivateLobby(registerVal7, Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LAN)
	local registerVal15 = Lobby.Actions.LobbySettings(registerVal7, LobbyData.UITargets.UI_MODESELECT)
	local registerVal16 = Lobby.Actions.UpdateUI(registerVal7, LobbyData.UITargets.UI_MODESELECT)
	local registerVal17 = Lobby.Process.ReloadPrivateLobby(registerVal7, Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LAN)
	local registerVal18 = Lobby.Actions.LobbySettings(registerVal7, LobbyData.UITargets.UI_MODESELECT)
	local registerVal19 = Lobby.Actions.UpdateUI(registerVal7, LobbyData.UITargets.UI_MODESELECT)
	local registerVal20 = Lobby.Actions.OpenSpinner(nil, true)
	local registerVal21 = Lobby.Actions.CloseSpinner()
	local registerVal22 = Lobby.Actions.CloseSpinner()
	registerVal22.name = (registerVal22.name .. "Error")
	local registerVal23 = Lobby.Actions.CloseSpinner()
	registerVal23.name = (registerVal23.name .. "CannotPlayOnline")
	local registerVal24 = Lobby.Actions.CloseSpinner()
	registerVal24.name = (registerVal24.name .. "InviteBlocked")
	local registerVal25 = Lobby.Actions.CloseSpinner()
	registerVal25.name = (registerVal25.name .. "NeedsFirstTimeFlow")
	local registerVal26 = Lobby.Actions.CloseSpinner()
	registerVal26.name = (registerVal26.name .. "RecoverError")
	local registerVal27 = Lobby.Actions.EmptyAction()
	local registerVal28 = Lobby.Actions.ExecuteScript(__FUNC_215C_)
	local registerVal29 = Lobby.Actions.ExecuteScript(__FUNC_215C_)
	local registerVal30 = Lobby.Actions.ExecuteScript(__FUNC_215C_)
	local registerVal31 = Lobby.Actions.ExecuteScript(__FUNC_215C_)
	local registerVal32 = Lobby.Actions.ExecuteScript(__FUNC_215C_)
	local registerVal34 = Engine.GetUsedControllerCount()
	if 1.000000 < registerVal34 then
		for index35=1.000000, LuaEnums.MAX_CONTROLLER_COUNT, 1.000000 do
			local registerVal40 = Engine.IsUserActive((index35 - 1.000000))
			if registerVal40 then
				registerVal40 = Lobby.Actions.CanPlayOnline((index35 - 1.000000))
				{}[1.000000] = registerVal40
			end
		end
	else
		registerVal34 = Lobby.Actions.CanPlayOnline(registerVal7)
		{}[1.000000] = registerVal34
	end
	registerVal34 = Lobby.Actions.ConnectingToDemonware(registerVal7, LuaUtils.CONNECTINGDW_MAX_WAIT_TIME, true)
	local registerVal35 = Lobby.Actions.CanAcceptPlatformInvite(registerVal7)
	local registerVal36 = Lobby.Actions.ErrorPopupMsg("MENU_UPDATE_NEEDED")
	local registerVal37 = Lobby.Actions.ExecuteScript(__FUNC_1D91_)
	local registerVal38 = Lobby.Actions.ExecuteScript(__FUNC_1F97_)
	local registerVal39 = Lobby.Actions.ExecuteScript(__FUNC_2007_)
	registerVal40 = Lobby.Actions.ForceLobbyUIScreen(registerVal7, LobbyData.UITargets.UI_MODESELECT.id)
	local registerVal41 = Lobby.Actions.LobbyClientEnd(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal42 = Lobby.Actions.LobbyHostEnd(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal43 = Lobby.Actions.LobbyClientEnd(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal44 = Lobby.Actions.LobbyHostEnd(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal45 = Lobby.Actions.LobbyClientEnd(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal46 = Lobby.Actions.LobbyHostEnd(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal47 = Lobby.Actions.LobbyClientEnd(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal48 = Lobby.Actions.LobbyHostEnd(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal49 = Lobby.Actions.PlatformSessionGetInviteInfo(registerVal7, arg1, Enum.LobbyType.LOBBY_TYPE_PRIVATE, arg2)
	local registerVal50 = Lobby.Actions.GamertagsToXuids(registerVal7, registerVal49)
	local registerVal51 = Lobby.Actions.LobbyInfoProbe(registerVal7, registerVal50)
	local registerVal52 = Lobby.Actions.CheckFirstTimeFlowRequirements(registerVal7, registerVal51)
	local registerVal53 = Lobby.Actions.ShowFirstTimeFlowError(registerVal52)
	local registerVal54 = Lobby.Actions.LobbyJoinXUID(registerVal7, registerVal50, arg3)
	local registerVal55 = Lobby.Actions.ErrorPopup(registerVal54)
	local registerVal56 = Lobby.Actions.ExecuteScriptWithReturn(__FUNC_21D8_, true, false, false)
	local registerVal57 = Lobby.Actions.LobbyInfoProbe(registerVal7, registerVal50)
	local registerVal58 = Lobby.Actions.LobbyJoinXUIDExt(registerVal7, arg3, registerVal51, Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal59 = Lobby.Actions.LobbyHostStart(registerVal7, Enum.LobbyMainMode.LOBBY_MAINMODE_INVALID, Enum.LobbyType.LOBBY_TYPE_PRIVATE, Enum.LobbyMode.LOBBY_MODE_INVALID, registerVal14)
	local registerVal60 = Lobby.Actions.LobbyHostAddPrimary(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal61 = Lobby.Actions.LobbyClientStart(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal62 = {}
	registerVal62.head = registerVal20
	registerVal62.interrupt = Lobby.Interrupt.NONE
	registerVal62.force = true
	registerVal62.cancellable = true
	Lobby.Process.ForceAction(registerVal20, registerVal37)
	for index64=1.000000, #registerVal20, 1.000000 do
		Lobby.Process.AddActions(registerVal37, {}[index64], registerVal22, registerVal22)
	end
	Lobby.Process.AddActions({}[index64], registerVal39, registerVal23, registerVal23)
	Lobby.Process.AddActions(registerVal39, registerVal34, registerVal22, registerVal22)
	Lobby.Process.AddActions(registerVal34, registerVal35, registerVal22, registerVal22)
	Lobby.Process.AddActions(registerVal35, registerVal27, registerVal24, registerVal24)
	if true then
		Lobby.Process.ForceAction(registerVal27, registerVal40)
		Lobby.Process.ForceAction(registerVal40, registerVal41)
		Lobby.Process.ForceAction(registerVal41, registerVal42)
		Lobby.Process.ForceAction(registerVal42, registerVal43)
		Lobby.Process.ForceAction(registerVal43, registerVal44)
	end
	Lobby.Process.AddActions(registerVal44, registerVal45, registerVal26, registerVal26)
	Lobby.Process.AddActions(registerVal45, registerVal46, registerVal26, registerVal26)
	local registerVal64 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	Lobby.Process.AddActions(registerVal46, registerVal47, registerVal26, registerVal26)
	registerVal64 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	if registerVal64 and registerVal64 then
		Lobby.Process.AddActions(registerVal47, registerVal48, registerVal26, registerVal26)
	end
	Lobby.Process.AddActions(registerVal48, registerVal59, registerVal26, registerVal26)
	Lobby.Process.AddActions(registerVal59, registerVal60, registerVal26, registerVal26)
	Lobby.Process.AddActions(registerVal60, registerVal61, registerVal26, registerVal26)
	Lobby.Process.AddActions(registerVal61, registerVal49, registerVal26, registerVal26)
	Lobby.Process.AddActions(registerVal49, registerVal50, registerVal26, registerVal26)
	Lobby.Process.AddActions(registerVal50, registerVal51, registerVal26, registerVal26)
	Lobby.Process.AddActions(registerVal51, registerVal52, registerVal26, registerVal26)
	Lobby.Process.AddActions(registerVal52, registerVal54, registerVal25, registerVal25)
	Lobby.Process.AddActions(registerVal54, registerVal28, registerVal26, registerVal26)
	Lobby.Process.AddActions(registerVal28, registerVal56, registerVal26, registerVal26)
	Lobby.Process.AddActions(registerVal56, registerVal57, registerVal21, registerVal21)
	Lobby.Process.AddActions(registerVal57, registerVal58, registerVal21, registerVal21)
	Lobby.Process.AddActions(registerVal58, registerVal21, registerVal21, registerVal21)
	Lobby.Process.ForceAction(registerVal22, registerVal29)
	Lobby.Process.ForceAction(registerVal29, registerVal55)
	Lobby.Process.ForceAction(registerVal24, registerVal30)
	Lobby.Process.ForceAction(registerVal30, registerVal36)
	Lobby.Process.ForceAction(registerVal25, registerVal31)
	Lobby.Process.ForceAction(registerVal31, registerVal17.head)
	Lobby.Process.ForceAction(registerVal17.tail, registerVal18)
	Lobby.Process.ForceAction(registerVal18, registerVal19)
	Lobby.Process.ForceAction(registerVal19, registerVal53)
	Lobby.Process.ForceAction(registerVal26, registerVal32)
	Lobby.Process.ForceAction(registerVal32, registerVal14.head)
	Lobby.Process.ForceAction(registerVal14.tail, registerVal15)
	Lobby.Process.ForceAction(registerVal15, registerVal16)
	Lobby.Process.ForceAction(registerVal16, registerVal55)
	return registerVal62
end

function Lobby.ProcessPlatform.PS4SessionJoin(arg0, arg1, arg2, arg3)
	Engine.LobbyLaunchClear()
	local registerVal4 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local function __FUNC_3B5F_()
		local registerVal0 = Engine.GetLobbyUIScreen()
		if not registerVal4 and registerVal0 == LobbyData.UITargets.UI_MAIN.id then
			for index2=0.000000, (LuaEnums.MAX_CONTROLLER_COUNT - 1.000000), 1.000000 do
				local registerVal6 = Engine.IsUserActive(index2)
				if registerVal6 then
				end
			end
			local registerVal2 = Engine.GetPrimaryController()
			if (0.000000 + 1.000000) == 0.000000 or registerVal2 ~= arg0 then
				Engine.ActivatePrimaryLocalClient(arg0)
			end
		end
	end

	local registerVal6 = Engine.GetPrimaryController()
	local function __FUNC_3D63_()
		Engine.DeactivateAllLocalClients()
	end

	local function __FUNC_3DD3_()
		local registerVal1 = {}
		registerVal1.lobbyType = Enum.LobbyType.LOBBY_TYPE_GAME
		Lobby.Timer.HostingLobbyEnd(registerVal1)
		Engine.QoSProbeListenerEnable(Enum.LobbyType.LOBBY_TYPE_GAME, false)
	end

	local function __FUNC_3F28_()
		Engine.PlatformSessionClearInviteJoinInfo()
	end

	local registerVal9 = Engine.GetLobbyNetworkMode()
	if registerVal9 == Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_INVALID then
	end
	if Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LAN ~= Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LAN then
	end
	local function __FUNC_3FA4_()
		return Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	end

	if registerVal4 == true then
		local registerVal13 = Engine.GetLobbyMaxClients(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	end
	registerVal13 = Lobby.Process.ReloadPrivateLobby(registerVal6, Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LAN)
	local registerVal14 = Lobby.Actions.LobbySettings(registerVal6, LobbyData.UITargets.UI_MODESELECT)
	local registerVal15 = Lobby.Actions.UpdateUI(registerVal6, LobbyData.UITargets.UI_MODESELECT)
	local registerVal16 = Lobby.Process.ReloadPrivateLobby(registerVal6, Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LAN)
	local registerVal17 = Lobby.Actions.LobbySettings(registerVal6, LobbyData.UITargets.UI_MODESELECT)
	local registerVal18 = Lobby.Actions.UpdateUI(registerVal6, LobbyData.UITargets.UI_MODESELECT)
	local registerVal19 = Lobby.Actions.OpenSpinner(nil, true)
	local registerVal20 = Lobby.Actions.CloseSpinner()
	local registerVal21 = Lobby.Actions.CloseSpinner()
	local registerVal22 = Lobby.Actions.CloseSpinner()
	registerVal22.name = (registerVal22.name .. "NeedsFirstTimeFlow")
	local registerVal23 = Lobby.Actions.CloseSpinner()
	registerVal23.name = (registerVal23.name .. "CannotPlayOnline")
	local registerVal24 = Lobby.Actions.CloseSpinner()
	registerVal24.name = (registerVal24.name .. "RecoverError")
	local registerVal26 = Engine.GetUsedControllerCount()
	if 1.000000 < registerVal26 then
		for index27=1.000000, LuaEnums.MAX_CONTROLLER_COUNT, 1.000000 do
			local registerVal32 = Engine.IsUserActive((index27 - 1.000000))
			if registerVal32 then
				registerVal32 = Lobby.Actions.CanPlayOnline((index27 - 1.000000))
				{}[1.000000] = registerVal32
			end
		end
	else
		registerVal26 = Lobby.Actions.CanPlayOnline(registerVal6)
		{}[1.000000] = registerVal26
	end
	registerVal26 = Lobby.Actions.ExecuteScript(__FUNC_3B5F_)
	local registerVal27 = Lobby.Actions.ExecuteScript(__FUNC_3D63_)
	local registerVal28 = Lobby.Actions.ExecuteScript(__FUNC_3F28_)
	local registerVal29 = Lobby.Actions.ExecuteScript(__FUNC_3F28_)
	local registerVal30 = Lobby.Actions.ExecuteScript(__FUNC_3F28_)
	local registerVal31 = Lobby.Actions.ExecuteScript(__FUNC_3F28_)
	registerVal32 = Lobby.Actions.ExecuteScript(__FUNC_3DD3_)
	local registerVal33 = Lobby.Actions.ConnectingToDemonware(registerVal6, LuaUtils.CONNECTINGDW_MAX_WAIT_TIME, true)
	local registerVal34 = Lobby.Actions.ForceLobbyUIScreen(registerVal6, LobbyData.UITargets.UI_MODESELECT.id)
	local registerVal35 = Lobby.Actions.LobbyClientEnd(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal36 = Lobby.Actions.LobbyHostEnd(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal37 = Lobby.Actions.LobbyClientEnd(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal38 = Lobby.Actions.LobbyHostEnd(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal39 = Lobby.Actions.LobbyClientEnd(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal40 = Lobby.Actions.LobbyHostEnd(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal41 = Lobby.Actions.LobbyClientEnd(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal42 = Lobby.Actions.LobbyHostEnd(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal43 = Lobby.Actions.PlatformSessionGetSessionInfo(registerVal6, Enum.LobbyType.LOBBY_TYPE_PRIVATE, arg1)
	local registerVal44 = Lobby.Actions.GamertagsToXuids(registerVal6, registerVal43)
	local registerVal45 = Lobby.Actions.LobbyInfoProbe(registerVal6, registerVal44)
	local registerVal46 = Lobby.Actions.CheckFirstTimeFlowRequirements(registerVal6, registerVal45)
	local registerVal47 = Lobby.Actions.ShowFirstTimeFlowError(registerVal46)
	local registerVal48 = Lobby.Actions.LobbyJoinXUID(registerVal6, registerVal44, arg2)
	local registerVal49 = Lobby.Actions.ErrorPopup(registerVal48)
	local registerVal50 = Lobby.Actions.ErrorPopup(registerVal48)
	local registerVal51 = Lobby.Actions.ExecuteScriptWithReturn(__FUNC_3FA4_, true, false, false)
	local registerVal52 = Lobby.Actions.LobbyInfoProbe(registerVal6, registerVal44)
	local registerVal53 = Lobby.Actions.LobbyJoinXUIDExt(registerVal6, arg2, registerVal45, Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal54 = Lobby.Actions.LobbyHostStart(registerVal6, Enum.LobbyMainMode.LOBBY_MAINMODE_INVALID, Enum.LobbyType.LOBBY_TYPE_PRIVATE, Enum.LobbyMode.LOBBY_MODE_INVALID, registerVal13)
	local registerVal55 = Lobby.Actions.LobbyHostAddPrimary(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal56 = Lobby.Actions.LobbyClientStart(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal57 = {}
	registerVal57.head = registerVal19
	registerVal57.interrupt = Lobby.Interrupt.NONE
	registerVal57.force = true
	registerVal57.cancellable = true
	Lobby.Process.ForceAction(registerVal19, registerVal26)
	for index59=1.000000, #registerVal19, 1.000000 do
		Lobby.Process.AddActions(registerVal26, {}[index59], registerVal21, registerVal21)
	end
	Lobby.Process.AddActions({}[index59], registerVal32, registerVal23, registerVal23)
	Lobby.Process.AddActions(registerVal32, registerVal33, registerVal21, registerVal21)
	if true then
		Lobby.Process.ForceAction(registerVal33, registerVal34)
		Lobby.Process.ForceAction(registerVal34, registerVal35)
		Lobby.Process.ForceAction(registerVal35, registerVal36)
		Lobby.Process.ForceAction(registerVal36, registerVal37)
		Lobby.Process.ForceAction(registerVal37, registerVal38)
	end
	Lobby.Process.AddActions(registerVal38, registerVal39, registerVal24, registerVal24)
	Lobby.Process.AddActions(registerVal39, registerVal40)
	local registerVal59 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	Lobby.Process.AddActions(registerVal40, registerVal41, registerVal24, registerVal24)
	registerVal59 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	if registerVal59 and registerVal59 then
		Lobby.Process.AddActions(registerVal41, registerVal42, registerVal24, registerVal24)
	end
	Lobby.Process.AddActions(registerVal42, registerVal54, registerVal24, registerVal24)
	Lobby.Process.AddActions(registerVal54, registerVal55, registerVal24, registerVal24)
	Lobby.Process.AddActions(registerVal55, registerVal56, registerVal24, registerVal24)
	Lobby.Process.AddActions(registerVal56, registerVal43, registerVal24, registerVal24)
	Lobby.Process.AddActions(registerVal43, registerVal44, registerVal24, registerVal24)
	Lobby.Process.AddActions(registerVal44, registerVal45, registerVal24, registerVal24)
	Lobby.Process.AddActions(registerVal45, registerVal46, registerVal24, registerVal24)
	Lobby.Process.AddActions(registerVal46, registerVal48, registerVal22, registerVal22)
	Lobby.Process.AddActions(registerVal48, registerVal28, registerVal24, registerVal24)
	Lobby.Process.AddActions(registerVal28, registerVal51, registerVal24, registerVal24)
	Lobby.Process.AddActions(registerVal51, registerVal52, registerVal20, registerVal20)
	Lobby.Process.AddActions(registerVal52, registerVal53, registerVal20, registerVal20)
	Lobby.Process.AddActions(registerVal53, registerVal20, registerVal20, registerVal20)
	Lobby.Process.ForceAction(registerVal21, registerVal29)
	Lobby.Process.ForceAction(registerVal29, registerVal49)
	Lobby.Process.ForceAction(registerVal49, registerVal27)
	Lobby.Process.ForceAction(registerVal22, registerVal30)
	Lobby.Process.ForceAction(registerVal30, registerVal16.head)
	Lobby.Process.ForceAction(registerVal16.tail, registerVal17)
	Lobby.Process.ForceAction(registerVal17, registerVal18)
	Lobby.Process.ForceAction(registerVal18, registerVal47)
	Lobby.Process.ForceAction(registerVal24, registerVal31)
	Lobby.Process.ForceAction(registerVal31, registerVal13.head)
	Lobby.Process.ForceAction(registerVal13.tail, registerVal14)
	Lobby.Process.ForceAction(registerVal14, registerVal15)
	Lobby.Process.ForceAction(registerVal15, registerVal50)
	return registerVal57
end

function Lobby.ProcessPlatform.XboxJoin(arg0, arg1, arg2, arg3)
	Engine.LobbyLaunchClear()
	local registerVal4 = Engine.GetLobbyNetworkMode()
	if registerVal4 == Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_INVALID then
	end
	if Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LAN ~= Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LAN then
	end
	local function __FUNC_5AFA_()
		Engine.ActivatePrimaryLocalClient(arg0)
	end

	local function __FUNC_5B70_()
		Engine.DeactivateAllLocalClients()
	end

	local function __FUNC_5BE3_()
		Engine.PlatformSessionClearInviteJoinInfo()
	end

	local function __FUNC_5C5C_()
		local registerVal1 = {}
		registerVal1.lobbyType = Enum.LobbyType.LOBBY_TYPE_GAME
		Lobby.Timer.HostingLobbyEnd(registerVal1)
		Engine.QoSProbeListenerEnable(Enum.LobbyType.LOBBY_TYPE_GAME, false)
	end

	local function __FUNC_5DB4_()
		return Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	end

	local registerVal12 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	if registerVal12 == true then
		local registerVal13 = Engine.GetLobbyMaxClients(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	end
	registerVal13 = Lobby.Process.ReloadPrivateLobby(arg0, Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LAN)
	local registerVal14 = Lobby.Actions.LobbySettings(arg0, LobbyData.UITargets.UI_MODESELECT)
	local registerVal15 = Lobby.Actions.UpdateUI(arg0, LobbyData.UITargets.UI_MODESELECT)
	local registerVal16 = Lobby.Process.ReloadPrivateLobby(arg0, Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LAN)
	local registerVal17 = Lobby.Actions.LobbySettings(arg0, LobbyData.UITargets.UI_MODESELECT)
	local registerVal18 = Lobby.Actions.UpdateUI(arg0, LobbyData.UITargets.UI_MODESELECT)
	local registerVal19 = Lobby.Process.ReloadPrivateLobby(arg0, Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LAN)
	local registerVal20 = Lobby.Actions.LobbySettings(arg0, LobbyData.UITargets.UI_MODESELECT)
	local registerVal21 = Lobby.Actions.UpdateUI(arg0, LobbyData.UITargets.UI_MODESELECT)
	local registerVal22 = Lobby.Actions.OpenSpinner(nil, true)
	local registerVal23 = Lobby.Actions.CloseSpinner()
	local registerVal24 = Lobby.Actions.CloseSpinner()
	registerVal24.name = (registerVal24.name .. "CanPlayOnline")
	local registerVal25 = Lobby.Actions.CloseSpinner()
	registerVal25.name = (registerVal25.name .. "NeedsFirstTimeFlow")
	local registerVal26 = Lobby.Actions.CloseSpinner()
	registerVal26.name = (registerVal26.name .. "RecoverError")
	local registerVal27 = Lobby.Actions.ErrorPopupMsg("XBOXLIVE_MPNOTALLOWED")
	local registerVal28 = Lobby.Actions.CanPlayOnline(arg0)
	local registerVal29 = Lobby.Actions.ExecuteScript(__FUNC_5C5C_)
	local registerVal30 = Lobby.Actions.ConnectingToDemonware(arg0, LuaUtils.CONNECTINGDW_MAX_WAIT_TIME, true)
	local registerVal31 = Lobby.Actions.ExecuteScript(__FUNC_5AFA_)
	local registerVal32 = Lobby.Actions.ExecuteScript(__FUNC_5B70_)
	local registerVal33 = Lobby.Actions.ForceLobbyUIScreen(arg0, LobbyData.UITargets.UI_MODESELECT.id)
	local registerVal34 = Lobby.Actions.LobbyClientEnd(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal35 = Lobby.Actions.LobbyHostEnd(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal36 = Lobby.Actions.LobbyClientEnd(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal37 = Lobby.Actions.LobbyHostEnd(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal38 = Lobby.Actions.LeaveWithParty(3000.000000)
	local registerVal39 = Lobby.Actions.LobbyClientEnd(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal40 = Lobby.Actions.LobbyHostEnd(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal41 = Lobby.Actions.LobbyClientEnd(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal42 = Lobby.Actions.LobbyHostEnd(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal45 = {}
	registerVal45.xuid = arg1
	local registerVal43 = Lobby.Actions.LobbyInfoProbe(arg0, registerVal45)
	local registerVal44 = Lobby.Actions.LobbyJoinXUIDExt(arg0, arg2, registerVal43, Enum.LobbyType.LOBBY_TYPE_COUNT)
	registerVal45 = Lobby.Actions.CheckFirstTimeFlowRequirements(arg0, registerVal43)
	local registerVal46 = Lobby.Actions.ShowFirstTimeFlowError(registerVal45)
	local registerVal47 = Lobby.Actions.ExecuteScriptWithReturn(__FUNC_5DB4_, true, false, false)
	local registerVal50 = {}
	registerVal50.xuid = arg1
	local registerVal48 = Lobby.Actions.LobbyInfoProbe(arg0, registerVal50)
	local registerVal49 = Lobby.Actions.LobbyJoinXUIDExt(arg0, arg2, registerVal48, Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	registerVal50 = Lobby.Actions.LobbyHostStart(arg0, Enum.LobbyMainMode.LOBBY_MAINMODE_INVALID, Enum.LobbyType.LOBBY_TYPE_PRIVATE, Enum.LobbyMode.LOBBY_MODE_INVALID, registerVal13)
	local registerVal51 = Lobby.Actions.LobbyHostAddPrimary(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal52 = Lobby.Actions.LobbyClientStart(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal53 = Lobby.Actions.ExecuteScript(__FUNC_5BE3_)
	local registerVal54 = Lobby.Actions.ExecuteScript(__FUNC_5BE3_)
	local registerVal55 = Lobby.Actions.ExecuteScript(__FUNC_5BE3_)
	local registerVal56 = Lobby.Actions.ExecuteScript(__FUNC_5BE3_)
	local registerVal57 = Lobby.Actions.ExecuteScript(__FUNC_5BE3_)
	local registerVal58 = Lobby.Actions.CloseSpinner()
	local registerVal59 = Lobby.Actions.ErrorPopup(registerVal44)
	if arg3 ~= LuaEnums.LEAVE_WITH_PARTY.WITH then
	end
	local registerVal61 = Engine.IsInGame()
	local registerVal62 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal63 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal64 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal65 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal66 = Engine.GetLobbyClientCount(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal67 = Engine.GetLobbyClientCount(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal61 == true then
		if registerVal64 == true then
		else
			if registerVal63 == true then
				if true == false and registerVal64 == true then
				else
					if registerVal62 == true then
						if true == false and registerVal64 == true then
						else
						end
					end
				end
			end
		end
	end
	local registerVal72 = {}
	registerVal72.head = registerVal28
	registerVal72.interrupt = Lobby.Interrupt.NONE
	registerVal72.force = true
	registerVal72.cancellable = true
	Lobby.Process.AddActions(registerVal28, registerVal22, registerVal24, registerVal24)
	Lobby.Process.ForceAction(registerVal22, registerVal31)
	if true then
		Lobby.Process.ForceAction(registerVal31, registerVal33)
		Lobby.Process.ForceAction(registerVal33, registerVal34)
		Lobby.Process.ForceAction(registerVal34, registerVal35)
		Lobby.Process.ForceAction(registerVal35, registerVal36)
		Lobby.Process.ForceAction(registerVal36, registerVal37)
	end
	Lobby.Process.ForceAction(registerVal37, registerVal29)
	Lobby.Process.ForceAction(registerVal29, registerVal30)
	if registerVal63 == true and true == true then
		Lobby.Process.AddActions(registerVal30, registerVal38, registerVal26, registerVal26)
	end
	if true == true then
		Lobby.Process.AddActions(registerVal38, registerVal41, registerVal26, registerVal26)
	end
	if true == true then
		Lobby.Process.AddActions(registerVal41, registerVal42, registerVal26, registerVal26)
	end
	if true == true then
		Lobby.Process.AddActions(registerVal42, registerVal39, registerVal26, registerVal26)
	end
	if true == true then
		Lobby.Process.AddActions(registerVal39, registerVal40, registerVal26, registerVal26)
	end
	if registerVal64 == false or true == true then
		Lobby.Process.AddActions(registerVal40, registerVal50, registerVal26, registerVal26)
		Lobby.Process.AddActions(registerVal50, registerVal51, registerVal26, registerVal26)
	end
	if true == true then
		Lobby.Process.AddActions(registerVal51, registerVal52, registerVal26, registerVal26)
	end
	Lobby.Process.AddActions(registerVal52, registerVal43, registerVal26, registerVal26)
	Lobby.Process.AddActions(registerVal43, registerVal45, registerVal26, registerVal26)
	Lobby.Process.AddActions(registerVal45, registerVal44, registerVal25, registerVal25)
	Lobby.Process.AddActions(registerVal44, registerVal47, registerVal26, registerVal26)
	Lobby.Process.AddActions(registerVal47, registerVal48, registerVal53, registerVal53)
	Lobby.Process.AddActions(registerVal48, registerVal49, registerVal53, registerVal53)
	Lobby.Process.ForceAction(registerVal49, registerVal53)
	Lobby.Process.ForceAction(registerVal53, registerVal23)
	Lobby.Process.ForceAction(registerVal24, registerVal55)
	Lobby.Process.ForceAction(registerVal55, registerVal16.head)
	Lobby.Process.ForceAction(registerVal16.tail, registerVal17)
	Lobby.Process.ForceAction(registerVal17, registerVal18)
	Lobby.Process.ForceAction(registerVal18, registerVal27)
	Lobby.Process.ForceAction(registerVal25, registerVal56)
	Lobby.Process.ForceAction(registerVal56, registerVal19.head)
	Lobby.Process.ForceAction(registerVal19.tail, registerVal20)
	Lobby.Process.ForceAction(registerVal20, registerVal21)
	Lobby.Process.ForceAction(registerVal21, registerVal46)
	Lobby.Process.ForceAction(registerVal26, registerVal57)
	Lobby.Process.ForceAction(registerVal57, registerVal13.head)
	Lobby.Process.ForceAction(registerVal13.tail, registerVal14)
	Lobby.Process.ForceAction(registerVal14, registerVal15)
	Lobby.Process.ForceAction(registerVal15, registerVal59)
	Lobby.Process.ForceAction(registerVal59, registerVal32)
	return registerVal72
end

function Lobby.ProcessPlatform.PCJoin(arg0, arg1, arg2, arg3, arg4)
	local function __FUNC_7C64_()
		Engine.ActivatePrimaryLocalClient(arg0)
	end

	local function __FUNC_7CDC_()
		Engine.DeactivateAllLocalClients()
	end

	local function __FUNC_7D4F_()
		local registerVal1 = {}
		registerVal1.lobbyType = Enum.LobbyType.LOBBY_TYPE_GAME
		Lobby.Timer.HostingLobbyEnd(registerVal1)
		Engine.QoSProbeListenerEnable(Enum.LobbyType.LOBBY_TYPE_GAME, false)
	end

	local function __FUNC_7EA4_()
		Engine.PlatformSessionClearInviteJoinInfo()
	end

	local registerVal9 = Engine.GetLobbyNetworkMode()
	if registerVal9 ~= Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LAN then
	end
	local function __FUNC_7F20_(arg0)
		local registerVal1 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
		if registerVal1 and arg0.probeResult.privateLobby.isValid then
			if LuaEnums.INVALID_XUID == arg2 then
			end
		end
		return true
	end

	local registerVal11 = Engine.GetLobbyNetworkMode()
	if registerVal11 ~= Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LAN and registerVal11 ~= Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE then
	end
	local registerVal13 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	if registerVal13 then
		local registerVal14 = Engine.GetLobbyMaxClients(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	end
	registerVal14 = Lobby.Process.ReloadPrivateLobby(arg0, Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE)
	local registerVal15 = Lobby.Actions.LobbySettings(arg0, LobbyData.UITargets.UI_MODESELECT)
	local registerVal16 = Lobby.Actions.UpdateUI(arg0, LobbyData.UITargets.UI_MODESELECT)
	local registerVal17 = Lobby.Process.ReloadPrivateLobby(arg0, Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE)
	local registerVal18 = Lobby.Actions.LobbySettings(arg0, LobbyData.UITargets.UI_MODESELECT)
	local registerVal19 = Lobby.Actions.UpdateUI(arg0, LobbyData.UITargets.UI_MODESELECT)
	local registerVal20 = Lobby.Actions.OpenSpinner(nil, true)
	local registerVal21 = Lobby.Actions.CloseSpinner()
	local registerVal22 = Lobby.Actions.CloseSpinner()
	local registerVal23 = Lobby.Actions.CloseSpinner()
	registerVal23.name = (registerVal23.name .. "NeedsFirstTimeFlow")
	local registerVal24 = Lobby.Actions.CloseSpinner()
	registerVal24.name = (registerVal24.name .. "CheckMods")
	local registerVal25 = Lobby.Actions.CloseSpinner()
	registerVal25.name = (registerVal25.name .. "CheckStarterPack")
	local registerVal26 = Lobby.Actions.CloseSpinner()
	registerVal26.name = (registerVal26.name .. "CannotPlayOnline")
	local registerVal27 = Lobby.Actions.CloseSpinner()
	registerVal27.name = (registerVal27.name .. "RecoverError")
	local registerVal28 = Lobby.Actions.CanPlayOnline(arg0)
	local registerVal29 = Lobby.Actions.ExecuteScript(__FUNC_7C64_)
	local registerVal30 = Lobby.Actions.ExecuteScript(__FUNC_7CDC_)
	local registerVal31 = Lobby.Actions.ExecuteScript(__FUNC_7EA4_)
	local registerVal32 = Lobby.Actions.ExecuteScript(__FUNC_7EA4_)
	local registerVal33 = Lobby.Actions.ExecuteScript(__FUNC_7EA4_)
	local registerVal34 = Lobby.Actions.ExecuteScript(__FUNC_7EA4_)
	local registerVal35 = Lobby.Actions.ExecuteScript(__FUNC_7EA4_)
	local registerVal36 = Lobby.Actions.ExecuteScript(__FUNC_7EA4_)
	local registerVal37 = Lobby.Actions.ExecuteScript(__FUNC_7EA4_)
	local registerVal38 = Lobby.Actions.ExecuteScript(__FUNC_7EA4_)
	local registerVal39 = Lobby.Actions.ExecuteScript(__FUNC_7EA4_)
	local registerVal40 = Lobby.Actions.ExecuteScript(__FUNC_7D4F_)
	local registerVal41 = Lobby.Actions.ConnectingToDemonware(arg0, LuaUtils.CONNECTINGDW_MAX_WAIT_TIME, true)
	local registerVal42 = Lobby.Actions.ForceLobbyUIScreen(arg0, LobbyData.UITargets.UI_MODESELECT.id)
	local registerVal43 = Lobby.Actions.LobbyClientEnd(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal44 = Lobby.Actions.LobbyHostEnd(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal45 = Lobby.Actions.LobbyClientEnd(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal46 = Lobby.Actions.LobbyHostEnd(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal47 = Lobby.Actions.LobbyClientEnd(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal48 = Lobby.Actions.LobbyHostEnd(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal49 = Lobby.Actions.LobbyClientEnd(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal50 = Lobby.Actions.LobbyHostEnd(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal51 = Lobby.Actions.PlatformSessionGetSessionInfo(arg0, Enum.LobbyType.LOBBY_TYPE_PRIVATE, sessionId)
	local registerVal52 = Lobby.Actions.GamertagsToXuids(arg0, registerVal51)
	local registerVal55 = {}
	registerVal55.xuid = arg1
	local registerVal53 = Lobby.Actions.LobbyInfoProbe(arg0, registerVal55)
	local registerVal54 = Lobby.Actions.CheckFirstTimeFlowRequirements(arg0, registerVal53)
	registerVal55 = Lobby.Actions.ShowFirstTimeFlowError(registerVal54)
	local registerVal56 = Lobby.Actions.LobbyJoinXUIDExt(arg0, arg3, registerVal53, Enum.LobbyType.LOBBY_TYPE_COUNT)
	local registerVal57 = Lobby.Actions.ErrorPopup(registerVal56)
	local registerVal58 = Lobby.Actions.ErrorPopup(registerVal56)
	local registerVal59 = Lobby.Actions.ExecuteScriptWithReturn(__FUNC_7F20_, true, false, false, registerVal53)
	local registerVal62 = {}
	registerVal62.xuid = arg2
	local registerVal60 = Lobby.Actions.LobbyInfoProbe(arg0, registerVal62)
	local registerVal61 = Lobby.Actions.LobbyJoinXUIDExt(arg0, arg3, registerVal60, Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	registerVal62 = Lobby.Actions.CheckStarterPackRequirements(arg0, registerVal53)
	local registerVal63 = Lobby.Actions.ErrorPopup(registerVal62)
	local registerVal64 = Lobby.Actions.CheckMods(arg0, registerVal53, true)
	local registerVal65 = Lobby.Actions.ErrorPopup(registerVal64)
	local registerVal66 = Lobby.Actions.SubscribeUGC(arg0, registerVal64)
	local registerVal67 = Lobby.Actions.ErrorPopup(registerVal66)
	local registerVal68 = Lobby.Actions.CloseSpinner()
	registerVal68.name = (registerVal22.name .. "SubscribeUGC")
	local registerVal69 = Lobby.Actions.InstalledUGC(arg0, registerVal64)
	local registerVal70 = Lobby.Actions.ErrorPopup(registerVal69)
	local registerVal71 = Lobby.Actions.CloseSpinner()
	registerVal71.name = (registerVal22.name .. "InstalledUGC")
	local registerVal72 = Lobby.Actions.LoadMod(arg0, registerVal64)
	local registerVal73 = Lobby.Actions.ErrorPopup(registerVal72)
	local registerVal74 = Lobby.Actions.CloseSpinner()
	registerVal74.name = (registerVal22.name .. "LoadedMod")
	local registerVal75 = Lobby.Actions.LobbyHostStart(arg0, Enum.LobbyMainMode.LOBBY_MAINMODE_INVALID, Enum.LobbyType.LOBBY_TYPE_PRIVATE, Enum.LobbyMode.LOBBY_MODE_INVALID, registerVal14)
	local registerVal76 = Lobby.Actions.LobbyHostAddPrimary(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal77 = Lobby.Actions.LobbyClientStart(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal78 = {}
	registerVal78.head = registerVal20
	registerVal78.interrupt = Lobby.Interrupt.NONE
	registerVal78.force = true
	registerVal78.cancellable = true
	Lobby.Process.ForceAction(registerVal20, registerVal29)
	Lobby.Process.AddActions(registerVal29, registerVal28, registerVal22, registerVal22)
	Lobby.Process.AddActions(registerVal28, registerVal40, registerVal26, registerVal26)
	Lobby.Process.AddActions(registerVal40, registerVal41, registerVal22, registerVal22)
	if true then
		Lobby.Process.ForceAction(registerVal41, registerVal42)
		Lobby.Process.ForceAction(registerVal42, registerVal43)
		Lobby.Process.ForceAction(registerVal43, registerVal44)
		Lobby.Process.ForceAction(registerVal44, registerVal45)
		Lobby.Process.ForceAction(registerVal45, registerVal46)
	end
	Lobby.Process.AddActions(registerVal46, registerVal47, registerVal27, registerVal27)
	Lobby.Process.AddActions(registerVal47, registerVal48)
	local registerVal80 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	Lobby.Process.AddActions(registerVal48, registerVal49, registerVal27, registerVal27)
	registerVal80 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	if registerVal80 and registerVal80 then
		Lobby.Process.AddActions(registerVal49, registerVal50, registerVal27, registerVal27)
	end
	Lobby.Process.AddActions(registerVal50, registerVal75, registerVal27, registerVal27)
	Lobby.Process.AddActions(registerVal75, registerVal76, registerVal27, registerVal27)
	Lobby.Process.AddActions(registerVal76, registerVal77, registerVal27, registerVal27)
	Lobby.Process.AddActions(registerVal77, registerVal51, registerVal27, registerVal27)
	Lobby.Process.AddActions(registerVal51, registerVal53, registerVal27, registerVal27)
	Lobby.Process.AddActions(registerVal53, registerVal64, registerVal27, registerVal27)
	Lobby.Process.AddActions(registerVal64, registerVal66, registerVal22, registerVal24)
	Lobby.Process.AddActions(registerVal66, registerVal69, registerVal22, registerVal68)
	Lobby.Process.AddActions(registerVal69, registerVal72, registerVal22, registerVal71)
	Lobby.Process.AddActions(registerVal72, registerVal62, registerVal22, registerVal74)
	Lobby.Process.AddActions(registerVal62, registerVal54, registerVal27, registerVal25)
	Lobby.Process.AddActions(registerVal54, registerVal56, registerVal23, registerVal23)
	Lobby.Process.AddActions(registerVal56, registerVal31, registerVal27, registerVal27)
	Lobby.Process.AddActions(registerVal31, registerVal59, registerVal27, registerVal27)
	Lobby.Process.AddActions(registerVal59, registerVal60, registerVal21, registerVal21)
	Lobby.Process.AddActions(registerVal60, registerVal61, registerVal21, registerVal21)
	Lobby.Process.AddActions(registerVal61, registerVal21, registerVal21, registerVal21)
	Lobby.Process.ForceAction(registerVal22, registerVal32)
	Lobby.Process.ForceAction(registerVal32, registerVal57)
	Lobby.Process.ForceAction(registerVal57, registerVal30)
	Lobby.Process.ForceAction(registerVal23, registerVal33)
	Lobby.Process.ForceAction(registerVal33, registerVal17.head)
	Lobby.Process.ForceAction(registerVal17.tail, registerVal18)
	Lobby.Process.ForceAction(registerVal18, registerVal19)
	Lobby.Process.ForceAction(registerVal19, registerVal55)
	Lobby.Process.ForceAction(registerVal24, registerVal36)
	Lobby.Process.ForceAction(registerVal36, registerVal65)
	Lobby.Process.ForceAction(registerVal68, registerVal37)
	Lobby.Process.ForceAction(registerVal37, registerVal67)
	Lobby.Process.ForceAction(registerVal71, registerVal38)
	Lobby.Process.ForceAction(registerVal38, registerVal70)
	Lobby.Process.ForceAction(registerVal74, registerVal39)
	Lobby.Process.ForceAction(registerVal39, registerVal73)
	Lobby.Process.ForceAction(registerVal25, registerVal35)
	Lobby.Process.ForceAction(registerVal35, registerVal63)
	Lobby.Process.ForceAction(registerVal27, registerVal34)
	Lobby.Process.ForceAction(registerVal34, registerVal14.head)
	Lobby.Process.ForceAction(registerVal14.tail, registerVal15)
	Lobby.Process.ForceAction(registerVal15, registerVal16)
	Lobby.Process.ForceAction(registerVal16, registerVal58)
	return registerVal78
end

function Lobby.ProcessPlatform.PlayTogetherBeginPlay(arg0, arg1)
	local function __FUNC_84D6_()
		Engine.PlatformSessionClearPlayTogetherInfo()
	end

	local registerVal3 = Lobby.Actions.OpenSpinner(nil, true)
	local registerVal4 = Lobby.Actions.CloseSpinner()
	local registerVal5 = Lobby.Platform.PS4GetSessionId(arg0)
	local registerVal6 = Lobby.Actions.PlayTogetherBeginPlayWait(arg0)
	local registerVal7 = Lobby.Actions.PlayTogetherPSNSessionWait(arg0, registerVal5)
	local registerVal8 = Lobby.Actions.ExecuteScript(__FUNC_84D6_, nil)
	local registerVal9 = {}
	registerVal9.head = registerVal3
	registerVal9.interrupt = Lobby.Interrupt.NONE
	registerVal9.force = false
	registerVal9.cancellable = false
	Lobby.Process.AddActions(registerVal3, registerVal6)
	Lobby.Process.AddActions(registerVal6, registerVal7)
	local registerVal11, registerVal12, registerVal13 = ipairs(arg1)
	for index14,value15 in registerVal11, registerVal12, registerVal13 do
		local registerVal16 = Lobby.Actions.SendPlatformInvite(arg0, Enum.LobbyType.LOBBY_TYPE_PRIVATE, value15)
		Lobby.Process.AddActions(registerVal7, registerVal16)
	end
	Lobby.Process.AddActions(registerVal16, registerVal8)
	Lobby.Process.AddActions(registerVal8, registerVal4)
	return registerVal9
end

function Lobby.ProcessPlatform.SendPlayTogetherInvites(arg0, arg1)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.GetModel(registerVal4, "lobbyRoot.beginPlay")
	Engine.SetModelValue(registerVal3, Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE)
	local registerVal2 = Lobby.Platform.PS4GetSessionId(arg0)
	local function __FUNC_89AF_()
		Engine.PlatformSessionClearPlayTogetherInfo()
	end

	registerVal4 = Lobby.Actions.OpenSpinner(nil, true)
	local registerVal5 = Lobby.Actions.CloseSpinner()
	local registerVal6 = Lobby.Actions.ExecuteScript(__FUNC_89AF_, nil)
	local registerVal7 = {}
	registerVal7.head = registerVal4
	registerVal7.interrupt = Lobby.Interrupt.NONE
	registerVal7.force = false
	registerVal7.cancellable = false
	local registerVal9, registerVal10, registerVal11 = ipairs(arg1)
	for index12,value13 in registerVal9, registerVal10, registerVal11 do
		local registerVal14 = Lobby.Actions.SendPlatformInvite(arg0, Enum.LobbyType.LOBBY_TYPE_PRIVATE, value13, registerVal2)
		Lobby.Process.AddActions(registerVal4, registerVal14)
	end
	Lobby.Process.AddActions(registerVal14, registerVal6)
	Lobby.Process.AddActions(registerVal6, registerVal5)
	return registerVal7
end

