-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Lobby.LobbyDebug")
Lobby.ProcessQueue = {}
Lobby.ProcessQueue.INVALID_ACTION_ID = 0.000000
Lobby.ProcessQueue.EVENT_START_ERROR = -1.000000
local registerVal1 = {}
registerVal1.PENDING = 0.000000
registerVal1.RUNNING = 1.000000
registerVal1.SUCCESS = 2.000000
registerVal1.FAILURE = 3.000000
registerVal1.ERROR = 4.000000
registerVal1.THROTTLED = 5.000000
Lobby.ProcessQueue.ACTIONSTATE = registerVal1
Lobby.ProcessQueue.queue = nil
Lobby.ProcessQueue.actionId = 1.000000
Lobby.ProcessQueue.queueSize = 10.000000
function Lobby.ProcessQueue.ClearQueue()
	local registerVal1 = {}
	registerVal1.processName = ""
	registerVal1.head = nil
	registerVal1.history = nil
	registerVal1.interrupt = nil
	registerVal1.cancellable = nil
	Lobby.ProcessQueue.queue = registerVal1
	Lobby.ProcessQueue.SetQueueEmptyModel(true)
end

function Lobby.ProcessQueue.SetQueueEmptyModel(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, "lobbyRoot", true)
	registerVal2 = Engine.CreateModel(registerVal1, "queueEmpty", true)
	Engine.SetModelValue(registerVal2, arg0)
end

function Lobby.ProcessQueue.ReplaceWith(arg0)
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("LobbyProcessQueue: Process: '" .. Lobby.ProcessQueue.queue.processName .. "', Replacing '" .. Lobby.ProcessQueue.queue.head.name .. "' with '" .. arg0.name .. "' in process queue.
"))
	arg0.state = Lobby.ProcessQueue.ACTIONSTATE.PENDING
	Lobby.ProcessQueue.queue.head = arg0
end

function Lobby.ProcessQueue.CreateInterrupt(arg0, arg1)
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("LobbyProcessQueue: Process: '" .. Lobby.ProcessQueue.queue.processName .. "', Replacing '" .. Lobby.ProcessQueue.queue.head.name .. "' with '" .. arg0.name .. "' in process queue.
"))
	local registerVal2 = arg1:createFuncPtr(arg0)
	return registerVal2.head
end

function Lobby.ProcessQueue.Init()
	Lobby.ProcessQueue.ClearQueue()
	Lobby.ProcessQueue.TaskHistory = {}
end

function Lobby.ProcessQueue.IsQueueEmpty()
	if Lobby.ProcessQueue.queue.head ~= nil then
		return false
	end
	return true
end

function Lobby.ProcessQueue.GetQueueHead()
	return Lobby.ProcessQueue.queue.head
end

function Lobby.ProcessQueue.SetCancellable(arg0)
	Lobby.ProcessQueue.queue.cancellable = arg0
end

function Lobby.ProcessQueue.GetCurrentRunningProcessName()
	if Lobby.ProcessQueue.queue == nil or Lobby.ProcessQueue.queue.processName == nil then
		return ""
	end
	return Lobby.ProcessQueue.queue.processName
end

function Lobby.ProcessQueue.AddToQueue(arg0, arg1)
	if arg1 == nil then
		LuaUtils.LogQoS("addtoqueue_nil", arg0)
		return 
	end
	local registerVal2 = Lobby.ProcessQueue.IsQueueEmpty()
	if registerVal2 then
		Lobby.ProcessQueue.ClearQueue()
		arg1.head.state = Lobby.ProcessQueue.ACTIONSTATE.PENDING
		Lobby.ProcessQueue.queue.processName = arg0
		Lobby.ProcessQueue.queue.history = arg1.head
		Lobby.ProcessQueue.queue.head = arg1.head
		Lobby.ProcessQueue.queue.interrupt = arg1.interrupt
		Lobby.ProcessQueue.queue.cancellable = arg1.cancellable
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "****************PROCESS QUEUE START****************
")
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("LobbyProcessQueue: Adding process: '" .. arg0 .. "', head action: '" .. arg1.head.name .. "' to queue.
"))
	else
		if Lobby.ProcessQueue.queue.cancellable ~= true or arg1.doesNotCancelOthers == true then
			if arg1.force == true then
				Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "****************PROCESS QUEUE CHANGE****************
")
				Engine.PrintWarning(Enum.consoleLabel.LABEL_LOBBYHOST, ("LobbyProcessQueue: Adding process '" .. arg0 .. "' when process '" .. Lobby.ProcessQueue.queue.processName .. "' is currently running.
"))
				Engine.PrintWarning(Enum.consoleLabel.LABEL_LOBBYHOST, ("Will finish process '" .. Lobby.ProcessQueue.queue.processName .. "' current running action '" .. Lobby.ProcessQueue.queue.head.name .. "', then proceed with process '" .. arg0 .. "'.
"))
				registerVal2 = {}
				registerVal2.runningProcess = Lobby.ProcessQueue.queue.processName
				registerVal2.newProcess = arg0
				LuaUtils.LogQoS("lobby_queue", registerVal2)
				LuaUtils.FlushQoS()
				Lobby.ProcessQueue.queue.processName = arg0
				Lobby.ProcessQueue.queue.history = arg1.head
				Lobby.Process.ForceAction(Lobby.ProcessQueue.queue.head, arg1.head)
				Lobby.ProcessQueue.queue.interrupt = arg1.interrupt
				if Lobby.ProcessQueue.queue.head.cancelFuncPtr ~= nil then
					Engine.PrintWarning(Enum.consoleLabel.LABEL_LOBBYHOST, ("Cancelling action: '" .. Lobby.ProcessQueue.queue.head.name .. "'.
"))
					Lobby.ProcessQueue.queue.head.canceled = true
					Lobby.ProcessQueue.queue.head:cancelFuncPtr()
				else
					Engine.PrintWarning(Enum.consoleLabel.LABEL_LOBBYHOST, ("No cancel func (cancelFuncPtr) defined for action: '" .. Lobby.ProcessQueue.queue.head.name .. "'.
"))
				end
			end
		end
	end
	Lobby.ProcessQueue.SetQueueEmptyModel(false)
	Lobby.Debug.AddDebugProcess()
	Lobby.ProcessQueue.Pump()
end

function Lobby.ProcessQueue.ErrorShutdown()
	if Lobby.ProcessQueue.queue.head ~= nil and Lobby.ProcessQueue.queue.head.cancelFuncPtr ~= nil then
		Engine.PrintWarning(Enum.consoleLabel.LABEL_LOBBYHOST, ("Cancelling action: '" .. Lobby.ProcessQueue.queue.head.name .. "'.
"))
		Lobby.ProcessQueue.queue.head.canceled = true
		Lobby.ProcessQueue.queue.head:cancelFuncPtr()
	end
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, "lobbyRoot.spinnerActive")
	Engine.SetModelValue(registerVal1, false)
	Lobby.ProcessQueue.ClearQueue()
end

function Lobby.ProcessQueue.Pump()
	local registerVal0 = Engine.IsMainThreadOrProxy()
	if not registerVal0 then
		return 
	end
	if Lobby.ProcessQueue.queue.head.state == Lobby.ProcessQueue.ACTIONSTATE.PENDING or Lobby.ProcessQueue.queue.head.state == Lobby.ProcessQueue.ACTIONSTATE.THROTTLED then
		if not Lobby.ProcessQueue.TaskHistory[Lobby.ProcessQueue.queue.head.name] then
			Lobby.ProcessQueue.TaskHistory[Lobby.ProcessQueue.queue.head.name] = {}
			Lobby.ProcessQueue.TaskHistory[Lobby.ProcessQueue.queue.head.name].count = 0.000000
			Lobby.ProcessQueue.TaskHistory[Lobby.ProcessQueue.queue.head.name].lastRunTime = 0.000000
		end
		local registerVal1 = Engine.milliseconds()
		if 0.000000 < Lobby.ProcessQueue.TaskHistory[Lobby.ProcessQueue.queue.head.name].lastRunTime and Lobby.ProcessQueue.queue.head.throttle ~= nil and 0.000000 < Lobby.ProcessQueue.queue.head.throttle and registerVal1 < (Lobby.ProcessQueue.TaskHistory[Lobby.ProcessQueue.queue.head.name].lastRunTime + Lobby.ProcessQueue.queue.head.throttle) then
			if Lobby.ProcessQueue.queue.head.state == Lobby.ProcessQueue.ACTIONSTATE.PENDING then
				local registerVal9 = tostring(((Lobby.ProcessQueue.TaskHistory[Lobby.ProcessQueue.queue.head.name].lastRunTime + Lobby.ProcessQueue.queue.head.throttle) - registerVal1))
				Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("LobbyAction: Throttling '" .. Lobby.ProcessQueue.queue.head.name .. "' [ID:" .. Lobby.ProcessQueue.actionId .. " for: " .. registerVal9 .. " ms ]...
"))
				Lobby.ProcessQueue.queue.head.state = Lobby.ProcessQueue.ACTIONSTATE.THROTTLED
			end
			return 
		end
		Lobby.ProcessQueue.queue.head.state = Lobby.ProcessQueue.ACTIONSTATE.RUNNING
		Lobby.ProcessQueue.queue.head.actionId = Lobby.ProcessQueue.actionId
		registerVal1 = Engine.milliseconds()
		Lobby.ProcessQueue.queue.head.startTime = registerVal1
		Lobby.ProcessQueue.actionId = (Lobby.ProcessQueue.actionId + 1.000000)
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("LobbyAction: Executing '" .. Lobby.ProcessQueue.queue.head.name .. "' [ID:" .. Lobby.ProcessQueue.queue.head.actionId .. "]...
"))
		Lobby.Debug.AddDebugAction(Lobby.ProcessQueue.queue.head)
		if Lobby.ProcessQueue.queue.head.startFuncPtr ~= nil then
			Lobby.ProcessQueue.queue.head:startFuncPtr()
		end
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("LobbyAction: '" .. Lobby.ProcessQueue.queue.head.name .. "' [ID:" .. Lobby.ProcessQueue.queue.head.actionId .. "] is asynchronous.
"))
		Lobby.ProcessQueue.TaskHistory[Lobby.ProcessQueue.queue.head.name].count = (Lobby.ProcessQueue.TaskHistory[Lobby.ProcessQueue.queue.head.name].count + 1.000000)
		Lobby.ProcessQueue.TaskHistory[Lobby.ProcessQueue.queue.head.name].lastRunTime = Lobby.ProcessQueue.queue.head.startTime
	end
	if Lobby.ProcessQueue.queue.head.state == Lobby.ProcessQueue.ACTIONSTATE.RUNNING then
		if Lobby.ProcessQueue.queue.head.pumpFuncPtr ~= nil then
			Lobby.ProcessQueue.queue.head:pumpFuncPtr()
		end
		Lobby.Debug.UpdateProcessQueue()
		return 
	end
	if Lobby.ProcessQueue.queue.head.startTime ~= nil then
		local registerVal3 = Engine.milliseconds()
	end
	if Lobby.ProcessQueue.queue.head.endFuncPtr ~= nil then
		Lobby.ProcessQueue.queue.head:endFuncPtr()
	end
	if Lobby.ProcessQueue.queue.head.state == Lobby.ProcessQueue.ACTIONSTATE.SUCCESS then
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("LobbyAction: '" .. Lobby.ProcessQueue.queue.head.name .. "' [ID:" .. Lobby.ProcessQueue.queue.head.actionId .. "] completed successfully in " .. (registerVal3 - Lobby.ProcessQueue.queue.head.startTime) .. "ms.
"))
		if Lobby.ProcessQueue.queue.head.success ~= nil and Lobby.ProcessQueue.queue.head.success.isInterrupt == true then
			registerVal3 = Lobby.ProcessQueue.CreateInterrupt(Lobby.ProcessQueue.queue.head, Lobby.ProcessQueue.queue.head.success)
		else
		end
		Lobby.Debug.UpdateProcessQueue()
	else
		if Lobby.ProcessQueue.queue.head.state == Lobby.ProcessQueue.ACTIONSTATE.FAILURE then
			Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("LobbyAction: '" .. Lobby.ProcessQueue.queue.head.name .. "' [ID:" .. Lobby.ProcessQueue.queue.head.actionId .. "] completed with failure in " .. (registerVal3 - Lobby.ProcessQueue.queue.head.startTime) .. "ms.
"))
			if Lobby.ProcessQueue.queue.head.failure ~= nil and Lobby.ProcessQueue.queue.head.failure.isInterrupt == true then
				registerVal3 = Lobby.ProcessQueue.CreateInterrupt(Lobby.ProcessQueue.queue.head, Lobby.ProcessQueue.queue.head.failure)
			else
			end
			Lobby.Debug.UpdateProcessQueue()
		else
			if Lobby.ProcessQueue.queue.head.state == Lobby.ProcessQueue.ACTIONSTATE.ERROR then
				Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("LobbyAction: '" .. Lobby.ProcessQueue.queue.head.name .. "' [ID:" .. Lobby.ProcessQueue.queue.head.actionId .. "] completed with error in " .. (registerVal3 - Lobby.ProcessQueue.queue.head.startTime) .. "ms.
"))
				if Lobby.ProcessQueue.queue.head.error ~= nil and Lobby.ProcessQueue.queue.head.error.isInterrupt == true then
					registerVal3 = Lobby.ProcessQueue.CreateInterrupt(Lobby.ProcessQueue.queue.head, Lobby.ProcessQueue.queue.head.error)
				else
				end
				Lobby.Debug.UpdateProcessQueue()
			end
		end
	end
	if Lobby.ProcessQueue.queue.head.error ~= nil then
		Lobby.ProcessQueue.ReplaceWith(Lobby.ProcessQueue.queue.head.error)
	else
		Lobby.ProcessQueue.ClearQueue()
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "LobbyAction: Process tree complete.
")
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "****************PROCESS QUEUE END****************
")
	end
end

function Lobby.ProcessQueue.CompleteEvent(arg0, arg1, arg2)
	if arg2.actionId <= Lobby.ProcessQueue.INVALID_ACTION_ID then
		Lobby.ProcessQueue.ProcessEvent(arg2.actionId, arg0, arg2)
		return 
	end
	if Lobby.ProcessQueue.queue.head == nil then
		Engine.PrintError(Enum.consoleLabel.LABEL_LOBBYHOST, ("^6LobbyAction: received a task completed " .. arg1 .. " event but the action queue is empty. actionId: " .. arg2.actionId .. ".
"))
	else
		if arg0 == Lobby.ProcessQueue.ACTIONSTATE.FAILURE then
			Engine.PrintWarning(Enum.consoleLabel.LABEL_LOBBYVM, ("LobbyAction: task completed " .. arg1 .. " event. Head: " .. Lobby.ProcessQueue.queue.head.name .. ", actionId: " .. Lobby.ProcessQueue.queue.head.actionId .. ".
"))
		else
			if arg0 == Lobby.ProcessQueue.ACTIONSTATE.ERROR then
				Engine.PrintError(Enum.consoleLabel.LABEL_LOBBYVM, "***********************************************************************
")
				Engine.PrintError(Enum.consoleLabel.LABEL_LOBBYVM, ("LobbyAction: task completed " .. arg1 .. " event. Head: " .. Lobby.ProcessQueue.queue.head.name .. ", actionId: " .. Lobby.ProcessQueue.queue.head.actionId .. ".
"))
				Engine.PrintError(Enum.consoleLabel.LABEL_LOBBYVM, "***********************************************************************
")
			else
				Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYVM, ("LobbyAction: task completed " .. arg1 .. " event. Head: " .. Lobby.ProcessQueue.queue.head.name .. ", actionId: " .. Lobby.ProcessQueue.queue.head.actionId .. ".
"))
			end
		end
		if Lobby.ProcessQueue.queue.head.actionId ~= arg2.actionId then
			Engine.PrintError(Enum.consoleLabel.LABEL_LOBBYVM, ("^6LobbyAction: mismatched task completed " .. arg1 .. " event. Head: " .. Lobby.ProcessQueue.queue.head.name .. " was at actionId: " .. Lobby.ProcessQueue.queue.head.actionId .. " but we received actionId: " .. arg2.actionId .. ".
"))
			Engine.PrintError(Enum.consoleLabel.LABEL_LOBBYVM, "LOBBY VM ERROR: Please copy full log and email to codcoreonline@treyarch.com")
			local registerVal6 = Engine.IsShipBuild()
			if registerVal6 == false then
				Engine.ComError(Enum.errorCode.ERROR_SOFTRESTART, "Lobby process queue error occurred, please email your logs to codcoreonline@treyarch.com")
			else
				Engine.ComError(Enum.errorCode.ERROR_SOFTRESTART, Engine.Localize("EXE_LOBBY_PROCESS_QUEUE_ERROR", LuaUtils.ValueToHex(LuaEnums.ERROR_CODE.TASK_MISMATCHED)))
			end
			return 
		end
		if Lobby.ProcessQueue.queue.head.state ~= Lobby.ProcessQueue.ACTIONSTATE.RUNNING then
			if arg1 or Lobby.ProcessQueue.queue.head.canceled == false then
				Engine.PrintError(Enum.consoleLabel.LABEL_LOBBYVM, ("^6LobbyAction: received a task completed " .. arg1 .. " event for non-running action queue head: " .. Lobby.ProcessQueue.queue.head.name .. ", actionId: " .. Lobby.ProcessQueue.queue.head.actionId .. ".
"))
				Engine.PrintError(Enum.consoleLabel.LABEL_LOBBYVM, "LOBBY VM ERROR: Please copy full log and email to codcoreonline@treyarch.com")
				registerVal6 = Engine.IsShipBuild()
				if registerVal6 == false then
					Engine.ComError(Enum.errorCode.ERROR_SOFTRESTART, "Lobby process queue error occurred, please email your logs to codcoreonline@treyarch.com")
				else
					Engine.ComError(Enum.errorCode.ERROR_SOFTRESTART, Engine.Localize("EXE_LOBBY_PROCESS_QUEUE_ERROR", LuaUtils.ValueToHex(LuaEnums.ERROR_CODE.NONRUNNING_TASK)))
				end
				return 
			end
		end
		Lobby.ProcessQueue.queue.head.state = arg0
		Lobby.ProcessQueue.queue.head.retData = arg2
	end
	Lobby.Debug.UpdateProcessQueue()
end

function Lobby.ProcessQueue.Success(arg0)
	Lobby.ProcessQueue.CompleteEvent(Lobby.ProcessQueue.ACTIONSTATE.SUCCESS, "success", arg0)
	Lobby.Debug.UpdateProcessQueue()
end

function Lobby.ProcessQueue.Failure(arg0)
	Lobby.ProcessQueue.CompleteEvent(Lobby.ProcessQueue.ACTIONSTATE.FAILURE, "failure", arg0)
	Lobby.Debug.UpdateProcessQueue()
end

function Lobby.ProcessQueue.Error(arg0)
	Lobby.ProcessQueue.CompleteEvent(Lobby.ProcessQueue.ACTIONSTATE.ERROR, "error", arg0)
	Lobby.Debug.UpdateProcessQueue()
end

function Lobby.ProcessQueue.Update(arg0)
	if arg0.actionId <= Lobby.ProcessQueue.INVALID_ACTION_ID then
		Lobby.ProcessQueue.ProcessEvent(arg0.actionId, Lobby.ProcessQueue.ACTIONSTATE.UPDATE, arg0)
		return 
	end
	if Lobby.ProcessQueue.queue.head == nil then
		Engine.PrintError(Enum.consoleLabel.LABEL_LOBBYVM, ("LobbyAction: received an update but the action queue is empty. actionId: " .. arg0.actionId .. ".
"))
	else
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYVM, ("LobbyAction: Lobby.ProcessQueue.Update. Head:" .. Lobby.ProcessQueue.queue.head.name .. ", actionId: " .. Lobby.ProcessQueue.queue.head.actionId .. ".
"))
		if Lobby.ProcessQueue.queue.head.actionId ~= arg0.actionId then
			Engine.PrintError(Enum.consoleLabel.LABEL_LOBBYVM, ("LobbyAction: mismatched update. Head: " .. Lobby.ProcessQueue.queue.head.name .. " was at actionId: " .. Lobby.ProcessQueue.queue.head.actionId .. " but we received actionId: " .. arg0.actionId .. ".
"))
		end
		if Lobby.ProcessQueue.queue.head.state ~= Lobby.ProcessQueue.ACTIONSTATE.RUNNING then
			Engine.PrintError(Enum.consoleLabel.LABEL_LOBBYVM, ("LobbyAction: received a update for non-running action queue head: " .. Lobby.ProcessQueue.queue.head.name .. ", actionId: " .. Lobby.ProcessQueue.queue.head.actionId .. ".
"))
		end
		if Lobby.ProcessQueue.queue.head.updateFuncPtr == nil then
			Engine.PrintError(Enum.consoleLabel.LABEL_LOBBYVM, ("LobbyAction: received a update for an action at head that doesn't have a head:updateFuncPtr() defined. Head: " .. Lobby.ProcessQueue.queue.head.name .. ", actionId: " .. Lobby.ProcessQueue.queue.head.actionId .. "
"))
		end
		Lobby.ProcessQueue.queue.head:updateFuncPtr(arg0)
	end
	Lobby.Debug.UpdateProcessQueue()
end

Lobby.ProcessQueue.eventHandlerActionId = Lobby.ProcessQueue.INVALID_ACTION_ID
Lobby.ProcessQueue.eventHandler = {}
function Lobby.ProcessQueue.RegisterEventHandler(arg0, arg1)
	Lobby.ProcessQueue.eventHandlerActionId = (Lobby.ProcessQueue.eventHandlerActionId + 1.000000)
	local registerVal4 = {}
	registerVal4.callbackFunction = arg0
	registerVal4.eventData = arg1
	Lobby.ProcessQueue.eventHandler[Lobby.ProcessQueue.eventHandlerActionId] = registerVal4
	return (Lobby.ProcessQueue.eventHandlerActionId * -1.000000)
end

function Lobby.ProcessQueue.UnRegisterEventHandler(arg0)
	if arg0 == Lobby.ProcessQueue.INVALID_ACTION_ID then
		return false
	end
	local registerVal1 = math.abs(arg0)
	if Lobby.ProcessQueue.eventHandler[registerVal1] == nil then
		return false
	end
	Lobby.ProcessQueue.eventHandler[registerVal1] = nil
	return true
end

function Lobby.ProcessQueue.ProcessEvent(arg0, arg1, arg2)
	if arg0 == Lobby.ProcessQueue.INVALID_ACTION_ID then
		return false
	end
	local registerVal3 = math.abs(arg0)
	if Lobby.ProcessQueue.eventHandler[registerVal3] == nil then
		return false
	end
	registerVal3 = Lobby.ProcessQueue.eventHandler[registerVal3].callbackFunction(arg1, Lobby.ProcessQueue.eventHandler[registerVal3].eventData, arg2)
	if registerVal3 == false then
		return false
	end
	Lobby.ProcessQueue.eventHandler[registerVal3] = nil
	return true
end

