-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.FileShare.SelectedFilmSummaryGameResult")
require("ui.uieditor.widgets.FileShare.SelectedFilmSummaryScoreColumn")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SelectedFilmSummaryInformation = registerVal1
function CoD.SelectedFilmSummaryInformation.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SelectedFilmSummaryInformation)
	registerVal2.id = "SelectedFilmSummaryInformation"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 416.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 115.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 416.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 28.000000)
	registerVal3:setAlpha(0.500000)
	local function __FUNC_D64_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setRGB(registerVal1)
		end
	end

	registerVal3:linkToElementModel(registerVal2, "gameResultColor", true, __FUNC_D64_)
	registerVal2:addElement(registerVal3)
	registerVal2.GameResultBackground = registerVal3
	local registerVal4 = CoD.SelectedFilmSummaryGameResult.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 416.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 48.000000)
	local function __FUNC_DF7_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_DF7_)
	registerVal2:addElement(registerVal4)
	registerVal2.SelectedFilmSummaryGameResult = registerVal4
	local registerVal5 = CoD.SelectedFilmSummaryScoreColumn.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 96.250000)
	registerVal5:setTopBottom(true, false, 32.500000, 82.500000)
	local function __FUNC_E46_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.HeaderText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "column1Header", true, __FUNC_E46_)
	local function __FUNC_F1E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.ValueText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "column1Value", true, __FUNC_F1E_)
	registerVal2:addElement(registerVal5)
	registerVal2.ScoreColumn1 = registerVal5
	local registerVal6 = CoD.SelectedFilmSummaryScoreColumn.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 103.250000, 202.500000)
	registerVal6:setTopBottom(true, false, 32.500000, 82.500000)
	local function __FUNC_FF5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.HeaderText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "column2Header", true, __FUNC_FF5_)
	local function __FUNC_10CE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.ValueText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "column2Value", true, __FUNC_10CE_)
	registerVal2:addElement(registerVal6)
	registerVal2.ScoreColumn2 = registerVal6
	local registerVal7 = CoD.SelectedFilmSummaryScoreColumn.new(arg0, arg1)
	registerVal7:setLeftRight(false, true, -207.500000, -106.250000)
	registerVal7:setTopBottom(true, false, 32.500000, 82.500000)
	local function __FUNC_11A5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.HeaderText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "column3Header", true, __FUNC_11A5_)
	local function __FUNC_127E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.ValueText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "column3Value", true, __FUNC_127E_)
	registerVal2:addElement(registerVal7)
	registerVal2.ScoreColumn3 = registerVal7
	local registerVal8 = CoD.SelectedFilmSummaryScoreColumn.new(arg0, arg1)
	registerVal8:setLeftRight(false, true, -99.250000, 0.000000)
	registerVal8:setTopBottom(true, false, 32.500000, 82.500000)
	local function __FUNC_1355_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.HeaderText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "column4Header", true, __FUNC_1355_)
	local function __FUNC_142E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.ValueText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "column4Value", true, __FUNC_142E_)
	registerVal2:addElement(registerVal8)
	registerVal2.ScoreColumn4 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 1.000000, 416.000000)
	registerVal9:setTopBottom(true, false, 87.500000, 92.500000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setImage(RegisterImage("uie_img_t7_menu_cacselection_itemboxlineforeh"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.Line1 = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_1505_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.GameResultBackground:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.SelectedFilmSummaryGameResult:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ScoreColumn1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ScoreColumn2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ScoreColumn3:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.ScoreColumn4:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal11.DefaultClip = __FUNC_1505_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_17E3_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.GameResultBackground:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.SelectedFilmSummaryGameResult:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ScoreColumn1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ScoreColumn2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ScoreColumn3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.ScoreColumn4:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal11.DefaultClip = __FUNC_17E3_
	registerVal10.Hidden = registerVal11
	registerVal2.clipsPerState = registerVal10
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Hidden"
	local function __FUNC_1ABF_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "isValid")
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_1ABF_
	registerVal12 = {registerVal13}
	registerVal2:mergeStateConditions(registerVal12)
	local function __FUNC_1B33_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isValid"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isValid", true, __FUNC_1B33_)
	local function __FUNC_1C4D_(arg0)
		arg0.SelectedFilmSummaryGameResult:close()
		arg0.ScoreColumn1:close()
		arg0.ScoreColumn2:close()
		arg0.ScoreColumn3:close()
		arg0.ScoreColumn4:close()
		arg0.GameResultBackground:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1C4D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

