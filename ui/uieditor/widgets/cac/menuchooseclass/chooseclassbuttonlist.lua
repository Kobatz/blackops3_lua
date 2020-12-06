-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.menus.CAC.CustomClass")
require("ui.uieditor.widgets.CAC.List1ButtonChooseClass")
local function __FUNC_25A_(arg0, arg1, arg2)
	arg0:setForceMouseEventDispatch(true)
end

local function __FUNC_2B4_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_25A_(arg0, arg1, arg2)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.chooseClassButtonList = registerVal3
local function __FUNC_327_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.chooseClassButtonList)
	registerVal2.id = "chooseClassButtonList"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 338.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 0.000000, 280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 338.000000)
	registerVal3:setWidgetType(CoD.List1ButtonChooseClass)
	registerVal3:setVerticalCount(10.000000)
	registerVal3:setDataSource("ChooseClassList")
	local function __FUNC_91F_(arg0, arg2)
		SetCustomParentClassNum(registerVal2, arg0, arg1)
		ResetCustomClassStartingFocus(registerVal2, arg0, arg1, false)
		return nil
	end

	registerVal3:registerEventHandler("list_item_gain_focus", __FUNC_91F_)
	local function __FUNC_9C4_(arg2, arg3)
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

	registerVal3:registerEventHandler("gain_focus", __FUNC_9C4_)
	local function __FUNC_B57_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_B57_)
	local function __FUNC_C26_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsMenuInState(arg1, "ExtraSlots")
		if not registerVal4 then
			SetCustomParentClassNum(registerVal2, arg0, arg2)
			NavigateToMenu(registerVal2, "CustomClass", true, arg2)
			return true
		end
	end

	local function __FUNC_D15_(arg0, arg1, arg2)
		local registerVal3 = IsMenuInState(arg1, "ExtraSlots")
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_C26_, __FUNC_D15_, false)
	registerVal2:addElement(registerVal3)
	registerVal2.buttonList = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_E5D_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_E5D_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	registerVal3.id = "buttonList"
	local function __FUNC_EBE_(arg0, arg1)
		local registerVal2 = arg0.buttonList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_EBE_)
	local function __FUNC_FC2_(arg0)
		arg0.buttonList:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_FC2_)
	if __FUNC_2B4_ then
		__FUNC_2B4_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.chooseClassButtonList.new = __FUNC_327_
