-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ListSubHeader")
require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyMember")
require("ui.uieditor.widgets.Lobby.Common.FE_ListAdditonal")
require("ui.uieditor.widgets.Lobby.Common.FE_ListHeaderFull")
require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyMemberQuickJoin")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PrivateClientList = registerVal1
function CoD.PrivateClientList.new(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 0.000000
	local registerVal2 = LUI.UIVerticalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Top)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PrivateClientList)
	registerVal2.id = "PrivateClientList"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 490.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 600.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = CoD.FE_ListSubHeader.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 490.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 27.000000)
	registerVal3.StringA:setText(Engine.Localize("MENU_LOBBY_PRIVATE_HOST_COUNT"))
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "PlayerCountState"
	local function __FUNC_124A_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal7.condition = __FUNC_124A_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal2:addElement(registerVal3)
	registerVal2.FEListSubHeader1 = registerVal3
	local registerVal4 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(true, false, 0.000000, 490.000000)
	registerVal4:setTopBottom(true, false, 27.000000, 141.000000)
	registerVal4:setDataSource("LobbyPrivate")
	registerVal4:setWidgetType(CoD.LobbyMember)
	registerVal4:setVerticalCount(4.000000)
	local function __FUNC_1294_(arg1, arg2)
		CopyModelFindElement(arg0, arg1, "SelectedPlayerInfo")
		return nil
	end

	registerVal4:registerEventHandler("list_item_gain_focus", __FUNC_1294_)
	registerVal2:addElement(registerVal4)
	registerVal2.lstLobbyList = registerVal4
	local registerVal5 = CoD.FE_ListAdditonal.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 490.000000)
	registerVal5:setTopBottom(true, false, 141.000000, 168.000000)
	registerVal5.StringA:setText(Engine.Localize("PLATFORM_FEEDER_SECONDARY_CONTROLLER_PLUGIN"))
	registerVal2:addElement(registerVal5)
	registerVal2.FEListAdditonal0 = registerVal5
	registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 77.370000)
	registerVal6:setTopBottom(true, false, 168.000000, 180.500000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.spacer = registerVal6
	registerVal7 = CoD.FE_ListHeaderFull.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 0.000000, 490.000000)
	registerVal7:setTopBottom(true, false, 180.500000, 209.500000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.FEListHeaderFull0 = registerVal7
	local registerVal8 = CoD.FE_ListSubHeader.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 0.000000, 490.000000)
	registerVal8:setTopBottom(true, false, 209.500000, 236.500000)
	registerVal8:setAlpha(0.000000)
	registerVal8.StringA:setText(Engine.Localize("MENU_LOBBY_PLAYERCOUNT"))
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "PlayerCountState"
	local function __FUNC_1316_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal12.condition = __FUNC_1316_
	local registerVal13 = {}
	registerVal13.stateName = "GroupCountState"
	local function __FUNC_1361_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal13.condition = __FUNC_1361_
	registerVal11 = {registerVal12, registerVal13}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal2:addElement(registerVal8)
	registerVal2.FEListSubHeader0 = registerVal8
	local registerVal9 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal9:makeFocusable()
	registerVal9:setLeftRight(true, false, 0.000000, 490.000000)
	registerVal9:setTopBottom(true, false, 236.500000, 611.500000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setDataSource("LobbyQuickJoin")
	registerVal9:setWidgetType(CoD.LobbyMemberQuickJoin)
	registerVal9:setVerticalCount(13.000000)
	local function __FUNC_13AC_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isJoinable"
		CoD.Menu.UpdateButtonShownState(registerVal9, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal9:linkToElementModel(registerVal9, "isJoinable", true, __FUNC_13AC_)
	local function __FUNC_156C_(arg1, arg2)
		CopyModelFindElement(arg0, arg1, "SelectedPlayerInfo")
		return nil
	end

	registerVal9:registerEventHandler("list_item_gain_focus", __FUNC_156C_)
	local function __FUNC_15EE_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		return registerVal3
	end

	registerVal9:registerEventHandler("gain_focus", __FUNC_15EE_)
	local function __FUNC_1780_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("lose_focus", __FUNC_1780_)
	local function __FUNC_1852_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsPlayerJoinable(arg0)
		if registerVal4 then
			LobbyQuickJoin(registerVal2, arg0, arg2, Enum.JoinType.JOIN_TYPE_FRIEND, false)
			return true
		end
	end

	local function __FUNC_1938_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_JOIN")
		local registerVal3 = IsPlayerJoinable(arg0)
		if registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal9, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "J", __FUNC_1852_, __FUNC_1938_, false)
	registerVal2:addElement(registerVal9)
	registerVal2.friendsAndGroups = registerVal9
	local registerVal10 = {}
	registerVal10.down = registerVal9
	registerVal4.navigation = registerVal10
	registerVal10 = {}
	registerVal10.up = registerVal4
	registerVal9.navigation = registerVal10
	registerVal10 = {}
	registerVal11 = {}
	local function __FUNC_1A6B_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal7:completeAnimation()
		registerVal2.FEListHeaderFull0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FEListSubHeader0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.friendsAndGroups:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_1A6B_
	local function __FUNC_1C2D_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal11.Focus = __FUNC_1C2D_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_1C8E_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal7:completeAnimation()
		registerVal2.FEListHeaderFull0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FEListSubHeader0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.friendsAndGroups:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_1C8E_
	registerVal10.ShowQuickJoin = registerVal11
	registerVal2.clipsPerState = registerVal10
	registerVal12 = {}
	registerVal13 = {}
	registerVal13.stateName = "ShowQuickJoin"
	local function __FUNC_1E51_(arg0, arg1, arg2)
		return IsCurrentMenu(arg0, "ModeSelect")
	end

	registerVal13.condition = __FUNC_1E51_
	registerVal12 = {registerVal13}
	registerVal2:mergeStateConditions(registerVal12)
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal4.id = "lstLobbyList"
	registerVal9.id = "friendsAndGroups"
	local function __FUNC_1EBB_(arg0, arg1)
		local registerVal2 = arg0.lstLobbyList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_1EBB_)
	local function __FUNC_1FC0_(arg0)
		arg0.FEListSubHeader1:close()
		arg0.lstLobbyList:close()
		arg0.FEListAdditonal0:close()
		arg0.FEListHeaderFull0:close()
		arg0.FEListSubHeader0:close()
		arg0.friendsAndGroups:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1FC0_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

