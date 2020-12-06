-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.EndGameFlow.Top3PlayerScoreBlurBox")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
require("ui.uieditor.widgets.HelperWidgets.TextWithBg")
require("ui.uieditor.widgets.Scoreboard.scoreboardPingBackground")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local function __FUNC_340_(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.GetModel(registerVal4, "factions.isCoDCaster")
	local function __FUNC_42D_(arg2)
		local registerVal1 = arg0:getModel(arg1, "team")
		if registerVal1 then
			Engine.ForceNotifyModelSubscriptions(registerVal1)
		end
	end

	arg0:subscribeToModel(registerVal3, __FUNC_42D_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.ScoreboardRowWidget = registerVal2
local function __FUNC_4E3_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ScoreboardRowWidget)
	registerVal2.id = "ScoreboardRowWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 853.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, -60.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BlackBar = registerVal3
	local registerVal4 = CoD.Top3PlayerScoreBlurBox.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, -60.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_2"))
	registerVal4:setShaderVector(0.000000, 10.000000, 10.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Top3PlayerScoreBlurBox0 = registerVal4
	local registerVal5 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, -60.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.450000)
	registerVal2:addElement(registerVal5)
	registerVal2.VSpanel = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 23.000000, 52.000000)
	registerVal6:setTopBottom(false, false, -10.500000, 11.500000)
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_207D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setRGB(SetToParagonColorIfPrestigeMasterForScoreboard(arg1, 255.000000, 255.000000, 255.000000, registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "clientNum", true, __FUNC_207D_)
	local function __FUNC_2164_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(GetScoreboardPlayerRank(arg1, registerVal1)))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "clientNum", true, __FUNC_2164_)
	registerVal2:addElement(registerVal6)
	registerVal2.Rank = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 52.000000, 76.000000)
	registerVal7:setTopBottom(false, false, -12.000000, 12.000000)
	local function __FUNC_224B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setImage(RegisterImage(GetScoreboardPlayerRankIcon(arg1, registerVal1)))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "clientNum", true, __FUNC_224B_)
	registerVal2:addElement(registerVal7)
	registerVal2.RankIcon = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 82.410000, 335.410000)
	registerVal8:setTopBottom(false, false, -12.000000, 10.000000)
	registerVal8:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_232D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(GetClientNameAndClanTag(arg1, registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "clientNum", true, __FUNC_232D_)
	registerVal2:addElement(registerVal8)
	registerVal2.Gamertag = registerVal8
	local registerVal9 = CoD.TextWithBg.new(arg0, arg1)
	registerVal9:setLeftRight(false, true, -493.090000, -406.090000)
	registerVal9:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal9.Bg:setAlpha(0.300000)
	registerVal9.Text:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal9.Text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	local function __FUNC_23ED_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.Bg:setRGB(GetScoreboardTeamBackgroundColor(arg1, registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "team", true, __FUNC_23ED_)
	local function __FUNC_24CD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.Text:setText(Engine.Localize(GetScoreboardPlayerScoreColumn(arg1, 0.000000, registerVal1)))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "clientNumScoreInfoUpdated", true, __FUNC_24CD_)
	registerVal2:addElement(registerVal9)
	registerVal2.ScoreColumn1 = registerVal9
	local registerVal10 = CoD.TextWithBg.new(arg0, arg1)
	registerVal10:setLeftRight(false, true, -406.090000, -319.090000)
	registerVal10:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal10.Bg:setRGB(0.300000, 0.270000, 0.270000)
	registerVal10.Bg:setAlpha(0.000000)
	registerVal10.Text:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal10.Text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	local function __FUNC_25DD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.Text:setText(Engine.Localize(GetScoreboardPlayerScoreColumn(arg1, 1.000000, registerVal1)))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "clientNumScoreInfoUpdated", true, __FUNC_25DD_)
	registerVal2:addElement(registerVal10)
	registerVal2.ScoreColumn2 = registerVal10
	local registerVal11 = CoD.TextWithBg.new(arg0, arg1)
	registerVal11:setLeftRight(false, true, -319.090000, -232.090000)
	registerVal11:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal11.Bg:setAlpha(0.300000)
	registerVal11.Text:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal11.Text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	local function __FUNC_26ED_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.Bg:setRGB(GetScoreboardTeamBackgroundColor(arg1, registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "team", true, __FUNC_26ED_)
	local function __FUNC_27CD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.Text:setText(Engine.Localize(GetScoreboardPlayerScoreColumn(arg1, 2.000000, registerVal1)))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "clientNumScoreInfoUpdated", true, __FUNC_27CD_)
	registerVal2:addElement(registerVal11)
	registerVal2.ScoreColumn3 = registerVal11
	local registerVal12 = CoD.TextWithBg.new(arg0, arg1)
	registerVal12:setLeftRight(false, true, -232.090000, -145.090000)
	registerVal12:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal12.Bg:setRGB(0.300000, 0.270000, 0.270000)
	registerVal12.Bg:setAlpha(0.000000)
	registerVal12.Text:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal12.Text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	local function __FUNC_28DD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.Text:setText(Engine.Localize(GetScoreboardPlayerScoreColumn(arg1, 3.000000, registerVal1)))
		end
	end

	registerVal12:linkToElementModel(registerVal2, "clientNumScoreInfoUpdated", true, __FUNC_28DD_)
	registerVal2:addElement(registerVal12)
	registerVal2.ScoreColumn4 = registerVal12
	local registerVal13 = CoD.TextWithBg.new(arg0, arg1)
	registerVal13:setLeftRight(false, true, -145.090000, -62.090000)
	registerVal13:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal13.Bg:setAlpha(0.300000)
	registerVal13.Text:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal13.Text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	local function __FUNC_29ED_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.Bg:setRGB(GetScoreboardTeamBackgroundColor(arg1, registerVal1))
		end
	end

	registerVal13:linkToElementModel(registerVal2, "team", true, __FUNC_29ED_)
	local function __FUNC_2ACD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.Text:setText(Engine.Localize(GetScoreboardPlayerScoreColumn(arg1, 4.000000, registerVal1)))
		end
	end

	registerVal13:linkToElementModel(registerVal2, "clientNumScoreInfoUpdated", true, __FUNC_2ACD_)
	registerVal2:addElement(registerVal13)
	registerVal2.ScoreColumn5 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(false, true, -60.000000, -24.000000)
	registerVal14:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal14:setRGB(0.350000, 0.300000, 0.300000)
	registerVal14:setAlpha(GetScoreboardPingValueAlpha(0.500000))
	registerVal2:addElement(registerVal14)
	registerVal2.pvBackground = registerVal14
	local registerVal15 = CoD.scoreboardPingBackground.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 793.000000, 829.000000)
	registerVal15:setTopBottom(true, false, 0.000000, 25.000000)
	local function __FUNC_2BDD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15:setAlpha(GetScoreboardPingBarAlpha(registerVal1))
		end
	end

	registerVal15:linkToElementModel(registerVal2, "ping", true, __FUNC_2BDD_)
	local function __FUNC_2C9C_(arg0)
		registerVal15:setModel(arg0, arg1)
	end

	registerVal15:linkToElementModel(registerVal2, nil, false, __FUNC_2C9C_)
	registerVal2:addElement(registerVal15)
	registerVal2.scoreboardPingBackground = registerVal15
	local registerVal16 = LUI.UIText.new()
	registerVal16:setLeftRight(false, true, -60.000000, -28.000000)
	registerVal16:setTopBottom(false, false, -11.000000, 11.000000)
	registerVal16:setAlpha(GetScoreboardPingValueAlpha(1.000000))
	registerVal16:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal16:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal16:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_2CEE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16:setText(registerVal1)
		end
	end

	registerVal16:linkToElementModel(registerVal2, "ping", true, __FUNC_2CEE_)
	registerVal2:addElement(registerVal16)
	registerVal2.PingText = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(true, false, 342.000000, 363.000000)
	registerVal17:setTopBottom(true, false, 2.500000, 23.500000)
	registerVal17:setAlpha(0.000000)
	local function __FUNC_2D80_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17:setupVoipImage(registerVal1)
		end
	end

	registerVal17:linkToElementModel(registerVal2, "clientNum", true, __FUNC_2D80_)
	registerVal2:addElement(registerVal17)
	registerVal2.VOIPImage = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(true, false, 0.000000, 23.000000)
	registerVal18:setTopBottom(true, false, 1.000000, 24.000000)
	local function __FUNC_2E1B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal18:setupClientStatusImage(registerVal1)
		end
	end

	registerVal18:linkToElementModel(registerVal2, "clientNum", true, __FUNC_2E1B_)
	registerVal2:addElement(registerVal18)
	registerVal2.ScoreboardRowDeathIcon = registerVal18
	local registerVal19 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal19:setLeftRight(true, true, 0.000000, -60.000000)
	registerVal19:setTopBottom(false, true, -2.000000, 2.000000)
	registerVal19:setAlpha(0.000000)
	registerVal19:setZoom(1.000000)
	registerVal2:addElement(registerVal19)
	registerVal2.FocusBarB = registerVal19
	local registerVal20 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal20:setLeftRight(true, true, 0.000000, -60.000000)
	registerVal20:setTopBottom(true, false, -2.000000, 2.000000)
	registerVal20:setAlpha(0.000000)
	registerVal20:setZoom(1.000000)
	registerVal2:addElement(registerVal20)
	registerVal2.FocusBarT = registerVal20
	local registerVal21 = {}
	local registerVal22 = {}
	local function __FUNC_2EBB_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal4:completeAnimation()
		registerVal2.Top3PlayerScoreBlurBox0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Top3PlayerScoreBlurBox0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.Rank:setLeftRight(true, false, 23.000000, 52.000000)
		registerVal2.Rank:setTopBottom(false, false, -11.000000, 10.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.RankIcon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Gamertag:setLeftRight(true, false, 82.000000, 335.000000)
		registerVal2.Gamertag:setTopBottom(false, false, -12.000000, 10.000000)
		registerVal2.Gamertag:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal9.Text:completeAnimation()
		registerVal2.ScoreColumn1:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn1:setAlpha(1.000000)
		registerVal2.ScoreColumn1.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn1.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal10.Text:completeAnimation()
		registerVal2.ScoreColumn2:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn2:setAlpha(1.000000)
		registerVal2.ScoreColumn2.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn2.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal11.Text:completeAnimation()
		registerVal2.ScoreColumn3:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn3:setAlpha(1.000000)
		registerVal2.ScoreColumn3.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn3.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal12.Text:completeAnimation()
		registerVal2.ScoreColumn4:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn4:setAlpha(1.000000)
		registerVal2.ScoreColumn4.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn4.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal13.Text:completeAnimation()
		registerVal2.ScoreColumn5:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn5:setAlpha(1.000000)
		registerVal2.ScoreColumn5.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn5.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal19:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal22.DefaultClip = __FUNC_2EBB_
	local function __FUNC_3743_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal4:completeAnimation()
		registerVal2.Top3PlayerScoreBlurBox0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.RankIcon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Gamertag:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal9.Text:completeAnimation()
		registerVal2.ScoreColumn1:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn1.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn1.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal10.Text:completeAnimation()
		registerVal2.ScoreColumn2:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn2.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn2.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal11.Text:completeAnimation()
		registerVal2.ScoreColumn3:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn3.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn3.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal12.Text:completeAnimation()
		registerVal2.ScoreColumn4:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn4.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn4.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal13.Text:completeAnimation()
		registerVal2.ScoreColumn5:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn5.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn5.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal19:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal22.Focus = __FUNC_3743_
	registerVal21.DefaultState = registerVal22
	registerVal22 = {}
	local function __FUNC_3E21_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal4:completeAnimation()
		registerVal2.Top3PlayerScoreBlurBox0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Top3PlayerScoreBlurBox0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.Rank:setLeftRight(true, false, 23.000000, 52.000000)
		registerVal2.Rank:setTopBottom(false, false, -11.000000, 10.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.RankIcon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Gamertag:setLeftRight(true, false, 82.000000, 335.000000)
		registerVal2.Gamertag:setTopBottom(false, false, -12.000000, 10.000000)
		registerVal2.Gamertag:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal9.Text:completeAnimation()
		registerVal2.ScoreColumn1:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn1:setAlpha(1.000000)
		registerVal2.ScoreColumn1.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn1.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal10.Text:completeAnimation()
		registerVal2.ScoreColumn2:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn2:setAlpha(1.000000)
		registerVal2.ScoreColumn2.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn2.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal11.Text:completeAnimation()
		registerVal2.ScoreColumn3:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn3:setAlpha(1.000000)
		registerVal2.ScoreColumn3.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn3.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal12.Text:completeAnimation()
		registerVal2.ScoreColumn4:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn4:setAlpha(1.000000)
		registerVal2.ScoreColumn4.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn4.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal13.Text:completeAnimation()
		registerVal2.ScoreColumn5:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn5:setAlpha(1.000000)
		registerVal2.ScoreColumn5.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn5.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal19:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal22.DefaultClip = __FUNC_3E21_
	local function __FUNC_46AB_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal4:completeAnimation()
		registerVal2.Top3PlayerScoreBlurBox0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Top3PlayerScoreBlurBox0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.RankIcon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Gamertag:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal9.Text:completeAnimation()
		registerVal2.ScoreColumn1:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn1.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn1.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal10.Text:completeAnimation()
		registerVal2.ScoreColumn2:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn2.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn2.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal11.Text:completeAnimation()
		registerVal2.ScoreColumn3:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn3.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn3.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal12.Text:completeAnimation()
		registerVal2.ScoreColumn4:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn4.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn4.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal13.Text:completeAnimation()
		registerVal2.ScoreColumn5:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn5.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn5.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal19:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal22.Focus = __FUNC_46AB_
	registerVal21.GenesisEndGame = registerVal22
	registerVal22 = {}
	local function __FUNC_4DAA_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal4:completeAnimation()
		registerVal2.Top3PlayerScoreBlurBox0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Top3PlayerScoreBlurBox0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.Rank:setLeftRight(true, false, 23.000000, 52.000000)
		registerVal2.Rank:setTopBottom(false, false, -11.000000, 10.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.RankIcon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Gamertag:setLeftRight(true, false, 82.000000, 335.000000)
		registerVal2.Gamertag:setTopBottom(false, false, -12.000000, 10.000000)
		registerVal2.Gamertag:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal9.Text:completeAnimation()
		registerVal2.ScoreColumn1:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn1:setAlpha(1.000000)
		registerVal2.ScoreColumn1.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn1.Text:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal10.Text:completeAnimation()
		registerVal2.ScoreColumn2:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn2:setAlpha(1.000000)
		registerVal2.ScoreColumn2.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn2.Text:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal11.Text:completeAnimation()
		registerVal2.ScoreColumn3:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn3:setAlpha(1.000000)
		registerVal2.ScoreColumn3.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn3.Text:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal12.Text:completeAnimation()
		registerVal2.ScoreColumn4:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn4:setAlpha(1.000000)
		registerVal2.ScoreColumn4.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn4.Text:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal13.Text:completeAnimation()
		registerVal2.ScoreColumn5:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn5:setAlpha(1.000000)
		registerVal2.ScoreColumn5.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn5.Text:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal19:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal22.DefaultClip = __FUNC_4DAA_
	registerVal21.IsCoDCaster = registerVal22
	registerVal22 = {}
	local function __FUNC_5633_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal4:completeAnimation()
		registerVal2.Top3PlayerScoreBlurBox0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Top3PlayerScoreBlurBox0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.RankIcon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Gamertag:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Gamertag:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal9.Text:completeAnimation()
		registerVal2.ScoreColumn1:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn1:setAlpha(1.000000)
		registerVal2.ScoreColumn1.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn1.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal10.Text:completeAnimation()
		registerVal2.ScoreColumn2:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn2:setAlpha(1.000000)
		registerVal2.ScoreColumn2.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn2.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal11.Text:completeAnimation()
		registerVal2.ScoreColumn3:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn3:setAlpha(1.000000)
		registerVal2.ScoreColumn3.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn3.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal12.Text:completeAnimation()
		registerVal2.ScoreColumn4:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn4:setAlpha(1.000000)
		registerVal2.ScoreColumn4.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn4.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal13.Text:completeAnimation()
		registerVal2.ScoreColumn5:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn5:setAlpha(1.000000)
		registerVal2.ScoreColumn5.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn5.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal19:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal22.DefaultClip = __FUNC_5633_
	registerVal21.FrontendArabic = registerVal22
	registerVal22 = {}
	local function __FUNC_5E21_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal4:completeAnimation()
		registerVal2.Top3PlayerScoreBlurBox0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Top3PlayerScoreBlurBox0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.RankIcon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Gamertag:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal9.Text:completeAnimation()
		registerVal2.ScoreColumn1:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn1:setAlpha(1.000000)
		registerVal2.ScoreColumn1.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn1.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal10.Text:completeAnimation()
		registerVal2.ScoreColumn2:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn2:setAlpha(1.000000)
		registerVal2.ScoreColumn2.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn2.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal11.Text:completeAnimation()
		registerVal2.ScoreColumn3:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn3:setAlpha(1.000000)
		registerVal2.ScoreColumn3.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn3.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal12.Text:completeAnimation()
		registerVal2.ScoreColumn4:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn4:setAlpha(1.000000)
		registerVal2.ScoreColumn4.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn4.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal13.Text:completeAnimation()
		registerVal2.ScoreColumn5:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn5:setAlpha(1.000000)
		registerVal2.ScoreColumn5.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn5.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal19:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal22.DefaultClip = __FUNC_5E21_
	registerVal21.Frontend = registerVal22
	registerVal22 = {}
	local function __FUNC_6586_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal4:completeAnimation()
		registerVal2.Top3PlayerScoreBlurBox0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Top3PlayerScoreBlurBox0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.RankIcon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Gamertag:setRGB(1.000000, 0.840000, 0.040000)
		registerVal2.Gamertag:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal9.Text:completeAnimation()
		registerVal2.ScoreColumn1:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn1:setAlpha(1.000000)
		registerVal2.ScoreColumn1.Text:setRGB(1.000000, 0.840000, 0.040000)
		registerVal2.ScoreColumn1.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal10.Text:completeAnimation()
		registerVal2.ScoreColumn2:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn2:setAlpha(1.000000)
		registerVal2.ScoreColumn2.Text:setRGB(1.000000, 0.840000, 0.040000)
		registerVal2.ScoreColumn2.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal11.Text:completeAnimation()
		registerVal2.ScoreColumn3:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn3:setAlpha(1.000000)
		registerVal2.ScoreColumn3.Text:setRGB(1.000000, 0.840000, 0.040000)
		registerVal2.ScoreColumn3.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal12.Text:completeAnimation()
		registerVal2.ScoreColumn4:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn4:setAlpha(1.000000)
		registerVal2.ScoreColumn4.Text:setRGB(1.000000, 0.840000, 0.040000)
		registerVal2.ScoreColumn4.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal13.Text:completeAnimation()
		registerVal2.ScoreColumn5:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn5:setAlpha(1.000000)
		registerVal2.ScoreColumn5.Text:setRGB(1.000000, 0.840000, 0.040000)
		registerVal2.ScoreColumn5.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal19:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal22.DefaultClip = __FUNC_6586_
	local function __FUNC_6D7F_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal4:completeAnimation()
		registerVal2.Top3PlayerScoreBlurBox0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.RankIcon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Gamertag:setRGB(1.000000, 0.840000, 0.040000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal9.Text:completeAnimation()
		registerVal2.ScoreColumn1:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn1.Text:setRGB(1.000000, 0.840000, 0.040000)
		registerVal2.ScoreColumn1.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal10.Text:completeAnimation()
		registerVal2.ScoreColumn2:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn2.Text:setRGB(1.000000, 0.840000, 0.040000)
		registerVal2.ScoreColumn2.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal11.Text:completeAnimation()
		registerVal2.ScoreColumn3:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn3.Text:setRGB(1.000000, 0.840000, 0.040000)
		registerVal2.ScoreColumn3.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal12.Text:completeAnimation()
		registerVal2.ScoreColumn4:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn4.Text:setRGB(1.000000, 0.840000, 0.040000)
		registerVal2.ScoreColumn4.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal13.Text:completeAnimation()
		registerVal2.ScoreColumn5:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn5.Text:setRGB(1.000000, 0.840000, 0.040000)
		registerVal2.ScoreColumn5.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal19:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal22.Focus = __FUNC_6D7F_
	registerVal21.IsSelfArabic = registerVal22
	registerVal22 = {}
	local function __FUNC_7467_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal4:completeAnimation()
		registerVal2.Top3PlayerScoreBlurBox0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Top3PlayerScoreBlurBox0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.RankIcon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Gamertag:setRGB(1.000000, 0.840000, 0.040000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal9.Text:completeAnimation()
		registerVal2.ScoreColumn1:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn1:setAlpha(1.000000)
		registerVal2.ScoreColumn1.Text:setRGB(1.000000, 0.840000, 0.040000)
		registerVal2.ScoreColumn1.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal10.Text:completeAnimation()
		registerVal2.ScoreColumn2:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn2:setAlpha(1.000000)
		registerVal2.ScoreColumn2.Text:setRGB(1.000000, 0.840000, 0.040000)
		registerVal2.ScoreColumn2.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal11.Text:completeAnimation()
		registerVal2.ScoreColumn3:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn3:setAlpha(1.000000)
		registerVal2.ScoreColumn3.Text:setRGB(1.000000, 0.840000, 0.040000)
		registerVal2.ScoreColumn3.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal12.Text:completeAnimation()
		registerVal2.ScoreColumn4:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn4:setAlpha(1.000000)
		registerVal2.ScoreColumn4.Text:setRGB(1.000000, 0.840000, 0.040000)
		registerVal2.ScoreColumn4.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal13.Text:completeAnimation()
		registerVal2.ScoreColumn5:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn5:setAlpha(1.000000)
		registerVal2.ScoreColumn5.Text:setRGB(1.000000, 0.840000, 0.040000)
		registerVal2.ScoreColumn5.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal19:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal22.DefaultClip = __FUNC_7467_
	local function __FUNC_7BD4_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal4:completeAnimation()
		registerVal2.Top3PlayerScoreBlurBox0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.RankIcon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Gamertag:setRGB(1.000000, 0.840000, 0.040000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal9.Text:completeAnimation()
		registerVal2.ScoreColumn1:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn1.Text:setRGB(1.000000, 0.840000, 0.040000)
		registerVal2.ScoreColumn1.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal10.Text:completeAnimation()
		registerVal2.ScoreColumn2:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn2.Text:setRGB(1.000000, 0.840000, 0.040000)
		registerVal2.ScoreColumn2.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal11.Text:completeAnimation()
		registerVal2.ScoreColumn3:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn3.Text:setRGB(1.000000, 0.840000, 0.040000)
		registerVal2.ScoreColumn3.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal12.Text:completeAnimation()
		registerVal2.ScoreColumn4:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn4.Text:setRGB(1.000000, 0.840000, 0.040000)
		registerVal2.ScoreColumn4.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal13.Text:completeAnimation()
		registerVal2.ScoreColumn5:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn5.Text:setRGB(1.000000, 0.840000, 0.040000)
		registerVal2.ScoreColumn5.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal19:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal22.Focus = __FUNC_7BD4_
	registerVal21.IsSelf = registerVal22
	registerVal22 = {}
	local function __FUNC_82BF_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal4:completeAnimation()
		registerVal2.Top3PlayerScoreBlurBox0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.Rank:setLeftRight(true, false, 23.000000, 52.000000)
		registerVal2.Rank:setTopBottom(false, false, -11.000000, 10.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.RankIcon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Gamertag:setLeftRight(true, false, 82.000000, 335.000000)
		registerVal2.Gamertag:setTopBottom(false, false, -12.000000, 10.000000)
		registerVal2.Gamertag:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Gamertag:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal9.Text:completeAnimation()
		registerVal2.ScoreColumn1:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn1:setAlpha(1.000000)
		registerVal2.ScoreColumn1.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn1.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal10.Text:completeAnimation()
		registerVal2.ScoreColumn2:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn2:setAlpha(1.000000)
		registerVal2.ScoreColumn2.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn2.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal11.Text:completeAnimation()
		registerVal2.ScoreColumn3:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn3:setAlpha(1.000000)
		registerVal2.ScoreColumn3.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn3.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal12.Text:completeAnimation()
		registerVal2.ScoreColumn4:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn4:setAlpha(1.000000)
		registerVal2.ScoreColumn4.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn4.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal13.Text:completeAnimation()
		registerVal2.ScoreColumn5:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn5:setAlpha(1.000000)
		registerVal2.ScoreColumn5.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn5.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal19:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal22.DefaultClip = __FUNC_82BF_
	local function __FUNC_8BB6_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal4:completeAnimation()
		registerVal2.Top3PlayerScoreBlurBox0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.RankIcon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Gamertag:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal9.Text:completeAnimation()
		registerVal2.ScoreColumn1:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn1.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn1.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal10.Text:completeAnimation()
		registerVal2.ScoreColumn2:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn2.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn2.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal11.Text:completeAnimation()
		registerVal2.ScoreColumn3:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn3.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn3.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal12.Text:completeAnimation()
		registerVal2.ScoreColumn4:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn4.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn4.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal13.Text:completeAnimation()
		registerVal2.ScoreColumn5:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn5.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn5.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal19:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal22.Focus = __FUNC_8BB6_
	registerVal21.DefaultStateArabic = registerVal22
	registerVal2.clipsPerState = registerVal21
	local registerVal23 = {}
	local registerVal24 = {}
	registerVal24.stateName = "GenesisEndGame"
	local function __FUNC_9295_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_GAME_ENDED)
		registerVal3 = IsMapName("zm_genesis")
		if registerVal3 and registerVal3 then
			registerVal3 = IsGenesisEECompleted(arg1)
		end
		return registerVal3
	end

	registerVal24.condition = __FUNC_9295_
	local registerVal25 = {}
	registerVal25.stateName = "IsCoDCaster"
	local function __FUNC_93D0_(arg0, arg2, arg3)
		return IsScoreboardPlayerCodCaster(arg1, arg2)
	end

	registerVal25.condition = __FUNC_93D0_
	local registerVal26 = {}
	registerVal26.stateName = "FrontendArabic"
	local function __FUNC_9435_(arg0, arg1, arg2)
		local registerVal3 = IsInGame()
		if not registerVal3 then
			registerVal3 = IsCurrentLanguageArabic()
		else
		end
		return true
	end

	registerVal26.condition = __FUNC_9435_
	local registerVal27 = {}
	registerVal27.stateName = "Frontend"
	local function __FUNC_94BB_(arg0, arg1, arg2)
		local registerVal3 = IsInGame()
		if not registerVal3 then
			registerVal3 = IsCurrentLanguageArabic()
		else
		end
		return true
	end

	registerVal27.condition = __FUNC_94BB_
	local registerVal28 = {}
	registerVal28.stateName = "IsSelfArabic"
	local function __FUNC_9543_(arg0, arg2, arg3)
		local registerVal3 = IsScoreboardPlayerSelf(arg2, arg1)
		if registerVal3 then
			registerVal3 = IsCurrentLanguageArabic()
		end
		return registerVal3
	end

	registerVal28.condition = __FUNC_9543_
	local registerVal29 = {}
	registerVal29.stateName = "IsSelf"
	local function __FUNC_95D1_(arg0, arg2, arg3)
		local registerVal3 = IsScoreboardPlayerSelf(arg2, arg1)
		if registerVal3 then
			registerVal3 = IsCurrentLanguageArabic()
		end
		return (not registerVal3)
	end

	registerVal29.condition = __FUNC_95D1_
	local registerVal30 = {}
	registerVal30.stateName = "DefaultStateArabic"
	local function __FUNC_9665_(arg0, arg1, arg2)
		return IsCurrentLanguageArabic()
	end

	registerVal30.condition = __FUNC_9665_
	registerVal23 = {registerVal24, registerVal25, registerVal26, registerVal27, registerVal28, registerVal29, registerVal30}
	registerVal2:mergeStateConditions(registerVal23)
	registerVal24 = Engine.GetModelForController(arg1)
	registerVal23 = Engine.GetModel(registerVal24, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED))
	local function __FUNC_96BD_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal23, __FUNC_96BD_)
	local function __FUNC_9845_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "clientNum"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "clientNum", true, __FUNC_9845_)
	registerVal24 = Engine.GetModelForController(arg1)
	registerVal23 = Engine.GetModel(registerVal24, "deadSpectator.playerIndex")
	local function __FUNC_9963_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "deadSpectator.playerIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal23, __FUNC_9963_)
	registerVal15.id = "scoreboardPingBackground"
	local function __FUNC_9A8F_(arg0, arg1)
		local registerVal2 = arg0.scoreboardPingBackground:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_9A8F_)
	local function __FUNC_9BA0_(arg0)
		arg0.Top3PlayerScoreBlurBox0:close()
		arg0.VSpanel:close()
		arg0.ScoreColumn1:close()
		arg0.ScoreColumn2:close()
		arg0.ScoreColumn3:close()
		arg0.ScoreColumn4:close()
		arg0.ScoreColumn5:close()
		arg0.scoreboardPingBackground:close()
		arg0.FocusBarB:close()
		arg0.FocusBarT:close()
		arg0.Rank:close()
		arg0.RankIcon:close()
		arg0.Gamertag:close()
		arg0.PingText:close()
		arg0.VOIPImage:close()
		arg0.ScoreboardRowDeathIcon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_9BA0_)
	if __FUNC_340_ then
		__FUNC_340_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ScoreboardRowWidget.new = __FUNC_4E3_
