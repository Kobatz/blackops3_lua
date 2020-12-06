-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.CAC_varientTitlePanel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChangeCybercoreLabel = registerVal1
function CoD.ChangeCybercoreLabel.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChangeCybercoreLabel)
	registerVal2.id = "ChangeCybercoreLabel"
	registerVal2.soundSet = "CAC"
	registerVal2:setLeftRight(true, false, 0.000000, 257.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 22.000000)
	local registerVal3 = CoD.CAC_varientTitlePanel.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 2.000000, 0.000000)
	registerVal3:setTopBottom(true, true, -1.000000, -1.000000)
	registerVal3:setAlpha(0.400000)
	registerVal2:addElement(registerVal3)
	registerVal2.CACvarientTitlePanel0 = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 0.000000, 257.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 22.000000)
	registerVal4:setText(Engine.Localize("MENU_CHANGE_CYBERCORE"))
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	local function __FUNC_9B3_(arg0, arg1)
		ScaleWidgetToLabelWrapped(registerVal2, arg0, 0.000000, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_9B3_)
	registerVal2:addElement(registerVal4)
	registerVal2.chooseCybercorePrompt = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_A1C_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.chooseCybercorePrompt:setText(Engine.Localize("MENU_CHANGE_CYBERCORE"))
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_A1C_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_B78_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.chooseCybercorePrompt:setText(Engine.Localize("MENU_CHANGE_CYBERCORE"))
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_B78_
	registerVal5.Multicore = registerVal6
	registerVal6 = {}
	local function __FUNC_CD4_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.chooseCybercorePrompt:setText(Engine.Localize("PLATFORM_CHANGE_CYBERCORE"))
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_CD4_
	registerVal5.DefaultState_PC = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Multicore"
	local function __FUNC_E34_(arg0, arg2, arg3)
		return IsMulticoreActivated(arg1)
	end

	registerVal8.condition = __FUNC_E34_
	local registerVal9 = {}
	registerVal9.stateName = "DefaultState_PC"
	local function __FUNC_E8E_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		return (not registerVal3)
	end

	registerVal9.condition = __FUNC_E8E_
	registerVal7 = {registerVal8, registerVal9}
	registerVal2:mergeStateConditions(registerVal7)
	if registerVal2.m_eventHandlers.input_source_changed then
		local function __FUNC_EDF_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal2:registerEventHandler("input_source_changed", __FUNC_EDF_)
	else
		registerVal2:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "LastInput")
	local function __FUNC_F67_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_F67_)
	local function __FUNC_1083_(arg0)
		arg0.CACvarientTitlePanel0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1083_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

