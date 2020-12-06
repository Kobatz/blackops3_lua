-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Social.Social_NoFriends")
require("ui.uieditor.menus.Social.Social_PlayerDetailsPopup")
require("ui.uieditor.widgets.Social.Social_PlayersListButton")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.Social.Social_InfoPane")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Social_Friends = registerVal1
function CoD.Social_Friends.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Social_Friends)
	registerVal2.id = "Social_Friends"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1150.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 525.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -1.000000, 403.000000)
	registerVal3:setTopBottom(true, false, -26.000000, 556.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.300000)
	registerVal2:addElement(registerVal3)
	registerVal2.BlackTint = registerVal3
	local registerVal4 = CoD.Social_NoFriends.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 14.000000, 1126.000000)
	registerVal4:setTopBottom(true, false, 6.000000, 456.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.SocialNoFriends = registerVal4
	local registerVal5 = LUI.UIList.new(arg0, arg1, 5.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal5:makeFocusable()
	registerVal5:setLeftRight(true, false, 14.000000, 388.000000)
	registerVal5:setTopBottom(true, false, 6.000000, 456.000000)
	registerVal5:setWidgetType(CoD.Social_PlayersListButton)
	registerVal5:setVerticalCount(7.000000)
	registerVal5:setSpacing(5.000000)
	registerVal5:setVerticalCounter(CoD.verticalCounter)
	registerVal5:setDataSource("SocialPlayersList")
	local registerVal9 = Engine.GetGlobalModel()
	local registerVal8 = Engine.GetModel(registerVal9, "lobbyRoot.lobbyLockedIn")
	local function __FUNC_10B8_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "lobbyRoot.lobbyLockedIn"
		CoD.Menu.UpdateButtonShownState(registerVal5, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_10B8_)
	local function __FUNC_1285_(arg2, arg3)
		CacheSocialOnlinePlayersListModels(registerVal2, arg2, arg1)
		CopyModelFindElement(arg0, arg2, "playerInfo")
		PlaySoundAlias("uin_paint_decal_nav")
		return nil
	end

	registerVal5:registerEventHandler("list_item_gain_focus", __FUNC_1285_)
	local function __FUNC_137F_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal5:registerEventHandler("gain_focus", __FUNC_137F_)
	local function __FUNC_1575_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_1575_)
	local function __FUNC_1646_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsLobbyLocked()
		if not registerVal4 then
			LobbyQuickJoin(registerVal2, arg0, arg2, Enum.JoinType.JOIN_TYPE_FRIEND, true)
			return true
		end
	end

	local function __FUNC_1725_(arg0, arg1, arg2)
		local registerVal3 = IsLobbyLocked()
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "J", __FUNC_1646_, __FUNC_1725_, false)
	local function __FUNC_1847_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSocialPlayersListEmpty(arg2)
		if registerVal4 then
			SetSelectedFriendXUID(registerVal2, arg0, arg2)
			OpenOverlay(registerVal2, "Social_PlayerDetailsPopup", arg2, "", "")
			return true
		end
	end

	local function __FUNC_193F_(arg0, arg1, arg2)
		local registerVal3 = IsSocialPlayersListEmpty(arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1847_, __FUNC_193F_, false)
	registerVal2:addElement(registerVal5)
	registerVal2.onlineList = registerVal5
	local registerVal6 = CoD.Social_InfoPane.new(arg0, arg1)
	registerVal6:setLeftRight(false, true, -730.000000, 11.000000)
	registerVal6:setTopBottom(true, false, 6.000000, 498.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.playerInfo = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 15.000000, 1165.000000)
	registerVal7:setTopBottom(true, false, 205.000000, 229.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setText(Engine.Localize("MENU_THERE_ARE_NO_FRIENDS"))
	registerVal7:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.noFriends = registerVal7
	local function __FUNC_1A78_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal5, nil, false, __FUNC_1A78_)
	local function __FUNC_1ACA_(arg0)
		registerVal6.presence:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal5, nil, false, __FUNC_1ACA_)
	registerVal8 = {}
	registerVal8.right = registerVal6
	registerVal5.navigation = registerVal8
	registerVal8 = {}
	registerVal8.left = registerVal5
	registerVal6.navigation = registerVal8
	registerVal8 = {}
	registerVal9 = {}
	local function __FUNC_1B38_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.SocialNoFriends:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.onlineList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.playerInfo:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.noFriends:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_1B38_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_1D4B_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BlackTint:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.SocialNoFriends:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.onlineList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.playerInfo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.noFriends:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_1D4B_
	registerVal8.NoFriends = registerVal9
	registerVal2.clipsPerState = registerVal8
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "NoFriends"
	local function __FUNC_1FB7_(arg0, arg2, arg3)
		local registerVal3 = HasFriends(arg1)
		return (not registerVal3)
	end

	registerVal11.condition = __FUNC_1FB7_
	registerVal10 = {registerVal11}
	registerVal2:mergeStateConditions(registerVal10)
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal5.id = "onlineList"
	registerVal6.id = "playerInfo"
	local function __FUNC_2008_(arg0, arg1)
		local registerVal2 = arg0.playerInfo:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_2008_)
	local function __FUNC_210E_(arg0)
		arg0.SocialNoFriends:close()
		arg0.onlineList:close()
		arg0.playerInfo:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_210E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

