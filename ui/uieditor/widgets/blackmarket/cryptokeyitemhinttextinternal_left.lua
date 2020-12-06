-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CryptokeyItemHintTextInternal_Left = registerVal1
function CoD.CryptokeyItemHintTextInternal_Left.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CryptokeyItemHintTextInternal_Left)
	registerVal2.id = "CryptokeyItemHintTextInternal_Left"
	registerVal2.soundSet = "CAC"
	registerVal2:setLeftRight(true, false, 0.000000, 432.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 26.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -10.000000, 10.000000)
	registerVal3:setTopBottom(true, true, -10.000000, 15.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_hint_box"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal3:setShaderVector(0.000000, 0.040632, 0.264706, 0.000000, 0.000000)
	registerVal3:setupNineSliceShader(18.000000, 18.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.cachitBG0 = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 0.000000, 422.000000)
	registerVal4:setTopBottom(true, false, 5.000000, 22.000000)
	registerVal4:setText(Engine.Localize("MPUI_REQUIRES_DANGER_CLOSE"))
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_95D_(arg0, arg1)
		ScaleWidgetToLabelWrappedWithMinimum(registerVal2, arg0, 5.000000, 5.000000, 423.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_95D_)
	registerVal2:addElement(registerVal4)
	registerVal2.textCenterAlign = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_9DC_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.cachitBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.textCenterAlign:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_9DC_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_B3A_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.cachitBG0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.textCenterAlign:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_B3A_
	registerVal5.NoHintText = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "NoHintText"
	local function __FUNC_C96_(arg0, arg1, arg2)
		local registerVal3 = HasHintText(arg1)
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_C96_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_CE9_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, nil, true, __FUNC_CE9_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

