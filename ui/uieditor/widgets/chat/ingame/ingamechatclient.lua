-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Chat.ChatClientChatEntryContainerNew")
require("ui.uieditor.widgets.Chat.ChatClientInputTextBox")
local function __FUNC_265_(arg0, arg1, arg2)
	arg0:setPriority(10000.000000)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.IngameChatClient = registerVal2
local function __FUNC_2B6_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.IngameChatClient)
	registerVal2.id = "IngameChatClient"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 360.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 250.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIList.new(arg0, arg1, 0.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(false, false, -180.000000, 162.000000)
	registerVal3:setTopBottom(false, true, -144.000000, -36.000000)
	registerVal3:setDataSource("ChatClientEntriesList")
	registerVal3:setWidgetType(CoD.ChatClientChatEntryContainerNew)
	registerVal3:setVerticalCount(6.000000)
	registerVal3:setSpacing(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.ChatEntriesList = registerVal3
	local registerVal4 = CoD.ChatClientInputTextBox.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 342.000000)
	registerVal4:setTopBottom(true, false, 218.000000, 250.000000)
	local function __FUNC_A8A_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:subscribeToGlobalModel(arg1, "ChatClientGlobal", nil, __FUNC_A8A_)
	local function __FUNC_ADA_(arg0)
		ChatClientInputTextFieldUpdatePrompt(registerVal2, registerVal4, arg1)
	end

	registerVal4:subscribeToGlobalModel(arg1, "ChatClientGlobal", "update", __FUNC_ADA_)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Chatting"
	local function __FUNC_B4A_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal8.condition = __FUNC_B4A_
	local registerVal9 = {}
	registerVal9.stateName = "ChattingIngame"
	local function __FUNC_B95_(arg0, arg1, arg2)
		return IsInGame()
	end

	registerVal9.condition = __FUNC_B95_
	local registerVal10 = {}
	registerVal10.stateName = "Disabled"
	local function __FUNC_BDE_(arg0, arg2, arg3)
		local registerVal3 = ChatClientEnabled(arg1)
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_BDE_
	registerVal7 = {registerVal8, registerVal9, registerVal10}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "ChatClientGlobal.update")
	local function __FUNC_C37_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "ChatClientGlobal.update"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_C37_)
	registerVal2:addElement(registerVal4)
	registerVal2.InputText = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_D61_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.InputText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_D61_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_E61_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.InputText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_E61_
	registerVal5.Chatting = registerVal6
	registerVal2.clipsPerState = registerVal5
	registerVal7 = {}
	registerVal8 = {}
	registerVal8.stateName = "Chatting"
	local function __FUNC_F5C_(arg0, arg2, arg3)
		return ChatClientIsChatting(arg1)
	end

	registerVal8.condition = __FUNC_F5C_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "ChatClientGlobal.update")
	local function __FUNC_FB6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "ChatClientGlobal.update"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_FB6_)
	registerVal3.id = "ChatEntriesList"
	local function __FUNC_10E1_(arg0)
		arg0.ChatEntriesList:close()
		arg0.InputText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_10E1_)
	if __FUNC_265_ then
		__FUNC_265_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.IngameChatClient.new = __FUNC_2B6_
