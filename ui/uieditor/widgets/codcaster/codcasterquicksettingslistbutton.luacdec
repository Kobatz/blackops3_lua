-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CodCasterQuickSettingsListButton = registerVal1
function CoD.CodCasterQuickSettingsListButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CodCasterQuickSettingsListButton)
	registerVal2.id = "CodCasterQuickSettingsListButton"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 240.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 20.000000, 240.000000)
	registerVal3:setTopBottom(true, false, 2.000000, 30.000000)
	registerVal3:setAlpha(0.250000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrgidlefull"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal3:setShaderVector(0.000000, 0.120301, 0.120301, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxButtonLrgIdle = registerVal3
	local registerVal4 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 20.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.StartMenuframenoBG0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 26.000000, 50.000000)
	registerVal5:setTopBottom(true, false, 3.000000, 27.000000)
	registerVal5:setImage(RegisterImage("uie_t7_codcaster_checkbox"))
	registerVal2:addElement(registerVal5)
	registerVal2.checkbox = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 26.000000, 50.000000)
	registerVal6:setTopBottom(true, false, 4.000000, 28.000000)
	registerVal6:setImage(RegisterImage("uie_t7_codcaster_checkboxchecked"))
	registerVal2:addElement(registerVal6)
	registerVal2.checkedbox = registerVal6
	local registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(true, false, 57.000000, 234.000000)
	registerVal7:setTopBottom(true, false, 4.000000, 26.000000)
	registerVal7:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal7)
	registerVal2.Options = registerVal7
	local registerVal8 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, 20.000000, -1.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 4.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setZoom(1.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.FocusBarT = registerVal8
	local registerVal9 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, 20.000000, -1.000000)
	registerVal9:setTopBottom(false, true, -4.000000, 0.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setZoom(1.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.FocusBarB = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, -18.000000, -2.000000)
	registerVal10:setTopBottom(true, false, 0.000000, 4.000000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_cac_pixelblurred"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.Image0000 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, -18.000000, -2.000000)
	registerVal11:setTopBottom(false, true, -4.000000, 0.000000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_cac_pixelblurred"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.Image0 = registerVal11
	local function __FUNC_FA5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.Options:linkToElementModel(registerVal2, "displayText", true, __FUNC_FA5_)
	local registerVal12 = {}
	local registerVal13 = {}
	local function __FUNC_105E_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal6:completeAnimation()
		registerVal2.checkedbox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Options:setAlpha(0.750000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal13.DefaultClip = __FUNC_105E_
	local function __FUNC_1266_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal6:completeAnimation()
		registerVal2.checkedbox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_1462_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.Options:setAlpha(0.750000)
		__FUNC_1462_(registerVal7, {})
		local function __FUNC_1615_(arg0, arg1)
			local function __FUNC_176C_(arg0, arg1)
				local function __FUNC_18E7_(arg0, arg1)
					local function __FUNC_1A3C_(arg0, arg1)
						local function __FUNC_1BB7_(arg0, arg1)
							local function __FUNC_1D0C_(arg0, arg1)
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
								__FUNC_1D0C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D0C_)
						end

						if arg1.interrupted then
							__FUNC_1BB7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BB7_)
					end

					if arg1.interrupted then
						__FUNC_1A3C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A3C_)
				end

				if arg1.interrupted then
					__FUNC_18E7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18E7_)
			end

			if arg1.interrupted then
				__FUNC_176C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_176C_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_1615_(registerVal8, {})
		local function __FUNC_1EC1_(arg0, arg1)
			local function __FUNC_2018_(arg0, arg1)
				local function __FUNC_2193_(arg0, arg1)
					local function __FUNC_22E8_(arg0, arg1)
						local function __FUNC_2463_(arg0, arg1)
							local function __FUNC_25B8_(arg0, arg1)
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
								__FUNC_25B8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25B8_)
						end

						if arg1.interrupted then
							__FUNC_2463_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2463_)
					end

					if arg1.interrupted then
						__FUNC_22E8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22E8_)
				end

				if arg1.interrupted then
					__FUNC_2193_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2193_)
			end

			if arg1.interrupted then
				__FUNC_2018_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2018_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_1EC1_(registerVal9, {})
	end

	registerVal13.GainFocus = __FUNC_1266_
	local function __FUNC_276D_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal6:completeAnimation()
		registerVal2.checkedbox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Options:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal13.Focus = __FUNC_276D_
	local function __FUNC_2976_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal6:completeAnimation()
		registerVal2.checkedbox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_2B72_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.750000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.Options:setAlpha(1.000000)
		__FUNC_2B72_(registerVal7, {})
		local function __FUNC_2D25_(arg0, arg1)
			local function __FUNC_2E9F_(arg0, arg1)
				local function __FUNC_3017_(arg0, arg1)
					local function __FUNC_318F_(arg0, arg1)
						local function __FUNC_32E4_(arg0, arg1)
							local function __FUNC_345F_(arg0, arg1)
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
								__FUNC_345F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_345F_)
						end

						if arg1.interrupted then
							__FUNC_32E4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32E4_)
					end

					if arg1.interrupted then
						__FUNC_318F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_318F_)
				end

				if arg1.interrupted then
					__FUNC_3017_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3017_)
			end

			if arg1.interrupted then
				__FUNC_2E9F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E9F_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_2D25_(registerVal8, {})
		local function __FUNC_3611_(arg0, arg1)
			local function __FUNC_378B_(arg0, arg1)
				local function __FUNC_3903_(arg0, arg1)
					local function __FUNC_3A7B_(arg0, arg1)
						local function __FUNC_3BD0_(arg0, arg1)
							local function __FUNC_3D4B_(arg0, arg1)
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
								__FUNC_3D4B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D4B_)
						end

						if arg1.interrupted then
							__FUNC_3BD0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3BD0_)
					end

					if arg1.interrupted then
						__FUNC_3A7B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A7B_)
				end

				if arg1.interrupted then
					__FUNC_3903_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3903_)
			end

			if arg1.interrupted then
				__FUNC_378B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_378B_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_3611_(registerVal9, {})
	end

	registerVal13.LoseFocus = __FUNC_2976_
	registerVal12.DefaultState = registerVal13
	registerVal13 = {}
	local function __FUNC_3EFD_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal6:completeAnimation()
		registerVal2.checkedbox:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Options:setAlpha(0.750000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal13.DefaultClip = __FUNC_3EFD_
	local function __FUNC_410B_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal6:completeAnimation()
		registerVal2.checkedbox:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_430B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.Options:setAlpha(0.750000)
		__FUNC_430B_(registerVal7, {})
		local function __FUNC_44BD_(arg0, arg1)
			local function __FUNC_4614_(arg0, arg1)
				local function __FUNC_478F_(arg0, arg1)
					local function __FUNC_48E4_(arg0, arg1)
						local function __FUNC_4A5F_(arg0, arg1)
							local function __FUNC_4BB4_(arg0, arg1)
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
								__FUNC_4BB4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4BB4_)
						end

						if arg1.interrupted then
							__FUNC_4A5F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A5F_)
					end

					if arg1.interrupted then
						__FUNC_48E4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_48E4_)
				end

				if arg1.interrupted then
					__FUNC_478F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_478F_)
			end

			if arg1.interrupted then
				__FUNC_4614_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4614_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_44BD_(registerVal8, {})
		local function __FUNC_4D69_(arg0, arg1)
			local function __FUNC_4EC0_(arg0, arg1)
				local function __FUNC_503B_(arg0, arg1)
					local function __FUNC_5190_(arg0, arg1)
						local function __FUNC_530B_(arg0, arg1)
							local function __FUNC_5460_(arg0, arg1)
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
								__FUNC_5460_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5460_)
						end

						if arg1.interrupted then
							__FUNC_530B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_530B_)
					end

					if arg1.interrupted then
						__FUNC_5190_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5190_)
				end

				if arg1.interrupted then
					__FUNC_503B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_503B_)
			end

			if arg1.interrupted then
				__FUNC_4EC0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4EC0_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_4D69_(registerVal9, {})
	end

	registerVal13.GainFocus = __FUNC_410B_
	local function __FUNC_5615_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal6:completeAnimation()
		registerVal2.checkedbox:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal13.Focus = __FUNC_5615_
	local function __FUNC_57C4_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal6:completeAnimation()
		registerVal2.checkedbox:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_59BD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.750000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.Options:setAlpha(1.000000)
		__FUNC_59BD_(registerVal7, {})
		local function __FUNC_5B71_(arg0, arg1)
			local function __FUNC_5CEB_(arg0, arg1)
				local function __FUNC_5E63_(arg0, arg1)
					local function __FUNC_5FDB_(arg0, arg1)
						local function __FUNC_6130_(arg0, arg1)
							local function __FUNC_62AB_(arg0, arg1)
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
								__FUNC_62AB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_62AB_)
						end

						if arg1.interrupted then
							__FUNC_6130_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6130_)
					end

					if arg1.interrupted then
						__FUNC_5FDB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5FDB_)
				end

				if arg1.interrupted then
					__FUNC_5E63_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E63_)
			end

			if arg1.interrupted then
				__FUNC_5CEB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5CEB_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_5B71_(registerVal8, {})
		local function __FUNC_645D_(arg0, arg1)
			local function __FUNC_65D7_(arg0, arg1)
				local function __FUNC_674F_(arg0, arg1)
					local function __FUNC_68C7_(arg0, arg1)
						local function __FUNC_6A1C_(arg0, arg1)
							local function __FUNC_6B97_(arg0, arg1)
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
								__FUNC_6B97_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6B97_)
						end

						if arg1.interrupted then
							__FUNC_6A1C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6A1C_)
					end

					if arg1.interrupted then
						__FUNC_68C7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_68C7_)
				end

				if arg1.interrupted then
					__FUNC_674F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_674F_)
			end

			if arg1.interrupted then
				__FUNC_65D7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_65D7_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_645D_(registerVal9, {})
	end

	registerVal13.LoseFocus = __FUNC_57C4_
	registerVal12.WithSelectedIcon = registerVal13
	registerVal2.clipsPerState = registerVal12
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "WithSelectedIcon"
	local function __FUNC_6D49_(arg0, arg2, arg3)
		return IsCodCasterQuickSettingEnabled(arg0, arg2, arg1)
	end

	registerVal15.condition = __FUNC_6D49_
	registerVal14 = {registerVal15}
	registerVal2:mergeStateConditions(registerVal14)
	local function __FUNC_6DB4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "profileVarValue"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "profileVarValue", true, __FUNC_6DB4_)
	local function __FUNC_6ED9_(arg0)
		arg0.StartMenuframenoBG0:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.Options:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_6ED9_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

