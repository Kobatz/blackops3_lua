-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.CAC.GridItemVariantRender")
require("ui.uieditor.widgets.CAC.cac_lock")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.Lobby.Common.FE_PanelNoBlur")
require("ui.uieditor.widgets.horizontalScrollingTextBox_20pt")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChooseShowcaseWeapon_VariantButton = registerVal1
function CoD.ChooseShowcaseWeapon_VariantButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChooseShowcaseWeapon_VariantButton)
	registerVal2.id = "ChooseShowcaseWeapon_VariantButton"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 108.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 108.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ButtonBoxLrgInactiveDiags.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal3:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxButtonLrgInactiveDiag = registerVal3
	local registerVal4 = CoD.cac_ButtonBoxLrgInactive.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal4:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BoxButtonLrgInactive = registerVal4
	local registerVal5 = CoD.cac_ButtonBoxLrgIdle.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal5:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.BoxButtonLrgIdle = registerVal5
	local registerVal6 = CoD.GridItemVariantRender.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 0.000000, 108.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 108.000000)
	local function __FUNC_14EC_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_14EC_)
	registerVal2:addElement(registerVal6)
	registerVal2.itemImageRender = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal7:setRGB(0.490000, 0.490000, 0.490000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.lockBackground = registerVal7
	local registerVal8 = CoD.cac_lock.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, 16.000000, -16.000000)
	registerVal8:setTopBottom(true, true, 16.000000, -16.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.lockIcon = registerVal8
	local registerVal9 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal9:setTopBottom(true, false, -4.000000, 0.000000)
	registerVal9:setZoom(1.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.FocusBarT = registerVal9
	local registerVal10 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal10:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal10:setTopBottom(false, true, 0.000000, 4.000000)
	registerVal10:setZoom(1.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.FocusBarB = registerVal10
	local registerVal11 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal11:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal11:setTopBottom(true, true, -0.500000, 0.000000)
	registerVal11:setRGB(1.000000, 0.300000, 0.000000)
	registerVal11:setAlpha(0.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.FocusBorder = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, true, -5.000000, 4.000000)
	registerVal12:setTopBottom(true, false, -9.750000, 3.750000)
	registerVal12:setRGB(1.000000, 0.090000, 0.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.glitch = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, true, -5.000000, 4.000000)
	registerVal13:setTopBottom(false, true, -5.000000, 10.000000)
	registerVal13:setRGB(1.000000, 0.150000, 0.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.glitch2 = registerVal13
	local registerVal14 = CoD.FE_PanelNoBlur.new(arg0, arg1)
	registerVal14:setLeftRight(true, true, 3.000000, -4.000000)
	registerVal14:setTopBottom(true, true, 86.000000, -2.000000)
	registerVal14:setRGB(0.000000, 0.000000, 0.000000)
	registerVal14:setAlpha(0.400000)
	registerVal2:addElement(registerVal14)
	registerVal2.Panel = registerVal14
	local registerVal15 = CoD.horizontalScrollingTextBox_20pt.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 3.000000, 104.000000)
	registerVal15:setTopBottom(true, false, 86.000000, 106.000000)
	registerVal15.textBox:setTTF("fonts/default.ttf")
	registerVal15.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local function __FUNC_153E_(arg0)
		registerVal15:setModel(arg0, arg1)
	end

	registerVal15:linkToElementModel(registerVal2, nil, false, __FUNC_153E_)
	local function __FUNC_158E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15.textBox:setText(registerVal1)
		end
	end

	registerVal15:linkToElementModel(registerVal2, "variantName", true, __FUNC_158E_)
	registerVal2:addElement(registerVal15)
	registerVal2.horizontalScrollingTextBox20pt0 = registerVal15
	local registerVal16 = {}
	local registerVal17 = {}
	local function __FUNC_163D_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.lockBackground:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.lockIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal17.DefaultClip = __FUNC_163D_
	local function __FUNC_1A73_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_1D6F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		__FUNC_1D6F_(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.lockIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_1F21_(arg0, arg1)
			local function __FUNC_2078_(arg0, arg1)
				local function __FUNC_21F3_(arg0, arg1)
					local function __FUNC_2348_(arg0, arg1)
						local function __FUNC_24C3_(arg0, arg1)
							local function __FUNC_2618_(arg0, arg1)
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
								__FUNC_2618_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2618_)
						end

						if arg1.interrupted then
							__FUNC_24C3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24C3_)
					end

					if arg1.interrupted then
						__FUNC_2348_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2348_)
				end

				if arg1.interrupted then
					__FUNC_21F3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21F3_)
			end

			if arg1.interrupted then
				__FUNC_2078_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2078_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_1F21_(registerVal9, {})
		local function __FUNC_27CD_(arg0, arg1)
			local function __FUNC_2924_(arg0, arg1)
				local function __FUNC_2A9F_(arg0, arg1)
					local function __FUNC_2BF4_(arg0, arg1)
						local function __FUNC_2D6F_(arg0, arg1)
							local function __FUNC_2EC4_(arg0, arg1)
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
								__FUNC_2EC4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EC4_)
						end

						if arg1.interrupted then
							__FUNC_2D6F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D6F_)
					end

					if arg1.interrupted then
						__FUNC_2BF4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BF4_)
				end

				if arg1.interrupted then
					__FUNC_2A9F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A9F_)
			end

			if arg1.interrupted then
				__FUNC_2924_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2924_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_27CD_(registerVal10, {})
		local function __FUNC_3079_(arg0, arg1)
			local function __FUNC_31D0_(arg0, arg1)
				local function __FUNC_334B_(arg0, arg1)
					local function __FUNC_34C3_(arg0, arg1)
						local function __FUNC_363B_(arg0, arg1)
							local function __FUNC_3790_(arg0, arg1)
								local function __FUNC_390B_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_390B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_390B_)
							end

							if arg1.interrupted then
								__FUNC_3790_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3790_)
						end

						if arg1.interrupted then
							__FUNC_363B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_363B_)
					end

					if arg1.interrupted then
						__FUNC_34C3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34C3_)
				end

				if arg1.interrupted then
					__FUNC_334B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_334B_)
			end

			if arg1.interrupted then
				__FUNC_31D0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31D0_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_3079_(registerVal11, {})
		local function __FUNC_3ABD_(arg0, arg1)
			local function __FUNC_3C14_(arg0, arg1)
				local function __FUNC_3D8F_(arg0, arg1)
					local function __FUNC_3EE4_(arg0, arg1)
						local function __FUNC_405F_(arg0, arg1)
							local function __FUNC_41B4_(arg0, arg1)
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
								__FUNC_41B4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_41B4_)
						end

						if arg1.interrupted then
							__FUNC_405F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_405F_)
					end

					if arg1.interrupted then
						__FUNC_3EE4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3EE4_)
				end

				if arg1.interrupted then
					__FUNC_3D8F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D8F_)
			end

			if arg1.interrupted then
				__FUNC_3C14_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C14_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_3ABD_(registerVal12, {})
		local function __FUNC_4369_(arg0, arg1)
			local function __FUNC_44C0_(arg0, arg1)
				local function __FUNC_463B_(arg0, arg1)
					local function __FUNC_4790_(arg0, arg1)
						local function __FUNC_490B_(arg0, arg1)
							local function __FUNC_4A60_(arg0, arg1)
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
								__FUNC_4A60_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A60_)
						end

						if arg1.interrupted then
							__FUNC_490B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_490B_)
					end

					if arg1.interrupted then
						__FUNC_4790_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4790_)
				end

				if arg1.interrupted then
					__FUNC_463B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_463B_)
			end

			if arg1.interrupted then
				__FUNC_44C0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_44C0_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_4369_(registerVal13, {})
	end

	registerVal17.GainFocus = __FUNC_1A73_
	local function __FUNC_4C15_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.lockBackground:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.lockIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal17.Focus = __FUNC_4C15_
	local function __FUNC_4E85_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_5189_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_5189_(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.lockBackground:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_533D_(arg0, arg1)
			local function __FUNC_54B7_(arg0, arg1)
				local function __FUNC_562F_(arg0, arg1)
					local function __FUNC_57A7_(arg0, arg1)
						local function __FUNC_58FC_(arg0, arg1)
							local function __FUNC_5A77_(arg0, arg1)
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
								__FUNC_5A77_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5A77_)
						end

						if arg1.interrupted then
							__FUNC_58FC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_58FC_)
					end

					if arg1.interrupted then
						__FUNC_57A7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_57A7_)
				end

				if arg1.interrupted then
					__FUNC_562F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_562F_)
			end

			if arg1.interrupted then
				__FUNC_54B7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_54B7_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_533D_(registerVal9, {})
		local function __FUNC_5C29_(arg0, arg1)
			local function __FUNC_5DA3_(arg0, arg1)
				local function __FUNC_5F1B_(arg0, arg1)
					local function __FUNC_6093_(arg0, arg1)
						local function __FUNC_61E8_(arg0, arg1)
							local function __FUNC_6363_(arg0, arg1)
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
								__FUNC_6363_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6363_)
						end

						if arg1.interrupted then
							__FUNC_61E8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_61E8_)
					end

					if arg1.interrupted then
						__FUNC_6093_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6093_)
				end

				if arg1.interrupted then
					__FUNC_5F1B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5F1B_)
			end

			if arg1.interrupted then
				__FUNC_5DA3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5DA3_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_5C29_(registerVal10, {})
		local function __FUNC_6515_(arg0, arg1)
			local function __FUNC_666C_(arg0, arg1)
				local function __FUNC_67E7_(arg0, arg1)
					local function __FUNC_695F_(arg0, arg1)
						local function __FUNC_6AD7_(arg0, arg1)
							local function __FUNC_6C2C_(arg0, arg1)
								local function __FUNC_6DA7_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_6DA7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6DA7_)
							end

							if arg1.interrupted then
								__FUNC_6C2C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6C2C_)
						end

						if arg1.interrupted then
							__FUNC_6AD7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6AD7_)
					end

					if arg1.interrupted then
						__FUNC_695F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_695F_)
				end

				if arg1.interrupted then
					__FUNC_67E7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_67E7_)
			end

			if arg1.interrupted then
				__FUNC_666C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_666C_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_6515_(registerVal11, {})
		local function __FUNC_6F59_(arg0, arg1)
			local function __FUNC_70B0_(arg0, arg1)
				local function __FUNC_722B_(arg0, arg1)
					local function __FUNC_7380_(arg0, arg1)
						local function __FUNC_74FB_(arg0, arg1)
							local function __FUNC_7650_(arg0, arg1)
								local function __FUNC_77CB_(arg0, arg1)
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
									__FUNC_77CB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_77CB_)
							end

							if arg1.interrupted then
								__FUNC_7650_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7650_)
						end

						if arg1.interrupted then
							__FUNC_74FB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_74FB_)
					end

					if arg1.interrupted then
						__FUNC_7380_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7380_)
				end

				if arg1.interrupted then
					__FUNC_722B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_722B_)
			end

			if arg1.interrupted then
				__FUNC_70B0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_70B0_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_6F59_(registerVal12, {})
		local function __FUNC_797D_(arg0, arg1)
			local function __FUNC_7AD4_(arg0, arg1)
				local function __FUNC_7C4F_(arg0, arg1)
					local function __FUNC_7DA4_(arg0, arg1)
						local function __FUNC_7F1F_(arg0, arg1)
							local function __FUNC_8074_(arg0, arg1)
								local function __FUNC_81EF_(arg0, arg1)
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
									__FUNC_81EF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_81EF_)
							end

							if arg1.interrupted then
								__FUNC_8074_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8074_)
						end

						if arg1.interrupted then
							__FUNC_7F1F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7F1F_)
					end

					if arg1.interrupted then
						__FUNC_7DA4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7DA4_)
				end

				if arg1.interrupted then
					__FUNC_7C4F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7C4F_)
			end

			if arg1.interrupted then
				__FUNC_7AD4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7AD4_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_797D_(registerVal13, {})
	end

	registerVal17.LoseFocus = __FUNC_4E85_
	registerVal16.DefaultState = registerVal17
	registerVal17 = {}
	local function __FUNC_83A1_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.lockBackground:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.lockIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal17.DefaultClip = __FUNC_83A1_
	local function __FUNC_87DC_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_8B3C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		__FUNC_8B3C_(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.lockBackground:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.lockIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_8CF1_(arg0, arg1)
			local function __FUNC_8E48_(arg0, arg1)
				local function __FUNC_8FC3_(arg0, arg1)
					local function __FUNC_9118_(arg0, arg1)
						local function __FUNC_9293_(arg0, arg1)
							local function __FUNC_93E8_(arg0, arg1)
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
								__FUNC_93E8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_93E8_)
						end

						if arg1.interrupted then
							__FUNC_9293_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9293_)
					end

					if arg1.interrupted then
						__FUNC_9118_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9118_)
				end

				if arg1.interrupted then
					__FUNC_8FC3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8FC3_)
			end

			if arg1.interrupted then
				__FUNC_8E48_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8E48_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_8CF1_(registerVal9, {})
		local function __FUNC_959D_(arg0, arg1)
			local function __FUNC_96F4_(arg0, arg1)
				local function __FUNC_986F_(arg0, arg1)
					local function __FUNC_99C4_(arg0, arg1)
						local function __FUNC_9B3F_(arg0, arg1)
							local function __FUNC_9C94_(arg0, arg1)
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
								__FUNC_9C94_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9C94_)
						end

						if arg1.interrupted then
							__FUNC_9B3F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9B3F_)
					end

					if arg1.interrupted then
						__FUNC_99C4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_99C4_)
				end

				if arg1.interrupted then
					__FUNC_986F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_986F_)
			end

			if arg1.interrupted then
				__FUNC_96F4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_96F4_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_959D_(registerVal10, {})
		local function __FUNC_9E49_(arg0, arg1)
			local function __FUNC_9FA0_(arg0, arg1)
				local function __FUNC_A11B_(arg0, arg1)
					local function __FUNC_A293_(arg0, arg1)
						local function __FUNC_A40B_(arg0, arg1)
							local function __FUNC_A560_(arg0, arg1)
								local function __FUNC_A6DB_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_A6DB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A6DB_)
							end

							if arg1.interrupted then
								__FUNC_A560_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A560_)
						end

						if arg1.interrupted then
							__FUNC_A40B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A40B_)
					end

					if arg1.interrupted then
						__FUNC_A293_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A293_)
				end

				if arg1.interrupted then
					__FUNC_A11B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A11B_)
			end

			if arg1.interrupted then
				__FUNC_9FA0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9FA0_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_9E49_(registerVal11, {})
		local function __FUNC_A88D_(arg0, arg1)
			local function __FUNC_A9E4_(arg0, arg1)
				local function __FUNC_AB5F_(arg0, arg1)
					local function __FUNC_ACB4_(arg0, arg1)
						local function __FUNC_AE2F_(arg0, arg1)
							local function __FUNC_AF84_(arg0, arg1)
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
								__FUNC_AF84_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AF84_)
						end

						if arg1.interrupted then
							__FUNC_AE2F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AE2F_)
					end

					if arg1.interrupted then
						__FUNC_ACB4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ACB4_)
				end

				if arg1.interrupted then
					__FUNC_AB5F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AB5F_)
			end

			if arg1.interrupted then
				__FUNC_A9E4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A9E4_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_A88D_(registerVal12, {})
		local function __FUNC_B139_(arg0, arg1)
			local function __FUNC_B290_(arg0, arg1)
				local function __FUNC_B40B_(arg0, arg1)
					local function __FUNC_B560_(arg0, arg1)
						local function __FUNC_B6DB_(arg0, arg1)
							local function __FUNC_B830_(arg0, arg1)
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
								__FUNC_B830_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B830_)
						end

						if arg1.interrupted then
							__FUNC_B6DB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B6DB_)
					end

					if arg1.interrupted then
						__FUNC_B560_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B560_)
				end

				if arg1.interrupted then
					__FUNC_B40B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B40B_)
			end

			if arg1.interrupted then
				__FUNC_B290_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B290_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_B139_(registerVal13, {})
	end

	registerVal17.GainFocus = __FUNC_87DC_
	local function __FUNC_B9E5_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.lockBackground:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.lockIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal17.Focus = __FUNC_B9E5_
	local function __FUNC_BC55_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_BFB4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_BFB4_(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.lockBackground:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.lockIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_C169_(arg0, arg1)
			local function __FUNC_C2E3_(arg0, arg1)
				local function __FUNC_C45B_(arg0, arg1)
					local function __FUNC_C5D3_(arg0, arg1)
						local function __FUNC_C728_(arg0, arg1)
							local function __FUNC_C8A3_(arg0, arg1)
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
								__FUNC_C8A3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C8A3_)
						end

						if arg1.interrupted then
							__FUNC_C728_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C728_)
					end

					if arg1.interrupted then
						__FUNC_C5D3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C5D3_)
				end

				if arg1.interrupted then
					__FUNC_C45B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C45B_)
			end

			if arg1.interrupted then
				__FUNC_C2E3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C2E3_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_C169_(registerVal9, {})
		local function __FUNC_CA55_(arg0, arg1)
			local function __FUNC_CBCF_(arg0, arg1)
				local function __FUNC_CD47_(arg0, arg1)
					local function __FUNC_CEBF_(arg0, arg1)
						local function __FUNC_D014_(arg0, arg1)
							local function __FUNC_D18F_(arg0, arg1)
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
								__FUNC_D18F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D18F_)
						end

						if arg1.interrupted then
							__FUNC_D014_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D014_)
					end

					if arg1.interrupted then
						__FUNC_CEBF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CEBF_)
				end

				if arg1.interrupted then
					__FUNC_CD47_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CD47_)
			end

			if arg1.interrupted then
				__FUNC_CBCF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CBCF_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_CA55_(registerVal10, {})
		local function __FUNC_D341_(arg0, arg1)
			local function __FUNC_D498_(arg0, arg1)
				local function __FUNC_D613_(arg0, arg1)
					local function __FUNC_D78B_(arg0, arg1)
						local function __FUNC_D903_(arg0, arg1)
							local function __FUNC_DA58_(arg0, arg1)
								local function __FUNC_DBD3_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_DBD3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DBD3_)
							end

							if arg1.interrupted then
								__FUNC_DA58_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DA58_)
						end

						if arg1.interrupted then
							__FUNC_D903_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D903_)
					end

					if arg1.interrupted then
						__FUNC_D78B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D78B_)
				end

				if arg1.interrupted then
					__FUNC_D613_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D613_)
			end

			if arg1.interrupted then
				__FUNC_D498_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D498_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_D341_(registerVal11, {})
		local function __FUNC_DD85_(arg0, arg1)
			local function __FUNC_DEDC_(arg0, arg1)
				local function __FUNC_E057_(arg0, arg1)
					local function __FUNC_E1AC_(arg0, arg1)
						local function __FUNC_E327_(arg0, arg1)
							local function __FUNC_E47C_(arg0, arg1)
								local function __FUNC_E5F7_(arg0, arg1)
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
									__FUNC_E5F7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E5F7_)
							end

							if arg1.interrupted then
								__FUNC_E47C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E47C_)
						end

						if arg1.interrupted then
							__FUNC_E327_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E327_)
					end

					if arg1.interrupted then
						__FUNC_E1AC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E1AC_)
				end

				if arg1.interrupted then
					__FUNC_E057_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E057_)
			end

			if arg1.interrupted then
				__FUNC_DEDC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DEDC_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_DD85_(registerVal12, {})
		local function __FUNC_E7A9_(arg0, arg1)
			local function __FUNC_E900_(arg0, arg1)
				local function __FUNC_EA7B_(arg0, arg1)
					local function __FUNC_EBD0_(arg0, arg1)
						local function __FUNC_ED4B_(arg0, arg1)
							local function __FUNC_EEA0_(arg0, arg1)
								local function __FUNC_F01B_(arg0, arg1)
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
									__FUNC_F01B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F01B_)
							end

							if arg1.interrupted then
								__FUNC_EEA0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EEA0_)
						end

						if arg1.interrupted then
							__FUNC_ED4B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ED4B_)
					end

					if arg1.interrupted then
						__FUNC_EBD0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EBD0_)
				end

				if arg1.interrupted then
					__FUNC_EA7B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EA7B_)
			end

			if arg1.interrupted then
				__FUNC_E900_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E900_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_E7A9_(registerVal13, {})
	end

	registerVal17.LoseFocus = __FUNC_BC55_
	registerVal16.LockedContent = registerVal17
	registerVal2.clipsPerState = registerVal16
	local registerVal18 = {}
	local registerVal19 = {}
	registerVal19.stateName = "LockedContent"
	local function __FUNC_F1CD_(arg0, arg2, arg3)
		return DoesWeaponVariantContainLockedAttachments(registerVal2, arg2, arg1)
	end

	registerVal19.condition = __FUNC_F1CD_
	registerVal18 = {registerVal19}
	registerVal2:mergeStateConditions(registerVal18)
	local function __FUNC_F243_(arg0)
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.BoxButtonLrgInactive:close()
		arg0.BoxButtonLrgIdle:close()
		arg0.itemImageRender:close()
		arg0.lockIcon:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.FocusBorder:close()
		arg0.Panel:close()
		arg0.horizontalScrollingTextBox20pt0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_F243_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

