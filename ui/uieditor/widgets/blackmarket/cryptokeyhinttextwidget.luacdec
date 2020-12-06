-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BlackMarket.CryptokeyItemHintTextInternal_Left")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CryptokeyHintTextWidget = registerVal1
function CoD.CryptokeyHintTextWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CryptokeyHintTextWidget)
	registerVal2.id = "CryptokeyHintTextWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 230.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 47.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.CryptokeyItemHintTextInternal_Left.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -216.000000, 210.000000)
	registerVal3:setTopBottom(true, false, 10.250000, 53.250000)
	local function __FUNC_A1D_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_A1D_)
	local function __FUNC_A6E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.textCenterAlign:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "hintText", true, __FUNC_A6E_)
	registerVal2:addElement(registerVal3)
	registerVal2.CenteredHintText = registerVal3
	local registerVal4 = CoD.CryptokeyItemHintTextInternal_Left.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 17.500000, 443.500000)
	registerVal4:setTopBottom(true, false, 10.250000, 53.250000)
	registerVal4:setAlpha(0.000000)
	local function __FUNC_B4B_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_B4B_)
	local function __FUNC_B9A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.textCenterAlign:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "hintText", true, __FUNC_B9A_)
	registerVal2:addElement(registerVal4)
	registerVal2.LeftHintText = registerVal4
	local registerVal5 = CoD.CryptokeyItemHintTextInternal_Left.new(arg0, arg1)
	registerVal5:setLeftRight(false, true, -449.500000, -26.500000)
	registerVal5:setTopBottom(true, false, 10.250000, 53.250000)
	registerVal5:setAlpha(0.000000)
	local function __FUNC_C77_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_C77_)
	local function __FUNC_CC6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.textCenterAlign:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "hintText", true, __FUNC_CC6_)
	registerVal2:addElement(registerVal5)
	registerVal2.RightHintText = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -32.000000, 32.000000)
	registerVal6:setTopBottom(true, false, -12.000000, 20.000000)
	registerVal6:setImage(RegisterImage("uie_t7_blackmarket_hint_arrow"))
	registerVal2:addElement(registerVal6)
	registerVal2.Arrow = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_DA3_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.CenteredHintText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LeftHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.RightHintText:setLeftRight(false, true, -449.500000, -17.500000)
		registerVal2.RightHintText:setTopBottom(true, false, 10.250000, 53.250000)
		registerVal2.RightHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal8.DefaultClip = __FUNC_DA3_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_FF2_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.CenteredHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LeftHintText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.RightHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal8.DefaultClip = __FUNC_FF2_
	registerVal7.LeftColumn = registerVal8
	registerVal8 = {}
	local function __FUNC_11B2_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.CenteredHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LeftHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.RightHintText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal8.DefaultClip = __FUNC_11B2_
	registerVal7.RightColumn = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "LeftColumn"
	local function __FUNC_1372_(arg0, arg2, arg3)
		return IsSelfModelValueEqualToEnum(arg2, arg1, "hintTextAlign", Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	end

	registerVal10.condition = __FUNC_1372_
	local registerVal11 = {}
	registerVal11.stateName = "RightColumn"
	local function __FUNC_144C_(arg0, arg2, arg3)
		return IsSelfModelValueEqualToEnum(arg2, arg1, "hintTextAlign", Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	end

	registerVal11.condition = __FUNC_144C_
	registerVal9 = {registerVal10, registerVal11}
	registerVal2:mergeStateConditions(registerVal9)
	local function __FUNC_1529_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hintTextAlign"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "hintTextAlign", true, __FUNC_1529_)
	local function __FUNC_164B_(arg0)
		arg0.CenteredHintText:close()
		arg0.LeftHintText:close()
		arg0.RightHintText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_164B_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

