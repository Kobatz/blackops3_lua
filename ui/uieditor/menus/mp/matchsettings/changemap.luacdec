-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.Lobby.LobbyStreamerBlackFade")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.List1Button_Playlist")
require("ui.uieditor.widgets.Scrollbars.verticalScrollbar")
require("ui.uieditor.widgets.MP.MatchSettings.matchSettingsInfo")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
local function __FUNC_482_(arg0, arg1)
	if not CoD.useMouse then
		return 
	end
	local function __FUNC_5F6_(arg1, arg2)
		local registerVal2 = IsSelfInState(arg0, "SelectingMap")
		if registerVal2 then
			arg0.mapList:setMouseDisabled(false)
			arg0.mapCategoriesList:setMouseDisabled(true)
			arg0.m_categorySet = false
		else
			arg0.mapList:setMouseDisabled(true)
			arg0.mapCategoriesList:setMouseDisabled(false)
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "setState", __FUNC_5F6_)
	arg0.mapList:setMouseDisabled(true)
	local function __FUNC_740_(arg2, arg3)
		local registerVal2 = IsSelfInState(arg0, "SelectingMap")
		if registerVal2 and arg0.m_categorySet then
			CoD.PCUtil.SimulateButtonPress(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
		end
		arg0.m_categorySet = true
		return true
	end

	arg0.mapList:registerEventHandler("leftclick_outside", __FUNC_740_)
end

local function __FUNC_8AB_(arg0, arg1)
	__FUNC_482_(arg0, arg1)
end

local function __FUNC_8E4_(arg0)
	if CoD.CONTENT_DLC6_INDEX > CoD.mapsTable[arg0].dlc_pack and arg0 == "mp_redwood_ice" or arg0 == "mp_veiled_heyday" then
		return 10001.000000
	end
	if 0.000000 < CoD.mapsTable[arg0].dlc_pack then
		return 10000.000000
	end
	return CoD.mapsTable[arg0].dlc_pack
end

local function __FUNC_A19_(arg0)
	local registerVal3 = Engine.DvarString(nil, "ui_mapname")
	local registerVal2 = CoD.GetMapValue(registerVal3, "dlc_pack", CoD.CONTENT_ORIGINAL_MAP_INDEX)
	local function __FUNC_F17_(arg0, arg1)
		local registerVal2 = {}
		local registerVal3 = {}
		local registerVal4 = Engine.Localize(("MPUI_MAP_CATEGORY_" .. arg0 .. "_CAPS"))
		registerVal3.text = registerVal4
		registerVal4 = Engine.Localize(("MPUI_MAP_CATEGORY_" .. arg0 .. "_CAPS"))
		registerVal3.buttonText = registerVal4
		registerVal3.image = "playlist_map"
		registerVal4 = Engine.Localize(("MPUI_MAP_CATEGORY_" .. arg0 .. "_DESC"))
		registerVal3.description = registerVal4
		registerVal2.models = registerVal3
		registerVal3 = {}
		registerVal3.category = arg1
		if registerVal2 ~= arg1 then
		end
		registerVal3.selectIndex = true
		registerVal2.properties = registerVal3
		return registerVal2
	end

	local registerVal5 = Engine.GetGDTMapsTable()
	CoD.mapsTable = registerVal5
	local function __FUNC_10F3_(arg1)
		local registerVal1, registerVal2, registerVal3 = pairs(CoD.mapsTable)
		for index4,value5 in registerVal1, registerVal2, registerVal3 do
			local registerVal6 = __FUNC_8E4_(index4)
			if value5.session_mode == CoD.gameModeEnum and registerVal6 == arg1 then
				registerVal6 = ShowPurchasableMap(arg0, index4)
				registerVal6 = Engine.IsMapValid(index4)
				if not registerVal1 or registerVal6 then
					return true
				end
			end
		end
		return false
	end

	if CoD.isCampaign == true then
		table.insert({}, __FUNC_F17_("missions", CoD.CONTENT_ORIGINAL_MAP_INDEX))
		table.insert({}, __FUNC_F17_("dev", CoD.CONTENT_DEV_MAP_INDEX))
	else
		table.insert({}, __FUNC_F17_("standard", CoD.CONTENT_ORIGINAL_MAP_INDEX))
		registerVal5 = Dvar.ui_execdemo:get()
		registerVal5 = __FUNC_10F3_(10000.000000)
		if not registerVal5 and registerVal5 then
			table.insert({}, __FUNC_F17_("dlc", 10000.000000))
		end
		registerVal5 = Dvar.ui_execdemo:get()
		registerVal5 = __FUNC_10F3_(10001.000000)
		if not registerVal5 and registerVal5 then
			table.insert({}, __FUNC_F17_("dlc_bonus", 10001.000000))
		end
		registerVal5 = Mods_Enabled()
		registerVal5 = Engine.Mods_Lists_GetInfoEntries(LuaEnums.USERMAP_BASE_PATH, 0.000000, Engine.Mods_Lists_GetInfoEntriesCount(LuaEnums.USERMAP_BASE_PATH))
		if registerVal5 and registerVal5 ~= nil then
			table.insert({}, __FUNC_F17_("mods", CoD.CONTENT_MODS_INDEX))
		end
	end
	return {}
end

local registerVal7 = DataSourceHelpers.ListSetup("ChangeMapCategories", __FUNC_A19_, true)
DataSources.ChangeMapCategories = registerVal7
local function __FUNC_125B_(arg0, arg1)
	local registerVal3 = {}
	registerVal3.mp_sector = 1.000000
	registerVal3.mp_apartments = 2.000000
	registerVal3.mp_ethiopia = 3.000000
	registerVal3.mp_stronghold = 4.000000
	local registerVal4 = {}
	registerVal4.mp_freerun_01 = 1.000000
	registerVal4.mp_freerun_02 = 2.000000
	registerVal4.mp_freerun_03 = 3.000000
	registerVal4.mp_freerun_04 = 4.000000
	local function __FUNC_1B77_(arg0)
		if registerVal3[arg0] == nil then
		end
		return true
	end

	local function __FUNC_1BC5_(arg0)
		if registerVal4[arg0] == nil then
		end
		return true
	end

	local function __FUNC_1C15_(arg0, arg1)
		local registerVal2 = Dvar.ui_execdemo:get()
		if registerVal2 then
			registerVal2 = __FUNC_1B77_(arg0)
			registerVal2 = __FUNC_1B77_(arg0)
			if registerVal2 and registerVal2 then
				if registerVal3[arg0] >= registerVal3[arg1] then
				end
				return true
			else
				if CoD.mapsTable[arg0].unique_id >= CoD.mapsTable[arg1].unique_id then
				end
				return true
			end
		end
	end

	local function __FUNC_1D87_(arg1)
		if CoD.gameModeEnum ~= CoD.mapsTable[arg1].session_mode then
			return false
		end
		local registerVal1 = Engine.IsMapValid(arg1)
		registerVal1 = ShowPurchasableMap(arg0, arg1)
		if not registerVal1 and not registerVal1 then
			return false
		end
		registerVal1 = __FUNC_8E4_(arg1)
		if registerVal1 ~= CoD.perController[arg0].mapCategory then
		end
		local registerVal2 = Dvar.hideNewMap:get()
		local registerVal3 = tonumber(registerVal2)
		registerVal3 = Dvar.newMapName:get()
		if registerVal2 and registerVal3 == 1.000000 and arg1 == registerVal3 then
			return false
		end
		registerVal3 = Dvar.ui_execdemo:get()
		if registerVal3 and true then
			registerVal3 = __FUNC_1B77_(arg1)
		end
		registerVal3 = Engine.IsMpStillDownloading()
		if registerVal3 and registerVal3 then
			registerVal3 = __FUNC_1BC5_(arg1)
		end
		registerVal3 = IsFreeRunMap(arg1)
		if registerVal3 then
			return false
		end
		return registerVal3
	end

	local registerVal10 = Engine.SessionModeIsMode(CoD.SESSIONMODE_OFFLINE)
	local registerVal12 = Engine.DvarString(nil, "ui_mapname")
	local registerVal13, registerVal14, registerVal15 = LUI.IterateTableBySortedKeys(CoD.mapsTable, __FUNC_1C15_, __FUNC_1D87_)
	for index16,value17 in registerVal13, registerVal14, registerVal15 do
		local registerVal20 = {}
		local registerVal21 = {}
		local registerVal22 = Engine.Localize(value17.mapName)
		registerVal21.text = registerVal22
		registerVal22 = Engine.Localize(CoD.StoreUtility.PrependPurchaseIconIfNeeded(arg0, index16, value17.mapName))
		registerVal21.buttonText = registerVal22
		registerVal21.image = value17.previewImage
		registerVal22 = Engine.Localize(CoD.StoreUtility.AddUpsellToDescriptionIfNeeded(arg0, index16, value17.mapDescription))
		registerVal21.description = registerVal22
		registerVal21.dlcIndex = value17.dlc_pack
		registerVal20.models = registerVal21
		registerVal21 = {}
		registerVal21.mapName = index16
		if index16 ~= registerVal12 then
		end
		registerVal21.selectIndex = true
		registerVal22 = Engine.IsMpStillDownloading()
		if registerVal22 then
		end
		registerVal21.disabled = (not value17.isFreeRunMap)
		registerVal22 = Engine.IsMapValid(index16)
		registerVal21.purchasable = (not registerVal22)
		registerVal20.properties = registerVal21
		table.insert({}, registerVal20)
	end
	registerVal13 = Mods_Enabled()
	registerVal13 = Engine.Mods_Lists_GetInfoEntries(LuaEnums.USERMAP_BASE_PATH, 0.000000, Engine.Mods_Lists_GetInfoEntriesCount(LuaEnums.USERMAP_BASE_PATH))
	if registerVal13 and CoD.perController[arg0].mapCategory == CoD.CONTENT_MODS_INDEX and registerVal13 then
		for index14=0.000000, #0.000000, 1.000000 do
			local registerVal19 = LUI.startswith(registerVal13[index14].internalName, "mp_")
			if registerVal19 then
				registerVal21 = {}
				registerVal22 = {}
				registerVal22.text = registerVal13[index14].name
				local registerVal23 = string.sub(registerVal13[index14].name, 1.000000, 32.000000)
				registerVal22.buttonText = registerVal23
				registerVal22.image = registerVal13[index14].ugcName
				registerVal22.description = registerVal13[index14].description
				registerVal21.models = registerVal22
				registerVal22 = {}
				registerVal22.mapName = registerVal13[index14].ugcName
				if index14 ~= registerVal12 then
				end
				registerVal22.selectIndex = true
				registerVal21.properties = registerVal22
				table.insert({}, registerVal21)
			end
		end
	end
	CoD.StoreUtility.AddListDLCListener(arg1)
	return {}
end

local registerVal8 = DataSourceHelpers.ListSetup("ChangeMapMaps", __FUNC_125B_, true)
DataSources.ChangeMapMaps = registerVal8
local function __FUNC_20C3_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("ChangeMap")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "ChangeMap.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, -45.000000, 35.000000)
	registerVal3:setTopBottom(true, true, -43.000000, 102.000000)
	registerVal3:setRGB(0.310000, 0.310000, 0.310000)
	registerVal1:addElement(registerVal3)
	registerVal1.LeftPanel = registerVal3
	local registerVal4 = CoD.LobbyStreamerBlackFade.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 720.000000)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Transparent"
	local function __FUNC_3421_(arg1, arg2, arg3)
		return IsGlobalModelValueEqualTo(arg2, arg0, "hideWorldForStreamer", 0.000000)
	end

	registerVal8.condition = __FUNC_3421_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "hideWorldForStreamer")
	local function __FUNC_34AE_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hideWorldForStreamer"
		registerVal1:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_34AE_)
	registerVal1:addElement(registerVal4)
	registerVal1.FadeForStreamer = registerVal4
	local registerVal5 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5.titleLabel:setText(Engine.Localize("MPUI_CHANGE_MAP_CAPS"))
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MPUI_CHANGE_MAP_CAPS"))
	registerVal1:addElement(registerVal5)
	registerVal1.frame = registerVal5
	local registerVal6 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, false, 67.000000, 347.000000)
	registerVal6:setTopBottom(true, false, 109.000000, 277.000000)
	registerVal6:setWidgetType(CoD.List1Button_Playlist)
	registerVal6:setVerticalCount(5.000000)
	registerVal6:setDataSource("ChangeMapCategories")
	local function __FUNC_35D6_(arg1, arg2)
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

	registerVal6:registerEventHandler("gain_focus", __FUNC_35D6_)
	local function __FUNC_3767_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_3767_)
	local function __FUNC_3836_(arg0, arg1, arg2, arg3)
		SetElementPropertyOnPerControllerTable(arg2, "mapCategory", arg0, "category")
		UpdateElementDataSource(registerVal1, "mapList")
		SetMenuState(arg1, "SelectingMap")
		SetLoseFocusToElement(registerVal1, "mapCategoriesList", arg2)
		MakeElementNotFocusable(registerVal1, "mapCategoriesList", arg2)
		MakeElementFocusable(registerVal1, "mapList", arg2)
		SetFocusToElement(registerVal1, "mapList", arg2)
		PlaySoundSetSound(registerVal1, "list_action")
		return true
	end

	local function __FUNC_3A79_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal6, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_3836_, __FUNC_3A79_, false)
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Disabled_NoListFocus"
	local function __FUNC_3B76_(arg1, arg2, arg3)
		local registerVal3 = IsParentListInFocus(arg2)
		if not registerVal3 then
			registerVal3 = IsDisabled(arg2, arg0)
		else
		end
		return true
	end

	registerVal10.condition = __FUNC_3B76_
	local registerVal11 = {}
	registerVal11.stateName = "NoListFocus"
	local function __FUNC_3C05_(arg0, arg1, arg2)
		local registerVal3 = IsParentListInFocus(arg1)
		return (not registerVal3)
	end

	registerVal11.condition = __FUNC_3C05_
	registerVal9 = {registerVal10, registerVal11}
	registerVal6:mergeStateConditions(registerVal9)
	local function __FUNC_3C61_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		registerVal1:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:linkToElementModel(registerVal6, "disabled", true, __FUNC_3C61_)
	registerVal1:addElement(registerVal6)
	registerVal1.mapCategoriesList = registerVal6
	registerVal7 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal7:makeFocusable()
	registerVal7:setLeftRight(true, false, 287.000000, 567.000000)
	registerVal7:setTopBottom(true, false, 109.000000, 651.000000)
	registerVal7:setWidgetType(CoD.List1Button_Playlist)
	registerVal7:setVerticalCount(16.000000)
	registerVal7:setVerticalScrollbar(CoD.verticalScrollbar)
	registerVal7:setDataSource("ChangeMapMaps")
	local function __FUNC_3D7E_(arg1, arg2)
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

	registerVal7:registerEventHandler("gain_focus", __FUNC_3D7E_)
	local function __FUNC_3F0F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_3F0F_)
	local function __FUNC_3FDE_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementPropertyValue(arg0, "purchasable", true)
		if not registerVal4 then
			MapSelected(arg0, arg2)
			GoBack(registerVal1, arg2)
			ClearSavedState(registerVal1, arg2)
			PlaySoundSetSound(registerVal1, "action")
			return true
		else
			OpenPurchaseMapPackConfirmation(arg2, arg0, "MPCustomGameMapSelect", arg1)
			return true
		end
	end

	local function __FUNC_4176_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal7, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_3FDE_, __FUNC_4176_, false)
	registerVal10 = {}
	registerVal11 = {}
	registerVal11.stateName = "Disabled_NoListFocus"
	local function __FUNC_4272_(arg1, arg2, arg3)
		local registerVal3 = IsParentListInFocus(arg2)
		if not registerVal3 then
			registerVal3 = IsDisabled(arg2, arg0)
		else
		end
		return true
	end

	registerVal11.condition = __FUNC_4272_
	local registerVal12 = {}
	registerVal12.stateName = "NoListFocus"
	local function __FUNC_4301_(arg0, arg1, arg2)
		local registerVal3 = IsParentListInFocus(arg1)
		return (not registerVal3)
	end

	registerVal12.condition = __FUNC_4301_
	registerVal10 = {registerVal11, registerVal12}
	registerVal7:mergeStateConditions(registerVal10)
	local function __FUNC_435D_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		registerVal1:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:linkToElementModel(registerVal7, "disabled", true, __FUNC_435D_)
	registerVal1:addElement(registerVal7)
	registerVal1.mapList = registerVal7
	registerVal8 = CoD.matchSettingsInfo.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 600.000000, 1050.000000)
	registerVal8:setTopBottom(true, false, 109.000000, 659.000000)
	registerVal8.FRBestTime.BestTimeValueText:setText(Engine.Localize("--:--:--"))
	registerVal11 = {}
	registerVal12 = {}
	registerVal12.stateName = "AspectRatio_1x1"
	local function __FUNC_447A_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal12.condition = __FUNC_447A_
	registerVal11 = {registerVal12}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal1:addElement(registerVal8)
	registerVal1.categoryInfo = registerVal8
	registerVal9 = CoD.matchSettingsInfo.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 600.000000, 1216.000000)
	registerVal9:setTopBottom(true, false, 109.000000, 736.840000)
	registerVal9.FRBestTime.BestTimeValueText:setText(Engine.Localize("--:--:--"))
	registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "AspectRatio_1x1"
	local function __FUNC_44C4_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal13.condition = __FUNC_44C4_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal1:addElement(registerVal9)
	registerVal1.mapInfo = registerVal9
	registerVal10 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal10:setTopBottom(true, false, 84.000000, 701.250000)
	registerVal1:addElement(registerVal10)
	registerVal1.FEMenuLeftGraphics = registerVal10
	local function __FUNC_4511_(arg1)
		registerVal8:setModel(arg1, arg0)
	end

	registerVal8:linkToElementModel(registerVal6, nil, false, __FUNC_4511_)
	local function __FUNC_4562_(arg1)
		registerVal9:setModel(arg1, arg0)
	end

	registerVal9:linkToElementModel(registerVal7, nil, false, __FUNC_4562_)
	registerVal11 = {}
	registerVal11.right = registerVal7
	registerVal6.navigation = registerVal11
	registerVal11 = {}
	registerVal11.left = registerVal6
	registerVal7.navigation = registerVal11
	registerVal11 = {}
	registerVal12 = {}
	local function __FUNC_45B2_()
		registerVal1:setupElementClipCounter(4.000000)
		registerVal5:completeAnimation()
		registerVal1.frame:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal1.mapList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.categoryInfo:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.mapInfo:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal9, {})
	end

	registerVal12.DefaultClip = __FUNC_45B2_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_47B6_()
		registerVal1:setupElementClipCounter(4.000000)
		registerVal5:completeAnimation()
		registerVal1.frame:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal1.mapList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.categoryInfo:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.mapInfo:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal9, {})
	end

	registerVal12.DefaultClip = __FUNC_47B6_
	registerVal11.SelectingMap = registerVal12
	registerVal1.clipsPerState = registerVal11
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_49BA_(arg1, arg2)
		MakeElementNotFocusable(registerVal1, "mapList", arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_49BA_)
	local function __FUNC_4A6B_(arg1, arg2)
		SetElementStateByElementName(registerVal1, "frame", arg0, "Update")
		local registerVal5 = {}
		registerVal5.elementName = "frame"
		registerVal5.clipName = "Intro"
		PlayClipOnElement(registerVal1, registerVal5, arg0)
		PlayClip(registerVal1, "Intro", arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_opened", __FUNC_4A6B_)
	local function __FUNC_4BC5_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsMenuInState(arg1, "DefaultState")
		if registerVal4 then
			GoBack(registerVal1, arg2)
			return true
		else
			SetPerControllerTableProperty(arg2, "mapCategory", nil)
			SetMenuState(arg1, "DefaultState")
			SetLoseFocusToElement(registerVal1, "mapList", arg2)
			MakeElementNotFocusable(registerVal1, "mapList", arg2)
			MakeElementFocusable(registerVal1, "mapCategoriesList", arg2)
			SetFocusToElement(registerVal1, "mapCategoriesList", arg2)
			PlaySoundSetSound(registerVal1, "menu_go_back")
			return true
		end
	end

	local function __FUNC_4E15_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_4BC5_, __FUNC_4E15_, false)
	registerVal5:setModel(registerVal1.buttonModel, arg0)
	registerVal6.id = "mapCategoriesList"
	registerVal7.id = "mapList"
	registerVal13 = {}
	registerVal13.name = "menu_loaded"
	registerVal13.controller = arg0
	registerVal1:processEvent(registerVal13)
	registerVal13 = {}
	registerVal13.name = "update_state"
	registerVal13.menu = registerVal1
	registerVal1:processEvent(registerVal13)
	registerVal11 = registerVal1:restoreState()
	if not registerVal11 then
		registerVal13 = {}
		registerVal13.name = "gain_focus"
		registerVal13.controller = arg0
		registerVal1.mapCategoriesList:processEvent(registerVal13)
	end
	local function __FUNC_4F11_(arg1)
		arg1.LeftPanel:close()
		arg1.FadeForStreamer:close()
		arg1.frame:close()
		arg1.mapCategoriesList:close()
		arg1.mapList:close()
		arg1.categoryInfo:close()
		arg1.mapInfo:close()
		arg1.FEMenuLeftGraphics:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "ChangeMap.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_4F11_)
	if __FUNC_8AB_ then
		__FUNC_8AB_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.ChangeMap = __FUNC_20C3_
