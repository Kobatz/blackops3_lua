-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Social.Social_background")
require("ui.uieditor.widgets.StartMenu.StartMenu_Options_Slider_Control_Item")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupSliderWithTitle = registerVal1
function CoD.GroupSliderWithTitle.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupSliderWithTitle)
	registerVal2.id = "GroupSliderWithTitle"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 670.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 67.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Social_background.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 334.000000, 536.530000)
	registerVal3:setTopBottom(true, false, 3.000000, 63.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Socialbackground000 = registerVal3
	local registerVal4 = CoD.Social_background.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 41.000000, 329.000000)
	registerVal4:setTopBottom(true, false, 3.000000, 63.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Socialbackground00 = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 65.000000, 284.000000)
	registerVal5:setTopBottom(true, false, 24.000000, 43.000000)
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5:setLetterSpacing(0.500000)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_17B3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "name", true, __FUNC_17B3_)
	registerVal2:addElement(registerVal5)
	registerVal2.Title = registerVal5
	local registerVal6 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, false, 351.270000, 519.270000)
	registerVal6:setTopBottom(true, false, 18.000000, 48.000000)
	registerVal6:setWidgetType(CoD.StartMenu_Options_Slider_Control_Item)
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "ArrowsHidden"
	local function __FUNC_186A_(arg0, arg1, arg2)
		return PropertyIsTrue(registerVal2, "hideArrows")
	end

	registerVal10.condition = __FUNC_186A_
	local registerVal11 = {}
	registerVal11.stateName = "LeftArrowHidden"
	local function __FUNC_18D4_(arg0, arg1, arg2)
		local registerVal3 = ListLoopEdgesEnabled(registerVal2, "Slider")
		if not registerVal3 then
			registerVal3 = IsFirstListElement(arg1)
		else
		end
		return true
	end

	registerVal11.condition = __FUNC_18D4_
	local registerVal12 = {}
	registerVal12.stateName = "RightArrowHidden"
	local function __FUNC_197E_(arg0, arg1, arg2)
		local registerVal3 = ListLoopEdgesEnabled(registerVal2, "Slider")
		if not registerVal3 then
			registerVal3 = IsLastListElement(arg1)
		else
		end
		return true
	end

	registerVal12.condition = __FUNC_197E_
	registerVal9 = {registerVal10, registerVal11, registerVal12}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal2:addElement(registerVal6)
	registerVal2.Slider = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, true, -633.250000, -624.750000)
	registerVal7:setTopBottom(true, false, -1.000000, 7.500000)
	registerVal7:setAlpha(0.150000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_social_pixel"))
	registerVal2:addElement(registerVal7)
	registerVal2.pixel1 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, true, -633.250000, -624.750000)
	registerVal8:setTopBottom(false, true, -8.500000, 0.000000)
	registerVal8:setAlpha(0.150000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_social_pixel"))
	registerVal2:addElement(registerVal8)
	registerVal2.pixel00 = registerVal8
	registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, true, -345.250000, -336.750000)
	registerVal9:setTopBottom(true, false, -1.000000, 7.500000)
	registerVal9:setAlpha(0.150000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_social_pixel"))
	registerVal2:addElement(registerVal9)
	registerVal2.pixel10 = registerVal9
	registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, true, -345.250000, -336.750000)
	registerVal10:setTopBottom(false, true, -8.500000, 0.000000)
	registerVal10:setAlpha(0.150000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_social_pixel"))
	registerVal2:addElement(registerVal10)
	registerVal2.pixel000 = registerVal10
	registerVal11 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal11:setLeftRight(true, true, 39.000000, -339.000000)
	registerVal11:setTopBottom(true, false, 1.000000, 5.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setZoom(1.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.FocusBarT = registerVal11
	registerVal12 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal12:setLeftRight(true, true, 39.000000, -339.000000)
	registerVal12:setTopBottom(false, true, -4.000000, 0.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setZoom(1.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.FocusBarB = registerVal12
	local registerVal13 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal13:setLeftRight(true, true, 41.000000, -341.000000)
	registerVal13:setTopBottom(true, true, -0.500000, 0.000000)
	registerVal13:setRGB(1.000000, 0.300000, 0.000000)
	registerVal13:setAlpha(0.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.FocusBorder = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, true, 29.000000, -334.000000)
	registerVal14:setTopBottom(true, false, -3.750000, 9.750000)
	registerVal14:setRGB(1.000000, 0.090000, 0.000000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.glitch = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, true, 32.500000, -332.500000)
	registerVal15:setTopBottom(false, true, -10.000000, 5.000000)
	registerVal15:setRGB(1.000000, 0.150000, 0.000000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.glitch2 = registerVal15
	local registerVal16 = LUI.UIText.new()
	registerVal16:setLeftRight(true, true, 334.000000, -133.470000)
	registerVal16:setTopBottom(false, false, -10.000000, 10.000000)
	registerVal16:setAlpha(0.000000)
	registerVal16:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal16:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal16:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	local function __FUNC_1A25_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal16:linkToElementModel(registerVal2, "altText", true, __FUNC_1A25_)
	registerVal2:addElement(registerVal16)
	registerVal2.buttonText = registerVal16
	local function __FUNC_1ADE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setDataSource(registerVal1)
		end
	end

	registerVal2.Slider:linkToElementModel(registerVal2, "optionsDatasource", true, __FUNC_1ADE_)
	local registerVal17 = {}
	local registerVal18 = {}
	local function __FUNC_1B76_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal5:completeAnimation()
		registerVal2.Title:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Slider:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal16:completeAnimation()
		registerVal2.buttonText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_1B76_
	local function __FUNC_1D22_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_2290_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Title:setAlpha(0.700000)
		__FUNC_2290_(registerVal5, {})
		local function __FUNC_2445_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Slider:setAlpha(0.700000)
		__FUNC_2445_(registerVal6, {})
		local function __FUNC_25F9_(arg0, arg1)
			local function __FUNC_2750_(arg0, arg1)
				local function __FUNC_28CB_(arg0, arg1)
					local function __FUNC_2A20_(arg0, arg1)
						local function __FUNC_2B9B_(arg0, arg1)
							local function __FUNC_2CF0_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, true, 331.250000, -131.470000)
								arg0:setTopBottom(true, false, 1.000000, 5.000000)
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_2CF0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CF0_)
						end

						if arg1.interrupted then
							__FUNC_2B9B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B9B_)
					end

					if arg1.interrupted then
						__FUNC_2A20_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A20_)
				end

				if arg1.interrupted then
					__FUNC_28CB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28CB_)
			end

			if arg1.interrupted then
				__FUNC_2750_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2750_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, 331.250000, -131.470000)
		registerVal2.FocusBarT:setTopBottom(true, false, 1.000000, 5.000000)
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_25F9_(registerVal11, {})
		local function __FUNC_2F10_(arg0, arg1)
			local function __FUNC_3068_(arg0, arg1)
				local function __FUNC_31E3_(arg0, arg1)
					local function __FUNC_3338_(arg0, arg1)
						local function __FUNC_34B3_(arg0, arg1)
							local function __FUNC_3608_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, true, 331.250000, -131.470000)
								arg0:setTopBottom(false, true, -4.000000, 0.000000)
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_3608_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3608_)
						end

						if arg1.interrupted then
							__FUNC_34B3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34B3_)
					end

					if arg1.interrupted then
						__FUNC_3338_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3338_)
				end

				if arg1.interrupted then
					__FUNC_31E3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31E3_)
			end

			if arg1.interrupted then
				__FUNC_3068_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3068_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, 331.250000, -131.470000)
		registerVal2.FocusBarB:setTopBottom(false, true, -4.000000, 0.000000)
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_2F10_(registerVal12, {})
		local function __FUNC_382D_(arg0, arg1)
			local function __FUNC_3984_(arg0, arg1)
				local function __FUNC_3ADC_(arg0, arg1)
					local function __FUNC_3C34_(arg0, arg1)
						local function __FUNC_3D8C_(arg0, arg1)
							local function __FUNC_3EE4_(arg0, arg1)
								local function __FUNC_403C_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setLeftRight(true, true, 333.250000, -133.470000)
									arg0:setTopBottom(true, true, -0.500000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_403C_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_403C_)
							end

							if arg1.interrupted then
								__FUNC_3EE4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3EE4_)
						end

						if arg1.interrupted then
							__FUNC_3D8C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D8C_)
					end

					if arg1.interrupted then
						__FUNC_3C34_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C34_)
				end

				if arg1.interrupted then
					__FUNC_3ADC_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3ADC_)
			end

			if arg1.interrupted then
				__FUNC_3984_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3984_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setLeftRight(true, true, 333.250000, -133.470000)
		registerVal2.FocusBorder:setTopBottom(true, true, -0.500000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_382D_(registerVal13, {})
		local function __FUNC_425C_(arg0, arg1)
			local function __FUNC_43B4_(arg0, arg1)
				local function __FUNC_452F_(arg0, arg1)
					local function __FUNC_4684_(arg0, arg1)
						local function __FUNC_47FF_(arg0, arg1)
							local function __FUNC_4954_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, true, 324.750000, -126.470000)
								arg0:setTopBottom(true, false, -3.750000, 9.750000)
								arg0:setAlpha(0.000000)
								arg0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_4954_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4954_)
						end

						if arg1.interrupted then
							__FUNC_47FF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_47FF_)
					end

					if arg1.interrupted then
						__FUNC_4684_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4684_)
				end

				if arg1.interrupted then
					__FUNC_452F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_452F_)
			end

			if arg1.interrupted then
				__FUNC_43B4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_43B4_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch:setLeftRight(true, true, 324.750000, -126.470000)
		registerVal2.glitch:setTopBottom(true, false, -3.750000, 9.750000)
		registerVal2.glitch:setAlpha(1.000000)
		registerVal2.glitch:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_425C_(registerVal14, {})
		local function __FUNC_4C03_(arg0, arg1)
			local function __FUNC_4D58_(arg0, arg1)
				local function __FUNC_4ED3_(arg0, arg1)
					local function __FUNC_5028_(arg0, arg1)
						local function __FUNC_51A3_(arg0, arg1)
							local function __FUNC_52F8_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, true, 324.750000, -124.970000)
								arg0:setTopBottom(false, true, -10.000000, 5.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_52F8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_52F8_)
						end

						if arg1.interrupted then
							__FUNC_51A3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_51A3_)
					end

					if arg1.interrupted then
						__FUNC_5028_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5028_)
				end

				if arg1.interrupted then
					__FUNC_4ED3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4ED3_)
			end

			if arg1.interrupted then
				__FUNC_4D58_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D58_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch2:setLeftRight(true, true, 324.750000, -124.970000)
		registerVal2.glitch2:setTopBottom(false, true, -10.000000, 5.000000)
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_4C03_(registerVal15, {})
	end

	registerVal18.GainFocus = __FUNC_1D22_
	local function __FUNC_551D_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal5:completeAnimation()
		registerVal2.Title:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Slider:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, 331.250000, -131.470000)
		registerVal2.FocusBarT:setTopBottom(true, false, 1.000000, 5.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, 331.250000, -131.470000)
		registerVal2.FocusBarB:setTopBottom(false, true, -4.000000, 0.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setLeftRight(true, true, 333.250000, -133.470000)
		registerVal2.FocusBorder:setTopBottom(true, true, -0.500000, 0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.glitch:setLeftRight(true, true, 321.250000, -126.470000)
		registerVal2.glitch:setTopBottom(true, false, -3.750000, 9.750000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.glitch2:setLeftRight(true, true, 324.750000, -124.970000)
		registerVal2.glitch2:setTopBottom(false, true, -10.000000, 5.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.Focus = __FUNC_551D_
	local function __FUNC_59D0_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_5EA1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Title:setAlpha(1.000000)
		__FUNC_5EA1_(registerVal5, {})
		local function __FUNC_6055_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Slider:setAlpha(1.000000)
		__FUNC_6055_(registerVal6, {})
		local function __FUNC_6209_(arg0, arg1)
			local function __FUNC_6383_(arg0, arg1)
				local function __FUNC_64FB_(arg0, arg1)
					local function __FUNC_6673_(arg0, arg1)
						local function __FUNC_67C8_(arg0, arg1)
							local function __FUNC_6943_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, true, 331.250000, -131.470000)
								arg0:setTopBottom(true, false, 1.000000, 5.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_6943_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6943_)
						end

						if arg1.interrupted then
							__FUNC_67C8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_67C8_)
					end

					if arg1.interrupted then
						__FUNC_6673_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6673_)
				end

				if arg1.interrupted then
					__FUNC_64FB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_64FB_)
			end

			if arg1.interrupted then
				__FUNC_6383_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6383_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, 331.250000, -131.470000)
		registerVal2.FocusBarT:setTopBottom(true, false, 1.000000, 5.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_6209_(registerVal11, {})
		local function __FUNC_6B65_(arg0, arg1)
			local function __FUNC_6CDF_(arg0, arg1)
				local function __FUNC_6E57_(arg0, arg1)
					local function __FUNC_6FCF_(arg0, arg1)
						local function __FUNC_7124_(arg0, arg1)
							local function __FUNC_729F_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, true, 331.250000, -131.470000)
								arg0:setTopBottom(false, true, -4.000000, 0.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_729F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_729F_)
						end

						if arg1.interrupted then
							__FUNC_7124_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7124_)
					end

					if arg1.interrupted then
						__FUNC_6FCF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6FCF_)
				end

				if arg1.interrupted then
					__FUNC_6E57_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6E57_)
			end

			if arg1.interrupted then
				__FUNC_6CDF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6CDF_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, 331.250000, -131.470000)
		registerVal2.FocusBarB:setTopBottom(false, true, -4.000000, 0.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_6B65_(registerVal12, {})
		local function __FUNC_74BC_(arg0, arg1)
			local function __FUNC_7614_(arg0, arg1)
				local function __FUNC_776C_(arg0, arg1)
					local function __FUNC_78C4_(arg0, arg1)
						local function __FUNC_7A1C_(arg0, arg1)
							local function __FUNC_7B74_(arg0, arg1)
								local function __FUNC_7CCC_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setLeftRight(true, true, 333.250000, -133.470000)
									arg0:setTopBottom(true, true, -0.500000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_7CCC_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7CCC_)
							end

							if arg1.interrupted then
								__FUNC_7B74_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7B74_)
						end

						if arg1.interrupted then
							__FUNC_7A1C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7A1C_)
					end

					if arg1.interrupted then
						__FUNC_78C4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_78C4_)
				end

				if arg1.interrupted then
					__FUNC_776C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_776C_)
			end

			if arg1.interrupted then
				__FUNC_7614_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7614_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setLeftRight(true, true, 333.250000, -133.470000)
		registerVal2.FocusBorder:setTopBottom(true, true, -0.500000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_74BC_(registerVal13, {})
		local function __FUNC_7EEC_(arg0, arg1)
			local function __FUNC_8044_(arg0, arg1)
				local function __FUNC_81BF_(arg0, arg1)
					local function __FUNC_8314_(arg0, arg1)
						local function __FUNC_848F_(arg0, arg1)
							local function __FUNC_85E4_(arg0, arg1)
								local function __FUNC_875F_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setLeftRight(true, true, 324.750000, -126.470000)
									arg0:setTopBottom(true, false, -3.750000, 9.750000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_875F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_875F_)
							end

							if arg1.interrupted then
								__FUNC_85E4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_85E4_)
						end

						if arg1.interrupted then
							__FUNC_848F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_848F_)
					end

					if arg1.interrupted then
						__FUNC_8314_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8314_)
				end

				if arg1.interrupted then
					__FUNC_81BF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_81BF_)
			end

			if arg1.interrupted then
				__FUNC_8044_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8044_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch:setLeftRight(true, true, 324.750000, -126.470000)
		registerVal2.glitch:setTopBottom(true, false, -3.750000, 9.750000)
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_7EEC_(registerVal14, {})
		local function __FUNC_8981_(arg0, arg1)
			local function __FUNC_8AD8_(arg0, arg1)
				local function __FUNC_8C53_(arg0, arg1)
					local function __FUNC_8DA8_(arg0, arg1)
						local function __FUNC_8F23_(arg0, arg1)
							local function __FUNC_9078_(arg0, arg1)
								local function __FUNC_91F3_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setLeftRight(true, true, 324.750000, -124.970000)
									arg0:setTopBottom(false, true, -10.000000, 5.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_91F3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_91F3_)
							end

							if arg1.interrupted then
								__FUNC_9078_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9078_)
						end

						if arg1.interrupted then
							__FUNC_8F23_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8F23_)
					end

					if arg1.interrupted then
						__FUNC_8DA8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8DA8_)
				end

				if arg1.interrupted then
					__FUNC_8C53_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8C53_)
			end

			if arg1.interrupted then
				__FUNC_8AD8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8AD8_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch2:setLeftRight(true, true, 324.750000, -124.970000)
		registerVal2.glitch2:setTopBottom(false, true, -10.000000, 5.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_8981_(registerVal15, {})
	end

	registerVal18.LoseFocus = __FUNC_59D0_
	registerVal17.DefaultState = registerVal18
	registerVal18 = {}
	local function __FUNC_9415_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal5:completeAnimation()
		registerVal2.Title:setRGB(0.420000, 0.420000, 0.420000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Slider:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal16:completeAnimation()
		registerVal2.buttonText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_9415_
	registerVal17.Disabled = registerVal18
	registerVal18 = {}
	local function __FUNC_95DF_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal16:completeAnimation()
		registerVal2.buttonText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_95DF_
	registerVal17.Selected = registerVal18
	registerVal18 = {}
	local function __FUNC_96DE_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.Socialbackground000:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.Title:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Slider:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal16:completeAnimation()
		registerVal2.buttonText:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_96DE_
	local function __FUNC_98F0_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_9ECE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Title:setAlpha(0.700000)
		__FUNC_9ECE_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Slider:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_A081_(arg0, arg1)
			local function __FUNC_A1D8_(arg0, arg1)
				local function __FUNC_A353_(arg0, arg1)
					local function __FUNC_A4A8_(arg0, arg1)
						local function __FUNC_A623_(arg0, arg1)
							local function __FUNC_A778_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, true, 331.250000, -131.470000)
								arg0:setTopBottom(true, false, 1.000000, 5.000000)
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_A778_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A778_)
						end

						if arg1.interrupted then
							__FUNC_A623_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A623_)
					end

					if arg1.interrupted then
						__FUNC_A4A8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A4A8_)
				end

				if arg1.interrupted then
					__FUNC_A353_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A353_)
			end

			if arg1.interrupted then
				__FUNC_A1D8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A1D8_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, 331.250000, -131.470000)
		registerVal2.FocusBarT:setTopBottom(true, false, 1.000000, 5.000000)
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_A081_(registerVal11, {})
		local function __FUNC_A998_(arg0, arg1)
			local function __FUNC_AAF0_(arg0, arg1)
				local function __FUNC_AC6B_(arg0, arg1)
					local function __FUNC_ADC0_(arg0, arg1)
						local function __FUNC_AF3B_(arg0, arg1)
							local function __FUNC_B090_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, true, 331.250000, -131.470000)
								arg0:setTopBottom(false, true, -4.000000, 0.000000)
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_B090_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B090_)
						end

						if arg1.interrupted then
							__FUNC_AF3B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AF3B_)
					end

					if arg1.interrupted then
						__FUNC_ADC0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ADC0_)
				end

				if arg1.interrupted then
					__FUNC_AC6B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AC6B_)
			end

			if arg1.interrupted then
				__FUNC_AAF0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AAF0_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, 331.250000, -131.470000)
		registerVal2.FocusBarB:setTopBottom(false, true, -4.000000, 0.000000)
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_A998_(registerVal12, {})
		local function __FUNC_B2B5_(arg0, arg1)
			local function __FUNC_B40C_(arg0, arg1)
				local function __FUNC_B564_(arg0, arg1)
					local function __FUNC_B6BC_(arg0, arg1)
						local function __FUNC_B814_(arg0, arg1)
							local function __FUNC_B96C_(arg0, arg1)
								local function __FUNC_BAC4_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setLeftRight(true, true, 333.250000, -133.470000)
									arg0:setTopBottom(true, true, -0.500000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_BAC4_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BAC4_)
							end

							if arg1.interrupted then
								__FUNC_B96C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B96C_)
						end

						if arg1.interrupted then
							__FUNC_B814_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B814_)
					end

					if arg1.interrupted then
						__FUNC_B6BC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B6BC_)
				end

				if arg1.interrupted then
					__FUNC_B564_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B564_)
			end

			if arg1.interrupted then
				__FUNC_B40C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B40C_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setLeftRight(true, true, 333.250000, -133.470000)
		registerVal2.FocusBorder:setTopBottom(true, true, -0.500000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_B2B5_(registerVal13, {})
		local function __FUNC_BCE4_(arg0, arg1)
			local function __FUNC_BE5F_(arg0, arg1)
				local function __FUNC_BFD7_(arg0, arg1)
					local function __FUNC_C12C_(arg0, arg1)
						local function __FUNC_C2A7_(arg0, arg1)
							local function __FUNC_C3FC_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, true, 324.750000, -126.470000)
								arg0:setTopBottom(true, false, -3.750000, 9.750000)
								arg0:setAlpha(0.000000)
								arg0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_C3FC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C3FC_)
						end

						if arg1.interrupted then
							__FUNC_C2A7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C2A7_)
					end

					if arg1.interrupted then
						__FUNC_C12C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C12C_)
				end

				if arg1.interrupted then
					__FUNC_BFD7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BFD7_)
			end

			if arg1.interrupted then
				__FUNC_BE5F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BE5F_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch:setLeftRight(true, true, 324.750000, -126.470000)
		registerVal2.glitch:setTopBottom(true, false, -3.750000, 9.750000)
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.glitch:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_BCE4_(registerVal14, {})
		local function __FUNC_C6AB_(arg0, arg1)
			local function __FUNC_C823_(arg0, arg1)
				local function __FUNC_C99B_(arg0, arg1)
					local function __FUNC_CAF0_(arg0, arg1)
						local function __FUNC_CC6B_(arg0, arg1)
							local function __FUNC_CDC0_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, true, 324.750000, -124.970000)
								arg0:setTopBottom(false, true, -10.000000, 5.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_CDC0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CDC0_)
						end

						if arg1.interrupted then
							__FUNC_CC6B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CC6B_)
					end

					if arg1.interrupted then
						__FUNC_CAF0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CAF0_)
				end

				if arg1.interrupted then
					__FUNC_C99B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C99B_)
			end

			if arg1.interrupted then
				__FUNC_C823_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C823_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch2:setLeftRight(true, true, 324.750000, -124.970000)
		registerVal2.glitch2:setTopBottom(false, true, -10.000000, 5.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_C6AB_(registerVal15, {})
		local function __FUNC_CFE5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.buttonText:setAlpha(0.700000)
		__FUNC_CFE5_(registerVal16, {})
	end

	registerVal18.GainFocus = __FUNC_98F0_
	local function __FUNC_D199_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal5:completeAnimation()
		registerVal2.Title:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Slider:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, 331.250000, -131.470000)
		registerVal2.FocusBarT:setTopBottom(true, false, 1.000000, 5.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, 331.250000, -131.470000)
		registerVal2.FocusBarB:setTopBottom(false, true, -4.000000, 0.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setLeftRight(true, true, 333.250000, -133.470000)
		registerVal2.FocusBorder:setTopBottom(true, true, -0.500000, 0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.glitch:setLeftRight(true, true, 321.250000, -126.470000)
		registerVal2.glitch:setTopBottom(true, false, -3.750000, 9.750000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.glitch2:setLeftRight(true, true, 324.750000, -124.970000)
		registerVal2.glitch2:setTopBottom(false, true, -10.000000, 5.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.buttonText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.Focus = __FUNC_D199_
	local function __FUNC_D6A4_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_DB79_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Title:setAlpha(1.000000)
		__FUNC_DB79_(registerVal5, {})
		local function __FUNC_DD2D_(arg0, arg1)
			local function __FUNC_DEA7_(arg0, arg1)
				local function __FUNC_E01F_(arg0, arg1)
					local function __FUNC_E197_(arg0, arg1)
						local function __FUNC_E2EC_(arg0, arg1)
							local function __FUNC_E467_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, true, 331.250000, -131.470000)
								arg0:setTopBottom(true, false, 1.000000, 5.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_E467_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E467_)
						end

						if arg1.interrupted then
							__FUNC_E2EC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E2EC_)
					end

					if arg1.interrupted then
						__FUNC_E197_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E197_)
				end

				if arg1.interrupted then
					__FUNC_E01F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E01F_)
			end

			if arg1.interrupted then
				__FUNC_DEA7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DEA7_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, 331.250000, -131.470000)
		registerVal2.FocusBarT:setTopBottom(true, false, 1.000000, 5.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_DD2D_(registerVal11, {})
		local function __FUNC_E689_(arg0, arg1)
			local function __FUNC_E803_(arg0, arg1)
				local function __FUNC_E97B_(arg0, arg1)
					local function __FUNC_EAF3_(arg0, arg1)
						local function __FUNC_EC48_(arg0, arg1)
							local function __FUNC_EDC3_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, true, 331.250000, -131.470000)
								arg0:setTopBottom(false, true, -4.000000, 0.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_EDC3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EDC3_)
						end

						if arg1.interrupted then
							__FUNC_EC48_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EC48_)
					end

					if arg1.interrupted then
						__FUNC_EAF3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EAF3_)
				end

				if arg1.interrupted then
					__FUNC_E97B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E97B_)
			end

			if arg1.interrupted then
				__FUNC_E803_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E803_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, 331.250000, -131.470000)
		registerVal2.FocusBarB:setTopBottom(false, true, -4.000000, 0.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_E689_(registerVal12, {})
		local function __FUNC_EFE0_(arg0, arg1)
			local function __FUNC_F138_(arg0, arg1)
				local function __FUNC_F290_(arg0, arg1)
					local function __FUNC_F3E8_(arg0, arg1)
						local function __FUNC_F540_(arg0, arg1)
							local function __FUNC_F698_(arg0, arg1)
								local function __FUNC_F7F0_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setLeftRight(true, true, 333.250000, -133.470000)
									arg0:setTopBottom(true, true, -0.500000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_F7F0_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F7F0_)
							end

							if arg1.interrupted then
								__FUNC_F698_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F698_)
						end

						if arg1.interrupted then
							__FUNC_F540_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F540_)
					end

					if arg1.interrupted then
						__FUNC_F3E8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F3E8_)
				end

				if arg1.interrupted then
					__FUNC_F290_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F290_)
			end

			if arg1.interrupted then
				__FUNC_F138_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F138_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setLeftRight(true, true, 333.250000, -133.470000)
		registerVal2.FocusBorder:setTopBottom(true, true, -0.500000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_EFE0_(registerVal13, {})
		local function __FUNC_FA10_(arg0, arg1)
			local function __FUNC_FB68_(arg0, arg1)
				local function __FUNC_FCE3_(arg0, arg1)
					local function __FUNC_FE38_(arg0, arg1)
						local function __FUNC_FFB3_(arg0, arg1)
							local function __FUNC_10108_(arg0, arg1)
								local function __FUNC_10283_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setLeftRight(true, true, 324.750000, -126.470000)
									arg0:setTopBottom(true, false, -3.750000, 9.750000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_10283_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10283_)
							end

							if arg1.interrupted then
								__FUNC_10108_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10108_)
						end

						if arg1.interrupted then
							__FUNC_FFB3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FFB3_)
					end

					if arg1.interrupted then
						__FUNC_FE38_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FE38_)
				end

				if arg1.interrupted then
					__FUNC_FCE3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FCE3_)
			end

			if arg1.interrupted then
				__FUNC_FB68_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FB68_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch:setLeftRight(true, true, 324.750000, -126.470000)
		registerVal2.glitch:setTopBottom(true, false, -3.750000, 9.750000)
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_FA10_(registerVal14, {})
		local function __FUNC_104A5_(arg0, arg1)
			local function __FUNC_105FC_(arg0, arg1)
				local function __FUNC_10777_(arg0, arg1)
					local function __FUNC_108CC_(arg0, arg1)
						local function __FUNC_10A47_(arg0, arg1)
							local function __FUNC_10B9C_(arg0, arg1)
								local function __FUNC_10D17_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setLeftRight(true, true, 324.750000, -124.970000)
									arg0:setTopBottom(false, true, -10.000000, 5.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_10D17_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10D17_)
							end

							if arg1.interrupted then
								__FUNC_10B9C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10B9C_)
						end

						if arg1.interrupted then
							__FUNC_10A47_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10A47_)
					end

					if arg1.interrupted then
						__FUNC_108CC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_108CC_)
				end

				if arg1.interrupted then
					__FUNC_10777_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10777_)
			end

			if arg1.interrupted then
				__FUNC_105FC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_105FC_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch2:setLeftRight(true, true, 324.750000, -124.970000)
		registerVal2.glitch2:setTopBottom(false, true, -10.000000, 5.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_104A5_(registerVal15, {})
		local function __FUNC_10F39_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.buttonText:setAlpha(1.000000)
		__FUNC_10F39_(registerVal16, {})
	end

	registerVal18.LoseFocus = __FUNC_D6A4_
	registerVal17.ButtonOnly = registerVal18
	registerVal2.clipsPerState = registerVal17
	local registerVal19 = {}
	local registerVal20 = {}
	registerVal20.stateName = "Disabled"
	local function __FUNC_110ED_(arg0, arg2, arg3)
		return IsDisabled(arg2, arg1)
	end

	registerVal20.condition = __FUNC_110ED_
	local registerVal21 = {}
	registerVal21.stateName = "Selected"
	local function __FUNC_11140_(arg0, arg2, arg3)
		return IsSelected(arg2, arg1)
	end

	registerVal21.condition = __FUNC_11140_
	local registerVal22 = {}
	registerVal22.stateName = "ButtonOnly"
	local function __FUNC_11194_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "buttonOnly")
	end

	registerVal22.condition = __FUNC_11194_
	registerVal19 = {registerVal20, registerVal21, registerVal22}
	registerVal2:mergeStateConditions(registerVal19)
	local function __FUNC_1120A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabled", true, __FUNC_1120A_)
	local function __FUNC_11326_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "selected"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "selected", true, __FUNC_11326_)
	local function __FUNC_11442_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "buttonOnly"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "buttonOnly", true, __FUNC_11442_)
	local function __FUNC_11560_(arg0, arg2)
		local registerVal2 = IsElementInState(arg0, "Selected")
		if not registerVal2 then
			SetProperty(registerVal2, "hideArrows", true)
			DisableNavigation(registerVal2, "Slider")
			UpdateElementState(registerVal2, "Slider", arg1)
		else
			registerVal2 = IsElementInState(arg0, "Selected")
			if registerVal2 then
				SetProperty(registerVal2, "hideArrows", false)
				EnableNavigation(registerVal2, "Slider")
				UpdateElementState(registerVal2, "Slider", arg1)
			end
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_11560_)
	registerVal6.id = "Slider"
	local function __FUNC_116E6_(arg0, arg1)
		local registerVal2 = arg0.Slider:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_116E6_)
	local function __FUNC_117E6_(arg0)
		arg0.Socialbackground000:close()
		arg0.Socialbackground00:close()
		arg0.Slider:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.FocusBorder:close()
		arg0.Title:close()
		arg0.buttonText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_117E6_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

