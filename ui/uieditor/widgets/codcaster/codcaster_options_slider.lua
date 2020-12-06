-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.CodCaster.CodCaster_Options_Slider_Control_Item")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local function __FUNC_2C6_(arg0, arg1, arg2)
	if CoD.isPC then
		arg0:setHandleMouseButton(false)
		arg0:setForceMouseEventDispatch(true)
	end
	local function __FUNC_3CF_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		local registerVal2, registerVal3 = arg0.Slider:getRowAndColumnForIndex((registerVal1 - 1.000000))
		arg0.Slider:setActiveIndex(registerVal2, registerVal3, 0.000000)
	end

	arg0:linkToElementModel(arg0, "currentSelection", true, __FUNC_3CF_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.codcaster_options_slider = registerVal2
local function __FUNC_4CA_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.codcaster_options_slider)
	registerVal2.id = "codcaster_options_slider"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 670.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 334.530000, 544.000000)
	registerVal3:setTopBottom(true, false, 2.000000, 30.000000)
	registerVal3:setAlpha(0.400000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrgidlefull"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal3:setShaderVector(0.000000, 0.120301, 0.120301, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxButtonLrgIdle0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 36.000000, 334.530000)
	registerVal4:setTopBottom(true, false, 2.000000, 30.000000)
	registerVal4:setAlpha(0.400000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrgidlefull"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal4:setShaderVector(0.000000, 0.120301, 0.120301, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BoxButtonLrgIdle = registerVal4
	local registerVal5 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 38.000000, -339.470000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.StartMenuframenoBG0 = registerVal5
	local registerVal6 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 336.530000, 544.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.StartMenuframenoBG1 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 0.000000, 16.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 4.000000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_cac_pixelblurred"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.Image0000 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 0.000000, 16.000000)
	registerVal8:setTopBottom(false, true, -4.000000, 0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_cac_pixelblurred"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.Image0 = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, false, 58.000000, 320.000000)
	registerVal9:setTopBottom(true, false, 5.000000, 27.000000)
	registerVal9:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal9:setLetterSpacing(0.500000)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1C02_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "displayText", true, __FUNC_1C02_)
	registerVal2:addElement(registerVal9)
	registerVal2.Title = registerVal9
	local registerVal10 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal10:makeFocusable()
	registerVal10:setLeftRight(true, false, 356.000000, 511.000000)
	registerVal10:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal10:setWidgetType(CoD.CodCaster_Options_Slider_Control_Item)
	local function __FUNC_1CBA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setDataSource(registerVal1)
		end
	end

	registerVal10:linkToElementModel(registerVal2, "optionsDatasource", true, __FUNC_1CBA_)
	local function __FUNC_1D52_(arg0, arg2)
		ProcessListAction(registerVal2, arg0, arg1)
		return nil
	end

	registerVal10:registerEventHandler("list_item_gain_focus", __FUNC_1D52_)
	registerVal2:addElement(registerVal10)
	registerVal2.Slider = registerVal10
	local registerVal11 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal11:setLeftRight(true, true, 39.500000, -339.470000)
	registerVal11:setTopBottom(true, false, 1.000000, 5.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setZoom(1.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.FocusBarT = registerVal11
	local registerVal12 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal12:setLeftRight(true, true, 39.500000, -339.470000)
	registerVal12:setTopBottom(false, true, -4.000000, 0.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setZoom(1.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.FocusBarB = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, true, 39.500000, -339.470000)
	registerVal13:setTopBottom(true, false, -3.750000, 9.750000)
	registerVal13:setRGB(1.000000, 0.090000, 0.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.glitch = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, true, 39.500000, -339.470000)
	registerVal14:setTopBottom(false, true, -10.000000, 5.000000)
	registerVal14:setRGB(1.000000, 0.150000, 0.000000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.glitch2 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, 547.500000, 563.500000)
	registerVal15:setTopBottom(true, false, 0.000000, 4.000000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_cac_pixelblurred"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.Image00002 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(false, true, -122.500000, -106.500000)
	registerVal16:setTopBottom(false, true, -4.000000, 0.000000)
	registerVal16:setAlpha(0.000000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_cac_pixelblurred"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal16)
	registerVal2.Image00 = registerVal16
	local registerVal17 = {}
	local registerVal18 = {}
	local function __FUNC_1DB3_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal9:completeAnimation()
		registerVal2.Title:setAlpha(0.750000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Slider:setAlpha(0.750000)
		registerVal2.clipFinished(registerVal10, {})
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

	registerVal18.DefaultClip = __FUNC_1DB3_
	local function __FUNC_205D_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_2513_(arg0, arg1)
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
		__FUNC_2513_(registerVal9, {})
		local function __FUNC_26C5_(arg0, arg1)
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

		registerVal10:completeAnimation()
		registerVal2.Slider:setAlpha(0.700000)
		__FUNC_26C5_(registerVal10, {})
		local function __FUNC_2879_(arg0, arg1)
			local function __FUNC_29D0_(arg0, arg1)
				local function __FUNC_2B4B_(arg0, arg1)
					local function __FUNC_2CA0_(arg0, arg1)
						local function __FUNC_2E1B_(arg0, arg1)
							local function __FUNC_2F70_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, true, 336.530000, -126.000000)
								arg0:setTopBottom(true, false, 1.000000, 5.000000)
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_2F70_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F70_)
						end

						if arg1.interrupted then
							__FUNC_2E1B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E1B_)
					end

					if arg1.interrupted then
						__FUNC_2CA0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CA0_)
				end

				if arg1.interrupted then
					__FUNC_2B4B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B4B_)
			end

			if arg1.interrupted then
				__FUNC_29D0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29D0_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, 336.530000, -126.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, 1.000000, 5.000000)
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_2879_(registerVal11, {})
		local function __FUNC_3190_(arg0, arg1)
			local function __FUNC_32E8_(arg0, arg1)
				local function __FUNC_3463_(arg0, arg1)
					local function __FUNC_35B8_(arg0, arg1)
						local function __FUNC_3733_(arg0, arg1)
							local function __FUNC_3888_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, true, 336.530000, -126.000000)
								arg0:setTopBottom(false, true, -4.000000, 0.000000)
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_3888_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3888_)
						end

						if arg1.interrupted then
							__FUNC_3733_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3733_)
					end

					if arg1.interrupted then
						__FUNC_35B8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35B8_)
				end

				if arg1.interrupted then
					__FUNC_3463_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3463_)
			end

			if arg1.interrupted then
				__FUNC_32E8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32E8_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, 336.530000, -126.000000)
		registerVal2.FocusBarB:setTopBottom(false, true, -4.000000, 0.000000)
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_3190_(registerVal12, {})
		local function __FUNC_3AAD_(arg0, arg1)
			local function __FUNC_3C04_(arg0, arg1)
				local function __FUNC_3D7F_(arg0, arg1)
					local function __FUNC_3ED4_(arg0, arg1)
						local function __FUNC_404F_(arg0, arg1)
							local function __FUNC_41A4_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, true, 330.030000, -122.500000)
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
								__FUNC_41A4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_41A4_)
						end

						if arg1.interrupted then
							__FUNC_404F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_404F_)
					end

					if arg1.interrupted then
						__FUNC_3ED4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3ED4_)
				end

				if arg1.interrupted then
					__FUNC_3D7F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D7F_)
			end

			if arg1.interrupted then
				__FUNC_3C04_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C04_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch:setLeftRight(true, true, 330.030000, -122.500000)
		registerVal2.glitch:setTopBottom(true, false, -3.750000, 9.750000)
		registerVal2.glitch:setAlpha(1.000000)
		registerVal2.glitch:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_3AAD_(registerVal13, {})
		local function __FUNC_4453_(arg0, arg1)
			local function __FUNC_45A8_(arg0, arg1)
				local function __FUNC_4723_(arg0, arg1)
					local function __FUNC_4878_(arg0, arg1)
						local function __FUNC_49F3_(arg0, arg1)
							local function __FUNC_4B48_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, true, 330.030000, -122.500000)
								arg0:setTopBottom(false, true, -10.000000, 5.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_4B48_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B48_)
						end

						if arg1.interrupted then
							__FUNC_49F3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_49F3_)
					end

					if arg1.interrupted then
						__FUNC_4878_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4878_)
				end

				if arg1.interrupted then
					__FUNC_4723_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4723_)
			end

			if arg1.interrupted then
				__FUNC_45A8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_45A8_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch2:setLeftRight(true, true, 330.030000, -122.500000)
		registerVal2.glitch2:setTopBottom(false, true, -10.000000, 5.000000)
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_4453_(registerVal14, {})
	end

	registerVal18.GainFocus = __FUNC_205D_
	local function __FUNC_4D6D_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal9:completeAnimation()
		registerVal2.Title:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Slider:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, 336.530000, -126.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, 1.000000, 5.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, 336.530000, -126.000000)
		registerVal2.FocusBarB:setTopBottom(false, true, -4.000000, 0.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.glitch:setLeftRight(true, true, 338.030000, -126.000000)
		registerVal2.glitch:setTopBottom(true, false, -3.750000, 9.750000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.glitch2:setLeftRight(true, true, 338.030000, -126.000000)
		registerVal2.glitch2:setTopBottom(false, true, -10.000000, 5.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal18.Focus = __FUNC_4D6D_
	local function __FUNC_5175_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_558C_(arg0, arg1)
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
		__FUNC_558C_(registerVal9, {})
		local function __FUNC_5741_(arg0, arg1)
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

		registerVal10:completeAnimation()
		registerVal2.Slider:setAlpha(1.000000)
		__FUNC_5741_(registerVal10, {})
		local function __FUNC_58F5_(arg0, arg1)
			local function __FUNC_5A6F_(arg0, arg1)
				local function __FUNC_5BE7_(arg0, arg1)
					local function __FUNC_5D5F_(arg0, arg1)
						local function __FUNC_5EB4_(arg0, arg1)
							local function __FUNC_602F_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, true, 336.530000, -126.000000)
								arg0:setTopBottom(true, false, 1.000000, 5.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_602F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_602F_)
						end

						if arg1.interrupted then
							__FUNC_5EB4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5EB4_)
					end

					if arg1.interrupted then
						__FUNC_5D5F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5D5F_)
				end

				if arg1.interrupted then
					__FUNC_5BE7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5BE7_)
			end

			if arg1.interrupted then
				__FUNC_5A6F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5A6F_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, 336.530000, -126.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, 1.000000, 5.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_58F5_(registerVal11, {})
		local function __FUNC_6251_(arg0, arg1)
			local function __FUNC_63CB_(arg0, arg1)
				local function __FUNC_6543_(arg0, arg1)
					local function __FUNC_66BB_(arg0, arg1)
						local function __FUNC_6810_(arg0, arg1)
							local function __FUNC_698B_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, true, 336.530000, -126.000000)
								arg0:setTopBottom(false, true, -4.000000, 0.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_698B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_698B_)
						end

						if arg1.interrupted then
							__FUNC_6810_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6810_)
					end

					if arg1.interrupted then
						__FUNC_66BB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_66BB_)
				end

				if arg1.interrupted then
					__FUNC_6543_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6543_)
			end

			if arg1.interrupted then
				__FUNC_63CB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_63CB_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, 336.530000, -126.000000)
		registerVal2.FocusBarB:setTopBottom(false, true, -4.000000, 0.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_6251_(registerVal12, {})
		local function __FUNC_6BA8_(arg0, arg1)
			local function __FUNC_6D00_(arg0, arg1)
				local function __FUNC_6E7B_(arg0, arg1)
					local function __FUNC_6FD0_(arg0, arg1)
						local function __FUNC_714B_(arg0, arg1)
							local function __FUNC_72A0_(arg0, arg1)
								local function __FUNC_741B_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setLeftRight(true, true, 330.030000, -128.730000)
									arg0:setTopBottom(true, false, -3.750000, 9.750000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_741B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_741B_)
							end

							if arg1.interrupted then
								__FUNC_72A0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_72A0_)
						end

						if arg1.interrupted then
							__FUNC_714B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_714B_)
					end

					if arg1.interrupted then
						__FUNC_6FD0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6FD0_)
				end

				if arg1.interrupted then
					__FUNC_6E7B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6E7B_)
			end

			if arg1.interrupted then
				__FUNC_6D00_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6D00_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch:setLeftRight(true, true, 330.030000, -128.730000)
		registerVal2.glitch:setTopBottom(true, false, -3.750000, 9.750000)
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_6BA8_(registerVal13, {})
		local function __FUNC_763D_(arg0, arg1)
			local function __FUNC_7794_(arg0, arg1)
				local function __FUNC_790F_(arg0, arg1)
					local function __FUNC_7A64_(arg0, arg1)
						local function __FUNC_7BDF_(arg0, arg1)
							local function __FUNC_7D34_(arg0, arg1)
								local function __FUNC_7EAF_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setLeftRight(true, true, 330.030000, -128.730000)
									arg0:setTopBottom(false, true, -10.000000, 5.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_7EAF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7EAF_)
							end

							if arg1.interrupted then
								__FUNC_7D34_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7D34_)
						end

						if arg1.interrupted then
							__FUNC_7BDF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7BDF_)
					end

					if arg1.interrupted then
						__FUNC_7A64_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7A64_)
				end

				if arg1.interrupted then
					__FUNC_790F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_790F_)
			end

			if arg1.interrupted then
				__FUNC_7794_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7794_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch2:setLeftRight(true, true, 330.030000, -128.730000)
		registerVal2.glitch2:setTopBottom(false, true, -10.000000, 5.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_763D_(registerVal14, {})
	end

	registerVal18.LoseFocus = __FUNC_5175_
	registerVal17.DefaultState = registerVal18
	registerVal18 = {}
	local function __FUNC_80D1_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgIdle0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.StartMenuframenoBG1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal2.Title:setRGB(0.420000, 0.420000, 0.420000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Slider:setLeftRight(true, true, 356.270000, -53.730000)
		registerVal2.Slider:setTopBottom(false, false, -15.250000, 14.750000)
		registerVal2.Slider:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal18.DefaultClip = __FUNC_80D1_
	local function __FUNC_83EC_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_870A_(arg0, arg1)
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
		__FUNC_870A_(registerVal9, {})
		local function __FUNC_88BD_(arg0, arg1)
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

		registerVal10:completeAnimation()
		registerVal2.Slider:setAlpha(0.700000)
		__FUNC_88BD_(registerVal10, {})
		local function __FUNC_8A71_(arg0, arg1)
			local function __FUNC_8BC8_(arg0, arg1)
				local function __FUNC_8D43_(arg0, arg1)
					local function __FUNC_8E98_(arg0, arg1)
						local function __FUNC_9013_(arg0, arg1)
							local function __FUNC_9168_(arg0, arg1)
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
								__FUNC_9168_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9168_)
						end

						if arg1.interrupted then
							__FUNC_9013_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9013_)
					end

					if arg1.interrupted then
						__FUNC_8E98_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8E98_)
				end

				if arg1.interrupted then
					__FUNC_8D43_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8D43_)
			end

			if arg1.interrupted then
				__FUNC_8BC8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8BC8_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_8A71_(registerVal11, {})
		local function __FUNC_931D_(arg0, arg1)
			local function __FUNC_9474_(arg0, arg1)
				local function __FUNC_95EF_(arg0, arg1)
					local function __FUNC_9744_(arg0, arg1)
						local function __FUNC_98BF_(arg0, arg1)
							local function __FUNC_9A14_(arg0, arg1)
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
								__FUNC_9A14_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9A14_)
						end

						if arg1.interrupted then
							__FUNC_98BF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_98BF_)
					end

					if arg1.interrupted then
						__FUNC_9744_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9744_)
				end

				if arg1.interrupted then
					__FUNC_95EF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_95EF_)
			end

			if arg1.interrupted then
				__FUNC_9474_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9474_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_931D_(registerVal12, {})
		local function __FUNC_9BC9_(arg0, arg1)
			local function __FUNC_9D20_(arg0, arg1)
				local function __FUNC_9E9B_(arg0, arg1)
					local function __FUNC_9FF0_(arg0, arg1)
						local function __FUNC_A16B_(arg0, arg1)
							local function __FUNC_A2C0_(arg0, arg1)
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
								__FUNC_A2C0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A2C0_)
						end

						if arg1.interrupted then
							__FUNC_A16B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A16B_)
					end

					if arg1.interrupted then
						__FUNC_9FF0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9FF0_)
				end

				if arg1.interrupted then
					__FUNC_9E9B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9E9B_)
			end

			if arg1.interrupted then
				__FUNC_9D20_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9D20_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		registerVal2.glitch:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_9BC9_(registerVal13, {})
		local function __FUNC_A4FF_(arg0, arg1)
			local function __FUNC_A654_(arg0, arg1)
				local function __FUNC_A7CF_(arg0, arg1)
					local function __FUNC_A924_(arg0, arg1)
						local function __FUNC_AA9F_(arg0, arg1)
							local function __FUNC_ABF4_(arg0, arg1)
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
								__FUNC_ABF4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ABF4_)
						end

						if arg1.interrupted then
							__FUNC_AA9F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AA9F_)
					end

					if arg1.interrupted then
						__FUNC_A924_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A924_)
				end

				if arg1.interrupted then
					__FUNC_A7CF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A7CF_)
			end

			if arg1.interrupted then
				__FUNC_A654_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A654_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_A4FF_(registerVal14, {})
	end

	registerVal18.GainFocus = __FUNC_83EC_
	local function __FUNC_ADA9_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal9:completeAnimation()
		registerVal2.Title:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Slider:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal18.Focus = __FUNC_ADA9_
	local function __FUNC_AFA7_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_B223_(arg0, arg1)
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
		__FUNC_B223_(registerVal9, {})
		local function __FUNC_B3D5_(arg0, arg1)
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

		registerVal10:completeAnimation()
		registerVal2.Slider:setAlpha(1.000000)
		__FUNC_B3D5_(registerVal10, {})
		local function __FUNC_B589_(arg0, arg1)
			local function __FUNC_B703_(arg0, arg1)
				local function __FUNC_B87B_(arg0, arg1)
					local function __FUNC_B9F3_(arg0, arg1)
						local function __FUNC_BB48_(arg0, arg1)
							local function __FUNC_BCC3_(arg0, arg1)
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
								__FUNC_BCC3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BCC3_)
						end

						if arg1.interrupted then
							__FUNC_BB48_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BB48_)
					end

					if arg1.interrupted then
						__FUNC_B9F3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B9F3_)
				end

				if arg1.interrupted then
					__FUNC_B87B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B87B_)
			end

			if arg1.interrupted then
				__FUNC_B703_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B703_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_B589_(registerVal11, {})
		local function __FUNC_BE75_(arg0, arg1)
			local function __FUNC_BFEF_(arg0, arg1)
				local function __FUNC_C167_(arg0, arg1)
					local function __FUNC_C2DF_(arg0, arg1)
						local function __FUNC_C434_(arg0, arg1)
							local function __FUNC_C5AF_(arg0, arg1)
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
								__FUNC_C5AF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C5AF_)
						end

						if arg1.interrupted then
							__FUNC_C434_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C434_)
					end

					if arg1.interrupted then
						__FUNC_C2DF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C2DF_)
				end

				if arg1.interrupted then
					__FUNC_C167_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C167_)
			end

			if arg1.interrupted then
				__FUNC_BFEF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BFEF_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_BE75_(registerVal12, {})
		local function __FUNC_C761_(arg0, arg1)
			local function __FUNC_C8B8_(arg0, arg1)
				local function __FUNC_CA33_(arg0, arg1)
					local function __FUNC_CB88_(arg0, arg1)
						local function __FUNC_CD03_(arg0, arg1)
							local function __FUNC_CE58_(arg0, arg1)
								local function __FUNC_CFD3_(arg0, arg1)
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
									__FUNC_CFD3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CFD3_)
							end

							if arg1.interrupted then
								__FUNC_CE58_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CE58_)
						end

						if arg1.interrupted then
							__FUNC_CD03_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CD03_)
					end

					if arg1.interrupted then
						__FUNC_CB88_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CB88_)
				end

				if arg1.interrupted then
					__FUNC_CA33_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CA33_)
			end

			if arg1.interrupted then
				__FUNC_C8B8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C8B8_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_C761_(registerVal13, {})
		local function __FUNC_D185_(arg0, arg1)
			local function __FUNC_D2DC_(arg0, arg1)
				local function __FUNC_D457_(arg0, arg1)
					local function __FUNC_D5AC_(arg0, arg1)
						local function __FUNC_D727_(arg0, arg1)
							local function __FUNC_D87C_(arg0, arg1)
								local function __FUNC_D9F7_(arg0, arg1)
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
									__FUNC_D9F7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D9F7_)
							end

							if arg1.interrupted then
								__FUNC_D87C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D87C_)
						end

						if arg1.interrupted then
							__FUNC_D727_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D727_)
					end

					if arg1.interrupted then
						__FUNC_D5AC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D5AC_)
				end

				if arg1.interrupted then
					__FUNC_D457_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D457_)
			end

			if arg1.interrupted then
				__FUNC_D2DC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D2DC_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_D185_(registerVal14, {})
	end

	registerVal18.LoseFocus = __FUNC_AFA7_
	registerVal17.ButtonOnlyDisabled = registerVal18
	registerVal18 = {}
	local function __FUNC_DBA9_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgIdle0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal6:completeAnimation()
		registerVal2.StartMenuframenoBG1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal2.Title:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Title:setAlpha(0.750000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Slider:setLeftRight(true, true, 356.270000, -53.730000)
		registerVal2.Slider:setTopBottom(false, false, -15.250000, 14.750000)
		registerVal2.Slider:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
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

	registerVal18.DefaultClip = __FUNC_DBA9_
	local function __FUNC_DFDE_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_E2FA_(arg0, arg1)
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
		__FUNC_E2FA_(registerVal9, {})
		local function __FUNC_E4AD_(arg0, arg1)
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

		registerVal10:completeAnimation()
		registerVal2.Slider:setAlpha(0.700000)
		__FUNC_E4AD_(registerVal10, {})
		local function __FUNC_E661_(arg0, arg1)
			local function __FUNC_E7B8_(arg0, arg1)
				local function __FUNC_E933_(arg0, arg1)
					local function __FUNC_EA88_(arg0, arg1)
						local function __FUNC_EC03_(arg0, arg1)
							local function __FUNC_ED58_(arg0, arg1)
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
								__FUNC_ED58_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ED58_)
						end

						if arg1.interrupted then
							__FUNC_EC03_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EC03_)
					end

					if arg1.interrupted then
						__FUNC_EA88_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EA88_)
				end

				if arg1.interrupted then
					__FUNC_E933_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E933_)
			end

			if arg1.interrupted then
				__FUNC_E7B8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E7B8_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_E661_(registerVal11, {})
		local function __FUNC_EF0D_(arg0, arg1)
			local function __FUNC_F064_(arg0, arg1)
				local function __FUNC_F1DF_(arg0, arg1)
					local function __FUNC_F334_(arg0, arg1)
						local function __FUNC_F4AF_(arg0, arg1)
							local function __FUNC_F604_(arg0, arg1)
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
								__FUNC_F604_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F604_)
						end

						if arg1.interrupted then
							__FUNC_F4AF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F4AF_)
					end

					if arg1.interrupted then
						__FUNC_F334_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F334_)
				end

				if arg1.interrupted then
					__FUNC_F1DF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F1DF_)
			end

			if arg1.interrupted then
				__FUNC_F064_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F064_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_EF0D_(registerVal12, {})
		local function __FUNC_F7B9_(arg0, arg1)
			local function __FUNC_F910_(arg0, arg1)
				local function __FUNC_FA8B_(arg0, arg1)
					local function __FUNC_FBE0_(arg0, arg1)
						local function __FUNC_FD5B_(arg0, arg1)
							local function __FUNC_FEB0_(arg0, arg1)
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
								__FUNC_FEB0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FEB0_)
						end

						if arg1.interrupted then
							__FUNC_FD5B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FD5B_)
					end

					if arg1.interrupted then
						__FUNC_FBE0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FBE0_)
				end

				if arg1.interrupted then
					__FUNC_FA8B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FA8B_)
			end

			if arg1.interrupted then
				__FUNC_F910_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F910_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		registerVal2.glitch:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_F7B9_(registerVal13, {})
		local function __FUNC_100EF_(arg0, arg1)
			local function __FUNC_10244_(arg0, arg1)
				local function __FUNC_103BF_(arg0, arg1)
					local function __FUNC_10514_(arg0, arg1)
						local function __FUNC_1068F_(arg0, arg1)
							local function __FUNC_107E4_(arg0, arg1)
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
								__FUNC_107E4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_107E4_)
						end

						if arg1.interrupted then
							__FUNC_1068F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1068F_)
					end

					if arg1.interrupted then
						__FUNC_10514_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10514_)
				end

				if arg1.interrupted then
					__FUNC_103BF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_103BF_)
			end

			if arg1.interrupted then
				__FUNC_10244_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10244_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_100EF_(registerVal14, {})
	end

	registerVal18.GainFocus = __FUNC_DFDE_
	local function __FUNC_10999_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal9:completeAnimation()
		registerVal2.Title:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Slider:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, 38.000000, -339.470000)
		registerVal2.FocusBarT:setTopBottom(true, false, 1.000000, 5.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, 38.000000, -339.470000)
		registerVal2.FocusBarB:setTopBottom(false, true, -4.000000, 0.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal18.Focus = __FUNC_10999_
	local function __FUNC_10C7C_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_10EFB_(arg0, arg1)
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
		__FUNC_10EFB_(registerVal9, {})
		local function __FUNC_110AD_(arg0, arg1)
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

		registerVal10:completeAnimation()
		registerVal2.Slider:setAlpha(1.000000)
		__FUNC_110AD_(registerVal10, {})
		local function __FUNC_11261_(arg0, arg1)
			local function __FUNC_113DB_(arg0, arg1)
				local function __FUNC_11553_(arg0, arg1)
					local function __FUNC_116CB_(arg0, arg1)
						local function __FUNC_11820_(arg0, arg1)
							local function __FUNC_1199B_(arg0, arg1)
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
								__FUNC_1199B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1199B_)
						end

						if arg1.interrupted then
							__FUNC_11820_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11820_)
					end

					if arg1.interrupted then
						__FUNC_116CB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_116CB_)
				end

				if arg1.interrupted then
					__FUNC_11553_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11553_)
			end

			if arg1.interrupted then
				__FUNC_113DB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_113DB_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_11261_(registerVal11, {})
		local function __FUNC_11B4D_(arg0, arg1)
			local function __FUNC_11CC7_(arg0, arg1)
				local function __FUNC_11E3F_(arg0, arg1)
					local function __FUNC_11FB7_(arg0, arg1)
						local function __FUNC_1210C_(arg0, arg1)
							local function __FUNC_12287_(arg0, arg1)
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
								__FUNC_12287_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12287_)
						end

						if arg1.interrupted then
							__FUNC_1210C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1210C_)
					end

					if arg1.interrupted then
						__FUNC_11FB7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11FB7_)
				end

				if arg1.interrupted then
					__FUNC_11E3F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11E3F_)
			end

			if arg1.interrupted then
				__FUNC_11CC7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11CC7_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_11B4D_(registerVal12, {})
		local function __FUNC_12439_(arg0, arg1)
			local function __FUNC_12590_(arg0, arg1)
				local function __FUNC_1270B_(arg0, arg1)
					local function __FUNC_12860_(arg0, arg1)
						local function __FUNC_129DB_(arg0, arg1)
							local function __FUNC_12B30_(arg0, arg1)
								local function __FUNC_12CAB_(arg0, arg1)
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
									__FUNC_12CAB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12CAB_)
							end

							if arg1.interrupted then
								__FUNC_12B30_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12B30_)
						end

						if arg1.interrupted then
							__FUNC_129DB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_129DB_)
					end

					if arg1.interrupted then
						__FUNC_12860_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12860_)
				end

				if arg1.interrupted then
					__FUNC_1270B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1270B_)
			end

			if arg1.interrupted then
				__FUNC_12590_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12590_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_12439_(registerVal13, {})
		local function __FUNC_12E5D_(arg0, arg1)
			local function __FUNC_12FB4_(arg0, arg1)
				local function __FUNC_1312F_(arg0, arg1)
					local function __FUNC_13284_(arg0, arg1)
						local function __FUNC_133FF_(arg0, arg1)
							local function __FUNC_13554_(arg0, arg1)
								local function __FUNC_136CF_(arg0, arg1)
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
									__FUNC_136CF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_136CF_)
							end

							if arg1.interrupted then
								__FUNC_13554_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13554_)
						end

						if arg1.interrupted then
							__FUNC_133FF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_133FF_)
					end

					if arg1.interrupted then
						__FUNC_13284_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13284_)
				end

				if arg1.interrupted then
					__FUNC_1312F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1312F_)
			end

			if arg1.interrupted then
				__FUNC_12FB4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12FB4_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_12E5D_(registerVal14, {})
	end

	registerVal18.LoseFocus = __FUNC_10C7C_
	registerVal17.ButtonOnly = registerVal18
	registerVal18 = {}
	local function __FUNC_13881_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgIdle0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal6:completeAnimation()
		registerVal2.StartMenuframenoBG1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal2.Title:setRGB(0.420000, 0.420000, 0.420000)
		registerVal2.Title:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Slider:setLeftRight(true, true, 95.000000, -315.000000)
		registerVal2.Slider:setTopBottom(false, false, -15.000000, 15.000000)
		registerVal2.Slider:setAlpha(0.750000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal18.DefaultClip = __FUNC_13881_
	local function __FUNC_13B5F_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_13E7A_(arg0, arg1)
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
		__FUNC_13E7A_(registerVal9, {})
		local function __FUNC_1402D_(arg0, arg1)
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

		registerVal10:completeAnimation()
		registerVal2.Slider:setAlpha(0.700000)
		__FUNC_1402D_(registerVal10, {})
		local function __FUNC_141E1_(arg0, arg1)
			local function __FUNC_14338_(arg0, arg1)
				local function __FUNC_144B3_(arg0, arg1)
					local function __FUNC_14608_(arg0, arg1)
						local function __FUNC_14783_(arg0, arg1)
							local function __FUNC_148D8_(arg0, arg1)
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
								__FUNC_148D8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_148D8_)
						end

						if arg1.interrupted then
							__FUNC_14783_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14783_)
					end

					if arg1.interrupted then
						__FUNC_14608_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14608_)
				end

				if arg1.interrupted then
					__FUNC_144B3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_144B3_)
			end

			if arg1.interrupted then
				__FUNC_14338_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14338_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_141E1_(registerVal11, {})
		local function __FUNC_14A8D_(arg0, arg1)
			local function __FUNC_14BE4_(arg0, arg1)
				local function __FUNC_14D5F_(arg0, arg1)
					local function __FUNC_14EB4_(arg0, arg1)
						local function __FUNC_1502F_(arg0, arg1)
							local function __FUNC_15184_(arg0, arg1)
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
								__FUNC_15184_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15184_)
						end

						if arg1.interrupted then
							__FUNC_1502F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1502F_)
					end

					if arg1.interrupted then
						__FUNC_14EB4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14EB4_)
				end

				if arg1.interrupted then
					__FUNC_14D5F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14D5F_)
			end

			if arg1.interrupted then
				__FUNC_14BE4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14BE4_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_14A8D_(registerVal12, {})
		local function __FUNC_15339_(arg0, arg1)
			local function __FUNC_15490_(arg0, arg1)
				local function __FUNC_1560B_(arg0, arg1)
					local function __FUNC_15760_(arg0, arg1)
						local function __FUNC_158DB_(arg0, arg1)
							local function __FUNC_15A30_(arg0, arg1)
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
								__FUNC_15A30_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15A30_)
						end

						if arg1.interrupted then
							__FUNC_158DB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_158DB_)
					end

					if arg1.interrupted then
						__FUNC_15760_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15760_)
				end

				if arg1.interrupted then
					__FUNC_1560B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1560B_)
			end

			if arg1.interrupted then
				__FUNC_15490_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15490_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		registerVal2.glitch:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_15339_(registerVal13, {})
		local function __FUNC_15C6F_(arg0, arg1)
			local function __FUNC_15DC4_(arg0, arg1)
				local function __FUNC_15F3F_(arg0, arg1)
					local function __FUNC_16094_(arg0, arg1)
						local function __FUNC_1620F_(arg0, arg1)
							local function __FUNC_16364_(arg0, arg1)
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
								__FUNC_16364_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16364_)
						end

						if arg1.interrupted then
							__FUNC_1620F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1620F_)
					end

					if arg1.interrupted then
						__FUNC_16094_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16094_)
				end

				if arg1.interrupted then
					__FUNC_15F3F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15F3F_)
			end

			if arg1.interrupted then
				__FUNC_15DC4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15DC4_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_15C6F_(registerVal14, {})
	end

	registerVal18.GainFocus = __FUNC_13B5F_
	local function __FUNC_16519_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal9:completeAnimation()
		registerVal2.Title:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Slider:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, 38.000000, -339.470000)
		registerVal2.FocusBarT:setTopBottom(true, false, 1.000000, 5.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, 38.000000, -339.470000)
		registerVal2.FocusBarB:setTopBottom(false, true, -4.000000, 0.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal18.Focus = __FUNC_16519_
	local function __FUNC_167FC_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_16A7B_(arg0, arg1)
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
		__FUNC_16A7B_(registerVal9, {})
		local function __FUNC_16C2D_(arg0, arg1)
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

		registerVal10:completeAnimation()
		registerVal2.Slider:setAlpha(1.000000)
		__FUNC_16C2D_(registerVal10, {})
		local function __FUNC_16DE1_(arg0, arg1)
			local function __FUNC_16F5B_(arg0, arg1)
				local function __FUNC_170D3_(arg0, arg1)
					local function __FUNC_1724B_(arg0, arg1)
						local function __FUNC_173A0_(arg0, arg1)
							local function __FUNC_1751B_(arg0, arg1)
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
								__FUNC_1751B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1751B_)
						end

						if arg1.interrupted then
							__FUNC_173A0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_173A0_)
					end

					if arg1.interrupted then
						__FUNC_1724B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1724B_)
				end

				if arg1.interrupted then
					__FUNC_170D3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_170D3_)
			end

			if arg1.interrupted then
				__FUNC_16F5B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16F5B_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_16DE1_(registerVal11, {})
		local function __FUNC_176CD_(arg0, arg1)
			local function __FUNC_17847_(arg0, arg1)
				local function __FUNC_179BF_(arg0, arg1)
					local function __FUNC_17B37_(arg0, arg1)
						local function __FUNC_17C8C_(arg0, arg1)
							local function __FUNC_17E07_(arg0, arg1)
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
								__FUNC_17E07_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17E07_)
						end

						if arg1.interrupted then
							__FUNC_17C8C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17C8C_)
					end

					if arg1.interrupted then
						__FUNC_17B37_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17B37_)
				end

				if arg1.interrupted then
					__FUNC_179BF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_179BF_)
			end

			if arg1.interrupted then
				__FUNC_17847_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17847_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_176CD_(registerVal12, {})
		local function __FUNC_17FB9_(arg0, arg1)
			local function __FUNC_18110_(arg0, arg1)
				local function __FUNC_1828B_(arg0, arg1)
					local function __FUNC_183E0_(arg0, arg1)
						local function __FUNC_1855B_(arg0, arg1)
							local function __FUNC_186B0_(arg0, arg1)
								local function __FUNC_1882B_(arg0, arg1)
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
									__FUNC_1882B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1882B_)
							end

							if arg1.interrupted then
								__FUNC_186B0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_186B0_)
						end

						if arg1.interrupted then
							__FUNC_1855B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1855B_)
					end

					if arg1.interrupted then
						__FUNC_183E0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_183E0_)
				end

				if arg1.interrupted then
					__FUNC_1828B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1828B_)
			end

			if arg1.interrupted then
				__FUNC_18110_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18110_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_17FB9_(registerVal13, {})
		local function __FUNC_189DD_(arg0, arg1)
			local function __FUNC_18B34_(arg0, arg1)
				local function __FUNC_18CAF_(arg0, arg1)
					local function __FUNC_18E04_(arg0, arg1)
						local function __FUNC_18F7F_(arg0, arg1)
							local function __FUNC_190D4_(arg0, arg1)
								local function __FUNC_1924F_(arg0, arg1)
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
									__FUNC_1924F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1924F_)
							end

							if arg1.interrupted then
								__FUNC_190D4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_190D4_)
						end

						if arg1.interrupted then
							__FUNC_18F7F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18F7F_)
					end

					if arg1.interrupted then
						__FUNC_18E04_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18E04_)
				end

				if arg1.interrupted then
					__FUNC_18CAF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18CAF_)
			end

			if arg1.interrupted then
				__FUNC_18B34_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18B34_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_189DD_(registerVal14, {})
	end

	registerVal18.LoseFocus = __FUNC_167FC_
	registerVal17.SliderOnlyDisabled = registerVal18
	registerVal18 = {}
	local function __FUNC_19401_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgIdle0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal6:completeAnimation()
		registerVal2.StartMenuframenoBG1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal2.Title:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Title:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Slider:setLeftRight(true, true, 72.000000, -338.000000)
		registerVal2.Slider:setTopBottom(false, false, -15.250000, 14.750000)
		registerVal2.Slider:setAlpha(0.750000)
		registerVal2.clipFinished(registerVal10, {})
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

	registerVal18.DefaultClip = __FUNC_19401_
	local function __FUNC_19836_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_19B03_(arg0, arg1)
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

		registerVal10:completeAnimation()
		registerVal2.Slider:setAlpha(0.700000)
		__FUNC_19B03_(registerVal10, {})
		local function __FUNC_19CB5_(arg0, arg1)
			local function __FUNC_19E0C_(arg0, arg1)
				local function __FUNC_19F87_(arg0, arg1)
					local function __FUNC_1A0DC_(arg0, arg1)
						local function __FUNC_1A257_(arg0, arg1)
							local function __FUNC_1A3AC_(arg0, arg1)
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
								__FUNC_1A3AC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A3AC_)
						end

						if arg1.interrupted then
							__FUNC_1A257_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A257_)
					end

					if arg1.interrupted then
						__FUNC_1A0DC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A0DC_)
				end

				if arg1.interrupted then
					__FUNC_19F87_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19F87_)
			end

			if arg1.interrupted then
				__FUNC_19E0C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19E0C_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_19CB5_(registerVal11, {})
		local function __FUNC_1A561_(arg0, arg1)
			local function __FUNC_1A6B8_(arg0, arg1)
				local function __FUNC_1A833_(arg0, arg1)
					local function __FUNC_1A988_(arg0, arg1)
						local function __FUNC_1AB03_(arg0, arg1)
							local function __FUNC_1AC58_(arg0, arg1)
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
								__FUNC_1AC58_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AC58_)
						end

						if arg1.interrupted then
							__FUNC_1AB03_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AB03_)
					end

					if arg1.interrupted then
						__FUNC_1A988_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A988_)
				end

				if arg1.interrupted then
					__FUNC_1A833_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A833_)
			end

			if arg1.interrupted then
				__FUNC_1A6B8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A6B8_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_1A561_(registerVal12, {})
		local function __FUNC_1AE0D_(arg0, arg1)
			local function __FUNC_1AF64_(arg0, arg1)
				local function __FUNC_1B0DF_(arg0, arg1)
					local function __FUNC_1B234_(arg0, arg1)
						local function __FUNC_1B3AF_(arg0, arg1)
							local function __FUNC_1B504_(arg0, arg1)
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
								__FUNC_1B504_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B504_)
						end

						if arg1.interrupted then
							__FUNC_1B3AF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B3AF_)
					end

					if arg1.interrupted then
						__FUNC_1B234_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B234_)
				end

				if arg1.interrupted then
					__FUNC_1B0DF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B0DF_)
			end

			if arg1.interrupted then
				__FUNC_1AF64_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AF64_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		registerVal2.glitch:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_1AE0D_(registerVal13, {})
		local function __FUNC_1B743_(arg0, arg1)
			local function __FUNC_1B898_(arg0, arg1)
				local function __FUNC_1BA13_(arg0, arg1)
					local function __FUNC_1BB68_(arg0, arg1)
						local function __FUNC_1BCE3_(arg0, arg1)
							local function __FUNC_1BE38_(arg0, arg1)
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
								__FUNC_1BE38_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BE38_)
						end

						if arg1.interrupted then
							__FUNC_1BCE3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BCE3_)
					end

					if arg1.interrupted then
						__FUNC_1BB68_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BB68_)
				end

				if arg1.interrupted then
					__FUNC_1BA13_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BA13_)
			end

			if arg1.interrupted then
				__FUNC_1B898_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B898_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_1B743_(registerVal14, {})
	end

	registerVal18.GainFocus = __FUNC_19836_
	local function __FUNC_1BFED_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal10:completeAnimation()
		registerVal2.Slider:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, 38.500000, -340.470000)
		registerVal2.FocusBarT:setTopBottom(true, false, 1.000000, 5.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, 38.500000, -340.470000)
		registerVal2.FocusBarB:setTopBottom(false, true, -4.000000, 0.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal18.Focus = __FUNC_1BFED_
	local function __FUNC_1C27D_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_1C4AC_(arg0, arg1)
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

		registerVal10:completeAnimation()
		registerVal2.Slider:setAlpha(1.000000)
		__FUNC_1C4AC_(registerVal10, {})
		local function __FUNC_1C661_(arg0, arg1)
			local function __FUNC_1C7DB_(arg0, arg1)
				local function __FUNC_1C953_(arg0, arg1)
					local function __FUNC_1CACB_(arg0, arg1)
						local function __FUNC_1CC20_(arg0, arg1)
							local function __FUNC_1CD9B_(arg0, arg1)
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
								__FUNC_1CD9B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CD9B_)
						end

						if arg1.interrupted then
							__FUNC_1CC20_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CC20_)
					end

					if arg1.interrupted then
						__FUNC_1CACB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CACB_)
				end

				if arg1.interrupted then
					__FUNC_1C953_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C953_)
			end

			if arg1.interrupted then
				__FUNC_1C7DB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C7DB_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_1C661_(registerVal11, {})
		local function __FUNC_1CF4D_(arg0, arg1)
			local function __FUNC_1D0C7_(arg0, arg1)
				local function __FUNC_1D23F_(arg0, arg1)
					local function __FUNC_1D3B7_(arg0, arg1)
						local function __FUNC_1D50C_(arg0, arg1)
							local function __FUNC_1D687_(arg0, arg1)
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
								__FUNC_1D687_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D687_)
						end

						if arg1.interrupted then
							__FUNC_1D50C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D50C_)
					end

					if arg1.interrupted then
						__FUNC_1D3B7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D3B7_)
				end

				if arg1.interrupted then
					__FUNC_1D23F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D23F_)
			end

			if arg1.interrupted then
				__FUNC_1D0C7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D0C7_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_1CF4D_(registerVal12, {})
		local function __FUNC_1D839_(arg0, arg1)
			local function __FUNC_1D990_(arg0, arg1)
				local function __FUNC_1DB0B_(arg0, arg1)
					local function __FUNC_1DC60_(arg0, arg1)
						local function __FUNC_1DDDB_(arg0, arg1)
							local function __FUNC_1DF30_(arg0, arg1)
								local function __FUNC_1E0AB_(arg0, arg1)
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
									__FUNC_1E0AB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E0AB_)
							end

							if arg1.interrupted then
								__FUNC_1DF30_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DF30_)
						end

						if arg1.interrupted then
							__FUNC_1DDDB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DDDB_)
					end

					if arg1.interrupted then
						__FUNC_1DC60_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DC60_)
				end

				if arg1.interrupted then
					__FUNC_1DB0B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DB0B_)
			end

			if arg1.interrupted then
				__FUNC_1D990_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D990_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_1D839_(registerVal13, {})
		local function __FUNC_1E25D_(arg0, arg1)
			local function __FUNC_1E3B4_(arg0, arg1)
				local function __FUNC_1E52F_(arg0, arg1)
					local function __FUNC_1E684_(arg0, arg1)
						local function __FUNC_1E7FF_(arg0, arg1)
							local function __FUNC_1E954_(arg0, arg1)
								local function __FUNC_1EACF_(arg0, arg1)
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
									__FUNC_1EACF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EACF_)
							end

							if arg1.interrupted then
								__FUNC_1E954_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E954_)
						end

						if arg1.interrupted then
							__FUNC_1E7FF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E7FF_)
					end

					if arg1.interrupted then
						__FUNC_1E684_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E684_)
				end

				if arg1.interrupted then
					__FUNC_1E52F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E52F_)
			end

			if arg1.interrupted then
				__FUNC_1E3B4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E3B4_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_1E25D_(registerVal14, {})
	end

	registerVal18.LoseFocus = __FUNC_1C27D_
	registerVal17.SliderOnly = registerVal18
	registerVal18 = {}
	local function __FUNC_1EC81_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgIdle0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.StartMenuframenoBG1:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal2.Title:setRGB(0.420000, 0.420000, 0.420000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Slider:setLeftRight(true, true, 356.270000, -53.730000)
		registerVal2.Slider:setTopBottom(false, false, -15.250000, 14.750000)
		registerVal2.Slider:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal18.DefaultClip = __FUNC_1EC81_
	registerVal17.Disabled = registerVal18
	registerVal18 = {}
	local function __FUNC_1EFA6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal18.DefaultClip = __FUNC_1EFA6_
	registerVal17.Selected = registerVal18
	registerVal2.clipsPerState = registerVal17
	local registerVal19 = {}
	local registerVal20 = {}
	registerVal20.stateName = "ButtonOnlyDisabled"
	local function __FUNC_1F006_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "buttonOnly")
		if registerVal3 then
			registerVal3 = IsDisabled(arg2, arg1)
		end
		return registerVal3
	end

	registerVal20.condition = __FUNC_1F006_
	local registerVal21 = {}
	registerVal21.stateName = "ButtonOnly"
	local function __FUNC_1F0A6_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "buttonOnly")
	end

	registerVal21.condition = __FUNC_1F0A6_
	local registerVal22 = {}
	registerVal22.stateName = "SliderOnlyDisabled"
	local function __FUNC_1F11A_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "sliderOnly")
		if registerVal3 then
			registerVal3 = IsDisabled(arg2, arg1)
		end
		return registerVal3
	end

	registerVal22.condition = __FUNC_1F11A_
	local registerVal23 = {}
	registerVal23.stateName = "SliderOnly"
	local function __FUNC_1F1BA_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "sliderOnly")
	end

	registerVal23.condition = __FUNC_1F1BA_
	local registerVal24 = {}
	registerVal24.stateName = "Disabled"
	local function __FUNC_1F22E_(arg0, arg2, arg3)
		return IsDisabled(arg2, arg1)
	end

	registerVal24.condition = __FUNC_1F22E_
	local registerVal25 = {}
	registerVal25.stateName = "Selected"
	local function __FUNC_1F280_(arg0, arg2, arg3)
		return IsSelected(arg2, arg1)
	end

	registerVal25.condition = __FUNC_1F280_
	registerVal19 = {registerVal20, registerVal21, registerVal22, registerVal23, registerVal24, registerVal25}
	registerVal2:mergeStateConditions(registerVal19)
	local function __FUNC_1F2D4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "buttonOnly"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "buttonOnly", true, __FUNC_1F2D4_)
	local function __FUNC_1F3F4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabled", true, __FUNC_1F3F4_)
	local function __FUNC_1F512_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "sliderOnly"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "sliderOnly", true, __FUNC_1F512_)
	local function __FUNC_1F630_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "selected"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "selected", true, __FUNC_1F630_)
	local function __FUNC_1F74E_(arg0, arg2)
		local registerVal2 = IsSelfInState(registerVal2, "ButtonOnly")
		if registerVal2 then
			EnableMouseButton(registerVal2, arg1)
		else
			registerVal2 = IsElementInState(arg0, "Selected")
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
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_1F74E_)
	registerVal10.id = "Slider"
	local function __FUNC_1F8EF_(arg0, arg1)
		local registerVal2 = arg0.Slider:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_1F8EF_)
	local function __FUNC_1F9EE_(arg0)
		arg0.StartMenuframenoBG0:close()
		arg0.StartMenuframenoBG1:close()
		arg0.Slider:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.Title:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1F9EE_)
	if __FUNC_2C6_ then
		__FUNC_2C6_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.codcaster_options_slider.new = __FUNC_4CA_
