-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.Social.Social_background")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.Social.Social_PlayersListButton_Presence")
require("ui.uieditor.widgets.Social.Social_PlayersListButton_Joinable")
require("ui.uieditor.widgets.Social.Social_PartyLeaderIconLarge")
require("ui.uieditor.widgets.Social.Social_PartyMemberIconLarge")
require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.Common.common_ButtonLabel_01")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Social_PlayersListButton = registerVal1
function CoD.Social_PlayersListButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Social_PlayersListButton)
	registerVal2.id = "Social_PlayersListButton"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 374.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 60.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 374.000000)
	registerVal3:setTopBottom(true, false, 0.250000, 60.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BlackTint0 = registerVal3
	local registerVal4 = CoD.cac_ButtonBoxLrgIdle.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal4:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal4:setAlpha(0.500000)
	registerVal2:addElement(registerVal4)
	registerVal2.BoxButtonLrgIdle = registerVal4
	local registerVal5 = CoD.Social_background.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 101.000000, 374.000000)
	registerVal5:setTopBottom(true, false, 0.250000, 60.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.Socialbackground00 = registerVal5
	local registerVal6 = CoD.Social_background.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 0.000000, 100.000000)
	registerVal6:setTopBottom(true, false, 0.250000, 60.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.Socialbackground000 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 1.000000, 100.000000)
	registerVal7:setTopBottom(true, true, 1.000000, -1.000000)
	local function __FUNC_17DC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setupPlayerEmblemByXUID(registerVal1)
		end
	end

	registerVal7:linkToElementModel(registerVal2, "identityBadge.xuid", true, __FUNC_17DC_)
	registerVal2:addElement(registerVal7)
	registerVal2.emblem = registerVal7
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
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, -6.250000, 7.000000)
	registerVal10:setTopBottom(true, false, -8.750000, 4.750000)
	registerVal10:setRGB(1.000000, 0.090000, 0.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.glitch = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, true, -6.250000, 8.500000)
	registerVal11:setTopBottom(false, true, -6.000000, 9.000000)
	registerVal11:setRGB(1.000000, 0.150000, 0.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.glitch2 = registerVal11
	local registerVal12 = CoD.Social_PlayersListButton_Presence.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 108.000000, 368.000000)
	registerVal12:setTopBottom(true, false, 32.000000, 57.000000)
	local function __FUNC_1880_(arg0)
		registerVal12:setModel(arg0, arg1)
	end

	registerVal12:linkToElementModel(registerVal2, nil, false, __FUNC_1880_)
	local function __FUNC_18D2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.platformPresenceScroller.textBox:setText(PlatformPresenceToLocalizedString(registerVal1))
		end
	end

	registerVal12:linkToElementModel(registerVal2, "platformPresence", true, __FUNC_18D2_)
	local function __FUNC_19E2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.titlePresenceScroller.textBox:setText(Engine.Localize(PresenceActivityToModeString(registerVal1)))
		end
	end

	registerVal12:linkToElementModel(registerVal2, "activity", true, __FUNC_19E2_)
	local function __FUNC_1B10_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.titlePresenceIcon:setImage(RegisterImage(PresenceActivityToIcon(registerVal1)))
		end
	end

	registerVal12:linkToElementModel(registerVal2, "activity", true, __FUNC_1B10_)
	local function __FUNC_1C13_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.lastMet:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal12:linkToElementModel(registerVal2, "titlePresence", true, __FUNC_1C13_)
	local function __FUNC_1CE7_(arg0, arg1)
		SetupAutoHorizontalAlignArabicText(arg0)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal12:registerEventHandler("menu_loaded", __FUNC_1CE7_)
	registerVal2:addElement(registerVal12)
	registerVal2.presence = registerVal12
	local registerVal13 = CoD.Social_PlayersListButton_Joinable.new(arg0, arg1)
	registerVal13:setLeftRight(false, false, 163.000000, 179.000000)
	registerVal13:setTopBottom(true, false, 4.500000, 28.500000)
	local function __FUNC_1D89_(arg0)
		registerVal13:setModel(arg0, arg1)
	end

	registerVal13:linkToElementModel(registerVal2, nil, false, __FUNC_1D89_)
	registerVal2:addElement(registerVal13)
	registerVal2.joinable = registerVal13
	local registerVal14 = CoD.Social_PartyLeaderIconLarge.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 376.000000, 400.000000)
	registerVal14:setTopBottom(true, false, 0.250000, 59.750000)
	local registerVal17 = {}
	local registerVal18 = {}
	registerVal18.stateName = "Invisible"
	local function __FUNC_1DDA_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal18.condition = __FUNC_1DDA_
	registerVal17 = {registerVal18}
	registerVal14:mergeStateConditions(registerVal17)
	registerVal2:addElement(registerVal14)
	registerVal2.SocialPartyLeaderIconLarge0 = registerVal14
	local registerVal15 = CoD.Social_PartyMemberIconLarge.new(arg0, arg1)
	registerVal15:setLeftRight(false, true, 3.000000, 9.000000)
	registerVal15:setTopBottom(true, true, 1.000000, -1.250000)
	registerVal18 = {}
	local registerVal19 = {}
	registerVal19.stateName = "PartyMemberTopOrMiddle"
	local function __FUNC_1E25_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isPartyMemberTopOrMiddle")
	end

	registerVal19.condition = __FUNC_1E25_
	local registerVal20 = {}
	registerVal20.stateName = "PartyMember"
	local function __FUNC_1EA8_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal20.condition = __FUNC_1EA8_
	local registerVal21 = {}
	registerVal21.stateName = "OtherPartyMemberTopOrMiddle"
	local function __FUNC_1EF5_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isOtherMemberTopOrMiddle")
	end

	registerVal21.condition = __FUNC_1EF5_
	local registerVal22 = {}
	registerVal22.stateName = "OtherPartyMember"
	local function __FUNC_1F78_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isOtherMember")
	end

	registerVal22.condition = __FUNC_1F78_
	registerVal18 = {registerVal19, registerVal20, registerVal21, registerVal22}
	registerVal15:mergeStateConditions(registerVal18)
	local function __FUNC_1FF1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isPartyMemberTopOrMiddle"
		arg0:updateElementState(registerVal15, registerVal4)
	end

	registerVal15:linkToElementModel(registerVal15, "isPartyMemberTopOrMiddle", true, __FUNC_1FF1_)
	local function __FUNC_211E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isOtherMemberTopOrMiddle"
		arg0:updateElementState(registerVal15, registerVal4)
	end

	registerVal15:linkToElementModel(registerVal15, "isOtherMemberTopOrMiddle", true, __FUNC_211E_)
	local function __FUNC_224A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isOtherMember"
		arg0:updateElementState(registerVal15, registerVal4)
	end

	registerVal15:linkToElementModel(registerVal15, "isOtherMember", true, __FUNC_224A_)
	registerVal2:addElement(registerVal15)
	registerVal2.SocialPartyMemberIconLarge0 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, 0.000000, 374.000000)
	registerVal16:setTopBottom(true, false, 0.250000, 60.000000)
	registerVal16:setRGB(0.000000, 0.000000, 0.000000)
	registerVal16:setAlpha(0.200000)
	registerVal2:addElement(registerVal16)
	registerVal2.BlackTint = registerVal16
	registerVal17 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal17:setLeftRight(false, false, -189.000000, 189.000000)
	registerVal17:setTopBottom(true, true, -1.000000, 2.000000)
	registerVal17:setAlpha(0.600000)
	registerVal2:addElement(registerVal17)
	registerVal2.StartMenuframenoBG0 = registerVal17
	registerVal18 = CoD.common_ButtonLabel_01.new(arg0, arg1)
	registerVal18:setLeftRight(true, false, 106.000000, 343.000000)
	registerVal18:setTopBottom(true, false, 10.500000, 30.500000)
	local function __FUNC_236B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal18.itemName:setText(registerVal1)
		end
	end

	registerVal18:linkToElementModel(registerVal2, "fullname", true, __FUNC_236B_)
	registerVal2:addElement(registerVal18)
	registerVal2.commonButtonLabel = registerVal18
	registerVal19 = {}
	registerVal20 = {}
	local function __FUNC_241A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal20.DefaultClip = __FUNC_241A_
	local function __FUNC_247A_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_27A9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.500000)
		__FUNC_27A9_(registerVal4, {})
		local function __FUNC_295D_(arg0, arg1)
			local function __FUNC_2AB4_(arg0, arg1)
				local function __FUNC_2C2F_(arg0, arg1)
					local function __FUNC_2D84_(arg0, arg1)
						local function __FUNC_2EFF_(arg0, arg1)
							local function __FUNC_3054_(arg0, arg1)
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
								__FUNC_3054_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3054_)
						end

						if arg1.interrupted then
							__FUNC_2EFF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EFF_)
					end

					if arg1.interrupted then
						__FUNC_2D84_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D84_)
				end

				if arg1.interrupted then
					__FUNC_2C2F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C2F_)
			end

			if arg1.interrupted then
				__FUNC_2AB4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AB4_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_295D_(registerVal8, {})
		local function __FUNC_3209_(arg0, arg1)
			local function __FUNC_3360_(arg0, arg1)
				local function __FUNC_34DB_(arg0, arg1)
					local function __FUNC_3630_(arg0, arg1)
						local function __FUNC_37AB_(arg0, arg1)
							local function __FUNC_3900_(arg0, arg1)
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
								__FUNC_3900_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3900_)
						end

						if arg1.interrupted then
							__FUNC_37AB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37AB_)
					end

					if arg1.interrupted then
						__FUNC_3630_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3630_)
				end

				if arg1.interrupted then
					__FUNC_34DB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34DB_)
			end

			if arg1.interrupted then
				__FUNC_3360_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3360_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_3209_(registerVal9, {})
		local function __FUNC_3AB5_(arg0, arg1)
			local function __FUNC_3C0C_(arg0, arg1)
				local function __FUNC_3D87_(arg0, arg1)
					local function __FUNC_3EDC_(arg0, arg1)
						local function __FUNC_4057_(arg0, arg1)
							local function __FUNC_41AC_(arg0, arg1)
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
								__FUNC_41AC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_41AC_)
						end

						if arg1.interrupted then
							__FUNC_4057_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4057_)
					end

					if arg1.interrupted then
						__FUNC_3EDC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3EDC_)
				end

				if arg1.interrupted then
					__FUNC_3D87_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D87_)
			end

			if arg1.interrupted then
				__FUNC_3C0C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C0C_)
		end

		registerVal10:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		registerVal2.glitch:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_3AB5_(registerVal10, {})
		local function __FUNC_43EB_(arg0, arg1)
			local function __FUNC_4540_(arg0, arg1)
				local function __FUNC_46BB_(arg0, arg1)
					local function __FUNC_4810_(arg0, arg1)
						local function __FUNC_498B_(arg0, arg1)
							local function __FUNC_4AE0_(arg0, arg1)
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
								__FUNC_4AE0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4AE0_)
						end

						if arg1.interrupted then
							__FUNC_498B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_498B_)
					end

					if arg1.interrupted then
						__FUNC_4810_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4810_)
				end

				if arg1.interrupted then
					__FUNC_46BB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_46BB_)
			end

			if arg1.interrupted then
				__FUNC_4540_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4540_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_43EB_(registerVal11, {})
		local function __FUNC_4C95_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.BlackTint:setAlpha(0.200000)
		__FUNC_4C95_(registerVal16, {})
	end

	registerVal20.GainFocus = __FUNC_247A_
	local function __FUNC_4E49_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal16:completeAnimation()
		registerVal2.BlackTint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal20.Focus = __FUNC_4E49_
	local function __FUNC_505F_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_52EE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.700000)
		__FUNC_52EE_(registerVal4, {})
		local function __FUNC_54A1_(arg0, arg1)
			local function __FUNC_561B_(arg0, arg1)
				local function __FUNC_5793_(arg0, arg1)
					local function __FUNC_590B_(arg0, arg1)
						local function __FUNC_5A60_(arg0, arg1)
							local function __FUNC_5BDB_(arg0, arg1)
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
								__FUNC_5BDB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5BDB_)
						end

						if arg1.interrupted then
							__FUNC_5A60_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5A60_)
					end

					if arg1.interrupted then
						__FUNC_590B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_590B_)
				end

				if arg1.interrupted then
					__FUNC_5793_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5793_)
			end

			if arg1.interrupted then
				__FUNC_561B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_561B_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_54A1_(registerVal8, {})
		local function __FUNC_5D8D_(arg0, arg1)
			local function __FUNC_5F07_(arg0, arg1)
				local function __FUNC_607F_(arg0, arg1)
					local function __FUNC_61F7_(arg0, arg1)
						local function __FUNC_634C_(arg0, arg1)
							local function __FUNC_64C7_(arg0, arg1)
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
								__FUNC_64C7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_64C7_)
						end

						if arg1.interrupted then
							__FUNC_634C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_634C_)
					end

					if arg1.interrupted then
						__FUNC_61F7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_61F7_)
				end

				if arg1.interrupted then
					__FUNC_607F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_607F_)
			end

			if arg1.interrupted then
				__FUNC_5F07_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5F07_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_5D8D_(registerVal9, {})
		local function __FUNC_6679_(arg0, arg1)
			local function __FUNC_67D0_(arg0, arg1)
				local function __FUNC_694B_(arg0, arg1)
					local function __FUNC_6AA0_(arg0, arg1)
						local function __FUNC_6C1B_(arg0, arg1)
							local function __FUNC_6D70_(arg0, arg1)
								local function __FUNC_6EEB_(arg0, arg1)
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
									__FUNC_6EEB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6EEB_)
							end

							if arg1.interrupted then
								__FUNC_6D70_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6D70_)
						end

						if arg1.interrupted then
							__FUNC_6C1B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6C1B_)
					end

					if arg1.interrupted then
						__FUNC_6AA0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6AA0_)
				end

				if arg1.interrupted then
					__FUNC_694B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_694B_)
			end

			if arg1.interrupted then
				__FUNC_67D0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_67D0_)
		end

		registerVal10:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_6679_(registerVal10, {})
		local function __FUNC_709D_(arg0, arg1)
			local function __FUNC_71F4_(arg0, arg1)
				local function __FUNC_736F_(arg0, arg1)
					local function __FUNC_74C4_(arg0, arg1)
						local function __FUNC_763F_(arg0, arg1)
							local function __FUNC_7794_(arg0, arg1)
								local function __FUNC_790F_(arg0, arg1)
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
									__FUNC_790F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_790F_)
							end

							if arg1.interrupted then
								__FUNC_7794_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7794_)
						end

						if arg1.interrupted then
							__FUNC_763F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_763F_)
					end

					if arg1.interrupted then
						__FUNC_74C4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_74C4_)
				end

				if arg1.interrupted then
					__FUNC_736F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_736F_)
			end

			if arg1.interrupted then
				__FUNC_71F4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_71F4_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_709D_(registerVal11, {})
		local function __FUNC_7AC1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.BlackTint:setAlpha(0.000000)
		__FUNC_7AC1_(registerVal16, {})
	end

	registerVal20.LoseFocus = __FUNC_505F_
	registerVal19.DefaultState = registerVal20
	registerVal2.clipsPerState = registerVal19
	local function __FUNC_7C75_(arg0)
		arg0.BoxButtonLrgIdle:close()
		arg0.Socialbackground00:close()
		arg0.Socialbackground000:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.presence:close()
		arg0.joinable:close()
		arg0.SocialPartyLeaderIconLarge0:close()
		arg0.SocialPartyMemberIconLarge0:close()
		arg0.StartMenuframenoBG0:close()
		arg0.commonButtonLabel:close()
		arg0.emblem:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_7C75_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

