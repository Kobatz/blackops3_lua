-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Chat.ChatClientChatEntryContainerNew")
require("ui.uieditor.widgets.Chat.ChatClientInput")
local function __FUNC_258_(arg0, arg1)
	arg0:setForceMouseEventDispatch(true)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.ChatClient = registerVal2
local function __FUNC_2B4_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChatClient)
	registerVal2.id = "ChatClient"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 650.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 400.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIList.new(arg0, arg1, 0.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(false, false, -171.000000, 171.000000)
	registerVal3:setTopBottom(false, true, -329.000000, -149.000000)
	registerVal3:setDataSource("ChatClientEntriesList")
	registerVal3:setWidgetType(CoD.ChatClientChatEntryContainerNew)
	registerVal3:setVerticalCount(10.000000)
	registerVal3:setSpacing(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.ChatEntriesList = registerVal3
	local registerVal4 = CoD.ChatClientInput.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -284.000000, 284.000000)
	registerVal4:setTopBottom(false, true, -272.000000, -111.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.ChatClientInput = registerVal4
	local function __FUNC_96C_(arg0, arg1, arg2, arg3)
		ChatClientInputStart(registerVal2, arg0, arg2, "All")
		return true
	end

	local function __FUNC_9E3_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_PCKEY_0, "")
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_PCKEY_0, "T", __FUNC_96C_, __FUNC_9E3_, false)
	local function __FUNC_ACF_(arg0, arg1, arg2, arg3)
		ChatClientInputStart(registerVal2, arg0, arg2, "Team")
		return true
	end

	local function __FUNC_B44_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_PCKEY_1, "")
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_PCKEY_1, "Y", __FUNC_ACF_, __FUNC_B44_, false)
	local function __FUNC_C33_(arg0, arg1, arg2, arg3)
		ChatClientInputStart(registerVal2, arg0, arg2, "Party")
		return true
	end

	local function __FUNC_CA9_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_PCKEY_2, "")
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_PCKEY_2, "P", __FUNC_C33_, __FUNC_CA9_, false)
	registerVal3.id = "ChatEntriesList"
	local function __FUNC_D97_(arg0, arg1)
		local registerVal2 = arg0.ChatEntriesList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_D97_)
	local function __FUNC_E9F_(arg0)
		arg0.ChatEntriesList:close()
		arg0.ChatClientInput:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_E9F_)
	if __FUNC_258_ then
		__FUNC_258_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ChatClient.new = __FUNC_2B4_
