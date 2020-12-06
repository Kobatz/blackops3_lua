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
require("ui.uieditor.widgets.Common.common_ButtonLabel_01")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupsRosterRow = registerVal1
function CoD.GroupsRosterRow.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupsRosterRow)
	registerVal2.id = "GroupsRosterRow"
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
	local registerVal6 = CoD.Social_background.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 97.470000, 374.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 60.000000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.Socialbackground00 = registerVal6
	local registerVal7 = CoD.Social_background.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 0.000000, 96.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 59.750000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.Socialbackground000 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 0.000000, 96.000000)
	registerVal8:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_1CC4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setupPlayerEmblemByXUID(registerVal1)
		end
	end

	registerVal8:linkToElementModel(registerVal2, "identityBadge.xuid", true, __FUNC_1CC4_)
	registerVal2:addElement(registerVal8)
	registerVal2.emblem = registerVal8
	local registerVal9 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, -4.250000, 2.000000)
	registerVal9:setTopBottom(true, false, -4.000000, 0.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setZoom(1.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.FocusBarT = registerVal9
	local registerVal10 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal10:setLeftRight(true, true, -4.250000, 2.000000)
	registerVal10:setTopBottom(false, true, 0.000000, 4.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setZoom(1.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.FocusBarB = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, true, -12.000000, 7.000000)
	registerVal11:setTopBottom(true, false, -8.750000, 4.750000)
	registerVal11:setRGB(1.000000, 0.090000, 0.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.glitch = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, true, -8.500000, 8.500000)
	registerVal12:setTopBottom(false, true, -6.000000, 9.000000)
	registerVal12:setRGB(1.000000, 0.150000, 0.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.glitch2 = registerVal12
	local registerVal13 = CoD.Social_PlayersListButton_Presence.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 106.000000, 366.000000)
	registerVal13:setTopBottom(true, false, 32.000000, 57.000000)
	local function __FUNC_1D68_(arg0)
		registerVal13:setModel(arg0, arg1)
	end

	registerVal13:linkToElementModel(registerVal2, nil, false, __FUNC_1D68_)
	local function __FUNC_1DBA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.platformPresenceScroller.textBox:setText(PlatformPresenceToLocalizedString(registerVal1))
		end
	end

	registerVal13:linkToElementModel(registerVal2, "platformPresence", true, __FUNC_1DBA_)
	local function __FUNC_1ECA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.titlePresenceScroller.textBox:setText(Engine.Localize(PresenceActivityToModeString(registerVal1)))
		end
	end

	registerVal13:linkToElementModel(registerVal2, "activity", true, __FUNC_1ECA_)
	local function __FUNC_1FF8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.titlePresenceIcon:setImage(RegisterImage(PresenceActivityToIcon(registerVal1)))
		end
	end

	registerVal13:linkToElementModel(registerVal2, "activity", true, __FUNC_1FF8_)
	local function __FUNC_20FB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.lastMet:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal13:linkToElementModel(registerVal2, "titlePresence", true, __FUNC_20FB_)
	local function __FUNC_21CF_(arg0, arg1)
		SetupAutoHorizontalAlignArabicText(arg0)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal13:registerEventHandler("menu_loaded", __FUNC_21CF_)
	registerVal2:addElement(registerVal13)
	registerVal2.presence = registerVal13
	local registerVal14 = CoD.Social_PlayersListButton_Joinable.new(arg0, arg1)
	registerVal14:setLeftRight(false, false, 163.000000, 179.000000)
	registerVal14:setTopBottom(true, false, 4.500000, 28.500000)
	local function __FUNC_2271_(arg0)
		registerVal14:setModel(arg0, arg1)
	end

	registerVal14:linkToElementModel(registerVal2, nil, false, __FUNC_2271_)
	registerVal2:addElement(registerVal14)
	registerVal2.joinable = registerVal14
	local registerVal15 = CoD.Social_PartyLeaderIconLarge.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 376.000000, 400.000000)
	registerVal15:setTopBottom(true, false, 0.250000, 59.750000)
	local registerVal18 = {}
	local registerVal19 = {}
	registerVal19.stateName = "Invisible"
	local function __FUNC_22C2_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal19.condition = __FUNC_22C2_
	registerVal18 = {registerVal19}
	registerVal15:mergeStateConditions(registerVal18)
	registerVal2:addElement(registerVal15)
	registerVal2.SocialPartyLeaderIconLarge0 = registerVal15
	local registerVal16 = CoD.Social_PartyMemberIconLarge.new(arg0, arg1)
	registerVal16:setLeftRight(false, true, 3.000000, 9.000000)
	registerVal16:setTopBottom(true, true, 1.000000, -1.250000)
	registerVal19 = {}
	local registerVal20 = {}
	registerVal20.stateName = "PartyMemberTopOrMiddle"
	local function __FUNC_230D_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isPartyMemberTopOrMiddle")
	end

	registerVal20.condition = __FUNC_230D_
	local registerVal21 = {}
	registerVal21.stateName = "PartyMember"
	local function __FUNC_2390_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal21.condition = __FUNC_2390_
	local registerVal22 = {}
	registerVal22.stateName = "OtherPartyMemberTopOrMiddle"
	local function __FUNC_23DD_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isOtherMemberTopOrMiddle")
	end

	registerVal22.condition = __FUNC_23DD_
	local registerVal23 = {}
	registerVal23.stateName = "OtherPartyMember"
	local function __FUNC_2460_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isOtherMember")
	end

	registerVal23.condition = __FUNC_2460_
	registerVal19 = {registerVal20, registerVal21, registerVal22, registerVal23}
	registerVal16:mergeStateConditions(registerVal19)
	local function __FUNC_24D9_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isPartyMemberTopOrMiddle"
		arg0:updateElementState(registerVal16, registerVal4)
	end

	registerVal16:linkToElementModel(registerVal16, "isPartyMemberTopOrMiddle", true, __FUNC_24D9_)
	local function __FUNC_2606_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isOtherMemberTopOrMiddle"
		arg0:updateElementState(registerVal16, registerVal4)
	end

	registerVal16:linkToElementModel(registerVal16, "isOtherMemberTopOrMiddle", true, __FUNC_2606_)
	local function __FUNC_2732_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isOtherMember"
		arg0:updateElementState(registerVal16, registerVal4)
	end

	registerVal16:linkToElementModel(registerVal16, "isOtherMember", true, __FUNC_2732_)
	registerVal2:addElement(registerVal16)
	registerVal2.SocialPartyMemberIconLarge0 = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(true, false, 0.000000, 374.000000)
	registerVal17:setTopBottom(true, false, 0.250000, 60.000000)
	registerVal17:setRGB(0.000000, 0.000000, 0.000000)
	registerVal17:setAlpha(0.200000)
	registerVal2:addElement(registerVal17)
	registerVal2.BlackTint = registerVal17
	registerVal18 = LUI.UIText.new()
	registerVal18:setLeftRight(false, true, -112.000000, -8.000000)
	registerVal18:setTopBottom(true, false, 36.000000, 54.000000)
	registerVal18:setRGB(0.280000, 0.590000, 0.990000)
	registerVal18:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal18:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal18:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_2853_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal18:setText(Engine.Localize(GroupMemberStatusEnumToString(registerVal1)))
		end
	end

	registerVal18:linkToElementModel(registerVal2, "groupMemberStatus", true, __FUNC_2853_)
	registerVal2:addElement(registerVal18)
	registerVal2.MemberStatus = registerVal18
	registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(true, false, 162.880000, 208.880000)
	registerVal19:setTopBottom(true, false, 5.500000, 51.500000)
	registerVal19:setAlpha(0.000000)
	registerVal19:setupSpinner()
	registerVal2:addElement(registerVal19)
	registerVal2.Spinner = registerVal19
	registerVal20 = CoD.common_ButtonLabel_01.new(arg0, arg1)
	registerVal20:setLeftRight(true, false, 106.000000, 345.000000)
	registerVal20:setTopBottom(true, false, 9.880000, 29.880000)
	local function __FUNC_2939_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal20.itemName:setText(registerVal1)
		end
	end

	registerVal20:linkToElementModel(registerVal2, "fullname", true, __FUNC_2939_)
	registerVal2:addElement(registerVal20)
	registerVal2.commonButtonLabel = registerVal20
	registerVal21 = {}
	registerVal22 = {}
	local function __FUNC_29EA_()
		registerVal2:setupElementClipCounter(13.000000)
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
		registerVal2.emblem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.presence:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.joinable:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal18:completeAnimation()
		registerVal2.MemberStatus:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.Spinner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.commonButtonLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal22.DefaultClip = __FUNC_29EA_
	local function __FUNC_2F22_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_3159_(arg0, arg1)
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
		__FUNC_3159_(registerVal4, {})
		local function __FUNC_330D_(arg0, arg1)
			local function __FUNC_3487_(arg0, arg1)
				local function __FUNC_35FF_(arg0, arg1)
					local function __FUNC_3777_(arg0, arg1)
						local function __FUNC_38EF_(arg0, arg1)
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
							__FUNC_38EF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38EF_)
					end

					if arg1.interrupted then
						__FUNC_3777_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.480000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3777_)
				end

				if arg1.interrupted then
					__FUNC_35FF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35FF_)
			end

			if arg1.interrupted then
				__FUNC_3487_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.370000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3487_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_330D_(registerVal9, {})
		local function __FUNC_3AA1_(arg0, arg1)
			local function __FUNC_3C1B_(arg0, arg1)
				local function __FUNC_3D93_(arg0, arg1)
					local function __FUNC_3F0B_(arg0, arg1)
						local function __FUNC_4083_(arg0, arg1)
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
							__FUNC_4083_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4083_)
					end

					if arg1.interrupted then
						__FUNC_3F0B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.480000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F0B_)
				end

				if arg1.interrupted then
					__FUNC_3D93_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D93_)
			end

			if arg1.interrupted then
				__FUNC_3C1B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.370000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C1B_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_3AA1_(registerVal10, {})
		local function __FUNC_4235_(arg0, arg1)
			local function __FUNC_43AF_(arg0, arg1)
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
				__FUNC_43AF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.430000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_43AF_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_4235_(registerVal11, {})
		local function __FUNC_4561_(arg0, arg1)
			local function __FUNC_46DB_(arg0, arg1)
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
				__FUNC_46DB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.430000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_46DB_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_4561_(registerVal12, {})
	end

	registerVal22.GainFocus = __FUNC_2F22_
	local function __FUNC_488D_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.emblem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal13:completeAnimation()
		registerVal2.presence:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.joinable:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal18:completeAnimation()
		registerVal2.MemberStatus:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.Spinner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal22.Focus = __FUNC_488D_
	local function __FUNC_4BFA_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_4E36_(arg0, arg1)
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
		__FUNC_4E36_(registerVal4, {})
		local function __FUNC_4FE9_(arg0, arg1)
			local function __FUNC_5163_(arg0, arg1)
				local function __FUNC_52DB_(arg0, arg1)
					local function __FUNC_5453_(arg0, arg1)
						local function __FUNC_55CB_(arg0, arg1)
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
							__FUNC_55CB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.370000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_55CB_)
					end

					if arg1.interrupted then
						__FUNC_5453_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5453_)
				end

				if arg1.interrupted then
					__FUNC_52DB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.480000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_52DB_)
			end

			if arg1.interrupted then
				__FUNC_5163_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5163_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_4FE9_(registerVal9, {})
		local function __FUNC_577D_(arg0, arg1)
			local function __FUNC_58F7_(arg0, arg1)
				local function __FUNC_5A6F_(arg0, arg1)
					local function __FUNC_5BE7_(arg0, arg1)
						local function __FUNC_5D5F_(arg0, arg1)
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
							__FUNC_5D5F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.370000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5D5F_)
					end

					if arg1.interrupted then
						__FUNC_5BE7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5BE7_)
				end

				if arg1.interrupted then
					__FUNC_5A6F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.480000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5A6F_)
			end

			if arg1.interrupted then
				__FUNC_58F7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_58F7_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_577D_(registerVal10, {})
		local function __FUNC_5F11_(arg0, arg1)
			local function __FUNC_608B_(arg0, arg1)
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
				__FUNC_608B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.430000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_608B_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_5F11_(registerVal11, {})
		local function __FUNC_623D_(arg0, arg1)
			local function __FUNC_63B7_(arg0, arg1)
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
				__FUNC_63B7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.430000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_63B7_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_623D_(registerVal12, {})
	end

	registerVal22.LoseFocus = __FUNC_4BFA_
	registerVal21.DefaultState = registerVal22
	registerVal22 = {}
	local function __FUNC_6569_()
		registerVal2:setupElementClipCounter(13.000000)
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
		registerVal2.emblem:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.presence:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.joinable:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal18:completeAnimation()
		registerVal2.MemberStatus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.Spinner:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.commonButtonLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal22.DefaultClip = __FUNC_6569_
	local function __FUNC_6AA2_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_6CD9_(arg0, arg1)
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
		__FUNC_6CD9_(registerVal4, {})
		local function __FUNC_6E8D_(arg0, arg1)
			local function __FUNC_7007_(arg0, arg1)
				local function __FUNC_717F_(arg0, arg1)
					local function __FUNC_72F7_(arg0, arg1)
						local function __FUNC_746F_(arg0, arg1)
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
							__FUNC_746F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_746F_)
					end

					if arg1.interrupted then
						__FUNC_72F7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.480000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_72F7_)
				end

				if arg1.interrupted then
					__FUNC_717F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_717F_)
			end

			if arg1.interrupted then
				__FUNC_7007_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.370000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7007_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_6E8D_(registerVal9, {})
		local function __FUNC_7621_(arg0, arg1)
			local function __FUNC_779B_(arg0, arg1)
				local function __FUNC_7913_(arg0, arg1)
					local function __FUNC_7A8B_(arg0, arg1)
						local function __FUNC_7C03_(arg0, arg1)
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
							__FUNC_7C03_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7C03_)
					end

					if arg1.interrupted then
						__FUNC_7A8B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.480000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7A8B_)
				end

				if arg1.interrupted then
					__FUNC_7913_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7913_)
			end

			if arg1.interrupted then
				__FUNC_779B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.370000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_779B_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_7621_(registerVal10, {})
		local function __FUNC_7DB5_(arg0, arg1)
			local function __FUNC_7F2F_(arg0, arg1)
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
				__FUNC_7F2F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.430000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7F2F_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_7DB5_(registerVal11, {})
		local function __FUNC_80E1_(arg0, arg1)
			local function __FUNC_825B_(arg0, arg1)
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
				__FUNC_825B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.430000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_825B_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_80E1_(registerVal12, {})
	end

	registerVal22.GainFocus = __FUNC_6AA2_
	local function __FUNC_840D_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.emblem:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal13:completeAnimation()
		registerVal2.presence:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.joinable:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal18:completeAnimation()
		registerVal2.MemberStatus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.Spinner:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal22.Focus = __FUNC_840D_
	local function __FUNC_877A_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_89B6_(arg0, arg1)
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
		__FUNC_89B6_(registerVal4, {})
		local function __FUNC_8B69_(arg0, arg1)
			local function __FUNC_8CE3_(arg0, arg1)
				local function __FUNC_8E5B_(arg0, arg1)
					local function __FUNC_8FD3_(arg0, arg1)
						local function __FUNC_914B_(arg0, arg1)
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
							__FUNC_914B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.370000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_914B_)
					end

					if arg1.interrupted then
						__FUNC_8FD3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8FD3_)
				end

				if arg1.interrupted then
					__FUNC_8E5B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.480000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8E5B_)
			end

			if arg1.interrupted then
				__FUNC_8CE3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8CE3_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_8B69_(registerVal9, {})
		local function __FUNC_92FD_(arg0, arg1)
			local function __FUNC_9477_(arg0, arg1)
				local function __FUNC_95EF_(arg0, arg1)
					local function __FUNC_9767_(arg0, arg1)
						local function __FUNC_98DF_(arg0, arg1)
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
							__FUNC_98DF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.370000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_98DF_)
					end

					if arg1.interrupted then
						__FUNC_9767_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9767_)
				end

				if arg1.interrupted then
					__FUNC_95EF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.480000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_95EF_)
			end

			if arg1.interrupted then
				__FUNC_9477_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9477_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_92FD_(registerVal10, {})
		local function __FUNC_9A91_(arg0, arg1)
			local function __FUNC_9C0B_(arg0, arg1)
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
				__FUNC_9C0B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.430000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9C0B_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_9A91_(registerVal11, {})
		local function __FUNC_9DBD_(arg0, arg1)
			local function __FUNC_9F37_(arg0, arg1)
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
				__FUNC_9F37_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.430000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9F37_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_9DBD_(registerVal12, {})
	end

	registerVal22.LoseFocus = __FUNC_877A_
	registerVal21.Loading = registerVal22
	registerVal2.clipsPerState = registerVal21
	registerVal23 = {}
	local registerVal24 = {}
	registerVal24.stateName = "Loading"
	local function __FUNC_A0E9_(arg0, arg2, arg3)
		return FetchGroupMembersResultsLoading(arg1)
	end

	registerVal24.condition = __FUNC_A0E9_
	registerVal23 = {registerVal24}
	registerVal2:mergeStateConditions(registerVal23)
	registerVal24 = Engine.GetModelForController(arg1)
	registerVal23 = Engine.GetModel(registerVal24, "groups.fetchGroupMembersInProgress")
	local function __FUNC_A14D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.fetchGroupMembersInProgress"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal23, __FUNC_A14D_)
	local function __FUNC_A284_(arg0)
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
		arg0.commonButtonLabel:close()
		arg0.emblem:close()
		arg0.MemberStatus:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A284_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

