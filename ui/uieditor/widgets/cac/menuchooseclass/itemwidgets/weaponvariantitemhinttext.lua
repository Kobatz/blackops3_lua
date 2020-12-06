-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1CA_(arg0, arg1, arg2)
	local function __FUNC_210_(arg0, arg1)
		local registerVal2, registerVal3, registerVal4, registerVal5 = arg0.warningIcon:getLocalLeftRight()
		ScaleWidgetToLabelWrappedLeftAlign(arg0, arg1, -((registerVal5 - registerVal4) + 15.000000), 8.000000)
	end

	arg0.updateText = __FUNC_210_
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.WeaponVariantItemHintText = registerVal2
local function __FUNC_2D6_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.WeaponVariantItemHintText)
	registerVal2.id = "WeaponVariantItemHintText"
	registerVal2.soundSet = "CAC"
	registerVal2:setLeftRight(true, false, 0.000000, 188.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 50.000000)
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
	registerVal4:setShaderVector(0.000000, 0.020000, 0.080000, 0.000000, 0.000000)
	registerVal4:setupNineSliceShader(4.000000, 4.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.cachitBG0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 2.000000, 52.000000)
	registerVal5:setTopBottom(false, false, -26.500000, 23.500000)
	registerVal5:setImage(RegisterImage("uie_cac_icons_warning"))
	registerVal2:addElement(registerVal5)
	registerVal2.warningIcon = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 53.000000, 215.000000)
	registerVal6:setTopBottom(false, false, -8.000000, 8.000000)
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal6:setLetterSpacing(0.500000)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	local function __FUNC_C0B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "hintText", true, __FUNC_C0B_)
	local function __FUNC_CC2_(arg0, arg1)
		CallCustomElementFunction_Self(registerVal2, "updateText", arg0)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal6, "setText", __FUNC_CC2_)
	registerVal2:addElement(registerVal6)
	registerVal2.hintText = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_D3C_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.black:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.cachitBG0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.cachitBG0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.cachitBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.warningIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.hintText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_D3C_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_FC0_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.black:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.cachitBG0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.warningIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.hintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_FC0_
	registerVal7.NoHintText = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "NoHintText"
	local function __FUNC_11C3_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal10.condition = __FUNC_11C3_
	registerVal9 = {registerVal10}
	registerVal2:mergeStateConditions(registerVal9)
	local function __FUNC_120C_(arg0)
		arg0.hintText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_120C_)
	if __FUNC_1CA_ then
		__FUNC_1CA_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.WeaponVariantItemHintText.new = __FUNC_2D6_
