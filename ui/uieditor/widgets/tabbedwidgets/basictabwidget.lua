-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1BF_(arg0, arg1)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.basicTabWidget = registerVal2
local function __FUNC_1E8_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.basicTabWidget)
	registerVal2.id = "basicTabWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 180.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 40.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 40.000000)
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_84D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "tabName", true, __FUNC_84D_)
	registerVal2:addElement(registerVal3)
	registerVal2.text = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 10.500000, 29.500000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_906_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "tabIcon", true, __FUNC_906_)
	registerVal2:addElement(registerVal4)
	registerVal2.buttonText = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_9BE_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.buttonText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_9BE_
	local function __FUNC_B49_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.text:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal6.Active = __FUNC_B49_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_C7D_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.text:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.buttonText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_C7D_
	registerVal5.NavButton = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "NavButton"
	local function __FUNC_DD5_(arg0, arg2, arg3)
		return ShouldDisplayButton(arg2, arg1)
	end

	registerVal8.condition = __FUNC_DD5_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_E31_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "tabIcon"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "tabIcon", true, __FUNC_E31_)
	local function __FUNC_F4D_(arg0)
		arg0.text:close()
		arg0.buttonText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_F4D_)
	if __FUNC_1BF_ then
		__FUNC_1BF_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.basicTabWidget.new = __FUNC_1E8_
