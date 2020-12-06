-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Chat.ChatClient")
local function __FUNC_20E_(arg0, arg1)
	arg0:setForceMouseEventDispatch(true)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.ChatClientContainer = registerVal2
local function __FUNC_268_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChatClientContainer)
	registerVal2.id = "ChatClientContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 426.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 400.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.ChatClient.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 426.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 400.000000)
	local function __FUNC_704_(arg0, arg2)
		ChatClientResetState(registerVal2, arg0, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("menu_opened", __FUNC_704_)
	registerVal2:addElement(registerVal3)
	registerVal2.ChatClient = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_7A3_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_7A3_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_802_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ChatClient:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_802_
	registerVal4.Hiden = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Hiden"
	local function __FUNC_902_(arg0, arg2, arg3)
		local registerVal3 = ChatClientShow(arg1)
		return (not registerVal3)
	end

	registerVal7.condition = __FUNC_902_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	registerVal3.id = "ChatClient"
	local function __FUNC_958_(arg0, arg1)
		local registerVal2 = arg0.ChatClient:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_958_)
	local function __FUNC_A5E_(arg0)
		arg0.ChatClient:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A5E_)
	if __FUNC_20E_ then
		__FUNC_20E_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ChatClientContainer.new = __FUNC_268_
