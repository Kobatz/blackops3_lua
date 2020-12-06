-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Freerun.FR_TopScore_Box_TimeBlur")
require("ui.uieditor.widgets.Freerun.FR_TopScore_Box_FooterBlur")
require("ui.uieditor.widgets.Notifications.PlayerCard.PlayerCard")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FR_TopScoreWidget = registerVal1
function CoD.FR_TopScoreWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.FR_TopScoreWidget)
	registerVal2.id = "FR_TopScoreWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 556.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 292.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.250000)
	registerVal3:setTopBottom(true, false, 0.000000, 61.810000)
	registerVal3:setImage(RegisterImage("uie_t7_freerun_hud_topscores_headerbox"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.TopScoreBox = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.250000)
	registerVal4:setTopBottom(true, false, 0.000000, 61.810000)
	registerVal4:setAlpha(0.300000)
	registerVal4:setImage(RegisterImage("uie_t7_freerun_hud_topscores_headerbox"))
	registerVal2:addElement(registerVal4)
	registerVal2.TopScoreBox0 = registerVal4
	local registerVal5 = CoD.FR_TopScore_Box_TimeBlur.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 7.300000, -8.240000)
	registerVal5:setTopBottom(true, false, 37.000000, 123.810000)
	registerVal5:setRGB(0.790000, 0.790000, 0.790000)
	registerVal2:addElement(registerVal5)
	registerVal2.FRTopScoreBoxTimeBlur = registerVal5
	local registerVal6 = CoD.FR_TopScore_Box_TimeBlur.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 7.300000, -8.240000)
	registerVal6:setTopBottom(true, false, 104.870000, 191.680000)
	registerVal6:setRGB(0.710000, 0.710000, 0.710000)
	registerVal2:addElement(registerVal6)
	registerVal2.FRTopScoreBoxTimeBlur0 = registerVal6
	local registerVal7 = CoD.FR_TopScore_Box_TimeBlur.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 7.300000, -8.240000)
	registerVal7:setTopBottom(true, false, 172.280000, 259.090000)
	registerVal7:setRGB(0.790000, 0.790000, 0.790000)
	registerVal2:addElement(registerVal7)
	registerVal2.FRTopScoreBoxTimeBlur1 = registerVal7
	local registerVal8 = CoD.FR_TopScore_Box_FooterBlur.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, 0.000000, -2.080000)
	registerVal8:setTopBottom(true, false, 238.430000, 292.000000)
	registerVal8:setRGB(0.620000, 0.620000, 0.620000)
	registerVal2:addElement(registerVal8)
	registerVal2.FRTopScoreBoxFooterBlur = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, false, 393.360000, 838.860000)
	registerVal9:setTopBottom(true, false, 193.870000, 233.870000)
	registerVal9:setTTF("fonts/escom.ttf")
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal9:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1FC7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setText(Engine.Localize(NumberAsTime(registerVal1)))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "topScore3", true, __FUNC_1FC7_)
	registerVal2:addElement(registerVal9)
	registerVal2.HighScoresTextThird = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, false, 393.360000, 853.100000)
	registerVal10:setTopBottom(true, false, 126.000000, 166.000000)
	registerVal10:setTTF("fonts/escom.ttf")
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal10:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_209C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setText(Engine.Localize(NumberAsTime(registerVal1)))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "topScore2", true, __FUNC_209C_)
	registerVal2:addElement(registerVal10)
	registerVal2.HighScoresTextSecond = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, 393.360000, 827.860000)
	registerVal11:setTopBottom(true, false, 58.600000, 98.600000)
	registerVal11:setTTF("fonts/escom.ttf")
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal11:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_2174_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setText(Engine.Localize(NumberAsTime(registerVal1)))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "topScore1", true, __FUNC_2174_)
	registerVal2:addElement(registerVal11)
	registerVal2.HighScoresTextFirst = registerVal11
	local registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(false, false, -72.140000, 109.360000)
	registerVal12:setTopBottom(false, false, -131.840000, -98.160000)
	registerVal12:setRGB(0.000000, 0.000000, 0.000000)
	registerVal12:setText(Engine.Localize("FREERUN_BEST_TIME"))
	registerVal12:setTTF("fonts/escom.ttf")
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal12:setShaderVector(0.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal12:setShaderVector(1.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal12:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal12:setLetterSpacing(1.000000)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal12)
	registerVal2.BestTime = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, true, 8.000000, -8.240000)
	registerVal13:setTopBottom(true, true, 240.230000, -36.110000)
	registerVal13:setAlpha(0.250000)
	registerVal13:setImage(RegisterImage("uie_t7_freerun_hud_infobarright_line"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.LineTop = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, true, 8.000000, -8.240000)
	registerVal14:setTopBottom(true, true, 272.230000, -4.110000)
	registerVal14:setAlpha(0.250000)
	registerVal14:setImage(RegisterImage("uie_t7_freerun_hud_infobarright_line"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.LineBottom = registerVal14
	local registerVal15 = LUI.UITightText.new()
	registerVal15:setLeftRight(true, false, 259.860000, 333.860000)
	registerVal15:setTopBottom(true, false, 255.720000, 275.720000)
	registerVal15:setText(Engine.Localize("MENU_QUIT_CAPS"))
	registerVal15:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal15)
	registerVal2.callsignLabel0 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, 231.860000, 253.860000)
	registerVal16:setTopBottom(true, false, 254.220000, 276.220000)
	local function __FUNC_224C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal16:subscribeToGlobalModel(arg1, "Controller", "alt1_button_image", __FUNC_224C_)
	registerVal2:addElement(registerVal16)
	registerVal2.Button2 = registerVal16
	local registerVal17 = LUI.UITightText.new()
	registerVal17:setLeftRight(true, false, 64.860000, 89.860000)
	registerVal17:setTopBottom(true, false, 256.220000, 276.220000)
	registerVal17:setText(Engine.Localize("MENU_RESTART_LEVEL_CAPS"))
	registerVal17:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal17)
	registerVal2.Label0 = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(true, false, 36.860000, 58.860000)
	registerVal18:setTopBottom(true, false, 254.720000, 276.720000)
	local function __FUNC_2300_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal18:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal18:subscribeToGlobalModel(arg1, "Controller", "primary_button_image", __FUNC_2300_)
	registerVal2:addElement(registerVal18)
	registerVal2.Image0 = registerVal18
	local registerVal19 = LUI.UIText.new()
	registerVal19:setLeftRight(true, false, 337.860000, 380.360000)
	registerVal19:setTopBottom(true, false, 53.870000, 103.870000)
	registerVal19:setText(Engine.Localize("1."))
	registerVal19:setTTF("fonts/escom.ttf")
	registerVal19:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal19:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal19:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal19:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal19:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal19:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal19)
	registerVal2.TextBox0 = registerVal19
	local registerVal20 = LUI.UIText.new()
	registerVal20:setLeftRight(true, false, 327.860000, 370.360000)
	registerVal20:setTopBottom(true, false, 121.000000, 171.000000)
	registerVal20:setText(Engine.Localize("2."))
	registerVal20:setTTF("fonts/escom.ttf")
	registerVal20:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal20:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal20:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal20:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal20:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal20:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal20)
	registerVal2.TextBox1 = registerVal20
	local registerVal21 = LUI.UIText.new()
	registerVal21:setLeftRight(true, false, 327.860000, 370.360000)
	registerVal21:setTopBottom(true, false, 188.870000, 238.870000)
	registerVal21:setText(Engine.Localize("3."))
	registerVal21:setTTF("fonts/escom.ttf")
	registerVal21:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal21:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal21:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal21:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal21:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal21:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal21)
	registerVal2.TextBox2 = registerVal21
	local registerVal22 = LUI.UIImage.new()
	registerVal22:setLeftRight(true, false, 373.360000, 374.360000)
	registerVal22:setTopBottom(true, false, 50.600000, 108.870000)
	registerVal22:setAlpha(0.500000)
	registerVal2:addElement(registerVal22)
	registerVal2.Box = registerVal22
	local registerVal23 = LUI.UIImage.new()
	registerVal23:setLeftRight(true, false, 373.360000, 374.360000)
	registerVal23:setTopBottom(true, false, 117.600000, 176.870000)
	registerVal23:setAlpha(0.500000)
	registerVal2:addElement(registerVal23)
	registerVal2.Box0 = registerVal23
	local registerVal24 = LUI.UIImage.new()
	registerVal24:setLeftRight(true, false, 373.360000, 374.360000)
	registerVal24:setTopBottom(true, false, 243.600000, 186.870000)
	registerVal24:setAlpha(0.500000)
	registerVal2:addElement(registerVal24)
	registerVal2.Box00 = registerVal24
	local registerVal25 = CoD.PlayerCard.new(arg0, arg1)
	registerVal25:setLeftRight(true, false, 22.860000, 319.860000)
	registerVal25:setTopBottom(true, false, 117.600000, 177.600000)
	registerVal25.Image00001:setAlpha(0.000000)
	registerVal25.Image2:setAlpha(0.000000)
	registerVal25.Image000010:setAlpha(0.000000)
	registerVal25.Image20:setAlpha(0.000000)
	local function __FUNC_23B4_(arg0)
		registerVal25:setModel(arg0, arg1)
	end

	registerVal25:linkToElementModel(registerVal2, nil, false, __FUNC_23B4_)
	local function __FUNC_2406_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal25.CalloutHeading:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal25:linkToElementModel(registerVal2, "heading", true, __FUNC_2406_)
	registerVal2:addElement(registerVal25)
	registerVal2.PlayerCard = registerVal25
	local registerVal26 = {}
	local registerVal27 = {}
	local function __FUNC_24E2_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal27.DefaultClip = __FUNC_24E2_
	local function __FUNC_2542_()
		registerVal2:setupElementClipCounter(12.000000)
		local function __FUNC_2AF8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.TopScoreBox:setAlpha(0.000000)
		__FUNC_2AF8_(registerVal3, {})
		local function __FUNC_2CAD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.300000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.TopScoreBox0:setAlpha(0.000000)
		__FUNC_2CAD_(registerVal4, {})
		local function __FUNC_2E61_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.FRTopScoreBoxTimeBlur:setAlpha(0.000000)
		__FUNC_2E61_(registerVal5, {})
		local function __FUNC_3015_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.FRTopScoreBoxTimeBlur0:setAlpha(0.000000)
		__FUNC_3015_(registerVal6, {})
		local function __FUNC_31C9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 800.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.FRTopScoreBoxTimeBlur1:setAlpha(0.000000)
		__FUNC_31C9_(registerVal7, {})
		local function __FUNC_337D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.FRTopScoreBoxFooterBlur:setAlpha(0.000000)
		__FUNC_337D_(registerVal8, {})
		local function __FUNC_3531_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 800.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.HighScoresTextThird:setAlpha(0.000000)
		__FUNC_3531_(registerVal9, {})
		local function __FUNC_36E5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 670.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.HighScoresTextSecond:setAlpha(0.000000)
		__FUNC_36E5_(registerVal10, {})
		local function __FUNC_3899_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.HighScoresTextFirst:setAlpha(0.000000)
		__FUNC_3899_(registerVal11, {})
		local function __FUNC_3A4D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.BestTime:setAlpha(0.000000)
		__FUNC_3A4D_(registerVal12, {})
		local function __FUNC_3C01_(arg0, arg1)
			local function __FUNC_3D58_(arg0, arg1)
				local function __FUNC_3ED3_(arg0, arg1)
					local function __FUNC_404B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, true, 8.000000, -7.740000)
						arg0:setTopBottom(true, true, 240.230000, -37.110000)
						arg0:setAlpha(0.400000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_404B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_404B_)
				end

				if arg1.interrupted then
					__FUNC_3ED3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.400000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3ED3_)
			end

			if arg1.interrupted then
				__FUNC_3D58_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D58_)
		end

		registerVal13:completeAnimation()
		registerVal2.LineTop:setLeftRight(true, true, 8.000000, -7.740000)
		registerVal2.LineTop:setTopBottom(true, true, 240.230000, -37.110000)
		registerVal2.LineTop:setAlpha(0.000000)
		__FUNC_3C01_(registerVal13, {})
		local function __FUNC_426D_(arg0, arg1)
			local function __FUNC_43C4_(arg0, arg1)
				local function __FUNC_453F_(arg0, arg1)
					local function __FUNC_46B7_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, true, 8.000000, -7.740000)
						arg0:setTopBottom(true, true, 272.230000, -5.110000)
						arg0:setAlpha(0.400000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_46B7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_46B7_)
				end

				if arg1.interrupted then
					__FUNC_453F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.400000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_453F_)
			end

			if arg1.interrupted then
				__FUNC_43C4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_43C4_)
		end

		registerVal14:completeAnimation()
		registerVal2.LineBottom:setLeftRight(true, true, 8.000000, -7.740000)
		registerVal2.LineBottom:setTopBottom(true, true, 272.230000, -5.110000)
		registerVal2.LineBottom:setAlpha(0.000000)
		__FUNC_426D_(registerVal14, {})
	end

	registerVal27.Intro = __FUNC_2542_
	registerVal26.DefaultState = registerVal27
	registerVal2.clipsPerState = registerVal26
	local function __FUNC_48D9_(arg0)
		arg0.FRTopScoreBoxTimeBlur:close()
		arg0.FRTopScoreBoxTimeBlur0:close()
		arg0.FRTopScoreBoxTimeBlur1:close()
		arg0.FRTopScoreBoxFooterBlur:close()
		arg0.PlayerCard:close()
		arg0.HighScoresTextThird:close()
		arg0.HighScoresTextSecond:close()
		arg0.HighScoresTextFirst:close()
		arg0.Button2:close()
		arg0.Image0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_48D9_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

