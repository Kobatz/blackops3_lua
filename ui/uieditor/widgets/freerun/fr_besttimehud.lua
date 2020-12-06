-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FR_BestTimeHud = registerVal1
function CoD.FR_BestTimeHud.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FR_BestTimeHud)
	registerVal2.id = "FR_BestTimeHud"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 138.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 62.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 4.000000, -2.660000)
	registerVal3:setTopBottom(true, true, 0.000000, -31.600000)
	registerVal3:setImage(RegisterImage("uie_t7_freerun_hud_infobarright_besttimebox"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.BestTimeBoxOrange = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 4.000000, -2.660000)
	registerVal4:setTopBottom(true, true, 0.000000, -31.600000)
	registerVal4:setAlpha(0.300000)
	registerVal4:setImage(RegisterImage("uie_t7_freerun_hud_infobarright_besttimebox"))
	registerVal2:addElement(registerVal4)
	registerVal2.BestTimeBoxOrange0 = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(false, false, -69.000000, 69.000000)
	registerVal5:setTopBottom(false, false, -25.800000, -5.800000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setText(Engine.Localize("FREERUN_BEST_TIME"))
	registerVal5:setTTF("fonts/escom.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.BestTimeText = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, true, 24.940000, -11.410000)
	registerVal6:setTopBottom(true, true, 30.200000, -5.800000)
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_D09_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(NumberAsTimeZeroDashes(registerVal1)))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "bestTime", true, __FUNC_D09_)
	registerVal2:addElement(registerVal6)
	registerVal2.BestTimeValueText = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(false, false, -69.000000, 69.000000)
	registerVal7:setTopBottom(false, false, -25.800000, -5.800000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setText(Engine.Localize("FREERUN_SET_BEST_TIME"))
	registerVal7:setTTF("fonts/escom.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.setBestTime = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, true, 7.940000, -6.410000)
	registerVal8:setTopBottom(true, true, 27.200000, -8.800000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setTTF("fonts/escom.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_DEA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(Engine.Localize(NumberAsTimeZeroDashes(registerVal1)))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "bestTime", true, __FUNC_DEA_)
	registerVal2:addElement(registerVal8)
	registerVal2.setBestTimeValue = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_ECA_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal5:completeAnimation()
		registerVal2.BestTimeText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BestTimeValueText:setLeftRight(true, true, 24.940000, -11.410000)
		registerVal2.BestTimeValueText:setTopBottom(true, true, 30.200000, -5.800000)
		registerVal2.BestTimeValueText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.setBestTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.setBestTimeValue:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_ECA_
	local function __FUNC_1177_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal10.FaultAnim = __FUNC_1177_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_11D6_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal5:completeAnimation()
		registerVal2.BestTimeText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BestTimeValueText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.setBestTime:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.setBestTimeValue:setLeftRight(true, true, 7.940000, -6.410000)
		registerVal2.setBestTimeValue:setTopBottom(true, true, 27.200000, -8.800000)
		registerVal2.setBestTimeValue:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_11D6_
	registerVal9.Inactive = registerVal10
	registerVal2.clipsPerState = registerVal9
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "Inactive"
	local function __FUNC_1483_(arg0, arg2, arg3)
		return IsSelfModelValueNil(arg2, arg1, "bestTime")
	end

	registerVal12.condition = __FUNC_1483_
	registerVal11 = {registerVal12}
	registerVal2:mergeStateConditions(registerVal11)
	local function __FUNC_14F3_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "bestTime"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "bestTime", true, __FUNC_14F3_)
	local function __FUNC_160E_(arg0)
		arg0.BestTimeValueText:close()
		arg0.setBestTimeValue:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_160E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

