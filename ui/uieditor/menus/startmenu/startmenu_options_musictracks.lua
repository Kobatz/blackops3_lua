-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.menus.StartMenu.StartMenu_Options_MusicTracks_Options")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.CAC.cac_ItemTitleGlow")
require("ui.uieditor.widgets.StartMenu.StartMenu_MusicTracks_CheckBoxOption")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.MissionRecordVault.MissionRecordVault_lines")
require("ui.uieditor.widgets.StartMenu.StartMenu_Options_Slider")
require("ui.uieditor.widgets.StartMenu.StartMenu_MusicTracks_TrackListInfo")
local function __FUNC_842_(arg0, arg1)
	DataSources.MusicTracksBase.clearTotals(arg1)
end

local function __FUNC_8D3_(arg0, arg1)
	local registerVal2 = IsModelValueEqualToEnum(arg1, "profile.snd_frontendTracksState", Enum.FrontendMusicTrackStates.FRONTEND_MUSIC_STATE_ON)
	if registerVal2 then
		local registerVal4 = {}
		registerVal4.name = "gain_focus"
		registerVal4.controller = arg1
		arg0.ButtonList:processEvent(registerVal4)
	else
		registerVal4 = {}
		registerVal4.name = "gain_focus"
		registerVal4.controller = arg1
		arg0.globalOnOffSwitch:processEvent(registerVal4)
	end
end

local registerVal3 = {}
local function __FUNC_A8A_(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.GetModel(registerVal2, "musicTracksBase")
	if not registerVal1 then
		local registerVal3 = Engine.GetGlobalModel()
		registerVal2 = Engine.CreateModel(registerVal3, "musicTracksBase")
		registerVal3 = Engine.CreateModel(registerVal2, "selectedTrackCount")
		Engine.SetModelValue(registerVal3, 0.000000)
		registerVal3 = Engine.CreateModel(registerVal2, "currentFilterCount")
		Engine.SetModelValue(registerVal3, 0.000000)
		registerVal3 = Engine.CreateModel(registerVal2, "currentFilterSelected")
		Engine.SetModelValue(registerVal3, 0.000000)
		registerVal3 = Engine.CreateModel(registerVal2, "currentFilter")
		Engine.SetModelValue(registerVal3, DataSources.MusicTracksBase.allFilter)
		Engine.CreateModel(registerVal2, "settingDesc")
		DataSources.MusicTracksBase.updateSettingDescModel(arg0)
	end
	return registerVal2
end

registerVal3.getModel = __FUNC_A8A_
registerVal3.allFilter = "MENU_ALL"
registerVal3.completeFiltersList = {}
local function __FUNC_DAC_(arg0)
	local registerVal2 = DataSources.MusicTracksBase.getModel(arg0)
	return Engine.GetModel(registerVal2, "selectedTrackCount")
end

registerVal3.getTotalSelectedModel = __FUNC_DAC_
local function __FUNC_E96_(arg0)
	local registerVal2 = DataSources.MusicTracksBase.getModel(arg0)
	return Engine.GetModel(registerVal2, "currentFilterSelected")
end

registerVal3.getCurrentFilterTotalSelectedModel = __FUNC_E96_
local function __FUNC_F81_(arg0)
	local registerVal2 = DataSources.MusicTracksBase.getModel(arg0)
	return Engine.GetModel(registerVal2, "currentFilterCount")
end

registerVal3.getCurrentFilterTotalCountModel = __FUNC_F81_
local function __FUNC_106A_(arg0)
	local registerVal2 = DataSources.MusicTracksBase.getModel(arg0)
	return Engine.GetModel(registerVal2, "currentFilter")
end

registerVal3.getCurrentFilterModel = __FUNC_106A_
local function __FUNC_114D_(arg0)
	local registerVal2 = DataSources.MusicTracksBase.getModel(arg0)
	return Engine.GetModel(registerVal2, "settingDesc")
end

registerVal3.getSettingDescModel = __FUNC_114D_
local function __FUNC_122F_(arg0, arg1)
	if arg0 or not 1.000000 then
	end
	local registerVal3 = DataSources.MusicTracksBase.getCurrentFilterTotalCountModel(arg0)
	if registerVal3 then
		local registerVal6 = Engine.GetModelValue(registerVal3)
		Engine.SetModelValue(registerVal3, (registerVal6 + -1.000000))
	end
end

registerVal3.updateFilterCount = __FUNC_122F_
local function __FUNC_136F_(arg0, arg1)
	if arg0 or not 1.000000 then
	end
	local registerVal3 = DataSources.MusicTracksBase.getCurrentFilterTotalSelectedModel(arg0)
	if registerVal3 then
		local registerVal6 = Engine.GetModelValue(registerVal3)
		Engine.SetModelValue(registerVal3, (registerVal6 + -1.000000))
	end
end

registerVal3.updateFilterTotalSelected = __FUNC_136F_
local function __FUNC_14B2_(arg0, arg1)
	if arg0 or not 1.000000 then
	end
	local registerVal3 = DataSources.MusicTracksBase.getTotalSelectedModel(arg0)
	if registerVal3 then
		local registerVal6 = Engine.GetModelValue(registerVal3)
		Engine.SetModelValue(registerVal3, (registerVal6 + -1.000000))
	end
end

registerVal3.updateTotalSelected = __FUNC_14B2_
local function __FUNC_15E9_(arg0)
	local registerVal1 = DataSources.MusicTracksBase.getSettingDescModel(arg0)
	local registerVal2 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_COMMON_SETTINGS)
	if registerVal1 and registerVal2 then
		local registerVal3 = registerVal2.snd_frontendTracksState:get()
		if registerVal3 == Enum.FrontendMusicTrackStates.FRONTEND_MUSIC_STATE_DEFAULT then
		else
			if registerVal3 == Enum.FrontendMusicTrackStates.FRONTEND_MUSIC_STATE_OFF then
			end
		end
		Engine.SetModelValue(registerVal1, "MENU_MENU_MUSIC_OFF_DESC")
	end
end

registerVal3.updateSettingDescModel = __FUNC_15E9_
local function __FUNC_18C2_(arg0)
	local registerVal1 = DataSources.MusicTracksBase.getTotalSelectedModel(arg0)
	if registerVal1 then
		Engine.SetModelValue(registerVal1, 0.000000)
	end
	local registerVal2 = DataSources.MusicTracksBase.getCurrentFilterTotalSelectedModel(arg0)
	if registerVal2 then
		Engine.SetModelValue(registerVal2, 0.000000)
	end
	local registerVal3 = DataSources.MusicTracksBase.getCurrentFilterTotalCountModel(arg0)
	if registerVal3 then
		Engine.SetModelValue(registerVal3, 0.000000)
	end
end

registerVal3.clearTotals = __FUNC_18C2_
local function __FUNC_1A92_(arg0)
	local registerVal1 = DataSources.MusicTracksBase.getCurrentFilterModel(arg0)
	if registerVal1 then
		Engine.SetModelValue(registerVal1, DataSources.MusicTracksBase.allFilter)
	end
end

registerVal3.resetFilter = __FUNC_1A92_
DataSources.MusicTracksBase = registerVal3
local function __FUNC_1BA3_(arg0)
	DataSources.MusicTracksBase.completeFiltersList[DataSources.MusicTracksBase.allFilter] = true
	local registerVal2 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_COMMON_SETTINGS)
	if registerVal2 then
		local registerVal3 = Engine.GetTableRowCount(CoD.musicPlayerTable)
		local registerVal4 = Engine.GetModelValue(DataSources.MusicTracksBase.getCurrentFilterModel(arg0))
		for index5=0.000000, (registerVal3 - 1.000000), 1.000000 do
			local registerVal9 = Engine.TableLookup(nil, CoD.musicPlayerTable, Enum.MusicPlayerTableColumn.MUSIC_PLAYER_COLUMN_INDEX, index5, Enum.MusicPlayerTableColumn.MUSIC_PLAYER_COLUMN_ALIAS)
			local registerVal10 = Engine.TableLookup(nil, CoD.musicPlayerTable, Enum.MusicPlayerTableColumn.MUSIC_PLAYER_COLUMN_INDEX, index5, Enum.MusicPlayerTableColumn.MUSIC_PLAYER_COLUMN_TITLE)
			local registerVal11 = Engine.TableLookup(nil, CoD.musicPlayerTable, Enum.MusicPlayerTableColumn.MUSIC_PLAYER_COLUMN_INDEX, index5, Enum.MusicPlayerTableColumn.MUSIC_PLAYER_COLUMN_ARTIST)
			local registerVal12 = Engine.TableLookup(nil, CoD.musicPlayerTable, Enum.MusicPlayerTableColumn.MUSIC_PLAYER_COLUMN_INDEX, index5, Enum.MusicPlayerTableColumn.MUSIC_PLAYER_COLUMN_ARTIST_2)
			local registerVal13 = Engine.TableLookup(nil, CoD.musicPlayerTable, Enum.MusicPlayerTableColumn.MUSIC_PLAYER_COLUMN_INDEX, index5, Enum.MusicPlayerTableColumn.MUSIC_PLAYER_COLUMN_FILTERS)
			local registerVal14 = registerVal2.snd_playMPFrontendMusicTrack[index5]:get()
			if registerVal14 ~= 1.000000 then
			end
			if registerVal12 and registerVal12 ~= "" then
			end
			if true then
				DataSources.MusicTracksBase.updateTotalSelected(arg0, true)
			end
			local registerVal15 = LUI.splitString(registerVal13, ";")
			if registerVal4 ~= DataSources.MusicTracksBase.allFilter then
			end
			for index17=1.000000, #Enum.MusicPlayerTableColumn.MUSIC_PLAYER_COLUMN_FILTERS, 1.000000 do
				local registerVal22 = ToUpper(registerVal15[index17])
				registerVal15[index17] = ("MENU_" .. registerVal22)
				DataSources.MusicTracksBase.completeFiltersList[registerVal15[index17]] = true
				if not true and registerVal4 == registerVal15[index17] then
				end
			end
			if true then
				local registerVal17 = {}
				local registerVal18 = {}
				registerVal18.alias = registerVal9
				registerVal18.trackName = registerVal10
				registerVal18.artist = (registerVal11 .. ";" .. registerVal12)
				local registerVal19 = Engine.GetSoundPlaybackTime(registerVal9)
				registerVal18.trackLength = registerVal19
				registerVal18.trackIndex = index5
				registerVal18.selected = true
				registerVal17.models = registerVal18
				registerVal17.properties = {}
				if true then
					DataSources.MusicTracksBase.updateFilterTotalSelected(arg0, true)
				end
				DataSources.MusicTracksBase.updateFilterCount(arg0, true)
				table.insert({}, registerVal17)
			end
		end
	end
	return {}
end

local function __FUNC_24CB_(arg0, arg1, arg2)
	local registerVal3 = DataSources.MusicTracksBase.getCurrentFilterModel(arg0)
	if not arg1.filterSubscription and registerVal3 then
		local function __FUNC_25D7_(arg2)
			DataSources.MusicTracksBase.clearTotals(arg0)
			if arg1.activeWidget then
				StopMPMusicPreview(arg0, arg1.activeWidget)
			end
			arg1:updateDataSource()
		end

		local registerVal4 = arg1:subscribeToModel(registerVal3, __FUNC_25D7_, false)
		arg1.filterSubscription = registerVal4
	end
end

local registerVal5 = DataSourceHelpers.ListSetup("MusicPlayerTracks", __FUNC_1BA3_, true, nil, __FUNC_24CB_)
DataSources.MusicPlayerTracks = registerVal5
DataSources.MusicPlayerTracks.trackListDataSourceName = "MusicPlayerTracks"
local function __FUNC_26F3_(arg0)
	local registerVal2 = {}
	local registerVal3 = {}
	local registerVal4 = Engine.Localize("MENU_DEFAULT")
	registerVal3.name = registerVal4
	registerVal3.value = Enum.FrontendMusicTrackStates.FRONTEND_MUSIC_STATE_DEFAULT
	registerVal4 = {}
	local registerVal5 = Engine.Localize("MENU_ON")
	registerVal4.name = registerVal5
	registerVal4.value = Enum.FrontendMusicTrackStates.FRONTEND_MUSIC_STATE_ON
	registerVal5 = {}
	local registerVal6 = Engine.Localize("MENU_OFF")
	registerVal5.name = registerVal6
	registerVal5.value = Enum.FrontendMusicTrackStates.FRONTEND_MUSIC_STATE_OFF
	registerVal2 = {registerVal3, registerVal4, registerVal5}
	registerVal3 = {}
	registerVal4 = {}
	registerVal5 = Engine.Localize("MENU_MENU_MUSIC")
	registerVal4.name = registerVal5
	registerVal5 = Engine.Localize("")
	registerVal4.desc = registerVal5
	registerVal5 = RegisterMaterial("")
	registerVal4.image = registerVal5
	registerVal5 = CoD.OptionsUtility.CreateOptionDataSource(arg0, "MusicPlayerTrackGlobals_Enabled", registerVal2, "snd_frontendTracksState")
	registerVal4.optionsDatasource = registerVal5
	registerVal5 = CoD.OptionsUtility.GetProfileSelection(arg0, registerVal2, "snd_frontendTracksState")
	registerVal4.currentSelection = registerVal5
	registerVal3.models = registerVal4
	registerVal4 = {}
	registerVal4.disabled = false
	registerVal3.properties = registerVal4
	registerVal4 = {}
	registerVal4 = {registerVal3}
	return registerVal4
end

local registerVal6 = DataSourceHelpers.ListSetup("MusicPlayerTrackGlobals", __FUNC_26F3_, true)
DataSources.MusicPlayerTrackGlobals = registerVal6
local function __FUNC_2B40_(arg0)
	local registerVal2 = Engine.GetModelValue(DataSources.MusicTracksBase.getCurrentFilterModel(arg0))
	local registerVal3, registerVal4, registerVal5 = LUI.IterateTableBySortedKeys(DataSources.MusicTracksBase.completeFiltersList)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		local registerVal10 = {}
		local registerVal11 = {}
		registerVal11.text = index6
		registerVal10.models = registerVal11
		registerVal11 = {}
		registerVal11.action = UpdateMusicTrackFilters
		if index6 ~= registerVal2 then
		end
		registerVal11.selectIndex = true
		registerVal11.filter = index6
		registerVal10.properties = registerVal11
		table.insert({}, registerVal10)
	end
	return {}
end

local registerVal7 = DataSourceHelpers.ListSetup("MusicTrackOptions_Filters", __FUNC_2B40_, true)
DataSources.MusicTrackOptions_Filters = registerVal7
local function __FUNC_2D9F_(arg0)
	local registerVal4 = {}
	local registerVal5 = {}
	local registerVal6 = Engine.Localize("MENU_FILTER_TRACKS")
	registerVal5.name = registerVal6
	registerVal5.optionsDatasource = "MusicTrackOptions_Filters"
	registerVal4.models = registerVal5
	registerVal5 = {}
	registerVal5.disabled = false
	registerVal4.properties = registerVal5
	table.insert({}, registerVal4)
	return {}
end

local registerVal8 = DataSourceHelpers.ListSetup("MusicTracksOptions", __FUNC_2D9F_, true)
DataSources.MusicTracksOptions = registerVal8
local function __FUNC_2F01_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("StartMenu_Options_MusicTracks")
	if __FUNC_842_ then
		__FUNC_842_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "StartMenu_Options_MusicTracks.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -2.000000, -2.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.060000, 0.060000, 0.060000)
	registerVal1:addElement(registerVal3)
	registerVal1.Background = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_fe_cp_background"))
	registerVal1:addElement(registerVal4)
	registerVal1.BlackBG = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 64.000000, 591.000000)
	registerVal5:setTopBottom(true, false, 86.000000, 684.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.300000)
	registerVal1:addElement(registerVal5)
	registerVal1.BlackTint0 = registerVal5
	local registerVal6 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6.titleLabel:setText(Engine.Localize("MENU_MUSIC_TRACKS"))
	registerVal6.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_MUSIC_TRACKS"))
	registerVal6.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_option"))
	registerVal1:addElement(registerVal6)
	registerVal1.MenuFrame = registerVal6
	local registerVal7 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal7:setTopBottom(true, false, 86.000000, 703.250000)
	registerVal1:addElement(registerVal7)
	registerVal1.FEMenuLeftGraphics0 = registerVal7
	local registerVal8 = CoD.cac_ItemTitleGlow.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, true, 624.000000, -409.000000)
	registerVal8:setTopBottom(true, false, 256.130000, 286.880000)
	registerVal8:setRGB(0.890000, 0.890000, 0.890000)
	registerVal1:addElement(registerVal8)
	registerVal1.cacItemTitleGlow0 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, true, 591.000000, -359.000000)
	registerVal9:setTopBottom(false, false, -124.000000, -51.000000)
	registerVal9:setRGB(0.890000, 0.890000, 0.890000)
	registerVal9:setAlpha(0.250000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_cac_glow"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal9)
	registerVal1.Glow = registerVal9
	local registerVal10 = LUI.UIList.new(registerVal1, arg0, 10.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal10:makeFocusable()
	registerVal10:setLeftRight(true, false, 78.000000, 582.000000)
	registerVal10:setTopBottom(true, false, 204.500000, 614.500000)
	registerVal10:setWidgetType(CoD.StartMenu_MusicTracks_CheckBoxOption)
	registerVal10:setVerticalCount(12.000000)
	registerVal10:setSpacing(10.000000)
	registerVal10:setDataSource("MusicPlayerTracks")
	local function __FUNC_50B6_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "selected"
		CoD.Menu.UpdateButtonShownState(registerVal10, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal10:linkToElementModel(registerVal10, "selected", true, __FUNC_50B6_)
	local registerVal14 = Engine.GetGlobalModel()
	local registerVal13 = Engine.GetModel(registerVal14, "musicTracksBase.currentFilterSelected")
	local function __FUNC_5271_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "musicTracksBase.currentFilterSelected"
		CoD.Menu.UpdateButtonShownState(registerVal10, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal10:subscribeToModel(registerVal13, __FUNC_5271_)
	local function __FUNC_544B_(arg0, arg1)
		SetMenuState(registerVal1, "DefaultState")
		return nil
	end

	registerVal10:registerEventHandler("gain_list_focus", __FUNC_544B_)
	local function __FUNC_54B8_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		return registerVal3
	end

	registerVal10:registerEventHandler("gain_focus", __FUNC_54B8_)
	local function __FUNC_5719_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal10:registerEventHandler("lose_focus", __FUNC_5719_)
	local function __FUNC_57EA_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueTrue(arg0, arg2, "selected")
		if not registerVal4 then
			ToggleMusicTrackSelected(arg2, arg0, arg1)
			return true
		else
			ToggleMusicTrackSelected(arg2, arg0, arg1)
			return true
		end
	end

	local function __FUNC_58BE_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueTrue(arg0, arg2, "selected")
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		else
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_DESELECT")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal10, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_57EA_, __FUNC_58BE_, true)
	local function __FUNC_5A75_(arg0, arg1, arg2, arg3)
		PlayMusicTrackPreview(arg0, arg1)
		return true
	end

	local function __FUNC_5AD7_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "MENU_PLAY_SELECTED_TRACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal10, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "P", __FUNC_5A75_, __FUNC_5AD7_, false)
	local function __FUNC_5BE2_(arg0, arg1, arg2, arg3)
		local registerVal4 = ShouldDeselectAllTracks(arg2)
		if registerVal4 then
			DeselectAllMusicTracksInFilter(arg1, arg2, arg0)
			return true
		else
			SelectAllMusicTracksInFilter(arg1, arg2)
			return true
		end
	end

	local function __FUNC_5CC7_(arg0, arg1, arg2)
		local registerVal3 = ShouldDeselectAllTracks(arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_DESELECT_ALL")
			return true
		else
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_SELECT_ALL")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal10, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "A", __FUNC_5BE2_, __FUNC_5CC7_, false)
	registerVal1:addElement(registerVal10)
	registerVal1.ButtonList = registerVal10
	local registerVal11 = CoD.verticalCounter.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 227.500000, 427.500000)
	registerVal11:setTopBottom(true, false, 618.500000, 643.500000)
	local function __FUNC_5E6F_(arg0, arg1)
		SetAsListVerticalCounter(registerVal1, arg0, "ButtonList")
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal11:registerEventHandler("menu_loaded", __FUNC_5E6F_)
	registerVal1:addElement(registerVal11)
	registerVal1.verticalCounter0 = registerVal11
	local registerVal12 = CoD.MissionRecordVault_lines.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, true, 626.000000, -409.000000)
	registerVal12:setTopBottom(false, true, -485.500000, -481.440000)
	registerVal12:setAlpha(0.850000)
	registerVal1:addElement(registerVal12)
	registerVal1.MissionRecordVaultlines01 = registerVal12
	registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 569.000000, 571.000000)
	registerVal13:setTopBottom(true, false, 199.500000, 592.500000)
	registerVal13:setAlpha(0.000000)
	registerVal1:addElement(registerVal13)
	registerVal1.dividerLine = registerVal13
	registerVal14 = LUI.UITightText.new()
	registerVal14:setLeftRight(true, false, 629.000000, 829.000000)
	registerVal14:setTopBottom(true, false, 259.000000, 284.000000)
	registerVal14:setRGB(0.000000, 0.000000, 0.000000)
	registerVal14:setText(LocalizeToUpperString("MENU_INFO"))
	registerVal14:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal14:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal14:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal14:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal14)
	registerVal1.infoLabel = registerVal14
	local registerVal15 = LUI.UITightText.new()
	registerVal15:setLeftRight(true, false, 629.000000, 829.000000)
	registerVal15:setTopBottom(true, false, 293.130000, 318.130000)
	registerVal15:setRGB(1.000000, 0.380000, 0.000000)
	registerVal15:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal15)
	registerVal1.trackName = registerVal15
	local registerVal16 = LUI.UITightText.new()
	registerVal16:setLeftRight(true, false, 629.000000, 829.000000)
	registerVal16:setTopBottom(true, false, 317.130000, 339.130000)
	registerVal16:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal16)
	registerVal1.artist = registerVal16
	local registerVal17 = LUI.UITightText.new()
	registerVal17:setLeftRight(true, false, 629.000000, 829.000000)
	registerVal17:setTopBottom(true, false, 340.130000, 362.130000)
	registerVal17:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal17)
	registerVal1.trackLength = registerVal17
	local registerVal18 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal18:makeFocusable()
	registerVal18:setLeftRight(false, false, -603.000000, 67.000000)
	registerVal18:setTopBottom(true, false, 105.000000, 160.000000)
	registerVal18:setWidgetType(CoD.StartMenu_Options_Slider)
	registerVal18:setDataSource("MusicPlayerTrackGlobals")
	local function __FUNC_5F23_(arg0, arg1)
		SetMenuState(registerVal1, "HideInfo")
		return nil
	end

	registerVal18:registerEventHandler("gain_list_focus", __FUNC_5F23_)
	local function __FUNC_5F8C_(arg1, arg2)
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

	registerVal18:registerEventHandler("gain_focus", __FUNC_5F8C_)
	local function __FUNC_611F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal18:registerEventHandler("lose_focus", __FUNC_611F_)
	local function __FUNC_61EE_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_624F_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal18, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_61EE_, __FUNC_624F_, false)
	registerVal1:addElement(registerVal18)
	registerVal1.globalOnOffSwitch = registerVal18
	local registerVal19 = CoD.StartMenu_MusicTracks_TrackListInfo.new(registerVal1, arg0)
	registerVal19:setLeftRight(true, false, 78.000000, 579.000000)
	registerVal19:setTopBottom(true, false, 169.880000, 189.880000)
	registerVal19.selectedFilter:setRGB(0.490000, 0.490000, 0.490000)
	registerVal1:addElement(registerVal19)
	registerVal1.StartMenuMusicTracksTrackListInfo0 = registerVal19
	local registerVal20 = CoD.cac_ItemTitleGlow.new(registerVal1, arg0)
	registerVal20:setLeftRight(true, true, 624.000000, -409.000000)
	registerVal20:setTopBottom(true, false, 167.000000, 197.750000)
	registerVal20:setRGB(0.890000, 0.890000, 0.890000)
	registerVal1:addElement(registerVal20)
	registerVal1.playlistBacking = registerVal20
	local registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(true, true, 592.000000, -358.000000)
	registerVal21:setTopBottom(false, false, -213.130000, -140.130000)
	registerVal21:setRGB(0.890000, 0.890000, 0.890000)
	registerVal21:setAlpha(0.250000)
	registerVal21:setImage(RegisterImage("uie_t7_menu_cac_glow"))
	registerVal21:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal21)
	registerVal1.playlistGlow = registerVal21
	local registerVal22 = LUI.UITightText.new()
	registerVal22:setLeftRight(true, false, 629.000000, 680.000000)
	registerVal22:setTopBottom(true, false, 169.880000, 194.880000)
	registerVal22:setRGB(0.000000, 0.000000, 0.000000)
	registerVal22:setText(LocalizeToUpperString("MENU_PLAYLIST"))
	registerVal22:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal22:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal22:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal22:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal22:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal22)
	registerVal1.playListLabel = registerVal22
	local registerVal23 = LUI.UITightText.new()
	registerVal23:setLeftRight(true, false, 629.000000, 719.000000)
	registerVal23:setTopBottom(true, false, 202.750000, 222.750000)
	registerVal23:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	local function __FUNC_634A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal23:setText(LocalizePlural("MENU_MUSIC_TRACK_SELECTED", "MENU_MUSIC_TRACKS_SELECTED", registerVal1))
		end
	end

	registerVal23:subscribeToGlobalModel(arg0, "MusicTracksBase", "selectedTrackCount", __FUNC_634A_)
	registerVal1:addElement(registerVal23)
	registerVal1.tracksSelectedLabel = registerVal23
	local registerVal24 = LUI.UIText.new()
	registerVal24:setLeftRight(true, false, 629.000000, 999.000000)
	registerVal24:setTopBottom(true, false, 226.500000, 246.500000)
	registerVal24:setAlpha(0.000000)
	registerVal24:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal24:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal24:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_644B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal24:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal24:subscribeToGlobalModel(arg0, "MusicTracksBase", "settingDesc", __FUNC_644B_)
	registerVal1:addElement(registerVal24)
	registerVal1.settingDescText = registerVal24
	local function __FUNC_6502_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15:setText(LocalizeIntoString("MENU_TRACK_X", registerVal1))
		end
	end

	registerVal15:linkToElementModel(registerVal10, "trackName", true, __FUNC_6502_)
	local function __FUNC_65D2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16:setText(GetMusicTracksArtist(registerVal1))
		end
	end

	registerVal16:linkToElementModel(registerVal10, "artist", true, __FUNC_65D2_)
	local function __FUNC_668A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17:setText(LocalizeIntoString("MENU_LENGTH_X", NumberAsTimeNoMS(registerVal1)))
		end
	end

	registerVal17:linkToElementModel(registerVal10, "trackLength", true, __FUNC_668A_)
	local registerVal25 = {}
	registerVal25.up = registerVal18
	registerVal10.navigation = registerVal25
	registerVal25 = {}
	registerVal25.down = registerVal10
	registerVal18.navigation = registerVal25
	registerVal25 = {}
	local registerVal26 = {}
	local function __FUNC_677D_()
		registerVal1:setupElementClipCounter(8.000000)
		registerVal8:completeAnimation()
		registerVal1.cacItemTitleGlow0:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.Glow:setAlpha(0.250000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal12:completeAnimation()
		registerVal1.MissionRecordVaultlines01:setAlpha(0.850000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal1.infoLabel:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.trackName:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal1.artist:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal1.trackLength:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal17, {})
		registerVal24:completeAnimation()
		registerVal1.settingDescText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal24, {})
	end

	registerVal26.DefaultClip = __FUNC_677D_
	registerVal25.DefaultState = registerVal26
	registerVal26 = {}
	local function __FUNC_6B05_()
		registerVal1:setupElementClipCounter(8.000000)
		registerVal8:completeAnimation()
		registerVal1.cacItemTitleGlow0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.Glow:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal12:completeAnimation()
		registerVal1.MissionRecordVaultlines01:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal1.infoLabel:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.trackName:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal1.artist:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal1.trackLength:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal17, {})
		registerVal24:completeAnimation()
		registerVal1.settingDescText:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal24, {})
	end

	registerVal26.DefaultClip = __FUNC_6B05_
	registerVal25.HideInfo = registerVal26
	registerVal1.clipsPerState = registerVal25
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_6E83_(arg0, arg1)
		StopFrontendMusicForMusicTracks("")
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_6E83_)
	local function __FUNC_6F2C_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		UpdateGamerprofile(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_6FB0_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_6F2C_, __FUNC_6FB0_, false)
	local function __FUNC_70AD_(arg0, arg1, arg2, arg3)
		OpenPopup(registerVal1, "StartMenu_Options_MusicTracks_Options", arg2, "", "")
		return true
	end

	local function __FUNC_7148_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_OPTIONS")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_START, "M", __FUNC_70AD_, __FUNC_7148_, false)
	local function __FUNC_7241_(arg0)
		ResumeFrontendMusicForMusicTracks(registerVal1)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal1, "close", __FUNC_7241_)
	local function __FUNC_72A3_(arg1)
		local registerVal2 = IsModelValueEqualToEnum(arg0, "profile.snd_frontendTracksState", Enum.FrontendMusicTrackStates.FRONTEND_MUSIC_STATE_ON)
		if registerVal2 then
			MakeElementFocusable(registerVal1, "ButtonList", arg0)
			UpdateMusicTrackGlobalSetting(arg0)
		else
			MakeElementNotFocusable(registerVal1, "ButtonList", arg0)
			UpdateMusicTrackGlobalSetting(arg0)
		end
	end

	registerVal1:subscribeToGlobalModel(arg0, "PerController", "profile.snd_frontendTracksState", __FUNC_72A3_)
	registerVal6:setModel(registerVal1.buttonModel, arg0)
	registerVal10.id = "ButtonList"
	registerVal18.id = "globalOnOffSwitch"
	local registerVal27 = {}
	registerVal27.name = "menu_loaded"
	registerVal27.controller = arg0
	registerVal1:processEvent(registerVal27)
	registerVal27 = {}
	registerVal27.name = "update_state"
	registerVal27.menu = registerVal1
	registerVal1:processEvent(registerVal27)
	local function __FUNC_745D_(arg1)
		arg1.MenuFrame:close()
		arg1.FEMenuLeftGraphics0:close()
		arg1.cacItemTitleGlow0:close()
		arg1.ButtonList:close()
		arg1.verticalCounter0:close()
		arg1.MissionRecordVaultlines01:close()
		arg1.globalOnOffSwitch:close()
		arg1.StartMenuMusicTracksTrackListInfo0:close()
		arg1.playlistBacking:close()
		arg1.trackName:close()
		arg1.artist:close()
		arg1.trackLength:close()
		arg1.tracksSelectedLabel:close()
		arg1.settingDescText:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "StartMenu_Options_MusicTracks.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_745D_)
	if __FUNC_8D3_ then
		__FUNC_8D3_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.StartMenu_Options_MusicTracks = __FUNC_2F01_
