-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Border")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChooseCharacterLoadout_CardBack_LockedTransmission_Progress = registerVal1
function CoD.ChooseCharacterLoadout_CardBack_LockedTransmission_Progress.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChooseCharacterLoadout_CardBack_LockedTransmission_Progress)
	registerVal2.id = "ChooseCharacterLoadout_CardBack_LockedTransmission_Progress"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 486.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 35.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(false, false, 7.250000, 17.250000)
	registerVal3:setRGB(0.870000, 0.990000, 1.000000)
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_normal"))
	registerVal3:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_B04_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal3:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "assignmentProgress", true, __FUNC_B04_)
	registerVal2:addElement(registerVal3)
	registerVal2.progressFill = registerVal3
	local registerVal4 = CoD.Border.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(false, false, 7.250000, 17.250000)
	registerVal4:setRGB(0.870000, 0.990000, 1.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.progressBorder = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 0.000000, 50.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal5:setRGB(0.820000, 0.980000, 1.000000)
	registerVal5:setAlpha(0.800000)
	registerVal5:setText(Engine.Localize("MPUI_PROGRESS"))
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal5)
	registerVal2.progressLabel = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(false, true, -35.000000, 0.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal6:setRGB(0.820000, 0.980000, 1.000000)
	registerVal6:setAlpha(0.800000)
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	local function __FUNC_C5C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(registerVal1)
		end
	end

	registerVal6:linkToElementModel(registerVal2, "assignmentProgressString", true, __FUNC_C5C_)
	registerVal2:addElement(registerVal6)
	registerVal2.progressDisplayString = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_CF0_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.progressFill:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.progressBorder:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.progressLabel:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.progressDisplayString:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_CF0_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_F13_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.progressFill:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.progressBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.progressLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.progressDisplayString:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_F13_
	registerVal7.Hidden = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Hidden"
	local function __FUNC_112E_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueNonEmptyString(arg2, arg1, "assignmentProgressString")
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_112E_
	registerVal9 = {registerVal10}
	registerVal2:mergeStateConditions(registerVal9)
	local function __FUNC_11BE_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "assignmentProgressString"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "assignmentProgressString", true, __FUNC_11BE_)
	local function __FUNC_12EA_(arg0)
		arg0.progressBorder:close()
		arg0.progressFill:close()
		arg0.progressDisplayString:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_12EA_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

