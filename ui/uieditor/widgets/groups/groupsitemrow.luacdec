-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyMemberBackingFooter")
require("ui.uieditor.widgets.Groups.GroupEmblemWidget")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.Groups.GroupsItemRowStatus")
require("ui.uieditor.widgets.Groups.Social.GroupsSocialMainPrimaryGroupBadge")
require("ui.uieditor.widgets.Common.common_ButtonLabel_01")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupsItemRow = registerVal1
function CoD.GroupsItemRow.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupsItemRow)
	registerVal2.id = "GroupsItemRow"
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
	registerVal4:setAlpha(0.400000)
	registerVal2:addElement(registerVal4)
	registerVal2.BoxButtonLrgInactive = registerVal4
	local registerVal5 = CoD.cac_ButtonBoxLrgIdle.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal5:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal5:setAlpha(0.500000)
	registerVal2:addElement(registerVal5)
	registerVal2.BoxButtonLrgIdle = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, true, -3.000000, 2.340000)
	registerVal6:setTopBottom(false, false, -11.670000, 12.330000)
	registerVal6:setRGB(0.330000, 0.330000, 0.330000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_img_t7_menu_frontend_asset_list1l_focusline"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.LfocusLINE = registerVal6
	local registerVal7 = CoD.LobbyMemberBackingFooter.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, -2.500000, 2.000000)
	registerVal7:setTopBottom(false, false, 22.000000, 25.000000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.LobbyMemberBackingFooter0 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, true, -26.180000, -10.180000)
	registerVal8:setTopBottom(false, false, -8.090000, 7.920000)
	registerVal8:setRGB(0.550000, 0.770000, 0.250000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_hud_cac_equipped_16"))
	registerVal2:addElement(registerVal8)
	registerVal2.SelectedIcon = registerVal8
	local registerVal9 = CoD.GroupEmblemWidget.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 0.000000, 97.000000)
	registerVal9:setTopBottom(true, false, 0.000000, 60.000000)
	local function __FUNC_1A4C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.GroupEmblem:setupGroupEmblem(registerVal1)
		end
	end

	registerVal9:linkToElementModel(registerVal2, "groupId", true, __FUNC_1A4C_)
	registerVal2:addElement(registerVal9)
	registerVal2.GroupEmblemWidget = registerVal9
	local registerVal10 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal10:setLeftRight(true, true, -4.250000, 2.000000)
	registerVal10:setTopBottom(true, false, -4.000000, 0.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setZoom(1.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.FocusBarT = registerVal10
	local registerVal11 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal11:setLeftRight(true, true, -4.250000, 2.000000)
	registerVal11:setTopBottom(false, true, 0.000000, 4.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setZoom(1.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.FocusBarB = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, true, -12.000000, 7.000000)
	registerVal12:setTopBottom(true, false, -8.750000, 4.750000)
	registerVal12:setRGB(1.000000, 0.090000, 0.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.glitch = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, true, -8.500000, 8.500000)
	registerVal13:setTopBottom(false, true, -6.000000, 9.000000)
	registerVal13:setRGB(1.000000, 0.150000, 0.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.glitch2 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, true, -12.000000, 7.000000)
	registerVal14:setTopBottom(true, false, -8.750000, 4.750000)
	registerVal14:setRGB(1.000000, 0.090000, 0.000000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.glitch0 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, 95.000000, 99.000000)
	registerVal15:setTopBottom(false, false, -30.500000, 31.000000)
	registerVal15:setAlpha(0.300000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.itemImageLine = registerVal15
	local registerVal16 = CoD.GroupsItemRowStatus.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, 169.000000, 369.000000)
	registerVal16:setTopBottom(true, false, 40.000000, 58.000000)
	local function __FUNC_1B0A_(arg0)
		registerVal16:setModel(arg0, arg1)
	end

	registerVal16:linkToElementModel(registerVal2, nil, false, __FUNC_1B0A_)
	local registerVal19 = {}
	local registerVal20 = {}
	registerVal20.stateName = "Admin"
	local function __FUNC_1B5A_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "areWeAdmin")
	end

	registerVal20.condition = __FUNC_1B5A_
	local registerVal21 = {}
	registerVal21.stateName = "Owner"
	local function __FUNC_1BCE_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "areWeOwner")
	end

	registerVal21.condition = __FUNC_1BCE_
	registerVal19 = {registerVal20, registerVal21}
	registerVal16:mergeStateConditions(registerVal19)
	local function __FUNC_1C42_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "areWeAdmin"
		arg0:updateElementState(registerVal16, registerVal4)
	end

	registerVal16:linkToElementModel(registerVal16, "areWeAdmin", true, __FUNC_1C42_)
	local function __FUNC_1D60_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "areWeOwner"
		arg0:updateElementState(registerVal16, registerVal4)
	end

	registerVal16:linkToElementModel(registerVal16, "areWeOwner", true, __FUNC_1D60_)
	registerVal2:addElement(registerVal16)
	registerVal2.GroupsItemRowStatus = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(true, false, 169.130000, 199.880000)
	registerVal17:setTopBottom(true, false, 13.540000, 44.290000)
	registerVal17:setupSpinner()
	registerVal2:addElement(registerVal17)
	registerVal2.Spinner = registerVal17
	local registerVal18 = CoD.GroupsSocialMainPrimaryGroupBadge.new(arg0, arg1)
	registerVal18:setLeftRight(true, false, 344.340000, 374.670000)
	registerVal18:setTopBottom(true, false, 3.000000, 33.330000)
	local function __FUNC_1E80_(arg0)
		registerVal18:setModel(arg0, arg1)
	end

	registerVal18:linkToElementModel(registerVal2, nil, false, __FUNC_1E80_)
	registerVal21 = {}
	local registerVal22 = {}
	registerVal22.stateName = "Visible"
	local function __FUNC_1ED2_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isPrimaryGroup")
	end

	registerVal22.condition = __FUNC_1ED2_
	registerVal21 = {registerVal22}
	registerVal18:mergeStateConditions(registerVal21)
	local function __FUNC_1F4A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isPrimaryGroup"
		arg0:updateElementState(registerVal18, registerVal4)
	end

	registerVal18:linkToElementModel(registerVal18, "isPrimaryGroup", true, __FUNC_1F4A_)
	registerVal2:addElement(registerVal18)
	registerVal2.GroupsSocialMainPrimaryGroupBadge = registerVal18
	registerVal19 = CoD.common_ButtonLabel_01.new(arg0, arg1)
	registerVal19:setLeftRight(true, false, 103.500000, 347.820000)
	registerVal19:setTopBottom(true, false, 18.920000, 38.920000)
	local function __FUNC_206C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal19.itemName:setText(registerVal1)
		end
	end

	registerVal19:linkToElementModel(registerVal2, "name", true, __FUNC_206C_)
	registerVal2:addElement(registerVal19)
	registerVal2.commonButtonLabel = registerVal19
	registerVal20 = {}
	registerVal21 = {}
	local function __FUNC_211E_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal9:completeAnimation()
		registerVal2.GroupEmblemWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, -2.000000, 2.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -4.000000, 0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, -2.000000, 2.000000)
		registerVal2.FocusBarB:setTopBottom(false, true, 0.000000, 4.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.glitch:setLeftRight(true, true, -12.000000, 7.000000)
		registerVal2.glitch:setTopBottom(true, false, -8.750000, 4.750000)
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.glitch2:setLeftRight(true, true, -8.500000, 8.500000)
		registerVal2.glitch2:setTopBottom(false, true, -6.000000, 9.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.glitch0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.itemImageLine:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.GroupsItemRowStatus:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.Spinner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal19:completeAnimation()
		registerVal2.commonButtonLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal21.DefaultClip = __FUNC_211E_
	local function __FUNC_271E_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_2996_(arg0, arg1)
			local function __FUNC_2AEC_(arg0, arg1)
				local function __FUNC_2C67_(arg0, arg1)
					local function __FUNC_2DBC_(arg0, arg1)
						local function __FUNC_2F37_(arg0, arg1)
							local function __FUNC_308C_(arg0, arg1)
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
								__FUNC_308C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_308C_)
						end

						if arg1.interrupted then
							__FUNC_2F37_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F37_)
					end

					if arg1.interrupted then
						__FUNC_2DBC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DBC_)
				end

				if arg1.interrupted then
					__FUNC_2C67_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C67_)
			end

			if arg1.interrupted then
				__FUNC_2AEC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AEC_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_2996_(registerVal10, {})
		local function __FUNC_3241_(arg0, arg1)
			local function __FUNC_3398_(arg0, arg1)
				local function __FUNC_3513_(arg0, arg1)
					local function __FUNC_3668_(arg0, arg1)
						local function __FUNC_37E3_(arg0, arg1)
							local function __FUNC_3938_(arg0, arg1)
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
								__FUNC_3938_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3938_)
						end

						if arg1.interrupted then
							__FUNC_37E3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37E3_)
					end

					if arg1.interrupted then
						__FUNC_3668_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3668_)
				end

				if arg1.interrupted then
					__FUNC_3513_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3513_)
			end

			if arg1.interrupted then
				__FUNC_3398_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3398_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_3241_(registerVal11, {})
		local function __FUNC_3AED_(arg0, arg1)
			local function __FUNC_3C44_(arg0, arg1)
				local function __FUNC_3DBF_(arg0, arg1)
					local function __FUNC_3F14_(arg0, arg1)
						local function __FUNC_408F_(arg0, arg1)
							local function __FUNC_41E4_(arg0, arg1)
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
								__FUNC_41E4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_41E4_)
						end

						if arg1.interrupted then
							__FUNC_408F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_408F_)
					end

					if arg1.interrupted then
						__FUNC_3F14_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F14_)
				end

				if arg1.interrupted then
					__FUNC_3DBF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3DBF_)
			end

			if arg1.interrupted then
				__FUNC_3C44_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C44_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		registerVal2.glitch:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_3AED_(registerVal12, {})
		local function __FUNC_4423_(arg0, arg1)
			local function __FUNC_4578_(arg0, arg1)
				local function __FUNC_46F3_(arg0, arg1)
					local function __FUNC_4848_(arg0, arg1)
						local function __FUNC_49C3_(arg0, arg1)
							local function __FUNC_4B18_(arg0, arg1)
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
								__FUNC_4B18_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B18_)
						end

						if arg1.interrupted then
							__FUNC_49C3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_49C3_)
					end

					if arg1.interrupted then
						__FUNC_4848_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4848_)
				end

				if arg1.interrupted then
					__FUNC_46F3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_46F3_)
			end

			if arg1.interrupted then
				__FUNC_4578_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4578_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_4423_(registerVal13, {})
	end

	registerVal21.GainFocus = __FUNC_271E_
	local function __FUNC_4CCD_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal9:completeAnimation()
		registerVal2.GroupEmblemWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal15:completeAnimation()
		registerVal2.itemImageLine:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.GroupsItemRowStatus:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.Spinner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal21.Focus = __FUNC_4CCD_
	local function __FUNC_5066_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_52A2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.400000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_52A2_(registerVal4, {})
		local function __FUNC_5455_(arg0, arg1)
			local function __FUNC_55CF_(arg0, arg1)
				local function __FUNC_5747_(arg0, arg1)
					local function __FUNC_58BF_(arg0, arg1)
						local function __FUNC_5A14_(arg0, arg1)
							local function __FUNC_5B8F_(arg0, arg1)
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
								__FUNC_5B8F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B8F_)
						end

						if arg1.interrupted then
							__FUNC_5A14_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5A14_)
					end

					if arg1.interrupted then
						__FUNC_58BF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_58BF_)
				end

				if arg1.interrupted then
					__FUNC_5747_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5747_)
			end

			if arg1.interrupted then
				__FUNC_55CF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_55CF_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_5455_(registerVal10, {})
		local function __FUNC_5D41_(arg0, arg1)
			local function __FUNC_5EBB_(arg0, arg1)
				local function __FUNC_6033_(arg0, arg1)
					local function __FUNC_61AB_(arg0, arg1)
						local function __FUNC_6300_(arg0, arg1)
							local function __FUNC_647B_(arg0, arg1)
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
								__FUNC_647B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_647B_)
						end

						if arg1.interrupted then
							__FUNC_6300_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6300_)
					end

					if arg1.interrupted then
						__FUNC_61AB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_61AB_)
				end

				if arg1.interrupted then
					__FUNC_6033_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6033_)
			end

			if arg1.interrupted then
				__FUNC_5EBB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5EBB_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_5D41_(registerVal11, {})
		local function __FUNC_662D_(arg0, arg1)
			local function __FUNC_6784_(arg0, arg1)
				local function __FUNC_68FF_(arg0, arg1)
					local function __FUNC_6A54_(arg0, arg1)
						local function __FUNC_6BCF_(arg0, arg1)
							local function __FUNC_6D24_(arg0, arg1)
								local function __FUNC_6E9F_(arg0, arg1)
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
									__FUNC_6E9F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6E9F_)
							end

							if arg1.interrupted then
								__FUNC_6D24_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6D24_)
						end

						if arg1.interrupted then
							__FUNC_6BCF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6BCF_)
					end

					if arg1.interrupted then
						__FUNC_6A54_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6A54_)
				end

				if arg1.interrupted then
					__FUNC_68FF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_68FF_)
			end

			if arg1.interrupted then
				__FUNC_6784_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6784_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_662D_(registerVal12, {})
		local function __FUNC_7051_(arg0, arg1)
			local function __FUNC_71A8_(arg0, arg1)
				local function __FUNC_7323_(arg0, arg1)
					local function __FUNC_7478_(arg0, arg1)
						local function __FUNC_75F3_(arg0, arg1)
							local function __FUNC_7748_(arg0, arg1)
								local function __FUNC_78C3_(arg0, arg1)
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
									__FUNC_78C3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_78C3_)
							end

							if arg1.interrupted then
								__FUNC_7748_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7748_)
						end

						if arg1.interrupted then
							__FUNC_75F3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_75F3_)
					end

					if arg1.interrupted then
						__FUNC_7478_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7478_)
				end

				if arg1.interrupted then
					__FUNC_7323_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7323_)
			end

			if arg1.interrupted then
				__FUNC_71A8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_71A8_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_7051_(registerVal13, {})
	end

	registerVal21.LoseFocus = __FUNC_5066_
	registerVal20.DefaultState = registerVal21
	registerVal21 = {}
	local function __FUNC_7A75_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal9:completeAnimation()
		registerVal2.GroupEmblemWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, -2.000000, 2.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -4.000000, 0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, -2.000000, 2.000000)
		registerVal2.FocusBarB:setTopBottom(false, true, 0.000000, 4.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.glitch:setLeftRight(true, true, -12.000000, 7.000000)
		registerVal2.glitch:setTopBottom(true, false, -8.750000, 4.750000)
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.glitch2:setLeftRight(true, true, -8.500000, 8.500000)
		registerVal2.glitch2:setTopBottom(false, true, -6.000000, 9.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.glitch0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.itemImageLine:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.GroupsItemRowStatus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.Spinner:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.GroupsSocialMainPrimaryGroupBadge:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.commonButtonLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal21.DefaultClip = __FUNC_7A75_
	local function __FUNC_80E0_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_835A_(arg0, arg1)
			local function __FUNC_84B0_(arg0, arg1)
				local function __FUNC_862B_(arg0, arg1)
					local function __FUNC_8780_(arg0, arg1)
						local function __FUNC_88FB_(arg0, arg1)
							local function __FUNC_8A50_(arg0, arg1)
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
								__FUNC_8A50_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8A50_)
						end

						if arg1.interrupted then
							__FUNC_88FB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_88FB_)
					end

					if arg1.interrupted then
						__FUNC_8780_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8780_)
				end

				if arg1.interrupted then
					__FUNC_862B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_862B_)
			end

			if arg1.interrupted then
				__FUNC_84B0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_84B0_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_835A_(registerVal10, {})
		local function __FUNC_8C05_(arg0, arg1)
			local function __FUNC_8D5C_(arg0, arg1)
				local function __FUNC_8ED7_(arg0, arg1)
					local function __FUNC_902C_(arg0, arg1)
						local function __FUNC_91A7_(arg0, arg1)
							local function __FUNC_92FC_(arg0, arg1)
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
								__FUNC_92FC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_92FC_)
						end

						if arg1.interrupted then
							__FUNC_91A7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_91A7_)
					end

					if arg1.interrupted then
						__FUNC_902C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_902C_)
				end

				if arg1.interrupted then
					__FUNC_8ED7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8ED7_)
			end

			if arg1.interrupted then
				__FUNC_8D5C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8D5C_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_8C05_(registerVal11, {})
		local function __FUNC_94B1_(arg0, arg1)
			local function __FUNC_9608_(arg0, arg1)
				local function __FUNC_9783_(arg0, arg1)
					local function __FUNC_98D8_(arg0, arg1)
						local function __FUNC_9A53_(arg0, arg1)
							local function __FUNC_9BA8_(arg0, arg1)
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
								__FUNC_9BA8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9BA8_)
						end

						if arg1.interrupted then
							__FUNC_9A53_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9A53_)
					end

					if arg1.interrupted then
						__FUNC_98D8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_98D8_)
				end

				if arg1.interrupted then
					__FUNC_9783_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9783_)
			end

			if arg1.interrupted then
				__FUNC_9608_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9608_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		registerVal2.glitch:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_94B1_(registerVal12, {})
		local function __FUNC_9DE7_(arg0, arg1)
			local function __FUNC_9F3C_(arg0, arg1)
				local function __FUNC_A0B7_(arg0, arg1)
					local function __FUNC_A20C_(arg0, arg1)
						local function __FUNC_A387_(arg0, arg1)
							local function __FUNC_A4DC_(arg0, arg1)
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
								__FUNC_A4DC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A4DC_)
						end

						if arg1.interrupted then
							__FUNC_A387_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A387_)
					end

					if arg1.interrupted then
						__FUNC_A20C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A20C_)
				end

				if arg1.interrupted then
					__FUNC_A0B7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A0B7_)
			end

			if arg1.interrupted then
				__FUNC_9F3C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9F3C_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_9DE7_(registerVal13, {})
	end

	registerVal21.GainFocus = __FUNC_80E0_
	local function __FUNC_A691_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal9:completeAnimation()
		registerVal2.GroupEmblemWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal15:completeAnimation()
		registerVal2.itemImageLine:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.GroupsItemRowStatus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.Spinner:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal21.Focus = __FUNC_A691_
	local function __FUNC_AA25_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_AC62_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.400000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_AC62_(registerVal4, {})
		local function __FUNC_AE15_(arg0, arg1)
			local function __FUNC_AF8F_(arg0, arg1)
				local function __FUNC_B107_(arg0, arg1)
					local function __FUNC_B27F_(arg0, arg1)
						local function __FUNC_B3D4_(arg0, arg1)
							local function __FUNC_B54F_(arg0, arg1)
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
								__FUNC_B54F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B54F_)
						end

						if arg1.interrupted then
							__FUNC_B3D4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B3D4_)
					end

					if arg1.interrupted then
						__FUNC_B27F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B27F_)
				end

				if arg1.interrupted then
					__FUNC_B107_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B107_)
			end

			if arg1.interrupted then
				__FUNC_AF8F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AF8F_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_AE15_(registerVal10, {})
		local function __FUNC_B701_(arg0, arg1)
			local function __FUNC_B87B_(arg0, arg1)
				local function __FUNC_B9F3_(arg0, arg1)
					local function __FUNC_BB6B_(arg0, arg1)
						local function __FUNC_BCC0_(arg0, arg1)
							local function __FUNC_BE3B_(arg0, arg1)
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
								__FUNC_BE3B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BE3B_)
						end

						if arg1.interrupted then
							__FUNC_BCC0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BCC0_)
					end

					if arg1.interrupted then
						__FUNC_BB6B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BB6B_)
				end

				if arg1.interrupted then
					__FUNC_B9F3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B9F3_)
			end

			if arg1.interrupted then
				__FUNC_B87B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B87B_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_B701_(registerVal11, {})
		local function __FUNC_BFED_(arg0, arg1)
			local function __FUNC_C144_(arg0, arg1)
				local function __FUNC_C2BF_(arg0, arg1)
					local function __FUNC_C414_(arg0, arg1)
						local function __FUNC_C58F_(arg0, arg1)
							local function __FUNC_C6E4_(arg0, arg1)
								local function __FUNC_C85F_(arg0, arg1)
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
									__FUNC_C85F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C85F_)
							end

							if arg1.interrupted then
								__FUNC_C6E4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C6E4_)
						end

						if arg1.interrupted then
							__FUNC_C58F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C58F_)
					end

					if arg1.interrupted then
						__FUNC_C414_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C414_)
				end

				if arg1.interrupted then
					__FUNC_C2BF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C2BF_)
			end

			if arg1.interrupted then
				__FUNC_C144_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C144_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_BFED_(registerVal12, {})
		local function __FUNC_CA11_(arg0, arg1)
			local function __FUNC_CB68_(arg0, arg1)
				local function __FUNC_CCE3_(arg0, arg1)
					local function __FUNC_CE38_(arg0, arg1)
						local function __FUNC_CFB3_(arg0, arg1)
							local function __FUNC_D108_(arg0, arg1)
								local function __FUNC_D283_(arg0, arg1)
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
									__FUNC_D283_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D283_)
							end

							if arg1.interrupted then
								__FUNC_D108_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D108_)
						end

						if arg1.interrupted then
							__FUNC_CFB3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CFB3_)
					end

					if arg1.interrupted then
						__FUNC_CE38_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CE38_)
				end

				if arg1.interrupted then
					__FUNC_CCE3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CCE3_)
			end

			if arg1.interrupted then
				__FUNC_CB68_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CB68_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_CA11_(registerVal13, {})
	end

	registerVal21.LoseFocus = __FUNC_AA25_
	registerVal20.Loading = registerVal21
	registerVal2.clipsPerState = registerVal20
	registerVal22 = {}
	local registerVal23 = {}
	registerVal23.stateName = "Loading"
	local function __FUNC_D435_(arg0, arg2, arg3)
		return SearchGroupResultsLoading(arg2, arg1)
	end

	registerVal23.condition = __FUNC_D435_
	registerVal22 = {registerVal23}
	registerVal2:mergeStateConditions(registerVal22)
	registerVal23 = Engine.GetModelForController(arg1)
	registerVal22 = Engine.GetModel(registerVal23, "groups.searchGroupsInProgress")
	local function __FUNC_D497_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.searchGroupsInProgress"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal22, __FUNC_D497_)
	registerVal16.id = "GroupsItemRowStatus"
	local function __FUNC_D5C7_(arg0)
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.BoxButtonLrgInactive:close()
		arg0.BoxButtonLrgIdle:close()
		arg0.LobbyMemberBackingFooter0:close()
		arg0.GroupEmblemWidget:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.GroupsItemRowStatus:close()
		arg0.GroupsSocialMainPrimaryGroupBadge:close()
		arg0.commonButtonLabel:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_D5C7_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

