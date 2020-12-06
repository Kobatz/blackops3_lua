-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.GameSettings.GameSettings_ChangedIndicator")
local function __FUNC_22B_(arg0, arg1)
	local function __FUNC_298_(arg0, arg1)
		if arg0.currentState == "NavButton" then
			local registerVal4 = arg0.buttonText:getTextWidth()
		else
			registerVal4 = arg0.text:getTextWidth()
		end
		return (registerVal4 + 35.000000)
	end

	arg0.getWidthInList = __FUNC_298_
	arg0:setHandleMouse(true)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.paintshopTabWidget_SM = registerVal2
local function __FUNC_382_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.paintshopTabWidget_SM)
	registerVal2.id = "paintshopTabWidget_SM"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 200.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 38.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal3:setTopBottom(true, true, -5.000000, 5.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_cac_buttontabfocusfull"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal3:setShaderVector(0.000000, 0.470588, 0.500000, 0.416667, 0.333333)
	registerVal3:setupNineSliceShader(96.000000, 24.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.FETabFocus = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, -1.000000, 1.000000)
	registerVal4:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_cac_buttontabidlefull"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal4:setShaderVector(0.000000, 0.039604, 0.190476, 0.000000, 0.000000)
	registerVal4:setupNineSliceShader(8.000000, 8.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.FETabIdle = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, -82.000000, 104.000000)
	registerVal5:setTopBottom(true, false, -23.290000, 58.120000)
	registerVal5:setRGB(0.910000, 1.000000, 0.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_cp_hud_enemytarget_glow"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.Glow2 = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(false, false, -100.000000, 100.000000)
	registerVal6:setTopBottom(false, false, -7.000000, 10.000000)
	registerVal6:setAlpha(0.700000)
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setLetterSpacing(2.000000)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_174E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "tabName", true, __FUNC_174E_)
	registerVal2:addElement(registerVal6)
	registerVal2.text = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(false, false, -100.000000, 100.000000)
	registerVal7:setTopBottom(false, false, -7.000000, 10.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setTTF("fonts/escom.ttf")
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal7:setShaderVector(0.000000, 0.080000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setLetterSpacing(2.000000)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1806_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "tabName", true, __FUNC_1806_)
	registerVal2:addElement(registerVal7)
	registerVal2.textDark = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal8:setRGB(1.000000, 0.380000, 0.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.glitch = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal9:setRGB(1.000000, 0.380000, 0.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setImage(RegisterImage("uie_t7_effect_glitches_menu8"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.glitch2 = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, true, 4.000000, -4.000000)
	registerVal10:setTopBottom(false, false, -14.000000, 15.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setTTF("fonts/escom.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_18BE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "tabIcon", true, __FUNC_18BE_)
	registerVal2:addElement(registerVal10)
	registerVal2.buttonText = registerVal10
	local registerVal11 = CoD.GameSettings_ChangedIndicator.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 4.000000, 34.000000)
	registerVal11:setTopBottom(true, false, -15.000000, 15.000000)
	local function __FUNC_1976_(arg0)
		registerVal11:setModel(arg0, arg1)
	end

	registerVal11:linkToElementModel(registerVal2, nil, false, __FUNC_1976_)
	registerVal2:addElement(registerVal11)
	registerVal2.GameSettingsChangedIndicator = registerVal11
	local registerVal12 = {}
	local registerVal13 = {}
	local function __FUNC_19C6_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.FETabFocus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FETabIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Glow2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.text:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.textDark:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.buttonText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal13.DefaultClip = __FUNC_19C6_
	local function __FUNC_1D23_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.FETabFocus:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FETabIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Glow2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.text:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.textDark:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal13.Active = __FUNC_1D23_
	local function __FUNC_2022_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_2313_(arg0, arg1)
			local function __FUNC_248B_(arg0, arg1)
				local function __FUNC_2603_(arg0, arg1)
					local function __FUNC_277B_(arg0, arg1)
						local function __FUNC_28F3_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_28F3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.700000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28F3_)
					end

					if arg1.interrupted then
						__FUNC_277B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_277B_)
				end

				if arg1.interrupted then
					__FUNC_2603_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.320000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2603_)
			end

			if arg1.interrupted then
				__FUNC_248B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_248B_)
		end

		registerVal3:completeAnimation()
		registerVal2.FETabFocus:setAlpha(0.370000)
		__FUNC_2313_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FETabIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_2AA5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Glow2:setAlpha(1.000000)
		__FUNC_2AA5_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.text:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_2C59_(arg0, arg1)
			local function __FUNC_2DD3_(arg0, arg1)
				local function __FUNC_2F4B_(arg0, arg1)
					local function __FUNC_30A0_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_30A0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30A0_)
				end

				if arg1.interrupted then
					__FUNC_2F4B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.090000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F4B_)
			end

			if arg1.interrupted then
				__FUNC_2DD3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DD3_)
		end

		registerVal7:completeAnimation()
		registerVal2.textDark:setAlpha(0.000000)
		__FUNC_2C59_(registerVal7, {})
		local function __FUNC_3255_(arg0, arg1)
			local function __FUNC_33AC_(arg0, arg1)
				local function __FUNC_3527_(arg0, arg1)
					local function __FUNC_369F_(arg0, arg1)
						local function __FUNC_37F4_(arg0, arg1)
							local function __FUNC_396F_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_396F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_396F_)
						end

						if arg1.interrupted then
							__FUNC_37F4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37F4_)
					end

					if arg1.interrupted then
						__FUNC_369F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_369F_)
				end

				if arg1.interrupted then
					__FUNC_3527_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3527_)
			end

			if arg1.interrupted then
				__FUNC_33AC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33AC_)
		end

		registerVal8:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_3255_(registerVal8, {})
		local function __FUNC_3B21_(arg0, arg1)
			local function __FUNC_3C78_(arg0, arg1)
				local function __FUNC_3DF3_(arg0, arg1)
					local function __FUNC_3F48_(arg0, arg1)
						local function __FUNC_40C3_(arg0, arg1)
							local function __FUNC_4218_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_4218_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4218_)
						end

						if arg1.interrupted then
							__FUNC_40C3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_40C3_)
					end

					if arg1.interrupted then
						__FUNC_3F48_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F48_)
				end

				if arg1.interrupted then
					__FUNC_3DF3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3DF3_)
			end

			if arg1.interrupted then
				__FUNC_3C78_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C78_)
		end

		registerVal9:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_3B21_(registerVal9, {})
	end

	registerVal13.GainActive = __FUNC_2022_
	local function __FUNC_43CD_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_469C_(arg0, arg1)
			local function __FUNC_4817_(arg0, arg1)
				local function __FUNC_498F_(arg0, arg1)
					local function __FUNC_4B07_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_4B07_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.370000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B07_)
				end

				if arg1.interrupted then
					__FUNC_498F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_498F_)
			end

			if arg1.interrupted then
				__FUNC_4817_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.540000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4817_)
		end

		registerVal3:completeAnimation()
		registerVal2.FETabFocus:setAlpha(1.000000)
		__FUNC_469C_(registerVal3, {})
		local function __FUNC_4CB9_(arg0, arg1)
			local function __FUNC_4E10_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4E10_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4E10_)
		end

		registerVal4:completeAnimation()
		registerVal2.FETabIdle:setAlpha(0.000000)
		__FUNC_4CB9_(registerVal4, {})
		local function __FUNC_4FC5_(arg0, arg1)
			local function __FUNC_513F_(arg0, arg1)
				local function __FUNC_52B7_(arg0, arg1)
					local function __FUNC_542F_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_542F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_542F_)
				end

				if arg1.interrupted then
					__FUNC_52B7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.780000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_52B7_)
			end

			if arg1.interrupted then
				__FUNC_513F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_513F_)
		end

		registerVal5:completeAnimation()
		registerVal2.Glow2:setAlpha(1.000000)
		__FUNC_4FC5_(registerVal5, {})
		local function __FUNC_55E1_(arg0, arg1)
			local function __FUNC_5738_(arg0, arg1)
				local function __FUNC_58B3_(arg0, arg1)
					local function __FUNC_5A2B_(arg0, arg1)
						local function __FUNC_5BA3_(arg0, arg1)
							local function __FUNC_5D1B_(arg0, arg1)
								local function __FUNC_5E93_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.700000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_5E93_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E93_)
							end

							if arg1.interrupted then
								__FUNC_5D1B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.240000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5D1B_)
						end

						if arg1.interrupted then
							__FUNC_5BA3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5BA3_)
					end

					if arg1.interrupted then
						__FUNC_5A2B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.280000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5A2B_)
				end

				if arg1.interrupted then
					__FUNC_58B3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.200000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_58B3_)
			end

			if arg1.interrupted then
				__FUNC_5738_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5738_)
		end

		registerVal6:completeAnimation()
		registerVal2.text:setAlpha(0.000000)
		__FUNC_55E1_(registerVal6, {})
		local function __FUNC_6045_(arg0, arg1)
			local function __FUNC_619C_(arg0, arg1)
				local function __FUNC_6317_(arg0, arg1)
					local function __FUNC_648F_(arg0, arg1)
						local function __FUNC_6607_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_6607_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.480000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6607_)
					end

					if arg1.interrupted then
						__FUNC_648F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_648F_)
				end

				if arg1.interrupted then
					__FUNC_6317_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.350000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6317_)
			end

			if arg1.interrupted then
				__FUNC_619C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_619C_)
		end

		registerVal7:completeAnimation()
		registerVal2.textDark:setAlpha(1.000000)
		__FUNC_6045_(registerVal7, {})
		local function __FUNC_67B9_(arg0, arg1)
			local function __FUNC_6910_(arg0, arg1)
				local function __FUNC_6A68_(arg0, arg1)
					local function __FUNC_6BE3_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_6BE3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6BE3_)
				end

				if arg1.interrupted then
					__FUNC_6A68_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6A68_)
			end

			if arg1.interrupted then
				__FUNC_6910_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6910_)
		end

		registerVal8:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_67B9_(registerVal8, {})
		local function __FUNC_6D95_(arg0, arg1)
			local function __FUNC_6F0F_(arg0, arg1)
				local function __FUNC_7064_(arg0, arg1)
					local function __FUNC_71DF_(arg0, arg1)
						local function __FUNC_7334_(arg0, arg1)
							local function __FUNC_74AF_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_74AF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.340000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_74AF_)
						end

						if arg1.interrupted then
							__FUNC_7334_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7334_)
					end

					if arg1.interrupted then
						__FUNC_71DF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_71DF_)
				end

				if arg1.interrupted then
					__FUNC_7064_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7064_)
			end

			if arg1.interrupted then
				__FUNC_6F0F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6F0F_)
		end

		registerVal9:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_6D95_(registerVal9, {})
	end

	registerVal13.LoseActive = __FUNC_43CD_
	local function __FUNC_7661_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.FETabFocus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FETabIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Glow2:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.text:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.textDark:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.buttonText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal13.Over = __FUNC_7661_
	local function __FUNC_79C4_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.FETabFocus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FETabIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_7D1F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Glow2:setAlpha(0.000000)
		__FUNC_7D1F_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.text:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.textDark:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.buttonText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal13.GainOver = __FUNC_79C4_
	local function __FUNC_7ED1_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.FETabFocus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FETabIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_8230_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Glow2:setAlpha(0.800000)
		__FUNC_8230_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.text:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.textDark:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.buttonText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal13.LoseOver = __FUNC_7ED1_
	registerVal12.DefaultState = registerVal13
	registerVal13 = {}
	local function __FUNC_83E5_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.FETabFocus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FETabIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Glow2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.text:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.textDark:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.buttonText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal13.DefaultClip = __FUNC_83E5_
	registerVal12.NavButton = registerVal13
	registerVal13 = {}
	local function __FUNC_873E_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.FETabFocus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FETabIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Glow2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.text:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.textDark:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.buttonText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal13.DefaultClip = __FUNC_873E_
	registerVal12.NavButtonHiddenPrompt = registerVal13
	registerVal13 = {}
	local function __FUNC_8A96_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.FETabFocus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FETabIdle:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Glow2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.text:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.textDark:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.buttonText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal13.DefaultClip = __FUNC_8A96_
	registerVal12.Disabled = registerVal13
	registerVal2.clipsPerState = registerVal12
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "NavButton"
	local function __FUNC_8DF3_(arg0, arg2, arg3)
		local registerVal3 = ShouldDisplayButton(arg2, arg1)
		if registerVal3 then
			registerVal3 = IsGamepad(arg1)
		end
		return registerVal3
	end

	registerVal15.condition = __FUNC_8DF3_
	local registerVal16 = {}
	registerVal16.stateName = "NavButtonHiddenPrompt"
	local function __FUNC_8E74_(arg0, arg2, arg3)
		local registerVal3 = ShouldDisplayButton(arg2, arg1)
		if registerVal3 then
			registerVal3 = IsGamepad(arg1)
		end
		return (not registerVal3)
	end

	registerVal16.condition = __FUNC_8E74_
	local registerVal17 = {}
	registerVal17.stateName = "Disabled"
	local function __FUNC_8EFC_(arg0, arg2, arg3)
		return IsDisabled(arg2, arg1)
	end

	registerVal17.condition = __FUNC_8EFC_
	registerVal14 = {registerVal15, registerVal16, registerVal17}
	registerVal2:mergeStateConditions(registerVal14)
	local function __FUNC_8F50_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "tabIcon"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "tabIcon", true, __FUNC_8F50_)
	if registerVal2.m_eventHandlers.input_source_changed then
		local function __FUNC_906D_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal2:registerEventHandler("input_source_changed", __FUNC_906D_)
	else
		registerVal2:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal15 = Engine.GetModelForController(arg1)
	registerVal14 = Engine.GetModel(registerVal15, "LastInput")
	local function __FUNC_90F7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal14, __FUNC_90F7_)
	local function __FUNC_9213_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabled", true, __FUNC_9213_)
	local function __FUNC_932E_(arg0)
		arg0.GameSettingsChangedIndicator:close()
		arg0.text:close()
		arg0.textDark:close()
		arg0.buttonText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_932E_)
	if __FUNC_22B_ then
		__FUNC_22B_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.paintshopTabWidget_SM.new = __FUNC_382_
