-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.StartMenu.StartMenu_Options_Slider")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
local function __FUNC_381_(arg0)
	local registerVal2 = Engine.GetPingImageCount()
	if {} or not registerVal2 then
	end
	for index3=4.000000, 1.000000, -1.000000 do
		local registerVal9 = {}
		local registerVal10 = {}
		registerVal10.pingIndex = index3
		registerVal9.models = registerVal10
		table.insert({}, registerVal9)
	end
	return {}
end

local registerVal2 = DataSourceHelpers.ListSetup("AboutPingBars", __FUNC_381_, true)
DataSources.AboutPingBars = registerVal2
local function __FUNC_4A4_(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
	local registerVal8, registerVal9 = Engine.GetSystemInfo(arg0, arg4)
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.name = arg1
	registerVal11.desc = arg3
	registerVal11.altText = registerVal8
	registerVal11.frameWidget = arg5
	registerVal11.aboutTitle = arg2
	registerVal10.models = registerVal11
	registerVal11 = {}
	registerVal11.disabled = arg6
	registerVal11.action = arg7
	registerVal11.infoType = arg4
	registerVal10.properties = registerVal11
	return registerVal10
end

local function __FUNC_5F9_(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.name = arg1
	registerVal8.desc = arg3
	registerVal8.altText = arg4
	registerVal8.frameWidget = arg5
	registerVal8.aboutTitle = arg2
	registerVal7.models = registerVal8
	registerVal8 = {}
	registerVal8.disabled = arg6
	registerVal7.properties = registerVal8
	return registerVal7
end

local function __FUNC_6E0_(arg0, arg1, arg2, arg3, arg4)
	arg1.showing = (not arg1.showing)
	local registerVal5 = arg1:getModel(arg2, "altText")
	if registerVal5 then
		if arg1.showing then
		end
		Engine.SetModelValue(registerVal5, arg1.mainInfo)
	end
	local registerVal6 = arg1:getModel(arg2, "desc")
	if registerVal6 then
		if arg1.showing then
		end
		Engine.SetModelValue(registerVal6, arg1.descOn)
	end
	UpdateButtonPromptState(arg4, arg1, arg2, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
end

local function __FUNC_904_(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
	local registerVal8, registerVal9 = Engine.GetSystemInfo(arg0, arg5)
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.name = arg1
	registerVal11.desc = arg4
	registerVal11.altText = "MENU_HIDDEN"
	registerVal11.frameWidget = arg6
	registerVal11.aboutTitle = arg2
	registerVal10.models = registerVal11
	registerVal11 = {}
	registerVal11.disabled = arg7
	registerVal11.action = __FUNC_6E0_
	registerVal11.mainInfo = registerVal8
	registerVal11.showing = false
	registerVal11.descOn = arg3
	registerVal11.descOff = arg4
	registerVal10.properties = registerVal11
	return registerVal10
end

local function __FUNC_AA1_(arg0)
	local registerVal2 = {}
	local registerVal3 = {}
	local registerVal4 = Engine.Localize("MENU_OFF")
	registerVal3.name = registerVal4
	registerVal3.value = 0.000000
	registerVal4 = {}
	local registerVal5 = Engine.Localize("MENU_ON")
	registerVal4.name = registerVal5
	registerVal4.value = 1.000000
	registerVal2 = {registerVal3, registerVal4}
	registerVal3 = {}
	registerVal4 = {}
	registerVal5 = Engine.Localize("MENU_CONNECTION_METER")
	registerVal4.name = registerVal5
	registerVal5 = Engine.Localize("MENU_CONNECTION_METER_ABOUT")
	registerVal4.aboutTitle = registerVal5
	registerVal5 = Engine.Localize("MENU_CONNECTION_METER_ABOUT_DESC")
	registerVal4.desc = registerVal5
	registerVal5 = CoD.OptionsUtility.CreateOptionDataSource(arg0, "NetworkOptions_ShowConnectionMeter", registerVal2, "showConnectionMeter")
	registerVal4.optionsDatasource = registerVal5
	registerVal5 = CoD.OptionsUtility.GetProfileSelection(arg0, registerVal2, "showConnectionMeter")
	registerVal4.currentSelection = registerVal5
	registerVal4.frameWidget = "CoD.StartMenu_Options_Network_DescriptionPanels"
	registerVal3.models = registerVal4
	registerVal3.properties = {}
	return registerVal3
end

local function __FUNC_E42_(arg0)
	local registerVal4 = {}
	local registerVal5 = {}
	registerVal5.frameWidget = "CoD.StartMenu_Options_Network_OverviewPanel"
	registerVal4.models = registerVal5
	registerVal5 = {}
	registerVal5.customWidgetOverride = CoD.StartMenu_Options_Network_StatusOverview
	registerVal4.properties = registerVal5
	table.insert({}, registerVal4)
	local registerVal2, registerVal3 = Engine.GetSystemInfoValueAndString(arg0, CoD.SYSINFO_NAT_TYPE)
	registerVal5 = Engine.GetConnectionPort()
	if registerVal2 == Enum.XONLINE_NAT_TYPE.XONLINE_NAT_OPEN then
	else
		if registerVal2 == Enum.XONLINE_NAT_TYPE.XONLINE_NAT_MODERATE then
		else
			if registerVal2 == Enum.XONLINE_NAT_TYPE.XONLINE_NAT_STRICT then
			end
		end
	end
	local registerVal6 = Engine.Localize("PLATFORM_OPTIONS_NETWORK_ABOUT_NAT_STRICT", registerVal5)
	table.insert({}, __FUNC_5F9_(arg0, "MENU_OPTIONS_NETWORK_NAT_TYPE", "MENU_OPTIONS_NETWORK_ABOUT_NAT", registerVal6, registerVal3, "CoD.StartMenu_Options_Network_DescriptionPanels", false))
	table.insert({}, __FUNC_4A4_(arg0, "MENU_OPTIONS_NETWORK_BANDWIDTH", "MENU_OPTIONS_NETWORK_ABOUT_BANDWIDTH", "MENU_OPTIONS_NETWORK_ABOUT_BANDWIDTH_DESC", CoD.SYSINFO_BANDWIDTH, "CoD.StartMenu_Options_Network_DescriptionPanels", false))
	registerVal6, registerVal7 = Engine.GetSystemInfoValueAndString(arg0, CoD.SYSINFO_CONNECTION_TYPE)
	if registerVal6 == Enum.connectionType_e.CONNECTION_TYPE_WIRED then
	else
		if registerVal6 == Enum.connectionType_e.CONNECTION_TYPE_WIRELESS then
		end
	end
	table.insert({}, __FUNC_5F9_(arg0, "MENU_OPTIONS_NETWORK_CONNECTION_TYPE", "MENU_OPTIONS_NETWORK_ABOUT_CONNECTION_TYPE", "MENU_OPTIONS_NETWORK_ABOUT_CONNECTION_TYPE_WIRELESS", registerVal7, "CoD.StartMenu_Options_Network_DescriptionPanels", false))
	table.insert({}, __FUNC_904_(arg0, "MENU_OPTIONS_NETWORK_GEOGRAPHICAL_REGION", "MENU_OPTIONS_NETWORK_ABOUT_GEOGRAPHICAL_REGION", "PLATFORM_OPTIONS_NETWORK_ABOUT_GEOGRAPHIC_REGION_DESC_ON", "PLATFORM_OPTIONS_NETWORK_ABOUT_GEOGRAPHIC_REGION_DESC_OFF", CoD.SYSINFO_GEOGRAPHICAL_REGION, "CoD.StartMenu_Options_Network_DescriptionPanels", false))
	table.insert({}, __FUNC_904_(arg0, "MENU_OPTIONS_NETWORK_EXTERNAL_IP", "MENU_OPTIONS_NETWORK_ABOUT_EXTERNAL_IP", "PLATFORM_OPTIONS_NETWORK_ABOUT_EXTERNAL_IP_DESC_ON", "PLATFORM_OPTIONS_NETWORK_ABOUT_EXTERNAL_IP_DESC_OFF", CoD.SYSINFO_EXTERNAL_IP_ADDRESS, "CoD.StartMenu_Options_Network_DescriptionPanels", false))
	table.insert({}, __FUNC_904_(arg0, "MENU_OPTIONS_NETWORK_INTERNAL_IP", "MENU_OPTIONS_NETWORK_ABOUT_INTERNAL_IP", "PLATFORM_OPTIONS_NETWORK_ABOUT_INTERNAL_IP_DESC_ON", "PLATFORM_OPTIONS_NETWORK_ABOUT_INTERNAL_IP_DESC_OFF", CoD.SYSINFO_INTERNAL_IP_ADDRESS, "CoD.StartMenu_Options_Network_DescriptionPanels", false))
	table.insert({}, __FUNC_AA1_(arg0))
	return {}
end

local registerVal9 = DataSourceHelpers.ListSetup("OptionNetworkSettings", __FUNC_E42_, true)
DataSources.OptionNetworkSettings = registerVal9
function LUI.createMenu.StartMenu_Options_Network(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("StartMenu_Options_Network")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "StartMenu_Options_Network.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -2.000000, -2.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.060000, 0.060000, 0.060000)
	registerVal1:addElement(registerVal3)
	registerVal1.Background = registerVal3
	local registerVal4 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4.titleLabel:setText(Engine.Localize("MENU_NETWORK"))
	registerVal4.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_NETWORK"))
	registerVal4.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_option"))
	registerVal1:addElement(registerVal4)
	registerVal1.MenuFrame = registerVal4
	local registerVal5 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal5:makeFocusable()
	registerVal5:setLeftRight(false, false, -611.000000, 59.000000)
	registerVal5:setTopBottom(true, false, 133.580000, 587.580000)
	registerVal5:setDataSource("OptionNetworkSettings")
	registerVal5:setWidgetType(CoD.StartMenu_Options_Slider)
	registerVal5:setVerticalCount(8.000000)
	local function __FUNC_280C_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		return registerVal3
	end

	registerVal5:registerEventHandler("gain_focus", __FUNC_280C_)
	local function __FUNC_29A0_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_29A0_)
	local function __FUNC_2A72_(arg0, arg1, arg2, arg3)
		local registerVal4 = HasListAction(arg0, arg2)
		registerVal4 = IsElementPropertyValue(arg0, "showing", false)
		if registerVal4 and registerVal4 then
			ProcessListAction(registerVal1, arg0, arg2)
			PlaySoundAlias("uin_paint_decal_nav")
			return true
		else
			registerVal4 = HasListAction(arg0, arg2)
			if registerVal4 then
				ProcessListAction(registerVal1, arg0, arg2)
				PlaySoundAlias("uin_paint_decal_nav")
				return true
			end
		end
	end

	local function __FUNC_2BD4_(arg0, arg1, arg2)
		local registerVal3 = HasListAction(arg0, arg2)
		registerVal3 = IsElementPropertyValue(arg0, "showing", false)
		if registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_SHOW")
			return true
		else
			registerVal3 = HasListAction(arg0, arg2)
			if registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_HIDE")
				return true
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal5, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "T", __FUNC_2A72_, __FUNC_2BD4_, false)
	registerVal1:addElement(registerVal5)
	registerVal1.ButtonList = registerVal5
	local registerVal6 = LUI.UIFrame.new(registerVal1, arg0, 0.000000, 0.000000, false)
	registerVal6:setLeftRight(false, false, -18.000000, 569.000000)
	registerVal6:setTopBottom(true, false, 133.580000, 650.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.frame = registerVal6
	local registerVal7 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal7:setTopBottom(true, false, 86.000000, 703.250000)
	registerVal1:addElement(registerVal7)
	registerVal1.FEMenuLeftGraphics0 = registerVal7
	local function __FUNC_2DD0_(arg1)
		registerVal6:setModel(arg1, arg0)
	end

	registerVal6:linkToElementModel(registerVal5, nil, false, __FUNC_2DD0_)
	local function __FUNC_2E22_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:changeFrameWidget(registerVal1)
		end
	end

	registerVal6:linkToElementModel(registerVal5, "frameWidget", true, __FUNC_2E22_)
	local registerVal8 = {}
	registerVal8.right = registerVal6
	registerVal5.navigation = registerVal8
	registerVal8 = {}
	registerVal8.left = registerVal5
	registerVal6.navigation = registerVal8
	registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_2EBE_()
		registerVal1:setupElementClipCounter(1.000000)
		registerVal5:completeAnimation()
		registerVal1.ButtonList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal5, {})
	end

	registerVal9.DefaultClip = __FUNC_2EBE_
	registerVal8.DefaultState = registerVal9
	registerVal1.clipsPerState = registerVal8
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_2FB9_(arg0, arg1)
		ShowHeaderKickerAndIcon(registerVal1)
		SetHeadingKickerText("MENU_OPTIONS_NETWORK_ONLINE_SERVICES_CAPS")
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_2FB9_)
	local function __FUNC_30AF_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		UpdateGamerprofile(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_3130_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_30AF_, __FUNC_3130_, false)
	local function __FUNC_322D_(arg0, arg1, arg2, arg3)
		local registerVal4 = AlwaysFalse()
		if registerVal4 then
			return true
		end
	end

	local function __FUNC_3285_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = AlwaysFalse()
		if registerVal3 then
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_322D_, __FUNC_3285_, false)
	registerVal4:setModel(registerVal1.buttonModel, arg0)
	registerVal5.id = "ButtonList"
	registerVal6.id = "frame"
	local registerVal10 = {}
	registerVal10.name = "menu_loaded"
	registerVal10.controller = arg0
	registerVal1:processEvent(registerVal10)
	registerVal10 = {}
	registerVal10.name = "update_state"
	registerVal10.menu = registerVal1
	registerVal1:processEvent(registerVal10)
	registerVal8 = registerVal1:restoreState()
	if not registerVal8 then
		registerVal10 = {}
		registerVal10.name = "gain_focus"
		registerVal10.controller = arg0
		registerVal1.ButtonList:processEvent(registerVal10)
	end
	local function __FUNC_33AF_(arg1)
		arg1.MenuFrame:close()
		arg1.ButtonList:close()
		arg1.FEMenuLeftGraphics0:close()
		arg1.frame:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "StartMenu_Options_Network.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_33AF_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

