-- Decompiled with CoDLUIDecompiler by JariK

if not CoD.PCUtil then
	CoD.PCUtil = {}
end
function CoD.PCUtil.GetModelValues(arg0, arg1)
	local registerVal3 = type(arg1)
	if registerVal3 == "string" then
		return CoD.SafeGetModelValue(arg0, arg1)
	else
		registerVal3 = type(arg1)
		if registerVal3 == "table" then
			registerVal3, registerVal4, registerVal5 = ipairs(arg1)
			for index6,value7 in registerVal3, registerVal4, registerVal5 do
				local registerVal8 = CoD.SafeGetModelValue(arg0, value7)
				{}[value7] = registerVal8
			end
			return {}
		end
	end
	return nil
end

function CoD.PCUtil.GetElementModelValues(arg0, arg1)
	local registerVal2 = arg0:getModel()
	if registerVal2 then
		return CoD.PCUtil.GetModelValues(registerVal2, arg1)
	end
	return nil
end

function CoD.PCUtil.TrimString(arg0)
	return string.gsub(arg0, "^%s*(.-)%s*$", "%1")
end

function CoD.PCUtil.TokenizeString(arg0, arg1)
	local registerVal5 = string.find(arg0, arg1)
	local registerVal6 = string.sub(arg0, 0.000000, (registerVal5 - 1.000000))
	registerVal6 = CoD.PCUtil.TrimString(registerVal6)
	if registerVal6 ~= "" then
		table.insert({}, registerVal6)
	end
	registerVal6 = string.find(arg0, arg1, (registerVal5 + 1.000000))
	registerVal6 = string.sub(arg0, (registerVal5 + 1.000000), string.len(arg0))
	registerVal6 = CoD.PCUtil.TrimString(registerVal6)
	if registerVal6 ~= "" then
		table.insert({}, registerVal6)
	end
	return {}
end

function CoD.PCUtil.SetServerKeywordsFilter(arg0)
	Engine.SteamServerBrowser_ClearFilter(Enum.SteamServerFilterType.STEAM_SERVER_BROWSER_FILTERTYPE_KEYWORDS)
	local registerVal2 = CoD.PCUtil.TokenizeString(arg0, ",")
	local registerVal3, registerVal4, registerVal5 = ipairs(registerVal2)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		Engine.SteamServerBrowser_AddFilter(Enum.SteamServerFilterType.STEAM_SERVER_BROWSER_FILTERTYPE_KEYWORDS, string.lower(value7))
	end
end

function CoD.PCUtil.GetOptionInfo(arg0, arg1)
	local registerVal3 = Engine.GetModel(arg0, "profileVarName")
	if arg0 and registerVal3 then
		local registerVal4 = Engine.GetModelValue(registerVal3)
		local registerVal6 = Engine.GetModel(arg0, "profileType")
		if registerVal6 then
			local registerVal7 = Engine.GetModelValue(registerVal6)
			if registerVal7 == "user" then
				local registerVal9 = Engine.ProfileValueAsString(arg1, registerVal4)
			else
				if registerVal7 == "function" then
					registerVal9 = Engine.GetModel(arg0, "getFunction")
					if registerVal9 then
						local registerVal11 = Engine.GetModel(arg0, "optionController")
						if registerVal11 then
							local registerVal12 = Engine.GetModelValue(registerVal11)
						end
						registerVal12 = Engine.GetModelValue(registerVal9)
						{}.getValueFunction = registerVal12
						registerVal12 = {}.getValueFunction(registerVal12)
					else
						registerVal9 = Engine.GetHardwareProfileValueAsString(registerVal4)
					end
				end
			end
			registerVal9 = tonumber(registerVal9)
			{}.currentValue = registerVal9
			if not {}.currentValue then
				{}.currentValue = registerVal9
			end
			{}.profileType = registerVal7
		else
			registerVal7 = Engine.GetHardwareProfileValueAsString(registerVal4)
			local registerVal8 = tonumber(registerVal7)
			{}.currentValue = registerVal8
			if not {}.currentValue then
				{}.currentValue = registerVal7
			end
		end
		{}.profileVarName = registerVal4
		registerVal7 = Engine.GetModel(arg0, "lowValue")
		registerVal8 = Engine.GetModel(arg0, "highValue")
		if registerVal7 and registerVal8 then
			registerVal9 = Engine.GetModelValue(registerVal7)
			{}.lowValue = registerVal9
			registerVal9 = Engine.GetModelValue(registerVal8)
			{}.highValue = registerVal9
		else
			if true then
				{}.lowValue = 0.000000
				{}.highValue = 1.000000
			else
				registerVal9, registerVal10 = Dvar[registerVal4]:getDomain()
				{}.lowValue = registerVal9
				{}.highValue = registerVal10
			end
		end
		registerVal9 = Engine.GetModel(arg0, "useIntegerDisplay")
		if registerVal9 then
			{}.useIntegerDisplay = 1.000000
		else
			{}.useIntegerDisplay = 0.000000
		end
		registerVal10 = Engine.GetModel(arg0, "widgetType")
		if registerVal10 then
			registerVal11 = Engine.GetModelValue(registerVal10)
			if registerVal11 == "slider" then
				registerVal12 = Engine.GetModel(arg0, "sliderSpeed")
				if registerVal12 then
					local registerVal13 = Engine.GetModelValue(registerVal12)
					{}.sliderSpeed = registerVal13
				else
					if {}.useIntegerDisplay == 1.000000 then
						{}.sliderSpeed = (10.000000 / ({}.highValue - {}.lowValue))
					else
						{}.sliderSpeed = (0.100000 / ({}.highValue - {}.lowValue))
					end
				end
			end
			{}.widgetType = registerVal11
		end
		registerVal11 = Engine.GetModel(arg0, "getLabelFn")
		if registerVal11 then
			registerVal12 = Engine.GetModelValue(registerVal11)
			{}.getLabelFn = registerVal12
		end
		registerVal12 = Engine.GetModel(arg0, "chatChannel")
		if registerVal12 then
			registerVal13 = Engine.GetModelValue(registerVal12)
			{}.chatChannel = registerVal13
			registerVal13 = Engine.ChatClient_FilterChannelGet(arg1, {}.chatChannel)
			if 0.000000 < registerVal13 then
				{}.currentValue = 1.000000
			else
				{}.currentValue = 0.000000
			end
		end
		return {}
	end
	return nil
end

function CoD.PCUtil.SetOptionValue(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModel(arg0, "profileVarName")
	if arg0 and registerVal3 then
		local registerVal4 = Engine.GetModelValue(registerVal3)
		local registerVal5 = Engine.GetModel(arg0, "profileType")
		if registerVal5 then
			local registerVal6 = Engine.GetModelValue(registerVal5)
			if registerVal6 == "user" then
				Engine.SetProfileVar(arg1, registerVal4, arg2)
			else
				if registerVal6 == "function" then
					local registerVal7 = Engine.GetModel(arg0, "setFunction")
					if registerVal7 then
						local registerVal9 = Engine.GetModel(arg0, "optionController")
						if registerVal9 then
							local registerVal10 = Engine.GetModelValue(registerVal9)
						end
						registerVal10 = Engine.GetModelValue(registerVal7)
						registerVal10(registerVal10, arg2)
					else
						Engine.SetHardwareProfileValue(registerVal4, arg2)
					else
						Engine.SetHardwareProfileValue(registerVal4, arg2)
					end
				end
			end
		end
		CoD.PCUtil.DirtyOptions(arg1)
	end
end

function CoD.PCUtil.GetOptionsDirtyModel(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal3, "PC.OptionsDirty")
	if not registerVal2 and arg1 then
		local registerVal4 = Engine.GetModelForController(arg0)
		registerVal3 = Engine.CreateModel(registerVal4, "PC.OptionsDirty")
	end
	return registerVal3
end

function CoD.PCUtil.FreeOptionsDirtyModel(arg0)
	local registerVal1 = CoD.PCUtil.GetOptionsDirtyModel(arg0)
	if registerVal1 then
		Engine.UnsubscribeAndFreeModel(registerVal1)
	end
end

function CoD.PCUtil.DirtyOptions(arg0)
	local registerVal1 = CoD.PCUtil.GetOptionsDirtyModel(arg0, true)
	Engine.SetModelValue(registerVal1, 1.000000)
end

function CoD.PCUtil.IsOptionsDirty(arg0)
	local registerVal1 = CoD.PCUtil.GetOptionsDirtyModel(arg0)
	if registerVal1 then
		local registerVal2 = Engine.GetModelValue(registerVal1)
		if registerVal2 == 0.000000 then
		end
		return true
	end
	return false
end

function CoD.PCUtil.RefreshAllOptions(arg0, arg1)
	local registerVal4 = {}
	registerVal4.name = "options_refresh"
	registerVal4.controller = arg1
	arg0:dispatchEventToRoot(registerVal4)
end

function CoD.PCUtil.SimulateButtonPress(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal3, ("ButtonBits." .. arg1))
	if registerVal2 then
		Engine.SetModelValue(registerVal2, Enum.LUIButtonFlags.FLAG_DOWN)
	end
end

function CoD.PCUtil.SimulateButtonPressUsingElement(arg0, arg1)
	local registerVal2 = arg1:getModel()
	local registerVal3 = Engine.GetModel(registerVal2, "Button")
	if registerVal2 and registerVal3 then
		local registerVal4 = Engine.GetModelValue(registerVal3)
		CoD.PCUtil.SimulateButtonPress(arg0, registerVal4)
	end
end

function CoD.PCUtil.SimulateDPadButtonPress(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal3, ("ButtonBits." .. arg1))
	if registerVal2 then
		Engine.SetModelValue(registerVal2, (Enum.LUIButtonFlags.FLAG_DOWN | Enum.LUIButtonFlags.FLAG_DPAD))
	end
end

function CoD.PCUtil.OptionsCheckboxAction(arg0, arg1)
	local registerVal2 = arg1:getModel()
	local registerVal3 = CoD.PCUtil.GetOptionInfo(registerVal2, arg0)
	if registerVal2 and registerVal3 then
		local registerVal6 = type(registerVal3.currentValue)
		if registerVal6 == "number" then
			registerVal6 = math.abs((registerVal3.currentValue - registerVal3.lowValue))
			if registerVal6 >= 0.010000 then
			end
		else
			registerVal6 = type(registerVal3.currentValue)
			if registerVal6 == "string" then
				if registerVal3.currentValue ~= registerVal3.lowValue then
				end
			end
		end
		if true then
		else
		end
		CoD.PCUtil.SetOptionValue(registerVal2, arg0, registerVal3.lowValue)
		arg1:playSound("list_action")
		return registerVal3.lowValue
	end
	return false
end

function CoD.PCUtil.OptionsChatClientChannelFilterCheckboxProperties(arg0, arg1)
	local registerVal2 = arg1:getModel()
	local registerVal3 = CoD.PCUtil.GetOptionInfo(registerVal2, arg0)
	if registerVal2 and registerVal3 then
		if registerVal3.currentValue ~= registerVal3.lowValue then
		end
		if true then
		else
		end
		if 0.000000 >= registerVal3.lowValue then
		end
		Engine.ChatClient_FilterChannelSet(arg0, registerVal3.chatChannel, true)
		local registerVal6 = Engine.ChatClient_FilterChannelGet(arg0, Enum.chatChannel_e.CHAT_CHANNEL_COUNT)
		CoD.PCUtil.SetOptionValue(registerVal2, arg0, registerVal6)
		return registerVal3.lowValue
	end
	return false
end

local registerVal1 = {}
registerVal1.checkboxAction = CoD.PCUtil.OptionsCheckboxAction
CoD.PCUtil.OptionsGenericCheckboxProperties = registerVal1
registerVal1 = {}
registerVal1.checkboxAction = CoD.PCUtil.OptionsChatClientChannelFilterCheckboxProperties
CoD.PCUtil.OptionsChatClientChannelFilterCheckboxProperties = registerVal1
function CoD.PCUtil.OptionsDropdownItemSelected(arg0, arg1, arg2)
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
		registerVal8 = arg1:getModel()
		CoD.PCUtil.SetOptionValue(registerVal8, arg0, registerVal8)
		arg1:playSound("list_action")
	end
	return registerVal6
end

function CoD.PCUtil.OptionsDropdownRefresh(arg0, arg1, arg2)
	local registerVal4 = arg1:getModel()
	local registerVal5 = CoD.PCUtil.GetOptionInfo(registerVal4, arg0)
	if registerVal4 and registerVal5 then
		local registerVal10 = {}
		registerVal10.value = registerVal5.currentValue
		local registerVal8 = arg2:findItem(registerVal10, nil, false, nil)
		if not registerVal8 then
			registerVal10 = arg2:getFirstSelectableItem()
		end
		registerVal10 = registerVal10:getModel()
		if registerVal10 and registerVal10 then
			local registerVal11 = Engine.GetModel(registerVal10, "valueDisplay")
			if registerVal11 then
				local registerVal12 = Engine.GetModelValue(registerVal11)
			end
			registerVal12 = Engine.GetModel(registerVal10, "value")
			if true and registerVal12 then
				local registerVal13 = Engine.GetModelValue(registerVal12)
				CoD.PCUtil.SetOptionValue(registerVal4, arg0, registerVal13)
			end
		end
	end
	return registerVal12
end

function CoD.PCUtil.OptionsDropdownCurrentValue(arg0, arg1)
	local registerVal2 = arg1:getModel()
	if registerVal2 then
		local registerVal3 = CoD.PCUtil.GetOptionInfo(registerVal2, arg0)
		return registerVal3.currentValue
	end
end

registerVal1 = {}
registerVal1.dropDownItemSelected = CoD.PCUtil.OptionsDropdownItemSelected
registerVal1.dropDownRefresh = CoD.PCUtil.OptionsDropdownRefresh
registerVal1.dropDownCurrentValue = CoD.PCUtil.OptionsDropdownCurrentValue
CoD.PCUtil.OptionsGenericDropdownProperties = registerVal1
registerVal1 = {}
local function __FUNC_3198_(arg0, arg1, arg2)
	local registerVal3 = CoD.PCUtil.OptionsDropdownItemSelected(arg0, arg1, arg2)
	CoD.PCUtil.RefreshAllOptions(arg1, arg0)
	return registerVal3
end

registerVal1.dropDownItemSelected = __FUNC_3198_
registerVal1.dropDownRefresh = CoD.PCUtil.OptionsDropdownRefresh
registerVal1.dropDownCurrentValue = CoD.PCUtil.OptionsDropdownCurrentValue
CoD.PCUtil.DependantDropdownProperties = registerVal1
CoD.PCUtil.ShadowOptionIndex = 0.000000
function CoD.PCUtil.ShadowDropdownItemSelected(arg0, arg1, arg2)
	local registerVal5 = arg2:getModel()
	local registerVal6 = {}
	registerVal6 = {"value", "valueDisplay"}
	local registerVal4 = CoD.PCUtil.GetModelValues(registerVal5, registerVal6)
	if registerVal4 then
		CoD.PCUtil.ShadowOptionIndex = registerVal4.value
		CoD.PCUtil.DirtyOptions(arg0)
		arg1:playSound("list_action")
	end
	return registerVal4.valueDisplay
end

function CoD.PCUtil.ShadowDropdownRefresh(arg0, arg1, arg2)
	local registerVal7 = {}
	registerVal7.value = CoD.PCUtil.ShadowOptionIndex
	local registerVal5 = arg2:findItem(registerVal7, nil, false, nil)
	if not registerVal5 then
		registerVal7 = arg2:getFirstSelectableItem()
	end
	local registerVal8 = registerVal7:getModel()
	local registerVal9 = {}
	registerVal9 = {"value", "valueDisplay"}
	registerVal7 = CoD.PCUtil.GetModelValues(registerVal8, registerVal9)
	if registerVal7 and true then
		CoD.PCUtil.ShadowOptionIndex = registerVal7.value
		CoD.PCUtil.DirtyOptions(arg0)
	end
	return registerVal7.valueDisplay
end

function CoD.PCUtil.ShadowDropdownCurrentValue(arg0, arg1)
	return CoD.PCUtil.ShadowOptionIndex
end

registerVal1 = {}
registerVal1.dropDownItemSelected = CoD.PCUtil.ShadowDropdownItemSelected
registerVal1.dropDownRefresh = CoD.PCUtil.ShadowDropdownRefresh
registerVal1.dropDownCurrentValue = CoD.PCUtil.ShadowDropdownCurrentValue
CoD.PCUtil.ShadowDropdownProperties = registerVal1
CoD.PCUtil.VolumetricOptionIndex = 0.000000
function CoD.PCUtil.VolumetricDropdownItemSelected(arg0, arg1, arg2)
	local registerVal5 = arg2:getModel()
	local registerVal6 = {}
	registerVal6 = {"value", "valueDisplay"}
	local registerVal4 = CoD.PCUtil.GetModelValues(registerVal5, registerVal6)
	if registerVal4 then
		CoD.PCUtil.VolumetricOptionIndex = registerVal4.value
		CoD.PCUtil.DirtyOptions(arg0)
		arg1:playSound("list_action")
	end
	return registerVal4.valueDisplay
end

function CoD.PCUtil.VolumetricDropdownRefresh(arg0, arg1, arg2)
	local registerVal7 = {}
	registerVal7.value = CoD.PCUtil.VolumetricOptionIndex
	local registerVal5 = arg2:findItem(registerVal7, nil, false, nil)
	if not registerVal5 then
		registerVal7 = arg2:getFirstSelectableItem()
	end
	local registerVal8 = registerVal7:getModel()
	local registerVal9 = {}
	registerVal9 = {"value", "valueDisplay"}
	registerVal7 = CoD.PCUtil.GetModelValues(registerVal8, registerVal9)
	if registerVal7 and true then
		CoD.PCUtil.VolumetricOptionIndex = registerVal7.value
		CoD.PCUtil.DirtyOptions(arg0)
	end
	return registerVal7.valueDisplay
end

function CoD.PCUtil.VolumetricDropdownCurrentValue(arg0, arg1)
	return CoD.PCUtil.VolumetricOptionIndex
end

registerVal1 = {}
registerVal1.dropDownItemSelected = CoD.PCUtil.VolumetricDropdownItemSelected
registerVal1.dropDownRefresh = CoD.PCUtil.VolumetricDropdownRefresh
registerVal1.dropDownCurrentValue = CoD.PCUtil.VolumetricDropdownCurrentValue
CoD.PCUtil.VolumetricDropdownProperties = registerVal1
function CoD.PCUtil.SaveCurrentGraphicsOptions()
	CoD.PCUtil.SavedVolumetricOptionIndex = CoD.PCUtil.VolumetricOptionIndex
end

function CoD.PCUtil.RevertUnsavedGraphicsOptions()
	CoD.PCUtil.VolumetricOptionIndex = CoD.PCUtil.SavedVolumetricOptionIndex
	Engine.SetVolumetricQuality(CoD.PCUtil.VolumetricOptionIndex)
end

function CoD.PCUtil.OptionsSliderRefresh(arg0, arg1)
	local registerVal2 = arg1:getModel()
	local registerVal3 = CoD.PCUtil.GetOptionInfo(registerVal2, arg0)
	if registerVal2 and registerVal3 then
		if registerVal3.useIntegerDisplay == 1.000000 then
			arg1.m_formatString = "%u"
		end
		if ((registerVal3.currentValue - registerVal3.lowValue) / (registerVal3.highValue - registerVal3.lowValue)) < 0.000000 then
		end
		if 1.000000 < 0.000000 then
		end
		arg1.m_fraction = 1.000000
		arg1.m_currentValue = registerVal3.currentValue
		arg1.m_sliderSpeed = registerVal3.sliderSpeed
		arg1.m_range = (registerVal3.highValue - registerVal3.lowValue)
	end
end

function CoD.PCUtil.OptionsSliderUpdated(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel()
	if registerVal3 then
		local registerVal4 = CoD.PCUtil.GetOptionInfo(registerVal3, arg0)
		local registerVal6 = string.format(arg1.m_formatString, (((registerVal4.highValue - registerVal4.lowValue) * arg2) + registerVal4.lowValue))
		CoD.PCUtil.SetOptionValue(registerVal3, arg0, registerVal6)
		arg1.m_currentValue = registerVal6
		arg1.m_fraction = arg2
		arg1.m_sliderSpeed = registerVal4.sliderSpeed
		arg1.m_range = (registerVal4.highValue - registerVal4.lowValue)
	end
end

registerVal1 = {}
registerVal1.sliderRefresh = CoD.PCUtil.OptionsSliderRefresh
registerVal1.sliderUpdated = CoD.PCUtil.OptionsSliderUpdated
CoD.PCUtil.OptionsGenericSliderProperties = registerVal1
function CoD.PCUtil.Craft_WidgetSelectorFunc(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModel(arg1, "widgetType")
	if arg1 and registerVal3 then
		local registerVal4 = Engine.GetModelValue(registerVal3)
		if registerVal4 == "header" then
			return CoD.CraftActionHeader
		else
			if registerVal4 == "button" then
				return CoD.CraftActionButton
			else
				if registerVal4 == "slider" then
					return CoD.CraftActionSlider
				end
			end
		end
	end
	return nil
end

function CoD.PCUtil.Craft_GetEmblemEditorEditModeActions(arg0)
	local registerVal4 = {}
	local registerVal5 = {}
	registerVal5.actionName = "PLATFORM_MODE"
	registerVal5.widgetType = "header"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.actionName = "MENU_EMBLEM_COLOR_PICKER"
	registerVal5.image = "t7_pc_ps_menu_color_picker"
	registerVal5.widgetType = "button"
	registerVal4.models = registerVal5
	registerVal5 = {}
	registerVal5.m_button = Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE
	registerVal4.properties = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.actionName = "MENU_MATERIAL_PICKER"
	registerVal5.image = "t7_pc_ps_menu_material_picker"
	registerVal5.widgetType = "button"
	registerVal4.models = registerVal5
	registerVal5 = {}
	registerVal5.m_button = Enum.LUIButton.LUI_KEY_UP
	registerVal5.m_isDpad = true
	registerVal4.properties = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.actionName = "MENU_CONTROLS"
	registerVal5.widgetType = "header"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.actionName = "PLATFORM_SWITCH_TO_FREE_SCALE"
	registerVal5.image = "t7_pc_ps_menu_free_scale"
	registerVal5.widgetType = "button"
	registerVal5.perControllerStatusModel = "Emblem.EmblemProperties.scaleMode"
	local function __FUNC_4C07_()
		local registerVal0 = {}
		local registerVal2 = {}
		registerVal2.label = "PLATFORM_SWITCH_TO_FREE_SCALE"
		registerVal0[Enum.CustomizationScaleType.CUSTOMIZATION_SCALE_TYPE_FIXED] = registerVal2
		registerVal2 = {}
		registerVal2.label = "PLATFORM_SWITCH_TO_FIXED_SCALE"
		registerVal0[Enum.CustomizationScaleType.CUSTOMIZATION_SCALE_TYPE_FREE] = registerVal2
		return registerVal0
	end

	registerVal5.getStatusTable = __FUNC_4C07_
	registerVal4.models = registerVal5
	registerVal5 = {}
	registerVal5.m_button = Enum.LUIButton.LUI_KEY_RSTICK_PRESSED
	registerVal4.properties = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.actionName = "PLATFORM_EMBLEM_TOGGLE_FLIP"
	registerVal5.image = "t7_pc_ps_menu_flip_image"
	registerVal5.widgetType = "button"
	registerVal4.models = registerVal5
	registerVal5 = {}
	registerVal5.m_button = Enum.LUIButton.LUI_KEY_BACK
	registerVal4.properties = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.actionName = "PLATFORM_EMBLEM_TOGGLE_OUTLINE"
	registerVal5.image = "t7_pc_ps_menu_toggle_outline_fill"
	registerVal5.widgetType = "button"
	registerVal4.models = registerVal5
	registerVal5 = {}
	registerVal5.m_button = Enum.LUIButton.LUI_KEY_XBX_PSSQUARE
	registerVal4.properties = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.actionName = "PLATFORM_MOVE_LAYER_UP"
	registerVal5.image = "t7_pc_ps_menu_move_layer_up"
	registerVal5.widgetType = "button"
	registerVal4.models = registerVal5
	registerVal5 = {}
	registerVal5.m_button = Enum.LUIButton.LUI_KEY_RIGHT
	registerVal5.m_isDpad = true
	registerVal4.properties = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.actionName = "PLATFORM_MOVE_LAYER_DOWN"
	registerVal5.image = "t7_pc_ps_menu_move_layer_down"
	registerVal5.widgetType = "button"
	registerVal4.models = registerVal5
	registerVal5 = {}
	registerVal5.m_button = Enum.LUIButton.LUI_KEY_LEFT
	registerVal5.m_isDpad = true
	registerVal4.properties = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.actionName = "MENU_EMBLEM_LAYER_OPACITY"
	registerVal5.image = "t7_pc_ps_menu_opacity"
	registerVal5.widgetType = "slider"
	registerVal5.perControllerValueModel = "Emblem.EmblemSelectedLayerProperties.max_opacity"
	registerVal5.lowValue = 0.000000
	registerVal5.highValue = 100.000000
	registerVal4.models = registerVal5
	registerVal5 = {}
	local function __FUNC_4D63_(arg1, arg2, arg3)
		Engine.ExecNow(arg0, ("emblemLayerSetOpacity " .. Enum.CustomizationColorNum.CUSTOMIZATION_COLOR_NONE .. " " .. arg3))
	end

	registerVal5.updateAction = __FUNC_4D63_
	registerVal4.properties = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.actionName = "PLATFORM_EMBLEM_ROTATE_LAYER"
	registerVal5.image = "t7_pc_ps_menu_rotate"
	registerVal5.widgetType = "slider"
	registerVal5.perControllerValueModel = "Emblem.EmblemSelectedLayerProperties.rotation"
	registerVal5.lowValue = 0.000000
	registerVal5.highValue = 360.000000
	registerVal4.models = registerVal5
	registerVal5 = {}
	local function __FUNC_4E6B_(arg1, arg2, arg3)
		local registerVal5 = {}
		registerVal5 = {"lowValue", "highValue"}
		local registerVal3 = CoD.PCUtil.GetElementModelValues(arg2, registerVal5)
		if registerVal3 then
			Engine.ExecNow(arg0, ("emblemSetRotation " .. ((registerVal3.highValue - registerVal3.lowValue) * arg3)))
		end
	end

	registerVal5.updateAction = __FUNC_4E6B_
	registerVal4.properties = registerVal5
	table.insert({}, registerVal4)
	return {}
end

function CoD.PCUtil.Craft_GetEmblemEditorBrowseModeActions(arg0, arg1, arg2)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.actionName = "MENU_CONTROLS"
	registerVal7.widgetType = "header"
	registerVal6.models = registerVal7
	table.insert({}, registerVal6)
	registerVal6 = {}
	registerVal7 = {}
	registerVal7.actionName = "PLATFORM_INSERT_NEW_LAYER"
	registerVal7.image = "t7_pc_ps_menu_new_layer"
	registerVal7.widgetType = "button"
	registerVal6.models = registerVal7
	registerVal7 = {}
	registerVal7.m_button = Enum.LUIButton.LUI_KEY_DOWN
	registerVal7.m_isDpad = true
	registerVal6.properties = registerVal7
	table.insert({}, registerVal6)
	registerVal6 = {}
	registerVal7 = {}
	registerVal7.actionName = "MENU_EMBLEM_CHANGE_DECAL"
	registerVal7.image = "t7_pc_ps_menu_chang_decal"
	registerVal7.widgetType = "button"
	registerVal6.models = registerVal7
	registerVal7 = {}
	registerVal7.m_button = Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE
	registerVal6.properties = registerVal7
	table.insert({}, registerVal6)
	registerVal6 = {}
	registerVal7 = {}
	registerVal7.actionName = "MENU_EMBLEM_CUT_LAYER"
	registerVal7.image = "t7_pc_ps_menu_cut_layer"
	registerVal7.widgetType = "button"
	registerVal6.models = registerVal7
	registerVal7 = {}
	registerVal7.m_button = Enum.LUIButton.LUI_KEY_XBX_PSSQUARE
	registerVal6.properties = registerVal7
	table.insert({}, registerVal6)
	registerVal6 = {}
	registerVal7 = {}
	registerVal7.actionName = "MENU_EMBLEM_LAYER_COPY"
	registerVal7.image = "t7_pc_ps_menu_copy_layer"
	registerVal7.widgetType = "button"
	registerVal6.models = registerVal7
	registerVal7 = {}
	registerVal7.m_button = Enum.LUIButton.LUI_KEY_BACK
	registerVal6.properties = registerVal7
	table.insert({}, registerVal6)
	registerVal6 = {}
	registerVal7 = {}
	registerVal7.actionName = "MENU_EMBLEM_LAYER_PASTE"
	registerVal7.image = "t7_pc_ps_menu_paste_layer"
	registerVal7.widgetType = "button"
	registerVal6.models = registerVal7
	registerVal7 = {}
	registerVal7.m_button = Enum.LUIButton.LUI_KEY_START
	registerVal6.properties = registerVal7
	table.insert({}, registerVal6)
	if arg1 and arg2 then
		local registerVal4 = BrowseModeLinkedLayer(arg1, arg2, arg0)
		if registerVal4 then
			registerVal6 = {}
			registerVal7 = {}
			registerVal7.actionName = "MENU_LB_PFILTER_GROUPS"
			registerVal7.widgetType = "header"
			registerVal6.models = registerVal7
			table.insert({}, registerVal6)
			registerVal6 = {}
			registerVal7 = {}
			registerVal7.actionName = "MENU_EMBLEM_UNLINK_LAYERS"
			registerVal7.image = "t7_pc_ps_menu_move_layer_up"
			registerVal7.widgetType = "button"
			registerVal6.models = registerVal7
			registerVal7 = {}
			registerVal7.m_button = Enum.LUIButton.LUI_KEY_RTRIG
			registerVal6.properties = registerVal7
			table.insert({}, registerVal6)
			registerVal6 = {}
			registerVal7 = {}
			registerVal7.actionName = "MENU_EMBLEMS_GROUP"
			registerVal7.image = "t7_pc_ps_menu_color_picker"
			registerVal7.widgetType = "button"
			registerVal6.models = registerVal7
			registerVal7 = {}
			registerVal7.m_button = Enum.LUIButton.LUI_KEY_RB
			registerVal6.properties = registerVal7
			table.insert({}, registerVal6)
		else
			registerVal4 = BrowseModeGroupedLayer(arg1, arg2, arg0)
			if registerVal4 then
				registerVal6 = {}
				registerVal7 = {}
				registerVal7.actionName = "MENU_LB_PFILTER_GROUPS"
				registerVal7.widgetType = "header"
				registerVal6.models = registerVal7
				table.insert({}, registerVal6)
				registerVal6 = {}
				registerVal7 = {}
				registerVal7.actionName = "MENU_EMBLEMS_UNGROUP"
				registerVal7.image = "t7_pc_ps_menu_color_picker"
				registerVal7.widgetType = "button"
				registerVal6.models = registerVal7
				registerVal7 = {}
				registerVal7.m_button = Enum.LUIButton.LUI_KEY_RB
				registerVal6.properties = registerVal7
				table.insert({}, registerVal6)
			else
				registerVal4 = BrowseModeOneLayerLinked(arg1, arg2, arg0)
				if registerVal4 then
					registerVal6 = {}
					registerVal7 = {}
					registerVal7.actionName = "MENU_LB_PFILTER_GROUPS"
					registerVal7.widgetType = "header"
					registerVal6.models = registerVal7
					table.insert({}, registerVal6)
					registerVal6 = {}
					registerVal7 = {}
					registerVal7.actionName = "MENU_EMBLEM_UNLINK_LAYERS"
					registerVal7.image = "t7_pc_ps_menu_move_layer_up"
					registerVal7.widgetType = "button"
					registerVal6.models = registerVal7
					registerVal7 = {}
					registerVal7.m_button = Enum.LUIButton.LUI_KEY_RTRIG
					registerVal6.properties = registerVal7
					table.insert({}, registerVal6)
				else
					registerVal4 = BrowseMode(arg1, arg2, arg0)
					if registerVal4 then
						registerVal6 = {}
						registerVal7 = {}
						registerVal7.actionName = "MENU_LB_PFILTER_GROUPS"
						registerVal7.widgetType = "header"
						registerVal6.models = registerVal7
						table.insert({}, registerVal6)
						registerVal6 = {}
						registerVal7 = {}
						registerVal7.actionName = "MENU_EMBLEM_LINK_LAYERS"
						registerVal7.image = "t7_pc_ps_menu_move_layer_down"
						registerVal7.widgetType = "button"
						registerVal6.models = registerVal7
						registerVal7 = {}
						registerVal7.m_button = Enum.LUIButton.LUI_KEY_RTRIG
						registerVal6.properties = registerVal7
						table.insert({}, registerVal6)
					else
						registerVal4 = GroupsDisabledMode(arg1, arg2, arg0)
						if registerVal4 then
							return {}
						end

function CoD.PCUtil.Craft_GetEmblemEditorSolidColorActions(arg0)
	local registerVal4 = {}
	local registerVal5 = {}
	registerVal5.actionName = "PLATFORM_MODE"
	registerVal5.widgetType = "header"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.actionName = "PLATFORM_SWITCH_TO_GRADIENT_MODE"
	registerVal5.image = "t7_pc_ps_menu_gradient"
	registerVal5.widgetType = "button"
	registerVal4.models = registerVal5
	registerVal5 = {}
	registerVal5.m_button = Enum.LUIButton.LUI_KEY_XBX_PSSQUARE
	registerVal4.properties = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.actionName = "PLATFORM_SWITCH_TO_COLOR_MIXER"
	registerVal5.image = "t7_pc_ps_menu_color_mixer"
	registerVal5.widgetType = "button"
	registerVal5.perControllerStatusModel = "Emblem.EmblemProperties.colorMode"
	local function __FUNC_5F4E_()
		local registerVal0 = {}
		local registerVal2 = {}
		registerVal2.label = "PLATFORM_SWITCH_TO_SOLID_FILL"
		registerVal0[Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_MIXER] = registerVal2
		registerVal2 = {}
		registerVal2.label = "PLATFORM_SWITCH_TO_COLOR_MIXER"
		registerVal0[Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_SOLID] = registerVal2
		return registerVal0
	end

	registerVal5.getStatusTable = __FUNC_5F4E_
	registerVal4.models = registerVal5
	registerVal5 = {}
	registerVal5.m_button = Enum.LUIButton.LUI_KEY_BACK
	registerVal4.properties = registerVal5
	table.insert({}, registerVal4)
	local registerVal2 = IsPaintshop(arg0)
	if registerVal2 then
		registerVal4 = {}
		registerVal5 = {}
		registerVal5.actionName = "MENU_EMBLEM_TOGGLE_TO_STICKER"
		registerVal5.image = "t7_pc_ps_menu_toggle_sticker"
		registerVal5.widgetType = "button"
		registerVal5.perControllerStatusModel = "Emblem.EmblemSelectedLayerProperties.blend"
		local function __FUNC_60AC_()
			local registerVal0 = {}
			local registerVal1 = {}
			registerVal1.label = "MENU_EMBLEM_TOGGLE_TO_BLEND"
			registerVal0[0.000000] = registerVal1
			registerVal1 = {}
			registerVal1.label = "MENU_EMBLEM_TOGGLE_TO_STICKER"
			registerVal0[1.000000] = registerVal1
			return registerVal0
		end

		registerVal5.getStatusTable = __FUNC_60AC_
		registerVal4.models = registerVal5
		registerVal5 = {}
		registerVal5.m_button = Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE
		registerVal4.properties = registerVal5
		table.insert({}, registerVal4)
	end
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.actionName = "MENU_CONTROLS"
	registerVal5.widgetType = "header"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.actionName = "MENU_EMBLEM_LAYER_OPACITY"
	registerVal5.image = "t7_pc_ps_menu_opacity"
	registerVal5.widgetType = "slider"
	registerVal5.perControllerValueModel = "Emblem.EmblemSelectedLayerProperties.opacity0"
	registerVal5.lowValue = 0.000000
	registerVal5.highValue = 100.000000
	registerVal4.models = registerVal5
	registerVal5 = {}
	local function __FUNC_615D_(arg1, arg2, arg3)
		local registerVal3 = CoD.GetEditorProperties(arg0, "colorNum")
		EmblemChooseColor_SetOpacity(arg1, arg2, registerVal3, arg3, arg0)
	end

	registerVal5.updateAction = __FUNC_615D_
	registerVal4.properties = registerVal5
	table.insert({}, registerVal4)
	return {}
end

function CoD.PCUtil.Craft_GetEmblemEditorGradientModeActions(arg0)
	local registerVal4 = {}
	local registerVal5 = {}
	registerVal5.actionName = "PLATFORM_MODE"
	registerVal5.widgetType = "header"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.actionName = "PLATFORM_SWITCH_TO_SOLID_MODE"
	registerVal5.image = "t7_pc_ps_menu_solid_mode"
	registerVal5.widgetType = "button"
	registerVal4.models = registerVal5
	registerVal5 = {}
	registerVal5.m_button = Enum.LUIButton.LUI_KEY_XBX_PSSQUARE
	registerVal4.properties = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.actionName = "PLATFORM_SWITCH_TO_LINEAR_GRADIENT"
	registerVal5.image = "t7_pc_ps_menu_linear_gradient"
	registerVal5.widgetType = "button"
	registerVal5.perControllerStatusModel = "Emblem.EmblemSelectedLayerProperties.gradient_type"
	local function __FUNC_6A28_()
		local registerVal0 = {}
		local registerVal2 = {}
		registerVal2.label = "PLATFORM_SWITCH_TO_LINEAR_GRADIENT"
		registerVal0[Enum.CustomizationGradientType.CUSTOMIZATION_GRADIENT_RADIAL] = registerVal2
		registerVal2 = {}
		registerVal2.label = "PLATFORM_SWITCH_TO_RADIAL_GRADIENT"
		registerVal0[Enum.CustomizationGradientType.CUSTOMIZATION_GRADIENT_LINEAR] = registerVal2
		return registerVal0
	end

	registerVal5.getStatusTable = __FUNC_6A28_
	registerVal4.models = registerVal5
	registerVal5 = {}
	registerVal5.m_button = Enum.LUIButton.LUI_KEY_RSTICK_PRESSED
	registerVal4.properties = registerVal5
	table.insert({}, registerVal4)
	local registerVal2 = IsPaintshop(arg0)
	if registerVal2 then
		registerVal4 = {}
		registerVal5 = {}
		registerVal5.actionName = "MENU_EMBLEM_TOGGLE_TO_STICKER"
		registerVal5.image = "t7_pc_ps_menu_toggle_sticker"
		registerVal5.widgetType = "button"
		registerVal5.perControllerStatusModel = "Emblem.EmblemSelectedLayerProperties.blend"
		local function __FUNC_6B92_()
			local registerVal0 = {}
			local registerVal1 = {}
			registerVal1.label = "MENU_EMBLEM_TOGGLE_TO_BLEND"
			registerVal0[0.000000] = registerVal1
			registerVal1 = {}
			registerVal1.label = "MENU_EMBLEM_TOGGLE_TO_STICKER"
			registerVal0[1.000000] = registerVal1
			return registerVal0
		end

		registerVal5.getStatusTable = __FUNC_6B92_
		registerVal4.models = registerVal5
		registerVal5 = {}
		registerVal5.m_button = Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE
		registerVal4.properties = registerVal5
		table.insert({}, registerVal4)
	end
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.actionName = "MENU_CONTROLS"
	registerVal5.widgetType = "header"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.actionName = "MENU_EMBLEM_COLOR_1_OPACITY"
	registerVal5.image = "t7_pc_ps_menu_opacity"
	registerVal5.widgetType = "slider"
	registerVal5.perControllerValueModel = "Emblem.EmblemSelectedLayerProperties.opacity0"
	registerVal5.perControllerStatusModel = "Emblem.EmblemProperties.isColor0NoColor"
	registerVal5.lowValue = 0.000000
	registerVal5.highValue = 100.000000
	local function __FUNC_6C41_()
		local registerVal0 = {}
		local registerVal1 = {}
		registerVal1.disabled = true
		registerVal0[1.000000] = registerVal1
		return registerVal0
	end

	registerVal5.getStatusTable = __FUNC_6C41_
	registerVal4.models = registerVal5
	registerVal5 = {}
	local function __FUNC_6C99_(arg1, arg2, arg3)
		EmblemChooseColor_SetOpacity(arg1, arg2, Enum.CustomizationColorNum.CUSTOMIZATION_COLOR_0, arg3, arg0)
	end

	registerVal5.updateAction = __FUNC_6C99_
	registerVal4.properties = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.actionName = "MENU_EMBLEM_COLOR_2_OPACITY"
	registerVal5.image = "t7_pc_ps_menu_opacity"
	registerVal5.widgetType = "slider"
	registerVal5.perControllerValueModel = "Emblem.EmblemSelectedLayerProperties.opacity1"
	registerVal5.perControllerStatusModel = "Emblem.EmblemProperties.isColor1NoColor"
	registerVal5.lowValue = 0.000000
	registerVal5.highValue = 100.000000
	local function __FUNC_6D6A_()
		local registerVal0 = {}
		local registerVal1 = {}
		registerVal1.disabled = true
		registerVal0[1.000000] = registerVal1
		return registerVal0
	end

	registerVal5.getStatusTable = __FUNC_6D6A_
	registerVal4.models = registerVal5
	registerVal5 = {}
	local function __FUNC_6DC1_(arg1, arg2, arg3)
		EmblemChooseColor_SetOpacity(arg1, arg2, Enum.CustomizationColorNum.CUSTOMIZATION_COLOR_1, arg3, arg0)
	end

	registerVal5.updateAction = __FUNC_6DC1_
	registerVal4.properties = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.actionName = "MENU_EMBLEM_GRADIENT_ROTATION"
	registerVal5.image = "t7_pc_ps_menu_radial_gradient"
	registerVal5.widgetType = "slider"
	registerVal5.perControllerValueModel = "Emblem.EmblemSelectedLayerProperties.gradient_angle"
	registerVal5.lowValue = 0.000000
	registerVal5.highValue = 360.000000
	registerVal4.models = registerVal5
	registerVal5 = {}
	local function __FUNC_6E92_(arg1, arg2, arg3)
		local registerVal5 = {}
		registerVal5 = {"lowValue", "highValue"}
		local registerVal3 = CoD.PCUtil.GetElementModelValues(arg2, registerVal5)
		EmblemGradient_SetAngle(arg1, arg2, ((registerVal3.highValue - registerVal3.lowValue) * arg3), arg0)
	end

	registerVal5.updateAction = __FUNC_6E92_
	registerVal4.properties = registerVal5
	table.insert({}, registerVal4)
	return {}
end

function CoD.PCUtil.Craft_GetEmblemEditorMaterialActions()
	local registerVal3 = {}
	local registerVal4 = {}
	registerVal4.actionName = "PLATFORM_MODE"
	registerVal4.widgetType = "header"
	registerVal3.models = registerVal4
	table.insert({}, registerVal3)
	registerVal3 = {}
	registerVal4 = {}
	registerVal4.actionName = "PLATFORM_SWITCH_TO_FREE_SCALE"
	registerVal4.image = "t7_pc_ps_menu_free_scale"
	registerVal4.widgetType = "button"
	registerVal4.perControllerStatusModel = "Emblem.EmblemProperties.materialScaleMode"
	local function __FUNC_73AB_()
		local registerVal0 = {}
		local registerVal2 = {}
		registerVal2.label = "PLATFORM_SWITCH_TO_FREE_SCALE"
		registerVal0[Enum.CustomizationScaleType.CUSTOMIZATION_SCALE_TYPE_FIXED] = registerVal2
		registerVal2 = {}
		registerVal2.label = "PLATFORM_SWITCH_TO_FIXED_SCALE"
		registerVal0[Enum.CustomizationScaleType.CUSTOMIZATION_SCALE_TYPE_FREE] = registerVal2
		return registerVal0
	end

	registerVal4.getStatusTable = __FUNC_73AB_
	registerVal3.models = registerVal4
	registerVal4 = {}
	registerVal4.m_button = Enum.LUIButton.LUI_KEY_RSTICK_PRESSED
	registerVal3.properties = registerVal4
	table.insert({}, registerVal3)
	registerVal3 = {}
	registerVal4 = {}
	registerVal4.actionName = "MENU_CONTROLS"
	registerVal4.widgetType = "header"
	registerVal3.models = registerVal4
	table.insert({}, registerVal3)
	registerVal3 = {}
	registerVal4 = {}
	registerVal4.actionName = "MENU_EMBLEM_ROTATE_MATERIAL"
	registerVal4.image = "t7_pc_ps_menu_rotate"
	registerVal4.widgetType = "slider"
	registerVal4.perControllerValueModel = "Emblem.EmblemSelectedLayerProperties.material_angle"
	registerVal4.lowValue = 0.000000
	registerVal4.highValue = 360.000000
	registerVal3.models = registerVal4
	registerVal4 = {}
	local function __FUNC_7507_(arg0, arg1, arg2)
		Engine.ExecNow(controller, ("emblemSetMaterialAngle " .. (359.000000 * arg2)))
	end

	registerVal4.updateAction = __FUNC_7507_
	registerVal3.properties = registerVal4
	table.insert({}, registerVal3)
	return {}
end

function CoD.PCUtil.GamepadsMapped(arg0)
	local registerVal1 = Engine.GamepadsConnectedIsActive(arg0)
	if registerVal1 == true then
		return true
	end
	registerVal1 = Engine.GamepadsConnectedCount()
	if 0.000000 < registerVal1 then
		Engine.Exec(arg0, "gpadMapAny ")
		return true
	end
	return false
end

function CoD.PCUtil.SetupFakeMouse(arg0, arg1, arg2)
	arg0:setHandleMouse(true)
	local registerVal3, registerVal4, registerVal5, registerVal6 = arg0.mouseCursor:getLocalRect()
	arg0.mouseCursorWidth = (registerVal5 - registerVal3)
	arg0.mouseCursorHeight = (registerVal6 - registerVal4)
	if arg0.mouseCursor and arg0.mouseCursorWidth and arg0.mouseCursorHeight then
		local function __FUNC_78D5_(arg0, arg1)
			local registerVal2, registerVal3, registerVal4 = LUI.UIElement.IsMouseInsideElement(arg0, arg1)
			local registerVal5, registerVal6, registerVal7, registerVal8 = arg0:getLocalRect()
			local registerVal11, registerVal12, registerVal13, registerVal14 = arg0:getRect()
			local registerVal17 = CoD.ClampColor((((registerVal3 - registerVal11) / (registerVal13 - registerVal11)) * (registerVal7 - registerVal5)), 0.000000, (registerVal7 - registerVal5))
			local registerVal18 = CoD.ClampColor((((registerVal4 - registerVal12) / (registerVal14 - registerVal12)) * (registerVal8 - registerVal6)), 0.000000, (registerVal8 - registerVal6))
			arg0.mouseCursor:setLeftRight(true, false, registerVal17, (registerVal17 + arg0.mouseCursorWidth))
			arg0.mouseCursor:setTopBottom(true, false, registerVal18, (registerVal18 + arg0.mouseCursorHeight))
			LUI.UIElement.MouseMoveEvent(arg0, arg1)
		end

		arg0:registerEventHandler("mousemove", __FUNC_78D5_)
	end
	local function __FUNC_7B39_(arg0, arg2)
		HideMouseCursor(arg1)
		arg0:playClip("Over")
	end

	arg0:registerEventHandler("mouseenter", __FUNC_7B39_)
	local function __FUNC_7BB5_(arg0, arg2)
		ShowMouseCursor(arg1)
		arg0:playClip("DefaultClip")
	end

	arg0:registerEventHandler("mouseleave", __FUNC_7BB5_)
	local function __FUNC_7C38_()
		ShowMouseCursor(arg1)
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "close", __FUNC_7C38_)
end

