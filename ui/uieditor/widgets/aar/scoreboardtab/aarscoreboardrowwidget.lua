-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HelperWidgets.TextWithBg")
local function __FUNC_21A_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	Engine.CreateModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED))
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.AARScoreboardRowWidget = registerVal2
local function __FUNC_331_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_21A_ then
		__FUNC_21A_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AARScoreboardRowWidget)
	registerVal2.id = "AARScoreboardRowWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 773.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 771.910000)
	registerVal3:setTopBottom(true, false, 0.500000, 25.500000)
	registerVal3:setAlpha(0.020000)
	registerVal2:addElement(registerVal3)
	registerVal2.white = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 0.000000, 29.000000)
	registerVal4:setTopBottom(false, false, -10.500000, 11.500000)
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_12B2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setRGB(SetToParagonColorIfPrestigeMasterForScoreboard(arg1, 255.000000, 255.000000, 255.000000, registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "clientNum", true, __FUNC_12B2_)
	local function __FUNC_1398_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(GetScoreboardPlayerRank(arg1, registerVal1)))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "clientNum", true, __FUNC_1398_)
	registerVal2:addElement(registerVal4)
	registerVal2.Rank = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 30.000000, 54.000000)
	registerVal5:setTopBottom(false, false, -12.000000, 12.000000)
	local function __FUNC_147F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setImage(RegisterImage(GetScoreboardPlayerRankIcon(arg1, registerVal1)))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "clientNum", true, __FUNC_147F_)
	registerVal2:addElement(registerVal5)
	registerVal2.RankIcon = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 63.410000, 312.410000)
	registerVal6:setTopBottom(false, false, -12.000000, 10.000000)
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1561_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(GetScoreboardPlayerName(arg1, registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "clientNum", true, __FUNC_1561_)
	registerVal2:addElement(registerVal6)
	registerVal2.Gamertag = registerVal6
	local registerVal7 = CoD.TextWithBg.new(arg0, arg1)
	registerVal7:setLeftRight(false, true, -432.090000, -345.090000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal7.Bg:setAlpha(0.300000)
	registerVal7.Text:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal7.Text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	local function __FUNC_1621_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.Bg:setRGB(GetScoreboardTeamBackgroundColor(arg1, registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "team", true, __FUNC_1621_)
	local function __FUNC_1701_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.Text:setText(Engine.Localize(GetScoreboardPlayerScoreColumn(arg1, 0.000000, registerVal1)))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "clientNum", true, __FUNC_1701_)
	registerVal2:addElement(registerVal7)
	registerVal2.ScoreColumn1 = registerVal7
	local registerVal8 = CoD.TextWithBg.new(arg0, arg1)
	registerVal8:setLeftRight(false, true, -345.090000, -258.090000)
	registerVal8:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal8.Bg:setRGB(0.300000, 0.270000, 0.270000)
	registerVal8.Bg:setAlpha(0.000000)
	registerVal8.Text:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal8.Text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	local function __FUNC_1811_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.Text:setText(Engine.Localize(GetScoreboardPlayerScoreColumn(arg1, 1.000000, registerVal1)))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "clientNum", true, __FUNC_1811_)
	registerVal2:addElement(registerVal8)
	registerVal2.ScoreColumn2 = registerVal8
	local registerVal9 = CoD.TextWithBg.new(arg0, arg1)
	registerVal9:setLeftRight(false, true, -258.090000, -171.090000)
	registerVal9:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal9.Bg:setAlpha(0.300000)
	registerVal9.Text:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal9.Text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	local function __FUNC_1921_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.Bg:setRGB(GetScoreboardTeamBackgroundColor(arg1, registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "team", true, __FUNC_1921_)
	local function __FUNC_1A01_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.Text:setText(Engine.Localize(GetScoreboardPlayerScoreColumn(arg1, 2.000000, registerVal1)))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "clientNum", true, __FUNC_1A01_)
	registerVal2:addElement(registerVal9)
	registerVal2.ScoreColumn3 = registerVal9
	local registerVal10 = CoD.TextWithBg.new(arg0, arg1)
	registerVal10:setLeftRight(false, true, -171.090000, -84.090000)
	registerVal10:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal10.Bg:setRGB(0.300000, 0.270000, 0.270000)
	registerVal10.Bg:setAlpha(0.000000)
	registerVal10.Text:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal10.Text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	local function __FUNC_1B11_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.Text:setText(Engine.Localize(GetScoreboardPlayerScoreColumn(arg1, 3.000000, registerVal1)))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "clientNum", true, __FUNC_1B11_)
	registerVal2:addElement(registerVal10)
	registerVal2.ScoreColumn4 = registerVal10
	local registerVal11 = CoD.TextWithBg.new(arg0, arg1)
	registerVal11:setLeftRight(false, true, -84.090000, -1.090000)
	registerVal11:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal11.Bg:setAlpha(0.300000)
	registerVal11.Text:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal11.Text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	local function __FUNC_1C21_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.Bg:setRGB(GetScoreboardTeamBackgroundColor(arg1, registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "team", true, __FUNC_1C21_)
	local function __FUNC_1D01_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.Text:setText(Engine.Localize(GetScoreboardPlayerScoreColumn(arg1, 4.000000, registerVal1)))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "clientNum", true, __FUNC_1D01_)
	registerVal2:addElement(registerVal11)
	registerVal2.ScoreColumn5 = registerVal11
	local registerVal12 = {}
	local registerVal13 = {}
	local function __FUNC_1E11_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.white:setAlpha(0.040000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal6:completeAnimation()
		registerVal2.Gamertag:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal7.Text:completeAnimation()
		registerVal2.ScoreColumn1:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn1.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal8.Text:completeAnimation()
		registerVal2.ScoreColumn2:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn2.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal9.Text:completeAnimation()
		registerVal2.ScoreColumn3:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn3.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal10.Text:completeAnimation()
		registerVal2.ScoreColumn4:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn4.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal11.Text:completeAnimation()
		registerVal2.ScoreColumn5:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn5.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_1E11_
	registerVal12.DefaultState = registerVal13
	registerVal13 = {}
	local function __FUNC_22E0_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.white:setAlpha(0.040000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal6:completeAnimation()
		registerVal2.Gamertag:setRGB(1.000000, 0.840000, 0.040000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal7.Text:completeAnimation()
		registerVal2.ScoreColumn1:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn1.Text:setRGB(1.000000, 0.840000, 0.040000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal8.Text:completeAnimation()
		registerVal2.ScoreColumn2:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn2.Text:setRGB(1.000000, 0.840000, 0.040000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal9.Text:completeAnimation()
		registerVal2.ScoreColumn3:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn3.Text:setRGB(1.000000, 0.840000, 0.040000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal10.Text:completeAnimation()
		registerVal2.ScoreColumn4:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn4.Text:setRGB(1.000000, 0.840000, 0.040000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal11.Text:completeAnimation()
		registerVal2.ScoreColumn5:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn5.Text:setRGB(1.000000, 0.840000, 0.040000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_22E0_
	registerVal12.IsSelf = registerVal13
	registerVal2.clipsPerState = registerVal12
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "IsSelf"
	local function __FUNC_27B5_(arg0, arg2, arg3)
		return IsScoreboardPlayerSelf(arg2, arg1)
	end

	registerVal15.condition = __FUNC_27B5_
	registerVal14 = {registerVal15}
	registerVal2:mergeStateConditions(registerVal14)
	local function __FUNC_2814_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "clientNum"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "clientNum", true, __FUNC_2814_)
	registerVal15 = Engine.GetModelForController(arg1)
	registerVal14 = Engine.GetModel(registerVal15, "deadSpectator.playerIndex")
	local function __FUNC_2933_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "deadSpectator.playerIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal14, __FUNC_2933_)
	registerVal15 = Engine.GetModelForController(arg1)
	registerVal14 = Engine.GetModel(registerVal15, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED))
	local function __FUNC_2A5F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal14, __FUNC_2A5F_)
	local function __FUNC_2BE5_(arg0)
		arg0.ScoreColumn1:close()
		arg0.ScoreColumn2:close()
		arg0.ScoreColumn3:close()
		arg0.ScoreColumn4:close()
		arg0.ScoreColumn5:close()
		arg0.Rank:close()
		arg0.RankIcon:close()
		arg0.Gamertag:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2BE5_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.AARScoreboardRowWidget.new = __FUNC_331_
