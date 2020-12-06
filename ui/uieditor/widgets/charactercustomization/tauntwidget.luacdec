-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CharacterCustomization.tauntArrowWidget")
require("ui.uieditor.widgets.CharacterCustomization.tauntBindsWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.tauntWidget = registerVal1
function CoD.tauntWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.tauntWidget)
	registerVal2.id = "tauntWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 208.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 126.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.tauntArrowWidget.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -208.220000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 126.000000)
	local function __FUNC_8D1_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_8D1_)
	registerVal2:addElement(registerVal3)
	registerVal2.tauntArrowWidget = registerVal3
	local registerVal4 = CoD.tauntBindsWidget.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, -0.220000, 208.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 126.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.tauntBindsWidget = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_922_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.tauntArrowWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.tauntBindsWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_922_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_A8B_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.tauntArrowWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.tauntBindsWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_A8B_
	registerVal5.KBMouse = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "KBMouse"
	local function __FUNC_BF3_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_BF3_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	if registerVal2.m_eventHandlers.input_source_changed then
		local function __FUNC_C43_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal2:registerEventHandler("input_source_changed", __FUNC_C43_)
	else
		registerVal2:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "LastInput")
	local function __FUNC_CCB_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_CCB_)
	local function __FUNC_DE7_(arg0)
		arg0.tauntArrowWidget:close()
		arg0.tauntBindsWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_DE7_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

