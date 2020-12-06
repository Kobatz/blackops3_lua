-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Options_Slider")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.StartMenu.StartMenu_Option_IconContainer")
require("ui.uieditor.widgets.StartMenu.StartMenu_OptionHighlight")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
CoD.AudioSettings = {}
CoD.AudioSettings.AdjustSFX = "uin_loadout_nav"
CoD.AudioSettings.CycleSFX = "cac_grid_nav"
CoD.AudioSettings.TREYARCH_MIX = 0.000000
CoD.AudioSettings.BASS_BOOST = 1.000000
CoD.AudioSettings.HIGH_BOOST = 2.000000
CoD.AudioSettings.SUPERCRUNCH = 3.000000
CoD.AudioSettings.HEADPHONES = 4.000000
function CoD.AudioSettings.CreateModels_Volume(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
	local registerVal7 = {}
	local registerVal8 = {}
	local registerVal9 = Engine.Localize("0")
	registerVal8.name = registerVal9
	registerVal8.value = 0.000000
	registerVal9 = {}
	local registerVal10 = Engine.Localize("1")
	registerVal9.name = registerVal10
	registerVal9.value = 0.100000
	registerVal10 = {}
	local registerVal11 = Engine.Localize("2")
	registerVal10.name = registerVal11
	registerVal10.value = 0.200000
	registerVal11 = {}
	local registerVal12 = Engine.Localize("3")
	registerVal11.name = registerVal12
	registerVal11.value = 0.300000
	registerVal12 = {}
	local registerVal13 = Engine.Localize("4")
	registerVal12.name = registerVal13
	registerVal12.value = 0.400000
	registerVal13 = {}
	local registerVal14 = Engine.Localize("5")
	registerVal13.name = registerVal14
	registerVal13.value = 0.500000
	registerVal14 = {}
	local registerVal15 = Engine.Localize("6")
	registerVal14.name = registerVal15
	registerVal14.value = 0.600000
	registerVal15 = {}
	local registerVal16 = Engine.Localize("7")
	registerVal15.name = registerVal16
	registerVal15.value = 0.700000
	registerVal16 = {}
	local registerVal17 = Engine.Localize("8")
	registerVal16.name = registerVal17
	registerVal16.value = 0.800000
	registerVal17 = {}
	local registerVal18 = Engine.Localize("9")
	registerVal17.name = registerVal18
	registerVal17.value = 0.900000
	registerVal18 = {}
	local registerVal19 = Engine.Localize("10")
	registerVal18.name = registerVal19
	registerVal18.value = 1.000000
	registerVal7 = {registerVal8, registerVal9, registerVal10, registerVal11, registerVal12, registerVal13, registerVal14, registerVal15, registerVal16, registerVal17, registerVal18}
	registerVal8 = {}
	registerVal9 = {}
	registerVal10 = Engine.Localize(arg1)
	registerVal9.name = registerVal10
	registerVal10 = Engine.Localize(arg2)
	registerVal9.desc = registerVal10
	registerVal10 = RegisterMaterial(arg3)
	registerVal9.image = registerVal10
	registerVal10 = CoD.OptionsUtility.CreateOptionDataSource(arg0, ("AudioOptions_Volume_" .. arg4), registerVal7, arg5)
	registerVal9.optionsDatasource = registerVal10
	registerVal10 = CoD.OptionsUtility.GetProfileSelection(arg0, registerVal7, arg5)
	registerVal9.currentSelection = registerVal10
	registerVal8.models = registerVal9
	registerVal9 = {}
	registerVal9.disabled = arg6
	registerVal8.properties = registerVal9
	return registerVal8
end

local function __FUNC_AAA_(arg0)
	local registerVal2 = {}
	local registerVal3 = {}
	local registerVal4 = Engine.Localize("MENU_TREYARCH_MIX")
	registerVal3.name = registerVal4
	registerVal4 = Engine.Localize("MENU_TREYARCH_MIX_DESC")
	registerVal3.desc = registerVal4
	registerVal3.value = CoD.AudioSettings.TREYARCH_MIX
	registerVal4 = {}
	local registerVal5 = Engine.Localize("MENU_BASS_BOOST")
	registerVal4.name = registerVal5
	registerVal5 = Engine.Localize("MENU_BASS_BOOST_DESC")
	registerVal4.desc = registerVal5
	registerVal4.value = CoD.AudioSettings.BASS_BOOST
	registerVal5 = {}
	local registerVal6 = Engine.Localize("MENU_HIGH_BOOST")
	registerVal5.name = registerVal6
	registerVal6 = Engine.Localize("MENU_HIGH_BOOST_DESC")
	registerVal5.desc = registerVal6
	registerVal5.value = CoD.AudioSettings.HIGH_BOOST
	registerVal6 = {}
	local registerVal7 = Engine.Localize("MENU_SUPERCRUNCH")
	registerVal6.name = registerVal7
	registerVal7 = Engine.Localize("MENU_SUPERCRUNCH_DESC")
	registerVal6.desc = registerVal7
	registerVal6.value = CoD.AudioSettings.SUPERCRUNCH
	registerVal7 = {}
	local registerVal8 = Engine.Localize("MENU_HEADPHONES")
	registerVal7.name = registerVal8
	registerVal8 = Engine.Localize("MENU_HEADPHONES_DESC")
	registerVal7.desc = registerVal8
	registerVal7.value = CoD.AudioSettings.HEADPHONES
	registerVal2 = {registerVal3, registerVal4, registerVal5, registerVal6, registerVal7}
	registerVal3 = {}
	registerVal4 = {}
	registerVal5 = Engine.Localize("MENU_AUDIO_PRESETS")
	registerVal4.name = registerVal5
	registerVal5 = Engine.Localize("MENU_AUDIO_PRESETS_DESC")
	registerVal4.desc = registerVal5
	registerVal5 = RegisterMaterial("")
	registerVal4.image = registerVal5
	registerVal5 = CoD.OptionsUtility.CreateOptionDataSource(arg0, "AudioOptions_Presets", registerVal2, "snd_menu_presets")
	registerVal4.optionsDatasource = registerVal5
	registerVal5 = CoD.OptionsUtility.GetProfileSelection(arg0, registerVal2, "snd_menu_presets")
	registerVal4.currentSelection = registerVal5
	registerVal3.models = registerVal4
	registerVal3.properties = {}
	return registerVal3
end

local function __FUNC_10B7_(arg0)
	local registerVal1 = {}
	local registerVal2 = {}
	local registerVal3 = Engine.Localize("MENU_SYSTEM_TEST")
	registerVal2.name = registerVal3
	registerVal3 = Engine.Localize("MENU_SYSTEM_TEST_DESC")
	registerVal2.desc = registerVal3
	registerVal3 = RegisterMaterial("")
	registerVal2.image = registerVal3
	registerVal2.altText = "MENU_PLAY_TEST"
	registerVal1.models = registerVal2
	registerVal2 = {}
	registerVal2.hideArrows = true
	local function __FUNC_126D_(arg0)
		Engine.PlaySound("tst_test_system")
	end

	registerVal2.action = __FUNC_126D_
	registerVal1.properties = registerVal2
	return registerVal1
end

local function __FUNC_12EC_()
	local registerVal0 = Dvar.loc_language:get()
	if registerVal0 ~= CoD.LANGUAGE_ENGLISH and registerVal0 ~= CoD.LANGUAGE_POLISH and registerVal0 ~= CoD.LANGUAGE_ARABIC and registerVal0 ~= CoD.LANGUAGE_ENGLISHARABIC and registerVal0 ~= CoD.LANGUAGE_TRADITIONALCHINESE and registerVal0 ~= CoD.LANGUAGE_SIMPLIFIEDCHINESE and registerVal0 == CoD.LANGUAGE_JAPANESE or registerVal0 == CoD.LANGUAGE_FULLJAPANESE then
		return true
	end
	return false
end

local function __FUNC_152D_(arg0)
	local registerVal2 = {}
	local registerVal3 = {}
	local registerVal4 = Engine.Localize("MENU_OFF")
	registerVal3.name = registerVal4
	registerVal4 = Engine.Localize("MENU_DISABLED_CAPS")
	registerVal3.desc = registerVal4
	registerVal3.value = 0.000000
	registerVal4 = {}
	local registerVal5 = Engine.Localize("MENU_ON")
	registerVal4.name = registerVal5
	registerVal5 = Engine.Localize("MENU_ENABLED_CAPS")
	registerVal4.desc = registerVal5
	registerVal4.value = 1.000000
	registerVal2 = {registerVal3, registerVal4}
	registerVal3 = {}
	registerVal4 = {}
	registerVal5 = Engine.Localize("MENU_SUBTITLES")
	registerVal4.name = registerVal5
	registerVal5 = Engine.Localize("MENU_SUBTITLES_DESC")
	registerVal4.desc = registerVal5
	registerVal5 = RegisterMaterial("")
	registerVal4.image = registerVal5
	registerVal5 = CoD.OptionsUtility.CreateOptionDataSource(arg0, "AudioOptions_Subtitles", registerVal2, "cg_subtitles")
	registerVal4.optionsDatasource = registerVal5
	registerVal5 = CoD.OptionsUtility.GetProfileSelection(arg0, registerVal2, "cg_subtitles")
	registerVal4.currentSelection = registerVal5
	registerVal3.models = registerVal4
	registerVal3.properties = {}
	return registerVal3
end

local function __FUNC_18B2_(arg0)
	local registerVal1 = {}
	local registerVal2 = {}
	local registerVal3 = Engine.Localize("MENU_LANGUAGE_SELECTION")
	registerVal2.name = registerVal3
	registerVal3 = Engine.Localize("MENU_LANGUAGE_SELECTION")
	registerVal2.value = registerVal3
	registerVal1 = {registerVal2}
	registerVal2 = {}
	registerVal3 = {}
	local registerVal4 = Engine.Localize("MENU_CHOOSE_LANGUAGE")
	registerVal3.name = registerVal4
	registerVal4 = Engine.Localize("MENU_CHOOSE_LANGUAGE_DESC")
	registerVal3.desc = registerVal4
	registerVal4 = RegisterMaterial("")
	registerVal3.image = registerVal4
	registerVal4 = CoD.OptionsUtility.CreateOptionDataSource(arg0, "AudioOptions_LanguageSelection", registerVal1)
	registerVal3.optionsDatasource = registerVal4
	registerVal2.models = registerVal3
	registerVal3 = {}
	registerVal3.hideArrows = true
	local function __FUNC_1B70_(arg0, arg1, arg2, arg3, arg4)
		OpenOverlay(arg4, "FirstTimeLanguageSelectionSetting", arg2)
	end

	registerVal3.action = __FUNC_1B70_
	registerVal2.properties = registerVal3
	return registerVal2
end

local function __FUNC_1BF0_(arg0)
	local registerVal1 = {}
	local registerVal2 = {}
	local registerVal3 = Engine.Localize("MENU_ADVANCED_VOLUME")
	registerVal2.name = registerVal3
	registerVal3 = Engine.Localize("MENU_ADVANCED_VOLUME_DESC")
	registerVal2.desc = registerVal3
	registerVal2.altText = "MENU_CHANGE"
	registerVal3 = RegisterMaterial("")
	registerVal2.image = registerVal3
	local function __FUNC_1DAC_(arg0, arg1, arg2, arg3, arg4)
		NavigateToMenu(arg4, "StartMenu_Options_Sound_Advanced", true, arg2)
	end

	registerVal2.action = __FUNC_1DAC_
	registerVal1.models = registerVal2
	registerVal2 = {}
	registerVal2.disabled = false
	registerVal1.properties = registerVal2
	return registerVal1
end

function CoD.AudioSettings.CreateModels_MultiplayerMusicTrack(arg0)
	local registerVal2 = CoD.getStatsMilestoneTable(4.000000, Enum.eModes.MODE_CAMPAIGN)
	local registerVal3 = {}
	local registerVal4 = {}
	local registerVal5 = Engine.Localize("MENU_NONE")
	registerVal4.name = registerVal5
	registerVal4.value = Enum.MultiplayerMusicTracks.MP_MUSIC_TRACKS_NONE
	registerVal5 = {}
	registerVal5.alias = ""
	registerVal4.customModels = registerVal5
	registerVal5 = {}
	local registerVal6 = Engine.Localize("MENU_DEFAULT")
	registerVal5.name = registerVal6
	registerVal5.value = Enum.MultiplayerMusicTracks.MP_MUSIC_TRACKS_DEFAULT
	registerVal6 = {}
	registerVal6.alias = ""
	registerVal5.customModels = registerVal6
	registerVal6 = {}
	local registerVal7 = Engine.Localize("MENU_RANDOM")
	registerVal6.name = registerVal7
	registerVal6.value = Enum.MultiplayerMusicTracks.MP_MUSIC_TRACKS_RANDOM
	registerVal7 = {}
	registerVal7.alias = ""
	registerVal6.customModels = registerVal7
	registerVal3 = {registerVal4, registerVal5, registerVal6}
	registerVal4 = Engine.TableFindRows(registerVal2, 3.000000, "MP")
	if not registerVal4 then
	end
	registerVal5, registerVal6, registerVal7 = ipairs({})
	for index8,value9 in registerVal5, registerVal6, registerVal7 do
		local registerVal10 = Engine.TableLookupGetColumnValueForRow(registerVal2, value9, 0.000000)
		local registerVal11 = Engine.TableLookupGetColumnValueForRow(registerVal2, value9, 1.000000)
		local registerVal12 = Engine.TableLookupGetColumnValueForRow(registerVal2, value9, 2.000000)
		if registerVal11 == "" and registerVal12 ~= "" then
			local registerVal13 = Engine.TableLookup(nil, CoD.musicPlayerTable, 1.000000, registerVal12, 2.000000)
			local registerVal16 = {}
			registerVal16.name = registerVal13
			registerVal16.value = (Enum.MultiplayerMusicTracks.MP_MUSIC_TRACKS_FIRST_TRACK + registerVal10)
			local registerVal17 = {}
			registerVal17.alias = registerVal12
			registerVal16.customModels = registerVal17
			table.insert(registerVal3, registerVal16)
		end
	end
	registerVal5 = {}
	registerVal6 = {}
	registerVal7 = Engine.Localize("MENU_MP_MUSIC")
	registerVal6.name = registerVal7
	registerVal7 = Engine.Localize("MENU_MP_MUSIC_DESC")
	registerVal6.desc = registerVal7
	registerVal7 = RegisterMaterial("")
	registerVal6.image = registerVal7
	registerVal7 = CoD.OptionsUtility.CreateOptionDataSource(arg0, "AudioOptions_MultiplayerMusicTrack", registerVal3, "snd_multiplayer_music_track")
	registerVal6.optionsDatasource = registerVal7
	registerVal7 = CoD.OptionsUtility.GetProfileSelection(arg0, registerVal3, "snd_multiplayer_music_track")
	registerVal6.currentSelection = registerVal7
	registerVal5.models = registerVal6
	registerVal6 = {}
	registerVal7 = IsInGame()
	registerVal6.disabled = registerVal7
	registerVal5.properties = registerVal6
	return registerVal5
end

local function __FUNC_258A_(arg0)
	table.insert({}, CoD.AudioSettings.CreateModels_Volume(arg0, "MENU_MASTER_VOLUME", "MENU_MASTER_VOLUME_DESC", "", "Master", "snd_menu_master"))
	table.insert({}, __FUNC_1BF0_(arg0))
	local registerVal2 = IsOrbis()
	if registerVal2 then
		table.insert({}, CoD.OptionsUtility.CreateEnabledDisabledProfileVar(arg0, "MENU_CONTROLLER_SOUND", "MENU_CONTROLLER_SOUND_DESC", "snd_controller_sounds", "Sound_ControllerSounds"))
	end
	table.insert({}, __FUNC_AAA_(arg0))
	registerVal2 = IsInGame()
	if not registerVal2 then
		table.insert({}, __FUNC_10B7_(arg0))
	end
	table.insert({}, CoD.OptionsUtility.CreateEnabledDisabledProfileVar(arg0, "MENU_MP_DIALOG", "MENU_MP_DIALOG_DESC", "snd_multiplayer_character_voice", "Sound_MPDialog"))
	table.insert({}, CoD.AudioSettings.CreateModels_MultiplayerMusicTrack(arg0))
	registerVal2 = ShouldDisplayLanguageSelectionScreen()
	if registerVal2 then
		table.insert({}, __FUNC_18B2_(arg0))
	end
	registerVal2 = __FUNC_12EC_()
	if registerVal2 then
		table.insert({}, __FUNC_152D_(arg0))
	end
	return {}
end

local registerVal8 = DataSourceHelpers.ListSetup("OptionSoundList", __FUNC_258A_, true)
DataSources.OptionSoundList = registerVal8
function LUI.createMenu.StartMenu_Options_Sound(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("StartMenu_Options_Sound")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "StartMenu_Options_Sound.buttonPrompts")
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
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(false, false, 133.000000, 380.000000)
	registerVal5:setTopBottom(true, false, 184.000000, 206.000000)
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal5)
	registerVal1.Desc = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -651.000000, 653.000000)
	registerVal6:setTopBottom(true, false, 80.000000, 88.000000)
	registerVal6:setRGB(0.900000, 0.900000, 0.900000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal6)
	registerVal1.CategoryListLine = registerVal6
	local registerVal7 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal7:makeFocusable()
	registerVal7:setLeftRight(false, false, -608.000000, 62.000000)
	registerVal7:setTopBottom(true, false, 137.500000, 648.500000)
	registerVal7:setWidgetType(CoD.StartMenu_Options_Slider)
	registerVal7:setVerticalCount(9.000000)
	registerVal7:setVerticalCounter(CoD.verticalCounter)
	registerVal7:setDataSource("OptionSoundList")
	local function __FUNC_3BEE_(arg1, arg2)
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

	registerVal7:registerEventHandler("gain_focus", __FUNC_3BEE_)
	local function __FUNC_3D7F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_3D7F_)
	local function __FUNC_3E4E_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_3EAF_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal7, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_3E4E_, __FUNC_3EAF_, false)
	registerVal1:addElement(registerVal7)
	registerVal1.ButtonList = registerVal7
	local registerVal8 = CoD.StartMenu_Option_IconContainer.new(registerVal1, arg0)
	registerVal8:setLeftRight(false, false, 18.000000, 125.000000)
	registerVal8:setTopBottom(true, false, 140.000000, 246.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.StartMenuOptionIconContainer = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, true, -11.000000, 13.000000)
	registerVal9:setTopBottom(true, false, 80.000000, 88.000000)
	registerVal9:setRGB(0.900000, 0.900000, 0.900000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal9)
	registerVal1.CategoryListLine0 = registerVal9
	local registerVal10 = CoD.StartMenu_OptionHighlight.new(registerVal1, arg0)
	registerVal10:setLeftRight(false, false, 133.000000, 279.000000)
	registerVal10:setTopBottom(true, false, 137.500000, 177.500000)
	registerVal1:addElement(registerVal10)
	registerVal1.StartMenuOptionHighlight = registerVal10
	local registerVal11 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal11:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal11.titleLabel:setText(Engine.Localize("MENU_SOUND_CAPS"))
	registerVal11.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_SOUND_CAPS"))
	registerVal11.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_option"))
	registerVal1:addElement(registerVal11)
	registerVal1.MenuFrame = registerVal11
	local registerVal12 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal12:setTopBottom(true, false, 86.000000, 703.250000)
	registerVal1:addElement(registerVal12)
	registerVal1.FEMenuLeftGraphics0 = registerVal12
	local function __FUNC_3FAA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal7, "desc", true, __FUNC_3FAA_)
	local function __FUNC_4062_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.DescTitle:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal10:linkToElementModel(registerVal7, "name", true, __FUNC_4062_)
	local function __FUNC_4139_(arg0, arg1)
		ShowHeaderIconOnly(registerVal1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_4139_)
	local function __FUNC_41CD_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		UpdateGamerprofile(registerVal1, arg0, arg2)
		StopSoundAlias("tst_test_system")
		return true
	end

	local function __FUNC_428D_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_41CD_, __FUNC_428D_, false)
	registerVal7.id = "ButtonList"
	registerVal11:setModel(registerVal1.buttonModel, arg0)
	local registerVal15 = {}
	registerVal15.name = "menu_loaded"
	registerVal15.controller = arg0
	registerVal1:processEvent(registerVal15)
	registerVal15 = {}
	registerVal15.name = "update_state"
	registerVal15.menu = registerVal1
	registerVal1:processEvent(registerVal15)
	local registerVal13 = registerVal1:restoreState()
	if not registerVal13 then
		registerVal15 = {}
		registerVal15.name = "gain_focus"
		registerVal15.controller = arg0
		registerVal1.ButtonList:processEvent(registerVal15)
	end
	local function __FUNC_4389_(arg1)
		arg1.ButtonList:close()
		arg1.StartMenuOptionIconContainer:close()
		arg1.StartMenuOptionHighlight:close()
		arg1.MenuFrame:close()
		arg1.FEMenuLeftGraphics0:close()
		arg1.Desc:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "StartMenu_Options_Sound.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_4389_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

