-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Border")
local function __FUNC_205_(arg0, arg1, arg2)
	if not CoD.isPC then
		return 
	end
	local function __FUNC_2E0_(arg0, arg1)
		local registerVal2, registerVal3, registerVal4, registerVal5 = arg0:getLocalRect()
		local registerVal10 = arg0.entryTimestampText:getTextWidth()
		arg0.entryTimestampText:setLeftRight(true, false, registerVal2, (registerVal2 + registerVal10))
		registerVal10 = arg0.entryChannelText:getTextWidth()
		arg0.entryChannelText:setLeftRight(true, false, ((registerVal2 + registerVal10) + 2.000000), (((registerVal2 + registerVal10) + 2.000000) + registerVal10))
		registerVal10 = arg0.entryNameText:getTextWidth()
		arg0.entryNameText:setLeftRight(true, false, ((((registerVal2 + registerVal10) + 2.000000) + registerVal10) + 2.000000), (((((registerVal2 + registerVal10) + 2.000000) + registerVal10) + 2.000000) + registerVal10))
		arg0.entryBodyText:setLeftRight(true, false, ((((((registerVal2 + registerVal10) + 2.000000) + registerVal10) + 2.000000) + registerVal10) + 2.000000), registerVal4)
		registerVal10, registerVal11 = arg0.entryBodyText:getTextWidthAndHeight()
		if 0.000000 < registerVal10 then
			arg0:setTopBottom(true, false, 0.000000, registerVal11)
		else
			arg0:setTopBottom(true, false, 0.000000, 0.000000)
		end
		return arg0.m_eventHandlers.update_state(arg0, arg1)
	end

	arg0:registerEventHandler("update_state", __FUNC_2E0_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.ChatClientChatEntry = registerVal2
local function __FUNC_561_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChatClientChatEntry)
	registerVal2.id = "ChatClientChatEntry"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 342.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 18.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.700000)
	registerVal2:addElement(registerVal3)
	registerVal2.Background = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 161.000000, 410.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 18.000000)
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.entryBodyText = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 86.000000, 161.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 18.000000)
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1045_(arg0, arg1)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal5, "setText", __FUNC_1045_)
	registerVal2:addElement(registerVal5)
	registerVal2.entryNameText = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 48.000000, 86.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 18.000000)
	registerVal6:setTTF("fonts/default.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.entryChannelText = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 0.000000, 48.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 18.000000)
	registerVal7:setTTF("fonts/default.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.entryTimestampText = registerVal7
	local registerVal8 = CoD.Border.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal8:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
	registerVal8:setAlpha(0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.Border = registerVal8
	local function __FUNC_1070_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(registerVal1)
		end
	end

	registerVal2.entryBodyText:linkToElementModel(registerVal2, "text", true, __FUNC_1070_)
	local function __FUNC_1104_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setRGB(registerVal1)
		end
	end

	registerVal2.entryNameText:linkToElementModel(registerVal2, "chColor", true, __FUNC_1104_)
	local function __FUNC_1197_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(registerVal1)
		end
	end

	registerVal2.entryNameText:linkToElementModel(registerVal2, "fullname", true, __FUNC_1197_)
	local function __FUNC_1228_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setRGB(registerVal1)
		end
	end

	registerVal2.entryChannelText:linkToElementModel(registerVal2, "chColor", true, __FUNC_1228_)
	local function __FUNC_12BB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(registerVal1)
		end
	end

	registerVal2.entryChannelText:linkToElementModel(registerVal2, "chText", true, __FUNC_12BB_)
	local function __FUNC_134C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(registerVal1)
		end
	end

	registerVal2.entryTimestampText:linkToElementModel(registerVal2, "timestamp", true, __FUNC_134C_)
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_13E0_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Background:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal8:completeAnimation()
		registerVal2.Border:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_13E0_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_153B_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Background:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal10.DefaultClip = __FUNC_153B_
	registerVal9.InGame = registerVal10
	registerVal2.clipsPerState = registerVal9
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "InGame"
	local function __FUNC_163A_(arg0, arg1, arg2)
		return IsInGame()
	end

	registerVal12.condition = __FUNC_163A_
	registerVal11 = {registerVal12}
	registerVal2:mergeStateConditions(registerVal11)
	local function __FUNC_1682_(arg0)
		arg0.Border:close()
		arg0.entryBodyText:close()
		arg0.entryNameText:close()
		arg0.entryChannelText:close()
		arg0.entryTimestampText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1682_)
	if __FUNC_205_ then
		__FUNC_205_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ChatClientChatEntry.new = __FUNC_561_
