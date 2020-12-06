-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.NewBreadcrumb")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Leaderboard_GameModeTabItem = registerVal1
function CoD.Leaderboard_GameModeTabItem.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Leaderboard_GameModeTabItem)
	registerVal2.id = "Leaderboard_GameModeTabItem"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 220.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 38.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal3:setTopBottom(true, true, -5.000000, 5.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_cac_buttontabfocusfull"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal3:setShaderVector(0.000000, 0.428571, 0.500000, 0.416667, 0.333333)
	registerVal3:setupNineSliceShader(96.000000, 24.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.FETabFocus = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, -1.000000, 1.000000)
	registerVal4:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_cac_buttontabidlefull"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal4:setShaderVector(0.000000, 0.036036, 0.190476, 0.000000, 0.000000)
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
	registerVal6:setTopBottom(false, false, -9.000000, 12.000000)
	registerVal6:setAlpha(0.700000)
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setLetterSpacing(2.000000)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_177D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "tabName", true, __FUNC_177D_)
	registerVal2:addElement(registerVal6)
	registerVal2.text = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(false, false, -100.000000, 100.000000)
	registerVal7:setTopBottom(false, false, -9.000000, 12.000000)
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
	local function __FUNC_1836_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "tabName", true, __FUNC_1836_)
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
	local function __FUNC_18EE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "tabIcon", true, __FUNC_18EE_)
	registerVal2:addElement(registerVal10)
	registerVal2.buttonText = registerVal10
	local registerVal11 = CoD.NewBreadcrumb.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 206.000000, 226.000000)
	registerVal11:setTopBottom(true, false, -6.000000, 14.000000)
	registerVal11:setAlpha(0.000000)
	local function __FUNC_19A6_(arg0)
		registerVal11:setModel(arg0, arg1)
	end

	registerVal11:linkToElementModel(registerVal2, nil, false, __FUNC_19A6_)
	registerVal2:addElement(registerVal11)
	registerVal2.newBreadcrumb = registerVal11
	local registerVal12 = {}
	local registerVal13 = {}
	local function __FUNC_19F6_()
		registerVal2:setupElementClipCounter(9.000000)
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
		registerVal11:completeAnimation()
		registerVal2.newBreadcrumb:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_19F6_
	local function __FUNC_1DAE_()
		registerVal2:setupElementClipCounter(8.000000)
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
		registerVal11:completeAnimation()
		registerVal2.newBreadcrumb:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.Active = __FUNC_1DAE_
	local function __FUNC_2109_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_2456_(arg0, arg1)
			local function __FUNC_25CF_(arg0, arg1)
				local function __FUNC_2747_(arg0, arg1)
					local function __FUNC_28BF_(arg0, arg1)
						local function __FUNC_2A37_(arg0, arg1)
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
							__FUNC_2A37_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.700000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A37_)
					end

					if arg1.interrupted then
						__FUNC_28BF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28BF_)
				end

				if arg1.interrupted then
					__FUNC_2747_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.320000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2747_)
			end

			if arg1.interrupted then
				__FUNC_25CF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25CF_)
		end

		registerVal3:completeAnimation()
		registerVal2.FETabFocus:setAlpha(0.370000)
		__FUNC_2456_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FETabIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_2BE9_(arg0, arg1)
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
		__FUNC_2BE9_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.text:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_2D9D_(arg0, arg1)
			local function __FUNC_2F17_(arg0, arg1)
				local function __FUNC_308F_(arg0, arg1)
					local function __FUNC_31E4_(arg0, arg1)
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
						__FUNC_31E4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31E4_)
				end

				if arg1.interrupted then
					__FUNC_308F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.090000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_308F_)
			end

			if arg1.interrupted then
				__FUNC_2F17_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F17_)
		end

		registerVal7:completeAnimation()
		registerVal2.textDark:setAlpha(0.000000)
		__FUNC_2D9D_(registerVal7, {})
		local function __FUNC_3399_(arg0, arg1)
			local function __FUNC_34F0_(arg0, arg1)
				local function __FUNC_366B_(arg0, arg1)
					local function __FUNC_37E3_(arg0, arg1)
						local function __FUNC_3938_(arg0, arg1)
							local function __FUNC_3AB3_(arg0, arg1)
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
								__FUNC_3AB3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3AB3_)
						end

						if arg1.interrupted then
							__FUNC_3938_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3938_)
					end

					if arg1.interrupted then
						__FUNC_37E3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37E3_)
				end

				if arg1.interrupted then
					__FUNC_366B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_366B_)
			end

			if arg1.interrupted then
				__FUNC_34F0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34F0_)
		end

		registerVal8:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_3399_(registerVal8, {})
		local function __FUNC_3C65_(arg0, arg1)
			local function __FUNC_3DBC_(arg0, arg1)
				local function __FUNC_3F37_(arg0, arg1)
					local function __FUNC_408C_(arg0, arg1)
						local function __FUNC_4207_(arg0, arg1)
							local function __FUNC_435C_(arg0, arg1)
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
								__FUNC_435C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_435C_)
						end

						if arg1.interrupted then
							__FUNC_4207_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4207_)
					end

					if arg1.interrupted then
						__FUNC_408C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_408C_)
				end

				if arg1.interrupted then
					__FUNC_3F37_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F37_)
			end

			if arg1.interrupted then
				__FUNC_3DBC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3DBC_)
		end

		registerVal9:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_3C65_(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.newBreadcrumb:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.GainActive = __FUNC_2109_
	local function __FUNC_4511_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_47E0_(arg0, arg1)
			local function __FUNC_495B_(arg0, arg1)
				local function __FUNC_4AD3_(arg0, arg1)
					local function __FUNC_4C4B_(arg0, arg1)
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
						__FUNC_4C4B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.370000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C4B_)
				end

				if arg1.interrupted then
					__FUNC_4AD3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4AD3_)
			end

			if arg1.interrupted then
				__FUNC_495B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.540000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_495B_)
		end

		registerVal3:completeAnimation()
		registerVal2.FETabFocus:setAlpha(1.000000)
		__FUNC_47E0_(registerVal3, {})
		local function __FUNC_4DFD_(arg0, arg1)
			local function __FUNC_4F54_(arg0, arg1)
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
				__FUNC_4F54_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4F54_)
		end

		registerVal4:completeAnimation()
		registerVal2.FETabIdle:setAlpha(0.000000)
		__FUNC_4DFD_(registerVal4, {})
		local function __FUNC_5109_(arg0, arg1)
			local function __FUNC_5283_(arg0, arg1)
				local function __FUNC_53FB_(arg0, arg1)
					local function __FUNC_5573_(arg0, arg1)
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
						__FUNC_5573_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5573_)
				end

				if arg1.interrupted then
					__FUNC_53FB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.780000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_53FB_)
			end

			if arg1.interrupted then
				__FUNC_5283_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5283_)
		end

		registerVal5:completeAnimation()
		registerVal2.Glow2:setAlpha(1.000000)
		__FUNC_5109_(registerVal5, {})
		local function __FUNC_5725_(arg0, arg1)
			local function __FUNC_587C_(arg0, arg1)
				local function __FUNC_59F7_(arg0, arg1)
					local function __FUNC_5B6F_(arg0, arg1)
						local function __FUNC_5CE7_(arg0, arg1)
							local function __FUNC_5E5F_(arg0, arg1)
								local function __FUNC_5FD7_(arg0, arg1)
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
									__FUNC_5FD7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5FD7_)
							end

							if arg1.interrupted then
								__FUNC_5E5F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.240000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E5F_)
						end

						if arg1.interrupted then
							__FUNC_5CE7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5CE7_)
					end

					if arg1.interrupted then
						__FUNC_5B6F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.280000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B6F_)
				end

				if arg1.interrupted then
					__FUNC_59F7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.200000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_59F7_)
			end

			if arg1.interrupted then
				__FUNC_587C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_587C_)
		end

		registerVal6:completeAnimation()
		registerVal2.text:setAlpha(0.000000)
		__FUNC_5725_(registerVal6, {})
		local function __FUNC_6189_(arg0, arg1)
			local function __FUNC_62E0_(arg0, arg1)
				local function __FUNC_645B_(arg0, arg1)
					local function __FUNC_65D3_(arg0, arg1)
						local function __FUNC_674B_(arg0, arg1)
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
							__FUNC_674B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.480000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_674B_)
					end

					if arg1.interrupted then
						__FUNC_65D3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_65D3_)
				end

				if arg1.interrupted then
					__FUNC_645B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.350000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_645B_)
			end

			if arg1.interrupted then
				__FUNC_62E0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_62E0_)
		end

		registerVal7:completeAnimation()
		registerVal2.textDark:setAlpha(1.000000)
		__FUNC_6189_(registerVal7, {})
		local function __FUNC_68FD_(arg0, arg1)
			local function __FUNC_6A54_(arg0, arg1)
				local function __FUNC_6BAC_(arg0, arg1)
					local function __FUNC_6D27_(arg0, arg1)
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
						__FUNC_6D27_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6D27_)
				end

				if arg1.interrupted then
					__FUNC_6BAC_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6BAC_)
			end

			if arg1.interrupted then
				__FUNC_6A54_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6A54_)
		end

		registerVal8:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_68FD_(registerVal8, {})
		local function __FUNC_6ED9_(arg0, arg1)
			local function __FUNC_7053_(arg0, arg1)
				local function __FUNC_71A8_(arg0, arg1)
					local function __FUNC_7323_(arg0, arg1)
						local function __FUNC_7478_(arg0, arg1)
							local function __FUNC_75F3_(arg0, arg1)
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
								__FUNC_75F3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.340000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_75F3_)
						end

						if arg1.interrupted then
							__FUNC_7478_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7478_)
					end

					if arg1.interrupted then
						__FUNC_7323_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7323_)
				end

				if arg1.interrupted then
					__FUNC_71A8_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_71A8_)
			end

			if arg1.interrupted then
				__FUNC_7053_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7053_)
		end

		registerVal9:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_6ED9_(registerVal9, {})
	end

	registerVal13.LoseActive = __FUNC_4511_
	local function __FUNC_77A5_()
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

	registerVal13.Over = __FUNC_77A5_
	local function __FUNC_7B08_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.FETabFocus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FETabIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_7E63_(arg0, arg1)
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
		__FUNC_7E63_(registerVal5, {})
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

	registerVal13.GainOver = __FUNC_7B08_
	local function __FUNC_8015_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.FETabFocus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FETabIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_8374_(arg0, arg1)
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
		__FUNC_8374_(registerVal5, {})
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

	registerVal13.LoseOver = __FUNC_8015_
	registerVal12.DefaultState = registerVal13
	registerVal13 = {}
	local function __FUNC_8529_()
		registerVal2:setupElementClipCounter(9.000000)
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
		registerVal11:completeAnimation()
		registerVal2.newBreadcrumb:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_8529_
	registerVal12.NavButton = registerVal13
	registerVal13 = {}
	local function __FUNC_88DD_()
		registerVal2:setupElementClipCounter(9.000000)
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
		registerVal11:completeAnimation()
		registerVal2.newBreadcrumb:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_88DD_
	registerVal12.NavButtonHiddenPrompt = registerVal13
	registerVal13 = {}
	local function __FUNC_8C91_()
		registerVal2:setupElementClipCounter(9.000000)
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
		registerVal11:completeAnimation()
		registerVal2.newBreadcrumb:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_8C91_
	registerVal12.Disabled = registerVal13
	registerVal13 = {}
	local function __FUNC_904A_()
		registerVal2:setupElementClipCounter(9.000000)
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
		registerVal11:completeAnimation()
		registerVal2.newBreadcrumb:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_904A_
	local function __FUNC_9402_()
		registerVal2:setupElementClipCounter(8.000000)
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
		registerVal11:completeAnimation()
		registerVal2.newBreadcrumb:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.Active = __FUNC_9402_
	local function __FUNC_975D_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_9AAA_(arg0, arg1)
			local function __FUNC_9C23_(arg0, arg1)
				local function __FUNC_9D9B_(arg0, arg1)
					local function __FUNC_9F13_(arg0, arg1)
						local function __FUNC_A08B_(arg0, arg1)
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
							__FUNC_A08B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.700000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A08B_)
					end

					if arg1.interrupted then
						__FUNC_9F13_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9F13_)
				end

				if arg1.interrupted then
					__FUNC_9D9B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.320000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9D9B_)
			end

			if arg1.interrupted then
				__FUNC_9C23_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9C23_)
		end

		registerVal3:completeAnimation()
		registerVal2.FETabFocus:setAlpha(0.370000)
		__FUNC_9AAA_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FETabIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_A23D_(arg0, arg1)
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
		__FUNC_A23D_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.text:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_A3F1_(arg0, arg1)
			local function __FUNC_A56B_(arg0, arg1)
				local function __FUNC_A6E3_(arg0, arg1)
					local function __FUNC_A838_(arg0, arg1)
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
						__FUNC_A838_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A838_)
				end

				if arg1.interrupted then
					__FUNC_A6E3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.090000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A6E3_)
			end

			if arg1.interrupted then
				__FUNC_A56B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A56B_)
		end

		registerVal7:completeAnimation()
		registerVal2.textDark:setAlpha(0.000000)
		__FUNC_A3F1_(registerVal7, {})
		local function __FUNC_A9ED_(arg0, arg1)
			local function __FUNC_AB44_(arg0, arg1)
				local function __FUNC_ACBF_(arg0, arg1)
					local function __FUNC_AE37_(arg0, arg1)
						local function __FUNC_AF8C_(arg0, arg1)
							local function __FUNC_B107_(arg0, arg1)
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
								__FUNC_B107_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B107_)
						end

						if arg1.interrupted then
							__FUNC_AF8C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AF8C_)
					end

					if arg1.interrupted then
						__FUNC_AE37_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AE37_)
				end

				if arg1.interrupted then
					__FUNC_ACBF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ACBF_)
			end

			if arg1.interrupted then
				__FUNC_AB44_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AB44_)
		end

		registerVal8:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_A9ED_(registerVal8, {})
		local function __FUNC_B2B9_(arg0, arg1)
			local function __FUNC_B410_(arg0, arg1)
				local function __FUNC_B58B_(arg0, arg1)
					local function __FUNC_B6E0_(arg0, arg1)
						local function __FUNC_B85B_(arg0, arg1)
							local function __FUNC_B9B0_(arg0, arg1)
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
								__FUNC_B9B0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B9B0_)
						end

						if arg1.interrupted then
							__FUNC_B85B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B85B_)
					end

					if arg1.interrupted then
						__FUNC_B6E0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B6E0_)
				end

				if arg1.interrupted then
					__FUNC_B58B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B58B_)
			end

			if arg1.interrupted then
				__FUNC_B410_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B410_)
		end

		registerVal9:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_B2B9_(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.newBreadcrumb:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.GainActive = __FUNC_975D_
	local function __FUNC_BB65_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_BEA5_(arg0, arg1)
			local function __FUNC_C01F_(arg0, arg1)
				local function __FUNC_C197_(arg0, arg1)
					local function __FUNC_C30F_(arg0, arg1)
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
						__FUNC_C30F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.370000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C30F_)
				end

				if arg1.interrupted then
					__FUNC_C197_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C197_)
			end

			if arg1.interrupted then
				__FUNC_C01F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.540000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C01F_)
		end

		registerVal3:completeAnimation()
		registerVal2.FETabFocus:setAlpha(1.000000)
		__FUNC_BEA5_(registerVal3, {})
		local function __FUNC_C4C1_(arg0, arg1)
			local function __FUNC_C618_(arg0, arg1)
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
				__FUNC_C618_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C618_)
		end

		registerVal4:completeAnimation()
		registerVal2.FETabIdle:setAlpha(0.000000)
		__FUNC_C4C1_(registerVal4, {})
		local function __FUNC_C7CD_(arg0, arg1)
			local function __FUNC_C947_(arg0, arg1)
				local function __FUNC_CABF_(arg0, arg1)
					local function __FUNC_CC37_(arg0, arg1)
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
						__FUNC_CC37_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CC37_)
				end

				if arg1.interrupted then
					__FUNC_CABF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.780000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CABF_)
			end

			if arg1.interrupted then
				__FUNC_C947_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C947_)
		end

		registerVal5:completeAnimation()
		registerVal2.Glow2:setAlpha(1.000000)
		__FUNC_C7CD_(registerVal5, {})
		local function __FUNC_CDE9_(arg0, arg1)
			local function __FUNC_CF40_(arg0, arg1)
				local function __FUNC_D0BB_(arg0, arg1)
					local function __FUNC_D233_(arg0, arg1)
						local function __FUNC_D3AB_(arg0, arg1)
							local function __FUNC_D523_(arg0, arg1)
								local function __FUNC_D69B_(arg0, arg1)
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
									__FUNC_D69B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D69B_)
							end

							if arg1.interrupted then
								__FUNC_D523_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.240000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D523_)
						end

						if arg1.interrupted then
							__FUNC_D3AB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D3AB_)
					end

					if arg1.interrupted then
						__FUNC_D233_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.280000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D233_)
				end

				if arg1.interrupted then
					__FUNC_D0BB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.200000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D0BB_)
			end

			if arg1.interrupted then
				__FUNC_CF40_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CF40_)
		end

		registerVal6:completeAnimation()
		registerVal2.text:setAlpha(0.000000)
		__FUNC_CDE9_(registerVal6, {})
		local function __FUNC_D84D_(arg0, arg1)
			local function __FUNC_D9A4_(arg0, arg1)
				local function __FUNC_DB1F_(arg0, arg1)
					local function __FUNC_DC97_(arg0, arg1)
						local function __FUNC_DE0F_(arg0, arg1)
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
							__FUNC_DE0F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.480000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DE0F_)
					end

					if arg1.interrupted then
						__FUNC_DC97_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DC97_)
				end

				if arg1.interrupted then
					__FUNC_DB1F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.350000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DB1F_)
			end

			if arg1.interrupted then
				__FUNC_D9A4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D9A4_)
		end

		registerVal7:completeAnimation()
		registerVal2.textDark:setAlpha(1.000000)
		__FUNC_D84D_(registerVal7, {})
		local function __FUNC_DFC1_(arg0, arg1)
			local function __FUNC_E118_(arg0, arg1)
				local function __FUNC_E270_(arg0, arg1)
					local function __FUNC_E3EB_(arg0, arg1)
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
						__FUNC_E3EB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E3EB_)
				end

				if arg1.interrupted then
					__FUNC_E270_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E270_)
			end

			if arg1.interrupted then
				__FUNC_E118_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E118_)
		end

		registerVal8:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_DFC1_(registerVal8, {})
		local function __FUNC_E59D_(arg0, arg1)
			local function __FUNC_E717_(arg0, arg1)
				local function __FUNC_E86C_(arg0, arg1)
					local function __FUNC_E9E7_(arg0, arg1)
						local function __FUNC_EB3C_(arg0, arg1)
							local function __FUNC_ECB7_(arg0, arg1)
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
								__FUNC_ECB7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.340000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ECB7_)
						end

						if arg1.interrupted then
							__FUNC_EB3C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EB3C_)
					end

					if arg1.interrupted then
						__FUNC_E9E7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E9E7_)
				end

				if arg1.interrupted then
					__FUNC_E86C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E86C_)
			end

			if arg1.interrupted then
				__FUNC_E717_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E717_)
		end

		registerVal9:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_E59D_(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.newBreadcrumb:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.LoseActive = __FUNC_BB65_
	local function __FUNC_EE69_()
		registerVal2:setupElementClipCounter(9.000000)
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
		registerVal11:completeAnimation()
		registerVal2.newBreadcrumb:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.Over = __FUNC_EE69_
	local function __FUNC_F227_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.FETabFocus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FETabIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_F5DA_(arg0, arg1)
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
		__FUNC_F5DA_(registerVal5, {})
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
		registerVal11:completeAnimation()
		registerVal2.newBreadcrumb:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.GainOver = __FUNC_F227_
	local function __FUNC_F78D_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.FETabFocus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FETabIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_FB47_(arg0, arg1)
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
		__FUNC_FB47_(registerVal5, {})
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
		registerVal11:completeAnimation()
		registerVal2.newBreadcrumb:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.LoseOver = __FUNC_F78D_
	registerVal12.Breadcrumb = registerVal13
	registerVal2.clipsPerState = registerVal12
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "NavButton"
	local function __FUNC_FCF9_(arg0, arg2, arg3)
		local registerVal3 = ShouldDisplayButton(arg2, arg1)
		if registerVal3 then
			registerVal3 = IsGamepad(arg1)
		end
		return registerVal3
	end

	registerVal15.condition = __FUNC_FCF9_
	local registerVal16 = {}
	registerVal16.stateName = "NavButtonHiddenPrompt"
	local function __FUNC_FD7C_(arg0, arg2, arg3)
		local registerVal3 = ShouldDisplayButton(arg2, arg1)
		if registerVal3 then
			registerVal3 = IsGamepad(arg1)
		end
		return (not registerVal3)
	end

	registerVal16.condition = __FUNC_FD7C_
	local registerVal17 = {}
	registerVal17.stateName = "Disabled"
	local function __FUNC_FE04_(arg0, arg2, arg3)
		return IsDisabled(arg2, arg1)
	end

	registerVal17.condition = __FUNC_FE04_
	local registerVal18 = {}
	registerVal18.stateName = "Breadcrumb"
	local function __FUNC_FE58_(arg0, arg2, arg3)
		local registerVal3 = IsCurrentMenu(arg0, "chooseClass")
		if registerVal3 then
			registerVal3 = ShowCACExtraClassBreadcrumb(arg1)
		end
		return registerVal3
	end

	registerVal18.condition = __FUNC_FE58_
	registerVal14 = {registerVal15, registerVal16, registerVal17, registerVal18}
	registerVal2:mergeStateConditions(registerVal14)
	local function __FUNC_FEFD_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "tabIcon"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "tabIcon", true, __FUNC_FEFD_)
	if registerVal2.m_eventHandlers.input_source_changed then
		local function __FUNC_10019_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal2:registerEventHandler("input_source_changed", __FUNC_10019_)
	else
		registerVal2:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal15 = Engine.GetModelForController(arg1)
	registerVal14 = Engine.GetModel(registerVal15, "LastInput")
	local function __FUNC_100A3_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal14, __FUNC_100A3_)
	local function __FUNC_101BF_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabled", true, __FUNC_101BF_)
	local function __FUNC_102DA_(arg0)
		arg0.newBreadcrumb:close()
		arg0.text:close()
		arg0.textDark:close()
		arg0.buttonText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_102DA_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

