-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.playercard.SelfIdentityBadge")
require("ui.uieditor.widgets.Footer.fe_FooterContainer_NOTLobby")
require("ui.uieditor.widgets.BlackMarket.BM_LogoContracts")
require("ui.uieditor.widgets.SpecialContracts.SpecialContracts_SelectionButton")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.SpecialContracts.SpecialContracts_Infopane")
local function __FUNC_362_(arg0, arg1)
	local function __FUNC_419_(arg1, arg2)
		if arg1.m_inputDisabled then
			local registerVal2 = arg1:getFirstChild()
			if registerVal2 then
				if registerVal2.menuName then
					registerVal2:processEvent(arg2)
				end
				local registerVal3 = registerVal2:getNextSibling()
			else
				if arg2.name == "mousemove" then
					LUI.UIElement.MouseMoveEvent(arg0, arg2)
				else
					LUI.UIElement.MouseButtonEvent(arg0, arg2)
				end
			end
		end
	end

	arg0:registerEventHandler("mousemove", __FUNC_419_)
	arg0:registerEventHandler("mouseup", __FUNC_419_)
	arg0:registerEventHandler("mousedown", __FUNC_419_)
end

local function __FUNC_5E7_(arg0, arg1)
	arg0.disablePopupOpenCloseAnim = true
	local registerVal3 = Engine.GetModelForController(arg1)
	Engine.CreateModel(registerVal3, "updateContractsList")
end

local function __FUNC_6CA_(arg0, arg1)
	arg0.originalOcclusionChange = arg0.m_eventHandlers.occlusion_change
	local function __FUNC_881_(arg0, arg2)
		if not arg2.occluded and arg2.occludedBy and arg2.occludedBy.id == "Menu.BM_SpecialContracts_CallingCardContracts" then
			CoD.perController[arg1].callingCardContractGroup = nil
			ForceNotifyControllerModel(arg1, "updateContractsList")
		end
		arg0.originalOcclusionChange(arg0, arg2)
	end

	arg0:registerEventHandler("occlusion_change", __FUNC_881_)
	local function __FUNC_A52_(arg0, arg1)
		Engine.SetDvar("live_autoEventPumpTime", 0.000000)
	end

	arg0:registerEventHandler("bm_autoevents_tick", __FUNC_A52_)
	arg0:addElement(LUI.UITimer.new(100.000000, "bm_autoevents_tick", false, arg0))
	if CoD.isPC then
		__FUNC_362_(arg0, arg1)
	end
end

local function __FUNC_ADE_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("BM_SpecialContracts")
	if __FUNC_5E7_ then
		__FUNC_5E7_(registerVal1, arg0)
	end
	registerVal1.soundSet = "Blackmarket_extra"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "BM_SpecialContracts.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_contracts_bg_1080"))
	registerVal1:addElement(registerVal3)
	registerVal1.Screen = registerVal3
	local registerVal4 = CoD.SelfIdentityBadge.new(registerVal1, arg0)
	registerVal4:setLeftRight(false, true, -453.000000, -110.000000)
	registerVal4:setTopBottom(true, false, 15.000000, 75.000000)
	registerVal4:setAlpha(0.000000)
	local function __FUNC_18CA_(arg1)
		registerVal4:setModel(arg1, arg0)
	end

	registerVal4:subscribeToGlobalModel(arg0, "PerController", "identityBadge", __FUNC_18CA_)
	local function __FUNC_191A_(arg1)
		registerVal4.CallingCard.CallingCardsFrameWidget:setModel(arg1, arg0)
	end

	registerVal4:subscribeToGlobalModel(arg0, "PerController", nil, __FUNC_191A_)
	registerVal1:addElement(registerVal4)
	registerVal1.SelfIdentityBadge = registerVal4
	local registerVal5 = CoD.fe_FooterContainer_NOTLobby.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 1.000000, -1.000000)
	registerVal5:setTopBottom(false, true, -67.000000, 0.000000)
	local function __FUNC_19B8_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("menu_opened", __FUNC_19B8_)
	registerVal1:addElement(registerVal5)
	registerVal1.feFooterContainerNOTLobby = registerVal5
	local registerVal6 = CoD.BM_LogoContracts.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 33.040000, 424.040000)
	registerVal6:setTopBottom(true, false, 5.000000, 126.000000)
	registerVal6:setScale(0.950000)
	registerVal6.RecentItems:setText(Engine.Localize("CONTRACT_SPECIAL_MENU_TITLE"))
	registerVal1:addElement(registerVal6)
	registerVal1.BMLogoContracts = registerVal6
	local registerVal7 = LUI.UIList.new(registerVal1, arg0, 3.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal7:makeFocusable()
	registerVal7:setLeftRight(true, false, 76.970000, 832.970000)
	registerVal7:setTopBottom(true, false, 105.000000, 597.000000)
	registerVal7:setWidgetType(CoD.SpecialContracts_SelectionButton)
	registerVal7:setHorizontalCount(3.000000)
	registerVal7:setVerticalCount(3.000000)
	registerVal7:setSpacing(3.000000)
	registerVal7:setVerticalCounter(CoD.verticalCounter)
	registerVal7:setDataSource("SpecialContractsList")
	local function __FUNC_1A4D_(arg1, arg2)
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

	registerVal7:registerEventHandler("gain_focus", __FUNC_1A4D_)
	local function __FUNC_1BDF_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_1BDF_)
	local function __FUNC_1CAE_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSpecialContractAvailable(registerVal1, arg0, arg2)
		if registerVal4 then
			ProcessListAction(registerVal1, arg0, arg2)
			return true
		end
	end

	local function __FUNC_1D4F_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsSpecialContractAvailable(registerVal1, arg0, arg2)
		if registerVal3 then
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal7, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_1CAE_, __FUNC_1D4F_, true)
	local function __FUNC_1E92_(arg1)
		UpdateDataSource(registerVal1, registerVal7, arg0)
	end

	registerVal7:subscribeToGlobalModel(arg0, "PerController", "updateContractsList", __FUNC_1E92_)
	local function __FUNC_1EEE_(arg1)
		UpdateDataSource(registerVal1, registerVal7, arg0)
	end

	registerVal7:subscribeToGlobalModel(arg0, "AutoeventsCycled", "cycled", __FUNC_1EEE_)
	registerVal1:addElement(registerVal7)
	registerVal1.SpecialContracts = registerVal7
	local registerVal8 = CoD.SpecialContracts_Infopane.new(registerVal1, arg0)
	registerVal8:setLeftRight(false, true, -418.000000, -67.910000)
	registerVal8:setTopBottom(true, false, 101.000000, 601.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.Infopane = registerVal8
	local function __FUNC_1F4A_(arg1)
		registerVal8:setModel(arg1, arg0)
	end

	registerVal8:linkToElementModel(registerVal7, nil, false, __FUNC_1F4A_)
	local function __FUNC_1F9A_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_1FEC_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1F9A_, __FUNC_1FEC_, false)
	registerVal5:setModel(registerVal1.buttonModel, arg0)
	registerVal7.id = "SpecialContracts"
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
		registerVal1.SpecialContracts:processEvent(registerVal11)
	end
	local function __FUNC_20E9_(arg1)
		arg1.SelfIdentityBadge:close()
		arg1.feFooterContainerNOTLobby:close()
		arg1.BMLogoContracts:close()
		arg1.SpecialContracts:close()
		arg1.Infopane:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "BM_SpecialContracts.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_20E9_)
	if __FUNC_6CA_ then
		__FUNC_6CA_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.BM_SpecialContracts = __FUNC_ADE_
