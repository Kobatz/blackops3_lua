-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.NewBreadcrumbCount")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_BlackMarket_Set_CountWidget = registerVal1
function CoD.CallingCards_BlackMarket_Set_CountWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCards_BlackMarket_Set_CountWidget)
	registerVal2.id = "CallingCards_BlackMarket_Set_CountWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 51.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 100.000000)
	registerVal3:setTopBottom(true, false, 2.000000, 22.000000)
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	local function __FUNC_927_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "setCount", true, __FUNC_927_)
	local function __FUNC_9DE_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal3, "setText", __FUNC_9DE_)
	registerVal2:addElement(registerVal3)
	registerVal2.CallingCardSetCount = registerVal3
	local registerVal4 = CoD.NewBreadcrumbCount.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, 5.000000, 23.000000)
	registerVal4:setTopBottom(false, false, -9.000000, 9.000000)
	local function __FUNC_A3D_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_A3D_)
	local function __FUNC_A8E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.countText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "newCount", true, __FUNC_A8E_)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Visible"
	local function __FUNC_B65_(arg0, arg2, arg3)
		return IsSelfModelValueGreaterThan(arg2, arg1, "newCount", 0.000000)
	end

	registerVal8.condition = __FUNC_B65_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	local function __FUNC_BE8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "newCount"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:linkToElementModel(registerVal4, "newCount", true, __FUNC_BE8_)
	registerVal2:addElement(registerVal4)
	registerVal2.breadcrumbCount = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_D06_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.CallingCardSetCount:setLeftRight(true, false, 0.000000, 100.000000)
		registerVal2.CallingCardSetCount:setTopBottom(true, false, 2.000000, 22.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal6.DefaultClip = __FUNC_D06_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_E6C_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.CallingCardSetCount:setLeftRight(true, false, 0.000000, 100.000000)
		registerVal2.CallingCardSetCount:setTopBottom(true, false, 2.000000, 22.000000)
		registerVal2.CallingCardSetCount:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal6.DefaultClip = __FUNC_E6C_
	registerVal5.isBMClassified = registerVal6
	registerVal6 = {}
	local function __FUNC_1002_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.CallingCardSetCount:setLeftRight(false, false, -50.000000, 50.000000)
		registerVal2.CallingCardSetCount:setTopBottom(true, false, 70.500000, 90.500000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal6.DefaultClip = __FUNC_1002_
	registerVal5.CommonSet = registerVal6
	registerVal2.clipsPerState = registerVal5
	registerVal7 = {}
	registerVal8 = {}
	registerVal8.stateName = "isBMClassified"
	local function __FUNC_1168_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isSetBMClassified")
	end

	registerVal8.condition = __FUNC_1168_
	local registerVal9 = {}
	registerVal9.stateName = "CommonSet"
	local function __FUNC_11E5_(arg0, arg1, arg2)
		return PropertyIsTrue(registerVal2, "commonSet")
	end

	registerVal9.condition = __FUNC_11E5_
	registerVal7 = {registerVal8, registerVal9}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_124F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isSetBMClassified"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isSetBMClassified", true, __FUNC_124F_)
	local function __FUNC_1373_(arg0)
		arg0.breadcrumbCount:close()
		arg0.CallingCardSetCount:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1373_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

