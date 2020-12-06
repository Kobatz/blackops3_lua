-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.CAC.cac_ListButtonLabel")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.CAC.cac_FocusBarContainer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupsListButton = registerVal1
function CoD.GroupsListButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupsListButton)
	registerVal2.id = "GroupsListButton"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 50.000000)
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
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BoxButtonLrgInactive = registerVal4
	local registerVal5 = CoD.cac_ButtonBoxLrgIdle.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal5:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.BoxButtonLrgIdle = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 255.000000, 271.000000)
	registerVal6:setTopBottom(true, false, 17.000000, 33.000000)
	registerVal6:setRGB(0.550000, 0.770000, 0.250000)
	registerVal6:setScale(1.100000)
	registerVal6:setImage(RegisterImage("uie_t7_hud_cac_equipped_16"))
	registerVal2:addElement(registerVal6)
	registerVal2.SelectedIcon = registerVal6
	local registerVal7 = CoD.cac_ListButtonLabel.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 12.000000, 152.000000)
	registerVal7:setTopBottom(false, false, -10.000000, 10.000000)
	local function __FUNC_12EC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "displayText", true, __FUNC_12EC_)
	registerVal2:addElement(registerVal7)
	registerVal2.LabelButton0 = registerVal7
	local registerVal8 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, -2.500000, 2.000000)
	registerVal8:setTopBottom(true, false, -1.000000, 3.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setZoom(1.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.FocusBarT = registerVal8
	local registerVal9 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal9:setTopBottom(false, true, -3.000000, 1.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setZoom(1.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.FocusBarB = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, -12.000000, 7.000000)
	registerVal10:setTopBottom(true, false, -8.750000, 4.750000)
	registerVal10:setRGB(1.000000, 0.090000, 0.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.glitch = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, true, -8.500000, 8.500000)
	registerVal11:setTopBottom(false, true, -6.000000, 9.000000)
	registerVal11:setRGB(1.000000, 0.150000, 0.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.glitch2 = registerVal11
	local registerVal12 = CoD.cac_FocusBarContainer.new(arg0, arg1)
	registerVal12:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal12:setTopBottom(true, false, -2.000000, 3.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setZoom(1.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.FocusWhiteT = registerVal12
	local registerVal13 = CoD.cac_FocusBarContainer.new(arg0, arg1)
	registerVal13:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal13:setTopBottom(true, false, 46.500000, 51.500000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setZoom(1.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.FocusWhiteT0 = registerVal13
	local registerVal14 = {}
	local registerVal15 = {}
	local function __FUNC_13C4_()
		registerVal2:setupElementClipCounter(9.000000)
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
		registerVal2.SelectedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.LabelButton0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal15.DefaultClip = __FUNC_13C4_
	local function __FUNC_17BC_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_19F5_(arg0, arg1)
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
		__FUNC_19F5_(registerVal4, {})
		local function __FUNC_1BA9_(arg0, arg1)
			local function __FUNC_1D23_(arg0, arg1)
				local function __FUNC_1E9B_(arg0, arg1)
					local function __FUNC_2013_(arg0, arg1)
						local function __FUNC_218B_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_218B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_218B_)
					end

					if arg1.interrupted then
						__FUNC_2013_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.480000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2013_)
				end

				if arg1.interrupted then
					__FUNC_1E9B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E9B_)
			end

			if arg1.interrupted then
				__FUNC_1D23_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.370000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D23_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_1BA9_(registerVal8, {})
		local function __FUNC_233D_(arg0, arg1)
			local function __FUNC_24B7_(arg0, arg1)
				local function __FUNC_262F_(arg0, arg1)
					local function __FUNC_27A7_(arg0, arg1)
						local function __FUNC_291F_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_291F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_291F_)
					end

					if arg1.interrupted then
						__FUNC_27A7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.480000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27A7_)
				end

				if arg1.interrupted then
					__FUNC_262F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_262F_)
			end

			if arg1.interrupted then
				__FUNC_24B7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.370000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24B7_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_233D_(registerVal9, {})
		local function __FUNC_2AD1_(arg0, arg1)
			local function __FUNC_2C4B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2C4B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.430000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C4B_)
		end

		registerVal10:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_2AD1_(registerVal10, {})
		local function __FUNC_2DFD_(arg0, arg1)
			local function __FUNC_2F77_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2F77_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.430000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F77_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_2DFD_(registerVal11, {})
	end

	registerVal15.GainFocus = __FUNC_17BC_
	local function __FUNC_3129_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal15.Focus = __FUNC_3129_
	local function __FUNC_32E2_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_351E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
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
		__FUNC_351E_(registerVal4, {})
		local function __FUNC_36D1_(arg0, arg1)
			local function __FUNC_384B_(arg0, arg1)
				local function __FUNC_39C3_(arg0, arg1)
					local function __FUNC_3B3B_(arg0, arg1)
						local function __FUNC_3CB3_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_3CB3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.370000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3CB3_)
					end

					if arg1.interrupted then
						__FUNC_3B3B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B3B_)
				end

				if arg1.interrupted then
					__FUNC_39C3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.480000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39C3_)
			end

			if arg1.interrupted then
				__FUNC_384B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_384B_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_36D1_(registerVal8, {})
		local function __FUNC_3E65_(arg0, arg1)
			local function __FUNC_3FDF_(arg0, arg1)
				local function __FUNC_4157_(arg0, arg1)
					local function __FUNC_42CF_(arg0, arg1)
						local function __FUNC_4447_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_4447_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.370000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4447_)
					end

					if arg1.interrupted then
						__FUNC_42CF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42CF_)
				end

				if arg1.interrupted then
					__FUNC_4157_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.480000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4157_)
			end

			if arg1.interrupted then
				__FUNC_3FDF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3FDF_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_3E65_(registerVal9, {})
		local function __FUNC_45F9_(arg0, arg1)
			local function __FUNC_4773_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4773_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.430000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4773_)
		end

		registerVal10:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_45F9_(registerVal10, {})
		local function __FUNC_4925_(arg0, arg1)
			local function __FUNC_4A9F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4A9F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.430000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A9F_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_4925_(registerVal11, {})
	end

	registerVal15.LoseFocus = __FUNC_32E2_
	registerVal14.DefaultState = registerVal15
	registerVal15 = {}
	local function __FUNC_4C51_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal6:completeAnimation()
		registerVal2.SelectedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.LabelButton0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal10:completeAnimation()
		registerVal2.glitch:setLeftRight(true, true, -12.000000, 7.000000)
		registerVal2.glitch:setTopBottom(true, false, -8.750000, 4.750000)
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.glitch2:setLeftRight(true, true, -8.500000, 8.500000)
		registerVal2.glitch2:setTopBottom(false, true, -6.000000, 9.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal15.DefaultClip = __FUNC_4C51_
	local function __FUNC_4F68_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_51E2_(arg0, arg1)
			local function __FUNC_5338_(arg0, arg1)
				local function __FUNC_54B3_(arg0, arg1)
					local function __FUNC_5608_(arg0, arg1)
						local function __FUNC_5783_(arg0, arg1)
							local function __FUNC_58D8_(arg0, arg1)
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
								__FUNC_58D8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_58D8_)
						end

						if arg1.interrupted then
							__FUNC_5783_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5783_)
					end

					if arg1.interrupted then
						__FUNC_5608_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5608_)
				end

				if arg1.interrupted then
					__FUNC_54B3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_54B3_)
			end

			if arg1.interrupted then
				__FUNC_5338_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5338_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_51E2_(registerVal8, {})
		local function __FUNC_5A8D_(arg0, arg1)
			local function __FUNC_5BE4_(arg0, arg1)
				local function __FUNC_5D5F_(arg0, arg1)
					local function __FUNC_5EB4_(arg0, arg1)
						local function __FUNC_602F_(arg0, arg1)
							local function __FUNC_6184_(arg0, arg1)
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
								__FUNC_6184_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6184_)
						end

						if arg1.interrupted then
							__FUNC_602F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
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
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5D5F_)
			end

			if arg1.interrupted then
				__FUNC_5BE4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5BE4_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_5A8D_(registerVal9, {})
		local function __FUNC_6339_(arg0, arg1)
			local function __FUNC_6490_(arg0, arg1)
				local function __FUNC_660B_(arg0, arg1)
					local function __FUNC_6760_(arg0, arg1)
						local function __FUNC_68DB_(arg0, arg1)
							local function __FUNC_6A30_(arg0, arg1)
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
								__FUNC_6A30_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6A30_)
						end

						if arg1.interrupted then
							__FUNC_68DB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_68DB_)
					end

					if arg1.interrupted then
						__FUNC_6760_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6760_)
				end

				if arg1.interrupted then
					__FUNC_660B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_660B_)
			end

			if arg1.interrupted then
				__FUNC_6490_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6490_)
		end

		registerVal10:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		registerVal2.glitch:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_6339_(registerVal10, {})
		local function __FUNC_6C6F_(arg0, arg1)
			local function __FUNC_6DC4_(arg0, arg1)
				local function __FUNC_6F3F_(arg0, arg1)
					local function __FUNC_7094_(arg0, arg1)
						local function __FUNC_720F_(arg0, arg1)
							local function __FUNC_7364_(arg0, arg1)
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
								__FUNC_7364_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7364_)
						end

						if arg1.interrupted then
							__FUNC_720F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_720F_)
					end

					if arg1.interrupted then
						__FUNC_7094_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7094_)
				end

				if arg1.interrupted then
					__FUNC_6F3F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6F3F_)
			end

			if arg1.interrupted then
				__FUNC_6DC4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6DC4_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_6C6F_(registerVal11, {})
	end

	registerVal15.GainFocus = __FUNC_4F68_
	local function __FUNC_7519_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal15.Focus = __FUNC_7519_
	local function __FUNC_7670_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_7850_(arg0, arg1)
			local function __FUNC_79CB_(arg0, arg1)
				local function __FUNC_7B43_(arg0, arg1)
					local function __FUNC_7CBB_(arg0, arg1)
						local function __FUNC_7E10_(arg0, arg1)
							local function __FUNC_7F8B_(arg0, arg1)
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
								__FUNC_7F8B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7F8B_)
						end

						if arg1.interrupted then
							__FUNC_7E10_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7E10_)
					end

					if arg1.interrupted then
						__FUNC_7CBB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7CBB_)
				end

				if arg1.interrupted then
					__FUNC_7B43_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7B43_)
			end

			if arg1.interrupted then
				__FUNC_79CB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_79CB_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_7850_(registerVal8, {})
		local function __FUNC_813D_(arg0, arg1)
			local function __FUNC_82B7_(arg0, arg1)
				local function __FUNC_842F_(arg0, arg1)
					local function __FUNC_85A7_(arg0, arg1)
						local function __FUNC_86FC_(arg0, arg1)
							local function __FUNC_8877_(arg0, arg1)
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
								__FUNC_8877_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8877_)
						end

						if arg1.interrupted then
							__FUNC_86FC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_86FC_)
					end

					if arg1.interrupted then
						__FUNC_85A7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_85A7_)
				end

				if arg1.interrupted then
					__FUNC_842F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_842F_)
			end

			if arg1.interrupted then
				__FUNC_82B7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_82B7_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_813D_(registerVal9, {})
		local function __FUNC_8A29_(arg0, arg1)
			local function __FUNC_8B80_(arg0, arg1)
				local function __FUNC_8CFB_(arg0, arg1)
					local function __FUNC_8E50_(arg0, arg1)
						local function __FUNC_8FCB_(arg0, arg1)
							local function __FUNC_9120_(arg0, arg1)
								local function __FUNC_929B_(arg0, arg1)
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
									__FUNC_929B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_929B_)
							end

							if arg1.interrupted then
								__FUNC_9120_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9120_)
						end

						if arg1.interrupted then
							__FUNC_8FCB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8FCB_)
					end

					if arg1.interrupted then
						__FUNC_8E50_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8E50_)
				end

				if arg1.interrupted then
					__FUNC_8CFB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8CFB_)
			end

			if arg1.interrupted then
				__FUNC_8B80_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8B80_)
		end

		registerVal10:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_8A29_(registerVal10, {})
		local function __FUNC_944D_(arg0, arg1)
			local function __FUNC_95A4_(arg0, arg1)
				local function __FUNC_971F_(arg0, arg1)
					local function __FUNC_9874_(arg0, arg1)
						local function __FUNC_99EF_(arg0, arg1)
							local function __FUNC_9B44_(arg0, arg1)
								local function __FUNC_9CBF_(arg0, arg1)
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
									__FUNC_9CBF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9CBF_)
							end

							if arg1.interrupted then
								__FUNC_9B44_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9B44_)
						end

						if arg1.interrupted then
							__FUNC_99EF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_99EF_)
					end

					if arg1.interrupted then
						__FUNC_9874_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9874_)
				end

				if arg1.interrupted then
					__FUNC_971F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_971F_)
			end

			if arg1.interrupted then
				__FUNC_95A4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_95A4_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_944D_(registerVal11, {})
	end

	registerVal15.LoseFocus = __FUNC_7670_
	registerVal14.WithSelectedIcon = registerVal15
	registerVal15 = {}
	local function __FUNC_9E71_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal6:completeAnimation()
		registerVal2.SelectedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal15.DefaultClip = __FUNC_9E71_
	registerVal14.Header = registerVal15
	registerVal15 = {}
	local function __FUNC_9F74_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.SelectedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.LabelButton0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal15.DefaultClip = __FUNC_9F74_
	local function __FUNC_A371_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_A6B1_(arg0, arg1)
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
		__FUNC_A6B1_(registerVal4, {})
		local function __FUNC_A865_(arg0, arg1)
			local function __FUNC_A9BC_(arg0, arg1)
				local function __FUNC_AB14_(arg0, arg1)
					local function __FUNC_AC6C_(arg0, arg1)
						local function __FUNC_ADC4_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_ADC4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ADC4_)
					end

					if arg1.interrupted then
						__FUNC_AC6C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AC6C_)
				end

				if arg1.interrupted then
					__FUNC_AB14_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AB14_)
			end

			if arg1.interrupted then
				__FUNC_A9BC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A9BC_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_A865_(registerVal8, {})
		local function __FUNC_AF79_(arg0, arg1)
			local function __FUNC_B0D0_(arg0, arg1)
				local function __FUNC_B228_(arg0, arg1)
					local function __FUNC_B380_(arg0, arg1)
						local function __FUNC_B4D8_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_B4D8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B4D8_)
					end

					if arg1.interrupted then
						__FUNC_B380_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B380_)
				end

				if arg1.interrupted then
					__FUNC_B228_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B228_)
			end

			if arg1.interrupted then
				__FUNC_B0D0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B0D0_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_AF79_(registerVal9, {})
		local function __FUNC_B68D_(arg0, arg1)
			local function __FUNC_B807_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(1.000000, 1.000000, 1.000000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_B807_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.430000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B807_)
		end

		registerVal10:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_B68D_(registerVal10, {})
		local function __FUNC_B9E2_(arg0, arg1)
			local function __FUNC_BB5B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(1.000000, 1.000000, 1.000000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_BB5B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.430000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BB5B_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_B9E2_(registerVal11, {})
		local function __FUNC_BD36_(arg0, arg1)
			local function __FUNC_BEAF_(arg0, arg1)
				local function __FUNC_C027_(arg0, arg1)
					local function __FUNC_C19F_(arg0, arg1)
						local function __FUNC_C317_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_C317_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C317_)
					end

					if arg1.interrupted then
						__FUNC_C19F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.480000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C19F_)
				end

				if arg1.interrupted then
					__FUNC_C027_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C027_)
			end

			if arg1.interrupted then
				__FUNC_BEAF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.250000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BEAF_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusWhiteT:setAlpha(0.000000)
		__FUNC_BD36_(registerVal12, {})
		local function __FUNC_C4C9_(arg0, arg1)
			local function __FUNC_C643_(arg0, arg1)
				local function __FUNC_C7BB_(arg0, arg1)
					local function __FUNC_C933_(arg0, arg1)
						local function __FUNC_CAAB_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_CAAB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CAAB_)
					end

					if arg1.interrupted then
						__FUNC_C933_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.480000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C933_)
				end

				if arg1.interrupted then
					__FUNC_C7BB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C7BB_)
			end

			if arg1.interrupted then
				__FUNC_C643_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.250000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C643_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusWhiteT0:setAlpha(0.000000)
		__FUNC_C4C9_(registerVal13, {})
	end

	registerVal15.GainFocus = __FUNC_A371_
	local function __FUNC_CC5D_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal12:completeAnimation()
		registerVal2.FocusWhiteT:setLeftRight(true, true, -2.000000, 2.000000)
		registerVal2.FocusWhiteT:setTopBottom(true, false, -2.000000, 3.000000)
		registerVal2.FocusWhiteT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusWhiteT0:setLeftRight(true, true, -2.000000, 2.000000)
		registerVal2.FocusWhiteT0:setTopBottom(true, false, 46.500000, 51.500000)
		registerVal2.FocusWhiteT0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.Focus = __FUNC_CC5D_
	local function __FUNC_CFB3_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_D2F1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
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
		__FUNC_D2F1_(registerVal4, {})
		local function __FUNC_D4A5_(arg0, arg1)
			local function __FUNC_D5FC_(arg0, arg1)
				local function __FUNC_D754_(arg0, arg1)
					local function __FUNC_D8AC_(arg0, arg1)
						local function __FUNC_DA04_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_DA04_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DA04_)
					end

					if arg1.interrupted then
						__FUNC_D8AC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D8AC_)
				end

				if arg1.interrupted then
					__FUNC_D754_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D754_)
			end

			if arg1.interrupted then
				__FUNC_D5FC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D5FC_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_D4A5_(registerVal8, {})
		local function __FUNC_DBB9_(arg0, arg1)
			local function __FUNC_DD10_(arg0, arg1)
				local function __FUNC_DE68_(arg0, arg1)
					local function __FUNC_DFC0_(arg0, arg1)
						local function __FUNC_E118_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_E118_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E118_)
					end

					if arg1.interrupted then
						__FUNC_DFC0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DFC0_)
				end

				if arg1.interrupted then
					__FUNC_DE68_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DE68_)
			end

			if arg1.interrupted then
				__FUNC_DD10_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DD10_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_DBB9_(registerVal9, {})
		local function __FUNC_E2CD_(arg0, arg1)
			local function __FUNC_E447_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(1.000000, 1.000000, 1.000000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_E447_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.430000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E447_)
		end

		registerVal10:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_E2CD_(registerVal10, {})
		local function __FUNC_E622_(arg0, arg1)
			local function __FUNC_E79B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(1.000000, 1.000000, 1.000000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_E79B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.430000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E79B_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_E622_(registerVal11, {})
		local function __FUNC_E976_(arg0, arg1)
			local function __FUNC_EAEF_(arg0, arg1)
				local function __FUNC_EC67_(arg0, arg1)
					local function __FUNC_EDDF_(arg0, arg1)
						local function __FUNC_EF57_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_EF57_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.370000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EF57_)
					end

					if arg1.interrupted then
						__FUNC_EDDF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EDDF_)
				end

				if arg1.interrupted then
					__FUNC_EC67_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.480000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EC67_)
			end

			if arg1.interrupted then
				__FUNC_EAEF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EAEF_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusWhiteT:setAlpha(1.000000)
		__FUNC_E976_(registerVal12, {})
		local function __FUNC_F109_(arg0, arg1)
			local function __FUNC_F283_(arg0, arg1)
				local function __FUNC_F3FB_(arg0, arg1)
					local function __FUNC_F573_(arg0, arg1)
						local function __FUNC_F6EB_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_F6EB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.370000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F6EB_)
					end

					if arg1.interrupted then
						__FUNC_F573_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F573_)
				end

				if arg1.interrupted then
					__FUNC_F3FB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.480000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F3FB_)
			end

			if arg1.interrupted then
				__FUNC_F283_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F283_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusWhiteT0:setAlpha(1.000000)
		__FUNC_F109_(registerVal13, {})
	end

	registerVal15.LoseFocus = __FUNC_CFB3_
	registerVal14.Disabled = registerVal15
	registerVal2.clipsPerState = registerVal14
	local registerVal16 = {}
	local registerVal17 = {}
	registerVal17.stateName = "WithSelectedIcon"
	local function __FUNC_F89D_(arg0, arg1, arg2)
		return DoesGroupListHaveSelectedIcon(arg1)
	end

	registerVal17.condition = __FUNC_F89D_
	local registerVal18 = {}
	registerVal18.stateName = "Header"
	local function __FUNC_F8FF_(arg0, arg1, arg2)
		return IsGroupListHeader(arg1)
	end

	registerVal18.condition = __FUNC_F8FF_
	local registerVal19 = {}
	registerVal19.stateName = "Disabled"
	local function __FUNC_F953_(arg0, arg2, arg3)
		return IsDisabled(arg2, arg1)
	end

	registerVal19.condition = __FUNC_F953_
	registerVal16 = {registerVal17, registerVal18, registerVal19}
	registerVal2:mergeStateConditions(registerVal16)
	local function __FUNC_F9A4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabled", true, __FUNC_F9A4_)
	local function __FUNC_FAC2_(arg0)
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.BoxButtonLrgInactive:close()
		arg0.BoxButtonLrgIdle:close()
		arg0.LabelButton0:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.FocusWhiteT:close()
		arg0.FocusWhiteT0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_FAC2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

