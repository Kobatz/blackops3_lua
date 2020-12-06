-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.StartMenu.StartMenu_lineGraphics_Options")
require("ui.uieditor.widgets.TabbedWidgets.basicTabList")
require("ui.uieditor.widgets.TabbedWidgets.paintshopTabWidget")
require("ui.uieditor.widgets.PC.StartMenu.GraphicsOptions.StartMenu_Options_PC_Graphics_Game")
require("ui.uieditor.widgets.PC.StartMenu.GraphicsOptions.StartMenu_Options_PC_Graphics_Video")
require("ui.uieditor.widgets.PC.StartMenu.GraphicsOptions.StartMenu_Options_PC_Graphics_Advanced")
require("ui.uieditor.widgets.PC.StartMenu.Dropdown.OptionDropdown")
require("ui.uieditor.widgets.StartMenu.StartMenu_Options_CheckBoxOption")
require("ui.uieditor.widgets.StartMenu.StartMenu_Options_SliderBar")
require("ui.uieditor.widgets.PC.Utility.VerticalListSpacer")
local function __FUNC_1078_(arg0)
	local registerVal4 = {}
	local registerVal5 = {}
	registerVal5.value = 0.000000
	registerVal5.valueDisplay = "PLATFORM_INDICATOR_FULL_NAME"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.value = 1.000000
	registerVal5.valueDisplay = "PLATFORM_INDICATOR_ABBREVIATED"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.value = 2.000000
	registerVal5.valueDisplay = "PLATFORM_INDICATOR_ICON_ONLY"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	return {}
end

local registerVal1 = DataSourceHelpers.ListSetup("PC.OptionPCGraphicsPlayerNameIndicator", __FUNC_1078_, true)
DataSources.OptionPCGraphicsPlayerNameIndicator = registerVal1
local function __FUNC_1207_(arg0)
	local registerVal4 = {}
	local registerVal5 = {}
	registerVal5.value = 0.000000
	registerVal5.valueDisplay = "PLATFORM_HORIZONTAL"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.value = 1.000000
	registerVal5.valueDisplay = "PLATFORM_VERTICAL"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	return {}
end

registerVal1 = DataSourceHelpers.ListSetup("PC.OptionPCGraphicsSplitscreen", __FUNC_1207_, true)
DataSources.OptionPCGraphicsSplitscreen = registerVal1
local function __FUNC_1326_(arg0)
	local registerVal4 = {}
	local registerVal5 = {}
	registerVal5.value = Enum.ColorVisionDeficiencies.CVD_OFF
	registerVal5.valueDisplay = "MENU_OFF"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.value = Enum.ColorVisionDeficiencies.CVD_DEUTERANOMALY
	registerVal5.valueDisplay = "MENU_COLORBLIND_DEUTERANOPIA"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.value = Enum.ColorVisionDeficiencies.CVD_PROTANOMALY
	registerVal5.valueDisplay = "MENU_COLORBLIND_PROTANOPIA"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.value = Enum.ColorVisionDeficiencies.CVD_TRITANOMALY
	registerVal5.valueDisplay = "MENU_COLORBLIND_TRITANOPIA"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	return {}
end

registerVal1 = DataSourceHelpers.ListSetup("PC.OptionPCGraphicsColorblindMode", __FUNC_1326_, true)
DataSources.OptionPCGraphicsColorblindMode = registerVal1
local function __FUNC_15D9_(arg0)
	local registerVal4 = {}
	local registerVal5 = {}
	registerVal5.label = "PLATFORM_TEAM_INDICATOR"
	registerVal5.description = "PLATFORM_TEAM_INDICATOR_DESC"
	registerVal5.profileVarName = "team_indicator"
	registerVal5.profileType = "user"
	registerVal5.datasource = "OptionPCGraphicsPlayerNameIndicator"
	registerVal5.widgetType = "dropdown"
	registerVal5.minimapAlpha = 0.000000
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.OptionsGenericDropdownProperties
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.label = "PLATFORM_SPLITSCREEN_ORIENTATION"
	registerVal5.description = "PLATFORM_SPLITSCREEN_ORIENTATION_DESC"
	registerVal5.profileVarName = "splitscreen_horizontal"
	registerVal5.datasource = "OptionPCGraphicsSplitscreen"
	registerVal5.widgetType = "dropdown"
	registerVal5.minimapAlpha = 0.000000
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.OptionsGenericDropdownProperties
	table.insert({}, registerVal4)
	local registerVal2 = IsLuaCodeVersionAtLeast(17.000000)
	if registerVal2 then
		registerVal4 = {}
		registerVal5 = {}
		registerVal5.label = "MENU_COLORBLIND_MODE"
		registerVal5.description = "MENU_COLORBLIND_MODE_DESC"
		registerVal5.profileVarName = "colorblindMode"
		registerVal5.profileType = "user"
		registerVal5.datasource = "OptionPCGraphicsColorblindMode"
		registerVal5.widgetType = "dropdown"
		registerVal5.minimapAlpha = 1.000000
		registerVal4.models = registerVal5
		registerVal4.properties = CoD.PCUtil.OptionsGenericDropdownProperties
		table.insert({}, registerVal4)
	end
	return {}
end

registerVal1 = DataSourceHelpers.ListSetup("PC.OptionGraphicsGame", __FUNC_15D9_, true)
DataSources.OptionGraphicsGame = registerVal1
function DataSources.OptionGraphicsGame.getWidgetTypeForItem(arg0, arg1, arg2)
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

local function __FUNC_1C59_(arg0)
	local registerVal4 = {}
	local registerVal5 = {}
	registerVal5.value = 0.000000
	registerVal5.valueDisplay = "PLATFORM_WINDOWED"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.value = 1.000000
	registerVal5.valueDisplay = "PLATFORM_FULLSCREEN"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.value = 2.000000
	registerVal5.valueDisplay = "PLATFORM_WINDOWED_FULLSCREEN"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	return {}
end

registerVal1 = DataSourceHelpers.ListSetup("PC.OptionPCGraphicsDisplayMode", __FUNC_1C59_, true)
DataSources.OptionPCGraphicsDisplayMode = registerVal1
local function __FUNC_1DD1_(arg0)
	local registerVal2 = Dvar.r_monitorCount:get()
	for index3=1.000000, registerVal2, 1.000000 do
		local registerVal9 = {}
		local registerVal10 = {}
		registerVal10.value = index3
		registerVal10.valueDisplay = index3
		registerVal9.models = registerVal10
		table.insert({}, registerVal9)
	end
	return {}
end

registerVal1 = DataSourceHelpers.ListSetup("PC.OptionPCGraphicsMonitor", __FUNC_1DD1_, true)
DataSources.OptionPCGraphicsMonitor = registerVal1
local function __FUNC_1EE8_(arg0)
	local registerVal3 = Dvar.r_fullscreen:get()
	if registerVal3 == 0.000000 then
		registerVal3 = Engine.GetAllResolutions()
	else
		registerVal3 = tonumber(Engine.GetHardwareProfileValueAsString("r_monitor"))
		local registerVal4 = Dvar.r_monitorCount:get()
		if registerVal4 < registerVal3 then
		end
		if 0.000000 == 0.000000 then
			registerVal4 = Dvar.r_monitor:get()
		end
		if registerVal4 == 0.000000 then
		end
		registerVal4 = Engine.GetAvailableResolutions(1.000000)
	end
	registerVal3 = Dvar.r_mode:get()
	if registerVal3 then
		table.insert(registerVal4, registerVal3)
	end
	local function __FUNC_2219_(arg0, arg1)
		local registerVal2, registerVal3 = string.match(arg0, "([%d]+)x([%d]+)")
		local registerVal4, registerVal5 = string.match(arg1, "([%d]+)x([%d]+)")
		if registerVal2 == registerVal4 then
			local registerVal6 = tonumber(registerVal3)
			local registerVal7 = tonumber(registerVal5)
			if registerVal7 >= registerVal6 then
			end
			return true
		else
			registerVal6 = tonumber(registerVal2)
			registerVal7 = tonumber(registerVal4)
			if registerVal7 >= registerVal6 then
			end
			return true
		end
	end

	table.sort(registerVal4, __FUNC_2219_)
	local registerVal6, registerVal7, registerVal8 = ipairs(registerVal4)
	for index9,value10 in registerVal6, registerVal7, registerVal8 do
		if not {}[value10] then
			local registerVal13 = {}
			local registerVal14 = {}
			registerVal14.value = value10
			registerVal14.valueDisplay = value10
			registerVal13.models = registerVal14
			table.insert({}, registerVal13)
			{}[value10] = true
		end
	end
	return {}
end

registerVal1 = DataSourceHelpers.ListSetup("PC.OptionPCGraphicsScreenResolution", __FUNC_1EE8_, true)
DataSources.OptionPCGraphicsScreenResolution = registerVal1
local function __FUNC_232A_(arg0)
	local registerVal2 = Engine.GetHardwareProfileValueAsString("r_mode")
	local registerVal3, registerVal4 = string.match(registerVal2, "([%d]+)x([%d]+)")
	local registerVal5 = Engine.GetMaxSceneResolutionMultiplier(registerVal3, registerVal4)
	for index7=50.000000, registerVal5, 10.000000 do
		if index7 ~= 100.000000 then
			local registerVal13 = math.floor((((index7 * registerVal3) / 100.000000) / 8.000000))
			registerVal13 = math.floor((((index7 * registerVal4) / 100.000000) / 8.000000))
		end
		local registerVal15 = {}
		local registerVal16 = {}
		registerVal16.value = index7
		local registerVal17 = string.format("%d%% - %dx%d", index7, (registerVal13 * 8.000000), (registerVal13 * 8.000000))
		registerVal16.valueDisplay = registerVal17
		registerVal15.models = registerVal16
		table.insert({}, registerVal15)
	end
	return {}
end

registerVal1 = DataSourceHelpers.ListSetup("PC.OptionPCGraphicsSceneResolution", __FUNC_232A_, true)
DataSources.OptionPCGraphicsSceneResolution = registerVal1
local function __FUNC_25B9_(arg0)
	local registerVal2 = Engine.GetHardwareProfileValueAsString("r_mode")
	local registerVal3, registerVal4 = string.match(registerVal2, "([%d]+)x([%d]+)")
	local registerVal5 = tonumber(Engine.GetHardwareProfileValueAsString("r_monitor"))
	local registerVal6 = Dvar.r_monitorCount:get()
	if registerVal6 < registerVal5 then
	end
	if 0.000000 == 0.000000 then
		registerVal6 = Dvar.r_monitor:get()
	end
	if registerVal6 == 0.000000 then
	end
	registerVal6 = Engine.GetAvailableRefreshRates(registerVal3, registerVal4, 1.000000)
	local registerVal7, registerVal8, registerVal9 = ipairs(registerVal6)
	for index10,value11 in registerVal7, registerVal8, registerVal9 do
		local registerVal14 = {}
		local registerVal15 = {}
		local registerVal16 = tonumber(value11)
		registerVal15.value = registerVal16
		registerVal15.valueDisplay = (value11 .. "hz")
		registerVal14.models = registerVal15
		table.insert({}, registerVal14)
	end
	return {}
end

registerVal1 = DataSourceHelpers.ListSetup("PC.OptionPCGraphicsRefreshRate", __FUNC_25B9_, true)
DataSources.OptionPCGraphicsRefreshRate = registerVal1
local function __FUNC_2885_(arg0)
	local registerVal2 = Dvar.r_videoMode:getDomainEnumStrings()
	local registerVal3 = {}
	registerVal3 = {"PLATFORM_DISPLAY_GAMMA_COMPUTER", "PLATFORM_DISPLAY_GAMMA_HDTV"}
	for index4=1.000000, 2.000000, 1.000000 do
		local registerVal10 = {}
		local registerVal11 = {}
		registerVal11.value = registerVal2[index4]
		registerVal11.valueDisplay = registerVal3[index4]
		registerVal10.models = registerVal11
		table.insert({}, registerVal10)
	end
	return {}
end

registerVal1 = DataSourceHelpers.ListSetup("PC.OptionPCGraphicsDisplayGamma", __FUNC_2885_, true)
DataSources.OptionPCGraphicsDisplayGamma = registerVal1
local function __FUNC_2A25_(arg0)
	local registerVal4 = {}
	local registerVal5 = {}
	registerVal5.value = "Off"
	registerVal5.valueDisplay = "PLATFORM_MOTION_BLUR_OFF"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.value = "Auto"
	registerVal5.valueDisplay = "PLATFORM_MOTION_BLUR_AUTO"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.value = "On"
	registerVal5.valueDisplay = "PLATFORM_MOTION_BLUR_ON"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	return {}
end

registerVal1 = DataSourceHelpers.ListSetup("PC.OptionPCGraphicsMotionBlur", __FUNC_2A25_, true)
DataSources.OptionPCGraphicsMotionBlur = registerVal1
local function __FUNC_2BBD_(arg0)
	local registerVal4 = {}
	local registerVal5 = {}
	registerVal5.label = "PLATFORM_DISPLAY_MODE"
	registerVal5.description = "PLATFORM_DISPLAY_MODE_DESC"
	registerVal5.profileVarName = "r_fullscreen"
	registerVal5.datasource = "OptionPCGraphicsDisplayMode"
	registerVal5.widgetType = "dropdown"
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.DependantDropdownProperties
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.label = "PLATFORM_MONITOR"
	registerVal5.description = "PLATFORM_MONITOR_DESC"
	registerVal5.profileVarName = "r_monitor"
	registerVal5.datasource = "OptionPCGraphicsMonitor"
	registerVal5.widgetType = "dropdown"
	local function __FUNC_370F_()
		local registerVal0 = Engine.GetHardwareProfileValueAsString("r_fullscreen")
		if registerVal0 ~= "0" then
		end
		return true
	end

	registerVal5.disabledFunction = __FUNC_370F_
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.DependantDropdownProperties
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.label = "PLATFORM_SCREEN_RESOLUTION"
	registerVal5.description = "PLATFORM_SCREEN_RESOLUTION_DESC"
	registerVal5.profileVarName = "r_mode"
	registerVal5.datasource = "OptionPCGraphicsScreenResolution"
	registerVal5.widgetType = "dropdown"
	local function __FUNC_37BE_()
		local registerVal0 = Engine.GetHardwareProfileValueAsString("r_fullscreen")
		if registerVal0 ~= "2" then
		end
		return true
	end

	registerVal5.disabledFunction = __FUNC_37BE_
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.DependantDropdownProperties
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.label = "PLATFORM_REFRESH_RATE"
	registerVal5.description = "PLATFORM_REFRESH_RATE_DESC"
	registerVal5.profileVarName = "r_refreshRate"
	registerVal5.datasource = "OptionPCGraphicsRefreshRate"
	registerVal5.widgetType = "dropdown"
	local function __FUNC_386E_()
		local registerVal0 = Engine.GetHardwareProfileValueAsString("r_fullscreen")
		if registerVal0 == "1" then
		end
		return true
	end

	registerVal5.disabledFunction = __FUNC_386E_
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.OptionsGenericDropdownProperties
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.label = "PLATFORM_SCENE_RESOLUTION_RATIO"
	registerVal5.description = "PLATFORM_SCENE_RESOLUTION_RATIO_DESC"
	registerVal5.profileVarName = "r_sceneResolutionMultiplier"
	registerVal5.datasource = "OptionPCGraphicsSceneResolution"
	registerVal5.widgetType = "dropdown"
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.DependantDropdownProperties
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.label = "PLATFORM_DISPLAY_GAMMA"
	registerVal5.description = "PLATFORM_DISPLAY_GAMMA_DESC"
	registerVal5.profileVarName = "r_videoMode"
	registerVal5.datasource = "OptionPCGraphicsDisplayGamma"
	registerVal5.widgetType = "dropdown"
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.OptionsGenericDropdownProperties
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.label = "PLATFORM_BRIGHTNESS"
	registerVal5.description = "PLATFORM_BRIGHTNESS_DESC"
	registerVal5.profileVarName = "r_sceneBrightness"
	registerVal5.profileType = "user"
	registerVal5.lowValue = -1.000000
	registerVal5.highValue = 1.000000
	registerVal5.widgetType = "slider"
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.OptionsGenericSliderProperties
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.label = "PLATFORM_FOV"
	registerVal5.description = "PLATFORM_FOV_DESC"
	registerVal5.profileVarName = "cg_fov_default"
	registerVal5.lowValue = 65.000000
	registerVal5.highValue = 120.000000
	registerVal5.useIntegerDisplay = 1.000000
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
	registerVal5.label = "PLATFORM_MAX_FPS"
	registerVal5.description = "PLATFORM_MAX_FPS_DESC"
	registerVal5.profileVarName = "com_maxfps"
	registerVal5.lowValue = 24.000000
	registerVal5.highValue = 240.000000
	registerVal5.useIntegerDisplay = 1.000000
	registerVal5.widgetType = "slider"
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.OptionsGenericSliderProperties
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.label = "PLATFORM_SYNC_EVERY_FRAME"
	registerVal5.description = "PLATFORM_VSYNC_DESC"
	registerVal5.profileVarName = "r_vsync"
	registerVal5.widgetType = "checkbox"
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.OptionsGenericCheckboxProperties
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.label = "PLATFORM_DRAW_FPS"
	registerVal5.description = "PLATFORM_DRAW_FPS_DESC"
	registerVal5.profileVarName = "com_drawFPS_PC"
	registerVal5.widgetType = "checkbox"
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.OptionsGenericCheckboxProperties
	table.insert({}, registerVal4)
	return {}
end

registerVal1 = DataSourceHelpers.ListSetup("PC.OptionGraphicsVideo", __FUNC_2BBD_, true)
DataSources.OptionGraphicsVideo = registerVal1
function DataSources.OptionGraphicsVideo.getWidgetTypeForItem(arg0, arg1, arg2)
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

local function __FUNC_3B25_(arg0)
	local registerVal2 = Engine.GetMaxTextureQuality()
	local registerVal5 = {}
	local registerVal6 = {}
	registerVal6.value = 3.000000
	registerVal6.valueDisplay = "PLATFORM_LOW"
	registerVal5.models = registerVal6
	table.insert({}, registerVal5)
	if registerVal2 <= 2.000000 then
		registerVal5 = {}
		registerVal6 = {}
		registerVal6.value = 2.000000
		registerVal6.valueDisplay = "PLATFORM_MEDIUM"
		registerVal5.models = registerVal6
		table.insert({}, registerVal5)
	end
	if registerVal2 <= 1.000000 then
		registerVal5 = {}
		registerVal6 = {}
		registerVal6.value = 1.000000
		registerVal6.valueDisplay = "PLATFORM_HIGH"
		registerVal5.models = registerVal6
		table.insert({}, registerVal5)
	end
	if registerVal2 <= 0.000000 then
		registerVal5 = {}
		registerVal6 = {}
		registerVal6.value = 0.000000
		registerVal6.valueDisplay = "PLATFORM_EXTRA"
		registerVal5.models = registerVal6
		table.insert({}, registerVal5)
	end
	return {}
end

registerVal1 = DataSourceHelpers.ListSetup("PC.OptionPCGraphicsTextureQuality", __FUNC_3B25_, true)
DataSources.OptionPCGraphicsTextureQuality = registerVal1
local function __FUNC_3D28_(arg0)
	local registerVal4 = {}
	local registerVal5 = {}
	registerVal5.value = 0.000000
	registerVal5.valueDisplay = "PLATFORM_LOW"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.value = 1.000000
	registerVal5.valueDisplay = "PLATFORM_MEDIUM"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.value = 2.000000
	registerVal5.valueDisplay = "PLATFORM_HIGH"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	return {}
end

registerVal1 = DataSourceHelpers.ListSetup("PC.OptionPCGraphicsTextureFiltering", __FUNC_3D28_, true)
DataSources.OptionPCGraphicsTextureFiltering = registerVal1
local function __FUNC_3E89_(arg0)
	local registerVal4 = {}
	local registerVal5 = {}
	registerVal5.value = 2.000000
	registerVal5.valueDisplay = "PLATFORM_LOW"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.value = 1.000000
	registerVal5.valueDisplay = "PLATFORM_MEDIUM"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.value = 0.000000
	registerVal5.valueDisplay = "PLATFORM_HIGH"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	return {}
end

registerVal1 = DataSourceHelpers.ListSetup("PC.OptionPCGraphicsMeshQuality", __FUNC_3E89_, true)
DataSources.OptionPCGraphicsMeshQuality = registerVal1
local function __FUNC_3FE9_(arg0)
	local registerVal2 = Engine.GetMaxShadowQuality()
	local registerVal5 = {}
	local registerVal6 = {}
	registerVal6.value = 3.000000
	registerVal6.valueDisplay = "PLATFORM_LOW"
	registerVal5.models = registerVal6
	table.insert({}, registerVal5)
	if registerVal2 <= 2.000000 then
		registerVal5 = {}
		registerVal6 = {}
		registerVal6.value = 2.000000
		registerVal6.valueDisplay = "PLATFORM_MEDIUM"
		registerVal5.models = registerVal6
		table.insert({}, registerVal5)
	end
	if registerVal2 <= 1.000000 then
		registerVal5 = {}
		registerVal6 = {}
		registerVal6.value = 1.000000
		registerVal6.valueDisplay = "PLATFORM_HIGH"
		registerVal5.models = registerVal6
		table.insert({}, registerVal5)
	end
	if registerVal2 <= 0.000000 then
		registerVal5 = {}
		registerVal6 = {}
		registerVal6.value = 0.000000
		registerVal6.valueDisplay = "PLATFORM_EXTRA"
		registerVal5.models = registerVal6
		table.insert({}, registerVal5)
	end
	return {}
end

registerVal1 = DataSourceHelpers.ListSetup("PC.OptionPCGraphicsShadowQuality", __FUNC_3FE9_, true)
DataSources.OptionPCGraphicsShadowQuality = registerVal1
local function __FUNC_41EB_(arg0)
	local registerVal4 = {}
	local registerVal5 = {}
	registerVal5.value = 0.000000
	registerVal5.valueDisplay = "PLATFORM_NONE"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.value = 1.000000
	registerVal5.valueDisplay = "PLATFORM_MEDIUM"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.value = 2.000000
	registerVal5.valueDisplay = "PLATFORM_HIGH"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	return {}
end

registerVal1 = DataSourceHelpers.ListSetup("PC.OptionPCGraphicsVolumetricQuality", __FUNC_41EB_, true)
DataSources.OptionPCGraphicsVolumetricQuality = registerVal1
local function __FUNC_434A_(arg0)
	local registerVal2 = Engine.GetGPUCount()
	local registerVal3 = {}
	registerVal3.None = "PLATFORM_NONE"
	registerVal3.Filmic SMAA 1x = "PLATFORM_FILMIC_SMAA_1x"
	registerVal3.Filmic SMAA T2x = "PLATFORM_FILMIC_SMAA_T2x"
	local registerVal4 = Dvar.r_aaTechnique:getDomainEnumStrings()
	local registerVal5, registerVal6, registerVal7 = ipairs(registerVal4)
	for index8,value9 in registerVal5, registerVal6, registerVal7 do
		if not registerVal3[value9] then
		end
		local registerVal13 = {}
		local registerVal14 = {}
		registerVal14.value = value9
		registerVal14.valueDisplay = value9
		registerVal13.models = registerVal14
		table.insert({}, registerVal13)
		if 1.000000 < registerVal2 and 3.000000 <= index8 then
		else
		end
	end
	return {}
end

registerVal1 = DataSourceHelpers.ListSetup("PC.OptionPCGraphicsAntiAliasing", __FUNC_434A_, true)
DataSources.OptionPCGraphicsAntiAliasing = registerVal1
local function __FUNC_4597_(arg0)
	local registerVal2 = Engine.GetMaxOITQuality()
	local registerVal5 = {}
	local registerVal6 = {}
	registerVal6.value = 0.000000
	registerVal6.valueDisplay = "PLATFORM_NONE"
	registerVal5.models = registerVal6
	table.insert({}, registerVal5)
	if registerVal2 <= 1.000000 then
		registerVal5 = {}
		registerVal6 = {}
		registerVal6.value = 8.000000
		registerVal6.valueDisplay = "PLATFORM_MEDIUM"
		registerVal5.models = registerVal6
		table.insert({}, registerVal5)
	end
	if registerVal2 <= 0.000000 then
		registerVal5 = {}
		registerVal6 = {}
		registerVal6.value = 16.000000
		registerVal6.valueDisplay = "PLATFORM_HIGH"
		registerVal5.models = registerVal6
		table.insert({}, registerVal5)
	end
	return {}
end

registerVal1 = DataSourceHelpers.ListSetup("PC.OptionPCGraphicsOIT", __FUNC_4597_, true)
DataSources.OptionPCGraphicsOIT = registerVal1
local function __FUNC_4749_(arg0, arg1, arg2)
	local registerVal4 = arg2:getModel()
	if registerVal4 then
		local registerVal5 = Engine.GetModel(registerVal4, "valueDisplay")
		if registerVal5 then
			local registerVal6 = Engine.GetModelValue(registerVal5)
		end
		local registerVal7 = Engine.GetModel(registerVal4, "value")
		if registerVal7 then
			local registerVal8 = Engine.GetModelValue(registerVal7)
		end
		if registerVal8 == 0.000000 then
			Engine.SetHardwareProfileValue("r_oit", 0.000000)
			Engine.SetVolumetricQuality(0.000000)
			CoD.PCUtil.VolumetricOptionIndex = 0.000000
		else
			Engine.SetHardwareProfileValue("r_oit", 1.000000)
		end
		registerVal8 = arg1:getModel()
		CoD.PCUtil.SetOptionValue(registerVal8, arg0, 8.000000)
		CoD.PCUtil.RefreshAllOptions(arg1, arg0)
	end
	return registerVal6
end

local function __FUNC_4A26_(arg0, arg1, arg2)
	local registerVal3 = CoD.PCUtil.OptionsDropdownRefresh(arg0, arg1, arg2)
	if registerVal3 == "PLATFORM_MEDIUM" then
		local registerVal4 = Engine.GetHardwareProfileValueAsString("r_oit")
		if registerVal4 ~= "1" then
		end
		if not true then
		end
	end
	return "PLATFORM_NONE"
end

local function __FUNC_4B7C_(arg0)
	local registerVal4 = {}
	local registerVal5 = {}
	registerVal5.value = 0.000000
	registerVal5.valueDisplay = "PLATFORM_UNLIMITED"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.value = 30.000000
	registerVal5.valueDisplay = "30"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.value = 60.000000
	registerVal5.valueDisplay = "60"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.value = 90.000000
	registerVal5.valueDisplay = "90"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.value = 120.000000
	registerVal5.valueDisplay = "120"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	return {}
end

local registerVal3 = DataSourceHelpers.ListSetup("PC.OptionPCGraphicsMaxFPS", __FUNC_4B7C_, true)
DataSources.OptionPCGraphicsMaxFPS = registerVal3
local function __FUNC_4D46_(arg0)
	local registerVal2 = Engine.GetGPUCount()
	local registerVal5 = {}
	local registerVal6 = {}
	registerVal6.value = "Disabled"
	registerVal6.valueDisplay = "MENU_DISABLED"
	registerVal5.models = registerVal6
	table.insert({}, registerVal5)
	if registerVal2 == 1.000000 then
		registerVal5 = {}
		registerVal6 = {}
		registerVal6.value = "GTAO Low Quality"
		registerVal6.valueDisplay = "PLATFORM_LOW"
		registerVal5.models = registerVal6
		table.insert({}, registerVal5)
		registerVal5 = {}
		registerVal6 = {}
		registerVal6.value = "GTAO Medium Quality"
		registerVal6.valueDisplay = "PLATFORM_MEDIUM"
		registerVal5.models = registerVal6
		table.insert({}, registerVal5)
		registerVal5 = {}
		registerVal6 = {}
		registerVal6.value = "GTAO High Quality"
		registerVal6.valueDisplay = "PLATFORM_HIGH"
		registerVal5.models = registerVal6
		table.insert({}, registerVal5)
		registerVal5 = {}
		registerVal6 = {}
		registerVal6.value = "GTAO Ultra Quality"
		registerVal6.valueDisplay = "PLATFORM_EXTRA"
		registerVal5.models = registerVal6
		table.insert({}, registerVal5)
	else
		registerVal5 = {}
		registerVal6 = {}
		registerVal6.value = "GTAO Ultra Quality"
		registerVal6.valueDisplay = "MENU_ENABLED"
		registerVal5.models = registerVal6
		table.insert({}, registerVal5)
	end
	return {}
end

registerVal3 = DataSourceHelpers.ListSetup("PC.OptionPCGraphicsAmbientOcclusion", __FUNC_4D46_, true)
DataSources.OptionPCGraphicsAmbientOcclusion = registerVal3
local function __FUNC_5029_(arg0)
	local registerVal4 = {}
	local registerVal5 = {}
	registerVal5.label = "PLATFORM_TEXTURE_QUALITY"
	registerVal5.description = "PLATFORM_TEXTURE_QUALITY_DESC"
	registerVal5.profileVarName = "r_picmip"
	registerVal5.datasource = "OptionPCGraphicsTextureQuality"
	registerVal5.widgetType = "dropdown"
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.OptionsGenericDropdownProperties
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.label = "PLATFORM_TEXTURE_FILTERING"
	registerVal5.description = "PLATFORM_TEXTURE_FILTERING_DESC"
	registerVal5.profileVarName = "r_texFilterQuality"
	registerVal5.datasource = "OptionPCGraphicsTextureFiltering"
	registerVal5.widgetType = "dropdown"
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.OptionsGenericDropdownProperties
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.label = "PLATFORM_MESH_QUALITY"
	registerVal5.description = "PLATFORM_MESH_QUALITY_DESC"
	registerVal5.profileVarName = "r_modelLodLimit"
	registerVal5.datasource = "OptionPCGraphicsMeshQuality"
	registerVal5.widgetType = "dropdown"
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.OptionsGenericDropdownProperties
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.widgetType = "spacer"
	registerVal5.height = 32.000000
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.label = "PLATFORM_SHADOW_MAP_QUALITY"
	registerVal5.description = "PLATFORM_SHADOW_MAP_QUALITY_DESC"
	registerVal5.datasource = "OptionPCGraphicsShadowQuality"
	registerVal5.widgetType = "dropdown"
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.ShadowDropdownProperties
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.label = "PLATFORM_DYNAMIC_SHADOWS"
	registerVal5.description = "PLATFORM_DYNAMIC_SHADOWS_DESC"
	registerVal5.profileVarName = "r_lightingSunShadowDisableDynamicDraw"
	registerVal5.lowValue = 1.000000
	registerVal5.highValue = 0.000000
	registerVal5.widgetType = "checkbox"
	registerVal4.models = registerVal5
	registerVal5 = {}
	local function __FUNC_5CA4_(arg0, arg1)
		local registerVal2 = CoD.PCUtil.OptionsCheckboxAction(arg0, arg1)
		Engine.SetHardwareProfileValue("r_deferredForceShadowNeverUpdate", registerVal2)
	end

	registerVal5.checkboxAction = __FUNC_5CA4_
	registerVal4.properties = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.label = "PLATFORM_SUBSURFACE_SCATTERING"
	registerVal5.description = "PLATFORM_SUBSURFACE_SCATTERING_DESC"
	registerVal5.profileVarName = "r_sssblurEnable"
	registerVal5.widgetType = "checkbox"
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.OptionsGenericCheckboxProperties
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.label = "PLATFORM_ORDER_INDEPENDENT_TRANSPARENCY"
	registerVal5.description = "PLATFORM_ORDER_INDEPENDENT_TRANSPARENCY_DESC"
	registerVal5.profileVarName = "r_OIT_MaxEntries"
	registerVal5.datasource = "OptionPCGraphicsOIT"
	registerVal5.widgetType = "dropdown"
	registerVal4.models = registerVal5
	registerVal5 = {}
	registerVal5.dropDownItemSelected = __FUNC_4749_
	registerVal5.dropDownRefresh = __FUNC_4A26_
	registerVal5.dropDownCurrentValue = CoD.PCUtil.OptionsDropdownCurrentValue
	registerVal4.properties = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.label = "PLATFORM_VOLUMETRIC_LIGHTING"
	registerVal5.description = "PLATFORM_VOLUMETRIC_LIGHTING_DESC"
	registerVal5.datasource = "OptionPCGraphicsVolumetricQuality"
	registerVal5.widgetType = "dropdown"
	local function __FUNC_5DAB_()
		local registerVal0 = Engine.GetHardwareProfileValueAsString("r_oit")
		if registerVal0 ~= "0" then
		end
		return true
	end

	registerVal5.disabledFunction = __FUNC_5DAB_
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.VolumetricDropdownProperties
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.widgetType = "spacer"
	registerVal5.height = 32.000000
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.label = "PLATFORM_ANTIALIASING"
	registerVal5.description = "PLATFORM_ANTIALIASING_DESC"
	registerVal5.profileVarName = "r_aaTechnique"
	registerVal5.datasource = "OptionPCGraphicsAntiAliasing"
	registerVal5.widgetType = "dropdown"
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.OptionsGenericDropdownProperties
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.label = "PLATFORM_AMBIENT_OCCLUSION"
	registerVal5.description = "PLATFORM_AMBIENT_OCCLUSION_DESC"
	registerVal5.profileVarName = "r_ssaoTechnique"
	registerVal5.datasource = "OptionPCGraphicsAmbientOcclusion"
	registerVal5.widgetType = "dropdown"
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.OptionsGenericDropdownProperties
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.label = "PLATFORM_MOTION_BLUR"
	registerVal5.description = "PLATFORM_MOTION_BLUR_DESC"
	registerVal5.profileVarName = "r_motionBlurMode"
	registerVal5.datasource = "OptionPCGraphicsMotionBlur"
	registerVal5.widgetType = "dropdown"
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.OptionsGenericDropdownProperties
	table.insert({}, registerVal4)
	return {}
end

registerVal3 = DataSourceHelpers.ListSetup("PC.OptionGraphicsAdvanced", __FUNC_5029_, true)
DataSources.OptionGraphicsAdvanced = registerVal3
function DataSources.OptionGraphicsAdvanced.getWidgetTypeForItem(arg0, arg1, arg2)
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

local function __FUNC_6059_(arg0)
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
	registerVal5.tabName = "PLATFORM_VIDEO_CAPS"
	registerVal5.tabWidget = "CoD.StartMenu_Options_PC_Graphics_Video"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.tabName = "PLATFORM_ADVANCED_CAPS"
	registerVal5.tabWidget = "CoD.StartMenu_Options_PC_Graphics_Advanced"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.tabName = "MENU_GAME_CAPS"
	registerVal5.tabWidget = "CoD.StartMenu_Options_PC_Graphics_Game"
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

registerVal3 = DataSourceHelpers.ListSetup("PC.OptionGraphicsCategories", __FUNC_6059_, true)
DataSources.OptionGraphicsCategories = registerVal3
local function __FUNC_6377_(arg0, arg1)
	Engine.SyncHardwareProfileWithDvars()
	CoD.PCUtil.FreeOptionsDirtyModel(arg1)
	local registerVal3 = Engine.GetShadowQuality()
	CoD.PCUtil.ShadowOptionIndex = registerVal3
	registerVal3 = Engine.GetVolumetricQuality()
	CoD.PCUtil.VolumetricOptionIndex = registerVal3
	CoD.PCUtil.SaveCurrentGraphicsOptions()
end

local function __FUNC_6550_(arg0, arg1)
	arg0.categoryFrame:setForceMouseEventDispatch(true)
end

local function __FUNC_65CF_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("StartMenu_Options_Graphics_PC")
	if __FUNC_6377_ then
		__FUNC_6377_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "StartMenu_Options_Graphics_PC.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.Background = registerVal3
	local registerVal4 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4.titleLabel:setText(Engine.Localize("MENU_GRAPHICS_CAPS"))
	registerVal4.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_GRAPHICS_CAPS"))
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
	registerVal8.grid:setDataSource("OptionGraphicsCategories")
	registerVal8.grid:setWidgetType(CoD.paintshopTabWidget)
	registerVal8.grid:setHorizontalCount(7.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.Tabs = registerVal8
	local registerVal9 = LUI.UIFrame.new(registerVal1, arg0, 0.000000, 0.000000, false)
	registerVal9:setLeftRight(true, false, 64.000000, 1216.000000)
	registerVal9:setTopBottom(true, false, 134.220000, 657.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.categoryFrame = registerVal9
	local function __FUNC_74B4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:changeFrameWidget(registerVal1)
		end
	end

	registerVal9:linkToElementModel(registerVal8.grid, "tabWidget", true, __FUNC_74B4_)
	local function __FUNC_7552_(arg0, arg1)
		ShowHeaderIconOnly(registerVal1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_7552_)
	local function __FUNC_75E5_(arg0, arg1, arg2, arg3)
		local registerVal4 = ShouldOpenGraphicsConfirm(arg1, arg0, arg2)
		if registerVal4 then
			OpenSystemOverlay(registerVal1, arg1, arg2, "ConfirmPCGraphicsChange", nil)
			return true
		else
			GoBack(registerVal1, arg2)
			return true
		end
	end

	local function __FUNC_76DB_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_75E5_, __FUNC_76DB_, false)
	local function __FUNC_77D5_(arg0, arg1, arg2, arg3)
		local registerVal4 = ShouldOpenGraphicsConfirm(arg1, arg0, arg2)
		if registerVal4 then
			OpenSystemOverlay(registerVal1, arg1, arg2, "ConfirmPCGraphicsChange", nil)
			return true
		else
			CloseStartMenu(arg1, arg2)
			return true
		end
	end

	local function __FUNC_78D3_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_DISMISS_MENU")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_START, "M", __FUNC_77D5_, __FUNC_78D3_, false)
	local function __FUNC_79CE_(arg0, arg1, arg2, arg3)
		OpenPCApplyGraphicsPopup(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_7A36_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_APPLY")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "F", __FUNC_79CE_, __FUNC_7A36_, false)
	local function __FUNC_7B32_(arg0, arg1, arg2, arg3)
		OpenSystemOverlay(registerVal1, arg1, arg2, "ResetPCGraphics", nil)
		return true
	end

	local function __FUNC_7BB4_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "PLATFORM_RESET_TO_DEFAULT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "R", __FUNC_7B32_, __FUNC_7BB4_, false)
	local function __FUNC_7CC3_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_7CF4_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_7CC3_, __FUNC_7CF4_, false)
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
	local function __FUNC_7DF2_(arg1)
		arg1.MenuFrame:close()
		arg1.StartMenulineGraphicsOptions0:close()
		arg1.Tabs:close()
		arg1.categoryFrame:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "StartMenu_Options_Graphics_PC.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_7DF2_)
	if __FUNC_6550_ then
		__FUNC_6550_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.StartMenu_Options_Graphics_PC = __FUNC_65CF_
