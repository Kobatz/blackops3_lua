-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.StartMenu.StartMenu_lineGraphics_Options")
require("ui.uieditor.widgets.PC.StartMenu.Dropdown.OptionDropdown")
require("ui.uieditor.widgets.PC.Utility.OptionInfoWidget")
require("ui.uieditor.widgets.StartMenu.StartMenu_Options_Button")
require("ui.uieditor.widgets.StartMenu.StartMenu_Options_SliderBar")
local function __FUNC_523_(arg0)
	local registerVal4 = {}
	local registerVal5 = {}
	registerVal5.value = 0.000000
	registerVal5.valueDisplay = "MENU_DISABLED"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.value = 1.000000
	registerVal5.valueDisplay = "MENU_ENABLED"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	return {}
end

local registerVal1 = DataSourceHelpers.ListSetup("PC.OptionPCGraphicContent", __FUNC_523_, true)
DataSources.OptionPCGraphicContent = registerVal1
local function __FUNC_637_(arg0)
	local registerVal4 = {}
	local registerVal5 = {}
	registerVal5.value = 0.000000
	registerVal5.valueDisplay = "MENU_DISABLED"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.value = 1.000000
	registerVal5.valueDisplay = "MENU_ENABLED"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	return {}
end

registerVal1 = DataSourceHelpers.ListSetup("PC.OptionsPCGraphicContentUGC", __FUNC_637_, true)
DataSources.OptionPCGraphicContentUGC = registerVal1
local function __FUNC_74B_(arg0)
	local registerVal4 = {}
	local registerVal5 = {}
	registerVal5.label = "MENU_GRAPHIC_CONTENT"
	registerVal5.description = "MENU_GRAPHIC_CONTENT_DESC"
	registerVal5.profileVarName = "cg_mature"
	registerVal5.profileType = "user"
	registerVal5.widgetType = "dropdown"
	registerVal5.datasource = "OptionPCGraphicContent"
	registerVal4.models = registerVal5
	registerVal4.properties = CoD.PCUtil.OptionsGenericDropdownProperties
	table.insert({}, registerVal4)
	if Engine.IsDeviceRestrictingContent then
		local registerVal3 = Engine.IsDeviceRestrictingContent(arg0)
	end
	if registerVal3 then
	end
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.label = "MENU_USER_GENERATED_CONTENT"
	registerVal7.description = "PLATFORM_USER_GENERATED_CONTENT_DISABLED"
	registerVal7.profileVarName = "cg_enableUGC"
	registerVal7.profileType = "user"
	registerVal7.widgetType = "dropdown"
	registerVal7.datasource = "OptionPCGraphicContentUGC"
	registerVal7.disabled = registerVal3
	registerVal6.models = registerVal7
	registerVal6.properties = CoD.PCUtil.OptionsGenericDropdownProperties
	table.insert({}, registerVal6)
	return {}
end

registerVal1 = DataSourceHelpers.ListSetup("PC.OptionGraphicContentPC", __FUNC_74B_, true)
DataSources.OptionGraphicContentPC = registerVal1
function DataSources.OptionGraphicContentPC.getWidgetTypeForItem(arg0, arg1, arg2)
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

local function __FUNC_CBF_(arg0, arg1)
	local registerVal4 = {}
	registerVal4.name = "options_refresh"
	registerVal4.controller = arg1
	arg0:dispatchEventToChildren(registerVal4)
	arg0.graphicsList.m_managedItemPriority = true
	local function __FUNC_DE9_(arg0, arg1)
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

	arg0:registerEventHandler("dropdown_triggered", __FUNC_DE9_)
end

local function __FUNC_F18_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("StartMenu_Options_GraphicContent_PC")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "StartMenu_Options_GraphicContent_PC.buttonPrompts")
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
	registerVal4.titleLabel:setText(Engine.Localize(LocalizeToUpperString("MENU_CONTENT_FILTER")))
	registerVal4.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize(LocalizeToUpperString("MENU_CONTENT_FILTER")))
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
	local registerVal7 = LUI.UIList.new(registerVal1, arg0, 0.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal7:makeFocusable()
	registerVal7:setLeftRight(true, false, 64.000000, 564.000000)
	registerVal7:setTopBottom(true, false, 132.000000, 608.000000)
	registerVal7:setDataSource("OptionGraphicContentPC")
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
	local function __FUNC_1D2F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.description:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal7, "description", true, __FUNC_1D2F_)
	local function __FUNC_1E07_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.title.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal7, "label", true, __FUNC_1E07_)
	local function __FUNC_1EF7_(arg0, arg1)
		ShowHeaderIconOnly(registerVal1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_1EF7_)
	local function __FUNC_1F89_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		UpdateGamerprofile(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_200C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1F89_, __FUNC_200C_, false)
	local function __FUNC_2109_(arg0, arg1, arg2, arg3)
		CloseStartMenu(arg1, arg2)
		return true
	end

	local function __FUNC_2164_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_DISMISS_MENU")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_START, "M", __FUNC_2109_, __FUNC_2164_, false)
	local function __FUNC_2262_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_2294_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_2262_, __FUNC_2294_, false)
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
	local function __FUNC_2392_(arg1)
		arg1.MenuFrame:close()
		arg1.StartMenulineGraphicsOptions0:close()
		arg1.graphicsList:close()
		arg1.optionInfo:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "StartMenu_Options_GraphicContent_PC.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2392_)
	if __FUNC_CBF_ then
		__FUNC_CBF_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.StartMenu_Options_GraphicContent_PC = __FUNC_F18_
