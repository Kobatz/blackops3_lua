-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.menus.Barracks.CombatRecordMP.CombatRecordFriendSidebar")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrameIdentityNoFooter")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.Footer.fe_FooterContainer_NOTLobby")
require("ui.uieditor.widgets.Barracks.CombatRecordStatListItem")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.Barracks.CombatRecordStatHeader")
require("ui.uieditor.widgets.Barracks.CombatRecordRightTitleWithBackground")
require("ui.uieditor.widgets.PC.Utility.XCamMouseControl")
require("ui.uieditor.widgets.Barracks.CombatRecordStatDescription")
require("ui.uieditor.widgets.Barracks.CombatRecordComparingPlayerInfo")
local function __FUNC_53C_(arg0, arg1)
	arg0.disablePopupOpenCloseAnim = true
end

local function __FUNC_591_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("CombatRecordEquipment")
	if __FUNC_53C_ then
		__FUNC_53C_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "CombatRecordEquipment.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 18.000000, 70.000000)
	registerVal3:setTopBottom(true, false, 91.000000, 708.250000)
	registerVal1:addElement(registerVal3)
	registerVal1.FEMenuLeftGraphics = registerVal3
	local registerVal4 = CoD.GenericMenuFrameIdentityNoFooter.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4.titleLabel:setText(Engine.Localize("MENU_EQUIPMENT_CAPS"))
	registerVal4.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_EQUIPMENT_CAPS"))
	registerVal4.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_equipment"))
	registerVal1:addElement(registerVal4)
	registerVal1.MenuFrame = registerVal4
	local registerVal5 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal5:setLeftRight(false, false, -576.000000, -272.000000)
	registerVal5:setTopBottom(true, true, 88.000000, -43.000000)
	registerVal5:setRGB(0.500000, 0.500000, 0.500000)
	registerVal1:addElement(registerVal5)
	registerVal1.LeftPanel = registerVal5
	local registerVal6 = CoD.fe_FooterContainer_NOTLobby.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, true, 1.000000, -1.000000)
	registerVal6:setTopBottom(false, true, -67.000000, 0.000000)
	local function __FUNC_1EF5_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("menu_loaded", __FUNC_1EF5_)
	registerVal1:addElement(registerVal6)
	registerVal1.feFooterContainerNOTLobby = registerVal6
	local registerVal7 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal7:makeFocusable()
	registerVal7:setLeftRight(false, false, -563.000000, -283.000000)
	registerVal7:setTopBottom(true, false, 157.500000, 625.500000)
	registerVal7:setWidgetType(CoD.CombatRecordStatListItem)
	registerVal7:setVerticalCount(10.000000)
	registerVal7:setVerticalCounter(CoD.verticalCounter)
	registerVal7:setDataSource("CombatRecordEquipmentList")
	local function __FUNC_1F89_(arg1, arg2)
		CombatRecordShowModelForItemIndex(arg0, arg1)
		return nil
	end

	registerVal7:registerEventHandler("list_item_gain_focus", __FUNC_1F89_)
	local function __FUNC_1FF7_(arg1)
		UpdateDataSource(registerVal1, registerVal7, arg0)
	end

	registerVal7:subscribeToGlobalModel(arg0, "OtherPlayerStats", "InProgress", __FUNC_1FF7_)
	registerVal1:addElement(registerVal7)
	registerVal1.ItemList = registerVal7
	local registerVal8 = CoD.CombatRecordStatHeader.new(registerVal1, arg0)
	registerVal8:setLeftRight(false, false, -230.000000, -95.000000)
	registerVal8:setTopBottom(true, false, 179.000000, 235.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.KillsStat = registerVal8
	local registerVal9 = CoD.CombatRecordStatHeader.new(registerVal1, arg0)
	registerVal9:setLeftRight(false, false, 29.000000, 153.000000)
	registerVal9:setTopBottom(true, false, 179.000000, 235.000000)
	registerVal9.StatLabel:setText(Engine.Localize("MENU_KILLS_PER_USE_CAPS"))
	registerVal1:addElement(registerVal9)
	registerVal1.KillsPerUseStat = registerVal9
	local registerVal10 = CoD.CombatRecordStatHeader.new(registerVal1, arg0)
	registerVal10:setLeftRight(false, false, -95.000000, 29.000000)
	registerVal10:setTopBottom(true, false, 179.000000, 235.000000)
	registerVal10.StatLabel:setText(Engine.Localize("MENU_USED_CAPS"))
	registerVal1:addElement(registerVal10)
	registerVal1.UsedStat = registerVal10
	local registerVal11 = CoD.CombatRecordRightTitleWithBackground.new(registerVal1, arg0)
	registerVal11:setLeftRight(false, false, -231.000000, 153.000000)
	registerVal11:setTopBottom(true, false, 148.000000, 178.000000)
	registerVal1:addElement(registerVal11)
	registerVal1.WeaponNameTitle = registerVal11
	local registerVal12 = CoD.XCamMouseControl.new(registerVal1, arg0)
	registerVal12:setLeftRight(false, false, -76.000000, 424.000000)
	registerVal12:setTopBottom(true, true, 225.500000, -94.500000)
	registerVal1:addElement(registerVal12)
	registerVal1.XCamMouseControl = registerVal12
	local registerVal13 = LUI.UITightText.new()
	registerVal13:setLeftRight(false, true, -1016.000000, -923.000000)
	registerVal13:setTopBottom(true, false, 123.000000, 148.000000)
	registerVal13:setText(Engine.Localize("MENU_KILLS_TAC_USE_CAPS"))
	registerVal13:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal13)
	registerVal1.UsedStatLabel = registerVal13
	local registerVal14 = LUI.UITightText.new()
	registerVal14:setLeftRight(true, false, 76.000000, 145.000000)
	registerVal14:setTopBottom(true, false, 123.000000, 148.000000)
	registerVal14:setText(Engine.Localize("MENU_EQUIPMENT_CAPS"))
	registerVal14:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal14)
	registerVal1.EquipmentLabel = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal15:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal15:setRGB(0.000000, 0.000000, 0.000000)
	registerVal15:setAlpha(0.000000)
	registerVal1:addElement(registerVal15)
	registerVal1.BlackTransition = registerVal15
	local registerVal16 = CoD.CombatRecordStatDescription.new(registerVal1, arg0)
	registerVal16:setLeftRight(true, false, 410.000000, 793.000000)
	registerVal16:setTopBottom(true, false, 235.000000, 260.000000)
	registerVal1:addElement(registerVal16)
	registerVal1.CombatRecordStatDescription = registerVal16
	local registerVal17 = CoD.CombatRecordComparingPlayerInfo.new(registerVal1, arg0)
	registerVal17:setLeftRight(false, true, -870.000000, -458.000000)
	registerVal17:setTopBottom(true, false, 22.000000, 82.000000)
	registerVal1:addElement(registerVal17)
	registerVal1.CombatRecordComparingPlayerInfo = registerVal17
	local function __FUNC_2052_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.StatLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal7, "statLabel", true, __FUNC_2052_)
	local function __FUNC_2129_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.StatValue:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal7, "stat", true, __FUNC_2129_)
	local function __FUNC_2201_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.ComparedStatValue:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal7, "statComparison", true, __FUNC_2201_)
	local function __FUNC_22E1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setAlpha(registerVal1)
		end
	end

	registerVal9:linkToElementModel(registerVal7, "lethalAlpha", true, __FUNC_22E1_)
	local function __FUNC_2375_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal9.StatValue:setText(Engine.Localize(CombatRecordGetTwoStatRatioForItemIndex(arg0, "kills", "used", registerVal1)))
		end
	end

	registerVal9:linkToElementModel(registerVal7, "itemIndex", true, __FUNC_2375_)
	local function __FUNC_24AF_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal9.ComparedStatValue:setText(Engine.Localize(CombatRecordGetComparisonTwoStatRatioForItemIndex(arg0, "kills", "used", registerVal1)))
		end
	end

	registerVal9:linkToElementModel(registerVal7, "itemIndex", true, __FUNC_24AF_)
	local function __FUNC_25F9_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal10.StatValue:setText(Engine.Localize(CombatRecordGetItemStatForItemIndex(arg0, "used", registerVal1)))
		end
	end

	registerVal10:linkToElementModel(registerVal7, "itemIndex", true, __FUNC_25F9_)
	local function __FUNC_271C_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal10.ComparedStatValue:setText(Engine.Localize(CombatRecordGetComparisonItemStatForItemIndex(arg0, "used", registerVal1)))
		end
	end

	registerVal10:linkToElementModel(registerVal7, "itemIndex", true, __FUNC_271C_)
	local function __FUNC_2852_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.Label:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal7, "name", true, __FUNC_2852_)
	local function __FUNC_2925_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16:setAlpha(registerVal1)
		end
	end

	registerVal16:linkToElementModel(registerVal7, "tacticalAlpha", true, __FUNC_2925_)
	local function __FUNC_29B9_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16.StatDescription:setText(Engine.Localize(AppendString("_STAT_DESC", registerVal1)))
		end
	end

	registerVal16:linkToElementModel(registerVal7, "name", true, __FUNC_29B9_)
	local registerVal18 = {}
	local registerVal19 = {}
	local function __FUNC_2ACD_()
		registerVal1:setupElementClipCounter(1.000000)
		local function __FUNC_2BB4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal1.BlackTransition:setAlpha(1.000000)
		__FUNC_2BB4_(registerVal15, {})
	end

	registerVal19.DefaultClip = __FUNC_2ACD_
	registerVal18.DefaultState = registerVal19
	registerVal1.clipsPerState = registerVal18
	local registerVal21 = Engine.GetModelForController(arg0)
	local registerVal20 = Engine.GetModel(registerVal21, "CombatRecordComparing")
	local function __FUNC_2D69_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "CombatRecordComparing"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal1:subscribeToModel(registerVal20, __FUNC_2D69_)
	registerVal21 = Engine.GetGlobalModel()
	registerVal20 = Engine.GetModel(registerVal21, "OtherPlayerStats.InProgress")
	local function __FUNC_2F33_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "OtherPlayerStats.InProgress"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal1:subscribeToModel(registerVal20, __FUNC_2F33_)
	registerVal21 = Engine.GetGlobalModel()
	registerVal20 = Engine.GetModel(registerVal21, "OtherPlayerStats.Success")
	local function __FUNC_3101_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "OtherPlayerStats.Success"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal1:subscribeToModel(registerVal20, __FUNC_3101_)
	local function __FUNC_32CE_(arg1, arg2)
		SendClientScriptMenuChangeNotify(arg0, registerVal1, true)
		ShowHeaderKickerAndIcon(registerVal1)
		CombatRecordSetHeadingKickerTextToCombatRecordMode("")
		CombatRecordUpdateSelfIdentityWidget(registerVal1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_32CE_)
	local function __FUNC_3434_(arg0, arg1, arg2, arg3)
		CombatRecordSetComparing(registerVal1, arg2, false)
		SendClientScriptMenuChangeNotify(arg2, arg1, false)
		GoBack(registerVal1, arg2)
		ClearMenuSavedState(arg1)
		SendClientScriptNotifyForAdjustedClient(arg2, "CustomClass_closed", "")
		return true
	end

	local function __FUNC_3590_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_3434_, __FUNC_3590_, false)
	local function __FUNC_368D_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_36C0_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "PLATFORM_EMBLEM_ROTATE_LAYER")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, nil, __FUNC_368D_, __FUNC_36C0_, false)
	local function __FUNC_37D2_(arg0, arg1, arg2, arg3)
		local registerVal4 = EnableCombatRecordCompare(arg2)
		registerVal4 = IsCombatRecordForRemotePlayer()
		if registerVal4 and not registerVal4 then
			OpenPopup(registerVal1, "CombatRecordFriendSidebar", arg2, "", "")
			return true
		else
			registerVal4 = EnableCombatRecordCompare(arg2)
			registerVal4 = IsCombatRecordForRemotePlayer()
			if registerVal4 and registerVal4 then
				CombatRecordSetComparing(registerVal1, arg2, true)
				CombatRecordCompareAgainstLocalPlayer(arg2)
				UpdateElementDataSource(registerVal1, "ItemList")
				return true
			end
		end
	end

	local function __FUNC_39B2_(arg0, arg1, arg2)
		local registerVal3 = EnableCombatRecordCompare(arg2)
		registerVal3 = IsCombatRecordForRemotePlayer()
		if registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_COMPARE")
			return true
		else
			registerVal3 = EnableCombatRecordCompare(arg2)
			registerVal3 = IsCombatRecordForRemotePlayer()
			if registerVal3 and registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_COMPARE")
				return true
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_START, "F", __FUNC_37D2_, __FUNC_39B2_, false)
	local function __FUNC_3B93_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsComparingStats(arg2)
		if registerVal4 then
			CombatRecordSetComparing(registerVal1, arg2, false)
			return true
		end
	end

	local function __FUNC_3C28_(arg0, arg1, arg2)
		local registerVal3 = IsComparingStats(arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_CLEAR_COMPARE")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "C", __FUNC_3B93_, __FUNC_3C28_, false)
	registerVal4:setModel(registerVal1.buttonModel, arg0)
	registerVal6:setModel(registerVal1.buttonModel, arg0)
	registerVal7.id = "ItemList"
	registerVal20 = {}
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
		registerVal1.ItemList:processEvent(registerVal20)
	end
	local function __FUNC_3D64_(arg1)
		arg1.FEMenuLeftGraphics:close()
		arg1.MenuFrame:close()
		arg1.LeftPanel:close()
		arg1.feFooterContainerNOTLobby:close()
		arg1.ItemList:close()
		arg1.KillsStat:close()
		arg1.KillsPerUseStat:close()
		arg1.UsedStat:close()
		arg1.WeaponNameTitle:close()
		arg1.XCamMouseControl:close()
		arg1.CombatRecordStatDescription:close()
		arg1.CombatRecordComparingPlayerInfo:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "CombatRecordEquipment.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_3D64_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.CombatRecordEquipment = __FUNC_591_
