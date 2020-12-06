-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.ScoreInfo.ScoreInfo_Meter")
require("ui.uieditor.widgets.HUD.ScoreInfo.ScoreInfo_MeterLine")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.UserScoreContainer = registerVal1
function CoD.UserScoreContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.UserScoreContainer)
	registerVal2.id = "UserScoreContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 223.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 45.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 7.500000, 62.500000)
	registerVal3:setTopBottom(false, false, -24.000000, 20.000000)
	registerVal3:setRGB(ColorSet.FriendlyBlue.r, ColorSet.FriendlyBlue.g, ColorSet.FriendlyBlue.b)
	registerVal3:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal3:setLetterSpacing(-1.900000)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_DFB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "playerScore", true, __FUNC_DFB_)
	registerVal2:addElement(registerVal3)
	registerVal2.UserScore = registerVal3
	local registerVal4 = CoD.ScoreInfo_Meter.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 72.500000, 123.500000)
	registerVal4:setTopBottom(false, false, -13.000000, 10.000000)
	registerVal4:setRGB(ColorSet.FriendlyBlue.r, ColorSet.FriendlyBlue.g, ColorSet.FriendlyBlue.b)
	registerVal4:setXRot(180.000000)
	registerVal4:setZoom(-10.000000)
	local function __FUNC_EB2_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_EB2_)
	local function __FUNC_F02_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal8 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal9 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal4.ImgMeterEnvFill:setShaderVector(0.000000, DivideByScoreLimit(arg1, registerVal7, registerVal8, registerVal9, CoD.GetVectorComponentFromString(registerVal1, 4.000000)))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "playerScore", true, __FUNC_F02_)
	local function __FUNC_10A5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal8 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal9 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal4.ImgMeterEnvFillLine:setShaderVector(0.000000, DivideByScoreLimit(arg1, registerVal7, registerVal8, registerVal9, CoD.GetVectorComponentFromString(registerVal1, 4.000000)))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "playerScore", true, __FUNC_10A5_)
	registerVal2:addElement(registerVal4)
	registerVal2.Meter = registerVal4
	local registerVal5 = CoD.ScoreInfo_MeterLine.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -37.000000, 14.000000)
	registerVal5:setTopBottom(false, false, -13.000000, 10.000000)
	registerVal5:setAlpha(0.000000)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Active"
	local function __FUNC_124D_(arg0, arg2, arg3)
		local registerVal3 = HideScoreMeterDueToGameType()
		if not registerVal3 then
			registerVal3 = IsAtLeastHalfGameScore(arg1, "gameScore.playerScore")
		else
		end
		return true
	end

	registerVal9.condition = __FUNC_124D_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "gameScore.playerScore")
	local function __FUNC_130C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "gameScore.playerScore"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_130C_)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "gameScore.scoreLimit")
	local function __FUNC_1437_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "gameScore.scoreLimit"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_1437_)
	registerVal2:addElement(registerVal5)
	registerVal2.MeterLine = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_155E_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.UserScore:setLeftRight(true, false, 7.500000, 62.500000)
		registerVal2.UserScore:setTopBottom(false, false, -24.000000, 20.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Meter:setLeftRight(true, false, 68.000000, 119.000000)
		registerVal2.Meter:setTopBottom(false, false, 395.000000, 418.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.MeterLine:setLeftRight(false, false, -40.500000, 10.500000)
		registerVal2.MeterLine:setTopBottom(false, false, 395.000000, 418.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_155E_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_17EA_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.UserScore:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Meter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.MeterLine:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_17EA_
	registerVal6.Infected = registerVal7
	registerVal7 = {}
	local function __FUNC_1993_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.UserScore:setLeftRight(true, false, 7.500000, 62.500000)
		registerVal2.UserScore:setTopBottom(false, false, -24.000000, 20.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Meter:setLeftRight(true, false, 82.500000, 133.500000)
		registerVal2.Meter:setTopBottom(false, false, -13.000000, 10.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.MeterLine:setLeftRight(false, false, -37.000000, 14.000000)
		registerVal2.MeterLine:setTopBottom(false, false, -13.000000, 10.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1993_
	registerVal6.Count3 = registerVal7
	registerVal7 = {}
	local function __FUNC_1C1E_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.UserScore:setLeftRight(true, false, 7.500000, 83.500000)
		registerVal2.UserScore:setTopBottom(false, false, -24.000000, 20.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Meter:setLeftRight(true, false, 103.500000, 154.500000)
		registerVal2.Meter:setTopBottom(false, false, -13.000000, 10.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.MeterLine:setLeftRight(false, false, -17.000000, 34.000000)
		registerVal2.MeterLine:setTopBottom(false, false, -13.000000, 10.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1C1E_
	registerVal6.Count4 = registerVal7
	registerVal7 = {}
	local function __FUNC_1EAA_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.UserScore:setLeftRight(true, false, 7.500000, 103.500000)
		registerVal2.UserScore:setTopBottom(false, false, -24.000000, 20.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Meter:setLeftRight(true, false, 121.500000, 172.500000)
		registerVal2.Meter:setTopBottom(false, false, -13.000000, 10.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.MeterLine:setLeftRight(false, false, 3.000000, 54.000000)
		registerVal2.MeterLine:setTopBottom(false, false, -13.000000, 10.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1EAA_
	registerVal6.Count5 = registerVal7
	registerVal7 = {}
	local function __FUNC_2131_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.UserScore:setLeftRight(true, false, 7.500000, 122.500000)
		registerVal2.UserScore:setTopBottom(false, false, -24.000000, 20.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Meter:setLeftRight(true, false, 140.500000, 191.500000)
		registerVal2.Meter:setTopBottom(false, false, -13.000000, 10.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.MeterLine:setLeftRight(false, false, 23.000000, 74.000000)
		registerVal2.MeterLine:setTopBottom(false, false, -13.000000, 10.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_2131_
	registerVal6.Count6 = registerVal7
	registerVal7 = {}
	local function __FUNC_23BE_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.UserScore:setLeftRight(true, false, 7.500000, 144.500000)
		registerVal2.UserScore:setTopBottom(false, false, -24.000000, 20.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Meter:setLeftRight(true, false, 159.500000, 210.500000)
		registerVal2.Meter:setTopBottom(false, false, -13.000000, 10.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.MeterLine:setLeftRight(false, false, 43.000000, 94.000000)
		registerVal2.MeterLine:setTopBottom(false, false, -13.000000, 10.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_23BE_
	registerVal6.Count7 = registerVal7
	registerVal2.clipsPerState = registerVal6
	registerVal8 = {}
	registerVal9 = {}
	registerVal9.stateName = "Infected"
	local function __FUNC_264A_(arg0, arg1, arg2)
		return IsGameTypeEqualToString("infect")
	end

	registerVal9.condition = __FUNC_264A_
	local registerVal10 = {}
	registerVal10.stateName = "Count3"
	local function __FUNC_26B5_(arg0, arg2, arg3)
		return IsModelValueLessThan(arg1, "gameScore.playerScore", 1000.000000)
	end

	registerVal10.condition = __FUNC_26B5_
	local registerVal11 = {}
	registerVal11.stateName = "Count4"
	local function __FUNC_273A_(arg0, arg2, arg3)
		return IsModelValueLessThan(arg1, "gameScore.playerScore", 10000.000000)
	end

	registerVal11.condition = __FUNC_273A_
	local registerVal12 = {}
	registerVal12.stateName = "Count5"
	local function __FUNC_27BE_(arg0, arg2, arg3)
		return IsModelValueLessThan(arg1, "gameScore.playerScore", 100000.000000)
	end

	registerVal12.condition = __FUNC_27BE_
	local registerVal13 = {}
	registerVal13.stateName = "Count6"
	local function __FUNC_2842_(arg0, arg2, arg3)
		return IsModelValueLessThan(arg1, "gameScore.playerScore", 1000000.000000)
	end

	registerVal13.condition = __FUNC_2842_
	local registerVal14 = {}
	registerVal14.stateName = "Count7"
	local function __FUNC_28C6_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal14.condition = __FUNC_28C6_
	registerVal8 = {registerVal9, registerVal10, registerVal11, registerVal12, registerVal13, registerVal14}
	registerVal2:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "gameScore.playerScore")
	local function __FUNC_2910_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "gameScore.playerScore"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_2910_)
	local function __FUNC_2A3B_(arg0)
		arg0.Meter:close()
		arg0.MeterLine:close()
		arg0.UserScore:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2A3B_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

