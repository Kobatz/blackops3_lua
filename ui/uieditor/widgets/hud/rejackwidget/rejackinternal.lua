-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1CF_(arg0, arg1, arg2)
	local registerVal5 = Engine.CurrentGameTime()
	arg0:playClip("HeartBeat")
	local registerVal9 = Engine.GetModelForController(arg1)
	local registerVal8 = Engine.CreateModel(registerVal9, "hudItems.rejack.countdownText")
	Engine.SetModelValue(registerVal8, arg0.startVal)
	arg0.countdownText = arg0.startVal
	local function __FUNC_434_()
		arg0.countdownText = (arg0.countdownText - 1.000000)
		if arg0.endVal <= arg0.countdownText then
			local registerVal2 = Engine.GetModelForController(arg1)
			local registerVal1 = Engine.CreateModel(registerVal2, "hudItems.rejack.countdownText")
			Engine.SetModelValue(registerVal1, arg0.countdownText)
		else
			arg0.countdownTimer:close()
			arg0:playClip("DefaultClip")
		end
	end

	local registerVal7 = LUI.UITimer.newElementTimer(((arg2 - registerVal5) / (arg0.startVal - arg0.endVal)), false, __FUNC_434_)
	arg0.countdownTimer = registerVal7
	arg0:addElement(arg0.countdownTimer)
end

local function __FUNC_604_(arg0, arg1)
	arg0.countdownTimer:close()
	local registerVal4 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.CreateModel(registerVal4, "hudItems.rejack.countdownText")
	Engine.SetModelValue(registerVal3, arg0.startVal)
	arg0:playClip("RejackActivated")
end

local function __FUNC_786_(arg0, arg1)
	arg0.startVal = 99.000000
	arg0.endVal = 1.000000
	arg0.startHeartBeatAnimation = __FUNC_1CF_
	arg0.startRejackAnimation = __FUNC_604_
end

local registerVal4 = InheritFrom(LUI.UIElement)
CoD.RejackInternal = registerVal4
local function __FUNC_833_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.RejackInternal)
	registerVal2.id = "RejackInternal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 600.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 300.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.620000, 0.000000, 1.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.100000)
	registerVal2:addElement(registerVal4)
	registerVal2.BlackFrame0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 200.000000, 400.000000)
	registerVal5:setTopBottom(true, false, 10.960000, 47.960000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.400000)
	registerVal2:addElement(registerVal5)
	registerVal2.BlackFrame2 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 67.810000, 530.160000)
	registerVal6:setTopBottom(true, false, 127.450000, 196.710000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.250000)
	registerVal2:addElement(registerVal6)
	registerVal2.BlackFrame = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 200.000000, 400.000000)
	registerVal7:setTopBottom(true, false, 7.960000, 47.960000)
	registerVal7:setText(Engine.Localize("MPUI_REJACK_CAPS"))
	registerVal7:setTTF("fonts/escom.ttf")
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal7:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setLetterSpacing(1.000000)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.RejackTitle = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 200.000000, 400.000000)
	registerVal8:setTopBottom(true, false, 7.960000, 47.960000)
	registerVal8:setText(Engine.Localize("MPUI_REJACKING_CAPS"))
	registerVal8:setTTF("fonts/escom.ttf")
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal8:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setLetterSpacing(1.000000)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal8)
	registerVal2.RejackingTitle2 = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, false, 467.000000, 579.000000)
	registerVal9:setTopBottom(true, false, 137.000000, 187.000000)
	registerVal9:setText(Engine.Localize("$(hudItems.rejack.countdownText)"))
	registerVal9:setTTF("fonts/escom.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal9)
	registerVal2.TimeRemaining = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, false, 207.840000, 407.840000)
	registerVal10:setTopBottom(true, false, 234.090000, 259.090000)
	registerVal10:setText(Engine.Localize("MP_REJACK_TERMINATE"))
	registerVal10:setTTF("fonts/default.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal10)
	registerVal2.Prompt = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 21.780000, 111.840000)
	registerVal11:setTopBottom(true, false, 92.220000, 207.780000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_cp_datavault_heath_bars"))
	registerVal2:addElement(registerVal11)
	registerVal2.barHR = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 62.810000, 458.440000)
	registerVal12:setTopBottom(true, false, 125.450000, 198.550000)
	registerVal12:setImage(RegisterImage("uie_dots_gridframe"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.Grid = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 62.810000, 458.440000)
	registerVal13:setTopBottom(true, false, 125.450000, 198.550000)
	registerVal13:setImage(RegisterImage("uie_dots_gridframe"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.Grid0 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 62.810000, 458.440000)
	registerVal14:setTopBottom(true, false, 125.450000, 198.550000)
	registerVal14:setImage(RegisterImage("uie_line_pulse"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	registerVal14:setShaderVector(0.000000, 2.800000, 0.000000, 0.000000, 0.000000)
	registerVal14:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal14:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal14:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.HeartBeatLine = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(false, true, -153.680000, -146.000000)
	registerVal15:setTopBottom(true, false, 123.610000, 131.290000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_cp_datavault_line"))
	registerVal2:addElement(registerVal15)
	registerVal2.dot0 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(false, true, -74.680000, -67.000000)
	registerVal16:setTopBottom(true, false, 123.610000, 131.290000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_cp_datavault_line"))
	registerVal2:addElement(registerVal16)
	registerVal2.dot1 = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(false, true, -153.680000, -146.000000)
	registerVal17:setTopBottom(true, false, 192.870000, 200.550000)
	registerVal17:setImage(RegisterImage("uie_t7_menu_cp_datavault_line"))
	registerVal2:addElement(registerVal17)
	registerVal2.dot2 = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(false, true, -74.680000, -67.000000)
	registerVal18:setTopBottom(true, false, 192.870000, 200.550000)
	registerVal18:setImage(RegisterImage("uie_t7_menu_cp_datavault_line"))
	registerVal2:addElement(registerVal18)
	registerVal2.dot3 = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(false, true, -533.190000, -525.510000)
	registerVal19:setTopBottom(true, false, 123.610000, 131.290000)
	registerVal19:setImage(RegisterImage("uie_t7_menu_cp_datavault_line"))
	registerVal2:addElement(registerVal19)
	registerVal2.dot4 = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(false, true, -533.190000, -525.510000)
	registerVal20:setTopBottom(true, false, 192.870000, 200.550000)
	registerVal20:setImage(RegisterImage("uie_t7_menu_cp_datavault_line"))
	registerVal2:addElement(registerVal20)
	registerVal2.dot5 = registerVal20
	local registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(true, false, 62.810000, 422.810000)
	registerVal21:setTopBottom(true, false, 125.450000, 197.450000)
	registerVal21:setImage(RegisterImage("uie_line_pulsealive"))
	registerVal21:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal21)
	registerVal2.HeartBeatLineAlive = registerVal21
	local registerVal22 = LUI.UIImage.new()
	registerVal22:setLeftRight(true, false, 402.060000, 600.000000)
	registerVal22:setTopBottom(true, false, 70.220000, 72.220000)
	registerVal22:setAlpha(0.800000)
	registerVal2:addElement(registerVal22)
	registerVal2.WhiteLine = registerVal22
	local registerVal23 = LUI.UIImage.new()
	registerVal23:setLeftRight(true, false, 0.000000, 197.940000)
	registerVal23:setTopBottom(true, false, 70.220000, 72.220000)
	registerVal23:setAlpha(0.800000)
	registerVal2:addElement(registerVal23)
	registerVal2.Image1 = registerVal23
	local registerVal24 = LUI.UIElement.new()
	registerVal24:setLeftRight(true, false, 8.000000, 56.000000)
	registerVal24:setTopBottom(true, false, 318.500000, 366.500000)
	registerVal2:addElement(registerVal24)
	registerVal2.Sound = registerVal24
	local registerVal25 = LUI.UIText.new()
	registerVal25:setLeftRight(true, false, 124.060000, 482.060000)
	registerVal25:setTopBottom(true, false, 47.960000, 87.960000)
	registerVal25:setText(Engine.Localize("MENU_REJACK_UI3D_PROMPT"))
	registerVal25:setTTF("fonts/escom.ttf")
	registerVal25:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal25:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal25:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal25:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal25:setLetterSpacing(1.000000)
	registerVal25:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal25:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal25)
	registerVal2.RejackingTitle20 = registerVal25
	local registerVal26 = {}
	local registerVal27 = {}
	local function __FUNC_20A3_()
		registerVal2:setupElementClipCounter(19.000000)
		registerVal5:completeAnimation()
		registerVal2.BlackFrame2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BlackFrame:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.RejackTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.RejackingTitle2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.TimeRemaining:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Prompt:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.barHR:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Grid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Grid0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.HeartBeatLine:setLeftRight(true, false, 62.810000, 458.440000)
		registerVal2.HeartBeatLine:setTopBottom(true, false, 125.450000, 198.550000)
		registerVal2.HeartBeatLine:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.dot0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.dot1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.dot2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.dot3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.dot4:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.dot5:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.HeartBeatLineAlive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.WhiteLine:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.Image1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
	end

	registerVal27.DefaultClip = __FUNC_20A3_
	local function __FUNC_283A_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal5:completeAnimation()
		registerVal2.BlackFrame2:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.RejackTitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.RejackingTitle2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_2ECD_(arg0, arg1)
			local function __FUNC_3057_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 2129.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(1.000000, 0.000000, 0.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3057_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2859.000000, false, false, CoD.TweenType.Linear)
			arg0:setRGB(1.000000, 0.510000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3057_)
		end

		registerVal9:completeAnimation()
		registerVal2.TimeRemaining:setRGB(0.000000, 0.780000, 0.000000)
		registerVal2.TimeRemaining:setAlpha(1.000000)
		__FUNC_2ECD_(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Prompt:setLeftRight(true, false, 208.000000, 408.000000)
		registerVal2.Prompt:setTopBottom(true, false, 234.090000, 259.090000)
		registerVal2.Prompt:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.Grid:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Grid0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		local function __FUNC_3232_(arg0, arg1)
			local function __FUNC_33F5_(arg0, arg1)
				local function __FUNC_35B9_(arg0, arg1)
					local function __FUNC_377D_(arg0, arg1)
						local function __FUNC_3941_(arg0, arg1)
							local function __FUNC_3B00_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setRGB(1.000000, 0.000000, 0.000000)
								arg0:setAlpha(1.000000)
								arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
								arg0:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
								arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
								arg0:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
								arg0:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_3B00_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 989.000000, false, false, CoD.TweenType.Linear)
							arg0:setRGB(1.000000, 0.000000, 0.000000)
							arg0:setShaderVector(0.000000, 0.996435, 0.000000, 0.000000, 0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B00_)
						end

						if arg1.interrupted then
							__FUNC_3941_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 1140.000000, false, false, CoD.TweenType.Linear)
						arg0:setRGB(1.000000, 0.240000, 0.000000)
						arg0:setShaderVector(0.000000, 0.643491, 0.000000, 0.000000, 0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3941_)
					end

					if arg1.interrupted then
						__FUNC_377D_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 539.000000, false, false, CoD.TweenType.Linear)
					arg0:setRGB(1.000000, 0.510000, 0.000000)
					arg0:setShaderVector(0.000000, 0.474102, 0.000000, 0.000000, 0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_377D_)
				end

				if arg1.interrupted then
					__FUNC_35B9_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1619.000000, false, false, CoD.TweenType.Linear)
				arg0:setRGB(0.810000, 0.560000, 0.000000)
				arg0:setShaderVector(0.000000, 0.393865, 0.000000, 0.000000, 0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35B9_)
			end

			if arg1.interrupted then
				__FUNC_33F5_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			arg0:setRGB(0.240000, 0.720000, 0.000000)
			arg0:setShaderVector(0.000000, 0.174564, 0.000000, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33F5_)
		end

		registerVal14:completeAnimation()
		registerVal2.HeartBeatLine:setRGB(0.000000, 0.780000, 0.000000)
		registerVal2.HeartBeatLine:setAlpha(1.000000)
		registerVal2.HeartBeatLine:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		registerVal2.HeartBeatLine:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.HeartBeatLine:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.HeartBeatLine:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.HeartBeatLine:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_3232_(registerVal14, {})
		registerVal21:completeAnimation()
		registerVal2.HeartBeatLineAlive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		local function __FUNC_3DFD_(arg0, arg1)
			local function __FUNC_3F7E_(arg0, arg1)
				local function __FUNC_4102_(arg0, arg1)
					local function __FUNC_4284_(arg0, arg1)
						local function __FUNC_440A_(arg0, arg1)
							local function __FUNC_458A_(arg0, arg1)
								local function __FUNC_470E_(arg0, arg1)
									local function __FUNC_488E_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:playSound("flatline")
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_488E_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 960.000000, false, false, CoD.TweenType.Linear)
									arg0:playSound("0")
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_488E_)
								end

								if arg1.interrupted then
									__FUNC_470E_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
								arg0:playSound("ekg_3")
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_470E_)
							end

							if arg1.interrupted then
								__FUNC_458A_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 1609.000000, false, false, CoD.TweenType.Linear)
							arg0:playSound("0")
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_458A_)
						end

						if arg1.interrupted then
							__FUNC_440A_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						arg0:playSound("ekg_2")
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_440A_)
					end

					if arg1.interrupted then
						__FUNC_4284_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 1140.000000, false, false, CoD.TweenType.Linear)
					arg0:playSound("ekg")
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4284_)
				end

				if arg1.interrupted then
					__FUNC_4102_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
				arg0:playSound("ekg_1")
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4102_)
			end

			if arg1.interrupted then
				__FUNC_3F7E_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 730.000000, false, false, CoD.TweenType.Linear)
			arg0:playSound("0")
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F7E_)
		end

		registerVal24:completeAnimation()
		registerVal2.Sound:playSound("ekg")
		__FUNC_3DFD_(registerVal24, {})
	end

	registerVal27.HeartBeat = __FUNC_283A_
	local function __FUNC_4A4F_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal4:completeAnimation()
		registerVal2.BlackFrame0:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.BlackFrame:setLeftRight(true, false, 67.810000, 530.160000)
		registerVal2.BlackFrame:setTopBottom(true, false, 127.450000, 196.710000)
		registerVal2.BlackFrame:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.RejackTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.RejackingTitle2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.TimeRemaining:setRGB(0.020000, 0.750000, 0.000000)
		registerVal2.TimeRemaining:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Prompt:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal13:completeAnimation()
		registerVal2.Grid0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.HeartBeatLine:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal21:completeAnimation()
		registerVal2.HeartBeatLineAlive:setLeftRight(true, false, 62.810000, 450.160000)
		registerVal2.HeartBeatLineAlive:setTopBottom(true, false, 125.450000, 197.450000)
		registerVal2.HeartBeatLineAlive:setRGB(0.020000, 0.750000, 0.000000)
		registerVal2.HeartBeatLineAlive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.WhiteLine:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.Image1:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal23, {})
	end

	registerVal27.RejackActivated = __FUNC_4A4F_
	registerVal26.DefaultState = registerVal27
	registerVal2.clipsPerState = registerVal26
	if __FUNC_786_ then
		__FUNC_786_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.RejackInternal.new = __FUNC_833_
