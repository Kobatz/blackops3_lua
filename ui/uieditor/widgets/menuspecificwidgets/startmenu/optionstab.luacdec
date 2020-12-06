-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MenuSpecificWidgets.StartMenu.SelectionListButton")
require("ui.uieditor.widgets.Border")
local function __FUNC_257_(arg0, arg1)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.OptionsTab = registerVal2
local function __FUNC_280_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.OptionsTab)
	registerVal2.id = "OptionsTab"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1090.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 560.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 23.000000, 283.000000)
	registerVal3:setTopBottom(true, false, 23.000000, 533.000000)
	registerVal3:setDataSource("OptionsTabSelectionList")
	registerVal3:setWidgetType(CoD.SelectionListButton)
	registerVal3:setVerticalCount(16.000000)
	local function __FUNC_AC5_(arg2, arg3)
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

	registerVal3:registerEventHandler("gain_focus", __FUNC_AC5_)
	local function __FUNC_C57_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_C57_)
	local function __FUNC_D26_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal2, arg0, arg2)
		return true
	end

	local function __FUNC_D87_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_D26_, __FUNC_D87_, false)
	registerVal2:addElement(registerVal3)
	registerVal2.selectionList = registerVal3
	local registerVal4 = CoD.Border.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -383.000000, -23.000000)
	registerVal4:setTopBottom(true, false, 23.000000, 130.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.todoBorder = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 721.000000, 1053.000000)
	registerVal5:setTopBottom(true, false, 35.500000, 76.500000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setText(Engine.Localize("COMING SOON: NEW OPTIONS MENU TAB WIDGET"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.todoText = registerVal5
	registerVal3.id = "selectionList"
	local function __FUNC_E82_(arg0, arg1)
		local registerVal2 = arg0.selectionList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_E82_)
	local function __FUNC_F89_(arg0)
		arg0.selectionList:close()
		arg0.todoBorder:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_F89_)
	if __FUNC_257_ then
		__FUNC_257_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.OptionsTab.new = __FUNC_280_
