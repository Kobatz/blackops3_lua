-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Friends.FriendsListRow_Internal")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FriendsListRow = registerVal1
function CoD.FriendsListRow.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FriendsListRow)
	registerVal2.id = "FriendsListRow"
	registerVal2.soundSet = "FriendsMenu"
	registerVal2:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 64.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FriendsListRow_Internal.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_885_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_885_)
	local function __FUNC_8D6_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal3:registerEventHandler("gain_focus", __FUNC_8D6_)
	local function __FUNC_B35_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_B35_)
	local function __FUNC_C06_(arg0, arg1, arg2, arg3)
		LobbyJoinFromFriendsMenu(registerVal2, arg0, arg2)
		return true
	end

	local function __FUNC_C6E_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_JOIN_IN_PROGRESS")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "J", __FUNC_C06_, __FUNC_C6E_, false)
	local function __FUNC_D75_(arg0, arg1, arg2, arg3)
		LobbyInviteFriend(registerVal2, arg0, arg2)
		return true
	end

	local function __FUNC_DD7_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "MENU_INVITE_GAME")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "I", __FUNC_D75_, __FUNC_DD7_, false)
	local function __FUNC_EDA_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_F0C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_EDA_, __FUNC_F0C_, false)
	registerVal2:addElement(registerVal3)
	registerVal2.internal = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_100A_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal3.highlight:completeAnimation()
		registerVal2.internal:setAlpha(1.000000)
		registerVal2.internal.highlight:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_100A_
	local function __FUNC_115B_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_129E_(arg0, arg1)
			local function __FUNC_148B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
					arg0.highlight:beginAnimation("subkeyframe", 509.000000, false, false, CoD.TweenType.Linear)
				end
				arg0.highlight:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_148B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 490.000000, false, false, CoD.TweenType.Linear)
			arg0.highlight:beginAnimation("subkeyframe", 490.000000, false, false, CoD.TweenType.Linear)
			arg0.highlight:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_148B_)
		end

		registerVal3:completeAnimation()
		registerVal3.highlight:completeAnimation()
		registerVal2.internal.highlight:setAlpha(0.000000)
		__FUNC_129E_(registerVal3, {})
		registerVal2.nextClip = "Focus"
	end

	registerVal5.Focus = __FUNC_115B_
	local function __FUNC_16B1_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.hideJoinableIcon = __FUNC_16B1_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_1712_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_1712_
	local function __FUNC_1772_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.hide = __FUNC_1772_
	registerVal4.hideJoinableIcon = registerVal5
	registerVal2.clipsPerState = registerVal4
	registerVal3.id = "internal"
	local function __FUNC_17D2_(arg0, arg1)
		local registerVal2 = arg0.internal:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_17D2_)
	local function __FUNC_18D4_(arg0)
		arg0.internal:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_18D4_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

