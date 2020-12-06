-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Reticles.PulseRifle.PulseRifleReticle_Numbers_Widget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PulseRifleReticle_NumbersInt = registerVal1
function CoD.PulseRifleReticle_NumbersInt.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PulseRifleReticle_NumbersInt)
	registerVal2.id = "PulseRifleReticle_NumbersInt"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 156.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 144.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 156.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 144.000000)
	registerVal3:setAlpha(0.900000)
	registerVal3:setImage(RegisterImage("uie_t7_mp_hud_pulse_rnd_bg"))
	registerVal2:addElement(registerVal3)
	registerVal2.BG = registerVal3
	local registerVal4 = CoD.PulseRifleReticle_Numbers_Widget.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, -3.870000, 92.130000)
	registerVal4:setTopBottom(true, false, 0.000000, 144.000000)
	local function __FUNC_B43_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_B43_)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "One"
	local function __FUNC_B92_(arg0, arg2, arg3)
		return IsClipAmmoTensDigitEqualTo(arg2, arg1, 1.000000)
	end

	registerVal8.condition = __FUNC_B92_
	local registerVal9 = {}
	registerVal9.stateName = "Two"
	local function __FUNC_BFD_(arg0, arg2, arg3)
		return IsClipAmmoTensDigitEqualTo(arg2, arg1, 2.000000)
	end

	registerVal9.condition = __FUNC_BFD_
	local registerVal10 = {}
	registerVal10.stateName = "Three"
	local function __FUNC_C69_(arg0, arg2, arg3)
		return IsClipAmmoTensDigitEqualTo(arg2, arg1, 3.000000)
	end

	registerVal10.condition = __FUNC_C69_
	local registerVal11 = {}
	registerVal11.stateName = "Four"
	local function __FUNC_CD5_(arg0, arg2, arg3)
		return IsClipAmmoTensDigitEqualTo(arg2, arg1, 4.000000)
	end

	registerVal11.condition = __FUNC_CD5_
	local registerVal12 = {}
	registerVal12.stateName = "Five"
	local function __FUNC_D41_(arg0, arg2, arg3)
		return IsClipAmmoTensDigitEqualTo(arg2, arg1, 5.000000)
	end

	registerVal12.condition = __FUNC_D41_
	local registerVal13 = {}
	registerVal13.stateName = "Six"
	local function __FUNC_DAD_(arg0, arg2, arg3)
		return IsClipAmmoTensDigitEqualTo(arg2, arg1, 6.000000)
	end

	registerVal13.condition = __FUNC_DAD_
	local registerVal14 = {}
	registerVal14.stateName = "Seven"
	local function __FUNC_E19_(arg0, arg2, arg3)
		return IsClipAmmoTensDigitEqualTo(arg2, arg1, 7.000000)
	end

	registerVal14.condition = __FUNC_E19_
	local registerVal15 = {}
	registerVal15.stateName = "Eight"
	local function __FUNC_E85_(arg0, arg2, arg3)
		return IsClipAmmoTensDigitEqualTo(arg2, arg1, 8.000000)
	end

	registerVal15.condition = __FUNC_E85_
	local registerVal16 = {}
	registerVal16.stateName = "Nine"
	local function __FUNC_EF1_(arg0, arg2, arg3)
		return IsClipAmmoTensDigitEqualTo(arg2, arg1, 9.000000)
	end

	registerVal16.condition = __FUNC_EF1_
	local registerVal17 = {}
	registerVal17.stateName = "Zero"
	local function __FUNC_F5D_(arg0, arg2, arg3)
		return IsClipAmmoTensDigitEqualTo(arg2, arg1, 0.000000)
	end

	registerVal17.condition = __FUNC_F5D_
	registerVal7 = {registerVal8, registerVal9, registerVal10, registerVal11, registerVal12, registerVal13, registerVal14, registerVal15, registerVal16, registerVal17}
	registerVal4:mergeStateConditions(registerVal7)
	local function __FUNC_FC9_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "ammoInClip"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:linkToElementModel(registerVal4, "ammoInClip", true, __FUNC_FC9_)
	registerVal2:addElement(registerVal4)
	registerVal2.PulseRifleReticleNumbersWidgetLeft = registerVal4
	local registerVal5 = CoD.PulseRifleReticle_Numbers_Widget.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 62.130000, 158.130000)
	registerVal5:setTopBottom(true, false, 0.000000, 144.000000)
	local function __FUNC_10E8_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_10E8_)
	registerVal8 = {}
	registerVal9 = {}
	registerVal9.stateName = "One"
	local function __FUNC_113A_(arg0, arg2, arg3)
		return IsClipAmmoOnesDigitEqualTo(arg2, arg1, 1.000000)
	end

	registerVal9.condition = __FUNC_113A_
	registerVal10 = {}
	registerVal10.stateName = "Two"
	local function __FUNC_11A5_(arg0, arg2, arg3)
		return IsClipAmmoOnesDigitEqualTo(arg2, arg1, 2.000000)
	end

	registerVal10.condition = __FUNC_11A5_
	registerVal11 = {}
	registerVal11.stateName = "Three"
	local function __FUNC_1211_(arg0, arg2, arg3)
		return IsClipAmmoOnesDigitEqualTo(arg2, arg1, 3.000000)
	end

	registerVal11.condition = __FUNC_1211_
	registerVal12 = {}
	registerVal12.stateName = "Four"
	local function __FUNC_127D_(arg0, arg2, arg3)
		return IsClipAmmoOnesDigitEqualTo(arg2, arg1, 4.000000)
	end

	registerVal12.condition = __FUNC_127D_
	registerVal13 = {}
	registerVal13.stateName = "Five"
	local function __FUNC_12E9_(arg0, arg2, arg3)
		return IsClipAmmoOnesDigitEqualTo(arg2, arg1, 5.000000)
	end

	registerVal13.condition = __FUNC_12E9_
	registerVal14 = {}
	registerVal14.stateName = "Six"
	local function __FUNC_1355_(arg0, arg2, arg3)
		return IsClipAmmoOnesDigitEqualTo(arg2, arg1, 6.000000)
	end

	registerVal14.condition = __FUNC_1355_
	registerVal15 = {}
	registerVal15.stateName = "Seven"
	local function __FUNC_13C1_(arg0, arg2, arg3)
		return IsClipAmmoOnesDigitEqualTo(arg2, arg1, 7.000000)
	end

	registerVal15.condition = __FUNC_13C1_
	registerVal16 = {}
	registerVal16.stateName = "Eight"
	local function __FUNC_142D_(arg0, arg2, arg3)
		return IsClipAmmoOnesDigitEqualTo(arg2, arg1, 8.000000)
	end

	registerVal16.condition = __FUNC_142D_
	registerVal17 = {}
	registerVal17.stateName = "Nine"
	local function __FUNC_1499_(arg0, arg2, arg3)
		return IsClipAmmoOnesDigitEqualTo(arg2, arg1, 9.000000)
	end

	registerVal17.condition = __FUNC_1499_
	local registerVal18 = {}
	registerVal18.stateName = "Zero"
	local function __FUNC_1505_(arg0, arg2, arg3)
		return IsClipAmmoOnesDigitEqualTo(arg2, arg1, 0.000000)
	end

	registerVal18.condition = __FUNC_1505_
	registerVal8 = {registerVal9, registerVal10, registerVal11, registerVal12, registerVal13, registerVal14, registerVal15, registerVal16, registerVal17, registerVal18}
	registerVal5:mergeStateConditions(registerVal8)
	local function __FUNC_1571_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "ammoInClip"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "ammoInClip", true, __FUNC_1571_)
	registerVal2:addElement(registerVal5)
	registerVal2.PulseRifleReticleNumbersWidgetRight = registerVal5
	local registerVal6 = {}
	registerVal7 = {}
	local function __FUNC_1690_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.BG:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PulseRifleReticleNumbersWidgetLeft:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PulseRifleReticleNumbersWidgetRight:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1690_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_1875_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.BG:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PulseRifleReticleNumbersWidgetLeft:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PulseRifleReticleNumbersWidgetRight:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1875_
	registerVal6.Double = registerVal7
	registerVal2.clipsPerState = registerVal6
	registerVal8 = {}
	registerVal9 = {}
	registerVal9.stateName = "Double"
	local function __FUNC_1A54_(arg0, arg2, arg3)
		return IsSelfModelValueGreaterThanOrEqualTo(arg2, arg1, "ammoInClip", 10.000000)
	end

	registerVal9.condition = __FUNC_1A54_
	registerVal8 = {registerVal9}
	registerVal2:mergeStateConditions(registerVal8)
	local function __FUNC_1AE3_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "ammoInClip"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "ammoInClip", true, __FUNC_1AE3_)
	local function __FUNC_1C00_(arg0)
		arg0.PulseRifleReticleNumbersWidgetLeft:close()
		arg0.PulseRifleReticleNumbersWidgetRight:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1C00_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

