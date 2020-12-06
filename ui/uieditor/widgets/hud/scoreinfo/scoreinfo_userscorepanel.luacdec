-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.ScoreInfo.ScoreInfo_PanelScale")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ScoreInfo_UserScorePanel = registerVal1
function CoD.ScoreInfo_UserScorePanel.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ScoreInfo_UserScorePanel)
	registerVal2.id = "ScoreInfo_UserScorePanel"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 223.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 45.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.ScoreInfo_PanelScale.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -39.000000, 57.000000)
	registerVal3:setTopBottom(false, false, -4.000000, 14.000000)
	registerVal3:setRGB(0.550000, 0.580000, 0.600000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Invisible"
	local function __FUNC_957_(arg0, arg1, arg2)
		return HideScoreMeterDueToGameType()
	end

	registerVal7.condition = __FUNC_957_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal2:addElement(registerVal3)
	registerVal2.PanelScale2 = registerVal3
	local registerVal4 = CoD.ScoreInfo_PanelScale.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -124.000000, -39.000000)
	registerVal4:setTopBottom(false, false, -22.000000, 14.000000)
	registerVal4:setRGB(0.550000, 0.580000, 0.600000)
	registerVal2:addElement(registerVal4)
	registerVal2.PanelScale1 = registerVal4
	local registerVal5 = {}
	registerVal6 = {}
	local function __FUNC_9B1_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelScale2:setLeftRight(false, false, -44.500000, 15.500000)
		registerVal2.PanelScale2:setTopBottom(false, false, 391.000000, 422.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PanelScale1:setLeftRight(false, false, -124.000000, -42.500000)
		registerVal2.PanelScale1:setTopBottom(false, false, 386.000000, 422.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_9B1_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_BAC_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelScale2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PanelScale1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_BAC_
	registerVal5.Infected = registerVal6
	registerVal6 = {}
	local function __FUNC_D08_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelScale2:setLeftRight(false, false, -34.000000, 62.000000)
		registerVal2.PanelScale2:setTopBottom(false, false, -4.000000, 14.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PanelScale1:setLeftRight(false, false, -124.000000, -34.000000)
		registerVal2.PanelScale1:setTopBottom(false, false, -22.000000, 14.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_D08_
	registerVal5.Count3 = registerVal6
	registerVal6 = {}
	local function __FUNC_EFF_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelScale2:setLeftRight(false, false, -14.000000, 82.000000)
		registerVal2.PanelScale2:setTopBottom(false, false, -4.000000, 14.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PanelScale1:setLeftRight(false, false, -124.000000, -14.000000)
		registerVal2.PanelScale1:setTopBottom(false, false, -22.000000, 14.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_EFF_
	registerVal5.Count4 = registerVal6
	registerVal6 = {}
	local function __FUNC_10F3_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelScale2:setLeftRight(false, false, 6.000000, 103.000000)
		registerVal2.PanelScale2:setTopBottom(false, false, -4.000000, 14.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PanelScale1:setLeftRight(false, false, -124.000000, 6.000000)
		registerVal2.PanelScale1:setTopBottom(false, false, -22.000000, 14.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_10F3_
	registerVal5.Count5 = registerVal6
	registerVal6 = {}
	local function __FUNC_12E7_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelScale2:setLeftRight(false, false, 26.000000, 122.000000)
		registerVal2.PanelScale2:setTopBottom(false, false, -4.000000, 14.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PanelScale1:setLeftRight(false, false, -124.000000, 26.000000)
		registerVal2.PanelScale1:setTopBottom(false, false, -22.000000, 14.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_12E7_
	registerVal5.Count6 = registerVal6
	registerVal6 = {}
	local function __FUNC_14DB_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelScale2:setLeftRight(false, false, 46.000000, 142.000000)
		registerVal2.PanelScale2:setTopBottom(false, false, -4.000000, 14.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PanelScale1:setLeftRight(false, false, -124.000000, 46.000000)
		registerVal2.PanelScale1:setTopBottom(false, false, -22.000000, 14.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_14DB_
	registerVal5.Count7 = registerVal6
	registerVal2.clipsPerState = registerVal5
	registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Infected"
	local function __FUNC_16CF_(arg0, arg1, arg2)
		return IsGameTypeEqualToString("infect")
	end

	registerVal8.condition = __FUNC_16CF_
	local registerVal9 = {}
	registerVal9.stateName = "Count3"
	local function __FUNC_1739_(arg0, arg2, arg3)
		return IsModelValueLessThan(arg1, "gameScore.playerScore", 1000.000000)
	end

	registerVal9.condition = __FUNC_1739_
	local registerVal10 = {}
	registerVal10.stateName = "Count4"
	local function __FUNC_17BE_(arg0, arg2, arg3)
		return IsModelValueLessThan(arg1, "gameScore.playerScore", 10000.000000)
	end

	registerVal10.condition = __FUNC_17BE_
	local registerVal11 = {}
	registerVal11.stateName = "Count5"
	local function __FUNC_1842_(arg0, arg2, arg3)
		return IsModelValueLessThan(arg1, "gameScore.playerScore", 100000.000000)
	end

	registerVal11.condition = __FUNC_1842_
	local registerVal12 = {}
	registerVal12.stateName = "Count6"
	local function __FUNC_18C6_(arg0, arg2, arg3)
		return IsModelValueLessThan(arg1, "gameScore.playerScore", 1000000.000000)
	end

	registerVal12.condition = __FUNC_18C6_
	local registerVal13 = {}
	registerVal13.stateName = "Count7"
	local function __FUNC_194A_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal13.condition = __FUNC_194A_
	registerVal7 = {registerVal8, registerVal9, registerVal10, registerVal11, registerVal12, registerVal13}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "gameScore.playerScore")
	local function __FUNC_1994_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "gameScore.playerScore"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_1994_)
	local function __FUNC_1ABF_(arg0)
		arg0.PanelScale2:close()
		arg0.PanelScale1:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1ABF_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

