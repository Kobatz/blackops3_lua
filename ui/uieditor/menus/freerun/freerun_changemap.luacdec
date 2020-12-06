-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.Lobby.LobbyStreamerBlackFade")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.List1Button_Playlist")
require("ui.uieditor.widgets.MP.MatchSettings.matchSettingsInfo")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
local function __FUNC_3C7_(arg0)
	local registerVal2 = {}
	registerVal2.mp_sector = 1.000000
	registerVal2.mp_apartments = 2.000000
	registerVal2.mp_ethiopia = 3.000000
	registerVal2.mp_stronghold = 4.000000
	local registerVal3 = {}
	registerVal3.mp_freerun_01 = 1.000000
	registerVal3.mp_freerun_02 = 2.000000
	registerVal3.mp_freerun_03 = 3.000000
	registerVal3.mp_freerun_04 = 4.000000
	local function __FUNC_8C1_(arg0)
		if registerVal2[arg0] == nil then
		end
		return true
	end

	local function __FUNC_911_(arg0)
		if registerVal3[arg0] == nil then
		end
		return true
	end

	local function __FUNC_961_(arg0, arg1)
		local registerVal2 = Dvar.ui_execdemo:get()
		if registerVal2 then
			registerVal2 = __FUNC_8C1_(arg0)
			registerVal2 = __FUNC_8C1_(arg0)
			if registerVal2 and registerVal2 then
				if registerVal2[arg0] >= registerVal2[arg1] then
				end
				return true
			else
				if CoD.mapsTable[arg0].unique_id >= CoD.mapsTable[arg1].unique_id then
				end
				return true
			end
		end
	end

	local function __FUNC_AD3_(arg0)
		if CoD.gameModeEnum ~= CoD.mapsTable[arg0].session_mode then
			return false
		end
		local registerVal2 = Dvar.ui_execdemo:get()
		if registerVal2 and true then
			registerVal2 = __FUNC_8C1_(arg0)
		end
		registerVal2 = Engine.IsMpStillDownloading()
		if registerVal2 and registerVal2 then
			registerVal2 = __FUNC_911_(arg0)
		end
		registerVal2 = IsFreeRunMap(arg0)
		if not registerVal2 then
			return false
		end
		return registerVal2
	end

	local registerVal10 = Engine.DvarString(nil, "ui_mapname")
	local registerVal11, registerVal12, registerVal13 = LUI.IterateTableBySortedKeys(CoD.mapsTable, __FUNC_961_, __FUNC_AD3_)
	for index14,value15 in registerVal11, registerVal12, registerVal13 do
		local registerVal18 = {}
		local registerVal19 = {}
		local registerVal20 = Engine.Localize(value15.mapName)
		registerVal19.text = registerVal20
		registerVal20 = Engine.Localize(value15.mapName)
		registerVal19.buttonText = registerVal20
		registerVal19.image = value15.previewImage
		registerVal20 = Engine.Localize(value15.mapDescription)
		registerVal19.description = registerVal20
		registerVal19.location = value15.mapLocation
		registerVal20 = CoD.MapUtility.GetBestTimeForFreerunMap(arg0, index14)
		registerVal19.bestTime = registerVal20
		registerVal18.models = registerVal19
		registerVal19 = {}
		registerVal19.mapName = index14
		if index14 ~= registerVal10 then
		end
		registerVal19.selectIndex = true
		registerVal20 = Engine.IsMpStillDownloading()
		if registerVal20 then
		end
		registerVal19.disabled = (not value15.isFreeRunMap)
		registerVal18.properties = registerVal19
		table.insert({}, registerVal18)
	end
	return {}
end

local function __FUNC_C94_(arg0, arg1)
	arg0.disablePopupOpenCloseAnim = true
end

local registerVal3 = DataSourceHelpers.ListSetup("FreerunPlaylist", __FUNC_3C7_, true)
DataSources.FreerunPlaylist = registerVal3
local function __FUNC_CE9_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Freerun_ChangeMap")
	if __FUNC_C94_ then
		__FUNC_C94_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Freerun_ChangeMap.buttonPrompts")
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
	local function __FUNC_1BB7_(arg1, arg2, arg3)
		return IsGlobalModelValueEqualTo(arg2, arg0, "hideWorldForStreamer", 0.000000)
	end

	registerVal8.condition = __FUNC_1BB7_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "hideWorldForStreamer")
	local function __FUNC_1C42_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hideWorldForStreamer"
		registerVal1:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_1C42_)
	registerVal1:addElement(registerVal4)
	registerVal1.FadeForStreamer = registerVal4
	local registerVal5 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5.titleLabel:setText(Engine.Localize("MENU_CHANGE_COURSE_CAPS"))
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_CHANGE_COURSE_CAPS"))
	registerVal1:addElement(registerVal5)
	registerVal1.frame = registerVal5
	local registerVal6 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, false, 70.000000, 350.000000)
	registerVal6:setTopBottom(true, false, 142.000000, 650.000000)
	registerVal6:setDataSource("FreerunPlaylist")
	registerVal6:setWidgetType(CoD.List1Button_Playlist)
	registerVal6:setVerticalCount(15.000000)
	local function __FUNC_1D6A_(arg1, arg2)
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

	registerVal6:registerEventHandler("gain_focus", __FUNC_1D6A_)
	local function __FUNC_1EFB_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_1EFB_)
	local function __FUNC_1FCA_(arg0, arg1, arg2, arg3)
		MapSelected(arg0, arg2)
		GoBack(registerVal1, arg2)
		ClearSavedState(registerVal1, arg2)
		PlaySoundSetSound(registerVal1, "action")
		return true
	end

	local function __FUNC_20A5_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal6, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1FCA_, __FUNC_20A5_, false)
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Disabled_NoListFocus"
	local function __FUNC_21A2_(arg1, arg2, arg3)
		local registerVal3 = IsParentListInFocus(arg2)
		if not registerVal3 then
			registerVal3 = IsDisabled(arg2, arg0)
		else
		end
		return true
	end

	registerVal10.condition = __FUNC_21A2_
	local registerVal11 = {}
	registerVal11.stateName = "NoListFocus"
	local function __FUNC_2231_(arg0, arg1, arg2)
		local registerVal3 = IsParentListInFocus(arg1)
		return (not registerVal3)
	end

	registerVal11.condition = __FUNC_2231_
	registerVal9 = {registerVal10, registerVal11}
	registerVal6:mergeStateConditions(registerVal9)
	local function __FUNC_228D_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		registerVal1:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:linkToElementModel(registerVal6, "disabled", true, __FUNC_228D_)
	registerVal1:addElement(registerVal6)
	registerVal1.mapList = registerVal6
	registerVal7 = CoD.matchSettingsInfo.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 600.000000, 1216.000000)
	registerVal7:setTopBottom(true, false, 143.000000, 787.000000)
	registerVal7.Description:setAlpha(0.000000)
	registerVal10 = {}
	registerVal11 = {}
	registerVal11.stateName = "AspectRatio_1x1"
	local function __FUNC_23AA_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal11.condition = __FUNC_23AA_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal1:addElement(registerVal7)
	registerVal1.mapInfo = registerVal7
	registerVal8 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal8:setTopBottom(true, false, 84.000000, 701.250000)
	registerVal1:addElement(registerVal8)
	registerVal1.FEMenuLeftGraphics = registerVal8
	local function __FUNC_23F5_(arg1)
		registerVal7:setModel(arg1, arg0)
	end

	registerVal7:linkToElementModel(registerVal6, nil, false, __FUNC_23F5_)
	local function __FUNC_2446_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.FRBestTime.BestTimeValueText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal6, "bestTime", true, __FUNC_2446_)
	local function __FUNC_2545_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_2598_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_2545_, __FUNC_2598_, false)
	registerVal5:setModel(registerVal1.buttonModel, arg0)
	registerVal6.id = "mapList"
	registerVal11 = {}
	registerVal11.name = "menu_loaded"
	registerVal11.controller = arg0
	registerVal1:processEvent(registerVal11)
	registerVal11 = {}
	registerVal11.name = "update_state"
	registerVal11.menu = registerVal1
	registerVal1:processEvent(registerVal11)
	registerVal9 = registerVal1:restoreState()
	if not registerVal9 then
		registerVal11 = {}
		registerVal11.name = "gain_focus"
		registerVal11.controller = arg0
		registerVal1.mapList:processEvent(registerVal11)
	end
	local function __FUNC_2695_(arg1)
		arg1.LeftPanel:close()
		arg1.FadeForStreamer:close()
		arg1.frame:close()
		arg1.mapList:close()
		arg1.mapInfo:close()
		arg1.FEMenuLeftGraphics:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Freerun_ChangeMap.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2695_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.Freerun_ChangeMap = __FUNC_CE9_
