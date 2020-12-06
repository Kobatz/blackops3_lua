-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.CodCaster.CodCaster_Options_Slider_Control_Item")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local function __FUNC_2CC_(arg0, arg1, arg2)
	if CoD.isPC then
		arg0:setHandleMouseButton(false)
		arg0:setForceMouseEventDispatch(true)
	end
	local function __FUNC_3D7_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		local registerVal2, registerVal3 = arg0.Slider:getRowAndColumnForIndex((registerVal1 - 1.000000))
		arg0.Slider:setActiveIndex(registerVal2, registerVal3, 0.000000)
	end

	arg0:linkToElementModel(arg0, "currentSelection", true, __FUNC_3D7_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.codcaster_options_slider_small = registerVal2
local function __FUNC_4D2_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.codcaster_options_slider_small)
	registerVal2.id = "codcaster_options_slider_small"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 450.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 34.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 243.000000, 435.020000)
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
	registerVal6:setLeftRight(true, false, 240.530000, 436.980000)
	registerVal6:setTopBottom(true, false, 3.000000, 31.000000)
	registerVal6:setAlpha(0.250000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrgidlefull"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal6:setShaderVector(0.000000, 0.120301, 0.120301, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.BoxButtonLrgIdle0 = registerVal6
	local registerVal7 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 240.520000, 436.980000)
	registerVal7:setTopBottom(true, false, 1.000000, 33.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.StartMenuframenoBG1 = registerVal7
	local registerVal8 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal8:setLeftRight(false, true, -436.980000, -214.000000)
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
	local function __FUNC_185F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "displayText", true, __FUNC_185F_)
	registerVal2:addElement(registerVal9)
	registerVal2.Title = registerVal9
	local registerVal10 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal10:makeFocusable()
	registerVal10:setLeftRight(true, false, 260.250000, 415.250000)
	registerVal10:setTopBottom(true, false, 2.000000, 32.000000)
	registerVal10:setWidgetType(CoD.CodCaster_Options_Slider_Control_Item)
	local function __FUNC_1916_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setDataSource(registerVal1)
		end
	end

	registerVal10:linkToElementModel(registerVal2, "optionsDatasource", true, __FUNC_1916_)
	local function __FUNC_19AE_(arg0, arg2)
		ProcessListAction(registerVal2, arg0, arg1)
		return nil
	end

	registerVal10:registerEventHandler("list_item_gain_focus", __FUNC_19AE_)
	registerVal2:addElement(registerVal10)
	registerVal2.Slider = registerVal10
	local registerVal11 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal11:setLeftRight(true, true, 240.520000, -13.020000)
	registerVal11:setTopBottom(true, false, 2.000000, 6.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setZoom(1.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.FocusBarT = registerVal11
	local registerVal12 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal12:setLeftRight(true, true, 240.520000, -13.020000)
	registerVal12:setTopBottom(false, true, -3.000000, 1.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setZoom(1.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.FocusBarB = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, true, 234.020000, -13.020000)
	registerVal13:setTopBottom(true, false, -2.750000, 10.750000)
	registerVal13:setRGB(1.000000, 0.090000, 0.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.glitch = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, true, 234.020000, -13.020000)
	registerVal14:setTopBottom(false, true, -9.000000, 6.000000)
	registerVal14:setRGB(1.000000, 0.150000, 0.000000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.glitch2 = registerVal14
	local registerVal15 = {}
	local registerVal16 = {}
	local function __FUNC_1A0F_()
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

	registerVal16.DefaultClip = __FUNC_1A0F_
	local function __FUNC_1C0D_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_1DEC_(arg0, arg1)
			local function __FUNC_1F44_(arg0, arg1)
				local function __FUNC_20BF_(arg0, arg1)
					local function __FUNC_2214_(arg0, arg1)
						local function __FUNC_238F_(arg0, arg1)
							local function __FUNC_24E4_(arg0, arg1)
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
								__FUNC_24E4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24E4_)
						end

						if arg1.interrupted then
							__FUNC_238F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_238F_)
					end

					if arg1.interrupted then
						__FUNC_2214_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2214_)
				end

				if arg1.interrupted then
					__FUNC_20BF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20BF_)
			end

			if arg1.interrupted then
				__FUNC_1F44_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F44_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_1DEC_(registerVal11, {})
		local function __FUNC_2699_(arg0, arg1)
			local function __FUNC_27F0_(arg0, arg1)
				local function __FUNC_296B_(arg0, arg1)
					local function __FUNC_2AC0_(arg0, arg1)
						local function __FUNC_2C3B_(arg0, arg1)
							local function __FUNC_2D90_(arg0, arg1)
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
								__FUNC_2D90_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D90_)
						end

						if arg1.interrupted then
							__FUNC_2C3B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C3B_)
					end

					if arg1.interrupted then
						__FUNC_2AC0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AC0_)
				end

				if arg1.interrupted then
					__FUNC_296B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_296B_)
			end

			if arg1.interrupted then
				__FUNC_27F0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27F0_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_2699_(registerVal12, {})
		local function __FUNC_2F45_(arg0, arg1)
			local function __FUNC_309C_(arg0, arg1)
				local function __FUNC_3217_(arg0, arg1)
					local function __FUNC_336C_(arg0, arg1)
						local function __FUNC_34E7_(arg0, arg1)
							local function __FUNC_363C_(arg0, arg1)
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
								__FUNC_363C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_363C_)
						end

						if arg1.interrupted then
							__FUNC_34E7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34E7_)
					end

					if arg1.interrupted then
						__FUNC_336C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_336C_)
				end

				if arg1.interrupted then
					__FUNC_3217_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3217_)
			end

			if arg1.interrupted then
				__FUNC_309C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_309C_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_2F45_(registerVal13, {})
		local function __FUNC_37F1_(arg0, arg1)
			local function __FUNC_3948_(arg0, arg1)
				local function __FUNC_3AC3_(arg0, arg1)
					local function __FUNC_3C18_(arg0, arg1)
						local function __FUNC_3D93_(arg0, arg1)
							local function __FUNC_3EE8_(arg0, arg1)
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
								__FUNC_3EE8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3EE8_)
						end

						if arg1.interrupted then
							__FUNC_3D93_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D93_)
					end

					if arg1.interrupted then
						__FUNC_3C18_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C18_)
				end

				if arg1.interrupted then
					__FUNC_3AC3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3AC3_)
			end

			if arg1.interrupted then
				__FUNC_3948_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3948_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_37F1_(registerVal14, {})
	end

	registerVal16.GainFocus = __FUNC_1C0D_
	local function __FUNC_409D_()
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

	registerVal16.Focus = __FUNC_409D_
	local function __FUNC_42A2_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_4480_(arg0, arg1)
			local function __FUNC_45FB_(arg0, arg1)
				local function __FUNC_4773_(arg0, arg1)
					local function __FUNC_48EB_(arg0, arg1)
						local function __FUNC_4A40_(arg0, arg1)
							local function __FUNC_4BBB_(arg0, arg1)
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
								__FUNC_4BBB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4BBB_)
						end

						if arg1.interrupted then
							__FUNC_4A40_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A40_)
					end

					if arg1.interrupted then
						__FUNC_48EB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_48EB_)
				end

				if arg1.interrupted then
					__FUNC_4773_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4773_)
			end

			if arg1.interrupted then
				__FUNC_45FB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_45FB_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_4480_(registerVal11, {})
		local function __FUNC_4D6D_(arg0, arg1)
			local function __FUNC_4EE7_(arg0, arg1)
				local function __FUNC_505F_(arg0, arg1)
					local function __FUNC_51D7_(arg0, arg1)
						local function __FUNC_532C_(arg0, arg1)
							local function __FUNC_54A7_(arg0, arg1)
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
								__FUNC_54A7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_54A7_)
						end

						if arg1.interrupted then
							__FUNC_532C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_532C_)
					end

					if arg1.interrupted then
						__FUNC_51D7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_51D7_)
				end

				if arg1.interrupted then
					__FUNC_505F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_505F_)
			end

			if arg1.interrupted then
				__FUNC_4EE7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4EE7_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_4D6D_(registerVal12, {})
		local function __FUNC_5659_(arg0, arg1)
			local function __FUNC_57B0_(arg0, arg1)
				local function __FUNC_592B_(arg0, arg1)
					local function __FUNC_5A80_(arg0, arg1)
						local function __FUNC_5BFB_(arg0, arg1)
							local function __FUNC_5D50_(arg0, arg1)
								local function __FUNC_5ECB_(arg0, arg1)
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
									__FUNC_5ECB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5ECB_)
							end

							if arg1.interrupted then
								__FUNC_5D50_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5D50_)
						end

						if arg1.interrupted then
							__FUNC_5BFB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5BFB_)
					end

					if arg1.interrupted then
						__FUNC_5A80_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5A80_)
				end

				if arg1.interrupted then
					__FUNC_592B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_592B_)
			end

			if arg1.interrupted then
				__FUNC_57B0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_57B0_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_5659_(registerVal13, {})
		local function __FUNC_607D_(arg0, arg1)
			local function __FUNC_61D4_(arg0, arg1)
				local function __FUNC_634F_(arg0, arg1)
					local function __FUNC_64A4_(arg0, arg1)
						local function __FUNC_661F_(arg0, arg1)
							local function __FUNC_6774_(arg0, arg1)
								local function __FUNC_68EF_(arg0, arg1)
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
									__FUNC_68EF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_68EF_)
							end

							if arg1.interrupted then
								__FUNC_6774_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6774_)
						end

						if arg1.interrupted then
							__FUNC_661F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_661F_)
					end

					if arg1.interrupted then
						__FUNC_64A4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_64A4_)
				end

				if arg1.interrupted then
					__FUNC_634F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_634F_)
			end

			if arg1.interrupted then
				__FUNC_61D4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_61D4_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_607D_(registerVal14, {})
	end

	registerVal16.LoseFocus = __FUNC_42A2_
	registerVal15.DefaultState = registerVal16
	registerVal16 = {}
	local function __FUNC_6AA1_()
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

	registerVal16.DefaultClip = __FUNC_6AA1_
	registerVal15.Disabled = registerVal16
	registerVal16 = {}
	local function __FUNC_6C7C_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal16.DefaultClip = __FUNC_6C7C_
	registerVal15.Selected = registerVal16
	registerVal16 = {}
	local function __FUNC_6CDE_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal9:completeAnimation()
		registerVal2.Title:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal16.DefaultClip = __FUNC_6CDE_
	local function __FUNC_6DDA_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_70A6_(arg0, arg1)
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
		__FUNC_70A6_(registerVal9, {})
		local function __FUNC_7259_(arg0, arg1)
			local function __FUNC_73B0_(arg0, arg1)
				local function __FUNC_752B_(arg0, arg1)
					local function __FUNC_7680_(arg0, arg1)
						local function __FUNC_77FB_(arg0, arg1)
							local function __FUNC_7950_(arg0, arg1)
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
								__FUNC_7950_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7950_)
						end

						if arg1.interrupted then
							__FUNC_77FB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_77FB_)
					end

					if arg1.interrupted then
						__FUNC_7680_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7680_)
				end

				if arg1.interrupted then
					__FUNC_752B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_752B_)
			end

			if arg1.interrupted then
				__FUNC_73B0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_73B0_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_7259_(registerVal11, {})
		local function __FUNC_7B05_(arg0, arg1)
			local function __FUNC_7C5C_(arg0, arg1)
				local function __FUNC_7DD7_(arg0, arg1)
					local function __FUNC_7F2C_(arg0, arg1)
						local function __FUNC_80A7_(arg0, arg1)
							local function __FUNC_81FC_(arg0, arg1)
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
								__FUNC_81FC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_81FC_)
						end

						if arg1.interrupted then
							__FUNC_80A7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_80A7_)
					end

					if arg1.interrupted then
						__FUNC_7F2C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7F2C_)
				end

				if arg1.interrupted then
					__FUNC_7DD7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7DD7_)
			end

			if arg1.interrupted then
				__FUNC_7C5C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7C5C_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_7B05_(registerVal12, {})
		local function __FUNC_83B1_(arg0, arg1)
			local function __FUNC_8508_(arg0, arg1)
				local function __FUNC_8683_(arg0, arg1)
					local function __FUNC_87D8_(arg0, arg1)
						local function __FUNC_8953_(arg0, arg1)
							local function __FUNC_8AA8_(arg0, arg1)
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
								__FUNC_8AA8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8AA8_)
						end

						if arg1.interrupted then
							__FUNC_8953_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8953_)
					end

					if arg1.interrupted then
						__FUNC_87D8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_87D8_)
				end

				if arg1.interrupted then
					__FUNC_8683_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8683_)
			end

			if arg1.interrupted then
				__FUNC_8508_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8508_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		registerVal2.glitch:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_83B1_(registerVal13, {})
		local function __FUNC_8CE7_(arg0, arg1)
			local function __FUNC_8E3C_(arg0, arg1)
				local function __FUNC_8FB7_(arg0, arg1)
					local function __FUNC_910C_(arg0, arg1)
						local function __FUNC_9287_(arg0, arg1)
							local function __FUNC_93DC_(arg0, arg1)
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
								__FUNC_93DC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_93DC_)
						end

						if arg1.interrupted then
							__FUNC_9287_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9287_)
					end

					if arg1.interrupted then
						__FUNC_910C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_910C_)
				end

				if arg1.interrupted then
					__FUNC_8FB7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8FB7_)
			end

			if arg1.interrupted then
				__FUNC_8E3C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8E3C_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_8CE7_(registerVal14, {})
	end

	registerVal16.GainFocus = __FUNC_6DDA_
	local function __FUNC_9591_()
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

	registerVal16.Focus = __FUNC_9591_
	local function __FUNC_973B_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_9967_(arg0, arg1)
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
		__FUNC_9967_(registerVal9, {})
		local function __FUNC_9B19_(arg0, arg1)
			local function __FUNC_9C93_(arg0, arg1)
				local function __FUNC_9E0B_(arg0, arg1)
					local function __FUNC_9F83_(arg0, arg1)
						local function __FUNC_A0D8_(arg0, arg1)
							local function __FUNC_A253_(arg0, arg1)
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
								__FUNC_A253_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A253_)
						end

						if arg1.interrupted then
							__FUNC_A0D8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A0D8_)
					end

					if arg1.interrupted then
						__FUNC_9F83_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9F83_)
				end

				if arg1.interrupted then
					__FUNC_9E0B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9E0B_)
			end

			if arg1.interrupted then
				__FUNC_9C93_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9C93_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_9B19_(registerVal11, {})
		local function __FUNC_A405_(arg0, arg1)
			local function __FUNC_A57F_(arg0, arg1)
				local function __FUNC_A6F7_(arg0, arg1)
					local function __FUNC_A86F_(arg0, arg1)
						local function __FUNC_A9C4_(arg0, arg1)
							local function __FUNC_AB3F_(arg0, arg1)
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
								__FUNC_AB3F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AB3F_)
						end

						if arg1.interrupted then
							__FUNC_A9C4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A9C4_)
					end

					if arg1.interrupted then
						__FUNC_A86F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A86F_)
				end

				if arg1.interrupted then
					__FUNC_A6F7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A6F7_)
			end

			if arg1.interrupted then
				__FUNC_A57F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A57F_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_A405_(registerVal12, {})
		local function __FUNC_ACF1_(arg0, arg1)
			local function __FUNC_AE48_(arg0, arg1)
				local function __FUNC_AFC3_(arg0, arg1)
					local function __FUNC_B118_(arg0, arg1)
						local function __FUNC_B293_(arg0, arg1)
							local function __FUNC_B3E8_(arg0, arg1)
								local function __FUNC_B563_(arg0, arg1)
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
									__FUNC_B563_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B563_)
							end

							if arg1.interrupted then
								__FUNC_B3E8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B3E8_)
						end

						if arg1.interrupted then
							__FUNC_B293_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B293_)
					end

					if arg1.interrupted then
						__FUNC_B118_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B118_)
				end

				if arg1.interrupted then
					__FUNC_AFC3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AFC3_)
			end

			if arg1.interrupted then
				__FUNC_AE48_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AE48_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_ACF1_(registerVal13, {})
		local function __FUNC_B715_(arg0, arg1)
			local function __FUNC_B86C_(arg0, arg1)
				local function __FUNC_B9E7_(arg0, arg1)
					local function __FUNC_BB3C_(arg0, arg1)
						local function __FUNC_BCB7_(arg0, arg1)
							local function __FUNC_BE0C_(arg0, arg1)
								local function __FUNC_BF87_(arg0, arg1)
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
									__FUNC_BF87_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BF87_)
							end

							if arg1.interrupted then
								__FUNC_BE0C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BE0C_)
						end

						if arg1.interrupted then
							__FUNC_BCB7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BCB7_)
					end

					if arg1.interrupted then
						__FUNC_BB3C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BB3C_)
				end

				if arg1.interrupted then
					__FUNC_B9E7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B9E7_)
			end

			if arg1.interrupted then
				__FUNC_B86C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B86C_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_B715_(registerVal14, {})
	end

	registerVal16.LoseFocus = __FUNC_973B_
	registerVal15.ButtonOnly = registerVal16
	registerVal16 = {}
	local function __FUNC_C139_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal9:completeAnimation()
		registerVal2.Title:setRGB(0.420000, 0.420000, 0.420000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal16.DefaultClip = __FUNC_C139_
	local function __FUNC_C23B_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_C506_(arg0, arg1)
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
		__FUNC_C506_(registerVal9, {})
		local function __FUNC_C6B9_(arg0, arg1)
			local function __FUNC_C810_(arg0, arg1)
				local function __FUNC_C98B_(arg0, arg1)
					local function __FUNC_CAE0_(arg0, arg1)
						local function __FUNC_CC5B_(arg0, arg1)
							local function __FUNC_CDB0_(arg0, arg1)
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
								__FUNC_CDB0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CDB0_)
						end

						if arg1.interrupted then
							__FUNC_CC5B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CC5B_)
					end

					if arg1.interrupted then
						__FUNC_CAE0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CAE0_)
				end

				if arg1.interrupted then
					__FUNC_C98B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C98B_)
			end

			if arg1.interrupted then
				__FUNC_C810_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C810_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_C6B9_(registerVal11, {})
		local function __FUNC_CF65_(arg0, arg1)
			local function __FUNC_D0BC_(arg0, arg1)
				local function __FUNC_D237_(arg0, arg1)
					local function __FUNC_D38C_(arg0, arg1)
						local function __FUNC_D507_(arg0, arg1)
							local function __FUNC_D65C_(arg0, arg1)
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
								__FUNC_D65C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D65C_)
						end

						if arg1.interrupted then
							__FUNC_D507_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D507_)
					end

					if arg1.interrupted then
						__FUNC_D38C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D38C_)
				end

				if arg1.interrupted then
					__FUNC_D237_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D237_)
			end

			if arg1.interrupted then
				__FUNC_D0BC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D0BC_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_CF65_(registerVal12, {})
		local function __FUNC_D811_(arg0, arg1)
			local function __FUNC_D968_(arg0, arg1)
				local function __FUNC_DAE3_(arg0, arg1)
					local function __FUNC_DC38_(arg0, arg1)
						local function __FUNC_DDB3_(arg0, arg1)
							local function __FUNC_DF08_(arg0, arg1)
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
								__FUNC_DF08_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DF08_)
						end

						if arg1.interrupted then
							__FUNC_DDB3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DDB3_)
					end

					if arg1.interrupted then
						__FUNC_DC38_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DC38_)
				end

				if arg1.interrupted then
					__FUNC_DAE3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DAE3_)
			end

			if arg1.interrupted then
				__FUNC_D968_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D968_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		registerVal2.glitch:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_D811_(registerVal13, {})
		local function __FUNC_E147_(arg0, arg1)
			local function __FUNC_E29C_(arg0, arg1)
				local function __FUNC_E417_(arg0, arg1)
					local function __FUNC_E56C_(arg0, arg1)
						local function __FUNC_E6E7_(arg0, arg1)
							local function __FUNC_E83C_(arg0, arg1)
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
								__FUNC_E83C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E83C_)
						end

						if arg1.interrupted then
							__FUNC_E6E7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E6E7_)
					end

					if arg1.interrupted then
						__FUNC_E56C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E56C_)
				end

				if arg1.interrupted then
					__FUNC_E417_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E417_)
			end

			if arg1.interrupted then
				__FUNC_E29C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E29C_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_E147_(registerVal14, {})
	end

	registerVal16.GainFocus = __FUNC_C23B_
	local function __FUNC_E9F1_()
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

	registerVal16.Focus = __FUNC_E9F1_
	local function __FUNC_EB9B_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_EDC7_(arg0, arg1)
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
		__FUNC_EDC7_(registerVal9, {})
		local function __FUNC_EF79_(arg0, arg1)
			local function __FUNC_F0F3_(arg0, arg1)
				local function __FUNC_F26B_(arg0, arg1)
					local function __FUNC_F3E3_(arg0, arg1)
						local function __FUNC_F538_(arg0, arg1)
							local function __FUNC_F6B3_(arg0, arg1)
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
								__FUNC_F6B3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F6B3_)
						end

						if arg1.interrupted then
							__FUNC_F538_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F538_)
					end

					if arg1.interrupted then
						__FUNC_F3E3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F3E3_)
				end

				if arg1.interrupted then
					__FUNC_F26B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F26B_)
			end

			if arg1.interrupted then
				__FUNC_F0F3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F0F3_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_EF79_(registerVal11, {})
		local function __FUNC_F865_(arg0, arg1)
			local function __FUNC_F9DF_(arg0, arg1)
				local function __FUNC_FB57_(arg0, arg1)
					local function __FUNC_FCCF_(arg0, arg1)
						local function __FUNC_FE24_(arg0, arg1)
							local function __FUNC_FF9F_(arg0, arg1)
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
								__FUNC_FF9F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FF9F_)
						end

						if arg1.interrupted then
							__FUNC_FE24_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FE24_)
					end

					if arg1.interrupted then
						__FUNC_FCCF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FCCF_)
				end

				if arg1.interrupted then
					__FUNC_FB57_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FB57_)
			end

			if arg1.interrupted then
				__FUNC_F9DF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F9DF_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_F865_(registerVal12, {})
		local function __FUNC_10151_(arg0, arg1)
			local function __FUNC_102A8_(arg0, arg1)
				local function __FUNC_10423_(arg0, arg1)
					local function __FUNC_10578_(arg0, arg1)
						local function __FUNC_106F3_(arg0, arg1)
							local function __FUNC_10848_(arg0, arg1)
								local function __FUNC_109C3_(arg0, arg1)
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
									__FUNC_109C3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_109C3_)
							end

							if arg1.interrupted then
								__FUNC_10848_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10848_)
						end

						if arg1.interrupted then
							__FUNC_106F3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_106F3_)
					end

					if arg1.interrupted then
						__FUNC_10578_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10578_)
				end

				if arg1.interrupted then
					__FUNC_10423_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10423_)
			end

			if arg1.interrupted then
				__FUNC_102A8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_102A8_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_10151_(registerVal13, {})
		local function __FUNC_10B75_(arg0, arg1)
			local function __FUNC_10CCC_(arg0, arg1)
				local function __FUNC_10E47_(arg0, arg1)
					local function __FUNC_10F9C_(arg0, arg1)
						local function __FUNC_11117_(arg0, arg1)
							local function __FUNC_1126C_(arg0, arg1)
								local function __FUNC_113E7_(arg0, arg1)
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
									__FUNC_113E7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_113E7_)
							end

							if arg1.interrupted then
								__FUNC_1126C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1126C_)
						end

						if arg1.interrupted then
							__FUNC_11117_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11117_)
					end

					if arg1.interrupted then
						__FUNC_10F9C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10F9C_)
				end

				if arg1.interrupted then
					__FUNC_10E47_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10E47_)
			end

			if arg1.interrupted then
				__FUNC_10CCC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10CCC_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_10B75_(registerVal14, {})
	end

	registerVal16.LoseFocus = __FUNC_EB9B_
	registerVal15.ButtonOnlyDisabled = registerVal16
	registerVal2.clipsPerState = registerVal15
	local registerVal17 = {}
	local registerVal18 = {}
	registerVal18.stateName = "Disabled"
	local function __FUNC_11599_(arg0, arg2, arg3)
		local registerVal3 = IsDisabled(arg2, arg1)
		if registerVal3 then
			registerVal3 = IsSelfModelValueTrue(arg2, arg1, "buttonOnly")
		end
		return (not registerVal3)
	end

	registerVal18.condition = __FUNC_11599_
	local registerVal19 = {}
	registerVal19.stateName = "Selected"
	local function __FUNC_1163E_(arg0, arg2, arg3)
		return IsSelected(arg2, arg1)
	end

	registerVal19.condition = __FUNC_1163E_
	local registerVal20 = {}
	registerVal20.stateName = "ButtonOnly"
	local function __FUNC_11690_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "buttonOnly")
		if registerVal3 then
			registerVal3 = IsDisabled(arg2, arg1)
		end
		return (not registerVal3)
	end

	registerVal20.condition = __FUNC_11690_
	local registerVal21 = {}
	registerVal21.stateName = "ButtonOnlyDisabled"
	local function __FUNC_11736_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "buttonOnly")
		if registerVal3 then
			registerVal3 = IsDisabled(arg2, arg1)
		end
		return registerVal3
	end

	registerVal21.condition = __FUNC_11736_
	registerVal17 = {registerVal18, registerVal19, registerVal20, registerVal21}
	registerVal2:mergeStateConditions(registerVal17)
	local function __FUNC_117D6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabled", true, __FUNC_117D6_)
	local function __FUNC_118F2_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "buttonOnly"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "buttonOnly", true, __FUNC_118F2_)
	local function __FUNC_11A10_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "selected"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "selected", true, __FUNC_11A10_)
	local function __FUNC_11B2E_(arg0, arg2)
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

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_11B2E_)
	registerVal10.id = "Slider"
	local function __FUNC_11C5D_(arg0, arg1)
		local registerVal2 = arg0.Slider:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_11C5D_)
	local function __FUNC_11D5E_(arg0)
		arg0.StartMenuframenoBG1:close()
		arg0.StartMenuframenoBG0:close()
		arg0.Slider:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.Title:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_11D5E_)
	if __FUNC_2CC_ then
		__FUNC_2CC_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.codcaster_options_slider_small.new = __FUNC_4D2_
