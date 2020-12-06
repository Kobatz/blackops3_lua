-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.ScoreInfo.ScoreInfo_PanelScale")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ScoreInfo_EnemyScorePanel = registerVal1
function CoD.ScoreInfo_EnemyScorePanel.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ScoreInfo_EnemyScorePanel)
	registerVal2.id = "ScoreInfo_EnemyScorePanel"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 159.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 37.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.ScoreInfo_PanelScale.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -7.000000, 89.000000)
	registerVal3:setTopBottom(false, false, -18.000000, 2.000000)
	registerVal3:setRGB(0.550000, 0.580000, 0.600000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Invisible"
	local function __FUNC_95A_(arg0, arg1, arg2)
		return HideScoreMeterDueToGameType()
	end

	registerVal7.condition = __FUNC_95A_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal2:addElement(registerVal3)
	registerVal2.PanelScale2 = registerVal3
	local registerVal4 = CoD.ScoreInfo_PanelScale.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -98.000000, -5.000000)
	registerVal4:setTopBottom(false, false, -18.000000, 13.000000)
	registerVal4:setRGB(0.550000, 0.580000, 0.600000)
	registerVal2:addElement(registerVal4)
	registerVal2.PanelScale1 = registerVal4
	local registerVal5 = {}
	registerVal6 = {}
	local function __FUNC_9B5_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelScale2:setLeftRight(false, false, 18.000000, 78.000000)
		registerVal2.PanelScale2:setTopBottom(false, false, 177.000000, 208.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PanelScale1:setLeftRight(false, false, -74.000000, 20.000000)
		registerVal2.PanelScale1:setTopBottom(false, false, 177.000000, 208.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_9B5_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_BAB_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelScale2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PanelScale1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_BAB_
	registerVal5.Infect = registerVal6
	registerVal6 = {}
	local function __FUNC_D04_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelScale2:setLeftRight(false, false, 0.000000, 96.000000)
		registerVal2.PanelScale2:setTopBottom(false, false, -18.000000, 2.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PanelScale1:setLeftRight(false, false, -98.000000, 0.000000)
		registerVal2.PanelScale1:setTopBottom(false, false, -18.000000, 13.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_D04_
	registerVal5.Count3 = registerVal6
	registerVal6 = {}
	local function __FUNC_EF6_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelScale2:setLeftRight(false, false, 0.000000, 96.000000)
		registerVal2.PanelScale2:setTopBottom(false, false, -18.000000, 2.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PanelScale1:setLeftRight(false, false, -98.000000, 0.000000)
		registerVal2.PanelScale1:setTopBottom(false, false, -18.000000, 13.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_EF6_
	registerVal5.Count4 = registerVal6
	registerVal6 = {}
	local function __FUNC_10E6_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelScale2:setLeftRight(false, false, 0.000000, 96.000000)
		registerVal2.PanelScale2:setTopBottom(false, false, -18.000000, 2.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PanelScale1:setLeftRight(false, false, -98.000000, 0.000000)
		registerVal2.PanelScale1:setTopBottom(false, false, -18.000000, 13.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_10E6_
	registerVal5.Count5 = registerVal6
	registerVal6 = {}
	local function __FUNC_12D6_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelScale2:setLeftRight(false, false, 12.000000, 108.000000)
		registerVal2.PanelScale2:setTopBottom(false, false, -18.000000, 2.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PanelScale1:setLeftRight(false, false, -98.000000, 12.000000)
		registerVal2.PanelScale1:setTopBottom(false, false, -18.000000, 13.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_12D6_
	registerVal5.Count6 = registerVal6
	registerVal6 = {}
	local function __FUNC_14C6_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelScale2:setLeftRight(false, false, 25.000000, 123.000000)
		registerVal2.PanelScale2:setTopBottom(false, false, -18.000000, 2.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PanelScale1:setLeftRight(false, false, -98.000000, 25.000000)
		registerVal2.PanelScale1:setTopBottom(false, false, -18.000000, 13.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_14C6_
	registerVal5.Count7 = registerVal6
	registerVal2.clipsPerState = registerVal5
	registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Infect"
	local function __FUNC_16B6_(arg0, arg1, arg2)
		return IsGameTypeEqualToString("infect")
	end

	registerVal8.condition = __FUNC_16B6_
	local registerVal9 = {}
	registerVal9.stateName = "Count3"
	local function __FUNC_1721_(arg0, arg2, arg3)
		return IsModelValueLessThan(arg1, "gameScore.enemyScore", 1000.000000)
	end

	registerVal9.condition = __FUNC_1721_
	local registerVal10 = {}
	registerVal10.stateName = "Count4"
	local function __FUNC_17A5_(arg0, arg2, arg3)
		return IsModelValueLessThan(arg1, "gameScore.enemyScore", 10000.000000)
	end

	registerVal10.condition = __FUNC_17A5_
	local registerVal11 = {}
	registerVal11.stateName = "Count5"
	local function __FUNC_1829_(arg0, arg2, arg3)
		return IsModelValueLessThan(arg1, "gameScore.enemyScore", 100000.000000)
	end

	registerVal11.condition = __FUNC_1829_
	local registerVal12 = {}
	registerVal12.stateName = "Count6"
	local function __FUNC_18AD_(arg0, arg2, arg3)
		return IsModelValueLessThan(arg1, "gameScore.enemyScore", 1000000.000000)
	end

	registerVal12.condition = __FUNC_18AD_
	local registerVal13 = {}
	registerVal13.stateName = "Count7"
	local function __FUNC_1931_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal13.condition = __FUNC_1931_
	registerVal7 = {registerVal8, registerVal9, registerVal10, registerVal11, registerVal12, registerVal13}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "gameScore.enemyScore")
	local function __FUNC_197C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "gameScore.enemyScore"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_197C_)
	local function __FUNC_1AA6_(arg0)
		arg0.PanelScale2:close()
		arg0.PanelScale1:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1AA6_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

