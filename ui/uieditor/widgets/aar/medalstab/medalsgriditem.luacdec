-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Barracks.PrestigeButton_label")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MedalsGridItem = registerVal1
function CoD.MedalsGridItem.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MedalsGridItem)
	registerVal2.id = "MedalsGridItem"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 177.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 150.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal3:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal3:setAlpha(0.400000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrgstrokefull"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal3:setShaderVector(0.000000, 0.088398, 0.103896, 0.000000, 0.000000)
	registerVal3:setupNineSliceShader(16.000000, 16.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxButtonLrgInactiveStroke = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal4:setTopBottom(true, true, -1.000000, 1.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrginactivediagfull"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal4:setShaderVector(0.000000, 0.132597, 0.157895, 0.000000, 0.000000)
	registerVal4:setupNineSliceShader(24.000000, 24.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BoxButtonLrgInactiveDiag = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal5:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal5:setAlpha(0.100000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrginactivefull"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal5:setShaderVector(0.000000, 0.120301, 0.120301, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.BoxButtonLrgInactive = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal6:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrgidlefull"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal6:setShaderVector(0.000000, 0.120301, 0.120301, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.BoxButtonLrgIdle = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -50.580000, 50.580000)
	registerVal7:setTopBottom(true, false, 23.170000, 124.330000)
	registerVal7:setupUIStreamedImage(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.MedalImageBacking = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -50.580000, 50.580000)
	registerVal8:setTopBottom(true, false, 23.170000, 124.330000)
	registerVal8:setupUIStreamedImage(0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.MedalImage = registerVal8
	local registerVal9 = CoD.PrestigeButton_label.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 3.000000, 79.000000)
	registerVal9:setTopBottom(false, true, -22.000000, -3.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.name = registerVal9
	local registerVal10 = CoD.PrestigeButton_label.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 3.000000, 28.000000)
	registerVal10:setTopBottom(false, true, -41.000000, -22.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.TimesEarned = registerVal10
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
	local registerVal14 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal14:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal14:setTopBottom(false, true, 0.000000, 4.000000)
	registerVal14:setZoom(1.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.FocusBarB = registerVal14
	local registerVal15 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal15:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal15:setTopBottom(true, false, -4.000000, 0.000000)
	registerVal15:setZoom(1.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.FocusBarT = registerVal15
	local function __FUNC_15BA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setImage(RegisterImage(GetAARMedalImageBackingSmall(registerVal1)))
		end
	end

	registerVal2.MedalImageBacking:linkToElementModel(registerVal2, "medalIndex", true, __FUNC_15BA_)
	local function __FUNC_169A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setImage(RegisterImage(GetAARMedalImageSmall(registerVal1)))
		end
	end

	registerVal2.MedalImage:linkToElementModel(registerVal2, "medalIndex", true, __FUNC_169A_)
	local function __FUNC_1773_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.name:setText(Engine.Localize(GetAARMedalName(registerVal1)))
		end
	end

	registerVal2.name:linkToElementModel(registerVal2, "medalIndex", true, __FUNC_1773_)
	local function __FUNC_1865_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setAlpha(HideIfEmptyString(registerVal1))
		end
	end

	registerVal2.TimesEarned:linkToElementModel(registerVal2, "medalTimesObtained", true, __FUNC_1865_)
	local function __FUNC_191C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.name:setText(Engine.Localize(LocalizeIntoString("MENU_MULTIPLIER_X", registerVal1)))
		end
	end

	registerVal2.TimesEarned:linkToElementModel(registerVal2, "medalTimesObtained", true, __FUNC_191C_)
	local registerVal16 = {}
	local registerVal17 = {}
	local function __FUNC_1A33_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveStroke:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal2.name:setLeftRight(true, false, 3.000000, 174.000000)
		registerVal2.name:setTopBottom(false, true, -22.000000, -3.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.TimesEarned:setLeftRight(true, false, 149.000000, 174.000000)
		registerVal2.TimesEarned:setTopBottom(false, true, -41.000000, -22.000000)
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
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_1A33_
	local function __FUNC_1F7F_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveStroke:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal2.name:setLeftRight(true, false, 3.000000, 174.000000)
		registerVal2.name:setTopBottom(false, true, -22.000000, -3.000000)
		registerVal2.name:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.TimesEarned:setLeftRight(true, false, 149.000000, 174.000000)
		registerVal2.TimesEarned:setTopBottom(false, true, -41.000000, -22.000000)
		registerVal2.clipFinished(registerVal10, {})
		local function __FUNC_24D8_(arg0, arg1)
			local function __FUNC_2630_(arg0, arg1)
				local function __FUNC_27AB_(arg0, arg1)
					local function __FUNC_2923_(arg0, arg1)
						local function __FUNC_2A9B_(arg0, arg1)
							local function __FUNC_2BF0_(arg0, arg1)
								local function __FUNC_2D6B_(arg0, arg1)
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
									__FUNC_2D6B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D6B_)
							end

							if arg1.interrupted then
								__FUNC_2BF0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BF0_)
						end

						if arg1.interrupted then
							__FUNC_2A9B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A9B_)
					end

					if arg1.interrupted then
						__FUNC_2923_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2923_)
				end

				if arg1.interrupted then
					__FUNC_27AB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27AB_)
			end

			if arg1.interrupted then
				__FUNC_2630_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2630_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_24D8_(registerVal11, {})
		local function __FUNC_2F1D_(arg0, arg1)
			local function __FUNC_3074_(arg0, arg1)
				local function __FUNC_31EF_(arg0, arg1)
					local function __FUNC_3344_(arg0, arg1)
						local function __FUNC_34BF_(arg0, arg1)
							local function __FUNC_3614_(arg0, arg1)
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
								__FUNC_3614_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3614_)
						end

						if arg1.interrupted then
							__FUNC_34BF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34BF_)
					end

					if arg1.interrupted then
						__FUNC_3344_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3344_)
				end

				if arg1.interrupted then
					__FUNC_31EF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31EF_)
			end

			if arg1.interrupted then
				__FUNC_3074_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3074_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_2F1D_(registerVal12, {})
		local function __FUNC_37C9_(arg0, arg1)
			local function __FUNC_3920_(arg0, arg1)
				local function __FUNC_3A9B_(arg0, arg1)
					local function __FUNC_3BF0_(arg0, arg1)
						local function __FUNC_3D6B_(arg0, arg1)
							local function __FUNC_3EC0_(arg0, arg1)
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
								__FUNC_3EC0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3EC0_)
						end

						if arg1.interrupted then
							__FUNC_3D6B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D6B_)
					end

					if arg1.interrupted then
						__FUNC_3BF0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3BF0_)
				end

				if arg1.interrupted then
					__FUNC_3A9B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A9B_)
			end

			if arg1.interrupted then
				__FUNC_3920_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3920_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_37C9_(registerVal13, {})
		local function __FUNC_4075_(arg0, arg1)
			local function __FUNC_41CC_(arg0, arg1)
				local function __FUNC_4347_(arg0, arg1)
					local function __FUNC_449C_(arg0, arg1)
						local function __FUNC_4617_(arg0, arg1)
							local function __FUNC_476C_(arg0, arg1)
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
								__FUNC_476C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_476C_)
						end

						if arg1.interrupted then
							__FUNC_4617_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4617_)
					end

					if arg1.interrupted then
						__FUNC_449C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_449C_)
				end

				if arg1.interrupted then
					__FUNC_4347_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4347_)
			end

			if arg1.interrupted then
				__FUNC_41CC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_41CC_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_4075_(registerVal14, {})
		local function __FUNC_4921_(arg0, arg1)
			local function __FUNC_4A78_(arg0, arg1)
				local function __FUNC_4BF3_(arg0, arg1)
					local function __FUNC_4D48_(arg0, arg1)
						local function __FUNC_4EC3_(arg0, arg1)
							local function __FUNC_5018_(arg0, arg1)
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
								__FUNC_5018_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5018_)
						end

						if arg1.interrupted then
							__FUNC_4EC3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4EC3_)
					end

					if arg1.interrupted then
						__FUNC_4D48_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D48_)
				end

				if arg1.interrupted then
					__FUNC_4BF3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4BF3_)
			end

			if arg1.interrupted then
				__FUNC_4A78_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A78_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_4921_(registerVal15, {})
	end

	registerVal17.GainFocus = __FUNC_1F7F_
	local function __FUNC_51CD_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveStroke:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal2.name:setLeftRight(true, false, 3.000000, 174.000000)
		registerVal2.name:setTopBottom(false, true, -22.000000, -3.000000)
		registerVal2.name:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.TimesEarned:setLeftRight(true, false, 149.000000, 174.000000)
		registerVal2.TimesEarned:setTopBottom(false, true, -41.000000, -22.000000)
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
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.Focus = __FUNC_51CD_
	local function __FUNC_573C_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveStroke:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_5C2E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		__FUNC_5C2E_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal2.name:setLeftRight(true, false, 3.000000, 174.000000)
		registerVal2.name:setTopBottom(false, true, -22.000000, -3.000000)
		registerVal2.name:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.TimesEarned:setLeftRight(true, false, 149.000000, 174.000000)
		registerVal2.TimesEarned:setTopBottom(false, true, -41.000000, -22.000000)
		registerVal2.clipFinished(registerVal10, {})
		local function __FUNC_5DE1_(arg0, arg1)
			local function __FUNC_5F38_(arg0, arg1)
				local function __FUNC_60B3_(arg0, arg1)
					local function __FUNC_622B_(arg0, arg1)
						local function __FUNC_63A3_(arg0, arg1)
							local function __FUNC_64F8_(arg0, arg1)
								local function __FUNC_6673_(arg0, arg1)
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
									__FUNC_6673_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6673_)
							end

							if arg1.interrupted then
								__FUNC_64F8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_64F8_)
						end

						if arg1.interrupted then
							__FUNC_63A3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_63A3_)
					end

					if arg1.interrupted then
						__FUNC_622B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_622B_)
				end

				if arg1.interrupted then
					__FUNC_60B3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_60B3_)
			end

			if arg1.interrupted then
				__FUNC_5F38_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5F38_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_5DE1_(registerVal11, {})
		local function __FUNC_6825_(arg0, arg1)
			local function __FUNC_697C_(arg0, arg1)
				local function __FUNC_6AF7_(arg0, arg1)
					local function __FUNC_6C4C_(arg0, arg1)
						local function __FUNC_6DC7_(arg0, arg1)
							local function __FUNC_6F1C_(arg0, arg1)
								local function __FUNC_7097_(arg0, arg1)
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
									__FUNC_7097_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7097_)
							end

							if arg1.interrupted then
								__FUNC_6F1C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6F1C_)
						end

						if arg1.interrupted then
							__FUNC_6DC7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6DC7_)
					end

					if arg1.interrupted then
						__FUNC_6C4C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6C4C_)
				end

				if arg1.interrupted then
					__FUNC_6AF7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6AF7_)
			end

			if arg1.interrupted then
				__FUNC_697C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_697C_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_6825_(registerVal12, {})
		local function __FUNC_7249_(arg0, arg1)
			local function __FUNC_73A0_(arg0, arg1)
				local function __FUNC_751B_(arg0, arg1)
					local function __FUNC_7670_(arg0, arg1)
						local function __FUNC_77EB_(arg0, arg1)
							local function __FUNC_7940_(arg0, arg1)
								local function __FUNC_7ABB_(arg0, arg1)
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
									__FUNC_7ABB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7ABB_)
							end

							if arg1.interrupted then
								__FUNC_7940_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7940_)
						end

						if arg1.interrupted then
							__FUNC_77EB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_77EB_)
					end

					if arg1.interrupted then
						__FUNC_7670_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7670_)
				end

				if arg1.interrupted then
					__FUNC_751B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_751B_)
			end

			if arg1.interrupted then
				__FUNC_73A0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_73A0_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_7249_(registerVal13, {})
		local function __FUNC_7C6D_(arg0, arg1)
			local function __FUNC_7DE7_(arg0, arg1)
				local function __FUNC_7F5F_(arg0, arg1)
					local function __FUNC_80D7_(arg0, arg1)
						local function __FUNC_822C_(arg0, arg1)
							local function __FUNC_83A7_(arg0, arg1)
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
								__FUNC_83A7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_83A7_)
						end

						if arg1.interrupted then
							__FUNC_822C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_822C_)
					end

					if arg1.interrupted then
						__FUNC_80D7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_80D7_)
				end

				if arg1.interrupted then
					__FUNC_7F5F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7F5F_)
			end

			if arg1.interrupted then
				__FUNC_7DE7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7DE7_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_7C6D_(registerVal14, {})
		local function __FUNC_8559_(arg0, arg1)
			local function __FUNC_86D3_(arg0, arg1)
				local function __FUNC_884B_(arg0, arg1)
					local function __FUNC_89C3_(arg0, arg1)
						local function __FUNC_8B18_(arg0, arg1)
							local function __FUNC_8C93_(arg0, arg1)
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
								__FUNC_8C93_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8C93_)
						end

						if arg1.interrupted then
							__FUNC_8B18_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8B18_)
					end

					if arg1.interrupted then
						__FUNC_89C3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_89C3_)
				end

				if arg1.interrupted then
					__FUNC_884B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_884B_)
			end

			if arg1.interrupted then
				__FUNC_86D3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_86D3_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_8559_(registerVal15, {})
	end

	registerVal17.LoseFocus = __FUNC_573C_
	registerVal16.Arabic = registerVal17
	registerVal17 = {}
	local function __FUNC_8E45_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal7:completeAnimation()
		registerVal2.MedalImageBacking:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.MedalImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal12:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_8E45_
	local function __FUNC_9101_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal7:completeAnimation()
		registerVal2.MedalImageBacking:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.MedalImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal12:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.Focus = __FUNC_9101_
	registerVal16.DefaultState_backup = registerVal17
	registerVal17 = {}
	local function __FUNC_93B8_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveStroke:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_93B8_
	local function __FUNC_97AA_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveStroke:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal2.name:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.clipFinished(registerVal10, {})
		local function __FUNC_9C05_(arg0, arg1)
			local function __FUNC_9D5C_(arg0, arg1)
				local function __FUNC_9ED7_(arg0, arg1)
					local function __FUNC_A04F_(arg0, arg1)
						local function __FUNC_A1C7_(arg0, arg1)
							local function __FUNC_A31C_(arg0, arg1)
								local function __FUNC_A497_(arg0, arg1)
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
									__FUNC_A497_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A497_)
							end

							if arg1.interrupted then
								__FUNC_A31C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A31C_)
						end

						if arg1.interrupted then
							__FUNC_A1C7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A1C7_)
					end

					if arg1.interrupted then
						__FUNC_A04F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A04F_)
				end

				if arg1.interrupted then
					__FUNC_9ED7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9ED7_)
			end

			if arg1.interrupted then
				__FUNC_9D5C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9D5C_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_9C05_(registerVal11, {})
		local function __FUNC_A649_(arg0, arg1)
			local function __FUNC_A7A0_(arg0, arg1)
				local function __FUNC_A91B_(arg0, arg1)
					local function __FUNC_AA70_(arg0, arg1)
						local function __FUNC_ABEB_(arg0, arg1)
							local function __FUNC_AD40_(arg0, arg1)
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
								__FUNC_AD40_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AD40_)
						end

						if arg1.interrupted then
							__FUNC_ABEB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ABEB_)
					end

					if arg1.interrupted then
						__FUNC_AA70_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AA70_)
				end

				if arg1.interrupted then
					__FUNC_A91B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A91B_)
			end

			if arg1.interrupted then
				__FUNC_A7A0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A7A0_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_A649_(registerVal12, {})
		local function __FUNC_AEF5_(arg0, arg1)
			local function __FUNC_B04C_(arg0, arg1)
				local function __FUNC_B1C7_(arg0, arg1)
					local function __FUNC_B31C_(arg0, arg1)
						local function __FUNC_B497_(arg0, arg1)
							local function __FUNC_B5EC_(arg0, arg1)
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
								__FUNC_B5EC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B5EC_)
						end

						if arg1.interrupted then
							__FUNC_B497_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B497_)
					end

					if arg1.interrupted then
						__FUNC_B31C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B31C_)
				end

				if arg1.interrupted then
					__FUNC_B1C7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B1C7_)
			end

			if arg1.interrupted then
				__FUNC_B04C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B04C_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_AEF5_(registerVal13, {})
		local function __FUNC_B7A1_(arg0, arg1)
			local function __FUNC_B8F8_(arg0, arg1)
				local function __FUNC_BA73_(arg0, arg1)
					local function __FUNC_BBC8_(arg0, arg1)
						local function __FUNC_BD43_(arg0, arg1)
							local function __FUNC_BE98_(arg0, arg1)
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
								__FUNC_BE98_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BE98_)
						end

						if arg1.interrupted then
							__FUNC_BD43_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BD43_)
					end

					if arg1.interrupted then
						__FUNC_BBC8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BBC8_)
				end

				if arg1.interrupted then
					__FUNC_BA73_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BA73_)
			end

			if arg1.interrupted then
				__FUNC_B8F8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B8F8_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_B7A1_(registerVal14, {})
		local function __FUNC_C04D_(arg0, arg1)
			local function __FUNC_C1A4_(arg0, arg1)
				local function __FUNC_C31F_(arg0, arg1)
					local function __FUNC_C474_(arg0, arg1)
						local function __FUNC_C5EF_(arg0, arg1)
							local function __FUNC_C744_(arg0, arg1)
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
								__FUNC_C744_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C744_)
						end

						if arg1.interrupted then
							__FUNC_C5EF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C5EF_)
					end

					if arg1.interrupted then
						__FUNC_C474_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C474_)
				end

				if arg1.interrupted then
					__FUNC_C31F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C31F_)
			end

			if arg1.interrupted then
				__FUNC_C1A4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C1A4_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_C04D_(registerVal15, {})
	end

	registerVal17.GainFocus = __FUNC_97AA_
	local function __FUNC_C8F9_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveStroke:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal2.name:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
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
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.Focus = __FUNC_C8F9_
	local function __FUNC_CD69_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveStroke:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_D15B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		__FUNC_D15B_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal2.name:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.clipFinished(registerVal10, {})
		local function __FUNC_D30D_(arg0, arg1)
			local function __FUNC_D464_(arg0, arg1)
				local function __FUNC_D5DF_(arg0, arg1)
					local function __FUNC_D757_(arg0, arg1)
						local function __FUNC_D8CF_(arg0, arg1)
							local function __FUNC_DA24_(arg0, arg1)
								local function __FUNC_DB9F_(arg0, arg1)
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
									__FUNC_DB9F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DB9F_)
							end

							if arg1.interrupted then
								__FUNC_DA24_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DA24_)
						end

						if arg1.interrupted then
							__FUNC_D8CF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D8CF_)
					end

					if arg1.interrupted then
						__FUNC_D757_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D757_)
				end

				if arg1.interrupted then
					__FUNC_D5DF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D5DF_)
			end

			if arg1.interrupted then
				__FUNC_D464_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D464_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_D30D_(registerVal11, {})
		local function __FUNC_DD51_(arg0, arg1)
			local function __FUNC_DEA8_(arg0, arg1)
				local function __FUNC_E023_(arg0, arg1)
					local function __FUNC_E178_(arg0, arg1)
						local function __FUNC_E2F3_(arg0, arg1)
							local function __FUNC_E448_(arg0, arg1)
								local function __FUNC_E5C3_(arg0, arg1)
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
									__FUNC_E5C3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E5C3_)
							end

							if arg1.interrupted then
								__FUNC_E448_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E448_)
						end

						if arg1.interrupted then
							__FUNC_E2F3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E2F3_)
					end

					if arg1.interrupted then
						__FUNC_E178_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E178_)
				end

				if arg1.interrupted then
					__FUNC_E023_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E023_)
			end

			if arg1.interrupted then
				__FUNC_DEA8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DEA8_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_DD51_(registerVal12, {})
		local function __FUNC_E775_(arg0, arg1)
			local function __FUNC_E8CC_(arg0, arg1)
				local function __FUNC_EA47_(arg0, arg1)
					local function __FUNC_EB9C_(arg0, arg1)
						local function __FUNC_ED17_(arg0, arg1)
							local function __FUNC_EE6C_(arg0, arg1)
								local function __FUNC_EFE7_(arg0, arg1)
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
									__FUNC_EFE7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EFE7_)
							end

							if arg1.interrupted then
								__FUNC_EE6C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EE6C_)
						end

						if arg1.interrupted then
							__FUNC_ED17_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ED17_)
					end

					if arg1.interrupted then
						__FUNC_EB9C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EB9C_)
				end

				if arg1.interrupted then
					__FUNC_EA47_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EA47_)
			end

			if arg1.interrupted then
				__FUNC_E8CC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E8CC_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_E775_(registerVal13, {})
		local function __FUNC_F199_(arg0, arg1)
			local function __FUNC_F313_(arg0, arg1)
				local function __FUNC_F48B_(arg0, arg1)
					local function __FUNC_F603_(arg0, arg1)
						local function __FUNC_F758_(arg0, arg1)
							local function __FUNC_F8D3_(arg0, arg1)
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
								__FUNC_F8D3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F8D3_)
						end

						if arg1.interrupted then
							__FUNC_F758_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F758_)
					end

					if arg1.interrupted then
						__FUNC_F603_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F603_)
				end

				if arg1.interrupted then
					__FUNC_F48B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F48B_)
			end

			if arg1.interrupted then
				__FUNC_F313_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F313_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_F199_(registerVal14, {})
		local function __FUNC_FA85_(arg0, arg1)
			local function __FUNC_FBFF_(arg0, arg1)
				local function __FUNC_FD77_(arg0, arg1)
					local function __FUNC_FEEF_(arg0, arg1)
						local function __FUNC_10044_(arg0, arg1)
							local function __FUNC_101BF_(arg0, arg1)
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
								__FUNC_101BF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_101BF_)
						end

						if arg1.interrupted then
							__FUNC_10044_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10044_)
					end

					if arg1.interrupted then
						__FUNC_FEEF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FEEF_)
				end

				if arg1.interrupted then
					__FUNC_FD77_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FD77_)
			end

			if arg1.interrupted then
				__FUNC_FBFF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FBFF_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_FA85_(registerVal15, {})
	end

	registerVal17.LoseFocus = __FUNC_CD69_
	registerVal16.DefaultState = registerVal17
	registerVal2.clipsPerState = registerVal16
	local registerVal18 = {}
	local registerVal19 = {}
	registerVal19.stateName = "Arabic"
	local function __FUNC_10371_(arg0, arg1, arg2)
		return IsCurrentLanguageArabic()
	end

	registerVal19.condition = __FUNC_10371_
	local registerVal20 = {}
	registerVal20.stateName = "DefaultState_backup"
	local function __FUNC_103C9_(arg0, arg1, arg2)
		return true
	end

	registerVal20.condition = __FUNC_103C9_
	registerVal18 = {registerVal19, registerVal20}
	registerVal2:mergeStateConditions(registerVal18)
	local function __FUNC_103FC_(arg0)
		arg0.name:close()
		arg0.TimesEarned:close()
		arg0.FocusBorder:close()
		arg0.FocusBarB:close()
		arg0.FocusBarT:close()
		arg0.MedalImageBacking:close()
		arg0.MedalImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_103FC_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

