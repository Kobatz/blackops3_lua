-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.StartMenu.StartMenu_lineGraphics_Options")
require("ui.uieditor.widgets.TabbedWidgets.basicTabList")
require("ui.uieditor.widgets.TabbedWidgets.paintshopTabWidget")
require("ui.uieditor.widgets.PC.StartMenu.VoiceOptions.StartMenu_Options_PC_Voice_Voice")
require("ui.uieditor.widgets.PC.StartMenu.VoiceOptions.StartMenu_Options_PC_Voice_Text")
require("ui.uieditor.widgets.PC.StartMenu.Dropdown.OptionDropdown")
require("ui.uieditor.widgets.StartMenu.StartMenu_Options_CheckBoxOption")
require("ui.uieditor.widgets.StartMenu.StartMenu_Options_SliderBar")
require("ui.uieditor.widgets.PC.Utility.VerticalListSpacer")
local function __FUNC_6F3_(arg0)
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

local registerVal1 = DataSourceHelpers.ListSetup("PC.OptionPCVoiceMuteAllExceptParty", __FUNC_6F3_, true)
DataSources.OptionPCVoiceMuteAllExceptParty = registerVal1
local function __FUNC_7FD_(arg0)
	local registerVal4 = {}
	local registerVal5 = {}
	registerVal5.label = "PLATFORM_VOICE_CHAT"
	registerVal5.description = "PLATFORM_VOICECHAT_DESC"
	registerVal5.profileVarName = "cl_voice"
	registerVal5.widgetType = "checkbox"
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.OptionsGenericCheckboxProperties
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.label = "PLATFORM_VOICECHAT_VOLUME"
	registerVal5.description = "PLATFORM_VOICECHAT_VOLUME_DESC"
	registerVal5.profileVarName = "snd_voicechat_volume"
	registerVal5.profileType = "user"
	registerVal5.lowValue = 0.000000
	registerVal5.highValue = 1.000000
	registerVal5.widgetType = "slider"
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.OptionsGenericSliderProperties
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.label = "PLATFORM_VOICECHAT_RECORD_LEVEL"
	registerVal5.description = "PLATFORM_VOICECHAT_RECORD_LEVEL_DESC"
	registerVal5.profileVarName = "snd_voicechat_record_level"
	registerVal5.profileType = "user"
	registerVal5.lowValue = 0.000000
	registerVal5.highValue = 1.000000
	registerVal5.widgetType = "slider"
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.OptionsGenericSliderProperties
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.widgetType = "spacer"
	registerVal5.height = 32.000000
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.label = "PLATFORM_PUSH_TO_TALK"
	registerVal5.description = "PLATFORM_PUSH_TO_TALK_DESC"
	registerVal5.profileVarName = "snd_voicechat_open_mic"
	registerVal5.profileType = "user"
	registerVal5.lowValue = 1.000000
	registerVal5.highValue = 0.000000
	registerVal5.widgetType = "checkbox"
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.OptionsGenericCheckboxProperties
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.label = "MENU_MUTE_ALL_EXCEPT_PARTY_OPTION"
	registerVal5.description = "MENU_MUTE_ALL_EXCEPT_PARTY_DESC"
	registerVal5.profileVarName = "mute_all_except_party"
	registerVal5.profileType = "user"
	registerVal5.datasource = "OptionPCVoiceMuteAllExceptParty"
	registerVal5.widgetType = "dropdown"
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.OptionsGenericDropdownProperties
	table.insert({}, registerVal4)
	return {}
end

registerVal1 = DataSourceHelpers.ListSetup("PC.OptionVoiceVoice", __FUNC_7FD_, true)
DataSources.OptionVoiceVoice = registerVal1
function DataSources.OptionVoiceVoice.getWidgetTypeForItem(arg0, arg1, arg2)
	if arg1 then
		local registerVal3 = Engine.GetModelValue(Engine.GetModel(arg1, "widgetType"))
		if registerVal3 == "dropdown" then
			return CoD.OptionDropdown
		else
			if registerVal3 == "checkbox" then
				return CoD.StartMenu_Options_CheckBoxOption
			else
				if registerVal3 == "slider" then
					return CoD.StartMenu_Options_SliderBar
				else
					if registerVal3 == "spacer" then
						return CoD.VerticalListSpacer
					end
				end
			end
		end
	end
	return nil
end

local function __FUNC_1051_(arg0)
	local registerVal4 = {}
	local registerVal5 = {}
	registerVal5.label = "PLATFORM_TEXTCHAT"
	registerVal5.description = "PLATFORM_TEXTCHAT_DESC"
	registerVal5.profileVarName = "textchat_enable"
	registerVal5.profileType = "user"
	registerVal5.lowValue = 0.000000
	registerVal5.highValue = 1.000000
	registerVal5.widgetType = "checkbox"
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.OptionsGenericCheckboxProperties
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.widgetType = "spacer"
	registerVal5.height = 32.000000
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.label = "PLATFORM_CHAT_ALL"
	registerVal5.description = "PLATFORM_CHAT_ALL_DESC"
	registerVal5.profileVarName = "textchat_filter"
	registerVal5.chatChannel = Enum.chatChannel_e.CHAT_CHANNEL_ALL
	registerVal5.profileType = "user"
	registerVal5.lowValue = 0.000000
	registerVal5.highValue = 1.000000
	registerVal5.widgetType = "checkbox"
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.OptionsChatClientChannelFilterCheckboxProperties
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.label = "PLATFORM_CHAT_TEAM"
	registerVal5.description = "PLATFORM_CHAT_TEAM_DESC"
	registerVal5.profileVarName = "textchat_filter"
	registerVal5.chatChannel = Enum.chatChannel_e.CHAT_CHANNEL_TEAM
	registerVal5.profileType = "user"
	registerVal5.lowValue = 0.000000
	registerVal5.highValue = 1.000000
	registerVal5.widgetType = "checkbox"
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.OptionsChatClientChannelFilterCheckboxProperties
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.label = "PLATFORM_CHAT_PARTY"
	registerVal5.description = "PLATFORM_CHAT_PARTY_DESC"
	registerVal5.profileVarName = "textchat_filter"
	registerVal5.chatChannel = Enum.chatChannel_e.CHAT_CHANNEL_PARTY
	registerVal5.profileType = "user"
	registerVal5.lowValue = 0.000000
	registerVal5.highValue = 1.000000
	registerVal5.widgetType = "checkbox"
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.OptionsChatClientChannelFilterCheckboxProperties
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.widgetType = "spacer"
	registerVal5.height = 32.000000
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.label = "PLATFORM_CHAT_SHOW_TIMESTAMP"
	registerVal5.description = "PLATFORM_CHAT_SHOW_TIMESTAMP_DESC"
	registerVal5.profileVarName = "textchat_show_timestamps"
	registerVal5.profileType = "user"
	registerVal5.lowValue = 0.000000
	registerVal5.highValue = 1.000000
	registerVal5.widgetType = "checkbox"
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.OptionsGenericCheckboxProperties
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.label = "PLATFORM_CHAT_SHOW_CHANNEL"
	registerVal5.description = "PLATFORM_CHAT_SHOW_CHANNEL_DESC"
	registerVal5.profileVarName = "textchat_show_channel"
	registerVal5.profileType = "user"
	registerVal5.lowValue = 0.000000
	registerVal5.highValue = 1.000000
	registerVal5.widgetType = "checkbox"
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.OptionsGenericCheckboxProperties
	table.insert({}, registerVal4)
	return {}
end

registerVal1 = DataSourceHelpers.ListSetup("PC.OptionVoiceText", __FUNC_1051_, true)
DataSources.OptionVoiceText = registerVal1
function DataSources.OptionVoiceText.getWidgetTypeForItem(arg0, arg1, arg2)
	if arg1 then
		local registerVal3 = Engine.GetModelValue(Engine.GetModel(arg1, "widgetType"))
		if registerVal3 == "dropdown" then
			return CoD.OptionDropdown
		else
			if registerVal3 == "checkbox" then
				return CoD.StartMenu_Options_CheckBoxOption
			else
				if registerVal3 == "slider" then
					return CoD.StartMenu_Options_SliderBar
				else
					if registerVal3 == "spacer" then
						return CoD.VerticalListSpacer
					end
				end
			end
		end
	end
	return nil
end

local function __FUNC_19AD_(arg0)
	local registerVal4 = {}
	local registerVal5 = {}
	registerVal5.tabIcon = CoD.buttonStrings.shoulderl
	registerVal4.models = registerVal5
	registerVal5 = {}
	registerVal5.m_mouseDisabled = true
	registerVal4.properties = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.tabName = "PLATFORM_VOICE_CAPS"
	registerVal5.tabWidget = "CoD.StartMenu_Options_PC_Voice_Voice"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.tabName = "PLATFORM_TEXT_CAPS"
	registerVal5.tabWidget = "CoD.StartMenu_Options_PC_Voice_Text"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.tabIcon = CoD.buttonStrings.shoulderr
	registerVal4.models = registerVal5
	registerVal5 = {}
	registerVal5.m_mouseDisabled = true
	registerVal4.properties = registerVal5
	table.insert({}, registerVal4)
	return {}
end

registerVal1 = DataSourceHelpers.ListSetup("PC.OptionVoiceCategories", __FUNC_19AD_, true)
DataSources.OptionVoiceCategories = registerVal1
local function __FUNC_1C49_(arg0, arg1)
	Engine.SyncHardwareProfileWithDvars()
end

local function __FUNC_1CBE_(arg0, arg1)
	arg0.categoryFrame:setForceMouseEventDispatch(true)
	local function __FUNC_1DA7_()
		Engine.ApplyHardwareProfileSettings()
		CoD.ChatClientUtility.UpdateOptionsModels(arg1)
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "close", __FUNC_1DA7_)
end

local function __FUNC_1E83_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("StartMenu_Options_Voice_PC")
	if __FUNC_1C49_ then
		__FUNC_1C49_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "StartMenu_Options_Voice_PC.buttonPrompts")
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
	registerVal4.titleLabel:setText(Engine.Localize("MENU_CHAT_CAPS"))
	registerVal4.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_CHAT_CAPS"))
	registerVal4.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_option"))
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
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, -11.000000, 1293.000000)
	registerVal7:setTopBottom(true, false, 80.000000, 88.000000)
	registerVal7:setRGB(0.900000, 0.900000, 0.900000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal7)
	registerVal1.CategoryListLine0 = registerVal7
	local registerVal8 = CoD.basicTabList.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 64.000000, 1216.000000)
	registerVal8:setTopBottom(true, false, 84.000000, 124.000000)
	registerVal8.grid:setDataSource("OptionVoiceCategories")
	registerVal8.grid:setWidgetType(CoD.paintshopTabWidget)
	registerVal8.grid:setHorizontalCount(7.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.Tabs = registerVal8
	local registerVal9 = LUI.UIFrame.new(registerVal1, arg0, 0.000000, 0.000000, false)
	registerVal9:setLeftRight(true, false, 64.000000, 1216.000000)
	registerVal9:setTopBottom(true, false, 134.220000, 657.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.categoryFrame = registerVal9
	local function __FUNC_2C88_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:changeFrameWidget(registerVal1)
		end
	end

	registerVal9:linkToElementModel(registerVal8.grid, "tabWidget", true, __FUNC_2C88_)
	local function __FUNC_2D26_(arg0, arg1)
		ShowHeaderIconOnly(registerVal1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_2D26_)
	local function __FUNC_2DB9_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		UpdateGamerprofile(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_2E3C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_2DB9_, __FUNC_2E3C_, false)
	local function __FUNC_2F39_(arg0, arg1, arg2, arg3)
		CloseStartMenu(arg1, arg2)
		return true
	end

	local function __FUNC_2F94_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_DISMISS_MENU")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_START, "M", __FUNC_2F39_, __FUNC_2F94_, false)
	local function __FUNC_3092_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_30C4_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_3092_, __FUNC_30C4_, false)
	registerVal4:setModel(registerVal1.buttonModel, arg0)
	registerVal9.id = "categoryFrame"
	local registerVal12 = {}
	registerVal12.name = "menu_loaded"
	registerVal12.controller = arg0
	registerVal1:processEvent(registerVal12)
	registerVal12 = {}
	registerVal12.name = "update_state"
	registerVal12.menu = registerVal1
	registerVal1:processEvent(registerVal12)
	local registerVal10 = registerVal1:restoreState()
	if not registerVal10 then
		registerVal12 = {}
		registerVal12.name = "gain_focus"
		registerVal12.controller = arg0
		registerVal1.categoryFrame:processEvent(registerVal12)
	end
	local function __FUNC_31C2_(arg1)
		arg1.MenuFrame:close()
		arg1.StartMenulineGraphicsOptions0:close()
		arg1.Tabs:close()
		arg1.categoryFrame:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "StartMenu_Options_Voice_PC.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_31C2_)
	if __FUNC_1CBE_ then
		__FUNC_1CBE_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.StartMenu_Options_Voice_PC = __FUNC_1E83_
