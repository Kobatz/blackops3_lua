-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CodCaster.codcaster_options_button_small")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Leaderboard_ResetFilter = registerVal1
function CoD.Leaderboard_ResetFilter.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Leaderboard_ResetFilter)
	registerVal2.id = "Leaderboard_ResetFilter"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 450.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 152.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 0.000000, 450.000000)
	registerVal3:setTopBottom(true, false, 48.000000, 118.000000)
	registerVal3:setWidgetType(CoD.codcaster_options_button_small)
	registerVal3:setVerticalCount(2.000000)
	registerVal3:setDataSource("LeaderboardResetOptions")
	local function __FUNC_BC9_(arg2, arg3)
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

	registerVal3:registerEventHandler("gain_focus", __FUNC_BC9_)
	local function __FUNC_D5B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_D5B_)
	local function __FUNC_E2A_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal2, arg0, arg2)
		GoBack(registerVal2, arg2)
		return true
	end

	local function __FUNC_EAB_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_E2A_, __FUNC_EAB_, false)
	registerVal2:addElement(registerVal3)
	registerVal2.ListReset = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, true, -435.000000, -67.500000)
	registerVal4:setTopBottom(true, false, 0.000000, 34.000000)
	registerVal4:setRGB(1.000000, 0.390000, 0.000000)
	registerVal4:setText(LocalizeToUpperString("MENU_LB_RESET_LEADERBOARDS"))
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal4:setLetterSpacing(1.000000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.ResetTitle = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 15.000000, 437.000000)
	registerVal5:setTopBottom(true, false, 126.450000, 152.450000)
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.ResetHint = registerVal5
	local function __FUNC_F9B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal3, "hintText", true, __FUNC_F9B_)
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_1052_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.ListReset:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ResetTitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ResetHint:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1052_
	local function __FUNC_1200_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.Focus = __FUNC_1200_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_1262_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.ListReset:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ResetTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ResetHint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1262_
	registerVal6.Hidden = registerVal7
	registerVal2.clipsPerState = registerVal6
	registerVal3.id = "ListReset"
	local function __FUNC_1410_(arg0, arg1)
		local registerVal2 = arg0.ListReset:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_1410_)
	local function __FUNC_1515_(arg0)
		arg0.ListReset:close()
		arg0.ResetHint:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1515_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

