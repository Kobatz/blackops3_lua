-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.List1ButtonLarge_PH")
require("ui.uieditor.widgets.Groups.GroupsNoConentDetail")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AdminTabGroupDeleteFrame = registerVal1
function CoD.AdminTabGroupDeleteFrame.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AdminTabGroupDeleteFrame)
	registerVal2.id = "AdminTabGroupDeleteFrame"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 724.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 417.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.List1ButtonLarge_PH.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 280.000000)
	registerVal3:setTopBottom(true, false, 296.820000, 328.820000)
	registerVal3.btnDisplayText:setText(Engine.Localize("GROUPS_DELETE_GROUP_CAPS"))
	registerVal3.btnDisplayTextStroke:setText(Engine.Localize("GROUPS_DELETE_GROUP_CAPS"))
	local function __FUNC_AC0_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal3:registerEventHandler("gain_focus", __FUNC_AC0_)
	local function __FUNC_C53_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_C53_)
	local function __FUNC_D22_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal2, arg0, arg2)
		return true
	end

	local function __FUNC_D83_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_D22_, __FUNC_D83_, false)
	registerVal2:addElement(registerVal3)
	registerVal2.DeleteButton = registerVal3
	local registerVal4 = CoD.GroupsNoConentDetail.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 268.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 270.000000)
	registerVal4.HeaderBkgd:setRGB(0.870000, 0.300000, 0.190000)
	registerVal4.HeaderIcon:setImage(RegisterImage("uie_t7_icon_menu_simple_customgames"))
	registerVal4.Header:setText(LocalizeToUpperString("GROUPS_DELETE_GROUP"))
	registerVal4.Desc:setText(Engine.Localize("GROUPS_DELETE_GROUP_DESC"))
	registerVal4.Glow2:setRGB(0.390000, 0.070000, 0.060000)
	registerVal2:addElement(registerVal4)
	registerVal2.GroupsNoConentDetail = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_E7E_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal4.HeaderBkgd:completeAnimation()
		registerVal4.HeaderIcon:completeAnimation()
		registerVal4.Header:completeAnimation()
		registerVal4.Desc:completeAnimation()
		registerVal4.Glow2:completeAnimation()
		registerVal2.GroupsNoConentDetail.HeaderBkgd:setRGB(0.870000, 0.300000, 0.190000)
		registerVal2.GroupsNoConentDetail.HeaderIcon:setImage(RegisterImage("uie_t7_icon_menu_simple_customgames"))
		registerVal2.GroupsNoConentDetail.Header:setText(LocalizeToUpperString("GROUPS_DELETE_GROUP"))
		registerVal2.GroupsNoConentDetail.Desc:setText(Engine.Localize("GROUPS_DELETE_GROUP_DESC"))
		registerVal2.GroupsNoConentDetail.Glow2:setRGB(0.390000, 0.070000, 0.060000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_E7E_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	registerVal3.id = "DeleteButton"
	local function __FUNC_1233_(arg0, arg1)
		local registerVal2 = arg0.DeleteButton:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_1233_)
	local function __FUNC_1338_(arg0)
		arg0.DeleteButton:close()
		arg0.GroupsNoConentDetail:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1338_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

