-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.HintTextArrow")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Prestige_TokenRefundHintWidget = registerVal1
function CoD.Prestige_TokenRefundHintWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Prestige_TokenRefundHintWidget)
	registerVal2.id = "Prestige_TokenRefundHintWidget"
	registerVal2.soundSet = "CAC"
	registerVal2:setLeftRight(true, false, 0.000000, 188.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 2.000000, -2.000000)
	registerVal3:setTopBottom(true, true, 2.000000, -2.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	registerVal2:addElement(registerVal3)
	registerVal2.black = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrfull"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal4:setShaderVector(0.000000, 0.021277, 0.125000, 0.000000, 0.000000)
	registerVal4:setupNineSliceShader(4.000000, 4.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.cachitBG0 = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, true, 4.000000, -4.000000)
	registerVal5:setTopBottom(false, false, -8.000000, 8.000000)
	registerVal5:setText(Engine.Localize("MENU_PRESTIGE_UNLOCK_TOKEN_REFUND"))
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5:setLetterSpacing(0.500000)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_C31_(arg0, arg1)
		ScaleWidgetToLabelCentered(registerVal2, arg0, 8.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal5, "setText", __FUNC_C31_)
	registerVal2:addElement(registerVal5)
	registerVal2.textCenterAlign = registerVal5
	local registerVal6 = CoD.HintTextArrow.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 99.000000, 89.000000)
	registerVal6:setTopBottom(false, false, -31.000000, -21.000000)
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "NoHintText"
	local function __FUNC_C99_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal10.condition = __FUNC_C99_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal2:addElement(registerVal6)
	registerVal2.hintArrow = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_CE5_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.DefaultClip = __FUNC_CE5_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_D46_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal6:completeAnimation()
		registerVal2.hintArrow:setLeftRight(false, false, 5.000000, -5.000000)
		registerVal2.hintArrow:setTopBottom(true, false, -15.000000, -5.000000)
		registerVal2.hintArrow:setZRot(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_D46_
	registerVal7.Below = registerVal8
	registerVal8 = {}
	local function __FUNC_ECF_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal6:completeAnimation()
		registerVal2.hintArrow:setLeftRight(true, false, -5.000000, -15.000000)
		registerVal2.hintArrow:setTopBottom(false, false, -5.000000, 5.000000)
		registerVal2.hintArrow:setZRot(90.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_ECF_
	registerVal7.Right = registerVal8
	registerVal8 = {}
	local function __FUNC_1057_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal6:completeAnimation()
		registerVal2.hintArrow:setLeftRight(false, true, 15.000000, 5.000000)
		registerVal2.hintArrow:setTopBottom(false, false, -5.000000, 5.000000)
		registerVal2.hintArrow:setZRot(-90.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_1057_
	registerVal7.Left = registerVal8
	registerVal8 = {}
	local function __FUNC_11DF_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal6:completeAnimation()
		registerVal2.hintArrow:setLeftRight(false, false, 5.000000, -5.000000)
		registerVal2.hintArrow:setTopBottom(false, true, 5.000000, 15.000000)
		registerVal2.hintArrow:setZRot(180.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_11DF_
	registerVal7.Above = registerVal8
	registerVal2.clipsPerState = registerVal7
	local function __FUNC_1367_(arg0)
		arg0.hintArrow:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1367_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

