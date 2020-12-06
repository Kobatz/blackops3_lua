-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.codcaster_options_button_small = registerVal1
function CoD.codcaster_options_button_small.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.codcaster_options_button_small)
	registerVal2.id = "codcaster_options_button_small"
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
	local function __FUNC_1543_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "displayText", true, __FUNC_1543_)
	registerVal2:addElement(registerVal9)
	registerVal2.Title = registerVal9
	local registerVal10 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal10:setLeftRight(true, true, 240.520000, -13.020000)
	registerVal10:setTopBottom(true, false, 2.000000, 6.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setZoom(1.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.FocusBarT = registerVal10
	local registerVal11 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal11:setLeftRight(true, true, 240.520000, -13.020000)
	registerVal11:setTopBottom(false, true, -3.000000, 1.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setZoom(1.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.FocusBarB = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, true, 234.020000, -13.020000)
	registerVal12:setTopBottom(true, false, -2.750000, 10.750000)
	registerVal12:setRGB(1.000000, 0.090000, 0.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.glitch = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, true, 234.020000, -13.020000)
	registerVal13:setTopBottom(false, true, -9.000000, 6.000000)
	registerVal13:setRGB(1.000000, 0.150000, 0.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.glitch2 = registerVal13
	local registerVal14 = LUI.UIText.new()
	registerVal14:setLeftRight(true, false, 254.000000, 427.000000)
	registerVal14:setTopBottom(true, false, 7.000000, 27.000000)
	registerVal14:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal14:setLetterSpacing(0.500000)
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_15FA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal14:linkToElementModel(registerVal2, "actionText", true, __FUNC_15FA_)
	registerVal2:addElement(registerVal14)
	registerVal2.Action = registerVal14
	local registerVal15 = {}
	local registerVal16 = {}
	local function __FUNC_16B2_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal16.DefaultClip = __FUNC_16B2_
	local function __FUNC_18B1_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_1A90_(arg0, arg1)
			local function __FUNC_1BE8_(arg0, arg1)
				local function __FUNC_1D63_(arg0, arg1)
					local function __FUNC_1EB8_(arg0, arg1)
						local function __FUNC_2033_(arg0, arg1)
							local function __FUNC_2188_(arg0, arg1)
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
								__FUNC_2188_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2188_)
						end

						if arg1.interrupted then
							__FUNC_2033_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2033_)
					end

					if arg1.interrupted then
						__FUNC_1EB8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EB8_)
				end

				if arg1.interrupted then
					__FUNC_1D63_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D63_)
			end

			if arg1.interrupted then
				__FUNC_1BE8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BE8_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_1A90_(registerVal10, {})
		local function __FUNC_233D_(arg0, arg1)
			local function __FUNC_2494_(arg0, arg1)
				local function __FUNC_260F_(arg0, arg1)
					local function __FUNC_2764_(arg0, arg1)
						local function __FUNC_28DF_(arg0, arg1)
							local function __FUNC_2A34_(arg0, arg1)
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
								__FUNC_2A34_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A34_)
						end

						if arg1.interrupted then
							__FUNC_28DF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28DF_)
					end

					if arg1.interrupted then
						__FUNC_2764_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2764_)
				end

				if arg1.interrupted then
					__FUNC_260F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_260F_)
			end

			if arg1.interrupted then
				__FUNC_2494_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2494_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_233D_(registerVal11, {})
		local function __FUNC_2BE9_(arg0, arg1)
			local function __FUNC_2D40_(arg0, arg1)
				local function __FUNC_2EBB_(arg0, arg1)
					local function __FUNC_3010_(arg0, arg1)
						local function __FUNC_318B_(arg0, arg1)
							local function __FUNC_32E0_(arg0, arg1)
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
								__FUNC_32E0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32E0_)
						end

						if arg1.interrupted then
							__FUNC_318B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_318B_)
					end

					if arg1.interrupted then
						__FUNC_3010_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3010_)
				end

				if arg1.interrupted then
					__FUNC_2EBB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EBB_)
			end

			if arg1.interrupted then
				__FUNC_2D40_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D40_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_2BE9_(registerVal12, {})
		local function __FUNC_3495_(arg0, arg1)
			local function __FUNC_35EC_(arg0, arg1)
				local function __FUNC_3767_(arg0, arg1)
					local function __FUNC_38BC_(arg0, arg1)
						local function __FUNC_3A37_(arg0, arg1)
							local function __FUNC_3B8C_(arg0, arg1)
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
								__FUNC_3B8C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B8C_)
						end

						if arg1.interrupted then
							__FUNC_3A37_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A37_)
					end

					if arg1.interrupted then
						__FUNC_38BC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38BC_)
				end

				if arg1.interrupted then
					__FUNC_3767_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3767_)
			end

			if arg1.interrupted then
				__FUNC_35EC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35EC_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_3495_(registerVal13, {})
	end

	registerVal16.GainFocus = __FUNC_18B1_
	local function __FUNC_3D41_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal16.Focus = __FUNC_3D41_
	local function __FUNC_3F46_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_4124_(arg0, arg1)
			local function __FUNC_429F_(arg0, arg1)
				local function __FUNC_4417_(arg0, arg1)
					local function __FUNC_458F_(arg0, arg1)
						local function __FUNC_46E4_(arg0, arg1)
							local function __FUNC_485F_(arg0, arg1)
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
								__FUNC_485F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_485F_)
						end

						if arg1.interrupted then
							__FUNC_46E4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_46E4_)
					end

					if arg1.interrupted then
						__FUNC_458F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_458F_)
				end

				if arg1.interrupted then
					__FUNC_4417_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4417_)
			end

			if arg1.interrupted then
				__FUNC_429F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_429F_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_4124_(registerVal10, {})
		local function __FUNC_4A11_(arg0, arg1)
			local function __FUNC_4B8B_(arg0, arg1)
				local function __FUNC_4D03_(arg0, arg1)
					local function __FUNC_4E7B_(arg0, arg1)
						local function __FUNC_4FD0_(arg0, arg1)
							local function __FUNC_514B_(arg0, arg1)
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
								__FUNC_514B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_514B_)
						end

						if arg1.interrupted then
							__FUNC_4FD0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4FD0_)
					end

					if arg1.interrupted then
						__FUNC_4E7B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4E7B_)
				end

				if arg1.interrupted then
					__FUNC_4D03_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D03_)
			end

			if arg1.interrupted then
				__FUNC_4B8B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B8B_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_4A11_(registerVal11, {})
		local function __FUNC_52FD_(arg0, arg1)
			local function __FUNC_5454_(arg0, arg1)
				local function __FUNC_55CF_(arg0, arg1)
					local function __FUNC_5724_(arg0, arg1)
						local function __FUNC_589F_(arg0, arg1)
							local function __FUNC_59F4_(arg0, arg1)
								local function __FUNC_5B6F_(arg0, arg1)
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
									__FUNC_5B6F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B6F_)
							end

							if arg1.interrupted then
								__FUNC_59F4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_59F4_)
						end

						if arg1.interrupted then
							__FUNC_589F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_589F_)
					end

					if arg1.interrupted then
						__FUNC_5724_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5724_)
				end

				if arg1.interrupted then
					__FUNC_55CF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_55CF_)
			end

			if arg1.interrupted then
				__FUNC_5454_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5454_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_52FD_(registerVal12, {})
		local function __FUNC_5D21_(arg0, arg1)
			local function __FUNC_5E78_(arg0, arg1)
				local function __FUNC_5FF3_(arg0, arg1)
					local function __FUNC_6148_(arg0, arg1)
						local function __FUNC_62C3_(arg0, arg1)
							local function __FUNC_6418_(arg0, arg1)
								local function __FUNC_6593_(arg0, arg1)
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
									__FUNC_6593_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6593_)
							end

							if arg1.interrupted then
								__FUNC_6418_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6418_)
						end

						if arg1.interrupted then
							__FUNC_62C3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_62C3_)
					end

					if arg1.interrupted then
						__FUNC_6148_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6148_)
				end

				if arg1.interrupted then
					__FUNC_5FF3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5FF3_)
			end

			if arg1.interrupted then
				__FUNC_5E78_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E78_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_5D21_(registerVal13, {})
	end

	registerVal16.LoseFocus = __FUNC_3F46_
	registerVal15.DefaultState = registerVal16
	registerVal16 = {}
	local function __FUNC_6745_()
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

	registerVal16.DefaultClip = __FUNC_6745_
	registerVal15.Disabled = registerVal16
	registerVal16 = {}
	local function __FUNC_6920_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal16.DefaultClip = __FUNC_6920_
	registerVal15.Selected = registerVal16
	registerVal16 = {}
	local function __FUNC_6982_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal9:completeAnimation()
		registerVal2.Title:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal16.DefaultClip = __FUNC_6982_
	local function __FUNC_6A7E_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_6D4A_(arg0, arg1)
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
		__FUNC_6D4A_(registerVal9, {})
		local function __FUNC_6EFD_(arg0, arg1)
			local function __FUNC_7054_(arg0, arg1)
				local function __FUNC_71CF_(arg0, arg1)
					local function __FUNC_7324_(arg0, arg1)
						local function __FUNC_749F_(arg0, arg1)
							local function __FUNC_75F4_(arg0, arg1)
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
								__FUNC_75F4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_75F4_)
						end

						if arg1.interrupted then
							__FUNC_749F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_749F_)
					end

					if arg1.interrupted then
						__FUNC_7324_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7324_)
				end

				if arg1.interrupted then
					__FUNC_71CF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_71CF_)
			end

			if arg1.interrupted then
				__FUNC_7054_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7054_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_6EFD_(registerVal10, {})
		local function __FUNC_77A9_(arg0, arg1)
			local function __FUNC_7900_(arg0, arg1)
				local function __FUNC_7A7B_(arg0, arg1)
					local function __FUNC_7BD0_(arg0, arg1)
						local function __FUNC_7D4B_(arg0, arg1)
							local function __FUNC_7EA0_(arg0, arg1)
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
								__FUNC_7EA0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7EA0_)
						end

						if arg1.interrupted then
							__FUNC_7D4B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7D4B_)
					end

					if arg1.interrupted then
						__FUNC_7BD0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7BD0_)
				end

				if arg1.interrupted then
					__FUNC_7A7B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7A7B_)
			end

			if arg1.interrupted then
				__FUNC_7900_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7900_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_77A9_(registerVal11, {})
		local function __FUNC_8055_(arg0, arg1)
			local function __FUNC_81AC_(arg0, arg1)
				local function __FUNC_8327_(arg0, arg1)
					local function __FUNC_847C_(arg0, arg1)
						local function __FUNC_85F7_(arg0, arg1)
							local function __FUNC_874C_(arg0, arg1)
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
								__FUNC_874C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_874C_)
						end

						if arg1.interrupted then
							__FUNC_85F7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_85F7_)
					end

					if arg1.interrupted then
						__FUNC_847C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_847C_)
				end

				if arg1.interrupted then
					__FUNC_8327_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8327_)
			end

			if arg1.interrupted then
				__FUNC_81AC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_81AC_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		registerVal2.glitch:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_8055_(registerVal12, {})
		local function __FUNC_898B_(arg0, arg1)
			local function __FUNC_8AE0_(arg0, arg1)
				local function __FUNC_8C5B_(arg0, arg1)
					local function __FUNC_8DB0_(arg0, arg1)
						local function __FUNC_8F2B_(arg0, arg1)
							local function __FUNC_9080_(arg0, arg1)
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
								__FUNC_9080_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9080_)
						end

						if arg1.interrupted then
							__FUNC_8F2B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8F2B_)
					end

					if arg1.interrupted then
						__FUNC_8DB0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8DB0_)
				end

				if arg1.interrupted then
					__FUNC_8C5B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8C5B_)
			end

			if arg1.interrupted then
				__FUNC_8AE0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8AE0_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_898B_(registerVal13, {})
	end

	registerVal16.GainFocus = __FUNC_6A7E_
	local function __FUNC_9235_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal9:completeAnimation()
		registerVal2.Title:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal16.Focus = __FUNC_9235_
	local function __FUNC_93DF_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_960B_(arg0, arg1)
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
		__FUNC_960B_(registerVal9, {})
		local function __FUNC_97BD_(arg0, arg1)
			local function __FUNC_9937_(arg0, arg1)
				local function __FUNC_9AAF_(arg0, arg1)
					local function __FUNC_9C27_(arg0, arg1)
						local function __FUNC_9D7C_(arg0, arg1)
							local function __FUNC_9EF7_(arg0, arg1)
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
								__FUNC_9EF7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9EF7_)
						end

						if arg1.interrupted then
							__FUNC_9D7C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9D7C_)
					end

					if arg1.interrupted then
						__FUNC_9C27_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9C27_)
				end

				if arg1.interrupted then
					__FUNC_9AAF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9AAF_)
			end

			if arg1.interrupted then
				__FUNC_9937_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9937_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_97BD_(registerVal10, {})
		local function __FUNC_A0A9_(arg0, arg1)
			local function __FUNC_A223_(arg0, arg1)
				local function __FUNC_A39B_(arg0, arg1)
					local function __FUNC_A513_(arg0, arg1)
						local function __FUNC_A668_(arg0, arg1)
							local function __FUNC_A7E3_(arg0, arg1)
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
								__FUNC_A7E3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A7E3_)
						end

						if arg1.interrupted then
							__FUNC_A668_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A668_)
					end

					if arg1.interrupted then
						__FUNC_A513_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A513_)
				end

				if arg1.interrupted then
					__FUNC_A39B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A39B_)
			end

			if arg1.interrupted then
				__FUNC_A223_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A223_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_A0A9_(registerVal11, {})
		local function __FUNC_A995_(arg0, arg1)
			local function __FUNC_AAEC_(arg0, arg1)
				local function __FUNC_AC67_(arg0, arg1)
					local function __FUNC_ADBC_(arg0, arg1)
						local function __FUNC_AF37_(arg0, arg1)
							local function __FUNC_B08C_(arg0, arg1)
								local function __FUNC_B207_(arg0, arg1)
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
									__FUNC_B207_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B207_)
							end

							if arg1.interrupted then
								__FUNC_B08C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B08C_)
						end

						if arg1.interrupted then
							__FUNC_AF37_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AF37_)
					end

					if arg1.interrupted then
						__FUNC_ADBC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ADBC_)
				end

				if arg1.interrupted then
					__FUNC_AC67_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AC67_)
			end

			if arg1.interrupted then
				__FUNC_AAEC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AAEC_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_A995_(registerVal12, {})
		local function __FUNC_B3B9_(arg0, arg1)
			local function __FUNC_B510_(arg0, arg1)
				local function __FUNC_B68B_(arg0, arg1)
					local function __FUNC_B7E0_(arg0, arg1)
						local function __FUNC_B95B_(arg0, arg1)
							local function __FUNC_BAB0_(arg0, arg1)
								local function __FUNC_BC2B_(arg0, arg1)
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
									__FUNC_BC2B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BC2B_)
							end

							if arg1.interrupted then
								__FUNC_BAB0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BAB0_)
						end

						if arg1.interrupted then
							__FUNC_B95B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B95B_)
					end

					if arg1.interrupted then
						__FUNC_B7E0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B7E0_)
				end

				if arg1.interrupted then
					__FUNC_B68B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B68B_)
			end

			if arg1.interrupted then
				__FUNC_B510_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B510_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_B3B9_(registerVal13, {})
	end

	registerVal16.LoseFocus = __FUNC_93DF_
	registerVal15.ButtonOnly = registerVal16
	registerVal16 = {}
	local function __FUNC_BDDD_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal9:completeAnimation()
		registerVal2.Title:setRGB(0.420000, 0.420000, 0.420000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal16.DefaultClip = __FUNC_BDDD_
	local function __FUNC_BEDF_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_C1AA_(arg0, arg1)
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
		__FUNC_C1AA_(registerVal9, {})
		local function __FUNC_C35D_(arg0, arg1)
			local function __FUNC_C4B4_(arg0, arg1)
				local function __FUNC_C62F_(arg0, arg1)
					local function __FUNC_C784_(arg0, arg1)
						local function __FUNC_C8FF_(arg0, arg1)
							local function __FUNC_CA54_(arg0, arg1)
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
								__FUNC_CA54_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CA54_)
						end

						if arg1.interrupted then
							__FUNC_C8FF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C8FF_)
					end

					if arg1.interrupted then
						__FUNC_C784_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C784_)
				end

				if arg1.interrupted then
					__FUNC_C62F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C62F_)
			end

			if arg1.interrupted then
				__FUNC_C4B4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C4B4_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_C35D_(registerVal10, {})
		local function __FUNC_CC09_(arg0, arg1)
			local function __FUNC_CD60_(arg0, arg1)
				local function __FUNC_CEDB_(arg0, arg1)
					local function __FUNC_D030_(arg0, arg1)
						local function __FUNC_D1AB_(arg0, arg1)
							local function __FUNC_D300_(arg0, arg1)
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
								__FUNC_D300_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D300_)
						end

						if arg1.interrupted then
							__FUNC_D1AB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D1AB_)
					end

					if arg1.interrupted then
						__FUNC_D030_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D030_)
				end

				if arg1.interrupted then
					__FUNC_CEDB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CEDB_)
			end

			if arg1.interrupted then
				__FUNC_CD60_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CD60_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_CC09_(registerVal11, {})
		local function __FUNC_D4B5_(arg0, arg1)
			local function __FUNC_D60C_(arg0, arg1)
				local function __FUNC_D787_(arg0, arg1)
					local function __FUNC_D8DC_(arg0, arg1)
						local function __FUNC_DA57_(arg0, arg1)
							local function __FUNC_DBAC_(arg0, arg1)
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
								__FUNC_DBAC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DBAC_)
						end

						if arg1.interrupted then
							__FUNC_DA57_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DA57_)
					end

					if arg1.interrupted then
						__FUNC_D8DC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D8DC_)
				end

				if arg1.interrupted then
					__FUNC_D787_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D787_)
			end

			if arg1.interrupted then
				__FUNC_D60C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D60C_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		registerVal2.glitch:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_D4B5_(registerVal12, {})
		local function __FUNC_DDEB_(arg0, arg1)
			local function __FUNC_DF40_(arg0, arg1)
				local function __FUNC_E0BB_(arg0, arg1)
					local function __FUNC_E210_(arg0, arg1)
						local function __FUNC_E38B_(arg0, arg1)
							local function __FUNC_E4E0_(arg0, arg1)
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
								__FUNC_E4E0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E4E0_)
						end

						if arg1.interrupted then
							__FUNC_E38B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E38B_)
					end

					if arg1.interrupted then
						__FUNC_E210_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E210_)
				end

				if arg1.interrupted then
					__FUNC_E0BB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E0BB_)
			end

			if arg1.interrupted then
				__FUNC_DF40_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DF40_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_DDEB_(registerVal13, {})
	end

	registerVal16.GainFocus = __FUNC_BEDF_
	local function __FUNC_E695_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal9:completeAnimation()
		registerVal2.Title:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal16.Focus = __FUNC_E695_
	local function __FUNC_E83F_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_EA6B_(arg0, arg1)
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
		__FUNC_EA6B_(registerVal9, {})
		local function __FUNC_EC1D_(arg0, arg1)
			local function __FUNC_ED97_(arg0, arg1)
				local function __FUNC_EF0F_(arg0, arg1)
					local function __FUNC_F087_(arg0, arg1)
						local function __FUNC_F1DC_(arg0, arg1)
							local function __FUNC_F357_(arg0, arg1)
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
								__FUNC_F357_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F357_)
						end

						if arg1.interrupted then
							__FUNC_F1DC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F1DC_)
					end

					if arg1.interrupted then
						__FUNC_F087_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F087_)
				end

				if arg1.interrupted then
					__FUNC_EF0F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EF0F_)
			end

			if arg1.interrupted then
				__FUNC_ED97_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ED97_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_EC1D_(registerVal10, {})
		local function __FUNC_F509_(arg0, arg1)
			local function __FUNC_F683_(arg0, arg1)
				local function __FUNC_F7FB_(arg0, arg1)
					local function __FUNC_F973_(arg0, arg1)
						local function __FUNC_FAC8_(arg0, arg1)
							local function __FUNC_FC43_(arg0, arg1)
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
								__FUNC_FC43_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FC43_)
						end

						if arg1.interrupted then
							__FUNC_FAC8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FAC8_)
					end

					if arg1.interrupted then
						__FUNC_F973_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F973_)
				end

				if arg1.interrupted then
					__FUNC_F7FB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F7FB_)
			end

			if arg1.interrupted then
				__FUNC_F683_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F683_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_F509_(registerVal11, {})
		local function __FUNC_FDF5_(arg0, arg1)
			local function __FUNC_FF4C_(arg0, arg1)
				local function __FUNC_100C7_(arg0, arg1)
					local function __FUNC_1021C_(arg0, arg1)
						local function __FUNC_10397_(arg0, arg1)
							local function __FUNC_104EC_(arg0, arg1)
								local function __FUNC_10667_(arg0, arg1)
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
									__FUNC_10667_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10667_)
							end

							if arg1.interrupted then
								__FUNC_104EC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_104EC_)
						end

						if arg1.interrupted then
							__FUNC_10397_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10397_)
					end

					if arg1.interrupted then
						__FUNC_1021C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1021C_)
				end

				if arg1.interrupted then
					__FUNC_100C7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_100C7_)
			end

			if arg1.interrupted then
				__FUNC_FF4C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FF4C_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_FDF5_(registerVal12, {})
		local function __FUNC_10819_(arg0, arg1)
			local function __FUNC_10970_(arg0, arg1)
				local function __FUNC_10AEB_(arg0, arg1)
					local function __FUNC_10C40_(arg0, arg1)
						local function __FUNC_10DBB_(arg0, arg1)
							local function __FUNC_10F10_(arg0, arg1)
								local function __FUNC_1108B_(arg0, arg1)
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
									__FUNC_1108B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1108B_)
							end

							if arg1.interrupted then
								__FUNC_10F10_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10F10_)
						end

						if arg1.interrupted then
							__FUNC_10DBB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10DBB_)
					end

					if arg1.interrupted then
						__FUNC_10C40_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10C40_)
				end

				if arg1.interrupted then
					__FUNC_10AEB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10AEB_)
			end

			if arg1.interrupted then
				__FUNC_10970_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10970_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_10819_(registerVal13, {})
	end

	registerVal16.LoseFocus = __FUNC_E83F_
	registerVal15.ButtonOnlyDisabled = registerVal16
	registerVal2.clipsPerState = registerVal15
	local registerVal17 = {}
	local registerVal18 = {}
	registerVal18.stateName = "Disabled"
	local function __FUNC_1123D_(arg0, arg2, arg3)
		local registerVal3 = IsDisabled(arg2, arg1)
		if registerVal3 then
			registerVal3 = IsSelfModelValueTrue(arg2, arg1, "buttonOnly")
		end
		return (not registerVal3)
	end

	registerVal18.condition = __FUNC_1123D_
	local registerVal19 = {}
	registerVal19.stateName = "Selected"
	local function __FUNC_112E2_(arg0, arg2, arg3)
		return IsSelected(arg2, arg1)
	end

	registerVal19.condition = __FUNC_112E2_
	local registerVal20 = {}
	registerVal20.stateName = "ButtonOnly"
	local function __FUNC_11334_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "buttonOnly")
		if registerVal3 then
			registerVal3 = IsDisabled(arg2, arg1)
		end
		return (not registerVal3)
	end

	registerVal20.condition = __FUNC_11334_
	local registerVal21 = {}
	registerVal21.stateName = "ButtonOnlyDisabled"
	local function __FUNC_113DA_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "buttonOnly")
		if registerVal3 then
			registerVal3 = IsDisabled(arg2, arg1)
		end
		return registerVal3
	end

	registerVal21.condition = __FUNC_113DA_
	registerVal17 = {registerVal18, registerVal19, registerVal20, registerVal21}
	registerVal2:mergeStateConditions(registerVal17)
	local function __FUNC_1147A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabled", true, __FUNC_1147A_)
	local function __FUNC_11596_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "buttonOnly"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "buttonOnly", true, __FUNC_11596_)
	local function __FUNC_116B4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "selected"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "selected", true, __FUNC_116B4_)
	local function __FUNC_117D2_(arg0, arg2)
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

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_117D2_)
	local function __FUNC_11901_(arg0)
		arg0.StartMenuframenoBG1:close()
		arg0.StartMenuframenoBG0:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.Title:close()
		arg0.Action:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_11901_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

