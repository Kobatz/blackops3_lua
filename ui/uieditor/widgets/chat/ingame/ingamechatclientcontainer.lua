-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Chat.inGame.IngameChatClient")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.IngameChatClientContainer = registerVal1
function CoD.IngameChatClientContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.IngameChatClientContainer)
	registerVal2.id = "IngameChatClientContainer"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 360.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.IngameChatClient.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 360.000000)
	registerVal3:setTopBottom(true, false, 182.500000, 432.500000)
	registerVal2:addElement(registerVal3)
	registerVal2.ChatClient = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_83B_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ChatClient:setLeftRight(true, false, 0.000000, 360.000000)
		registerVal2.ChatClient:setTopBottom(true, false, 182.500000, 432.500000)
		registerVal2.ChatClient:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_83B_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_9C5_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ChatClient:setLeftRight(true, false, 0.000000, 360.000000)
		registerVal2.ChatClient:setTopBottom(true, false, 182.500000, 432.500000)
		registerVal2.ChatClient:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_9C5_
	registerVal4.Hidden = registerVal5
	registerVal5 = {}
	local function __FUNC_B51_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ChatClient:setLeftRight(true, false, 0.000000, 360.000000)
		registerVal2.ChatClient:setTopBottom(true, false, 470.000000, 720.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_B51_
	registerVal4.ScoresUp = registerVal5
	registerVal5 = {}
	local function __FUNC_CAF_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ChatClient:setLeftRight(true, false, 0.000000, 360.000000)
		registerVal2.ChatClient:setTopBottom(true, false, 470.000000, 720.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_CAF_
	registerVal4.ScoresForceUp = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Hidden"
	local function __FUNC_E0B_(arg0, arg2, arg3)
		local registerVal3 = ChatClientShow(arg1)
		return (not registerVal3)
	end

	registerVal7.condition = __FUNC_E0B_
	local registerVal8 = {}
	registerVal8.stateName = "ScoresUp"
	local function __FUNC_E60_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
		return registerVal3
	end

	registerVal8.condition = __FUNC_E60_
	local registerVal9 = {}
	registerVal9.stateName = "ScoresForceUp"
	local function __FUNC_F34_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "forceScoreboard", 1.000000)
	end

	registerVal9.condition = __FUNC_F34_
	registerVal6 = {registerVal7, registerVal8, registerVal9}
	registerVal2:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN))
	local function __FUNC_FB3_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_FB3_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "forceScoreboard")
	local function __FUNC_113E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "forceScoreboard"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_113E_)
	local function __FUNC_1261_(arg0)
		arg0.ChatClient:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1261_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

