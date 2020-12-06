-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.PC.ServerBrowser.ServerBrowserHeaderIconColumn")
require("ui.uieditor.widgets.PC.ServerBrowser.ServerBrowserHeaderNamedColumn")
local function __FUNC_28E_(arg0, arg1, arg2)
	arg0:setHandleMouseMove(true)
	arg0:setForceMouseEventDispatch(true)
	arg0.protected:setupSort(Enum.SteamServerSortType.STEAM_SERVER_SORT_TYPE_PROTECTED_ASCENDING, Enum.SteamServerSortType.STEAM_SERVER_SORT_TYPE_PROTECTED_DESCENDING)
	arg0.dedicated:setupSort(Enum.SteamServerSortType.STEAM_SERVER_SORT_TYPE_DEDICATED_ASCENDING, Enum.SteamServerSortType.STEAM_SERVER_SORT_TYPE_DEDICATED_DESCENDING)
	arg0.ranked:setupSort(Enum.SteamServerSortType.STEAM_SERVER_SORT_TYPE_RANKED_ASCENDING, Enum.SteamServerSortType.STEAM_SERVER_SORT_TYPE_RANKED_DESCENDING)
	arg0.name:setupSort(Enum.SteamServerSortType.STEAM_SERVER_SORT_TYPE_NAME_ASCENDING, Enum.SteamServerSortType.STEAM_SERVER_SORT_TYPE_NAME_DESCENDING)
	arg0.map:setupSort(Enum.SteamServerSortType.STEAM_SERVER_SORT_TYPE_MAP_ASCENDING, Enum.SteamServerSortType.STEAM_SERVER_SORT_TYPE_MAP_DESCENDING)
	arg0.skull:setupSort(Enum.SteamServerSortType.STEAM_SERVER_SORT_TYPE_HARDCORE_ASCENDING, Enum.SteamServerSortType.STEAM_SERVER_SORT_TYPE_HARDCORE_DESCENDING)
	arg0.mode:setupSort(Enum.SteamServerSortType.STEAM_SERVER_SORT_TYPE_GAMETYPE_ASCENDING, Enum.SteamServerSortType.STEAM_SERVER_SORT_TYPE_GAMETYPE_DESCENDING)
	arg0.players:setupSort(Enum.SteamServerSortType.STEAM_SERVER_SORT_TYPE_PLAYERS_ASCENDING, Enum.SteamServerSortType.STEAM_SERVER_SORT_TYPE_PLAYERS_DESCENDING)
	arg0.ping:setupSort(Enum.SteamServerSortType.STEAM_SERVER_SORT_TYPE_PING_ASCENDING, Enum.SteamServerSortType.STEAM_SERVER_SORT_TYPE_PING_DESCENDING)
end

local function __FUNC_A0A_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_28E_(arg0, arg1, arg2)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.ServerBrowserHeader = registerVal3
local function __FUNC_A7B_(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 2.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Left)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ServerBrowserHeader)
	registerVal2.id = "ServerBrowserHeader"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 700.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 28.000000)
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = CoD.ServerBrowserHeaderIconColumn.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 28.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3.icon:setImage(RegisterImage("uie_t7_icon_serverbrowser_protected"))
	registerVal2:addElement(registerVal3)
	registerVal2.protected = registerVal3
	local registerVal4 = CoD.ServerBrowserHeaderIconColumn.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 30.000000, 58.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4.icon:setImage(RegisterImage("uie_t7_icon_serverbrowser_dedicated"))
	registerVal2:addElement(registerVal4)
	registerVal2.dedicated = registerVal4
	local registerVal5 = CoD.ServerBrowserHeaderIconColumn.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 60.000000, 88.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5.icon:setImage(RegisterImage("uie_t7_icon_serverbrowser_ranked"))
	registerVal2:addElement(registerVal5)
	registerVal2.ranked = registerVal5
	local registerVal6 = CoD.ServerBrowserHeaderNamedColumn.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 90.000000, 330.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6.name.textBox:setText(Engine.Localize("EXE_SV_INFO_SERVERNAME"))
	registerVal2:addElement(registerVal6)
	registerVal2.name = registerVal6
	local registerVal7 = CoD.ServerBrowserHeaderNamedColumn.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 332.000000, 440.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal7.name.textBox:setText(Engine.Localize("EXE_SV_INFO_MAP"))
	registerVal2:addElement(registerVal7)
	registerVal2.map = registerVal7
	local registerVal8 = CoD.ServerBrowserHeaderIconColumn.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 442.000000, 470.000000)
	registerVal8:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal8.icon:setImage(RegisterImage("uie_t7_icon_serverbrowser_skull"))
	registerVal2:addElement(registerVal8)
	registerVal2.skull = registerVal8
	local registerVal9 = CoD.ServerBrowserHeaderNamedColumn.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 472.000000, 580.000000)
	registerVal9:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal9.name.textBox:setText(Engine.Localize("MENU_GAME_MODE_PRE"))
	registerVal2:addElement(registerVal9)
	registerVal2.mode = registerVal9
	local registerVal10 = CoD.ServerBrowserHeaderNamedColumn.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 582.000000, 650.000000)
	registerVal10:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal10.name.textBox:setText(Engine.Localize("MENU_PLAYERS"))
	registerVal2:addElement(registerVal10)
	registerVal2.players = registerVal10
	local registerVal11 = CoD.ServerBrowserHeaderNamedColumn.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 652.000000, 700.000000)
	registerVal11:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal11.name.textBox:setText(Engine.Localize("MENU_PING"))
	registerVal2:addElement(registerVal11)
	registerVal2.ping = registerVal11
	local function __FUNC_162F_(arg0)
		arg0.protected:close()
		arg0.dedicated:close()
		arg0.ranked:close()
		arg0.name:close()
		arg0.map:close()
		arg0.skull:close()
		arg0.mode:close()
		arg0.players:close()
		arg0.ping:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_162F_)
	if __FUNC_A0A_ then
		__FUNC_A0A_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ServerBrowserHeader.new = __FUNC_A7B_
