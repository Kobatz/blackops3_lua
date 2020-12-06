-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.GridItemBGBGlow")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LobbyBubbleGumBuff = registerVal1
function CoD.LobbyBubbleGumBuff.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LobbyBubbleGumBuff)
	registerVal2.id = "LobbyBubbleGumBuff"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 64.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 64.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.GridItemBGBGlow.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -46.000000, 46.000000)
	registerVal3:setTopBottom(false, false, -46.000000, 46.000000)
	registerVal3:setAlpha(0.000000)
	local function __FUNC_77A_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_77A_)
	registerVal2:addElement(registerVal3)
	registerVal2.GridItemBGBGlow = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -32.000000, 32.000000)
	registerVal4:setTopBottom(false, false, -32.000000, 32.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BubbleGumBuffImage = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_7CA_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.GridItemBGBGlow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BubbleGumBuffImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_7CA_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_92F_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.GridItemBGBGlow:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BubbleGumBuffImage:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_92F_
	registerVal5.OutOfBubbleGum = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "OutOfBubbleGum"
	local function __FUNC_A98_(arg0, arg2, arg3)
		return IsOutOfLobbyBubbleGum(arg2, arg1)
	end

	registerVal8.condition = __FUNC_A98_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_AF7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_AF7_)
	local function __FUNC_C13_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "remaining"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "remaining", true, __FUNC_C13_)
	local function __FUNC_D2F_(arg0)
		arg0.GridItemBGBGlow:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_D2F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

