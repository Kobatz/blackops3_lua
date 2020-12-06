-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.Lobby.LobbyStreamerBlackFade")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.List1Button_Playlist")
require("ui.uieditor.widgets.Arena.Arena_MatchSettingInfo")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.Arena.ArenaPlaylistRank")
require("ui.uieditor.widgets.GameSettings.GameSettings_titlesecbox")
require("ui.uieditor.widgets.Arena.Arena_BetaWidget")
local function __FUNC_4A8_(arg0, arg1)
	arg0.disablePopupOpenCloseAnim = true
end

local function __FUNC_4FD_(arg0, arg1, arg2)
	Engine.SetPlaylistID(arg1.playlist.index)
	Engine.SetProfileVar(arg2, "playlist_leaguematch", tostring(arg1.playlist.index))
	CoD.LobbyBase.SetPlaylistName(arg1.playlist.name)
	Engine.RunPlaylistRules(arg2)
	ForceNotifyGlobalModel(arg2, "GametypeSettings.Update")
	GoBack(arg0, arg2)
end

local function __FUNC_729_(arg0, arg1, arg2)
	local registerVal4 = tostring(arg1)
	local function __FUNC_803_(arg0)
		local registerVal1 = CoD.ArenaUtility.GetRankVisibleStars(arg2)
		local registerVal2 = CoD.ArenaUtility.GetStarCount(arg2)
		for index4=0.000000, (registerVal1 - 1.000000), 1.000000 do
			if index4 >= registerVal2 then
			end
			local registerVal11 = {}
			local registerVal12 = {}
			registerVal12.earned = true
			registerVal11.models = registerVal12
			table.insert({}, registerVal11)
		end
		return {}
	end

	local registerVal5 = DataSourceHelpers.ListSetup(("Arena_Stars_" .. registerVal4), __FUNC_803_, true)
	DataSources[("Arena_Stars_" .. registerVal4)] = registerVal5
	return ("Arena_Stars_" .. registerVal4)
end

local function __FUNC_967_(arg0)
	local registerVal2, registerVal3 = LuaUtils.GetArenaPlaylistInfo()
	local registerVal4 = Engine.GetProfileVarInt(arg0, "playlist_leaguematch")
	local registerVal5, registerVal6, registerVal7 = ipairs(registerVal3)
	for index8,value9 in registerVal5, registerVal6, registerVal7 do
		local registerVal11 = Engine.DvarBool(nil, "groupCountsVisible")
		if registerVal11 == true then
			local registerVal13 = CoD.separateNumberWithCommas(value9.playerCount)
			registerVal11 = Engine.Localize("MENU_PLAYLIST_USER_COUNT", registerVal13, CoD.separateNumberWithCommas(registerVal2.playerCount))
		else
			if registerVal2.playerCount == 0.000000 then
				registerVal2.playerCount = 1.000000
			end
			registerVal11 = Engine.Localize("MENU_PLAYLIST_USER_PERCENT", math.floor((((value9.playerCount / registerVal2.playerCount) * 100.000000) + 0.500000)))
		end
		registerVal11 = Engine.GetArenaPoints(arg0, value9.arenaSlot)
		local registerVal14 = {}
		local registerVal15 = {}
		if not value9.name then
		end
		registerVal15.text = ""
		if not value9.name then
		end
		registerVal15.buttonText = ""
		if not value9.icon then
		end
		registerVal15.image = "blacktransparent"
		if not value9.description then
		end
		registerVal15.description = ""
		registerVal15.playlistCount = registerVal11
		registerVal15.action = __FUNC_4FD_
		registerVal15.arenaPoints = registerVal11
		local registerVal16 = __FUNC_729_(arg0, value9.index, registerVal11)
		registerVal15.starsDatasource = registerVal16
		registerVal14.models = registerVal15
		registerVal15 = {}
		registerVal16 = tostring(value9.index)
		registerVal15.id = registerVal16
		registerVal15.playlist = value9
		if value9.index ~= registerVal4 then
		end
		registerVal15.selectIndex = true
		registerVal14.properties = registerVal15
		table.insert({}, registerVal14)
	end
	return {}
end

local registerVal5 = DataSourceHelpers.ListSetup("CompetitivePlaylist", __FUNC_967_, true)
DataSources.CompetitivePlaylist = registerVal5
local function __FUNC_F22_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Competitive_Playlist")
	if __FUNC_4A8_ then
		__FUNC_4A8_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Competitive_Playlist.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, -45.000000, 35.000000)
	registerVal3:setTopBottom(true, true, -43.000000, 102.000000)
	registerVal3:setRGB(0.310000, 0.310000, 0.310000)
	registerVal1:addElement(registerVal3)
	registerVal1.LeftPanel = registerVal3
	local registerVal4 = CoD.LobbyStreamerBlackFade.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 720.000000)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Transparent"
	local function __FUNC_25C6_(arg1, arg2, arg3)
		return IsGlobalModelValueEqualTo(arg2, arg0, "hideWorldForStreamer", 0.000000)
	end

	registerVal8.condition = __FUNC_25C6_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "hideWorldForStreamer")
	local function __FUNC_2652_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hideWorldForStreamer"
		registerVal1:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_2652_)
	registerVal1:addElement(registerVal4)
	registerVal1.FadeForStreamer = registerVal4
	local registerVal5 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5.titleLabel:setText(Engine.Localize("MENU_PLAYLISTS_CAPS"))
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_PLAYLISTS_CAPS"))
	registerVal1:addElement(registerVal5)
	registerVal1.frame = registerVal5
	local registerVal6 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, false, 67.000000, 347.000000)
	registerVal6:setTopBottom(true, false, 142.000000, 276.000000)
	registerVal6:setDataSource("CompetitivePlaylist")
	registerVal6:setWidgetType(CoD.List1Button_Playlist)
	registerVal6:setVerticalCount(4.000000)
	local function __FUNC_277A_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "disabled"
		CoD.Menu.UpdateButtonShownState(registerVal6, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal6:linkToElementModel(registerVal6, "disabled", true, __FUNC_277A_)
	local function __FUNC_2935_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal6:registerEventHandler("gain_focus", __FUNC_2935_)
	local function __FUNC_2AC7_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_2AC7_)
	local function __FUNC_2B96_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDisabled(arg0, arg2)
		if not registerVal4 then
			ProcessListAction(registerVal1, arg0, arg2)
			ClearSavedState(registerVal1, arg2)
			return true
		end
	end

	local function __FUNC_2C4C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsDisabled(arg0, arg2)
		if not registerVal3 then
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal6, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2B96_, __FUNC_2C4C_, false)
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Disabled"
	local function __FUNC_2D7E_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal10.condition = __FUNC_2D7E_
	local registerVal11 = {}
	registerVal11.stateName = "Disabled_NoListFocus"
	local function __FUNC_2DC9_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal11.condition = __FUNC_2DC9_
	local registerVal12 = {}
	registerVal12.stateName = "NoListFocus"
	local function __FUNC_2E15_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal12.condition = __FUNC_2E15_
	registerVal9 = {registerVal10, registerVal11, registerVal12}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal1:addElement(registerVal6)
	registerVal1.playlistList = registerVal6
	registerVal7 = CoD.Arena_MatchSettingInfo.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 697.000000, 1177.500000)
	registerVal7:setTopBottom(true, false, 141.000000, 691.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.ArenaMatchSettingInfo = registerVal7
	registerVal8 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal8:setTopBottom(true, false, 84.000000, 701.250000)
	registerVal1:addElement(registerVal8)
	registerVal1.FEMenuLeftGraphics = registerVal8
	registerVal9 = CoD.ArenaPlaylistRank.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 699.000000, 1019.000000)
	registerVal9:setTopBottom(true, false, 546.630000, 636.630000)
	registerVal9.ImagePanel:setZoom(0.000000)
	registerVal9.TickTL:setAlpha(0.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.ArenaPlaylistRank = registerVal9
	registerVal10 = CoD.GameSettings_titlesecbox.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 72.000000, 248.000000)
	registerVal10:setTopBottom(true, false, 288.630000, 316.630000)
	registerVal10.GameSettingstextboxBG:setAlpha(0.000000)
	registerVal10.TitleGlow1:setAlpha(0.850000)
	registerVal10.Textbox:setText(Engine.Localize(LocalizeToUpperString("MENU_ARENA_OVERVIEW")))
	registerVal1:addElement(registerVal10)
	registerVal1.ArenaOverview = registerVal10
	registerVal11 = CoD.Arena_BetaWidget.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 63.000000, 513.000000)
	registerVal11:setTopBottom(true, false, 543.630000, 608.130000)
	registerVal1:addElement(registerVal11)
	registerVal1.ArenaBetaWidget = registerVal11
	registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(true, false, 77.000000, 517.000000)
	registerVal12:setTopBottom(false, true, -403.380000, -381.380000)
	registerVal12:setRGB(0.740000, 0.740000, 0.740000)
	registerVal12:setText(Engine.Localize("MENU_ARENA_OVERVIEW_DESC"))
	registerVal12:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal12:setLineSpacing(0.500000)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal12)
	registerVal1.Description = registerVal12
	local registerVal13 = LUI.UITightText.new()
	registerVal13:setLeftRight(true, false, 67.000000, 513.000000)
	registerVal13:setTopBottom(true, false, 613.630000, 637.630000)
	registerVal13:setTTF("fonts/escom.ttf")
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal13:setShaderVector(0.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal13:setShaderVector(1.000000, 0.030000, 0.000000, 0.000000, 0.000000)
	registerVal13:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal13:setLetterSpacing(2.000000)
	local function __FUNC_2E61_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:setText(Engine.Localize(ArenaSeasonEndTime(registerVal1)))
		end
	end

	registerVal13:subscribeToGlobalModel(arg0, "Arena", "seasonTimeleft", __FUNC_2E61_)
	registerVal1:addElement(registerVal13)
	registerVal1.SeasonEnd = registerVal13
	local function __FUNC_2F3E_(arg1)
		registerVal7:setModel(arg1, arg0)
	end

	registerVal7:linkToElementModel(registerVal6, nil, false, __FUNC_2F3E_)
	local function __FUNC_2F8E_(arg1)
		registerVal9:setModel(arg1, arg0)
	end

	registerVal9:linkToElementModel(registerVal6, nil, false, __FUNC_2F8E_)
	local registerVal14 = {}
	local registerVal15 = {}
	local function __FUNC_2FDE_()
		registerVal1:setupElementClipCounter(0.000000)
	end

	registerVal15.DefaultClip = __FUNC_2FDE_
	registerVal14.DefaultState = registerVal15
	registerVal1.clipsPerState = registerVal14
	local function __FUNC_303E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsMenuInState(arg1, "DefaultState")
		if registerVal4 then
			GoBack(registerVal1, arg2)
			return true
		else
			SetPerControllerTableProperty(arg2, "playlistCategory", nil)
			SetMenuState(arg1, "DefaultState")
			SetLoseFocusToElement(registerVal1, "playlistList", arg2)
			MakeElementNotFocusable(registerVal1, "playlistList", arg2)
			MakeElementFocusable(registerVal1, "playlistCategoriesList", arg2)
			SetFocusToElement(registerVal1, "playlistCategoriesList", arg2)
			return true
		end
	end

	local function __FUNC_325B_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_303E_, __FUNC_325B_, false)
	registerVal5:setModel(registerVal1.buttonModel, arg0)
	registerVal6.id = "playlistList"
	registerVal9.id = "ArenaPlaylistRank"
	local registerVal16 = {}
	registerVal16.name = "menu_loaded"
	registerVal16.controller = arg0
	registerVal1:processEvent(registerVal16)
	registerVal16 = {}
	registerVal16.name = "update_state"
	registerVal16.menu = registerVal1
	registerVal1:processEvent(registerVal16)
	registerVal14 = registerVal1:restoreState()
	if not registerVal14 then
		registerVal16 = {}
		registerVal16.name = "gain_focus"
		registerVal16.controller = arg0
		registerVal1.playlistList:processEvent(registerVal16)
	end
	local function __FUNC_3355_(arg1)
		arg1.LeftPanel:close()
		arg1.FadeForStreamer:close()
		arg1.frame:close()
		arg1.playlistList:close()
		arg1.ArenaMatchSettingInfo:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.ArenaPlaylistRank:close()
		arg1.ArenaOverview:close()
		arg1.ArenaBetaWidget:close()
		arg1.SeasonEnd:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Competitive_Playlist.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_3355_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.Competitive_Playlist = __FUNC_F22_
