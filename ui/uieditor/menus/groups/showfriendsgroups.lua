-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.Groups.FindGroupsTabSearchGroupsCommonWidget")
require("ui.uieditor.widgets.playercard.IdentityBadge")
local function __FUNC_2B3_(arg0, arg1)
	local registerVal4 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.GetModel(registerVal4, "groups.skipViewFriendsInGroup")
	Engine.SetModelValue(registerVal3, true)
end

local function __FUNC_3A3_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("ShowFriendsGroups")
	if __FUNC_2B3_ then
		__FUNC_2B3_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "ShowFriendsGroups.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.bg = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_fe_cp_background"))
	registerVal1:addElement(registerVal4)
	registerVal1.BlackBG = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 92.930000, 381.000000)
	registerVal5:setTopBottom(true, false, 154.000000, 615.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.Image0 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 65.000000, 468.500000)
	registerVal6:setTopBottom(true, false, 86.000000, 684.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.300000)
	registerVal1:addElement(registerVal6)
	registerVal1.BlackTint0 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 64.000000, 1099.000000)
	registerVal7:setTopBottom(true, false, 154.000000, 614.000000)
	registerVal7:setAlpha(0.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.Background = registerVal7
	local registerVal8 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal8.titleLabel:setText(Engine.Localize("GROUPS_CAPS"))
	registerVal8.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("GROUPS_CAPS"))
	registerVal8.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_emblem"))
	registerVal1:addElement(registerVal8)
	registerVal1.MenuFrame = registerVal8
	local registerVal9 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 18.000000, 70.000000)
	registerVal9:setTopBottom(true, false, 91.000000, 708.250000)
	registerVal1:addElement(registerVal9)
	registerVal1.FEMenuLeftGraphics = registerVal9
	local registerVal10 = CoD.FindGroupsTabSearchGroupsCommonWidget.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 92.930000, 800.930000)
	registerVal10:setTopBottom(true, false, 154.000000, 627.000000)
	registerVal1:addElement(registerVal10)
	registerVal1.FindGroupsTabSearchGroupsCommonWidget = registerVal10
	local registerVal11 = CoD.IdentityBadge.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 845.000000, 1190.000000)
	registerVal11:setTopBottom(true, false, 26.000000, 86.000000)
	local function __FUNC_12F0_(arg1)
		registerVal11:setModel(arg1, arg0)
	end

	registerVal11:subscribeToGlobalModel(arg0, "SocialPlayerInfo", "identityBadge", __FUNC_12F0_)
	local function __FUNC_1342_(arg1)
		registerVal11.CallingCard.CallingCardsFrameWidget:setModel(arg1, arg0)
	end

	registerVal11:subscribeToGlobalModel(arg0, "SocialPlayerInfo", nil, __FUNC_1342_)
	registerVal1:addElement(registerVal11)
	registerVal1.IdentityBadge = registerVal11
	local registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(true, false, 92.930000, 446.930000)
	registerVal12:setTopBottom(true, false, 106.000000, 130.000000)
	registerVal12:setTTF("fonts/default.ttf")
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_13E0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setText(LocalizeIntoString("GROUPS_PLAYER_PART_OF_GROUPS", registerVal1))
		end
	end

	registerVal12:subscribeToGlobalModel(arg0, "SocialPlayerInfo", "identityBadge.gamertag", __FUNC_13E0_)
	registerVal1:addElement(registerVal12)
	registerVal1.TextBox = registerVal12
	local function __FUNC_14C2_(arg0, arg1, arg2, arg3)
		ClearSavedState(registerVal1, arg2)
		ClearLastGroupSearchResults(registerVal1, arg0, arg2)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_1576_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_14C2_, __FUNC_1576_, false)
	local function __FUNC_1671_(arg1)
		SetControllerModelValue(arg0, "groups.skipViewFriendsInGroup", false)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal1, "close", __FUNC_1671_)
	registerVal8:setModel(registerVal1.buttonModel, arg0)
	registerVal10.id = "FindGroupsTabSearchGroupsCommonWidget"
	local registerVal15 = {}
	registerVal15.name = "menu_loaded"
	registerVal15.controller = arg0
	registerVal1:processEvent(registerVal15)
	registerVal15 = {}
	registerVal15.name = "update_state"
	registerVal15.menu = registerVal1
	registerVal1:processEvent(registerVal15)
	local registerVal13 = registerVal1:restoreState()
	if not registerVal13 then
		registerVal15 = {}
		registerVal15.name = "gain_focus"
		registerVal15.controller = arg0
		registerVal1.FindGroupsTabSearchGroupsCommonWidget:processEvent(registerVal15)
	end
	local function __FUNC_16F8_(arg1)
		arg1.MenuFrame:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.FindGroupsTabSearchGroupsCommonWidget:close()
		arg1.IdentityBadge:close()
		arg1.TextBox:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "ShowFriendsGroups.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_16F8_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.ShowFriendsGroups = __FUNC_3A3_
