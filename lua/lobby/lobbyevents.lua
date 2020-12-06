-- Decompiled with CoDLUIDecompiler by JariK

Lobby.Events = {}
Lobby.Events.LastPumpTime = nil
Lobby.Events.LastActiveEvents = {}
Lobby.Events.CustomRules = {}
function Lobby.Events.ExecEvents(arg0, arg1)
	local registerVal2, registerVal3, registerVal4 = pairs(arg0)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		Engine.ExecAutoEventRuleSet((index5 .. arg1))
	end
end

function Lobby.Events.GetPlatform()
	if LuaUtils.isPS4 then
		return "ps4"
	else
		if LuaUtils.isXbox then
			return "xbox"
		else
			if LuaUtils.isPC then
				return "pc"
			end
		end
	end
	Engine.PrintError(Enum.consoleLabel.LABEL_LIVE, "Autoevent: Platform not detected.'
")
	return "unknown"
end

function Lobby.Events.IsInCustomRule(arg0)
	if arg0 == nil or arg0 == "" then
		return true
	end
	if Lobby.Events.CustomRules == nil or Lobby.Events.CustomRules[arg0] == nil then
		Engine.PrintError(Enum.consoleLabel.LABEL_LIVE, ("Autoevent: Invalid custom rule '" .. arg0 .. "'
"))
		return false
	end
	return Lobby.Events.CustomRules[arg0]()
end

function Lobby.Events.GetScheduledEvents(arg0, arg1)
	local registerVal4 = Engine.GetTableRowCount("gamedata/events/schedule.csv")
	for index6=0.000000, (registerVal4 - 1.000000), 1.000000 do
		local registerVal10 = Engine.TableGetColumnValueForRow("gamedata/events/schedule.csv", index6, 3.000000)
		local registerVal11 = Engine.TableGetColumnValueForRow("gamedata/events/schedule.csv", index6, 4.000000)
		local registerVal12 = Engine.TableGetColumnValueForRow("gamedata/events/schedule.csv", index6, 5.000000)
		local registerVal13 = Engine.TableGetColumnValueForRow("gamedata/events/schedule.csv", index6, 6.000000)
		local registerVal14 = Lobby.Events.GetPlatform()
		if registerVal10 == "all" or registerVal10 == registerVal14 then
			registerVal14 = Engine.TableGetColumnValueForRow("gamedata/events/schedule.csv", index6, 0.000000)
			local registerVal15 = Engine.TableGetColumnValueForRow("gamedata/events/schedule.csv", index6, 1.000000)
			local registerVal16 = Engine.TableGetColumnValueForRow("gamedata/events/schedule.csv", index6, 2.000000)
			local registerVal17 = tostring(Engine.GetServerUTCTimeStr())
			local registerVal18 = Engine.IsInRange(registerVal17, registerVal15, registerVal16)
			if registerVal14 == "double_vials_cc" and registerVal18 then
				local registerVal19 = tonumber(Engine.TableLookup(nil, "gamedata/store/common/incentives.csv", 2.000000, "bgbcc_tier1", 8.000000))
				local registerVal20 = tonumber(Engine.GetCounterValue("zm_bgb_consumed"))
				if registerVal19 <= registerVal20 then
				else
				end
			end
			if false then
				registerVal19 = Engine.IsDedicatedServer()
				registerVal19 = CoDShared.IsInExperiment(registerVal11, registerVal12)
				if not registerVal19 and registerVal11 ~= nil and registerVal11 == "" or registerVal19 then
					registerVal19 = Lobby.Events.IsInCustomRule(registerVal13)
					if registerVal19 then
						arg0[registerVal14] = true
						if Lobby.Events.LastActiveEvents[registerVal14] == nil then
							local registerVal24 = Engine.GetServerUTCTimeStr()
							Engine.PrintInfo(Enum.consoleLabel.LABEL_LIVE, ("Autoevent: ACTIVATING event '" .. registerVal14 .. "' [" .. registerVal24 .. "]
"))
						end
						registerVal19 = Engine.StructTableLookupString("events", "name", (registerVal14 .. "_ON"), "timer_name")
						if registerVal19 ~= nil and registerVal19 ~= "" then
							local registerVal21 = Engine.GetGlobalModel()
							registerVal20 = Engine.CreateModel(registerVal21, "autoevents")
							registerVal21 = Engine.CreateModel(registerVal20, registerVal19)
							local registerVal25 = Engine.GetSecondsRemainingServer(registerVal16)
							Engine.SetModelValue(registerVal21, LuaUtils.SecondsToTimeRemainingString((registerVal25 + 1.000000)))
							local registerVal22 = Engine.CreateModel(registerVal20, (registerVal19 .. "_red"))
							registerVal25 = Engine.GetSecondsRemainingServer(registerVal16)
							if registerVal25 >= 300.000000 then
							end
							Engine.SetModelValue(registerVal22, true)
						end
					end
				end
			end
			arg1[registerVal14] = true
		end
	end
	return changedOccured
end

function Lobby.Events.GetRotatingEvents(arg0, arg1)
	if Engine.GetCurrentRotatingEvent ~= nil then
		local registerVal3 = Engine.GetCurrentRotatingEvent()
	end
	if registerVal3 == nil or registerVal3 == "" then
		return 
	end
	if registerVal3 ~= "rotation_pause_featured" then
		arg0[registerVal3] = true
	end
	if Lobby.Events.LastActiveEvents[registerVal3] == nil then
		local registerVal9 = Engine.GetServerUTCTimeStr()
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LIVE, ("Autoevent: ACTIVATING event '" .. registerVal3 .. "' [" .. registerVal9 .. "]
"))
	end
	local registerVal5 = Engine.GetTableRowCount("gamedata/events/rotation.csv")
	for index6=0.000000, (registerVal5 - 1.000000), 1.000000 do
		local registerVal10 = Engine.TableGetColumnValueForRow("gamedata/events/rotation.csv", index6, 0.000000)
		arg1[registerVal10] = true
	end
	return changedOccured
end

function Lobby.Events.ParseEvents()
	local registerVal2 = Lobby.Events.GetScheduledEvents({}, {})
	local registerVal3 = Lobby.Events.GetRotatingEvents({}, {})
	Lobby.Events.ExecEvents({}, "_OFF")
	Lobby.Events.ExecEvents({}, "_ON")
	local registerVal5, registerVal6, registerVal7 = pairs(Lobby.Events.LastActiveEvents)
	for index8,value9 in registerVal5, registerVal6, registerVal7 do
		if {}[index8] == nil then
			local registerVal15 = Engine.GetCurrentUTCTimeStr()
			Engine.PrintInfo(Enum.consoleLabel.LABEL_LIVE, ("Autoevent: DEACTIVATING event '" .. index8 .. "' [" .. registerVal15 .. "]
"))
		end
	end
	if registerVal2 ~= true and registerVal3 == true or true == true then
		registerVal6 = Engine.GetGlobalModel()
		registerVal5 = Engine.CreateModel(registerVal6, "autoevents")
		registerVal6 = Engine.CreateModel(registerVal5, "cycled")
		registerVal7 = Engine.SetModelValue(registerVal6, 1.000000)
		if not registerVal7 then
			Engine.ForceNotifyModelSubscriptions(registerVal6)
		end
	end
	Lobby.Events.LastActiveEvents = {}
end

function Lobby.Events.ParseEventsSecure()
	local registerVal0 = Engine.GetLobbyNetworkMode()
	if registerVal0 == Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE then
		Engine.PrintError(Enum.consoleLabel.LABEL_LIVE, "Autoevent: ParseEventsSecure not overridden by the ffotd. Autoevents are disabled.'
")
	end
end

function Lobby.Events.Pump()
	local registerVal0 = Engine.GetLobbyNetworkMode()
	registerVal0 = Engine.IsInGame()
	if registerVal0 ~= Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE or registerVal0 then
		return 
	end
	registerVal0 = Dvar.live_autoEventEnabled:get()
	if not registerVal0 then
		return 
	end
	registerVal0 = Engine.DvarString(nil, "reward_retry_perform_action")
	if registerVal0 == "1" then
		registerVal0 = tonumber(Engine.DvarString(nil, "reward_retry_controller"))
		controller = registerVal0
		registerVal0 = Engine.IsDemonwareFetchingDone(controller)
		LuaUtils.BuyWeaponContractIfNeeded(controller)
		LuaUtils.BuySpecialContractRewardsIfNeeded(controller)
		local registerVal1 = Engine.GetModelForController(controller)
		registerVal0 = Engine.GetModel(registerVal1, "mp_loot_xp_due")
		registerVal1 = Engine.GetModelValue(registerVal0)
		if registerVal0 and registerVal0 and registerVal1 then
			Engine.IncrementCurrency(controller, Enum.InventoryCurrency.INVENTORY_CURRENCY_MP_LOOT_XP, registerVal1)
		end
		Engine.SetDvar("reward_retry_perform_action", "0")
	end
	registerVal0 = Engine.DvarInt(nil, "live_autoEventPumpTime")
	registerVal1 = Engine.milliseconds()
	if registerVal0 < registerVal1 then
		local registerVal2 = Engine.milliseconds()
		local registerVal3 = Dvar.live_autoEventPumpDelay:get()
		Engine.SetDvar("live_autoEventPumpTime", (registerVal2 + registerVal3))
		Lobby.Events.ParseEventsSecure()
		registerVal1 = Engine.milliseconds()
		Lobby.Events.LastPumpTime = registerVal1
	end
end

