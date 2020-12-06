-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.menus.Barracks.CombatRecordMP.CombatRecordFriendSidebar")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrameIdentityNoFooter")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.Footer.fe_FooterContainer_NOTLobby")
require("ui.uieditor.widgets.Barracks.CombatRecordStatListItem")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.Barracks.CombatRecordStatHeader")
require("ui.uieditor.widgets.Barracks.CombatRecordRightTitleWithBackground")
require("ui.uieditor.widgets.PC.Utility.XCamMouseControl")
require("ui.uieditor.widgets.Barracks.CombatRecordComparingPlayerInfo")
function LUI.createMenu.CombatRecordBubblegumBuffs(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("CombatRecordBubblegumBuffs")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "CombatRecordBubblegumBuffs.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.GenericMenuFrameIdentityNoFooter.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3.titleLabel:setText(Engine.Localize("MENU_BUBBLEGUM_BUFFS_CAPS"))
	registerVal3.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_BUBBLEGUM_BUFFS_CAPS"))
	registerVal3.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_bubblebuffs"))
	registerVal1:addElement(registerVal3)
	registerVal1.MenuFrame = registerVal3
	local registerVal4 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 64.000000, 368.000000)
	registerVal4:setTopBottom(true, false, 88.000000, 677.000000)
	registerVal4:setRGB(0.500000, 0.500000, 0.500000)
	registerVal1:addElement(registerVal4)
	registerVal1.LeftPanel = registerVal4
	local registerVal5 = CoD.fe_FooterContainer_NOTLobby.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 1.000000, -1.000000)
	registerVal5:setTopBottom(false, true, -67.000000, 0.000000)
	local function __FUNC_1B98_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("menu_loaded", __FUNC_1B98_)
	registerVal1:addElement(registerVal5)
	registerVal1.feFooterContainerNOTLobby = registerVal5
	local registerVal6 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, false, 76.000000, 356.000000)
	registerVal6:setTopBottom(true, false, 157.500000, 625.500000)
	registerVal6:setWidgetType(CoD.CombatRecordStatListItem)
	registerVal6:setVerticalCount(10.000000)
	registerVal6:setVerticalCounter(CoD.verticalCounter)
	registerVal6:setDataSource("CombatRecordBGBList")
	local function __FUNC_1C2D_(arg1, arg2)
		CombatRecordShowModelForBubblegumBuff(arg0, arg1)
		return nil
	end

	registerVal6:registerEventHandler("list_item_gain_focus", __FUNC_1C2D_)
	local function __FUNC_1C9F_(arg1)
		UpdateDataSource(registerVal1, registerVal6, arg0)
	end

	registerVal6:subscribeToGlobalModel(arg0, "OtherPlayerStats", "InProgress", __FUNC_1C9F_)
	registerVal1:addElement(registerVal6)
	registerVal1.ItemList = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 76.000000, 191.000000)
	registerVal7:setTopBottom(true, false, 123.000000, 148.000000)
	registerVal7:setScale(LanguageOverrideNumber("japanese", 0.800000, 1.000000))
	registerVal7:setText(Engine.Localize("MENU_ABILITY_CAPS"))
	registerVal7:setTTF("fonts/default.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal7)
	registerVal1.WeaponLabel = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 272.000000, 356.000000)
	registerVal8:setTopBottom(true, false, 123.000000, 148.000000)
	registerVal8:setScale(LanguageOverrideNumber("japanese", 0.800000, 1.000000))
	registerVal8:setText(Engine.Localize("MENU_USES_CAPS"))
	registerVal8:setTTF("fonts/default.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal8)
	registerVal1.StatLabel = registerVal8
	local registerVal9 = CoD.CombatRecordStatHeader.new(registerVal1, arg0)
	registerVal9:setLeftRight(false, false, -230.000000, 106.000000)
	registerVal9:setTopBottom(false, false, -181.500000, -125.500000)
	registerVal9.StatLabel:setText(Engine.Localize("MENU_USES_CAPS"))
	registerVal1:addElement(registerVal9)
	registerVal1.UsesStat = registerVal9
	local registerVal10 = CoD.CombatRecordRightTitleWithBackground.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 410.000000, 496.000000)
	registerVal10:setTopBottom(true, false, 147.500000, 177.500000)
	registerVal1:addElement(registerVal10)
	registerVal1.BGBNameTitle = registerVal10
	local registerVal11 = CoD.XCamMouseControl.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 564.000000, 1064.000000)
	registerVal11:setTopBottom(true, false, 225.500000, 625.500000)
	registerVal1:addElement(registerVal11)
	registerVal1.XCamMouseControl = registerVal11
	local registerVal12 = CoD.CombatRecordComparingPlayerInfo.new(registerVal1, arg0)
	registerVal12:setLeftRight(false, true, -870.000000, -458.000000)
	registerVal12:setTopBottom(true, false, 22.000000, 82.000000)
	registerVal1:addElement(registerVal12)
	registerVal1.CombatRecordComparingPlayerInfo = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal13:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal13:setRGB(0.000000, 0.000000, 0.000000)
	registerVal13:setAlpha(0.000000)
	registerVal1:addElement(registerVal13)
	registerVal1.BlackTransition = registerVal13
	local function __FUNC_1CFA_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal9.StatValue:setText(Engine.Localize(CombatRecordGetItemStatForItemIndex(arg0, "used", registerVal1)))
		end
	end

	registerVal9:linkToElementModel(registerVal6, "itemIndex", true, __FUNC_1CFA_)
	local function __FUNC_1E1C_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal9.ComparedStatValue:setText(Engine.Localize(CombatRecordGetComparisonItemStatForItemIndex(arg0, "used", registerVal1)))
		end
	end

	registerVal9:linkToElementModel(registerVal6, "itemIndex", true, __FUNC_1E1C_)
	local function __FUNC_1F52_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.Label:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal10:linkToElementModel(registerVal6, "name", true, __FUNC_1F52_)
	local registerVal14 = {}
	local registerVal15 = {}
	local function __FUNC_2025_()
		registerVal1:setupElementClipCounter(1.000000)
		local function __FUNC_210C_(arg0, arg1)
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

		registerVal13:completeAnimation()
		registerVal1.BlackTransition:setAlpha(1.000000)
		__FUNC_210C_(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_2025_
	registerVal14.DefaultState = registerVal15
	registerVal1.clipsPerState = registerVal14
	local registerVal17 = Engine.GetModelForController(arg0)
	local registerVal16 = Engine.GetModel(registerVal17, "CombatRecordComparing")
	local function __FUNC_22C1_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "CombatRecordComparing"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal1:subscribeToModel(registerVal16, __FUNC_22C1_)
	registerVal17 = Engine.GetGlobalModel()
	registerVal16 = Engine.GetModel(registerVal17, "OtherPlayerStats.InProgress")
	local function __FUNC_248B_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "OtherPlayerStats.InProgress"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal1:subscribeToModel(registerVal16, __FUNC_248B_)
	registerVal17 = Engine.GetGlobalModel()
	registerVal16 = Engine.GetModel(registerVal17, "OtherPlayerStats.Success")
	local function __FUNC_2659_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "OtherPlayerStats.Success"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal1:subscribeToModel(registerVal16, __FUNC_2659_)
	local function __FUNC_2826_(arg1, arg2)
		SendClientScriptMenuChangeNotify(arg0, registerVal1, true)
		ShowHeaderKickerAndIcon(registerVal1)
		CombatRecordSetHeadingKickerTextToCombatRecordGameMode("")
		CombatRecordUpdateSelfIdentityWidget(registerVal1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_2826_)
	local function __FUNC_2990_(arg0, arg1, arg2, arg3)
		SendClientScriptMenuChangeNotify(arg2, arg1, false)
		CombatRecordSetComparing(registerVal1, arg2, false)
		GoBack(registerVal1, arg2)
		ClearMenuSavedState(arg1)
		SendClientScriptNotifyForAdjustedClient(arg2, "CustomClass_closed", "")
		return true
	end

	local function __FUNC_2AEC_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_2990_, __FUNC_2AEC_, false)
	local function __FUNC_2BE9_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_2C1C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "PLATFORM_EMBLEM_ROTATE_LAYER")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, nil, __FUNC_2BE9_, __FUNC_2C1C_, false)
	local function __FUNC_2D2E_(arg0, arg1, arg2, arg3)
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

	local function __FUNC_2F0E_(arg0, arg1, arg2)
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

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_START, "F", __FUNC_2D2E_, __FUNC_2F0E_, false)
	local function __FUNC_30EF_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsComparingStats(arg2)
		if registerVal4 then
			CombatRecordSetComparing(registerVal1, arg2, false)
			return true
		end
	end

	local function __FUNC_3184_(arg0, arg1, arg2)
		local registerVal3 = IsComparingStats(arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_CLEAR_COMPARE")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "C", __FUNC_30EF_, __FUNC_3184_, false)
	registerVal3:setModel(registerVal1.buttonModel, arg0)
	registerVal5:setModel(registerVal1.buttonModel, arg0)
	registerVal6.id = "ItemList"
	registerVal16 = {}
	registerVal16.name = "menu_loaded"
	registerVal16.controller = arg0
	registerVal1:processEvent(registerVal16)
	registerVal16 = {}
	registerVal16.name = "update_state"
	registerVal16.menu = registerVal1
	registerVal1:processEvent(registerVal16)
	registerVal14 = registerVal1:restoreState()
	if not registerVal14 then
		registerVal16 = {}
		registerVal16.name = "gain_focus"
		registerVal16.controller = arg0
		registerVal1.ItemList:processEvent(registerVal16)
	end
	local function __FUNC_32C0_(arg1)
		arg1.MenuFrame:close()
		arg1.LeftPanel:close()
		arg1.feFooterContainerNOTLobby:close()
		arg1.ItemList:close()
		arg1.UsesStat:close()
		arg1.BGBNameTitle:close()
		arg1.XCamMouseControl:close()
		arg1.CombatRecordComparingPlayerInfo:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "CombatRecordBubblegumBuffs.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_32C0_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

