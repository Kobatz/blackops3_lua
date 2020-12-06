-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.ButtonGenericWithMouseFunc")
require("ui.uieditor.widgets.Chat.ChatClientInputTextBox")
require("ui.uieditor.widgets.Chat.ChatClientChannelSelectorButton")
require("ui.uieditor.widgets.Chat.ChatClientSettingContainer")
require("ui.uieditor.widgets.Chat.ChatClientChannelSelectorContainer")
local function __FUNC_342_(arg0, arg1, arg2)
	ChatClientInputTextFieldUpdatePrompt(arg0, arg0.InputText, arg1)
	local function __FUNC_6CB_(arg0, arg1)
		local registerVal2 = ChatClientIsAvailable(arg0, arg0, arg1.controller)
		if not registerVal2 then
			ChatClientResetSubMenus(arg0, arg0, arg1.controller)
			return true
		end
		if arg0.modelToToggle ~= nil then
			if arg0.modelToToggle ~= "menuInputChannelShow" then
				SetSelfModelValue(arg0, arg0, arg1.controller, "menuInputChannelShow", 0.000000)
			else
				if arg0.modelToToggle ~= "menuSettingsShow" then
					SetSelfModelValue(arg0, arg0, arg1.controller, "menuSettingsShow", 0.000000)
				end
			end
			ToggleSelfModelValueNumber(arg0, arg0, arg1.controller, arg0.modelToToggle)
			return true
		end
	end

	arg0.ChatClientChannelSelectorButton:setHandleMouse(true)
	arg0.ChatClientChannelSelectorButton.modelToToggle = "menuInputChannelShow"
	arg0.ChatClientChannelSelectorButton:registerEventHandler("leftmouseup", __FUNC_6CB_)
	arg0.SettingsButton:setHandleMouse(true)
	arg0.SettingsButton.modelToToggle = "menuSettingsShow"
	arg0.SettingsButton:registerEventHandler("leftmouseup", __FUNC_6CB_)
	local function __FUNC_8DC_(arg0, arg1)
		local registerVal2 = IsSelfModelValueNilOrZero(arg0, arg1.controller, arg0.modelToToggle)
		if not registerVal2 then
			SetSelfModelValue(arg0, arg0, arg1.controller, arg0.modelToToggle, 0.000000)
		end
	end

	local function __FUNC_9CE_(arg0, arg1)
	end

	arg0.ChatClientChannelSelectorContainer:setHandleMouse(true)
	arg0.ChatClientChannelSelectorContainer.modelToToggle = "menuInputChannelShow"
	arg0.ChatClientChannelSelectorContainer:registerEventHandler("leftclick_outside", __FUNC_8DC_)
	arg0.ChatClientChannelSelectorContainer:registerEventHandler("leftmouseup", __FUNC_9CE_)
	arg0.ChatClientSettingContainer:setHandleMouse(true)
	arg0.ChatClientSettingContainer.modelToToggle = "menuSettingsShow"
	arg0.ChatClientSettingContainer:registerEventHandler("leftclick_outside", __FUNC_8DC_)
	arg0.ChatClientSettingContainer:registerEventHandler("leftmouseup", __FUNC_9CE_)
	local function __FUNC_9F8_(arg0, arg1)
		ChatClientInputStart(arg0, arg0, arg1.controller, "")
	end

	arg0.InputText:setHandleMouse(true)
	arg0.InputText:registerEventHandler("leftmouseup", __FUNC_9F8_)
	arg0:setForceMouseEventDispatch(true)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.ChatClientInput = registerVal2
local function __FUNC_A80_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChatClientInput)
	registerVal2.id = "ChatClientInput"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 566.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 164.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.ButtonGenericWithMouseFunc.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -111.000000, -79.000000)
	registerVal3:setTopBottom(true, false, 128.000000, 160.000000)
	registerVal3:setAlpha(0.900000)
	registerVal3.ButtonIcon:setImage(RegisterImage("uie_chatclient_settings"))
	local function __FUNC_1429_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:subscribeToGlobalModel(arg1, "ChatClientGlobal", nil, __FUNC_1429_)
	registerVal2:addElement(registerVal3)
	registerVal2.SettingsButton = registerVal3
	local registerVal4 = CoD.ChatClientInputTextBox.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 110.000000, 456.000000)
	registerVal4:setTopBottom(true, false, 128.000000, 160.000000)
	local function __FUNC_147A_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:subscribeToGlobalModel(arg1, "ChatClientGlobal", nil, __FUNC_147A_)
	local function __FUNC_14CA_(arg0)
		ChatClientInputTextFieldUpdatePrompt(registerVal2, registerVal4, arg1)
	end

	registerVal4:subscribeToGlobalModel(arg1, "ChatClientGlobal", "update", __FUNC_14CA_)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Chatting"
	local function __FUNC_153A_(arg0, arg2, arg3)
		return ChatClientIsChatting(arg1)
	end

	registerVal8.condition = __FUNC_153A_
	local registerVal9 = {}
	registerVal9.stateName = "Disabled"
	local function __FUNC_1592_(arg0, arg2, arg3)
		local registerVal3 = ChatClientIsAvailable(registerVal2, arg2, arg1)
		return (not registerVal3)
	end

	registerVal9.condition = __FUNC_1592_
	registerVal7 = {registerVal8, registerVal9}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "ChatClientGlobal.update")
	local function __FUNC_15F7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "ChatClientGlobal.update"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_15F7_)
	registerVal2:addElement(registerVal4)
	registerVal2.InputText = registerVal4
	local registerVal5 = CoD.ChatClientChannelSelectorButton.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 78.000000, 110.000000)
	registerVal5:setTopBottom(true, false, 128.000000, 160.000000)
	registerVal5:setAlpha(0.900000)
	local function __FUNC_1721_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:subscribeToGlobalModel(arg1, "ChatClientGlobal", nil, __FUNC_1721_)
	registerVal2:addElement(registerVal5)
	registerVal2.ChatClientChannelSelectorButton = registerVal5
	local registerVal6 = CoD.ChatClientSettingContainer.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 377.000000, 487.000000)
	registerVal6:setTopBottom(true, false, 3.000000, 125.000000)
	local function __FUNC_1772_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:subscribeToGlobalModel(arg1, "ChatClientGlobal", nil, __FUNC_1772_)
	registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Hide"
	local function __FUNC_17C2_(arg0, arg2, arg3)
		return IsSelfModelValueNilOrZero(arg2, arg1, "menuSettingsShow")
	end

	registerVal10.condition = __FUNC_17C2_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	local function __FUNC_1841_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "menuSettingsShow"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:linkToElementModel(registerVal6, "menuSettingsShow", true, __FUNC_1841_)
	registerVal2:addElement(registerVal6)
	registerVal2.ChatClientSettingContainer = registerVal6
	registerVal7 = CoD.ChatClientChannelSelectorContainer.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 78.000000, 188.000000)
	registerVal7:setTopBottom(true, false, 50.000000, 125.000000)
	local function __FUNC_1966_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:subscribeToGlobalModel(arg1, "ChatClientGlobal", nil, __FUNC_1966_)
	registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Hide"
	local function __FUNC_19B6_(arg0, arg2, arg3)
		return IsSelfModelValueNilOrZero(arg2, arg1, "menuInputChannelShow")
	end

	registerVal11.condition = __FUNC_19B6_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	local function __FUNC_1A39_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "menuInputChannelShow"
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:linkToElementModel(registerVal7, "menuInputChannelShow", true, __FUNC_1A39_)
	registerVal2:addElement(registerVal7)
	registerVal2.ChatClientChannelSelectorContainer = registerVal7
	local function __FUNC_1B62_(arg0)
		arg0.SettingsButton:close()
		arg0.InputText:close()
		arg0.ChatClientChannelSelectorButton:close()
		arg0.ChatClientSettingContainer:close()
		arg0.ChatClientChannelSelectorContainer:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1B62_)
	if __FUNC_342_ then
		__FUNC_342_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ChatClientInput.new = __FUNC_A80_
