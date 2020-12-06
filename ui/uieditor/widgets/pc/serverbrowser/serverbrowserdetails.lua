-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.MapVote.MapVoteLabelUpper")
require("ui.uieditor.widgets.Lobby.MapVote.MapVoteLabelLower")
require("ui.uieditor.widgets.PC.ServerBrowser.ServerBrowserButton")
require("ui.uieditor.widgets.PC.ServerBrowser.ServerBrowserPlayerRow")
require("ui.uieditor.widgets.Scrollbars.verticalScrollbar")
local function __FUNC_3DE_(arg0)
	local registerVal2 = Engine.SteamServerBrowser_GetPlayerCount()
	for index3=0.000000, (registerVal2 - 1.000000), 1.000000 do
		local registerVal7 = Engine.SteamServerBrowser_GetPlayerInfo(index3)
		local registerVal10 = {}
		local registerVal11 = {}
		registerVal11.name = registerVal7.name
		registerVal11.timePlayed = registerVal7.timePlayed
		registerVal10.models = registerVal11
		table.insert({}, registerVal10)
	end
	local function __FUNC_57E_(arg0, arg1)
		if arg1.models.timePlayed >= arg0.models.timePlayed then
		end
		return true
	end

	table.sort({}, __FUNC_57E_)
	return {}
end

local registerVal1 = DataSourceHelpers.ListSetup("ServerBrowserPlayers", __FUNC_3DE_, true)
DataSources.ServerBrowserPlayers = registerVal1
local function __FUNC_610_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "serverBrowser.playersRefresh")
	arg0.playersRefreshModel = registerVal2
end

local function __FUNC_6EC_(arg0, arg1, arg2)
	arg0.playersList:setDataSource("ServerBrowserPlayers")
	local function __FUNC_7FF_(arg1)
		arg0.playersList:updateDataSource(false, false)
	end

	local registerVal4 = arg0.playersList:subscribeToModel(arg0.playersRefreshModel, __FUNC_7FF_)
	arg0.playersList.subscription = registerVal4
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.ServerBrowserDetails = registerVal3
local function __FUNC_877_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_610_ then
		__FUNC_610_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ServerBrowserDetails)
	registerVal2.id = "ServerBrowserDetails"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 500.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 10.000000, -10.000000)
	registerVal3:setTopBottom(true, false, 30.000000, 230.000000)
	local function __FUNC_1C88_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(MapNameToMapImage(registerVal1)))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "mapName", true, __FUNC_1C88_)
	registerVal2:addElement(registerVal3)
	registerVal2.mapImage = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 110.000000, 390.000000)
	registerVal4:setTopBottom(true, false, 237.500000, 262.500000)
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1D5F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "desc", true, __FUNC_1D5F_)
	registerVal2:addElement(registerVal4)
	registerVal2.description = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 10.000000, 210.000000)
	registerVal5:setTopBottom(true, false, 237.500000, 262.500000)
	registerVal5:setRGB(0.590000, 0.590000, 0.590000)
	registerVal5:setText(Engine.Localize("MENU_DESCRIPTION"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.descriptionLabel = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 110.000000, 390.000000)
	registerVal6:setTopBottom(true, false, 286.860000, 311.860000)
	registerVal6:setTTF("fonts/default.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1E16_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "modName", true, __FUNC_1E16_)
	registerVal2:addElement(registerVal6)
	registerVal2.mod = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 10.000000, 110.000000)
	registerVal7:setTopBottom(true, false, 286.860000, 311.860000)
	registerVal7:setRGB(0.590000, 0.590000, 0.590000)
	registerVal7:setText(Engine.Localize("MENU_MODS"))
	registerVal7:setTTF("fonts/default.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.modLabel = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 10.000000, 390.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 18.000000)
	registerVal8:setTTF("fonts/default.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1ECE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "name", true, __FUNC_1ECE_)
	registerVal2:addElement(registerVal8)
	registerVal2.name = registerVal8
	local registerVal9 = CoD.MapVoteLabelUpper.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 13.500000, 190.500000)
	registerVal9:setTopBottom(true, false, 184.000000, 205.000000)
	local function __FUNC_1F86_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.btnDisplayTextStroke:setText(MapNameToLocalizedMapName(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "mapName", true, __FUNC_1F86_)
	registerVal2:addElement(registerVal9)
	registerVal2.map = registerVal9
	local registerVal10 = CoD.MapVoteLabelLower.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 13.500000, 163.500000)
	registerVal10:setTopBottom(true, false, 208.000000, 226.000000)
	registerVal10.SubTitle:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	local function __FUNC_206D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.SubTitle:setText(Engine.Localize(GetGameTypeDisplayString(registerVal1)))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "gameType", true, __FUNC_206D_)
	registerVal2:addElement(registerVal10)
	registerVal2.gametype = registerVal10
	local registerVal11 = CoD.MapVoteLabelLower.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 250.000000, 386.000000)
	registerVal11:setTopBottom(true, false, 208.000000, 226.000000)
	registerVal11.SubTitle:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	local function __FUNC_216E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.SubTitle:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "connectAddr", true, __FUNC_216E_)
	registerVal2:addElement(registerVal11)
	registerVal2.ip = registerVal11
	local registerVal12 = CoD.ServerBrowserButton.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 10.000000, 184.000000)
	registerVal12:setTopBottom(true, false, 463.500000, 495.500000)
	registerVal12.btnDisplayText:setText(Engine.Localize("PLATFORM_JOIN_SERVER_CAPS"))
	registerVal12.btnDisplayTextStroke:setText(Engine.Localize("PLATFORM_JOIN_SERVER_CAPS"))
	local function __FUNC_2244_(arg0)
		registerVal12:setModel(arg0, arg1)
	end

	registerVal12:linkToElementModel(registerVal2, nil, false, __FUNC_2244_)
	local function __FUNC_2296_(arg2, arg3)
		ServerBrowserCancelRequest(registerVal2)
		JoinServerBrowser(registerVal2, arg2, arg1, arg0)
		if not nil then
			local registerVal3 = arg2:dispatchEventToChildren(arg3)
		end
		return registerVal3
	end

	registerVal12:registerEventHandler("button_action", __FUNC_2296_)
	registerVal2:addElement(registerVal12)
	registerVal2.joinButton = registerVal12
	local registerVal13 = CoD.ServerBrowserButton.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 10.000000, 184.000000)
	registerVal13:setTopBottom(true, false, 429.470000, 461.470000)
	registerVal13.btnDisplayText:setText(Engine.Localize("MENU_REFRESH_CAPS"))
	registerVal13.btnDisplayTextStroke:setText(Engine.Localize("MENU_REFRESH_CAPS"))
	local function __FUNC_2364_(arg0)
		registerVal13:setModel(arg0, arg1)
	end

	registerVal13:linkToElementModel(registerVal2, nil, false, __FUNC_2364_)
	local function __FUNC_23B6_(arg1, arg2)
		ServerBrowserRefreshServer(registerVal2, arg1, arg0, model)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal13:registerEventHandler("button_action", __FUNC_23B6_)
	registerVal2:addElement(registerVal13)
	registerVal2.refreshButton = registerVal13
	local registerVal14 = CoD.ServerBrowserButton.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 200.000000, 390.000000)
	registerVal14:setTopBottom(true, false, 429.470000, 461.470000)
	registerVal14.btnDisplayText:setText(Engine.Localize("MENU_ADD_TO_FAVORITES_CAPS"))
	registerVal14.btnDisplayTextStroke:setText(Engine.Localize("MENU_ADD_TO_FAVORITES_CAPS"))
	local function __FUNC_246C_(arg0)
		registerVal14:setModel(arg0, arg1)
	end

	registerVal14:linkToElementModel(registerVal2, nil, false, __FUNC_246C_)
	local function __FUNC_24BE_(arg1, arg2)
		ServerBrowserSetFavorite(registerVal2, arg1, arg0, model)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal14:registerEventHandler("button_action", __FUNC_24BE_)
	registerVal2:addElement(registerVal14)
	registerVal2.favoriteButton = registerVal14
	local registerVal15 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal15:makeFocusable()
	registerVal15:setLeftRight(true, false, 13.500000, 363.500000)
	registerVal15:setTopBottom(true, false, 315.860000, 421.860000)
	registerVal15:setWidgetType(CoD.ServerBrowserPlayerRow)
	registerVal15:setVerticalCount(4.000000)
	registerVal15:setVerticalScrollbar(CoD.verticalScrollbar)
	registerVal15:setDataSource("ServerBrowserPlayer")
	registerVal2:addElement(registerVal15)
	registerVal2.playersList = registerVal15
	local registerVal16 = {}
	local registerVal17 = {}
	local function __FUNC_2572_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal2.mapImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.description:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.descriptionLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.mod:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.modLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.name:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.map:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.gametype:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ip:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.joinButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.refreshButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal14.btnDisplayText:completeAnimation()
		registerVal14.btnDisplayTextStroke:completeAnimation()
		registerVal2.favoriteButton:setAlpha(1.000000)
		registerVal2.favoriteButton.btnDisplayText:setText(Engine.Localize("MENU_ADD_TO_FAVORITES_CAPS"))
		registerVal2.favoriteButton.btnDisplayTextStroke:setText(Engine.Localize("MENU_ADD_TO_FAVORITES_CAPS"))
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.playersList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_2572_
	registerVal16.DefaultState = registerVal17
	registerVal17 = {}
	local function __FUNC_2BB4_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal2.mapImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.description:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.descriptionLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.mod:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.modLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.name:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.map:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.gametype:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ip:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.joinButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.refreshButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.favoriteButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.playersList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_2BB4_
	registerVal16.NoServers = registerVal17
	registerVal17 = {}
	local function __FUNC_30C3_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal2.mapImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.description:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.descriptionLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.mod:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.modLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.name:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.map:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.gametype:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ip:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.joinButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.refreshButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal14.btnDisplayText:completeAnimation()
		registerVal14.btnDisplayTextStroke:completeAnimation()
		registerVal2.favoriteButton:setAlpha(1.000000)
		registerVal2.favoriteButton.btnDisplayText:setText(Engine.Localize("PLATFORM_REMOVE_FROM_FAVORITES_CAPS"))
		registerVal2.favoriteButton.btnDisplayTextStroke:setText(Engine.Localize("PLATFORM_REMOVE_FROM_FAVORITES_CAPS"))
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.playersList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_30C3_
	registerVal16.Favorites = registerVal17
	registerVal17 = {}
	local function __FUNC_370D_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal2.mapImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.description:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.descriptionLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.mod:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.modLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.name:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.map:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.gametype:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ip:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.joinButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.refreshButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal14.btnDisplayText:completeAnimation()
		registerVal14.btnDisplayTextStroke:completeAnimation()
		registerVal2.favoriteButton:setAlpha(1.000000)
		registerVal2.favoriteButton.btnDisplayText:setText(Engine.Localize("PLATFORM_REMOVE_FROM_HISTORY_CAPS"))
		registerVal2.favoriteButton.btnDisplayTextStroke:setText(Engine.Localize("PLATFORM_REMOVE_FROM_HISTORY_CAPS"))
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.playersList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_370D_
	registerVal16.History = registerVal17
	registerVal2.clipsPerState = registerVal16
	registerVal15.id = "playersList"
	local function __FUNC_3D57_(arg0, arg1)
		local registerVal2 = arg0.playersList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_3D57_)
	local function __FUNC_3E5B_(arg0)
		arg0.map:close()
		arg0.gametype:close()
		arg0.ip:close()
		arg0.joinButton:close()
		arg0.refreshButton:close()
		arg0.favoriteButton:close()
		arg0.playersList:close()
		arg0.mapImage:close()
		arg0.description:close()
		arg0.mod:close()
		arg0.name:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3E5B_)
	if __FUNC_6EC_ then
		__FUNC_6EC_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ServerBrowserDetails.new = __FUNC_877_
