-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Barracks.CombatRecordFriend")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.Footer.fe_footerRighSlideIn")
local function __FUNC_263_(arg0, arg1)
	arg0.animateInFromOffset = 340.000000
	CoD.perController[arg1].isCombatRecordCompare = true
	local registerVal5 = Engine.GetGlobalModel()
	local registerVal3 = Engine.GetModelValue(Engine.GetModel(registerVal5, "socialRoot.tab"))
	CoD.perController[arg1].previousSocialRootTab = registerVal3
	SetGlobalModelValue("socialRoot.tab", "friends")
end

local function __FUNC_43D_(arg0, arg1)
	local function __FUNC_4D4_(arg0)
		CoD.perController[arg1].isCombatRecordCompare = nil
		SetGlobalModelValueArg("socialRoot.tab", CoD.perController[arg1].previousSocialRootTab)
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "close", __FUNC_4D4_)
end

local function __FUNC_5F7_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("CombatRecordFriendSidebar")
	if __FUNC_263_ then
		__FUNC_263_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "CombatRecordFriendSidebar.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -262.000000, 11.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.350000)
	registerVal1:addElement(registerVal3)
	registerVal1.Blackfade = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, -355.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.040000, 0.040000, 0.040000)
	registerVal4:setAlpha(0.980000)
	registerVal1:addElement(registerVal4)
	registerVal1.leftBackground = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, true, -355.000000, 3.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setAlpha(0.500000)
	registerVal5:setImage(RegisterImage("uie_t7_tile_texture"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll"))
	registerVal5:setShaderVector(0.000000, 30.000000, 55.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.tileTexture = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(false, true, -322.500000, -64.000000)
	registerVal6:setTopBottom(true, false, 330.000000, 360.000000)
	registerVal6:setRGB(1.000000, 0.470000, 0.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setText(Engine.Localize("MENU_NO_PLAYERS_TO_COMPARE"))
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal6)
	registerVal1.NoFriendsText = registerVal6
	local registerVal7 = LUI.UIList.new(registerVal1, arg0, 3.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal7:makeFocusable()
	registerVal7:setLeftRight(false, true, -322.500000, -22.500000)
	registerVal7:setTopBottom(true, false, 133.000000, 599.000000)
	registerVal7:setWidgetType(CoD.CombatRecordFriend)
	registerVal7:setVerticalCount(7.000000)
	registerVal7:setSpacing(3.000000)
	registerVal7:setVerticalCounter(CoD.verticalCounter)
	registerVal7:setDataSource("SocialOnlinePlayersList")
	local function __FUNC_1722_(arg1, arg2)
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

	registerVal7:registerEventHandler("gain_focus", __FUNC_1722_)
	local function __FUNC_18B3_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_18B3_)
	local function __FUNC_1982_(arg0, arg1, arg2, arg3)
		CombatRecordSetComparing(registerVal1, arg2, true)
		CombatRecordSelectFriend(registerVal1, arg0, arg2)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_1A40_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal7, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1982_, __FUNC_1A40_, false)
	registerVal1:addElement(registerVal7)
	registerVal1.FriendsList = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(false, true, -322.500000, -100.000000)
	registerVal8:setTopBottom(true, false, 96.000000, 122.000000)
	registerVal8:setRGB(1.000000, 0.470000, 0.000000)
	registerVal8:setText(Engine.Localize("MENU_COMPARE"))
	registerVal8:setTTF("fonts/escom.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal8)
	registerVal1.customClassNameTitile = registerVal8
	local registerVal9 = CoD.fe_footerRighSlideIn.new(registerVal1, arg0)
	registerVal9:setLeftRight(false, true, -464.000000, -32.000000)
	registerVal9:setTopBottom(false, true, -75.000000, -43.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.fefooterRighSlideIn = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, true, -356.000000, -355.000000)
	registerVal10:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal10:setAlpha(0.420000)
	registerVal1:addElement(registerVal10)
	registerVal1.Border0 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, true, -356.000000, -355.000000)
	registerVal11:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal11:setAlpha(0.420000)
	registerVal1:addElement(registerVal11)
	registerVal1.Border00 = registerVal11
	local registerVal12 = {}
	local registerVal13 = {}
	local function __FUNC_1B3E_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal6:completeAnimation()
		registerVal1.NoFriendsText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.FriendsList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal7, {})
	end

	registerVal13.DefaultClip = __FUNC_1B3E_
	registerVal12.DefaultState = registerVal13
	registerVal13 = {}
	local function __FUNC_1C9F_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal6:completeAnimation()
		registerVal1.NoFriendsText:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.FriendsList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
	end

	registerVal13.DefaultClip = __FUNC_1C9F_
	registerVal12.EmptyFriendsList = registerVal13
	registerVal1.clipsPerState = registerVal12
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "EmptyFriendsList"
	local function __FUNC_1DFF_(arg1, arg2, arg3)
		local registerVal3 = IsSocialPlayersListEmpty(arg0)
		return (not registerVal3)
	end

	registerVal15.condition = __FUNC_1DFF_
	registerVal14 = {registerVal15}
	registerVal1:mergeStateConditions(registerVal14)
	local function __FUNC_1E5E_(arg1, arg2)
		UpdateFriends(registerVal1, arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_1E5E_)
	local function __FUNC_1EF4_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		ClearSavedState(registerVal1, arg2)
		return true
	end

	local function __FUNC_1F71_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1EF4_, __FUNC_1F71_, false)
	registerVal7.id = "FriendsList"
	registerVal9.buttons:setModel(registerVal1.buttonModel, arg0)
	registerVal14 = {}
	registerVal14.name = "menu_loaded"
	registerVal14.controller = arg0
	registerVal1:processEvent(registerVal14)
	registerVal14 = {}
	registerVal14.name = "update_state"
	registerVal14.menu = registerVal1
	registerVal1:processEvent(registerVal14)
	registerVal12 = registerVal1:restoreState()
	if not registerVal12 then
		registerVal14 = {}
		registerVal14.name = "gain_focus"
		registerVal14.controller = arg0
		registerVal1.FriendsList:processEvent(registerVal14)
	end
	local function __FUNC_206D_(arg1)
		arg1.FriendsList:close()
		arg1.fefooterRighSlideIn:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "CombatRecordFriendSidebar.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_206D_)
	if __FUNC_43D_ then
		__FUNC_43D_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.CombatRecordFriendSidebar = __FUNC_5F7_
