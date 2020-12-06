-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.Social.Social_background")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.Social.Social_PlayersListButton_Presence")
require("ui.uieditor.widgets.Social.Social_PlayersListButton_Joinable")
require("ui.uieditor.widgets.Social.Social_PartyLeaderIconLarge")
require("ui.uieditor.widgets.Social.Social_PartyMemberIconLarge")
require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.Groups.GroupsCheckbox")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupsFriendsListButton = registerVal1
function CoD.GroupsFriendsListButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupsFriendsListButton)
	registerVal2.id = "GroupsFriendsListButton"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 374.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 60.000000)
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
	registerVal2:addElement(registerVal5)
	registerVal2.BoxButtonLrgIdle = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 374.000000)
	registerVal6:setTopBottom(true, false, 0.250000, 60.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.200000)
	registerVal2:addElement(registerVal6)
	registerVal2.BlackTint = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 0.000000, 374.000000)
	registerVal7:setTopBottom(true, false, 0.250000, 60.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.BlackTint0 = registerVal7
	local registerVal8 = CoD.Social_background.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 97.470000, 374.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 60.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.Socialbackground00 = registerVal8
	local registerVal9 = CoD.Social_background.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 0.000000, 96.000000)
	registerVal9:setTopBottom(true, false, 0.000000, 59.750000)
	registerVal2:addElement(registerVal9)
	registerVal2.Socialbackground000 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 0.000000, 96.000000)
	registerVal10:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_1E27_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setupPlayerEmblemByXUID(registerVal1)
		end
	end

	registerVal10:linkToElementModel(registerVal2, "identityBadge.xuid", true, __FUNC_1E27_)
	registerVal2:addElement(registerVal10)
	registerVal2.emblem = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, 103.000000, 346.000000)
	registerVal11:setTopBottom(false, false, -20.000000, 0.000000)
	registerVal11:setTTF("fonts/escom.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1EC8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setText(registerVal1)
		end
	end

	registerVal11:linkToElementModel(registerVal2, "fullname", true, __FUNC_1EC8_)
	registerVal2:addElement(registerVal11)
	registerVal2.gamertag = registerVal11
	local registerVal12 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal12:setLeftRight(true, true, -4.250000, 2.000000)
	registerVal12:setTopBottom(true, false, -4.000000, 0.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setZoom(1.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.FocusBarT = registerVal12
	local registerVal13 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal13:setLeftRight(true, true, -4.250000, 2.000000)
	registerVal13:setTopBottom(false, true, 0.000000, 4.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setZoom(1.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.FocusBarB = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, true, -12.000000, 7.000000)
	registerVal14:setTopBottom(true, false, -8.750000, 4.750000)
	registerVal14:setRGB(1.000000, 0.090000, 0.000000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.glitch = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, true, -8.500000, 8.500000)
	registerVal15:setTopBottom(false, true, -6.000000, 9.000000)
	registerVal15:setRGB(1.000000, 0.150000, 0.000000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.glitch2 = registerVal15
	local registerVal16 = CoD.Social_PlayersListButton_Presence.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, 106.000000, 366.000000)
	registerVal16:setTopBottom(true, false, 32.000000, 57.000000)
	local function __FUNC_1F5C_(arg0)
		registerVal16:setModel(arg0, arg1)
	end

	registerVal16:linkToElementModel(registerVal2, nil, false, __FUNC_1F5C_)
	local function __FUNC_1FAE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16.platformPresenceScroller.textBox:setText(PlatformPresenceToLocalizedString(registerVal1))
		end
	end

	registerVal16:linkToElementModel(registerVal2, "platformPresence", true, __FUNC_1FAE_)
	local function __FUNC_20BE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16.titlePresenceScroller.textBox:setText(Engine.Localize(PresenceActivityToModeString(registerVal1)))
		end
	end

	registerVal16:linkToElementModel(registerVal2, "activity", true, __FUNC_20BE_)
	local function __FUNC_21EC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16.titlePresenceIcon:setImage(RegisterImage(PresenceActivityToIcon(registerVal1)))
		end
	end

	registerVal16:linkToElementModel(registerVal2, "activity", true, __FUNC_21EC_)
	local function __FUNC_22EF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16.lastMet:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal16:linkToElementModel(registerVal2, "titlePresence", true, __FUNC_22EF_)
	local function __FUNC_23C3_(arg0, arg1)
		SetupAutoHorizontalAlignArabicText(arg0)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal16:registerEventHandler("menu_loaded", __FUNC_23C3_)
	registerVal2:addElement(registerVal16)
	registerVal2.presence = registerVal16
	local registerVal17 = CoD.Social_PlayersListButton_Joinable.new(arg0, arg1)
	registerVal17:setLeftRight(false, false, 163.000000, 179.000000)
	registerVal17:setTopBottom(true, false, 4.500000, 28.500000)
	local function __FUNC_2465_(arg0)
		registerVal17:setModel(arg0, arg1)
	end

	registerVal17:linkToElementModel(registerVal2, nil, false, __FUNC_2465_)
	registerVal2:addElement(registerVal17)
	registerVal2.joinable = registerVal17
	local registerVal18 = CoD.Social_PartyLeaderIconLarge.new(arg0, arg1)
	registerVal18:setLeftRight(true, false, 376.000000, 400.000000)
	registerVal18:setTopBottom(true, false, 0.250000, 59.750000)
	local registerVal21 = {}
	local registerVal22 = {}
	registerVal22.stateName = "Invisible"
	local function __FUNC_24B6_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal22.condition = __FUNC_24B6_
	registerVal21 = {registerVal22}
	registerVal18:mergeStateConditions(registerVal21)
	registerVal2:addElement(registerVal18)
	registerVal2.SocialPartyLeaderIconLarge0 = registerVal18
	local registerVal19 = CoD.Social_PartyMemberIconLarge.new(arg0, arg1)
	registerVal19:setLeftRight(false, true, 3.000000, 9.000000)
	registerVal19:setTopBottom(true, true, 1.000000, -1.250000)
	registerVal22 = {}
	local registerVal23 = {}
	registerVal23.stateName = "PartyMemberTopOrMiddle"
	local function __FUNC_2501_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isPartyMemberTopOrMiddle")
	end

	registerVal23.condition = __FUNC_2501_
	local registerVal24 = {}
	registerVal24.stateName = "PartyMember"
	local function __FUNC_2584_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal24.condition = __FUNC_2584_
	local registerVal25 = {}
	registerVal25.stateName = "OtherPartyMemberTopOrMiddle"
	local function __FUNC_25D1_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isOtherMemberTopOrMiddle")
	end

	registerVal25.condition = __FUNC_25D1_
	local registerVal26 = {}
	registerVal26.stateName = "OtherPartyMember"
	local function __FUNC_2654_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isOtherMember")
	end

	registerVal26.condition = __FUNC_2654_
	registerVal22 = {registerVal23, registerVal24, registerVal25, registerVal26}
	registerVal19:mergeStateConditions(registerVal22)
	local function __FUNC_26CD_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isPartyMemberTopOrMiddle"
		arg0:updateElementState(registerVal19, registerVal4)
	end

	registerVal19:linkToElementModel(registerVal19, "isPartyMemberTopOrMiddle", true, __FUNC_26CD_)
	local function __FUNC_27FA_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isOtherMemberTopOrMiddle"
		arg0:updateElementState(registerVal19, registerVal4)
	end

	registerVal19:linkToElementModel(registerVal19, "isOtherMemberTopOrMiddle", true, __FUNC_27FA_)
	local function __FUNC_2926_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isOtherMember"
		arg0:updateElementState(registerVal19, registerVal4)
	end

	registerVal19:linkToElementModel(registerVal19, "isOtherMember", true, __FUNC_2926_)
	registerVal2:addElement(registerVal19)
	registerVal2.SocialPartyMemberIconLarge0 = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(false, true, -5.000000, 3.500000)
	registerVal20:setTopBottom(true, false, -3.000000, 5.500000)
	registerVal20:setAlpha(0.150000)
	registerVal20:setImage(RegisterImage("uie_t7_menu_social_pixel"))
	registerVal2:addElement(registerVal20)
	registerVal2.pixel = registerVal20
	registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(false, true, -5.000000, 3.500000)
	registerVal21:setTopBottom(false, true, -5.500000, 3.000000)
	registerVal21:setAlpha(0.150000)
	registerVal21:setImage(RegisterImage("uie_t7_menu_social_pixel"))
	registerVal2:addElement(registerVal21)
	registerVal2.pixel0 = registerVal21
	registerVal22 = LUI.UIImage.new()
	registerVal22:setLeftRight(false, true, -378.250000, -369.750000)
	registerVal22:setTopBottom(true, false, -4.000000, 4.500000)
	registerVal22:setAlpha(0.150000)
	registerVal22:setImage(RegisterImage("uie_t7_menu_social_pixel"))
	registerVal2:addElement(registerVal22)
	registerVal2.pixel1 = registerVal22
	registerVal23 = LUI.UIImage.new()
	registerVal23:setLeftRight(false, true, -378.250000, -369.750000)
	registerVal23:setTopBottom(false, true, -4.500000, 4.000000)
	registerVal23:setAlpha(0.150000)
	registerVal23:setImage(RegisterImage("uie_t7_menu_social_pixel"))
	registerVal2:addElement(registerVal23)
	registerVal2.pixel00 = registerVal23
	registerVal24 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal24:setLeftRight(false, false, -188.250000, 189.000000)
	registerVal24:setTopBottom(true, true, -1.000000, 2.000000)
	registerVal24:setAlpha(0.600000)
	registerVal2:addElement(registerVal24)
	registerVal2.StartMenuframenoBG0 = registerVal24
	registerVal25 = CoD.GroupsCheckbox.new(arg0, arg1)
	registerVal25:setLeftRight(true, false, 382.000000, 396.000000)
	registerVal25:setTopBottom(true, false, 21.500000, 35.500000)
	registerVal25:setScale(1.200000)
	local function __FUNC_2A47_(arg0)
		registerVal25:setModel(arg0, arg1)
	end

	registerVal25:linkToElementModel(registerVal2, nil, false, __FUNC_2A47_)
	registerVal2:addElement(registerVal25)
	registerVal2.GroupsCheckbox = registerVal25
	registerVal26 = {}
	local registerVal27 = {}
	local function __FUNC_2A96_()
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
		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal27.DefaultClip = __FUNC_2A96_
	local function __FUNC_2DC0_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_2FF9_(arg0, arg1)
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
		__FUNC_2FF9_(registerVal4, {})
		local function __FUNC_31AD_(arg0, arg1)
			local function __FUNC_3327_(arg0, arg1)
				local function __FUNC_349F_(arg0, arg1)
					local function __FUNC_3617_(arg0, arg1)
						local function __FUNC_378F_(arg0, arg1)
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
							__FUNC_378F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_378F_)
					end

					if arg1.interrupted then
						__FUNC_3617_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.480000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3617_)
				end

				if arg1.interrupted then
					__FUNC_349F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_349F_)
			end

			if arg1.interrupted then
				__FUNC_3327_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.370000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3327_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_31AD_(registerVal12, {})
		local function __FUNC_3941_(arg0, arg1)
			local function __FUNC_3ABB_(arg0, arg1)
				local function __FUNC_3C33_(arg0, arg1)
					local function __FUNC_3DAB_(arg0, arg1)
						local function __FUNC_3F23_(arg0, arg1)
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
							__FUNC_3F23_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F23_)
					end

					if arg1.interrupted then
						__FUNC_3DAB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.480000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3DAB_)
				end

				if arg1.interrupted then
					__FUNC_3C33_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C33_)
			end

			if arg1.interrupted then
				__FUNC_3ABB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.370000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3ABB_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_3941_(registerVal13, {})
		local function __FUNC_40D5_(arg0, arg1)
			local function __FUNC_424F_(arg0, arg1)
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
				__FUNC_424F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.430000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_424F_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_40D5_(registerVal14, {})
		local function __FUNC_4401_(arg0, arg1)
			local function __FUNC_457B_(arg0, arg1)
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
				__FUNC_457B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.430000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_457B_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_4401_(registerVal15, {})
	end

	registerVal27.GainFocus = __FUNC_2DC0_
	local function __FUNC_472D_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal27.Focus = __FUNC_472D_
	local function __FUNC_48E6_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_4B22_(arg0, arg1)
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
		__FUNC_4B22_(registerVal4, {})
		local function __FUNC_4CD5_(arg0, arg1)
			local function __FUNC_4E4F_(arg0, arg1)
				local function __FUNC_4FC7_(arg0, arg1)
					local function __FUNC_513F_(arg0, arg1)
						local function __FUNC_52B7_(arg0, arg1)
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
							__FUNC_52B7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.370000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_52B7_)
					end

					if arg1.interrupted then
						__FUNC_513F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_513F_)
				end

				if arg1.interrupted then
					__FUNC_4FC7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.480000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4FC7_)
			end

			if arg1.interrupted then
				__FUNC_4E4F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4E4F_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_4CD5_(registerVal12, {})
		local function __FUNC_5469_(arg0, arg1)
			local function __FUNC_55E3_(arg0, arg1)
				local function __FUNC_575B_(arg0, arg1)
					local function __FUNC_58D3_(arg0, arg1)
						local function __FUNC_5A4B_(arg0, arg1)
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
							__FUNC_5A4B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.370000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5A4B_)
					end

					if arg1.interrupted then
						__FUNC_58D3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_58D3_)
				end

				if arg1.interrupted then
					__FUNC_575B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.480000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_575B_)
			end

			if arg1.interrupted then
				__FUNC_55E3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_55E3_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_5469_(registerVal13, {})
		local function __FUNC_5BFD_(arg0, arg1)
			local function __FUNC_5D77_(arg0, arg1)
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
				__FUNC_5D77_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.430000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5D77_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_5BFD_(registerVal14, {})
		local function __FUNC_5F29_(arg0, arg1)
			local function __FUNC_60A3_(arg0, arg1)
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
				__FUNC_60A3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.430000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_60A3_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_5F29_(registerVal15, {})
	end

	registerVal27.LoseFocus = __FUNC_48E6_
	registerVal26.DefaultState = registerVal27
	registerVal2.clipsPerState = registerVal26
	registerVal25.id = "GroupsCheckbox"
	local function __FUNC_6255_(arg0, arg1)
		local registerVal2 = arg0.GroupsCheckbox:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_6255_)
	local function __FUNC_635E_(arg0)
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.BoxButtonLrgInactive:close()
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
		arg0.GroupsCheckbox:close()
		arg0.emblem:close()
		arg0.gamertag:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_635E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

