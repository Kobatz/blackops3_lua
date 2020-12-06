-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_WhiteGlow")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
require("ui.uieditor.widgets.StartGameFlow.TeamIconAndNameWidgetContainer")
require("ui.uieditor.widgets.Competitive.Competitive_CharacterDraft_Player")
local function __FUNC_2C7_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	local registerVal2 = Engine.CreateModel(registerVal3, "Pregame")
	registerVal3 = Engine.CreateModel(registerVal2, "clientState")
	local function __FUNC_3D8_(arg2)
		local registerVal1 = Engine.GetModelValue(arg2)
		if registerVal1 == Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_SELECTING_CHARACTER then
			OpenChooseCharacterLoadout(nil, nil, arg1, LuaEnums.CHOOSE_CHARACTER_OPENED_FROM.DRAFT, arg0)
		else
			local registerVal2 = Engine.GetXUID(arg1)
			local registerVal3 = Engine.LobbyGetSessionClients(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_GAME)
			local registerVal4, registerVal5, registerVal6 = ipairs(registerVal3.sessionClients)
			for index7,value8 in registerVal4, registerVal5, registerVal6 do
				if value8.xuid == registerVal2 and value8.characterDraft.loadout ~= Enum.heroLoadoutTypes_e.HERO_LOADOUT_TYPE_INVALID then
					Engine.SetHero(arg1, CoD.CCUtility.customizationMode, value8.characterDraft.characterIndex)
					Engine.SetHeroLoadoutItem(arg1, CoD.CCUtility.customizationMode, value8.characterDraft.characterIndex, value8.characterDraft.loadout)
					return 
				end
			end
		end
	end

	arg0:subscribeToModel(registerVal3, __FUNC_3D8_)
end

local function __FUNC_8F7_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Competitive_CharacterDraft")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Competitive_CharacterDraft.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_207B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg0, "MapInfo", "mapImage", __FUNC_207B_)
	registerVal1:addElement(registerVal3)
	registerVal1.Background = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.390000)
	registerVal1:addElement(registerVal4)
	registerVal1.Darken = registerVal4
	local registerVal5 = CoD.StartMenu_WhiteGlow.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 516.190000, -513.500000)
	registerVal5:setTopBottom(true, true, 77.000000, -613.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.StartMenuWhiteGlow = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 516.190000, 766.500000)
	registerVal6:setTopBottom(true, false, 77.000000, 107.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setText(Engine.Localize("SPECIALIST DRAFT"))
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal6)
	registerVal1.SpecialistDraft = registerVal6
	local registerVal7 = CoD.FE_ButtonPanel.new(registerVal1, arg0)
	registerVal7:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal7:setTopBottom(false, false, -237.000000, -188.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setAlpha(0.260000)
	registerVal1:addElement(registerVal7)
	registerVal1.VSpanel = registerVal7
	local registerVal8 = CoD.TeamIconAndNameWidgetContainer.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 843.500000, 1188.500000)
	registerVal8:setTopBottom(true, false, 105.000000, 190.000000)
	local function __FUNC_212C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.TeamIconAndNameWidget.FactionName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg0, "LoadingScreenTeamInfo", "team2FactionName", __FUNC_212C_)
	local function __FUNC_2232_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.TeamIconAndNameWidget.FactionIconSolid:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg0, "LoadingScreenTeamInfo", "team2FactionIcon", __FUNC_2232_)
	local function __FUNC_2335_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.TeamIconAndNameWidget.FactionIcon:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg0, "LoadingScreenTeamInfo", "team2FactionIcon", __FUNC_2335_)
	local function __FUNC_2434_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.TeamIconAndNameWidgetForCodCaster.FactionName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg0, "LoadingScreenTeamInfo", "team2FactionName", __FUNC_2434_)
	local function __FUNC_2546_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.TeamIconAndNameWidgetForCodCaster.FactionIconSolid:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg0, "LoadingScreenTeamInfo", "team2FactionIcon", __FUNC_2546_)
	local function __FUNC_2655_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.TeamIconAndNameWidgetForCodCaster.FactionIcon:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg0, "LoadingScreenTeamInfo", "team2FactionIcon", __FUNC_2655_)
	registerVal1:addElement(registerVal8)
	registerVal1.Team2IconAndNameWidgetContainer = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(false, false, -70.340000, 73.030000)
	registerVal9:setTopBottom(true, false, 115.000000, 184.000000)
	registerVal9:setText(Engine.Localize("VS"))
	registerVal9:setTTF("fonts/escom.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal9)
	registerVal1.VSlabel = registerVal9
	local registerVal10 = CoD.TeamIconAndNameWidgetContainer.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 107.470000, 452.470000)
	registerVal10:setTopBottom(true, false, 99.000000, 184.000000)
	local function __FUNC_2760_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.TeamIconAndNameWidget.FactionName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg0, "LoadingScreenTeamInfo", "team1FactionName", __FUNC_2760_)
	local function __FUNC_2866_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.TeamIconAndNameWidget.FactionIconSolid:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg0, "LoadingScreenTeamInfo", "team1FactionIcon", __FUNC_2866_)
	local function __FUNC_2969_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.TeamIconAndNameWidget.FactionIcon:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg0, "LoadingScreenTeamInfo", "team1FactionIcon", __FUNC_2969_)
	local function __FUNC_2A68_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.TeamIconAndNameWidgetForCodCaster.FactionName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg0, "LoadingScreenTeamInfo", "team1FactionName", __FUNC_2A68_)
	local function __FUNC_2B7A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.TeamIconAndNameWidgetForCodCaster.FactionIconSolid:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg0, "LoadingScreenTeamInfo", "team1FactionIcon", __FUNC_2B7A_)
	local function __FUNC_2C89_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.TeamIconAndNameWidgetForCodCaster.FactionIcon:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg0, "LoadingScreenTeamInfo", "team1FactionIcon", __FUNC_2C89_)
	registerVal1:addElement(registerVal10)
	registerVal1.Team1IconAndNameWidgetContainer = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, 486.970000, 863.410000)
	registerVal11:setTopBottom(true, false, 42.000000, 69.000000)
	registerVal11:setText(Engine.Localize(GetGameModeOnMapName("Domination on Stronghold")))
	registerVal11:setTTF("fonts/UnitedSansRgMd.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal11)
	registerVal1.Title = registerVal11
	local registerVal12 = CoD.FE_ButtonPanel.new(registerVal1, arg0)
	registerVal12:setLeftRight(false, false, -230.500000, 230.500000)
	registerVal12:setTopBottom(false, false, -333.000000, -283.000000)
	registerVal12:setRGB(0.000000, 0.000000, 0.000000)
	registerVal12:setAlpha(0.260000)
	registerVal1:addElement(registerVal12)
	registerVal1.GameModeBackground = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 411.970000, 492.970000)
	registerVal13:setTopBottom(true, false, 11.500000, 92.500000)
	local function __FUNC_2D94_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal13:subscribeToGlobalModel(arg0, "MapInfo", "gameTypeIcon", __FUNC_2D94_)
	registerVal1:addElement(registerVal13)
	registerVal1.GamemodeIcon = registerVal13
	local registerVal14 = CoD.FE_ButtonPanel.new(registerVal1, arg0)
	registerVal14:setLeftRight(false, false, -190.530000, 192.260000)
	registerVal14:setTopBottom(false, false, -168.000000, 126.000000)
	registerVal14:setRGB(0.000000, 0.000000, 0.000000)
	registerVal14:setAlpha(0.260000)
	registerVal1:addElement(registerVal14)
	registerVal1.FEButtonPanel0 = registerVal14
	local registerVal15 = CoD.StartMenu_WhiteGlow.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, false, 611.370000, 670.370000)
	registerVal15:setTopBottom(true, false, 196.000000, 255.000000)
	registerVal1:addElement(registerVal15)
	registerVal1.StartMenuWhiteGlow0 = registerVal15
	local registerVal16 = LUI.UIText.new()
	registerVal16:setLeftRight(true, false, 611.370000, 670.370000)
	registerVal16:setTopBottom(true, false, 198.500000, 252.500000)
	registerVal16:setRGB(0.000000, 0.000000, 0.000000)
	registerVal16:setTTF("fonts/escom.ttf")
	registerVal16:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal16:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	local function __FUNC_2E48_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal16:subscribeToGlobalModel(arg0, "PregameGlobal", "timeleft", __FUNC_2E48_)
	registerVal1:addElement(registerVal16)
	registerVal1.Timer = registerVal16
	local registerVal17 = LUI.UIText.new()
	registerVal17:setLeftRight(true, false, 449.470000, 832.260000)
	registerVal17:setTopBottom(true, false, 255.000000, 276.500000)
	registerVal17:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	local function __FUNC_2F02_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal17:subscribeToGlobalModel(arg0, "PregameGlobal", "status", __FUNC_2F02_)
	registerVal1:addElement(registerVal17)
	registerVal1.TimerStatus = registerVal17
	local function __FUNC_2FBA_(arg0)
		local registerVal1 = Engine.GetModelValue(Engine.GetModel(arg0, "teamString"))
		if registerVal1 ~= "1" then
		end
		return true
	end

	local registerVal18 = LUI.UIList.new(registerVal1, arg0, 4.000000, 0.000000, __FUNC_2FBA_, false, false, 0.000000, 0.000000, false, true)
	registerVal18:makeFocusable()
	registerVal18:setLeftRight(true, false, 64.000000, 489.000000)
	registerVal18:setTopBottom(true, false, 193.500000, 489.500000)
	registerVal18:setDataSource("PregameClientList")
	registerVal18:setWidgetType(CoD.Competitive_CharacterDraft_Player)
	registerVal18:setVerticalCount(4.000000)
	registerVal18:setSpacing(4.000000)
	registerVal1:addElement(registerVal18)
	registerVal1.Team1List = registerVal18
	local function __FUNC_3080_(arg0)
		local registerVal1 = Engine.GetModelValue(Engine.GetModel(arg0, "teamString"))
		if registerVal1 ~= "2" then
		end
		return true
	end

	local registerVal19 = LUI.UIList.new(registerVal1, arg0, 4.000000, 0.000000, __FUNC_3080_, false, false, 0.000000, 0.000000, false, true)
	registerVal19:makeFocusable()
	registerVal19:setLeftRight(true, false, 791.000000, 1216.000000)
	registerVal19:setTopBottom(true, false, 192.000000, 488.000000)
	registerVal19:setDataSource("PregameClientList")
	registerVal19:setWidgetType(CoD.Competitive_CharacterDraft_Player)
	registerVal19:setVerticalCount(4.000000)
	registerVal19:setSpacing(4.000000)
	registerVal1:addElement(registerVal19)
	registerVal1.Team2List = registerVal19
	local registerVal20 = {}
	registerVal20.right = registerVal19
	registerVal18.navigation = registerVal20
	registerVal20 = {}
	registerVal20.left = registerVal18
	registerVal19.navigation = registerVal20
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	registerVal18.id = "Team1List"
	registerVal19.id = "Team2List"
	local registerVal22 = {}
	registerVal22.name = "menu_loaded"
	registerVal22.controller = arg0
	registerVal1:processEvent(registerVal22)
	registerVal22 = {}
	registerVal22.name = "update_state"
	registerVal22.menu = registerVal1
	registerVal1:processEvent(registerVal22)
	registerVal20 = registerVal1:restoreState()
	if not registerVal20 then
		registerVal22 = {}
		registerVal22.name = "gain_focus"
		registerVal22.controller = arg0
		registerVal1.Team1List:processEvent(registerVal22)
	end
	local function __FUNC_3148_(arg1)
		arg1.StartMenuWhiteGlow:close()
		arg1.VSpanel:close()
		arg1.Team2IconAndNameWidgetContainer:close()
		arg1.Team1IconAndNameWidgetContainer:close()
		arg1.GameModeBackground:close()
		arg1.FEButtonPanel0:close()
		arg1.StartMenuWhiteGlow0:close()
		arg1.Team1List:close()
		arg1.Team2List:close()
		arg1.Background:close()
		arg1.GamemodeIcon:close()
		arg1.Timer:close()
		arg1.TimerStatus:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Competitive_CharacterDraft.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_3148_)
	if __FUNC_2C7_ then
		__FUNC_2C7_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.Competitive_CharacterDraft = __FUNC_8F7_
