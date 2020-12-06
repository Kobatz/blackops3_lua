-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.EndGameFlow.Top3PlayerScoreBlurBox")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
require("ui.uieditor.widgets.HelperWidgets.TextWithBg")
require("ui.uieditor.widgets.Scoreboard.ScoreboardPingHeader")
require("ui.uieditor.widgets.Scoreboard.ScoreboardHeaderTitleWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ScoreboardHeaderWidget = registerVal1
function CoD.ScoreboardHeaderWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ScoreboardHeaderWidget)
	registerVal2.id = "ScoreboardHeaderWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 868.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Top3PlayerScoreBlurBox.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.500000, 0.500000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_2"))
	registerVal3:setShaderVector(0.000000, 10.000000, 10.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Top3PlayerScoreBlurBox0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BlackBar = registerVal4
	local registerVal5 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.500000, 0.500000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.450000)
	registerVal2:addElement(registerVal5)
	registerVal2.VSpanel = registerVal5
	local registerVal6 = CoD.TextWithBg.new(arg0, arg1)
	registerVal6:setLeftRight(false, true, -433.500000, -346.500000)
	registerVal6:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal6:setAlpha(0.900000)
	registerVal6:setScale(LanguageOverrideNumber("fulljapanese", 0.700000, LanguageOverrideNumber("japanese", 0.700000, 1.000000)))
	registerVal6.Bg:setRGB(0.310000, 0.310000, 0.310000)
	registerVal6.Bg:setAlpha(0.000000)
	registerVal6.Text:setRGB(0.880000, 0.890000, 0.930000)
	registerVal6.Text:setAlpha(0.700000)
	registerVal6.Text:setText(Engine.Localize(GetScoreboardColumnName(arg1, 0.000000, "Score")))
	registerVal6.Text:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal6.Text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal2:addElement(registerVal6)
	registerVal2.ScoreColumn1Header = registerVal6
	local registerVal7 = CoD.TextWithBg.new(arg0, arg1)
	registerVal7:setLeftRight(false, true, -346.500000, -259.500000)
	registerVal7:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal7:setAlpha(0.900000)
	registerVal7:setScale(LanguageOverrideNumber("fulljapanese", 0.700000, LanguageOverrideNumber("japanese", 0.700000, 1.000000)))
	registerVal7.Bg:setRGB(0.310000, 0.310000, 0.310000)
	registerVal7.Bg:setAlpha(0.000000)
	registerVal7.Text:setRGB(0.880000, 0.890000, 0.930000)
	registerVal7.Text:setAlpha(0.700000)
	registerVal7.Text:setText(Engine.Localize(GetScoreboardColumnName(arg1, 1.000000, "Score")))
	registerVal7.Text:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal7.Text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal2:addElement(registerVal7)
	registerVal2.ScoreColumn2Header = registerVal7
	local registerVal8 = CoD.TextWithBg.new(arg0, arg1)
	registerVal8:setLeftRight(false, true, -258.500000, -171.500000)
	registerVal8:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal8:setAlpha(0.900000)
	registerVal8:setScale(LanguageOverrideNumber("fulljapanese", 0.700000, LanguageOverrideNumber("japanese", 0.700000, 1.000000)))
	registerVal8.Bg:setRGB(0.310000, 0.310000, 0.310000)
	registerVal8.Bg:setAlpha(0.000000)
	registerVal8.Text:setRGB(0.880000, 0.890000, 0.930000)
	registerVal8.Text:setAlpha(0.700000)
	registerVal8.Text:setText(Engine.Localize(GetScoreboardColumnName(arg1, 2.000000, "Score")))
	registerVal8.Text:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal8.Text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal2:addElement(registerVal8)
	registerVal2.ScoreColumn3Header = registerVal8
	local registerVal9 = CoD.TextWithBg.new(arg0, arg1)
	registerVal9:setLeftRight(false, true, -172.500000, -85.500000)
	registerVal9:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal9:setAlpha(0.900000)
	registerVal9:setScale(LanguageOverrideNumber("fulljapanese", 0.700000, LanguageOverrideNumber("japanese", 0.700000, 1.000000)))
	registerVal9.Bg:setRGB(0.310000, 0.310000, 0.310000)
	registerVal9.Bg:setAlpha(0.000000)
	registerVal9.Text:setRGB(0.880000, 0.890000, 0.930000)
	registerVal9.Text:setAlpha(0.700000)
	registerVal9.Text:setText(Engine.Localize(GetScoreboardColumnName(arg1, 3.000000, "Score")))
	registerVal9.Text:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal9.Text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal2:addElement(registerVal9)
	registerVal2.ScoreColumn4Header = registerVal9
	local registerVal10 = CoD.TextWithBg.new(arg0, arg1)
	registerVal10:setLeftRight(false, true, -88.500000, -1.500000)
	registerVal10:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal10:setAlpha(0.900000)
	registerVal10:setScale(LanguageOverrideNumber("fulljapanese", 0.700000, LanguageOverrideNumber("japanese", 0.700000, 1.000000)))
	registerVal10.Bg:setRGB(0.310000, 0.310000, 0.310000)
	registerVal10.Bg:setAlpha(0.000000)
	registerVal10.Text:setRGB(0.880000, 0.890000, 0.930000)
	registerVal10.Text:setAlpha(0.700000)
	registerVal10.Text:setText(Engine.Localize(GetScoreboardColumnName(arg1, 4.000000, "Score")))
	registerVal10.Text:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal10.Text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal2:addElement(registerVal10)
	registerVal2.ScoreColumn5Header = registerVal10
	local registerVal11 = CoD.ScoreboardPingHeader.new(arg0, arg1)
	registerVal11:setLeftRight(false, true, 0.000000, 36.000000)
	registerVal11:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal11:setAlpha(GetScoreboardPingBarAlpha(1.000000))
	registerVal2:addElement(registerVal11)
	registerVal2.PingHeader = registerVal11
	local registerVal12 = LUI.UITightText.new()
	registerVal12:setLeftRight(true, false, 9.000000, 63.000000)
	registerVal12:setTopBottom(true, false, 7.500000, 25.500000)
	registerVal12:setTTF("fonts/escom.ttf")
	registerVal12:setLetterSpacing(0.500000)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local function __FUNC_1889_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setupGameTimer()
		end
	end

	registerVal12:subscribeToGlobalModel(arg1, "GameScore", "gameTimeEnd", __FUNC_1889_)
	local function __FUNC_191F_(arg0, arg1)
		SetupAutoHorizontalAlignArabicText(arg0)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal12:registerEventHandler("menu_loaded", __FUNC_191F_)
	registerVal2:addElement(registerVal12)
	registerVal2.GameTimer = registerVal12
	local registerVal13 = CoD.ScoreboardHeaderTitleWidget.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 9.000000, 303.000000)
	registerVal13:setTopBottom(true, false, 7.000000, 25.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.ScoreboardHeaderTitleWidget0 = registerVal13
	local registerVal14 = {}
	local registerVal15 = {}
	local function __FUNC_19C1_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal12:completeAnimation()
		registerVal2.GameTimer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.ScoreboardHeaderTitleWidget0:setLeftRight(true, false, 9.000000, 303.000000)
		registerVal2.ScoreboardHeaderTitleWidget0:setTopBottom(true, false, 7.000000, 25.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_19C1_
	registerVal14.DefaultState = registerVal15
	registerVal15 = {}
	local function __FUNC_1B9F_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal12:completeAnimation()
		registerVal2.GameTimer:setLeftRight(true, false, 9.000000, 63.000000)
		registerVal2.GameTimer:setTopBottom(true, false, 7.000000, 25.000000)
		registerVal2.GameTimer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.ScoreboardHeaderTitleWidget0:setLeftRight(true, false, 76.000000, 370.000000)
		registerVal2.ScoreboardHeaderTitleWidget0:setTopBottom(true, false, 7.000000, 25.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_1B9F_
	registerVal14.ShowTimer = registerVal15
	registerVal2.clipsPerState = registerVal14
	local registerVal16 = {}
	local registerVal17 = {}
	registerVal17.stateName = "ShowTimer"
	local function __FUNC_1DD5_(arg0, arg2, arg3)
		local registerVal3 = IsMultiplayer()
		registerVal3 = IsInGame()
		if registerVal3 and registerVal3 then
			registerVal3 = IsModelValueGreaterThan(arg1, "gameScore.gameTimeEnd", 0.000000)
		end
		return registerVal3
	end

	registerVal17.condition = __FUNC_1DD5_
	registerVal16 = {registerVal17}
	registerVal2:mergeStateConditions(registerVal16)
	registerVal17 = Engine.GetGlobalModel()
	registerVal16 = Engine.GetModel(registerVal17, "lobbyRoot.lobbyNav")
	local function __FUNC_1EA6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal16, __FUNC_1EA6_)
	registerVal17 = Engine.GetModelForController(arg1)
	registerVal16 = Engine.GetModel(registerVal17, "gameScore.gameTimeEnd")
	local function __FUNC_1FCC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "gameScore.gameTimeEnd"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal16, __FUNC_1FCC_)
	local function __FUNC_20F7_(arg0)
		arg0.Top3PlayerScoreBlurBox0:close()
		arg0.VSpanel:close()
		arg0.ScoreColumn1Header:close()
		arg0.ScoreColumn2Header:close()
		arg0.ScoreColumn3Header:close()
		arg0.ScoreColumn4Header:close()
		arg0.ScoreColumn5Header:close()
		arg0.PingHeader:close()
		arg0.ScoreboardHeaderTitleWidget0:close()
		arg0.GameTimer:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_20F7_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

