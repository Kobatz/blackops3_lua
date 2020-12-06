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
require("ui.uieditor.widgets.Barracks.CombatRecordComparingPlayerInfo")
require("ui.uieditor.widgets.Barracks.CombatRecordStatDescription")
function LUI.createMenu.CombatRecordWeaponsZM(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("CombatRecordWeaponsZM")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "CombatRecordWeaponsZM.buttonPrompts")
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
	registerVal4.titleLabel:setText(Engine.Localize("MENU_WEAPONS_CAPS"))
	registerVal4.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_WEAPONS_CAPS"))
	registerVal4.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_cac"))
	registerVal1:addElement(registerVal4)
	registerVal1.MenuFrame = registerVal4
	local registerVal5 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, 64.000000, 368.000000)
	registerVal5:setTopBottom(true, false, 88.000000, 677.000000)
	registerVal5:setRGB(0.500000, 0.500000, 0.500000)
	registerVal1:addElement(registerVal5)
	registerVal1.LeftPanel = registerVal5
	local registerVal6 = CoD.fe_FooterContainer_NOTLobby.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, true, 1.000000, -1.000000)
	registerVal6:setTopBottom(false, true, -67.000000, 0.000000)
	local function __FUNC_1F8C_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("menu_loaded", __FUNC_1F8C_)
	registerVal1:addElement(registerVal6)
	registerVal1.feFooterContainerNOTLobby = registerVal6
	local registerVal7 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal7:makeFocusable()
	registerVal7:setLeftRight(true, false, 76.000000, 356.000000)
	registerVal7:setTopBottom(true, false, 157.500000, 625.500000)
	registerVal7:setWidgetType(CoD.CombatRecordStatListItem)
	registerVal7:setVerticalCount(10.000000)
	registerVal7:setVerticalCounter(CoD.verticalCounter)
	registerVal7:setDataSource("CombatRecordWeaponsList")
	local function __FUNC_2021_(arg1, arg2)
		CombatRecordShowModelForItemIndex(arg0, arg1)
		return nil
	end

	registerVal7:registerEventHandler("list_item_gain_focus", __FUNC_2021_)
	local function __FUNC_208F_(arg1)
		UpdateDataSource(registerVal1, registerVal7, arg0)
	end

	registerVal7:subscribeToGlobalModel(arg0, "OtherPlayerStats", "InProgress", __FUNC_208F_)
	registerVal1:addElement(registerVal7)
	registerVal1.ItemList = registerVal7
	local registerVal8 = LUI.UITightText.new()
	registerVal8:setLeftRight(true, false, 76.000000, 136.000000)
	registerVal8:setTopBottom(true, false, 123.000000, 148.000000)
	registerVal8:setText(Engine.Localize("MENU_WEAPON_CAPS"))
	registerVal8:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal8)
	registerVal1.WeaponLabel = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, false, 242.000000, 424.000000)
	registerVal9:setTopBottom(true, false, 123.000000, 148.000000)
	registerVal9:setText(Engine.Localize("MENU_KILLS_CAPS"))
	registerVal9:setTTF("fonts/default.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal9)
	registerVal1.StatLabel = registerVal9
	local registerVal10 = CoD.CombatRecordStatHeader.new(registerVal1, arg0)
	registerVal10:setLeftRight(false, false, -230.000000, -106.000000)
	registerVal10:setTopBottom(false, false, -181.000000, -125.000000)
	registerVal10.StatLabel:setText(Engine.Localize("MENU_KILLS_CAPS"))
	registerVal1:addElement(registerVal10)
	registerVal1.KillsStat = registerVal10
	local registerVal11 = CoD.CombatRecordStatHeader.new(registerVal1, arg0)
	registerVal11:setLeftRight(false, false, -106.000000, 18.000000)
	registerVal11:setTopBottom(false, false, -181.000000, -125.000000)
	registerVal11.StatLabel:setText(Engine.Localize("MENU_HEADSHOTS_CAPS"))
	registerVal1:addElement(registerVal11)
	registerVal1.HeadshotsStat = registerVal11
	local registerVal12 = CoD.CombatRecordStatHeader.new(registerVal1, arg0)
	registerVal12:setLeftRight(false, false, 18.000000, 142.000000)
	registerVal12:setTopBottom(false, false, -181.000000, -125.000000)
	registerVal1:addElement(registerVal12)
	registerVal1.AccuracyStat = registerVal12
	local registerVal13 = CoD.CombatRecordRightTitleWithBackground.new(registerVal1, arg0)
	registerVal13:setLeftRight(false, true, -871.000000, -761.000000)
	registerVal13:setTopBottom(true, false, 147.500000, 177.500000)
	registerVal1:addElement(registerVal13)
	registerVal1.WeaponNameTitle = registerVal13
	local registerVal14 = CoD.XCamMouseControl.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 564.000000, 1064.000000)
	registerVal14:setTopBottom(true, false, 225.500000, 625.500000)
	registerVal1:addElement(registerVal14)
	registerVal1.XCamMouseControl = registerVal14
	local registerVal15 = CoD.CombatRecordComparingPlayerInfo.new(registerVal1, arg0)
	registerVal15:setLeftRight(false, true, -870.000000, -458.000000)
	registerVal15:setTopBottom(true, false, 22.000000, 82.000000)
	registerVal1:addElement(registerVal15)
	registerVal1.CombatRecordComparingPlayerInfo = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal16:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal16:setRGB(0.000000, 0.000000, 0.000000)
	registerVal16:setAlpha(0.000000)
	registerVal1:addElement(registerVal16)
	registerVal1.BlackTransition = registerVal16
	local registerVal17 = CoD.CombatRecordStatDescription.new(registerVal1, arg0)
	registerVal17:setLeftRight(true, false, 410.000000, 793.000000)
	registerVal17:setTopBottom(true, false, 235.000000, 260.000000)
	registerVal17.StatDescription:setText(Engine.Localize("MENU_PELLET_ACCURACY_DESC"))
	registerVal1:addElement(registerVal17)
	registerVal1.PelletAccuracyDescription = registerVal17
	local function __FUNC_20EA_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal10.StatValue:setText(Engine.Localize(CombatRecordGetItemStatForItemIndex(arg0, "kills", registerVal1)))
		end
	end

	registerVal10:linkToElementModel(registerVal7, "itemIndex", true, __FUNC_20EA_)
	local function __FUNC_220D_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal10.ComparedStatValue:setText(Engine.Localize(CombatRecordGetComparisonItemStatForItemIndex(arg0, "kills", registerVal1)))
		end
	end

	registerVal10:linkToElementModel(registerVal7, "itemIndex", true, __FUNC_220D_)
	local function __FUNC_2343_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal11:setAlpha(CombatRecordStatHeaderAlpha(arg0, registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal7, "itemIndex", true, __FUNC_2343_)
	local function __FUNC_2406_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal11.StatValue:setText(Engine.Localize(CombatRecordGetItemStatForItemIndex(arg0, "headshots", registerVal1)))
		end
	end

	registerVal11:linkToElementModel(registerVal7, "itemIndex", true, __FUNC_2406_)
	local function __FUNC_252D_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal11.ComparedStatValue:setText(Engine.Localize(CombatRecordGetComparisonItemStatForItemIndex(arg0, "headshots", registerVal1)))
		end
	end

	registerVal11:linkToElementModel(registerVal7, "itemIndex", true, __FUNC_252D_)
	local function __FUNC_2667_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal12:setAlpha(CombatRecordStatHeaderAlpha(arg0, registerVal1))
		end
	end

	registerVal12:linkToElementModel(registerVal7, "itemIndex", true, __FUNC_2667_)
	local function __FUNC_272A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.StatLabel:setText(Engine.Localize(SetValueIfNumberIsLessThanOrEqualTo(1.000000, "MENU_ACCURACY_CAPS", SetValueIfNumberIsGreaterThanOrEqualTo(2.000000, "MENU_PELLET_ACCURACY_CAPS", registerVal1))))
		end
	end

	registerVal12:linkToElementModel(registerVal7, "shotCount", true, __FUNC_272A_)
	local function __FUNC_28C7_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal12.StatValue:setText(FractionToPercentage(CombatRecordGetAccuracyRatioForItemIndex(arg0, registerVal1)))
		end
	end

	registerVal12:linkToElementModel(registerVal7, "itemIndex", true, __FUNC_28C7_)
	local function __FUNC_29DB_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal12.ComparedStatValue:setText(FractionToPercentage(CombatRecordGetComparisonAccuracyRatioForItemIndex(arg0, registerVal1)))
		end
	end

	registerVal12:linkToElementModel(registerVal7, "itemIndex", true, __FUNC_29DB_)
	local function __FUNC_2B01_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.Label:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal13:linkToElementModel(registerVal7, "name", true, __FUNC_2B01_)
	local function __FUNC_2BD5_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal17:setAlpha(CombatRecordPelletAccuracyAlpha(arg0, registerVal1))
		end
	end

	registerVal17:linkToElementModel(registerVal7, "itemIndex", true, __FUNC_2BD5_)
	local registerVal18 = {}
	local registerVal19 = {}
	local function __FUNC_2C9E_()
		registerVal1:setupElementClipCounter(1.000000)
		local function __FUNC_2D84_(arg0, arg1)
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

		registerVal16:completeAnimation()
		registerVal1.BlackTransition:setAlpha(1.000000)
		__FUNC_2D84_(registerVal16, {})
	end

	registerVal19.DefaultClip = __FUNC_2C9E_
	registerVal18.DefaultState = registerVal19
	registerVal1.clipsPerState = registerVal18
	local registerVal21 = Engine.GetModelForController(arg0)
	local registerVal20 = Engine.GetModel(registerVal21, "CombatRecordComparing")
	local function __FUNC_2F39_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "CombatRecordComparing"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal1:subscribeToModel(registerVal20, __FUNC_2F39_)
	registerVal21 = Engine.GetGlobalModel()
	registerVal20 = Engine.GetModel(registerVal21, "OtherPlayerStats.InProgress")
	local function __FUNC_3103_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "OtherPlayerStats.InProgress"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal1:subscribeToModel(registerVal20, __FUNC_3103_)
	registerVal21 = Engine.GetGlobalModel()
	registerVal20 = Engine.GetModel(registerVal21, "OtherPlayerStats.Success")
	local function __FUNC_32D1_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "OtherPlayerStats.Success"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal1:subscribeToModel(registerVal20, __FUNC_32D1_)
	local function __FUNC_349E_(arg1, arg2)
		SendClientScriptMenuChangeNotify(arg0, registerVal1, true)
		ShowHeaderKickerAndIcon(registerVal1)
		CombatRecordSetHeadingKickerTextToCombatRecordGameMode("")
		CombatRecordUpdateSelfIdentityWidget(registerVal1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_349E_)
	local function __FUNC_3608_(arg0, arg1, arg2, arg3)
		SendClientScriptMenuChangeNotify(arg2, arg1, false)
		CombatRecordSetComparing(registerVal1, arg2, false)
		GoBack(registerVal1, arg2)
		ClearMenuSavedState(arg1)
		SendClientScriptNotifyForAdjustedClient(arg2, "CustomClass_closed", "")
		return true
	end

	local function __FUNC_3764_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_3608_, __FUNC_3764_, false)
	local function __FUNC_3861_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_3894_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "PLATFORM_EMBLEM_ROTATE_LAYER")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, nil, __FUNC_3861_, __FUNC_3894_, false)
	local function __FUNC_39A6_(arg0, arg1, arg2, arg3)
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

	local function __FUNC_3B86_(arg0, arg1, arg2)
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

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_START, "F", __FUNC_39A6_, __FUNC_3B86_, false)
	local function __FUNC_3D67_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsComparingStats(arg2)
		if registerVal4 then
			CombatRecordSetComparing(registerVal1, arg2, false)
			return true
		end
	end

	local function __FUNC_3DFC_(arg0, arg1, arg2)
		local registerVal3 = IsComparingStats(arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_CLEAR_COMPARE")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "C", __FUNC_3D67_, __FUNC_3DFC_, false)
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
	local function __FUNC_3F38_(arg1)
		arg1.FEMenuLeftGraphics:close()
		arg1.MenuFrame:close()
		arg1.LeftPanel:close()
		arg1.feFooterContainerNOTLobby:close()
		arg1.ItemList:close()
		arg1.KillsStat:close()
		arg1.HeadshotsStat:close()
		arg1.AccuracyStat:close()
		arg1.WeaponNameTitle:close()
		arg1.XCamMouseControl:close()
		arg1.CombatRecordComparingPlayerInfo:close()
		arg1.PelletAccuracyDescription:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "CombatRecordWeaponsZM.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_3F38_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

