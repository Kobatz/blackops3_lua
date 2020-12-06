-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.Lobby.LobbyStreamerBlackFade")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.List1Button_Playlist")
require("ui.uieditor.widgets.MP.MatchSettings.playlistCategoryMatchSettingsInfo")
require("ui.uieditor.widgets.MP.MatchSettings.playlistMatchSettingsInfo")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.MenuSpecificWidgets.PlaylistDLC1CRM")
require("ui.uieditor.widgets.DLC_Free_weekend")
require("ui.uieditor.widgets.Party_Double_promo")
local function __FUNC_60B_(arg0, arg1)
	if not CoD.useMouse then
		return 
	end
	local function __FUNC_783_(arg1, arg2)
		local registerVal2 = IsSelfInState(arg0, "SelectingPlaylist")
		if registerVal2 then
			arg0.playlistList:setMouseDisabled(false)
			arg0.playlistCategoriesList:setMouseDisabled(true)
			arg0.m_playlistSet = false
		else
			arg0.playlistList:setMouseDisabled(true)
			arg0.playlistCategoriesList:setMouseDisabled(false)
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "setState", __FUNC_783_)
	arg0.playlistList:setMouseDisabled(true)
	local function __FUNC_8DB_(arg2, arg3)
		local registerVal2 = IsSelfInState(arg0, "SelectingPlaylist")
		if registerVal2 and arg0.m_playlistSet then
			CoD.PCUtil.SimulateButtonPress(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
		end
		arg0.m_playlistSet = true
		return true
	end

	arg0.playlistList:registerEventHandler("leftclick_outside", __FUNC_8DB_)
end

local function __FUNC_A48_(arg0, arg1)
	__FUNC_60B_(arg0, arg1)
	local function __FUNC_AD0_(arg0, arg2)
		UpdateElementState(arg0, "PlaylistDLC1CRM", arg1)
		CoD.Menu.OcclusionChange(arg0, arg2)
	end

	arg0:registerEventHandler("occlusion_change", __FUNC_AD0_)
end

local function __FUNC_BA1_(arg0)
	if 0.000000 < arg0 then
		return true
	end
	local registerVal1 = Dvar.groupZeroCountsVisible:exists()
	registerVal1 = Dvar.groupZeroCountsVisible:get()
	if registerVal1 == true and registerVal1 == true then
		return true
	end
	return false
end

function FindPlaylistCategory(arg0, arg1)
	local registerVal2, registerVal3, registerVal4 = ipairs(arg0)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		local registerVal7, registerVal8, registerVal9 = ipairs(value6.playlists)
		for index10,value11 in registerVal7, registerVal8, registerVal9 do
			if value11.index == arg1 then
				return value6
			end
		end
	end
	return nil
end

local function __FUNC_D32_(arg0)
	local registerVal2 = Engine.GetPlaylistCategories()
	if not CoD.PlaylistCategoryFilter then
	end
	local registerVal4 = Engine.ProfileInt(arg0, ("playlist_" .. ""))
	local registerVal5 = FindPlaylistCategory(registerVal2, registerVal4)
	local registerVal7, registerVal8, registerVal9 = ipairs(registerVal2)
	for index10,value11 in registerVal7, registerVal8, registerVal9 do
		if value11.filter == "" then
		end
	end
	local function __FUNC_F9B_(arg1)
		local registerVal2 = __FUNC_BA1_((0.000000 + value11.playerCount))
		if registerVal2 then
			registerVal2 = Dvar.groupCountsVisible:get()
			if registerVal2 == true then
				local registerVal4 = CoD.separateNumberWithCommas(arg1.playerCount)
				registerVal2 = Engine.Localize("MENU_CATEGORY_USER_COUNT", registerVal4, CoD.separateNumberWithCommas((0.000000 + value11.playerCount)))
			else
				if (0.000000 + value11.playerCount) <= 0.000000 then
				end
				registerVal2 = Engine.Localize("MENU_CATEGORY_USER_PERCENT", math.floor((((arg1.playerCount / 1.000000) * 100.000000) + 0.500000)))
			end
		end
		registerVal2 = IsZombies()
		if registerVal2 then
			if #arg1.playlists ~= 1.000000 then
			end
		end
		local registerVal5, registerVal6, registerVal7 = ipairs(arg1.playlists)
		for index8,value9 in registerVal5, registerVal6, registerVal7 do
			local registerVal10 = Engine.GetPlaylistInfoByID(value9.index)
			local registerVal11 = LuaUtils.PlaylistRulesIncludes(registerVal10, "ui_showBonusIcon 1")
			if registerVal11 then
			else
			end
		end
		registerVal5 = {}
		registerVal6 = {}
		registerVal7 = Engine.ToUpper(arg1.name)
		if not registerVal7 then
		end
		registerVal6.text = ""
		registerVal7 = CoD.StoreUtility.PrependPurchaseIconIfNeeded(arg0, arg1.ref, Engine.ToUpper(arg1.name))
		if not registerVal7 then
		end
		registerVal6.buttonText = ""
		if not arg1.icon then
		end
		registerVal6.image = "playlist_standard"
		if not arg1.description then
		end
		registerVal6.description = ""
		registerVal6.hasBonusIcon = true
		registerVal6.playlistCount = registerVal2
		registerVal5.models = registerVal6
		registerVal6 = {}
		registerVal6.id = arg1.ref
		registerVal6.category = arg1
		registerVal6.autoPlay = true
		registerVal6.playlist = arg1.playlists[1.000000]
		if arg1 ~= registerVal5 then
		end
		registerVal6.selectIndex = true
		if arg1.playlists[1.000000] then
			registerVal7 = Engine.IsPlaylistLocked(arg0, arg1.playlists[1.000000].index)
		end
		registerVal6.disabled = true
		registerVal5.properties = registerVal6
		return registerVal5
	end

	registerVal8, registerVal9, registerVal10 = ipairs(registerVal2)
	for index11,value12 in registerVal8, registerVal9, registerVal10 do
		if value12.filter == "" and 0.000000 < #value12.playlists then
			table.insert({}, __FUNC_F9B_(value12))
		end
	end
	return {}
end

local registerVal5 = DataSourceHelpers.ListSetup("PlaylistCategories", __FUNC_D32_, true)
DataSources.PlaylistCategories = registerVal5
local registerVal4 = LuaEnums.createEnum("tdm", "ctf", "koth", "dom", "conf")
local function __FUNC_1645_(arg0)
	local registerVal2 = Engine.GetPlaylistCategories()
	if not CoD.PlaylistCategoryFilter then
	end
	local registerVal5, registerVal6, registerVal7 = ipairs(registerVal2)
	for index8,value9 in registerVal5, registerVal6, registerVal7 do
		if value9.filter == "" then
		end
	end
	if not CoD.PlaylistCategoryFilter then
	end
	registerVal6 = Engine.ProfileInt(arg0, ("playlist_" .. ""))
	registerVal7 = Engine.DvarBool(nil, "playlistHideIcon2XP")
	local registerVal8, registerVal9, registerVal10 = ipairs(CoD.perController[arg0].playlistCategory.playlists)
	for index11,value12 in registerVal8, registerVal9, registerVal10 do
		local registerVal14 = __FUNC_BA1_((0.000000 + value9.playerCount))
		if registerVal14 then
			registerVal14 = Dvar.groupCountsVisible:get()
			if registerVal14 == true then
				local registerVal16 = CoD.separateNumberWithCommas(value12.playerCount)
				registerVal14 = Engine.Localize("MENU_PLAYLIST_USER_COUNT", registerVal16, CoD.separateNumberWithCommas((0.000000 + value9.playerCount)))
			else
				if (0.000000 + value9.playerCount) <= 0.000000 then
				end
				registerVal14 = Engine.Localize("MENU_PLAYLIST_USER_PERCENT", math.floor((((value12.playerCount / 1.000000) * 100.000000) + 0.500000)))
			end
		end
		registerVal14 = Engine.GetPlaylistInfoByID(value12.index)
		registerVal16 = Engine.IsPlaylistLocked(arg0, value12.index)
		if registerVal16 then
			registerVal16 = CoD.GetKnownDLCBits()
			registerVal16 = Engine.GetDLCBits()
			if (registerVal14.playlist.usedDLCMask & registerVal16) ~= registerVal14.playlist.usedDLCMask or (registerVal14.playlist.usedDLCMask & registerVal16) == registerVal14.playlist.usedDLCMask then
			end
		end
		local registerVal17 = ShowPurchasableMapForDLCBit(arg0, registerVal14.playlist.usedDLCMask)
		if not value12.name then
		end
		if registerVal17 then
			local registerVal20 = Engine.Localize("MENU_PURCHASE_ICON_AND_TEXT", "")
		end
		registerVal20 = LuaUtils.PlaylistRulesIncludes(registerVal14, "xpGroups group_party2")
		local registerVal22 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
		if registerVal22 then
		end
		registerVal22 = Engine.GetLobbyClientCount(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_PRIVATE, Enum.LobbyClientType.LOBBY_CLIENT_TYPE_ALL)
		local registerVal23 = Engine.GetLobbyClientCount(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_PRIVATE, Enum.LobbyClientType.LOBBY_CLIENT_TYPE_GUEST)
		local registerVal26 = {}
		local registerVal27 = {}
		if not value12.name then
		end
		registerVal27.text = ""
		if not value12.icon then
		end
		registerVal27.image = "blacktransparent"
		registerVal27.buttonText = registerVal20
		if not value12.description then
		end
		registerVal27.description = ""
		registerVal27.playlistCount = registerVal14
		local registerVal28 = LuaUtils.PlaylistRulesIncludes(registerVal14, "lootxp_multiplier 2.0")
		registerVal27.hasDoubleCryptokeys = registerVal28
		registerVal28 = LuaUtils.PlaylistRulesIncludes(registerVal14, "scr_xpscalemp 2")
		if registerVal28 then
			if {} or 2.000000 <= (registerVal22 - registerVal23) then
			else
			end
		end
		registerVal27.hasDoubleXP = true
		registerVal28 = LuaUtils.PlaylistRulesIncludes(registerVal14, "scr_gunxpscalemp 2")
		registerVal27.hasDoubleWeaponXP = registerVal28
		registerVal28 = LuaUtils.PlaylistRulesIncludes(registerVal14, "ui_showBonusIcon 1")
		registerVal27.hasBonusIcon = registerVal28
		registerVal27.dlcIndex = CoD.DLCIndexFromBit[registerVal14.playlist.usedDLCMask]
		registerVal26.models = registerVal27
		registerVal27 = {}
		registerVal28 = tostring(value12.index)
		registerVal27.id = registerVal28
		registerVal27.playlist = value12
		if value12.index ~= registerVal6 then
		end
		registerVal27.selectIndex = true
		registerVal28 = Engine.IsPlaylistLocked(arg0, value12.index)
		if registerVal28 then
		end
		registerVal27.disabled = (not registerVal28)
		registerVal27.purchasable = registerVal17
		registerVal26.properties = registerVal27
		table.insert({}, registerVal26)
	end
	return {}
end

local function __FUNC_2381_(arg0, arg1, arg2)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.GetModel(registerVal4, "lobbyRoot")
	arg1.lobbyRootModel = registerVal3
	if arg1.updateSubscription then
		arg1:removeSubscription(arg1.updateSubscription)
	end
	local registerVal5 = Engine.GetModel(arg1.lobbyRootModel, "privateClient.update")
	local function __FUNC_2515_()
		arg1:updateDataSource(false)
	end

	registerVal3 = arg1:subscribeToModel(registerVal5, __FUNC_2515_, false)
	arg1.updateSubscription = registerVal3
end

local registerVal8 = DataSourceHelpers.ListSetup("PlaylistModes", __FUNC_1645_, true, nil, __FUNC_2381_)
DataSources.PlaylistModes = registerVal8
local function __FUNC_256A_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("PlaylistSelection")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "PlaylistSelection.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, -4.000000, 7.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.310000, 0.310000, 0.310000)
	registerVal1:addElement(registerVal3)
	registerVal1.LeftPanel = registerVal3
	local registerVal4 = CoD.LobbyStreamerBlackFade.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Transparent"
	local function __FUNC_404D_(arg1, arg2, arg3)
		return IsGlobalModelValueEqualTo(arg2, arg0, "hideWorldForStreamer", 0.000000)
	end

	registerVal8.condition = __FUNC_404D_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "hideWorldForStreamer")
	local function __FUNC_40DA_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hideWorldForStreamer"
		registerVal1:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_40DA_)
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
	registerVal6:setTopBottom(true, false, 143.000000, 481.000000)
	registerVal6:setWidgetType(CoD.List1Button_Playlist)
	registerVal6:setVerticalCount(10.000000)
	registerVal6:setDataSource("PlaylistCategories")
	local function __FUNC_4202_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "disabled"
		CoD.Menu.UpdateButtonShownState(registerVal6, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal6:linkToElementModel(registerVal6, "disabled", true, __FUNC_4202_)
	local function __FUNC_43BD_(arg1, arg2)
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

	registerVal6:registerEventHandler("gain_focus", __FUNC_43BD_)
	local function __FUNC_454F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_454F_)
	local function __FUNC_461E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDisabled(arg0, arg2)
		registerVal4 = IsElementPropertyValue(arg0, "autoPlay", true)
		if not registerVal4 and registerVal4 then
			PlaylistSelected(arg1, arg0, arg2)
			ClearSavedState(registerVal1, arg2)
			return true
		else
			registerVal4 = IsDisabled(arg0, arg2)
			if not registerVal4 then
				PlaylistCategorySelected(arg1, arg0, arg2)
				PlaySoundSetSound(registerVal1, "list_action")
				return true
			end
		end
	end

	local function __FUNC_47BB_(arg0, arg1, arg2)
		local registerVal3 = IsDisabled(arg0, arg2)
		registerVal3 = IsElementPropertyValue(arg0, "autoPlay", true)
		if not registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		else
			registerVal3 = IsDisabled(arg0, arg2)
			if not registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
				return true
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal6, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_461E_, __FUNC_47BB_, false)
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Disabled_NoListFocus"
	local function __FUNC_49A0_(arg1, arg2, arg3)
		local registerVal3 = IsParentListInFocus(arg2)
		if not registerVal3 then
			registerVal3 = IsDisabled(arg2, arg0)
		else
		end
		return true
	end

	registerVal10.condition = __FUNC_49A0_
	local registerVal11 = {}
	registerVal11.stateName = "NoListFocus"
	local function __FUNC_4A31_(arg0, arg1, arg2)
		local registerVal3 = IsParentListInFocus(arg1)
		return (not registerVal3)
	end

	registerVal11.condition = __FUNC_4A31_
	registerVal9 = {registerVal10, registerVal11}
	registerVal6:mergeStateConditions(registerVal9)
	local function __FUNC_4A8D_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		registerVal1:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:linkToElementModel(registerVal6, "disabled", true, __FUNC_4A8D_)
	registerVal1:addElement(registerVal6)
	registerVal1.playlistCategoriesList = registerVal6
	registerVal7 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal7:makeFocusable()
	registerVal7:setLeftRight(true, false, 287.000000, 567.000000)
	registerVal7:setTopBottom(true, false, 143.000000, 651.000000)
	registerVal7:setWidgetType(CoD.List1Button_Playlist)
	registerVal7:setVerticalCount(15.000000)
	registerVal7:setDataSource("PlaylistModes")
	local function __FUNC_4BAA_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "disabled"
		CoD.Menu.UpdateButtonShownState(registerVal7, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal7:linkToElementModel(registerVal7, "disabled", true, __FUNC_4BAA_)
	local function __FUNC_4D65_(arg1, arg2)
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

	registerVal7:registerEventHandler("gain_focus", __FUNC_4D65_)
	local function __FUNC_4EF7_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_4EF7_)
	local function __FUNC_4FC6_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDisabled(arg0, arg2)
		registerVal4 = IsElementPropertyValue(arg0, "purchasable", true)
		if not registerVal4 and not registerVal4 then
			PlaylistSelected(arg1, arg0, arg2)
			ClearSavedState(registerVal1, arg2)
			return true
		else
			registerVal4 = IsDisabled(arg0, arg2)
			if not registerVal4 then
				OpenPurchaseMapPackConfirmation(arg2, arg0, "MPPublicGamePlaylistSelect", arg1)
				return true
			end
		end
	end

	local function __FUNC_5155_(arg0, arg1, arg2)
		local registerVal3 = IsDisabled(arg0, arg2)
		registerVal3 = IsElementPropertyValue(arg0, "purchasable", true)
		if not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		else
			registerVal3 = IsDisabled(arg0, arg2)
			if not registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
				return true
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal7, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_4FC6_, __FUNC_5155_, false)
	registerVal10 = {}
	registerVal11 = {}
	registerVal11.stateName = "Disabled_NoListFocus"
	local function __FUNC_533F_(arg1, arg2, arg3)
		local registerVal3 = IsParentListInFocus(arg2)
		if not registerVal3 then
			registerVal3 = IsDisabled(arg2, arg0)
		else
		end
		return true
	end

	registerVal11.condition = __FUNC_533F_
	local registerVal12 = {}
	registerVal12.stateName = "NoListFocus"
	local function __FUNC_53CD_(arg0, arg1, arg2)
		local registerVal3 = IsParentListInFocus(arg1)
		return (not registerVal3)
	end

	registerVal12.condition = __FUNC_53CD_
	registerVal10 = {registerVal11, registerVal12}
	registerVal7:mergeStateConditions(registerVal10)
	local function __FUNC_5429_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		registerVal1:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:linkToElementModel(registerVal7, "disabled", true, __FUNC_5429_)
	registerVal1:addElement(registerVal7)
	registerVal1.playlistList = registerVal7
	registerVal8 = CoD.playlistCategoryMatchSettingsInfo.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 600.000000, 1216.000000)
	registerVal8:setTopBottom(true, false, 143.000000, 693.250000)
	registerVal8:setAlpha(0.600000)
	registerVal1:addElement(registerVal8)
	registerVal1.categoryInfo = registerVal8
	registerVal9 = CoD.playlistMatchSettingsInfo.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 600.000000, 1216.000000)
	registerVal9:setTopBottom(true, false, 143.000000, 669.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.playlistInfo = registerVal9
	registerVal10 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal10:setTopBottom(true, false, 86.000000, 703.250000)
	registerVal1:addElement(registerVal10)
	registerVal1.FEMenuLeftGraphics = registerVal10
	registerVal11 = CoD.PlaylistDLC1CRM.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 600.000000, 1050.000000)
	registerVal11:setTopBottom(true, false, 542.380000, 671.380000)
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "dlc4_pc"
	local function __FUNC_5546_(arg1, arg2, arg3)
		local registerVal3 = ShouldShowDLCWidget(arg0, "mp_city")
		if registerVal3 then
			registerVal3 = IsGamepad(arg0)
		end
		return (not registerVal3)
	end

	registerVal15.condition = __FUNC_5546_
	local registerVal16 = {}
	registerVal16.stateName = "dlc4"
	local function __FUNC_55DD_(arg1, arg2, arg3)
		return ShouldShowDLCWidget(arg0, "mp_city")
	end

	registerVal16.condition = __FUNC_55DD_
	local registerVal17 = {}
	registerVal17.stateName = "dlc3"
	local function __FUNC_564A_(arg1, arg2, arg3)
		return ShouldShowDLCWidget(arg0, "mp_arena")
	end

	registerVal17.condition = __FUNC_564A_
	local registerVal18 = {}
	registerVal18.stateName = "dlc2"
	local function __FUNC_56B7_(arg1, arg2, arg3)
		return ShouldShowDLCWidget(arg0, "mp_aerospace")
	end

	registerVal18.condition = __FUNC_56B7_
	local registerVal19 = {}
	registerVal19.stateName = "dlc1"
	local function __FUNC_5727_(arg1, arg2, arg3)
		return ShouldShowDLCWidget(arg0, "mp_rise")
	end

	registerVal19.condition = __FUNC_5727_
	registerVal14 = {registerVal15, registerVal16, registerVal17, registerVal18, registerVal19}
	registerVal11:mergeStateConditions(registerVal14)
	if registerVal11.m_eventHandlers.input_source_changed then
		local function __FUNC_5792_(arg0, arg1)
			if not arg1.menu then
			end
			arg1.menu = registerVal1
			arg0:updateState(arg1)
			return registerVal11.m_eventHandlers.input_source_changed(arg0, arg1)
		end

		registerVal11:registerEventHandler("input_source_changed", __FUNC_5792_)
	else
		registerVal11:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal15 = Engine.GetModelForController(arg0)
	registerVal14 = Engine.GetModel(registerVal15, "LastInput")
	local function __FUNC_581B_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		registerVal1:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:subscribeToModel(registerVal14, __FUNC_581B_)
	registerVal1:addElement(registerVal11)
	registerVal1.PlaylistDLC1CRM = registerVal11
	registerVal12 = CoD.PlaylistDLC1CRM.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 600.000000, 1050.000000)
	registerVal12:setTopBottom(true, false, 542.380000, 671.380000)
	registerVal15 = {}
	registerVal16 = {}
	registerVal16.stateName = "dlc4_pc"
	local function __FUNC_5937_(arg1, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualToEnum(arg2, arg0, "controller", Enum.dlcIndex_t.CONTENT_DLC4_INDEX)
		if registerVal3 then
			registerVal3 = IsGamepad(arg0)
		end
		return (not registerVal3)
	end

	registerVal16.condition = __FUNC_5937_
	registerVal17 = {}
	registerVal17.stateName = "dlc4"
	local function __FUNC_5A36_(arg1, arg2, arg3)
		return IsSelfModelValueEqualToEnum(arg2, arg0, "controller", Enum.dlcIndex_t.CONTENT_DLC4_INDEX)
	end

	registerVal17.condition = __FUNC_5A36_
	registerVal18 = {}
	registerVal18.stateName = "dlc3"
	local function __FUNC_5B0B_(arg1, arg2, arg3)
		return IsSelfModelValueEqualToEnum(arg2, arg0, "dlcIndex", Enum.dlcIndex_t.CONTENT_DLC3_INDEX)
	end

	registerVal18.condition = __FUNC_5B0B_
	registerVal19 = {}
	registerVal19.stateName = "dlc2"
	local function __FUNC_5BDD_(arg1, arg2, arg3)
		return IsSelfModelValueEqualToEnum(arg2, arg0, "dlcIndex", Enum.dlcIndex_t.CONTENT_DLC2_INDEX)
	end

	registerVal19.condition = __FUNC_5BDD_
	local registerVal20 = {}
	registerVal20.stateName = "dlc1"
	local function __FUNC_5CB1_(arg1, arg2, arg3)
		return IsSelfModelValueEqualToEnum(arg2, arg0, "dlcIndex", Enum.dlcIndex_t.CONTENT_DLC1_INDEX)
	end

	registerVal20.condition = __FUNC_5CB1_
	registerVal15 = {registerVal16, registerVal17, registerVal18, registerVal19, registerVal20}
	registerVal12:mergeStateConditions(registerVal15)
	local function __FUNC_5D85_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "controller"
		registerVal1:updateElementState(registerVal12, registerVal4)
	end

	registerVal12:linkToElementModel(registerVal12, "controller", true, __FUNC_5D85_)
	if registerVal12.m_eventHandlers.input_source_changed then
		local function __FUNC_5EA4_(arg0, arg1)
			if not arg1.menu then
			end
			arg1.menu = registerVal1
			arg0:updateState(arg1)
			return registerVal12.m_eventHandlers.input_source_changed(arg0, arg1)
		end

		registerVal12:registerEventHandler("input_source_changed", __FUNC_5EA4_)
	else
		registerVal12:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal16 = Engine.GetModelForController(arg0)
	registerVal15 = Engine.GetModel(registerVal16, "LastInput")
	local function __FUNC_5F2F_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		registerVal1:updateElementState(registerVal12, registerVal4)
	end

	registerVal12:subscribeToModel(registerVal15, __FUNC_5F2F_)
	local function __FUNC_604B_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "dlcIndex"
		registerVal1:updateElementState(registerVal12, registerVal4)
	end

	registerVal12:linkToElementModel(registerVal12, "dlcIndex", true, __FUNC_604B_)
	registerVal1:addElement(registerVal12)
	registerVal1.PlaylistDLC1CRMContextual = registerVal12
	local registerVal13 = CoD.DLC_Free_weekend.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 72.000000, 470.000000)
	registerVal13:setTopBottom(true, false, 487.000000, 653.000000)
	registerVal13.DLCFreeTitleAndText.Title:setText(Engine.Localize("MENU_DLC1_TRY_AWAKENING_FREE"))
	registerVal13.DLCFreeTitleAndText.Body:setText(Engine.Localize("MENU_DLC1_TRY_AWAKENING_FREE_DESC"))
	registerVal16 = {}
	registerVal17 = {}
	registerVal17.stateName = "Visible"
	local function __FUNC_6166_(arg1, arg2, arg3)
		local registerVal3 = IsDvarValueEqualTo("ui_freeDLC1", "1")
		registerVal3 = ShouldShowDLCWidget(arg0, "mp_rise")
		if registerVal3 and registerVal3 then
			registerVal3 = AlwaysFalse()
		end
		return registerVal3
	end

	registerVal17.condition = __FUNC_6166_
	registerVal16 = {registerVal17}
	registerVal13:mergeStateConditions(registerVal16)
	registerVal1:addElement(registerVal13)
	registerVal1.DLCFreeweekend = registerVal13
	registerVal14 = CoD.Party_Double_promo.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 72.000000, 484.000000)
	registerVal14:setTopBottom(true, false, 487.000000, 653.000000)
	registerVal14.DLCFreeTitleAndText.Title:setText(Engine.Localize("MPUI_PARTY_DOUBLE_PROMO"))
	registerVal14.DLCFreeTitleAndText.Body:setText(Engine.Localize("MPUI_PARTY_DOUBLE_PROMO_DESC"))
	registerVal1:addElement(registerVal14)
	registerVal1.PartyDoublePromo = registerVal14
	local function __FUNC_624B_(arg1)
		registerVal8:setModel(arg1, arg0)
	end

	registerVal8:linkToElementModel(registerVal6, nil, false, __FUNC_624B_)
	local function __FUNC_629A_(arg1)
		registerVal9:setModel(arg1, arg0)
	end

	registerVal9:linkToElementModel(registerVal7, nil, false, __FUNC_629A_)
	local function __FUNC_62EA_(arg1)
		registerVal12:setModel(arg1, arg0)
	end

	registerVal12:linkToElementModel(registerVal7, nil, false, __FUNC_62EA_)
	registerVal15 = {}
	registerVal15.right = registerVal7
	registerVal6.navigation = registerVal15
	registerVal15 = {}
	registerVal15.left = registerVal6
	registerVal7.navigation = registerVal15
	registerVal15 = {}
	registerVal16 = {}
	local function __FUNC_633A_()
		registerVal1:setupElementClipCounter(5.000000)
		registerVal7:completeAnimation()
		registerVal1.playlistList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.categoryInfo:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.playlistInfo:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal1.PlaylistDLC1CRM:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.PlaylistDLC1CRMContextual:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
	end

	registerVal16.DefaultClip = __FUNC_633A_
	registerVal15.DefaultState = registerVal16
	registerVal16 = {}
	local function __FUNC_65B9_()
		registerVal1:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal1.LeftPanel:setLeftRight(true, true, -5.500000, 5.500000)
		registerVal1.LeftPanel:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal7:completeAnimation()
		registerVal1.playlistList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.categoryInfo:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.playlistInfo:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal1.PlaylistDLC1CRM:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.PlaylistDLC1CRMContextual:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal12, {})
	end

	registerVal16.DefaultClip = __FUNC_65B9_
	registerVal15.SelectingPlaylist = registerVal16
	registerVal1.clipsPerState = registerVal15
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_68FA_(arg1, arg2)
		MakeElementNotFocusable(registerVal1, "playlistList", arg0)
		SetElementStateByElementName(registerVal1, "frame", arg0, "Update")
		local registerVal5 = {}
		registerVal5.elementName = "FEMenuLeftGraphics"
		registerVal5.clipName = "Intro"
		PlayClipOnElement(registerVal1, registerVal5, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_68FA_)
	local function __FUNC_6A96_(arg0, arg1, arg2, arg3)
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
			PlaySoundSetSound(registerVal1, "toggle")
			return true
		end
	end

	local function __FUNC_6CEE_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_6A96_, __FUNC_6CEE_, false)
	local function __FUNC_6DE9_(arg0, arg1, arg2, arg3)
		local registerVal4 = ShouldSquareOpenStore(arg1, arg2, "PlaylistDLC1CRMContextual")
		registerVal4 = IsPC()
		if registerVal4 and registerVal4 then
			OpenSteamStore(registerVal1, arg0, arg2, "", arg1)
			return true
		else
			registerVal4 = ShouldSquareOpenStore(arg1, arg2, "PlaylistDLC1CRMContextual")
			if registerVal4 then
				OpenDLCStore(registerVal1, arg0, arg2, "MPPublicGamePlaylistSelect", arg1)
				return true
			end
		end
	end

	local function __FUNC_6F54_(arg0, arg1, arg2)
		local registerVal3 = ShouldSquareOpenStore(arg1, arg2, "PlaylistDLC1CRMContextual")
		registerVal3 = IsPC()
		if registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "")
			return false
		else
			registerVal3 = ShouldSquareOpenStore(arg1, arg2, "PlaylistDLC1CRMContextual")
			if registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "")
				return false
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "P", __FUNC_6DE9_, __FUNC_6F54_, false)
	registerVal5:setModel(registerVal1.buttonModel, arg0)
	registerVal6.id = "playlistCategoriesList"
	registerVal7.id = "playlistList"
	registerVal17 = {}
	registerVal17.name = "menu_loaded"
	registerVal17.controller = arg0
	registerVal1:processEvent(registerVal17)
	registerVal17 = {}
	registerVal17.name = "update_state"
	registerVal17.menu = registerVal1
	registerVal1:processEvent(registerVal17)
	registerVal15 = registerVal1:restoreState()
	if not registerVal15 then
		registerVal17 = {}
		registerVal17.name = "gain_focus"
		registerVal17.controller = arg0
		registerVal1.playlistCategoriesList:processEvent(registerVal17)
	end
	local function __FUNC_7138_(arg1)
		arg1.LeftPanel:close()
		arg1.FadeForStreamer:close()
		arg1.frame:close()
		arg1.playlistCategoriesList:close()
		arg1.playlistList:close()
		arg1.categoryInfo:close()
		arg1.playlistInfo:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.PlaylistDLC1CRM:close()
		arg1.PlaylistDLC1CRMContextual:close()
		arg1.DLCFreeweekend:close()
		arg1.PartyDoublePromo:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "PlaylistSelection.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_7138_)
	if __FUNC_A48_ then
		__FUNC_A48_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.PlaylistSelection = __FUNC_256A_
