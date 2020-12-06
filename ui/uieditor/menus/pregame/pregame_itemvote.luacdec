-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
require("ui.uieditor.widgets.VehicleHUDs.Ground.VehicleGround_VignetteBack")
require("ui.uieditor.widgets.Pregame.Pregame_VoteItem")
require("ui.uieditor.widgets.Footer.fe_FooterContainer_NOTLobby")
require("ui.uieditor.widgets.Pregame.Pregame_TimerOverlay")
require("ui.uieditor.widgets.Pregame.Pregame_Title")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.Pregame.Pregame_ItemVote_Tabs")
require("ui.uieditor.widgets.Pregame.Pregame_ItemVote_VoteCount")
require("ui.uieditor.widgets.Pregame.Pregame_Title_Small")
require("ui.uieditor.widgets.Lobby.Common.FE_TalkersWidget")
local function __FUNC_4A6_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	local registerVal2 = Engine.GetModel(registerVal3, "Pregame")
	registerVal3 = Engine.CreateModel(registerVal2, "voteFilter")
	Engine.SetModelValue(registerVal3, 1.000000)
end

local function __FUNC_5CF_(arg0, arg1)
	arg0.PregameItemVoteTabs:setForceMouseEventDispatch(true)
	local function __FUNC_6A2_(arg2, arg3)
		if arg3.grid == arg0.PregameItemVoteTabs.Tabs.grid then
			SetPregameVoteFilter(arg0, arg2, arg1, arg3.grid.savedActiveIndex)
		end
	end

	arg0:registerEventHandler("grid_item_changed", __FUNC_6A2_)
end

local function __FUNC_7A9_(arg0, arg1)
	local function __FUNC_90A_(arg0)
		local registerVal2 = Engine.GetModelForController(arg1)
		local registerVal1 = Engine.GetModel(registerVal2, "Pregame")
		registerVal2 = Engine.CreateModel(registerVal1, "voteFilter")
		local registerVal3 = Engine.GetModelValue(registerVal2)
		local registerVal5 = CoD.CACUtility.GetItemInfoFromElementModel(arg1, arg0)
		if CoD.CACUtility.PregameLoadoutFilters[registerVal3].filters[registerVal5.loadoutSlot] == nil then
		end
		return true
	end

	local registerVal4 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.CreateModel(registerVal4, "Pregame")
	registerVal4 = Engine.CreateModel(registerVal3, "voteFilter")
	local function __FUNC_B3E_(arg2)
		local registerVal1 = Engine.GetModelValue(arg2)
		if CoD.CACUtility.PregameLoadoutFilters[registerVal1].filters.all then
			arg0.List.filter = nil
		else
			arg0.List.filter = __FUNC_90A_
		end
		arg0.List:updateDataSource(true)
		local registerVal5 = {}
		registerVal5.name = "gain_focus"
		registerVal5.controller = arg1
		arg0.List:processEvent(registerVal5)
	end

	arg0:subscribeToModel(registerVal4, __FUNC_B3E_)
	if CoD.isPC then
		__FUNC_5CF_(arg0, arg1)
	end
end

local function __FUNC_D46_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Pregame_ItemVote")
	if __FUNC_4A6_ then
		__FUNC_4A6_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Pregame_ItemVote.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FE_ButtonPanel.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, -28.830000, 1304.970000)
	registerVal3:setTopBottom(true, false, -11.000000, 745.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.FEButtonPanel1 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setAlpha(0.250000)
	registerVal4:setupUIStreamedImage(0.000000)
	local function __FUNC_2271_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg0, "MapInfo", "mapImage", __FUNC_2271_)
	registerVal1:addElement(registerVal4)
	registerVal1.MapImage = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 190.500000, -190.500000)
	registerVal5:setTopBottom(true, true, 174.000000, -99.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.750000)
	registerVal1:addElement(registerVal5)
	registerVal1.Darken000 = registerVal5
	local registerVal6 = CoD.VehicleGround_VignetteBack.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal6:setAlpha(0.300000)
	registerVal1:addElement(registerVal6)
	registerVal1.VignetteBack = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 13.000000, 38.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setAlpha(0.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.Darken00 = registerVal7
	local registerVal8 = LUI.UIList.new(registerVal1, arg0, 5.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal8:makeFocusable()
	registerVal8:setLeftRight(true, false, 190.500000, 1089.500000)
	registerVal8:setTopBottom(true, false, 174.000000, 621.000000)
	registerVal8:setWidgetType(CoD.Pregame_VoteItem)
	registerVal8:setHorizontalCount(8.000000)
	registerVal8:setVerticalCount(4.000000)
	registerVal8:setSpacing(5.000000)
	registerVal8:setDataSource("PregameRestrictedItems")
	local registerVal12 = Engine.GetGlobalModel()
	local registerVal11 = Engine.GetModel(registerVal12, "lobbyRoot.Pregame.Update")
	local function __FUNC_2324_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "lobbyRoot.Pregame.Update"
		CoD.Menu.UpdateButtonShownState(registerVal8, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_2324_)
	local function __FUNC_24F1_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = nil
		CoD.Menu.UpdateButtonShownState(registerVal8, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal8:linkToElementModel(registerVal8, nil, true, __FUNC_24F1_)
	local function __FUNC_269C_(arg1, arg2)
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

	registerVal8:registerEventHandler("gain_focus", __FUNC_269C_)
	local function __FUNC_282F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("lose_focus", __FUNC_282F_)
	local function __FUNC_28FE_(arg0, arg1, arg2, arg3)
		local registerVal4 = ItemIsProtected(arg1, arg0, arg2)
		registerVal4 = ItemIsBanned(arg1, arg0, arg2)
		registerVal4 = ItemIsInRestrictionState(arg1, arg0, arg2, Enum.ItemRestrictionState.ITEM_RESTRICTION_STATE_RESTRICTED)
		registerVal4 = ItemIsInRestrictionState(arg1, arg0, arg2, Enum.ItemRestrictionState.ITEM_RESTRICTION_STATE_PROTECTED)
		if not registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 then
			ShowPregameVoteOptions(registerVal1, arg0, arg2)
			return true
		end
	end

	local function __FUNC_2ADE_(arg0, arg1, arg2)
		local registerVal3 = ItemIsProtected(arg1, arg0, arg2)
		registerVal3 = ItemIsBanned(arg1, arg0, arg2)
		registerVal3 = ItemIsInRestrictionState(arg1, arg0, arg2, Enum.ItemRestrictionState.ITEM_RESTRICTION_STATE_RESTRICTED)
		registerVal3 = ItemIsInRestrictionState(arg1, arg0, arg2, Enum.ItemRestrictionState.ITEM_RESTRICTION_STATE_PROTECTED)
		if not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal8, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_28FE_, __FUNC_2ADE_, false)
	registerVal11 = {}
	registerVal12 = {}
	registerVal12.stateName = "ShowHeader"
	local function __FUNC_2D4E_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal12.condition = __FUNC_2D4E_
	local registerVal13 = {}
	registerVal13.stateName = "ShowFooter"
	local function __FUNC_2D99_(arg1, arg2, arg3)
		local registerVal3 = ItemIsInRestrictionState(arg1, arg2, arg0, Enum.ItemRestrictionState.ITEM_RESTRICTION_STATE_NONE)
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_2D99_
	registerVal11 = {registerVal12, registerVal13}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal12 = Engine.GetGlobalModel()
	registerVal11 = Engine.GetModel(registerVal12, "lobbyRoot.Pregame.Update")
	local function __FUNC_2E6F_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.Update"
		registerVal1:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_2E6F_)
	registerVal1:addElement(registerVal8)
	registerVal1.List = registerVal8
	local registerVal9 = CoD.fe_FooterContainer_NOTLobby.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, true, 1.000000, -1.000000)
	registerVal9:setTopBottom(false, true, -67.000000, -2.000000)
	local function __FUNC_2F9A_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("menu_loaded", __FUNC_2F9A_)
	registerVal1:addElement(registerVal9)
	registerVal1.feFooterContainerNOTLobby = registerVal9
	local registerVal10 = CoD.Pregame_TimerOverlay.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal10:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "PregameVote"
	local function __FUNC_302D_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal14.condition = __FUNC_302D_
	registerVal13 = {registerVal14}
	registerVal10:mergeStateConditions(registerVal13)
	registerVal14 = Engine.GetGlobalModel()
	registerVal13 = Engine.GetModel(registerVal14, "lobbyRoot.Pregame.state")
	local function __FUNC_3078_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.state"
		registerVal1:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:subscribeToModel(registerVal13, __FUNC_3078_)
	registerVal1:addElement(registerVal10)
	registerVal1.PregameTimerOverlay = registerVal10
	registerVal11 = CoD.Pregame_Title.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 390.000000, 890.000000)
	registerVal11:setTopBottom(true, false, 83.000000, 120.000000)
	registerVal11.KillcamText0:setText(Engine.Localize("MENU_SELECT_ITEM_TO_PROTECT_OR_BAN"))
	registerVal11.GamemodeIcon:setAlpha(0.000000)
	local function __FUNC_31A5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.GamemodeIcon:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal11:subscribeToGlobalModel(arg0, "MapInfo", "gameTypeIcon", __FUNC_31A5_)
	registerVal1:addElement(registerVal11)
	registerVal1.PregameTitle = registerVal11
	registerVal12 = CoD.verticalCounter.new(registerVal1, arg0)
	registerVal12:setLeftRight(false, false, -100.000000, 100.000000)
	registerVal12:setTopBottom(true, false, 625.000000, 650.000000)
	local function __FUNC_327A_(arg0, arg1)
		SetAsListVerticalCounter(registerVal1, arg0, "List")
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal12:registerEventHandler("menu_loaded", __FUNC_327A_)
	registerVal1:addElement(registerVal12)
	registerVal1.verticalCounter0 = registerVal12
	registerVal13 = CoD.Pregame_ItemVote_Tabs.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, -7.000000, 1273.000000)
	registerVal13:setTopBottom(true, false, 120.000000, 171.000000)
	registerVal1:addElement(registerVal13)
	registerVal1.PregameItemVoteTabs = registerVal13
	registerVal14 = CoD.Pregame_ItemVote_VoteCount.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 0.000000, 190.500000)
	registerVal14:setTopBottom(true, false, 315.600000, 416.800000)
	registerVal1:addElement(registerVal14)
	registerVal1.PregameItemVoteVoteCount = registerVal14
	local registerVal15 = CoD.Pregame_Title_Small.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, true, 1.000000, -1.000000)
	registerVal15:setTopBottom(true, false, 33.000000, 81.000000)
	registerVal1:addElement(registerVal15)
	registerVal1.PregameTitleSmall = registerVal15
	local registerVal16 = CoD.FE_TalkersWidget.new(registerVal1, arg0)
	registerVal16:setLeftRight(true, false, 1026.000000, 1216.000000)
	registerVal16:setTopBottom(true, false, 170.700000, 561.700000)
	registerVal1:addElement(registerVal16)
	registerVal1.FETalkersWidget = registerVal16
	local function __FUNC_3329_(arg0, arg1, arg2, arg3)
		ConfirmPregameVotePass(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_3390_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "Menu_Pass")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_3329_, __FUNC_3390_, false)
	local function __FUNC_348D_(arg0, arg1, arg2, arg3)
		AdjustPregameVoteFilter(registerVal1, arg0, arg2, "1")
		return true
	end

	local function __FUNC_3504_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RB, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RB, nil, __FUNC_348D_, __FUNC_3504_, false)
	local function __FUNC_35EE_(arg0, arg1, arg2, arg3)
		AdjustPregameVoteFilter(registerVal1, arg0, arg2, "-1")
		return true
	end

	local function __FUNC_3665_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LB, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_LB, nil, __FUNC_35EE_, __FUNC_3665_, false)
	registerVal8.id = "List"
	registerVal9:setModel(registerVal1.buttonModel, arg0)
	local registerVal19 = {}
	registerVal19.name = "menu_loaded"
	registerVal19.controller = arg0
	registerVal1:processEvent(registerVal19)
	registerVal19 = {}
	registerVal19.name = "update_state"
	registerVal19.menu = registerVal1
	registerVal1:processEvent(registerVal19)
	local registerVal17 = registerVal1:restoreState()
	if not registerVal17 then
		registerVal19 = {}
		registerVal19.name = "gain_focus"
		registerVal19.controller = arg0
		registerVal1.List:processEvent(registerVal19)
	end
	local function __FUNC_374E_(arg1)
		arg1.FEButtonPanel1:close()
		arg1.VignetteBack:close()
		arg1.List:close()
		arg1.feFooterContainerNOTLobby:close()
		arg1.PregameTimerOverlay:close()
		arg1.PregameTitle:close()
		arg1.verticalCounter0:close()
		arg1.PregameItemVoteTabs:close()
		arg1.PregameItemVoteVoteCount:close()
		arg1.PregameTitleSmall:close()
		arg1.FETalkersWidget:close()
		arg1.MapImage:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Pregame_ItemVote.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_374E_)
	if __FUNC_7A9_ then
		__FUNC_7A9_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.Pregame_ItemVote = __FUNC_D46_
