-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.Demo.demo_options_slider_control_item")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local function __FUNC_2B7_(arg0, arg1, arg2)
	if CoD.isPC then
		arg0:setHandleMouseButton(false)
		arg0:setForceMouseEventDispatch(true)
	end
	local function __FUNC_3BF_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		local registerVal2, registerVal3 = arg0.Slider:getRowAndColumnForIndex((registerVal1 - 1.000000))
		arg0.Slider:setActiveIndex(registerVal2, registerVal3, 0.000000)
	end

	arg0:linkToElementModel(arg0, "currentSelection", true, __FUNC_3BF_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.demo_options_slider = registerVal2
local function __FUNC_4BA_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.demo_options_slider)
	registerVal2.id = "demo_options_slider"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 540.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 34.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 243.000000, 528.000000)
	registerVal3:setTopBottom(true, false, 3.000000, 31.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.800000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrgidlefull"))
	registerVal2:addElement(registerVal3)
	registerVal2.BlackBox2 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 15.000000, 234.020000)
	registerVal4:setTopBottom(true, false, 3.000000, 31.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.800000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrgidlefull"))
	registerVal2:addElement(registerVal4)
	registerVal2.BlackBox = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 11.000000, 236.000000)
	registerVal5:setTopBottom(true, false, 3.000000, 31.000000)
	registerVal5:setAlpha(0.250000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrgidlefull"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal5:setShaderVector(0.000000, 0.120301, 0.120301, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.BoxButtonLrgIdle = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 240.530000, 528.000000)
	registerVal6:setTopBottom(true, false, 3.000000, 31.000000)
	registerVal6:setAlpha(0.250000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrgidlefull"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal6:setShaderVector(0.000000, 0.120301, 0.120301, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.BoxButtonLrgIdle0 = registerVal6
	local registerVal7 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 242.000000, 529.480000)
	registerVal7:setTopBottom(true, false, 1.000000, 33.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.StartMenuframenoBG1 = registerVal7
	local registerVal8 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal8:setLeftRight(false, true, -526.980000, -304.000000)
	registerVal8:setTopBottom(true, false, 1.000000, 33.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.StartMenuframenoBG0 = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, false, 24.000000, 225.000000)
	registerVal9:setTopBottom(true, false, 7.000000, 27.000000)
	registerVal9:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal9:setLetterSpacing(0.500000)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_183C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "displayText", true, __FUNC_183C_)
	registerVal2:addElement(registerVal9)
	registerVal2.Title = registerVal9
	local registerVal10 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal10:makeFocusable()
	registerVal10:setLeftRight(true, false, 260.250000, 510.250000)
	registerVal10:setTopBottom(true, false, 2.000000, 32.000000)
	registerVal10:setWidgetType(CoD.demo_options_slider_control_item)
	local function __FUNC_18F6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setDataSource(registerVal1)
		end
	end

	registerVal10:linkToElementModel(registerVal2, "optionsDatasource", true, __FUNC_18F6_)
	local function __FUNC_198E_(arg0, arg2)
		ProcessListAction(registerVal2, arg0, arg1)
		return nil
	end

	registerVal10:registerEventHandler("list_item_gain_focus", __FUNC_198E_)
	registerVal2:addElement(registerVal10)
	registerVal2.Slider = registerVal10
	local registerVal11 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal11:setLeftRight(true, true, 240.520000, -12.000000)
	registerVal11:setTopBottom(true, false, 2.000000, 6.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setZoom(1.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.FocusBarT = registerVal11
	local registerVal12 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal12:setLeftRight(true, true, 240.520000, -12.000000)
	registerVal12:setTopBottom(false, true, -3.000000, 1.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setZoom(1.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.FocusBarB = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, true, 234.020000, -12.000000)
	registerVal13:setTopBottom(true, false, -2.750000, 10.750000)
	registerVal13:setRGB(1.000000, 0.090000, 0.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.glitch = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, true, 234.020000, -12.000000)
	registerVal14:setTopBottom(false, true, -9.000000, 6.000000)
	registerVal14:setRGB(1.000000, 0.150000, 0.000000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.glitch2 = registerVal14
	local registerVal15 = {}
	local registerVal16 = {}
	local function __FUNC_19EF_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_19EF_
	local function __FUNC_1BED_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_1DCC_(arg0, arg1)
			local function __FUNC_1F24_(arg0, arg1)
				local function __FUNC_209F_(arg0, arg1)
					local function __FUNC_21F4_(arg0, arg1)
						local function __FUNC_236F_(arg0, arg1)
							local function __FUNC_24C4_(arg0, arg1)
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
								__FUNC_24C4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24C4_)
						end

						if arg1.interrupted then
							__FUNC_236F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_236F_)
					end

					if arg1.interrupted then
						__FUNC_21F4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21F4_)
				end

				if arg1.interrupted then
					__FUNC_209F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_209F_)
			end

			if arg1.interrupted then
				__FUNC_1F24_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F24_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_1DCC_(registerVal11, {})
		local function __FUNC_2679_(arg0, arg1)
			local function __FUNC_27D0_(arg0, arg1)
				local function __FUNC_294B_(arg0, arg1)
					local function __FUNC_2AA0_(arg0, arg1)
						local function __FUNC_2C1B_(arg0, arg1)
							local function __FUNC_2D70_(arg0, arg1)
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
								__FUNC_2D70_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D70_)
						end

						if arg1.interrupted then
							__FUNC_2C1B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C1B_)
					end

					if arg1.interrupted then
						__FUNC_2AA0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AA0_)
				end

				if arg1.interrupted then
					__FUNC_294B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_294B_)
			end

			if arg1.interrupted then
				__FUNC_27D0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27D0_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_2679_(registerVal12, {})
		local function __FUNC_2F25_(arg0, arg1)
			local function __FUNC_307C_(arg0, arg1)
				local function __FUNC_31F7_(arg0, arg1)
					local function __FUNC_334C_(arg0, arg1)
						local function __FUNC_34C7_(arg0, arg1)
							local function __FUNC_361C_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_361C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_361C_)
						end

						if arg1.interrupted then
							__FUNC_34C7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34C7_)
					end

					if arg1.interrupted then
						__FUNC_334C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_334C_)
				end

				if arg1.interrupted then
					__FUNC_31F7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31F7_)
			end

			if arg1.interrupted then
				__FUNC_307C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_307C_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_2F25_(registerVal13, {})
		local function __FUNC_37D1_(arg0, arg1)
			local function __FUNC_3928_(arg0, arg1)
				local function __FUNC_3AA3_(arg0, arg1)
					local function __FUNC_3BF8_(arg0, arg1)
						local function __FUNC_3D73_(arg0, arg1)
							local function __FUNC_3EC8_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_3EC8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3EC8_)
						end

						if arg1.interrupted then
							__FUNC_3D73_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D73_)
					end

					if arg1.interrupted then
						__FUNC_3BF8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3BF8_)
				end

				if arg1.interrupted then
					__FUNC_3AA3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3AA3_)
			end

			if arg1.interrupted then
				__FUNC_3928_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3928_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_37D1_(registerVal14, {})
	end

	registerVal16.GainFocus = __FUNC_1BED_
	local function __FUNC_407D_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.Focus = __FUNC_407D_
	local function __FUNC_4282_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_4460_(arg0, arg1)
			local function __FUNC_45DB_(arg0, arg1)
				local function __FUNC_4753_(arg0, arg1)
					local function __FUNC_48CB_(arg0, arg1)
						local function __FUNC_4A20_(arg0, arg1)
							local function __FUNC_4B9B_(arg0, arg1)
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
								__FUNC_4B9B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B9B_)
						end

						if arg1.interrupted then
							__FUNC_4A20_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A20_)
					end

					if arg1.interrupted then
						__FUNC_48CB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_48CB_)
				end

				if arg1.interrupted then
					__FUNC_4753_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4753_)
			end

			if arg1.interrupted then
				__FUNC_45DB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_45DB_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_4460_(registerVal11, {})
		local function __FUNC_4D4D_(arg0, arg1)
			local function __FUNC_4EC7_(arg0, arg1)
				local function __FUNC_503F_(arg0, arg1)
					local function __FUNC_51B7_(arg0, arg1)
						local function __FUNC_530C_(arg0, arg1)
							local function __FUNC_5487_(arg0, arg1)
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
								__FUNC_5487_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5487_)
						end

						if arg1.interrupted then
							__FUNC_530C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_530C_)
					end

					if arg1.interrupted then
						__FUNC_51B7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_51B7_)
				end

				if arg1.interrupted then
					__FUNC_503F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_503F_)
			end

			if arg1.interrupted then
				__FUNC_4EC7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4EC7_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_4D4D_(registerVal12, {})
		local function __FUNC_5639_(arg0, arg1)
			local function __FUNC_5790_(arg0, arg1)
				local function __FUNC_590B_(arg0, arg1)
					local function __FUNC_5A60_(arg0, arg1)
						local function __FUNC_5BDB_(arg0, arg1)
							local function __FUNC_5D30_(arg0, arg1)
								local function __FUNC_5EAB_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_5EAB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5EAB_)
							end

							if arg1.interrupted then
								__FUNC_5D30_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5D30_)
						end

						if arg1.interrupted then
							__FUNC_5BDB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5BDB_)
					end

					if arg1.interrupted then
						__FUNC_5A60_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5A60_)
				end

				if arg1.interrupted then
					__FUNC_590B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_590B_)
			end

			if arg1.interrupted then
				__FUNC_5790_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5790_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_5639_(registerVal13, {})
		local function __FUNC_605D_(arg0, arg1)
			local function __FUNC_61B4_(arg0, arg1)
				local function __FUNC_632F_(arg0, arg1)
					local function __FUNC_6484_(arg0, arg1)
						local function __FUNC_65FF_(arg0, arg1)
							local function __FUNC_6754_(arg0, arg1)
								local function __FUNC_68CF_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_68CF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_68CF_)
							end

							if arg1.interrupted then
								__FUNC_6754_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6754_)
						end

						if arg1.interrupted then
							__FUNC_65FF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_65FF_)
					end

					if arg1.interrupted then
						__FUNC_6484_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6484_)
				end

				if arg1.interrupted then
					__FUNC_632F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_632F_)
			end

			if arg1.interrupted then
				__FUNC_61B4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_61B4_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_605D_(registerVal14, {})
	end

	registerVal16.LoseFocus = __FUNC_4282_
	registerVal15.DefaultState = registerVal16
	registerVal16 = {}
	local function __FUNC_6A81_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal7:completeAnimation()
		registerVal2.StartMenuframenoBG1:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Title:setRGB(0.420000, 0.420000, 0.420000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal16.DefaultClip = __FUNC_6A81_
	registerVal15.Disabled = registerVal16
	registerVal16 = {}
	local function __FUNC_6C5C_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal16.DefaultClip = __FUNC_6C5C_
	registerVal15.Selected = registerVal16
	registerVal16 = {}
	local function __FUNC_6CBE_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal9:completeAnimation()
		registerVal2.Title:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal16.DefaultClip = __FUNC_6CBE_
	local function __FUNC_6DBA_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_7086_(arg0, arg1)
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

		registerVal9:completeAnimation()
		registerVal2.Title:setAlpha(0.700000)
		__FUNC_7086_(registerVal9, {})
		local function __FUNC_7239_(arg0, arg1)
			local function __FUNC_7390_(arg0, arg1)
				local function __FUNC_750B_(arg0, arg1)
					local function __FUNC_7660_(arg0, arg1)
						local function __FUNC_77DB_(arg0, arg1)
							local function __FUNC_7930_(arg0, arg1)
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
								__FUNC_7930_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7930_)
						end

						if arg1.interrupted then
							__FUNC_77DB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_77DB_)
					end

					if arg1.interrupted then
						__FUNC_7660_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7660_)
				end

				if arg1.interrupted then
					__FUNC_750B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_750B_)
			end

			if arg1.interrupted then
				__FUNC_7390_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7390_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_7239_(registerVal11, {})
		local function __FUNC_7AE5_(arg0, arg1)
			local function __FUNC_7C3C_(arg0, arg1)
				local function __FUNC_7DB7_(arg0, arg1)
					local function __FUNC_7F0C_(arg0, arg1)
						local function __FUNC_8087_(arg0, arg1)
							local function __FUNC_81DC_(arg0, arg1)
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
								__FUNC_81DC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_81DC_)
						end

						if arg1.interrupted then
							__FUNC_8087_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8087_)
					end

					if arg1.interrupted then
						__FUNC_7F0C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7F0C_)
				end

				if arg1.interrupted then
					__FUNC_7DB7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7DB7_)
			end

			if arg1.interrupted then
				__FUNC_7C3C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7C3C_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_7AE5_(registerVal12, {})
		local function __FUNC_8391_(arg0, arg1)
			local function __FUNC_84E8_(arg0, arg1)
				local function __FUNC_8663_(arg0, arg1)
					local function __FUNC_87B8_(arg0, arg1)
						local function __FUNC_8933_(arg0, arg1)
							local function __FUNC_8A88_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								arg0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_8A88_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8A88_)
						end

						if arg1.interrupted then
							__FUNC_8933_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8933_)
					end

					if arg1.interrupted then
						__FUNC_87B8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_87B8_)
				end

				if arg1.interrupted then
					__FUNC_8663_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8663_)
			end

			if arg1.interrupted then
				__FUNC_84E8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_84E8_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		registerVal2.glitch:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_8391_(registerVal13, {})
		local function __FUNC_8CC7_(arg0, arg1)
			local function __FUNC_8E1C_(arg0, arg1)
				local function __FUNC_8F97_(arg0, arg1)
					local function __FUNC_90EC_(arg0, arg1)
						local function __FUNC_9267_(arg0, arg1)
							local function __FUNC_93BC_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_93BC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_93BC_)
						end

						if arg1.interrupted then
							__FUNC_9267_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9267_)
					end

					if arg1.interrupted then
						__FUNC_90EC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_90EC_)
				end

				if arg1.interrupted then
					__FUNC_8F97_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8F97_)
			end

			if arg1.interrupted then
				__FUNC_8E1C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8E1C_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_8CC7_(registerVal14, {})
	end

	registerVal16.GainFocus = __FUNC_6DBA_
	local function __FUNC_9571_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal9:completeAnimation()
		registerVal2.Title:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal16.Focus = __FUNC_9571_
	local function __FUNC_971B_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_9947_(arg0, arg1)
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

		registerVal9:completeAnimation()
		registerVal2.Title:setAlpha(1.000000)
		__FUNC_9947_(registerVal9, {})
		local function __FUNC_9AF9_(arg0, arg1)
			local function __FUNC_9C73_(arg0, arg1)
				local function __FUNC_9DEB_(arg0, arg1)
					local function __FUNC_9F63_(arg0, arg1)
						local function __FUNC_A0B8_(arg0, arg1)
							local function __FUNC_A233_(arg0, arg1)
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
								__FUNC_A233_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A233_)
						end

						if arg1.interrupted then
							__FUNC_A0B8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A0B8_)
					end

					if arg1.interrupted then
						__FUNC_9F63_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9F63_)
				end

				if arg1.interrupted then
					__FUNC_9DEB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9DEB_)
			end

			if arg1.interrupted then
				__FUNC_9C73_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9C73_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_9AF9_(registerVal11, {})
		local function __FUNC_A3E5_(arg0, arg1)
			local function __FUNC_A55F_(arg0, arg1)
				local function __FUNC_A6D7_(arg0, arg1)
					local function __FUNC_A84F_(arg0, arg1)
						local function __FUNC_A9A4_(arg0, arg1)
							local function __FUNC_AB1F_(arg0, arg1)
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
								__FUNC_AB1F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AB1F_)
						end

						if arg1.interrupted then
							__FUNC_A9A4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A9A4_)
					end

					if arg1.interrupted then
						__FUNC_A84F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A84F_)
				end

				if arg1.interrupted then
					__FUNC_A6D7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A6D7_)
			end

			if arg1.interrupted then
				__FUNC_A55F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A55F_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_A3E5_(registerVal12, {})
		local function __FUNC_ACD1_(arg0, arg1)
			local function __FUNC_AE28_(arg0, arg1)
				local function __FUNC_AFA3_(arg0, arg1)
					local function __FUNC_B0F8_(arg0, arg1)
						local function __FUNC_B273_(arg0, arg1)
							local function __FUNC_B3C8_(arg0, arg1)
								local function __FUNC_B543_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_B543_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B543_)
							end

							if arg1.interrupted then
								__FUNC_B3C8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B3C8_)
						end

						if arg1.interrupted then
							__FUNC_B273_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B273_)
					end

					if arg1.interrupted then
						__FUNC_B0F8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B0F8_)
				end

				if arg1.interrupted then
					__FUNC_AFA3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AFA3_)
			end

			if arg1.interrupted then
				__FUNC_AE28_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AE28_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_ACD1_(registerVal13, {})
		local function __FUNC_B6F5_(arg0, arg1)
			local function __FUNC_B84C_(arg0, arg1)
				local function __FUNC_B9C7_(arg0, arg1)
					local function __FUNC_BB1C_(arg0, arg1)
						local function __FUNC_BC97_(arg0, arg1)
							local function __FUNC_BDEC_(arg0, arg1)
								local function __FUNC_BF67_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_BF67_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BF67_)
							end

							if arg1.interrupted then
								__FUNC_BDEC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BDEC_)
						end

						if arg1.interrupted then
							__FUNC_BC97_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BC97_)
					end

					if arg1.interrupted then
						__FUNC_BB1C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BB1C_)
				end

				if arg1.interrupted then
					__FUNC_B9C7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B9C7_)
			end

			if arg1.interrupted then
				__FUNC_B84C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B84C_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_B6F5_(registerVal14, {})
	end

	registerVal16.LoseFocus = __FUNC_971B_
	registerVal15.ButtonOnly = registerVal16
	registerVal16 = {}
	local function __FUNC_C119_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal9:completeAnimation()
		registerVal2.Title:setRGB(0.420000, 0.420000, 0.420000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal16.DefaultClip = __FUNC_C119_
	local function __FUNC_C21B_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_C4E6_(arg0, arg1)
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

		registerVal9:completeAnimation()
		registerVal2.Title:setAlpha(0.700000)
		__FUNC_C4E6_(registerVal9, {})
		local function __FUNC_C699_(arg0, arg1)
			local function __FUNC_C7F0_(arg0, arg1)
				local function __FUNC_C96B_(arg0, arg1)
					local function __FUNC_CAC0_(arg0, arg1)
						local function __FUNC_CC3B_(arg0, arg1)
							local function __FUNC_CD90_(arg0, arg1)
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
								__FUNC_CD90_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CD90_)
						end

						if arg1.interrupted then
							__FUNC_CC3B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CC3B_)
					end

					if arg1.interrupted then
						__FUNC_CAC0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CAC0_)
				end

				if arg1.interrupted then
					__FUNC_C96B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C96B_)
			end

			if arg1.interrupted then
				__FUNC_C7F0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C7F0_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_C699_(registerVal11, {})
		local function __FUNC_CF45_(arg0, arg1)
			local function __FUNC_D09C_(arg0, arg1)
				local function __FUNC_D217_(arg0, arg1)
					local function __FUNC_D36C_(arg0, arg1)
						local function __FUNC_D4E7_(arg0, arg1)
							local function __FUNC_D63C_(arg0, arg1)
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
								__FUNC_D63C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D63C_)
						end

						if arg1.interrupted then
							__FUNC_D4E7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D4E7_)
					end

					if arg1.interrupted then
						__FUNC_D36C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D36C_)
				end

				if arg1.interrupted then
					__FUNC_D217_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D217_)
			end

			if arg1.interrupted then
				__FUNC_D09C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D09C_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_CF45_(registerVal12, {})
		local function __FUNC_D7F1_(arg0, arg1)
			local function __FUNC_D948_(arg0, arg1)
				local function __FUNC_DAC3_(arg0, arg1)
					local function __FUNC_DC18_(arg0, arg1)
						local function __FUNC_DD93_(arg0, arg1)
							local function __FUNC_DEE8_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								arg0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_DEE8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DEE8_)
						end

						if arg1.interrupted then
							__FUNC_DD93_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DD93_)
					end

					if arg1.interrupted then
						__FUNC_DC18_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DC18_)
				end

				if arg1.interrupted then
					__FUNC_DAC3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DAC3_)
			end

			if arg1.interrupted then
				__FUNC_D948_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D948_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		registerVal2.glitch:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_D7F1_(registerVal13, {})
		local function __FUNC_E127_(arg0, arg1)
			local function __FUNC_E27C_(arg0, arg1)
				local function __FUNC_E3F7_(arg0, arg1)
					local function __FUNC_E54C_(arg0, arg1)
						local function __FUNC_E6C7_(arg0, arg1)
							local function __FUNC_E81C_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_E81C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E81C_)
						end

						if arg1.interrupted then
							__FUNC_E6C7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E6C7_)
					end

					if arg1.interrupted then
						__FUNC_E54C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E54C_)
				end

				if arg1.interrupted then
					__FUNC_E3F7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E3F7_)
			end

			if arg1.interrupted then
				__FUNC_E27C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E27C_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_E127_(registerVal14, {})
	end

	registerVal16.GainFocus = __FUNC_C21B_
	local function __FUNC_E9D1_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal9:completeAnimation()
		registerVal2.Title:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal16.Focus = __FUNC_E9D1_
	local function __FUNC_EB7B_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_EDA7_(arg0, arg1)
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

		registerVal9:completeAnimation()
		registerVal2.Title:setAlpha(1.000000)
		__FUNC_EDA7_(registerVal9, {})
		local function __FUNC_EF59_(arg0, arg1)
			local function __FUNC_F0D3_(arg0, arg1)
				local function __FUNC_F24B_(arg0, arg1)
					local function __FUNC_F3C3_(arg0, arg1)
						local function __FUNC_F518_(arg0, arg1)
							local function __FUNC_F693_(arg0, arg1)
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
								__FUNC_F693_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F693_)
						end

						if arg1.interrupted then
							__FUNC_F518_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F518_)
					end

					if arg1.interrupted then
						__FUNC_F3C3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F3C3_)
				end

				if arg1.interrupted then
					__FUNC_F24B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F24B_)
			end

			if arg1.interrupted then
				__FUNC_F0D3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F0D3_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_EF59_(registerVal11, {})
		local function __FUNC_F845_(arg0, arg1)
			local function __FUNC_F9BF_(arg0, arg1)
				local function __FUNC_FB37_(arg0, arg1)
					local function __FUNC_FCAF_(arg0, arg1)
						local function __FUNC_FE04_(arg0, arg1)
							local function __FUNC_FF7F_(arg0, arg1)
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
								__FUNC_FF7F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FF7F_)
						end

						if arg1.interrupted then
							__FUNC_FE04_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FE04_)
					end

					if arg1.interrupted then
						__FUNC_FCAF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FCAF_)
				end

				if arg1.interrupted then
					__FUNC_FB37_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FB37_)
			end

			if arg1.interrupted then
				__FUNC_F9BF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F9BF_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_F845_(registerVal12, {})
		local function __FUNC_10131_(arg0, arg1)
			local function __FUNC_10288_(arg0, arg1)
				local function __FUNC_10403_(arg0, arg1)
					local function __FUNC_10558_(arg0, arg1)
						local function __FUNC_106D3_(arg0, arg1)
							local function __FUNC_10828_(arg0, arg1)
								local function __FUNC_109A3_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_109A3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_109A3_)
							end

							if arg1.interrupted then
								__FUNC_10828_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10828_)
						end

						if arg1.interrupted then
							__FUNC_106D3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_106D3_)
					end

					if arg1.interrupted then
						__FUNC_10558_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10558_)
				end

				if arg1.interrupted then
					__FUNC_10403_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10403_)
			end

			if arg1.interrupted then
				__FUNC_10288_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10288_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_10131_(registerVal13, {})
		local function __FUNC_10B55_(arg0, arg1)
			local function __FUNC_10CAC_(arg0, arg1)
				local function __FUNC_10E27_(arg0, arg1)
					local function __FUNC_10F7C_(arg0, arg1)
						local function __FUNC_110F7_(arg0, arg1)
							local function __FUNC_1124C_(arg0, arg1)
								local function __FUNC_113C7_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_113C7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_113C7_)
							end

							if arg1.interrupted then
								__FUNC_1124C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1124C_)
						end

						if arg1.interrupted then
							__FUNC_110F7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_110F7_)
					end

					if arg1.interrupted then
						__FUNC_10F7C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10F7C_)
				end

				if arg1.interrupted then
					__FUNC_10E27_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10E27_)
			end

			if arg1.interrupted then
				__FUNC_10CAC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10CAC_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_10B55_(registerVal14, {})
	end

	registerVal16.LoseFocus = __FUNC_EB7B_
	registerVal15.ButtonOnlyDisabled = registerVal16
	registerVal2.clipsPerState = registerVal15
	local registerVal17 = {}
	local registerVal18 = {}
	registerVal18.stateName = "Disabled"
	local function __FUNC_11579_(arg0, arg2, arg3)
		local registerVal3 = IsDisabled(arg2, arg1)
		if registerVal3 then
			registerVal3 = IsSelfModelValueTrue(arg2, arg1, "buttonOnly")
		end
		return (not registerVal3)
	end

	registerVal18.condition = __FUNC_11579_
	local registerVal19 = {}
	registerVal19.stateName = "Selected"
	local function __FUNC_1161E_(arg0, arg2, arg3)
		return IsSelected(arg2, arg1)
	end

	registerVal19.condition = __FUNC_1161E_
	local registerVal20 = {}
	registerVal20.stateName = "ButtonOnly"
	local function __FUNC_11670_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "buttonOnly")
		if registerVal3 then
			registerVal3 = IsDisabled(arg2, arg1)
		end
		return (not registerVal3)
	end

	registerVal20.condition = __FUNC_11670_
	local registerVal21 = {}
	registerVal21.stateName = "ButtonOnlyDisabled"
	local function __FUNC_11716_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "buttonOnly")
		if registerVal3 then
			registerVal3 = IsDisabled(arg2, arg1)
		end
		return registerVal3
	end

	registerVal21.condition = __FUNC_11716_
	registerVal17 = {registerVal18, registerVal19, registerVal20, registerVal21}
	registerVal2:mergeStateConditions(registerVal17)
	local function __FUNC_117B6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabled", true, __FUNC_117B6_)
	local function __FUNC_118D2_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "buttonOnly"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "buttonOnly", true, __FUNC_118D2_)
	local function __FUNC_119F0_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "selected"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "selected", true, __FUNC_119F0_)
	local function __FUNC_11B0E_(arg0, arg2)
		local registerVal2 = IsElementInState(arg0, "Selected")
		if not registerVal2 then
			SetProperty(registerVal2, "hideArrows", true)
			UpdateElementState(registerVal2, "Slider", arg1)
		else
			registerVal2 = IsElementInState(arg0, "Selected")
			if registerVal2 then
				SetProperty(registerVal2, "hideArrows", false)
				UpdateElementState(registerVal2, "Slider", arg1)
			end
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_11B0E_)
	registerVal10.id = "Slider"
	local function __FUNC_11C3D_(arg0, arg1)
		local registerVal2 = arg0.Slider:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_11C3D_)
	local function __FUNC_11D3E_(arg0)
		arg0.StartMenuframenoBG1:close()
		arg0.StartMenuframenoBG0:close()
		arg0.Slider:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.Title:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_11D3E_)
	if __FUNC_2B7_ then
		__FUNC_2B7_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.demo_options_slider.new = __FUNC_4BA_
