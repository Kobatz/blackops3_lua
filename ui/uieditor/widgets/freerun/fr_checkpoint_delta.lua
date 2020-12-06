-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FR_Checkpoint_Delta = registerVal1
function CoD.FR_Checkpoint_Delta.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FR_Checkpoint_Delta)
	registerVal2.id = "FR_Checkpoint_Delta"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 183.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, true, 1.000000, 1.000000)
	registerVal3:setTopBottom(true, false, 1.000000, 26.120000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.500000)
	registerVal3:setTTF("fonts/escom.ttf")
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal3:setShaderVector(0.000000, 0.040000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.040000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setLetterSpacing(0.600000)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_BC0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(PrependSignToFreerunDelta(arg1, registerVal1)))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "timeAdjustment", true, __FUNC_BC0_)
	registerVal2:addElement(registerVal3)
	registerVal2.TextBG = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 25.120000)
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal4:setShaderVector(0.000000, 0.040000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.040000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setLetterSpacing(0.600000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_CA9_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(PrependSignToFreerunDelta(arg1, registerVal1)))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "timeAdjustment", true, __FUNC_CA9_)
	registerVal2:addElement(registerVal4)
	registerVal2.BestTimeDeltaText = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_D91_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.TextBG:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BestTimeDeltaText:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.BestTimeDeltaText:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_D91_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_F2B_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.TextBG:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BestTimeDeltaText:setRGB(0.010000, 1.000000, 0.000000)
		registerVal2.BestTimeDeltaText:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_F2B_
	registerVal5.Ahead = registerVal6
	registerVal6 = {}
	local function __FUNC_10CD_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.TextBG:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BestTimeDeltaText:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.BestTimeDeltaText:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_10CD_
	registerVal5.Behind = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Ahead"
	local function __FUNC_126C_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueGreaterThanOrEqualTo(arg1, "FreeRun.timer.timeAdjustment", 0.001000)
		if registerVal3 then
			registerVal3 = IsModelValueEqualTo(arg1, "FreeRun.timer.timeAdjustmentNegative", 0.000000)
			if not registerVal3 then
				registerVal3 = ShouldShowFreerunTimeClips(arg1)
			else
			end
		end
		return true
	end

	registerVal8.condition = __FUNC_126C_
	local registerVal9 = {}
	registerVal9.stateName = "Behind"
	local function __FUNC_13B5_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueGreaterThanOrEqualTo(arg1, "FreeRun.timer.timeAdjustment", 0.001000)
		registerVal3 = IsModelValueEqualTo(arg1, "FreeRun.timer.timeAdjustmentNegative", 0.000000)
		if registerVal3 and registerVal3 then
			registerVal3 = ShouldShowFreerunTimeClips(arg1)
		end
		return registerVal3
	end

	registerVal9.condition = __FUNC_13B5_
	registerVal7 = {registerVal8, registerVal9}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "FreeRun.timer.timeAdjustment")
	local function __FUNC_14F1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "FreeRun.timer.timeAdjustment"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_14F1_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "FreeRun.timer.timeAdjustmentNegative")
	local function __FUNC_1622_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "FreeRun.timer.timeAdjustmentNegative"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_1622_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "FreeRun.runState")
	local function __FUNC_175A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "FreeRun.runState"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_175A_)
	local function __FUNC_187E_(arg0)
		arg0.TextBG:close()
		arg0.BestTimeDeltaText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_187E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

