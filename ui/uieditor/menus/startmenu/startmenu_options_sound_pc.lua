-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.StartMenu.StartMenu_lineGraphics_Options")
require("ui.uieditor.widgets.PC.StartMenu.Dropdown.OptionDropdown")
require("ui.uieditor.widgets.PC.Utility.OptionInfoWidget")
require("ui.uieditor.widgets.PC.StartMenu.Dropdown.OptionDropdown")
require("ui.uieditor.widgets.StartMenu.StartMenu_Options_Button")
require("ui.uieditor.widgets.StartMenu.StartMenu_Options_SliderBar")
local function __FUNC_5DB_()
	local registerVal0 = Dvar.loc_language:get()
	if registerVal0 ~= CoD.LANGUAGE_ENGLISH and registerVal0 ~= CoD.LANGUAGE_ENGLISHARABIC and registerVal0 ~= CoD.LANGUAGE_POLISH and registerVal0 ~= CoD.LANGUAGE_ARABIC and registerVal0 ~= CoD.LANGUAGE_TRADITIONALCHINESE and registerVal0 ~= CoD.LANGUAGE_SIMPLIFIEDCHINESE and registerVal0 == CoD.LANGUAGE_JAPANESE or registerVal0 == CoD.LANGUAGE_FULLJAPANESE then
		return true
	end
	return false
end

local function __FUNC_819_(arg0)
	local registerVal4 = {}
	local registerVal5 = {}
	registerVal5.value = CoD.AudioSettings.TREYARCH_MIX
	registerVal5.valueDisplay = "MENU_TREYARCH_MIX"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.value = CoD.AudioSettings.BASS_BOOST
	registerVal5.valueDisplay = "MENU_BASS_BOOST"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.value = CoD.AudioSettings.HIGH_BOOST
	registerVal5.valueDisplay = "MENU_HIGH_BOOST"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.value = CoD.AudioSettings.SUPERCRUNCH
	registerVal5.valueDisplay = "MENU_SUPERCRUNCH"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.value = CoD.AudioSettings.HEADPHONES
	registerVal5.valueDisplay = "MENU_HEADPHONES"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	return {}
end

local registerVal2 = DataSourceHelpers.ListSetup("PC.OptionPCSoundPresets", __FUNC_819_, true)
DataSources.OptionPCSoundPresets = registerVal2
local function __FUNC_B13_(arg0)
	local registerVal4 = {}
	local registerVal5 = {}
	registerVal5.value = 1.000000
	registerVal5.valueDisplay = "MENU_ENABLED"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.value = 0.000000
	registerVal5.valueDisplay = "MENU_DISABLED"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	return {}
end

registerVal2 = DataSourceHelpers.ListSetup("PC.OptionPCMPDialog", __FUNC_B13_, true)
DataSources.OptionPCMPDialog = registerVal2
local function __FUNC_C27_(arg0)
	local registerVal4 = {}
	local registerVal5 = {}
	registerVal5.value = Enum.MultiplayerMusicTracks.MP_MUSIC_TRACKS_NONE
	local registerVal6 = Engine.Localize("MENU_NONE")
	registerVal5.valueDisplay = registerVal6
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.value = Enum.MultiplayerMusicTracks.MP_MUSIC_TRACKS_DEFAULT
	registerVal6 = Engine.Localize("MENU_DEFAULT")
	registerVal5.valueDisplay = registerVal6
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.value = Enum.MultiplayerMusicTracks.MP_MUSIC_TRACKS_RANDOM
	registerVal6 = Engine.Localize("MENU_RANDOM")
	registerVal5.valueDisplay = registerVal6
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	local registerVal2 = CoD.getStatsMilestoneTable(4.000000, Enum.eModes.MODE_CAMPAIGN)
	local registerVal3 = Engine.TableFindRows(registerVal2, 3.000000, "MP")
	if not registerVal3 then
	end
	registerVal4, registerVal5, registerVal6 = ipairs({})
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		local registerVal9 = Engine.TableLookupGetColumnValueForRow(registerVal2, value8, 0.000000)
		local registerVal10 = Engine.TableLookupGetColumnValueForRow(registerVal2, value8, 1.000000)
		local registerVal11 = Engine.TableLookupGetColumnValueForRow(registerVal2, value8, 2.000000)
		if registerVal10 == "" and registerVal11 ~= "" then
			local registerVal12 = Engine.TableLookup(nil, CoD.musicPlayerTable, 1.000000, registerVal11, 2.000000)
			local registerVal15 = {}
			local registerVal16 = {}
			registerVal16.value = (Enum.MultiplayerMusicTracks.MP_MUSIC_TRACKS_FIRST_TRACK + registerVal9)
			registerVal16.valueDisplay = registerVal12
			registerVal16.alias = registerVal11
			registerVal15.models = registerVal16
			table.insert({}, registerVal15)
		end
	end
	return {}
end

registerVal2 = DataSourceHelpers.ListSetup("PC.OptionPCMPMusic", __FUNC_C27_, true)
DataSources.OptionPCMPMusic = registerVal2
local function __FUNC_115B_(arg0)
	local registerVal4 = {}
	local registerVal5 = {}
	registerVal5.value = 0.000000
	registerVal5.valueDisplay = "MENU_OFF"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.value = 1.000000
	registerVal5.valueDisplay = "MENU_ON"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	return {}
end

registerVal2 = DataSourceHelpers.ListSetup("PC.OptionPCSoundSubtitles", __FUNC_115B_, true)
DataSources.OptionPCSoundSubtitles = registerVal2
local function __FUNC_1265_(arg0)
	local registerVal4 = {}
	local registerVal5 = {}
	registerVal5.label = "MENU_MASTER_VOLUME"
	registerVal5.description = "MENU_MASTER_VOLUME_DESC"
	registerVal5.profileVarName = "snd_menu_master"
	registerVal5.profileType = "user"
	registerVal5.lowValue = 0.000000
	registerVal5.highValue = 1.000000
	registerVal5.widgetType = "slider"
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.OptionsGenericSliderProperties
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.label = "MENU_VOICE_VOLUME"
	registerVal5.description = "MENU_VOICE_VOLUME_DESC"
	registerVal5.profileVarName = "snd_menu_voice"
	registerVal5.profileType = "user"
	registerVal5.lowValue = 0.000000
	registerVal5.highValue = 1.000000
	registerVal5.widgetType = "slider"
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.OptionsGenericSliderProperties
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.label = "MENU_MUSIC_VOLUME"
	registerVal5.description = "MENU_MUSIC_VOLUME_DESC"
	registerVal5.profileVarName = "snd_menu_music"
	registerVal5.profileType = "user"
	registerVal5.lowValue = 0.000000
	registerVal5.highValue = 1.000000
	registerVal5.widgetType = "slider"
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.OptionsGenericSliderProperties
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.label = "MENU_SFX_VOLUME"
	registerVal5.description = "MENU_SFX_VOLUME_DESC"
	registerVal5.profileVarName = "snd_menu_sfx"
	registerVal5.profileType = "user"
	registerVal5.lowValue = 0.000000
	registerVal5.highValue = 1.000000
	registerVal5.widgetType = "slider"
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.OptionsGenericSliderProperties
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.label = "MENU_CINEMATICS_VOLUME"
	registerVal5.description = "MENU_CINEMATICS_VOLUME_DESC"
	registerVal5.profileVarName = "snd_menu_cinematic"
	registerVal5.profileType = "user"
	registerVal5.lowValue = 0.000000
	registerVal5.highValue = 1.000000
	registerVal5.widgetType = "slider"
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.OptionsGenericSliderProperties
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.label = "MENU_AUDIO_PRESETS"
	registerVal5.description = "MENU_AUDIO_PRESETS_DESC"
	registerVal5.profileVarName = "snd_menu_presets"
	registerVal5.profileType = "user"
	registerVal5.datasource = "OptionPCSoundPresets"
	registerVal5.widgetType = "dropdown"
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.OptionsGenericDropdownProperties
	table.insert({}, registerVal4)
	local registerVal2 = IsInGame()
	if not registerVal2 then
		registerVal4 = {}
		registerVal5 = {}
		registerVal5.label = "MENU_SYSTEM_TEST"
		registerVal5.description = "MENU_SYSTEM_TEST_DESC"
		registerVal5.profileType = "user"
		registerVal5.widgetType = "button"
		local function __FUNC_1BD1_(arg0, arg1)
			Engine.PlaySound("tst_test_system")
		end

		registerVal5.onPressFn = __FUNC_1BD1_
		registerVal4.models = registerVal5
		table.insert({}, registerVal4)
	end
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.label = "MENU_MP_DIALOG"
	registerVal5.description = "MENU_MP_DIALOG_DESC"
	registerVal5.profileVarName = "snd_multiplayer_character_voice"
	registerVal5.profileType = "user"
	registerVal5.datasource = "OptionPCMPDialog"
	registerVal5.widgetType = "dropdown"
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.OptionsGenericDropdownProperties
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.label = "MENU_MP_MUSIC"
	registerVal5.description = "MENU_MP_MUSIC_DESC"
	registerVal5.profileVarName = "snd_multiplayer_music_track"
	registerVal5.profileType = "user"
	registerVal5.datasource = "OptionPCMPMusic"
	registerVal5.widgetType = "dropdown"
	local function __FUNC_1C50_()
		return IsInGame()
	end

	registerVal5.disabledFunction = __FUNC_1C50_
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.OptionsGenericDropdownProperties
	table.insert({}, registerVal4)
	registerVal2 = __FUNC_5DB_()
	if registerVal2 then
		registerVal4 = {}
		registerVal5 = {}
		registerVal5.label = "MENU_SUBTITLES"
		registerVal5.description = "MENU_SUBTITLES_DESC"
		registerVal5.profileVarName = "cg_subtitles"
		registerVal5.profileType = "user"
		registerVal5.datasource = "OptionPCSoundSubtitles"
		registerVal5.widgetType = "dropdown"
		registerVal4.models = registerVal5
		registerVal4.properties = CoD.PCUtil.OptionsGenericDropdownProperties
		table.insert({}, registerVal4)
	end
	return {}
end

registerVal2 = DataSourceHelpers.ListSetup("PC.OptionSoundSound", __FUNC_1265_, true)
DataSources.OptionSoundSound = registerVal2
function DataSources.OptionSoundSound.getWidgetTypeForItem(arg0, arg1, arg2)
	if arg1 then
		local registerVal3 = Engine.GetModelValue(Engine.GetModel(arg1, "widgetType"))
		if registerVal3 == "dropdown" then
			return CoD.OptionDropdown
		else
			if registerVal3 == "slider" then
				return CoD.StartMenu_Options_SliderBar
			else
				if registerVal3 == "button" then
					return CoD.StartMenu_Options_Button
				end
			end
		end
	end
	return nil
end

local function __FUNC_1E4B_(arg0, arg1)
	Engine.SyncHardwareProfileWithDvars()
end

local function __FUNC_1EBE_(arg0, arg1)
	local registerVal4 = {}
	registerVal4.name = "options_refresh"
	registerVal4.controller = arg1
	arg0:dispatchEventToChildren(registerVal4)
	arg0.graphicsList.m_managedItemPriority = true
	local function __FUNC_2051_(arg0, arg1)
		for index2=1.000000, arg0.graphicsList.requestedRowCount, 1.000000 do
			local registerVal6 = arg0.graphicsList:getItemAtPosition(index2, 1.000000)
			if arg1.inUse then
				if registerVal6 ~= arg1.widget then
					registerVal6.m_inputDisabled = true
				else
					registerVal6.m_inputDisabled = nil
				end
			end
		end
	end

	arg0:registerEventHandler("dropdown_triggered", __FUNC_2051_)
	local function __FUNC_2180_()
		Engine.ApplyHardwareProfileSettings()
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "close", __FUNC_2180_)
end

local function __FUNC_21F6_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("StartMenu_Options_Sound_PC")
	if __FUNC_1E4B_ then
		__FUNC_1E4B_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "StartMenu_Options_Sound_PC.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3:setRGB(0.060000, 0.060000, 0.060000)
	registerVal1:addElement(registerVal3)
	registerVal1.Background = registerVal3
	local registerVal4 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4.titleLabel:setText(Engine.Localize("MENU_AUDIO_CAPS"))
	registerVal4.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_AUDIO_CAPS"))
	registerVal4.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_option"))
	registerVal1:addElement(registerVal4)
	registerVal1.MenuFrame = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -11.000000, 1293.000000)
	registerVal5:setTopBottom(true, false, 80.000000, 88.000000)
	registerVal5:setRGB(0.900000, 0.900000, 0.900000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal5)
	registerVal1.CategoryListLine = registerVal5
	local registerVal6 = CoD.StartMenu_lineGraphics_Options.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 1.000000, 69.000000)
	registerVal6:setTopBottom(true, false, -13.000000, 657.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.StartMenulineGraphicsOptions0 = registerVal6
	local registerVal7 = LUI.UIList.new(registerVal1, arg0, 0.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal7:makeFocusable()
	registerVal7:setLeftRight(true, false, 64.000000, 564.000000)
	registerVal7:setTopBottom(true, false, 132.000000, 608.000000)
	registerVal7:setDataSource("OptionSoundSound")
	registerVal7:setWidgetType(CoD.OptionDropdown)
	registerVal7:setVerticalCount(14.000000)
	registerVal7:setSpacing(0.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.graphicsList = registerVal7
	local registerVal8 = CoD.OptionInfoWidget.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 640.000000, 1040.000000)
	registerVal8:setTopBottom(true, false, 132.000000, 432.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.optionInfo = registerVal8
	local function __FUNC_2FB7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.description:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal7, "description", true, __FUNC_2FB7_)
	local function __FUNC_308F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.title.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal7, "label", true, __FUNC_308F_)
	local function __FUNC_317F_(arg0, arg1)
		ShowHeaderIconOnly(registerVal1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_317F_)
	local function __FUNC_3211_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		UpdateGamerprofile(registerVal1, arg0, arg2)
		StopSoundAlias("tst_test_system")
		return true
	end

	local function __FUNC_32D1_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_3211_, __FUNC_32D1_, false)
	local function __FUNC_33CD_(arg0, arg1, arg2, arg3)
		CloseStartMenu(arg1, arg2)
		return true
	end

	local function __FUNC_3428_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_DISMISS_MENU")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_START, "M", __FUNC_33CD_, __FUNC_3428_, false)
	local function __FUNC_3526_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_3558_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_3526_, __FUNC_3558_, false)
	registerVal4:setModel(registerVal1.buttonModel, arg0)
	registerVal7.id = "graphicsList"
	local registerVal11 = {}
	registerVal11.name = "menu_loaded"
	registerVal11.controller = arg0
	registerVal1:processEvent(registerVal11)
	registerVal11 = {}
	registerVal11.name = "update_state"
	registerVal11.menu = registerVal1
	registerVal1:processEvent(registerVal11)
	local registerVal9 = registerVal1:restoreState()
	if not registerVal9 then
		registerVal11 = {}
		registerVal11.name = "gain_focus"
		registerVal11.controller = arg0
		registerVal1.graphicsList:processEvent(registerVal11)
	end
	local function __FUNC_3656_(arg1)
		arg1.MenuFrame:close()
		arg1.StartMenulineGraphicsOptions0:close()
		arg1.graphicsList:close()
		arg1.optionInfo:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "StartMenu_Options_Sound_PC.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_3656_)
	if __FUNC_1EBE_ then
		__FUNC_1EBE_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.StartMenu_Options_Sound_PC = __FUNC_21F6_
