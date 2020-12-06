-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.StartMenu.StartMenu_lineGraphics_Options")
require("ui.uieditor.widgets.StartMenu.StartMenu_lineGraphics2")
require("ui.uieditor.widgets.TabbedWidgets.basicTabList")
require("ui.uieditor.widgets.TabbedWidgets.paintshopTabWidget")
require("ui.uieditor.widgets.StartMenu.StartMenu_Options_PC_LookControls")
require("ui.uieditor.widgets.StartMenu.StartMenu_Options_PC_MoveControls")
require("ui.uieditor.widgets.StartMenu.StartMenu_Options_PC_CombatControls")
require("ui.uieditor.widgets.StartMenu.StartMenu_Options_PC_InteractControls")
require("ui.uieditor.widgets.StartMenu.StartMenu_Options_PC_GamepadControls")
require("ui.uieditor.widgets.StartMenu.StartMenu_Options_CheckBoxOption")
require("ui.uieditor.widgets.StartMenu.Startmenu_Options_SliderBar")
require("ui.uieditor.widgets.StartMenu.StartMenu_Options_GamepadLayoutOption")
require("ui.uieditor.widgets.PC.Utility.VerticalListSpacer")
local function __FUNC_839_(arg0)
	local registerVal2 = Engine.GetPrimaryController()
	if arg0 == registerVal2 then
		local registerVal5 = {}
		local registerVal6 = {}
		registerVal6.tabIcon = CoD.buttonStrings.shoulderl
		registerVal5.models = registerVal6
		registerVal6 = {}
		registerVal6.m_mouseDisabled = true
		registerVal5.properties = registerVal6
		table.insert({}, registerVal5)
		registerVal5 = {}
		registerVal6 = {}
		registerVal6.tabName = "MENU_LOOK_CAPS"
		registerVal6.tabWidget = "CoD.StartMenu_Options_PC_LookControls"
		registerVal5.models = registerVal6
		table.insert({}, registerVal5)
		registerVal5 = {}
		registerVal6 = {}
		registerVal6.tabName = "MENU_MOVE_CAPS"
		registerVal6.tabWidget = "CoD.StartMenu_Options_PC_MoveControls"
		registerVal5.models = registerVal6
		table.insert({}, registerVal5)
		registerVal5 = {}
		registerVal6 = {}
		registerVal6.tabName = "MENU_COMBAT_CAPS"
		registerVal6.tabWidget = "CoD.StartMenu_Options_PC_CombatControls"
		registerVal5.models = registerVal6
		table.insert({}, registerVal5)
		registerVal5 = {}
		registerVal6 = {}
		registerVal6.tabName = "MENU_INTERACT_CAPS"
		registerVal6.tabWidget = "CoD.StartMenu_Options_PC_InteractControls"
		registerVal5.models = registerVal6
		table.insert({}, registerVal5)
		registerVal5 = {}
		registerVal6 = {}
		registerVal6.tabName = "PLATFORM_GAMEPAD_CAPS"
		registerVal6.tabWidget = "CoD.StartMenu_Options_PC_GamepadControls"
		registerVal5.models = registerVal6
		table.insert({}, registerVal5)
		registerVal5 = {}
		registerVal6 = {}
		registerVal6.tabIcon = CoD.buttonStrings.shoulderr
		registerVal5.models = registerVal6
		registerVal6 = {}
		registerVal6.m_mouseDisabled = true
		registerVal5.properties = registerVal6
		table.insert({}, registerVal5)
	else
		registerVal5 = {}
		registerVal6 = {}
		registerVal6.tabName = "PLATFORM_GAMEPAD_CAPS"
		registerVal6.tabWidget = "CoD.StartMenu_Options_PC_GamepadControls"
		registerVal5.models = registerVal6
		table.insert({}, registerVal5)
	end
	return {}
end

local registerVal1 = DataSourceHelpers.ListSetup("PC.OptionKeyBindingCategories", __FUNC_839_, true)
DataSources.OptionKeyBindingCategories = registerVal1
local function __FUNC_CB8_(arg0)
	if CoD.perController[arg0].controlsCategoryPC then
		if CoD.perController[arg0].controlsCategoryPC == "look" then
			local registerVal6 = {}
			local registerVal7 = {}
			registerVal7.label = "MENU_LOOK_UP"
			registerVal7.description = ""
			registerVal7.command = "+lookup"
			registerVal7.bindIndex = CoD.BIND_PLAYER
			registerVal6.models = registerVal7
			table.insert({}, registerVal6)
			registerVal6 = {}
			registerVal7 = {}
			registerVal7.label = "MENU_LOOK_DOWN"
			registerVal7.description = ""
			registerVal7.command = "+lookdown"
			registerVal7.bindIndex = CoD.BIND_PLAYER
			registerVal6.models = registerVal7
			table.insert({}, registerVal6)
			registerVal6 = {}
			registerVal7 = {}
			registerVal7.label = "MENU_TURN_LEFT"
			registerVal7.description = ""
			registerVal7.command = "+left"
			registerVal7.bindIndex = CoD.BIND_PLAYER
			registerVal6.models = registerVal7
			table.insert({}, registerVal6)
			registerVal6 = {}
			registerVal7 = {}
			registerVal7.label = "MENU_TURN_RIGHT"
			registerVal7.description = ""
			registerVal7.command = "+right"
			registerVal7.bindIndex = CoD.BIND_PLAYER
			registerVal6.models = registerVal7
			table.insert({}, registerVal6)
			registerVal6 = {}
			registerVal7 = {}
			registerVal7.label = "PLATFORM_MOUSE_LOOK"
			registerVal7.description = "PLATFORM_MOUSE_LOOK_DESC"
			registerVal7.command = "+mlook"
			registerVal7.bindIndex = CoD.BIND_PLAYER
			registerVal6.models = registerVal7
			table.insert({}, registerVal6)
			registerVal6 = {}
			registerVal7 = {}
			registerVal7.label = "PLATFORM_CENTER_VIEW"
			registerVal7.description = "PLATFORM_CENTER_VIEW_DESC"
			registerVal7.command = "centerview"
			registerVal7.bindIndex = CoD.BIND_PLAYER
			registerVal6.models = registerVal7
			table.insert({}, registerVal6)
			registerVal6 = {}
			registerVal7 = {}
			registerVal7.widgetType = "spacer"
			registerVal7.height = 64.000000
			registerVal6.models = registerVal7
			table.insert({}, registerVal6)
			registerVal6 = {}
			registerVal7 = {}
			registerVal7.label = "PLATFORM_FRAME_SMOOTHING"
			registerVal7.description = "PLATFORM_FRAME_SMOOTHING_DESC"
			registerVal7.profileVarName = "com_smoothFrames"
			registerVal7.widgetType = "checkbox"
			registerVal6.models = registerVal7
			registerVal6.properties = CoD.PCUtil.OptionsGenericCheckboxProperties
			table.insert({}, registerVal6)
			registerVal6 = {}
			registerVal7 = {}
			registerVal7.label = "PLATFORM_INVERT_MOUSE"
			registerVal7.description = "PLATFORM_INVERT_MOUSE_DESC"
			registerVal7.profileVarName = "m_pitch"
			registerVal7.lowValue = 0.022000
			registerVal7.highValue = -0.022000
			registerVal7.widgetType = "checkbox"
			registerVal6.models = registerVal7
			registerVal6.properties = CoD.PCUtil.OptionsGenericCheckboxProperties
			table.insert({}, registerVal6)
			registerVal6 = {}
			registerVal7 = {}
			registerVal7.label = "PLATFORM_FREE_LOOK"
			registerVal7.description = "PLATFORM_FREE_LOOK_DESC"
			registerVal7.profileVarName = "cl_freelook"
			registerVal7.widgetType = "checkbox"
			registerVal6.models = registerVal7
			registerVal6.properties = CoD.PCUtil.OptionsGenericCheckboxProperties
			table.insert({}, registerVal6)
			registerVal6 = {}
			registerVal7 = {}
			registerVal7.label = "PLATFORM_MOUSE_SENSITIVITY"
			registerVal7.description = "PLATFORM_MOUSE_SENSITIVITY_DESC"
			registerVal7.profileVarName = "m_mouseSensitivity"
			registerVal7.lowValue = 0.100000
			registerVal7.highValue = 30.000000
			registerVal7.widgetType = "slider"
			registerVal6.models = registerVal7
			registerVal6.properties = CoD.PCUtil.OptionsGenericSliderProperties
			table.insert({}, registerVal6)
			registerVal6 = {}
			registerVal7 = {}
			registerVal7.label = "PLATFORM_MOUSE_ACCELERATION"
			registerVal7.description = "PLATFORM_MOUSE_ACCELERATION_DESC"
			registerVal7.profileVarName = "m_mouseAcceleration"
			registerVal7.lowValue = 0.000000
			registerVal7.highValue = 1.000000
			registerVal7.widgetType = "slider"
			registerVal6.models = registerVal7
			registerVal6.properties = CoD.PCUtil.OptionsGenericSliderProperties
			table.insert({}, registerVal6)
			registerVal6 = {}
			registerVal7 = {}
			registerVal7.label = "PLATFORM_MOUSE_FILTER"
			registerVal7.description = "PLATFORM_MOUSE_FILTER_DESC"
			registerVal7.profileVarName = "m_mouseFilter"
			registerVal7.lowValue = 0.000000
			registerVal7.highValue = 10.000000
			registerVal7.widgetType = "slider"
			registerVal6.models = registerVal7
			registerVal6.properties = CoD.PCUtil.OptionsGenericSliderProperties
			table.insert({}, registerVal6)
		else
			if CoD.perController[arg0].controlsCategoryPC == "move" then
				registerVal6 = {}
				registerVal7 = {}
				registerVal7.label = "MENU_FORWARD"
				registerVal7.description = ""
				registerVal7.command = "+forward"
				registerVal7.bindIndex = CoD.BIND_PLAYER
				registerVal6.models = registerVal7
				table.insert({}, registerVal6)
				registerVal6 = {}
				registerVal7 = {}
				registerVal7.label = "MENU_BACKPEDAL"
				registerVal7.description = ""
				registerVal7.command = "+back"
				registerVal7.bindIndex = CoD.BIND_PLAYER
				registerVal6.models = registerVal7
				table.insert({}, registerVal6)
				registerVal6 = {}
				registerVal7 = {}
				registerVal7.label = "MENU_MOVE_LEFT"
				registerVal7.description = ""
				registerVal7.command = "+moveleft"
				registerVal7.bindIndex = CoD.BIND_PLAYER
				registerVal6.models = registerVal7
				table.insert({}, registerVal6)
				registerVal6 = {}
				registerVal7 = {}
				registerVal7.label = "MENU_MOVE_RIGHT"
				registerVal7.description = ""
				registerVal7.command = "+moveright"
				registerVal7.bindIndex = CoD.BIND_PLAYER
				registerVal6.models = registerVal7
				table.insert({}, registerVal6)
				registerVal6 = {}
				registerVal7 = {}
				registerVal7.label = "MENU_STANDJUMP"
				registerVal7.description = ""
				registerVal7.command = "+gostand"
				registerVal7.bindIndex = CoD.BIND_PLAYER
				registerVal6.models = registerVal7
				table.insert({}, registerVal6)
				registerVal6 = {}
				registerVal7 = {}
				registerVal7.label = "PLATFORM_GO_TO_CROUCH"
				registerVal7.description = "PLATFORM_GO_TO_CROUCH_DESC"
				registerVal7.command = "gocrouch"
				registerVal7.bindIndex = CoD.BIND_PLAYER
				registerVal6.models = registerVal7
				table.insert({}, registerVal6)
				registerVal6 = {}
				registerVal7 = {}
				registerVal7.label = "PLATFORM_GO_TO_PRONE"
				registerVal7.description = "PLATFORM_GO_TO_PRONE_DESC"
				registerVal7.command = "goprone"
				registerVal7.bindIndex = CoD.BIND_PLAYER
				registerVal6.models = registerVal7
				table.insert({}, registerVal6)
				registerVal6 = {}
				registerVal7 = {}
				registerVal7.label = "PLATFORM_TOGGLE_CROUCH"
				registerVal7.description = "PLATFORM_TOGGLE_CROUCH_DESC"
				registerVal7.command = "togglecrouch"
				registerVal7.bindIndex = CoD.BIND_PLAYER
				registerVal6.models = registerVal7
				table.insert({}, registerVal6)
				registerVal6 = {}
				registerVal7 = {}
				registerVal7.label = "PLATFORM_TOGGLE_PRONE"
				registerVal7.description = "PLATFORM_TOGGLE_PRONE_DESC"
				registerVal7.command = "toggleprone"
				registerVal7.bindIndex = CoD.BIND_PLAYER
				registerVal6.models = registerVal7
				table.insert({}, registerVal6)
				registerVal6 = {}
				registerVal7 = {}
				registerVal7.label = "PLATFORM_CROUCH"
				registerVal7.description = "PLATFORM_CROUCH_DESC"
				registerVal7.command = "+movedown"
				registerVal7.bindIndex = CoD.BIND_PLAYER
				registerVal6.models = registerVal7
				table.insert({}, registerVal6)
				registerVal6 = {}
				registerVal7 = {}
				registerVal7.label = "PLATFORM_PRONE"
				registerVal7.description = "PLATFORM_PRONE_DESC"
				registerVal7.command = "+prone"
				registerVal7.bindIndex = CoD.BIND_PLAYER
				registerVal6.models = registerVal7
				table.insert({}, registerVal6)
				registerVal6 = {}
				registerVal7 = {}
				registerVal7.label = "MENU_SLIDE"
				registerVal7.description = ""
				registerVal7.command = "slide"
				registerVal7.bindIndex = CoD.BIND_PLAYER
				registerVal6.models = registerVal7
				table.insert({}, registerVal6)
				registerVal6 = {}
				registerVal7 = {}
				registerVal7.label = "PLATFORM_CHANGE_STANCE"
				registerVal7.description = ""
				registerVal7.command = "+stance"
				registerVal7.bindIndex = CoD.BIND_PLAYER
				registerVal6.models = registerVal7
				table.insert({}, registerVal6)
				registerVal6 = {}
				registerVal7 = {}
				registerVal7.label = "PLATFORM_STRAFE"
				registerVal7.description = "PLATFORM_STRAFE_DESC"
				registerVal7.command = "+strafe"
				registerVal7.bindIndex = CoD.BIND_PLAYER
				registerVal6.models = registerVal7
				table.insert({}, registerVal6)
			else
				if CoD.perController[arg0].controlsCategoryPC == "combat" then
					registerVal6 = {}
					registerVal7 = {}
					registerVal7.label = "MENU_ATTACK"
					registerVal7.description = ""
					registerVal7.command = "+attack"
					registerVal7.bindIndex = CoD.BIND_PLAYER
					registerVal6.models = registerVal7
					table.insert({}, registerVal6)
					registerVal6 = {}
					registerVal7 = {}
					registerVal7.label = "MENU_AIM_DOWN_THE_SIGHT"
					registerVal7.description = "PLATFORM_ADS_DESC"
					registerVal7.command = "+speed_throw"
					registerVal7.bindIndex = CoD.BIND_PLAYER
					registerVal6.models = registerVal7
					table.insert({}, registerVal6)
					registerVal6 = {}
					registerVal7 = {}
					registerVal7.label = "MENU_TOGGLE_AIM_DOWN_THE_SIGHT"
					registerVal7.description = "PLATFORM_TOGGLE_ADS_DESC"
					registerVal7.command = "+toggleads_throw"
					registerVal7.bindIndex = CoD.BIND_PLAYER
					registerVal6.models = registerVal7
					table.insert({}, registerVal6)
					registerVal6 = {}
					registerVal7 = {}
					registerVal7.label = "MENU_MELEE_ATTACK"
					registerVal7.description = ""
					registerVal7.command = "+melee"
					registerVal7.bindIndex = CoD.BIND_PLAYER
					registerVal6.models = registerVal7
					table.insert({}, registerVal6)
					registerVal6 = {}
					registerVal7 = {}
					registerVal7.label = "MENU_SWITCH_WEAPON"
					registerVal7.description = ""
					registerVal7.command = "+weapnext_inventory"
					registerVal7.bindIndex = CoD.BIND_PLAYER
					registerVal6.models = registerVal7
					table.insert({}, registerVal6)
					registerVal6 = {}
					registerVal7 = {}
					registerVal7.label = "PLATFORM_SWITCH_WEAPON"
					registerVal7.description = ""
					registerVal7.command = "weapprev"
					registerVal7.bindIndex = CoD.BIND_PLAYER
					registerVal6.models = registerVal7
					table.insert({}, registerVal6)
					registerVal6 = {}
					registerVal7 = {}
					registerVal7.label = "PLATFORM_NEXT_WEAPON"
					registerVal7.description = ""
					registerVal7.command = "weapnext"
					registerVal7.bindIndex = CoD.BIND_PLAYER
					registerVal6.models = registerVal7
					table.insert({}, registerVal6)
					registerVal6 = {}
					registerVal7 = {}
					registerVal7.label = "PLATFORM_ACTIVATE_HERO"
					registerVal7.description = "PLATFORM_ACTIVATE_HERO_DESC"
					registerVal7.command = "+weaphero"
					registerVal7.bindIndex = CoD.BIND_PLAYER
					registerVal6.models = registerVal7
					table.insert({}, registerVal6)
					registerVal6 = {}
					registerVal7 = {}
					registerVal7.label = "MENU_RELOAD_WEAPON"
					registerVal7.description = ""
					registerVal7.command = "+reload"
					registerVal7.bindIndex = CoD.BIND_PLAYER
					registerVal6.models = registerVal7
					table.insert({}, registerVal6)
					registerVal6 = {}
					registerVal7 = {}
					registerVal7.label = "MENU_SPRINT"
					registerVal7.description = ""
					registerVal7.command = "+sprint"
					registerVal7.bindIndex = CoD.BIND_PLAYER
					registerVal6.models = registerVal7
					table.insert({}, registerVal6)
					registerVal6 = {}
					registerVal7 = {}
					registerVal7.label = "MENU_SPRINT_HOLD_BREATH"
					registerVal7.description = ""
					registerVal7.command = "+breath_sprint"
					registerVal7.bindIndex = CoD.BIND_PLAYER
					registerVal6.models = registerVal7
					table.insert({}, registerVal6)
					registerVal6 = {}
					registerVal7 = {}
					registerVal7.label = "MENU_STEADY_SNIPER_RIFLE"
					registerVal7.description = ""
					registerVal7.command = "+holdbreath"
					registerVal7.bindIndex = CoD.BIND_PLAYER
					registerVal6.models = registerVal7
					table.insert({}, registerVal6)
					registerVal6 = {}
					registerVal7 = {}
					registerVal7.label = "PLATFORM_THROW_PRIMARY"
					registerVal7.description = ""
					registerVal7.command = "+frag"
					registerVal7.bindIndex = CoD.BIND_PLAYER
					registerVal6.models = registerVal7
					table.insert({}, registerVal6)
					registerVal6 = {}
					registerVal7 = {}
					registerVal7.label = "PLATFORM_THROW_SECONDARY"
					registerVal7.description = ""
					registerVal7.command = "+smoke"
					registerVal7.bindIndex = CoD.BIND_PLAYER
					registerVal6.models = registerVal7
					table.insert({}, registerVal6)
				else
					if CoD.perController[arg0].controlsCategoryPC == "interact" then
						local registerVal10 = {}
						local registerVal11 = {}
						registerVal11.label = "MENU_USE"
						registerVal11.description = ""
						registerVal11.command = "+activate"
						registerVal11.bindIndex = CoD.BIND_PLAYER
						registerVal10.models = registerVal11
						table.insert({}, registerVal10)
						registerVal10 = {}
						registerVal11 = {}
						registerVal11.label = "PLATFORM_SPECIAL_ACTION_1"
						registerVal11.description = "PLATFORM_SPECIAL_ACTION_1_DESC"
						registerVal11.command = "+actionSlot 1"
						registerVal11.bindIndex = CoD.BIND_PLAYER
						registerVal10.models = registerVal11
						table.insert({}, registerVal10)
						registerVal10 = {}
						registerVal11 = {}
						registerVal11.label = "PLATFORM_SPECIAL_ACTION_2"
						registerVal11.description = "PLATFORM_SPECIAL_ACTION_2_DESC"
						registerVal11.command = "+actionSlot 2"
						registerVal11.bindIndex = CoD.BIND_PLAYER
						registerVal10.models = registerVal11
						table.insert({}, registerVal10)
						registerVal10 = {}
						registerVal11 = {}
						registerVal11.label = "PLATFORM_SPECIAL_ACTION_4"
						registerVal11.description = "PLATFORM_SPECIAL_ACTION_4_DESC"
						registerVal11.command = "+actionSlot 4"
						registerVal11.bindIndex = CoD.BIND_PLAYER
						registerVal10.models = registerVal11
						table.insert({}, registerVal10)
						registerVal10 = {}
						registerVal11 = {}
						registerVal11.label = "PLATFORM_SPECIAL_ACTION_3"
						registerVal11.description = "PLATFORM_SPECIAL_ACTION_3_DESC"
						registerVal11.command = "+actionslot 3"
						registerVal11.bindIndex = CoD.BIND_PLAYER
						registerVal10.models = registerVal11
						table.insert({}, registerVal10)
						registerVal10 = {}
						registerVal11 = {}
						registerVal11.label = "MENU_SCREENSHOT"
						registerVal11.description = ""
						registerVal11.command = "screenshotjpeg"
						registerVal11.bindIndex = CoD.BIND_PLAYER
						registerVal10.models = registerVal11
						table.insert({}, registerVal10)
						registerVal10 = {}
						registerVal11 = {}
						registerVal11.label = "PLATFORM_SCOREBOARD_LC"
						registerVal11.description = ""
						registerVal11.command = "+scores"
						registerVal11.bindIndex = CoD.BIND_PLAYER
						registerVal10.models = registerVal11
						table.insert({}, registerVal10)
						registerVal10 = {}
						registerVal11 = {}
						registerVal11.label = "PLATFORM_SCOREBOARD_TOGGLE"
						registerVal11.description = ""
						registerVal11.command = "togglescores"
						registerVal11.bindIndex = CoD.BIND_PLAYER
						registerVal10.models = registerVal11
						table.insert({}, registerVal10)
						registerVal10 = {}
						registerVal11 = {}
						registerVal11.label = "MENU_VOICE_CHAT_BUTTON"
						registerVal11.description = ""
						registerVal11.command = "+talk"
						registerVal11.bindIndex = CoD.BIND_PLAYER
						registerVal10.models = registerVal11
						table.insert({}, registerVal10)
						registerVal10 = {}
						registerVal11 = {}
						registerVal11.label = "MENU_CHAT"
						registerVal11.description = "PLATFORM_CHAT_DESC"
						registerVal11.command = "chatmodepublic"
						registerVal11.bindIndex = CoD.BIND_PLAYER
						registerVal10.models = registerVal11
						table.insert({}, registerVal10)
						registerVal10 = {}
						registerVal11 = {}
						registerVal11.label = "MENU_TEAM_CHAT"
						registerVal11.description = "PLATFORM_CHAT_DESC"
						registerVal11.command = "chatmodeteam"
						registerVal11.bindIndex = CoD.BIND_PLAYER
						registerVal10.models = registerVal11
						table.insert({}, registerVal10)
						registerVal10 = {}
						registerVal11 = {}
						registerVal11.label = "PLATFORM_PARTY_CHAT"
						registerVal11.description = "PLATFORM_CHAT_DESC"
						registerVal11.command = "chatmodeparty"
						registerVal11.bindIndex = CoD.BIND_PLAYER
						registerVal10.models = registerVal11
						table.insert({}, registerVal10)
					end
				end
			end
		end
	end
	return {}
end

local registerVal2 = DataSourceHelpers.ListSetup("PC.OptionKeyBindings", __FUNC_CB8_, true)
DataSources.OptionKeyBindings = registerVal2
function DataSources.OptionKeyBindings.getWidgetTypeForItem(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModel(arg1, "widgetType")
	if arg1 and registerVal3 then
		local registerVal4 = Engine.GetModelValue(registerVal3)
		if registerVal4 == "checkbox" then
			return CoD.StartMenu_Options_CheckBoxOption
		else
			if registerVal4 == "slider" then
				return CoD.StartMenu_Options_SliderBar
			else
				if registerVal4 == "spacer" then
					return CoD.VerticalListSpacer
				end
			end
		end
	end
	return nil
end

local function __FUNC_2A1B_(arg0)
	local registerVal1 = Engine.GamepadsConnectedPortMapping()
	local function __FUNC_2B89_(arg0, arg1)
		if arg0.models.value >= arg1.models.value then
		end
		return true
	end

	local registerVal4, registerVal5, registerVal6 = pairs(registerVal1)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		local registerVal11 = {}
		local registerVal12 = {}
		local registerVal13 = tonumber(value8)
		registerVal12.value = registerVal13
		registerVal12.valueDisplay = index7
		registerVal11.models = registerVal12
		table.insert({}, registerVal11)
	end
	table.sort({}, __FUNC_2B89_)
	return {}
end

registerVal2 = DataSourceHelpers.ListSetup("PC.OptionGamepadMap", __FUNC_2A1B_, true)
DataSources.OptionGamepadMap = registerVal2
local function __FUNC_2C17_(arg0)
	local registerVal4 = {}
	local registerVal5 = {}
	registerVal5.label = "MENU_LOOK_INVERSION"
	registerVal5.description = "MENU_LOOK_INVERSION_DESC"
	registerVal5.profileVarName = "input_invertpitch"
	registerVal5.profileType = "user"
	registerVal5.lowValue = 0.000000
	registerVal5.highValue = 1.000000
	registerVal5.widgetType = "checkbox"
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.OptionsGenericCheckboxProperties
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.label = "PLATFORM_CONTROLLER_VIBRATION"
	registerVal5.description = "PLATFORM_CONTROLLER_VIBRATION_DESC"
	registerVal5.profileVarName = "gpad_rumble"
	registerVal5.profileType = "user"
	registerVal5.lowValue = 0.000000
	registerVal5.highValue = 1.000000
	registerVal5.widgetType = "checkbox"
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.OptionsGenericCheckboxProperties
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.label = "MENU_TARGET_ASSIST"
	registerVal5.description = "MENU_TARGET_ASSIST_DESC"
	registerVal5.profileVarName = "input_targetassist"
	registerVal5.profileType = "user"
	registerVal5.widgetType = "checkbox"
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.OptionsGenericCheckboxProperties
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.label = "PLATFORM_STICK_LAYOUT"
	registerVal5.description = "PLATFORM_STICK_LAYOUT_DESC"
	registerVal5.profileVarName = "gpad_sticksConfig"
	registerVal5.profileType = "user"
	registerVal5.widgetType = "gamepadLayout"
	registerVal5.menu = "StartMenu_Options_Controls_StickLayout"
	local function __FUNC_361C_(arg0, arg1)
		local registerVal2 = arg0:getModel()
		local registerVal3 = CoD.PCUtil.GetOptionInfo(registerVal2, arg1)
		if registerVal2 and registerVal3 and registerVal3.currentValue then
			local registerVal4 = {}
			registerVal4 = {"MENU_DEFAULT", "MENU_SOUTHPAW", "MENU_LEGACY", "MENU_LEGACY_SOUTHPAW"}
			return registerVal4[(registerVal3.currentValue + 1.000000)]
		end
		return ""
	end

	registerVal5.getLabelFn = __FUNC_361C_
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.label = "PLATFORM_BUTTON_LAYOUT"
	registerVal5.description = "PLATFORM_BUTTON_LAYOUT_DESC"
	registerVal5.profileVarName = "gpad_buttonsConfig"
	registerVal5.profileType = "user"
	registerVal5.widgetType = "gamepadLayout"
	registerVal5.menu = "StartMenu_Options_Controls_ButtonLayout"
	local function __FUNC_37A7_(arg0, arg1)
		local registerVal2 = arg0:getModel()
		local registerVal3 = CoD.PCUtil.GetOptionInfo(registerVal2, arg1)
		if registerVal2 and registerVal3 and registerVal3.currentValue then
			local registerVal4 = {}
			registerVal4 = {"MENU_DEFAULT", "MENU_TACTICAL", "MENU_LEFTY", "MENU_NOMAD", "MENU_CHARLIE", "MENU_GUNSLINGER", "MENU_BUMPERJUMPER", "MENU_BUMPERTACTICAL", "MENU_STICKMOVE"}
			return registerVal4[(registerVal3.currentValue + 1.000000)]
		end
	end

	registerVal5.getLabelFn = __FUNC_37A7_
	local function __FUNC_39A5_()
		return Engine.IsDemoPlaying()
	end

	registerVal5.disabledFunction = __FUNC_39A5_
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.label = "MENU_LOOK_SENSITIVITY_HORIZONTAL"
	registerVal5.description = "MENU_LOOK_SENSITIVITY_HORIZONTAL_DESC"
	registerVal5.profileVarName = "input_viewSensitivityHorizontal"
	registerVal5.profileType = "user"
	registerVal5.lowValue = CoD.SENSITIVITY_1
	registerVal5.highValue = CoD.SENSITIVITY_14
	registerVal5.widgetType = "slider"
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.OptionsGenericSliderProperties
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.label = "MENU_LOOK_SENSITIVITY_VERTICAL"
	registerVal5.description = "MENU_LOOK_SENSITIVITY_VERTICAL_DESC"
	registerVal5.profileVarName = "input_viewSensitivityVertical"
	registerVal5.profileType = "user"
	registerVal5.lowValue = CoD.SENSITIVITY_1
	registerVal5.highValue = CoD.SENSITIVITY_14
	registerVal5.widgetType = "slider"
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.OptionsGenericSliderProperties
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.widgetType = "spacer"
	registerVal5.height = 64.000000
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.label = "PLATFORM_SPLITSCREEN_CONTROLLER"
	registerVal5.description = "PLATFORM_SPLITSCREEN_CONTROLLER_DESC"
	registerVal5.profileVarName = "splitscreen_controller"
	registerVal5.profileType = "function"
	registerVal5.optionController = 1.000000
	registerVal5.datasource = "OptionGamepadMap"
	registerVal5.widgetType = "dropdown"
	local function __FUNC_3A0F_(arg0)
		return Engine.GamepadsConnectedPort(arg0)
	end

	registerVal5.getFunction = __FUNC_3A0F_
	local function __FUNC_3A83_(arg0, arg1)
		Engine.GamepadsConnectedMap(arg0, arg1)
		local registerVal2 = Engine.GamepadsConnectedCount()
		registerVal2 = Engine.GamepadsConnectedValidPort(Engine.GamepadsConnectedPort(arg0))
		if 0.000000 >= registerVal2 or registerVal2 ~= false then
			registerVal2 = Engine.GamepadsConnectedCount()
			if 1.000000 < registerVal2 then
				if arg0 == 0.000000 then
				end
				local registerVal3 = Engine.GamepadsConnectedValidPort(Engine.GamepadsConnectedPort(1.000000))
				if registerVal3 == false then
					Engine.GamepadsConnectedMapAny(1.000000)
				end
			end
		end
	end

	registerVal5.setFunction = __FUNC_3A83_
	local function __FUNC_3C4E_()
		local registerVal0 = Engine.GamepadsConnectedCount()
		if registerVal0 ~= 0.000000 then
		end
		return true
	end

	registerVal5.disabledFunction = __FUNC_3C4E_
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.DependantDropdownProperties
	table.insert({}, registerVal4)
	return {}
end

registerVal2 = DataSourceHelpers.ListSetup("PC.OptionGamepadSettingsPC", __FUNC_2C17_, true)
DataSources.OptionGamepadSettingsPC = registerVal2
function DataSources.OptionGamepadSettingsPC.getWidgetTypeForItem(arg0, arg1, arg2)
	if arg1 then
		local registerVal3 = Engine.GetModelValue(Engine.GetModel(arg1, "widgetType"))
		if registerVal3 == "checkbox" then
			return CoD.StartMenu_Options_CheckBoxOption
		else
			if registerVal3 == "dropdown" then
				return CoD.OptionDropdown
			else
				if registerVal3 == "slider" then
					return CoD.StartMenu_Options_SliderBar
				else
					if registerVal3 == "gamepadLayout" then
						return CoD.StartMenu_Options_GamepadLayoutOption
					else
						if registerVal3 == "spacer" then
							return CoD.VerticalListSpacer
						end
					end
				end
			end
		end
	end
	return nil
end

local function __FUNC_3F43_(arg0, arg1)
	Engine.SyncHardwareProfileWithDvars()
end

local function __FUNC_3FB6_(arg0, arg1)
	arg0.categoryFrame:setForceMouseEventDispatch(true)
	local function __FUNC_409F_()
		Engine.ApplyHardwareProfileSettings()
		Engine.Exec(arg1, "refreshLastInput")
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "close", __FUNC_409F_)
end

local function __FUNC_4156_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("StartMenu_Options_Controls_PC")
	if __FUNC_3F43_ then
		__FUNC_3F43_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "StartMenu_Options_Controls_PC.buttonPrompts")
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
	registerVal4.titleLabel:setText(Engine.Localize("MENU_CONTROLS_CAPS"))
	registerVal4.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_CONTROLS_CAPS"))
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
	local registerVal8 = LUI.UIFrame.new(registerVal1, arg0, 0.000000, 0.000000, false)
	registerVal8:setLeftRight(true, false, 64.000000, 1216.000000)
	registerVal8:setTopBottom(true, false, 134.220000, 657.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.categoryFrame = registerVal8
	local registerVal9 = CoD.StartMenu_lineGraphics2.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 1203.000000, 1267.000000)
	registerVal9:setTopBottom(true, false, 112.000000, 698.940000)
	registerVal1:addElement(registerVal9)
	registerVal1.StartMenulineGraphics20 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal10:setTopBottom(false, false, -276.000000, -237.000000)
	registerVal10:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal10)
	registerVal1.CategoryListPanel = registerVal10
	local registerVal11 = CoD.basicTabList.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 64.000000, 1216.000000)
	registerVal11:setTopBottom(true, false, 84.000000, 124.000000)
	registerVal11.grid:setDataSource("OptionKeyBindingCategories")
	registerVal11.grid:setWidgetType(CoD.paintshopTabWidget)
	registerVal11.grid:setHorizontalCount(7.000000)
	registerVal1:addElement(registerVal11)
	registerVal1.Tabs = registerVal11
	local function __FUNC_5135_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:changeFrameWidget(registerVal1)
		end
	end

	registerVal8:linkToElementModel(registerVal11.grid, "tabWidget", true, __FUNC_5135_)
	local function __FUNC_51D2_(arg0, arg1)
		ShowHeaderIconOnly(registerVal1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_51D2_)
	local function __FUNC_5265_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_52B8_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_5265_, __FUNC_52B8_, false)
	local function __FUNC_53B5_(arg0, arg1, arg2, arg3)
		CloseStartMenu(arg1, arg2)
		return true
	end

	local function __FUNC_5410_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_DISMISS_MENU")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_START, "M", __FUNC_53B5_, __FUNC_5410_, false)
	local function __FUNC_550E_(arg0, arg1, arg2, arg3)
		OpenPCResetControlsPopup(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_5576_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_RESET_TO_DEFAULT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "R", __FUNC_550E_, __FUNC_5576_, false)
	local function __FUNC_567D_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_56B0_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_567D_, __FUNC_56B0_, false)
	registerVal4:setModel(registerVal1.buttonModel, arg0)
	registerVal8.id = "categoryFrame"
	local registerVal14 = {}
	registerVal14.name = "menu_loaded"
	registerVal14.controller = arg0
	registerVal1:processEvent(registerVal14)
	registerVal14 = {}
	registerVal14.name = "update_state"
	registerVal14.menu = registerVal1
	registerVal1:processEvent(registerVal14)
	local registerVal12 = registerVal1:restoreState()
	if not registerVal12 then
		registerVal14 = {}
		registerVal14.name = "gain_focus"
		registerVal14.controller = arg0
		registerVal1.categoryFrame:processEvent(registerVal14)
	end
	local function __FUNC_57AE_(arg1)
		arg1.MenuFrame:close()
		arg1.StartMenulineGraphicsOptions0:close()
		arg1.StartMenulineGraphics20:close()
		arg1.Tabs:close()
		arg1.categoryFrame:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "StartMenu_Options_Controls_PC.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_57AE_)
	if __FUNC_3FB6_ then
		__FUNC_3FB6_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.StartMenu_Options_Controls_PC = __FUNC_4156_
