-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Social.Social_background")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.Social.Social_PlayersListButton_Presence")
require("ui.uieditor.widgets.Chat.checkboxNoLabel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupsFriendListButton = registerVal1
function CoD.GroupsFriendListButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupsFriendListButton)
	registerVal2.id = "GroupsFriendListButton"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 410.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 60.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Social_background.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 127.720000, 410.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 60.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Socialbackground00 = registerVal3
	local registerVal4 = CoD.Social_background.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 30.250000, 126.250000)
	registerVal4:setTopBottom(true, false, 0.000000, 59.750000)
	registerVal2:addElement(registerVal4)
	registerVal2.Socialbackground000 = registerVal4
	local registerVal5 = CoD.Social_background.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 29.250000)
	registerVal5:setTopBottom(true, false, 0.000000, 59.750000)
	registerVal2:addElement(registerVal5)
	registerVal2.Socialbackground0000 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 30.250000, 126.250000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_14AF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setupPlayerEmblemByXUID(registerVal1)
		end
	end

	registerVal6:linkToElementModel(registerVal2, "xuid", true, __FUNC_14AF_)
	registerVal2:addElement(registerVal6)
	registerVal2.emblem = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 139.250000, 364.250000)
	registerVal7:setTopBottom(false, false, -20.000000, 0.000000)
	registerVal7:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1550_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(registerVal1)
		end
	end

	registerVal7:linkToElementModel(registerVal2, "fullname", true, __FUNC_1550_)
	registerVal2:addElement(registerVal7)
	registerVal2.gamertag = registerVal7
	local registerVal8 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal8:setTopBottom(true, false, -4.000000, 0.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setZoom(1.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.FocusBarT = registerVal8
	local registerVal9 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal9:setTopBottom(false, true, 0.000000, 4.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setZoom(1.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.FocusBarB = registerVal9
	local registerVal10 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal10:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal10:setTopBottom(true, true, -0.500000, 0.000000)
	registerVal10:setRGB(1.000000, 0.300000, 0.000000)
	registerVal10:setAlpha(0.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.FocusBorder = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, true, -12.000000, 7.000000)
	registerVal11:setTopBottom(true, false, -8.750000, 4.750000)
	registerVal11:setRGB(1.000000, 0.090000, 0.000000)
	registerVal11:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.glitch = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, true, -8.500000, 8.500000)
	registerVal12:setTopBottom(false, true, -6.000000, 9.000000)
	registerVal12:setRGB(1.000000, 0.150000, 0.000000)
	registerVal12:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.glitch2 = registerVal12
	local registerVal13 = CoD.Social_PlayersListButton_Presence.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 137.250000, 401.250000)
	registerVal13:setTopBottom(true, false, 32.000000, 57.000000)
	local function __FUNC_15E4_(arg0)
		registerVal13:setModel(arg0, arg1)
	end

	registerVal13:linkToElementModel(registerVal2, nil, false, __FUNC_15E4_)
	local function __FUNC_1636_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.platformPresenceScroller.textBox:setText(Engine.Localize(PlatformPresenceToLocalizedString(registerVal1)))
		end
	end

	registerVal13:linkToElementModel(registerVal2, "platformPresence", true, __FUNC_1636_)
	local function __FUNC_176C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.titlePresenceScroller.textBox:setText(Engine.Localize(PresenceActivityToModeString(registerVal1)))
		end
	end

	registerVal13:linkToElementModel(registerVal2, "activity", true, __FUNC_176C_)
	local function __FUNC_189C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.lastMet:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal13:linkToElementModel(registerVal2, "titlePresence", true, __FUNC_189C_)
	registerVal2:addElement(registerVal13)
	registerVal2.presence = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(false, true, -5.000000, 3.500000)
	registerVal14:setTopBottom(true, false, -3.000000, 5.500000)
	registerVal14:setAlpha(0.150000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_social_pixel"))
	registerVal2:addElement(registerVal14)
	registerVal2.pixel = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(false, true, -5.000000, 3.500000)
	registerVal15:setTopBottom(false, true, -5.500000, 3.000000)
	registerVal15:setAlpha(0.150000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_social_pixel"))
	registerVal2:addElement(registerVal15)
	registerVal2.pixel0 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(false, true, -378.250000, -369.750000)
	registerVal16:setTopBottom(true, false, -4.000000, 4.500000)
	registerVal16:setAlpha(0.150000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_social_pixel"))
	registerVal2:addElement(registerVal16)
	registerVal2.pixel1 = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(false, true, -378.250000, -369.750000)
	registerVal17:setTopBottom(false, true, -4.500000, 4.000000)
	registerVal17:setAlpha(0.150000)
	registerVal17:setImage(RegisterImage("uie_t7_menu_social_pixel"))
	registerVal2:addElement(registerVal17)
	registerVal2.pixel00 = registerVal17
	local registerVal18 = CoD.checkboxNoLabel.new(arg0, arg1)
	registerVal18:setLeftRight(true, false, 7.630000, 21.630000)
	registerVal18:setTopBottom(true, false, 23.000000, 37.000000)
	registerVal2:addElement(registerVal18)
	registerVal2.invite = registerVal18
	local registerVal19 = {}
	local registerVal20 = {}
	local function __FUNC_1973_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.Socialbackground00:setLeftRight(true, false, 97.470000, 374.000000)
		registerVal2.Socialbackground00:setTopBottom(true, false, 0.000000, 60.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Socialbackground000:setLeftRight(true, false, 0.000000, 96.000000)
		registerVal2.Socialbackground000:setTopBottom(true, false, 0.000000, 59.750000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.emblem:setLeftRight(true, false, 0.000000, 96.000000)
		registerVal2.emblem:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.gamertag:setLeftRight(true, false, 109.000000, 334.000000)
		registerVal2.gamertag:setTopBottom(false, false, -19.750000, 0.250000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, -2.000000, 2.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -4.000000, 0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, -2.000000, 2.000000)
		registerVal2.FocusBarB:setTopBottom(false, true, 0.000000, 4.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBorder:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.FocusBorder:setTopBottom(true, true, -0.500000, 0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.glitch:setLeftRight(true, true, -12.000000, 7.000000)
		registerVal2.glitch:setTopBottom(true, false, -8.750000, 4.750000)
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.glitch2:setLeftRight(true, true, -8.500000, 8.500000)
		registerVal2.glitch2:setTopBottom(false, true, -6.000000, 9.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.presence:setLeftRight(true, false, 107.000000, 371.000000)
		registerVal2.presence:setTopBottom(true, false, 32.000000, 57.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.pixel:setLeftRight(false, true, -5.000000, 3.500000)
		registerVal2.pixel:setTopBottom(true, false, -3.000000, 5.500000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.pixel0:setLeftRight(false, true, -5.000000, 3.500000)
		registerVal2.pixel0:setTopBottom(false, true, -5.500000, 3.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.pixel1:setLeftRight(false, true, -378.250000, -369.750000)
		registerVal2.pixel1:setTopBottom(true, false, -4.000000, 4.500000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.pixel00:setLeftRight(false, true, -378.250000, -369.750000)
		registerVal2.pixel00:setTopBottom(false, true, -4.500000, 4.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal20.DefaultClip = __FUNC_1973_
	local function __FUNC_22CB_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_2597_(arg0, arg1)
			local function __FUNC_26EC_(arg0, arg1)
				local function __FUNC_2867_(arg0, arg1)
					local function __FUNC_29BC_(arg0, arg1)
						local function __FUNC_2B37_(arg0, arg1)
							local function __FUNC_2C8C_(arg0, arg1)
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
								__FUNC_2C8C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C8C_)
						end

						if arg1.interrupted then
							__FUNC_2B37_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B37_)
					end

					if arg1.interrupted then
						__FUNC_29BC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29BC_)
				end

				if arg1.interrupted then
					__FUNC_2867_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2867_)
			end

			if arg1.interrupted then
				__FUNC_26EC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26EC_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_2597_(registerVal8, {})
		local function __FUNC_2E41_(arg0, arg1)
			local function __FUNC_2F98_(arg0, arg1)
				local function __FUNC_3113_(arg0, arg1)
					local function __FUNC_3268_(arg0, arg1)
						local function __FUNC_33E3_(arg0, arg1)
							local function __FUNC_3538_(arg0, arg1)
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
								__FUNC_3538_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3538_)
						end

						if arg1.interrupted then
							__FUNC_33E3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33E3_)
					end

					if arg1.interrupted then
						__FUNC_3268_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3268_)
				end

				if arg1.interrupted then
					__FUNC_3113_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3113_)
			end

			if arg1.interrupted then
				__FUNC_2F98_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F98_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_2E41_(registerVal9, {})
		local function __FUNC_36ED_(arg0, arg1)
			local function __FUNC_3844_(arg0, arg1)
				local function __FUNC_39BF_(arg0, arg1)
					local function __FUNC_3B37_(arg0, arg1)
						local function __FUNC_3CAF_(arg0, arg1)
							local function __FUNC_3E04_(arg0, arg1)
								local function __FUNC_3F7F_(arg0, arg1)
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
									__FUNC_3F7F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F7F_)
							end

							if arg1.interrupted then
								__FUNC_3E04_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E04_)
						end

						if arg1.interrupted then
							__FUNC_3CAF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3CAF_)
					end

					if arg1.interrupted then
						__FUNC_3B37_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B37_)
				end

				if arg1.interrupted then
					__FUNC_39BF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39BF_)
			end

			if arg1.interrupted then
				__FUNC_3844_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3844_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_36ED_(registerVal10, {})
		local function __FUNC_4131_(arg0, arg1)
			local function __FUNC_4288_(arg0, arg1)
				local function __FUNC_4403_(arg0, arg1)
					local function __FUNC_4558_(arg0, arg1)
						local function __FUNC_46D3_(arg0, arg1)
							local function __FUNC_4828_(arg0, arg1)
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
								__FUNC_4828_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4828_)
						end

						if arg1.interrupted then
							__FUNC_46D3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_46D3_)
					end

					if arg1.interrupted then
						__FUNC_4558_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4558_)
				end

				if arg1.interrupted then
					__FUNC_4403_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4403_)
			end

			if arg1.interrupted then
				__FUNC_4288_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4288_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		registerVal2.glitch:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_4131_(registerVal11, {})
		local function __FUNC_4A67_(arg0, arg1)
			local function __FUNC_4BBC_(arg0, arg1)
				local function __FUNC_4D37_(arg0, arg1)
					local function __FUNC_4E8C_(arg0, arg1)
						local function __FUNC_5007_(arg0, arg1)
							local function __FUNC_515C_(arg0, arg1)
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
								__FUNC_515C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_515C_)
						end

						if arg1.interrupted then
							__FUNC_5007_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5007_)
					end

					if arg1.interrupted then
						__FUNC_4E8C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4E8C_)
				end

				if arg1.interrupted then
					__FUNC_4D37_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D37_)
			end

			if arg1.interrupted then
				__FUNC_4BBC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4BBC_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_4A67_(registerVal12, {})
	end

	registerVal20.GainFocus = __FUNC_22CB_
	local function __FUNC_5311_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -2.000000, 2.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.FocusBarB:setTopBottom(false, true, -3.000000, 1.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal20.Focus = __FUNC_5311_
	local function __FUNC_5543_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_5775_(arg0, arg1)
			local function __FUNC_58EF_(arg0, arg1)
				local function __FUNC_5A67_(arg0, arg1)
					local function __FUNC_5BDF_(arg0, arg1)
						local function __FUNC_5D34_(arg0, arg1)
							local function __FUNC_5EAF_(arg0, arg1)
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
								__FUNC_5EAF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5EAF_)
						end

						if arg1.interrupted then
							__FUNC_5D34_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5D34_)
					end

					if arg1.interrupted then
						__FUNC_5BDF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5BDF_)
				end

				if arg1.interrupted then
					__FUNC_5A67_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5A67_)
			end

			if arg1.interrupted then
				__FUNC_58EF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_58EF_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_5775_(registerVal8, {})
		local function __FUNC_6061_(arg0, arg1)
			local function __FUNC_61DB_(arg0, arg1)
				local function __FUNC_6353_(arg0, arg1)
					local function __FUNC_64CB_(arg0, arg1)
						local function __FUNC_6620_(arg0, arg1)
							local function __FUNC_679B_(arg0, arg1)
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
								__FUNC_679B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_679B_)
						end

						if arg1.interrupted then
							__FUNC_6620_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6620_)
					end

					if arg1.interrupted then
						__FUNC_64CB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_64CB_)
				end

				if arg1.interrupted then
					__FUNC_6353_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6353_)
			end

			if arg1.interrupted then
				__FUNC_61DB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_61DB_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_6061_(registerVal9, {})
		local function __FUNC_694D_(arg0, arg1)
			local function __FUNC_6AA4_(arg0, arg1)
				local function __FUNC_6C1F_(arg0, arg1)
					local function __FUNC_6D97_(arg0, arg1)
						local function __FUNC_6F0F_(arg0, arg1)
							local function __FUNC_7064_(arg0, arg1)
								local function __FUNC_71DF_(arg0, arg1)
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
									__FUNC_71DF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_71DF_)
							end

							if arg1.interrupted then
								__FUNC_7064_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7064_)
						end

						if arg1.interrupted then
							__FUNC_6F0F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6F0F_)
					end

					if arg1.interrupted then
						__FUNC_6D97_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6D97_)
				end

				if arg1.interrupted then
					__FUNC_6C1F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6C1F_)
			end

			if arg1.interrupted then
				__FUNC_6AA4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6AA4_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_694D_(registerVal10, {})
		local function __FUNC_7391_(arg0, arg1)
			local function __FUNC_74E8_(arg0, arg1)
				local function __FUNC_7663_(arg0, arg1)
					local function __FUNC_77B8_(arg0, arg1)
						local function __FUNC_7933_(arg0, arg1)
							local function __FUNC_7A88_(arg0, arg1)
								local function __FUNC_7C03_(arg0, arg1)
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
									__FUNC_7C03_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7C03_)
							end

							if arg1.interrupted then
								__FUNC_7A88_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7A88_)
						end

						if arg1.interrupted then
							__FUNC_7933_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7933_)
					end

					if arg1.interrupted then
						__FUNC_77B8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_77B8_)
				end

				if arg1.interrupted then
					__FUNC_7663_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7663_)
			end

			if arg1.interrupted then
				__FUNC_74E8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_74E8_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_7391_(registerVal11, {})
		local function __FUNC_7DB5_(arg0, arg1)
			local function __FUNC_7F0C_(arg0, arg1)
				local function __FUNC_8087_(arg0, arg1)
					local function __FUNC_81DC_(arg0, arg1)
						local function __FUNC_8357_(arg0, arg1)
							local function __FUNC_84AC_(arg0, arg1)
								local function __FUNC_8627_(arg0, arg1)
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
									__FUNC_8627_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8627_)
							end

							if arg1.interrupted then
								__FUNC_84AC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_84AC_)
						end

						if arg1.interrupted then
							__FUNC_8357_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8357_)
					end

					if arg1.interrupted then
						__FUNC_81DC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_81DC_)
				end

				if arg1.interrupted then
					__FUNC_8087_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8087_)
			end

			if arg1.interrupted then
				__FUNC_7F0C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7F0C_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_7DB5_(registerVal12, {})
	end

	registerVal20.LoseFocus = __FUNC_5543_
	registerVal19.DefaultState = registerVal20
	registerVal2.clipsPerState = registerVal19
	local function __FUNC_87D9_(arg0)
		arg0.Socialbackground00:close()
		arg0.Socialbackground000:close()
		arg0.Socialbackground0000:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.FocusBorder:close()
		arg0.presence:close()
		arg0.invite:close()
		arg0.emblem:close()
		arg0.gamertag:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_87D9_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

