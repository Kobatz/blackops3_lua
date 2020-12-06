-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CodCaster.CodCasterPlayerListRowHighlight")
require("ui.uieditor.widgets.HelperWidgets.TextWithBg")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.CodCaster.CodCasterPlayerListHeroStatus")
local function __FUNC_30F_(arg0, arg1, arg2)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.CreateModel(registerVal4, "objectivesUpdated")
	local function __FUNC_48D_(arg2)
		local registerVal1 = arg0:getModel()
		local registerVal2 = Engine.GetModel(registerVal1, "clientNum")
		if registerVal1 and registerVal2 then
			local registerVal3 = Engine.GetModelValue(registerVal2)
			arg0.ObjectiveStatus:setImage(RegisterImage(GetPlayerListObjectiveImage(arg1, registerVal3)))
			arg0.ObjectiveStatus:setRGB(GetPlayerListObjectiveColor(arg1, registerVal3))
		end
	end

	arg0:subscribeToModel(registerVal3, __FUNC_48D_)
	local registerVal7 = Engine.GetModelForController(arg1)
	local registerVal6 = Engine.GetModel(registerVal7, "CodCaster.profileSettingsUpdated")
	local function __FUNC_65A_(arg2)
		local registerVal1 = arg0:getModel()
		local registerVal2 = Engine.GetModel(registerVal1, "clientNum")
		if registerVal1 and arg0.Gamertag and registerVal2 then
			arg0.Gamertag:setText(CodcasterGetDisplayPlayerName(arg1, Engine.GetModelValue(registerVal2)))
		end
	end

	arg0:subscribeToModel(registerVal6, __FUNC_65A_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.CodCasterPlayerListRowWidget = registerVal2
local function __FUNC_7B8_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CodCasterPlayerListRowWidget)
	registerVal2.id = "CodCasterPlayerListRowWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 330.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.700000)
	registerVal2:addElement(registerVal3)
	registerVal2.BlackBar = registerVal3
	local registerVal4 = CoD.CodCasterPlayerListRowHighlight.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, -2.000000, 318.000000)
	registerVal4:setTopBottom(true, false, -4.000000, 23.000000)
	local function __FUNC_1F6A_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_1F6A_)
	registerVal2:addElement(registerVal4)
	registerVal2.highlight = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -1.000000, 335.000000)
	registerVal5:setTopBottom(true, false, -4.000000, 23.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_codcaster_focusback"))
	registerVal2:addElement(registerVal5)
	registerVal2.focus = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -2.000000, 7.000000)
	registerVal6:setTopBottom(true, false, -4.000000, 23.000000)
	registerVal6:setImage(RegisterImage("uie_t7_codcaster_arrow"))
	registerVal2:addElement(registerVal6)
	registerVal2.arrow = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal7:setAlpha(0.050000)
	registerVal2:addElement(registerVal7)
	registerVal2.WhiteFlashBar = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 23.000000, 211.000000)
	registerVal8:setTopBottom(true, false, 1.000000, 20.000000)
	registerVal8:setRGB(1.000000, 0.840000, 0.000000)
	registerVal8:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1FBA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(CodcasterGetDisplayPlayerName(arg1, registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "clientNum", true, __FUNC_1FBA_)
	registerVal2:addElement(registerVal8)
	registerVal2.Gamertag = registerVal8
	local registerVal9 = CoD.TextWithBg.new(arg0, arg1)
	registerVal9:setLeftRight(false, true, -132.000000, -75.000000)
	registerVal9:setTopBottom(true, false, -1.000000, 24.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9.Bg:setAlpha(0.000000)
	registerVal9.Text:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal9.Text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	local function __FUNC_207F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.Text:setText(Engine.Localize(GetScoreboardKDScoreColumn(arg1, 1.000000, 2.000000, registerVal1)))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "clientNumScoreInfoUpdated", true, __FUNC_207F_)
	registerVal2:addElement(registerVal9)
	registerVal2.ScoreColumn1 = registerVal9
	local registerVal10 = CoD.TextWithBg.new(arg0, arg1)
	registerVal10:setLeftRight(false, true, -75.000000, -40.000000)
	registerVal10:setTopBottom(true, false, -1.000000, 24.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10.Bg:setAlpha(0.000000)
	registerVal10.Text:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal10.Text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	local function __FUNC_2192_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.Text:setText(Engine.Localize(GetScoreboardCurrentStreak(arg1, registerVal1)))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "currentStreak", true, __FUNC_2192_)
	registerVal2:addElement(registerVal10)
	registerVal2.ScoreColumn2 = registerVal10
	local registerVal11 = CoD.TextWithBg.new(arg0, arg1)
	registerVal11:setLeftRight(false, true, -40.000000, -5.000000)
	registerVal11:setTopBottom(true, false, -1.000000, 24.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11.Bg:setAlpha(0.000000)
	registerVal11.Text:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal11.Text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	local function __FUNC_2294_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.Text:setText(Engine.Localize(GetScoreboardPlayerScoreColumn(arg1, 3.000000, registerVal1)))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "clientNumScoreInfoUpdated", true, __FUNC_2294_)
	registerVal2:addElement(registerVal11)
	registerVal2.ScoreColumn3 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 3.000000, 22.000000)
	registerVal12:setTopBottom(true, false, 0.000000, 19.000000)
	local function __FUNC_23A5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setupClientStatusImage(registerVal1)
		end
	end

	registerVal12:linkToElementModel(registerVal2, "clientNum", true, __FUNC_23A5_)
	registerVal2:addElement(registerVal12)
	registerVal2.ScoreboardRowDeathIcon = registerVal12
	local registerVal13 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal13:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal13:setTopBottom(false, true, -2.000000, 2.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setZoom(1.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.FocusBarB = registerVal13
	local registerVal14 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal14:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal14:setTopBottom(true, false, -2.000000, 2.000000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setZoom(1.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.FocusBarT = registerVal14
	local registerVal15 = LUI.UIText.new()
	registerVal15:setLeftRight(false, true, -117.000000, -65.000000)
	registerVal15:setTopBottom(true, false, 1.000000, 19.000000)
	registerVal15:setAlpha(0.600000)
	registerVal15:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_2447_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15:setText(Engine.Localize(GetScoreboardKDScoreColumn(arg1, 1.000000, 2.000000, registerVal1)))
		end
	end

	registerVal15:linkToElementModel(registerVal2, "clientNumScoreInfoUpdated", true, __FUNC_2447_)
	registerVal2:addElement(registerVal15)
	registerVal2.Score01 = registerVal15
	local registerVal16 = LUI.UIText.new()
	registerVal16:setLeftRight(false, true, -67.500000, -36.000000)
	registerVal16:setTopBottom(true, false, 1.000000, 19.000000)
	registerVal16:setAlpha(0.600000)
	registerVal16:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal16:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal16:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_2540_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16:setText(Engine.Localize(GetScoreboardCurrentStreak(arg1, registerVal1)))
		end
	end

	registerVal16:linkToElementModel(registerVal2, "currentStreak", true, __FUNC_2540_)
	registerVal2:addElement(registerVal16)
	registerVal2.Score010 = registerVal16
	local registerVal17 = LUI.UIText.new()
	registerVal17:setLeftRight(false, true, -37.250000, -5.750000)
	registerVal17:setTopBottom(true, false, 1.000000, 19.000000)
	registerVal17:setAlpha(0.600000)
	registerVal17:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_262A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17:setText(Engine.Localize(GetScoreboardPlayerScoreColumn(arg1, 3.000000, registerVal1)))
		end
	end

	registerVal17:linkToElementModel(registerVal2, "clientNumScoreInfoUpdated", true, __FUNC_262A_)
	registerVal2:addElement(registerVal17)
	registerVal2.Score0100 = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(true, false, 3.000000, 23.000000)
	registerVal18:setTopBottom(true, false, 0.000000, 20.000000)
	local function __FUNC_271F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal18:setRGB(GetPlayerListObjectiveColor(arg1, registerVal1))
		end
	end

	registerVal18:linkToElementModel(registerVal2, "clientNumScoreInfoUpdated", true, __FUNC_271F_)
	local function __FUNC_27E0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal18:setImage(RegisterImage(GetPlayerListObjectiveImage(arg1, registerVal1)))
		end
	end

	registerVal18:linkToElementModel(registerVal2, "clientNumScoreInfoUpdated", true, __FUNC_27E0_)
	registerVal2:addElement(registerVal18)
	registerVal2.ObjectiveStatus = registerVal18
	local registerVal19 = CoD.CodCasterPlayerListHeroStatus.new(arg0, arg1)
	registerVal19:setLeftRight(false, true, -5.000000, 0.000000)
	registerVal19:setTopBottom(true, false, 0.000000, 20.000000)
	local function __FUNC_28C5_(arg0)
		registerVal19:setModel(arg0, arg1)
	end

	registerVal19:linkToElementModel(registerVal2, nil, false, __FUNC_28C5_)
	registerVal2:addElement(registerVal19)
	registerVal2.CodCasterPlayerListHeroStatus = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(true, false, 43.000000, 72.000000)
	registerVal20:setTopBottom(true, false, -183.980000, 204.980000)
	registerVal20:setAlpha(0.000000)
	registerVal20:setZRot(-90.000000)
	registerVal20:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal20:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal20)
	registerVal2.GlowWhiteOver = registerVal20
	local registerVal21 = {}
	local registerVal22 = {}
	local function __FUNC_2916_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.BlackBar:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.highlight:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.focus:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.focus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.arrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.WhiteFlashBar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Gamertag:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Gamertag:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal9.Text:completeAnimation()
		registerVal2.ScoreColumn1:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn1.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal10.Text:completeAnimation()
		registerVal2.ScoreColumn2:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn2.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal11.Text:completeAnimation()
		registerVal2.ScoreColumn3:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn3.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Score01:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.Score010:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.Score0100:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal22.DefaultClip = __FUNC_2916_
	local function __FUNC_3070_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal4:completeAnimation()
		registerVal2.highlight:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.focus:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.focus:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.arrow:setLeftRight(true, false, -1.000000, 8.000000)
		registerVal2.arrow:setTopBottom(true, false, -4.000000, 23.000000)
		registerVal2.arrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.WhiteFlashBar:setAlpha(0.050000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Gamertag:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Gamertag:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal9.Text:completeAnimation()
		registerVal2.ScoreColumn1:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn1.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal10.Text:completeAnimation()
		registerVal2.ScoreColumn2:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn2.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal11.Text:completeAnimation()
		registerVal2.ScoreColumn3:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreColumn3.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Score01:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.Score010:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.Score0100:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal22.Focus = __FUNC_3070_
	registerVal21.DefaultState = registerVal22
	registerVal22 = {}
	local function __FUNC_377B_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal2.BlackBar:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.highlight:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.focus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.arrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.WhiteFlashBar:setAlpha(0.050000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Gamertag:setRGB(1.000000, 0.840000, 0.000000)
		registerVal2.Gamertag:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Score01:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.Score010:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.Score0100:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal22.DefaultClip = __FUNC_377B_
	local function __FUNC_3C23_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal2.BlackBar:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.highlight:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.focus:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.focus:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.arrow:setLeftRight(true, false, -1.000000, 8.000000)
		registerVal2.arrow:setTopBottom(true, false, -4.000000, 23.000000)
		registerVal2.arrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_41CD_(arg0, arg1)
			local function __FUNC_4347_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.050000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4347_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4347_)
		end

		registerVal7:completeAnimation()
		registerVal2.WhiteFlashBar:setAlpha(0.050000)
		__FUNC_41CD_(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Gamertag:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Gamertag:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Score01:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.Score010:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.Score0100:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		local function __FUNC_44F9_(arg0, arg1)
			local function __FUNC_4673_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4673_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4673_)
		end

		registerVal20:completeAnimation()
		registerVal2.GlowWhiteOver:setAlpha(0.000000)
		__FUNC_44F9_(registerVal20, {})
	end

	registerVal22.Focus = __FUNC_3C23_
	registerVal21.IsSelf = registerVal22
	registerVal2.clipsPerState = registerVal21
	local registerVal23 = {}
	local registerVal24 = {}
	registerVal24.stateName = "IsSelf"
	local function __FUNC_4825_(arg0, arg2, arg3)
		return IsScoreboardPlayerSelf(arg2, arg1)
	end

	registerVal24.condition = __FUNC_4825_
	registerVal23 = {registerVal24}
	registerVal2:mergeStateConditions(registerVal23)
	local function __FUNC_4884_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "clientNum"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "clientNum", true, __FUNC_4884_)
	registerVal24 = Engine.GetModelForController(arg1)
	registerVal23 = Engine.GetModel(registerVal24, "deadSpectator.playerIndex")
	local function __FUNC_49A3_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "deadSpectator.playerIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal23, __FUNC_49A3_)
	registerVal24 = Engine.GetModelForController(arg1)
	registerVal23 = Engine.GetModel(registerVal24, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED))
	local function __FUNC_4ACF_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal23, __FUNC_4ACF_)
	registerVal4.id = "highlight"
	local function __FUNC_4C55_(arg0, arg1)
		local registerVal2 = arg0.highlight:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_4C55_)
	local function __FUNC_4D59_(arg0)
		arg0.highlight:close()
		arg0.ScoreColumn1:close()
		arg0.ScoreColumn2:close()
		arg0.ScoreColumn3:close()
		arg0.FocusBarB:close()
		arg0.FocusBarT:close()
		arg0.CodCasterPlayerListHeroStatus:close()
		arg0.Gamertag:close()
		arg0.ScoreboardRowDeathIcon:close()
		arg0.Score01:close()
		arg0.Score010:close()
		arg0.Score0100:close()
		arg0.ObjectiveStatus:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_4D59_)
	if __FUNC_30F_ then
		__FUNC_30F_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.CodCasterPlayerListRowWidget.new = __FUNC_7B8_
