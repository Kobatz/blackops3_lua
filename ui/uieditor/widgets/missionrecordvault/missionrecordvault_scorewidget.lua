-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MissionRecordVault_ScoreWidget = registerVal1
function CoD.MissionRecordVault_ScoreWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MissionRecordVault_ScoreWidget)
	registerVal2.id = "MissionRecordVault_ScoreWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 219.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 39.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 219.000000)
	registerVal3:setTopBottom(true, false, 19.000000, 39.000000)
	registerVal3:setRGB(0.950000, 0.890000, 0.030000)
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_B08_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "challengeProgressQuantity", true, __FUNC_B08_)
	registerVal2:addElement(registerVal3)
	registerVal2.currentScore = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 0.000000, 193.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal4:setRGB(0.950000, 0.890000, 0.030000)
	registerVal4:setText(Engine.Localize("CPUI_IN_PROGRESS"))
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.TextBox40 = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 0.000000, 219.000000)
	registerVal5:setTopBottom(true, false, 19.000000, 39.000000)
	registerVal5:setRGB(0.950000, 0.890000, 0.030000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_BC2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "highestValue", true, __FUNC_BC2_)
	registerVal2:addElement(registerVal5)
	registerVal2.highestScore = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_C7A_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal5:completeAnimation()
		registerVal2.highestScore:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_C7A_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_D7C_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.currentScore:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.TextBox40:setText(Engine.Localize("CPUI_COMPLETE"))
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.highestScore:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_D7C_
	registerVal6.Completed = registerVal7
	registerVal7 = {}
	local function __FUNC_F94_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.currentScore:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.TextBox40:setText(Engine.Localize("CPUI_YOUR_BEST"))
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.highestScore:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_F94_
	registerVal6.Safehouse = registerVal7
	registerVal7 = {}
	local function __FUNC_11AD_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.currentScore:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.TextBox40:setText(Engine.Localize("CPUI_IN_PROGRESS"))
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.highestScore:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_11AD_
	registerVal6.InProgress = registerVal7
	registerVal7 = {}
	local function __FUNC_13C7_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.currentScore:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal7.DefaultClip = __FUNC_13C7_
	registerVal6.NoAccolades = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Completed"
	local function __FUNC_14C3_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "completed")
	end

	registerVal9.condition = __FUNC_14C3_
	local registerVal10 = {}
	registerVal10.stateName = "Safehouse"
	local function __FUNC_1535_(arg0, arg1, arg2)
		return IsCPAndInSafehouse()
	end

	registerVal10.condition = __FUNC_1535_
	local registerVal11 = {}
	registerVal11.stateName = "InProgress"
	local function __FUNC_1588_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal11.condition = __FUNC_1588_
	local registerVal12 = {}
	registerVal12.stateName = "NoAccolades"
	local function __FUNC_15D4_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueNonEmptyString(arg2, arg1, "challengeImage")
		return (not registerVal3)
	end

	registerVal12.condition = __FUNC_15D4_
	registerVal8 = {registerVal9, registerVal10, registerVal11, registerVal12}
	registerVal2:mergeStateConditions(registerVal8)
	local function __FUNC_165C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "completed"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "completed", true, __FUNC_165C_)
	local function __FUNC_177B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "challengeImage"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "challengeImage", true, __FUNC_177B_)
	local function __FUNC_189C_(arg0)
		arg0.currentScore:close()
		arg0.highestScore:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_189C_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

