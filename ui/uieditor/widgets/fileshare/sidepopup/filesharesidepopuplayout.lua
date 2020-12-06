-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.GameSettings.GameSettings_OptionsButton")
require("ui.uieditor.widgets.Theater.Theater_HintText")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FileshareSidePopupLayout = registerVal1
function CoD.FileshareSidePopupLayout.new(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 10.000000
	local registerVal2 = LUI.UIVerticalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Top)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FileshareSidePopupLayout)
	registerVal2.id = "FileshareSidePopupLayout"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 278.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 270.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIList.new(arg0, arg1, 1.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 1.000000, 256.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 258.000000)
	registerVal3:setWidgetType(CoD.GameSettings_OptionsButton)
	registerVal3:setVerticalCount(7.000000)
	registerVal3:setSpacing(1.000000)
	local function __FUNC_A24_(arg2, arg3)
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

	registerVal3:registerEventHandler("gain_focus", __FUNC_A24_)
	local function __FUNC_BB7_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_BB7_)
	local function __FUNC_C86_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal2, arg0, arg2)
		return true
	end

	local function __FUNC_CE7_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_C86_, __FUNC_CE7_, false)
	registerVal2:addElement(registerVal3)
	registerVal2.List0 = registerVal3
	local registerVal4 = CoD.Theater_HintText.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 1.000000, 281.000000)
	registerVal4:setTopBottom(true, false, 268.000000, 292.000000)
	registerVal4.ItemHintText:setText(Engine.Localize("MENU_NEW"))
	registerVal2:addElement(registerVal4)
	registerVal2.hintText = registerVal4
	registerVal3.id = "List0"
	local function __FUNC_DE2_(arg0, arg1)
		local registerVal2 = arg0.List0:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_DE2_)
	local function __FUNC_EE1_(arg0)
		arg0.List0:close()
		arg0.hintText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_EE1_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

