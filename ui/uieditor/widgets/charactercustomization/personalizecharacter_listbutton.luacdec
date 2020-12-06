-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.FittedText")
require("ui.uieditor.widgets.CharacterCustomization.PersonalizedColorsList")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.CAC.NewBreadcrumbCount")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PersonalizeCharacter_ListButton = registerVal1
function CoD.PersonalizeCharacter_ListButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PersonalizeCharacter_ListButton)
	registerVal2.id = "PersonalizeCharacter_ListButton"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 335.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 100.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.FETitleNumBrdr1 = registerVal3
	local registerVal4 = CoD.cac_ButtonBoxLrgInactiveDiags.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal4:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BoxButtonLrgInactiveDiag = registerVal4
	local registerVal5 = CoD.cac_ButtonBoxLrgIdle.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal5:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.BoxButtonLrgIdle = registerVal5
	local registerVal6 = CoD.cac_ButtonBoxLrgInactive.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal6:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.BoxButtonLrgInactive = registerVal6
	local registerVal7 = LUI.UIFrame.new(arg0, arg1, 0.000000, 0.000000, false)
	registerVal7:setLeftRight(true, false, 0.000000, 335.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 100.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.sizeElement = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -147.000000, 147.000000)
	registerVal8:setTopBottom(false, false, -49.000000, 49.000000)
	local function __FUNC_16BC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "categoryImage", true, __FUNC_16BC_)
	registerVal2:addElement(registerVal8)
	registerVal2.categoryImage = registerVal8
	local registerVal9 = CoD.FittedText.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 5.000000, 330.000000)
	registerVal9:setTopBottom(false, true, -25.000000, -2.000000)
	local function __FUNC_1770_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.text:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "categoryName", true, __FUNC_1770_)
	registerVal2:addElement(registerVal9)
	registerVal2.text = registerVal9
	local registerVal10 = CoD.PersonalizedColorsList.new(arg0, arg1)
	registerVal10:setLeftRight(false, true, -100.000000, -7.000000)
	registerVal10:setTopBottom(false, false, -15.000000, 15.000000)
	registerVal10:setAlpha(0.000000)
	local function __FUNC_1844_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.colors:setDataSource(registerVal1)
		end
	end

	registerVal10:linkToElementModel(registerVal2, "colorListDatasource", true, __FUNC_1844_)
	registerVal2:addElement(registerVal10)
	registerVal2.colorList = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, true, -14.000000, 0.000000)
	registerVal11:setTopBottom(true, false, 0.000000, 14.000000)
	registerVal11:setRGB(1.000000, 0.410000, 0.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setImage(RegisterImage("uie_t7_hud_cac_warning_16"))
	registerVal2:addElement(registerVal11)
	registerVal2.alertIcon = registerVal11
	local registerVal12 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal12:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal12:setTopBottom(true, false, -4.000000, 0.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setZoom(1.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.FocusBarT = registerVal12
	local registerVal13 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal13:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal13:setTopBottom(false, true, 0.000000, 4.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setZoom(1.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.FocusBarB = registerVal13
	local registerVal14 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal14:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal14:setTopBottom(true, true, -0.500000, 0.000000)
	registerVal14:setRGB(1.000000, 0.300000, 0.000000)
	registerVal14:setAlpha(0.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.FocusBorder = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, true, -12.000000, 7.000000)
	registerVal15:setTopBottom(true, false, -8.750000, 4.750000)
	registerVal15:setRGB(1.000000, 0.090000, 0.000000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.glitch = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, true, -8.500000, 8.500000)
	registerVal16:setTopBottom(false, true, -6.000000, 9.000000)
	registerVal16:setRGB(1.000000, 0.150000, 0.000000)
	registerVal16:setAlpha(0.000000)
	registerVal16:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal16)
	registerVal2.glitch2 = registerVal16
	local registerVal17 = CoD.NewBreadcrumbCount.new(arg0, arg1)
	registerVal17:setLeftRight(false, true, -19.000000, -1.000000)
	registerVal17:setTopBottom(true, false, 1.000000, 19.000000)
	local function __FUNC_18FA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.countText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal17:linkToElementModel(registerVal2, "breadcrumbCount", true, __FUNC_18FA_)
	local registerVal20 = {}
	local registerVal21 = {}
	registerVal21.stateName = "Visible"
	local function __FUNC_19D1_(arg0, arg2, arg3)
		return ShouldDisplayWeaponGroupBreadcrumbCount(registerVal2, arg1)
	end

	registerVal21.condition = __FUNC_19D1_
	registerVal20 = {registerVal21}
	registerVal17:mergeStateConditions(registerVal20)
	local function __FUNC_1A41_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "breadcrumbCount"
		arg0:updateElementState(registerVal17, registerVal4)
	end

	registerVal17:linkToElementModel(registerVal17, "breadcrumbCount", true, __FUNC_1A41_)
	registerVal2:addElement(registerVal17)
	registerVal2.breadcrumbCount = registerVal17
	local registerVal18 = {}
	local registerVal19 = {}
	local function __FUNC_1B65_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.FETitleNumBrdr1:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.FETitleNumBrdr1:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.FETitleNumBrdr1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal7:completeAnimation()
		registerVal2.sizeElement:setLeftRight(true, false, 2.000000, 337.000000)
		registerVal2.sizeElement:setTopBottom(true, false, -78.000000, 22.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.categoryImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.colorList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal19.DefaultClip = __FUNC_1B65_
	local function __FUNC_1F15_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_21A7_(arg0, arg1)
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

		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		__FUNC_21A7_(registerVal6, {})
		local function __FUNC_2359_(arg0, arg1)
			local function __FUNC_24B0_(arg0, arg1)
				local function __FUNC_262B_(arg0, arg1)
					local function __FUNC_2780_(arg0, arg1)
						local function __FUNC_28FB_(arg0, arg1)
							local function __FUNC_2A50_(arg0, arg1)
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
								__FUNC_2A50_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A50_)
						end

						if arg1.interrupted then
							__FUNC_28FB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28FB_)
					end

					if arg1.interrupted then
						__FUNC_2780_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2780_)
				end

				if arg1.interrupted then
					__FUNC_262B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_262B_)
			end

			if arg1.interrupted then
				__FUNC_24B0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24B0_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_2359_(registerVal12, {})
		local function __FUNC_2C05_(arg0, arg1)
			local function __FUNC_2D5C_(arg0, arg1)
				local function __FUNC_2ED7_(arg0, arg1)
					local function __FUNC_302C_(arg0, arg1)
						local function __FUNC_31A7_(arg0, arg1)
							local function __FUNC_32FC_(arg0, arg1)
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
								__FUNC_32FC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32FC_)
						end

						if arg1.interrupted then
							__FUNC_31A7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31A7_)
					end

					if arg1.interrupted then
						__FUNC_302C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_302C_)
				end

				if arg1.interrupted then
					__FUNC_2ED7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2ED7_)
			end

			if arg1.interrupted then
				__FUNC_2D5C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D5C_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_2C05_(registerVal13, {})
		local function __FUNC_34B1_(arg0, arg1)
			local function __FUNC_3608_(arg0, arg1)
				local function __FUNC_3783_(arg0, arg1)
					local function __FUNC_38FB_(arg0, arg1)
						local function __FUNC_3A73_(arg0, arg1)
							local function __FUNC_3BC8_(arg0, arg1)
								local function __FUNC_3D43_(arg0, arg1)
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
									__FUNC_3D43_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D43_)
							end

							if arg1.interrupted then
								__FUNC_3BC8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3BC8_)
						end

						if arg1.interrupted then
							__FUNC_3A73_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A73_)
					end

					if arg1.interrupted then
						__FUNC_38FB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38FB_)
				end

				if arg1.interrupted then
					__FUNC_3783_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3783_)
			end

			if arg1.interrupted then
				__FUNC_3608_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3608_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_34B1_(registerVal14, {})
		local function __FUNC_3EF5_(arg0, arg1)
			local function __FUNC_404C_(arg0, arg1)
				local function __FUNC_41C7_(arg0, arg1)
					local function __FUNC_431C_(arg0, arg1)
						local function __FUNC_4497_(arg0, arg1)
							local function __FUNC_45EC_(arg0, arg1)
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
								__FUNC_45EC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_45EC_)
						end

						if arg1.interrupted then
							__FUNC_4497_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4497_)
					end

					if arg1.interrupted then
						__FUNC_431C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_431C_)
				end

				if arg1.interrupted then
					__FUNC_41C7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_41C7_)
			end

			if arg1.interrupted then
				__FUNC_404C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_404C_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_3EF5_(registerVal15, {})
		local function __FUNC_47A1_(arg0, arg1)
			local function __FUNC_48F8_(arg0, arg1)
				local function __FUNC_4A73_(arg0, arg1)
					local function __FUNC_4BC8_(arg0, arg1)
						local function __FUNC_4D43_(arg0, arg1)
							local function __FUNC_4E98_(arg0, arg1)
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
								__FUNC_4E98_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4E98_)
						end

						if arg1.interrupted then
							__FUNC_4D43_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D43_)
					end

					if arg1.interrupted then
						__FUNC_4BC8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4BC8_)
				end

				if arg1.interrupted then
					__FUNC_4A73_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A73_)
			end

			if arg1.interrupted then
				__FUNC_48F8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_48F8_)
		end

		registerVal16:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_47A1_(registerVal16, {})
	end

	registerVal19.GainFocus = __FUNC_1F15_
	local function __FUNC_504D_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal19.Focus = __FUNC_504D_
	local function __FUNC_5206_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_5497_(arg0, arg1)
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

		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_5497_(registerVal6, {})
		local function __FUNC_5649_(arg0, arg1)
			local function __FUNC_57C3_(arg0, arg1)
				local function __FUNC_593B_(arg0, arg1)
					local function __FUNC_5AB3_(arg0, arg1)
						local function __FUNC_5C08_(arg0, arg1)
							local function __FUNC_5D83_(arg0, arg1)
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
								__FUNC_5D83_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5D83_)
						end

						if arg1.interrupted then
							__FUNC_5C08_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5C08_)
					end

					if arg1.interrupted then
						__FUNC_5AB3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5AB3_)
				end

				if arg1.interrupted then
					__FUNC_593B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_593B_)
			end

			if arg1.interrupted then
				__FUNC_57C3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_57C3_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_5649_(registerVal12, {})
		local function __FUNC_5F35_(arg0, arg1)
			local function __FUNC_60AF_(arg0, arg1)
				local function __FUNC_6227_(arg0, arg1)
					local function __FUNC_639F_(arg0, arg1)
						local function __FUNC_64F4_(arg0, arg1)
							local function __FUNC_666F_(arg0, arg1)
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
								__FUNC_666F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_666F_)
						end

						if arg1.interrupted then
							__FUNC_64F4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_64F4_)
					end

					if arg1.interrupted then
						__FUNC_639F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_639F_)
				end

				if arg1.interrupted then
					__FUNC_6227_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6227_)
			end

			if arg1.interrupted then
				__FUNC_60AF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_60AF_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_5F35_(registerVal13, {})
		local function __FUNC_6821_(arg0, arg1)
			local function __FUNC_6978_(arg0, arg1)
				local function __FUNC_6AF3_(arg0, arg1)
					local function __FUNC_6C6B_(arg0, arg1)
						local function __FUNC_6DE3_(arg0, arg1)
							local function __FUNC_6F38_(arg0, arg1)
								local function __FUNC_70B3_(arg0, arg1)
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
									__FUNC_70B3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_70B3_)
							end

							if arg1.interrupted then
								__FUNC_6F38_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6F38_)
						end

						if arg1.interrupted then
							__FUNC_6DE3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6DE3_)
					end

					if arg1.interrupted then
						__FUNC_6C6B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6C6B_)
				end

				if arg1.interrupted then
					__FUNC_6AF3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6AF3_)
			end

			if arg1.interrupted then
				__FUNC_6978_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6978_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_6821_(registerVal14, {})
		local function __FUNC_7265_(arg0, arg1)
			local function __FUNC_73BC_(arg0, arg1)
				local function __FUNC_7537_(arg0, arg1)
					local function __FUNC_768C_(arg0, arg1)
						local function __FUNC_7807_(arg0, arg1)
							local function __FUNC_795C_(arg0, arg1)
								local function __FUNC_7AD7_(arg0, arg1)
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
									__FUNC_7AD7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7AD7_)
							end

							if arg1.interrupted then
								__FUNC_795C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_795C_)
						end

						if arg1.interrupted then
							__FUNC_7807_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7807_)
					end

					if arg1.interrupted then
						__FUNC_768C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_768C_)
				end

				if arg1.interrupted then
					__FUNC_7537_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7537_)
			end

			if arg1.interrupted then
				__FUNC_73BC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_73BC_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_7265_(registerVal15, {})
		local function __FUNC_7C89_(arg0, arg1)
			local function __FUNC_7DE0_(arg0, arg1)
				local function __FUNC_7F5B_(arg0, arg1)
					local function __FUNC_80B0_(arg0, arg1)
						local function __FUNC_822B_(arg0, arg1)
							local function __FUNC_8380_(arg0, arg1)
								local function __FUNC_84FB_(arg0, arg1)
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
									__FUNC_84FB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_84FB_)
							end

							if arg1.interrupted then
								__FUNC_8380_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8380_)
						end

						if arg1.interrupted then
							__FUNC_822B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_822B_)
					end

					if arg1.interrupted then
						__FUNC_80B0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_80B0_)
				end

				if arg1.interrupted then
					__FUNC_7F5B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7F5B_)
			end

			if arg1.interrupted then
				__FUNC_7DE0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7DE0_)
		end

		registerVal16:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_7C89_(registerVal16, {})
	end

	registerVal19.LoseFocus = __FUNC_5206_
	registerVal18.DefaultState = registerVal19
	registerVal19 = {}
	local function __FUNC_86AD_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal7:completeAnimation()
		registerVal2.sizeElement:setLeftRight(true, false, 0.000000, 335.000000)
		registerVal2.sizeElement:setTopBottom(true, false, 0.000000, 38.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.categoryImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.colorList:setLeftRight(false, true, -115.000000, -22.000000)
		registerVal2.colorList:setTopBottom(false, false, -15.000000, 15.000000)
		registerVal2.colorList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal19.DefaultClip = __FUNC_86AD_
	local function __FUNC_89E2_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_8C73_(arg0, arg1)
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

		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		__FUNC_8C73_(registerVal6, {})
		local function __FUNC_8E25_(arg0, arg1)
			local function __FUNC_8F7C_(arg0, arg1)
				local function __FUNC_90F7_(arg0, arg1)
					local function __FUNC_924C_(arg0, arg1)
						local function __FUNC_93C7_(arg0, arg1)
							local function __FUNC_951C_(arg0, arg1)
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
								__FUNC_951C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_951C_)
						end

						if arg1.interrupted then
							__FUNC_93C7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_93C7_)
					end

					if arg1.interrupted then
						__FUNC_924C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_924C_)
				end

				if arg1.interrupted then
					__FUNC_90F7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_90F7_)
			end

			if arg1.interrupted then
				__FUNC_8F7C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8F7C_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_8E25_(registerVal12, {})
		local function __FUNC_96D1_(arg0, arg1)
			local function __FUNC_9828_(arg0, arg1)
				local function __FUNC_99A3_(arg0, arg1)
					local function __FUNC_9AF8_(arg0, arg1)
						local function __FUNC_9C73_(arg0, arg1)
							local function __FUNC_9DC8_(arg0, arg1)
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
								__FUNC_9DC8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9DC8_)
						end

						if arg1.interrupted then
							__FUNC_9C73_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9C73_)
					end

					if arg1.interrupted then
						__FUNC_9AF8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9AF8_)
				end

				if arg1.interrupted then
					__FUNC_99A3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_99A3_)
			end

			if arg1.interrupted then
				__FUNC_9828_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9828_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_96D1_(registerVal13, {})
		local function __FUNC_9F7D_(arg0, arg1)
			local function __FUNC_A0D4_(arg0, arg1)
				local function __FUNC_A24F_(arg0, arg1)
					local function __FUNC_A3C7_(arg0, arg1)
						local function __FUNC_A53F_(arg0, arg1)
							local function __FUNC_A694_(arg0, arg1)
								local function __FUNC_A80F_(arg0, arg1)
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
									__FUNC_A80F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A80F_)
							end

							if arg1.interrupted then
								__FUNC_A694_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A694_)
						end

						if arg1.interrupted then
							__FUNC_A53F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A53F_)
					end

					if arg1.interrupted then
						__FUNC_A3C7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A3C7_)
				end

				if arg1.interrupted then
					__FUNC_A24F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A24F_)
			end

			if arg1.interrupted then
				__FUNC_A0D4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A0D4_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_9F7D_(registerVal14, {})
		local function __FUNC_A9C1_(arg0, arg1)
			local function __FUNC_AB18_(arg0, arg1)
				local function __FUNC_AC93_(arg0, arg1)
					local function __FUNC_ADE8_(arg0, arg1)
						local function __FUNC_AF63_(arg0, arg1)
							local function __FUNC_B0B8_(arg0, arg1)
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
								__FUNC_B0B8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B0B8_)
						end

						if arg1.interrupted then
							__FUNC_AF63_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AF63_)
					end

					if arg1.interrupted then
						__FUNC_ADE8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ADE8_)
				end

				if arg1.interrupted then
					__FUNC_AC93_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AC93_)
			end

			if arg1.interrupted then
				__FUNC_AB18_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AB18_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_A9C1_(registerVal15, {})
		local function __FUNC_B26D_(arg0, arg1)
			local function __FUNC_B3C4_(arg0, arg1)
				local function __FUNC_B53F_(arg0, arg1)
					local function __FUNC_B694_(arg0, arg1)
						local function __FUNC_B80F_(arg0, arg1)
							local function __FUNC_B964_(arg0, arg1)
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
								__FUNC_B964_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B964_)
						end

						if arg1.interrupted then
							__FUNC_B80F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B80F_)
					end

					if arg1.interrupted then
						__FUNC_B694_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B694_)
				end

				if arg1.interrupted then
					__FUNC_B53F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B53F_)
			end

			if arg1.interrupted then
				__FUNC_B3C4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B3C4_)
		end

		registerVal16:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_B26D_(registerVal16, {})
	end

	registerVal19.GainFocus = __FUNC_89E2_
	local function __FUNC_BB19_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal19.Focus = __FUNC_BB19_
	local function __FUNC_BCD2_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_BF63_(arg0, arg1)
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

		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_BF63_(registerVal6, {})
		local function __FUNC_C115_(arg0, arg1)
			local function __FUNC_C28F_(arg0, arg1)
				local function __FUNC_C407_(arg0, arg1)
					local function __FUNC_C57F_(arg0, arg1)
						local function __FUNC_C6D4_(arg0, arg1)
							local function __FUNC_C84F_(arg0, arg1)
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
								__FUNC_C84F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C84F_)
						end

						if arg1.interrupted then
							__FUNC_C6D4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C6D4_)
					end

					if arg1.interrupted then
						__FUNC_C57F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C57F_)
				end

				if arg1.interrupted then
					__FUNC_C407_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C407_)
			end

			if arg1.interrupted then
				__FUNC_C28F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C28F_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_C115_(registerVal12, {})
		local function __FUNC_CA01_(arg0, arg1)
			local function __FUNC_CB7B_(arg0, arg1)
				local function __FUNC_CCF3_(arg0, arg1)
					local function __FUNC_CE6B_(arg0, arg1)
						local function __FUNC_CFC0_(arg0, arg1)
							local function __FUNC_D13B_(arg0, arg1)
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
								__FUNC_D13B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D13B_)
						end

						if arg1.interrupted then
							__FUNC_CFC0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CFC0_)
					end

					if arg1.interrupted then
						__FUNC_CE6B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CE6B_)
				end

				if arg1.interrupted then
					__FUNC_CCF3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CCF3_)
			end

			if arg1.interrupted then
				__FUNC_CB7B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CB7B_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_CA01_(registerVal13, {})
		local function __FUNC_D2ED_(arg0, arg1)
			local function __FUNC_D444_(arg0, arg1)
				local function __FUNC_D5BF_(arg0, arg1)
					local function __FUNC_D737_(arg0, arg1)
						local function __FUNC_D8AF_(arg0, arg1)
							local function __FUNC_DA04_(arg0, arg1)
								local function __FUNC_DB7F_(arg0, arg1)
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
									__FUNC_DB7F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DB7F_)
							end

							if arg1.interrupted then
								__FUNC_DA04_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DA04_)
						end

						if arg1.interrupted then
							__FUNC_D8AF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D8AF_)
					end

					if arg1.interrupted then
						__FUNC_D737_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D737_)
				end

				if arg1.interrupted then
					__FUNC_D5BF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D5BF_)
			end

			if arg1.interrupted then
				__FUNC_D444_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D444_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_D2ED_(registerVal14, {})
		local function __FUNC_DD31_(arg0, arg1)
			local function __FUNC_DE88_(arg0, arg1)
				local function __FUNC_E003_(arg0, arg1)
					local function __FUNC_E158_(arg0, arg1)
						local function __FUNC_E2D3_(arg0, arg1)
							local function __FUNC_E428_(arg0, arg1)
								local function __FUNC_E5A3_(arg0, arg1)
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
									__FUNC_E5A3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E5A3_)
							end

							if arg1.interrupted then
								__FUNC_E428_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E428_)
						end

						if arg1.interrupted then
							__FUNC_E2D3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E2D3_)
					end

					if arg1.interrupted then
						__FUNC_E158_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E158_)
				end

				if arg1.interrupted then
					__FUNC_E003_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E003_)
			end

			if arg1.interrupted then
				__FUNC_DE88_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DE88_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_DD31_(registerVal15, {})
		local function __FUNC_E755_(arg0, arg1)
			local function __FUNC_E8AC_(arg0, arg1)
				local function __FUNC_EA27_(arg0, arg1)
					local function __FUNC_EB7C_(arg0, arg1)
						local function __FUNC_ECF7_(arg0, arg1)
							local function __FUNC_EE4C_(arg0, arg1)
								local function __FUNC_EFC7_(arg0, arg1)
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
									__FUNC_EFC7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EFC7_)
							end

							if arg1.interrupted then
								__FUNC_EE4C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EE4C_)
						end

						if arg1.interrupted then
							__FUNC_ECF7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ECF7_)
					end

					if arg1.interrupted then
						__FUNC_EB7C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EB7C_)
				end

				if arg1.interrupted then
					__FUNC_EA27_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EA27_)
			end

			if arg1.interrupted then
				__FUNC_E8AC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E8AC_)
		end

		registerVal16:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_E755_(registerVal16, {})
	end

	registerVal19.LoseFocus = __FUNC_BCD2_
	registerVal18.ColorList = registerVal19
	registerVal19 = {}
	local function __FUNC_F179_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.sizeElement:setLeftRight(true, false, 0.000000, 335.000000)
		registerVal2.sizeElement:setTopBottom(true, false, 0.000000, 100.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.categoryImage:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.categoryImage:setAlpha(0.450000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.text:setAlpha(0.450000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.colorList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal19.DefaultClip = __FUNC_F179_
	local function __FUNC_F4EB_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_F77B_(arg0, arg1)
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

		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		__FUNC_F77B_(registerVal6, {})
		local function __FUNC_F92D_(arg0, arg1)
			local function __FUNC_FA84_(arg0, arg1)
				local function __FUNC_FBFF_(arg0, arg1)
					local function __FUNC_FD54_(arg0, arg1)
						local function __FUNC_FECF_(arg0, arg1)
							local function __FUNC_10024_(arg0, arg1)
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
								__FUNC_10024_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10024_)
						end

						if arg1.interrupted then
							__FUNC_FECF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FECF_)
					end

					if arg1.interrupted then
						__FUNC_FD54_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FD54_)
				end

				if arg1.interrupted then
					__FUNC_FBFF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FBFF_)
			end

			if arg1.interrupted then
				__FUNC_FA84_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FA84_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_F92D_(registerVal12, {})
		local function __FUNC_101D9_(arg0, arg1)
			local function __FUNC_10330_(arg0, arg1)
				local function __FUNC_104AB_(arg0, arg1)
					local function __FUNC_10600_(arg0, arg1)
						local function __FUNC_1077B_(arg0, arg1)
							local function __FUNC_108D0_(arg0, arg1)
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
								__FUNC_108D0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_108D0_)
						end

						if arg1.interrupted then
							__FUNC_1077B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1077B_)
					end

					if arg1.interrupted then
						__FUNC_10600_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10600_)
				end

				if arg1.interrupted then
					__FUNC_104AB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_104AB_)
			end

			if arg1.interrupted then
				__FUNC_10330_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10330_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_101D9_(registerVal13, {})
		local function __FUNC_10A85_(arg0, arg1)
			local function __FUNC_10BDC_(arg0, arg1)
				local function __FUNC_10D57_(arg0, arg1)
					local function __FUNC_10ECF_(arg0, arg1)
						local function __FUNC_11047_(arg0, arg1)
							local function __FUNC_1119C_(arg0, arg1)
								local function __FUNC_11317_(arg0, arg1)
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
									__FUNC_11317_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11317_)
							end

							if arg1.interrupted then
								__FUNC_1119C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1119C_)
						end

						if arg1.interrupted then
							__FUNC_11047_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11047_)
					end

					if arg1.interrupted then
						__FUNC_10ECF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10ECF_)
				end

				if arg1.interrupted then
					__FUNC_10D57_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10D57_)
			end

			if arg1.interrupted then
				__FUNC_10BDC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10BDC_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_10A85_(registerVal14, {})
		local function __FUNC_114C9_(arg0, arg1)
			local function __FUNC_11620_(arg0, arg1)
				local function __FUNC_1179B_(arg0, arg1)
					local function __FUNC_118F0_(arg0, arg1)
						local function __FUNC_11A6B_(arg0, arg1)
							local function __FUNC_11BC0_(arg0, arg1)
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
								__FUNC_11BC0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11BC0_)
						end

						if arg1.interrupted then
							__FUNC_11A6B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11A6B_)
					end

					if arg1.interrupted then
						__FUNC_118F0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_118F0_)
				end

				if arg1.interrupted then
					__FUNC_1179B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1179B_)
			end

			if arg1.interrupted then
				__FUNC_11620_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11620_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_114C9_(registerVal15, {})
		local function __FUNC_11D75_(arg0, arg1)
			local function __FUNC_11ECC_(arg0, arg1)
				local function __FUNC_12047_(arg0, arg1)
					local function __FUNC_1219C_(arg0, arg1)
						local function __FUNC_12317_(arg0, arg1)
							local function __FUNC_1246C_(arg0, arg1)
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
								__FUNC_1246C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1246C_)
						end

						if arg1.interrupted then
							__FUNC_12317_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12317_)
					end

					if arg1.interrupted then
						__FUNC_1219C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1219C_)
				end

				if arg1.interrupted then
					__FUNC_12047_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12047_)
			end

			if arg1.interrupted then
				__FUNC_11ECC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11ECC_)
		end

		registerVal16:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_11D75_(registerVal16, {})
	end

	registerVal19.GainFocus = __FUNC_F4EB_
	local function __FUNC_12621_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal2.text:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal19.Focus = __FUNC_12621_
	local function __FUNC_128FA_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_12B8B_(arg0, arg1)
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

		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_12B8B_(registerVal6, {})
		local function __FUNC_12D3D_(arg0, arg1)
			local function __FUNC_12EB7_(arg0, arg1)
				local function __FUNC_1302F_(arg0, arg1)
					local function __FUNC_131A7_(arg0, arg1)
						local function __FUNC_132FC_(arg0, arg1)
							local function __FUNC_13477_(arg0, arg1)
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
								__FUNC_13477_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13477_)
						end

						if arg1.interrupted then
							__FUNC_132FC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_132FC_)
					end

					if arg1.interrupted then
						__FUNC_131A7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_131A7_)
				end

				if arg1.interrupted then
					__FUNC_1302F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1302F_)
			end

			if arg1.interrupted then
				__FUNC_12EB7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12EB7_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_12D3D_(registerVal12, {})
		local function __FUNC_13629_(arg0, arg1)
			local function __FUNC_137A3_(arg0, arg1)
				local function __FUNC_1391B_(arg0, arg1)
					local function __FUNC_13A93_(arg0, arg1)
						local function __FUNC_13BE8_(arg0, arg1)
							local function __FUNC_13D63_(arg0, arg1)
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
								__FUNC_13D63_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13D63_)
						end

						if arg1.interrupted then
							__FUNC_13BE8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13BE8_)
					end

					if arg1.interrupted then
						__FUNC_13A93_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13A93_)
				end

				if arg1.interrupted then
					__FUNC_1391B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1391B_)
			end

			if arg1.interrupted then
				__FUNC_137A3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_137A3_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_13629_(registerVal13, {})
		local function __FUNC_13F15_(arg0, arg1)
			local function __FUNC_1406C_(arg0, arg1)
				local function __FUNC_141E7_(arg0, arg1)
					local function __FUNC_1435F_(arg0, arg1)
						local function __FUNC_144D7_(arg0, arg1)
							local function __FUNC_1462C_(arg0, arg1)
								local function __FUNC_147A7_(arg0, arg1)
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
									__FUNC_147A7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_147A7_)
							end

							if arg1.interrupted then
								__FUNC_1462C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1462C_)
						end

						if arg1.interrupted then
							__FUNC_144D7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_144D7_)
					end

					if arg1.interrupted then
						__FUNC_1435F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1435F_)
				end

				if arg1.interrupted then
					__FUNC_141E7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_141E7_)
			end

			if arg1.interrupted then
				__FUNC_1406C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1406C_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_13F15_(registerVal14, {})
		local function __FUNC_14959_(arg0, arg1)
			local function __FUNC_14AB0_(arg0, arg1)
				local function __FUNC_14C2B_(arg0, arg1)
					local function __FUNC_14D80_(arg0, arg1)
						local function __FUNC_14EFB_(arg0, arg1)
							local function __FUNC_15050_(arg0, arg1)
								local function __FUNC_151CB_(arg0, arg1)
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
									__FUNC_151CB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_151CB_)
							end

							if arg1.interrupted then
								__FUNC_15050_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15050_)
						end

						if arg1.interrupted then
							__FUNC_14EFB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14EFB_)
					end

					if arg1.interrupted then
						__FUNC_14D80_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14D80_)
				end

				if arg1.interrupted then
					__FUNC_14C2B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14C2B_)
			end

			if arg1.interrupted then
				__FUNC_14AB0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14AB0_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_14959_(registerVal15, {})
		local function __FUNC_1537D_(arg0, arg1)
			local function __FUNC_154D4_(arg0, arg1)
				local function __FUNC_1564F_(arg0, arg1)
					local function __FUNC_157A4_(arg0, arg1)
						local function __FUNC_1591F_(arg0, arg1)
							local function __FUNC_15A74_(arg0, arg1)
								local function __FUNC_15BEF_(arg0, arg1)
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
									__FUNC_15BEF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15BEF_)
							end

							if arg1.interrupted then
								__FUNC_15A74_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15A74_)
						end

						if arg1.interrupted then
							__FUNC_1591F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1591F_)
					end

					if arg1.interrupted then
						__FUNC_157A4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_157A4_)
				end

				if arg1.interrupted then
					__FUNC_1564F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1564F_)
			end

			if arg1.interrupted then
				__FUNC_154D4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_154D4_)
		end

		registerVal16:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_1537D_(registerVal16, {})
	end

	registerVal19.LoseFocus = __FUNC_128FA_
	registerVal18.Disabled = registerVal19
	registerVal2.clipsPerState = registerVal18
	registerVal20 = {}
	registerVal21 = {}
	registerVal21.stateName = "ColorList"
	local function __FUNC_15DA1_(arg0, arg2, arg3)
		return IsSelfModelValueNonEmptyString(arg2, arg1, "colorListDatasource")
	end

	registerVal21.condition = __FUNC_15DA1_
	local registerVal22 = {}
	registerVal22.stateName = "Disabled"
	local function __FUNC_15E29_(arg0, arg2, arg3)
		return IsDisabled(arg2, arg1)
	end

	registerVal22.condition = __FUNC_15E29_
	registerVal20 = {registerVal21, registerVal22}
	registerVal2:mergeStateConditions(registerVal20)
	local function __FUNC_15E7C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "colorListDatasource"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "colorListDatasource", true, __FUNC_15E7C_)
	local function __FUNC_15FA5_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabled", true, __FUNC_15FA5_)
	registerVal7.id = "sizeElement"
	local function __FUNC_160C2_(arg0, arg1)
		local registerVal2 = arg0.sizeElement:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_160C2_)
	local function __FUNC_161C7_(arg0)
		arg0.FETitleNumBrdr1:close()
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.BoxButtonLrgIdle:close()
		arg0.BoxButtonLrgInactive:close()
		arg0.text:close()
		arg0.colorList:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.FocusBorder:close()
		arg0.breadcrumbCount:close()
		arg0.categoryImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_161C7_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

