-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Social.Social_PlayersListButton_ManageParty")
require("ui.uieditor.widgets.Social.Social_PlayersListButton_Offline")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Social_PlayersList_ManageParty = registerVal1
function CoD.Social_PlayersList_ManageParty.new(arg0, arg1)
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
	registerVal2:setClass(CoD.Social_PlayersList_ManageParty)
	registerVal2.id = "Social_PlayersList_ManageParty"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 641.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 499.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local function __FUNC_EA7_(arg0)
		local registerVal1 = Engine.GetModelValue(Engine.GetModel(arg0, "isLocal"))
		if registerVal1 ~= "0" then
		end
		return true
	end

	registerVal3 = LUI.UIList.new(arg0, arg1, 5.000000, 0.000000, __FUNC_EA7_, false, false, 0.000000, 0.000000, false, false)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 9.000000, 640.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 450.000000)
	registerVal3:setDataSource("SocialOnlinePlayersList")
	registerVal3:setWidgetType(CoD.Social_PlayersListButton_ManageParty)
	registerVal3:setVerticalCount(7.000000)
	registerVal3:setSpacing(5.000000)
	local function __FUNC_F69_(arg1, arg2)
		CopyModelFindElement(arg0, arg1, "playerInfo")
		return nil
	end

	registerVal3:registerEventHandler("list_item_gain_focus", __FUNC_F69_)
	local function __FUNC_FE2_(arg2, arg3)
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

	registerVal3:registerEventHandler("gain_focus", __FUNC_FE2_)
	local function __FUNC_1174_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_1174_)
	local function __FUNC_1246_(arg0, arg1, arg2, arg3)
		LobbyQuickJoin(registerVal2, arg0, arg2, Enum.JoinType.JOIN_TYPE_FRIEND, true)
		return true
	end

	local function __FUNC_12FE_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "")
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "J", __FUNC_1246_, __FUNC_12FE_, false)
	registerVal2:addElement(registerVal3)
	registerVal2.onlineList = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 450.000000, 465.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.divider0 = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, true, -1.000000, -1.000000)
	registerVal5:setTopBottom(true, false, 465.000000, 490.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setText(Engine.Localize("MENU_OFFLINE"))
	registerVal5:setTTF("fonts/escom.ttf")
	registerVal2:addElement(registerVal5)
	registerVal2.offlineLabel = registerVal5
	local registerVal6 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, false, 9.000000, 383.000000)
	registerVal6:setTopBottom(true, false, 490.000000, 550.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setWidgetType(CoD.Social_PlayersListButton_Offline)
	registerVal2:addElement(registerVal6)
	registerVal2.offlineList = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, false, 550.000000, 554.000000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.divider1 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, false, 554.000000, 568.000000)
	registerVal8:setAlpha(0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.divider2 = registerVal8
	local registerVal9 = {}
	registerVal9.down = registerVal6
	registerVal3.navigation = registerVal9
	registerVal9 = {}
	registerVal9.up = registerVal3
	registerVal6.navigation = registerVal9
	registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_13F0_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.onlineList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.divider0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.offlineLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.offlineList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.divider1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.divider2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_13F0_
	registerVal9.DefaultState = registerVal10
	registerVal2.clipsPerState = registerVal9
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal3.id = "onlineList"
	registerVal6.id = "offlineList"
	local function __FUNC_16AC_(arg0, arg1)
		local registerVal2 = arg0.onlineList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_16AC_)
	local function __FUNC_17B2_(arg0)
		arg0.onlineList:close()
		arg0.offlineList:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_17B2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

