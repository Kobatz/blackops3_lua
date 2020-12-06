-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.CAC.GridItemVariantRender")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.WeaponVariantItemHintText")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.HintTextArrow")
require("ui.uieditor.widgets.Heroes.heroCustomizationOption_EquippedIcon")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.Lobby.Common.FE_PanelNoBlur")
require("ui.uieditor.widgets.horizontalScrollingTextBox_20pt")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GridItemVariantButton = registerVal1
function CoD.GridItemVariantButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GridItemVariantButton)
	registerVal2.id = "GridItemVariantButton"
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
	local function __FUNC_175D_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_175D_)
	registerVal2:addElement(registerVal6)
	registerVal2.itemImageRender = registerVal6
	local registerVal7 = CoD.WeaponVariantItemHintText.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -94.000000, 94.000000)
	registerVal7:setTopBottom(false, true, 18.000000, 68.000000)
	registerVal7:setAlpha(0.000000)
	local function __FUNC_17AE_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, nil, false, __FUNC_17AE_)
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "NoHintText"
	local function __FUNC_17FE_(arg0, arg1, arg2)
		local registerVal3 = HasHintText(arg1)
		return (not registerVal3)
	end

	registerVal11.condition = __FUNC_17FE_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	local function __FUNC_1851_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:linkToElementModel(registerVal7, nil, true, __FUNC_1851_)
	registerVal2:addElement(registerVal7)
	registerVal2.itemHintText = registerVal7
	local registerVal8 = CoD.HintTextArrow.new(arg0, arg1)
	registerVal8:setLeftRight(false, false, -5.000000, 5.000000)
	registerVal8:setTopBottom(false, true, 5.000000, 15.000000)
	registerVal8:setAlpha(0.000000)
	local function __FUNC_195D_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, nil, false, __FUNC_195D_)
	registerVal2:addElement(registerVal8)
	registerVal2.hintArrow = registerVal8
	local registerVal9 = CoD.heroCustomizationOption_EquippedIcon.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 88.000000, 104.000000)
	registerVal9:setTopBottom(true, false, 4.000000, 20.000000)
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Equipped"
	local function __FUNC_19AE_(arg0, arg2, arg3)
		return IsCACWeaponVariantEquipped(arg0, registerVal2, arg2, arg1)
	end

	registerVal13.condition = __FUNC_19AE_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal2:addElement(registerVal9)
	registerVal2.IconEquipped = registerVal9
	registerVal10 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal10:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal10:setTopBottom(true, false, -4.000000, 0.000000)
	registerVal10:setZoom(1.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.FocusBarT = registerVal10
	registerVal11 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal11:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal11:setTopBottom(false, true, 0.000000, 4.000000)
	registerVal11:setZoom(1.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.FocusBarB = registerVal11
	registerVal12 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal12:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal12:setTopBottom(true, true, -0.500000, 0.000000)
	registerVal12:setRGB(1.000000, 0.300000, 0.000000)
	registerVal12:setAlpha(0.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.FocusBorder = registerVal12
	registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, true, -5.000000, 4.000000)
	registerVal13:setTopBottom(true, false, -9.750000, 3.750000)
	registerVal13:setRGB(1.000000, 0.090000, 0.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.glitch = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, true, -5.000000, 4.000000)
	registerVal14:setTopBottom(false, true, -5.000000, 10.000000)
	registerVal14:setRGB(1.000000, 0.150000, 0.000000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.glitch2 = registerVal14
	local registerVal15 = CoD.FE_PanelNoBlur.new(arg0, arg1)
	registerVal15:setLeftRight(true, true, 3.000000, -4.000000)
	registerVal15:setTopBottom(true, true, 86.000000, -2.000000)
	registerVal15:setRGB(0.000000, 0.000000, 0.000000)
	registerVal15:setAlpha(0.400000)
	registerVal2:addElement(registerVal15)
	registerVal2.Panel0 = registerVal15
	local registerVal16 = CoD.horizontalScrollingTextBox_20pt.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, 4.000000, 104.000000)
	registerVal16:setTopBottom(true, false, 86.000000, 106.000000)
	registerVal16.textBox:setTTF("fonts/default.ttf")
	registerVal16.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local function __FUNC_1A18_(arg0)
		registerVal16:setModel(arg0, arg1)
	end

	registerVal16:linkToElementModel(registerVal2, nil, false, __FUNC_1A18_)
	local function __FUNC_1A6A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16.textBox:setText(registerVal1)
		end
	end

	registerVal16:linkToElementModel(registerVal2, "variantName", true, __FUNC_1A6A_)
	registerVal2:addElement(registerVal16)
	registerVal2.horizontalScrollingTextBox20pt = registerVal16
	local registerVal17 = {}
	local registerVal18 = {}
	local function __FUNC_1B19_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.itemImageRender:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal18.DefaultClip = __FUNC_1B19_
	local function __FUNC_1FB0_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_22A1_(arg0, arg1)
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
		__FUNC_22A1_(registerVal4, {})
		local function __FUNC_2455_(arg0, arg1)
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

		registerVal6:completeAnimation()
		registerVal2.itemImageRender:setAlpha(0.800000)
		__FUNC_2455_(registerVal6, {})
		local function __FUNC_2609_(arg0, arg1)
			local function __FUNC_2760_(arg0, arg1)
				local function __FUNC_28DB_(arg0, arg1)
					local function __FUNC_2A30_(arg0, arg1)
						local function __FUNC_2BAB_(arg0, arg1)
							local function __FUNC_2D00_(arg0, arg1)
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
								__FUNC_2D00_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D00_)
						end

						if arg1.interrupted then
							__FUNC_2BAB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BAB_)
					end

					if arg1.interrupted then
						__FUNC_2A30_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A30_)
				end

				if arg1.interrupted then
					__FUNC_28DB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28DB_)
			end

			if arg1.interrupted then
				__FUNC_2760_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2760_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_2609_(registerVal10, {})
		local function __FUNC_2EB5_(arg0, arg1)
			local function __FUNC_300C_(arg0, arg1)
				local function __FUNC_3187_(arg0, arg1)
					local function __FUNC_32DC_(arg0, arg1)
						local function __FUNC_3457_(arg0, arg1)
							local function __FUNC_35AC_(arg0, arg1)
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
								__FUNC_35AC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35AC_)
						end

						if arg1.interrupted then
							__FUNC_3457_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3457_)
					end

					if arg1.interrupted then
						__FUNC_32DC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32DC_)
				end

				if arg1.interrupted then
					__FUNC_3187_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3187_)
			end

			if arg1.interrupted then
				__FUNC_300C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_300C_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_2EB5_(registerVal11, {})
		local function __FUNC_3761_(arg0, arg1)
			local function __FUNC_38B8_(arg0, arg1)
				local function __FUNC_3A33_(arg0, arg1)
					local function __FUNC_3BAB_(arg0, arg1)
						local function __FUNC_3D23_(arg0, arg1)
							local function __FUNC_3E78_(arg0, arg1)
								local function __FUNC_3FF3_(arg0, arg1)
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
									__FUNC_3FF3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3FF3_)
							end

							if arg1.interrupted then
								__FUNC_3E78_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E78_)
						end

						if arg1.interrupted then
							__FUNC_3D23_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D23_)
					end

					if arg1.interrupted then
						__FUNC_3BAB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3BAB_)
				end

				if arg1.interrupted then
					__FUNC_3A33_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A33_)
			end

			if arg1.interrupted then
				__FUNC_38B8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38B8_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_3761_(registerVal12, {})
		local function __FUNC_41A5_(arg0, arg1)
			local function __FUNC_42FC_(arg0, arg1)
				local function __FUNC_4477_(arg0, arg1)
					local function __FUNC_45CC_(arg0, arg1)
						local function __FUNC_4747_(arg0, arg1)
							local function __FUNC_489C_(arg0, arg1)
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
								__FUNC_489C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_489C_)
						end

						if arg1.interrupted then
							__FUNC_4747_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4747_)
					end

					if arg1.interrupted then
						__FUNC_45CC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_45CC_)
				end

				if arg1.interrupted then
					__FUNC_4477_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4477_)
			end

			if arg1.interrupted then
				__FUNC_42FC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42FC_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_41A5_(registerVal13, {})
		local function __FUNC_4A51_(arg0, arg1)
			local function __FUNC_4BA8_(arg0, arg1)
				local function __FUNC_4D23_(arg0, arg1)
					local function __FUNC_4E78_(arg0, arg1)
						local function __FUNC_4FF3_(arg0, arg1)
							local function __FUNC_5148_(arg0, arg1)
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
								__FUNC_5148_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5148_)
						end

						if arg1.interrupted then
							__FUNC_4FF3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4FF3_)
					end

					if arg1.interrupted then
						__FUNC_4E78_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4E78_)
				end

				if arg1.interrupted then
					__FUNC_4D23_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D23_)
			end

			if arg1.interrupted then
				__FUNC_4BA8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4BA8_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_4A51_(registerVal14, {})
	end

	registerVal18.GainFocus = __FUNC_1FB0_
	local function __FUNC_52FD_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.itemImageRender:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal18.Focus = __FUNC_52FD_
	local function __FUNC_5513_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_57FC_(arg0, arg1)
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
		__FUNC_57FC_(registerVal4, {})
		local function __FUNC_59B1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.itemImageRender:setAlpha(1.000000)
		__FUNC_59B1_(registerVal6, {})
		local function __FUNC_5B65_(arg0, arg1)
			local function __FUNC_5CDF_(arg0, arg1)
				local function __FUNC_5E57_(arg0, arg1)
					local function __FUNC_5FCF_(arg0, arg1)
						local function __FUNC_6124_(arg0, arg1)
							local function __FUNC_629F_(arg0, arg1)
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
								__FUNC_629F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_629F_)
						end

						if arg1.interrupted then
							__FUNC_6124_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6124_)
					end

					if arg1.interrupted then
						__FUNC_5FCF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5FCF_)
				end

				if arg1.interrupted then
					__FUNC_5E57_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E57_)
			end

			if arg1.interrupted then
				__FUNC_5CDF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5CDF_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_5B65_(registerVal10, {})
		local function __FUNC_6451_(arg0, arg1)
			local function __FUNC_65CB_(arg0, arg1)
				local function __FUNC_6743_(arg0, arg1)
					local function __FUNC_68BB_(arg0, arg1)
						local function __FUNC_6A10_(arg0, arg1)
							local function __FUNC_6B8B_(arg0, arg1)
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
								__FUNC_6B8B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6B8B_)
						end

						if arg1.interrupted then
							__FUNC_6A10_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6A10_)
					end

					if arg1.interrupted then
						__FUNC_68BB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_68BB_)
				end

				if arg1.interrupted then
					__FUNC_6743_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6743_)
			end

			if arg1.interrupted then
				__FUNC_65CB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_65CB_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_6451_(registerVal11, {})
		local function __FUNC_6D3D_(arg0, arg1)
			local function __FUNC_6E94_(arg0, arg1)
				local function __FUNC_700F_(arg0, arg1)
					local function __FUNC_7187_(arg0, arg1)
						local function __FUNC_72FF_(arg0, arg1)
							local function __FUNC_7454_(arg0, arg1)
								local function __FUNC_75CF_(arg0, arg1)
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
									__FUNC_75CF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_75CF_)
							end

							if arg1.interrupted then
								__FUNC_7454_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7454_)
						end

						if arg1.interrupted then
							__FUNC_72FF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_72FF_)
					end

					if arg1.interrupted then
						__FUNC_7187_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7187_)
				end

				if arg1.interrupted then
					__FUNC_700F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_700F_)
			end

			if arg1.interrupted then
				__FUNC_6E94_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6E94_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_6D3D_(registerVal12, {})
		local function __FUNC_7781_(arg0, arg1)
			local function __FUNC_78D8_(arg0, arg1)
				local function __FUNC_7A53_(arg0, arg1)
					local function __FUNC_7BA8_(arg0, arg1)
						local function __FUNC_7D23_(arg0, arg1)
							local function __FUNC_7E78_(arg0, arg1)
								local function __FUNC_7FF3_(arg0, arg1)
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
									__FUNC_7FF3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7FF3_)
							end

							if arg1.interrupted then
								__FUNC_7E78_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7E78_)
						end

						if arg1.interrupted then
							__FUNC_7D23_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7D23_)
					end

					if arg1.interrupted then
						__FUNC_7BA8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7BA8_)
				end

				if arg1.interrupted then
					__FUNC_7A53_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7A53_)
			end

			if arg1.interrupted then
				__FUNC_78D8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_78D8_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_7781_(registerVal13, {})
		local function __FUNC_81A5_(arg0, arg1)
			local function __FUNC_82FC_(arg0, arg1)
				local function __FUNC_8477_(arg0, arg1)
					local function __FUNC_85CC_(arg0, arg1)
						local function __FUNC_8747_(arg0, arg1)
							local function __FUNC_889C_(arg0, arg1)
								local function __FUNC_8A17_(arg0, arg1)
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
									__FUNC_8A17_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8A17_)
							end

							if arg1.interrupted then
								__FUNC_889C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_889C_)
						end

						if arg1.interrupted then
							__FUNC_8747_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8747_)
					end

					if arg1.interrupted then
						__FUNC_85CC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_85CC_)
				end

				if arg1.interrupted then
					__FUNC_8477_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8477_)
			end

			if arg1.interrupted then
				__FUNC_82FC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_82FC_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_81A5_(registerVal14, {})
	end

	registerVal18.LoseFocus = __FUNC_5513_
	registerVal17.DefaultState = registerVal18
	registerVal18 = {}
	local function __FUNC_8BC9_()
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
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal18.DefaultClip = __FUNC_8BC9_
	local function __FUNC_8FFE_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_9403_(arg0, arg1)
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
		__FUNC_9403_(registerVal4, {})
		registerVal7:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
		registerVal7:setAlpha(1.000000)
		registerVal7:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		local function __FUNC_95B5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		__FUNC_95B5_(registerVal8, {})
		local function __FUNC_9769_(arg0, arg1)
			local function __FUNC_98C0_(arg0, arg1)
				local function __FUNC_9A3B_(arg0, arg1)
					local function __FUNC_9B90_(arg0, arg1)
						local function __FUNC_9D0B_(arg0, arg1)
							local function __FUNC_9E60_(arg0, arg1)
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
								__FUNC_9E60_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9E60_)
						end

						if arg1.interrupted then
							__FUNC_9D0B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9D0B_)
					end

					if arg1.interrupted then
						__FUNC_9B90_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9B90_)
				end

				if arg1.interrupted then
					__FUNC_9A3B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9A3B_)
			end

			if arg1.interrupted then
				__FUNC_98C0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_98C0_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_9769_(registerVal10, {})
		local function __FUNC_A015_(arg0, arg1)
			local function __FUNC_A16C_(arg0, arg1)
				local function __FUNC_A2E7_(arg0, arg1)
					local function __FUNC_A43C_(arg0, arg1)
						local function __FUNC_A5B7_(arg0, arg1)
							local function __FUNC_A70C_(arg0, arg1)
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
								__FUNC_A70C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A70C_)
						end

						if arg1.interrupted then
							__FUNC_A5B7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A5B7_)
					end

					if arg1.interrupted then
						__FUNC_A43C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A43C_)
				end

				if arg1.interrupted then
					__FUNC_A2E7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A2E7_)
			end

			if arg1.interrupted then
				__FUNC_A16C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A16C_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_A015_(registerVal11, {})
		local function __FUNC_A8C1_(arg0, arg1)
			local function __FUNC_AA18_(arg0, arg1)
				local function __FUNC_AB93_(arg0, arg1)
					local function __FUNC_AD0B_(arg0, arg1)
						local function __FUNC_AE83_(arg0, arg1)
							local function __FUNC_AFD8_(arg0, arg1)
								local function __FUNC_B153_(arg0, arg1)
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
									__FUNC_B153_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B153_)
							end

							if arg1.interrupted then
								__FUNC_AFD8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AFD8_)
						end

						if arg1.interrupted then
							__FUNC_AE83_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AE83_)
					end

					if arg1.interrupted then
						__FUNC_AD0B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AD0B_)
				end

				if arg1.interrupted then
					__FUNC_AB93_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AB93_)
			end

			if arg1.interrupted then
				__FUNC_AA18_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AA18_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_A8C1_(registerVal12, {})
		local function __FUNC_B305_(arg0, arg1)
			local function __FUNC_B45C_(arg0, arg1)
				local function __FUNC_B5D7_(arg0, arg1)
					local function __FUNC_B72C_(arg0, arg1)
						local function __FUNC_B8A7_(arg0, arg1)
							local function __FUNC_B9FC_(arg0, arg1)
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
								__FUNC_B9FC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B9FC_)
						end

						if arg1.interrupted then
							__FUNC_B8A7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B8A7_)
					end

					if arg1.interrupted then
						__FUNC_B72C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B72C_)
				end

				if arg1.interrupted then
					__FUNC_B5D7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B5D7_)
			end

			if arg1.interrupted then
				__FUNC_B45C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B45C_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_B305_(registerVal13, {})
		local function __FUNC_BBB1_(arg0, arg1)
			local function __FUNC_BD08_(arg0, arg1)
				local function __FUNC_BE83_(arg0, arg1)
					local function __FUNC_BFD8_(arg0, arg1)
						local function __FUNC_C153_(arg0, arg1)
							local function __FUNC_C2A8_(arg0, arg1)
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
								__FUNC_C2A8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C2A8_)
						end

						if arg1.interrupted then
							__FUNC_C153_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C153_)
					end

					if arg1.interrupted then
						__FUNC_BFD8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BFD8_)
				end

				if arg1.interrupted then
					__FUNC_BE83_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BE83_)
			end

			if arg1.interrupted then
				__FUNC_BD08_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BD08_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_BBB1_(registerVal14, {})
	end

	registerVal18.GainFocus = __FUNC_8FFE_
	local function __FUNC_C45D_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_C6C4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 1299.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.itemHintText:setAlpha(1.000000)
		__FUNC_C6C4_(registerVal7, {})
		local function __FUNC_C879_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 1299.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.900000)
		__FUNC_C879_(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal18.Focus = __FUNC_C45D_
	local function __FUNC_CA2D_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_CCBF_(arg0, arg1)
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
		__FUNC_CCBF_(registerVal4, {})
		local function __FUNC_CE71_(arg0, arg1)
			local function __FUNC_CFEB_(arg0, arg1)
				local function __FUNC_D163_(arg0, arg1)
					local function __FUNC_D2DB_(arg0, arg1)
						local function __FUNC_D430_(arg0, arg1)
							local function __FUNC_D5AB_(arg0, arg1)
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
								__FUNC_D5AB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D5AB_)
						end

						if arg1.interrupted then
							__FUNC_D430_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D430_)
					end

					if arg1.interrupted then
						__FUNC_D2DB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D2DB_)
				end

				if arg1.interrupted then
					__FUNC_D163_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D163_)
			end

			if arg1.interrupted then
				__FUNC_CFEB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CFEB_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_CE71_(registerVal10, {})
		local function __FUNC_D75D_(arg0, arg1)
			local function __FUNC_D8D7_(arg0, arg1)
				local function __FUNC_DA4F_(arg0, arg1)
					local function __FUNC_DBC7_(arg0, arg1)
						local function __FUNC_DD1C_(arg0, arg1)
							local function __FUNC_DE97_(arg0, arg1)
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
								__FUNC_DE97_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DE97_)
						end

						if arg1.interrupted then
							__FUNC_DD1C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DD1C_)
					end

					if arg1.interrupted then
						__FUNC_DBC7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DBC7_)
				end

				if arg1.interrupted then
					__FUNC_DA4F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DA4F_)
			end

			if arg1.interrupted then
				__FUNC_D8D7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D8D7_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_D75D_(registerVal11, {})
		local function __FUNC_E049_(arg0, arg1)
			local function __FUNC_E1A0_(arg0, arg1)
				local function __FUNC_E31B_(arg0, arg1)
					local function __FUNC_E493_(arg0, arg1)
						local function __FUNC_E60B_(arg0, arg1)
							local function __FUNC_E760_(arg0, arg1)
								local function __FUNC_E8DB_(arg0, arg1)
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
									__FUNC_E8DB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E8DB_)
							end

							if arg1.interrupted then
								__FUNC_E760_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E760_)
						end

						if arg1.interrupted then
							__FUNC_E60B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E60B_)
					end

					if arg1.interrupted then
						__FUNC_E493_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E493_)
				end

				if arg1.interrupted then
					__FUNC_E31B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E31B_)
			end

			if arg1.interrupted then
				__FUNC_E1A0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E1A0_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_E049_(registerVal12, {})
		local function __FUNC_EA8D_(arg0, arg1)
			local function __FUNC_EBE4_(arg0, arg1)
				local function __FUNC_ED5F_(arg0, arg1)
					local function __FUNC_EEB4_(arg0, arg1)
						local function __FUNC_F02F_(arg0, arg1)
							local function __FUNC_F184_(arg0, arg1)
								local function __FUNC_F2FF_(arg0, arg1)
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
									__FUNC_F2FF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F2FF_)
							end

							if arg1.interrupted then
								__FUNC_F184_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F184_)
						end

						if arg1.interrupted then
							__FUNC_F02F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F02F_)
					end

					if arg1.interrupted then
						__FUNC_EEB4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EEB4_)
				end

				if arg1.interrupted then
					__FUNC_ED5F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ED5F_)
			end

			if arg1.interrupted then
				__FUNC_EBE4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EBE4_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_EA8D_(registerVal13, {})
		local function __FUNC_F4B1_(arg0, arg1)
			local function __FUNC_F608_(arg0, arg1)
				local function __FUNC_F783_(arg0, arg1)
					local function __FUNC_F8D8_(arg0, arg1)
						local function __FUNC_FA53_(arg0, arg1)
							local function __FUNC_FBA8_(arg0, arg1)
								local function __FUNC_FD23_(arg0, arg1)
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
									__FUNC_FD23_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FD23_)
							end

							if arg1.interrupted then
								__FUNC_FBA8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FBA8_)
						end

						if arg1.interrupted then
							__FUNC_FA53_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FA53_)
					end

					if arg1.interrupted then
						__FUNC_F8D8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F8D8_)
				end

				if arg1.interrupted then
					__FUNC_F783_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F783_)
			end

			if arg1.interrupted then
				__FUNC_F608_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F608_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_F4B1_(registerVal14, {})
	end

	registerVal18.LoseFocus = __FUNC_CA2D_
	registerVal17.LockedContent = registerVal18
	registerVal2.clipsPerState = registerVal17
	local registerVal19 = {}
	local registerVal20 = {}
	registerVal20.stateName = "LockedContent"
	local function __FUNC_FED5_(arg0, arg2, arg3)
		return DoesWeaponVariantContainLockedItems(registerVal2, arg2, arg1)
	end

	registerVal20.condition = __FUNC_FED5_
	registerVal19 = {registerVal20}
	registerVal2:mergeStateConditions(registerVal19)
	local function __FUNC_FF45_(arg0)
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.BoxButtonLrgInactive:close()
		arg0.BoxButtonLrgIdle:close()
		arg0.itemImageRender:close()
		arg0.itemHintText:close()
		arg0.hintArrow:close()
		arg0.IconEquipped:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.FocusBorder:close()
		arg0.Panel0:close()
		arg0.horizontalScrollingTextBox20pt:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_FF45_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

