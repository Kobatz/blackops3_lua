-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Social.Social_background")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.Social.Social_PlayersListButton_Presence")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Social_PlayersListButton_ManageParty = registerVal1
function CoD.Social_PlayersListButton_ManageParty.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Social_PlayersListButton_ManageParty)
	registerVal2.id = "Social_PlayersListButton_ManageParty"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 631.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 60.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Social_background.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 96.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 59.750000)
	registerVal2:addElement(registerVal3)
	registerVal2.Socialbackground0000 = registerVal3
	local registerVal4 = CoD.Social_background.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 97.470000, 374.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 60.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Socialbackground00 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 96.000000)
	registerVal5:setTopBottom(true, true, 0.250000, -0.250000)
	local function __FUNC_1657_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setupPlayerEmblemByXUID(registerVal1)
		end
	end

	registerVal5:linkToElementModel(registerVal2, "xuid", true, __FUNC_1657_)
	registerVal2:addElement(registerVal5)
	registerVal2.emblem = registerVal5
	local registerVal6 = CoD.Social_background.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 380.470000, 583.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 59.500000)
	registerVal2:addElement(registerVal6)
	registerVal2.Socialbackground000 = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 109.000000, 334.000000)
	registerVal7:setTopBottom(false, false, -20.000000, 0.000000)
	registerVal7:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_16F8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(registerVal1)
		end
	end

	registerVal7:linkToElementModel(registerVal2, "fullname", true, __FUNC_16F8_)
	registerVal2:addElement(registerVal7)
	registerVal2.gamertag = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 398.230000, 565.230000)
	registerVal8:setTopBottom(true, false, 19.500000, 41.500000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_178C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "SocialMainMenu", "managePartyButtonText", __FUNC_178C_)
	registerVal2:addElement(registerVal8)
	registerVal2.ManagePartyOperation = registerVal8
	local registerVal9 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, 378.470000, -46.000000)
	registerVal9:setTopBottom(true, false, -6.000000, -2.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setZoom(1.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.FocusBarT = registerVal9
	local registerVal10 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal10:setLeftRight(true, true, 378.470000, -46.000000)
	registerVal10:setTopBottom(false, true, -2.000000, 2.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setZoom(1.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.FocusBarB = registerVal10
	local registerVal11 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal11:setLeftRight(true, true, 380.470000, -48.000000)
	registerVal11:setTopBottom(true, true, -2.500000, -2.000000)
	registerVal11:setRGB(1.000000, 0.300000, 0.000000)
	registerVal11:setAlpha(0.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.FocusBorder = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 368.470000, 590.000000)
	registerVal12:setTopBottom(true, false, -10.750000, 2.750000)
	registerVal12:setRGB(1.000000, 0.090000, 0.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.glitch = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, true, 371.970000, -39.500000)
	registerVal13:setTopBottom(false, true, -8.000000, 7.000000)
	registerVal13:setRGB(1.000000, 0.150000, 0.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.glitch2 = registerVal13
	local registerVal14 = CoD.Social_PlayersListButton_Presence.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 107.000000, 371.000000)
	registerVal14:setTopBottom(true, false, 32.000000, 57.000000)
	registerVal14.platformPresenceScroller.textBox:setText(Engine.Localize("Watching Netflix"))
	local function __FUNC_1846_(arg0)
		registerVal14:setModel(arg0, arg1)
	end

	registerVal14:linkToElementModel(registerVal2, nil, false, __FUNC_1846_)
	local function __FUNC_1896_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14.titlePresenceScroller.textBox:setText(Engine.Localize(PresenceActivityToModeString(registerVal1)))
		end
	end

	registerVal14:linkToElementModel(registerVal2, "activity", true, __FUNC_1896_)
	local function __FUNC_19C4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14.lastMet:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal14:linkToElementModel(registerVal2, "titlePresence", true, __FUNC_19C4_)
	registerVal2:addElement(registerVal14)
	registerVal2.presence = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(false, true, -262.000000, -253.500000)
	registerVal15:setTopBottom(true, false, -3.000000, 5.500000)
	registerVal15:setAlpha(0.150000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_social_pixel"))
	registerVal2:addElement(registerVal15)
	registerVal2.pixel = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(false, true, -262.000000, -253.500000)
	registerVal16:setTopBottom(false, true, -5.500000, 3.000000)
	registerVal16:setAlpha(0.150000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_social_pixel"))
	registerVal2:addElement(registerVal16)
	registerVal2.pixel0 = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(false, true, -634.250000, -625.750000)
	registerVal17:setTopBottom(true, false, -4.000000, 4.500000)
	registerVal17:setAlpha(0.150000)
	registerVal17:setImage(RegisterImage("uie_t7_menu_social_pixel"))
	registerVal2:addElement(registerVal17)
	registerVal2.pixel1 = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(false, true, -634.250000, -625.750000)
	registerVal18:setTopBottom(false, true, -4.500000, 4.000000)
	registerVal18:setAlpha(0.150000)
	registerVal18:setImage(RegisterImage("uie_t7_menu_social_pixel"))
	registerVal2:addElement(registerVal18)
	registerVal2.pixel00 = registerVal18
	local registerVal19 = {}
	local registerVal20 = {}
	local function __FUNC_1A9B_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal6:completeAnimation()
		registerVal2.Socialbackground000:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.ManagePartyOperation:setAlpha(0.000000)
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

	registerVal20.DefaultClip = __FUNC_1A9B_
	local function __FUNC_1DB5_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_20C3_(arg0, arg1)
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
		registerVal2.Socialbackground000:setAlpha(0.000000)
		__FUNC_20C3_(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.ManagePartyOperation:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_2275_(arg0, arg1)
			local function __FUNC_23CC_(arg0, arg1)
				local function __FUNC_2547_(arg0, arg1)
					local function __FUNC_269C_(arg0, arg1)
						local function __FUNC_2817_(arg0, arg1)
							local function __FUNC_296C_(arg0, arg1)
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
								__FUNC_296C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_296C_)
						end

						if arg1.interrupted then
							__FUNC_2817_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2817_)
					end

					if arg1.interrupted then
						__FUNC_269C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_269C_)
				end

				if arg1.interrupted then
					__FUNC_2547_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2547_)
			end

			if arg1.interrupted then
				__FUNC_23CC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23CC_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_2275_(registerVal9, {})
		local function __FUNC_2B21_(arg0, arg1)
			local function __FUNC_2C78_(arg0, arg1)
				local function __FUNC_2DF3_(arg0, arg1)
					local function __FUNC_2F48_(arg0, arg1)
						local function __FUNC_30C3_(arg0, arg1)
							local function __FUNC_3218_(arg0, arg1)
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
								__FUNC_3218_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3218_)
						end

						if arg1.interrupted then
							__FUNC_30C3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30C3_)
					end

					if arg1.interrupted then
						__FUNC_2F48_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F48_)
				end

				if arg1.interrupted then
					__FUNC_2DF3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DF3_)
			end

			if arg1.interrupted then
				__FUNC_2C78_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C78_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_2B21_(registerVal10, {})
		local function __FUNC_33CD_(arg0, arg1)
			local function __FUNC_3524_(arg0, arg1)
				local function __FUNC_369F_(arg0, arg1)
					local function __FUNC_3817_(arg0, arg1)
						local function __FUNC_398F_(arg0, arg1)
							local function __FUNC_3AE4_(arg0, arg1)
								local function __FUNC_3C5F_(arg0, arg1)
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
									__FUNC_3C5F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C5F_)
							end

							if arg1.interrupted then
								__FUNC_3AE4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3AE4_)
						end

						if arg1.interrupted then
							__FUNC_398F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_398F_)
					end

					if arg1.interrupted then
						__FUNC_3817_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3817_)
				end

				if arg1.interrupted then
					__FUNC_369F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_369F_)
			end

			if arg1.interrupted then
				__FUNC_3524_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3524_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_33CD_(registerVal11, {})
		local function __FUNC_3E11_(arg0, arg1)
			local function __FUNC_3F68_(arg0, arg1)
				local function __FUNC_40E3_(arg0, arg1)
					local function __FUNC_4238_(arg0, arg1)
						local function __FUNC_43B3_(arg0, arg1)
							local function __FUNC_4508_(arg0, arg1)
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
								__FUNC_4508_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4508_)
						end

						if arg1.interrupted then
							__FUNC_43B3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_43B3_)
					end

					if arg1.interrupted then
						__FUNC_4238_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4238_)
				end

				if arg1.interrupted then
					__FUNC_40E3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_40E3_)
			end

			if arg1.interrupted then
				__FUNC_3F68_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F68_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_3E11_(registerVal12, {})
		local function __FUNC_46BD_(arg0, arg1)
			local function __FUNC_4814_(arg0, arg1)
				local function __FUNC_498F_(arg0, arg1)
					local function __FUNC_4AE4_(arg0, arg1)
						local function __FUNC_4C5F_(arg0, arg1)
							local function __FUNC_4DB4_(arg0, arg1)
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
								__FUNC_4DB4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4DB4_)
						end

						if arg1.interrupted then
							__FUNC_4C5F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C5F_)
					end

					if arg1.interrupted then
						__FUNC_4AE4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4AE4_)
				end

				if arg1.interrupted then
					__FUNC_498F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_498F_)
			end

			if arg1.interrupted then
				__FUNC_4814_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4814_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_46BD_(registerVal13, {})
	end

	registerVal20.GainFocus = __FUNC_1DB5_
	local function __FUNC_4F69_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal6:completeAnimation()
		registerVal2.Socialbackground000:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.ManagePartyOperation:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal20.Focus = __FUNC_4F69_
	local function __FUNC_5183_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_548F_(arg0, arg1)
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

		registerVal6:completeAnimation()
		registerVal2.Socialbackground000:setAlpha(1.000000)
		__FUNC_548F_(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.ManagePartyOperation:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_5641_(arg0, arg1)
			local function __FUNC_57BB_(arg0, arg1)
				local function __FUNC_5933_(arg0, arg1)
					local function __FUNC_5AAB_(arg0, arg1)
						local function __FUNC_5C00_(arg0, arg1)
							local function __FUNC_5D7B_(arg0, arg1)
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
								__FUNC_5D7B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5D7B_)
						end

						if arg1.interrupted then
							__FUNC_5C00_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5C00_)
					end

					if arg1.interrupted then
						__FUNC_5AAB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5AAB_)
				end

				if arg1.interrupted then
					__FUNC_5933_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5933_)
			end

			if arg1.interrupted then
				__FUNC_57BB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_57BB_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_5641_(registerVal9, {})
		local function __FUNC_5F2D_(arg0, arg1)
			local function __FUNC_60A7_(arg0, arg1)
				local function __FUNC_621F_(arg0, arg1)
					local function __FUNC_6397_(arg0, arg1)
						local function __FUNC_64EC_(arg0, arg1)
							local function __FUNC_6667_(arg0, arg1)
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
								__FUNC_6667_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6667_)
						end

						if arg1.interrupted then
							__FUNC_64EC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_64EC_)
					end

					if arg1.interrupted then
						__FUNC_6397_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6397_)
				end

				if arg1.interrupted then
					__FUNC_621F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_621F_)
			end

			if arg1.interrupted then
				__FUNC_60A7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_60A7_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_5F2D_(registerVal10, {})
		local function __FUNC_6819_(arg0, arg1)
			local function __FUNC_6970_(arg0, arg1)
				local function __FUNC_6AEB_(arg0, arg1)
					local function __FUNC_6C63_(arg0, arg1)
						local function __FUNC_6DDB_(arg0, arg1)
							local function __FUNC_6F30_(arg0, arg1)
								local function __FUNC_70AB_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_70AB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_70AB_)
							end

							if arg1.interrupted then
								__FUNC_6F30_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6F30_)
						end

						if arg1.interrupted then
							__FUNC_6DDB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6DDB_)
					end

					if arg1.interrupted then
						__FUNC_6C63_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6C63_)
				end

				if arg1.interrupted then
					__FUNC_6AEB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6AEB_)
			end

			if arg1.interrupted then
				__FUNC_6970_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6970_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_6819_(registerVal11, {})
		local function __FUNC_725D_(arg0, arg1)
			local function __FUNC_73B4_(arg0, arg1)
				local function __FUNC_752F_(arg0, arg1)
					local function __FUNC_7684_(arg0, arg1)
						local function __FUNC_77FF_(arg0, arg1)
							local function __FUNC_7954_(arg0, arg1)
								local function __FUNC_7ACF_(arg0, arg1)
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
									__FUNC_7ACF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7ACF_)
							end

							if arg1.interrupted then
								__FUNC_7954_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7954_)
						end

						if arg1.interrupted then
							__FUNC_77FF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_77FF_)
					end

					if arg1.interrupted then
						__FUNC_7684_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7684_)
				end

				if arg1.interrupted then
					__FUNC_752F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_752F_)
			end

			if arg1.interrupted then
				__FUNC_73B4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_73B4_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_725D_(registerVal12, {})
		local function __FUNC_7C81_(arg0, arg1)
			local function __FUNC_7DD8_(arg0, arg1)
				local function __FUNC_7F53_(arg0, arg1)
					local function __FUNC_80A8_(arg0, arg1)
						local function __FUNC_8223_(arg0, arg1)
							local function __FUNC_8378_(arg0, arg1)
								local function __FUNC_84F3_(arg0, arg1)
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
									__FUNC_84F3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_84F3_)
							end

							if arg1.interrupted then
								__FUNC_8378_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8378_)
						end

						if arg1.interrupted then
							__FUNC_8223_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8223_)
					end

					if arg1.interrupted then
						__FUNC_80A8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_80A8_)
				end

				if arg1.interrupted then
					__FUNC_7F53_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7F53_)
			end

			if arg1.interrupted then
				__FUNC_7DD8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7DD8_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_7C81_(registerVal13, {})
	end

	registerVal20.LoseFocus = __FUNC_5183_
	registerVal19.DefaultState = registerVal20
	registerVal2.clipsPerState = registerVal19
	local function __FUNC_86A5_(arg0)
		arg0.Socialbackground0000:close()
		arg0.Socialbackground00:close()
		arg0.Socialbackground000:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.FocusBorder:close()
		arg0.presence:close()
		arg0.emblem:close()
		arg0.gamertag:close()
		arg0.ManagePartyOperation:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_86A5_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

