-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.EndGameFlow.OutcomeFactionIconItem")
require("ui.uieditor.widgets.EndGameFlow.OutcomeFactionIconItemForCodCaster")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.OutcomeFactionIcon = registerVal1
function CoD.OutcomeFactionIcon.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.OutcomeFactionIcon)
	registerVal2.id = "OutcomeFactionIcon"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 390.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 180.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.OutcomeFactionIconItem.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 152.460000)
	registerVal3:setTopBottom(true, false, 5.000000, 144.560000)
	registerVal2:addElement(registerVal3)
	registerVal2.OutcomeFactionIconItem = registerVal3
	local registerVal4 = CoD.OutcomeFactionIconItemForCodCaster.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, -69.540000, 152.460000)
	registerVal4:setTopBottom(true, false, 5.000000, 145.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.OutcomeFactionIconItemForCodCaster = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_86F_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.OutcomeFactionIconItem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.OutcomeFactionIconItemForCodCaster:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_86F_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_9EF_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.OutcomeFactionIconItem:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.OutcomeFactionIconItemForCodCaster:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_9EF_
	registerVal5.CodCaster = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "CodCaster"
	local function __FUNC_B6F_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_TEAM_SPECTATOR)
		return registerVal3
	end

	registerVal8.condition = __FUNC_B6F_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_TEAM_SPECTATOR))
	local function __FUNC_C3F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_TEAM_SPECTATOR)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_C3F_)
	local function __FUNC_DC9_(arg0)
		arg0.OutcomeFactionIconItem:close()
		arg0.OutcomeFactionIconItemForCodCaster:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_DC9_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

