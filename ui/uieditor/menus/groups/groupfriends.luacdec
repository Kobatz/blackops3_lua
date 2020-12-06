-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Footer.fe_footerRighSlideIn")
require("ui.uieditor.menus.Social.Social_PlayerDetailsPopup")
require("ui.uieditor.widgets.Groups.GroupsFriendsRosterRow")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
local function __FUNC_298_(arg0, arg1)
	arg0.animateInFromOffset = 355.000000
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.GetModel(registerVal4, "socialRoot.tab")
	Engine.SetModelValue(registerVal3, "groupFriendsFiltered")
end

local function __FUNC_3B5_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("GroupFriends")
	if __FUNC_298_ then
		__FUNC_298_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "GroupFriends.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -356.000000, 11.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.350000)
	registerVal1:addElement(registerVal3)
	registerVal1.Blackfade = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, -430.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.040000, 0.040000, 0.040000)
	registerVal4:setAlpha(0.980000)
	registerVal1:addElement(registerVal4)
	registerVal1.leftBackground = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, true, -430.000000, 3.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setAlpha(0.500000)
	registerVal5:setImage(RegisterImage("uie_t7_tile_texture"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll"))
	registerVal5:setShaderVector(0.000000, 30.000000, 55.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.tileTexture = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(false, true, -402.500000, -180.000000)
	registerVal6:setTopBottom(true, false, 80.000000, 116.000000)
	registerVal6:setRGB(1.000000, 0.470000, 0.000000)
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1624_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg0, "SelectedGroup", "name", __FUNC_1624_)
	registerVal1:addElement(registerVal6)
	registerVal1.title = registerVal6
	local registerVal7 = CoD.fe_footerRighSlideIn.new(registerVal1, arg0)
	registerVal7:setLeftRight(false, true, -551.000000, -119.000000)
	registerVal7:setTopBottom(false, true, -75.000000, -43.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.fefooterRighSlideIn = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, true, -431.000000, -430.000000)
	registerVal8:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal8:setAlpha(0.420000)
	registerVal1:addElement(registerVal8)
	registerVal1.Border0 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, true, -431.000000, -430.000000)
	registerVal9:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal9:setAlpha(0.420000)
	registerVal1:addElement(registerVal9)
	registerVal1.Border00 = registerVal9
	local registerVal10 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal10:makeFocusable()
	registerVal10:setLeftRight(true, false, 877.500000, 1212.500000)
	registerVal10:setTopBottom(true, false, 132.500000, 564.500000)
	registerVal10:setWidgetType(CoD.GroupsFriendsRosterRow)
	registerVal10:setVerticalCount(7.000000)
	registerVal10:setVerticalCounter(CoD.verticalCounter)
	registerVal10:setDataSource("SocialPlayersList")
	local registerVal14 = Engine.GetModelForController(arg0)
	local registerVal13 = Engine.GetModel(registerVal14, "groups.filterGroupFriendsInProgress")
	local function __FUNC_16DE_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "groups.filterGroupFriendsInProgress"
		CoD.Menu.UpdateButtonShownState(registerVal10, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal10:subscribeToModel(registerVal13, __FUNC_16DE_)
	local function __FUNC_18B4_(arg1, arg2)
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

	registerVal10:registerEventHandler("gain_focus", __FUNC_18B4_)
	local function __FUNC_1A47_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal10:registerEventHandler("lose_focus", __FUNC_1A47_)
	local function __FUNC_1B16_(arg0, arg1, arg2, arg3)
		local registerVal4 = ListHasElements(arg0)
		registerVal4 = FilteringGroupFriends(arg2)
		if registerVal4 and not registerVal4 then
			SetSelectedFriendXUID(registerVal1, arg0, arg2)
			OpenOverlay(registerVal1, "Social_PlayerDetailsPopup", arg2, "", "")
			return true
		end
	end

	local function __FUNC_1C39_(arg0, arg1, arg2)
		local registerVal3 = ListHasElements(arg0)
		registerVal3 = FilteringGroupFriends(arg2)
		if registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal10, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_1B16_, __FUNC_1C39_, false)
	registerVal1:addElement(registerVal10)
	registerVal1.FriendsList = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 981.000000, 1109.000000)
	registerVal11:setTopBottom(true, false, 284.500000, 412.500000)
	registerVal11:setupSpinner()
	registerVal1:addElement(registerVal11)
	registerVal1.Spinner = registerVal11
	local registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(false, true, -402.500000, -180.000000)
	registerVal12:setTopBottom(true, false, 54.000000, 80.000000)
	registerVal12:setText(Engine.Localize("GROUPS_VIEWING_FRIENDS_IN"))
	registerVal12:setTTF("fonts/escom.ttf")
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal12)
	registerVal1.title0 = registerVal12
	registerVal13 = {}
	registerVal14 = {}
	local function __FUNC_1D9E_()
		registerVal1:setupElementClipCounter(1.000000)
		registerVal11:completeAnimation()
		registerVal1.Spinner:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal11, {})
	end

	registerVal14.DefaultClip = __FUNC_1D9E_
	registerVal13.DefaultState = registerVal14
	registerVal14 = {}
	local function __FUNC_1E9B_()
		registerVal1:setupElementClipCounter(1.000000)
		registerVal11:completeAnimation()
		registerVal1.Spinner:setLeftRight(true, false, 981.000000, 1109.000000)
		registerVal1.Spinner:setTopBottom(true, false, 284.500000, 412.500000)
		registerVal1.Spinner:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal11, {})
	end

	registerVal14.DefaultClip = __FUNC_1E9B_
	registerVal13.Loading = registerVal14
	registerVal1.clipsPerState = registerVal13
	local registerVal15 = {}
	local registerVal16 = {}
	registerVal16.stateName = "Loading"
	local function __FUNC_2022_(arg1, arg2, arg3)
		return FilteringGroupFriends(arg0)
	end

	registerVal16.condition = __FUNC_2022_
	registerVal15 = {registerVal16}
	registerVal1:mergeStateConditions(registerVal15)
	registerVal16 = Engine.GetModelForController(arg0)
	registerVal15 = Engine.GetModel(registerVal16, "groups.filterGroupFriendsInProgress")
	local function __FUNC_207B_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.filterGroupFriendsInProgress"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal15, __FUNC_207B_)
	local function __FUNC_21B1_(arg1, arg2)
		CallCustomElementFunction_Self(registerVal1, "handleKeyboardComplete", arg1, arg0, arg2)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("ui_keyboard_input", __FUNC_21B1_)
	local function __FUNC_2281_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		ClearSavedState(registerVal1, arg2)
		return true
	end

	local function __FUNC_22FD_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_2281_, __FUNC_22FD_, false)
	registerVal7.buttons:setModel(registerVal1.buttonModel, arg0)
	registerVal10.id = "FriendsList"
	registerVal15 = {}
	registerVal15.name = "menu_loaded"
	registerVal15.controller = arg0
	registerVal1:processEvent(registerVal15)
	registerVal15 = {}
	registerVal15.name = "update_state"
	registerVal15.menu = registerVal1
	registerVal1:processEvent(registerVal15)
	registerVal13 = registerVal1:restoreState()
	if not registerVal13 then
		registerVal15 = {}
		registerVal15.name = "gain_focus"
		registerVal15.controller = arg0
		registerVal1.FriendsList:processEvent(registerVal15)
	end
	local function __FUNC_23F9_(arg1)
		arg1.fefooterRighSlideIn:close()
		arg1.FriendsList:close()
		arg1.title:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "GroupFriends.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_23F9_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.GroupFriends = __FUNC_3B5_
