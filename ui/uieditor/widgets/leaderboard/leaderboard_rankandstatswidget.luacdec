-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ImageA")
require("ui.uieditor.widgets.Lobby.Common.FE_SlideSubHeader")
require("ui.uieditor.widgets.Lobby.Common.FE_ListHeader")
require("ui.uieditor.widgets.Leaderboard.Leaderboard_StatWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Leaderboard_RankAndStatsWidget = registerVal1
function CoD.Leaderboard_RankAndStatsWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Leaderboard_RankAndStatsWidget)
	registerVal2.id = "Leaderboard_RankAndStatsWidget"
	registerVal2.soundSet = "CAC_PrimaryWeapon"
	registerVal2:setLeftRight(true, false, 0.000000, 320.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 200.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FE_ImageA.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 4.000000, 88.000000)
	registerVal3:setTopBottom(true, false, 3.000000, 87.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.rankIcon = registerVal3
	local registerVal4 = CoD.FE_SlideSubHeader.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 99.900000, 228.900000)
	registerVal4:setTopBottom(true, false, 45.000000, 81.000000)
	registerVal4.FELabelSubHeadingD0.Label0:setText(Engine.Localize(PrependLocalizedStringWithSeparator("MENU_LEVEL_CAPS", " ", "")))
	registerVal2:addElement(registerVal4)
	registerVal2.rankText = registerVal4
	local registerVal5 = CoD.FE_ListHeader.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 100.000000, 305.000000)
	registerVal5:setTopBottom(true, false, 12.880000, 40.880000)
	registerVal5.btnDisplayTextStroke:setText("")
	registerVal5.btnDisplayTextStroke:setShaderVector(0.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal5.btnDisplayTextStroke:setShaderVector(1.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal5.btnDisplayTextStroke:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal5.btnDisplayTextStroke:setLetterSpacing(0.500000)
	registerVal2:addElement(registerVal5)
	registerVal2.ListHeader0 = registerVal5
	local registerVal6 = CoD.Leaderboard_StatWidget.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 4.000000, 104.000000)
	registerVal6:setTopBottom(true, false, 100.000000, 185.000000)
	registerVal6.StatText:setText("")
	registerVal6.btnDisplayTextStroke:setText("")
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Hidden"
	local function __FUNC_F09_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal10.condition = __FUNC_F09_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal2:addElement(registerVal6)
	registerVal2.StatWidget1 = registerVal6
	local registerVal7 = CoD.Leaderboard_StatWidget.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -50.000000, 50.000000)
	registerVal7:setTopBottom(true, false, 100.000000, 185.000000)
	registerVal7.StatText:setText("")
	registerVal7.btnDisplayTextStroke:setText("")
	registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Hidden"
	local function __FUNC_F55_(arg0, arg2, arg3)
		return IsGlobalModelValueLessThan(arg1, "leaderboard.header.numDataColumns", 2.000000)
	end

	registerVal11.condition = __FUNC_F55_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetGlobalModel()
	registerVal10 = Engine.GetModel(registerVal11, "leaderboard.header.numDataColumns")
	local function __FUNC_FEC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "leaderboard.header.numDataColumns"
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:subscribeToModel(registerVal10, __FUNC_FEC_)
	registerVal2:addElement(registerVal7)
	registerVal2.StatWidget2 = registerVal7
	local registerVal8 = CoD.Leaderboard_StatWidget.new(arg0, arg1)
	registerVal8:setLeftRight(false, true, -104.000000, -4.000000)
	registerVal8:setTopBottom(true, false, 100.000000, 185.000000)
	registerVal8.StatText:setText("")
	registerVal8.btnDisplayTextStroke:setText("")
	registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "Hidden"
	local function __FUNC_1123_(arg0, arg2, arg3)
		return IsGlobalModelValueLessThan(arg1, "leaderboard.header.numDataColumns", 3.000000)
	end

	registerVal12.condition = __FUNC_1123_
	registerVal11 = {registerVal12}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal12 = Engine.GetGlobalModel()
	registerVal11 = Engine.GetModel(registerVal12, "leaderboard.header.numDataColumns")
	local function __FUNC_11B8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "leaderboard.header.numDataColumns"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_11B8_)
	registerVal2:addElement(registerVal8)
	registerVal2.StatWidget3 = registerVal8
	registerVal9 = {}
	registerVal10 = {}
	local function __FUNC_12EF_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.rankIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.rankText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ListHeader0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.StatWidget1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.StatWidget2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.StatWidget3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_12EF_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_15A6_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.rankIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.rankText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ListHeader0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.StatWidget1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.StatWidget2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.StatWidget3:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_15A6_
	registerVal9.Visible = registerVal10
	registerVal10 = {}
	local function __FUNC_185E_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.rankIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.rankText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ListHeader0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.StatWidget1:setLeftRight(true, false, 4.000000, 104.000000)
		registerVal2.StatWidget1:setTopBottom(true, false, 2.000000, 87.000000)
		registerVal2.StatWidget1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.StatWidget2:setLeftRight(false, false, -50.000000, 50.000000)
		registerVal2.StatWidget2:setTopBottom(true, false, 2.000000, 87.000000)
		registerVal2.StatWidget2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.StatWidget3:setLeftRight(false, true, -104.000000, -4.000000)
		registerVal2.StatWidget3:setTopBottom(true, false, 2.000000, 87.000000)
		registerVal2.StatWidget3:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_185E_
	registerVal9.Freerun = registerVal10
	registerVal10 = {}
	local function __FUNC_1C5F_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.rankIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.rankText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ListHeader0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.StatWidget1:setLeftRight(true, false, 4.000000, 104.000000)
		registerVal2.StatWidget1:setTopBottom(true, false, 2.000000, 87.000000)
		registerVal2.StatWidget1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.StatWidget2:setLeftRight(false, false, -50.000000, 50.000000)
		registerVal2.StatWidget2:setTopBottom(true, false, 2.000000, 87.000000)
		registerVal2.StatWidget2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.StatWidget3:setLeftRight(false, true, -104.000000, -4.000000)
		registerVal2.StatWidget3:setTopBottom(true, false, 2.000000, 87.000000)
		registerVal2.StatWidget3:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_1C5F_
	registerVal9.DOA = registerVal10
	registerVal10 = {}
	local function __FUNC_205F_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.rankIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.rankText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ListHeader0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.StatWidget1:setLeftRight(true, false, 4.000000, 104.000000)
		registerVal2.StatWidget1:setTopBottom(true, false, 2.000000, 87.000000)
		registerVal2.StatWidget1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.StatWidget2:setLeftRight(false, false, -50.000000, 50.000000)
		registerVal2.StatWidget2:setTopBottom(true, false, 2.000000, 87.000000)
		registerVal2.StatWidget2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.StatWidget3:setLeftRight(false, true, -104.000000, -4.000000)
		registerVal2.StatWidget3:setTopBottom(true, false, 2.000000, 87.000000)
		registerVal2.StatWidget3:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_205F_
	registerVal9.Rankless = registerVal10
	registerVal2.clipsPerState = registerVal9
	local function __FUNC_245F_(arg0)
		arg0.rankIcon:close()
		arg0.rankText:close()
		arg0.ListHeader0:close()
		arg0.StatWidget1:close()
		arg0.StatWidget2:close()
		arg0.StatWidget3:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_245F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

