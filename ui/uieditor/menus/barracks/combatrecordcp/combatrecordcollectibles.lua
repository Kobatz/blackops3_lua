-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrameIdentityNoFooter")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.Footer.fe_FooterContainer_NOTLobby")
require("ui.uieditor.widgets.Barracks.CombatRecordStatListItem")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.Barracks.CombatRecordRightTitleWithBackground")
require("ui.uieditor.widgets.Barracks.CombatRecordStatHeader")
require("ui.uieditor.widgets.MissionRecordVault.MissionRecordVault_PerformanceCollectible")
function LUI.createMenu.CombatRecordCollectibles(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("CombatRecordCollectibles")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "CombatRecordCollectibles.buttonPrompts")
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
	registerVal4.titleLabel:setText(Engine.Localize("MENU_COLLECTIBLES_CAPS"))
	registerVal4.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_COLLECTIBLES_CAPS"))
	registerVal4.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_collectible"))
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
	local function __FUNC_18F5_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("menu_loaded", __FUNC_18F5_)
	registerVal1:addElement(registerVal6)
	registerVal1.feFooterContainerNOTLobby = registerVal6
	local registerVal7 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal7:makeFocusable()
	registerVal7:setLeftRight(true, false, 76.000000, 356.000000)
	registerVal7:setTopBottom(true, false, 157.500000, 625.500000)
	registerVal7:setWidgetType(CoD.CombatRecordStatListItem)
	registerVal7:setVerticalCount(10.000000)
	registerVal7:setVerticalCounter(CoD.verticalCounter)
	registerVal7:setDataSource("CombatRecordCollectiblesList")
	local function __FUNC_1989_(arg1, arg2)
		CombatRecordUpdateCollectibles(registerVal1, arg0, arg1)
		return nil
	end

	registerVal7:registerEventHandler("list_item_gain_focus", __FUNC_1989_)
	registerVal1:addElement(registerVal7)
	registerVal1.ItemList = registerVal7
	local registerVal8 = LUI.UITightText.new()
	registerVal8:setLeftRight(false, false, -564.000000, -516.000000)
	registerVal8:setTopBottom(true, false, 123.000000, 148.000000)
	registerVal8:setText(Engine.Localize("MENU_TAB_MISSIONS"))
	registerVal8:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal8)
	registerVal1.WeaponLabel = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(false, false, -493.000000, -284.000000)
	registerVal9:setTopBottom(true, false, 123.000000, 148.000000)
	registerVal9:setText(Engine.Localize("MENU_COLLECTIBLES_FOUND_CAPS"))
	registerVal9:setTTF("fonts/default.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal9)
	registerVal1.StatLabel = registerVal9
	local registerVal10 = CoD.CombatRecordRightTitleWithBackground.new(registerVal1, arg0)
	registerVal10:setLeftRight(false, false, -230.000000, -125.000000)
	registerVal10:setTopBottom(true, false, 116.000000, 146.000000)
	registerVal1:addElement(registerVal10)
	registerVal1.WeaponNameTitle = registerVal10
	local registerVal11 = CoD.CombatRecordStatHeader.new(registerVal1, arg0)
	registerVal11:setLeftRight(false, false, -230.000000, 76.000000)
	registerVal11:setTopBottom(true, false, 148.000000, 204.000000)
	registerVal11.StatLabel:setText(Engine.Localize("MENU_COLLECTIBLES_FOUND_CAPS"))
	registerVal11.ComparedStatValue:setText(Engine.Localize("42,000"))
	registerVal1:addElement(registerVal11)
	registerVal1.KillsStat = registerVal11
	local registerVal12 = LUI.GridLayout.new(registerVal1, arg0, false, 0.000000, 0.000000, 7.000000, 0.000000, nil, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal12:setLeftRight(false, false, -6.000000, 323.000000)
	registerVal12:setTopBottom(true, false, 320.440000, 517.440000)
	registerVal12:setScale(2.000000)
	registerVal12:setWidgetType(CoD.MissionRecordVault_PerformanceCollectible)
	registerVal12:setHorizontalCount(3.000000)
	registerVal12:setVerticalCount(2.000000)
	registerVal12:setSpacing(7.000000)
	registerVal12:setDataSource("CollectiblesList")
	registerVal1:addElement(registerVal12)
	registerVal1.Collectibles = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal13:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal13:setRGB(0.000000, 0.000000, 0.000000)
	registerVal13:setAlpha(0.000000)
	registerVal1:addElement(registerVal13)
	registerVal1.BlackTransition = registerVal13
	local function __FUNC_19F8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.Label:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal10:linkToElementModel(registerVal7, "name", true, __FUNC_19F8_)
	local function __FUNC_1ACD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.StatValue:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal7, "stat", true, __FUNC_1ACD_)
	local registerVal14 = {}
	local registerVal15 = {}
	local function __FUNC_1BA5_()
		registerVal1:setupElementClipCounter(1.000000)
		local function __FUNC_1C8C_(arg0, arg1)
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
		__FUNC_1C8C_(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_1BA5_
	registerVal14.DefaultState = registerVal15
	registerVal1.clipsPerState = registerVal14
	local function __FUNC_1E41_(arg1, arg2)
		SendClientScriptMenuChangeNotify(arg0, registerVal1, true)
		SendClientScriptNotifyForAdjustedClient(arg0, "CustomClass_remove", "")
		ShowHeaderKickerAndIcon(registerVal1)
		CombatRecordSetHeadingKickerTextToCombatRecordGameMode("")
		CombatRecordUpdateSelfIdentityWidget(registerVal1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_1E41_)
	local function __FUNC_200D_(arg0, arg1, arg2, arg3)
		SendClientScriptMenuChangeNotify(arg2, arg1, false)
		GoBack(registerVal1, arg2)
		ClearMenuSavedState(arg1)
		SendClientScriptNotifyForAdjustedClient(arg2, "CustomClass_closed", "")
		return true
	end

	local function __FUNC_2132_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_200D_, __FUNC_2132_, false)
	registerVal4:setModel(registerVal1.buttonModel, arg0)
	registerVal6:setModel(registerVal1.buttonModel, arg0)
	registerVal7.id = "ItemList"
	local registerVal16 = {}
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
	local function __FUNC_222D_(arg1)
		arg1.FEMenuLeftGraphics:close()
		arg1.MenuFrame:close()
		arg1.LeftPanel:close()
		arg1.feFooterContainerNOTLobby:close()
		arg1.ItemList:close()
		arg1.WeaponNameTitle:close()
		arg1.KillsStat:close()
		arg1.Collectibles:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "CombatRecordCollectibles.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_222D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

