-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.Ground.VehicleGround_VignetteBack")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
require("ui.uieditor.widgets.Pregame.Pregame_Client_Small")
require("ui.uieditor.widgets.Pregame.Pregame_Client")
require("ui.uieditor.widgets.Pregame.Pregame_BanProtectSelections")
require("ui.uieditor.widgets.Pregame.Pregame_MainTimer")
require("ui.uieditor.widgets.HUD.PrematchCountdown.PrematchCountdown_BeginsIn")
require("ui.uieditor.widgets.Pregame.Pregame_FactionHeader")
require("ui.uieditor.widgets.Pregame.Pregame_Title_Small")
require("ui.uieditor.widgets.buttonprompt")
local function __FUNC_45F_(arg0, arg1)
	local registerVal6 = Engine.GetLocalClientNum(arg1)
	Engine.SendClientScriptNotify(arg1, ("menu_change" .. registerVal6), "Pregame_Main", "closeToMenu")
	GoBackToMenu(arg0.occludedBy.occludedBy, arg1, "Pregame_Main")
	return 
end

local function __FUNC_5D2_(arg0, arg1)
	local registerVal2 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.CreateModel(registerVal2, "lobbyRoot")
	local registerVal4 = Engine.CreateModel(registerVal3, "Pregame")
	Engine.CreateModel(registerVal4, "stage")
end

local function __FUNC_6DF_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "lobbyRoot.gameClientDataUpdate")
	local function __FUNC_94D_(arg2)
		local registerVal1 = CoD.GetTeamID(arg1)
		if registerVal1 == Enum.team_t.TEAM_SPECTATOR then
			local registerVal2 = CoD.ShoutcasterProfileVarBool(arg1, "shoutcaster_flip_scorepanel")
			if registerVal2 then
			else
			end
		end
		local function __FUNC_C9E_(arg0)
			local registerVal1 = Engine.GetModelValue(Engine.GetModel(arg0, "team"))
			if registerVal1 ~= Enum.team_t.TEAM_ALLIES then
			end
			return true
		end

		local function __FUNC_D57_(arg0)
			local registerVal1 = Engine.GetModelValue(Engine.GetModel(arg0, "team"))
			if registerVal1 == Enum.team_t.TEAM_ALLIES or registerVal1 == Enum.team_t.TEAM_SPECTATOR then
			end
			return true
		end

		arg0.Team1ListSmall.filter = __FUNC_C9E_
		arg0.Team1ListSmall:updateDataSource(true)
		arg0.Team1ListLarge.filter = __FUNC_C9E_
		arg0.Team1ListLarge:updateDataSource(true)
		arg0.Team2ListSmall.filter = __FUNC_D57_
		arg0.Team2ListSmall:updateDataSource(true)
		arg0.Team2ListLarge.filter = __FUNC_D57_
		arg0.Team2ListLarge:updateDataSource(true)
		DataSources.LoadingScreenTeamInfo.getModel(arg1)
	end

	arg0:subscribeToModel(registerVal2, __FUNC_94D_, true)
	local registerVal4 = Engine.GetModelForController(arg1)
	registerVal3 = Engine.CreateModel(registerVal4, "Pregame")
	registerVal4 = Engine.CreateModel(registerVal3, "clientState")
	local function __FUNC_E69_(arg2)
		local registerVal1 = Engine.GetModelValue(arg2)
		local registerVal2 = Engine.GetLobbyPregameState()
		if registerVal1 == Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_SELECTING then
			if registerVal2 == Enum.LobbyPregameState.LOBBY_PREGAME_STATE_ITEM_VOTE then
				OpenOverlay(arg0, "Pregame_ItemVote", arg1)
			else
				if registerVal2 == Enum.LobbyPregameState.LOBBY_PREGAME_STATE_CHARACTER_DRAFT then
					OpenChooseCharacterLoadout(nil, nil, arg1, LuaEnums.CHOOSE_CHARACTER_OPENED_FROM.DRAFT, arg0)
				else
					if registerVal2 == Enum.LobbyPregameState.LOBBY_PREGAME_STATE_CAC_EDIT then
						__FUNC_45F_(arg0, arg1)
						ShowCACContentWarning(arg0, nil, arg1)
					else
						if registerVal2 == Enum.LobbyPregameState.LOBBY_PREGAME_STATE_SCORESTREAK_EDIT then
							__FUNC_45F_(arg0, arg1)
							ShowStreakContentWarning(arg0, nil, arg1)
						else
							if registerVal1 == Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_SELECTED then
								__FUNC_45F_(arg0, arg1)
							else
								if registerVal1 == Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_SELECTION_FORCED then
									local registerVal3 = Engine.GetXUID64(arg1)
									local registerVal4 = Engine.LobbyGetSessionClients(Enum.LobbyModule.LOBBY_MODULE_CLIENT, Enum.LobbyType.LOBBY_TYPE_GAME)
									local registerVal5, registerVal6, registerVal7 = ipairs(registerVal4.sessionClients)
									for index8,value9 in registerVal5, registerVal6, registerVal7 do
										if value9.xuid == registerVal3 and 0.000000 <= value9.characterDraft.characterIndex and 0.000000 <= value9.characterDraft.loadout then
											Engine.SetHeroLoadoutItem(arg1, CoD.CCUtility.customizationMode, value9.characterDraft.characterIndex, value9.characterDraft.loadout)
											Engine.SetHero(arg1, CoD.CCUtility.customizationMode, value9.characterDraft.characterIndex)
										end
									end
									__FUNC_45F_(arg0, arg1)
								else
									if registerVal1 == Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_SELECTION_COMPLETE then
										__FUNC_45F_(arg0, arg1)
									else
										if registerVal1 == Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_RESET then
											CoD.ArenaUtility.ArenaPregameError(arg1)
											registerVal5 = Engine.Localize("MENU_PREGAME_PLAYER_LEFT")
											CoD.OverlayUtility.ShowToast("LobbyCientPregameStateReset", registerVal5, nil, "uie_bookmark")
											__FUNC_45F_(arg0, arg1)
											GoBack(arg0, arg1)
										else
											__FUNC_45F_(arg0, arg1)
											registerVal3 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
											if registerVal1 == Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_END and registerVal3 then
												registerVal5 = {}
												registerVal5.controller = arg1
												registerVal5.withParty = LuaEnums.LEAVE_WITH_PARTY.WITH
												Engine.LobbyVM_CallFunc("GoBack", registerVal5)
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

	arg0:subscribeToModel(registerVal4, __FUNC_E69_)
	local registerVal6 = Engine.GetGlobalModel()
	local registerVal5 = Engine.CreateModel(registerVal6, "Pregame.shutdown")
	local function __FUNC_199D_(arg2)
		CoD.ArenaUtility.ArenaPregameError(arg1)
		__FUNC_45F_(arg0, arg1)
		GoBack(arg0, arg1)
		LuaUtils.UI_ShowErrorMessageDialog(arg1, "EXE_ERR_SERVER_TIMEOUT", "")
	end

	arg0:subscribeToModel(registerVal5, __FUNC_199D_, false)
	local registerVal9 = Engine.GetGlobalModel()
	local registerVal8 = Engine.GetModel(registerVal9, "lobbyRoot.lobbyMainMode")
	local function __FUNC_1AD9_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 ~= Enum.LobbyMainMode.LOBBY_MAINMODE_MP then
			Engine.ComError(Enum.errorCode.ERROR_SOFTRESTART_KEEPDW, "")
		end
	end

	arg0:subscribeToModel(registerVal8, __FUNC_1AD9_)
end

local function __FUNC_1C2C_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Pregame_Main")
	if __FUNC_5D2_ then
		__FUNC_5D2_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Pregame_Main.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.BlackBackground = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setupUIStreamedImage(0.000000)
	local function __FUNC_3AB9_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg0, "MapInfo", "mapImage", __FUNC_3AB9_)
	registerVal1:addElement(registerVal4)
	registerVal1.MapImage = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.300000)
	registerVal1:addElement(registerVal5)
	registerVal1.Darken = registerVal5
	local registerVal6 = CoD.VehicleGround_VignetteBack.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.VignetteBack = registerVal6
	local registerVal7 = CoD.FE_ButtonPanel.new(registerVal1, arg0)
	registerVal7:setLeftRight(false, false, -190.530000, 192.260000)
	registerVal7:setTopBottom(false, false, -145.000000, 149.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setAlpha(0.260000)
	registerVal1:addElement(registerVal7)
	registerVal1.FEButtonPanel0 = registerVal7
	local registerVal8 = LUI.UIList.new(registerVal1, arg0, 0.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal8:makeFocusable()
	registerVal8:setLeftRight(true, false, 72.500000, 497.500000)
	registerVal8:setTopBottom(true, false, 215.000000, 494.000000)
	registerVal8:setWidgetType(CoD.Pregame_Client_Small)
	registerVal8:setVerticalCount(9.000000)
	registerVal8:setSpacing(0.000000)
	registerVal8:setDataSource("PregameClientList")
	registerVal1:addElement(registerVal8)
	registerVal1.Team1ListSmall = registerVal8
	local registerVal9 = LUI.UIList.new(registerVal1, arg0, 9.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal9:makeFocusable()
	registerVal9:setLeftRight(true, false, -488.000000, -63.000000)
	registerVal9:setTopBottom(true, false, 215.000000, 800.000000)
	registerVal9:setWidgetType(CoD.Pregame_Client)
	registerVal9:setVerticalCount(9.000000)
	registerVal9:setSpacing(9.000000)
	registerVal9:setDataSource("PregameClientList")
	registerVal1:addElement(registerVal9)
	registerVal1.Team1ListLarge = registerVal9
	local registerVal10 = LUI.UIList.new(registerVal1, arg0, 0.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal10:makeFocusable()
	registerVal10:setLeftRight(true, false, 798.000000, 1223.000000)
	registerVal10:setTopBottom(true, false, 215.000000, 494.000000)
	registerVal10:setWidgetType(CoD.Pregame_Client_Small)
	registerVal10:setVerticalCount(9.000000)
	registerVal10:setSpacing(0.000000)
	registerVal10:setDataSource("PregameClientList")
	registerVal1:addElement(registerVal10)
	registerVal1.Team2ListSmall = registerVal10
	local registerVal11 = LUI.UIList.new(registerVal1, arg0, 9.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal11:makeFocusable()
	registerVal11:setLeftRight(true, false, 1348.000000, 1773.000000)
	registerVal11:setTopBottom(true, false, 215.000000, 800.000000)
	registerVal11:setWidgetType(CoD.Pregame_Client)
	registerVal11:setVerticalCount(9.000000)
	registerVal11:setSpacing(9.000000)
	registerVal11:setDataSource("PregameClientList")
	registerVal1:addElement(registerVal11)
	registerVal1.Team2ListLarge = registerVal11
	local registerVal12 = CoD.Pregame_BanProtectSelections.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 66.000000, 1212.000000)
	registerVal12:setTopBottom(true, false, 507.000000, 857.000000)
	registerVal1:addElement(registerVal12)
	registerVal1.PregameBanProtectSelections = registerVal12
	local registerVal13 = CoD.Pregame_MainTimer.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 449.470000, 832.260000)
	registerVal13:setTopBottom(true, false, 268.000000, 399.000000)
	registerVal1:addElement(registerVal13)
	registerVal1.PregameMainTimer = registerVal13
	local registerVal14 = CoD.PrematchCountdown_BeginsIn.new(registerVal1, arg0)
	registerVal14:setLeftRight(false, false, -142.500000, 144.500000)
	registerVal14:setTopBottom(true, false, 227.790000, 261.000000)
	registerVal14.FEButtonPanel0:setAlpha(0.570000)
	registerVal14.MatchText:setText(Engine.Localize("MENU_GAME_STARTING"))
	registerVal14.MatchText:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal14.MatchText:setLetterSpacing(1.000000)
	registerVal1:addElement(registerVal14)
	registerVal1.PreGameStates = registerVal14
	local registerVal15 = CoD.Pregame_FactionHeader.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, false, -16.500000, 1340.500000)
	registerVal15:setTopBottom(true, false, 85.190000, 243.940000)
	registerVal1:addElement(registerVal15)
	registerVal1.PregameFactionHeader = registerVal15
	local registerVal16 = CoD.Pregame_Title_Small.new(registerVal1, arg0)
	registerVal16:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal16:setTopBottom(true, false, 33.000000, 85.000000)
	registerVal1:addElement(registerVal16)
	registerVal1.PregameTitleSmall = registerVal16
	local registerVal17 = CoD.buttonprompt.new(registerVal1, arg0)
	registerVal17:setLeftRight(true, false, 66.000000, 280.000000)
	registerVal17:setTopBottom(true, false, 651.000000, 682.000000)
	registerVal17.label:setText(Engine.Localize("MENU_EDIT_CAC"))
	registerVal17.keyshortcut:setText(Engine.Localize("[^3E^7]"))
	local function __FUNC_3B6C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal17:subscribeToGlobalModel(arg0, "Controller", "alt1_button_image", __FUNC_3B6C_)
	local registerVal20 = {}
	local registerVal21 = {}
	registerVal21.stateName = "Hidden"
	local function __FUNC_3C47_(arg1, arg2, arg3)
		local registerVal3 = IsGlobalModelValueEqualTo(arg2, arg0, "lobbyRoot.Pregame.stage", 102.000000)
		return (not registerVal3)
	end

	registerVal21.condition = __FUNC_3C47_
	local registerVal22 = {}
	registerVal22.stateName = "DefaultStatePC"
	local function __FUNC_3CD9_(arg1, arg2, arg3)
		local registerVal3 = IsGamepad(arg0)
		return (not registerVal3)
	end

	registerVal22.condition = __FUNC_3CD9_
	registerVal20 = {registerVal21, registerVal22}
	registerVal17:mergeStateConditions(registerVal20)
	registerVal21 = Engine.GetGlobalModel()
	registerVal20 = Engine.GetModel(registerVal21, "lobbyRoot.Pregame.stage")
	local function __FUNC_3D2B_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.stage"
		registerVal1:updateElementState(registerVal17, registerVal4)
	end

	registerVal17:subscribeToModel(registerVal20, __FUNC_3D2B_)
	registerVal21 = Engine.GetModelForController(arg0)
	registerVal20 = Engine.GetModel(registerVal21, "factions.isCoDCaster")
	local function __FUNC_3E55_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "factions.isCoDCaster"
		registerVal1:updateElementState(registerVal17, registerVal4)
	end

	registerVal17:subscribeToModel(registerVal20, __FUNC_3E55_)
	if registerVal17.m_eventHandlers.input_source_changed then
		local function __FUNC_3F7E_(arg0, arg1)
			if not arg1.menu then
			end
			arg1.menu = registerVal1
			arg0:updateState(arg1)
			return registerVal17.m_eventHandlers.input_source_changed(arg0, arg1)
		end

		registerVal17:registerEventHandler("input_source_changed", __FUNC_3F7E_)
	else
		registerVal17:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal21 = Engine.GetModelForController(arg0)
	registerVal20 = Engine.GetModel(registerVal21, "LastInput")
	local function __FUNC_4007_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		registerVal1:updateElementState(registerVal17, registerVal4)
	end

	registerVal17:subscribeToModel(registerVal20, __FUNC_4007_)
	registerVal1:addElement(registerVal17)
	registerVal1.EditButtonPrompt = registerVal17
	local registerVal18 = {}
	registerVal18.left = registerVal9
	registerVal18.right = registerVal10
	registerVal18.down = registerVal12
	registerVal8.navigation = registerVal18
	registerVal18 = {}
	registerVal18.right = registerVal12
	registerVal9.navigation = registerVal18
	registerVal18 = {}
	registerVal18.left = registerVal8
	registerVal18.right = registerVal11
	registerVal18.down = registerVal12
	registerVal10.navigation = registerVal18
	registerVal18 = {}
	registerVal18.left = registerVal10
	registerVal11.navigation = registerVal18
	registerVal18 = {}
	registerVal18.left = registerVal9
	local registerVal19 = {}
	registerVal19 = {registerVal8, registerVal10}
	registerVal18.up = registerVal19
	registerVal18.right = registerVal11
	registerVal12.navigation = registerVal18
	registerVal18 = {}
	registerVal19 = {}
	local function __FUNC_4123_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal14:completeAnimation()
		registerVal14.MatchText:completeAnimation()
		registerVal1.PreGameStates.MatchText:setText(Engine.Localize("0"))
		registerVal1.clipFinished(registerVal14, {})
		registerVal17:completeAnimation()
		registerVal1.EditButtonPrompt:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_4123_
	registerVal18.DefaultState = registerVal19
	registerVal19 = {}
	local function __FUNC_430C_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal14:completeAnimation()
		registerVal14.MatchText:completeAnimation()
		registerVal1.PreGameStates.MatchText:setAlpha(0.950000)
		registerVal1.PreGameStates.MatchText:setText(Engine.Localize("MENU_BAN_PROTECT_VOTING_CAPS"))
		registerVal1.clipFinished(registerVal14, {})
		registerVal17:completeAnimation()
		registerVal1.EditButtonPrompt:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_430C_
	local function __FUNC_4540_()
		registerVal1:setupElementClipCounter(7.000000)
		local function __FUNC_4B41_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -425.000000, 0.000000)
			arg0:setTopBottom(true, false, 215.000000, 684.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal1.Team1ListSmall:setLeftRight(true, false, 72.500000, 497.500000)
		registerVal1.Team1ListSmall:setTopBottom(true, false, 215.000000, 484.000000)
		registerVal1.Team1ListSmall:setAlpha(1.000000)
		__FUNC_4B41_(registerVal8, {})
		local function __FUNC_4D60_(arg0, arg1)
			local function __FUNC_4EB8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 78.500000, 503.500000)
				arg0:setTopBottom(true, false, 215.000000, 735.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4EB8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4EB8_)
		end

		registerVal9:completeAnimation()
		registerVal1.Team1ListLarge:setLeftRight(true, false, -466.500000, -41.500000)
		registerVal1.Team1ListLarge:setTopBottom(true, false, 215.000000, 735.000000)
		registerVal1.Team1ListLarge:setAlpha(0.000000)
		__FUNC_4D60_(registerVal9, {})
		local function __FUNC_50DD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 1280.000000, 1705.000000)
			arg0:setTopBottom(true, false, 215.000000, 684.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal1.Team2ListSmall:setLeftRight(true, false, 798.000000, 1223.000000)
		registerVal1.Team2ListSmall:setTopBottom(true, false, 215.000000, 484.000000)
		registerVal1.Team2ListSmall:setAlpha(1.000000)
		__FUNC_50DD_(registerVal10, {})
		local function __FUNC_5301_(arg0, arg1)
			local function __FUNC_5458_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 798.500000, 1223.500000)
				arg0:setTopBottom(true, false, 215.000000, 735.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_5458_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5458_)
		end

		registerVal11:completeAnimation()
		registerVal1.Team2ListLarge:setLeftRight(true, false, 1340.500000, 1765.500000)
		registerVal1.Team2ListLarge:setTopBottom(true, false, 215.000000, 735.000000)
		registerVal1.Team2ListLarge:setAlpha(0.000000)
		__FUNC_5301_(registerVal11, {})
		local function __FUNC_567D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 66.000000, 1212.000000)
			arg0:setTopBottom(true, false, 743.000000, 1093.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal1.PregameBanProtectSelections:setLeftRight(true, false, 66.000000, 1212.000000)
		registerVal1.PregameBanProtectSelections:setTopBottom(true, false, 507.000000, 857.000000)
		registerVal1.PregameBanProtectSelections:setAlpha(1.000000)
		__FUNC_567D_(registerVal12, {})
		local function __FUNC_58A1_(arg0, arg1)
			local function __FUNC_59F8_(arg0, arg1)
				local function __FUNC_5BE7_(arg0, arg1)
					local function __FUNC_5E27_(arg0, arg1)
						local function __FUNC_5F7C_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
								arg0.MatchText:beginAnimation("subkeyframe", 139.000000, false, false, CoD.TweenType.Linear)
							end
							arg0.MatchText:setAlpha(0.950000)
							arg0.MatchText:setText(Engine.Localize("MENU_SPECIALIST_DRAFT_CAPS"))
							if arg1.interrupted then
								registerVal1.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_5F7C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5F7C_)
					end

					if arg1.interrupted then
						__FUNC_5E27_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0.MatchText:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0.MatchText:setText(Engine.Localize("MENU_SPECIALIST_DRAFT_CAPS"))
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E27_)
				end

				if arg1.interrupted then
					__FUNC_5BE7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
				arg0.MatchText:beginAnimation("subkeyframe", 139.000000, false, false, CoD.TweenType.Linear)
				arg0.MatchText:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5BE7_)
			end

			if arg1.interrupted then
				__FUNC_59F8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_59F8_)
		end

		registerVal14:completeAnimation()
		registerVal14.MatchText:completeAnimation()
		registerVal1.PreGameStates.MatchText:setAlpha(0.950000)
		registerVal1.PreGameStates.MatchText:setText(Engine.Localize("MENU_BAN_PROTECT_VOTING_CAPS"))
		__FUNC_58A1_(registerVal14, {})
		registerVal17:completeAnimation()
		registerVal1.EditButtonPrompt:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal17, {})
	end

	registerVal19.SpecialistDraft = __FUNC_4540_
	local function __FUNC_6228_()
		registerVal1:setupElementClipCounter(10.000000)
		local function __FUNC_6A91_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -191.350000, 191.440000)
			arg0:setTopBottom(false, false, -254.920000, 324.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal1.FEButtonPanel0:setLeftRight(false, false, -190.530000, 192.260000)
		registerVal1.FEButtonPanel0:setTopBottom(false, false, -145.000000, 149.000000)
		__FUNC_6A91_(registerVal7, {})
		local function __FUNC_6C92_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -425.000000, 0.000000)
			arg0:setTopBottom(true, false, 215.000000, 684.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal1.Team1ListSmall:setLeftRight(true, false, 72.500000, 497.500000)
		registerVal1.Team1ListSmall:setTopBottom(true, false, 215.000000, 484.000000)
		registerVal1.Team1ListSmall:setAlpha(1.000000)
		__FUNC_6C92_(registerVal8, {})
		local function __FUNC_6EB0_(arg0, arg1)
			local function __FUNC_7008_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 78.500000, 503.500000)
				arg0:setTopBottom(true, false, 100.000000, 720.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_7008_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7008_)
		end

		registerVal9:completeAnimation()
		registerVal1.Team1ListLarge:setLeftRight(true, false, -466.500000, -41.500000)
		registerVal1.Team1ListLarge:setTopBottom(true, false, 100.000000, 720.000000)
		registerVal1.Team1ListLarge:setAlpha(0.000000)
		__FUNC_6EB0_(registerVal9, {})
		local function __FUNC_722D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 1280.000000, 1705.000000)
			arg0:setTopBottom(true, false, 215.000000, 684.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal1.Team2ListSmall:setLeftRight(true, false, 798.000000, 1223.000000)
		registerVal1.Team2ListSmall:setTopBottom(true, false, 215.000000, 484.000000)
		registerVal1.Team2ListSmall:setAlpha(1.000000)
		__FUNC_722D_(registerVal10, {})
		local function __FUNC_7451_(arg0, arg1)
			local function __FUNC_75A8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 798.500000, 1223.500000)
				arg0:setTopBottom(true, false, 100.000000, 720.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_75A8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_75A8_)
		end

		registerVal11:completeAnimation()
		registerVal1.Team2ListLarge:setLeftRight(true, false, 1340.500000, 1765.500000)
		registerVal1.Team2ListLarge:setTopBottom(true, false, 100.000000, 720.000000)
		registerVal1.Team2ListLarge:setAlpha(0.000000)
		__FUNC_7451_(registerVal11, {})
		local function __FUNC_77CD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 66.000000, 1212.000000)
			arg0:setTopBottom(true, false, 743.000000, 1093.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal1.PregameBanProtectSelections:setLeftRight(true, false, 66.000000, 1212.000000)
		registerVal1.PregameBanProtectSelections:setTopBottom(true, false, 507.000000, 857.000000)
		registerVal1.PregameBanProtectSelections:setAlpha(1.000000)
		__FUNC_77CD_(registerVal12, {})
		local function __FUNC_79F1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 448.600000, 831.400000)
			arg0:setTopBottom(true, false, 157.430000, 288.430000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal1.PregameMainTimer:setLeftRight(true, false, 449.470000, 832.260000)
		registerVal1.PregameMainTimer:setTopBottom(true, false, 268.000000, 399.000000)
		__FUNC_79F1_(registerVal13, {})
		local function __FUNC_7BF2_(arg0, arg1)
			local function __FUNC_7DB8_(arg0, arg1)
				local function __FUNC_8017_(arg0, arg1)
					local function __FUNC_82C7_(arg0, arg1)
						local function __FUNC_841C_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
								arg0.MatchText:beginAnimation("subkeyframe", 139.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(false, false, -143.370000, 143.630000)
							arg0:setTopBottom(true, false, 117.220000, 150.430000)
							arg0.MatchText:setAlpha(0.950000)
							arg0.MatchText:setText(Engine.Localize("MENU_SPECIALIST_DRAFT_CAPS"))
							if arg1.interrupted then
								registerVal1.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_841C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_841C_)
					end

					if arg1.interrupted then
						__FUNC_82C7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0.MatchText:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, false, -143.370000, 143.630000)
					arg0:setTopBottom(true, false, 117.220000, 150.430000)
					arg0.MatchText:setText(Engine.Localize("MENU_SPECIALIST_DRAFT_CAPS"))
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_82C7_)
				end

				if arg1.interrupted then
					__FUNC_8017_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
				arg0.MatchText:beginAnimation("subkeyframe", 139.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -143.340000, 143.660000)
				arg0:setTopBottom(true, false, 120.910000, 154.120000)
				arg0.MatchText:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8017_)
			end

			if arg1.interrupted then
				__FUNC_7DB8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -142.930000, 144.070000)
			arg0:setTopBottom(true, false, 172.500000, 205.720000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7DB8_)
		end

		registerVal14:completeAnimation()
		registerVal14.MatchText:completeAnimation()
		registerVal1.PreGameStates:setLeftRight(false, false, -142.500000, 144.500000)
		registerVal1.PreGameStates:setTopBottom(true, false, 227.790000, 261.000000)
		registerVal1.PreGameStates.MatchText:setAlpha(0.950000)
		registerVal1.PreGameStates.MatchText:setText(Engine.Localize("MENU_BAN_PROTECT_VOTING_CAPS"))
		__FUNC_7BF2_(registerVal14, {})
		local function __FUNC_8738_(arg0, arg1)
			local function __FUNC_8923_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, -9.000000, 1348.000000)
				arg0:setTopBottom(true, false, -291.320000, -132.570000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_8923_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -12.500000, 1344.500000)
			arg0:setTopBottom(true, false, -115.610000, 43.140000)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8923_)
		end

		registerVal15:completeAnimation()
		registerVal1.PregameFactionHeader:setLeftRight(true, false, -16.500000, 1340.500000)
		registerVal1.PregameFactionHeader:setTopBottom(true, false, 85.190000, 243.940000)
		registerVal1.PregameFactionHeader:setAlpha(1.000000)
		__FUNC_8738_(registerVal15, {})
		registerVal17:completeAnimation()
		registerVal1.EditButtonPrompt:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal17, {})
	end

	registerVal19.SpecialistDraft_9 = __FUNC_6228_
	local function __FUNC_8B45_()
		registerVal1:setupElementClipCounter(7.000000)
		local function __FUNC_91A5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -425.000000, 0.000000)
			arg0:setTopBottom(true, false, 215.000000, 684.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal1.Team1ListSmall:setLeftRight(true, false, 72.500000, 497.500000)
		registerVal1.Team1ListSmall:setTopBottom(true, false, 215.000000, 484.000000)
		registerVal1.Team1ListSmall:setAlpha(1.000000)
		__FUNC_91A5_(registerVal8, {})
		local function __FUNC_93C4_(arg0, arg1)
			local function __FUNC_951C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 78.500000, 503.500000)
				arg0:setTopBottom(true, false, 215.000000, 735.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_951C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_951C_)
		end

		registerVal9:completeAnimation()
		registerVal1.Team1ListLarge:setLeftRight(true, false, -466.500000, -41.500000)
		registerVal1.Team1ListLarge:setTopBottom(true, false, 215.000000, 735.000000)
		registerVal1.Team1ListLarge:setAlpha(0.000000)
		__FUNC_93C4_(registerVal9, {})
		local function __FUNC_9741_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 1280.000000, 1705.000000)
			arg0:setTopBottom(true, false, 215.000000, 684.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal1.Team2ListSmall:setLeftRight(true, false, 798.000000, 1223.000000)
		registerVal1.Team2ListSmall:setTopBottom(true, false, 215.000000, 484.000000)
		registerVal1.Team2ListSmall:setAlpha(1.000000)
		__FUNC_9741_(registerVal10, {})
		local function __FUNC_9965_(arg0, arg1)
			local function __FUNC_9ABC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 798.500000, 1223.500000)
				arg0:setTopBottom(true, false, 215.000000, 735.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_9ABC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9ABC_)
		end

		registerVal11:completeAnimation()
		registerVal1.Team2ListLarge:setLeftRight(true, false, 1340.500000, 1765.500000)
		registerVal1.Team2ListLarge:setTopBottom(true, false, 215.000000, 735.000000)
		registerVal1.Team2ListLarge:setAlpha(0.000000)
		__FUNC_9965_(registerVal11, {})
		local function __FUNC_9CE1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 66.000000, 1212.000000)
			arg0:setTopBottom(true, false, 743.000000, 1093.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal1.PregameBanProtectSelections:setLeftRight(true, false, 66.000000, 1212.000000)
		registerVal1.PregameBanProtectSelections:setTopBottom(true, false, 507.000000, 857.000000)
		registerVal1.PregameBanProtectSelections:setAlpha(1.000000)
		__FUNC_9CE1_(registerVal12, {})
		local function __FUNC_9F05_(arg0, arg1)
			local function __FUNC_A05C_(arg0, arg1)
				local function __FUNC_A24B_(arg0, arg1)
					local function __FUNC_A483_(arg0, arg1)
						local function __FUNC_A5D8_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
								arg0.MatchText:beginAnimation("subkeyframe", 139.000000, false, false, CoD.TweenType.Linear)
							end
							arg0.MatchText:setAlpha(0.950000)
							arg0.MatchText:setText(Engine.Localize("MENU_EDIT_CAC_CAPS"))
							if arg1.interrupted then
								registerVal1.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_A5D8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A5D8_)
					end

					if arg1.interrupted then
						__FUNC_A483_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0.MatchText:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0.MatchText:setText(Engine.Localize("MENU_EDIT_CAC_CAPS"))
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A483_)
				end

				if arg1.interrupted then
					__FUNC_A24B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
				arg0.MatchText:beginAnimation("subkeyframe", 139.000000, false, false, CoD.TweenType.Linear)
				arg0.MatchText:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A24B_)
			end

			if arg1.interrupted then
				__FUNC_A05C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A05C_)
		end

		registerVal14:completeAnimation()
		registerVal14.MatchText:completeAnimation()
		registerVal1.PreGameStates.MatchText:setAlpha(0.950000)
		registerVal1.PreGameStates.MatchText:setText(Engine.Localize("MENU_BAN_PROTECT_VOTING_CAPS"))
		__FUNC_9F05_(registerVal14, {})
		local function __FUNC_A87C_(arg0, arg1)
			local function __FUNC_A9D4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
					arg0.label:beginAnimation("subkeyframe", 199.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				arg0.label:setText(Engine.Localize("MENU_EDIT_CAC"))
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_A9D4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A9D4_)
		end

		registerVal17:completeAnimation()
		registerVal17.label:completeAnimation()
		registerVal1.EditButtonPrompt:setAlpha(0.000000)
		registerVal1.EditButtonPrompt.label:setText(Engine.Localize("MENU_EDIT_CAC"))
		__FUNC_A87C_(registerVal17, {})
	end

	registerVal19.CACEdit = __FUNC_8B45_
	local function __FUNC_AC63_()
		registerVal1:setupElementClipCounter(10.000000)
		local function __FUNC_B529_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -191.350000, 191.440000)
			arg0:setTopBottom(false, false, -254.920000, 324.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal1.FEButtonPanel0:setLeftRight(false, false, -190.530000, 192.260000)
		registerVal1.FEButtonPanel0:setTopBottom(false, false, -145.000000, 149.000000)
		__FUNC_B529_(registerVal7, {})
		local function __FUNC_B72A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -425.000000, 0.000000)
			arg0:setTopBottom(true, false, 215.000000, 684.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal1.Team1ListSmall:setLeftRight(true, false, 72.500000, 497.500000)
		registerVal1.Team1ListSmall:setTopBottom(true, false, 215.000000, 484.000000)
		registerVal1.Team1ListSmall:setAlpha(1.000000)
		__FUNC_B72A_(registerVal8, {})
		local function __FUNC_B948_(arg0, arg1)
			local function __FUNC_BAA0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 78.500000, 503.500000)
				arg0:setTopBottom(true, false, 100.000000, 720.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_BAA0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BAA0_)
		end

		registerVal9:completeAnimation()
		registerVal1.Team1ListLarge:setLeftRight(true, false, -466.500000, -41.500000)
		registerVal1.Team1ListLarge:setTopBottom(true, false, 100.000000, 720.000000)
		registerVal1.Team1ListLarge:setAlpha(0.000000)
		__FUNC_B948_(registerVal9, {})
		local function __FUNC_BCC5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 1280.000000, 1705.000000)
			arg0:setTopBottom(true, false, 215.000000, 684.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal1.Team2ListSmall:setLeftRight(true, false, 798.000000, 1223.000000)
		registerVal1.Team2ListSmall:setTopBottom(true, false, 215.000000, 484.000000)
		registerVal1.Team2ListSmall:setAlpha(1.000000)
		__FUNC_BCC5_(registerVal10, {})
		local function __FUNC_BEE9_(arg0, arg1)
			local function __FUNC_C040_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 798.500000, 1223.500000)
				arg0:setTopBottom(true, false, 100.000000, 720.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_C040_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C040_)
		end

		registerVal11:completeAnimation()
		registerVal1.Team2ListLarge:setLeftRight(true, false, 1340.500000, 1765.500000)
		registerVal1.Team2ListLarge:setTopBottom(true, false, 100.000000, 720.000000)
		registerVal1.Team2ListLarge:setAlpha(0.000000)
		__FUNC_BEE9_(registerVal11, {})
		local function __FUNC_C265_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 66.000000, 1212.000000)
			arg0:setTopBottom(true, false, 743.000000, 1093.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal1.PregameBanProtectSelections:setLeftRight(true, false, 66.000000, 1212.000000)
		registerVal1.PregameBanProtectSelections:setTopBottom(true, false, 507.000000, 857.000000)
		registerVal1.PregameBanProtectSelections:setAlpha(1.000000)
		__FUNC_C265_(registerVal12, {})
		local function __FUNC_C489_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 448.600000, 831.400000)
			arg0:setTopBottom(true, false, 157.430000, 288.430000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal1.PregameMainTimer:setLeftRight(true, false, 449.470000, 832.260000)
		registerVal1.PregameMainTimer:setTopBottom(true, false, 268.000000, 399.000000)
		__FUNC_C489_(registerVal13, {})
		local function __FUNC_C68A_(arg0, arg1)
			local function __FUNC_C850_(arg0, arg1)
				local function __FUNC_CAAF_(arg0, arg1)
					local function __FUNC_CD57_(arg0, arg1)
						local function __FUNC_CEAC_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
								arg0.MatchText:beginAnimation("subkeyframe", 139.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(false, false, -143.370000, 143.630000)
							arg0:setTopBottom(true, false, 117.220000, 150.430000)
							arg0.MatchText:setAlpha(0.950000)
							arg0.MatchText:setText(Engine.Localize("MENU_EDIT_CAC_CAPS"))
							if arg1.interrupted then
								registerVal1.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_CEAC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CEAC_)
					end

					if arg1.interrupted then
						__FUNC_CD57_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0.MatchText:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, false, -143.370000, 143.630000)
					arg0:setTopBottom(true, false, 117.220000, 150.430000)
					arg0.MatchText:setText(Engine.Localize("MENU_EDIT_CAC_CAPS"))
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CD57_)
				end

				if arg1.interrupted then
					__FUNC_CAAF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
				arg0.MatchText:beginAnimation("subkeyframe", 139.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -143.340000, 143.660000)
				arg0:setTopBottom(true, false, 120.910000, 154.120000)
				arg0.MatchText:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CAAF_)
			end

			if arg1.interrupted then
				__FUNC_C850_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -142.930000, 144.070000)
			arg0:setTopBottom(true, false, 172.500000, 205.720000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C850_)
		end

		registerVal14:completeAnimation()
		registerVal14.MatchText:completeAnimation()
		registerVal1.PreGameStates:setLeftRight(false, false, -142.500000, 144.500000)
		registerVal1.PreGameStates:setTopBottom(true, false, 227.790000, 261.000000)
		registerVal1.PreGameStates.MatchText:setAlpha(0.950000)
		registerVal1.PreGameStates.MatchText:setText(Engine.Localize("MENU_BAN_PROTECT_VOTING_CAPS"))
		__FUNC_C68A_(registerVal14, {})
		local function __FUNC_D1C0_(arg0, arg1)
			local function __FUNC_D3AB_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, -9.000000, 1348.000000)
				arg0:setTopBottom(true, false, -291.320000, -132.570000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_D3AB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -12.500000, 1344.500000)
			arg0:setTopBottom(true, false, -115.610000, 43.140000)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D3AB_)
		end

		registerVal15:completeAnimation()
		registerVal1.PregameFactionHeader:setLeftRight(true, false, -16.500000, 1340.500000)
		registerVal1.PregameFactionHeader:setTopBottom(true, false, 85.190000, 243.940000)
		registerVal1.PregameFactionHeader:setAlpha(1.000000)
		__FUNC_D1C0_(registerVal15, {})
		local function __FUNC_D5CD_(arg0, arg1)
			local function __FUNC_D724_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
					arg0.label:beginAnimation("subkeyframe", 199.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				arg0.label:setText(Engine.Localize("MENU_EDIT_CAC"))
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_D724_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D724_)
		end

		registerVal17:completeAnimation()
		registerVal17.label:completeAnimation()
		registerVal1.EditButtonPrompt:setAlpha(0.000000)
		registerVal1.EditButtonPrompt.label:setText(Engine.Localize("MENU_EDIT_CAC"))
		__FUNC_D5CD_(registerVal17, {})
	end

	registerVal19.CACEdit_9 = __FUNC_AC63_
	local function __FUNC_D9B3_()
		registerVal1:setupElementClipCounter(7.000000)
		local function __FUNC_E01A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -425.000000, 0.000000)
			arg0:setTopBottom(true, false, 215.000000, 684.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal1.Team1ListSmall:setLeftRight(true, false, 72.500000, 497.500000)
		registerVal1.Team1ListSmall:setTopBottom(true, false, 215.000000, 484.000000)
		registerVal1.Team1ListSmall:setAlpha(1.000000)
		__FUNC_E01A_(registerVal8, {})
		local function __FUNC_E238_(arg0, arg1)
			local function __FUNC_E390_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 78.500000, 503.500000)
				arg0:setTopBottom(true, false, 215.000000, 735.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_E390_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E390_)
		end

		registerVal9:completeAnimation()
		registerVal1.Team1ListLarge:setLeftRight(true, false, -466.500000, -41.500000)
		registerVal1.Team1ListLarge:setTopBottom(true, false, 215.000000, 735.000000)
		registerVal1.Team1ListLarge:setAlpha(0.000000)
		__FUNC_E238_(registerVal9, {})
		local function __FUNC_E5B5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 1280.000000, 1705.000000)
			arg0:setTopBottom(true, false, 215.000000, 684.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal1.Team2ListSmall:setLeftRight(true, false, 798.000000, 1223.000000)
		registerVal1.Team2ListSmall:setTopBottom(true, false, 215.000000, 484.000000)
		registerVal1.Team2ListSmall:setAlpha(1.000000)
		__FUNC_E5B5_(registerVal10, {})
		local function __FUNC_E7D9_(arg0, arg1)
			local function __FUNC_E930_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 798.500000, 1223.500000)
				arg0:setTopBottom(true, false, 215.000000, 735.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_E930_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E930_)
		end

		registerVal11:completeAnimation()
		registerVal1.Team2ListLarge:setLeftRight(true, false, 1340.500000, 1765.500000)
		registerVal1.Team2ListLarge:setTopBottom(true, false, 215.000000, 735.000000)
		registerVal1.Team2ListLarge:setAlpha(0.000000)
		__FUNC_E7D9_(registerVal11, {})
		local function __FUNC_EB55_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 66.000000, 1212.000000)
			arg0:setTopBottom(true, false, 743.000000, 1093.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal1.PregameBanProtectSelections:setLeftRight(true, false, 66.000000, 1212.000000)
		registerVal1.PregameBanProtectSelections:setTopBottom(true, false, 507.000000, 857.000000)
		registerVal1.PregameBanProtectSelections:setAlpha(1.000000)
		__FUNC_EB55_(registerVal12, {})
		local function __FUNC_ED79_(arg0, arg1)
			local function __FUNC_EED0_(arg0, arg1)
				local function __FUNC_F0BF_(arg0, arg1)
					local function __FUNC_F300_(arg0, arg1)
						local function __FUNC_F458_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
								arg0.MatchText:beginAnimation("subkeyframe", 139.000000, false, false, CoD.TweenType.Linear)
							end
							arg0.MatchText:setAlpha(0.950000)
							arg0.MatchText:setText(Engine.Localize("MENU_EDIT_SCORESTREAKS_CAPS"))
							if arg1.interrupted then
								registerVal1.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_F458_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F458_)
					end

					if arg1.interrupted then
						__FUNC_F300_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0.MatchText:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0.MatchText:setText(Engine.Localize("MENU_EDIT_SCORESTREAKS_CAPS"))
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F300_)
				end

				if arg1.interrupted then
					__FUNC_F0BF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
				arg0.MatchText:beginAnimation("subkeyframe", 139.000000, false, false, CoD.TweenType.Linear)
				arg0.MatchText:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F0BF_)
			end

			if arg1.interrupted then
				__FUNC_EED0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EED0_)
		end

		registerVal14:completeAnimation()
		registerVal14.MatchText:completeAnimation()
		registerVal1.PreGameStates.MatchText:setAlpha(0.950000)
		registerVal1.PreGameStates.MatchText:setText(Engine.Localize("MENU_BAN_PROTECT_VOTING_CAPS"))
		__FUNC_ED79_(registerVal14, {})
		local function __FUNC_F705_(arg0, arg1)
			local function __FUNC_F85C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
					arg0.label:beginAnimation("subkeyframe", 199.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				arg0.label:setText(Engine.Localize("MENU_EDIT_SCORESTREAKS"))
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_F85C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F85C_)
		end

		registerVal17:completeAnimation()
		registerVal17.label:completeAnimation()
		registerVal1.EditButtonPrompt:setAlpha(0.000000)
		registerVal1.EditButtonPrompt.label:setText(Engine.Localize("MENU_EDIT_SCORESTREAKS"))
		__FUNC_F705_(registerVal17, {})
	end

	registerVal19.StreakEdit = __FUNC_D9B3_
	local function __FUNC_FAF4_()
		registerVal1:setupElementClipCounter(10.000000)
		local function __FUNC_103C6_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -191.350000, 191.440000)
			arg0:setTopBottom(false, false, -254.920000, 324.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal1.FEButtonPanel0:setLeftRight(false, false, -190.530000, 192.260000)
		registerVal1.FEButtonPanel0:setTopBottom(false, false, -145.000000, 149.000000)
		__FUNC_103C6_(registerVal7, {})
		local function __FUNC_105C6_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -425.000000, 0.000000)
			arg0:setTopBottom(true, false, 215.000000, 684.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal1.Team1ListSmall:setLeftRight(true, false, 72.500000, 497.500000)
		registerVal1.Team1ListSmall:setTopBottom(true, false, 215.000000, 484.000000)
		registerVal1.Team1ListSmall:setAlpha(1.000000)
		__FUNC_105C6_(registerVal8, {})
		local function __FUNC_107E4_(arg0, arg1)
			local function __FUNC_1093C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 78.500000, 503.500000)
				arg0:setTopBottom(true, false, 100.000000, 720.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1093C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1093C_)
		end

		registerVal9:completeAnimation()
		registerVal1.Team1ListLarge:setLeftRight(true, false, -466.500000, -41.500000)
		registerVal1.Team1ListLarge:setTopBottom(true, false, 100.000000, 720.000000)
		registerVal1.Team1ListLarge:setAlpha(0.000000)
		__FUNC_107E4_(registerVal9, {})
		local function __FUNC_10B61_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 1280.000000, 1705.000000)
			arg0:setTopBottom(true, false, 215.000000, 684.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal1.Team2ListSmall:setLeftRight(true, false, 798.000000, 1223.000000)
		registerVal1.Team2ListSmall:setTopBottom(true, false, 215.000000, 484.000000)
		registerVal1.Team2ListSmall:setAlpha(1.000000)
		__FUNC_10B61_(registerVal10, {})
		local function __FUNC_10D85_(arg0, arg1)
			local function __FUNC_10EDC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 798.500000, 1223.500000)
				arg0:setTopBottom(true, false, 100.000000, 720.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_10EDC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10EDC_)
		end

		registerVal11:completeAnimation()
		registerVal1.Team2ListLarge:setLeftRight(true, false, 1340.500000, 1765.500000)
		registerVal1.Team2ListLarge:setTopBottom(true, false, 100.000000, 720.000000)
		registerVal1.Team2ListLarge:setAlpha(0.000000)
		__FUNC_10D85_(registerVal11, {})
		local function __FUNC_11101_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 66.000000, 1212.000000)
			arg0:setTopBottom(true, false, 743.000000, 1093.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal1.PregameBanProtectSelections:setLeftRight(true, false, 66.000000, 1212.000000)
		registerVal1.PregameBanProtectSelections:setTopBottom(true, false, 507.000000, 857.000000)
		registerVal1.PregameBanProtectSelections:setAlpha(1.000000)
		__FUNC_11101_(registerVal12, {})
		local function __FUNC_11325_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 448.600000, 831.400000)
			arg0:setTopBottom(true, false, 157.430000, 288.430000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal1.PregameMainTimer:setLeftRight(true, false, 449.470000, 832.260000)
		registerVal1.PregameMainTimer:setTopBottom(true, false, 268.000000, 399.000000)
		__FUNC_11325_(registerVal13, {})
		local function __FUNC_11526_(arg0, arg1)
			local function __FUNC_116EC_(arg0, arg1)
				local function __FUNC_1194B_(arg0, arg1)
					local function __FUNC_11BFC_(arg0, arg1)
						local function __FUNC_11D54_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
								arg0.MatchText:beginAnimation("subkeyframe", 139.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(false, false, -143.370000, 143.630000)
							arg0:setTopBottom(true, false, 117.220000, 150.430000)
							arg0.MatchText:setAlpha(0.950000)
							arg0.MatchText:setText(Engine.Localize("MENU_EDIT_SCORESTREAKS_CAPS"))
							if arg1.interrupted then
								registerVal1.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_11D54_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11D54_)
					end

					if arg1.interrupted then
						__FUNC_11BFC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0.MatchText:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, false, -143.370000, 143.630000)
					arg0:setTopBottom(true, false, 117.220000, 150.430000)
					arg0.MatchText:setText(Engine.Localize("MENU_EDIT_SCORESTREAKS_CAPS"))
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11BFC_)
				end

				if arg1.interrupted then
					__FUNC_1194B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
				arg0.MatchText:beginAnimation("subkeyframe", 139.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -143.340000, 143.660000)
				arg0:setTopBottom(true, false, 120.910000, 154.120000)
				arg0.MatchText:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1194B_)
			end

			if arg1.interrupted then
				__FUNC_116EC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -142.930000, 144.070000)
			arg0:setTopBottom(true, false, 172.500000, 205.720000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_116EC_)
		end

		registerVal14:completeAnimation()
		registerVal14.MatchText:completeAnimation()
		registerVal1.PreGameStates:setLeftRight(false, false, -142.500000, 144.500000)
		registerVal1.PreGameStates:setTopBottom(true, false, 227.790000, 261.000000)
		registerVal1.PreGameStates.MatchText:setAlpha(0.950000)
		registerVal1.PreGameStates.MatchText:setText(Engine.Localize("MENU_BAN_PROTECT_VOTING_CAPS"))
		__FUNC_11526_(registerVal14, {})
		local function __FUNC_12071_(arg0, arg1)
			local function __FUNC_1225B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, -9.000000, 1348.000000)
				arg0:setTopBottom(true, false, -291.320000, -132.570000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1225B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -12.500000, 1344.500000)
			arg0:setTopBottom(true, false, -115.610000, 43.140000)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1225B_)
		end

		registerVal15:completeAnimation()
		registerVal1.PregameFactionHeader:setLeftRight(true, false, -16.500000, 1340.500000)
		registerVal1.PregameFactionHeader:setTopBottom(true, false, 85.190000, 243.940000)
		registerVal1.PregameFactionHeader:setAlpha(1.000000)
		__FUNC_12071_(registerVal15, {})
		local function __FUNC_1247D_(arg0, arg1)
			local function __FUNC_125D4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
					arg0.label:beginAnimation("subkeyframe", 199.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				arg0.label:setText(Engine.Localize("MENU_EDIT_SCORESTREAKS"))
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_125D4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_125D4_)
		end

		registerVal17:completeAnimation()
		registerVal17.label:completeAnimation()
		registerVal1.EditButtonPrompt:setAlpha(0.000000)
		registerVal1.EditButtonPrompt.label:setText(Engine.Localize("MENU_EDIT_SCORESTREAKS"))
		__FUNC_1247D_(registerVal17, {})
	end

	registerVal19.StreakEdit_9 = __FUNC_FAF4_
	local function __FUNC_1286C_()
		registerVal1:setupElementClipCounter(7.000000)
		local function __FUNC_12E6D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -425.000000, 0.000000)
			arg0:setTopBottom(true, false, 215.000000, 684.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal1.Team1ListSmall:setLeftRight(true, false, 72.500000, 497.500000)
		registerVal1.Team1ListSmall:setTopBottom(true, false, 215.000000, 484.000000)
		registerVal1.Team1ListSmall:setAlpha(1.000000)
		__FUNC_12E6D_(registerVal8, {})
		local function __FUNC_1308C_(arg0, arg1)
			local function __FUNC_131E4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 78.500000, 503.500000)
				arg0:setTopBottom(true, false, 215.000000, 735.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_131E4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_131E4_)
		end

		registerVal9:completeAnimation()
		registerVal1.Team1ListLarge:setLeftRight(true, false, -466.500000, -41.500000)
		registerVal1.Team1ListLarge:setTopBottom(true, false, 215.000000, 735.000000)
		registerVal1.Team1ListLarge:setAlpha(0.000000)
		__FUNC_1308C_(registerVal9, {})
		local function __FUNC_13409_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 1280.000000, 1705.000000)
			arg0:setTopBottom(true, false, 215.000000, 684.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal1.Team2ListSmall:setLeftRight(true, false, 798.000000, 1223.000000)
		registerVal1.Team2ListSmall:setTopBottom(true, false, 215.000000, 484.000000)
		registerVal1.Team2ListSmall:setAlpha(1.000000)
		__FUNC_13409_(registerVal10, {})
		local function __FUNC_1362D_(arg0, arg1)
			local function __FUNC_13784_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 798.500000, 1223.500000)
				arg0:setTopBottom(true, false, 215.000000, 735.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_13784_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13784_)
		end

		registerVal11:completeAnimation()
		registerVal1.Team2ListLarge:setLeftRight(true, false, 1340.500000, 1765.500000)
		registerVal1.Team2ListLarge:setTopBottom(true, false, 215.000000, 735.000000)
		registerVal1.Team2ListLarge:setAlpha(0.000000)
		__FUNC_1362D_(registerVal11, {})
		local function __FUNC_139A9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 66.000000, 1212.000000)
			arg0:setTopBottom(true, false, 743.000000, 1093.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal1.PregameBanProtectSelections:setLeftRight(true, false, 66.000000, 1212.000000)
		registerVal1.PregameBanProtectSelections:setTopBottom(true, false, 507.000000, 857.000000)
		registerVal1.PregameBanProtectSelections:setAlpha(1.000000)
		__FUNC_139A9_(registerVal12, {})
		local function __FUNC_13BCD_(arg0, arg1)
			local function __FUNC_13D24_(arg0, arg1)
				local function __FUNC_13F13_(arg0, arg1)
					local function __FUNC_1414B_(arg0, arg1)
						local function __FUNC_142A0_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
								arg0.MatchText:beginAnimation("subkeyframe", 139.000000, false, false, CoD.TweenType.Linear)
							end
							arg0.MatchText:setAlpha(0.950000)
							arg0.MatchText:setText(Engine.Localize("MENU_GAME_STARTING"))
							if arg1.interrupted then
								registerVal1.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_142A0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_142A0_)
					end

					if arg1.interrupted then
						__FUNC_1414B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0.MatchText:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0.MatchText:setText(Engine.Localize("MENU_GAME_STARTING"))
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1414B_)
				end

				if arg1.interrupted then
					__FUNC_13F13_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
				arg0.MatchText:beginAnimation("subkeyframe", 139.000000, false, false, CoD.TweenType.Linear)
				arg0.MatchText:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13F13_)
			end

			if arg1.interrupted then
				__FUNC_13D24_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13D24_)
		end

		registerVal14:completeAnimation()
		registerVal14.MatchText:completeAnimation()
		registerVal1.PreGameStates.MatchText:setAlpha(0.950000)
		registerVal1.PreGameStates.MatchText:setText(Engine.Localize("MENU_BAN_PROTECT_VOTING_CAPS"))
		__FUNC_13BCD_(registerVal14, {})
		registerVal17:completeAnimation()
		registerVal1.EditButtonPrompt:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal17, {})
	end

	registerVal19.Launch = __FUNC_1286C_
	local function __FUNC_14544_()
		registerVal1:setupElementClipCounter(10.000000)
		local function __FUNC_14DAD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -191.350000, 191.440000)
			arg0:setTopBottom(false, false, -254.920000, 324.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal1.FEButtonPanel0:setLeftRight(false, false, -190.530000, 192.260000)
		registerVal1.FEButtonPanel0:setTopBottom(false, false, -145.000000, 149.000000)
		__FUNC_14DAD_(registerVal7, {})
		local function __FUNC_14FAE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -425.000000, 0.000000)
			arg0:setTopBottom(true, false, 215.000000, 684.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal1.Team1ListSmall:setLeftRight(true, false, 72.500000, 497.500000)
		registerVal1.Team1ListSmall:setTopBottom(true, false, 215.000000, 484.000000)
		registerVal1.Team1ListSmall:setAlpha(1.000000)
		__FUNC_14FAE_(registerVal8, {})
		local function __FUNC_151CC_(arg0, arg1)
			local function __FUNC_15324_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 78.500000, 503.500000)
				arg0:setTopBottom(true, false, 100.000000, 720.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_15324_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15324_)
		end

		registerVal9:completeAnimation()
		registerVal1.Team1ListLarge:setLeftRight(true, false, -466.500000, -41.500000)
		registerVal1.Team1ListLarge:setTopBottom(true, false, 100.000000, 720.000000)
		registerVal1.Team1ListLarge:setAlpha(0.000000)
		__FUNC_151CC_(registerVal9, {})
		local function __FUNC_15549_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 1280.000000, 1705.000000)
			arg0:setTopBottom(true, false, 215.000000, 684.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal1.Team2ListSmall:setLeftRight(true, false, 798.000000, 1223.000000)
		registerVal1.Team2ListSmall:setTopBottom(true, false, 215.000000, 484.000000)
		registerVal1.Team2ListSmall:setAlpha(1.000000)
		__FUNC_15549_(registerVal10, {})
		local function __FUNC_1576D_(arg0, arg1)
			local function __FUNC_158C4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 798.500000, 1223.500000)
				arg0:setTopBottom(true, false, 100.000000, 720.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_158C4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_158C4_)
		end

		registerVal11:completeAnimation()
		registerVal1.Team2ListLarge:setLeftRight(true, false, 1340.500000, 1765.500000)
		registerVal1.Team2ListLarge:setTopBottom(true, false, 100.000000, 720.000000)
		registerVal1.Team2ListLarge:setAlpha(0.000000)
		__FUNC_1576D_(registerVal11, {})
		local function __FUNC_15AE9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 66.000000, 1212.000000)
			arg0:setTopBottom(true, false, 743.000000, 1093.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal1.PregameBanProtectSelections:setLeftRight(true, false, 66.000000, 1212.000000)
		registerVal1.PregameBanProtectSelections:setTopBottom(true, false, 507.000000, 857.000000)
		registerVal1.PregameBanProtectSelections:setAlpha(1.000000)
		__FUNC_15AE9_(registerVal12, {})
		local function __FUNC_15D0D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 448.600000, 831.400000)
			arg0:setTopBottom(true, false, 157.430000, 288.430000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal1.PregameMainTimer:setLeftRight(true, false, 449.470000, 832.260000)
		registerVal1.PregameMainTimer:setTopBottom(true, false, 268.000000, 399.000000)
		__FUNC_15D0D_(registerVal13, {})
		local function __FUNC_15F0E_(arg0, arg1)
			local function __FUNC_160D4_(arg0, arg1)
				local function __FUNC_16333_(arg0, arg1)
					local function __FUNC_165DB_(arg0, arg1)
						local function __FUNC_16730_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
								arg0.MatchText:beginAnimation("subkeyframe", 139.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(false, false, -143.370000, 143.630000)
							arg0:setTopBottom(true, false, 117.220000, 150.430000)
							arg0.MatchText:setAlpha(0.950000)
							arg0.MatchText:setText(Engine.Localize("MENU_GAME_STARTING"))
							if arg1.interrupted then
								registerVal1.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_16730_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16730_)
					end

					if arg1.interrupted then
						__FUNC_165DB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0.MatchText:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, false, -143.370000, 143.630000)
					arg0:setTopBottom(true, false, 117.220000, 150.430000)
					arg0.MatchText:setText(Engine.Localize("MENU_GAME_STARTING"))
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_165DB_)
				end

				if arg1.interrupted then
					__FUNC_16333_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
				arg0.MatchText:beginAnimation("subkeyframe", 139.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -143.340000, 143.660000)
				arg0:setTopBottom(true, false, 120.910000, 154.120000)
				arg0.MatchText:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16333_)
			end

			if arg1.interrupted then
				__FUNC_160D4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -142.930000, 144.070000)
			arg0:setTopBottom(true, false, 172.500000, 205.720000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_160D4_)
		end

		registerVal14:completeAnimation()
		registerVal14.MatchText:completeAnimation()
		registerVal1.PreGameStates:setLeftRight(false, false, -142.500000, 144.500000)
		registerVal1.PreGameStates:setTopBottom(true, false, 227.790000, 261.000000)
		registerVal1.PreGameStates.MatchText:setAlpha(0.950000)
		registerVal1.PreGameStates.MatchText:setText(Engine.Localize("MENU_BAN_PROTECT_VOTING_CAPS"))
		__FUNC_15F0E_(registerVal14, {})
		local function __FUNC_16A44_(arg0, arg1)
			local function __FUNC_16C2F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, -9.000000, 1348.000000)
				arg0:setTopBottom(true, false, -291.320000, -132.570000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_16C2F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -12.500000, 1344.500000)
			arg0:setTopBottom(true, false, -115.610000, 43.140000)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16C2F_)
		end

		registerVal15:completeAnimation()
		registerVal1.PregameFactionHeader:setLeftRight(true, false, -16.500000, 1340.500000)
		registerVal1.PregameFactionHeader:setTopBottom(true, false, 85.190000, 243.940000)
		registerVal1.PregameFactionHeader:setAlpha(1.000000)
		__FUNC_16A44_(registerVal15, {})
		registerVal17:completeAnimation()
		registerVal1.EditButtonPrompt:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal17, {})
	end

	registerVal19.Launch_9 = __FUNC_14544_
	registerVal18.ItemRestriction = registerVal19
	registerVal19 = {}
	local function __FUNC_16E51_()
		registerVal1:setupElementClipCounter(3.000000)
		registerVal12:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
		registerVal12:setAlpha(0.000000)
		registerVal12:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
		registerVal14:completeAnimation()
		registerVal14.MatchText:completeAnimation()
		registerVal1.PreGameStates.MatchText:setAlpha(0.950000)
		registerVal1.PreGameStates.MatchText:setText(Engine.Localize("MENU_SPECIALIST_DRAFT_CAPS"))
		registerVal1.clipFinished(registerVal14, {})
		registerVal17:completeAnimation()
		registerVal1.EditButtonPrompt:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_16E51_
	local function __FUNC_1718D_()
		registerVal1:setupElementClipCounter(2.000000)
		local function __FUNC_1741A_(arg0, arg1)
			local function __FUNC_17607_(arg0, arg1)
				local function __FUNC_1783F_(arg0, arg1)
					local function __FUNC_17994_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
							arg0.MatchText:beginAnimation("subkeyframe", 140.000000, false, false, CoD.TweenType.Linear)
						end
						arg0.MatchText:setAlpha(0.950000)
						arg0.MatchText:setText(Engine.Localize("MENU_EDIT_CAC_CAPS"))
						if arg1.interrupted then
							registerVal1.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_17994_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17994_)
				end

				if arg1.interrupted then
					__FUNC_1783F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0.MatchText:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0.MatchText:setText(Engine.Localize("MENU_EDIT_CAC_CAPS"))
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1783F_)
			end

			if arg1.interrupted then
				__FUNC_17607_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0.MatchText:beginAnimation("subkeyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0.MatchText:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17607_)
		end

		registerVal14:completeAnimation()
		registerVal14.MatchText:completeAnimation()
		registerVal1.PreGameStates.MatchText:setAlpha(0.950000)
		registerVal1.PreGameStates.MatchText:setText(Engine.Localize("MENU_SPECIALIST_DRAFT_CAPS"))
		__FUNC_1741A_(registerVal14, {})
		local function __FUNC_17C38_(arg0, arg1)
			local function __FUNC_17D90_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
					arg0.label:beginAnimation("subkeyframe", 150.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				arg0.label:setText(Engine.Localize("MENU_EDIT_CAC"))
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_17D90_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17D90_)
		end

		registerVal17:completeAnimation()
		registerVal17.label:completeAnimation()
		registerVal1.EditButtonPrompt:setAlpha(0.000000)
		registerVal1.EditButtonPrompt.label:setText(Engine.Localize("MENU_EDIT_CAC"))
		__FUNC_17C38_(registerVal17, {})
	end

	registerVal19.CACEdit_9 = __FUNC_1718D_
	local function __FUNC_1801F_()
		registerVal1:setupElementClipCounter(2.000000)
		local function __FUNC_182B3_(arg0, arg1)
			local function __FUNC_1849F_(arg0, arg1)
				local function __FUNC_186E0_(arg0, arg1)
					local function __FUNC_18838_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
							arg0.MatchText:beginAnimation("subkeyframe", 140.000000, false, false, CoD.TweenType.Linear)
						end
						arg0.MatchText:setAlpha(0.950000)
						arg0.MatchText:setText(Engine.Localize("MENU_EDIT_SCORESTREAKS_CAPS"))
						if arg1.interrupted then
							registerVal1.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_18838_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18838_)
				end

				if arg1.interrupted then
					__FUNC_186E0_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0.MatchText:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0.MatchText:setText(Engine.Localize("MENU_EDIT_SCORESTREAKS_CAPS"))
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_186E0_)
			end

			if arg1.interrupted then
				__FUNC_1849F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0.MatchText:beginAnimation("subkeyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0.MatchText:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1849F_)
		end

		registerVal14:completeAnimation()
		registerVal14.MatchText:completeAnimation()
		registerVal1.PreGameStates.MatchText:setAlpha(0.950000)
		registerVal1.PreGameStates.MatchText:setText(Engine.Localize("MENU_SPECIALIST_DRAFT_CAPS"))
		__FUNC_182B3_(registerVal14, {})
		local function __FUNC_18AE5_(arg0, arg1)
			local function __FUNC_18C3C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
					arg0.label:beginAnimation("subkeyframe", 150.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				arg0.label:setText(Engine.Localize("MENU_EDIT_SCORESTREAKS"))
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_18C3C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18C3C_)
		end

		registerVal17:completeAnimation()
		registerVal17.label:completeAnimation()
		registerVal1.EditButtonPrompt:setAlpha(0.000000)
		registerVal1.EditButtonPrompt.label:setText(Engine.Localize("MENU_EDIT_SCORESTREAKS"))
		__FUNC_18AE5_(registerVal17, {})
	end

	registerVal19.StreakEdit_9 = __FUNC_1801F_
	local function __FUNC_18ED4_()
		registerVal1:setupElementClipCounter(2.000000)
		local function __FUNC_19102_(arg0, arg1)
			local function __FUNC_192EF_(arg0, arg1)
				local function __FUNC_19527_(arg0, arg1)
					local function __FUNC_1967C_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
							arg0.MatchText:beginAnimation("subkeyframe", 140.000000, false, false, CoD.TweenType.Linear)
						end
						arg0.MatchText:setAlpha(0.950000)
						arg0.MatchText:setText(Engine.Localize("MENU_GAME_STARTING"))
						if arg1.interrupted then
							registerVal1.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_1967C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1967C_)
				end

				if arg1.interrupted then
					__FUNC_19527_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0.MatchText:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0.MatchText:setText(Engine.Localize("MENU_GAME_STARTING"))
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19527_)
			end

			if arg1.interrupted then
				__FUNC_192EF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0.MatchText:beginAnimation("subkeyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0.MatchText:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_192EF_)
		end

		registerVal14:completeAnimation()
		registerVal14.MatchText:completeAnimation()
		registerVal1.PreGameStates.MatchText:setAlpha(0.950000)
		registerVal1.PreGameStates.MatchText:setText(Engine.Localize("MENU_SPECIALIST_DRAFT_CAPS"))
		__FUNC_19102_(registerVal14, {})
		registerVal17:completeAnimation()
		registerVal1.EditButtonPrompt:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal17, {})
	end

	registerVal19.Launch_9 = __FUNC_18ED4_
	registerVal18.SpecialistDraft_9 = registerVal19
	registerVal19 = {}
	local function __FUNC_19920_()
		registerVal1:setupElementClipCounter(3.000000)
		registerVal12:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
		registerVal12:setAlpha(0.000000)
		registerVal12:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
		registerVal14:completeAnimation()
		registerVal14.MatchText:completeAnimation()
		registerVal1.PreGameStates.MatchText:setAlpha(0.950000)
		registerVal1.PreGameStates.MatchText:setText(Engine.Localize("MENU_SPECIALIST_DRAFT_CAPS"))
		registerVal1.clipFinished(registerVal14, {})
		registerVal17:completeAnimation()
		registerVal1.EditButtonPrompt:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_19920_
	local function __FUNC_19C5D_()
		registerVal1:setupElementClipCounter(2.000000)
		local function __FUNC_19EEA_(arg0, arg1)
			local function __FUNC_1A0D7_(arg0, arg1)
				local function __FUNC_1A30F_(arg0, arg1)
					local function __FUNC_1A464_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
							arg0.MatchText:beginAnimation("subkeyframe", 140.000000, false, false, CoD.TweenType.Linear)
						end
						arg0.MatchText:setAlpha(0.950000)
						arg0.MatchText:setText(Engine.Localize("MENU_EDIT_CAC_CAPS"))
						if arg1.interrupted then
							registerVal1.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_1A464_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A464_)
				end

				if arg1.interrupted then
					__FUNC_1A30F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0.MatchText:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0.MatchText:setText(Engine.Localize("MENU_EDIT_CAC_CAPS"))
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A30F_)
			end

			if arg1.interrupted then
				__FUNC_1A0D7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0.MatchText:beginAnimation("subkeyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0.MatchText:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A0D7_)
		end

		registerVal14:completeAnimation()
		registerVal14.MatchText:completeAnimation()
		registerVal1.PreGameStates.MatchText:setAlpha(0.950000)
		registerVal1.PreGameStates.MatchText:setText(Engine.Localize("MENU_SPECIALIST_DRAFT_CAPS"))
		__FUNC_19EEA_(registerVal14, {})
		local function __FUNC_1A708_(arg0, arg1)
			local function __FUNC_1A860_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
					arg0.label:beginAnimation("subkeyframe", 150.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				arg0.label:setText(Engine.Localize("MENU_EDIT_CAC"))
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1A860_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A860_)
		end

		registerVal17:completeAnimation()
		registerVal17.label:completeAnimation()
		registerVal1.EditButtonPrompt:setAlpha(0.000000)
		registerVal1.EditButtonPrompt.label:setText(Engine.Localize("MENU_EDIT_CAC"))
		__FUNC_1A708_(registerVal17, {})
	end

	registerVal19.CACEdit = __FUNC_19C5D_
	local function __FUNC_1AAEF_()
		registerVal1:setupElementClipCounter(2.000000)
		local function __FUNC_1AD83_(arg0, arg1)
			local function __FUNC_1AF6F_(arg0, arg1)
				local function __FUNC_1B1B0_(arg0, arg1)
					local function __FUNC_1B308_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
							arg0.MatchText:beginAnimation("subkeyframe", 140.000000, false, false, CoD.TweenType.Linear)
						end
						arg0.MatchText:setAlpha(0.950000)
						arg0.MatchText:setText(Engine.Localize("MENU_EDIT_SCORESTREAKS_CAPS"))
						if arg1.interrupted then
							registerVal1.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_1B308_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B308_)
				end

				if arg1.interrupted then
					__FUNC_1B1B0_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0.MatchText:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0.MatchText:setText(Engine.Localize("MENU_EDIT_SCORESTREAKS_CAPS"))
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B1B0_)
			end

			if arg1.interrupted then
				__FUNC_1AF6F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0.MatchText:beginAnimation("subkeyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0.MatchText:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AF6F_)
		end

		registerVal14:completeAnimation()
		registerVal14.MatchText:completeAnimation()
		registerVal1.PreGameStates.MatchText:setAlpha(0.950000)
		registerVal1.PreGameStates.MatchText:setText(Engine.Localize("MENU_SPECIALIST_DRAFT_CAPS"))
		__FUNC_1AD83_(registerVal14, {})
		local function __FUNC_1B5B5_(arg0, arg1)
			local function __FUNC_1B70C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
					arg0.label:beginAnimation("subkeyframe", 150.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				arg0.label:setText(Engine.Localize("MENU_EDIT_SCORESTREAKS"))
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1B70C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B70C_)
		end

		registerVal17:completeAnimation()
		registerVal17.label:completeAnimation()
		registerVal1.EditButtonPrompt:setAlpha(0.000000)
		registerVal1.EditButtonPrompt.label:setText(Engine.Localize("MENU_EDIT_SCORESTREAKS"))
		__FUNC_1B5B5_(registerVal17, {})
	end

	registerVal19.StreakEdit = __FUNC_1AAEF_
	local function __FUNC_1B9A4_()
		registerVal1:setupElementClipCounter(2.000000)
		local function __FUNC_1BBD2_(arg0, arg1)
			local function __FUNC_1BDBF_(arg0, arg1)
				local function __FUNC_1BFF7_(arg0, arg1)
					local function __FUNC_1C14C_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
							arg0.MatchText:beginAnimation("subkeyframe", 140.000000, false, false, CoD.TweenType.Linear)
						end
						arg0.MatchText:setAlpha(0.950000)
						arg0.MatchText:setText(Engine.Localize("MENU_GAME_STARTING"))
						if arg1.interrupted then
							registerVal1.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_1C14C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C14C_)
				end

				if arg1.interrupted then
					__FUNC_1BFF7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0.MatchText:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0.MatchText:setText(Engine.Localize("MENU_GAME_STARTING"))
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BFF7_)
			end

			if arg1.interrupted then
				__FUNC_1BDBF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0.MatchText:beginAnimation("subkeyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0.MatchText:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BDBF_)
		end

		registerVal14:completeAnimation()
		registerVal14.MatchText:completeAnimation()
		registerVal1.PreGameStates.MatchText:setAlpha(0.950000)
		registerVal1.PreGameStates.MatchText:setText(Engine.Localize("MENU_SPECIALIST_DRAFT_CAPS"))
		__FUNC_1BBD2_(registerVal14, {})
		registerVal17:completeAnimation()
		registerVal1.EditButtonPrompt:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal17, {})
	end

	registerVal19.Launch = __FUNC_1B9A4_
	registerVal18.SpecialistDraft = registerVal19
	registerVal19 = {}
	local function __FUNC_1C3F0_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal14:completeAnimation()
		registerVal14.MatchText:completeAnimation()
		registerVal1.PreGameStates.MatchText:setAlpha(0.950000)
		registerVal1.PreGameStates.MatchText:setText(Engine.Localize("MENU_EDIT_CAC_CAPS"))
		registerVal1.clipFinished(registerVal14, {})
		registerVal17:completeAnimation()
		registerVal17.label:completeAnimation()
		registerVal1.EditButtonPrompt:setAlpha(1.000000)
		registerVal1.EditButtonPrompt.label:setText(Engine.Localize("MENU_EDIT_CAC"))
		registerVal1.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_1C3F0_
	local function __FUNC_1C694_()
		registerVal1:setupElementClipCounter(2.000000)
		local function __FUNC_1C91A_(arg0, arg1)
			local function __FUNC_1CB07_(arg0, arg1)
				local function __FUNC_1CD48_(arg0, arg1)
					local function __FUNC_1CEA0_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
							arg0.MatchText:beginAnimation("subkeyframe", 140.000000, false, false, CoD.TweenType.Linear)
						end
						arg0.MatchText:setAlpha(0.950000)
						arg0.MatchText:setText(Engine.Localize("MENU_EDIT_SCORESTREAKS_CAPS"))
						if arg1.interrupted then
							registerVal1.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_1CEA0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CEA0_)
				end

				if arg1.interrupted then
					__FUNC_1CD48_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0.MatchText:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0.MatchText:setText(Engine.Localize("MENU_EDIT_SCORESTREAKS_CAPS"))
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CD48_)
			end

			if arg1.interrupted then
				__FUNC_1CB07_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0.MatchText:beginAnimation("subkeyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0.MatchText:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CB07_)
		end

		registerVal14:completeAnimation()
		registerVal14.MatchText:completeAnimation()
		registerVal1.PreGameStates.MatchText:setAlpha(0.950000)
		registerVal1.PreGameStates.MatchText:setText(Engine.Localize("MENU_EDIT_CAC_CAPS"))
		__FUNC_1C91A_(registerVal14, {})
		local function __FUNC_1D14D_(arg0, arg1)
			local function __FUNC_1D2C7_(arg0, arg1)
				local function __FUNC_1D4FF_(arg0, arg1)
					local function __FUNC_1D654_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
							arg0.label:beginAnimation("subkeyframe", 140.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						arg0.label:setText(Engine.Localize("MENU_EDIT_SCORESTREAKS"))
						if arg1.interrupted then
							registerVal1.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_1D654_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D654_)
				end

				if arg1.interrupted then
					__FUNC_1D4FF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0.label:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0.label:setText(Engine.Localize("MENU_EDIT_SCORESTREAKS"))
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D4FF_)
			end

			if arg1.interrupted then
				__FUNC_1D2C7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D2C7_)
		end

		registerVal17:completeAnimation()
		registerVal17.label:completeAnimation()
		registerVal1.EditButtonPrompt:setAlpha(1.000000)
		registerVal1.EditButtonPrompt.label:setText(Engine.Localize("MENU_EDIT_CAC"))
		__FUNC_1D14D_(registerVal17, {})
	end

	registerVal19.StreakEdit_9 = __FUNC_1C694_
	local function __FUNC_1D8EC_()
		registerVal1:setupElementClipCounter(2.000000)
		local function __FUNC_1DB72_(arg0, arg1)
			local function __FUNC_1DD5F_(arg0, arg1)
				local function __FUNC_1DF97_(arg0, arg1)
					local function __FUNC_1E0EC_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
							arg0.MatchText:beginAnimation("subkeyframe", 140.000000, false, false, CoD.TweenType.Linear)
						end
						arg0.MatchText:setAlpha(0.950000)
						arg0.MatchText:setText(Engine.Localize("MENU_GAME_STARTING"))
						if arg1.interrupted then
							registerVal1.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_1E0EC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E0EC_)
				end

				if arg1.interrupted then
					__FUNC_1DF97_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0.MatchText:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0.MatchText:setText(Engine.Localize("MENU_GAME_STARTING"))
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DF97_)
			end

			if arg1.interrupted then
				__FUNC_1DD5F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0.MatchText:beginAnimation("subkeyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0.MatchText:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DD5F_)
		end

		registerVal14:completeAnimation()
		registerVal14.MatchText:completeAnimation()
		registerVal1.PreGameStates.MatchText:setAlpha(0.950000)
		registerVal1.PreGameStates.MatchText:setText(Engine.Localize("MENU_EDIT_CAC_CAPS"))
		__FUNC_1DB72_(registerVal14, {})
		local function __FUNC_1E390_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
				arg0.label:beginAnimation("subkeyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0.label:setText(Engine.Localize("MENU_EDIT_CAC"))
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal17.label:completeAnimation()
		registerVal1.EditButtonPrompt:setAlpha(1.000000)
		registerVal1.EditButtonPrompt.label:setText(Engine.Localize("MENU_EDIT_CAC"))
		__FUNC_1E390_(registerVal17, {})
	end

	registerVal19.Launch_9 = __FUNC_1D8EC_
	registerVal18.CACEdit_9 = registerVal19
	registerVal19 = {}
	local function __FUNC_1E61F_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal14:completeAnimation()
		registerVal14.MatchText:completeAnimation()
		registerVal1.PreGameStates.MatchText:setAlpha(0.950000)
		registerVal1.PreGameStates.MatchText:setText(Engine.Localize("MENU_EDIT_CAC_CAPS"))
		registerVal1.clipFinished(registerVal14, {})
		registerVal17:completeAnimation()
		registerVal17.label:completeAnimation()
		registerVal1.EditButtonPrompt:setAlpha(1.000000)
		registerVal1.EditButtonPrompt.label:setText(Engine.Localize("MENU_EDIT_CAC"))
		registerVal1.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_1E61F_
	local function __FUNC_1E8C0_()
		registerVal1:setupElementClipCounter(2.000000)
		local function __FUNC_1EB46_(arg0, arg1)
			local function __FUNC_1ED33_(arg0, arg1)
				local function __FUNC_1EF74_(arg0, arg1)
					local function __FUNC_1F0CC_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
							arg0.MatchText:beginAnimation("subkeyframe", 140.000000, false, false, CoD.TweenType.Linear)
						end
						arg0.MatchText:setAlpha(0.950000)
						arg0.MatchText:setText(Engine.Localize("MENU_EDIT_SCORESTREAKS_CAPS"))
						if arg1.interrupted then
							registerVal1.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_1F0CC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F0CC_)
				end

				if arg1.interrupted then
					__FUNC_1EF74_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0.MatchText:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0.MatchText:setText(Engine.Localize("MENU_EDIT_SCORESTREAKS_CAPS"))
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EF74_)
			end

			if arg1.interrupted then
				__FUNC_1ED33_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0.MatchText:beginAnimation("subkeyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0.MatchText:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1ED33_)
		end

		registerVal14:completeAnimation()
		registerVal14.MatchText:completeAnimation()
		registerVal1.PreGameStates.MatchText:setAlpha(0.950000)
		registerVal1.PreGameStates.MatchText:setText(Engine.Localize("MENU_EDIT_CAC_CAPS"))
		__FUNC_1EB46_(registerVal14, {})
		local function __FUNC_1F379_(arg0, arg1)
			local function __FUNC_1F4F3_(arg0, arg1)
				local function __FUNC_1F72B_(arg0, arg1)
					local function __FUNC_1F880_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
							arg0.label:beginAnimation("subkeyframe", 140.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						arg0.label:setText(Engine.Localize("MENU_EDIT_SCORESTREAKS"))
						if arg1.interrupted then
							registerVal1.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_1F880_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F880_)
				end

				if arg1.interrupted then
					__FUNC_1F72B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0.label:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0.label:setText(Engine.Localize("MENU_EDIT_SCORESTREAKS"))
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F72B_)
			end

			if arg1.interrupted then
				__FUNC_1F4F3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F4F3_)
		end

		registerVal17:completeAnimation()
		registerVal17.label:completeAnimation()
		registerVal1.EditButtonPrompt:setAlpha(1.000000)
		registerVal1.EditButtonPrompt.label:setText(Engine.Localize("MENU_EDIT_CAC"))
		__FUNC_1F379_(registerVal17, {})
	end

	registerVal19.StreakEdit = __FUNC_1E8C0_
	local function __FUNC_1FB18_()
		registerVal1:setupElementClipCounter(2.000000)
		local function __FUNC_1FD9E_(arg0, arg1)
			local function __FUNC_1FF8B_(arg0, arg1)
				local function __FUNC_201C3_(arg0, arg1)
					local function __FUNC_20318_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
							arg0.MatchText:beginAnimation("subkeyframe", 140.000000, false, false, CoD.TweenType.Linear)
						end
						arg0.MatchText:setAlpha(0.950000)
						arg0.MatchText:setText(Engine.Localize("MENU_GAME_STARTING"))
						if arg1.interrupted then
							registerVal1.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_20318_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20318_)
				end

				if arg1.interrupted then
					__FUNC_201C3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0.MatchText:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0.MatchText:setText(Engine.Localize("MENU_GAME_STARTING"))
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_201C3_)
			end

			if arg1.interrupted then
				__FUNC_1FF8B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0.MatchText:beginAnimation("subkeyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0.MatchText:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FF8B_)
		end

		registerVal14:completeAnimation()
		registerVal14.MatchText:completeAnimation()
		registerVal1.PreGameStates.MatchText:setAlpha(0.950000)
		registerVal1.PreGameStates.MatchText:setText(Engine.Localize("MENU_EDIT_CAC_CAPS"))
		__FUNC_1FD9E_(registerVal14, {})
		local function __FUNC_205BC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
				arg0.label:beginAnimation("subkeyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0.label:setText(Engine.Localize("MENU_EDIT_CAC"))
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal17.label:completeAnimation()
		registerVal1.EditButtonPrompt:setAlpha(1.000000)
		registerVal1.EditButtonPrompt.label:setText(Engine.Localize("MENU_EDIT_CAC"))
		__FUNC_205BC_(registerVal17, {})
	end

	registerVal19.Launch = __FUNC_1FB18_
	registerVal18.CACEdit = registerVal19
	registerVal19 = {}
	local function __FUNC_2084B_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal14:completeAnimation()
		registerVal14.MatchText:completeAnimation()
		registerVal1.PreGameStates.MatchText:setAlpha(0.950000)
		registerVal1.PreGameStates.MatchText:setText(Engine.Localize("MENU_EDIT_SCORESTREAKS_CAPS"))
		registerVal1.clipFinished(registerVal14, {})
		registerVal17:completeAnimation()
		registerVal17.label:completeAnimation()
		registerVal1.EditButtonPrompt:setAlpha(1.000000)
		registerVal1.EditButtonPrompt.label:setText(Engine.Localize("MENU_EDIT_SCORESTREAKS"))
		registerVal1.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_2084B_
	local function __FUNC_20AFE_()
		registerVal1:setupElementClipCounter(2.000000)
		local function __FUNC_20D94_(arg0, arg1)
			local function __FUNC_20F83_(arg0, arg1)
				local function __FUNC_211BB_(arg0, arg1)
					local function __FUNC_21310_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
							arg0.MatchText:beginAnimation("subkeyframe", 140.000000, false, false, CoD.TweenType.Linear)
						end
						arg0.MatchText:setAlpha(0.950000)
						arg0.MatchText:setText(Engine.Localize("MENU_GAME_STARTING"))
						if arg1.interrupted then
							registerVal1.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_21310_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21310_)
				end

				if arg1.interrupted then
					__FUNC_211BB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0.MatchText:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0.MatchText:setText(Engine.Localize("MENU_GAME_STARTING"))
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_211BB_)
			end

			if arg1.interrupted then
				__FUNC_20F83_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0.MatchText:beginAnimation("subkeyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0.MatchText:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20F83_)
		end

		registerVal14:completeAnimation()
		registerVal14.MatchText:completeAnimation()
		registerVal1.PreGameStates.MatchText:setAlpha(0.950000)
		registerVal1.PreGameStates.MatchText:setText(Engine.Localize("MENU_EDIT_SCORESTREAKS_CAPS"))
		__FUNC_20D94_(registerVal14, {})
		local function __FUNC_215B4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
				arg0.label:beginAnimation("subkeyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0.label:setText(Engine.Localize("MENU_EDIT_SCORESTREAKS"))
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal17.label:completeAnimation()
		registerVal1.EditButtonPrompt:setAlpha(1.000000)
		registerVal1.EditButtonPrompt.label:setText(Engine.Localize("MENU_EDIT_SCORESTREAKS"))
		__FUNC_215B4_(registerVal17, {})
	end

	registerVal19.Launch_9 = __FUNC_20AFE_
	registerVal18.StreakEdit_9 = registerVal19
	registerVal19 = {}
	local function __FUNC_2184C_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal14:completeAnimation()
		registerVal14.MatchText:completeAnimation()
		registerVal1.PreGameStates.MatchText:setAlpha(0.950000)
		registerVal1.PreGameStates.MatchText:setText(Engine.Localize("MENU_EDIT_SCORESTREAKS_CAPS"))
		registerVal1.clipFinished(registerVal14, {})
		registerVal17:completeAnimation()
		registerVal17.label:completeAnimation()
		registerVal1.EditButtonPrompt:setAlpha(1.000000)
		registerVal1.EditButtonPrompt.label:setText(Engine.Localize("MENU_EDIT_SCORESTREAKS"))
		registerVal1.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_2184C_
	local function __FUNC_21B02_()
		registerVal1:setupElementClipCounter(2.000000)
		local function __FUNC_21D98_(arg0, arg1)
			local function __FUNC_21F87_(arg0, arg1)
				local function __FUNC_221BF_(arg0, arg1)
					local function __FUNC_22314_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
							arg0.MatchText:beginAnimation("subkeyframe", 140.000000, false, false, CoD.TweenType.Linear)
						end
						arg0.MatchText:setAlpha(0.950000)
						arg0.MatchText:setText(Engine.Localize("MENU_GAME_STARTING"))
						if arg1.interrupted then
							registerVal1.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_22314_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22314_)
				end

				if arg1.interrupted then
					__FUNC_221BF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0.MatchText:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0.MatchText:setText(Engine.Localize("MENU_GAME_STARTING"))
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_221BF_)
			end

			if arg1.interrupted then
				__FUNC_21F87_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0.MatchText:beginAnimation("subkeyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0.MatchText:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21F87_)
		end

		registerVal14:completeAnimation()
		registerVal14.MatchText:completeAnimation()
		registerVal1.PreGameStates.MatchText:setAlpha(0.950000)
		registerVal1.PreGameStates.MatchText:setText(Engine.Localize("MENU_EDIT_SCORESTREAKS_CAPS"))
		__FUNC_21D98_(registerVal14, {})
		local function __FUNC_225B8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
				arg0.label:beginAnimation("subkeyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0.label:setText(Engine.Localize("MENU_EDIT_SCORESTREAKS"))
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal17.label:completeAnimation()
		registerVal1.EditButtonPrompt:setAlpha(1.000000)
		registerVal1.EditButtonPrompt.label:setText(Engine.Localize("MENU_EDIT_SCORESTREAKS"))
		__FUNC_225B8_(registerVal17, {})
	end

	registerVal19.Launch = __FUNC_21B02_
	registerVal18.StreakEdit = registerVal19
	registerVal19 = {}
	local function __FUNC_22850_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal14:completeAnimation()
		registerVal14.MatchText:completeAnimation()
		registerVal1.PreGameStates.MatchText:setText(Engine.Localize("MENU_GAME_STARTING"))
		registerVal1.clipFinished(registerVal14, {})
		registerVal17:completeAnimation()
		registerVal1.EditButtonPrompt:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_22850_
	local function __FUNC_22A4D_()
		registerVal1:setupElementClipCounter(14.000000)
		local function __FUNC_22FE2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal1.MapImage:setAlpha(1.000000)
		__FUNC_22FE2_(registerVal4, {})
		local function __FUNC_23195_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal1.Darken:setAlpha(0.300000)
		__FUNC_23195_(registerVal5, {})
		local function __FUNC_23349_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal1.VignetteBack:setAlpha(1.000000)
		__FUNC_23349_(registerVal6, {})
		local function __FUNC_234FD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal1.FEButtonPanel0:setAlpha(0.260000)
		__FUNC_234FD_(registerVal7, {})
		local function __FUNC_236B1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal1.Team1ListSmall:setAlpha(0.000000)
		__FUNC_236B1_(registerVal8, {})
		local function __FUNC_23865_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal1.Team1ListLarge:setAlpha(1.000000)
		__FUNC_23865_(registerVal9, {})
		local function __FUNC_23A19_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal1.Team2ListSmall:setAlpha(0.000000)
		__FUNC_23A19_(registerVal10, {})
		local function __FUNC_23BCD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal1.Team2ListLarge:setAlpha(1.000000)
		__FUNC_23BCD_(registerVal11, {})
		local function __FUNC_23D81_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal1.PregameBanProtectSelections:setAlpha(0.000000)
		__FUNC_23D81_(registerVal12, {})
		local function __FUNC_23F35_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal1.PregameMainTimer:setAlpha(1.000000)
		__FUNC_23F35_(registerVal13, {})
		local function __FUNC_240E9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal1.PreGameStates:setAlpha(1.000000)
		__FUNC_240E9_(registerVal14, {})
		local function __FUNC_2429D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal1.PregameFactionHeader:setAlpha(1.000000)
		__FUNC_2429D_(registerVal15, {})
		local function __FUNC_24451_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal1.PregameTitleSmall:setAlpha(1.000000)
		__FUNC_24451_(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal1.EditButtonPrompt:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultState = __FUNC_22A4D_
	registerVal18.Launch_9 = registerVal19
	registerVal19 = {}
	local function __FUNC_24605_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal14:completeAnimation()
		registerVal14.MatchText:completeAnimation()
		registerVal1.PreGameStates.MatchText:setText(Engine.Localize("MENU_GAME_STARTING"))
		registerVal1.clipFinished(registerVal14, {})
		registerVal17:completeAnimation()
		registerVal1.EditButtonPrompt:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_24605_
	local function __FUNC_24801_()
		registerVal1:setupElementClipCounter(14.000000)
		local function __FUNC_24D96_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal1.MapImage:setAlpha(1.000000)
		__FUNC_24D96_(registerVal4, {})
		local function __FUNC_24F49_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal1.Darken:setAlpha(0.300000)
		__FUNC_24F49_(registerVal5, {})
		local function __FUNC_250FD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal1.VignetteBack:setAlpha(1.000000)
		__FUNC_250FD_(registerVal6, {})
		local function __FUNC_252B1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal1.FEButtonPanel0:setAlpha(0.260000)
		__FUNC_252B1_(registerVal7, {})
		local function __FUNC_25465_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal1.Team1ListSmall:setAlpha(0.000000)
		__FUNC_25465_(registerVal8, {})
		local function __FUNC_25619_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal1.Team1ListLarge:setAlpha(1.000000)
		__FUNC_25619_(registerVal9, {})
		local function __FUNC_257CD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal1.Team2ListSmall:setAlpha(0.000000)
		__FUNC_257CD_(registerVal10, {})
		local function __FUNC_25981_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal1.Team2ListLarge:setAlpha(1.000000)
		__FUNC_25981_(registerVal11, {})
		local function __FUNC_25B35_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal1.PregameBanProtectSelections:setAlpha(0.000000)
		__FUNC_25B35_(registerVal12, {})
		local function __FUNC_25CE9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal1.PregameMainTimer:setAlpha(1.000000)
		__FUNC_25CE9_(registerVal13, {})
		local function __FUNC_25E9D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal1.PreGameStates:setAlpha(1.000000)
		__FUNC_25E9D_(registerVal14, {})
		local function __FUNC_26051_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal1.PregameFactionHeader:setAlpha(1.000000)
		__FUNC_26051_(registerVal15, {})
		local function __FUNC_26205_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal1.PregameTitleSmall:setAlpha(1.000000)
		__FUNC_26205_(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal1.EditButtonPrompt:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultState = __FUNC_24801_
	registerVal18.Launch = registerVal19
	registerVal1.clipsPerState = registerVal18
	registerVal20 = {}
	registerVal21 = {}
	registerVal21.stateName = "ItemRestriction"
	local function __FUNC_263B9_(arg0, arg1, arg2)
		return ItemRestrictionVoteActive()
	end

	registerVal21.condition = __FUNC_263B9_
	registerVal22 = {}
	registerVal22.stateName = "SpecialistDraft_9"
	local function __FUNC_26413_(arg0, arg1, arg2)
		local registerVal3 = CharacterDraftActive()
		if registerVal3 then
			registerVal3 = HasMoreThanNPlayersOnATeam("6")
		end
		return registerVal3
	end

	registerVal22.condition = __FUNC_26413_
	local registerVal23 = {}
	registerVal23.stateName = "SpecialistDraft"
	local function __FUNC_264A9_(arg0, arg1, arg2)
		return CharacterDraftActive()
	end

	registerVal23.condition = __FUNC_264A9_
	local registerVal24 = {}
	registerVal24.stateName = "CACEdit_9"
	local function __FUNC_264FE_(arg0, arg1, arg2)
		local registerVal3 = ItemRestrictionCACEditActive()
		if registerVal3 then
			registerVal3 = HasMoreThanNPlayersOnATeam("6")
		end
		return registerVal3
	end

	registerVal24.condition = __FUNC_264FE_
	local registerVal25 = {}
	registerVal25.stateName = "CACEdit"
	local function __FUNC_2659D_(arg0, arg1, arg2)
		return ItemRestrictionCACEditActive()
	end

	registerVal25.condition = __FUNC_2659D_
	local registerVal26 = {}
	registerVal26.stateName = "StreakEdit_9"
	local function __FUNC_265FA_(arg0, arg1, arg2)
		local registerVal3 = ItemRestrictionScorestreakEditActive()
		if registerVal3 then
			registerVal3 = HasMoreThanNPlayersOnATeam("6")
		end
		return registerVal3
	end

	registerVal26.condition = __FUNC_265FA_
	local registerVal27 = {}
	registerVal27.stateName = "StreakEdit"
	local function __FUNC_266A1_(arg0, arg1, arg2)
		return ItemRestrictionScorestreakEditActive()
	end

	registerVal27.condition = __FUNC_266A1_
	local registerVal28 = {}
	registerVal28.stateName = "Launch_9"
	local function __FUNC_26706_(arg0, arg1, arg2)
		local registerVal3 = PregameStateEqualToEnum(Enum.LobbyPregameState.LOBBY_PREGAME_STATE_LAUNCH_GAME)
		if registerVal3 then
			registerVal3 = HasMoreThanNPlayersOnATeam("6")
		end
		return registerVal3
	end

	registerVal28.condition = __FUNC_26706_
	local registerVal29 = {}
	registerVal29.stateName = "Launch"
	local function __FUNC_2680E_(arg0, arg1, arg2)
		return PregameStateEqualToEnum(Enum.LobbyPregameState.LOBBY_PREGAME_STATE_LAUNCH_GAME)
	end

	registerVal29.condition = __FUNC_2680E_
	registerVal20 = {registerVal21, registerVal22, registerVal23, registerVal24, registerVal25, registerVal26, registerVal27, registerVal28, registerVal29}
	registerVal1:mergeStateConditions(registerVal20)
	registerVal21 = Engine.GetGlobalModel()
	registerVal20 = Engine.GetModel(registerVal21, "lobbyRoot.Pregame.state")
	local function __FUNC_268D3_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.state"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal20, __FUNC_268D3_)
	registerVal21 = Engine.GetGlobalModel()
	registerVal20 = Engine.GetModel(registerVal21, "lobbyRoot.Pregame.state")
	local function __FUNC_269FD_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "lobbyRoot.Pregame.state"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal1:subscribeToModel(registerVal20, __FUNC_269FD_)
	registerVal21 = Engine.GetGlobalModel()
	registerVal20 = Engine.GetModel(registerVal21, "lobbyRoot.Pregame.stage")
	local function __FUNC_26BC9_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "lobbyRoot.Pregame.stage"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal1:subscribeToModel(registerVal20, __FUNC_26BC9_)
	registerVal21 = Engine.GetModelForController(arg0)
	registerVal20 = Engine.GetModel(registerVal21, "factions.isCoDCaster")
	local function __FUNC_26D95_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "factions.isCoDCaster"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal1:subscribeToModel(registerVal20, __FUNC_26D95_)
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_26F5E_(arg1, arg2)
		SendClientScriptMenuStateChangeNotify(arg0, registerVal1, true, "mp")
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_26F5E_)
	local function __FUNC_2701C_(arg0, arg1, arg2, arg3)
		local registerVal4 = ItemRestrictionCACEditActive()
		registerVal4 = IsGlobalModelValueEqualTo(arg0, arg2, "lobbyRoot.Pregame.stage", 102.000000)
		registerVal4 = IsCodCaster(arg2)
		if registerVal4 and registerVal4 and not registerVal4 then
			SetPregameEditIncomplete(arg2)
			return true
		else
			registerVal4 = ItemRestrictionScorestreakEditActive()
			registerVal4 = IsGlobalModelValueEqualTo(arg0, arg2, "lobbyRoot.Pregame.stage", 102.000000)
			registerVal4 = IsCodCaster(arg2)
			if registerVal4 and registerVal4 and not registerVal4 then
				SetPregameEditIncomplete(arg2)
				return true
			end
		end
	end

	local function __FUNC_271D0_(arg0, arg1, arg2)
		local registerVal3 = ItemRestrictionCACEditActive()
		registerVal3 = IsGlobalModelValueEqualTo(arg0, arg2, "lobbyRoot.Pregame.stage", 102.000000)
		registerVal3 = IsCodCaster(arg2)
		if registerVal3 and registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_OPEN_SCORESTREAK_EDIT")
			return true
		else
			registerVal3 = ItemRestrictionScorestreakEditActive()
			registerVal3 = IsGlobalModelValueEqualTo(arg0, arg2, "lobbyRoot.Pregame.stage", 102.000000)
			registerVal3 = IsCodCaster(arg2)
			if registerVal3 and registerVal3 and not registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_OPEN_EDIT_CAC")
				return true
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "E", __FUNC_2701C_, __FUNC_271D0_, false)
	registerVal8.id = "Team1ListSmall"
	registerVal9.id = "Team1ListLarge"
	registerVal10.id = "Team2ListSmall"
	registerVal11.id = "Team2ListLarge"
	registerVal12.id = "PregameBanProtectSelections"
	registerVal20 = {}
	registerVal20.name = "menu_loaded"
	registerVal20.controller = arg0
	registerVal1:processEvent(registerVal20)
	registerVal20 = {}
	registerVal20.name = "update_state"
	registerVal20.menu = registerVal1
	registerVal1:processEvent(registerVal20)
	registerVal18 = registerVal1:restoreState()
	if not registerVal18 then
		registerVal20 = {}
		registerVal20.name = "gain_focus"
		registerVal20.controller = arg0
		registerVal1.PregameBanProtectSelections:processEvent(registerVal20)
	end
	local function __FUNC_2748C_(arg1)
		arg1.VignetteBack:close()
		arg1.FEButtonPanel0:close()
		arg1.Team1ListSmall:close()
		arg1.Team1ListLarge:close()
		arg1.Team2ListSmall:close()
		arg1.Team2ListLarge:close()
		arg1.PregameBanProtectSelections:close()
		arg1.PregameMainTimer:close()
		arg1.PreGameStates:close()
		arg1.PregameFactionHeader:close()
		arg1.PregameTitleSmall:close()
		arg1.EditButtonPrompt:close()
		arg1.MapImage:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Pregame_Main.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2748C_)
	if __FUNC_6DF_ then
		__FUNC_6DF_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.Pregame_Main = __FUNC_1C2C_
