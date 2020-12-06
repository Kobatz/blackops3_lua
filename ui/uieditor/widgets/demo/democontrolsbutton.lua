-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Theater.Theater_FocusBar")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.DemoControlsButton = registerVal1
function CoD.DemoControlsButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.DemoControlsButton)
	registerVal2.id = "DemoControlsButton"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 40.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 45.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 3.000000, 37.000000)
	registerVal3:setTopBottom(true, false, 11.500000, 35.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.whitebox = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -10.000000, 10.000000)
	registerVal4:setTopBottom(false, false, -10.000000, 10.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.icon = registerVal4
	local registerVal5 = CoD.Theater_FocusBar.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 40.000000)
	registerVal5:setTopBottom(true, false, 7.000000, 15.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setScale(0.900000)
	registerVal2:addElement(registerVal5)
	registerVal2.TheaterFocusBarT0 = registerVal5
	local registerVal6 = CoD.Theater_FocusBar.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 0.000000, 40.000000)
	registerVal6:setTopBottom(true, false, 31.000000, 39.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setXRot(180.000000)
	registerVal6:setScale(0.900000)
	registerVal2:addElement(registerVal6)
	registerVal2.TheaterFocusBarB0 = registerVal6
	local function __FUNC_A03_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.icon:linkToElementModel(registerVal2, "icon", true, __FUNC_A03_)
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_AB4_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.whitebox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.icon:setAlpha(1.000000)
		registerVal2.icon:setYRot(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TheaterFocusBarT0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.TheaterFocusBarB0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_AB4_
	local function __FUNC_CF6_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.whitebox:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.icon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TheaterFocusBarT0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.TheaterFocusBarB0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.Focus = __FUNC_CF6_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_F09_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.icon:setRGB(0.700000, 0.700000, 0.700000)
		registerVal2.icon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TheaterFocusBarT0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.TheaterFocusBarB0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_F09_
	registerVal7.Disabled = registerVal8
	registerVal8 = {}
	local function __FUNC_1100_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.whitebox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.icon:setRGB(ColorSet.Disabled.r, ColorSet.Disabled.g, ColorSet.Disabled.b)
		registerVal2.icon:setAlpha(1.000000)
		registerVal2.icon:setYRot(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TheaterFocusBarT0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.TheaterFocusBarB0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_1100_
	local function __FUNC_1403_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.whitebox:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.icon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TheaterFocusBarT0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.TheaterFocusBarB0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.Focus = __FUNC_1403_
	registerVal7.DisabledWithFocus = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Disabled"
	local function __FUNC_1615_(arg0, arg2, arg3)
		local registerVal3 = IsDisabled(arg2, arg1)
		if registerVal3 then
			registerVal3 = IsSelfModelValueTrue(arg2, arg1, "disabledWithFocus")
		end
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_1615_
	local registerVal11 = {}
	registerVal11.stateName = "DisabledWithFocus"
	local function __FUNC_16C1_(arg0, arg2, arg3)
		local registerVal3 = IsDisabled(arg2, arg1)
		if registerVal3 then
			registerVal3 = IsSelfModelValueTrue(arg2, arg1, "disabledWithFocus")
		end
		return registerVal3
	end

	registerVal11.condition = __FUNC_16C1_
	registerVal9 = {registerVal10, registerVal11}
	registerVal2:mergeStateConditions(registerVal9)
	local function __FUNC_1769_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabled", true, __FUNC_1769_)
	local function __FUNC_1886_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabledWithFocus"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabledWithFocus", true, __FUNC_1886_)
	local function __FUNC_19AB_(arg0)
		arg0.TheaterFocusBarT0:close()
		arg0.TheaterFocusBarB0:close()
		arg0.icon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_19AB_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

