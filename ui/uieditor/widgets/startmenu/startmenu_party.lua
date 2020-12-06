-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Party_Button")
require("ui.uieditor.widgets.StartMenu.StartMenu_Party_Button_LG")
require("ui.uieditor.widgets.StartMenu.StartMenu_Party_LeaderNotification")
require("ui.uieditor.widgets.StartMenu.StartMenu_Party_Search")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StartMenu_Party = registerVal1
function CoD.StartMenu_Party.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_Party)
	registerVal2.id = "StartMenu_Party"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1150.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 520.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.StartMenu_Party_Button.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 349.000000)
	registerVal3:setTopBottom(true, false, 65.350000, 120.350000)
	registerVal2:addElement(registerVal3)
	registerVal2.LeaveParty = registerVal3
	local registerVal4 = CoD.StartMenu_Party_Button.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 349.000000)
	registerVal4:setTopBottom(true, false, 125.350000, 180.350000)
	registerVal2:addElement(registerVal4)
	registerVal2.PromotePlayer = registerVal4
	local registerVal5 = CoD.StartMenu_Party_Button.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 349.000000)
	registerVal5:setTopBottom(true, false, 185.350000, 240.350000)
	registerVal2:addElement(registerVal5)
	registerVal2.BootPlayers = registerVal5
	local registerVal6 = CoD.StartMenu_Party_Button_LG.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 0.000000, 349.000000)
	registerVal6:setTopBottom(true, false, 245.350000, 375.350000)
	registerVal6.Option:setText(Engine.Localize("MPUI_LOBBY_PRIVACY"))
	registerVal6.SelectedOption:setText(Engine.Localize("MENU_PARTY_PRIVACY_FRIENDS_ONLY"))
	registerVal2:addElement(registerVal6)
	registerVal2.PartyPrivacy = registerVal6
	local registerVal7 = CoD.StartMenu_Party_Button_LG.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 0.000000, 349.000000)
	registerVal7:setTopBottom(true, false, 380.350000, 520.000000)
	registerVal7.Option:setText(Engine.Localize("Max Party Size"))
	registerVal7.SelectedOption:setText(Engine.Localize("18 "))
	registerVal2:addElement(registerVal7)
	registerVal2.MaxPartySize = registerVal7
	local registerVal8 = CoD.StartMenu_Party_LeaderNotification.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 0.000000, 349.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 60.350000)
	registerVal2:addElement(registerVal8)
	registerVal2.StartMenuPartyLeaderNotification = registerVal8
	local registerVal9 = CoD.StartMenu_Party_Search.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 364.660000, 747.660000)
	registerVal9:setTopBottom(true, false, 0.260000, 370.430000)
	registerVal9.Title:setText(Engine.Localize("Look for Party"))
	registerVal9.Subtitle:setText(Engine.Localize("Find a Party, Join them, and play together."))
	registerVal9.Count:setText(Engine.Localize("1,250 Parties"))
	registerVal2:addElement(registerVal9)
	registerVal2.LookForParty = registerVal9
	local registerVal10 = CoD.StartMenu_Party_Search.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 767.000000, 1150.000000)
	registerVal10:setTopBottom(true, false, 0.260000, 370.430000)
	registerVal10.Title:setText(Engine.Localize("Need Players"))
	registerVal10.Subtitle:setText(Engine.Localize("Find players to join your party."))
	registerVal10.Count:setText(Engine.Localize("4,278 Players"))
	registerVal2:addElement(registerVal10)
	registerVal2.StartMenuPartySearch0 = registerVal10
	local function __FUNC_1057_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.Title:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.LeaveParty:linkToElementModel(registerVal2, "name", true, __FUNC_1057_)
	local function __FUNC_1129_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.Title:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.PromotePlayer:linkToElementModel(registerVal2, "name", true, __FUNC_1129_)
	local function __FUNC_11FD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.Title:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.BootPlayers:linkToElementModel(registerVal2, "name", true, __FUNC_11FD_)
	local registerVal11 = {}
	registerVal11.right = registerVal9
	registerVal11.down = registerVal4
	registerVal3.navigation = registerVal11
	registerVal11 = {}
	registerVal11.up = registerVal3
	registerVal11.right = registerVal9
	registerVal11.down = registerVal5
	registerVal4.navigation = registerVal11
	registerVal11 = {}
	registerVal11.up = registerVal4
	registerVal11.right = registerVal9
	registerVal11.down = registerVal6
	registerVal5.navigation = registerVal11
	registerVal11 = {}
	registerVal11.up = registerVal5
	registerVal11.right = registerVal9
	registerVal11.down = registerVal7
	registerVal6.navigation = registerVal11
	registerVal11 = {}
	registerVal11.up = registerVal6
	registerVal7.navigation = registerVal11
	registerVal11 = {}
	local registerVal12 = {}
	registerVal12 = {registerVal3, registerVal4, registerVal5, registerVal6}
	registerVal11.left = registerVal12
	registerVal11.right = registerVal10
	registerVal9.navigation = registerVal11
	registerVal11 = {}
	registerVal11.left = registerVal9
	registerVal10.navigation = registerVal11
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal3.id = "LeaveParty"
	registerVal4.id = "PromotePlayer"
	registerVal5.id = "BootPlayers"
	registerVal6.id = "PartyPrivacy"
	registerVal7.id = "MaxPartySize"
	registerVal9.id = "LookForParty"
	registerVal10.id = "StartMenuPartySearch0"
	local function __FUNC_12D1_(arg0, arg1)
		local registerVal2 = arg0.LeaveParty:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_12D1_)
	local function __FUNC_13D6_(arg0)
		arg0.LeaveParty:close()
		arg0.PromotePlayer:close()
		arg0.BootPlayers:close()
		arg0.PartyPrivacy:close()
		arg0.MaxPartySize:close()
		arg0.StartMenuPartyLeaderNotification:close()
		arg0.LookForParty:close()
		arg0.StartMenuPartySearch0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_13D6_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

