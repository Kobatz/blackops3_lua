-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Social.Social_background")
require("ui.uieditor.widgets.StartMenu.StartMenu_Options_Slider_Control_Item")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
local function __FUNC_303_(arg0, arg1, arg2)
	local function __FUNC_37E_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		local registerVal2, registerVal3 = arg0.Slider:getRowAndColumnForIndex((registerVal1 - 1.000000))
		arg0.Slider:setActiveIndex(registerVal2, registerVal3, 0.000000)
	end

	arg0:linkToElementModel(arg0, "currentSelection", true, __FUNC_37E_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.Social_Options_Slider = registerVal2
local function __FUNC_47A_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Social_Options_Slider)
	registerVal2.id = "Social_Options_Slider"
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
	registerVal5:setLeftRight(true, false, 102.000000, 321.000000)
	registerVal5:setTopBottom(true, false, 24.000000, 43.000000)
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5:setLetterSpacing(0.500000)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_197C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "name", true, __FUNC_197C_)
	registerVal2:addElement(registerVal5)
	registerVal2.Title = registerVal5
	local registerVal6 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, false, 351.270000, 519.270000)
	registerVal6:setTopBottom(true, false, 18.000000, 48.000000)
	registerVal6:setWidgetType(CoD.StartMenu_Options_Slider_Control_Item)
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "ArrowsHidden"
	local function __FUNC_1A36_(arg0, arg1, arg2)
		return PropertyIsTrue(registerVal2, "hideArrows")
	end

	registerVal10.condition = __FUNC_1A36_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal2:addElement(registerVal6)
	registerVal2.Slider = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 49.390000, 92.390000)
	registerVal7:setTopBottom(true, false, 12.000000, 55.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.Icon = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, true, -633.250000, -624.750000)
	registerVal8:setTopBottom(true, false, -1.000000, 7.500000)
	registerVal8:setAlpha(0.150000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_social_pixel"))
	registerVal2:addElement(registerVal8)
	registerVal2.pixel1 = registerVal8
	registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, true, -633.250000, -624.750000)
	registerVal9:setTopBottom(false, true, -8.500000, 0.000000)
	registerVal9:setAlpha(0.150000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_social_pixel"))
	registerVal2:addElement(registerVal9)
	registerVal2.pixel00 = registerVal9
	registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, true, -345.250000, -336.750000)
	registerVal10:setTopBottom(true, false, -1.000000, 7.500000)
	registerVal10:setAlpha(0.150000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_social_pixel"))
	registerVal2:addElement(registerVal10)
	registerVal2.pixel10 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, true, -345.250000, -336.750000)
	registerVal11:setTopBottom(false, true, -8.500000, 0.000000)
	registerVal11:setAlpha(0.150000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_social_pixel"))
	registerVal2:addElement(registerVal11)
	registerVal2.pixel000 = registerVal11
	local registerVal12 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal12:setLeftRight(true, true, 39.000000, -339.000000)
	registerVal12:setTopBottom(true, false, 1.000000, 5.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setZoom(1.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.FocusBarT = registerVal12
	local registerVal13 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal13:setLeftRight(true, true, 39.000000, -339.000000)
	registerVal13:setTopBottom(false, true, -4.000000, 0.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setZoom(1.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.FocusBarB = registerVal13
	local registerVal14 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal14:setLeftRight(true, true, 41.000000, -341.000000)
	registerVal14:setTopBottom(true, true, -0.500000, 0.000000)
	registerVal14:setRGB(1.000000, 0.300000, 0.000000)
	registerVal14:setAlpha(0.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.FocusBorder = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, true, 29.000000, -334.000000)
	registerVal15:setTopBottom(true, false, -3.750000, 9.750000)
	registerVal15:setRGB(1.000000, 0.090000, 0.000000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.glitch = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, true, 32.500000, -332.500000)
	registerVal16:setTopBottom(false, true, -10.000000, 5.000000)
	registerVal16:setRGB(1.000000, 0.150000, 0.000000)
	registerVal16:setAlpha(0.000000)
	registerVal16:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal16)
	registerVal2.glitch2 = registerVal16
	local registerVal17 = LUI.UIText.new()
	registerVal17:setLeftRight(true, true, 334.000000, -133.470000)
	registerVal17:setTopBottom(false, false, -10.000000, 10.000000)
	registerVal17:setAlpha(0.000000)
	registerVal17:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	local function __FUNC_1AA0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal17:linkToElementModel(registerVal2, "altText", true, __FUNC_1AA0_)
	registerVal2:addElement(registerVal17)
	registerVal2.buttonText = registerVal17
	local function __FUNC_1B5A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setDataSource(registerVal1)
		end
	end

	registerVal2.Slider:linkToElementModel(registerVal2, "optionsDatasource", true, __FUNC_1B5A_)
	local function __FUNC_1BF2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.Icon:linkToElementModel(registerVal2, "image", true, __FUNC_1BF2_)
	local registerVal18 = {}
	local registerVal19 = {}
	local function __FUNC_1CA4_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal5:completeAnimation()
		registerVal2.Title:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Slider:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal17:completeAnimation()
		registerVal2.buttonText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_1CA4_
	local function __FUNC_1E52_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_23C0_(arg0, arg1)
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
		__FUNC_23C0_(registerVal5, {})
		local function __FUNC_2575_(arg0, arg1)
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
		__FUNC_2575_(registerVal6, {})
		local function __FUNC_2729_(arg0, arg1)
			local function __FUNC_2880_(arg0, arg1)
				local function __FUNC_29FB_(arg0, arg1)
					local function __FUNC_2B50_(arg0, arg1)
						local function __FUNC_2CCB_(arg0, arg1)
							local function __FUNC_2E20_(arg0, arg1)
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
								__FUNC_2E20_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E20_)
						end

						if arg1.interrupted then
							__FUNC_2CCB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CCB_)
					end

					if arg1.interrupted then
						__FUNC_2B50_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B50_)
				end

				if arg1.interrupted then
					__FUNC_29FB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29FB_)
			end

			if arg1.interrupted then
				__FUNC_2880_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2880_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, 331.250000, -131.470000)
		registerVal2.FocusBarT:setTopBottom(true, false, 1.000000, 5.000000)
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_2729_(registerVal12, {})
		local function __FUNC_3040_(arg0, arg1)
			local function __FUNC_3198_(arg0, arg1)
				local function __FUNC_3313_(arg0, arg1)
					local function __FUNC_3468_(arg0, arg1)
						local function __FUNC_35E3_(arg0, arg1)
							local function __FUNC_3738_(arg0, arg1)
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
								__FUNC_3738_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3738_)
						end

						if arg1.interrupted then
							__FUNC_35E3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35E3_)
					end

					if arg1.interrupted then
						__FUNC_3468_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3468_)
				end

				if arg1.interrupted then
					__FUNC_3313_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3313_)
			end

			if arg1.interrupted then
				__FUNC_3198_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3198_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, 331.250000, -131.470000)
		registerVal2.FocusBarB:setTopBottom(false, true, -4.000000, 0.000000)
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_3040_(registerVal13, {})
		local function __FUNC_395D_(arg0, arg1)
			local function __FUNC_3AB4_(arg0, arg1)
				local function __FUNC_3C0C_(arg0, arg1)
					local function __FUNC_3D64_(arg0, arg1)
						local function __FUNC_3EBC_(arg0, arg1)
							local function __FUNC_4014_(arg0, arg1)
								local function __FUNC_416C_(arg0, arg1)
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
									__FUNC_416C_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_416C_)
							end

							if arg1.interrupted then
								__FUNC_4014_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4014_)
						end

						if arg1.interrupted then
							__FUNC_3EBC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3EBC_)
					end

					if arg1.interrupted then
						__FUNC_3D64_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D64_)
				end

				if arg1.interrupted then
					__FUNC_3C0C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C0C_)
			end

			if arg1.interrupted then
				__FUNC_3AB4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3AB4_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBorder:setLeftRight(true, true, 333.250000, -133.470000)
		registerVal2.FocusBorder:setTopBottom(true, true, -0.500000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_395D_(registerVal14, {})
		local function __FUNC_438C_(arg0, arg1)
			local function __FUNC_44E4_(arg0, arg1)
				local function __FUNC_465F_(arg0, arg1)
					local function __FUNC_47B4_(arg0, arg1)
						local function __FUNC_492F_(arg0, arg1)
							local function __FUNC_4A84_(arg0, arg1)
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
								__FUNC_4A84_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A84_)
						end

						if arg1.interrupted then
							__FUNC_492F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_492F_)
					end

					if arg1.interrupted then
						__FUNC_47B4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_47B4_)
				end

				if arg1.interrupted then
					__FUNC_465F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_465F_)
			end

			if arg1.interrupted then
				__FUNC_44E4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_44E4_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch:setLeftRight(true, true, 324.750000, -126.470000)
		registerVal2.glitch:setTopBottom(true, false, -3.750000, 9.750000)
		registerVal2.glitch:setAlpha(1.000000)
		registerVal2.glitch:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_438C_(registerVal15, {})
		local function __FUNC_4D33_(arg0, arg1)
			local function __FUNC_4E88_(arg0, arg1)
				local function __FUNC_5003_(arg0, arg1)
					local function __FUNC_5158_(arg0, arg1)
						local function __FUNC_52D3_(arg0, arg1)
							local function __FUNC_5428_(arg0, arg1)
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
								__FUNC_5428_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5428_)
						end

						if arg1.interrupted then
							__FUNC_52D3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_52D3_)
					end

					if arg1.interrupted then
						__FUNC_5158_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5158_)
				end

				if arg1.interrupted then
					__FUNC_5003_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5003_)
			end

			if arg1.interrupted then
				__FUNC_4E88_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4E88_)
		end

		registerVal16:completeAnimation()
		registerVal2.glitch2:setLeftRight(true, true, 324.750000, -124.970000)
		registerVal2.glitch2:setTopBottom(false, true, -10.000000, 5.000000)
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_4D33_(registerVal16, {})
	end

	registerVal19.GainFocus = __FUNC_1E52_
	local function __FUNC_564D_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal5:completeAnimation()
		registerVal2.Title:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Slider:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, 331.250000, -131.470000)
		registerVal2.FocusBarT:setTopBottom(true, false, 1.000000, 5.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, 331.250000, -131.470000)
		registerVal2.FocusBarB:setTopBottom(false, true, -4.000000, 0.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBorder:setLeftRight(true, true, 333.250000, -133.470000)
		registerVal2.FocusBorder:setTopBottom(true, true, -0.500000, 0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.glitch:setLeftRight(true, true, 321.250000, -126.470000)
		registerVal2.glitch:setTopBottom(true, false, -3.750000, 9.750000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.glitch2:setLeftRight(true, true, 324.750000, -124.970000)
		registerVal2.glitch2:setTopBottom(false, true, -10.000000, 5.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal19.Focus = __FUNC_564D_
	local function __FUNC_5B00_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_5FD1_(arg0, arg1)
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
		__FUNC_5FD1_(registerVal5, {})
		local function __FUNC_6185_(arg0, arg1)
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
		__FUNC_6185_(registerVal6, {})
		local function __FUNC_6339_(arg0, arg1)
			local function __FUNC_64B3_(arg0, arg1)
				local function __FUNC_662B_(arg0, arg1)
					local function __FUNC_67A3_(arg0, arg1)
						local function __FUNC_68F8_(arg0, arg1)
							local function __FUNC_6A73_(arg0, arg1)
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
								__FUNC_6A73_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6A73_)
						end

						if arg1.interrupted then
							__FUNC_68F8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_68F8_)
					end

					if arg1.interrupted then
						__FUNC_67A3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_67A3_)
				end

				if arg1.interrupted then
					__FUNC_662B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_662B_)
			end

			if arg1.interrupted then
				__FUNC_64B3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_64B3_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, 331.250000, -131.470000)
		registerVal2.FocusBarT:setTopBottom(true, false, 1.000000, 5.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_6339_(registerVal12, {})
		local function __FUNC_6C95_(arg0, arg1)
			local function __FUNC_6E0F_(arg0, arg1)
				local function __FUNC_6F87_(arg0, arg1)
					local function __FUNC_70FF_(arg0, arg1)
						local function __FUNC_7254_(arg0, arg1)
							local function __FUNC_73CF_(arg0, arg1)
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
								__FUNC_73CF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_73CF_)
						end

						if arg1.interrupted then
							__FUNC_7254_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7254_)
					end

					if arg1.interrupted then
						__FUNC_70FF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_70FF_)
				end

				if arg1.interrupted then
					__FUNC_6F87_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6F87_)
			end

			if arg1.interrupted then
				__FUNC_6E0F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6E0F_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, 331.250000, -131.470000)
		registerVal2.FocusBarB:setTopBottom(false, true, -4.000000, 0.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_6C95_(registerVal13, {})
		local function __FUNC_75EC_(arg0, arg1)
			local function __FUNC_7744_(arg0, arg1)
				local function __FUNC_789C_(arg0, arg1)
					local function __FUNC_79F4_(arg0, arg1)
						local function __FUNC_7B4C_(arg0, arg1)
							local function __FUNC_7CA4_(arg0, arg1)
								local function __FUNC_7DFC_(arg0, arg1)
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
									__FUNC_7DFC_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7DFC_)
							end

							if arg1.interrupted then
								__FUNC_7CA4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7CA4_)
						end

						if arg1.interrupted then
							__FUNC_7B4C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7B4C_)
					end

					if arg1.interrupted then
						__FUNC_79F4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_79F4_)
				end

				if arg1.interrupted then
					__FUNC_789C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_789C_)
			end

			if arg1.interrupted then
				__FUNC_7744_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7744_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBorder:setLeftRight(true, true, 333.250000, -133.470000)
		registerVal2.FocusBorder:setTopBottom(true, true, -0.500000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_75EC_(registerVal14, {})
		local function __FUNC_801C_(arg0, arg1)
			local function __FUNC_8174_(arg0, arg1)
				local function __FUNC_82EF_(arg0, arg1)
					local function __FUNC_8444_(arg0, arg1)
						local function __FUNC_85BF_(arg0, arg1)
							local function __FUNC_8714_(arg0, arg1)
								local function __FUNC_888F_(arg0, arg1)
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
									__FUNC_888F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_888F_)
							end

							if arg1.interrupted then
								__FUNC_8714_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8714_)
						end

						if arg1.interrupted then
							__FUNC_85BF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_85BF_)
					end

					if arg1.interrupted then
						__FUNC_8444_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8444_)
				end

				if arg1.interrupted then
					__FUNC_82EF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_82EF_)
			end

			if arg1.interrupted then
				__FUNC_8174_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8174_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch:setLeftRight(true, true, 324.750000, -126.470000)
		registerVal2.glitch:setTopBottom(true, false, -3.750000, 9.750000)
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_801C_(registerVal15, {})
		local function __FUNC_8AB1_(arg0, arg1)
			local function __FUNC_8C08_(arg0, arg1)
				local function __FUNC_8D83_(arg0, arg1)
					local function __FUNC_8ED8_(arg0, arg1)
						local function __FUNC_9053_(arg0, arg1)
							local function __FUNC_91A8_(arg0, arg1)
								local function __FUNC_9323_(arg0, arg1)
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
									__FUNC_9323_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9323_)
							end

							if arg1.interrupted then
								__FUNC_91A8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_91A8_)
						end

						if arg1.interrupted then
							__FUNC_9053_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9053_)
					end

					if arg1.interrupted then
						__FUNC_8ED8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8ED8_)
				end

				if arg1.interrupted then
					__FUNC_8D83_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8D83_)
			end

			if arg1.interrupted then
				__FUNC_8C08_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8C08_)
		end

		registerVal16:completeAnimation()
		registerVal2.glitch2:setLeftRight(true, true, 324.750000, -124.970000)
		registerVal2.glitch2:setTopBottom(false, true, -10.000000, 5.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_8AB1_(registerVal16, {})
	end

	registerVal19.LoseFocus = __FUNC_5B00_
	registerVal18.DefaultState = registerVal19
	registerVal19 = {}
	local function __FUNC_9545_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal5:completeAnimation()
		registerVal2.Title:setRGB(0.420000, 0.420000, 0.420000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Slider:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal17:completeAnimation()
		registerVal2.buttonText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_9545_
	registerVal18.Disabled = registerVal19
	registerVal19 = {}
	local function __FUNC_970F_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal17:completeAnimation()
		registerVal2.buttonText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_970F_
	registerVal18.Selected = registerVal19
	registerVal19 = {}
	local function __FUNC_980E_()
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
		registerVal17:completeAnimation()
		registerVal2.buttonText:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_980E_
	local function __FUNC_9A20_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_9FFE_(arg0, arg1)
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
		__FUNC_9FFE_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Slider:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_A1B1_(arg0, arg1)
			local function __FUNC_A308_(arg0, arg1)
				local function __FUNC_A483_(arg0, arg1)
					local function __FUNC_A5D8_(arg0, arg1)
						local function __FUNC_A753_(arg0, arg1)
							local function __FUNC_A8A8_(arg0, arg1)
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
								__FUNC_A8A8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A8A8_)
						end

						if arg1.interrupted then
							__FUNC_A753_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A753_)
					end

					if arg1.interrupted then
						__FUNC_A5D8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A5D8_)
				end

				if arg1.interrupted then
					__FUNC_A483_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A483_)
			end

			if arg1.interrupted then
				__FUNC_A308_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A308_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, 331.250000, -131.470000)
		registerVal2.FocusBarT:setTopBottom(true, false, 1.000000, 5.000000)
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_A1B1_(registerVal12, {})
		local function __FUNC_AAC8_(arg0, arg1)
			local function __FUNC_AC20_(arg0, arg1)
				local function __FUNC_AD9B_(arg0, arg1)
					local function __FUNC_AEF0_(arg0, arg1)
						local function __FUNC_B06B_(arg0, arg1)
							local function __FUNC_B1C0_(arg0, arg1)
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
								__FUNC_B1C0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B1C0_)
						end

						if arg1.interrupted then
							__FUNC_B06B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B06B_)
					end

					if arg1.interrupted then
						__FUNC_AEF0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AEF0_)
				end

				if arg1.interrupted then
					__FUNC_AD9B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AD9B_)
			end

			if arg1.interrupted then
				__FUNC_AC20_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AC20_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, 331.250000, -131.470000)
		registerVal2.FocusBarB:setTopBottom(false, true, -4.000000, 0.000000)
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_AAC8_(registerVal13, {})
		local function __FUNC_B3E5_(arg0, arg1)
			local function __FUNC_B53C_(arg0, arg1)
				local function __FUNC_B694_(arg0, arg1)
					local function __FUNC_B7EC_(arg0, arg1)
						local function __FUNC_B944_(arg0, arg1)
							local function __FUNC_BA9C_(arg0, arg1)
								local function __FUNC_BBF4_(arg0, arg1)
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
									__FUNC_BBF4_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BBF4_)
							end

							if arg1.interrupted then
								__FUNC_BA9C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BA9C_)
						end

						if arg1.interrupted then
							__FUNC_B944_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B944_)
					end

					if arg1.interrupted then
						__FUNC_B7EC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B7EC_)
				end

				if arg1.interrupted then
					__FUNC_B694_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B694_)
			end

			if arg1.interrupted then
				__FUNC_B53C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B53C_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBorder:setLeftRight(true, true, 333.250000, -133.470000)
		registerVal2.FocusBorder:setTopBottom(true, true, -0.500000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_B3E5_(registerVal14, {})
		local function __FUNC_BE14_(arg0, arg1)
			local function __FUNC_BF8F_(arg0, arg1)
				local function __FUNC_C107_(arg0, arg1)
					local function __FUNC_C25C_(arg0, arg1)
						local function __FUNC_C3D7_(arg0, arg1)
							local function __FUNC_C52C_(arg0, arg1)
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
								__FUNC_C52C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C52C_)
						end

						if arg1.interrupted then
							__FUNC_C3D7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C3D7_)
					end

					if arg1.interrupted then
						__FUNC_C25C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C25C_)
				end

				if arg1.interrupted then
					__FUNC_C107_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C107_)
			end

			if arg1.interrupted then
				__FUNC_BF8F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BF8F_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch:setLeftRight(true, true, 324.750000, -126.470000)
		registerVal2.glitch:setTopBottom(true, false, -3.750000, 9.750000)
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.glitch:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_BE14_(registerVal15, {})
		local function __FUNC_C7DB_(arg0, arg1)
			local function __FUNC_C953_(arg0, arg1)
				local function __FUNC_CACB_(arg0, arg1)
					local function __FUNC_CC20_(arg0, arg1)
						local function __FUNC_CD9B_(arg0, arg1)
							local function __FUNC_CEF0_(arg0, arg1)
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
								__FUNC_CEF0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CEF0_)
						end

						if arg1.interrupted then
							__FUNC_CD9B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CD9B_)
					end

					if arg1.interrupted then
						__FUNC_CC20_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CC20_)
				end

				if arg1.interrupted then
					__FUNC_CACB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CACB_)
			end

			if arg1.interrupted then
				__FUNC_C953_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C953_)
		end

		registerVal16:completeAnimation()
		registerVal2.glitch2:setLeftRight(true, true, 324.750000, -124.970000)
		registerVal2.glitch2:setTopBottom(false, true, -10.000000, 5.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_C7DB_(registerVal16, {})
		local function __FUNC_D115_(arg0, arg1)
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

		registerVal17:completeAnimation()
		registerVal2.buttonText:setAlpha(0.700000)
		__FUNC_D115_(registerVal17, {})
	end

	registerVal19.GainFocus = __FUNC_9A20_
	local function __FUNC_D2C9_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal5:completeAnimation()
		registerVal2.Title:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Slider:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, 331.250000, -131.470000)
		registerVal2.FocusBarT:setTopBottom(true, false, 1.000000, 5.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, 331.250000, -131.470000)
		registerVal2.FocusBarB:setTopBottom(false, true, -4.000000, 0.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBorder:setLeftRight(true, true, 333.250000, -133.470000)
		registerVal2.FocusBorder:setTopBottom(true, true, -0.500000, 0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.glitch:setLeftRight(true, true, 321.250000, -126.470000)
		registerVal2.glitch:setTopBottom(true, false, -3.750000, 9.750000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.glitch2:setLeftRight(true, true, 324.750000, -124.970000)
		registerVal2.glitch2:setTopBottom(false, true, -10.000000, 5.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.buttonText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal19.Focus = __FUNC_D2C9_
	local function __FUNC_D7D4_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_DCA9_(arg0, arg1)
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
		__FUNC_DCA9_(registerVal5, {})
		local function __FUNC_DE5D_(arg0, arg1)
			local function __FUNC_DFD7_(arg0, arg1)
				local function __FUNC_E14F_(arg0, arg1)
					local function __FUNC_E2C7_(arg0, arg1)
						local function __FUNC_E41C_(arg0, arg1)
							local function __FUNC_E597_(arg0, arg1)
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
								__FUNC_E597_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E597_)
						end

						if arg1.interrupted then
							__FUNC_E41C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E41C_)
					end

					if arg1.interrupted then
						__FUNC_E2C7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E2C7_)
				end

				if arg1.interrupted then
					__FUNC_E14F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E14F_)
			end

			if arg1.interrupted then
				__FUNC_DFD7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DFD7_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, 331.250000, -131.470000)
		registerVal2.FocusBarT:setTopBottom(true, false, 1.000000, 5.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_DE5D_(registerVal12, {})
		local function __FUNC_E7B9_(arg0, arg1)
			local function __FUNC_E933_(arg0, arg1)
				local function __FUNC_EAAB_(arg0, arg1)
					local function __FUNC_EC23_(arg0, arg1)
						local function __FUNC_ED78_(arg0, arg1)
							local function __FUNC_EEF3_(arg0, arg1)
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
								__FUNC_EEF3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EEF3_)
						end

						if arg1.interrupted then
							__FUNC_ED78_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ED78_)
					end

					if arg1.interrupted then
						__FUNC_EC23_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EC23_)
				end

				if arg1.interrupted then
					__FUNC_EAAB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EAAB_)
			end

			if arg1.interrupted then
				__FUNC_E933_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E933_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, 331.250000, -131.470000)
		registerVal2.FocusBarB:setTopBottom(false, true, -4.000000, 0.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_E7B9_(registerVal13, {})
		local function __FUNC_F110_(arg0, arg1)
			local function __FUNC_F268_(arg0, arg1)
				local function __FUNC_F3C0_(arg0, arg1)
					local function __FUNC_F518_(arg0, arg1)
						local function __FUNC_F670_(arg0, arg1)
							local function __FUNC_F7C8_(arg0, arg1)
								local function __FUNC_F920_(arg0, arg1)
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
									__FUNC_F920_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F920_)
							end

							if arg1.interrupted then
								__FUNC_F7C8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F7C8_)
						end

						if arg1.interrupted then
							__FUNC_F670_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F670_)
					end

					if arg1.interrupted then
						__FUNC_F518_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F518_)
				end

				if arg1.interrupted then
					__FUNC_F3C0_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F3C0_)
			end

			if arg1.interrupted then
				__FUNC_F268_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F268_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBorder:setLeftRight(true, true, 333.250000, -133.470000)
		registerVal2.FocusBorder:setTopBottom(true, true, -0.500000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_F110_(registerVal14, {})
		local function __FUNC_FB40_(arg0, arg1)
			local function __FUNC_FC98_(arg0, arg1)
				local function __FUNC_FE13_(arg0, arg1)
					local function __FUNC_FF68_(arg0, arg1)
						local function __FUNC_100E3_(arg0, arg1)
							local function __FUNC_10238_(arg0, arg1)
								local function __FUNC_103B3_(arg0, arg1)
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
									__FUNC_103B3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_103B3_)
							end

							if arg1.interrupted then
								__FUNC_10238_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10238_)
						end

						if arg1.interrupted then
							__FUNC_100E3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_100E3_)
					end

					if arg1.interrupted then
						__FUNC_FF68_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FF68_)
				end

				if arg1.interrupted then
					__FUNC_FE13_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FE13_)
			end

			if arg1.interrupted then
				__FUNC_FC98_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FC98_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch:setLeftRight(true, true, 324.750000, -126.470000)
		registerVal2.glitch:setTopBottom(true, false, -3.750000, 9.750000)
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_FB40_(registerVal15, {})
		local function __FUNC_105D5_(arg0, arg1)
			local function __FUNC_1072C_(arg0, arg1)
				local function __FUNC_108A7_(arg0, arg1)
					local function __FUNC_109FC_(arg0, arg1)
						local function __FUNC_10B77_(arg0, arg1)
							local function __FUNC_10CCC_(arg0, arg1)
								local function __FUNC_10E47_(arg0, arg1)
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
									__FUNC_10E47_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10E47_)
							end

							if arg1.interrupted then
								__FUNC_10CCC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10CCC_)
						end

						if arg1.interrupted then
							__FUNC_10B77_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10B77_)
					end

					if arg1.interrupted then
						__FUNC_109FC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_109FC_)
				end

				if arg1.interrupted then
					__FUNC_108A7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_108A7_)
			end

			if arg1.interrupted then
				__FUNC_1072C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1072C_)
		end

		registerVal16:completeAnimation()
		registerVal2.glitch2:setLeftRight(true, true, 324.750000, -124.970000)
		registerVal2.glitch2:setTopBottom(false, true, -10.000000, 5.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_105D5_(registerVal16, {})
		local function __FUNC_11069_(arg0, arg1)
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

		registerVal17:completeAnimation()
		registerVal2.buttonText:setAlpha(1.000000)
		__FUNC_11069_(registerVal17, {})
	end

	registerVal19.LoseFocus = __FUNC_D7D4_
	registerVal18.ButtonOnly = registerVal19
	registerVal2.clipsPerState = registerVal18
	local registerVal20 = {}
	local registerVal21 = {}
	registerVal21.stateName = "Disabled"
	local function __FUNC_1121D_(arg0, arg2, arg3)
		return IsDisabled(arg2, arg1)
	end

	registerVal21.condition = __FUNC_1121D_
	local registerVal22 = {}
	registerVal22.stateName = "Selected"
	local function __FUNC_11270_(arg0, arg2, arg3)
		return IsSelected(arg2, arg1)
	end

	registerVal22.condition = __FUNC_11270_
	local registerVal23 = {}
	registerVal23.stateName = "ButtonOnly"
	local function __FUNC_112C4_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "buttonOnly")
	end

	registerVal23.condition = __FUNC_112C4_
	registerVal20 = {registerVal21, registerVal22, registerVal23}
	registerVal2:mergeStateConditions(registerVal20)
	local function __FUNC_1133A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabled", true, __FUNC_1133A_)
	local function __FUNC_11456_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "selected"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "selected", true, __FUNC_11456_)
	local function __FUNC_11572_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "buttonOnly"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "buttonOnly", true, __FUNC_11572_)
	local function __FUNC_11690_(arg0, arg2)
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

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_11690_)
	registerVal6.id = "Slider"
	local function __FUNC_11816_(arg0, arg1)
		local registerVal2 = arg0.Slider:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_11816_)
	local function __FUNC_11916_(arg0)
		arg0.Socialbackground000:close()
		arg0.Socialbackground00:close()
		arg0.Slider:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.FocusBorder:close()
		arg0.Title:close()
		arg0.Icon:close()
		arg0.buttonText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_11916_)
	if __FUNC_303_ then
		__FUNC_303_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.Social_Options_Slider.new = __FUNC_47A_
