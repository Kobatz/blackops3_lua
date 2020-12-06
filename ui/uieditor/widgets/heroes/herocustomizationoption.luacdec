-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CAC.Customization.BlackMarketClassifiedIcon")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.CAC.cac_lock")
require("ui.uieditor.widgets.CAC.cac_ListButtonLabel")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.CAC.cac_LabelNew")
require("ui.uieditor.widgets.Heroes.heroCustomizationOption_EquippedIcon")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.BlackMarket.DuplicateCounter")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.heroCustomizationOption = registerVal1
function CoD.heroCustomizationOption.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.heroCustomizationOption)
	registerVal2.id = "heroCustomizationOption"
	registerVal2.soundSet = "CAC_EditLoadout"
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
	local registerVal5 = CoD.BlackMarketClassifiedIcon.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 1.000000, -1.000000)
	registerVal5:setTopBottom(true, true, -1.000000, 1.000000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.classifiedIcon = registerVal5
	local registerVal6 = CoD.cac_ButtonBoxLrgIdle.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal6:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal6:setAlpha(0.250000)
	registerVal2:addElement(registerVal6)
	registerVal2.BoxButtonLrgIdle = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 30.000000, 78.000000)
	registerVal7:setTopBottom(true, false, 30.000000, 78.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_icon_contextual_purchase"))
	registerVal2:addElement(registerVal7)
	registerVal2.Purchaseable = registerVal7
	local registerVal8 = CoD.cac_lock.new(arg0, arg1)
	registerVal8:setLeftRight(false, false, -12.000000, 12.000000)
	registerVal8:setTopBottom(false, false, -16.000000, 16.000000)
	registerVal8:setAlpha(0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.lockedIcon = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(true, false, 0.000000, 85.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setupUIStreamedImage(0.000000)
	local function __FUNC_2003_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setRGB(registerVal1)
		end
	end

	registerVal9:linkToElementModel(registerVal2, "color", true, __FUNC_2003_)
	local function __FUNC_2093_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "image", true, __FUNC_2093_)
	registerVal2:addElement(registerVal9)
	registerVal2.colorImage = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal10:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.itemImage = registerVal10
	local registerVal11 = CoD.cac_ListButtonLabel.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 0.000000, 107.000000)
	registerVal11:setTopBottom(false, false, 31.000000, 51.000000)
	registerVal11.Panel:setAlpha(0.600000)
	local function __FUNC_2144_(arg0)
		registerVal11:setModel(arg0, arg1)
	end

	registerVal11:linkToElementModel(registerVal2, nil, false, __FUNC_2144_)
	local function __FUNC_2196_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "name", true, __FUNC_2196_)
	registerVal2:addElement(registerVal11)
	registerVal2.LabelButton = registerVal11
	local registerVal12 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal12:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal12:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.FETitleNumBrdr1 = registerVal12
	local registerVal13 = CoD.cac_LabelNew.new(arg0, arg1)
	registerVal13:setLeftRight(false, false, -54.000000, 54.000000)
	registerVal13:setTopBottom(false, false, -12.000000, 12.000000)
	registerVal13:setAlpha(0.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.IconNew = registerVal13
	local registerVal14 = CoD.heroCustomizationOption_EquippedIcon.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 88.000000, 104.000000)
	registerVal14:setTopBottom(true, false, 4.000000, 20.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.IconEquipped = registerVal14
	local registerVal15 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal15:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal15:setTopBottom(true, false, -4.000000, 0.000000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setZoom(1.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.FocusBarT = registerVal15
	local registerVal16 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal16:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal16:setTopBottom(false, true, 0.000000, 4.000000)
	registerVal16:setAlpha(0.000000)
	registerVal16:setZoom(1.000000)
	registerVal2:addElement(registerVal16)
	registerVal2.FocusBarB = registerVal16
	local registerVal17 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal17:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal17:setTopBottom(true, true, -0.500000, 0.000000)
	registerVal17:setRGB(1.000000, 0.300000, 0.000000)
	registerVal17:setAlpha(0.000000)
	registerVal2:addElement(registerVal17)
	registerVal2.FocusBorder = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(true, true, -12.000000, 7.000000)
	registerVal18:setTopBottom(true, false, -8.750000, 4.750000)
	registerVal18:setRGB(1.000000, 0.090000, 0.000000)
	registerVal18:setAlpha(0.000000)
	registerVal18:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal18:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal18)
	registerVal2.glitch = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(true, true, -8.500000, 8.500000)
	registerVal19:setTopBottom(false, true, -6.000000, 9.000000)
	registerVal19:setRGB(1.000000, 0.150000, 0.000000)
	registerVal19:setAlpha(0.000000)
	registerVal19:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal19:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal19)
	registerVal2.glitch2 = registerVal19
	local registerVal20 = LUI.UIText.new()
	registerVal20:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal20:setTopBottom(false, false, -10.000000, 10.000000)
	registerVal20:setRGB(1.000000, 0.000000, 0.000000)
	registerVal20:setAlpha(0.000000)
	registerVal20:setText(Engine.Localize("MENU_CLASSIFIED_CAPS"))
	registerVal20:setTTF("fonts/UnitedSansSmCdBd_0.ttf")
	registerVal20:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal20:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	registerVal2:addElement(registerVal20)
	registerVal2.classifiedText = registerVal20
	local registerVal21 = CoD.DuplicateCounter.new(arg0, arg1)
	registerVal21:setLeftRight(true, false, 2.000000, 22.000000)
	registerVal21:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal2:addElement(registerVal21)
	registerVal2.DuplicateCounter = registerVal21
	local function __FUNC_226C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setupCharacterItemRender(SplitString(":", registerVal1))
		end
	end

	registerVal2.itemImage:linkToElementModel(registerVal2, "itemExtraCamInfo", true, __FUNC_226C_)
	local registerVal22 = {}
	local registerVal23 = {}
	local function __FUNC_233D_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal2.colorImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal11.Panel:completeAnimation()
		registerVal2.LabelButton.Panel:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal20:completeAnimation()
		registerVal2.classifiedText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal23.DefaultClip = __FUNC_233D_
	local function __FUNC_26A1_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_2933_(arg0, arg1)
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

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		__FUNC_2933_(registerVal4, {})
		local function __FUNC_2AE5_(arg0, arg1)
			local function __FUNC_2C3C_(arg0, arg1)
				local function __FUNC_2DB7_(arg0, arg1)
					local function __FUNC_2F0C_(arg0, arg1)
						local function __FUNC_3087_(arg0, arg1)
							local function __FUNC_31DC_(arg0, arg1)
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
								__FUNC_31DC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31DC_)
						end

						if arg1.interrupted then
							__FUNC_3087_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3087_)
					end

					if arg1.interrupted then
						__FUNC_2F0C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F0C_)
				end

				if arg1.interrupted then
					__FUNC_2DB7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DB7_)
			end

			if arg1.interrupted then
				__FUNC_2C3C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C3C_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_2AE5_(registerVal15, {})
		local function __FUNC_3391_(arg0, arg1)
			local function __FUNC_34E8_(arg0, arg1)
				local function __FUNC_3663_(arg0, arg1)
					local function __FUNC_37B8_(arg0, arg1)
						local function __FUNC_3933_(arg0, arg1)
							local function __FUNC_3A88_(arg0, arg1)
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
								__FUNC_3A88_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A88_)
						end

						if arg1.interrupted then
							__FUNC_3933_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3933_)
					end

					if arg1.interrupted then
						__FUNC_37B8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37B8_)
				end

				if arg1.interrupted then
					__FUNC_3663_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3663_)
			end

			if arg1.interrupted then
				__FUNC_34E8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34E8_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_3391_(registerVal16, {})
		local function __FUNC_3C3D_(arg0, arg1)
			local function __FUNC_3D94_(arg0, arg1)
				local function __FUNC_3F0F_(arg0, arg1)
					local function __FUNC_4087_(arg0, arg1)
						local function __FUNC_41FF_(arg0, arg1)
							local function __FUNC_4354_(arg0, arg1)
								local function __FUNC_44CF_(arg0, arg1)
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
									__FUNC_44CF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_44CF_)
							end

							if arg1.interrupted then
								__FUNC_4354_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4354_)
						end

						if arg1.interrupted then
							__FUNC_41FF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_41FF_)
					end

					if arg1.interrupted then
						__FUNC_4087_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4087_)
				end

				if arg1.interrupted then
					__FUNC_3F0F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F0F_)
			end

			if arg1.interrupted then
				__FUNC_3D94_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D94_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_3C3D_(registerVal17, {})
		local function __FUNC_4681_(arg0, arg1)
			local function __FUNC_47D8_(arg0, arg1)
				local function __FUNC_4953_(arg0, arg1)
					local function __FUNC_4AA8_(arg0, arg1)
						local function __FUNC_4C23_(arg0, arg1)
							local function __FUNC_4D78_(arg0, arg1)
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
								__FUNC_4D78_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D78_)
						end

						if arg1.interrupted then
							__FUNC_4C23_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C23_)
					end

					if arg1.interrupted then
						__FUNC_4AA8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4AA8_)
				end

				if arg1.interrupted then
					__FUNC_4953_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4953_)
			end

			if arg1.interrupted then
				__FUNC_47D8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_47D8_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_4681_(registerVal18, {})
		local function __FUNC_4F2D_(arg0, arg1)
			local function __FUNC_5084_(arg0, arg1)
				local function __FUNC_51FF_(arg0, arg1)
					local function __FUNC_5354_(arg0, arg1)
						local function __FUNC_54CF_(arg0, arg1)
							local function __FUNC_5624_(arg0, arg1)
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
								__FUNC_5624_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5624_)
						end

						if arg1.interrupted then
							__FUNC_54CF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_54CF_)
					end

					if arg1.interrupted then
						__FUNC_5354_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5354_)
				end

				if arg1.interrupted then
					__FUNC_51FF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_51FF_)
			end

			if arg1.interrupted then
				__FUNC_5084_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5084_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_4F2D_(registerVal19, {})
	end

	registerVal23.GainFocus = __FUNC_26A1_
	local function __FUNC_57D9_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal23.Focus = __FUNC_57D9_
	local function __FUNC_5992_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_5C23_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
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
		__FUNC_5C23_(registerVal4, {})
		local function __FUNC_5DD5_(arg0, arg1)
			local function __FUNC_5F4F_(arg0, arg1)
				local function __FUNC_60C7_(arg0, arg1)
					local function __FUNC_623F_(arg0, arg1)
						local function __FUNC_6394_(arg0, arg1)
							local function __FUNC_650F_(arg0, arg1)
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
								__FUNC_650F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_650F_)
						end

						if arg1.interrupted then
							__FUNC_6394_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6394_)
					end

					if arg1.interrupted then
						__FUNC_623F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_623F_)
				end

				if arg1.interrupted then
					__FUNC_60C7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_60C7_)
			end

			if arg1.interrupted then
				__FUNC_5F4F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5F4F_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_5DD5_(registerVal15, {})
		local function __FUNC_66C1_(arg0, arg1)
			local function __FUNC_683B_(arg0, arg1)
				local function __FUNC_69B3_(arg0, arg1)
					local function __FUNC_6B2B_(arg0, arg1)
						local function __FUNC_6C80_(arg0, arg1)
							local function __FUNC_6DFB_(arg0, arg1)
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
								__FUNC_6DFB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6DFB_)
						end

						if arg1.interrupted then
							__FUNC_6C80_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6C80_)
					end

					if arg1.interrupted then
						__FUNC_6B2B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6B2B_)
				end

				if arg1.interrupted then
					__FUNC_69B3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_69B3_)
			end

			if arg1.interrupted then
				__FUNC_683B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_683B_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_66C1_(registerVal16, {})
		local function __FUNC_6FAD_(arg0, arg1)
			local function __FUNC_7104_(arg0, arg1)
				local function __FUNC_727F_(arg0, arg1)
					local function __FUNC_73F7_(arg0, arg1)
						local function __FUNC_756F_(arg0, arg1)
							local function __FUNC_76C4_(arg0, arg1)
								local function __FUNC_783F_(arg0, arg1)
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
									__FUNC_783F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_783F_)
							end

							if arg1.interrupted then
								__FUNC_76C4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_76C4_)
						end

						if arg1.interrupted then
							__FUNC_756F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_756F_)
					end

					if arg1.interrupted then
						__FUNC_73F7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_73F7_)
				end

				if arg1.interrupted then
					__FUNC_727F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_727F_)
			end

			if arg1.interrupted then
				__FUNC_7104_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7104_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_6FAD_(registerVal17, {})
		local function __FUNC_79F1_(arg0, arg1)
			local function __FUNC_7B48_(arg0, arg1)
				local function __FUNC_7CC3_(arg0, arg1)
					local function __FUNC_7E18_(arg0, arg1)
						local function __FUNC_7F93_(arg0, arg1)
							local function __FUNC_80E8_(arg0, arg1)
								local function __FUNC_8263_(arg0, arg1)
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
									__FUNC_8263_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8263_)
							end

							if arg1.interrupted then
								__FUNC_80E8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_80E8_)
						end

						if arg1.interrupted then
							__FUNC_7F93_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7F93_)
					end

					if arg1.interrupted then
						__FUNC_7E18_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7E18_)
				end

				if arg1.interrupted then
					__FUNC_7CC3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7CC3_)
			end

			if arg1.interrupted then
				__FUNC_7B48_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7B48_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_79F1_(registerVal18, {})
		local function __FUNC_8415_(arg0, arg1)
			local function __FUNC_856C_(arg0, arg1)
				local function __FUNC_86E7_(arg0, arg1)
					local function __FUNC_883C_(arg0, arg1)
						local function __FUNC_89B7_(arg0, arg1)
							local function __FUNC_8B0C_(arg0, arg1)
								local function __FUNC_8C87_(arg0, arg1)
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
									__FUNC_8C87_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8C87_)
							end

							if arg1.interrupted then
								__FUNC_8B0C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8B0C_)
						end

						if arg1.interrupted then
							__FUNC_89B7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_89B7_)
					end

					if arg1.interrupted then
						__FUNC_883C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_883C_)
				end

				if arg1.interrupted then
					__FUNC_86E7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_86E7_)
			end

			if arg1.interrupted then
				__FUNC_856C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_856C_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_8415_(registerVal19, {})
	end

	registerVal23.LoseFocus = __FUNC_5992_
	registerVal22.DefaultState = registerVal23
	registerVal23 = {}
	local function __FUNC_8E39_()
		registerVal2:setupElementClipCounter(16.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.classifiedIcon:setLeftRight(true, true, 1.000000, -1.000000)
		registerVal2.classifiedIcon:setTopBottom(true, true, -1.000000, 1.000000)
		registerVal2.classifiedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Purchaseable:setLeftRight(true, false, 30.000000, 78.000000)
		registerVal2.Purchaseable:setTopBottom(true, false, 30.000000, 78.000000)
		registerVal2.Purchaseable:setAlpha(1.000000)
		registerVal2.Purchaseable:setImage(RegisterImage("uie_t7_icon_contextual_purchase"))
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.colorImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.classifiedText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal23.DefaultClip = __FUNC_8E39_
	local function __FUNC_95D5_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal7:completeAnimation()
		registerVal2.Purchaseable:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal10:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		local function __FUNC_98D0_(arg0, arg1)
			local function __FUNC_9A28_(arg0, arg1)
				local function __FUNC_9BA3_(arg0, arg1)
					local function __FUNC_9CF8_(arg0, arg1)
						local function __FUNC_9E73_(arg0, arg1)
							local function __FUNC_9FC8_(arg0, arg1)
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
								__FUNC_9FC8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9FC8_)
						end

						if arg1.interrupted then
							__FUNC_9E73_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9E73_)
					end

					if arg1.interrupted then
						__FUNC_9CF8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9CF8_)
				end

				if arg1.interrupted then
					__FUNC_9BA3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9BA3_)
			end

			if arg1.interrupted then
				__FUNC_9A28_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9A28_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_98D0_(registerVal15, {})
		local function __FUNC_A17D_(arg0, arg1)
			local function __FUNC_A2D4_(arg0, arg1)
				local function __FUNC_A44F_(arg0, arg1)
					local function __FUNC_A5A4_(arg0, arg1)
						local function __FUNC_A71F_(arg0, arg1)
							local function __FUNC_A874_(arg0, arg1)
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
								__FUNC_A874_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A874_)
						end

						if arg1.interrupted then
							__FUNC_A71F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A71F_)
					end

					if arg1.interrupted then
						__FUNC_A5A4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A5A4_)
				end

				if arg1.interrupted then
					__FUNC_A44F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A44F_)
			end

			if arg1.interrupted then
				__FUNC_A2D4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A2D4_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_A17D_(registerVal16, {})
		local function __FUNC_AA29_(arg0, arg1)
			local function __FUNC_AB80_(arg0, arg1)
				local function __FUNC_ACFB_(arg0, arg1)
					local function __FUNC_AE73_(arg0, arg1)
						local function __FUNC_AFEB_(arg0, arg1)
							local function __FUNC_B140_(arg0, arg1)
								local function __FUNC_B2BB_(arg0, arg1)
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
									__FUNC_B2BB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B2BB_)
							end

							if arg1.interrupted then
								__FUNC_B140_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B140_)
						end

						if arg1.interrupted then
							__FUNC_AFEB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AFEB_)
					end

					if arg1.interrupted then
						__FUNC_AE73_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AE73_)
				end

				if arg1.interrupted then
					__FUNC_ACFB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ACFB_)
			end

			if arg1.interrupted then
				__FUNC_AB80_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AB80_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_AA29_(registerVal17, {})
		local function __FUNC_B46D_(arg0, arg1)
			local function __FUNC_B5C4_(arg0, arg1)
				local function __FUNC_B73F_(arg0, arg1)
					local function __FUNC_B894_(arg0, arg1)
						local function __FUNC_BA0F_(arg0, arg1)
							local function __FUNC_BB64_(arg0, arg1)
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
								__FUNC_BB64_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BB64_)
						end

						if arg1.interrupted then
							__FUNC_BA0F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BA0F_)
					end

					if arg1.interrupted then
						__FUNC_B894_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B894_)
				end

				if arg1.interrupted then
					__FUNC_B73F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B73F_)
			end

			if arg1.interrupted then
				__FUNC_B5C4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B5C4_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_B46D_(registerVal18, {})
		local function __FUNC_BD19_(arg0, arg1)
			local function __FUNC_BE70_(arg0, arg1)
				local function __FUNC_BFEB_(arg0, arg1)
					local function __FUNC_C140_(arg0, arg1)
						local function __FUNC_C2BB_(arg0, arg1)
							local function __FUNC_C410_(arg0, arg1)
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
								__FUNC_C410_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C410_)
						end

						if arg1.interrupted then
							__FUNC_C2BB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C2BB_)
					end

					if arg1.interrupted then
						__FUNC_C140_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C140_)
				end

				if arg1.interrupted then
					__FUNC_BFEB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BFEB_)
			end

			if arg1.interrupted then
				__FUNC_BE70_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BE70_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_BD19_(registerVal19, {})
	end

	registerVal23.GainFocus = __FUNC_95D5_
	local function __FUNC_C5C5_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal5:completeAnimation()
		registerVal2.classifiedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.Purchaseable:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal10:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal23.Focus = __FUNC_C5C5_
	local function __FUNC_C930_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal5:completeAnimation()
		registerVal2.classifiedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.Purchaseable:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal10:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		local function __FUNC_CC88_(arg0, arg1)
			local function __FUNC_CE03_(arg0, arg1)
				local function __FUNC_CF7B_(arg0, arg1)
					local function __FUNC_D0F3_(arg0, arg1)
						local function __FUNC_D248_(arg0, arg1)
							local function __FUNC_D3C3_(arg0, arg1)
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
								__FUNC_D3C3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D3C3_)
						end

						if arg1.interrupted then
							__FUNC_D248_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D248_)
					end

					if arg1.interrupted then
						__FUNC_D0F3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D0F3_)
				end

				if arg1.interrupted then
					__FUNC_CF7B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CF7B_)
			end

			if arg1.interrupted then
				__FUNC_CE03_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CE03_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_CC88_(registerVal15, {})
		local function __FUNC_D575_(arg0, arg1)
			local function __FUNC_D6EF_(arg0, arg1)
				local function __FUNC_D867_(arg0, arg1)
					local function __FUNC_D9DF_(arg0, arg1)
						local function __FUNC_DB34_(arg0, arg1)
							local function __FUNC_DCAF_(arg0, arg1)
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
								__FUNC_DCAF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DCAF_)
						end

						if arg1.interrupted then
							__FUNC_DB34_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DB34_)
					end

					if arg1.interrupted then
						__FUNC_D9DF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D9DF_)
				end

				if arg1.interrupted then
					__FUNC_D867_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D867_)
			end

			if arg1.interrupted then
				__FUNC_D6EF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D6EF_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_D575_(registerVal16, {})
		local function __FUNC_DE61_(arg0, arg1)
			local function __FUNC_DFB8_(arg0, arg1)
				local function __FUNC_E133_(arg0, arg1)
					local function __FUNC_E2AB_(arg0, arg1)
						local function __FUNC_E423_(arg0, arg1)
							local function __FUNC_E578_(arg0, arg1)
								local function __FUNC_E6F3_(arg0, arg1)
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
									__FUNC_E6F3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E6F3_)
							end

							if arg1.interrupted then
								__FUNC_E578_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E578_)
						end

						if arg1.interrupted then
							__FUNC_E423_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E423_)
					end

					if arg1.interrupted then
						__FUNC_E2AB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E2AB_)
				end

				if arg1.interrupted then
					__FUNC_E133_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E133_)
			end

			if arg1.interrupted then
				__FUNC_DFB8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DFB8_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_DE61_(registerVal17, {})
		local function __FUNC_E8A5_(arg0, arg1)
			local function __FUNC_E9FC_(arg0, arg1)
				local function __FUNC_EB77_(arg0, arg1)
					local function __FUNC_ECCC_(arg0, arg1)
						local function __FUNC_EE47_(arg0, arg1)
							local function __FUNC_EF9C_(arg0, arg1)
								local function __FUNC_F117_(arg0, arg1)
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
									__FUNC_F117_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F117_)
							end

							if arg1.interrupted then
								__FUNC_EF9C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EF9C_)
						end

						if arg1.interrupted then
							__FUNC_EE47_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EE47_)
					end

					if arg1.interrupted then
						__FUNC_ECCC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ECCC_)
				end

				if arg1.interrupted then
					__FUNC_EB77_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EB77_)
			end

			if arg1.interrupted then
				__FUNC_E9FC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E9FC_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_E8A5_(registerVal18, {})
		local function __FUNC_F2C9_(arg0, arg1)
			local function __FUNC_F420_(arg0, arg1)
				local function __FUNC_F59B_(arg0, arg1)
					local function __FUNC_F6F0_(arg0, arg1)
						local function __FUNC_F86B_(arg0, arg1)
							local function __FUNC_F9C0_(arg0, arg1)
								local function __FUNC_FB3B_(arg0, arg1)
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
									__FUNC_FB3B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FB3B_)
							end

							if arg1.interrupted then
								__FUNC_F9C0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F9C0_)
						end

						if arg1.interrupted then
							__FUNC_F86B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F86B_)
					end

					if arg1.interrupted then
						__FUNC_F6F0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F6F0_)
				end

				if arg1.interrupted then
					__FUNC_F59B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F59B_)
			end

			if arg1.interrupted then
				__FUNC_F420_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F420_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_F2C9_(registerVal19, {})
	end

	registerVal23.LoseFocus = __FUNC_C930_
	registerVal22.BMPurchasable = registerVal23
	registerVal23 = {}
	local function __FUNC_FCED_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal9:completeAnimation()
		registerVal2.colorImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal13:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal20:completeAnimation()
		registerVal2.classifiedText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal23.DefaultClip = __FUNC_FCED_
	local function __FUNC_FEFB_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_1018B_(arg0, arg1)
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

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		__FUNC_1018B_(registerVal4, {})
		local function __FUNC_1033D_(arg0, arg1)
			local function __FUNC_10494_(arg0, arg1)
				local function __FUNC_1060F_(arg0, arg1)
					local function __FUNC_10764_(arg0, arg1)
						local function __FUNC_108DF_(arg0, arg1)
							local function __FUNC_10A34_(arg0, arg1)
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
								__FUNC_10A34_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10A34_)
						end

						if arg1.interrupted then
							__FUNC_108DF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_108DF_)
					end

					if arg1.interrupted then
						__FUNC_10764_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10764_)
				end

				if arg1.interrupted then
					__FUNC_1060F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1060F_)
			end

			if arg1.interrupted then
				__FUNC_10494_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10494_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_1033D_(registerVal15, {})
		local function __FUNC_10BE9_(arg0, arg1)
			local function __FUNC_10D40_(arg0, arg1)
				local function __FUNC_10EBB_(arg0, arg1)
					local function __FUNC_11010_(arg0, arg1)
						local function __FUNC_1118B_(arg0, arg1)
							local function __FUNC_112E0_(arg0, arg1)
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
								__FUNC_112E0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_112E0_)
						end

						if arg1.interrupted then
							__FUNC_1118B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1118B_)
					end

					if arg1.interrupted then
						__FUNC_11010_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11010_)
				end

				if arg1.interrupted then
					__FUNC_10EBB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10EBB_)
			end

			if arg1.interrupted then
				__FUNC_10D40_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10D40_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_10BE9_(registerVal16, {})
		local function __FUNC_11495_(arg0, arg1)
			local function __FUNC_115EC_(arg0, arg1)
				local function __FUNC_11767_(arg0, arg1)
					local function __FUNC_118DF_(arg0, arg1)
						local function __FUNC_11A57_(arg0, arg1)
							local function __FUNC_11BAC_(arg0, arg1)
								local function __FUNC_11D27_(arg0, arg1)
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
									__FUNC_11D27_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11D27_)
							end

							if arg1.interrupted then
								__FUNC_11BAC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11BAC_)
						end

						if arg1.interrupted then
							__FUNC_11A57_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11A57_)
					end

					if arg1.interrupted then
						__FUNC_118DF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_118DF_)
				end

				if arg1.interrupted then
					__FUNC_11767_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11767_)
			end

			if arg1.interrupted then
				__FUNC_115EC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_115EC_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_11495_(registerVal17, {})
		local function __FUNC_11ED9_(arg0, arg1)
			local function __FUNC_12030_(arg0, arg1)
				local function __FUNC_121AB_(arg0, arg1)
					local function __FUNC_12300_(arg0, arg1)
						local function __FUNC_1247B_(arg0, arg1)
							local function __FUNC_125D0_(arg0, arg1)
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
								__FUNC_125D0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_125D0_)
						end

						if arg1.interrupted then
							__FUNC_1247B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1247B_)
					end

					if arg1.interrupted then
						__FUNC_12300_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12300_)
				end

				if arg1.interrupted then
					__FUNC_121AB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_121AB_)
			end

			if arg1.interrupted then
				__FUNC_12030_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12030_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_11ED9_(registerVal18, {})
		local function __FUNC_12785_(arg0, arg1)
			local function __FUNC_128DC_(arg0, arg1)
				local function __FUNC_12A57_(arg0, arg1)
					local function __FUNC_12BAC_(arg0, arg1)
						local function __FUNC_12D27_(arg0, arg1)
							local function __FUNC_12E7C_(arg0, arg1)
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
								__FUNC_12E7C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12E7C_)
						end

						if arg1.interrupted then
							__FUNC_12D27_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12D27_)
					end

					if arg1.interrupted then
						__FUNC_12BAC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12BAC_)
				end

				if arg1.interrupted then
					__FUNC_12A57_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12A57_)
			end

			if arg1.interrupted then
				__FUNC_128DC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_128DC_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_12785_(registerVal19, {})
	end

	registerVal23.GainFocus = __FUNC_FEFB_
	local function __FUNC_13031_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal23.Focus = __FUNC_13031_
	local function __FUNC_131EA_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_1347B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
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
		__FUNC_1347B_(registerVal4, {})
		local function __FUNC_1362D_(arg0, arg1)
			local function __FUNC_137A7_(arg0, arg1)
				local function __FUNC_1391F_(arg0, arg1)
					local function __FUNC_13A97_(arg0, arg1)
						local function __FUNC_13BEC_(arg0, arg1)
							local function __FUNC_13D67_(arg0, arg1)
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
								__FUNC_13D67_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13D67_)
						end

						if arg1.interrupted then
							__FUNC_13BEC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13BEC_)
					end

					if arg1.interrupted then
						__FUNC_13A97_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13A97_)
				end

				if arg1.interrupted then
					__FUNC_1391F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1391F_)
			end

			if arg1.interrupted then
				__FUNC_137A7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_137A7_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_1362D_(registerVal15, {})
		local function __FUNC_13F19_(arg0, arg1)
			local function __FUNC_14093_(arg0, arg1)
				local function __FUNC_1420B_(arg0, arg1)
					local function __FUNC_14383_(arg0, arg1)
						local function __FUNC_144D8_(arg0, arg1)
							local function __FUNC_14653_(arg0, arg1)
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
								__FUNC_14653_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14653_)
						end

						if arg1.interrupted then
							__FUNC_144D8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_144D8_)
					end

					if arg1.interrupted then
						__FUNC_14383_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14383_)
				end

				if arg1.interrupted then
					__FUNC_1420B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1420B_)
			end

			if arg1.interrupted then
				__FUNC_14093_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14093_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_13F19_(registerVal16, {})
		local function __FUNC_14805_(arg0, arg1)
			local function __FUNC_1495C_(arg0, arg1)
				local function __FUNC_14AD7_(arg0, arg1)
					local function __FUNC_14C4F_(arg0, arg1)
						local function __FUNC_14DC7_(arg0, arg1)
							local function __FUNC_14F1C_(arg0, arg1)
								local function __FUNC_15097_(arg0, arg1)
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
									__FUNC_15097_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15097_)
							end

							if arg1.interrupted then
								__FUNC_14F1C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14F1C_)
						end

						if arg1.interrupted then
							__FUNC_14DC7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14DC7_)
					end

					if arg1.interrupted then
						__FUNC_14C4F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14C4F_)
				end

				if arg1.interrupted then
					__FUNC_14AD7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14AD7_)
			end

			if arg1.interrupted then
				__FUNC_1495C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1495C_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_14805_(registerVal17, {})
		local function __FUNC_15249_(arg0, arg1)
			local function __FUNC_153A0_(arg0, arg1)
				local function __FUNC_1551B_(arg0, arg1)
					local function __FUNC_15670_(arg0, arg1)
						local function __FUNC_157EB_(arg0, arg1)
							local function __FUNC_15940_(arg0, arg1)
								local function __FUNC_15ABB_(arg0, arg1)
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
									__FUNC_15ABB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15ABB_)
							end

							if arg1.interrupted then
								__FUNC_15940_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15940_)
						end

						if arg1.interrupted then
							__FUNC_157EB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_157EB_)
					end

					if arg1.interrupted then
						__FUNC_15670_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15670_)
				end

				if arg1.interrupted then
					__FUNC_1551B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1551B_)
			end

			if arg1.interrupted then
				__FUNC_153A0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_153A0_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_15249_(registerVal18, {})
		local function __FUNC_15C6D_(arg0, arg1)
			local function __FUNC_15DC4_(arg0, arg1)
				local function __FUNC_15F3F_(arg0, arg1)
					local function __FUNC_16094_(arg0, arg1)
						local function __FUNC_1620F_(arg0, arg1)
							local function __FUNC_16364_(arg0, arg1)
								local function __FUNC_164DF_(arg0, arg1)
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
									__FUNC_164DF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_164DF_)
							end

							if arg1.interrupted then
								__FUNC_16364_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16364_)
						end

						if arg1.interrupted then
							__FUNC_1620F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1620F_)
					end

					if arg1.interrupted then
						__FUNC_16094_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16094_)
				end

				if arg1.interrupted then
					__FUNC_15F3F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15F3F_)
			end

			if arg1.interrupted then
				__FUNC_15DC4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15DC4_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_15C6D_(registerVal19, {})
	end

	registerVal23.LoseFocus = __FUNC_131EA_
	registerVal22.ColorOption = registerVal23
	registerVal23 = {}
	local function __FUNC_16691_()
		registerVal2:setupElementClipCounter(15.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.classifiedIcon:setLeftRight(true, true, 1.000000, -1.000000)
		registerVal2.classifiedIcon:setTopBottom(true, true, -1.000000, 1.000000)
		registerVal2.classifiedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.colorImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.classifiedText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal23.DefaultClip = __FUNC_16691_
	local function __FUNC_16D03_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_16FFA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.classifiedIcon:setAlpha(1.000000)
		__FUNC_16FFA_(registerVal5, {})
		registerVal10:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		local function __FUNC_171AD_(arg0, arg1)
			local function __FUNC_17304_(arg0, arg1)
				local function __FUNC_1747F_(arg0, arg1)
					local function __FUNC_175D4_(arg0, arg1)
						local function __FUNC_1774F_(arg0, arg1)
							local function __FUNC_178A4_(arg0, arg1)
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
								__FUNC_178A4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_178A4_)
						end

						if arg1.interrupted then
							__FUNC_1774F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1774F_)
					end

					if arg1.interrupted then
						__FUNC_175D4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_175D4_)
				end

				if arg1.interrupted then
					__FUNC_1747F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1747F_)
			end

			if arg1.interrupted then
				__FUNC_17304_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17304_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_171AD_(registerVal15, {})
		local function __FUNC_17A59_(arg0, arg1)
			local function __FUNC_17BB0_(arg0, arg1)
				local function __FUNC_17D2B_(arg0, arg1)
					local function __FUNC_17E80_(arg0, arg1)
						local function __FUNC_17FFB_(arg0, arg1)
							local function __FUNC_18150_(arg0, arg1)
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
								__FUNC_18150_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18150_)
						end

						if arg1.interrupted then
							__FUNC_17FFB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17FFB_)
					end

					if arg1.interrupted then
						__FUNC_17E80_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17E80_)
				end

				if arg1.interrupted then
					__FUNC_17D2B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17D2B_)
			end

			if arg1.interrupted then
				__FUNC_17BB0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17BB0_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_17A59_(registerVal16, {})
		local function __FUNC_18305_(arg0, arg1)
			local function __FUNC_1845C_(arg0, arg1)
				local function __FUNC_185D7_(arg0, arg1)
					local function __FUNC_1874F_(arg0, arg1)
						local function __FUNC_188C7_(arg0, arg1)
							local function __FUNC_18A1C_(arg0, arg1)
								local function __FUNC_18B97_(arg0, arg1)
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
									__FUNC_18B97_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18B97_)
							end

							if arg1.interrupted then
								__FUNC_18A1C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18A1C_)
						end

						if arg1.interrupted then
							__FUNC_188C7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_188C7_)
					end

					if arg1.interrupted then
						__FUNC_1874F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1874F_)
				end

				if arg1.interrupted then
					__FUNC_185D7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_185D7_)
			end

			if arg1.interrupted then
				__FUNC_1845C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1845C_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_18305_(registerVal17, {})
		local function __FUNC_18D49_(arg0, arg1)
			local function __FUNC_18EA0_(arg0, arg1)
				local function __FUNC_1901B_(arg0, arg1)
					local function __FUNC_19170_(arg0, arg1)
						local function __FUNC_192EB_(arg0, arg1)
							local function __FUNC_19440_(arg0, arg1)
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
								__FUNC_19440_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19440_)
						end

						if arg1.interrupted then
							__FUNC_192EB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_192EB_)
					end

					if arg1.interrupted then
						__FUNC_19170_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19170_)
				end

				if arg1.interrupted then
					__FUNC_1901B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1901B_)
			end

			if arg1.interrupted then
				__FUNC_18EA0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18EA0_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_18D49_(registerVal18, {})
		local function __FUNC_195F5_(arg0, arg1)
			local function __FUNC_1974C_(arg0, arg1)
				local function __FUNC_198C7_(arg0, arg1)
					local function __FUNC_19A1C_(arg0, arg1)
						local function __FUNC_19B97_(arg0, arg1)
							local function __FUNC_19CEC_(arg0, arg1)
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
								__FUNC_19CEC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19CEC_)
						end

						if arg1.interrupted then
							__FUNC_19B97_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19B97_)
					end

					if arg1.interrupted then
						__FUNC_19A1C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19A1C_)
				end

				if arg1.interrupted then
					__FUNC_198C7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_198C7_)
			end

			if arg1.interrupted then
				__FUNC_1974C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1974C_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_195F5_(registerVal19, {})
	end

	registerVal23.GainFocus = __FUNC_16D03_
	local function __FUNC_19EA1_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal5:completeAnimation()
		registerVal2.classifiedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal10:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal23.Focus = __FUNC_19EA1_
	local function __FUNC_1A1B2_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal5:completeAnimation()
		registerVal2.classifiedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal10:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		local function __FUNC_1A4AE_(arg0, arg1)
			local function __FUNC_1A627_(arg0, arg1)
				local function __FUNC_1A79F_(arg0, arg1)
					local function __FUNC_1A917_(arg0, arg1)
						local function __FUNC_1AA6C_(arg0, arg1)
							local function __FUNC_1ABE7_(arg0, arg1)
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
								__FUNC_1ABE7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1ABE7_)
						end

						if arg1.interrupted then
							__FUNC_1AA6C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AA6C_)
					end

					if arg1.interrupted then
						__FUNC_1A917_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A917_)
				end

				if arg1.interrupted then
					__FUNC_1A79F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A79F_)
			end

			if arg1.interrupted then
				__FUNC_1A627_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A627_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_1A4AE_(registerVal15, {})
		local function __FUNC_1AD99_(arg0, arg1)
			local function __FUNC_1AF13_(arg0, arg1)
				local function __FUNC_1B08B_(arg0, arg1)
					local function __FUNC_1B203_(arg0, arg1)
						local function __FUNC_1B358_(arg0, arg1)
							local function __FUNC_1B4D3_(arg0, arg1)
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
								__FUNC_1B4D3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B4D3_)
						end

						if arg1.interrupted then
							__FUNC_1B358_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B358_)
					end

					if arg1.interrupted then
						__FUNC_1B203_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B203_)
				end

				if arg1.interrupted then
					__FUNC_1B08B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B08B_)
			end

			if arg1.interrupted then
				__FUNC_1AF13_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AF13_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_1AD99_(registerVal16, {})
		local function __FUNC_1B685_(arg0, arg1)
			local function __FUNC_1B7DC_(arg0, arg1)
				local function __FUNC_1B957_(arg0, arg1)
					local function __FUNC_1BACF_(arg0, arg1)
						local function __FUNC_1BC47_(arg0, arg1)
							local function __FUNC_1BD9C_(arg0, arg1)
								local function __FUNC_1BF17_(arg0, arg1)
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
									__FUNC_1BF17_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BF17_)
							end

							if arg1.interrupted then
								__FUNC_1BD9C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BD9C_)
						end

						if arg1.interrupted then
							__FUNC_1BC47_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BC47_)
					end

					if arg1.interrupted then
						__FUNC_1BACF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BACF_)
				end

				if arg1.interrupted then
					__FUNC_1B957_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B957_)
			end

			if arg1.interrupted then
				__FUNC_1B7DC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B7DC_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_1B685_(registerVal17, {})
		local function __FUNC_1C0C9_(arg0, arg1)
			local function __FUNC_1C220_(arg0, arg1)
				local function __FUNC_1C39B_(arg0, arg1)
					local function __FUNC_1C4F0_(arg0, arg1)
						local function __FUNC_1C66B_(arg0, arg1)
							local function __FUNC_1C7C0_(arg0, arg1)
								local function __FUNC_1C93B_(arg0, arg1)
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
									__FUNC_1C93B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C93B_)
							end

							if arg1.interrupted then
								__FUNC_1C7C0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C7C0_)
						end

						if arg1.interrupted then
							__FUNC_1C66B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C66B_)
					end

					if arg1.interrupted then
						__FUNC_1C4F0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C4F0_)
				end

				if arg1.interrupted then
					__FUNC_1C39B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C39B_)
			end

			if arg1.interrupted then
				__FUNC_1C220_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C220_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_1C0C9_(registerVal18, {})
		local function __FUNC_1CAED_(arg0, arg1)
			local function __FUNC_1CC44_(arg0, arg1)
				local function __FUNC_1CDBF_(arg0, arg1)
					local function __FUNC_1CF14_(arg0, arg1)
						local function __FUNC_1D08F_(arg0, arg1)
							local function __FUNC_1D1E4_(arg0, arg1)
								local function __FUNC_1D35F_(arg0, arg1)
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
									__FUNC_1D35F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D35F_)
							end

							if arg1.interrupted then
								__FUNC_1D1E4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D1E4_)
						end

						if arg1.interrupted then
							__FUNC_1D08F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D08F_)
					end

					if arg1.interrupted then
						__FUNC_1CF14_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CF14_)
				end

				if arg1.interrupted then
					__FUNC_1CDBF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CDBF_)
			end

			if arg1.interrupted then
				__FUNC_1CC44_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CC44_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_1CAED_(registerVal19, {})
	end

	registerVal23.LoseFocus = __FUNC_1A1B2_
	registerVal22.BMClassified = registerVal23
	registerVal23 = {}
	local function __FUNC_1D511_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.colorImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.LabelButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.classifiedText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal23.DefaultClip = __FUNC_1D511_
	local function __FUNC_1DAA6_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_1DCD9_(arg0, arg1)
			local function __FUNC_1DE30_(arg0, arg1)
				local function __FUNC_1DFAB_(arg0, arg1)
					local function __FUNC_1E100_(arg0, arg1)
						local function __FUNC_1E27B_(arg0, arg1)
							local function __FUNC_1E3D0_(arg0, arg1)
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
								__FUNC_1E3D0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E3D0_)
						end

						if arg1.interrupted then
							__FUNC_1E27B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E27B_)
					end

					if arg1.interrupted then
						__FUNC_1E100_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E100_)
				end

				if arg1.interrupted then
					__FUNC_1DFAB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DFAB_)
			end

			if arg1.interrupted then
				__FUNC_1DE30_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DE30_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_1DCD9_(registerVal15, {})
		local function __FUNC_1E585_(arg0, arg1)
			local function __FUNC_1E6DC_(arg0, arg1)
				local function __FUNC_1E857_(arg0, arg1)
					local function __FUNC_1E9AC_(arg0, arg1)
						local function __FUNC_1EB27_(arg0, arg1)
							local function __FUNC_1EC7C_(arg0, arg1)
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
								__FUNC_1EC7C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EC7C_)
						end

						if arg1.interrupted then
							__FUNC_1EB27_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EB27_)
					end

					if arg1.interrupted then
						__FUNC_1E9AC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E9AC_)
				end

				if arg1.interrupted then
					__FUNC_1E857_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E857_)
			end

			if arg1.interrupted then
				__FUNC_1E6DC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E6DC_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_1E585_(registerVal16, {})
		local function __FUNC_1EE31_(arg0, arg1)
			local function __FUNC_1EF88_(arg0, arg1)
				local function __FUNC_1F103_(arg0, arg1)
					local function __FUNC_1F27B_(arg0, arg1)
						local function __FUNC_1F3F3_(arg0, arg1)
							local function __FUNC_1F548_(arg0, arg1)
								local function __FUNC_1F6C3_(arg0, arg1)
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
									__FUNC_1F6C3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F6C3_)
							end

							if arg1.interrupted then
								__FUNC_1F548_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F548_)
						end

						if arg1.interrupted then
							__FUNC_1F3F3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F3F3_)
					end

					if arg1.interrupted then
						__FUNC_1F27B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F27B_)
				end

				if arg1.interrupted then
					__FUNC_1F103_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F103_)
			end

			if arg1.interrupted then
				__FUNC_1EF88_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EF88_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_1EE31_(registerVal17, {})
		local function __FUNC_1F875_(arg0, arg1)
			local function __FUNC_1F9CC_(arg0, arg1)
				local function __FUNC_1FB47_(arg0, arg1)
					local function __FUNC_1FC9C_(arg0, arg1)
						local function __FUNC_1FE17_(arg0, arg1)
							local function __FUNC_1FF6C_(arg0, arg1)
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
								__FUNC_1FF6C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FF6C_)
						end

						if arg1.interrupted then
							__FUNC_1FE17_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FE17_)
					end

					if arg1.interrupted then
						__FUNC_1FC9C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FC9C_)
				end

				if arg1.interrupted then
					__FUNC_1FB47_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FB47_)
			end

			if arg1.interrupted then
				__FUNC_1F9CC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F9CC_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_1F875_(registerVal18, {})
		local function __FUNC_20121_(arg0, arg1)
			local function __FUNC_20278_(arg0, arg1)
				local function __FUNC_203F3_(arg0, arg1)
					local function __FUNC_20548_(arg0, arg1)
						local function __FUNC_206C3_(arg0, arg1)
							local function __FUNC_20818_(arg0, arg1)
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
								__FUNC_20818_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20818_)
						end

						if arg1.interrupted then
							__FUNC_206C3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_206C3_)
					end

					if arg1.interrupted then
						__FUNC_20548_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20548_)
				end

				if arg1.interrupted then
					__FUNC_203F3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_203F3_)
			end

			if arg1.interrupted then
				__FUNC_20278_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20278_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_20121_(registerVal19, {})
	end

	registerVal23.GainFocus = __FUNC_1DAA6_
	local function __FUNC_209CD_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal23.Focus = __FUNC_209CD_
	local function __FUNC_20C2B_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_20E5D_(arg0, arg1)
			local function __FUNC_20FD7_(arg0, arg1)
				local function __FUNC_2114F_(arg0, arg1)
					local function __FUNC_212C7_(arg0, arg1)
						local function __FUNC_2141C_(arg0, arg1)
							local function __FUNC_21597_(arg0, arg1)
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
								__FUNC_21597_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21597_)
						end

						if arg1.interrupted then
							__FUNC_2141C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2141C_)
					end

					if arg1.interrupted then
						__FUNC_212C7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_212C7_)
				end

				if arg1.interrupted then
					__FUNC_2114F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2114F_)
			end

			if arg1.interrupted then
				__FUNC_20FD7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20FD7_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_20E5D_(registerVal15, {})
		local function __FUNC_21749_(arg0, arg1)
			local function __FUNC_218C3_(arg0, arg1)
				local function __FUNC_21A3B_(arg0, arg1)
					local function __FUNC_21BB3_(arg0, arg1)
						local function __FUNC_21D08_(arg0, arg1)
							local function __FUNC_21E83_(arg0, arg1)
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
								__FUNC_21E83_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21E83_)
						end

						if arg1.interrupted then
							__FUNC_21D08_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21D08_)
					end

					if arg1.interrupted then
						__FUNC_21BB3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21BB3_)
				end

				if arg1.interrupted then
					__FUNC_21A3B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21A3B_)
			end

			if arg1.interrupted then
				__FUNC_218C3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_218C3_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_21749_(registerVal16, {})
		local function __FUNC_22035_(arg0, arg1)
			local function __FUNC_2218C_(arg0, arg1)
				local function __FUNC_22307_(arg0, arg1)
					local function __FUNC_2247F_(arg0, arg1)
						local function __FUNC_225F7_(arg0, arg1)
							local function __FUNC_2274C_(arg0, arg1)
								local function __FUNC_228C7_(arg0, arg1)
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
									__FUNC_228C7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_228C7_)
							end

							if arg1.interrupted then
								__FUNC_2274C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2274C_)
						end

						if arg1.interrupted then
							__FUNC_225F7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_225F7_)
					end

					if arg1.interrupted then
						__FUNC_2247F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2247F_)
				end

				if arg1.interrupted then
					__FUNC_22307_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22307_)
			end

			if arg1.interrupted then
				__FUNC_2218C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2218C_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_22035_(registerVal17, {})
		local function __FUNC_22A79_(arg0, arg1)
			local function __FUNC_22BD0_(arg0, arg1)
				local function __FUNC_22D4B_(arg0, arg1)
					local function __FUNC_22EA0_(arg0, arg1)
						local function __FUNC_2301B_(arg0, arg1)
							local function __FUNC_23170_(arg0, arg1)
								local function __FUNC_232EB_(arg0, arg1)
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
									__FUNC_232EB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_232EB_)
							end

							if arg1.interrupted then
								__FUNC_23170_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23170_)
						end

						if arg1.interrupted then
							__FUNC_2301B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2301B_)
					end

					if arg1.interrupted then
						__FUNC_22EA0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22EA0_)
				end

				if arg1.interrupted then
					__FUNC_22D4B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22D4B_)
			end

			if arg1.interrupted then
				__FUNC_22BD0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22BD0_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_22A79_(registerVal18, {})
		local function __FUNC_2349D_(arg0, arg1)
			local function __FUNC_235F4_(arg0, arg1)
				local function __FUNC_2376F_(arg0, arg1)
					local function __FUNC_238C4_(arg0, arg1)
						local function __FUNC_23A3F_(arg0, arg1)
							local function __FUNC_23B94_(arg0, arg1)
								local function __FUNC_23D0F_(arg0, arg1)
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
									__FUNC_23D0F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23D0F_)
							end

							if arg1.interrupted then
								__FUNC_23B94_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23B94_)
						end

						if arg1.interrupted then
							__FUNC_23A3F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23A3F_)
					end

					if arg1.interrupted then
						__FUNC_238C4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_238C4_)
				end

				if arg1.interrupted then
					__FUNC_2376F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2376F_)
			end

			if arg1.interrupted then
				__FUNC_235F4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_235F4_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_2349D_(registerVal19, {})
	end

	registerVal23.LoseFocus = __FUNC_20C2B_
	registerVal22.Classified = registerVal23
	registerVal23 = {}
	local function __FUNC_23EC1_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal2.colorImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.itemImage:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal11.Panel:completeAnimation()
		registerVal2.LabelButton.Panel:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.IconNew:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal20:completeAnimation()
		registerVal2.classifiedText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal23.DefaultClip = __FUNC_23EC1_
	local function __FUNC_2422A_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_244BB_(arg0, arg1)
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

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		__FUNC_244BB_(registerVal4, {})
		local function __FUNC_2466D_(arg0, arg1)
			local function __FUNC_247C4_(arg0, arg1)
				local function __FUNC_2493F_(arg0, arg1)
					local function __FUNC_24A94_(arg0, arg1)
						local function __FUNC_24C0F_(arg0, arg1)
							local function __FUNC_24D64_(arg0, arg1)
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
								__FUNC_24D64_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24D64_)
						end

						if arg1.interrupted then
							__FUNC_24C0F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24C0F_)
					end

					if arg1.interrupted then
						__FUNC_24A94_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24A94_)
				end

				if arg1.interrupted then
					__FUNC_2493F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2493F_)
			end

			if arg1.interrupted then
				__FUNC_247C4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_247C4_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_2466D_(registerVal15, {})
		local function __FUNC_24F19_(arg0, arg1)
			local function __FUNC_25070_(arg0, arg1)
				local function __FUNC_251EB_(arg0, arg1)
					local function __FUNC_25340_(arg0, arg1)
						local function __FUNC_254BB_(arg0, arg1)
							local function __FUNC_25610_(arg0, arg1)
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
								__FUNC_25610_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25610_)
						end

						if arg1.interrupted then
							__FUNC_254BB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_254BB_)
					end

					if arg1.interrupted then
						__FUNC_25340_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25340_)
				end

				if arg1.interrupted then
					__FUNC_251EB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_251EB_)
			end

			if arg1.interrupted then
				__FUNC_25070_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25070_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_24F19_(registerVal16, {})
		local function __FUNC_257C5_(arg0, arg1)
			local function __FUNC_2591C_(arg0, arg1)
				local function __FUNC_25A97_(arg0, arg1)
					local function __FUNC_25C0F_(arg0, arg1)
						local function __FUNC_25D87_(arg0, arg1)
							local function __FUNC_25EDC_(arg0, arg1)
								local function __FUNC_26057_(arg0, arg1)
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
									__FUNC_26057_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26057_)
							end

							if arg1.interrupted then
								__FUNC_25EDC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25EDC_)
						end

						if arg1.interrupted then
							__FUNC_25D87_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25D87_)
					end

					if arg1.interrupted then
						__FUNC_25C0F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25C0F_)
				end

				if arg1.interrupted then
					__FUNC_25A97_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25A97_)
			end

			if arg1.interrupted then
				__FUNC_2591C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2591C_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_257C5_(registerVal17, {})
		local function __FUNC_26209_(arg0, arg1)
			local function __FUNC_26360_(arg0, arg1)
				local function __FUNC_264DB_(arg0, arg1)
					local function __FUNC_26630_(arg0, arg1)
						local function __FUNC_267AB_(arg0, arg1)
							local function __FUNC_26900_(arg0, arg1)
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
								__FUNC_26900_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26900_)
						end

						if arg1.interrupted then
							__FUNC_267AB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_267AB_)
					end

					if arg1.interrupted then
						__FUNC_26630_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26630_)
				end

				if arg1.interrupted then
					__FUNC_264DB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_264DB_)
			end

			if arg1.interrupted then
				__FUNC_26360_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26360_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_26209_(registerVal18, {})
		local function __FUNC_26AB5_(arg0, arg1)
			local function __FUNC_26C0C_(arg0, arg1)
				local function __FUNC_26D87_(arg0, arg1)
					local function __FUNC_26EDC_(arg0, arg1)
						local function __FUNC_27057_(arg0, arg1)
							local function __FUNC_271AC_(arg0, arg1)
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
								__FUNC_271AC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_271AC_)
						end

						if arg1.interrupted then
							__FUNC_27057_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27057_)
					end

					if arg1.interrupted then
						__FUNC_26EDC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26EDC_)
				end

				if arg1.interrupted then
					__FUNC_26D87_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26D87_)
			end

			if arg1.interrupted then
				__FUNC_26C0C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26C0C_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_26AB5_(registerVal19, {})
	end

	registerVal23.GainFocus = __FUNC_2422A_
	local function __FUNC_27361_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal23.Focus = __FUNC_27361_
	local function __FUNC_275C8_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_2785B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
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
		__FUNC_2785B_(registerVal4, {})
		local function __FUNC_27A0D_(arg0, arg1)
			local function __FUNC_27B87_(arg0, arg1)
				local function __FUNC_27CFF_(arg0, arg1)
					local function __FUNC_27E77_(arg0, arg1)
						local function __FUNC_27FCC_(arg0, arg1)
							local function __FUNC_28147_(arg0, arg1)
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
								__FUNC_28147_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28147_)
						end

						if arg1.interrupted then
							__FUNC_27FCC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27FCC_)
					end

					if arg1.interrupted then
						__FUNC_27E77_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27E77_)
				end

				if arg1.interrupted then
					__FUNC_27CFF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27CFF_)
			end

			if arg1.interrupted then
				__FUNC_27B87_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27B87_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_27A0D_(registerVal15, {})
		local function __FUNC_282F9_(arg0, arg1)
			local function __FUNC_28473_(arg0, arg1)
				local function __FUNC_285EB_(arg0, arg1)
					local function __FUNC_28763_(arg0, arg1)
						local function __FUNC_288B8_(arg0, arg1)
							local function __FUNC_28A33_(arg0, arg1)
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
								__FUNC_28A33_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28A33_)
						end

						if arg1.interrupted then
							__FUNC_288B8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_288B8_)
					end

					if arg1.interrupted then
						__FUNC_28763_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28763_)
				end

				if arg1.interrupted then
					__FUNC_285EB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_285EB_)
			end

			if arg1.interrupted then
				__FUNC_28473_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28473_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_282F9_(registerVal16, {})
		local function __FUNC_28BE5_(arg0, arg1)
			local function __FUNC_28D3C_(arg0, arg1)
				local function __FUNC_28EB7_(arg0, arg1)
					local function __FUNC_2902F_(arg0, arg1)
						local function __FUNC_291A7_(arg0, arg1)
							local function __FUNC_292FC_(arg0, arg1)
								local function __FUNC_29477_(arg0, arg1)
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
									__FUNC_29477_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29477_)
							end

							if arg1.interrupted then
								__FUNC_292FC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_292FC_)
						end

						if arg1.interrupted then
							__FUNC_291A7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_291A7_)
					end

					if arg1.interrupted then
						__FUNC_2902F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2902F_)
				end

				if arg1.interrupted then
					__FUNC_28EB7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28EB7_)
			end

			if arg1.interrupted then
				__FUNC_28D3C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28D3C_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_28BE5_(registerVal17, {})
		local function __FUNC_29629_(arg0, arg1)
			local function __FUNC_29780_(arg0, arg1)
				local function __FUNC_298FB_(arg0, arg1)
					local function __FUNC_29A50_(arg0, arg1)
						local function __FUNC_29BCB_(arg0, arg1)
							local function __FUNC_29D20_(arg0, arg1)
								local function __FUNC_29E9B_(arg0, arg1)
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
									__FUNC_29E9B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29E9B_)
							end

							if arg1.interrupted then
								__FUNC_29D20_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29D20_)
						end

						if arg1.interrupted then
							__FUNC_29BCB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29BCB_)
					end

					if arg1.interrupted then
						__FUNC_29A50_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29A50_)
				end

				if arg1.interrupted then
					__FUNC_298FB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_298FB_)
			end

			if arg1.interrupted then
				__FUNC_29780_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29780_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_29629_(registerVal18, {})
		local function __FUNC_2A04D_(arg0, arg1)
			local function __FUNC_2A1A4_(arg0, arg1)
				local function __FUNC_2A31F_(arg0, arg1)
					local function __FUNC_2A474_(arg0, arg1)
						local function __FUNC_2A5EF_(arg0, arg1)
							local function __FUNC_2A744_(arg0, arg1)
								local function __FUNC_2A8BF_(arg0, arg1)
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
									__FUNC_2A8BF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A8BF_)
							end

							if arg1.interrupted then
								__FUNC_2A744_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A744_)
						end

						if arg1.interrupted then
							__FUNC_2A5EF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A5EF_)
					end

					if arg1.interrupted then
						__FUNC_2A474_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A474_)
				end

				if arg1.interrupted then
					__FUNC_2A31F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A31F_)
			end

			if arg1.interrupted then
				__FUNC_2A1A4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A1A4_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_2A04D_(registerVal19, {})
	end

	registerVal23.LoseFocus = __FUNC_275C8_
	registerVal22.New = registerVal23
	registerVal23 = {}
	local function __FUNC_2AA71_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.lockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.colorImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.classifiedText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal23.DefaultClip = __FUNC_2AA71_
	local function __FUNC_2B006_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_2B239_(arg0, arg1)
			local function __FUNC_2B390_(arg0, arg1)
				local function __FUNC_2B50B_(arg0, arg1)
					local function __FUNC_2B660_(arg0, arg1)
						local function __FUNC_2B7DB_(arg0, arg1)
							local function __FUNC_2B930_(arg0, arg1)
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
								__FUNC_2B930_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B930_)
						end

						if arg1.interrupted then
							__FUNC_2B7DB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B7DB_)
					end

					if arg1.interrupted then
						__FUNC_2B660_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B660_)
				end

				if arg1.interrupted then
					__FUNC_2B50B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B50B_)
			end

			if arg1.interrupted then
				__FUNC_2B390_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B390_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_2B239_(registerVal15, {})
		local function __FUNC_2BAE5_(arg0, arg1)
			local function __FUNC_2BC3C_(arg0, arg1)
				local function __FUNC_2BDB7_(arg0, arg1)
					local function __FUNC_2BF0C_(arg0, arg1)
						local function __FUNC_2C087_(arg0, arg1)
							local function __FUNC_2C1DC_(arg0, arg1)
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
								__FUNC_2C1DC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C1DC_)
						end

						if arg1.interrupted then
							__FUNC_2C087_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C087_)
					end

					if arg1.interrupted then
						__FUNC_2BF0C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BF0C_)
				end

				if arg1.interrupted then
					__FUNC_2BDB7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BDB7_)
			end

			if arg1.interrupted then
				__FUNC_2BC3C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BC3C_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_2BAE5_(registerVal16, {})
		local function __FUNC_2C391_(arg0, arg1)
			local function __FUNC_2C4E8_(arg0, arg1)
				local function __FUNC_2C663_(arg0, arg1)
					local function __FUNC_2C7DB_(arg0, arg1)
						local function __FUNC_2C953_(arg0, arg1)
							local function __FUNC_2CAA8_(arg0, arg1)
								local function __FUNC_2CC23_(arg0, arg1)
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
									__FUNC_2CC23_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CC23_)
							end

							if arg1.interrupted then
								__FUNC_2CAA8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CAA8_)
						end

						if arg1.interrupted then
							__FUNC_2C953_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C953_)
					end

					if arg1.interrupted then
						__FUNC_2C7DB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C7DB_)
				end

				if arg1.interrupted then
					__FUNC_2C663_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C663_)
			end

			if arg1.interrupted then
				__FUNC_2C4E8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C4E8_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_2C391_(registerVal17, {})
		local function __FUNC_2CDD5_(arg0, arg1)
			local function __FUNC_2CF2C_(arg0, arg1)
				local function __FUNC_2D0A7_(arg0, arg1)
					local function __FUNC_2D1FC_(arg0, arg1)
						local function __FUNC_2D377_(arg0, arg1)
							local function __FUNC_2D4CC_(arg0, arg1)
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
								__FUNC_2D4CC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D4CC_)
						end

						if arg1.interrupted then
							__FUNC_2D377_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D377_)
					end

					if arg1.interrupted then
						__FUNC_2D1FC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D1FC_)
				end

				if arg1.interrupted then
					__FUNC_2D0A7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D0A7_)
			end

			if arg1.interrupted then
				__FUNC_2CF2C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CF2C_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_2CDD5_(registerVal18, {})
		local function __FUNC_2D681_(arg0, arg1)
			local function __FUNC_2D7D8_(arg0, arg1)
				local function __FUNC_2D953_(arg0, arg1)
					local function __FUNC_2DAA8_(arg0, arg1)
						local function __FUNC_2DC23_(arg0, arg1)
							local function __FUNC_2DD78_(arg0, arg1)
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
								__FUNC_2DD78_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DD78_)
						end

						if arg1.interrupted then
							__FUNC_2DC23_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DC23_)
					end

					if arg1.interrupted then
						__FUNC_2DAA8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DAA8_)
				end

				if arg1.interrupted then
					__FUNC_2D953_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D953_)
			end

			if arg1.interrupted then
				__FUNC_2D7D8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D7D8_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_2D681_(registerVal19, {})
	end

	registerVal23.GainFocus = __FUNC_2B006_
	local function __FUNC_2DF2D_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal23.Focus = __FUNC_2DF2D_
	local function __FUNC_2E18B_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_2E3BD_(arg0, arg1)
			local function __FUNC_2E537_(arg0, arg1)
				local function __FUNC_2E6AF_(arg0, arg1)
					local function __FUNC_2E827_(arg0, arg1)
						local function __FUNC_2E97C_(arg0, arg1)
							local function __FUNC_2EAF7_(arg0, arg1)
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
								__FUNC_2EAF7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EAF7_)
						end

						if arg1.interrupted then
							__FUNC_2E97C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E97C_)
					end

					if arg1.interrupted then
						__FUNC_2E827_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E827_)
				end

				if arg1.interrupted then
					__FUNC_2E6AF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E6AF_)
			end

			if arg1.interrupted then
				__FUNC_2E537_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E537_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_2E3BD_(registerVal15, {})
		local function __FUNC_2ECA9_(arg0, arg1)
			local function __FUNC_2EE23_(arg0, arg1)
				local function __FUNC_2EF9B_(arg0, arg1)
					local function __FUNC_2F113_(arg0, arg1)
						local function __FUNC_2F268_(arg0, arg1)
							local function __FUNC_2F3E3_(arg0, arg1)
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
								__FUNC_2F3E3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F3E3_)
						end

						if arg1.interrupted then
							__FUNC_2F268_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F268_)
					end

					if arg1.interrupted then
						__FUNC_2F113_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F113_)
				end

				if arg1.interrupted then
					__FUNC_2EF9B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EF9B_)
			end

			if arg1.interrupted then
				__FUNC_2EE23_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EE23_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_2ECA9_(registerVal16, {})
		local function __FUNC_2F595_(arg0, arg1)
			local function __FUNC_2F6EC_(arg0, arg1)
				local function __FUNC_2F867_(arg0, arg1)
					local function __FUNC_2F9DF_(arg0, arg1)
						local function __FUNC_2FB57_(arg0, arg1)
							local function __FUNC_2FCAC_(arg0, arg1)
								local function __FUNC_2FE27_(arg0, arg1)
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
									__FUNC_2FE27_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FE27_)
							end

							if arg1.interrupted then
								__FUNC_2FCAC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FCAC_)
						end

						if arg1.interrupted then
							__FUNC_2FB57_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FB57_)
					end

					if arg1.interrupted then
						__FUNC_2F9DF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F9DF_)
				end

				if arg1.interrupted then
					__FUNC_2F867_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F867_)
			end

			if arg1.interrupted then
				__FUNC_2F6EC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F6EC_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_2F595_(registerVal17, {})
		local function __FUNC_2FFD9_(arg0, arg1)
			local function __FUNC_30130_(arg0, arg1)
				local function __FUNC_302AB_(arg0, arg1)
					local function __FUNC_30400_(arg0, arg1)
						local function __FUNC_3057B_(arg0, arg1)
							local function __FUNC_306D0_(arg0, arg1)
								local function __FUNC_3084B_(arg0, arg1)
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
									__FUNC_3084B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3084B_)
							end

							if arg1.interrupted then
								__FUNC_306D0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_306D0_)
						end

						if arg1.interrupted then
							__FUNC_3057B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3057B_)
					end

					if arg1.interrupted then
						__FUNC_30400_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30400_)
				end

				if arg1.interrupted then
					__FUNC_302AB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_302AB_)
			end

			if arg1.interrupted then
				__FUNC_30130_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30130_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_2FFD9_(registerVal18, {})
		local function __FUNC_309FD_(arg0, arg1)
			local function __FUNC_30B54_(arg0, arg1)
				local function __FUNC_30CCF_(arg0, arg1)
					local function __FUNC_30E24_(arg0, arg1)
						local function __FUNC_30F9F_(arg0, arg1)
							local function __FUNC_310F4_(arg0, arg1)
								local function __FUNC_3126F_(arg0, arg1)
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
									__FUNC_3126F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3126F_)
							end

							if arg1.interrupted then
								__FUNC_310F4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_310F4_)
						end

						if arg1.interrupted then
							__FUNC_30F9F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30F9F_)
					end

					if arg1.interrupted then
						__FUNC_30E24_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30E24_)
				end

				if arg1.interrupted then
					__FUNC_30CCF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30CCF_)
			end

			if arg1.interrupted then
				__FUNC_30B54_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30B54_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_309FD_(registerVal19, {})
	end

	registerVal23.LoseFocus = __FUNC_2E18B_
	registerVal22.Locked = registerVal23
	registerVal2.clipsPerState = registerVal22
	local registerVal24 = {}
	local registerVal25 = {}
	registerVal25.stateName = "BMPurchasable"
	local function __FUNC_31421_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isBMPurchasable")
	end

	registerVal25.condition = __FUNC_31421_
	local registerVal26 = {}
	registerVal26.stateName = "ColorOption"
	local function __FUNC_3149B_(arg0, arg1, arg2)
		return IsHeroColorOption(arg1)
	end

	registerVal26.condition = __FUNC_3149B_
	local registerVal27 = {}
	registerVal27.stateName = "BMClassified"
	local function __FUNC_314EF_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isBMClassified")
	end

	registerVal27.condition = __FUNC_314EF_
	local registerVal28 = {}
	registerVal28.stateName = "Classified"
	local function __FUNC_31566_(arg0, arg2, arg3)
		return IsCurrentItemClassified(arg2, arg1)
	end

	registerVal28.condition = __FUNC_31566_
	local registerVal29 = {}
	registerVal29.stateName = "New"
	local function __FUNC_315C5_(arg0, arg2, arg3)
		return IsCurrentNewHeroOption(registerVal2, arg2, arg1)
	end

	registerVal29.condition = __FUNC_315C5_
	local registerVal30 = {}
	registerVal30.stateName = "Locked"
	local function __FUNC_31628_(arg0, arg2, arg3)
		return IsCurrentLockedHeroOption(arg2, arg1)
	end

	registerVal30.condition = __FUNC_31628_
	registerVal24 = {registerVal25, registerVal26, registerVal27, registerVal28, registerVal29, registerVal30}
	registerVal2:mergeStateConditions(registerVal24)
	local function __FUNC_3168B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMPurchasable"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isBMPurchasable", true, __FUNC_3168B_)
	local function __FUNC_317AD_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isBMClassified", true, __FUNC_317AD_)
	local function __FUNC_318D0_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "variantIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "variantIndex", true, __FUNC_318D0_)
	local function __FUNC_319F2_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "optionIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "optionIndex", true, __FUNC_319F2_)
	local function __FUNC_31B11_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfInState(registerVal2, "BMPurchasable")
		registerVal4 = IsElementInFocus(arg0)
		if registerVal4 and registerVal4 then
			OpenOutfitStore(registerVal2, arg0, arg2, "OutfitStore", arg1)
			return true
		end
	end

	local function __FUNC_31C02_(arg0, arg1, arg2)
		local registerVal3 = IsSelfInState(registerVal2, "BMPurchasable")
		registerVal3 = IsElementInFocus(arg0)
		if registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_VIEW_STORE_OUTFITS")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_31B11_, __FUNC_31C02_, false)
	local function __FUNC_31D86_(arg0)
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.BoxButtonLrgInactive:close()
		arg0.classifiedIcon:close()
		arg0.BoxButtonLrgIdle:close()
		arg0.lockedIcon:close()
		arg0.LabelButton:close()
		arg0.FETitleNumBrdr1:close()
		arg0.IconNew:close()
		arg0.IconEquipped:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.FocusBorder:close()
		arg0.DuplicateCounter:close()
		arg0.colorImage:close()
		arg0.itemImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_31D86_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

