-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Chat.ChatClientChatEntry")
local function __FUNC_233_()
	local registerVal0 = IsInGame()
	if registerVal0 then
		return Dvar.chatTimeInGame:get()
	else
		return Dvar.chatTimeLobby:get()
	end
end

local function __FUNC_304_(arg0)
	arg0:completeAnimation()
	arg0:playClip("FadeOut")
end

local function __FUNC_382_(arg0, arg1, arg2)
	local function __FUNC_3FC_(arg0, arg2)
		arg0.ChatClientChatEntry:setAlpha(0.000000)
		local registerVal2 = __FUNC_233_()
		if registerVal2 ~= 0.000000 then
		end
		local registerVal4 = arg0:getModel(arg1, "timeMs")
		local registerVal5 = Engine.GetModelValue(registerVal4)
		local registerVal6 = Engine.milliseconds()
		local registerVal7 = __FUNC_233_()
		if 0.000000 < ((registerVal5 + registerVal7) - registerVal6) or true then
			local registerVal11 = {}
			registerVal11.name = "update_state"
			registerVal11.menu = arg0.menu
			arg0.ChatClientChatEntry:processEvent(registerVal11)
			local registerVal9, registerVal10, registerVal11, registerVal12 = arg0.ChatClientChatEntry:getLocalRect()
			arg0:setTopBottom(true, false, 0.000000, registerVal12)
			arg0.ChatClientChatEntry:setAlpha(1.000000)
			if not true then
				arg0:registerEventHandler("hide_chat_entry", __FUNC_304_)
				local registerVal13 = LUI.UITimer.new(((registerVal5 + registerVal7) - registerVal6), "hide_chat_entry", true, arg0)
				arg0.timer = registerVal13
				arg0:addElement(arg0.timer)
			end
		end
	end

	arg0:registerEventHandler("update_state", __FUNC_3FC_)
end

local registerVal4 = InheritFrom(LUI.UIElement)
CoD.ChatClientChatEntryContainerNew = registerVal4
local function __FUNC_715_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChatClientChatEntryContainerNew)
	registerVal2.id = "ChatClientChatEntryContainerNew"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 342.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 18.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.ChatClientChatEntry.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 342.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 18.000000)
	local function __FUNC_ADA_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_ADA_)
	registerVal2:addElement(registerVal3)
	registerVal2.ChatClientChatEntry = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_B2A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_B2A_
	local function __FUNC_B8A_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_C74_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.ChatClientChatEntry:setAlpha(1.000000)
		__FUNC_C74_(registerVal3, {})
	end

	registerVal5.FadeOut = __FUNC_B8A_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_E29_(arg0)
		arg0.ChatClientChatEntry:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_E29_)
	if __FUNC_382_ then
		__FUNC_382_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ChatClientChatEntryContainerNew.new = __FUNC_715_
