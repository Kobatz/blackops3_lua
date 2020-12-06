-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyMemberBackingFooter")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.Common.common_ButtonLabel_01")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.List1ButtonLarge_Left_wHeader = registerVal1
function CoD.List1ButtonLarge_Left_wHeader.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.List1ButtonLarge_Left_wHeader)
	registerVal2.id = "List1ButtonLarge_Left_wHeader"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 365.000000)
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
	local registerVal6 = CoD.LobbyMemberBackingFooter.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, -2.500000, 2.000000)
	registerVal6:setTopBottom(false, false, 11.000000, 14.000000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.LobbyMemberBackingFooter0 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, true, -26.180000, -10.180000)
	registerVal7:setTopBottom(false, false, -8.090000, 7.920000)
	registerVal7:setRGB(0.550000, 0.770000, 0.250000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_hud_cac_equipped_16"))
	registerVal2:addElement(registerVal7)
	registerVal2.SelectedIcon = registerVal7
	local registerVal8 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, -1.750000, 1.750000)
	registerVal8:setTopBottom(true, false, -4.000000, 0.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setZoom(1.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.FocusBarT = registerVal8
	local registerVal9 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, -1.750000, 1.750000)
	registerVal9:setTopBottom(false, true, 0.000000, 4.000000)
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
	local registerVal13 = IsPC()
	if registerVal13 then
		registerVal13 = LUI.UIImage.new()
	else
		registerVal13 = LUI.UIElement.createFake()
	end
	registerVal13:setLeftRight(true, true, -12.000000, 7.000000)
	registerVal13:setTopBottom(true, false, -8.750000, 4.750000)
	registerVal13:setRGB(1.000000, 0.090000, 0.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal13 = IsPC()
	if registerVal13 then
		registerVal2:addElement(registerVal13)
	end
	registerVal2.glitch0 = registerVal13
	registerVal13 = CoD.common_ButtonLabel_01.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 12.820000, 351.820000)
	registerVal13:setTopBottom(true, false, 16.000000, 36.000000)
	local function __FUNC_12BC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal13:linkToElementModel(registerVal2, "displayText", true, __FUNC_12BC_)
	registerVal2:addElement(registerVal13)
	registerVal2.commonButtonLabel = registerVal13
	local registerVal14 = {}
	local registerVal15 = {}
	local function __FUNC_1394_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
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

	registerVal15.DefaultClip = __FUNC_1394_
	local function __FUNC_16C0_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_18F9_(arg0, arg1)
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
		__FUNC_18F9_(registerVal4, {})
		local function __FUNC_1AAD_(arg0, arg1)
			local function __FUNC_1C27_(arg0, arg1)
				local function __FUNC_1D9F_(arg0, arg1)
					local function __FUNC_1F17_(arg0, arg1)
						local function __FUNC_208F_(arg0, arg1)
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
							__FUNC_208F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_208F_)
					end

					if arg1.interrupted then
						__FUNC_1F17_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.480000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F17_)
				end

				if arg1.interrupted then
					__FUNC_1D9F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D9F_)
			end

			if arg1.interrupted then
				__FUNC_1C27_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.370000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C27_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_1AAD_(registerVal8, {})
		local function __FUNC_2241_(arg0, arg1)
			local function __FUNC_23BB_(arg0, arg1)
				local function __FUNC_2533_(arg0, arg1)
					local function __FUNC_26AB_(arg0, arg1)
						local function __FUNC_2823_(arg0, arg1)
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
							__FUNC_2823_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2823_)
					end

					if arg1.interrupted then
						__FUNC_26AB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.480000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26AB_)
				end

				if arg1.interrupted then
					__FUNC_2533_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2533_)
			end

			if arg1.interrupted then
				__FUNC_23BB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.370000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23BB_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_2241_(registerVal9, {})
		local function __FUNC_29D5_(arg0, arg1)
			local function __FUNC_2B4F_(arg0, arg1)
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
				__FUNC_2B4F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.430000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B4F_)
		end

		registerVal10:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_29D5_(registerVal10, {})
		local function __FUNC_2D01_(arg0, arg1)
			local function __FUNC_2E7B_(arg0, arg1)
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
				__FUNC_2E7B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.430000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E7B_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_2D01_(registerVal11, {})
	end

	registerVal15.GainFocus = __FUNC_16C0_
	local function __FUNC_302D_()
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

	registerVal15.Focus = __FUNC_302D_
	local function __FUNC_31E6_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_3422_(arg0, arg1)
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
		__FUNC_3422_(registerVal4, {})
		local function __FUNC_35D5_(arg0, arg1)
			local function __FUNC_374F_(arg0, arg1)
				local function __FUNC_38C7_(arg0, arg1)
					local function __FUNC_3A3F_(arg0, arg1)
						local function __FUNC_3BB7_(arg0, arg1)
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
							__FUNC_3BB7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.370000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3BB7_)
					end

					if arg1.interrupted then
						__FUNC_3A3F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A3F_)
				end

				if arg1.interrupted then
					__FUNC_38C7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.480000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38C7_)
			end

			if arg1.interrupted then
				__FUNC_374F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_374F_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_35D5_(registerVal8, {})
		local function __FUNC_3D69_(arg0, arg1)
			local function __FUNC_3EE3_(arg0, arg1)
				local function __FUNC_405B_(arg0, arg1)
					local function __FUNC_41D3_(arg0, arg1)
						local function __FUNC_434B_(arg0, arg1)
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
							__FUNC_434B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.370000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_434B_)
					end

					if arg1.interrupted then
						__FUNC_41D3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_41D3_)
				end

				if arg1.interrupted then
					__FUNC_405B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.480000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_405B_)
			end

			if arg1.interrupted then
				__FUNC_3EE3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3EE3_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_3D69_(registerVal9, {})
		local function __FUNC_44FD_(arg0, arg1)
			local function __FUNC_4677_(arg0, arg1)
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
				__FUNC_4677_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.430000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4677_)
		end

		registerVal10:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_44FD_(registerVal10, {})
		local function __FUNC_4829_(arg0, arg1)
			local function __FUNC_49A3_(arg0, arg1)
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
				__FUNC_49A3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.430000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_49A3_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_4829_(registerVal11, {})
	end

	registerVal15.LoseFocus = __FUNC_31E6_
	registerVal14.DefaultState = registerVal15
	registerVal15 = {}
	local function __FUNC_4B55_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal7:completeAnimation()
		registerVal2.SelectedIcon:setAlpha(0.000000)
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

	registerVal15.DefaultClip = __FUNC_4B55_
	local function __FUNC_4DF5_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_506E_(arg0, arg1)
			local function __FUNC_51C4_(arg0, arg1)
				local function __FUNC_533F_(arg0, arg1)
					local function __FUNC_5494_(arg0, arg1)
						local function __FUNC_560F_(arg0, arg1)
							local function __FUNC_5764_(arg0, arg1)
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
								__FUNC_5764_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5764_)
						end

						if arg1.interrupted then
							__FUNC_560F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_560F_)
					end

					if arg1.interrupted then
						__FUNC_5494_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5494_)
				end

				if arg1.interrupted then
					__FUNC_533F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_533F_)
			end

			if arg1.interrupted then
				__FUNC_51C4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_51C4_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_506E_(registerVal8, {})
		local function __FUNC_5919_(arg0, arg1)
			local function __FUNC_5A70_(arg0, arg1)
				local function __FUNC_5BEB_(arg0, arg1)
					local function __FUNC_5D40_(arg0, arg1)
						local function __FUNC_5EBB_(arg0, arg1)
							local function __FUNC_6010_(arg0, arg1)
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
								__FUNC_6010_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6010_)
						end

						if arg1.interrupted then
							__FUNC_5EBB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5EBB_)
					end

					if arg1.interrupted then
						__FUNC_5D40_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5D40_)
				end

				if arg1.interrupted then
					__FUNC_5BEB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5BEB_)
			end

			if arg1.interrupted then
				__FUNC_5A70_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5A70_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_5919_(registerVal9, {})
		local function __FUNC_61C5_(arg0, arg1)
			local function __FUNC_631C_(arg0, arg1)
				local function __FUNC_6497_(arg0, arg1)
					local function __FUNC_65EC_(arg0, arg1)
						local function __FUNC_6767_(arg0, arg1)
							local function __FUNC_68BC_(arg0, arg1)
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
								__FUNC_68BC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_68BC_)
						end

						if arg1.interrupted then
							__FUNC_6767_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6767_)
					end

					if arg1.interrupted then
						__FUNC_65EC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_65EC_)
				end

				if arg1.interrupted then
					__FUNC_6497_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6497_)
			end

			if arg1.interrupted then
				__FUNC_631C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_631C_)
		end

		registerVal10:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		registerVal2.glitch:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_61C5_(registerVal10, {})
		local function __FUNC_6AFB_(arg0, arg1)
			local function __FUNC_6C50_(arg0, arg1)
				local function __FUNC_6DCB_(arg0, arg1)
					local function __FUNC_6F20_(arg0, arg1)
						local function __FUNC_709B_(arg0, arg1)
							local function __FUNC_71F0_(arg0, arg1)
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
								__FUNC_71F0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_71F0_)
						end

						if arg1.interrupted then
							__FUNC_709B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_709B_)
					end

					if arg1.interrupted then
						__FUNC_6F20_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6F20_)
				end

				if arg1.interrupted then
					__FUNC_6DCB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6DCB_)
			end

			if arg1.interrupted then
				__FUNC_6C50_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6C50_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_6AFB_(registerVal11, {})
	end

	registerVal15.GainFocus = __FUNC_4DF5_
	local function __FUNC_73A5_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal15.Focus = __FUNC_73A5_
	local function __FUNC_74FC_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_76DC_(arg0, arg1)
			local function __FUNC_7857_(arg0, arg1)
				local function __FUNC_79CF_(arg0, arg1)
					local function __FUNC_7B47_(arg0, arg1)
						local function __FUNC_7C9C_(arg0, arg1)
							local function __FUNC_7E17_(arg0, arg1)
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
								__FUNC_7E17_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7E17_)
						end

						if arg1.interrupted then
							__FUNC_7C9C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7C9C_)
					end

					if arg1.interrupted then
						__FUNC_7B47_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7B47_)
				end

				if arg1.interrupted then
					__FUNC_79CF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_79CF_)
			end

			if arg1.interrupted then
				__FUNC_7857_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7857_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_76DC_(registerVal8, {})
		local function __FUNC_7FC9_(arg0, arg1)
			local function __FUNC_8143_(arg0, arg1)
				local function __FUNC_82BB_(arg0, arg1)
					local function __FUNC_8433_(arg0, arg1)
						local function __FUNC_8588_(arg0, arg1)
							local function __FUNC_8703_(arg0, arg1)
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
								__FUNC_8703_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8703_)
						end

						if arg1.interrupted then
							__FUNC_8588_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8588_)
					end

					if arg1.interrupted then
						__FUNC_8433_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8433_)
				end

				if arg1.interrupted then
					__FUNC_82BB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_82BB_)
			end

			if arg1.interrupted then
				__FUNC_8143_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8143_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_7FC9_(registerVal9, {})
		local function __FUNC_88B5_(arg0, arg1)
			local function __FUNC_8A0C_(arg0, arg1)
				local function __FUNC_8B87_(arg0, arg1)
					local function __FUNC_8CDC_(arg0, arg1)
						local function __FUNC_8E57_(arg0, arg1)
							local function __FUNC_8FAC_(arg0, arg1)
								local function __FUNC_9127_(arg0, arg1)
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
									__FUNC_9127_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9127_)
							end

							if arg1.interrupted then
								__FUNC_8FAC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8FAC_)
						end

						if arg1.interrupted then
							__FUNC_8E57_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8E57_)
					end

					if arg1.interrupted then
						__FUNC_8CDC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8CDC_)
				end

				if arg1.interrupted then
					__FUNC_8B87_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8B87_)
			end

			if arg1.interrupted then
				__FUNC_8A0C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8A0C_)
		end

		registerVal10:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_88B5_(registerVal10, {})
		local function __FUNC_92D9_(arg0, arg1)
			local function __FUNC_9430_(arg0, arg1)
				local function __FUNC_95AB_(arg0, arg1)
					local function __FUNC_9700_(arg0, arg1)
						local function __FUNC_987B_(arg0, arg1)
							local function __FUNC_99D0_(arg0, arg1)
								local function __FUNC_9B4B_(arg0, arg1)
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
									__FUNC_9B4B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9B4B_)
							end

							if arg1.interrupted then
								__FUNC_99D0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_99D0_)
						end

						if arg1.interrupted then
							__FUNC_987B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_987B_)
					end

					if arg1.interrupted then
						__FUNC_9700_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9700_)
				end

				if arg1.interrupted then
					__FUNC_95AB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_95AB_)
			end

			if arg1.interrupted then
				__FUNC_9430_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9430_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_92D9_(registerVal11, {})
	end

	registerVal15.LoseFocus = __FUNC_74FC_
	registerVal14.WithSelectedIcon = registerVal15
	registerVal15 = {}
	local function __FUNC_9CFD_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal6:completeAnimation()
		registerVal2.LobbyMemberBackingFooter0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.SelectedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal15.DefaultClip = __FUNC_9CFD_
	registerVal14.Header = registerVal15
	registerVal2.clipsPerState = registerVal14
	local registerVal16 = {}
	local registerVal17 = {}
	registerVal17.stateName = "WithSelectedIcon"
	local function __FUNC_9E67_(arg0, arg1, arg2)
		return DoesGroupListHaveSelectedIcon(arg1)
	end

	registerVal17.condition = __FUNC_9E67_
	local registerVal18 = {}
	registerVal18.stateName = "Header"
	local function __FUNC_9EC7_(arg0, arg1, arg2)
		return IsGroupListHeader(arg1)
	end

	registerVal18.condition = __FUNC_9EC7_
	registerVal16 = {registerVal17, registerVal18}
	registerVal2:mergeStateConditions(registerVal16)
	local function __FUNC_9F1B_(arg0)
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.BoxButtonLrgInactive:close()
		arg0.BoxButtonLrgIdle:close()
		arg0.LobbyMemberBackingFooter0:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.commonButtonLabel:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_9F1B_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

