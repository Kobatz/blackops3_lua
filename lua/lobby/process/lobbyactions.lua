-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Lobby.Common.LobbyCore")
require("lua.Shared.LuaUtils")
Lobby.Interrupt = {}
Lobby.Interrupt.NONE = nil
Lobby.Interrupt.BACK = 1.000000
Lobby.Interrupt.FAILED_ACTION = 2.000000
Lobby.Interrupt.ERROR_MSG = 3.000000
local registerVal1 = string.char(21.000000)
Lobby.GMLOC_OFF = registerVal1
function Lobby.Interrupt.Back(arg0, arg1)
	local registerVal2 = {}
	registerVal2.isInterrupt = true
	registerVal2.name = "InterruptBack"
	registerVal2.interruptFuncPtr = arg0
	registerVal2.params = arg1
	local function __FUNC_133D_(arg0, arg1)
		local registerVal2 = {}
		registerVal2.action = nil
		registerVal2.errorMsg = nil
		return arg0.interruptFuncPtr(Lobby.Interrupt.BACK, arg0.params, registerVal2)
	end

	registerVal2.createFuncPtr = __FUNC_133D_
	return registerVal2
end

function Lobby.Interrupt.FailedAction(arg0, arg1)
	local registerVal2 = {}
	registerVal2.isInterrupt = true
	registerVal2.name = "InterruptFailedAction"
	registerVal2.interruptFuncPtr = arg0
	registerVal2.params = arg1
	local function __FUNC_1501_(arg0, arg1)
		local registerVal2 = {}
		registerVal2.action = arg1
		registerVal2.errorMsg = nil
		return arg0.interruptFuncPtr(Lobby.Interrupt.FAILED_ACTION, arg0.params, registerVal2)
	end

	registerVal2.createFuncPtr = __FUNC_1501_
	return registerVal2
end

function Lobby.Interrupt.ErrorMsg(arg0, arg1, arg2)
	local registerVal3 = {}
	registerVal3.isInterrupt = true
	registerVal3.name = "InterruptErrorMsg"
	registerVal3.interruptFuncPtr = arg0
	registerVal3.params = arg1
	registerVal3.errorMsg = arg2
	local function __FUNC_16DF_(arg0, arg1)
		local registerVal2 = {}
		registerVal2.action = arg1
		registerVal2.errorMsg = arg0.errorMsg
		return arg0.interruptFuncPtr(Lobby.Interrupt.ERROR_MSG, arg0.params, registerVal2)
	end

	registerVal3.createFuncPtr = __FUNC_16DF_
	return registerVal3
end

Lobby.Actions = {}
function Lobby.Actions.EmptyAction()
	local registerVal0 = {}
	registerVal0.name = "EmptyAction"
	local function __FUNC_1859_(arg0)
		local registerVal2 = {}
		registerVal2.actionId = arg0.actionId
		LobbyVM.ProcessCompleteSuccess(registerVal2)
	end

	registerVal0.startFuncPtr = __FUNC_1859_
	return registerVal0
end

function Lobby.Actions.ExecuteScript(arg0, arg1)
	local registerVal2 = {}
	registerVal2.name = "ExecuteScript"
	registerVal2.inlineFunction = arg0
	registerVal2.functionParam = arg1
	local function __FUNC_199E_(arg0)
		arg0.inlineFunction(arg0.functionParam)
		local registerVal2 = {}
		registerVal2.actionId = arg0.actionId
		LobbyVM.ProcessCompleteSuccess(registerVal2)
	end

	registerVal2.startFuncPtr = __FUNC_199E_
	return registerVal2
end

function Lobby.Actions.ExecuteScriptWithReturn(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = {}
	registerVal5.name = "ExecuteScript"
	registerVal5.inlineFunction = arg0
	local function __FUNC_1B23_(arg0)
		local registerVal1 = arg0.inlineFunction(arg4)
		if registerVal1 == arg1 then
			local registerVal3 = {}
			registerVal3.actionId = arg0.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal3)
			return 
		else
			if registerVal1 == arg2 then
				registerVal3 = {}
				registerVal3.actionId = arg0.actionId
				LobbyVM.ProcessCompleteFailure(registerVal3)
				return 
			else
				if registerVal1 == arg3 then
					registerVal3 = {}
					registerVal3.actionId = arg0.actionId
					LobbyVM.ProcessCompleteError(registerVal3)
					return 
				else
					registerVal3 = {}
					registerVal3.actionId = arg0.actionId
					LobbyVM.ProcessCompleteError(registerVal3)
					return 
				end
			end
		end
	end

	registerVal5.startFuncPtr = __FUNC_1B23_
	return registerVal5
end

function Lobby.Actions.LuiEvent(arg0, arg1)
	local registerVal2 = {}
	registerVal2.name = ("LuiEvent: " .. arg0)
	registerVal2.event = arg0
	registerVal2.data = arg1
	local function __FUNC_1D81_(arg0)
		arg0.data.actionId = arg0.actionId
		Engine.LuiVM_Event(arg0.event, arg0.data)
	end

	registerVal2.startFuncPtr = __FUNC_1D81_
	return registerVal2
end

function Lobby.Actions.LobbyVMCall(arg0, arg1)
	local registerVal2 = {}
	registerVal2.name = "LobbyVMCall"
	registerVal2.lobbyVMFunc = arg0
	registerVal2.data = arg1
	local function __FUNC_1EEC_(arg0)
		arg0.lobbyVMFunc(arg0.data)
		local registerVal2 = {}
		registerVal2.actionId = arg0.actionId
		LobbyVM.ProcessCompleteSuccess(registerVal2)
	end

	registerVal2.startFuncPtr = __FUNC_1EEC_
	return registerVal2
end

function Lobby.Actions.LobbyVMCallRetVal(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = {}
	registerVal5.name = "LobbyVMCallRetVal"
	registerVal5.lobbyVMFunc = arg0
	registerVal5.data = arg1
	registerVal5.successVal = arg2
	registerVal5.failureVal = arg3
	registerVal5.errorVal = arg4
	local function __FUNC_20B0_(arg0)
		local registerVal1 = arg0.lobbyVMFunc(arg0.data)
		if registerVal1 == arg0.successVal then
			local registerVal3 = {}
			registerVal3.actionId = arg0.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal3)
			return 
		else
			if registerVal1 == arg0.failureVal then
				registerVal3 = {}
				registerVal3.actionId = arg0.actionId
				LobbyVM.ProcessCompleteFailure(registerVal3)
				return 
			else
				if registerVal1 == arg0.errorVal then
					registerVal3 = {}
					registerVal3.actionId = arg0.actionId
					LobbyVM.ProcessCompleteError(registerVal3)
					return 
				else
					registerVal3 = {}
					registerVal3.actionId = arg0.actionId
					LobbyVM.ProcessCompleteError(registerVal3)
					return 
				end
			end
		end
	end

	registerVal5.startFuncPtr = __FUNC_20B0_
	return registerVal5
end

function Lobby.Actions.TimeDelay(arg0)
	local registerVal1 = {}
	registerVal1.name = ("TimeDelay(" .. arg0 .. "ms)")
	registerVal1.timeDelayMilliseconds = arg0
	registerVal1.endTime = nil
	local function __FUNC_23D6_(arg0)
		if arg0.timeDelayMilliseconds == 0.000000 then
			local registerVal2 = {}
			registerVal2.actionId = arg0.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal2)
			return 
		end
		registerVal2 = Engine.milliseconds()
		arg0.endTime = (arg0.timeDelayMilliseconds + registerVal2)
	end

	registerVal1.startFuncPtr = __FUNC_23D6_
	local function __FUNC_2506_(arg0, arg1)
		local registerVal3 = Engine.milliseconds()
		if arg0.endTime < registerVal3 then
			registerVal3 = {}
			registerVal3.actionId = arg0.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal3)
			return 
		end
	end

	registerVal1.pumpFuncPtr = __FUNC_2506_
	local function __FUNC_25FE_(arg0)
		local registerVal2 = {}
		registerVal2.actionId = arg0.actionId
		LobbyVM.ProcessCompleteSuccess(registerVal2)
	end

	registerVal1.cancelFuncPtr = __FUNC_25FE_
	return registerVal1
end

function Lobby.Actions.OpenSpinner(arg0, arg1)
	local registerVal2 = {}
	registerVal2.name = "OpenSpinner"
	registerVal2.showCancelButton = arg0
	registerVal2.closeAllPopups = arg1
	local function __FUNC_2743_(arg0)
		if arg0.showCancelButton == nil then
			arg0.showCancelButton = false
		end
		if arg0.closeAllPopups then
			local registerVal2 = Engine.GetGlobalModel()
			local registerVal1 = Engine.CreateModel(registerVal2, "lobbyRoot.closePopups")
			Engine.ForceNotifyModelSubscriptions(registerVal1)
		end
		local registerVal3 = Engine.GetGlobalModel()
		registerVal2 = Engine.CreateModel(registerVal3, "lobbyRoot.spinnerActive")
		Engine.SetModelValue(registerVal2, true)
		registerVal2 = {}
		registerVal2.actionId = arg0.actionId
		LobbyVM.ProcessCompleteSuccess(registerVal2)
	end

	registerVal2.startFuncPtr = __FUNC_2743_
	return registerVal2
end

function Lobby.Actions.CloseSpinner()
	local registerVal0 = {}
	registerVal0.name = "CloseSpinner"
	local function __FUNC_29F2_(arg0)
		local registerVal3 = Engine.GetGlobalModel()
		local registerVal2 = Engine.CreateModel(registerVal3, "lobbyRoot.spinnerActive")
		Engine.SetModelValue(registerVal2, false)
		registerVal2 = {}
		registerVal2.actionId = arg0.actionId
		LobbyVM.ProcessCompleteSuccess(registerVal2)
	end

	registerVal0.startFuncPtr = __FUNC_29F2_
	return registerVal0
end

function Lobby.Actions.IsConditionTrue(arg0)
	local registerVal1 = {}
	local registerVal3 = tostring(arg0)
	registerVal1.name = ("IsConditionTrue(value: " .. registerVal3 .. ")")
	registerVal1.condition = arg0
	local function __FUNC_2C11_(arg0)
		if arg0.condition then
			local registerVal2 = {}
			registerVal2.actionId = arg0.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal2)
		else
			registerVal2 = {}
			registerVal2.actionId = arg0.actionId
			LobbyVM.ProcessCompleteFailure(registerVal2)
		end
	end

	registerVal1.startFuncPtr = __FUNC_2C11_
	return registerVal1
end

function Lobby.Actions.EvaluateFunction(arg0)
	local registerVal1 = {}
	registerVal1.name = "EvaluateFunction()"
	registerVal1.func = arg0
	local function __FUNC_2DAA_(arg0)
		local registerVal1 = arg0.func()
		if registerVal1 then
			local registerVal2 = {}
			registerVal2.actionId = arg0.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal2)
		else
			registerVal2 = {}
			registerVal2.actionId = arg0.actionId
			LobbyVM.ProcessCompleteFailure(registerVal2)
		end
	end

	registerVal1.startFuncPtr = __FUNC_2DAA_
	return registerVal1
end

function Lobby.Actions.WaitTillOutOfGame()
	local registerVal0 = {}
	registerVal0.name = "WaitTillOutOfGame"
	local function __FUNC_2F4C_(arg0)
		local registerVal1 = Engine.IsInGame()
		if registerVal1 == false then
			local registerVal2 = {}
			registerVal2.actionId = arg0.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal2)
		end
	end

	registerVal0.startFuncPtr = __FUNC_2F4C_
	local function __FUNC_3023_(arg0, arg1)
		local registerVal2 = Engine.IsInGame()
		if registerVal2 == false then
			local registerVal3 = {}
			registerVal3.actionId = arg0.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal3)
		end
	end

	registerVal0.pumpFuncPtr = __FUNC_3023_
	return registerVal0
end

function Lobby.Actions.CanAcceptPlatformInvite(arg0)
	local registerVal1 = {}
	local registerVal3 = tostring(arg0)
	registerVal1.name = ("CanAcceptPlatformInvite(controller: " .. registerVal3 .. ")")
	registerVal1.controller = arg0
	local function __FUNC_31D3_(arg0)
		local registerVal2 = LuaUtils.IsSkuOfflineOnly()
		if registerVal2 then
		end
		if false then
			local registerVal3 = {}
			registerVal3.actionId = arg0.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal3)
		else
			registerVal3 = {}
			registerVal3.actionId = arg0.actionId
			LobbyVM.ProcessCompleteFailure(registerVal3)
		end
	end

	registerVal1.startFuncPtr = __FUNC_31D3_
	return registerVal1
end

function Lobby.Actions.SendPlatformInvite(arg0, arg1, arg2, arg3)
	local registerVal4 = {}
	local registerVal6 = tostring(arg0)
	registerVal4.name = ("SendPlatformInvite(controller: " .. registerVal6 .. ")")
	registerVal4.controller = arg0
	registerVal4.lobbyType = arg1
	registerVal4.gamertag = arg2
	registerVal4.sessionId = arg3
	local function __FUNC_342A_(arg1)
		local registerVal1 = Lobby.Platform.PS4GetSessionId(arg0)
		local registerVal6 = Engine.NumberToUInt64(0.000000)
		local registerVal2 = Engine.PlatformSessionPS4Invite(arg1.actionId, arg1.controller, arg1.lobbyType, registerVal6, arg1.gamertag, registerVal1)
		if registerVal2 == false then
			local registerVal4 = {}
			registerVal4.actionId = arg1.actionId
			LobbyVM.ProcessCompleteFailure(registerVal4)
		end
	end

	registerVal4.startFuncPtr = __FUNC_342A_
	return registerVal4
end

function Lobby.Actions.CanPlayOnline(arg0)
	local registerVal1 = {}
	local registerVal3 = tostring(arg0)
	registerVal1.name = ("CanPlayOnline(controller: " .. registerVal3 .. ")")
	registerVal1.controller = arg0
	registerVal1.checkPlusEndTime = 0.000000
	local function __FUNC_3725_(arg0)
		if LuaUtils.isPS4 then
			local registerVal3 = Engine.IsSignedIntoPSN(arg0.controller)
			if not registerVal3 then
				Engine.DisplayNpError(arg0.controller, "-2141913082")
			else
				registerVal3 = Engine.DisplayNpAvailabilityErrors(arg0.controller)
				if registerVal3 then
				else
					registerVal3, registerVal4 = Engine.CheckPSPlus(arg0.controller)
					if registerVal3 == true then
						Engine.DisplayUpsellAndContentWarnings(arg0.controller)
						local registerVal5 = Engine.milliseconds()
						arg0.checkPlusEndTime = (registerVal5 + LuaEnums.PS_PLUS_CHECK_TIME)
						return 
						if registerVal4 == false and LuaUtils.isXbox then
							registerVal3 = Engine.HasMPPrivileges(arg0.controller)
							registerVal3 = Engine.IsPlusAuthorized(arg0.controller)
							if registerVal3 == false or registerVal3 == false then
								Engine.PrivilegeForceCheck(arg0.controller, 254.000000, true)
							end
						end
					end
				end
			end
		end
		if false then
			registerVal4 = {}
			registerVal4.actionId = arg0.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal4)
		else
			registerVal4 = {}
			registerVal4.actionId = arg0.actionId
			LobbyVM.ProcessCompleteFailure(registerVal4)
		end
	end

	registerVal1.startFuncPtr = __FUNC_3725_
	local function __FUNC_3B50_(arg1)
		if LuaUtils.isPS4 then
			local registerVal2, registerVal3 = Engine.CheckPSPlus(arg0)
			local registerVal5 = Engine.milliseconds()
			if registerVal2 == false and registerVal5 < arg1.checkPlusEndTime then
				return 
			end
			if registerVal3 == true then
			else
				Engine.DisplayUpsellAndContentWarnings(arg0)
			end
		end
		if true then
			registerVal3 = {}
			registerVal3.actionId = arg1.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal3)
		else
			registerVal3 = {}
			registerVal3.actionId = arg1.actionId
			LobbyVM.ProcessCompleteFailure(registerVal3)
		end
	end

	registerVal1.pumpFuncPtr = __FUNC_3B50_
	return registerVal1
end

function Lobby.Actions.DisableConnectingToDemonware(arg0)
	local registerVal1 = {}
	registerVal1.name = "DisableConnectingToDemonware"
	registerVal1.controller = arg0
	local function __FUNC_3E12_(arg1)
		local registerVal1 = Engine.IsSignedInToDemonware(arg1.controller)
		registerVal1 = Engine.IsDemonwareFetchingDone(arg0)
		if registerVal1 and not registerVal1 and Engine.LiveConnectDisconnectFromDemonware then
			Engine.LiveConnectDisconnectFromDemonware(arg1.controller)
		end
		Engine.LiveConnectDisableDemonwareConnect()
		local registerVal2 = {}
		registerVal2.actionId = arg1.actionId
		LobbyVM.ProcessCompleteSuccess(registerVal2)
	end

	registerVal1.startFuncPtr = __FUNC_3E12_
	return registerVal1
end

function Lobby.Actions.EnableConnectingToDemonware(arg0)
	local registerVal1 = {}
	registerVal1.name = "EnableConnectingToDemonware"
	registerVal1.controller = arg0
	local function __FUNC_4095_(arg0)
		Engine.LiveConnectEnableDemonwareConnect()
		local registerVal2 = {}
		registerVal2.actionId = arg0.actionId
		LobbyVM.ProcessCompleteSuccess(registerVal2)
	end

	registerVal1.startFuncPtr = __FUNC_4095_
	return registerVal1
end

function Lobby.Actions.ConnectingToDemonware(arg0, arg1, arg2)
	local registerVal3 = {}
	registerVal3.name = ("ConnectingToDemonware(check for " .. arg1 .. "ms)")
	registerVal3.controller = arg0
	registerVal3.waitMilliseconds = arg1
	registerVal3.invite = arg2
	registerVal3.endTime = nil
	registerVal3.checkInterval = 100.000000
	registerVal3.checkTime = nil
	local function __FUNC_42FE_(arg0)
		local registerVal1 = Engine.IsDemonwareFetchingDone(arg0.controller)
		if arg0.waitMilliseconds == 0.000000 and registerVal1 then
			local registerVal2 = {}
			registerVal2.actionId = arg0.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal2)
			return 
		end
		registerVal1 = Engine.GetLobbyUIScreen()
		if arg2 == true or registerVal1 == LobbyData.UITargets.UI_MAIN.id then
			LuaUtils.SetNetworkMode(arg0.controller, Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE)
		end
		Engine.LiveConnectEnableDemonwareConnect()
		registerVal2 = Engine.milliseconds()
		arg0.endTime = (arg0.waitMilliseconds + registerVal2)
		registerVal2 = Engine.milliseconds()
		arg0.checkTime = (arg0.checkInterval + registerVal2)
	end

	registerVal3.startFuncPtr = __FUNC_42FE_
	local function __FUNC_4674_(arg1, arg2)
		local registerVal3 = Engine.milliseconds()
		if registerVal3 < arg1.checkTime then
			return 
		end
		registerVal3 = Engine.milliseconds()
		arg1.checkTime = (arg1.checkInterval + registerVal3)
		local registerVal2 = Engine.IsDemonwareFetchingDone(arg1.controller)
		if registerVal2 == true then
			if LuaUtils.isPS4 == true then
				registerVal2 = Engine.DisplayNpAvailabilityErrors(arg0)
				if registerVal2 then
					registerVal3 = {}
					registerVal3.actionId = arg1.actionId
					LobbyVM.ProcessCompleteFailure(registerVal3)
					return 
				else
					registerVal2 = Engine.DisplayUpsellAndContentWarnings(arg1.controller)
					if not registerVal2 then
						registerVal3 = {}
						registerVal3.actionId = arg1.actionId
						LobbyVM.ProcessCompleteFailure(registerVal3)
						return 
					end
				end
			end
			registerVal3 = {}
			registerVal3.actionId = arg1.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal3)
			return 
		end
		registerVal3 = Engine.milliseconds()
		if arg1.endTime < registerVal3 then
			registerVal3 = {}
			registerVal3.actionId = arg1.actionId
			LobbyVM.ProcessCompleteFailure(registerVal3)
			return 
		end
	end

	registerVal3.pumpFuncPtr = __FUNC_4674_
	local function __FUNC_49C2_(arg0)
		local registerVal2 = {}
		registerVal2.actionId = arg0.actionId
		LobbyVM.ProcessCompleteSuccess(registerVal2)
	end

	registerVal3.cancelFuncPtr = __FUNC_49C2_
	return registerVal3
end

function Lobby.Actions.IsButtonPressed(arg0, arg1)
	local registerVal2 = {}
	registerVal2.name = "IsButtonPressed"
	registerVal2.controller = arg0
	registerVal2.button = arg1
	local function __FUNC_4AFD_(arg0)
		local registerVal1 = Engine.IsDevelopmentBuild()
		if not registerVal1 then
			local registerVal2 = {}
			registerVal2.actionId = arg0.actionId
			LobbyVM.ProcessCompleteFailure(registerVal2)
			return 
		end
		registerVal1 = Engine.IsButtonPressed(arg0.controller, arg0.button)
		if registerVal1 then
			local registerVal3 = {}
			registerVal3.actionId = arg0.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal3)
			return 
		else
			registerVal3 = {}
			registerVal3.actionId = arg0.actionId
			LobbyVM.ProcessCompleteFailure(registerVal3)
			return 
		end
	end

	registerVal2.startFuncPtr = __FUNC_4AFD_
	return registerVal2
end

function Lobby.Actions.IsDvarSet(arg0, arg1)
	local registerVal2 = {}
	local registerVal6 = tostring(arg1)
	registerVal2.name = ("IsDvarSet(dvar: " .. arg0 .. ", check for value: " .. registerVal6 .. ")")
	registerVal2.dvarName = arg0
	registerVal2.dvarValue = arg1
	local function __FUNC_4DD1_(arg0)
		local registerVal3 = Engine.GetDvarType(arg0.dvarName)
		if registerVal3 == Enum.dvarType_t.DVAR_TYPE_INVALID then
			local registerVal6 = {}
			registerVal6.actionId = arg0.actionId
			LobbyVM.ProcessCompleteFailure(registerVal6)
		else
			if registerVal3 == Enum.dvarType_t.DVAR_TYPE_BOOL then
				local registerVal5 = Engine.DvarBool(0.000000, arg0.dvarName)
				if arg0.dvarValue ~= registerVal5 then
				end
			else
				if registerVal3 == Enum.dvarType_t.DVAR_TYPE_FLOAT then
					registerVal5 = Engine.DvarFloat(arg0.dvarName)
					if arg0.dvarValue ~= registerVal5 then
					end
				else
					if registerVal3 == Enum.dvarType_t.DVAR_TYPE_INT then
						registerVal5 = Engine.DvarInt(0.000000, arg0.dvarName)
						if arg0.dvarValue ~= registerVal5 then
						end
					else
						if registerVal3 == Enum.dvarType_t.DVAR_TYPE_STRING then
							registerVal5 = Engine.DvarString(0.000000, arg0.dvarName)
							if arg0.dvarValue ~= registerVal5 then
							end
						end
					end
				end
			end
		end
		if true then
			registerVal6 = {}
			registerVal6.actionId = arg0.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal6)
			return 
		else
			registerVal6 = {}
			registerVal6.actionId = arg0.actionId
			LobbyVM.ProcessCompleteFailure(registerVal6)
			return 
		end
	end

	registerVal2.startFuncPtr = __FUNC_4DD1_
	return registerVal2
end

function Lobby.Actions.ErrorPopupMsg(arg0, arg1)
	local registerVal2 = {}
	registerVal2.name = "ErrorPopupMsg"
	registerVal2.message = arg0
	registerVal2.title = arg1
	local function __FUNC_5267_(arg0)
		LuaUtils.UI_ShowErrorMessageDialog(nil, arg0.message, arg0.title)
		local registerVal2 = {}
		registerVal2.actionId = arg0.actionId
		LobbyVM.ProcessCompleteSuccess(registerVal2)
	end

	registerVal2.startFuncPtr = __FUNC_5267_
	return registerVal2
end

function Lobby.Actions.WarningPopupMsg(arg0, arg1)
	local registerVal2 = {}
	registerVal2.name = "WarningPopupMsg"
	registerVal2.message = arg0
	registerVal2.title = arg1
	local function __FUNC_5425_(arg0)
		LuaUtils.UI_ShowWarningMessageDialog(nil, arg0.message, arg0.title)
		local registerVal2 = {}
		registerVal2.actionId = arg0.actionId
		LobbyVM.ProcessCompleteSuccess(registerVal2)
	end

	registerVal2.startFuncPtr = __FUNC_5425_
	return registerVal2
end

function Lobby.Actions.ErrorPopup(arg0)
	if arg0.errorFuncPtr == nil then
		error(("Lobby.Actions.ErrorPopup: An action: " .. arg0.name .. " with no errorFuncPtr has been used."))
	end
	local registerVal1 = {}
	registerVal1.name = ("ErrorPopup: " .. arg0.name)
	registerVal1.actionRef = arg0
	local function __FUNC_56A0_(arg1)
		if arg0.joinResults then
			joinResult = arg0.joinResults[#arg0.joinResults]
		end
		if joinResult and joinResult.joinResult == Enum.JoinResult.JOIN_RESULT_INVALID_PASSWORD then
			local registerVal1 = {}
			registerVal1.controller = arg0.controller
			registerVal1.xuid = arg0.infoProbe.info.xuid
			registerVal1.joinType = arg0.joinType
			LuaUtils.ShowPasswordInput(registerVal1)
		else
			if arg0.errorFuncPtr ~= nil then
				local registerVal2 = arg1.actionRef:errorFuncPtr()
			end
			LuaUtils.UI_ShowErrorMessageDialog(nil, registerVal2)
		end
		registerVal2 = {}
		registerVal2.actionId = arg1.actionId
		LobbyVM.ProcessCompleteSuccess(registerVal2)
	end

	registerVal1.startFuncPtr = __FUNC_56A0_
	return registerVal1
end

function Lobby.Actions.ConnectToDW(arg0)
	local registerVal1 = {}
	registerVal1.name = "ConnectToDW"
	registerVal1.controller = arg0
	local function __FUNC_5AB1_(arg0)
	end

	registerVal1.startFuncPtr = __FUNC_5AB1_
	return registerVal1
end

function Lobby.Actions.SetDefaultArenaPlaylist(arg0)
	local registerVal1 = {}
	registerVal1.name = "SetDefaultPlaylist"
	registerVal1.controller = arg0
	local function __FUNC_5B78_(arg1)
		local registerVal1 = Engine.GetProfileVarInt(arg0, "playlist_leaguematch")
		if registerVal1 <= 0.000000 then
			local registerVal3 = Dvar.arena_defaultPlaylist:exists()
			if registerVal3 then
				registerVal3 = Dvar.arena_defaultPlaylist:get()
			else
			else
			end
		end
		local registerVal4, registerVal5 = LuaUtils.GetArenaPlaylistInfo()
		local registerVal6, registerVal7, registerVal8 = ipairs(registerVal5)
		for index9,value10 in registerVal6, registerVal7, registerVal8 do
			if value10.index == registerVal1 then
			else
			end
		end
		if not value10 then
		end
		if registerVal5[1.000000] then
			Engine.SetPlaylistID(registerVal5[1.000000].index)
			Engine.SetProfileVar(arg0, "playlist_leaguematch", tostring(registerVal5[1.000000].index))
			registerVal7 = Engine.GetGlobalModel()
			registerVal6 = Engine.CreateModel(registerVal7, "lobbyPlaylist")
			registerVal7 = Engine.CreateModel(registerVal6, "name")
			Engine.SetModelValue(registerVal7, Engine.ToUpper(registerVal5[1.000000].name))
			registerVal8 = Engine.CreateModel(registerVal6, "kickerText")
			Engine.SetModelValue(registerVal8, "")
		end
		registerVal7 = {}
		registerVal7.actionId = arg1.actionId
		LobbyVM.ProcessCompleteSuccess(registerVal7)
	end

	registerVal1.startFuncPtr = __FUNC_5B78_
	return registerVal1
end

function Lobby.Actions.ArenaErrorShutdown(arg0)
	local registerVal1 = {}
	registerVal1.name = "ArenaErrorShutdown"
	registerVal1.controller = arg0
	local function __FUNC_6054_(arg1)
		Lobby.Pregame.Shutdown(arg0)
		local registerVal2 = {}
		registerVal2.actionId = arg1.actionId
		LobbyVM.ProcessCompleteSuccess(registerVal2)
	end

	registerVal1.startFuncPtr = __FUNC_6054_
	return registerVal1
end

function Lobby.Actions.RunPlaylistSettings(arg0)
	local registerVal1 = {}
	registerVal1.name = "RunPlaylistSettings"
	registerVal1.require = "LobbySettings"
	registerVal1.controller = arg0
	local function __FUNC_6205_(arg0)
		Engine.RunPlaylistSettings(arg0.controller)
		local registerVal2 = {}
		registerVal2.actionId = arg0.actionId
		LobbyVM.ProcessCompleteSuccess(registerVal2)
	end

	registerVal1.startFuncPtr = __FUNC_6205_
	return registerVal1
end

function Lobby.Actions.RunPlaylistRules(arg0)
	local registerVal1 = {}
	registerVal1.name = "RunPlaylistRules"
	registerVal1.require = "LobbySettings"
	registerVal1.controller = arg0
	local function __FUNC_63BE_(arg0)
		Engine.RunPlaylistRules(arg0.controller)
		local registerVal2 = {}
		registerVal2.actionId = arg0.actionId
		LobbyVM.ProcessCompleteSuccess(registerVal2)
	end

	registerVal1.startFuncPtr = __FUNC_63BE_
	return registerVal1
end

function Lobby.Actions.SwitchMode(arg0, arg1)
	local registerVal2 = {}
	registerVal2.name = "SwitchMode"
	registerVal2.controller = arg0
	registerVal2.toMode = arg1
	local function __FUNC_6553_(arg0)
		Engine.SwitchMode(arg0.controller, arg0.toMode)
		local registerVal2 = {}
		registerVal2.actionId = arg0.actionId
		LobbyVM.ProcessCompleteSuccess(registerVal2)
	end

	registerVal2.pumpFuncPtr = __FUNC_6553_
	return registerVal2
end

function Lobby.Actions.SwitchCampaignMode(arg0, arg1)
	local registerVal2 = {}
	registerVal2.name = "SwitchCampaignMode"
	registerVal2.controller = arg0
	registerVal2.toMode = arg1
	local function __FUNC_6704_(arg0)
		Engine.SwitchCampaignMode(arg0.toMode)
		local registerVal2 = {}
		registerVal2.actionId = arg0.actionId
		LobbyVM.ProcessCompleteSuccess(registerVal2)
	end

	registerVal2.startFuncPtr = __FUNC_6704_
	return registerVal2
end

function Lobby.Actions.ForceLobbyUIScreen(arg0, arg1)
	local registerVal2 = {}
	registerVal2.name = "ForceLobbyUIScreen"
	registerVal2.controller = arg0
	registerVal2.screenId = arg1
	local function __FUNC_68A2_(arg0)
		Engine.ForceLobbyUIScreen(arg0.screenId)
		local registerVal2 = {}
		registerVal2.actionId = arg0.actionId
		LobbyVM.ProcessCompleteSuccess(registerVal2)
	end

	registerVal2.startFuncPtr = __FUNC_68A2_
	return registerVal2
end

function Lobby.Actions.LobbyHostStart(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = {}
	local registerVal7 = Engine.GetLobbyTypeName(arg2)
	registerVal5.name = ("LobbyHostStart(" .. registerVal7 .. ")")
	registerVal5.controller = arg0
	registerVal5.mainMode = arg1
	registerVal5.lobbyType = arg2
	registerVal5.lobbyMode = arg3
	registerVal5.maxClients = arg4
	local function __FUNC_6AFC_(arg0)
		Engine.LobbyHostStart(arg0.actionId, arg0.controller, arg0.mainMode, arg0.lobbyType, arg0.lobbyMode, arg0.maxClients)
	end

	registerVal5.startFuncPtr = __FUNC_6AFC_
	local function __FUNC_6C1E_(arg0)
		return "Failed to host a lobby"
	end

	registerVal5.errorFuncPtr = __FUNC_6C1E_
	return registerVal5
end

function Lobby.Actions.LobbyHostStartMigratedInfo(arg0, arg1, arg2, arg3, arg4, arg5)
	local registerVal6 = {}
	local registerVal8 = Engine.GetLobbyTypeName(arg2)
	registerVal6.name = ("LobbyHostStartMigrate(" .. registerVal8 .. ")")
	registerVal6.controller = arg0
	registerVal6.mainMode = arg1
	registerVal6.lobbyType = arg2
	registerVal6.lobbyMode = arg3
	registerVal6.maxClients = arg4
	registerVal6.hostInfo = arg5
	local function __FUNC_6DD7_(arg0)
		Engine.LobbyHostStart(arg0.actionId, arg0.controller, arg0.mainMode, arg0.lobbyType, arg0.lobbyMode, arg0.maxClients, arg0.hostInfo)
	end

	registerVal6.startFuncPtr = __FUNC_6DD7_
	return registerVal6
end

function Lobby.Actions.LobbyHostEnd(arg0)
	local registerVal1 = {}
	local registerVal3 = Engine.GetLobbyTypeName(arg0)
	registerVal1.name = ("LobbyHostEnd(" .. registerVal3 .. ")")
	registerVal1.lobbyType = arg0
	local function __FUNC_701D_(arg0)
		Engine.LobbyHostEnd(arg0.actionId, arg0.lobbyType)
	end

	registerVal1.startFuncPtr = __FUNC_701D_
	local function __FUNC_70BF_(arg0)
		return "Failed to end lobby"
	end

	registerVal1.errorFuncPtr = __FUNC_70BF_
	return registerVal1
end

function Lobby.Actions.LobbyHostAddPrimary(arg0)
	local registerVal1 = {}
	local registerVal3 = Engine.GetLobbyTypeName(arg0)
	registerVal1.name = ("LobbyHostAddPrimary(" .. registerVal3 .. ")")
	registerVal1.lobbyType = arg0
	local function __FUNC_71FE_(arg0)
		Engine.LobbyHostAddPrimary(arg0.actionId, arg0.lobbyType)
	end

	registerVal1.startFuncPtr = __FUNC_71FE_
	return registerVal1
end

function Lobby.Actions.LobbyHostAddLocal(arg0, arg1)
	local registerVal2 = {}
	local registerVal4 = Engine.GetLobbyTypeName(arg1)
	registerVal2.name = ("LobbyHostAddLocal(" .. registerVal4 .. ")")
	registerVal2.controller = arg0
	registerVal2.lobbyType = arg1
	local function __FUNC_73AC_(arg0)
		Engine.LobbyHostAddLocal(arg0.actionId, arg0.controller, arg0.lobbyType)
	end

	registerVal2.startFuncPtr = __FUNC_73AC_
	return registerVal2
end

function Lobby.Actions.LobbyClientStart(arg0)
	local registerVal1 = {}
	local registerVal3 = Engine.GetLobbyTypeName(arg0)
	registerVal1.name = ("LobbyClientStart(" .. registerVal3 .. ")")
	registerVal1.lobbyType = arg0
	local function __FUNC_7563_(arg0)
		Engine.LobbyClientStart(arg0.actionId, arg0.lobbyType)
	end

	registerVal1.startFuncPtr = __FUNC_7563_
	return registerVal1
end

function Lobby.Actions.LobbyClientEnd(arg0)
	local registerVal1 = {}
	local registerVal3 = Engine.GetLobbyTypeName(arg0)
	registerVal1.name = ("LobbyClientEnd(" .. registerVal3 .. ")")
	registerVal1.lobbyType = arg0
	local function __FUNC_76F1_(arg0)
		Engine.LobbyClientEnd(arg0.actionId, arg0.lobbyType)
	end

	registerVal1.startFuncPtr = __FUNC_76F1_
	return registerVal1
end

function Lobby.Actions.LobbyLocalClientLeave(arg0, arg1, arg2)
	local registerVal3 = {}
	local registerVal5 = Engine.GetLobbyTypeName(arg0)
	registerVal3.name = ("LobbyLocalClientLeave(" .. registerVal5 .. ")")
	registerVal3.lobbyType = arg0
	registerVal3.controller = arg1
	registerVal3.xuid = arg2
	local function __FUNC_78B2_(arg0)
		Engine.LobbyLocalClientLeave(arg0.actionId, arg0.lobbyType, arg0.controller, arg0.xuid)
	end

	registerVal3.startFuncPtr = __FUNC_78B2_
	return registerVal3
end

function Lobby.Actions.LeaveWithParty(arg0)
	local registerVal1 = {}
	registerVal1.name = ("LeaveWithParty(wait for " .. arg0 .. "ms)")
	registerVal1.waitMilliseconds = arg0
	registerVal1.endTime = nil
	registerVal1.checkInterval = 50.000000
	registerVal1.checkTime = nil
	local function __FUNC_7ADE_(arg0)
		local registerVal1 = Engine.InLobbyParty(Enum.LobbyType.LOBBY_TYPE_GAME)
		if registerVal1 == false then
			Engine.PrintError(Enum.consoleLabel.LABEL_LOBBYHOST, ("LobbyAction: " .. arg0.name .. ", we a loner in a private party, time to split, sweet!
"))
			local registerVal2 = {}
			registerVal2.actionId = arg0.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal2)
			return 
		end
		registerVal1 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
		if registerVal1 == false then
			Engine.PrintError(Enum.consoleLabel.LABEL_LOBBYHOST, ("LobbyAction: " .. arg0.name .. ", we are not the host of our private party.
"))
			registerVal2 = {}
			registerVal2.actionId = arg0.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal2)
			return 
		end
		registerVal1 = Engine.GetLobbyClientCount(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
		registerVal2 = Engine.GetLobbyLocalClientCount(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
		if registerVal1 == 1.000000 or registerVal1 == registerVal2 then
			local registerVal4 = {}
			registerVal4.actionId = arg0.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal4)
			return 
		end
		local registerVal3 = Engine.LeaveWithParty()
		if registerVal3 == false then
			Engine.PrintError(Enum.consoleLabel.LABEL_LOBBYHOST, ("LobbyAction: " .. arg0.name .. ", failed to tell party members to leave, we failed but we should leave anyway.
"))
			registerVal4 = {}
			registerVal4.actionId = arg0.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal4)
			return 
		end
		registerVal3 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
		if registerVal3 == false then
			Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("LobbyAction: " .. arg0.name .. ", we are not the host of the game lobby, it is safe to leave now.
"))
			registerVal4 = {}
			registerVal4.actionId = arg0.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal4)
		end
		registerVal4 = Engine.milliseconds()
		arg0.endTime = (arg0.waitMilliseconds + registerVal4)
		registerVal4 = Engine.milliseconds()
		arg0.checkTime = (arg0.checkInterval + registerVal4)
	end

	registerVal1.startFuncPtr = __FUNC_7ADE_
	local function __FUNC_81B8_(arg0, arg1)
		local registerVal3 = Engine.milliseconds()
		if registerVal3 < arg0.checkTime then
			return 
		end
		registerVal3 = Engine.milliseconds()
		arg0.checkTime = (arg0.checkInterval + registerVal3)
		local registerVal2 = Engine.LobbyGetSessionClients(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_PRIVATE)
		registerVal3 = Engine.LobbyGetSessionClients(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_GAME)
		local registerVal5, registerVal6, registerVal7 = ipairs(registerVal2.sessionClients)
		for index8,value9 in registerVal5, registerVal6, registerVal7 do
			local registerVal10, registerVal11, registerVal12 = ipairs(registerVal3.sessionClients)
			for index13,value14 in registerVal10, registerVal11, registerVal12 do
				if value9.isHost == false and value9.xuid == value14.xuid then
				end
			end
		end
		if true == false then
			Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("LobbyAction: " .. arg0.name .. ", all clients have left the game lobby, we can now leave.
"))
			registerVal6 = {}
			registerVal6.actionId = arg0.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal6)
			return 
		end
		registerVal6 = Engine.milliseconds()
		if arg0.endTime < registerVal6 then
			Engine.PrintWarning(Enum.consoleLabel.LABEL_LOBBYHOST, ("LobbyAction: " .. arg0.name .. ", not all clients have left the game lobby, time to move on.
"))
			registerVal6 = {}
			registerVal6.actionId = arg0.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal6)
			return 
		end
	end

	registerVal1.pumpFuncPtr = __FUNC_81B8_
	local function __FUNC_86FE_(arg0)
		local registerVal2 = {}
		registerVal2.actionId = arg0.actionId
		LobbyVM.ProcessCompleteSuccess(registerVal2)
	end

	registerVal1.cancelFuncPtr = __FUNC_86FE_
	return registerVal1
end

function Lobby.Actions.LobbyInRecovery()
	local registerVal0 = {}
	registerVal0.name = "LobbyInRecovery"
	local function __FUNC_880D_(arg0)
		if Engine.LobbyInRecovery then
			Engine.LobbyInRecovery()
		end
		local registerVal2 = {}
		registerVal2.actionId = arg0.actionId
		LobbyVM.ProcessCompleteSuccess(registerVal2)
	end

	registerVal0.startFuncPtr = __FUNC_880D_
	return registerVal0
end

function Lobby.Actions.CanHostServer(arg0, arg1)
	local registerVal2 = {}
	registerVal2.name = "CanHostServer"
	registerVal2.controller = arg0
	registerVal2.toTarget = arg1
	registerVal2.failureReason = nil
	local function __FUNC_89BD_(arg0)
		local registerVal1 = Engine.GetLobbyMaxClients(Enum.LobbyType.LOBBY_TYPE_GAME)
		if arg0.toTarget.mainMode == Enum.LobbyMainMode.LOBBY_MAINMODE_MP then
			local registerVal2 = Engine.IsFeatureBanned(arg0.controller, LuaEnums.FEATURE_BAN.MP_HOSTING)
			if Engine.IsFeatureBanned and registerVal2 == true then
				Engine.PrintError(Enum.consoleLabel.LABEL_LOBBYHOST, "CANNOT HOST A SERVER: HOST_SERVER_BANNED_FROM_HOSTING.
")
				local registerVal3 = {}
				registerVal3.actionId = arg0.actionId
				LobbyVM.ProcessCompleteFailure(registerVal3)
				return 
			end
			registerVal2 = Engine.GetLobbyClientCount(Enum.LobbyType.LOBBY_TYPE_GAME)
			registerVal3 = Lobby.MatchmakingMP.AllowListenSearch(registerVal2)
			if not registerVal3 then
				Engine.PrintError(Enum.consoleLabel.LABEL_LOBBYHOST, "CANNOT HOST A SERVER: MATCHMAKING_ALLOW_LISTEN_SERVER_FAIL.
")
				local registerVal4 = {}
				registerVal4.actionId = arg0.actionId
				LobbyVM.ProcessCompleteFailure(registerVal4)
				return 
			end
		end
		registerVal2, registerVal3 = Engine.CanHostServer(arg0.controller, registerVal1)
		registerVal4 = LuaUtils.IsArenaMode()
		registerVal4 = Lobby.MatchmakingArena.CanHostAnyLobby()
		if registerVal4 and registerVal4 == false then
			Engine.PrintError(Enum.consoleLabel.LABEL_LOBBYHOST, "CANNOT HOST A SERVER: ARENA MATCHMAKING DENIED HOST REQUEST
")
			local registerVal5 = {}
			registerVal5.actionId = arg0.actionId
			LobbyVM.ProcessCompleteFailure(registerVal5)
			return 
		end
		if registerVal2 == true then
			Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "Can host server.
")
			registerVal5 = {}
			registerVal5.actionId = arg0.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal5)
			return 
		else
			arg0.failureReason = registerVal3
			if registerVal3 == Enum.HostServer.HOST_SERVER_BANDWIDTH_TEST_IN_PROGRESS then
			else
				if registerVal3 == Enum.HostServer.HOST_SERVER_NOT_HOST_OF_PARTY then
				else
					if registerVal3 == Enum.HostServer.HOST_SERVER_DEDICATED_ONLY then
					else
						if registerVal3 == Enum.HostServer.HOST_SERVER_NAT_TYPE_NOT_ALLOWED then
						else
							if registerVal3 == Enum.HostServer.HOST_SERVER_WE_SHOULD_NOT_HOST then
							else
								if registerVal3 == Enum.HostServer.HOST_SERVER_IS_NOT_GOOD_CITIZEN then
								else
									if registerVal3 == Enum.HostServer.HOST_SERVER_HAS_NOT_NECESSARY_BANDWIDTH then
									else
										if registerVal3 == Enum.HostServer.HOST_SERVER_NET_ENGINE_NOT_STARTED then
										else
											if registerVal3 == Enum.HostServer.HOST_SERVER_LIVE_STREAMING then
											else
												if registerVal3 == Enum.HostServer.HOST_SERVER_BANNED_FROM_HOSTING then
												else
													if registerVal3 == Enum.HostServer.HOST_SERVER_IS_IN_SHARE_PLAY then
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
			Engine.PrintError(Enum.consoleLabel.LABEL_LOBBYHOST, ("CANNOT HOST A SERVER: " .. "HOST_SERVER_IS_IN_SHARE_PLAY" .. ".
"))
			local registerVal6 = {}
			registerVal6.actionId = arg0.actionId
			LobbyVM.ProcessCompleteFailure(registerVal6)
			return 
		end
	end

	registerVal2.startFuncPtr = __FUNC_89BD_
	return registerVal2
end

function Lobby.Actions.GeoMinCheck(arg0, arg1)
	local registerVal2 = Dvar.lobbySearchGeoMin:get()
	if registerVal2 == 0.000000 then
		return true
	end
	if arg0.geo_1 == arg1.geo_1 and arg0.geo_2 == arg1.geo_2 and arg0.geo_3 == arg1.geo_3 and arg0.geo_4 == arg1.geo_4 then
	end
	if registerVal2 > ((((0.000000 + 1.000000) + 1.000000) + 1.000000) + 1.000000) then
	end
	return true
end

function Lobby.Actions.ShouldGateBySkill(arg0, arg1)
	local registerVal2 = Engine.DvarBool(nil, "lobbySearchSkillGateEnabled")
	registerVal2 = Engine.ExperimentsGetVariant(arg0, "skillgate_exp")
	registerVal2 = Engine.DvarFloat("lobbySearchSkillGateProbability")
	local registerVal3 = math.random()
	if registerVal2 and registerVal2 and registerVal3 <= registerVal2 then
		local registerVal4 = Engine.DvarFloat("lobbySearchMaxGateSkill")
		if arg1 >= registerVal4 then
		end
		return true
	end
	return false
end

function Lobby.Actions.SkillCheck(arg0, arg1, arg2)
	local registerVal3 = LuaUtils.IsArenaMode()
	if registerVal3 then
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "Skillcheck: Pass, arena match
")
		return true
	end
	if arg2.isEmpty ~= 0.000000 then
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "Skillcheck: Pass, host is empty
")
		return true
	end
	if arg2.serverType ~= Lobby.Matchmaking.ServerType.DEDICATED_SERVER then
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "Skillcheck: Pass, not a dedicated host
")
		return true
	end
	registerVal3 = Lobby.Matchmaking.GetNumSlotsNeededOnTeam(Lobby.Matchmaking.SearchParams.stage)
	numSlots = registerVal3
	if 1.000000 < numSlots then
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "Skillcheck: Pass, we're in a party
")
		return true
	end
	registerVal3 = Lobby.Actions.ShouldGateBySkill(arg0, arg1)
	if registerVal3 then
		registerVal3 = math.abs((arg1 - arg2.skill))
		local registerVal4 = Engine.DvarFloat("lobbySearchBaseSkillRange")
		local registerVal5 = Engine.DvarFloat("lobbySearchSkillRangeMultiplier")
		if (registerVal4 + (Lobby.Matchmaking.SearchParams.retry * registerVal5)) <= 0.000000 then
			Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "Skillcheck: pass, skillrange < 0
")
			return true
		end
		if registerVal3 < (registerVal4 + (Lobby.Matchmaking.SearchParams.retry * registerVal5)) then
			Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("Skillcheck: Pass, skilldelta " .. registerVal3 .. " is < skillrange " .. (registerVal4 + (Lobby.Matchmaking.SearchParams.retry * registerVal5)) .. "
"))
			Lobby.Matchmaking.EnableExperiment(arg0)
			return true
		else
			Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("Skillcheck: Fail, skilldelta " .. registerVal3 .. " is  >= than skillrange " .. (registerVal4 + (Lobby.Matchmaking.SearchParams.retry * registerVal5)) .. "
"))
			return false
		else
			Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "Skillcheck: pass, not in treatment group
")
			return true
		end
	end
end

function Lobby.Actions.SearchForLobby(arg0)
	local registerVal1 = {}
	registerVal1.name = "LobbySearch"
	registerVal1.controller = arg0
	registerVal1.lobbyType = Enum.LobbyType.LOBBY_TYPE_GAME
	registerVal1.filteredResult = {}
	local function __FUNC_A1B3_(arg0)
		Lobby.Matchmaking.SetupMatchmakingStage(arg0.controller)
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "SearchForLobby, begin search.
")
		local registerVal2 = {}
		registerVal2.searchStage = 1.000000
		registerVal2.numResults = 50.000000
		LobbyVM.LobbyStatusUpdate(registerVal2)
		Engine.SearchForLobby(arg0.actionId, arg0.lobbyType)
	end

	registerVal1.startFuncPtr = __FUNC_A1B3_
	local function __FUNC_A403_(arg1)
		local registerVal1 = Engine.GetSearchQuery()
		LuaUtils.LogQoS("search_query", registerVal1)
		local registerVal2 = Engine.GetSearchResults(arg1.lobbyType)
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("SearchForLobby, number of results found " .. registerVal2.numResults .. ".
"))
		Lobby.Debug.SessionSQJSearchResults(registerVal2)
		if registerVal2.numResults == 0.000000 then
			local registerVal6 = {}
			registerVal6.searchStage = 1.000000
			registerVal6.numResults = 0.000000
			LobbyVM.LobbyStatusUpdate(registerVal6)
			return 
		end
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "-----------------------------SEARCH RESULTS----------------------------
")
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "xuid, gameSecurityId, gameType, maxPlayers, numPlayers, serverType, showInMatchmaking, netcodeVersion, mapPacks, playlistVersion, playlistNumber, isEmpty, teamSizeMax, skill, serverLocation, latencyBand, geo_1, geo_2, geo_3, geo_4
")
		local registerVal5, registerVal6, registerVal7 = ipairs(registerVal2.remoteHosts)
		for index8,value9 in registerVal5, registerVal6, registerVal7 do
			local registerVal12 = tostring(value9.xuid)
			local registerVal14 = Engine.UInt64ToString(value9.gameSecurityId)
			local registerVal44 = Engine.UInt64ToString(value9.geo_1)
			local registerVal46 = Engine.UInt64ToString(value9.geo_2)
			local registerVal48 = Engine.UInt64ToString(value9.geo_3)
			local registerVal50 = Engine.UInt64ToString(value9.geo_4)
			Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, (registerVal12 .. ", " .. registerVal14 .. ", " .. value9.gameType .. ", " .. value9.maxPlayers .. ", " .. value9.numPlayers .. ", " .. value9.serverType .. ", " .. value9.showInMatchmaking .. ", " .. value9.netcodeVersion .. ", " .. value9.mapPacks .. ", " .. value9.playlistVersion .. ", " .. value9.playlistNumber .. ", " .. value9.isEmpty .. ", " .. value9.teamSizeMax .. ", " .. value9.skill .. ", " .. value9.serverLocation .. ", " .. value9.latencyBand .. ", " .. registerVal44 .. ", " .. registerVal46 .. ", " .. registerVal48 .. ", " .. registerVal50 .. ".
"))
		end
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "-----------------------------------------------------------------------
")
		arg1.filteredResult = {}
		registerVal5 = Engine.GetGeoLocation()
		registerVal6 = Engine.GetLobbyHostXuid(arg1.lobbyType)
		local registerVal8, registerVal9, registerVal10 = ipairs(registerVal2.remoteHosts)
		for index11,value12 in registerVal8, registerVal9, registerVal10 do
			if registerVal6 == value12.xuid then
			else
				hostOK = false
				if value12.serverType == Lobby.Matchmaking.ServerType.DEDICATED_SERVER then
					local registerVal13 = Engine.IsDedicatedServer()
					if registerVal13 == true then
						hostOK = true
					else
						registerVal13 = Engine.GetPingForServerLocation(value12.serverLocation)
						latencytoserverlocation = registerVal13
						if value12.latencyBand == 0.000000 then
							hostOK = true
						else
							registerVal13 = math.abs((value12.latencyBand - latencytoserverlocation))
							registerVal14 = Dvar.lobbySearchMaxLatencyBandDiff:get()
							if registerVal14 < registerVal13 then
								Engine.PrintWarning(Enum.consoleLabel.LABEL_LOBBYHOST, ("Rejecting result from serverlocation " .. value12.serverLocation .. ", the latencyband is " .. value12.latencyBand .. "ms and our latency is " .. latencytoserverlocation .. "
"))
							else
								hostOK = true
							else
								registerVal13 = Lobby.Actions.GeoMinCheck(registerVal5, value12)
								if registerVal13 then
									hostOK = true
								end
							end
						end
					end
				end
				if hostOK then
					local registerVal15 = Dvar.lobbySearchSkill:get()
					registerVal13 = Lobby.Actions.SkillCheck(arg0, registerVal15, value12)
					hostOK = registerVal13
				end
				registerVal13 = Dvar.lobbySearchForceXuid:get()
				registerVal14 = Engine.DefaultID64Value()
				if hostOK and registerVal13 ~= nil and registerVal13 ~= registerVal14 then
					if hostOK then
						if registerVal13 ~= value12.xuid then
						end
					end
					hostOK = true
				end
				registerVal13 = Lobby.MatchmakingPriority.IgnoreSearchResult(value12.gameSecurityId)
				hostOK = (not registerVal13)
				if hostOK and hostOK == false then
					Engine.PrintWarning(Enum.consoleLabel.LABEL_LOBBYHOST, "Matchmaking priority, ignoring host...
")
					registerVal15 = tostring(value12.xuid)
					local registerVal17 = Engine.UInt64ToString(value12.gameSecurityId)
					local registerVal47 = Engine.UInt64ToString(value12.geo_1)
					local registerVal49 = Engine.UInt64ToString(value12.geo_2)
					local registerVal51 = Engine.UInt64ToString(value12.geo_3)
					local registerVal53 = Engine.UInt64ToString(value12.geo_4)
					Engine.PrintWarning(Enum.consoleLabel.LABEL_LOBBYHOST, (registerVal15 .. ", " .. registerVal17 .. ", " .. value12.gameType .. ", " .. value12.maxPlayers .. ", " .. value12.numPlayers .. ", " .. value12.serverType .. ", " .. value12.showInMatchmaking .. ", " .. value12.netcodeVersion .. ", " .. value12.mapPacks .. ", " .. value12.playlistVersion .. ", " .. value12.playlistNumber .. ", " .. value12.isEmpty .. ", " .. value12.teamSizeMax .. ", " .. value12.skill .. ", " .. value12.serverLocation .. ", " .. value12.latencyBand .. ", " .. registerVal47 .. ", " .. registerVal49 .. ", " .. registerVal51 .. ", " .. registerVal53 .. ".
"))
				end
				if hostOK then
					registerVal14 = {}
					registerVal14.xuid = value12.xuid
					registerVal14.gameSecurityId = value12.gameSecurityId
					registerVal14.gameSecurityKey = value12.gameSecurityKey
					registerVal14.hostAddress = value12.hostAddress
					arg1.filteredResult[1.000000] = registerVal14
				end
			end
		end
		registerVal9 = {}
		registerVal9.searchStage = 1.000000
		registerVal9.numResults = #arg1.filteredResult
		LobbyVM.LobbyStatusUpdate(registerVal9)
		LuaUtils.LogQoS("search_results", arg1.filteredResult)
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("SearchForLobby, number of filtered results " .. #arg1.filteredResult .. ".
"))
	end

	registerVal1.endFuncPtr = __FUNC_A403_
	local function __FUNC_B6A9_()
		return Engine.Localize("MENU_NO_SESSIONS")
	end

	registerVal1.errorFuncPtr = __FUNC_B6A9_
	local function __FUNC_B72C_(arg0)
		Engine.LobbySearchErrorShutdown()
		local registerVal2 = {}
		registerVal2.actionId = arg0.actionId
		LobbyVM.ProcessCompleteSuccess(registerVal2)
	end

	registerVal1.cancelFuncPtr = __FUNC_B72C_
	return registerVal1
end

registerVal1 = {}
registerVal1.BEGIN = 1.000000
registerVal1.ADD = 2.000000
registerVal1.FINALIZE = 3.000000
Lobby.Actions.JOIN_STATUS = registerVal1
function Lobby.Actions.QoSJoinSearchResults(arg0, arg1)
	local registerVal2 = {}
	registerVal2.name = "QoSJoinSearchResults"
	registerVal2.controller = arg0
	registerVal2.searchAction = arg1
	registerVal2.sourceLobbyType = Enum.LobbyType.LOBBY_TYPE_GAME
	registerVal2.targetLobbyType = Enum.LobbyType.LOBBY_TYPE_GAME
	registerVal2.joinStatusCur = Lobby.Actions.JOIN_STATUS.BEGIN
	registerVal2.minInitialCount = 0.000000
	registerVal2.updateTime = nil
	registerVal2.firstResultTime = nil
	registerVal2.searchTime = nil
	registerVal2.qosResultsValid = {}
	registerVal2.qosResultsInvalid = {}
	registerVal2.joiningNumHosts = 0.000000
	registerVal2.joiningCurHost = 1.000000
	local function __FUNC_BB5C_(arg0)
		arg0.sourceLobbyType = Enum.LobbyType.LOBBY_TYPE_GAME
		arg0.targetLobbyType = Enum.LobbyType.LOBBY_TYPE_GAME
		arg0.joinStatusCur = Lobby.Actions.JOIN_STATUS.BEGIN
		arg0.minInitialCount = 0.000000
		arg0.updateTime = nil
		arg0.firstResultTime = nil
		arg0.searchTime = nil
		arg0.qosResultsValid = {}
		arg0.qosResultsInvalid = {}
		arg0.joiningNumHosts = 0.000000
		arg0.joiningCurHost = 1.000000
		if arg0.searchAction.filteredResult == nil then
			error("QoSJoinSearchResults: self.searchAction.filteredResult should not be nil")
		end
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("QoSJoinSearchResults, num of search results passed " .. # .. " for QoS.
"))
		if #Engine.PrintInfo == 0.000000 then
			local registerVal3 = {}
			registerVal3.actionId = arg0.actionId
			LobbyVM.ProcessCompleteFailure(registerVal3)
			return 
		end
		registerVal3 = {}
		registerVal3.searchStage = 2.000000
		registerVal3.numResults = #arg0.actionId
		registerVal3.contactedResults = 0.000000
		LobbyVM.LobbyStatusUpdate(registerVal3)
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "QoSJoinSearchResults, starting probes.
")
		local registerVal2 = Engine.QoSProbeInitiate(arg0.actionId, arg0.sourceLobbyType, {})
		if registerVal2 == false then
			Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "QoSJoinSearchResults, QoSProbeInitiate failed.
")
			local registerVal4 = {}
			registerVal4.actionId = arg0.actionId
			LobbyVM.ProcessCompleteFailure(registerVal4)
		end
		registerVal4 = Dvar.qos_minPercent:get()
		arg0.minInitialCount = (#LobbyVM.ProcessCompleteFailure * (registerVal4 / 100.000000))
		registerVal3 = math.max(arg0.minInitialCount, Dvar.qos_minProbes:get())
		arg0.minInitialCount = registerVal3
		arg0.joinStatusCur = Lobby.Actions.JOIN_STATUS.BEGIN
		registerVal3 = Engine.milliseconds()
		arg0.firstResultTime = registerVal3
		registerVal3 = Engine.milliseconds()
		arg0.updateTime = registerVal3
		registerVal3 = Engine.milliseconds()
		arg0.searchTime = registerVal3
	end

	registerVal2.startFuncPtr = __FUNC_BB5C_
	local function __FUNC_C2FF_(arg0)
		if arg0.joinStatusCur == Lobby.Actions.JOIN_STATUS.BEGIN then
			local registerVal1 = Engine.milliseconds()
			if registerVal1 < arg0.searchTime then
				return 
			end
			if #arg0.qosResultsValid == 0.000000 and #arg0.searchAction.filteredResult <= #arg0.qosResultsInvalid then
				Engine.PrintError(Enum.consoleLabel.LABEL_LOBBYHOST, "QoSJoinSearchResults::pumpFuncPtr, Not expecting any results to join, QoSJoinSearchResults failed.
")
				local registerVal3 = {}
				registerVal3.actionId = arg0.actionId
				LobbyVM.ProcessCompleteFailure(registerVal3)
				return 
			end
			if arg0.minInitialCount <= #arg0.qosResultsValid then
				local registerVal4 = Dvar.qos_firstUpdateMS:get()
				if registerVal4 < (registerVal1 - arg0.firstResultTime) then
					registerVal4 = Dvar.qos_lastUpdateMS:get()
					if registerVal4 < (registerVal1 - arg0.updateTime) then
					else
						Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "QoSJoinSearchResults, waiting for last update to settle.
")
					else
						Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "QoSJoinSearchResults, waiting for first update to settle.
")
					else
						Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("QoSJoinSearchResults, waiting for " .. arg0.minInitialCount .. " initial results. Current: " .. #arg0.qosResultsValid .. ".
"))
					end
				end
			end
			if #arg0.searchAction.filteredResult <= (#arg0.qosResultsInvalid + #arg0.qosResultsValid) then
			end
			local function __FUNC_CF98_(arg0, arg1)
				if arg0.priorityLow ~= arg1.priorityLow then
					return (not arg0.priorityLow)
				end
				local registerVal2 = math.floor((arg0.latency / 25.000000))
				local registerVal3 = math.floor((arg1.latency / 25.000000))
				if registerVal2 == registerVal3 then
					if arg0.isMatchEndingSoon == arg1.isMatchEndingSoon then
						if arg0.numAvailableSlots >= arg1.numAvailableSlots then
						end
						return true
					else
						return arg1.isMatchEndingSoon
					else
						if registerVal2 >= registerVal3 then
						end
						return true
					end
				end
			end

			Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("QoSJoinSearchResults, num of initial results returned " .. #arg0.qosResultsValid .. ".
"))
			Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "QoSJoinSearchResults, begin join.
")
			Engine.LobbyJoinBegin(arg0.actionId, arg0.controller, arg0.sourceLobbyType, arg0.targetLobbyType)
			table.sort(arg0.qosResultsValid, __FUNC_CF98_)
			registerVal4, registerVal5, registerVal6 = ipairs(arg0.qosResultsValid)
			Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("Attempting to join xuid: " .. arg0.targetLobbyType.xuidstr .. ".
"))
			arg0.joiningNumHosts = (arg0.joiningNumHosts + 1.000000)
			local registerVal10 = {}
			registerVal10.searchStage = 3.000000
			registerVal10.joiningCurHost = arg0.joiningCurHost
			registerVal10.joiningNumHosts = arg0.joiningNumHosts
			LobbyVM.LobbyStatusUpdate(registerVal10)
			Engine.LobbyJoinAdd(arg0.targetLobbyType.xuid, arg0.targetLobbyType.gameSecurityId, arg0.targetLobbyType.gameSecurityKey, arg0.targetLobbyType.hostAddress)
			Lobby.Debug.SessionSQJJoinInitiate(arg0.targetLobbyType.xuid)
			arg0.joinStatusCur = Lobby.Actions.JOIN_STATUS.ADD
			if true and arg0.joinStatusCur == Lobby.Actions.JOIN_STATUS.ADD then
				local registerVal2 = Engine.milliseconds()
				registerVal3 = Dvar.qos_maxProbeWait:get()
				if #arg0.qosResultsValid < #Lobby.Actions.JOIN_STATUS.ADD and (registerVal2 - arg0.firstResultTime) < registerVal3 then
					return 
				end
				Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "QoSJoinSearchResults, finalize join.
")
				arg0.joinStatusCur = Lobby.Actions.JOIN_STATUS.FINALIZE
				Engine.LobbyJoinFinalize()
			end
		end
	end

	registerVal2.pumpFuncPtr = __FUNC_C2FF_
	local function __FUNC_D13E_(arg1, arg2)
		if arg2.joinResult then
			Lobby.Debug.SessionSQJJoinResult(arg2)
			local registerVal2 = math.min((arg1.joiningCurHost + 1.000000), arg1.joiningNumHosts)
			arg1.joiningCurHost = registerVal2
			local registerVal3 = {}
			registerVal3.searchStage = 3.000000
			registerVal3.joiningCurHost = arg1.joiningCurHost
			registerVal3.joiningNumHosts = arg1.joiningNumHosts
			LobbyVM.LobbyStatusUpdate(registerVal3)
			return 
		else
			Lobby.Debug.SessionSQJQoSResult(arg2)
		end
		if arg2.validResult == false then
			registerVal3 = {}
			registerVal3.validResult = arg2.validResult
			registerVal3.xuid = arg2.xuid
			registerVal3.xuidstr = arg2.xuidstr
			arg1.qosResultsInvalid[(#arg1.qosResultsInvalid + 1.000000)] = registerVal3
			LuaUtils.LogQoS("invalid_qos", registerVal3)
			return 
		end
		registerVal3 = {}
		registerVal3.validResult = arg2.validResult
		registerVal3.xuid = arg2.xuid
		registerVal3.xuidstr = arg2.xuidstr
		registerVal3.gameSecurityId = arg2.gameSecurityId
		registerVal3.gameSecurityKey = arg2.gameSecurityKey
		registerVal3.hostAddress = arg2.hostAddress
		registerVal3.protocol = arg2.protocol
		registerVal3.isMP = arg2.isMP
		registerVal3.isMigrating = arg2.isMigrating
		registerVal3.numAvailableSlots = arg2.numAvailableSlots
		registerVal3.maxLocalPlayersAllowed = arg2.maxLocalPlayersAllowed
		registerVal3.allowGuests = arg2.allowGuests
		registerVal3.isMatchEndingSoon = arg2.isMatchEndingSoon
		registerVal3.isMatchLoading = arg2.isMatchLoading
		registerVal3.isDedicated = arg2.isDedicated
		registerVal3.hostXuid = arg2.hostXuid
		registerVal3.skill = arg2.skill
		registerVal3.largestParty = arg2.largestParty
		registerVal3.latency = arg2.latency
		registerVal3.minLatency = arg2.minLatency
		registerVal3.realAddr = arg2.realAddr
		if arg2.numAvailableSlots <= 0.000000 then
			table.insert(arg1.qosResultsInvalid, registerVal3)
			LuaUtils.LogQoS("ignore_qos_full", registerVal3)
			return 
		end
		if arg2.isDedicated then
			if arg2.largestParty ~= 0.000000 then
			end
		end
		local registerVal4 = LuaUtils.IsArenaMode()
		registerVal4 = Engine.GetCurrentArenaSlot()
		local registerVal5 = Engine.GetArenaPoints(arg0, registerVal4)
		local registerVal6 = Lobby.MatchmakingArena.GetArenaSkillRange(true)
		local registerVal7 = math.floor(math.abs((registerVal3.skill - registerVal5)))
		if registerVal4 and not true and registerVal6 < registerVal7 then
			table.insert(arg1.qosResultsInvalid, registerVal3)
			LuaUtils.LogQoS("ignore_qos_skill", registerVal3)
			return 
		end
		if registerVal3.isDedicated == true then
			registerVal5 = Dvar.lobbySearchDediUnparkPingLimit:get()
			table.insert(arg1.qosResultsInvalid, registerVal3)
			LuaUtils.LogQoS("ignore_qos_latency", registerVal3)
			return 
			registerVal5 = Dvar.qosMaxAllowedPing:get()
			if registerVal5 < (registerVal3.latency * 1000.000000) and registerVal5 < (registerVal3.latency * 1000.000000) then
				table.insert(arg1.qosResultsInvalid, registerVal3)
				LuaUtils.LogQoS("ignore_qos_latency", registerVal3)
				return 
			end
		end
		LuaUtils.LogQoS("valid_qos", registerVal3)
		registerVal4 = Engine.milliseconds()
		arg1.updateTime = registerVal4
		if #arg1.qosResultsValid == 0.000000 then
			arg1.firstResultTime = arg1.updateTime
		end
		registerVal4 = Lobby.MatchmakingPriority.IsPriorityLow(registerVal3.gameSecurityId)
		registerVal3.priorityLow = registerVal4
		arg1.qosResultsValid[(#arg1.qosResultsValid + 1.000000)] = registerVal3
		registerVal5 = {}
		registerVal5.searchStage = 2.000000
		registerVal5.numResults = #arg1.searchAction.filteredResult
		registerVal5.contactedResults = #arg1.qosResultsValid
		LobbyVM.LobbyStatusUpdate(registerVal5)
		if arg1.joinStatusCur == Lobby.Actions.JOIN_STATUS.START then
		else
			if arg1.joinStatusCur == Lobby.Actions.JOIN_STATUS.ADD then
				Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("Attempting to join xuid: " .. registerVal3.xuidstr .. ".
"))
				arg1.joiningNumHosts = (arg1.joiningNumHosts + 1.000000)
				registerVal5 = {}
				registerVal5.searchStage = 3.000000
				registerVal5.joiningCurHost = arg1.joiningCurHost
				registerVal5.joiningNumHosts = arg1.joiningNumHosts
				LobbyVM.LobbyStatusUpdate(registerVal5)
				Engine.LobbyJoinAdd(registerVal3.xuid, registerVal3.gameSecurityId, registerVal3.gameSecurityKey, registerVal3.hostAddress)
			else
				if arg1.joinStatusCur == Lobby.Actions.JOIN_STATUS.FINALIZE then
				end

	registerVal2.updateFuncPtr = __FUNC_D13E_
	local function __FUNC_DFEE_(arg0)
		Engine.QoSCancelProbes()
		Engine.LobbyJoinErrorShutdown()
	end

	registerVal2.endFuncPtr = __FUNC_DFEE_
	local function __FUNC_E089_(arg0)
		Engine.QoSCancelProbes()
		Engine.LobbyJoinErrorShutdown()
		local registerVal2 = {}
		registerVal2.actionId = arg0.actionId
		LobbyVM.ProcessCompleteSuccess(registerVal2)
	end

	registerVal2.cancelFuncPtr = __FUNC_E089_
	return registerVal2
end

function Lobby.Actions.JoinSearchResults(arg0, arg1)
	local registerVal2 = {}
	registerVal2.name = "JoinSearchResults"
	registerVal2.controller = arg0
	registerVal2.searchAction = arg1
	registerVal2.sourceLobbyType = Enum.LobbyType.LOBBY_TYPE_GAME
	registerVal2.targetLobbyType = Enum.LobbyType.LOBBY_TYPE_GAME
	local function __FUNC_E2ED_(arg0)
		if arg0.searchAction.filteredResult == nil then
			error("JoinSearchResults: self.searchAction.filteredResult should not be nil")
		end
		if #{} == 0.000000 then
			local registerVal3 = {}
			registerVal3.actionId = arg0.actionId
			LobbyVM.ProcessCompleteFailure(registerVal3)
			return 
		end
		Engine.LobbyJoinBegin(arg0.actionId, arg0.controller, arg0.sourceLobbyType, arg0.targetLobbyType)
		local registerVal2, registerVal3, registerVal4 = ipairs({})
		for index5,value6 in registerVal2, registerVal3, registerVal4 do
			Engine.LobbyJoinAdd(value6.xuid, value6.gameSecurityId, value6.gameSecurityKey, value6.hostAddress)
		end
		Engine.LobbyJoinFinalize()
	end

	registerVal2.startFuncPtr = __FUNC_E2ED_
	return registerVal2
end

function Lobby.Actions.AdvertiseLobby(arg0)
	local registerVal1 = {}
	registerVal1.name = "AdvertiseLobby"
	registerVal1.onOff = arg0
	registerVal1.lobbyType = Enum.LobbyType.LOBBY_TYPE_GAME
	local function __FUNC_E72A_(arg0)
		Lobby.Matchmaking.SetupAdvertising()
		Engine.AdvertiseLobby(arg0.actionId, arg0.lobbyType, arg0.onOff)
	end

	registerVal1.startFuncPtr = __FUNC_E72A_
	local function __FUNC_E846_(arg0)
		if arg0.onOff == true then
			local registerVal3 = Engine.Localize("MENU_NO_SESSIONS")
			errorMessage = registerVal3
		else
		end
		registerVal3 = Engine.IsDevelopmentBuild()
		if not registerVal3 then
			return errorMessage
		end
		return (errorMessage .. "

DEBUG INFO: AdvertiseLobby( " .. "Failed to turn off lobby advertising" .. " )
")
	end

	registerVal1.errorFuncPtr = __FUNC_E846_
	return registerVal1
end

function Lobby.Actions.LobbyInfoProbe(arg0, arg1)
	local registerVal2 = {}
	registerVal2.name = "InfoProbe"
	registerVal2.controller = arg0
	registerVal2.info = arg1
	registerVal2.probeResult = nil
	local function __FUNC_EADF_(arg0)
		Engine.LobbyInfoProbe(arg0.actionId, arg0.controller, arg0.info.xuid)
	end

	registerVal2.startFuncPtr = __FUNC_EADF_
	local function __FUNC_EBB6_(arg0)
		arg0.probeResult = arg0.retData
		arg0.probeResult.probedXuid = arg0.info.xuid
	end

	registerVal2.endFuncPtr = __FUNC_EBB6_
	return registerVal2
end

function Lobby.Actions.ShowFirstTimeFlowError(arg0)
	local registerVal1 = {}
	registerVal1.name = "ErrorPopupMsg"
	registerVal1.info = arg0
	local function __FUNC_ECF9_(arg0)
		if arg0.info.mainMode == Enum.LobbyMainMode.LOBBY_MAINMODE_MP then
			local registerVal2 = Engine.Localize("MPUI_MP_INTRO_REQUIRED_DESC")
		else
			if arg0.info.mainMode == Enum.LobbyMainMode.LOBBY_MAINMODE_CP then
				registerVal2 = Engine.Localize("MENU_CP_FIRST_TIME_FLOW_REQUIRED_DESC")
			else
				registerVal2 = Engine.Localize("MENU_JOIN_RESULT_NOT_JOINABLE")
			end
		end
		LuaUtils.UI_ShowErrorMessageDialog(nil, registerVal2)
		local registerVal3 = {}
		registerVal3.actionId = arg0.actionId
		LobbyVM.ProcessCompleteSuccess(registerVal3)
	end

	registerVal1.startFuncPtr = __FUNC_ECF9_
	return registerVal1
end

function Lobby.Actions.CheckFirstTimeFlowRequirements(arg0, arg1)
	local registerVal2 = {}
	registerVal2.name = "CheckfirstTimeFlow"
	registerVal2.controller = arg0
	registerVal2.info = arg1
	registerVal2.mainMode = nil
	local function __FUNC_F095_(arg1)
		local registerVal1 = LuaUtils.Mods_IsUsingMods()
		if registerVal1 then
			local registerVal2 = {}
			registerVal2.actionId = arg1.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal2)
			return 
		end
		if arg1.info and arg1.info.probeResult and arg1.info.probeResult.networkMode ~= Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE then
			registerVal2 = {}
			registerVal2.actionId = arg1.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal2)
			return 
		end
		registerVal1 = Dvar.livestats_skipFirstTime:get()
		if registerVal1 then
			registerVal2 = {}
			registerVal2.actionId = arg1.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal2)
			return 
		end
		arg1.mainMode = arg1.info.probeResult.mainMode
		registerVal1 = LuaUtils.LobbyMainModeToEModes(arg1.info.probeResult.mainMode)
		registerVal2 = LuaUtils.IsStarterPack(arg0)
		if registerVal2 and registerVal1 ~= Enum.eModes.MODE_MULTIPLAYER then
			local registerVal3 = {}
			registerVal3.actionId = arg1.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal3)
			return 
		end
		registerVal2 = Engine.IsCampaignModeZombies()
		registerVal2 = Engine.IsFirstTimeComplete(arg0, registerVal1)
		if registerVal1 ~= nil and registerVal1 ~= Enum.eModes.MODE_ZOMBIES and not registerVal1 or registerVal2 then
			registerVal3 = {}
			registerVal3.actionId = arg1.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal3)
		else
			registerVal3 = {}
			registerVal3.actionId = arg1.actionId
			LobbyVM.ProcessCompleteError(registerVal3)
		end
	end

	registerVal2.startFuncPtr = __FUNC_F095_
	return registerVal2
end

function Lobby.Actions.SubscribeUGC(arg0, arg1)
	local registerVal2 = {}
	registerVal2.name = "SubscribeUGC"
	registerVal2.controller = arg0
	registerVal2.checkMods = arg1
	local function __FUNC_F68C_(arg0)
		local registerVal1 = LuaUtils.Mods_IsUGC(arg0.checkMods.ugcInfo)
		if not registerVal1 then
			local registerVal2 = {}
			registerVal2.actionId = arg0.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal2)
			return 
		end
		registerVal1 = Engine.Mods_IsSubscribedItem(arg0.checkMods.ugcInfo.ugcName)
		if registerVal1 then
			registerVal2 = {}
			registerVal2.actionId = arg0.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal2)
			return 
		end
		registerVal1 = LuaUtils.Mods_Lists_IsInstalled(arg0.checkMods.ugcInfo)
		if not arg0 or arg0.checkMods.ugcInfo.ugcName == LuaEnums.DEFAULT_MOD_NAME then
			registerVal2 = {}
			registerVal2.actionId = arg0.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal2)
			return 
		end
		registerVal1 = Engine.Mods_SubscribeUGC(arg0.checkMods.ugcInfo.ugcName)
		if not registerVal1 then
			arg0.ErrorMsg = "PLATFORM_MODS_INVALID_WORKSHOP_ITEM"
			registerVal2 = {}
			registerVal2.actionId = arg0.actionId
			LobbyVM.ProcessCompleteError(registerVal2)
			return 
		end
		local registerVal3 = {}
		registerVal3.type = "subscribe"
		registerVal3.modName = arg0.checkMods.ugcInfo.ugcName
		registerVal3.immediate = true
		Engine.LuiVM_Event("ugc_activity", registerVal3)
		registerVal1 = Engine.milliseconds()
		arg0.endTime = (5000.000000 + registerVal1)
	end

	registerVal2.startFuncPtr = __FUNC_F68C_
	local function __FUNC_FB27_(arg0)
		local registerVal1 = Engine.Mods_IsSubscribedItem(arg0.checkMods.ugcInfo.ugcName)
		if registerVal1 then
			local registerVal2 = {}
			registerVal2.actionId = arg0.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal2)
			return 
		end
		registerVal2 = Engine.milliseconds()
		if arg0.endTime < registerVal2 then
			arg0.ErrorMsg = "PLATFORM_MODS_SUBSCRIBE_TIMEOUT"
			registerVal2 = {}
			registerVal2.actionId = arg0.actionId
			LobbyVM.ProcessCompleteError(registerVal2)
			return 
		end
	end

	registerVal2.pumpFuncPtr = __FUNC_FB27_
	local function __FUNC_FD3B_(arg0)
		local registerVal2 = Engine.Localize(arg0.ErrorMsg, ("" .. arg0.checkMods.ugcInfo.ugcType .. "/" .. arg0.checkMods.ugcInfo.ugcName))
		return (Lobby.GMLOC_OFF .. registerVal2)
	end

	registerVal2.errorFuncPtr = __FUNC_FD3B_
	return registerVal2
end

function Lobby.Actions.InstalledUGC(arg0, arg1)
	local registerVal2 = {}
	registerVal2.name = "InstalledUGC"
	registerVal2.controller = arg0
	registerVal2.checkMods = arg1
	local function __FUNC_FF84_(arg0)
		local registerVal1 = LuaUtils.Mods_IsUGC(arg0.checkMods.ugcInfo)
		if not registerVal1 then
			local registerVal2 = {}
			registerVal2.actionId = arg0.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal2)
			return 
		end
		registerVal1 = LuaUtils.Mods_Lists_IsInstalled(arg0.checkMods.ugcInfo)
		if not arg0 or arg0.checkMods.ugcInfo.ugcName == LuaEnums.DEFAULT_MOD_NAME then
			registerVal2 = {}
			registerVal2.actionId = arg0.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal2)
			return 
		end
		if arg0.checkMods.ugcInfo.skipLoad == true then
			registerVal2 = {}
			registerVal2.actionId = arg0.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal2)
			return 
		end
		Engine.Mods_Lists_Update()
		registerVal1 = Engine.milliseconds()
		arg0.endTime = (60000.000000 + registerVal1)
		registerVal1 = Engine.milliseconds()
		arg0.pumpTime = registerVal1
		local registerVal3 = {}
		registerVal3.type = "install_started"
		registerVal3.modName = arg0.checkMods.ugcInfo.ugcName
		registerVal3.immediate = true
		Engine.LuiVM_Event("ugc_activity", registerVal3)
	end

	registerVal2.startFuncPtr = __FUNC_FF84_
	local function __FUNC_10375_(arg0)
		local registerVal1 = LuaUtils.Mods_Lists_IsInstalled(arg0.checkMods.ugcInfo)
		if registerVal1 then
			local registerVal2 = {}
			registerVal2.actionId = arg0.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal2)
			local registerVal3 = {}
			registerVal3.type = "install_complete"
			registerVal3.modName = arg0.checkMods.ugcInfo.ugcName
			registerVal3.immediate = true
			Engine.LuiVM_Event("ugc_activity", registerVal3)
			return 
		end
		registerVal2 = Engine.milliseconds()
		if registerVal2 < arg0.pumpTime then
			return 
		end
		registerVal1 = Engine.milliseconds()
		arg0.pumpTime = (registerVal1 + 1000.000000)
		registerVal1 = Engine.Mods_InstallProgressUGC(arg0.checkMods.ugcInfo.ugcName)
		if arg0.installProgress == nil then
			arg0.installProgress = registerVal1
		end
		if arg0.installProgress == 1.000000 or arg0.installProgress < registerVal1 then
			arg0.installProgress = registerVal1
			registerVal2 = Engine.Mods_InstalledUGC(arg0.checkMods.ugcInfo.ugcName)
			if registerVal2 then
				if arg0.checkMods.ugcInfo.ugcType == LuaEnums.MODS_BASE_PATH then
					Engine.Mods_Lists_UpdateMods()
				else
					if arg0.checkMods.ugcInfo.ugcType == LuaEnums.USERMAP_BASE_PATH then
						Engine.Mods_Lists_UpdateUsermaps()
					end
				end
				return 
			else
				registerVal3 = Engine.milliseconds()
				if arg0.endTime < registerVal3 then
					registerVal2 = Engine.milliseconds()
					arg0.endTime = (5000.000000 + registerVal2)
				end
			end
		end
		registerVal3 = Engine.milliseconds()
		if arg0.endTime < registerVal3 then
			arg0.ErrorMsg = "PLATFORM_MODS_INSTALL_TIMEOUT"
			registerVal3 = {}
			registerVal3.actionId = arg0.actionId
			LobbyVM.ProcessCompleteError(registerVal3)
			return 
		end
	end

	registerVal2.pumpFuncPtr = __FUNC_10375_
	local function __FUNC_10958_(arg0)
		local registerVal2 = Engine.Localize(arg0.ErrorMsg, ("" .. arg0.checkMods.ugcInfo.ugcType .. "/" .. arg0.checkMods.ugcInfo.ugcName))
		return (Lobby.GMLOC_OFF .. registerVal2)
	end

	registerVal2.errorFuncPtr = __FUNC_10958_
	return registerVal2
end

function Lobby.Actions.LoadMod(arg0, arg1)
	local registerVal2 = {}
	registerVal2.name = "LoadMod"
	registerVal2.controller = arg0
	registerVal2.checkMods = arg1
	local function __FUNC_10B9F_(arg0)
		if arg0.checkMods.ugcInfo.ugcType ~= LuaEnums.MODS_BASE_PATH or arg0.checkMods.ugcInfo.skipLoad == true then
			local registerVal2 = {}
			registerVal2.actionId = arg0.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal2)
			return 
		end
		local registerVal1 = LuaUtils.Mods_IsModLoaded(arg0.checkMods.ugcInfo)
		if registerVal1 then
			registerVal2 = {}
			registerVal2.actionId = arg0.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal2)
			return 
		end
		registerVal1 = LuaUtils.Mods_IsUGC(arg0.checkMods.ugcInfo)
		if registerVal1 then
			Engine.Mods_Lists_UpdateMods()
			registerVal1 = LuaUtils.Mods_Lists_IsInstalled(arg0.checkMods.ugcInfo)
			if not arg0 or arg0.checkMods.ugcInfo.ugcName == LuaEnums.USERMAP_BASE_PATH then
				local registerVal3 = {}
				registerVal3.type = "load"
				registerVal3.modName = arg0.checkMods.ugcInfo.ugcName
				registerVal3.immediate = true
				Engine.LuiVM_Event("ugc_activity", registerVal3)
				arg0.loadModName = arg0.checkMods.ugcInfo.ugcName
				registerVal1 = Engine.milliseconds()
				arg0.startTime = (1000.000000 + registerVal1)
				registerVal1 = Engine.milliseconds()
				arg0.endTime = (60000.000000 + registerVal1)
				return 
			end
			arg0.ErrorMsg = "PLATFORM_MODS_NOT_INSTALLED"
			registerVal2 = {}
			registerVal2.actionId = arg0.actionId
			LobbyVM.ProcessCompleteError(registerVal2)
			return 
		end
		registerVal1 = LuaUtils.Mods_IsUsingMods()
		if not registerVal1 then
			arg0.ErrorMsg = "PLATFORM_MODS_NOT_LOADED"
			registerVal2 = {}
			registerVal2.actionId = arg0.actionId
			LobbyVM.ProcessCompleteError(registerVal2)
			return 
		end
		registerVal1 = LuaUtils.Mods_UsingModsUgcName()
		arg0.loadedModName = registerVal1
		registerVal3 = {}
		registerVal3.type = "unload"
		registerVal3.modName = arg0.loadedModName
		registerVal3.immediate = true
		Engine.LuiVM_Event("ugc_activity", registerVal3)
		arg0.loadModName = ""
		registerVal1 = Engine.milliseconds()
		arg0.startTime = (1000.000000 + registerVal1)
		registerVal1 = Engine.milliseconds()
		arg0.endTime = (60000.000000 + registerVal1)
	end

	registerVal2.startFuncPtr = __FUNC_10B9F_
	local function __FUNC_1123E_(arg0)
		local registerVal1 = LuaUtils.Mods_IsModLoaded(arg0.checkMods.ugcInfo)
		if registerVal1 then
			registerVal1 = LuaUtils.Mods_IsUGC(arg0.checkMods.ugcInfo)
			if registerVal1 then
				local registerVal3 = {}
				registerVal3.type = "loaded"
				registerVal3.modName = arg0.checkMods.ugcInfo.ugcName
				registerVal3.immediate = true
				Engine.LuiVM_Event("ugc_activity", registerVal3)
			else
				registerVal3 = {}
				registerVal3.type = "unloaded"
				registerVal3.modName = arg0.loadedModName
				registerVal3.immediate = true
				Engine.LuiVM_Event("ugc_activity", registerVal3)
			end
			local registerVal2 = {}
			registerVal2.actionId = arg0.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal2)
			return 
		end
		registerVal2 = Engine.milliseconds()
		if arg0.startTime < registerVal2 then
			LuaUtils.Mods_LoadMod(arg0.loadModName)
		end
		registerVal2 = Engine.milliseconds()
		if arg0.endTime < registerVal2 then
			arg0.ErrorMsg = "PLATFORM_MODS_LOAD_TIMEOUT"
			registerVal2 = {}
			registerVal2.actionId = arg0.actionId
			LobbyVM.ProcessCompleteError(registerVal2)
		end
	end

	registerVal2.pumpFuncPtr = __FUNC_1123E_
	local function __FUNC_11635_(arg0)
		local registerVal2 = Engine.Localize(arg0.ErrorMsg, ("" .. arg0.checkMods.ugcInfo.ugcType .. "/" .. arg0.checkMods.ugcInfo.ugcName))
		return (Lobby.GMLOC_OFF .. registerVal2)
	end

	registerVal2.errorFuncPtr = __FUNC_11635_
	return registerVal2
end

function Lobby.Actions.CheckMods(arg0, arg1, arg2)
	local registerVal3 = {}
	registerVal3.name = "CheckMods"
	registerVal3.controller = arg0
	registerVal3.info = arg1
	registerVal3.mainMode = nil
	local function __FUNC_1187E_(arg3)
		arg3.ugcInfo = arg3.info.probeResult.ugcInfo
		if arg3.ugcInfo == nil then
			arg3.ugcInfo = {}
			arg3.ugcInfo.ugcName = ""
			arg3.ugcInfo.ugcVersion = 0.000000
		end
		arg1.probeResult.ugcInfo.skipLoad = arg2
		local registerVal1 = LuaUtils.Mods_IsUGC(arg3.ugcInfo)
		registerVal1 = LuaUtils.IsStarterPack(arg0)
		if registerVal1 and registerVal1 then
			arg3.ErrorMsg = "PLATFORM_MODS_STARTERPACK_RESTRICT"
			local registerVal2 = {}
			registerVal2.actionId = arg3.actionId
			LobbyVM.ProcessCompleteError(registerVal2)
			return 
		end
		registerVal2 = {}
		registerVal2.actionId = arg3.actionId
		LobbyVM.ProcessCompleteSuccess(registerVal2)
	end

	registerVal3.startFuncPtr = __FUNC_1187E_
	local function __FUNC_11B27_(arg0)
		return arg0.ErrorMsg
	end

	registerVal3.errorFuncPtr = __FUNC_11B27_
	return registerVal3
end

function Lobby.Actions.CheckStarterPackRequirements(arg0, arg1)
	local registerVal2 = {}
	registerVal2.name = "CheckStarterPackRequirements"
	registerVal2.controller = arg0
	registerVal2.info = arg1
	registerVal2.mainMode = nil
	local function __FUNC_11C5D_(arg1)
		arg1.mainMode = arg1.info.probeResult.mainMode
		arg1.uiScreen = arg1.info.probeResult.uiScreen
		if arg1.mainMode == Enum.LobbyMainMode.LOBBY_MAINMODE_INVALID then
			local registerVal2 = {}
			registerVal2.actionId = arg1.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal2)
			return 
		end
		local registerVal1 = LuaUtils.IsStarterPackParty(arg0)
		if registerVal1 then
			registerVal1 = LuaUtils.IsCustomGameTarget(arg1.uiScreen)
			if arg1.mainMode ~= Enum.LobbyMainMode.LOBBY_MAINMODE_ZM and arg1.mainMode == Enum.LobbyMainMode.LOBBY_MAINMODE_CP or registerVal1 then
				registerVal1 = LuaUtils.IsStarterPack(arg0)
				if registerVal1 then
					arg1.CheckStarterPackRequirementsErrorMsg = "PLATFORM_STARTER_PACK_JOIN_ERROR"
				else
					arg1.CheckStarterPackRequirementsErrorMsg = "PLATFORM_STARTER_PACK_MEMBER_MISSING_CONTENT"
				end
				registerVal2 = {}
				registerVal2.actionId = arg1.actionId
				LobbyVM.ProcessCompleteError(registerVal2)
				return 
			end
		end
		registerVal1 = LuaUtils.IsPartyMemberMissingRequiredChunk(arg0, arg1.mainMode)
		if registerVal1 then
			arg1.CheckStarterPackRequirementsErrorMsg = "PLATFORM_MEMBER_MISSING_CONTENT"
			registerVal2 = {}
			registerVal2.actionId = arg1.actionId
			LobbyVM.ProcessCompleteError(registerVal2)
			return 
		end
		registerVal2 = {}
		registerVal2.actionId = arg1.actionId
		LobbyVM.ProcessCompleteSuccess(registerVal2)
	end

	registerVal2.startFuncPtr = __FUNC_11C5D_
	local function __FUNC_1211E_(arg0)
		return arg0.CheckStarterPackRequirementsErrorMsg
	end

	registerVal2.errorFuncPtr = __FUNC_1211E_
	return registerVal2
end

function Lobby.Actions.JoinHost(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = {}
	registerVal5.name = "LobbyJoinHost"
	registerVal5.controller = arg0
	registerVal5.mainMode = arg1
	registerVal5.networkMode = arg2
	registerVal5.hostXuid = arg3
	registerVal5.hostInfo = arg4
	registerVal5.joinResults = {}
	local function __FUNC_122CC_(arg0)
		local registerVal1 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
		if registerVal1 then
			Engine.JoinHost(arg0.actionId, arg0.controller, Enum.LobbyType.LOBBY_TYPE_GAME, Enum.LobbyType.LOBBY_TYPE_GAME, arg0.hostXuid, arg0.hostInfo)
		else
			Engine.JoinHost(arg0.actionId, arg0.controller, Enum.LobbyType.LOBBY_TYPE_PRIVATE, Enum.LobbyType.LOBBY_TYPE_GAME, arg0.hostXuid, arg0.hostInfo)
		end
	end

	registerVal5.startFuncPtr = __FUNC_122CC_
	local function __FUNC_12503_(arg0, arg1)
		arg0.joinResults[(#arg0.joinResults + 1.000000)] = arg1
	end

	registerVal5.updateFuncPtr = __FUNC_12503_
	local function __FUNC_1256A_(arg0)
		local registerVal1 = Engine.Localize("MENU_JOIN_RESULT_NOT_JOINABLE")
		if arg0.joinResult == nil and #arg0.joinResults == 0.000000 then
			return registerVal1
		end
		local registerVal3 = LobbyVM.JoinResultToString(arg0.joinResults[#arg0.joinResults].joinResult, true)
		local registerVal4 = Engine.Localize(registerVal3.errorMsg)
		registerVal4 = Engine.IsDevelopmentBuild()
		if not registerVal4 then
			return registerVal4
		end
		local registerVal6 = tostring(arg0.joinResults[#arg0.joinResults].joinResult)
		return (registerVal4 .. "

DEBUG INFO: JoinResult( " .. registerVal6 .. " )
" .. registerVal3.debug)
	end

	registerVal5.errorFuncPtr = __FUNC_1256A_
	return registerVal5
end

function Lobby.Actions.LobbyJoinXUID(arg0, arg1, arg2)
	local registerVal3 = {}
	registerVal3.name = "LobbyJoinXUID"
	registerVal3.controller = arg0
	registerVal3.info = arg1
	registerVal3.joinType = arg2
	registerVal3.joinResults = {}
	local function __FUNC_128F1_(arg0)
		Engine.JoinXUID(arg0.actionId, arg0.controller, arg0.info.xuid, arg0.joinType)
	end

	registerVal3.startFuncPtr = __FUNC_128F1_
	local function __FUNC_129E2_(arg0, arg1)
		arg0.joinResults[(#arg0.joinResults + 1.000000)] = arg1
	end

	registerVal3.updateFuncPtr = __FUNC_129E2_
	local function __FUNC_12A4A_(arg0)
	end

	registerVal3.endFuncPtr = __FUNC_12A4A_
	local function __FUNC_12A74_(arg0)
		local registerVal1 = Engine.Localize("MENU_JOIN_RESULT_NOT_JOINABLE")
		if #arg0.joinResults == 0.000000 then
			return registerVal1
		end
		local registerVal3 = LobbyVM.JoinResultToString(arg0.joinResults[#arg0.joinResults].joinResult, true)
		local registerVal4 = Engine.Localize(registerVal3.errorMsg)
		registerVal4 = Engine.IsDevelopmentBuild()
		if not registerVal4 then
			return registerVal4
		end
		local registerVal6 = tostring(arg0.joinResults[#arg0.joinResults].joinResult)
		return (registerVal4 .. "

DEBUG INFO: JoinResult( " .. registerVal6 .. " )
" .. registerVal3.debug)
	end

	registerVal3.errorFuncPtr = __FUNC_12A74_
	return registerVal3
end

function Lobby.Actions.LobbyJoinXUIDExt(arg0, arg1, arg2, arg3)
	local registerVal4 = {}
	registerVal4.name = "LobbyJoinXUIDExt"
	registerVal4.controller = arg0
	registerVal4.joinType = arg1
	registerVal4.infoProbe = arg2
	registerVal4.destinationLobby = arg3
	registerVal4.joinResults = {}
	local function __FUNC_12E0F_(arg0)
		if arg0.destinationLobby == Enum.LobbyType.LOBBY_TYPE_COUNT then
			if arg0.infoProbe.probeResult.gameLobby.isValid == true then
			else
			else
				if Enum.LobbyType.LOBBY_TYPE_PRIVATE == Enum.LobbyType.LOBBY_TYPE_GAME then
				else
				end
			end
		end
		local registerVal5 = Engine.JoinXUIDExt(arg0.actionId, arg0.controller, arg0.infoProbe.probeResult.privateLobby.isValid, arg0.infoProbe.probeResult.privateLobby.hostXuid, arg0.infoProbe.probeResult.privateLobby.hostName, Enum.LobbyType.LOBBY_TYPE_PRIVATE, arg0.infoProbe.probeResult.privateLobby.secId, arg0.infoProbe.probeResult.privateLobby.secKey, arg0.infoProbe.probeResult.privateLobby.serializedAdr, arg0.joinType, arg0.infoProbe.probeResult.probedXuid)
		if registerVal5 == false then
			local registerVal7 = {}
			registerVal7.actionId = arg0.actionId
			LobbyVM.ProcessCompleteError(registerVal7)
		end
	end

	registerVal4.startFuncPtr = __FUNC_12E0F_
	local function __FUNC_131EA_(arg0, arg1)
		arg0.joinResults[(#arg0.joinResults + 1.000000)] = arg1
	end

	registerVal4.updateFuncPtr = __FUNC_131EA_
	local function __FUNC_13252_(arg0)
	end

	registerVal4.endFuncPtr = __FUNC_13252_
	local function __FUNC_1327C_(arg0)
		if arg0.infoProbe ~= nil and arg0.infoProbe.probeResult ~= nil and arg0.infoProbe.probeResult.natType ~= nil then
		end
		local registerVal2 = LuaUtils.IsCompatibleNatConnection(arg0.infoProbe.probeResult.natType)
		local registerVal3 = Engine.Localize("MENU_JOIN_RESULT_NOT_JOINABLE")
		if #arg0.joinResults == 0.000000 then
			if registerVal2 == false then
				local registerVal4 = Engine.Localize("MENU_JOIN_RESULT_NOT_JOINABLE_NAT_TYPE")
			end
			return registerVal4
		end
		local registerVal5 = LobbyVM.JoinResultToString(arg0.joinResults[#arg0.joinResults].joinResult, true)
		if registerVal2 == false then
			if arg0.joinResults[#arg0.joinResults].joinResult == Enum.JoinResult.JOIN_RESULT_HANDSHAKE_WINDOW_EXPIRED or arg0.joinResults[#arg0.joinResults].joinResult == Enum.JoinResult.JOIN_RESULT_INVALID then
				local registerVal6 = Engine.Localize("MENU_JOIN_RESULT_NOT_JOINABLE_NAT_TYPE")
			else
			else
				registerVal6 = Engine.Localize(registerVal5.errorMsg)
			end
		end
		registerVal6 = Engine.IsDevelopmentBuild()
		if not registerVal6 then
			return registerVal6
		end
		local registerVal8 = tostring(arg0.joinResults[#arg0.joinResults].joinResult)
		return (registerVal6 .. "

DEBUG INFO: JoinResult( " .. registerVal8 .. " )
" .. registerVal5.debug)
	end

	registerVal4.errorFuncPtr = __FUNC_1327C_
	return registerVal4
end

function Lobby.Actions.WaitForJoiningClients(arg0)
	local registerVal1 = {}
	registerVal1.name = "WaitForJoiningClients"
	registerVal1.waitMilliseconds = arg0
	registerVal1.endWaitTime = nil
	local function __FUNC_13843_(arg0)
		local registerVal2 = Engine.milliseconds()
		arg0.endWaitTime = (arg0.waitMilliseconds + registerVal2)
		local registerVal1 = Engine.LobbyJoinCount()
		if registerVal1 == 0.000000 then
			local registerVal3 = {}
			registerVal3.actionId = arg0.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal3)
		end
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("WaitForJoiningClients start, number of joining clients: " .. registerVal1 .. ". Waiting " .. arg0.waitMilliseconds .. "ms for clients to join.
"))
	end

	registerVal1.startFuncPtr = __FUNC_13843_
	local function __FUNC_13AA5_(arg0)
		local registerVal1 = Engine.LobbyJoinCount()
		local registerVal8 = Engine.milliseconds()
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("WaitForJoiningClients pump, number of clients still joining: " .. registerVal1 .. ". Waiting for " .. (arg0.endWaitTime - registerVal8) .. "ms
"))
		local registerVal3 = Engine.milliseconds()
		if arg0.endWaitTime < registerVal3 then
			Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("WaitForJoiningClients pump stop, number of clients still joining: " .. registerVal1 .. ". Clients took to long to join.
"))
			registerVal3 = {}
			registerVal3.actionId = arg0.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal3)
			return 
		end
		if registerVal1 == 0.000000 then
			Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "WaitForJoiningClients pump stop, All clients have joined.
")
			registerVal3 = {}
			registerVal3.actionId = arg0.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal3)
			return 
		end
	end

	registerVal1.pumpFuncPtr = __FUNC_13AA5_
	local function __FUNC_13E59_(arg0)
		local registerVal2 = {}
		registerVal2.actionId = arg0.actionId
		LobbyVM.ProcessCompleteSuccess(registerVal2)
	end

	registerVal1.cancelFuncPtr = __FUNC_13E59_
	return registerVal1
end

function Lobby.Actions.LobbySettings(arg0, arg1, arg2, arg3)
	local registerVal4 = {}
	registerVal4.name = "LobbySettings"
	registerVal4.controller = arg0
	registerVal4.toTarget = arg1
	registerVal4.skipSwitchMode = arg2
	registerVal4.isDevMap = arg3
	local function __FUNC_13FD7_(arg4)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.toTarget = arg1
		registerVal2.skipSwitchMode = arg2
		registerVal2.isDevMap = arg3
		LobbyVM.LobbySettings(registerVal2)
		registerVal2 = {}
		registerVal2.actionId = arg4.actionId
		LobbyVM.ProcessCompleteSuccess(registerVal2)
	end

	registerVal4.startFuncPtr = __FUNC_13FD7_
	return registerVal4
end

function Lobby.Actions.SetQueueCancellable(arg0)
	local registerVal1 = {}
	registerVal1.name = "SetQueueCancellable"
	local function __FUNC_1418D_(arg1)
		Lobby.ProcessQueue.SetCancellable(arg0)
		local registerVal2 = {}
		registerVal2.actionId = arg1.actionId
		LobbyVM.ProcessCompleteSuccess(registerVal2)
	end

	registerVal1.startFuncPtr = __FUNC_1418D_
	return registerVal1
end

function Lobby.Actions.UpdateUI(arg0, arg1)
	local registerVal2 = {}
	registerVal2.name = "UpdateUI"
	registerVal2.require = "LobbySettings"
	registerVal2.controller = arg0
	registerVal2.toTarget = arg1
	local function __FUNC_1435C_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.toTarget = arg1
		LobbyVM.UpdateUI(registerVal2)
		registerVal2 = {}
		registerVal2.actionId = arg2.actionId
		LobbyVM.ProcessCompleteSuccess(registerVal2)
	end

	registerVal2.startFuncPtr = __FUNC_1435C_
	return registerVal2
end

function Lobby.Actions.SetNetworkMode(arg0, arg1)
	local registerVal2 = {}
	registerVal2.name = "SetNetworkMode"
	registerVal2.controller = arg0
	registerVal2.networkMode = arg1
	local function __FUNC_144FD_(arg0)
		LuaUtils.SetNetworkMode(arg0.controller, arg0.networkMode)
		Engine.Exec(arg0.controller, "savegameRestore")
		Engine.ExecNow(arg0.controller, "invalidateEmblemComponent")
		local registerVal2 = {}
		registerVal2.actionId = arg0.actionId
		LobbyVM.ProcessCompleteSuccess(registerVal2)
	end

	registerVal2.startFuncPtr = __FUNC_144FD_
	return registerVal2
end

function Lobby.Actions.PromoteToHostDone(arg0, arg1, arg2, arg3)
	local registerVal4 = {}
	registerVal4.name = "promoteToHostDone"
	registerVal4.controller = arg0
	registerVal4.lobbyType = arg1
	registerVal4.migrateIndexBits = arg2
	registerVal4.isInGame = arg3
	local function __FUNC_147A6_(arg0)
		Engine.LobbyHostMigrateSetIndexBits(arg0.lobbyType, arg0.migrateIndexBits)
		local registerVal4 = Dvar.ui_mapname:get()
		Engine.Exec(arg0.controller, ("lobby_setmap " .. registerVal4))
		registerVal4 = Dvar.ui_gametype:get()
		Engine.Exec(arg0.controller, ("lobby_setgametype " .. registerVal4))
		Engine.PromoteToHostDone(arg0.controller, arg0.lobbyType, arg0.isInGame)
		local registerVal2 = {}
		registerVal2.actionId = arg0.actionId
		LobbyVM.ProcessCompleteSuccess(registerVal2)
	end

	registerVal4.startFuncPtr = __FUNC_147A6_
	return registerVal4
end

function Lobby.Actions.SignUserInToLive(arg0)
	local registerVal1 = {}
	registerVal1.name = "SignUserInToLive"
	registerVal1.controller = arg0
	local function __FUNC_14ADE_(arg0)
		Engine.SignUserIntoLive(arg0.controller)
		local registerVal2 = {}
		registerVal2.actionId = arg0.actionId
		LobbyVM.ProcessCompleteSuccess(registerVal2)
	end

	registerVal1.startFuncPtr = __FUNC_14ADE_
	return registerVal1
end

function Lobby.Actions.SignUserOutOfLive(arg0, arg1)
	local registerVal2 = {}
	registerVal2.name = "SignUserOutOfLive"
	registerVal2.controller = arg0
	registerVal2.networkMode = arg1
	local function __FUNC_14C80_(arg0)
		Engine.SignUserOutOfLive(arg0.controller)
		local registerVal2 = {}
		registerVal2.actionId = arg0.actionId
		LobbyVM.ProcessCompleteSuccess(registerVal2)
	end

	registerVal2.startFuncPtr = __FUNC_14C80_
	return registerVal2
end

function Lobby.Actions.PlatformSessionGetSessionInfo(arg0, arg1, arg2)
	local registerVal3 = {}
	registerVal3.name = "PlatformSessionGetSessionInfo"
	registerVal3.controller = arg0
	registerVal3.lobbyType = arg1
	registerVal3.sessionId = arg2
	registerVal3.info = {}
	registerVal3.gamertag = nil
	registerVal3.gamertags = nil
	local function __FUNC_14EA5_(arg0)
		local registerVal1 = Lobby.Platform.PlatformSessionOrbisEnabled()
		registerVal1 = Engine.GetLobbyNetworkMode()
		if registerVal1 == false or registerVal1 ~= Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE then
			local registerVal2 = {}
			registerVal2.actionId = arg0.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal2)
			return 
		end
		registerVal1 = Engine.PlatformSessionPS4GetSessionInfo(arg0.actionId, arg0.controller, arg0.lobbyType, arg0.sessionId)
		if registerVal1 == false then
			registerVal2 = {}
			registerVal2.actionId = arg0.actionId
			LobbyVM.ProcessCompleteFailure(registerVal2)
			return 
		end
	end

	registerVal3.startFuncPtr = __FUNC_14EA5_
	local function __FUNC_15158_(arg0)
		local registerVal1 = Lobby.Platform.PlatformSessionOrbisEnabled()
		registerVal1 = Engine.GetLobbyNetworkMode()
		if registerVal1 == false or registerVal1 ~= Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE then
			return 
		end
		if arg0.retData.isError == true then
			return 
		end
		registerVal1 = {}
		registerVal1.sessionId = arg0.retData.sessionId
		registerVal1.sessionName = arg0.retData.sessionName
		registerVal1.sessionStatus = arg0.retData.sessionStatus
		registerVal1.sessionType = arg0.retData.sessionType
		registerVal1.sessionPrivacy = arg0.retData.sessionPrivacy
		registerVal1.locked = arg0.retData.locked
		registerVal1.maxSlots = arg0.retData.maxSlots
		registerVal1.creationTime = arg0.retData.creationTime
		registerVal1.sessionCreatorGamertag = arg0.retData.sessionCreatorGamertag
		registerVal1.sessionCreatorPlatform = arg0.retData.sessionCreatorPlatform
		registerVal1.members = arg0.retData.members
		arg0.info = registerVal1
		if arg0.info.members ~= nil and 0.000000 < #arg0.info.members then
			arg0.gamertag = arg0.info.members[#arg0.info.members].gamertag
			arg0.gamertags = {}
			for index1=1.000000, #arg0.info.members, 1.000000 do
				arg0.gamertags[index1] = arg0.info.members[index1].gamertag
			end
		end
	end

	registerVal3.endFuncPtr = __FUNC_15158_
	return registerVal3
end

function Lobby.Actions.PlatformSessionGetInviteInfo(arg0, arg1, arg2, arg3)
	local registerVal4 = {}
	registerVal4.name = "PlatformSessionGetInviteInfo"
	registerVal4.controller = arg0
	registerVal4.lobbyType = arg2
	registerVal4.invitationId = arg3
	registerVal4.xuid = arg1
	registerVal4.info = {}
	registerVal4.gamertag = nil
	registerVal4.gamertags = nil
	local function __FUNC_157AD_(arg1)
		local registerVal1 = Lobby.Platform.PlatformSessionOrbisEnabled()
		registerVal1 = Engine.IsDemonwareFetchingDone(arg0)
		if registerVal1 == false or registerVal1 == false then
			local registerVal2 = {}
			registerVal2.actionId = arg1.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal2)
			return 
		end
		registerVal1 = Engine.PlatformSessionPS4GetInviteInfo(arg1.actionId, arg1.controller, arg1.xuid, arg1.lobbyType, arg1.invitationId)
		if registerVal1 == false then
			registerVal2 = {}
			registerVal2.actionId = arg1.actionId
			LobbyVM.ProcessCompleteFailure(registerVal2)
			return 
		end
	end

	registerVal4.startFuncPtr = __FUNC_157AD_
	local function __FUNC_15A20_(arg0)
		local registerVal1 = Lobby.Platform.PlatformSessionOrbisEnabled()
		registerVal1 = Engine.IsDemonwareFetchingDone(arg0.controller)
		if registerVal1 == false or registerVal1 == false then
			return 
		end
		if arg0.retData.isError == true then
			return 
		end
		arg0.info.receivedDate = arg0.retData.receivedDate
		arg0.info.usedFlag = arg0.retData.usedFlag
		arg0.info.expired = arg0.retData.expired
		arg0.info.message = arg0.retData.message
		arg0.info.fromGamertag = arg0.retData.fromGamertag
		arg0.info.invitationId = arg0.retData.invitationId
		arg0.info.sessionId = arg0.retData.sessionId
		arg0.gamertag = arg0.retData.fromGamertag
		arg0.gamertags = {}
		arg0.gamertags[1.000000] = arg0.gamertag
	end

	registerVal4.endFuncPtr = __FUNC_15A20_
	return registerVal4
end

function Lobby.Actions.GamertagsToXuids(arg0, arg1)
	local registerVal2 = {}
	registerVal2.name = "PlatformSessionJoin"
	registerVal2.controller = arg0
	registerVal2.info = arg1
	local function __FUNC_15E57_(arg0)
		if arg1.gamertags == nil or #arg1.gamertags == 0.000000 then
			local registerVal2 = {}
			registerVal2.actionId = arg0.actionId
			LobbyVM.ProcessCompleteFailure(registerVal2)
			return 
		end
		local registerVal1 = Engine.GamertagsToXuids(arg0.actionId, arg0.controller, arg0.info.gamertags)
		if registerVal1 == false then
			registerVal2 = {}
			registerVal2.actionId = arg0.actionId
			LobbyVM.ProcessCompleteFailure(registerVal2)
			return 
		end
	end

	registerVal2.startFuncPtr = __FUNC_15E57_
	local function __FUNC_16002_(arg0)
		if arg0.retData.isError == true then
			return 
		end
		if arg0.retData.userInfo == nil or #arg0.retData.userInfo == 0.000000 then
			arg0.gamertag = ""
			arg0.xuid = 0.000000
			return 
		end
		arg0.gamertag = arg0.retData.userInfo[1.000000].gamertag
		arg0.xuid = arg0.retData.userInfo[1.000000].xuid
	end

	registerVal2.endFuncPtr = __FUNC_16002_
	return registerVal2
end

function Lobby.Actions.SetGameAndTypeMapName(arg0, arg1, arg2, arg3)
	local registerVal4 = {}
	registerVal4.name = "SetGameAndTypeMapName"
	registerVal4.controller = arg0
	registerVal4.gameType = arg2
	registerVal4.mapName = arg3
	local function __FUNC_16236_(arg0)
		Engine.Exec(arg0.controller, ("lobby_setmap " .. arg0.mapName))
		Engine.Exec(arg0.controller, ("lobby_setgametype " .. arg0.gameType))
		local registerVal2 = {}
		registerVal2.actionId = arg0.actionId
		LobbyVM.ProcessCompleteSuccess(registerVal2)
	end

	registerVal4.startFuncPtr = __FUNC_16236_
	return registerVal4
end

function Lobby.Actions.SetSavedOrDefaultMap(arg0, arg1)
	local registerVal2 = {}
	registerVal2.name = "SetSavedOrDefaultMap"
	registerVal2.controller = arg0
	local function __FUNC_16456_(arg0)
		local registerVal1 = Engine.IsCampaignGame()
		if registerVal1 then
			registerVal1 = Engine.GetSavedMap()
			local registerVal2 = string.len(registerVal1)
			if registerVal2 == 0.000000 then
				registerVal2 = LuaUtils.GetDefaultMap(arg1)
			end
			Dvar.ui_mapname:set(registerVal2)
			Dvar.cp_queued_level:set(Engine.GetSavedMapQueuedMap())
			Engine.GameLobbySetMap(registerVal2)
		end
		if arg1 == LobbyData.UITargets.UI_MPLOBBYONLINECUSTOMGAME and Engine.LobbyHost_SetOfficialCustomGame then
			Engine.LobbyHost_SetOfficialCustomGame(true)
		end
		registerVal2 = {}
		registerVal2.actionId = arg0.actionId
		LobbyVM.ProcessCompleteSuccess(registerVal2)
	end

	registerVal2.startFuncPtr = __FUNC_16456_
	return registerVal2
end

function Lobby.Actions.PlayTogetherBeginPlayWait(arg0)
	local registerVal1 = {}
	registerVal1.name = "PlayTogetherBeginPlayWait"
	registerVal1.controller = arg0
	local function __FUNC_16863_(arg0)
	end

	registerVal1.startFuncPtr = __FUNC_16863_
	local function __FUNC_1688C_(arg0, arg1)
		local registerVal2 = Engine.GetLobbyUIScreen()
		if registerVal2 == LobbyData.UITargets.UI_MODESELECT.id then
			local registerVal4 = {}
			registerVal4.actionId = arg0.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal4)
			return 
		end
		registerVal4 = Engine.GetModelForController(arg0.controller)
		local registerVal3 = Engine.GetModel(registerVal4, "SystemOverlay_MessageDialog.buttonPrompts")
		if registerVal3 ~= nil then
			registerVal4 = {}
			registerVal4.actionId = arg0.actionId
			LobbyVM.ProcessCompleteFailure(registerVal4)
		end
	end

	registerVal1.pumpFuncPtr = __FUNC_1688C_
	local function __FUNC_16ADF_(arg0)
		local registerVal2 = {}
		registerVal2.actionId = arg0.actionId
		LobbyVM.ProcessCompleteSuccess(registerVal2)
	end

	registerVal1.cancelFuncPtr = __FUNC_16ADF_
	return registerVal1
end

function Lobby.Actions.PlayTogetherPSNSessionWait(arg0, arg1)
	local registerVal2 = {}
	registerVal2.name = ("PlayTogetherPSNSessionWait( old session id: " .. arg1 .. ")")
	registerVal2.nonPSNSessionBlocking = true
	registerVal2.controller = arg0
	registerVal2.oldSessionId = arg1
	local function __FUNC_16CBC_(arg0)
	end

	registerVal2.startFuncPtr = __FUNC_16CBC_
	local function __FUNC_16CE8_(arg1, arg2)
		if Lobby.Platform.PS4.taskInProgress == true then
			return 
		end
		local registerVal2 = Lobby.Platform.PS4GetSessionId(arg0)
		local registerVal3 = string.len(registerVal2)
		if 0.000000 >= registerVal3 then
		end
		if true and arg1.oldSessionId ~= registerVal2 then
			local registerVal5 = {}
			registerVal5.actionId = arg1.actionId
			LobbyVM.ProcessCompleteSuccess(registerVal5)
			return 
		end
	end

	registerVal2.pumpFuncPtr = __FUNC_16CE8_
	local function __FUNC_16EB8_(arg0)
		local registerVal2 = {}
		registerVal2.actionId = arg0.actionId
		LobbyVM.ProcessCompleteSuccess(registerVal2)
	end

	registerVal2.cancelFuncPtr = __FUNC_16EB8_
	return registerVal2
end

