-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.MapVote.MapVoteItem")
require("ui.uieditor.widgets.Lobby.MapVote.MapVoteHeader")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleLine")
require("ui.uieditor.widgets.Freerun.FR_BestTime")
require("ui.uieditor.widgets.Freerun.FR_Difficulty")
require("ui.uieditor.widgets.Arena.ArenaMapVoteRuleItem")
require("ui.uieditor.widgets.Lobby.MapVote.MapVoteNoDemoSelected")
require("ui.uieditor.widgets.Lobby.MapVote.MapVoteResult")
require("ui.uieditor.widgets.FileShare.FileshareSpinner")
require("ui.uieditor.widgets.Lobby.MapVote.MapVoteOfficial")
require("ui.uieditor.widgets.ZMInventory.ZMMapSelection.ZMLobbyEEWidgetSmall")
local function __FUNC_50A_(arg0)
	local function __FUNC_576_(arg0, arg1)
		if arg1.button and arg1.button == "up" then
		end
		local registerVal3 = arg0.MapVoteItemRandom:processEvent(arg1)
		if arg0.m_focusable and registerVal3 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	arg0:registerEventHandler("gain_focus", __FUNC_576_)
end

local function __FUNC_6EA_(arg0, arg1)
	arg0.MapVoteItemNext.navigation = nil
	arg0.MapVoteItemNext.navigation = {}
	arg0.MapVoteItemNext.navigation.up = arg1.LeftContainer
	arg0.MapVoteItemNext.navigation.down = arg0.MapVoteItemPrevious
	arg0.MapVoteItemPrevious.navigation = nil
	arg0.MapVoteItemPrevious.navigation = {}
	arg0.MapVoteItemPrevious.navigation.up = arg0.MapVoteItemNext
	arg0.MapVoteItemPrevious.navigation.down = arg0.MapVoteItemRandom
	arg0.MapVoteItemRandom.navigation = nil
	arg0.MapVoteItemRandom.navigation = {}
	arg0.MapVoteItemRandom.navigation.up = arg0.MapVoteItemPrevious
	arg0.MapVoteItemRandom.navigation.down = arg1.LeftContainer
end

local function __FUNC_907_(arg0, arg1, arg2)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.GetModel(registerVal4, "lobbyRoot.mapVote")
	local function __FUNC_9E3_()
		local registerVal0 = LobbyData.GetLobbyNav()
		if registerVal0 ~= LobbyData.UITargets.UI_MPLOBBYONLINEPUBLICGAME.id and registerVal0 ~= LobbyData.UITargets.UI_CPLOBBYONLINEPUBLICGAME.id and registerVal0 ~= LobbyData.UITargets.UI_ZMLOBBYONLINEPUBLICGAME.id and registerVal0 ~= LobbyData.UITargets.UI_MPLOBBYONLINEARENAGAME.id then
			return 
		end
		local registerVal2 = Engine.GetGlobalModel()
		local registerVal1 = Engine.GetModel(registerVal2, "lobbyRoot.mapVote")
		registerVal2 = Engine.GetModelValue(registerVal1)
		if registerVal2 == LuaEnums.MAP_VOTE_STATE.HIDDEN then
			local registerVal5 = {}
			registerVal5.name = "lose_focus"
			registerVal5.controller = arg1
			arg0:processEvent(registerVal5)
			arg0:makeNotFocusable()
			arg0:setMouseDisabled(true)
		else
			if registerVal2 == LuaEnums.MAP_VOTE_STATE.VOTING then
				arg0:makeFocusable()
				arg0:setMouseDisabled(false)
			else
				if registerVal2 == LuaEnums.MAP_VOTE_STATE.LOCKEDIN then
					arg0:makeNotFocusable()
					arg0:setMouseDisabled(true)
					local registerVal4 = Engine.GetGlobalModel()
					local registerVal3 = Engine.CreateModel(registerVal4, "MapVote", true)
					registerVal4 = Engine.GetModelValue(Engine.CreateModel(registerVal3, "mapVoteCountNext", true))
					if not registerVal4 then
					end
					registerVal5 = Engine.GetModelValue(Engine.CreateModel(registerVal3, "mapVoteCountPrevious", true))
					if not registerVal5 then
					end
					local registerVal6 = Engine.GetModelValue(Engine.CreateModel(registerVal3, "mapVoteCountRandom", true))
					if not registerVal6 then
					end
					if 0.000000 < 0.000000 then
					end
					if 0.000000 < 0.000000 then
					end
					local registerVal9 = LuaUtils.IsArenaMode()
					if not registerVal9 then
						if Enum.LobbyMapVote.LOBBY_MAPVOTE_RANDOM == Enum.LobbyMapVote.LOBBY_MAPVOTE_NEXT then
							arg0:setState("MapVoteChosenNext")
						else
							if Enum.LobbyMapVote.LOBBY_MAPVOTE_RANDOM == Enum.LobbyMapVote.LOBBY_MAPVOTE_PREVIOUS then
								arg0:setState("MapVoteChosenPrevious")
							else
								if Enum.LobbyMapVote.LOBBY_MAPVOTE_RANDOM == Enum.LobbyMapVote.LOBBY_MAPVOTE_RANDOM then
									arg0:setState("MapVoteChosenRandom")
								end
							end
						end
					end
					arg0:setState("SelectedMap")
					arg0:makeNotFocusable()
					arg0:setMouseDisabled(true)
					registerVal9 = arg0:getParent()
					registerVal9 = arg0:getParent()
					if registerVal9 and registerVal9.LeftContainer then
						local registerVal12 = {}
						registerVal12.name = "lose_focus"
						registerVal12.controller = arg1
						arg0:processEvent(registerVal12)
						local registerVal10 = registerVal9.LeftContainer:getParent()
						local registerVal11 = registerVal9.LeftContainer:getParent()
						registerVal10 = IsMenuInState(registerVal11, "Right")
						if registerVal1 or not registerVal10 then
							registerVal12 = {}
							registerVal12.name = "gain_focus"
							registerVal12.controller = arg1
							registerVal9.LeftContainer:processEvent(registerVal12)
						end
					end
				end
			end
		end
	end

	arg0:subscribeToModel(registerVal3, __FUNC_9E3_)
end

local function __FUNC_1323_(arg0, arg1, arg2)
	arg0:makeNotFocusable()
	arg0:setMouseDisabled(true)
end

local function __FUNC_1394_(arg0)
	local registerVal1 = Dvar.ui_mapname:get()
	if arg0.mapName and registerVal1 == arg0.mapName then
		return 
	end
	arg0.mapName = registerVal1
	local registerVal2 = CoD.GetMapValue(registerVal1, "loadingImage", "black")
	local registerVal3 = LUI.UIStreamedImage.new()
	registerVal3.id = "mapImage"
	registerVal3:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal3:setTopBottom(false, false, -360.000000, 360.000000)
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
	registerVal3:setImage(RegisterImage(registerVal2))
	registerVal3:setAlpha(0.000000)
	arg0:addElement(registerVal3)
end

local function __FUNC_1694_(arg0, arg1, arg2)
	local registerVal3 = LobbyData.GetLobbyNav()
	if registerVal3 ~= LobbyData.UITargets.UI_MPLOBBYONLINEPUBLICGAME.id and registerVal3 ~= LobbyData.UITargets.UI_CPLOBBYONLINEPUBLICGAME.id and registerVal3 ~= LobbyData.UITargets.UI_ZMLOBBYONLINEPUBLICGAME.id and registerVal3 ~= LobbyData.UITargets.UI_MPLOBBYONLINEARENAGAME.id and registerVal3 == LobbyData.UITargets.UI_CP2LOBBYONLINEPUBLICGAME.id or registerVal3 == LobbyData.UITargets.UI_DOALOBBYONLINEPUBLICGAME.id then
		__FUNC_907_(arg0, arg1, arg2)
	else
		if registerVal3 ~= LobbyData.UITargets.UI_CPLOBBYONLINECUSTOMGAME.id and registerVal3 ~= LobbyData.UITargets.UI_CPLOBBYLANGAME.id and registerVal3 ~= LobbyData.UITargets.UI_CP2LOBBYONLINECUSTOMGAME.id and registerVal3 ~= LobbyData.UITargets.UI_CP2LOBBYLANGAME.id and registerVal3 ~= LobbyData.UITargets.UI_MPLOBBYONLINECUSTOMGAME.id and registerVal3 ~= LobbyData.UITargets.UI_MPLOBBYONLINETHEATER.id and registerVal3 ~= LobbyData.UITargets.UI_MPLOBBYLANGAME.id and registerVal3 ~= LobbyData.UITargets.UI_FRLOBBYONLINEGAME.id and registerVal3 ~= LobbyData.UITargets.UI_FRLOBBYLANGAME.id and registerVal3 ~= LobbyData.UITargets.UI_ZMLOBBYONLINECUSTOMGAME.id and registerVal3 ~= LobbyData.UITargets.UI_ZMLOBBYONLINETHEATER.id and registerVal3 ~= LobbyData.UITargets.UI_ZMLOBBYLANGAME.id and registerVal3 == LobbyData.UITargets.UI_DOALOBBYLANGAME.id or registerVal3 == LobbyData.UITargets.UI_DOALOBBYONLINE.id then
			__FUNC_1323_(arg0, arg1, arg2)
		else
			arg0:setState("DefaultState")
			arg0:makeNotFocusable()
			arg0:setMouseDisabled(true)
		end
	end
end

local function __FUNC_1E10_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.GetModel(registerVal3, "lobbyRoot.selectedMapId")
	registerVal3 = Engine.GetModelValue(registerVal2)
	arg0.FRDifficulty.SubTitle:setText(Engine.Localize(GetDifficultyForSelectedFreerunMap(arg1, registerVal3)))
	arg0.FRBestTime.BestTimeValueText:setText(Engine.Localize(GetBestTimeForSelectedFreerunMap(arg1, registerVal3)))
end

local function __FUNC_204A_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	Engine.CreateModel(registerVal3, "lobbyRoot.lobbyStatus")
	registerVal3 = Engine.GetGlobalModel()
	Engine.CreateModel(registerVal3, "lobbyRoot.theaterDownloadPercent")
	registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "lobbyRoot.selectedMapId")
	Engine.SetModelValue(registerVal2, Dvar.ui_mapname:get())
	local registerVal4 = Engine.GetGlobalModel()
	registerVal3 = Engine.CreateModel(registerVal4, "MapVote", true)
	Engine.CreateModel(registerVal3, "mapVoteCountNext")
	Engine.CreateModel(registerVal3, "mapVoteCountPrevious")
	Engine.CreateModel(registerVal3, "mapVoteCountRandom")
	Engine.CreateModel(registerVal3, "mapVoteGameModeNext")
	Engine.CreateModel(registerVal3, "mapVoteGameModePrevious")
	Engine.CreateModel(registerVal3, "mapVoteMapNext")
	Engine.CreateModel(registerVal3, "mapVoteMapPrevious")
	Engine.CreateModel(registerVal3, "mapVoteMapPreviousGametype")
	Engine.CreateModel(registerVal3, "timerActive")
	Engine.CreateModel(registerVal3, "mapVoteCustomGameName")
end

local function __FUNC_248C_(arg0, arg1, arg2)
	arg0:makeNotFocusable()
	arg0:setMouseDisabled(true)
	__FUNC_6EA_(arg0, arg2)
	__FUNC_50A_(arg0)
	__FUNC_1694_(arg0, arg1, arg2)
	if arg0.lobbyNavSubscription then
		arg0:removeSubscription(arg0.lobbyNavSubscription)
	end
	local registerVal5 = LobbyData.GetLobbyNavModel()
	local function __FUNC_2774_()
		__FUNC_1694_(arg0, arg1, arg2)
		__FUNC_1E10_(arg0, arg1)
	end

	local registerVal3 = arg0:subscribeToModel(registerVal5, __FUNC_2774_, false)
	arg0.lobbyNavSubscription = registerVal3
	arg0:registerEventHandler("preload_map_image", __FUNC_1394_)
	if arg0.customGameSubscription then
		arg0:removeSubscription(arg0.customGameSubscription)
	end
	local registerVal4 = Engine.GetGlobalModel()
	registerVal3 = Engine.GetModel(registerVal4, "MapVote")
	registerVal4 = Engine.GetModel(registerVal3, "mapVoteCustomGameName")
	local function __FUNC_27C4_()
		local registerVal0 = Engine.GetModel(registerVal3, "mapVoteGameModeNext")
		Engine.ForceNotifyModelSubscriptions(registerVal0)
	end

	registerVal5 = arg0:subscribeToModel(registerVal4, __FUNC_27C4_, false)
	arg0.customGameSubscription = registerVal5
end

local registerVal10 = InheritFrom(LUI.UIElement)
CoD.MapVote = registerVal10
local function __FUNC_288A_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_204A_ then
		__FUNC_204A_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MapVote)
	registerVal2.id = "MapVote"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 355.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 180.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.MapVoteItem.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(false, false, -90.000000, 88.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3.VoteType:setAlpha(0.000000)
	registerVal3.VoteType:setText(Engine.Localize(""))
	registerVal3.voteCount:setAlpha(0.000000)
	registerVal3.voteCount:setText(Engine.Localize(""))
	local function __FUNC_5239_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.MapImage:setImage(RegisterImage(MapNameToMapImage(registerVal1)))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "MapVote", "mapVoteMapNext", __FUNC_5239_)
	local function __FUNC_532D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.MapNameNew.btnDisplayTextStroke:setText(MapNameToLocalizedMapName(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "MapVote", "mapVoteMapNext", __FUNC_532D_)
	local function __FUNC_5435_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.GameModeNew.SubTitle:setText(Engine.Localize(PrependCustomGameName(registerVal1)))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "MapVote", "mapVoteGameModeNext", __FUNC_5435_)
	registerVal2:addElement(registerVal3)
	registerVal2.MapVoteItemVoteDecided = registerVal3
	local registerVal4 = CoD.MapVoteItem.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -27.000000, -27.000000)
	registerVal4:setTopBottom(false, false, 30.000000, 88.000000)
	registerVal4:setScale(0.850000)
	registerVal4.MapImage:setImage(RegisterImage("uie_lui_random_map_vote"))
	registerVal4.VoteType:setAlpha(1.000000)
	registerVal4.VoteType:setText(Engine.Localize("MPUI_RANDOM_CAPS"))
	registerVal4.MapNameNew.btnDisplayTextStroke:setText(LocalizeToUpperString("MENU_CLASSIFIED"))
	registerVal4.GameModeNew.SubTitle:setText(Engine.Localize("MENU_MODE_CLASSIFIED_CAPS"))
	local function __FUNC_5554_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.voteCount:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "MapVote", "mapVoteCountRandom", __FUNC_5554_)
	local function __FUNC_562D_(arg0, arg2)
		PlayClip(registerVal2, "MapVoteChosenRandom", arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lobby_map_vote_random_chosen", __FUNC_562D_)
	local function __FUNC_56DC_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal4:registerEventHandler("gain_focus", __FUNC_56DC_)
	local function __FUNC_586F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_586F_)
	local function __FUNC_593E_(arg0, arg1, arg2, arg3)
		LobbyMapVoteSelectRandom(registerVal2, arg2)
		PlaySoundSetSound(registerVal2, "menu_open")
		return true
	end

	local function __FUNC_59E0_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_593E_, __FUNC_59E0_, false)
	registerVal2:addElement(registerVal4)
	registerVal2.MapVoteItemRandom = registerVal4
	local registerVal5 = CoD.MapVoteItem.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, -27.000000, -27.000000)
	registerVal5:setTopBottom(false, false, -21.000000, 37.000000)
	registerVal5:setScale(0.850000)
	registerVal5.VoteType:setAlpha(1.000000)
	registerVal5.VoteType:setText(Engine.Localize("MPUI_PREV_CAPS"))
	local function __FUNC_5ADE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.MapImage:setImage(RegisterImage(MapNameToMapImage(registerVal1)))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "MapVote", "mapVoteMapPrevious", __FUNC_5ADE_)
	local function __FUNC_5BD1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.voteCount:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "MapVote", "mapVoteCountPrevious", __FUNC_5BD1_)
	local function __FUNC_5CA9_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.MapNameNew.btnDisplayTextStroke:setText(MapNameToLocalizedMapName(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "MapVote", "mapVoteMapPrevious", __FUNC_5CA9_)
	local function __FUNC_5DB1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.GameModeNew.SubTitle:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "MapVote", "mapVoteGameModePrevious", __FUNC_5DB1_)
	local function __FUNC_5EA9_(arg0, arg2)
		PlayClip(registerVal2, "MapVoteChosenPrevious", arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lobby_map_vote_previous_chosen", __FUNC_5EA9_)
	local function __FUNC_5F5A_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal5:registerEventHandler("gain_focus", __FUNC_5F5A_)
	local function __FUNC_60EB_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_60EB_)
	local function __FUNC_61BA_(arg0, arg1, arg2, arg3)
		LobbyMapVoteSelectPrevious(registerVal2, arg2)
		PlaySoundSetSound(registerVal2, "menu_open")
		return true
	end

	local function __FUNC_625E_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_61BA_, __FUNC_625E_, false)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Unselectable"
	local function __FUNC_635A_(arg0, arg1, arg2)
		local registerVal3 = MapVotePreviousSelectable()
		return (not registerVal3)
	end

	registerVal9.condition = __FUNC_635A_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "lobbyRoot.mapVote")
	local function __FUNC_63B7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.mapVote"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_63B7_)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "lobbyRoot.lobbyNav")
	local function __FUNC_64DB_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_64DB_)
	registerVal2:addElement(registerVal5)
	registerVal2.MapVoteItemPrevious = registerVal5
	local registerVal6 = CoD.MapVoteItem.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, -27.000000, -27.000000)
	registerVal6:setTopBottom(false, false, -72.000000, -14.000000)
	registerVal6:setScale(0.850000)
	registerVal6.VoteType:setAlpha(1.000000)
	registerVal6.VoteType:setText(Engine.Localize("MPUI_NEXT_CAPS"))
	local function __FUNC_6600_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.MapImage:setImage(RegisterImage(MapNameToMapImage(registerVal1)))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "MapVote", "mapVoteMapNext", __FUNC_6600_)
	local function __FUNC_66F5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.voteCount:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "MapVote", "mapVoteCountNext", __FUNC_66F5_)
	local function __FUNC_67CD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.MapNameNew.btnDisplayTextStroke:setText(MapNameToLocalizedMapName(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "MapVote", "mapVoteMapNext", __FUNC_67CD_)
	local function __FUNC_68D5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.GameModeNew.SubTitle:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "MapVote", "mapVoteGameModeNext", __FUNC_68D5_)
	local function __FUNC_69CD_(arg0, arg2)
		PlayClip(registerVal2, "MapVoteChosenNext", arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lobby_map_vote_next_chosen", __FUNC_69CD_)
	local function __FUNC_6A7A_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal6:registerEventHandler("gain_focus", __FUNC_6A7A_)
	local function __FUNC_6C0B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_6C0B_)
	local function __FUNC_6CDA_(arg0, arg1, arg2, arg3)
		LobbyMapVoteSelectNext(registerVal2, arg2)
		PlaySoundSetSound(registerVal2, "menu_open")
		return true
	end

	local function __FUNC_6D7A_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal6, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_6CDA_, __FUNC_6D7A_, false)
	registerVal2:addElement(registerVal6)
	registerVal2.MapVoteItemNext = registerVal6
	local registerVal7 = CoD.MapVoteHeader.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 0.000000, -52.000000)
	registerVal7:setTopBottom(true, false, -7.000000, 16.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.FEListSubHeaderGlow0 = registerVal7
	registerVal8 = LUI.UITightText.new()
	registerVal8:setLeftRight(true, false, 12.000000, 40.500000)
	registerVal8:setTopBottom(true, false, -6.000000, 14.000000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal8:setText(Engine.Localize("MENU_VOTING_VOTE_STRING"))
	registerVal8:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal8:setLetterSpacing(0.500000)
	registerVal2:addElement(registerVal8)
	registerVal2.MapVoting = registerVal8
	registerVal9 = LUI.UITightText.new()
	registerVal9:setLeftRight(false, true, -94.500000, -66.000000)
	registerVal9:setTopBottom(true, false, -6.000000, 14.000000)
	registerVal9:setRGB(0.000000, 0.000000, 0.000000)
	registerVal9:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal9:setLetterSpacing(0.500000)
	local function __FUNC_6E76_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setText(registerVal1)
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "LobbyRoot", "lobbyStatus", __FUNC_6E76_)
	registerVal2:addElement(registerVal9)
	registerVal2.LobbyStatus = registerVal9
	local registerVal10 = CoD.FE_TitleLine.new(arg0, arg1)
	registerVal10:setLeftRight(true, true, 0.000000, -53.000000)
	registerVal10:setTopBottom(false, false, -76.000000, -72.000000)
	registerVal10:setAlpha(0.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.FETitleLineUpper = registerVal10
	local registerVal11 = CoD.FE_TitleLine.new(arg0, arg1)
	registerVal11:setLeftRight(true, true, 0.000000, -53.000000)
	registerVal11:setTopBottom(false, false, -99.000000, -95.000000)
	registerVal11:setAlpha(0.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.FETitleLineUpper0 = registerVal11
	local registerVal12 = CoD.FE_TitleLine.new(arg0, arg1)
	registerVal12:setLeftRight(true, true, 0.000000, -53.000000)
	registerVal12:setTopBottom(false, false, 87.000000, 91.000000)
	registerVal12:setAlpha(0.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.FETitleLineBottom0 = registerVal12
	local registerVal13 = CoD.FR_BestTime.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 166.000000, 303.000000)
	registerVal13:setTopBottom(true, false, 116.000000, 178.000000)
	local function __FUNC_6F08_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.BestTimeValueText:setText(Engine.Localize(GetBestTimeForSelectedFreerunMap(arg1, registerVal1)))
		end
	end

	registerVal13:subscribeToGlobalModel(arg1, "LobbyRoot", "selectedMapId", __FUNC_6F08_)
	registerVal2:addElement(registerVal13)
	registerVal2.FRBestTime = registerVal13
	local registerVal14 = CoD.FR_Difficulty.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 10.000000, 164.000000)
	registerVal14:setTopBottom(true, false, 150.000000, 172.000000)
	local function __FUNC_701F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14.SubTitle:setText(Engine.Localize(GetDifficultyForSelectedFreerunMap(arg1, registerVal1)))
		end
	end

	registerVal14:subscribeToGlobalModel(arg1, "LobbyRoot", "selectedMapId", __FUNC_701F_)
	registerVal2:addElement(registerVal14)
	registerVal2.FRDifficulty = registerVal14
	local registerVal15 = LUI.UIList.new(arg0, arg1, 5.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal15:makeFocusable()
	registerVal15:setLeftRight(true, false, 0.000000, 303.000000)
	registerVal15:setTopBottom(true, false, -63.000000, -12.000000)
	registerVal15:setWidgetType(CoD.ArenaMapVoteRuleItem)
	registerVal15:setVerticalCount(2.000000)
	registerVal15:setSpacing(5.000000)
	registerVal15:setDataSource("ArenaActiveRules")
	registerVal2:addElement(registerVal15)
	registerVal2.ArenaRules = registerVal15
	local registerVal16 = CoD.MapVoteNoDemoSelected.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, 0.000000, 303.000000)
	registerVal16:setTopBottom(true, false, 18.000000, 169.000000)
	registerVal2:addElement(registerVal16)
	registerVal2.MapVoteNoDemoSelected = registerVal16
	local registerVal17 = CoD.MapVoteResult.new(arg0, arg1)
	registerVal17:setLeftRight(true, false, 0.000000, 303.000000)
	registerVal17:setTopBottom(true, false, 18.000000, 169.930000)
	registerVal2:addElement(registerVal17)
	registerVal2.MapVoteResult = registerVal17
	local registerVal18 = CoD.FileshareSpinner.new(arg0, arg1)
	registerVal18:setLeftRight(true, false, 119.500000, 183.500000)
	registerVal18:setTopBottom(true, false, 44.000000, 108.000000)
	local registerVal21 = {}
	local registerVal22 = {}
	registerVal22.stateName = "Visible"
	local function __FUNC_712C_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal22.condition = __FUNC_712C_
	registerVal21 = {registerVal22}
	registerVal18:mergeStateConditions(registerVal21)
	registerVal2:addElement(registerVal18)
	registerVal2.FileshareSpinner = registerVal18
	local registerVal19 = LUI.UIText.new()
	registerVal19:setLeftRight(true, false, 26.250000, 274.750000)
	registerVal19:setTopBottom(true, false, 99.500000, 124.500000)
	registerVal19:setTTF("fonts/default.ttf")
	registerVal19:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal19:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_7178_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal19:setText(FileshareGetDownloadProgress(registerVal1))
		end
	end

	registerVal19:subscribeToGlobalModel(arg1, "LobbyRoot", "theaterDownloadPercent", __FUNC_7178_)
	registerVal2:addElement(registerVal19)
	registerVal2.DownloadPercent = registerVal19
	local registerVal20 = CoD.MapVoteOfficial.new(arg0, arg1)
	registerVal20:setLeftRight(true, false, 192.000000, 301.350000)
	registerVal20:setTopBottom(true, false, 29.270000, 58.730000)
	registerVal2:addElement(registerVal20)
	registerVal2.MapVoteOfficial = registerVal20
	registerVal21 = LUI.GridLayout.new(arg0, arg1, false, 0.000000, 0.000000, -7.000000, 0.000000, nil, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal21:setLeftRight(false, true, -235.650000, -53.650000)
	registerVal21:setTopBottom(false, false, 36.000000, 78.000000)
	registerVal21:setWidgetType(CoD.ZMLobbyEEWidgetSmall)
	registerVal21:setHorizontalCount(5.000000)
	registerVal21:setSpacing(-7.000000)
	registerVal21:setDataSource("ZMLobbyEEMapVote")
	registerVal2:addElement(registerVal21)
	registerVal2.ZMLobbyEEList = registerVal21
	registerVal22 = {}
	local registerVal23 = {}
	registerVal23 = {registerVal6, registerVal5, registerVal4}
	registerVal22.left = registerVal23
	registerVal22.up = registerVal6
	registerVal22.down = registerVal5
	registerVal3.navigation = registerVal22
	registerVal22 = {}
	registerVal22.up = registerVal3
	registerVal22.right = registerVal3
	registerVal4.navigation = registerVal22
	registerVal22 = {}
	registerVal22.up = registerVal3
	registerVal22.right = registerVal3
	registerVal22.down = registerVal4
	registerVal5.navigation = registerVal22
	registerVal22 = {}
	registerVal22.up = registerVal15
	registerVal22.right = registerVal3
	registerVal22.down = registerVal3
	registerVal6.navigation = registerVal22
	registerVal22 = {}
	registerVal22.down = registerVal3
	registerVal15.navigation = registerVal22
	registerVal22 = {}
	registerVal23 = {}
	local function __FUNC_723A_()
		registerVal2:setupElementClipCounter(18.000000)
		registerVal3:completeAnimation()
		registerVal2.MapVoteItemVoteDecided:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.MapVoteItemRandom:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.MapVoteItemPrevious:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.MapVoteItemNext:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEListSubHeaderGlow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.MapVoting:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyStatus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FETitleLineUpper:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FETitleLineUpper0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FETitleLineBottom0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FRBestTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FRDifficulty:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ArenaRules:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.MapVoteNoDemoSelected:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.MapVoteResult:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FileshareSpinner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.DownloadPercent:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.MapVoteOfficial:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal23.DefaultClip = __FUNC_723A_
	registerVal22.CPHidden = registerVal23
	registerVal23 = {}
	local function __FUNC_7972_()
		registerVal2:setupElementClipCounter(18.000000)
		registerVal3:completeAnimation()
		registerVal2.MapVoteItemVoteDecided:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.MapVoteItemRandom:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.MapVoteItemPrevious:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.MapVoteItemNext:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEListSubHeaderGlow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.MapVoting:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyStatus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FETitleLineUpper:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FETitleLineUpper0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FETitleLineBottom0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FRBestTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FRDifficulty:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ArenaRules:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.MapVoteNoDemoSelected:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.MapVoteResult:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FileshareSpinner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.DownloadPercent:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.MapVoteOfficial:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal23.DefaultClip = __FUNC_7972_
	registerVal22.MPHidden = registerVal23
	registerVal23 = {}
	local function __FUNC_80AA_()
		registerVal2:setupElementClipCounter(18.000000)
		registerVal3:completeAnimation()
		registerVal2.MapVoteItemVoteDecided:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.MapVoteItemRandom:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.MapVoteItemPrevious:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.MapVoteItemNext:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEListSubHeaderGlow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.MapVoting:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyStatus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FETitleLineUpper:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FETitleLineUpper0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FETitleLineBottom0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FRBestTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FRDifficulty:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ArenaRules:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.MapVoteNoDemoSelected:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.MapVoteResult:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FileshareSpinner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.DownloadPercent:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.MapVoteOfficial:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal23.DefaultClip = __FUNC_80AA_
	registerVal22.ZMHidden = registerVal23
	registerVal23 = {}
	local function __FUNC_87E2_()
		registerVal2:setupElementClipCounter(19.000000)
		registerVal3:completeAnimation()
		registerVal2.MapVoteItemVoteDecided:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.MapVoteItemRandom:setLeftRight(true, true, -27.000000, -27.000000)
		registerVal2.MapVoteItemRandom:setTopBottom(false, false, 30.000000, 88.000000)
		registerVal2.MapVoteItemRandom:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.MapVoteItemPrevious:setLeftRight(true, true, -27.000000, -27.000000)
		registerVal2.MapVoteItemPrevious:setTopBottom(false, false, -30.000000, 28.000000)
		registerVal2.MapVoteItemPrevious:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.MapVoteItemNext:setLeftRight(true, true, -27.000000, -27.000000)
		registerVal2.MapVoteItemNext:setTopBottom(false, false, -90.000000, -32.000000)
		registerVal2.MapVoteItemNext:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEListSubHeaderGlow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.MapVoting:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyStatus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FETitleLineUpper:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.FETitleLineUpper:setTopBottom(false, false, -98.000000, -94.000000)
		registerVal2.FETitleLineUpper:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FETitleLineUpper0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FETitleLineBottom0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FRBestTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FRDifficulty:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ArenaRules:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.MapVoteNoDemoSelected:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.MapVoteResult:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FileshareSpinner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.DownloadPercent:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.MapVoteOfficial:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.ZMLobbyEEList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
	end

	registerVal23.DefaultClip = __FUNC_87E2_
	local function __FUNC_9113_()
		registerVal2:setupElementClipCounter(15.000000)
		registerVal3:completeAnimation()
		registerVal2.MapVoteItemVoteDecided:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_9BDD_(arg0, arg1)
			local function __FUNC_9D34_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Bounce)
					arg0.LobbyMemberBackingMask0:beginAnimation("subkeyframe", 200.000000, false, false, CoD.TweenType.Bounce)
					arg0.VoteType:beginAnimation("subkeyframe", 200.000000, false, false, CoD.TweenType.Bounce)
					arg0.voteCount:beginAnimation("subkeyframe", 200.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setLeftRight(true, true, -27.000000, -27.000000)
				arg0:setTopBottom(false, false, 30.000000, 88.000000)
				arg0:setAlpha(1.000000)
				arg0.LobbyMemberBackingMask0:setAlpha(0.500000)
				arg0.VoteType:setAlpha(1.000000)
				arg0.voteCount:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_9D34_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9D34_)
		end

		registerVal4:completeAnimation()
		registerVal4.LobbyMemberBackingMask0:completeAnimation()
		registerVal4.VoteType:completeAnimation()
		registerVal4.voteCount:completeAnimation()
		registerVal2.MapVoteItemRandom:setLeftRight(true, true, -27.000000, -27.000000)
		registerVal2.MapVoteItemRandom:setTopBottom(false, false, 30.000000, 88.000000)
		registerVal2.MapVoteItemRandom:setAlpha(0.000000)
		registerVal2.MapVoteItemRandom.LobbyMemberBackingMask0:setAlpha(0.500000)
		registerVal2.MapVoteItemRandom.VoteType:setAlpha(1.000000)
		registerVal2.MapVoteItemRandom.voteCount:setAlpha(1.000000)
		__FUNC_9BDD_(registerVal4, {})
		local function __FUNC_A0BC_(arg0, arg1)
			local function __FUNC_A214_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
					arg0.LobbyMemberBackingMask0:beginAnimation("subkeyframe", 210.000000, false, false, CoD.TweenType.Linear)
					arg0.VoteType:beginAnimation("subkeyframe", 210.000000, false, false, CoD.TweenType.Linear)
					arg0.voteCount:beginAnimation("subkeyframe", 210.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, true, -27.000000, -27.000000)
				arg0:setTopBottom(false, false, -21.000000, 37.000000)
				arg0:setAlpha(1.000000)
				arg0.LobbyMemberBackingMask0:setAlpha(0.500000)
				arg0.VoteType:setAlpha(1.000000)
				arg0.voteCount:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_A214_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A214_)
		end

		registerVal5:completeAnimation()
		registerVal5.LobbyMemberBackingMask0:completeAnimation()
		registerVal5.VoteType:completeAnimation()
		registerVal5.voteCount:completeAnimation()
		registerVal2.MapVoteItemPrevious:setLeftRight(true, true, -27.000000, -27.000000)
		registerVal2.MapVoteItemPrevious:setTopBottom(false, false, -21.000000, 37.000000)
		registerVal2.MapVoteItemPrevious:setAlpha(0.000000)
		registerVal2.MapVoteItemPrevious.LobbyMemberBackingMask0:setAlpha(0.500000)
		registerVal2.MapVoteItemPrevious.VoteType:setAlpha(1.000000)
		registerVal2.MapVoteItemPrevious.voteCount:setAlpha(1.000000)
		__FUNC_A0BC_(registerVal5, {})
		local function __FUNC_A59C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Bounce)
				arg0.LobbyMemberBackingMask0:beginAnimation("subkeyframe", 200.000000, false, false, CoD.TweenType.Bounce)
				arg0.VoteType:beginAnimation("subkeyframe", 200.000000, false, false, CoD.TweenType.Bounce)
				arg0.voteCount:beginAnimation("subkeyframe", 200.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(true, true, -27.000000, -27.000000)
			arg0:setTopBottom(false, false, -72.000000, -14.000000)
			arg0:setAlpha(1.000000)
			arg0.LobbyMemberBackingMask0:setAlpha(0.500000)
			arg0.VoteType:setAlpha(1.000000)
			arg0.voteCount:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal6.LobbyMemberBackingMask0:completeAnimation()
		registerVal6.VoteType:completeAnimation()
		registerVal6.voteCount:completeAnimation()
		registerVal2.MapVoteItemNext:setLeftRight(true, true, -27.000000, -27.000000)
		registerVal2.MapVoteItemNext:setTopBottom(false, false, -72.000000, -14.000000)
		registerVal2.MapVoteItemNext:setAlpha(0.000000)
		registerVal2.MapVoteItemNext.LobbyMemberBackingMask0:setAlpha(0.500000)
		registerVal2.MapVoteItemNext.VoteType:setAlpha(1.000000)
		registerVal2.MapVoteItemNext.voteCount:setAlpha(1.000000)
		__FUNC_A59C_(registerVal6, {})
		local function __FUNC_A924_(arg0, arg1)
			local function __FUNC_AA9F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_AA9F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AA9F_)
		end

		registerVal7:completeAnimation()
		registerVal2.FEListSubHeaderGlow0:setAlpha(0.000000)
		__FUNC_A924_(registerVal7, {})
		local function __FUNC_AC51_(arg0, arg1)
			local function __FUNC_ADA8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_ADA8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ADA8_)
		end

		registerVal8:completeAnimation()
		registerVal2.MapVoting:setAlpha(0.000000)
		__FUNC_AC51_(registerVal8, {})
		local function __FUNC_AF5D_(arg0, arg1)
			local function __FUNC_B0B4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_B0B4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B0B4_)
		end

		registerVal9:completeAnimation()
		registerVal2.LobbyStatus:setAlpha(0.000000)
		__FUNC_AF5D_(registerVal9, {})
		local function __FUNC_B269_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(true, true, 0.000000, -53.000000)
			arg0:setTopBottom(false, false, -76.000000, -72.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.FETitleLineUpper:setLeftRight(true, true, 0.000000, -53.000000)
		registerVal2.FETitleLineUpper:setTopBottom(false, false, -76.000000, -72.000000)
		registerVal2.FETitleLineUpper:setAlpha(0.000000)
		__FUNC_B269_(registerVal10, {})
		local function __FUNC_B48D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(true, true, 0.000000, -53.000000)
			arg0:setTopBottom(false, false, -99.000000, -95.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.FETitleLineUpper0:setLeftRight(true, true, 0.000000, -53.000000)
		registerVal2.FETitleLineUpper0:setTopBottom(false, false, -99.000000, -95.000000)
		registerVal2.FETitleLineUpper0:setAlpha(0.000000)
		__FUNC_B48D_(registerVal11, {})
		local function __FUNC_B6B1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(true, true, 0.000000, -53.000000)
			arg0:setTopBottom(false, false, 87.000000, 91.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.FETitleLineBottom0:setLeftRight(true, true, 0.000000, -53.000000)
		registerVal2.FETitleLineBottom0:setTopBottom(false, false, 87.000000, 91.000000)
		registerVal2.FETitleLineBottom0:setAlpha(0.000000)
		__FUNC_B6B1_(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FRBestTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FRDifficulty:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		local function __FUNC_B8D5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.ArenaRules:setAlpha(0.000000)
		__FUNC_B8D5_(registerVal15, {})
		registerVal17:completeAnimation()
		registerVal2.MapVoteResult:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		local function __FUNC_BA89_(arg0, arg1)
			local function __FUNC_BBE0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_BBE0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BBE0_)
		end

		registerVal20:completeAnimation()
		registerVal2.MapVoteOfficial:setAlpha(0.000000)
		__FUNC_BA89_(registerVal20, {})
	end

	registerVal23.MapVote = __FUNC_9113_
	local function __FUNC_BD95_()
		registerVal2:setupElementClipCounter(15.000000)
		local function __FUNC_C860_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Bounce)
				arg0.LobbyMemberBackingMask0:beginAnimation("subkeyframe", 289.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(true, true, -27.000000, -27.000000)
			arg0:setTopBottom(false, false, -81.000000, 97.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(0.850000)
			arg0.LobbyMemberBackingMask0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal3.LobbyMemberBackingMask0:completeAnimation()
		registerVal2.MapVoteItemVoteDecided:setLeftRight(true, true, -27.000000, -27.000000)
		registerVal2.MapVoteItemVoteDecided:setTopBottom(false, false, -81.000000, 97.000000)
		registerVal2.MapVoteItemVoteDecided:setAlpha(0.000000)
		registerVal2.MapVoteItemVoteDecided:setScale(0.850000)
		registerVal2.MapVoteItemVoteDecided.LobbyMemberBackingMask0:setAlpha(0.000000)
		__FUNC_C860_(registerVal3, {})
		local function __FUNC_CB36_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Bounce)
				arg0.LobbyMemberBackingMask0:beginAnimation("subkeyframe", 370.000000, false, false, CoD.TweenType.Bounce)
				arg0.VoteType:beginAnimation("subkeyframe", 370.000000, false, false, CoD.TweenType.Bounce)
				arg0.voteCount:beginAnimation("subkeyframe", 370.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(true, true, -27.000000, -27.000000)
			arg0:setTopBottom(false, false, -90.000000, 88.000000)
			arg0:setAlpha(0.000000)
			arg0.LobbyMemberBackingMask0:setAlpha(0.000000)
			arg0.VoteType:setAlpha(0.000000)
			arg0.voteCount:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal4.LobbyMemberBackingMask0:completeAnimation()
		registerVal4.VoteType:completeAnimation()
		registerVal4.voteCount:completeAnimation()
		registerVal2.MapVoteItemRandom:setLeftRight(true, true, -27.000000, -27.000000)
		registerVal2.MapVoteItemRandom:setTopBottom(false, false, 30.000000, 88.000000)
		registerVal2.MapVoteItemRandom:setAlpha(0.000000)
		registerVal2.MapVoteItemRandom.LobbyMemberBackingMask0:setAlpha(0.000000)
		registerVal2.MapVoteItemRandom.VoteType:setAlpha(0.000000)
		registerVal2.MapVoteItemRandom.voteCount:setAlpha(0.000000)
		__FUNC_CB36_(registerVal4, {})
		local function __FUNC_CEB7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(true, true, -27.000000, -27.000000)
			arg0:setTopBottom(false, false, -30.000000, 28.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.MapVoteItemPrevious:setLeftRight(true, true, -27.000000, -27.000000)
		registerVal2.MapVoteItemPrevious:setTopBottom(false, false, -30.000000, 28.000000)
		registerVal2.MapVoteItemPrevious:setAlpha(0.000000)
		__FUNC_CEB7_(registerVal5, {})
		local function __FUNC_D0D4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(true, true, -27.000000, -27.000000)
			arg0:setTopBottom(false, false, -90.000000, -32.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.MapVoteItemNext:setLeftRight(true, true, -27.000000, -27.000000)
		registerVal2.MapVoteItemNext:setTopBottom(false, false, -90.000000, -32.000000)
		registerVal2.MapVoteItemNext:setAlpha(0.000000)
		__FUNC_D0D4_(registerVal6, {})
		local function __FUNC_D2F4_(arg0, arg1)
			local function __FUNC_D46F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setLeftRight(true, true, 0.000000, -52.000000)
				arg0:setTopBottom(true, false, -7.000000, 16.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_D46F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.990000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D46F_)
		end

		registerVal7:completeAnimation()
		registerVal2.FEListSubHeaderGlow0:setLeftRight(true, true, 0.000000, -52.000000)
		registerVal2.FEListSubHeaderGlow0:setTopBottom(true, false, -7.000000, 16.000000)
		registerVal2.FEListSubHeaderGlow0:setAlpha(0.000000)
		__FUNC_D2F4_(registerVal7, {})
		local function __FUNC_D691_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.MapVoting:setAlpha(0.000000)
		__FUNC_D691_(registerVal8, {})
		local function __FUNC_D845_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(false, true, -94.500000, -66.000000)
			arg0:setTopBottom(true, false, -6.000000, 14.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.LobbyStatus:setLeftRight(false, true, -94.500000, -66.000000)
		registerVal2.LobbyStatus:setTopBottom(true, false, -6.000000, 14.000000)
		registerVal2.LobbyStatus:setAlpha(0.000000)
		__FUNC_D845_(registerVal9, {})
		local function __FUNC_DA69_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(true, true, 0.000000, -53.000000)
			arg0:setTopBottom(false, false, -76.000000, -72.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.FETitleLineUpper:setLeftRight(true, true, 0.000000, -53.000000)
		registerVal2.FETitleLineUpper:setTopBottom(false, false, -76.000000, -72.000000)
		registerVal2.FETitleLineUpper:setAlpha(0.000000)
		__FUNC_DA69_(registerVal10, {})
		local function __FUNC_DC8D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(true, true, 0.000000, -53.000000)
			arg0:setTopBottom(false, false, -99.000000, -95.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.FETitleLineUpper0:setLeftRight(true, true, 0.000000, -53.000000)
		registerVal2.FETitleLineUpper0:setTopBottom(false, false, -99.000000, -95.000000)
		registerVal2.FETitleLineUpper0:setAlpha(0.000000)
		__FUNC_DC8D_(registerVal11, {})
		local function __FUNC_DEAC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(true, true, 0.000000, -53.000000)
			arg0:setTopBottom(false, false, 87.000000, 91.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.FETitleLineBottom0:setLeftRight(true, true, 0.000000, -53.000000)
		registerVal2.FETitleLineBottom0:setTopBottom(false, false, 87.000000, 91.000000)
		registerVal2.FETitleLineBottom0:setAlpha(0.000000)
		__FUNC_DEAC_(registerVal12, {})
		local function __FUNC_E0D1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.FRBestTime:setAlpha(0.000000)
		__FUNC_E0D1_(registerVal13, {})
		local function __FUNC_E285_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.FRDifficulty:setAlpha(0.000000)
		__FUNC_E285_(registerVal14, {})
		local function __FUNC_E439_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.ArenaRules:setAlpha(0.000000)
		__FUNC_E439_(registerVal15, {})
		registerVal17:completeAnimation()
		registerVal2.MapVoteResult:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		local function __FUNC_E5ED_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal20:completeAnimation()
		registerVal2.MapVoteOfficial:setAlpha(0.000000)
		__FUNC_E5ED_(registerVal20, {})
	end

	registerVal23.SelectedMap = __FUNC_BD95_
	registerVal22.DefaultState = registerVal23
	registerVal23 = {}
	local function __FUNC_E7A1_()
		registerVal2:setupElementClipCounter(17.000000)
		registerVal3:completeAnimation()
		registerVal2.MapVoteItemVoteDecided:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.LobbyMemberBackingMask0:completeAnimation()
		registerVal4.VoteType:completeAnimation()
		registerVal4.voteCount:completeAnimation()
		registerVal2.MapVoteItemRandom:setLeftRight(true, true, -27.000000, -27.000000)
		registerVal2.MapVoteItemRandom:setTopBottom(false, false, 30.000000, 88.000000)
		registerVal2.MapVoteItemRandom:setAlpha(1.000000)
		registerVal2.MapVoteItemRandom:setScale(0.850000)
		registerVal2.MapVoteItemRandom.LobbyMemberBackingMask0:setAlpha(0.500000)
		registerVal2.MapVoteItemRandom.VoteType:setAlpha(1.000000)
		registerVal2.MapVoteItemRandom.voteCount:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal5.LobbyMemberBackingMask0:completeAnimation()
		registerVal5.VoteType:completeAnimation()
		registerVal5.voteCount:completeAnimation()
		registerVal2.MapVoteItemPrevious:setLeftRight(true, true, -27.000000, -27.000000)
		registerVal2.MapVoteItemPrevious:setTopBottom(false, false, -21.000000, 37.000000)
		registerVal2.MapVoteItemPrevious:setAlpha(1.000000)
		registerVal2.MapVoteItemPrevious:setScale(0.850000)
		registerVal2.MapVoteItemPrevious.LobbyMemberBackingMask0:setAlpha(0.500000)
		registerVal2.MapVoteItemPrevious.VoteType:setAlpha(1.000000)
		registerVal2.MapVoteItemPrevious.voteCount:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal6.LobbyMemberBackingMask0:completeAnimation()
		registerVal6.VoteType:completeAnimation()
		registerVal6.voteCount:completeAnimation()
		registerVal2.MapVoteItemNext:setAlpha(1.000000)
		registerVal2.MapVoteItemNext.LobbyMemberBackingMask0:setAlpha(0.500000)
		registerVal2.MapVoteItemNext.VoteType:setAlpha(1.000000)
		registerVal2.MapVoteItemNext.voteCount:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEListSubHeaderGlow0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.MapVoting:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyStatus:setLeftRight(false, true, -94.500000, -66.000000)
		registerVal2.LobbyStatus:setTopBottom(true, false, -6.000000, 14.000000)
		registerVal2.LobbyStatus:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FETitleLineUpper:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FETitleLineUpper0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FETitleLineBottom0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FRBestTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FRDifficulty:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ArenaRules:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.MapVoteNoDemoSelected:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.MapVoteResult:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FileshareSpinner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.DownloadPercent:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal23.DefaultClip = __FUNC_E7A1_
	local function __FUNC_F2A5_()
		registerVal2:setupElementClipCounter(12.000000)
		local function __FUNC_FB2C_(arg0, arg1)
			local function __FUNC_FCA7_(arg0, arg1)
				local function __FUNC_FE1F_(arg0, arg1)
					local function __FUNC_FF97_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, true, -27.000000, -27.000000)
						arg0:setTopBottom(false, false, 30.000000, 88.000000)
						arg0:setAlpha(0.000000)
						arg0:setScale(0.850000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_FF97_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.800000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FF97_)
				end

				if arg1.interrupted then
					__FUNC_FE1F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FE1F_)
			end

			if arg1.interrupted then
				__FUNC_FCA7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.900000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FCA7_)
		end

		registerVal4:completeAnimation()
		registerVal2.MapVoteItemRandom:setLeftRight(true, true, -27.000000, -27.000000)
		registerVal2.MapVoteItemRandom:setTopBottom(false, false, 30.000000, 88.000000)
		registerVal2.MapVoteItemRandom:setAlpha(1.000000)
		registerVal2.MapVoteItemRandom:setScale(0.850000)
		__FUNC_FB2C_(registerVal4, {})
		local function __FUNC_101D7_(arg0, arg1)
			local function __FUNC_1032C_(arg0, arg1)
				local function __FUNC_104A7_(arg0, arg1)
					local function __FUNC_1061F_(arg0, arg1)
						local function __FUNC_10797_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, true, -27.000000, -27.000000)
							arg0:setTopBottom(false, false, -21.000000, 37.000000)
							arg0:setAlpha(0.000000)
							arg0:setScale(0.850000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_10797_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.380000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10797_)
					end

					if arg1.interrupted then
						__FUNC_1061F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1061F_)
				end

				if arg1.interrupted then
					__FUNC_104A7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.750000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_104A7_)
			end

			if arg1.interrupted then
				__FUNC_1032C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1032C_)
		end

		registerVal5:completeAnimation()
		registerVal2.MapVoteItemPrevious:setLeftRight(true, true, -27.000000, -27.000000)
		registerVal2.MapVoteItemPrevious:setTopBottom(false, false, -21.000000, 37.000000)
		registerVal2.MapVoteItemPrevious:setAlpha(1.000000)
		registerVal2.MapVoteItemPrevious:setScale(0.850000)
		__FUNC_101D7_(registerVal5, {})
		local function __FUNC_109D7_(arg0, arg1)
			local function __FUNC_10B2C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 620.000000, true, true, CoD.TweenType.Linear)
					arg0.LobbyMemberBackingMask0:beginAnimation("subkeyframe", 620.000000, true, true, CoD.TweenType.Linear)
					arg0.VoteType:beginAnimation("subkeyframe", 620.000000, true, true, CoD.TweenType.Linear)
					arg0.voteCount:beginAnimation("subkeyframe", 620.000000, true, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, true, -27.000000, -27.000000)
				arg0:setTopBottom(false, false, -81.000000, 97.000000)
				arg0.LobbyMemberBackingMask0:setAlpha(0.000000)
				arg0.VoteType:setAlpha(0.000000)
				arg0.voteCount:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_10B2C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10B2C_)
		end

		registerVal6:completeAnimation()
		registerVal6.LobbyMemberBackingMask0:completeAnimation()
		registerVal6.VoteType:completeAnimation()
		registerVal6.voteCount:completeAnimation()
		registerVal2.MapVoteItemNext:setLeftRight(true, true, -27.000000, -27.000000)
		registerVal2.MapVoteItemNext:setTopBottom(false, false, -72.000000, -14.000000)
		registerVal2.MapVoteItemNext.LobbyMemberBackingMask0:setAlpha(0.500000)
		registerVal2.MapVoteItemNext.VoteType:setAlpha(1.000000)
		registerVal2.MapVoteItemNext.voteCount:setAlpha(1.000000)
		__FUNC_109D7_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEListSubHeaderGlow0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyStatus:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FETitleLineUpper:setLeftRight(true, true, 0.000000, -53.000000)
		registerVal2.FETitleLineUpper:setTopBottom(false, false, -76.000000, -72.000000)
		registerVal2.FETitleLineUpper:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FETitleLineUpper0:setLeftRight(true, true, 0.000000, -53.000000)
		registerVal2.FETitleLineUpper0:setTopBottom(false, false, -99.000000, -95.000000)
		registerVal2.FETitleLineUpper0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FETitleLineBottom0:setLeftRight(true, true, 0.000000, -53.000000)
		registerVal2.FETitleLineBottom0:setTopBottom(false, false, 87.000000, 91.000000)
		registerVal2.FETitleLineBottom0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FRBestTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FRDifficulty:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ArenaRules:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal17:completeAnimation()
		registerVal2.MapVoteResult:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal23.MapVoteChosenNext = __FUNC_F2A5_
	local function __FUNC_10EA3_()
		registerVal2:setupElementClipCounter(12.000000)
		local function __FUNC_1161A_(arg0, arg1)
			local function __FUNC_11793_(arg0, arg1)
				local function __FUNC_1190B_(arg0, arg1)
					local function __FUNC_11A83_(arg0, arg1)
						local function __FUNC_11BFB_(arg0, arg1)
							local function __FUNC_11D73_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, true, -27.000000, -27.000000)
								arg0:setTopBottom(false, false, 30.000000, 88.000000)
								arg0:setAlpha(0.000000)
								arg0:setScale(0.850000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_11D73_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.300000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11D73_)
						end

						if arg1.interrupted then
							__FUNC_11BFB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.170000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11BFB_)
					end

					if arg1.interrupted then
						__FUNC_11A83_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.600000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11A83_)
				end

				if arg1.interrupted then
					__FUNC_1190B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1190B_)
			end

			if arg1.interrupted then
				__FUNC_11793_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.900000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11793_)
		end

		registerVal4:completeAnimation()
		registerVal2.MapVoteItemRandom:setLeftRight(true, true, -27.000000, -27.000000)
		registerVal2.MapVoteItemRandom:setTopBottom(false, false, 30.000000, 88.000000)
		registerVal2.MapVoteItemRandom:setAlpha(1.000000)
		registerVal2.MapVoteItemRandom:setScale(0.850000)
		__FUNC_1161A_(registerVal4, {})
		local function __FUNC_11FAE_(arg0, arg1)
			local function __FUNC_12104_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 649.000000, true, true, CoD.TweenType.Linear)
					arg0.LobbyMemberBackingMask0:beginAnimation("subkeyframe", 649.000000, true, true, CoD.TweenType.Linear)
					arg0.VoteType:beginAnimation("subkeyframe", 649.000000, true, true, CoD.TweenType.Linear)
					arg0.voteCount:beginAnimation("subkeyframe", 649.000000, true, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, true, -27.000000, -27.000000)
				arg0:setTopBottom(false, false, -90.000000, 88.000000)
				arg0:setScale(0.850000)
				arg0.LobbyMemberBackingMask0:setAlpha(0.000000)
				arg0.VoteType:setAlpha(0.000000)
				arg0.voteCount:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_12104_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12104_)
		end

		registerVal5:completeAnimation()
		registerVal5.LobbyMemberBackingMask0:completeAnimation()
		registerVal5.VoteType:completeAnimation()
		registerVal5.voteCount:completeAnimation()
		registerVal2.MapVoteItemPrevious:setLeftRight(true, true, -27.000000, -27.000000)
		registerVal2.MapVoteItemPrevious:setTopBottom(false, false, -21.000000, 37.000000)
		registerVal2.MapVoteItemPrevious:setScale(0.850000)
		registerVal2.MapVoteItemPrevious.LobbyMemberBackingMask0:setAlpha(0.500000)
		registerVal2.MapVoteItemPrevious.VoteType:setAlpha(1.000000)
		registerVal2.MapVoteItemPrevious.voteCount:setAlpha(1.000000)
		__FUNC_11FAE_(registerVal5, {})
		local function __FUNC_1249E_(arg0, arg1)
			local function __FUNC_125F4_(arg0, arg1)
				local function __FUNC_1276F_(arg0, arg1)
					local function __FUNC_128E7_(arg0, arg1)
						local function __FUNC_12A5F_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, true, -27.000000, -27.000000)
							arg0:setTopBottom(false, false, -72.000000, -14.000000)
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_12A5F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12A5F_)
					end

					if arg1.interrupted then
						__FUNC_128E7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_128E7_)
				end

				if arg1.interrupted then
					__FUNC_1276F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.880000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1276F_)
			end

			if arg1.interrupted then
				__FUNC_125F4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_125F4_)
		end

		registerVal6:completeAnimation()
		registerVal2.MapVoteItemNext:setLeftRight(true, true, -27.000000, -27.000000)
		registerVal2.MapVoteItemNext:setTopBottom(false, false, -72.000000, -14.000000)
		registerVal2.MapVoteItemNext:setAlpha(1.000000)
		__FUNC_1249E_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEListSubHeaderGlow0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyStatus:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FETitleLineUpper:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FETitleLineUpper0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FETitleLineBottom0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FRBestTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FRDifficulty:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ArenaRules:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal17:completeAnimation()
		registerVal2.MapVoteResult:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal23.MapVoteChosenPrevious = __FUNC_10EA3_
	local function __FUNC_12C7C_()
		registerVal2:setupElementClipCounter(12.000000)
		local function __FUNC_133A7_(arg0, arg1)
			local function __FUNC_134FC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 649.000000, true, true, CoD.TweenType.Linear)
					arg0.LobbyMemberBackingMask0:beginAnimation("subkeyframe", 649.000000, true, true, CoD.TweenType.Linear)
					arg0.VoteType:beginAnimation("subkeyframe", 649.000000, true, true, CoD.TweenType.Linear)
					arg0.voteCount:beginAnimation("subkeyframe", 649.000000, true, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, true, -27.000000, -27.000000)
				arg0:setTopBottom(false, false, -90.000000, 88.000000)
				arg0.LobbyMemberBackingMask0:setAlpha(0.000000)
				arg0.VoteType:setAlpha(0.000000)
				arg0.voteCount:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_134FC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_134FC_)
		end

		registerVal4:completeAnimation()
		registerVal4.LobbyMemberBackingMask0:completeAnimation()
		registerVal4.VoteType:completeAnimation()
		registerVal4.voteCount:completeAnimation()
		registerVal2.MapVoteItemRandom:setLeftRight(true, true, -27.000000, -27.000000)
		registerVal2.MapVoteItemRandom:setTopBottom(false, false, 30.000000, 88.000000)
		registerVal2.MapVoteItemRandom.LobbyMemberBackingMask0:setAlpha(0.500000)
		registerVal2.MapVoteItemRandom.VoteType:setAlpha(1.000000)
		registerVal2.MapVoteItemRandom.voteCount:setAlpha(1.000000)
		__FUNC_133A7_(registerVal4, {})
		local function __FUNC_13873_(arg0, arg1)
			local function __FUNC_139EB_(arg0, arg1)
				local function __FUNC_13B63_(arg0, arg1)
					local function __FUNC_13CDB_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, true, -27.000000, -27.000000)
						arg0:setTopBottom(false, false, -21.000000, 37.000000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_13CDB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13CDB_)
				end

				if arg1.interrupted then
					__FUNC_13B63_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13B63_)
			end

			if arg1.interrupted then
				__FUNC_139EB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.900000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_139EB_)
		end

		registerVal5:completeAnimation()
		registerVal2.MapVoteItemPrevious:setLeftRight(true, true, -27.000000, -27.000000)
		registerVal2.MapVoteItemPrevious:setTopBottom(false, false, -21.000000, 37.000000)
		registerVal2.MapVoteItemPrevious:setAlpha(1.000000)
		__FUNC_13873_(registerVal5, {})
		local function __FUNC_13EF8_(arg0, arg1)
			local function __FUNC_14050_(arg0, arg1)
				local function __FUNC_141CB_(arg0, arg1)
					local function __FUNC_14343_(arg0, arg1)
						local function __FUNC_144BB_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, true, -27.000000, -27.000000)
							arg0:setTopBottom(false, false, -72.000000, -14.000000)
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_144BB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.250000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_144BB_)
					end

					if arg1.interrupted then
						__FUNC_14343_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14343_)
				end

				if arg1.interrupted then
					__FUNC_141CB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.630000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_141CB_)
			end

			if arg1.interrupted then
				__FUNC_14050_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14050_)
		end

		registerVal6:completeAnimation()
		registerVal2.MapVoteItemNext:setLeftRight(true, true, -27.000000, -27.000000)
		registerVal2.MapVoteItemNext:setTopBottom(false, false, -72.000000, -14.000000)
		registerVal2.MapVoteItemNext:setAlpha(1.000000)
		__FUNC_13EF8_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEListSubHeaderGlow0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyStatus:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FETitleLineUpper:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FETitleLineUpper0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FETitleLineBottom0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FRBestTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FRDifficulty:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ArenaRules:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal17:completeAnimation()
		registerVal2.MapVoteResult:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal23.MapVoteChosenRandom = __FUNC_12C7C_
	local function __FUNC_146D8_()
		registerVal2:setupElementClipCounter(15.000000)
		registerVal3:completeAnimation()
		registerVal2.MapVoteItemVoteDecided:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_151A5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 519.000000, false, false, CoD.TweenType.Bounce)
				arg0.LobbyMemberBackingMask0:beginAnimation("subkeyframe", 519.000000, false, false, CoD.TweenType.Bounce)
				arg0.VoteType:beginAnimation("subkeyframe", 519.000000, false, false, CoD.TweenType.Bounce)
				arg0.voteCount:beginAnimation("subkeyframe", 519.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(true, true, -27.000000, -27.000000)
			arg0:setTopBottom(false, false, 30.000000, 88.000000)
			arg0:setAlpha(0.000000)
			arg0.LobbyMemberBackingMask0:setAlpha(0.500000)
			arg0.VoteType:setAlpha(1.000000)
			arg0.voteCount:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal4.LobbyMemberBackingMask0:completeAnimation()
		registerVal4.VoteType:completeAnimation()
		registerVal4.voteCount:completeAnimation()
		registerVal2.MapVoteItemRandom:setLeftRight(true, true, -27.000000, -27.000000)
		registerVal2.MapVoteItemRandom:setTopBottom(false, false, 30.000000, 88.000000)
		registerVal2.MapVoteItemRandom:setAlpha(1.000000)
		registerVal2.MapVoteItemRandom.LobbyMemberBackingMask0:setAlpha(0.500000)
		registerVal2.MapVoteItemRandom.VoteType:setAlpha(1.000000)
		registerVal2.MapVoteItemRandom.voteCount:setAlpha(1.000000)
		__FUNC_151A5_(registerVal4, {})
		local function __FUNC_15531_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 389.000000, false, false, CoD.TweenType.Bounce)
				arg0.LobbyMemberBackingMask0:beginAnimation("subkeyframe", 389.000000, false, false, CoD.TweenType.Bounce)
				arg0.VoteType:beginAnimation("subkeyframe", 389.000000, false, false, CoD.TweenType.Bounce)
				arg0.voteCount:beginAnimation("subkeyframe", 389.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(true, true, -27.000000, -27.000000)
			arg0:setTopBottom(false, false, -21.000000, 37.000000)
			arg0:setAlpha(0.000000)
			arg0.LobbyMemberBackingMask0:setAlpha(0.500000)
			arg0.VoteType:setAlpha(1.000000)
			arg0.voteCount:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal5.LobbyMemberBackingMask0:completeAnimation()
		registerVal5.VoteType:completeAnimation()
		registerVal5.voteCount:completeAnimation()
		registerVal2.MapVoteItemPrevious:setLeftRight(true, true, -27.000000, -27.000000)
		registerVal2.MapVoteItemPrevious:setTopBottom(false, false, -21.000000, 37.000000)
		registerVal2.MapVoteItemPrevious:setAlpha(1.000000)
		registerVal2.MapVoteItemPrevious.LobbyMemberBackingMask0:setAlpha(0.500000)
		registerVal2.MapVoteItemPrevious.VoteType:setAlpha(1.000000)
		registerVal2.MapVoteItemPrevious.voteCount:setAlpha(1.000000)
		__FUNC_15531_(registerVal5, {})
		local function __FUNC_158BD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 519.000000, false, false, CoD.TweenType.Bounce)
				arg0.LobbyMemberBackingMask0:beginAnimation("subkeyframe", 519.000000, false, false, CoD.TweenType.Bounce)
				arg0.VoteType:beginAnimation("subkeyframe", 519.000000, false, false, CoD.TweenType.Bounce)
				arg0.voteCount:beginAnimation("subkeyframe", 519.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(true, true, -27.000000, -27.000000)
			arg0:setTopBottom(false, false, -72.000000, -14.000000)
			arg0:setAlpha(0.000000)
			arg0.LobbyMemberBackingMask0:setAlpha(0.500000)
			arg0.VoteType:setAlpha(1.000000)
			arg0.voteCount:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal6.LobbyMemberBackingMask0:completeAnimation()
		registerVal6.VoteType:completeAnimation()
		registerVal6.voteCount:completeAnimation()
		registerVal2.MapVoteItemNext:setLeftRight(true, true, -27.000000, -27.000000)
		registerVal2.MapVoteItemNext:setTopBottom(false, false, -72.000000, -14.000000)
		registerVal2.MapVoteItemNext:setAlpha(1.000000)
		registerVal2.MapVoteItemNext.LobbyMemberBackingMask0:setAlpha(0.500000)
		registerVal2.MapVoteItemNext.VoteType:setAlpha(1.000000)
		registerVal2.MapVoteItemNext.voteCount:setAlpha(1.000000)
		__FUNC_158BD_(registerVal6, {})
		local function __FUNC_15C49_(arg0, arg1)
			local function __FUNC_15DC3_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_15DC3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Bounce)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15DC3_)
		end

		registerVal7:completeAnimation()
		registerVal2.FEListSubHeaderGlow0:setAlpha(1.000000)
		__FUNC_15C49_(registerVal7, {})
		local function __FUNC_15F75_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 519.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.MapVoting:setAlpha(1.000000)
		__FUNC_15F75_(registerVal8, {})
		local function __FUNC_16129_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.LobbyStatus:setAlpha(1.000000)
		__FUNC_16129_(registerVal9, {})
		local function __FUNC_162DD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(true, true, 0.000000, -53.000000)
			arg0:setTopBottom(false, false, -76.000000, -72.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.FETitleLineUpper:setLeftRight(true, true, 0.000000, -53.000000)
		registerVal2.FETitleLineUpper:setTopBottom(false, false, -76.000000, -72.000000)
		registerVal2.FETitleLineUpper:setAlpha(1.000000)
		__FUNC_162DD_(registerVal10, {})
		local function __FUNC_164FC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(true, true, 0.000000, -53.000000)
			arg0:setTopBottom(false, false, -99.000000, -95.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.FETitleLineUpper0:setLeftRight(true, true, 0.000000, -53.000000)
		registerVal2.FETitleLineUpper0:setTopBottom(false, false, -99.000000, -95.000000)
		registerVal2.FETitleLineUpper0:setAlpha(1.000000)
		__FUNC_164FC_(registerVal11, {})
		local function __FUNC_1671C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(true, true, 0.000000, -53.000000)
			arg0:setTopBottom(false, false, 87.000000, 91.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.FETitleLineBottom0:setLeftRight(true, true, 0.000000, -53.000000)
		registerVal2.FETitleLineBottom0:setTopBottom(false, false, 87.000000, 91.000000)
		registerVal2.FETitleLineBottom0:setAlpha(1.000000)
		__FUNC_1671C_(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FRBestTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FRDifficulty:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		local function __FUNC_1693C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.ArenaRules:setAlpha(1.000000)
		__FUNC_1693C_(registerVal15, {})
		registerVal17:completeAnimation()
		registerVal2.MapVoteResult:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		local function __FUNC_16AF1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal20:completeAnimation()
		registerVal2.MapVoteOfficial:setAlpha(1.000000)
		__FUNC_16AF1_(registerVal20, {})
	end

	registerVal23.DefaultState = __FUNC_146D8_
	registerVal22.MapVote = registerVal23
	registerVal23 = {}
	local function __FUNC_16CA5_()
		registerVal2:setupElementClipCounter(18.000000)
		registerVal3:completeAnimation()
		registerVal3.LobbyMemberBackingMask0:completeAnimation()
		registerVal2.MapVoteItemVoteDecided:setLeftRight(true, true, -27.000000, -27.000000)
		registerVal2.MapVoteItemVoteDecided:setTopBottom(false, false, -81.000000, 97.000000)
		registerVal2.MapVoteItemVoteDecided:setAlpha(1.000000)
		registerVal2.MapVoteItemVoteDecided:setScale(0.850000)
		registerVal2.MapVoteItemVoteDecided.LobbyMemberBackingMask0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_17703_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0.LobbyMemberBackingMask0:beginAnimation("subkeyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0.VoteType:beginAnimation("subkeyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0.voteCount:beginAnimation("subkeyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(false, false, -90.000000, 88.000000)
			arg0:setAlpha(0.000000)
			arg0.LobbyMemberBackingMask0:setAlpha(0.000000)
			arg0.VoteType:setAlpha(0.000000)
			arg0.voteCount:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal4.LobbyMemberBackingMask0:completeAnimation()
		registerVal4.VoteType:completeAnimation()
		registerVal4.voteCount:completeAnimation()
		registerVal2.MapVoteItemRandom:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.MapVoteItemRandom:setTopBottom(false, false, -90.000000, 88.000000)
		registerVal2.MapVoteItemRandom:setAlpha(0.000000)
		registerVal2.MapVoteItemRandom.LobbyMemberBackingMask0:setAlpha(0.000000)
		registerVal2.MapVoteItemRandom.VoteType:setAlpha(0.000000)
		registerVal2.MapVoteItemRandom.voteCount:setAlpha(0.000000)
		__FUNC_17703_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.MapVoteItemPrevious:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.MapVoteItemNext:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEListSubHeaderGlow0:setLeftRight(true, true, 0.000000, -52.000000)
		registerVal2.FEListSubHeaderGlow0:setTopBottom(true, false, -7.000000, 16.000000)
		registerVal2.FEListSubHeaderGlow0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.MapVoting:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyStatus:setLeftRight(false, true, -94.500000, -66.000000)
		registerVal2.LobbyStatus:setTopBottom(true, false, -6.000000, 14.000000)
		registerVal2.LobbyStatus:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FETitleLineUpper:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FETitleLineUpper0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FETitleLineBottom0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal2.FRDifficulty:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ArenaRules:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.MapVoteNoDemoSelected:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.MapVoteResult:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FileshareSpinner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.DownloadPercent:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.MapVoteOfficial:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.ZMLobbyEEList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal21, {})
	end

	registerVal23.DefaultClip = __FUNC_16CA5_
	local function __FUNC_17A7E_()
		registerVal2:setupElementClipCounter(14.000000)
		local function __FUNC_183EB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 529.000000, false, false, CoD.TweenType.Bounce)
				arg0.LobbyMemberBackingMask0:beginAnimation("subkeyframe", 529.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(true, true, -27.000000, -27.000000)
			arg0:setTopBottom(false, false, -81.000000, 97.000000)
			arg0:setAlpha(0.000000)
			arg0:setScale(0.850000)
			arg0.LobbyMemberBackingMask0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal3.LobbyMemberBackingMask0:completeAnimation()
		registerVal2.MapVoteItemVoteDecided:setLeftRight(true, true, -27.000000, -27.000000)
		registerVal2.MapVoteItemVoteDecided:setTopBottom(false, false, -81.000000, 97.000000)
		registerVal2.MapVoteItemVoteDecided:setAlpha(1.000000)
		registerVal2.MapVoteItemVoteDecided:setScale(0.850000)
		registerVal2.MapVoteItemVoteDecided.LobbyMemberBackingMask0:setAlpha(0.000000)
		__FUNC_183EB_(registerVal3, {})
		local function __FUNC_186B9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0.LobbyMemberBackingMask0:beginAnimation("subkeyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0.VoteType:beginAnimation("subkeyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0.voteCount:beginAnimation("subkeyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(false, false, -90.000000, 88.000000)
			arg0:setAlpha(0.000000)
			arg0.LobbyMemberBackingMask0:setAlpha(0.000000)
			arg0.VoteType:setAlpha(0.000000)
			arg0.voteCount:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal4.LobbyMemberBackingMask0:completeAnimation()
		registerVal4.VoteType:completeAnimation()
		registerVal4.voteCount:completeAnimation()
		registerVal2.MapVoteItemRandom:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.MapVoteItemRandom:setTopBottom(false, false, -90.000000, 88.000000)
		registerVal2.MapVoteItemRandom:setAlpha(0.000000)
		registerVal2.MapVoteItemRandom.LobbyMemberBackingMask0:setAlpha(0.000000)
		registerVal2.MapVoteItemRandom.VoteType:setAlpha(0.000000)
		registerVal2.MapVoteItemRandom.voteCount:setAlpha(0.000000)
		__FUNC_186B9_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.MapVoteItemPrevious:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.MapVoteItemNext:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_18A36_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 330.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, -52.000000)
			arg0:setTopBottom(true, false, -7.000000, 16.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.FEListSubHeaderGlow0:setLeftRight(true, true, 0.000000, -52.000000)
		registerVal2.FEListSubHeaderGlow0:setTopBottom(true, false, -7.000000, 16.000000)
		registerVal2.FEListSubHeaderGlow0:setAlpha(1.000000)
		__FUNC_18A36_(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.MapVoting:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_18C54_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(false, true, -94.500000, -66.000000)
			arg0:setTopBottom(true, false, -6.000000, 14.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.LobbyStatus:setLeftRight(false, true, -94.500000, -66.000000)
		registerVal2.LobbyStatus:setTopBottom(true, false, -6.000000, 14.000000)
		registerVal2.LobbyStatus:setAlpha(1.000000)
		__FUNC_18C54_(registerVal9, {})
		local function __FUNC_18E79_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, -53.000000)
			arg0:setTopBottom(false, false, -76.000000, -72.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.FETitleLineUpper:setLeftRight(true, true, 0.000000, -53.000000)
		registerVal2.FETitleLineUpper:setTopBottom(false, false, -76.000000, -72.000000)
		registerVal2.FETitleLineUpper:setAlpha(1.000000)
		__FUNC_18E79_(registerVal10, {})
		local function __FUNC_19098_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, -53.000000)
			arg0:setTopBottom(false, false, 87.000000, 91.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.FETitleLineBottom0:setLeftRight(true, true, 0.000000, -53.000000)
		registerVal2.FETitleLineBottom0:setTopBottom(false, false, 87.000000, 91.000000)
		registerVal2.FETitleLineBottom0:setAlpha(1.000000)
		__FUNC_19098_(registerVal12, {})
		local function __FUNC_192B8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.FRBestTime:setAlpha(1.000000)
		__FUNC_192B8_(registerVal13, {})
		local function __FUNC_1946D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.FRDifficulty:setAlpha(1.000000)
		__FUNC_1946D_(registerVal14, {})
		local function __FUNC_19621_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.ArenaRules:setAlpha(1.000000)
		__FUNC_19621_(registerVal15, {})
		registerVal17:completeAnimation()
		registerVal2.MapVoteResult:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		local function __FUNC_197D5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal20:completeAnimation()
		registerVal2.MapVoteOfficial:setAlpha(1.000000)
		__FUNC_197D5_(registerVal20, {})
	end

	registerVal23.DefaultState = __FUNC_17A7E_
	registerVal22.SelectedMap = registerVal23
	registerVal23 = {}
	local function __FUNC_19989_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal10:completeAnimation()
		registerVal2.FETitleLineUpper:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FETitleLineUpper0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FETitleLineBottom0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FRBestTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FRDifficulty:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ArenaRules:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.MapVoteNoDemoSelected:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.MapVoteResult:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FileshareSpinner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.DownloadPercent:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.MapVoteOfficial:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal23.DefaultClip = __FUNC_19989_
	local function __FUNC_19E34_()
		registerVal2:setupElementClipCounter(15.000000)
		registerVal3:completeAnimation()
		registerVal2.MapVoteItemVoteDecided:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.MapVoteItemVoteDecided:setTopBottom(false, false, -90.000000, 88.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_1A6AC_(arg0, arg1)
			local function __FUNC_1A827_(arg0, arg1)
				local function __FUNC_1A99F_(arg0, arg1)
					local function __FUNC_1AB17_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, true, -27.000000, -27.000000)
						arg0:setTopBottom(false, false, 30.000000, 88.000000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_1AB17_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.800000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AB17_)
				end

				if arg1.interrupted then
					__FUNC_1A99F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A99F_)
			end

			if arg1.interrupted then
				__FUNC_1A827_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.900000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A827_)
		end

		registerVal4:completeAnimation()
		registerVal2.MapVoteItemRandom:setLeftRight(true, true, -27.000000, -27.000000)
		registerVal2.MapVoteItemRandom:setTopBottom(false, false, 30.000000, 88.000000)
		registerVal2.MapVoteItemRandom:setAlpha(1.000000)
		__FUNC_1A6AC_(registerVal4, {})
		local function __FUNC_1AD34_(arg0, arg1)
			local function __FUNC_1AE8C_(arg0, arg1)
				local function __FUNC_1B007_(arg0, arg1)
					local function __FUNC_1B17F_(arg0, arg1)
						local function __FUNC_1B2F7_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, true, -27.000000, -27.000000)
							arg0:setTopBottom(false, false, -21.000000, 37.000000)
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_1B2F7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.380000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B2F7_)
					end

					if arg1.interrupted then
						__FUNC_1B17F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B17F_)
				end

				if arg1.interrupted then
					__FUNC_1B007_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.750000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B007_)
			end

			if arg1.interrupted then
				__FUNC_1AE8C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AE8C_)
		end

		registerVal5:completeAnimation()
		registerVal2.MapVoteItemPrevious:setLeftRight(true, true, -27.000000, -27.000000)
		registerVal2.MapVoteItemPrevious:setTopBottom(false, false, -21.000000, 37.000000)
		registerVal2.MapVoteItemPrevious:setAlpha(1.000000)
		__FUNC_1AD34_(registerVal5, {})
		local function __FUNC_1B514_(arg0, arg1)
			local function __FUNC_1B66C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 620.000000, true, true, CoD.TweenType.Linear)
					arg0.LobbyMemberBackingMask0:beginAnimation("subkeyframe", 620.000000, true, true, CoD.TweenType.Linear)
					arg0.VoteType:beginAnimation("subkeyframe", 620.000000, true, true, CoD.TweenType.Linear)
					arg0.voteCount:beginAnimation("subkeyframe", 620.000000, true, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, true, -27.000000, -27.000000)
				arg0:setTopBottom(false, false, -81.000000, 97.000000)
				arg0.LobbyMemberBackingMask0:setAlpha(0.000000)
				arg0.VoteType:setAlpha(0.000000)
				arg0.voteCount:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1B66C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B66C_)
		end

		registerVal6:completeAnimation()
		registerVal6.LobbyMemberBackingMask0:completeAnimation()
		registerVal6.VoteType:completeAnimation()
		registerVal6.voteCount:completeAnimation()
		registerVal2.MapVoteItemNext:setLeftRight(true, true, -27.000000, -27.000000)
		registerVal2.MapVoteItemNext:setTopBottom(false, false, -72.000000, -14.000000)
		registerVal2.MapVoteItemNext.LobbyMemberBackingMask0:setAlpha(0.500000)
		registerVal2.MapVoteItemNext.VoteType:setAlpha(1.000000)
		registerVal2.MapVoteItemNext.voteCount:setAlpha(1.000000)
		__FUNC_1B514_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEListSubHeaderGlow0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_1B9E3_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.MapVoting:setAlpha(1.000000)
		__FUNC_1B9E3_(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyStatus:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FETitleLineUpper:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FETitleLineUpper0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FETitleLineBottom0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FRBestTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FRDifficulty:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ArenaRules:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal17:completeAnimation()
		registerVal2.MapVoteResult:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal20:completeAnimation()
		registerVal2.MapVoteOfficial:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal23.SelectedMap = __FUNC_19E34_
	registerVal22.MapVoteChosenNext = registerVal23
	registerVal23 = {}
	local function __FUNC_1BB95_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal10:completeAnimation()
		registerVal2.FETitleLineUpper:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FETitleLineUpper0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FETitleLineBottom0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FRBestTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FRDifficulty:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ArenaRules:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.MapVoteNoDemoSelected:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.MapVoteResult:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FileshareSpinner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.DownloadPercent:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.MapVoteOfficial:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal23.DefaultClip = __FUNC_1BB95_
	local function __FUNC_1C040_()
		registerVal2:setupElementClipCounter(14.000000)
		local function __FUNC_1C81B_(arg0, arg1)
			local function __FUNC_1C993_(arg0, arg1)
				local function __FUNC_1CB0B_(arg0, arg1)
					local function __FUNC_1CC83_(arg0, arg1)
						local function __FUNC_1CDFB_(arg0, arg1)
							local function __FUNC_1CF73_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, true, -27.000000, -27.000000)
								arg0:setTopBottom(false, false, 30.000000, 88.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_1CF73_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.300000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CF73_)
						end

						if arg1.interrupted then
							__FUNC_1CDFB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.170000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CDFB_)
					end

					if arg1.interrupted then
						__FUNC_1CC83_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.600000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CC83_)
				end

				if arg1.interrupted then
					__FUNC_1CB0B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CB0B_)
			end

			if arg1.interrupted then
				__FUNC_1C993_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.900000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C993_)
		end

		registerVal4:completeAnimation()
		registerVal2.MapVoteItemRandom:setLeftRight(true, true, -27.000000, -27.000000)
		registerVal2.MapVoteItemRandom:setTopBottom(false, false, 30.000000, 88.000000)
		registerVal2.MapVoteItemRandom:setAlpha(1.000000)
		__FUNC_1C81B_(registerVal4, {})
		local function __FUNC_1D18B_(arg0, arg1)
			local function __FUNC_1D2E0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 649.000000, true, true, CoD.TweenType.Linear)
					arg0.LobbyMemberBackingMask0:beginAnimation("subkeyframe", 649.000000, true, true, CoD.TweenType.Linear)
					arg0.VoteType:beginAnimation("subkeyframe", 649.000000, true, true, CoD.TweenType.Linear)
					arg0.voteCount:beginAnimation("subkeyframe", 649.000000, true, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, true, -27.000000, -27.000000)
				arg0:setTopBottom(false, false, -90.000000, 88.000000)
				arg0.LobbyMemberBackingMask0:setAlpha(0.000000)
				arg0.VoteType:setAlpha(0.000000)
				arg0.voteCount:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1D2E0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D2E0_)
		end

		registerVal5:completeAnimation()
		registerVal5.LobbyMemberBackingMask0:completeAnimation()
		registerVal5.VoteType:completeAnimation()
		registerVal5.voteCount:completeAnimation()
		registerVal2.MapVoteItemPrevious:setLeftRight(true, true, -27.000000, -27.000000)
		registerVal2.MapVoteItemPrevious:setTopBottom(false, false, -21.000000, 37.000000)
		registerVal2.MapVoteItemPrevious.LobbyMemberBackingMask0:setAlpha(0.500000)
		registerVal2.MapVoteItemPrevious.VoteType:setAlpha(1.000000)
		registerVal2.MapVoteItemPrevious.voteCount:setAlpha(1.000000)
		__FUNC_1D18B_(registerVal5, {})
		local function __FUNC_1D657_(arg0, arg1)
			local function __FUNC_1D7AC_(arg0, arg1)
				local function __FUNC_1D927_(arg0, arg1)
					local function __FUNC_1DA9F_(arg0, arg1)
						local function __FUNC_1DC17_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, true, -27.000000, -27.000000)
							arg0:setTopBottom(false, false, -72.000000, -14.000000)
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_1DC17_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DC17_)
					end

					if arg1.interrupted then
						__FUNC_1DA9F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DA9F_)
				end

				if arg1.interrupted then
					__FUNC_1D927_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.880000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D927_)
			end

			if arg1.interrupted then
				__FUNC_1D7AC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D7AC_)
		end

		registerVal6:completeAnimation()
		registerVal2.MapVoteItemNext:setLeftRight(true, true, -27.000000, -27.000000)
		registerVal2.MapVoteItemNext:setTopBottom(false, false, -72.000000, -14.000000)
		registerVal2.MapVoteItemNext:setAlpha(1.000000)
		__FUNC_1D657_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEListSubHeaderGlow0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_1DE34_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.MapVoting:setAlpha(1.000000)
		__FUNC_1DE34_(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyStatus:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FETitleLineUpper:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FETitleLineUpper0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FETitleLineBottom0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FRBestTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FRDifficulty:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ArenaRules:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal17:completeAnimation()
		registerVal2.MapVoteResult:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal20:completeAnimation()
		registerVal2.MapVoteOfficial:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal23.SelectedMap = __FUNC_1C040_
	registerVal22.MapVoteChosenPrevious = registerVal23
	registerVal23 = {}
	local function __FUNC_1DFE9_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal10:completeAnimation()
		registerVal2.FETitleLineUpper:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FETitleLineUpper0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FETitleLineBottom0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FRBestTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FRDifficulty:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ArenaRules:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.MapVoteNoDemoSelected:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.MapVoteResult:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FileshareSpinner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.DownloadPercent:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.MapVoteOfficial:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal23.DefaultClip = __FUNC_1DFE9_
	local function __FUNC_1E494_()
		registerVal2:setupElementClipCounter(11.000000)
		local function __FUNC_1EB52_(arg0, arg1)
			local function __FUNC_1ECA8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 649.000000, true, true, CoD.TweenType.Linear)
					arg0.LobbyMemberBackingMask0:beginAnimation("subkeyframe", 649.000000, true, true, CoD.TweenType.Linear)
					arg0.VoteType:beginAnimation("subkeyframe", 649.000000, true, true, CoD.TweenType.Linear)
					arg0.voteCount:beginAnimation("subkeyframe", 649.000000, true, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, true, -27.000000, -27.000000)
				arg0:setTopBottom(false, false, -90.000000, 88.000000)
				arg0.LobbyMemberBackingMask0:setAlpha(0.000000)
				arg0.VoteType:setAlpha(0.000000)
				arg0.voteCount:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1ECA8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1ECA8_)
		end

		registerVal4:completeAnimation()
		registerVal4.LobbyMemberBackingMask0:completeAnimation()
		registerVal4.VoteType:completeAnimation()
		registerVal4.voteCount:completeAnimation()
		registerVal2.MapVoteItemRandom:setLeftRight(true, true, -27.000000, -27.000000)
		registerVal2.MapVoteItemRandom:setTopBottom(false, false, 30.000000, 88.000000)
		registerVal2.MapVoteItemRandom.LobbyMemberBackingMask0:setAlpha(0.500000)
		registerVal2.MapVoteItemRandom.VoteType:setAlpha(1.000000)
		registerVal2.MapVoteItemRandom.voteCount:setAlpha(1.000000)
		__FUNC_1EB52_(registerVal4, {})
		local function __FUNC_1F01F_(arg0, arg1)
			local function __FUNC_1F197_(arg0, arg1)
				local function __FUNC_1F30F_(arg0, arg1)
					local function __FUNC_1F487_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, true, -27.000000, -27.000000)
						arg0:setTopBottom(false, false, -21.000000, 37.000000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_1F487_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F487_)
				end

				if arg1.interrupted then
					__FUNC_1F30F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F30F_)
			end

			if arg1.interrupted then
				__FUNC_1F197_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.900000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F197_)
		end

		registerVal5:completeAnimation()
		registerVal2.MapVoteItemPrevious:setLeftRight(true, true, -27.000000, -27.000000)
		registerVal2.MapVoteItemPrevious:setTopBottom(false, false, -21.000000, 37.000000)
		registerVal2.MapVoteItemPrevious:setAlpha(1.000000)
		__FUNC_1F01F_(registerVal5, {})
		local function __FUNC_1F6A4_(arg0, arg1)
			local function __FUNC_1F7FC_(arg0, arg1)
				local function __FUNC_1F977_(arg0, arg1)
					local function __FUNC_1FAEF_(arg0, arg1)
						local function __FUNC_1FC67_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, true, -27.000000, -27.000000)
							arg0:setTopBottom(false, false, -72.000000, -14.000000)
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_1FC67_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.250000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FC67_)
					end

					if arg1.interrupted then
						__FUNC_1FAEF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FAEF_)
				end

				if arg1.interrupted then
					__FUNC_1F977_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.630000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F977_)
			end

			if arg1.interrupted then
				__FUNC_1F7FC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F7FC_)
		end

		registerVal6:completeAnimation()
		registerVal2.MapVoteItemNext:setLeftRight(true, true, -27.000000, -27.000000)
		registerVal2.MapVoteItemNext:setTopBottom(false, false, -72.000000, -14.000000)
		registerVal2.MapVoteItemNext:setAlpha(1.000000)
		__FUNC_1F6A4_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEListSubHeaderGlow0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_1FE84_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.MapVoting:setAlpha(1.000000)
		__FUNC_1FE84_(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyStatus:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal13:completeAnimation()
		registerVal2.FRBestTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FRDifficulty:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ArenaRules:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal17:completeAnimation()
		registerVal2.MapVoteResult:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal20:completeAnimation()
		registerVal2.MapVoteOfficial:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal23.SelectedMap = __FUNC_1E494_
	registerVal22.MapVoteChosenRandom = registerVal23
	registerVal23 = {}
	local function __FUNC_20039_()
		registerVal2:setupElementClipCounter(17.000000)
		registerVal3:completeAnimation()
		registerVal3.LobbyMemberBackingMask0:completeAnimation()
		registerVal2.MapVoteItemVoteDecided:setLeftRight(true, true, -27.000000, -27.000000)
		registerVal2.MapVoteItemVoteDecided:setTopBottom(false, false, -81.000000, 97.000000)
		registerVal2.MapVoteItemVoteDecided:setAlpha(1.000000)
		registerVal2.MapVoteItemVoteDecided:setScale(0.850000)
		registerVal2.MapVoteItemVoteDecided.LobbyMemberBackingMask0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_20A3C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0.LobbyMemberBackingMask0:beginAnimation("subkeyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0.VoteType:beginAnimation("subkeyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0.voteCount:beginAnimation("subkeyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(false, false, -90.000000, 88.000000)
			arg0:setAlpha(0.000000)
			arg0.LobbyMemberBackingMask0:setAlpha(0.000000)
			arg0.VoteType:setAlpha(0.000000)
			arg0.voteCount:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal4.LobbyMemberBackingMask0:completeAnimation()
		registerVal4.VoteType:completeAnimation()
		registerVal4.voteCount:completeAnimation()
		registerVal2.MapVoteItemRandom:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.MapVoteItemRandom:setTopBottom(false, false, -90.000000, 88.000000)
		registerVal2.MapVoteItemRandom:setAlpha(0.000000)
		registerVal2.MapVoteItemRandom.LobbyMemberBackingMask0:setAlpha(0.000000)
		registerVal2.MapVoteItemRandom.VoteType:setAlpha(0.000000)
		registerVal2.MapVoteItemRandom.voteCount:setAlpha(0.000000)
		__FUNC_20A3C_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.MapVoteItemPrevious:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.MapVoteItemNext:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEListSubHeaderGlow0:setLeftRight(true, true, 0.000000, -52.000000)
		registerVal2.FEListSubHeaderGlow0:setTopBottom(true, false, -7.000000, 16.000000)
		registerVal2.FEListSubHeaderGlow0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.MapVoting:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyStatus:setLeftRight(false, true, -94.500000, -66.000000)
		registerVal2.LobbyStatus:setTopBottom(true, false, -6.000000, 14.000000)
		registerVal2.LobbyStatus:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FETitleLineUpper:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FETitleLineUpper0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FETitleLineBottom0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal2.FRDifficulty:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ArenaRules:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.MapVoteNoDemoSelected:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.MapVoteResult:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FileshareSpinner:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.DownloadPercent:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.MapVoteOfficial:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal23.DefaultClip = __FUNC_20039_
	local function __FUNC_20DBA_()
		registerVal2:setupElementClipCounter(13.000000)
		local function __FUNC_216D5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 529.000000, false, false, CoD.TweenType.Bounce)
				arg0.LobbyMemberBackingMask0:beginAnimation("subkeyframe", 529.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(true, true, -27.000000, -27.000000)
			arg0:setTopBottom(false, false, -81.000000, 97.000000)
			arg0:setAlpha(0.000000)
			arg0:setScale(0.850000)
			arg0.LobbyMemberBackingMask0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal3.LobbyMemberBackingMask0:completeAnimation()
		registerVal2.MapVoteItemVoteDecided:setLeftRight(true, true, -27.000000, -27.000000)
		registerVal2.MapVoteItemVoteDecided:setTopBottom(false, false, -81.000000, 97.000000)
		registerVal2.MapVoteItemVoteDecided:setAlpha(1.000000)
		registerVal2.MapVoteItemVoteDecided:setScale(0.850000)
		registerVal2.MapVoteItemVoteDecided.LobbyMemberBackingMask0:setAlpha(0.000000)
		__FUNC_216D5_(registerVal3, {})
		local function __FUNC_219A5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0.LobbyMemberBackingMask0:beginAnimation("subkeyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0.VoteType:beginAnimation("subkeyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0.voteCount:beginAnimation("subkeyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(false, false, -90.000000, 88.000000)
			arg0:setAlpha(0.000000)
			arg0.LobbyMemberBackingMask0:setAlpha(0.000000)
			arg0.VoteType:setAlpha(0.000000)
			arg0.voteCount:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal4.LobbyMemberBackingMask0:completeAnimation()
		registerVal4.VoteType:completeAnimation()
		registerVal4.voteCount:completeAnimation()
		registerVal2.MapVoteItemRandom:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.MapVoteItemRandom:setTopBottom(false, false, -90.000000, 88.000000)
		registerVal2.MapVoteItemRandom:setAlpha(0.000000)
		registerVal2.MapVoteItemRandom.LobbyMemberBackingMask0:setAlpha(0.000000)
		registerVal2.MapVoteItemRandom.VoteType:setAlpha(0.000000)
		registerVal2.MapVoteItemRandom.voteCount:setAlpha(0.000000)
		__FUNC_219A5_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.MapVoteItemPrevious:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.MapVoteItemNext:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_21D22_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 330.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, -52.000000)
			arg0:setTopBottom(true, false, -7.000000, 16.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.FEListSubHeaderGlow0:setLeftRight(true, true, 0.000000, -52.000000)
		registerVal2.FEListSubHeaderGlow0:setTopBottom(true, false, -7.000000, 16.000000)
		registerVal2.FEListSubHeaderGlow0:setAlpha(1.000000)
		__FUNC_21D22_(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.MapVoting:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_21F40_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(false, true, -94.500000, -66.000000)
			arg0:setTopBottom(true, false, -6.000000, 14.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.LobbyStatus:setLeftRight(false, true, -94.500000, -66.000000)
		registerVal2.LobbyStatus:setTopBottom(true, false, -6.000000, 14.000000)
		registerVal2.LobbyStatus:setAlpha(1.000000)
		__FUNC_21F40_(registerVal9, {})
		local function __FUNC_22165_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, -53.000000)
			arg0:setTopBottom(false, false, -76.000000, -72.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.FETitleLineUpper:setLeftRight(true, true, 0.000000, -53.000000)
		registerVal2.FETitleLineUpper:setTopBottom(false, false, -76.000000, -72.000000)
		registerVal2.FETitleLineUpper:setAlpha(1.000000)
		__FUNC_22165_(registerVal10, {})
		local function __FUNC_22384_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, -53.000000)
			arg0:setTopBottom(false, false, 87.000000, 91.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.FETitleLineBottom0:setLeftRight(true, true, 0.000000, -53.000000)
		registerVal2.FETitleLineBottom0:setTopBottom(false, false, 87.000000, 91.000000)
		registerVal2.FETitleLineBottom0:setAlpha(1.000000)
		__FUNC_22384_(registerVal12, {})
		local function __FUNC_225A4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.FRBestTime:setAlpha(1.000000)
		__FUNC_225A4_(registerVal13, {})
		local function __FUNC_22759_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.FRDifficulty:setAlpha(1.000000)
		__FUNC_22759_(registerVal14, {})
		local function __FUNC_2290D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.ArenaRules:setAlpha(1.000000)
		__FUNC_2290D_(registerVal15, {})
		registerVal20:completeAnimation()
		registerVal2.MapVoteOfficial:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal23.DefaultState = __FUNC_20DBA_
	registerVal22.DemoSelectedDownloading = registerVal23
	registerVal23 = {}
	local function __FUNC_22AC1_()
		registerVal2:setupElementClipCounter(17.000000)
		registerVal3:completeAnimation()
		registerVal3.LobbyMemberBackingMask0:completeAnimation()
		registerVal2.MapVoteItemVoteDecided:setLeftRight(true, true, -27.000000, -27.000000)
		registerVal2.MapVoteItemVoteDecided:setTopBottom(false, false, -81.000000, 97.000000)
		registerVal2.MapVoteItemVoteDecided:setAlpha(0.000000)
		registerVal2.MapVoteItemVoteDecided:setScale(0.850000)
		registerVal2.MapVoteItemVoteDecided.LobbyMemberBackingMask0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_234C4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0.LobbyMemberBackingMask0:beginAnimation("subkeyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0.VoteType:beginAnimation("subkeyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0.voteCount:beginAnimation("subkeyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(false, false, -90.000000, 88.000000)
			arg0:setAlpha(0.000000)
			arg0.LobbyMemberBackingMask0:setAlpha(0.000000)
			arg0.VoteType:setAlpha(0.000000)
			arg0.voteCount:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal4.LobbyMemberBackingMask0:completeAnimation()
		registerVal4.VoteType:completeAnimation()
		registerVal4.voteCount:completeAnimation()
		registerVal2.MapVoteItemRandom:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.MapVoteItemRandom:setTopBottom(false, false, -90.000000, 88.000000)
		registerVal2.MapVoteItemRandom:setAlpha(0.000000)
		registerVal2.MapVoteItemRandom.LobbyMemberBackingMask0:setAlpha(0.000000)
		registerVal2.MapVoteItemRandom.VoteType:setAlpha(0.000000)
		registerVal2.MapVoteItemRandom.voteCount:setAlpha(0.000000)
		__FUNC_234C4_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.MapVoteItemPrevious:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.MapVoteItemNext:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEListSubHeaderGlow0:setLeftRight(true, true, 0.000000, -52.000000)
		registerVal2.FEListSubHeaderGlow0:setTopBottom(true, false, -7.000000, 16.000000)
		registerVal2.FEListSubHeaderGlow0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.MapVoting:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyStatus:setLeftRight(false, true, -94.500000, -66.000000)
		registerVal2.LobbyStatus:setTopBottom(true, false, -6.000000, 14.000000)
		registerVal2.LobbyStatus:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FETitleLineUpper:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FETitleLineUpper0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FETitleLineBottom0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal2.FRDifficulty:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ArenaRules:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.MapVoteNoDemoSelected:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.MapVoteResult:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FileshareSpinner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.DownloadPercent:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.MapVoteOfficial:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal23.DefaultClip = __FUNC_22AC1_
	local function __FUNC_23842_()
		registerVal2:setupElementClipCounter(13.000000)
		local function __FUNC_2415D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 529.000000, false, false, CoD.TweenType.Bounce)
				arg0.LobbyMemberBackingMask0:beginAnimation("subkeyframe", 529.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(true, true, -27.000000, -27.000000)
			arg0:setTopBottom(false, false, -81.000000, 97.000000)
			arg0:setAlpha(0.000000)
			arg0:setScale(0.850000)
			arg0.LobbyMemberBackingMask0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal3.LobbyMemberBackingMask0:completeAnimation()
		registerVal2.MapVoteItemVoteDecided:setLeftRight(true, true, -27.000000, -27.000000)
		registerVal2.MapVoteItemVoteDecided:setTopBottom(false, false, -81.000000, 97.000000)
		registerVal2.MapVoteItemVoteDecided:setAlpha(1.000000)
		registerVal2.MapVoteItemVoteDecided:setScale(0.850000)
		registerVal2.MapVoteItemVoteDecided.LobbyMemberBackingMask0:setAlpha(0.000000)
		__FUNC_2415D_(registerVal3, {})
		local function __FUNC_2442D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0.LobbyMemberBackingMask0:beginAnimation("subkeyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0.VoteType:beginAnimation("subkeyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0.voteCount:beginAnimation("subkeyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(false, false, -90.000000, 88.000000)
			arg0:setAlpha(0.000000)
			arg0.LobbyMemberBackingMask0:setAlpha(0.000000)
			arg0.VoteType:setAlpha(0.000000)
			arg0.voteCount:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal4.LobbyMemberBackingMask0:completeAnimation()
		registerVal4.VoteType:completeAnimation()
		registerVal4.voteCount:completeAnimation()
		registerVal2.MapVoteItemRandom:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.MapVoteItemRandom:setTopBottom(false, false, -90.000000, 88.000000)
		registerVal2.MapVoteItemRandom:setAlpha(0.000000)
		registerVal2.MapVoteItemRandom.LobbyMemberBackingMask0:setAlpha(0.000000)
		registerVal2.MapVoteItemRandom.VoteType:setAlpha(0.000000)
		registerVal2.MapVoteItemRandom.voteCount:setAlpha(0.000000)
		__FUNC_2442D_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.MapVoteItemPrevious:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.MapVoteItemNext:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_247AA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 330.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, -52.000000)
			arg0:setTopBottom(true, false, -7.000000, 16.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.FEListSubHeaderGlow0:setLeftRight(true, true, 0.000000, -52.000000)
		registerVal2.FEListSubHeaderGlow0:setTopBottom(true, false, -7.000000, 16.000000)
		registerVal2.FEListSubHeaderGlow0:setAlpha(1.000000)
		__FUNC_247AA_(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.MapVoting:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_249C8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(false, true, -94.500000, -66.000000)
			arg0:setTopBottom(true, false, -6.000000, 14.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.LobbyStatus:setLeftRight(false, true, -94.500000, -66.000000)
		registerVal2.LobbyStatus:setTopBottom(true, false, -6.000000, 14.000000)
		registerVal2.LobbyStatus:setAlpha(1.000000)
		__FUNC_249C8_(registerVal9, {})
		local function __FUNC_24BED_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, -53.000000)
			arg0:setTopBottom(false, false, -76.000000, -72.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.FETitleLineUpper:setLeftRight(true, true, 0.000000, -53.000000)
		registerVal2.FETitleLineUpper:setTopBottom(false, false, -76.000000, -72.000000)
		registerVal2.FETitleLineUpper:setAlpha(1.000000)
		__FUNC_24BED_(registerVal10, {})
		local function __FUNC_24E0C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, -53.000000)
			arg0:setTopBottom(false, false, 87.000000, 91.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.FETitleLineBottom0:setLeftRight(true, true, 0.000000, -53.000000)
		registerVal2.FETitleLineBottom0:setTopBottom(false, false, 87.000000, 91.000000)
		registerVal2.FETitleLineBottom0:setAlpha(1.000000)
		__FUNC_24E0C_(registerVal12, {})
		local function __FUNC_2502C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.FRBestTime:setAlpha(1.000000)
		__FUNC_2502C_(registerVal13, {})
		local function __FUNC_251E1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.FRDifficulty:setAlpha(1.000000)
		__FUNC_251E1_(registerVal14, {})
		local function __FUNC_25395_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.ArenaRules:setAlpha(1.000000)
		__FUNC_25395_(registerVal15, {})
		registerVal20:completeAnimation()
		registerVal2.MapVoteOfficial:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal23.DefaultState = __FUNC_23842_
	registerVal22.NoDemoSelected = registerVal23
	registerVal23 = {}
	local function __FUNC_25549_()
		registerVal2:setupElementClipCounter(18.000000)
		registerVal3:completeAnimation()
		registerVal2.MapVoteItemVoteDecided:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.MapVoteItemRandom:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.MapVoteItemPrevious:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.MapVoteItemNext:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEListSubHeaderGlow0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.MapVoting:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyStatus:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FETitleLineUpper:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FETitleLineUpper0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FETitleLineBottom0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FRBestTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FRDifficulty:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ArenaRules:setLeftRight(true, false, 0.000000, 303.000000)
		registerVal2.ArenaRules:setTopBottom(true, false, -63.000000, -12.000000)
		registerVal2.ArenaRules:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.MapVoteNoDemoSelected:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.MapVoteResult:setLeftRight(true, false, 0.000000, 303.000000)
		registerVal2.MapVoteResult:setTopBottom(true, false, 18.000000, 177.000000)
		registerVal2.MapVoteResult:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FileshareSpinner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.DownloadPercent:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.MapVoteOfficial:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal23.DefaultClip = __FUNC_25549_
	registerVal22.GameResult = registerVal23
	registerVal23 = {}
	local function __FUNC_25D67_()
		registerVal2:setupElementClipCounter(17.000000)
		registerVal3:completeAnimation()
		registerVal3.LobbyMemberBackingMask0:completeAnimation()
		registerVal2.MapVoteItemVoteDecided:setLeftRight(true, true, -27.000000, -27.000000)
		registerVal2.MapVoteItemVoteDecided:setTopBottom(false, false, -81.000000, 97.000000)
		registerVal2.MapVoteItemVoteDecided:setAlpha(1.000000)
		registerVal2.MapVoteItemVoteDecided:setScale(0.850000)
		registerVal2.MapVoteItemVoteDecided.LobbyMemberBackingMask0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_26768_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0.LobbyMemberBackingMask0:beginAnimation("subkeyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0.VoteType:beginAnimation("subkeyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0.voteCount:beginAnimation("subkeyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(false, false, -90.000000, 88.000000)
			arg0:setAlpha(0.000000)
			arg0.LobbyMemberBackingMask0:setAlpha(0.000000)
			arg0.VoteType:setAlpha(0.000000)
			arg0.voteCount:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal4.LobbyMemberBackingMask0:completeAnimation()
		registerVal4.VoteType:completeAnimation()
		registerVal4.voteCount:completeAnimation()
		registerVal2.MapVoteItemRandom:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.MapVoteItemRandom:setTopBottom(false, false, -90.000000, 88.000000)
		registerVal2.MapVoteItemRandom:setAlpha(0.000000)
		registerVal2.MapVoteItemRandom.LobbyMemberBackingMask0:setAlpha(0.000000)
		registerVal2.MapVoteItemRandom.VoteType:setAlpha(0.000000)
		registerVal2.MapVoteItemRandom.voteCount:setAlpha(0.000000)
		__FUNC_26768_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.MapVoteItemPrevious:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.MapVoteItemNext:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEListSubHeaderGlow0:setLeftRight(true, true, 0.000000, -52.000000)
		registerVal2.FEListSubHeaderGlow0:setTopBottom(true, false, -7.000000, 16.000000)
		registerVal2.FEListSubHeaderGlow0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.MapVoting:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyStatus:setLeftRight(false, true, -94.500000, -66.000000)
		registerVal2.LobbyStatus:setTopBottom(true, false, -6.000000, 14.000000)
		registerVal2.LobbyStatus:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FETitleLineUpper:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FETitleLineUpper0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FETitleLineBottom0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal2.FRDifficulty:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ArenaRules:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.MapVoteNoDemoSelected:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.MapVoteResult:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FileshareSpinner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.DownloadPercent:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.MapVoteOfficial:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal23.DefaultClip = __FUNC_25D67_
	local function __FUNC_26AE6_()
		registerVal2:setupElementClipCounter(13.000000)
		local function __FUNC_27401_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 529.000000, false, false, CoD.TweenType.Bounce)
				arg0.LobbyMemberBackingMask0:beginAnimation("subkeyframe", 529.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(true, true, -27.000000, -27.000000)
			arg0:setTopBottom(false, false, -81.000000, 97.000000)
			arg0:setAlpha(0.000000)
			arg0:setScale(0.850000)
			arg0.LobbyMemberBackingMask0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal3.LobbyMemberBackingMask0:completeAnimation()
		registerVal2.MapVoteItemVoteDecided:setLeftRight(true, true, -27.000000, -27.000000)
		registerVal2.MapVoteItemVoteDecided:setTopBottom(false, false, -81.000000, 97.000000)
		registerVal2.MapVoteItemVoteDecided:setAlpha(1.000000)
		registerVal2.MapVoteItemVoteDecided:setScale(0.850000)
		registerVal2.MapVoteItemVoteDecided.LobbyMemberBackingMask0:setAlpha(0.000000)
		__FUNC_27401_(registerVal3, {})
		local function __FUNC_276D1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0.LobbyMemberBackingMask0:beginAnimation("subkeyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0.VoteType:beginAnimation("subkeyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0.voteCount:beginAnimation("subkeyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(false, false, -90.000000, 88.000000)
			arg0:setAlpha(0.000000)
			arg0.LobbyMemberBackingMask0:setAlpha(0.000000)
			arg0.VoteType:setAlpha(0.000000)
			arg0.voteCount:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal4.LobbyMemberBackingMask0:completeAnimation()
		registerVal4.VoteType:completeAnimation()
		registerVal4.voteCount:completeAnimation()
		registerVal2.MapVoteItemRandom:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.MapVoteItemRandom:setTopBottom(false, false, -90.000000, 88.000000)
		registerVal2.MapVoteItemRandom:setAlpha(0.000000)
		registerVal2.MapVoteItemRandom.LobbyMemberBackingMask0:setAlpha(0.000000)
		registerVal2.MapVoteItemRandom.VoteType:setAlpha(0.000000)
		registerVal2.MapVoteItemRandom.voteCount:setAlpha(0.000000)
		__FUNC_276D1_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.MapVoteItemPrevious:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.MapVoteItemNext:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_27A4E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 330.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, -52.000000)
			arg0:setTopBottom(true, false, -7.000000, 16.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.FEListSubHeaderGlow0:setLeftRight(true, true, 0.000000, -52.000000)
		registerVal2.FEListSubHeaderGlow0:setTopBottom(true, false, -7.000000, 16.000000)
		registerVal2.FEListSubHeaderGlow0:setAlpha(1.000000)
		__FUNC_27A4E_(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.MapVoting:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_27C6C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(false, true, -94.500000, -66.000000)
			arg0:setTopBottom(true, false, -6.000000, 14.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.LobbyStatus:setLeftRight(false, true, -94.500000, -66.000000)
		registerVal2.LobbyStatus:setTopBottom(true, false, -6.000000, 14.000000)
		registerVal2.LobbyStatus:setAlpha(1.000000)
		__FUNC_27C6C_(registerVal9, {})
		local function __FUNC_27E91_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, -53.000000)
			arg0:setTopBottom(false, false, -76.000000, -72.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.FETitleLineUpper:setLeftRight(true, true, 0.000000, -53.000000)
		registerVal2.FETitleLineUpper:setTopBottom(false, false, -76.000000, -72.000000)
		registerVal2.FETitleLineUpper:setAlpha(1.000000)
		__FUNC_27E91_(registerVal10, {})
		local function __FUNC_280B0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, -53.000000)
			arg0:setTopBottom(false, false, 87.000000, 91.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.FETitleLineBottom0:setLeftRight(true, true, 0.000000, -53.000000)
		registerVal2.FETitleLineBottom0:setTopBottom(false, false, 87.000000, 91.000000)
		registerVal2.FETitleLineBottom0:setAlpha(1.000000)
		__FUNC_280B0_(registerVal12, {})
		local function __FUNC_282D0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.FRBestTime:setAlpha(1.000000)
		__FUNC_282D0_(registerVal13, {})
		local function __FUNC_28485_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.FRDifficulty:setAlpha(1.000000)
		__FUNC_28485_(registerVal14, {})
		local function __FUNC_28639_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.ArenaRules:setAlpha(1.000000)
		__FUNC_28639_(registerVal15, {})
		registerVal20:completeAnimation()
		registerVal2.MapVoteOfficial:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal23.DefaultState = __FUNC_26AE6_
	registerVal22.DemoSelectedFinished = registerVal23
	registerVal2.clipsPerState = registerVal22
	local registerVal24 = {}
	local registerVal25 = {}
	registerVal25.stateName = "CPHidden"
	local function __FUNC_287ED_(arg0, arg2, arg3)
		return IsCPMapVoteHidden(arg1)
	end

	registerVal25.condition = __FUNC_287ED_
	local registerVal26 = {}
	registerVal26.stateName = "MPHidden"
	local function __FUNC_28843_(arg0, arg2, arg3)
		return IsMPMapVoteHidden(arg1)
	end

	registerVal26.condition = __FUNC_28843_
	local registerVal27 = {}
	registerVal27.stateName = "ZMHidden"
	local function __FUNC_28897_(arg0, arg2, arg3)
		return IsZMMapVoteHidden(arg1)
	end

	registerVal27.condition = __FUNC_28897_
	local registerVal28 = {}
	registerVal28.stateName = "MapVote"
	local function __FUNC_288EB_(arg0, arg1, arg2)
		local registerVal3 = MapVoteInState("1")
		if registerVal3 then
			registerVal3 = IsInTheaterMode()
		end
		return (not registerVal3)
	end

	registerVal28.condition = __FUNC_288EB_
	local registerVal29 = {}
	registerVal29.stateName = "SelectedMap"
	local function __FUNC_28974_(arg0, arg1, arg2)
		local registerVal3 = MapVoteInState("2")
		if registerVal3 then
			registerVal3 = IsInTheaterMode()
		end
		return (not registerVal3)
	end

	registerVal29.condition = __FUNC_28974_
	local registerVal30 = {}
	registerVal30.stateName = "MapVoteChosenNext"
	local function __FUNC_28A00_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal30.condition = __FUNC_28A00_
	local registerVal31 = {}
	registerVal31.stateName = "MapVoteChosenPrevious"
	local function __FUNC_28A4D_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal31.condition = __FUNC_28A4D_
	local registerVal32 = {}
	registerVal32.stateName = "MapVoteChosenRandom"
	local function __FUNC_28A99_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal32.condition = __FUNC_28A99_
	local registerVal33 = {}
	registerVal33.stateName = "DemoSelectedDownloading"
	local function __FUNC_28AE5_(arg0, arg2, arg3)
		local registerVal3 = IsInTheaterMode()
		registerVal3 = IsFilmSelected()
		if registerVal3 and registerVal3 then
			registerVal3 = IsGlobalModelValueGreaterThan(arg1, "lobbyRoot.theaterDownloadPercent", 99.000000)
		end
		return (not registerVal3)
	end

	registerVal33.condition = __FUNC_28AE5_
	local registerVal34 = {}
	registerVal34.stateName = "NoDemoSelected"
	local function __FUNC_28BD3_(arg0, arg1, arg2)
		local registerVal3 = IsInTheaterMode()
		if registerVal3 then
			registerVal3 = IsFilmSelected()
		end
		return (not registerVal3)
	end

	registerVal34.condition = __FUNC_28BD3_
	local registerVal35 = {}
	registerVal35.stateName = "GameResult"
	local function __FUNC_28C4D_(arg0, arg1, arg2)
		local registerVal3 = MapVoteInState("3")
		if registerVal3 then
			registerVal3 = IsInTheaterMode()
		end
		return (not registerVal3)
	end

	registerVal35.condition = __FUNC_28C4D_
	local registerVal36 = {}
	registerVal36.stateName = "DemoSelectedFinished"
	local function __FUNC_28CD8_(arg0, arg2, arg3)
		local registerVal3 = IsInTheaterMode()
		registerVal3 = IsFilmSelected()
		if registerVal3 and registerVal3 then
			registerVal3 = IsGlobalModelValueGreaterThan(arg1, "lobbyRoot.theaterDownloadPercent", 99.000000)
		end
		return registerVal3
	end

	registerVal36.condition = __FUNC_28CD8_
	registerVal24 = {registerVal25, registerVal26, registerVal27, registerVal28, registerVal29, registerVal30, registerVal31, registerVal32, registerVal33, registerVal34, registerVal35, registerVal36}
	registerVal2:mergeStateConditions(registerVal24)
	registerVal25 = Engine.GetGlobalModel()
	registerVal24 = Engine.GetModel(registerVal25, "lobbyRoot.lobbyNav")
	local function __FUNC_28DC3_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal24, __FUNC_28DC3_)
	registerVal25 = Engine.GetGlobalModel()
	registerVal24 = Engine.GetModel(registerVal25, "lobbyRoot.mapVote")
	local function __FUNC_28EE8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.mapVote"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal24, __FUNC_28EE8_)
	registerVal25 = Engine.GetGlobalModel()
	registerVal24 = Engine.GetModel(registerVal25, "lobbyRoot.theaterDataDownloaded")
	local function __FUNC_2900F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.theaterDataDownloaded"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal24, __FUNC_2900F_)
	registerVal25 = Engine.GetGlobalModel()
	registerVal24 = Engine.GetModel(registerVal25, "lobbyRoot.theaterDownloadPercent")
	local function __FUNC_29141_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.theaterDownloadPercent"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal24, __FUNC_29141_)
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	local function __FUNC_29276_(arg0, arg2)
		local registerVal2 = IsInDefaultState(arg0)
		if registerVal2 then
			DisableMouseButton(registerVal2, arg1)
		else
			EnableMouseButton(registerVal2, arg1)
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_29276_)
	registerVal3.id = "MapVoteItemVoteDecided"
	registerVal4.id = "MapVoteItemRandom"
	registerVal5.id = "MapVoteItemPrevious"
	registerVal6.id = "MapVoteItemNext"
	registerVal15.id = "ArenaRules"
	local function __FUNC_29329_(arg0, arg1)
		local registerVal2 = arg0.MapVoteItemVoteDecided:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_29329_)
	local function __FUNC_2943A_(arg0)
		arg0.MapVoteItemVoteDecided:close()
		arg0.MapVoteItemRandom:close()
		arg0.MapVoteItemPrevious:close()
		arg0.MapVoteItemNext:close()
		arg0.FEListSubHeaderGlow0:close()
		arg0.FETitleLineUpper:close()
		arg0.FETitleLineUpper0:close()
		arg0.FETitleLineBottom0:close()
		arg0.FRBestTime:close()
		arg0.FRDifficulty:close()
		arg0.ArenaRules:close()
		arg0.MapVoteNoDemoSelected:close()
		arg0.MapVoteResult:close()
		arg0.FileshareSpinner:close()
		arg0.MapVoteOfficial:close()
		arg0.ZMLobbyEEList:close()
		arg0.LobbyStatus:close()
		arg0.DownloadPercent:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2943A_)
	if __FUNC_248C_ then
		__FUNC_248C_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.MapVote.new = __FUNC_288A_
