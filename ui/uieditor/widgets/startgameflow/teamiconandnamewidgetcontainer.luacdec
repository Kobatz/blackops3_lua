-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartGameFlow.TeamIconAndNameWidget")
require("ui.uieditor.widgets.StartGameFlow.TeamIconAndNameWidgetForCodCaster")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.TeamIconAndNameWidgetContainer = registerVal1
function CoD.TeamIconAndNameWidgetContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.TeamIconAndNameWidgetContainer)
	registerVal2.id = "TeamIconAndNameWidgetContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 345.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 85.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.TeamIconAndNameWidget.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 345.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 85.000000)
	registerVal3.FactionName:setText(Engine.Localize("SPEC OPS"))
	registerVal2:addElement(registerVal3)
	registerVal2.TeamIconAndNameWidget = registerVal3
	local registerVal4 = CoD.TeamIconAndNameWidgetForCodCaster.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, -54.500000, 387.500000)
	registerVal4:setTopBottom(true, false, 0.000000, 85.000000)
	registerVal4.FactionName:setText(Engine.Localize("WWWWWWWWWWWW"))
	registerVal2:addElement(registerVal4)
	registerVal2.TeamIconAndNameWidgetForCodCaster = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_8D1_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.TeamIconAndNameWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.TeamIconAndNameWidgetForCodCaster:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_8D1_
	local function __FUNC_A51_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.StreakEdit = __FUNC_A51_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_AB2_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.TeamIconAndNameWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.TeamIconAndNameWidgetForCodCaster:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_AB2_
	registerVal5.CodCaster = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "CodCaster"
	local function __FUNC_C31_(arg0, arg2, arg3)
		return IsCodCaster(arg1)
	end

	registerVal8.condition = __FUNC_C31_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "factions.isCoDCaster")
	local function __FUNC_C81_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "factions.isCoDCaster"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_C81_)
	local function __FUNC_DAA_(arg0)
		arg0.TeamIconAndNameWidget:close()
		arg0.TeamIconAndNameWidgetForCodCaster:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_DAA_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

