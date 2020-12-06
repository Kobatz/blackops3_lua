-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Groups.GroupsFriendsList")
require("ui.uieditor.widgets.Groups.GroupsPlayerCard")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.Groups.List1ButtonLarge_Groups")
local function __FUNC_2A4_(arg0, arg1)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.CreateModel(registerVal4, "socialRoot.tab")
	Engine.SetModelValue(registerVal3, "friends")
end

local function __FUNC_391_(arg0, arg1)
	local function __FUNC_424_(arg0)
		local registerVal3 = Engine.GetGlobalModel()
		local registerVal2 = Engine.CreateModel(registerVal3, "socialRoot.tab")
		Engine.SetModelValue(registerVal2, "")
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "close", __FUNC_424_)
end

local function __FUNC_50A_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("GroupInviteFriends")
	if __FUNC_2A4_ then
		__FUNC_2A4_(registerVal1, arg0)
	end
	registerVal1.soundSet = "HUD"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "GroupInviteFriends.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_fe_cp_background"))
	registerVal1:addElement(registerVal3)
	registerVal1.BlackBG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 64.000000, 479.820000)
	registerVal4:setTopBottom(true, false, 87.110000, 678.110000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.300000)
	registerVal1:addElement(registerVal4)
	registerVal1.BlackTint = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.BlackBg = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 78.000000, 160.000000)
	registerVal6:setTopBottom(true, false, 92.110000, 117.110000)
	registerVal6:setText(Engine.Localize("GROUPS_INVITE_FRIENDS"))
	registerVal6:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal6)
	registerVal1.Label0 = registerVal6
	local registerVal7 = CoD.GroupsFriendsList.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 78.000000, 479.820000)
	registerVal7:setTopBottom(true, false, 124.990000, 674.990000)
	registerVal7.onlineList:setDataSource("SocialPlayersList")
	registerVal1:addElement(registerVal7)
	registerVal1.FriendsList = registerVal7
	local registerVal8 = CoD.GroupsPlayerCard.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 893.000000, 1216.000000)
	registerVal8:setTopBottom(true, false, 124.990000, 591.990000)
	local function __FUNC_195C_(arg1)
		registerVal8:setModel(arg1, arg0)
	end

	registerVal8:subscribeToGlobalModel(arg0, "SocialPlayerInfo", nil, __FUNC_195C_)
	registerVal1:addElement(registerVal8)
	registerVal1.GroupsPlayerCard = registerVal8
	local registerVal9 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal9.titleLabel:setText(Engine.Localize("GROUPS_FINISH_CAPS"))
	registerVal9.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("GROUPS_FINISH_CAPS"))
	registerVal1:addElement(registerVal9)
	registerVal1.MenuFrame = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, true, -730.180000, -711.180000)
	registerVal10:setTopBottom(false, false, 181.990000, 200.990000)
	registerVal10:setRGB(0.550000, 0.770000, 0.250000)
	registerVal10:setImage(RegisterImage("uie_t7_hud_cac_equipped_16"))
	registerVal1:addElement(registerVal10)
	registerVal1.SelectedIcon = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(false, false, -58.000000, -23.000000)
	registerVal11:setTopBottom(false, false, 178.990000, 203.990000)
	registerVal11:setTTF("fonts/default.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_19AE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:subscribeToGlobalModel(arg0, "CreateGroup", "friends_invited_count", __FUNC_19AE_)
	registerVal1:addElement(registerVal11)
	registerVal1.currentItem = registerVal11
	local registerVal12 = LUI.UITightText.new()
	registerVal12:setLeftRight(false, false, -18.000000, -12.000000)
	registerVal12:setTopBottom(false, false, 178.990000, 203.990000)
	registerVal12:setText(Engine.Localize("/"))
	registerVal12:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal12)
	registerVal1.dividor = registerVal12
	local registerVal13 = LUI.UIText.new()
	registerVal13:setLeftRight(false, false, -7.000000, 34.000000)
	registerVal13:setTopBottom(false, false, 178.990000, 203.990000)
	registerVal13:setTTF("fonts/default.ttf")
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal13)
	registerVal1.count = registerVal13
	local registerVal14 = CoD.List1ButtonLarge_Groups.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 550.000000, 710.000000)
	registerVal14:setTopBottom(true, false, 566.790000, 601.400000)
	registerVal14.LabelButton.itemName:setText(Engine.Localize("GROUPS_ADD_FRIENDS_CAPS"))
	local function __FUNC_1A66_(arg1, arg2)
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

	registerVal14:registerEventHandler("gain_focus", __FUNC_1A66_)
	local function __FUNC_1BF7_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal14:registerEventHandler("lose_focus", __FUNC_1BF7_)
	local function __FUNC_1CC6_(arg0, arg1, arg2, arg3)
		InviteSelectedFriendsToGroup(registerVal1, arg0, arg2, true)
		return true
	end

	local function __FUNC_1D36_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal14, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1CC6_, __FUNC_1D36_, false)
	registerVal1:addElement(registerVal14)
	registerVal1.List1ButtonLargeGroups = registerVal14
	local registerVal15 = CoD.List1ButtonLarge_Groups.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, false, 550.000000, 710.000000)
	registerVal15:setTopBottom(true, false, 606.290000, 640.900000)
	registerVal15.LabelButton.itemName:setText(Engine.Localize("GROUPS_SKIP_CAPS"))
	local function __FUNC_1E27_(arg1, arg2)
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

	registerVal15:registerEventHandler("gain_focus", __FUNC_1E27_)
	local function __FUNC_1FB7_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal15:registerEventHandler("lose_focus", __FUNC_1FB7_)
	local function __FUNC_2086_(arg0, arg1, arg2, arg3)
		InviteSelectedFriendsToGroup(registerVal1, arg0, arg2, false)
		return true
	end

	local function __FUNC_20F6_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal15, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2086_, __FUNC_20F6_, false)
	registerVal1:addElement(registerVal15)
	registerVal1.List1ButtonLargeGroups0 = registerVal15
	local function __FUNC_21E7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal13:linkToElementModel(registerVal7.onlineList, "playerCount", true, __FUNC_21E7_)
	local registerVal16 = {}
	local registerVal17 = {}
	registerVal17 = {registerVal14, registerVal15}
	registerVal16.right = registerVal17
	registerVal7.navigation = registerVal16
	registerVal16 = {}
	registerVal16.left = registerVal7
	registerVal16.down = registerVal15
	registerVal14.navigation = registerVal16
	registerVal16 = {}
	registerVal16.left = registerVal7
	registerVal16.up = registerVal14
	registerVal15.navigation = registerVal16
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_229E_(arg1, arg2)
		ClearInitialGroupsInviteList(registerVal1, arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_229E_)
	registerVal7.id = "FriendsList"
	registerVal9:setModel(registerVal1.buttonModel, arg0)
	registerVal14.id = "List1ButtonLargeGroups"
	registerVal15.id = "List1ButtonLargeGroups0"
	local registerVal18 = {}
	registerVal18.name = "menu_loaded"
	registerVal18.controller = arg0
	registerVal1:processEvent(registerVal18)
	registerVal18 = {}
	registerVal18.name = "update_state"
	registerVal18.menu = registerVal1
	registerVal1:processEvent(registerVal18)
	registerVal16 = registerVal1:restoreState()
	if not registerVal16 then
		registerVal18 = {}
		registerVal18.name = "gain_focus"
		registerVal18.controller = arg0
		registerVal1.FriendsList:processEvent(registerVal18)
	end
	local function __FUNC_2343_(arg1)
		arg1.FriendsList:close()
		arg1.GroupsPlayerCard:close()
		arg1.MenuFrame:close()
		arg1.List1ButtonLargeGroups:close()
		arg1.List1ButtonLargeGroups0:close()
		arg1.currentItem:close()
		arg1.count:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "GroupInviteFriends.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2343_)
	if __FUNC_391_ then
		__FUNC_391_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.GroupInviteFriends = __FUNC_50A_
