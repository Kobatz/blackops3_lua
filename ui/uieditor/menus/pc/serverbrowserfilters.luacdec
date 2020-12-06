-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.backgrounds.MP_Background")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.PC.ServerBrowser.ServerBrowserCheckBox")
require("ui.uieditor.widgets.Scrollbars.verticalScrollbar")
require("ui.uieditor.widgets.Groups.GroupsInputButtonScroll")
require("ui.uieditor.widgets.Groups.GroupsSubTitle")
local function __FUNC_566_(arg0)
	local registerVal1 = {}
	registerVal1.mp_freerun_01 = 1.000000
	registerVal1.mp_freerun_02 = 2.000000
	registerVal1.mp_freerun_03 = 3.000000
	registerVal1.mp_freerun_04 = 4.000000
	if registerVal1[arg0] == nil then
	end
	return true
end

local function __FUNC_635_(arg0, arg1)
	if CoD.mapsTable[arg0].unique_id >= CoD.mapsTable[arg1].unique_id then
	end
	return true
end

local function __FUNC_6F7_(arg0, arg1)
	local function __FUNC_944_(arg0)
		if CoD.mapsTable[arg0].dlc_pack == 0.000000 and CoD.mapsTable[arg0].session_mode == Enum.eModes.MODE_MULTIPLAYER then
			local registerVal1 = __FUNC_566_(arg0)
		else
		end
		return true
	end

	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.type = Enum.SteamServerFilterType.STEAM_SERVER_BROWSER_FILTERTYPE_MAP
	registerVal8.id = "any"
	registerVal8.name = "PLATFORM_ANY"
	registerVal7.models = registerVal8
	table.insert({}, registerVal7)
	local registerVal5, registerVal6, registerVal7 = LUI.IterateTableBySortedKeys(CoD.mapsTable, __FUNC_635_, __FUNC_944_)
	for index8,value9 in registerVal5, registerVal6, registerVal7 do
		local registerVal12 = {}
		local registerVal13 = {}
		registerVal13.type = Enum.SteamServerFilterType.STEAM_SERVER_BROWSER_FILTERTYPE_MAP
		registerVal13.id = index8
		registerVal13.name = value9.mapName
		registerVal12.models = registerVal13
		table.insert({}, registerVal12)
	end
	return {}
end

local registerVal4 = DataSourceHelpers.ListSetup("ServerBrowserFilter", __FUNC_6F7_, true)
DataSources.ServerBrowserFilter = registerVal4
local function __FUNC_A91_(arg0, arg1)
	local function __FUNC_C71_(arg0)
		if 0.000000 < CoD.mapsTable[arg0].dlc_pack and CoD.mapsTable[arg0].session_mode == Enum.eModes.MODE_MULTIPLAYER then
			local registerVal1 = __FUNC_566_(arg0)
		else
		end
		return true
	end

	local registerVal5, registerVal6, registerVal7 = LUI.IterateTableBySortedKeys(CoD.mapsTable, __FUNC_635_, __FUNC_C71_)
	for index8,value9 in registerVal5, registerVal6, registerVal7 do
		local registerVal12 = {}
		local registerVal13 = {}
		registerVal13.type = Enum.SteamServerFilterType.STEAM_SERVER_BROWSER_FILTERTYPE_MAP
		registerVal13.id = index8
		registerVal13.name = value9.mapName
		registerVal12.models = registerVal13
		table.insert({}, registerVal12)
	end
	return {}
end

local registerVal5 = DataSourceHelpers.ListSetup("ServerBrowserDLCFilter", __FUNC_A91_, true)
DataSources.ServerBrowserDLCFilter = registerVal5
local function __FUNC_DBD_(arg0, arg1)
	local registerVal3 = Engine.GetGametypesBase(Enum.eModes.MODE_MULTIPLAYER)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.type = Enum.SteamServerFilterType.STEAM_SERVER_BROWSER_FILTERTYPE_GAMETYPE
	registerVal7.id = "any"
	registerVal7.name = "PLATFORM_ANY"
	registerVal6.models = registerVal7
	table.insert({}, registerVal6)
	local registerVal4, registerVal5, registerVal6 = pairs(registerVal3)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		local registerVal9 = CoD.AllowGameType(value8.gametype)
		if value8.category == "standard" and registerVal9 then
			local registerVal11 = {}
			local registerVal12 = {}
			registerVal12.type = Enum.SteamServerFilterType.STEAM_SERVER_BROWSER_FILTERTYPE_GAMETYPE
			registerVal12.id = value8.gametype
			registerVal12.name = value8.name
			registerVal11.models = registerVal12
			table.insert({}, registerVal11)
		end
	end
	return {}
end

local registerVal6 = DataSourceHelpers.ListSetup("ServerBrowserGameModeFilter", __FUNC_DBD_, true)
DataSources.ServerBrowserGameModeFilter = registerVal6
local function __FUNC_10BA_(arg0, arg1)
	local registerVal5 = {}
	local registerVal6 = {}
	registerVal6.attribute = "any"
	registerVal6.name = "PLATFORM_ANY"
	registerVal5.models = registerVal6
	table.insert({}, registerVal5)
	registerVal5 = {}
	registerVal6 = {}
	registerVal6.attribute = Enum.SteamServerAttributeFilter.STEAM_SERVER_BROWSER_ATTRIBUTEFILTER_DEDICATED
	registerVal6.name = "PLATFORM_MODS_DEDICATED"
	registerVal5.models = registerVal6
	table.insert({}, registerVal5)
	registerVal5 = {}
	registerVal6 = {}
	registerVal6.attribute = Enum.SteamServerAttributeFilter.STEAM_SERVER_BROWSER_ATTRIBUTEFILTER_NOTDEDICATED
	registerVal6.name = "PLATFORM_MODS_NOTDEDICATED"
	registerVal5.models = registerVal6
	table.insert({}, registerVal5)
	registerVal5 = {}
	registerVal6 = {}
	registerVal6.attribute = Enum.SteamServerAttributeFilter.STEAM_SERVER_BROWSER_ATTRIBUTEFILTER_RANKED
	registerVal6.name = "PLATFORM_MODS_RANKED"
	registerVal5.models = registerVal6
	table.insert({}, registerVal5)
	registerVal5 = {}
	registerVal6 = {}
	registerVal6.attribute = Enum.SteamServerAttributeFilter.STEAM_SERVER_BROWSER_ATTRIBUTEFILTER_UNRANKED
	registerVal6.name = "PLATFORM_MODS_UNRANKED"
	registerVal5.models = registerVal6
	table.insert({}, registerVal5)
	registerVal5 = {}
	registerVal6 = {}
	registerVal6.attribute = Enum.SteamServerAttributeFilter.STEAM_SERVER_BROWSER_ATTRIBUTEFILTER_HARDCORE
	registerVal6.name = "PLATFORM_MODS_HARDCORE"
	registerVal5.models = registerVal6
	table.insert({}, registerVal5)
	registerVal5 = {}
	registerVal6 = {}
	registerVal6.attribute = Enum.SteamServerAttributeFilter.STEAM_SERVER_BROWSER_ATTRIBUTEFILTER_CORE
	registerVal6.name = "PLATFORM_MODS_CORE"
	registerVal5.models = registerVal6
	table.insert({}, registerVal5)
	return {}
end

local registerVal7 = DataSourceHelpers.ListSetup("ServerBrowserAttributeFilter", __FUNC_10BA_, true)
DataSources.ServerBrowserAttributeFilter = registerVal7
local function __FUNC_1575_(arg0, arg1)
	local registerVal3 = Engine.Mods_Lists_GetInfoEntries(LuaEnums.MODS_BASE_PATH, 0.000000, Engine.Mods_Lists_GetInfoEntriesCount(LuaEnums.MODS_BASE_PATH))
	if registerVal3 then
		for index4=0.000000, #0.000000, 1.000000 do
			local registerVal11 = {}
			local registerVal12 = {}
			registerVal12.type = Enum.SteamServerFilterType.STEAM_SERVER_BROWSER_FILTERTYPE_MOD
			registerVal12.id = registerVal3[index4].ugcName
			registerVal12.name = registerVal3[index4].name
			registerVal11.models = registerVal12
			table.insert({}, registerVal11)
		end
	end
	return {}
end

local registerVal8 = DataSourceHelpers.ListSetup("ServerBrowserModsFilter", __FUNC_1575_, true)
DataSources.ServerBrowserModsFilter = registerVal8
local function __FUNC_17D1_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "serverBrowser.filterRefresh")
	local registerVal4 = Engine.GetGlobalModel()
	registerVal3 = Engine.CreateModel(registerVal4, "steamServer.keywordsFilter")
	registerVal4 = Engine.GetModelValue(registerVal3)
	if registerVal4 then
		CoD.PCUtil.SetServerKeywordsFilter(registerVal4)
	else
		Engine.SetModelValue(registerVal3, "")
	end
end

local function __FUNC_19B4_(arg0, arg1)
	arg0.dlcMapFilters:setDataSource("ServerBrowserDLCFilter")
	arg0.gameModeFilters:setDataSource("ServerBrowserGameModeFilter")
	arg0.attributeFilters:setDataSource("ServerBrowserAttributeFilter")
	arg0.modsFilters:setDataSource("ServerBrowserModsFilter")
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.GetModel(registerVal3, "steamServer.keywordsFilter")
	local function __FUNC_1C43_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			arg0.keywordsInput.verticalScrollingTextBox.textBox:setText(registerVal1)
		end
	end

	local registerVal4 = arg0.keywordsInput:subscribeToModel(registerVal2, __FUNC_1C43_)
	arg0.keywordsInput.subscription = registerVal4
end

local function __FUNC_1D42_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("ServerBrowserFilters")
	if __FUNC_17D1_ then
		__FUNC_17D1_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "ServerBrowserFilters.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.MP_Background.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.MPBackground = registerVal3
	local registerVal4 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal4:setTopBottom(true, false, 95.000000, 712.250000)
	registerVal1:addElement(registerVal4)
	registerVal1.FEMenuLeftGraphics = registerVal4
	local registerVal5 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5.titleLabel:setText(Engine.Localize("MENU_FILTER_SERVERS_CAPS"))
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_FILTER_SERVERS_CAPS"))
	registerVal1:addElement(registerVal5)
	registerVal1.MenuFrame = registerVal5
	local registerVal6 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, false, 90.000000, 240.000000)
	registerVal6:setTopBottom(true, false, 125.000000, 663.000000)
	registerVal6:setWidgetType(CoD.ServerBrowserCheckBox)
	registerVal6:setVerticalCount(20.000000)
	registerVal6:setDataSource("ServerBrowserFilter")
	local function __FUNC_36F4_(arg1, arg2)
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

	registerVal6:registerEventHandler("gain_focus", __FUNC_36F4_)
	local function __FUNC_3887_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_3887_)
	local function __FUNC_3956_(arg0, arg1, arg2, arg3)
		ServerBrowserToggleFilter(registerVal1, arg0, arg1, arg3)
		return true
	end

	local function __FUNC_39C3_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal6, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_3956_, __FUNC_39C3_, false)
	registerVal1:addElement(registerVal6)
	registerVal1.mapFilters = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 90.000000, 290.000000)
	registerVal7:setTopBottom(true, false, 95.000000, 125.000000)
	registerVal7:setText(Engine.Localize("MENU_MAPS_CAPS"))
	registerVal7:setTTF("fonts/default.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal7)
	registerVal1.mapsLabel = registerVal7
	local registerVal8 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal8:makeFocusable()
	registerVal8:setLeftRight(true, false, 255.000000, 405.000000)
	registerVal8:setTopBottom(true, false, 125.000000, 663.000000)
	registerVal8:setWidgetType(CoD.ServerBrowserCheckBox)
	registerVal8:setVerticalCount(20.000000)
	local function __FUNC_3ABE_(arg1, arg2)
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

	registerVal8:registerEventHandler("gain_focus", __FUNC_3ABE_)
	local function __FUNC_3C4F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("lose_focus", __FUNC_3C4F_)
	local function __FUNC_3D1E_(arg0, arg1, arg2, arg3)
		ServerBrowserToggleFilter(registerVal1, arg0, arg1, arg3)
		return true
	end

	local function __FUNC_3D8B_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal8, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_3D1E_, __FUNC_3D8B_, false)
	registerVal1:addElement(registerVal8)
	registerVal1.dlcMapFilters = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, false, 255.000000, 455.000000)
	registerVal9:setTopBottom(true, false, 95.000000, 125.000000)
	registerVal9:setText(Engine.Localize("MPUI_DLC_MAPS_CAPS"))
	registerVal9:setTTF("fonts/default.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal9)
	registerVal1.dlcMapsLabel = registerVal9
	local registerVal10 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal10:makeFocusable()
	registerVal10:setLeftRight(true, false, 419.200000, 569.200000)
	registerVal10:setTopBottom(true, false, 125.000000, 663.000000)
	registerVal10:setWidgetType(CoD.ServerBrowserCheckBox)
	registerVal10:setVerticalCount(20.000000)
	local function __FUNC_3E86_(arg1, arg2)
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

	registerVal10:registerEventHandler("gain_focus", __FUNC_3E86_)
	local function __FUNC_4017_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal10:registerEventHandler("lose_focus", __FUNC_4017_)
	local function __FUNC_40E6_(arg0, arg1, arg2, arg3)
		ServerBrowserToggleFilter(registerVal1, arg0, arg1, arg3)
		return true
	end

	local function __FUNC_4153_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal10, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_40E6_, __FUNC_4153_, false)
	registerVal1:addElement(registerVal10)
	registerVal1.gameModeFilters = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, 419.200000, 619.200000)
	registerVal11:setTopBottom(true, false, 95.000000, 125.000000)
	registerVal11:setText(Engine.Localize("MPUI_GAMEMODE_CAPS"))
	registerVal11:setTTF("fonts/default.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal11)
	registerVal1.gameModesLabel = registerVal11
	local registerVal12 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal12:makeFocusable()
	registerVal12:setLeftRight(true, false, 581.200000, 731.200000)
	registerVal12:setTopBottom(true, false, 125.000000, 339.000000)
	registerVal12:setWidgetType(CoD.ServerBrowserCheckBox)
	registerVal12:setVerticalCount(8.000000)
	local function __FUNC_424E_(arg1, arg2)
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

	registerVal12:registerEventHandler("gain_focus", __FUNC_424E_)
	local function __FUNC_43DF_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal12:registerEventHandler("lose_focus", __FUNC_43DF_)
	local function __FUNC_44AE_(arg0, arg1, arg2, arg3)
		ServerBrowserToggleFilter(registerVal1, arg0, arg1, arg3)
		return true
	end

	local function __FUNC_451B_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal12, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_44AE_, __FUNC_451B_, false)
	registerVal1:addElement(registerVal12)
	registerVal1.attributeFilters = registerVal12
	local registerVal13 = LUI.UIText.new()
	registerVal13:setLeftRight(true, false, 581.200000, 781.200000)
	registerVal13:setTopBottom(true, false, 95.000000, 125.000000)
	registerVal13:setText(Engine.Localize("MENU_TYPE_CAPS"))
	registerVal13:setTTF("fonts/default.ttf")
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal13)
	registerVal1.attributeLabel = registerVal13
	local registerVal14 = LUI.UITightText.new()
	registerVal14:setLeftRight(true, false, 746.700000, 815.700000)
	registerVal14:setTopBottom(true, false, 95.000000, 125.000000)
	registerVal14:setText(Engine.Localize("MENU_MODS_CAPS"))
	registerVal14:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal14)
	registerVal1.modsLabel = registerVal14
	local registerVal15 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal15:makeFocusable()
	registerVal15:setLeftRight(true, false, 746.700000, 896.700000)
	registerVal15:setTopBottom(true, false, 125.000000, 339.000000)
	registerVal15:setWidgetType(CoD.ServerBrowserCheckBox)
	registerVal15:setVerticalCount(8.000000)
	registerVal15:setVerticalScrollbar(CoD.verticalScrollbar)
	local function __FUNC_4616_(arg1, arg2)
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

	registerVal15:registerEventHandler("gain_focus", __FUNC_4616_)
	local function __FUNC_47A7_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal15:registerEventHandler("lose_focus", __FUNC_47A7_)
	local function __FUNC_4876_(arg0, arg1, arg2, arg3)
		ServerBrowserToggleFilter(registerVal1, arg0, arg1, arg3)
		return true
	end

	local function __FUNC_48E3_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal15, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_4876_, __FUNC_48E3_, false)
	registerVal1:addElement(registerVal15)
	registerVal1.modsFilters = registerVal15
	local registerVal16 = CoD.GroupsInputButtonScroll.new(registerVal1, arg0)
	registerVal16:setLeftRight(true, false, 569.200000, 954.200000)
	registerVal16:setTopBottom(true, false, 453.000000, 561.500000)
	registerVal16.verticalScrollingTextBox.textBox:setText(Engine.Localize(""))
	registerVal16.verticalScrollingTextBox.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local function __FUNC_49DE_(arg1, arg2)
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

	registerVal16:registerEventHandler("gain_focus", __FUNC_49DE_)
	local function __FUNC_4B6F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal16:registerEventHandler("lose_focus", __FUNC_4B6F_)
	local function __FUNC_4C3E_(arg0, arg1, arg2, arg3)
		ServerFiltersEditKeywords(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_4CA7_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal16, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_4C3E_, __FUNC_4CA7_, false)
	registerVal1:addElement(registerVal16)
	registerVal1.keywordsInput = registerVal16
	local registerVal17 = CoD.GroupsSubTitle.new(registerVal1, arg0)
	registerVal17:setLeftRight(true, false, 569.200000, 737.200000)
	registerVal17:setTopBottom(true, false, 413.000000, 445.000000)
	registerVal17.weaponNameLabel:setText(Engine.Localize("PLATFORM_KEYWORDS_CAPS"))
	registerVal1:addElement(registerVal17)
	registerVal1.keywordsTitle = registerVal17
	local registerVal18 = {}
	registerVal18.right = registerVal8
	registerVal6.navigation = registerVal18
	registerVal18 = {}
	registerVal18.left = registerVal6
	registerVal18.right = registerVal10
	registerVal8.navigation = registerVal18
	registerVal18 = {}
	registerVal18.left = registerVal8
	registerVal18.right = registerVal16
	registerVal10.navigation = registerVal18
	registerVal18 = {}
	registerVal18.left = registerVal10
	registerVal18.right = registerVal15
	registerVal18.down = registerVal16
	registerVal12.navigation = registerVal18
	registerVal18 = {}
	registerVal18.left = registerVal12
	registerVal18.down = registerVal16
	registerVal15.navigation = registerVal18
	registerVal18 = {}
	registerVal18.left = registerVal10
	local registerVal19 = {}
	registerVal19 = {registerVal12, registerVal15}
	registerVal18.up = registerVal19
	registerVal16.navigation = registerVal18
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_4DA2_(arg1, arg2)
		ServerFiltersHandleKeyboardComplete(registerVal1, arg1, arg0, arg2)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("ui_keyboard_input", __FUNC_4DA2_)
	local function __FUNC_4E52_(arg0, arg1, arg2, arg3)
		RefreshLobbyServerBrowser(registerVal1)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_4ED3_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_4E52_, __FUNC_4ED3_, false)
	registerVal5:setModel(registerVal1.buttonModel, arg0)
	registerVal6.id = "mapFilters"
	registerVal8.id = "dlcMapFilters"
	registerVal10.id = "gameModeFilters"
	registerVal12.id = "attributeFilters"
	registerVal15.id = "modsFilters"
	registerVal16.id = "keywordsInput"
	local registerVal20 = {}
	registerVal20.name = "menu_loaded"
	registerVal20.controller = arg0
	registerVal1:processEvent(registerVal20)
	registerVal20 = {}
	registerVal20.name = "update_state"
	registerVal20.menu = registerVal1
	registerVal1:processEvent(registerVal20)
	registerVal18 = registerVal1:restoreState()
	if not registerVal18 then
		registerVal20 = {}
		registerVal20.name = "gain_focus"
		registerVal20.controller = arg0
		registerVal1.mapFilters:processEvent(registerVal20)
	end
	local function __FUNC_4FCD_(arg1)
		arg1.MPBackground:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.MenuFrame:close()
		arg1.mapFilters:close()
		arg1.dlcMapFilters:close()
		arg1.gameModeFilters:close()
		arg1.attributeFilters:close()
		arg1.modsFilters:close()
		arg1.keywordsInput:close()
		arg1.keywordsTitle:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "ServerBrowserFilters.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_4FCD_)
	if __FUNC_19B4_ then
		__FUNC_19B4_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.ServerBrowserFilters = __FUNC_1D42_
