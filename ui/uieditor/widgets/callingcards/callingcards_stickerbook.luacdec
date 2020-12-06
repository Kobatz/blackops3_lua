-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CallingCards_CardWidget")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.Challenges.Challenges_CallingCardProfiler")
local function __FUNC_2BF_(arg0, arg1)
	local function __FUNC_330_(arg0, arg1)
		arg0.CallingCardProfiler.TierList:updateDataSource()
	end

	arg0:registerEventHandler("update_tier_list", __FUNC_330_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.CallingCards_Stickerbook = registerVal2
local function __FUNC_3C5_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCards_Stickerbook)
	registerVal2.id = "CallingCards_Stickerbook"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1150.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 520.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIList.new(arg0, arg1, 10.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 10.000000, 750.000000)
	registerVal3:setTopBottom(true, false, 16.000000, 496.000000)
	registerVal3:setDataSource("CallingCardsSorted")
	registerVal3:setWidgetType(CoD.CallingCards_CardWidget)
	registerVal3:setHorizontalCount(3.000000)
	registerVal3:setVerticalCount(7.000000)
	registerVal3:setSpacing(10.000000)
	registerVal3:setVerticalCounter(CoD.verticalCounter)
	local function __FUNC_B13_(arg2, arg3)
		local registerVal3 = IsElementInState(arg2, "New")
		if registerVal3 then
			CallingCards_SetOld(arg2, arg1)
			UpdateSelfElementState(arg0, arg2, arg1)
		end
		return nil
	end

	registerVal3:registerEventHandler("list_item_gain_focus", __FUNC_B13_)
	local function __FUNC_BE4_(arg2, arg3)
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

	registerVal3:registerEventHandler("gain_focus", __FUNC_BE4_)
	local function __FUNC_D77_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_D77_)
	local function __FUNC_E46_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "Locked")
		if not registerVal4 then
			CallingCards_SetPlayerBackground(arg1, arg0, arg2)
			return true
		end
	end

	local function __FUNC_EF8_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsElementInState(arg0, "Locked")
		if not registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_E46_, __FUNC_EF8_, false)
	registerVal2:addElement(registerVal3)
	registerVal2.CallingCardGrid = registerVal3
	local registerVal4 = CoD.Challenges_CallingCardProfiler.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -379.000000, -29.000000)
	registerVal4:setTopBottom(true, true, 14.000000, -22.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.CallingCardProfiler = registerVal4
	local function __FUNC_1040_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal3, nil, false, __FUNC_1040_)
	registerVal3.id = "CallingCardGrid"
	local function __FUNC_1092_(arg0, arg1)
		local registerVal2 = arg0.CallingCardGrid:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_1092_)
	local function __FUNC_119B_(arg0)
		arg0.CallingCardGrid:close()
		arg0.CallingCardProfiler:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_119B_)
	if __FUNC_2BF_ then
		__FUNC_2BF_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.CallingCards_Stickerbook.new = __FUNC_3C5_
