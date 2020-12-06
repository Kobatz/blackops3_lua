-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.ScoreInfo.ScoreInfo_Meter")
require("ui.uieditor.widgets.HUD.ScoreInfo.ScoreInfo_MeterLine")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ScoreInfo_EnemyScoreContainer = registerVal1
function CoD.ScoreInfo_EnemyScoreContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ScoreInfo_EnemyScoreContainer)
	registerVal2.id = "ScoreInfo_EnemyScoreContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 159.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 37.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 12.500000, 65.500000)
	registerVal3:setTopBottom(false, false, -15.000000, 12.000000)
	registerVal3:setRGB(0.600000, 0.600000, 0.600000)
	registerVal3:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal3:setLetterSpacing(-1.000000)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_E47_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "enemyScore", true, __FUNC_E47_)
	registerVal2:addElement(registerVal3)
	registerVal2.EnemyScore = registerVal3
	local registerVal4 = CoD.ScoreInfo_Meter.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 70.500000, 121.500000)
	registerVal4:setTopBottom(false, false, -12.000000, 11.000000)
	registerVal4:setRGB(0.600000, 0.600000, 0.600000)
	registerVal4:setZoom(-10.000000)
	local function __FUNC_EFE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal8 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal9 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal4.ImgMeterEnvFill:setShaderVector(0.000000, DivideByScoreLimit(arg1, registerVal7, registerVal8, registerVal9, CoD.GetVectorComponentFromString(registerVal1, 4.000000)))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "enemyScore", true, __FUNC_EFE_)
	local function __FUNC_10A1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal8 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal9 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal4.ImgMeterEnvFillLine:setShaderVector(0.000000, DivideByScoreLimit(arg1, registerVal7, registerVal8, registerVal9, CoD.GetVectorComponentFromString(registerVal1, 4.000000)))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "enemyScore", true, __FUNC_10A1_)
	registerVal2:addElement(registerVal4)
	registerVal2.Meter = registerVal4
	local registerVal5 = CoD.ScoreInfo_MeterLine.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -3.000000, 48.000000)
	registerVal5:setTopBottom(false, false, -14.000000, 9.000000)
	registerVal5:setAlpha(0.000000)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Active"
	local function __FUNC_1249_(arg0, arg2, arg3)
		local registerVal3 = HideScoreMeterDueToGameType()
		if not registerVal3 then
			registerVal3 = IsAtLeastHalfGameScore(arg1, "gameScore.enemyScore")
		else
		end
		return true
	end

	registerVal9.condition = __FUNC_1249_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "gameScore.enemyScore")
	local function __FUNC_1307_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "gameScore.enemyScore"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_1307_)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "gameScore.scoreLimit")
	local function __FUNC_142E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "gameScore.scoreLimit"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_142E_)
	registerVal2:addElement(registerVal5)
	registerVal2.MeterLine = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 63.500000, 71.500000)
	registerVal6:setTopBottom(true, false, 4.500000, 28.500000)
	registerVal6:setRGB(0.600000, 0.600000, 0.600000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_core_hud_scorewidget_separator"))
	registerVal2:addElement(registerVal6)
	registerVal2.Separator = registerVal6
	local registerVal7 = {}
	registerVal8 = {}
	local function __FUNC_1556_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.EnemyScore:setLeftRight(true, false, 12.500000, 65.500000)
		registerVal2.EnemyScore:setTopBottom(false, false, -15.000000, 12.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Meter:setLeftRight(true, false, 95.500000, 146.500000)
		registerVal2.Meter:setTopBottom(false, false, 181.000000, 204.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.MeterLine:setLeftRight(false, false, 22.000000, 73.000000)
		registerVal2.MeterLine:setTopBottom(false, false, 181.000000, 204.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Separator:setLeftRight(true, false, 93.500000, 101.500000)
		registerVal2.Separator:setTopBottom(true, false, 199.500000, 223.500000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_1556_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_1882_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.EnemyScore:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Meter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.MeterLine:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Separator:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_1882_
	registerVal7.Infected = registerVal8
	registerVal8 = {}
	local function __FUNC_1A83_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.EnemyScore:setLeftRight(true, false, 12.500000, 65.500000)
		registerVal2.EnemyScore:setTopBottom(false, false, -15.000000, 12.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Meter:setLeftRight(false, false, -9.000000, 42.000000)
		registerVal2.Meter:setTopBottom(false, false, -12.000000, 11.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.MeterLine:setLeftRight(false, false, -3.000000, 48.000000)
		registerVal2.MeterLine:setTopBottom(false, false, -14.000000, 9.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Separator:setLeftRight(true, false, 63.500000, 71.500000)
		registerVal2.Separator:setTopBottom(true, false, 4.500000, 28.500000)
		registerVal2.Separator:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_1A83_
	registerVal7.Count3 = registerVal8
	registerVal8 = {}
	local function __FUNC_1DEB_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.EnemyScore:setLeftRight(true, false, 12.500000, 65.500000)
		registerVal2.EnemyScore:setTopBottom(false, false, -15.000000, 12.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Meter:setLeftRight(true, false, 85.500000, 136.500000)
		registerVal2.Meter:setTopBottom(false, false, -12.000000, 11.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.MeterLine:setLeftRight(false, false, -3.000000, 48.000000)
		registerVal2.MeterLine:setTopBottom(false, false, -14.000000, 9.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Separator:setLeftRight(true, false, 63.500000, 71.500000)
		registerVal2.Separator:setTopBottom(true, false, 4.500000, 28.500000)
		registerVal2.Separator:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_1DEB_
	registerVal7.Count4 = registerVal8
	registerVal8 = {}
	local function __FUNC_2153_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.EnemyScore:setLeftRight(true, false, 8.500000, 61.500000)
		registerVal2.EnemyScore:setTopBottom(false, false, -15.000000, 12.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Meter:setLeftRight(true, false, 84.500000, 135.500000)
		registerVal2.Meter:setTopBottom(false, false, -12.000000, 11.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.MeterLine:setLeftRight(false, false, -3.000000, 48.000000)
		registerVal2.MeterLine:setTopBottom(false, false, -14.000000, 9.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Separator:setLeftRight(true, false, 68.500000, 76.500000)
		registerVal2.Separator:setTopBottom(true, false, 4.500000, 28.500000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_2153_
	registerVal7.Count5 = registerVal8
	registerVal8 = {}
	local function __FUNC_2488_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.EnemyScore:setLeftRight(true, false, 8.500000, 73.500000)
		registerVal2.EnemyScore:setTopBottom(false, false, -15.000000, 12.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Meter:setLeftRight(true, false, 95.500000, 146.500000)
		registerVal2.Meter:setTopBottom(false, false, -12.000000, 11.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.MeterLine:setLeftRight(false, false, 9.000000, 60.000000)
		registerVal2.MeterLine:setTopBottom(false, false, -14.000000, 9.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Separator:setLeftRight(true, false, 80.500000, 88.500000)
		registerVal2.Separator:setTopBottom(true, false, 4.500000, 28.500000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_2488_
	registerVal7.Count6 = registerVal8
	registerVal8 = {}
	local function __FUNC_27BB_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.EnemyScore:setLeftRight(true, false, 8.500000, 85.500000)
		registerVal2.EnemyScore:setTopBottom(false, false, -15.000000, 12.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Meter:setLeftRight(false, false, 20.000000, 71.000000)
		registerVal2.Meter:setTopBottom(false, false, -12.000000, 11.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.MeterLine:setLeftRight(false, false, 22.000000, 73.000000)
		registerVal2.MeterLine:setTopBottom(false, false, -14.000000, 9.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Separator:setLeftRight(true, false, 93.500000, 101.500000)
		registerVal2.Separator:setTopBottom(true, false, 4.500000, 28.500000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_27BB_
	registerVal7.Count7 = registerVal8
	registerVal2.clipsPerState = registerVal7
	registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Infected"
	local function __FUNC_2AF0_(arg0, arg1, arg2)
		return IsGameTypeEqualToString("infect")
	end

	registerVal10.condition = __FUNC_2AF0_
	local registerVal11 = {}
	registerVal11.stateName = "Count3"
	local function __FUNC_2B5D_(arg0, arg2, arg3)
		return IsModelValueLessThan(arg1, "gameScore.enemyScore", 1000.000000)
	end

	registerVal11.condition = __FUNC_2B5D_
	local registerVal12 = {}
	registerVal12.stateName = "Count4"
	local function __FUNC_2BE1_(arg0, arg2, arg3)
		return IsModelValueLessThan(arg1, "gameScore.enemyScore", 10000.000000)
	end

	registerVal12.condition = __FUNC_2BE1_
	local registerVal13 = {}
	registerVal13.stateName = "Count5"
	local function __FUNC_2C65_(arg0, arg2, arg3)
		return IsModelValueLessThan(arg1, "gameScore.enemyScore", 100000.000000)
	end

	registerVal13.condition = __FUNC_2C65_
	local registerVal14 = {}
	registerVal14.stateName = "Count6"
	local function __FUNC_2CE9_(arg0, arg2, arg3)
		return IsModelValueLessThan(arg1, "gameScore.enemyScore", 1000000.000000)
	end

	registerVal14.condition = __FUNC_2CE9_
	local registerVal15 = {}
	registerVal15.stateName = "Count7"
	local function __FUNC_2D6D_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal15.condition = __FUNC_2D6D_
	registerVal9 = {registerVal10, registerVal11, registerVal12, registerVal13, registerVal14, registerVal15}
	registerVal2:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "gameScore.enemyScore")
	local function __FUNC_2DB8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "gameScore.enemyScore"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_2DB8_)
	local function __FUNC_2EE2_(arg0)
		arg0.Meter:close()
		arg0.MeterLine:close()
		arg0.EnemyScore:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2EE2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

