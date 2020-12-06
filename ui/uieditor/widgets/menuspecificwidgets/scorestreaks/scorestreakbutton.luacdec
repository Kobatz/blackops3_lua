-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.Scorestreaks.scorestreaks_BoxLabel")
require("ui.uieditor.widgets.Prestige.Prestige_PermanentUnlockTokenStatic")
require("ui.uieditor.widgets.CAC.cac_IconTokenStatic")
require("ui.uieditor.widgets.CAC.cac_LabelNew")
require("ui.uieditor.widgets.CAC.cac_lock")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.CAC.RestrictedItemWarning")
require("ui.uieditor.widgets.Prestige.Prestige_TokenRefundHintWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.scorestreakButton = registerVal1
function CoD.scorestreakButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.scorestreakButton)
	registerVal2.id = "scorestreakButton"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
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
	registerVal5:setAlpha(0.700000)
	registerVal2:addElement(registerVal5)
	registerVal2.BoxButtonLrgIdle = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6:setRGB(0.430000, 0.430000, 0.430000)
	registerVal6:setAlpha(0.200000)
	registerVal2:addElement(registerVal6)
	registerVal2.itemImage = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_21B8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setImage(RegisterImage(AppendString("_menu", GetItemImageFromIndexByMode(1.000000, registerVal1))))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_21B8_)
	registerVal2:addElement(registerVal7)
	registerVal2.image = registerVal7
	local registerVal8 = CoD.scorestreaks_BoxLabel.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 3.000000, 117.000000)
	registerVal8:setTopBottom(true, false, 98.000000, 117.000000)
	local function __FUNC_22D3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.name:setText(Engine.Localize(GetItemNameFromIndex(registerVal1)))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_22D3_)
	registerVal2:addElement(registerVal8)
	registerVal2.name = registerVal8
	local registerVal9 = CoD.Prestige_PermanentUnlockTokenStatic.new(arg0, arg1)
	registerVal9:setLeftRight(false, true, -26.000000, 2.000000)
	registerVal9:setTopBottom(true, false, -3.000000, 25.000000)
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Visible"
	local function __FUNC_23CA_(arg0, arg2, arg3)
		local registerVal3 = IsInPermanentUnlockMenu(arg1)
		if registerVal3 then
			registerVal3 = IsPermanentlyUnlocked(arg2, arg1)
		end
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_23CA_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal2:addElement(registerVal9)
	registerVal2.tokenPermanentUnlock = registerVal9
	local registerVal10 = CoD.cac_IconTokenStatic.new(arg0, arg1)
	registerVal10:setLeftRight(false, true, -26.000000, 2.000000)
	registerVal10:setTopBottom(true, false, -3.000000, 25.000000)
	registerVal10:setAlpha(0.000000)
	registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "Visible"
	local function __FUNC_2460_(arg0, arg2, arg3)
		local registerVal3 = IsCampaign()
		registerVal3 = IsCACItemLocked(arg0, arg2, arg1)
		registerVal3 = IsCACItemPurchased(arg2, arg1)
		registerVal3 = IsCurrentMenuAttachmentMenu(arg0)
		if not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
			registerVal3 = IsInPermanentUnlockMenu(arg1)
		else
		end
		return true
	end

	registerVal14.condition = __FUNC_2460_
	local registerVal15 = {}
	registerVal15.stateName = "VisibleCP"
	local function __FUNC_2593_(arg0, arg2, arg3)
		local registerVal3 = IsCampaign()
		if registerVal3 then
			registerVal3 = IsCACItemLocked(arg0, arg2, arg1)
			registerVal3 = IsCACItemPurchased(arg2, arg1)
			registerVal3 = IsCurrentMenuAttachmentMenu(arg0)
			if not registerVal3 and not registerVal3 and not registerVal3 then
				registerVal3 = IsInPermanentUnlockMenu(arg1)
			else
			end
		end
		return true
	end

	registerVal15.condition = __FUNC_2593_
	registerVal13 = {registerVal14, registerVal15}
	registerVal10:mergeStateConditions(registerVal13)
	registerVal14 = Engine.GetGlobalModel()
	registerVal13 = Engine.GetModel(registerVal14, "lobbyRoot.lobbyNav")
	local function __FUNC_26C3_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:subscribeToModel(registerVal13, __FUNC_26C3_)
	local function __FUNC_27E8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:linkToElementModel(registerVal10, "itemIndex", true, __FUNC_27E8_)
	registerVal2:addElement(registerVal10)
	registerVal2.tokenUnlock = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, true, -16.000000, -2.000000)
	registerVal11:setTopBottom(true, false, 2.000000, 16.000000)
	registerVal11:setRGB(0.560000, 0.680000, 0.270000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setImage(RegisterImage("uie_t7_hud_cac_equipped_16"))
	registerVal2:addElement(registerVal11)
	registerVal2.equippedIcon = registerVal11
	registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, true, -16.000000, -2.000000)
	registerVal12:setTopBottom(true, false, 2.000000, 16.000000)
	registerVal12:setRGB(1.000000, 0.410000, 0.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setImage(RegisterImage("uie_t7_hud_cac_warning_16"))
	registerVal2:addElement(registerVal12)
	registerVal2.alertIcon = registerVal12
	registerVal13 = CoD.cac_LabelNew.new(arg0, arg1)
	registerVal13:setLeftRight(false, false, -54.000000, 54.000000)
	registerVal13:setTopBottom(false, false, -11.500000, 12.500000)
	registerVal13:setAlpha(0.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.IconNew = registerVal13
	registerVal14 = CoD.cac_lock.new(arg0, arg1)
	registerVal14:setLeftRight(false, false, -15.500000, 15.500000)
	registerVal14:setTopBottom(false, false, -16.000000, 16.000000)
	registerVal14:setAlpha(0.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.lockedIcon = registerVal14
	registerVal15 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal15:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal15:setTopBottom(true, false, -4.000000, 0.000000)
	registerVal15:setZoom(1.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.FocusBarT = registerVal15
	local registerVal16 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal16:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal16:setTopBottom(false, true, 0.000000, 4.000000)
	registerVal16:setZoom(1.000000)
	registerVal2:addElement(registerVal16)
	registerVal2.FocusBarB = registerVal16
	local registerVal17 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal17:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal17:setTopBottom(true, true, -0.500000, 0.000000)
	registerVal17:setRGB(1.000000, 0.300000, 0.000000)
	registerVal17:setAlpha(0.000000)
	registerVal2:addElement(registerVal17)
	registerVal2.FocusBorder = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(true, true, -5.000000, 4.000000)
	registerVal18:setTopBottom(true, false, -9.750000, 3.750000)
	registerVal18:setRGB(1.000000, 0.090000, 0.000000)
	registerVal18:setAlpha(0.000000)
	registerVal18:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal18:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal18)
	registerVal2.glitch = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(true, true, -5.000000, 4.000000)
	registerVal19:setTopBottom(false, true, -5.000000, 10.000000)
	registerVal19:setRGB(1.000000, 0.150000, 0.000000)
	registerVal19:setAlpha(0.000000)
	registerVal19:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal19:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal19)
	registerVal2.glitch2 = registerVal19
	local registerVal20 = CoD.scorestreaks_BoxLabel.new(arg0, arg1)
	registerVal20:setLeftRight(true, false, 3.000000, 35.000000)
	registerVal20:setTopBottom(true, false, 3.000000, 22.000000)
	registerVal20:setAlpha(0.000000)
	registerVal20.name:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
	local function __FUNC_2907_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal20.name:setText(Engine.Localize(GetScorestreakMomentumFromIndex(registerVal1)))
		end
	end

	registerVal20:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_2907_)
	registerVal2:addElement(registerVal20)
	registerVal2.cost = registerVal20
	local registerVal21 = CoD.RestrictedItemWarning.new(arg0, arg1)
	registerVal21:setLeftRight(true, false, -1.000000, 43.000000)
	registerVal21:setTopBottom(true, false, 68.750000, 106.750000)
	local function __FUNC_2A09_(arg0)
		registerVal21:setModel(arg0, arg1)
	end

	registerVal21:linkToElementModel(registerVal2, nil, false, __FUNC_2A09_)
	local registerVal24 = {}
	local registerVal25 = {}
	registerVal25.stateName = "Visible"
	local function __FUNC_2A5A_(arg0, arg2, arg3)
		return ItemIsBanned(arg0, arg2, arg1)
	end

	registerVal25.condition = __FUNC_2A5A_
	registerVal24 = {registerVal25}
	registerVal21:mergeStateConditions(registerVal24)
	local function __FUNC_2AB2_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		arg0:updateElementState(registerVal21, registerVal4)
	end

	registerVal21:linkToElementModel(registerVal21, nil, true, __FUNC_2AB2_)
	registerVal25 = Engine.GetGlobalModel()
	registerVal24 = Engine.GetModel(registerVal25, "lobbyRoot.Pregame.Update")
	local function __FUNC_2BBD_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.Update"
		arg0:updateElementState(registerVal21, registerVal4)
	end

	registerVal21:subscribeToModel(registerVal24, __FUNC_2BBD_)
	registerVal2:addElement(registerVal21)
	registerVal2.RestrictedItemWarning = registerVal21
	local registerVal22 = CoD.Prestige_TokenRefundHintWidget.new(arg0, arg1)
	registerVal22:setLeftRight(false, false, -94.000000, 94.000000)
	registerVal22:setTopBottom(false, true, 19.000000, 51.000000)
	registerVal22:setAlpha(0.000000)
	registerVal22.textCenterAlign:setText(Engine.Localize("MENU_PRESTIGE_UNLOCK_TOKEN_REFUND"))
	registerVal25 = {}
	local registerVal26 = {}
	registerVal26.stateName = "Below"
	local function __FUNC_2CEA_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal26.condition = __FUNC_2CEA_
	local registerVal27 = {}
	registerVal27.stateName = "Right"
	local function __FUNC_2D34_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal27.condition = __FUNC_2D34_
	local registerVal28 = {}
	registerVal28.stateName = "Left"
	local function __FUNC_2D81_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal28.condition = __FUNC_2D81_
	local registerVal29 = {}
	registerVal29.stateName = "Above"
	local function __FUNC_2DCD_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal29.condition = __FUNC_2DCD_
	registerVal25 = {registerVal26, registerVal27, registerVal28, registerVal29}
	registerVal22:mergeStateConditions(registerVal25)
	registerVal2:addElement(registerVal22)
	registerVal2.TokenRefundHint = registerVal22
	local registerVal23 = {}
	registerVal24 = {}
	local function __FUNC_2E19_()
		registerVal2:setupElementClipCounter(16.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.itemImage:setRGB(0.430000, 0.430000, 0.430000)
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.image:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal11:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.cost:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal22:completeAnimation()
		registerVal2.TokenRefundHint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal24.DefaultClip = __FUNC_2E19_
	local function __FUNC_3492_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_3837_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.itemImage:setAlpha(0.100000)
		__FUNC_3837_(registerVal6, {})
		local function __FUNC_39E9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.image:setAlpha(0.800000)
		__FUNC_39E9_(registerVal7, {})
		local function __FUNC_3B9D_(arg0, arg1)
			local function __FUNC_3CF4_(arg0, arg1)
				local function __FUNC_3E6F_(arg0, arg1)
					local function __FUNC_3FC4_(arg0, arg1)
						local function __FUNC_413F_(arg0, arg1)
							local function __FUNC_4294_(arg0, arg1)
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
								__FUNC_4294_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4294_)
						end

						if arg1.interrupted then
							__FUNC_413F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_413F_)
					end

					if arg1.interrupted then
						__FUNC_3FC4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3FC4_)
				end

				if arg1.interrupted then
					__FUNC_3E6F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E6F_)
			end

			if arg1.interrupted then
				__FUNC_3CF4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3CF4_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_3B9D_(registerVal15, {})
		local function __FUNC_4449_(arg0, arg1)
			local function __FUNC_45A0_(arg0, arg1)
				local function __FUNC_471B_(arg0, arg1)
					local function __FUNC_4870_(arg0, arg1)
						local function __FUNC_49EB_(arg0, arg1)
							local function __FUNC_4B40_(arg0, arg1)
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
								__FUNC_4B40_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B40_)
						end

						if arg1.interrupted then
							__FUNC_49EB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_49EB_)
					end

					if arg1.interrupted then
						__FUNC_4870_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4870_)
				end

				if arg1.interrupted then
					__FUNC_471B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_471B_)
			end

			if arg1.interrupted then
				__FUNC_45A0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_45A0_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_4449_(registerVal16, {})
		local function __FUNC_4CF5_(arg0, arg1)
			local function __FUNC_4E4C_(arg0, arg1)
				local function __FUNC_4FC7_(arg0, arg1)
					local function __FUNC_513F_(arg0, arg1)
						local function __FUNC_52B7_(arg0, arg1)
							local function __FUNC_540C_(arg0, arg1)
								local function __FUNC_5587_(arg0, arg1)
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
									__FUNC_5587_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5587_)
							end

							if arg1.interrupted then
								__FUNC_540C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_540C_)
						end

						if arg1.interrupted then
							__FUNC_52B7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_52B7_)
					end

					if arg1.interrupted then
						__FUNC_513F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_513F_)
				end

				if arg1.interrupted then
					__FUNC_4FC7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4FC7_)
			end

			if arg1.interrupted then
				__FUNC_4E4C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4E4C_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_4CF5_(registerVal17, {})
		local function __FUNC_5739_(arg0, arg1)
			local function __FUNC_5890_(arg0, arg1)
				local function __FUNC_5A0B_(arg0, arg1)
					local function __FUNC_5B60_(arg0, arg1)
						local function __FUNC_5CDB_(arg0, arg1)
							local function __FUNC_5E30_(arg0, arg1)
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
								__FUNC_5E30_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E30_)
						end

						if arg1.interrupted then
							__FUNC_5CDB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5CDB_)
					end

					if arg1.interrupted then
						__FUNC_5B60_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B60_)
				end

				if arg1.interrupted then
					__FUNC_5A0B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5A0B_)
			end

			if arg1.interrupted then
				__FUNC_5890_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5890_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_5739_(registerVal18, {})
		local function __FUNC_5FE5_(arg0, arg1)
			local function __FUNC_613C_(arg0, arg1)
				local function __FUNC_62B7_(arg0, arg1)
					local function __FUNC_640C_(arg0, arg1)
						local function __FUNC_6587_(arg0, arg1)
							local function __FUNC_66DC_(arg0, arg1)
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
								__FUNC_66DC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_66DC_)
						end

						if arg1.interrupted then
							__FUNC_6587_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6587_)
					end

					if arg1.interrupted then
						__FUNC_640C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_640C_)
				end

				if arg1.interrupted then
					__FUNC_62B7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_62B7_)
			end

			if arg1.interrupted then
				__FUNC_613C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_613C_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_5FE5_(registerVal19, {})
		local function __FUNC_6891_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal20:completeAnimation()
		registerVal2.cost:setAlpha(0.000000)
		__FUNC_6891_(registerVal20, {})
	end

	registerVal24.GainFocus = __FUNC_3492_
	local function __FUNC_6A45_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.itemImage:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.image:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal11:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal14:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal20:completeAnimation()
		registerVal2.cost:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal22:completeAnimation()
		registerVal2.TokenRefundHint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal24.Focus = __FUNC_6A45_
	local function __FUNC_6EDC_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_739F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.itemImage:setAlpha(0.200000)
		__FUNC_739F_(registerVal6, {})
		local function __FUNC_7551_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.image:setAlpha(1.000000)
		__FUNC_7551_(registerVal7, {})
		registerVal14:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		local function __FUNC_7705_(arg0, arg1)
			local function __FUNC_787F_(arg0, arg1)
				local function __FUNC_79F7_(arg0, arg1)
					local function __FUNC_7B6F_(arg0, arg1)
						local function __FUNC_7CC4_(arg0, arg1)
							local function __FUNC_7E3F_(arg0, arg1)
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
								__FUNC_7E3F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7E3F_)
						end

						if arg1.interrupted then
							__FUNC_7CC4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7CC4_)
					end

					if arg1.interrupted then
						__FUNC_7B6F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7B6F_)
				end

				if arg1.interrupted then
					__FUNC_79F7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_79F7_)
			end

			if arg1.interrupted then
				__FUNC_787F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_787F_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_7705_(registerVal15, {})
		local function __FUNC_7FF1_(arg0, arg1)
			local function __FUNC_816B_(arg0, arg1)
				local function __FUNC_82E3_(arg0, arg1)
					local function __FUNC_845B_(arg0, arg1)
						local function __FUNC_85B0_(arg0, arg1)
							local function __FUNC_872B_(arg0, arg1)
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
								__FUNC_872B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_872B_)
						end

						if arg1.interrupted then
							__FUNC_85B0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_85B0_)
					end

					if arg1.interrupted then
						__FUNC_845B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_845B_)
				end

				if arg1.interrupted then
					__FUNC_82E3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_82E3_)
			end

			if arg1.interrupted then
				__FUNC_816B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_816B_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_7FF1_(registerVal16, {})
		local function __FUNC_88DD_(arg0, arg1)
			local function __FUNC_8A34_(arg0, arg1)
				local function __FUNC_8BAF_(arg0, arg1)
					local function __FUNC_8D27_(arg0, arg1)
						local function __FUNC_8E9F_(arg0, arg1)
							local function __FUNC_8FF4_(arg0, arg1)
								local function __FUNC_916F_(arg0, arg1)
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
									__FUNC_916F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_916F_)
							end

							if arg1.interrupted then
								__FUNC_8FF4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8FF4_)
						end

						if arg1.interrupted then
							__FUNC_8E9F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8E9F_)
					end

					if arg1.interrupted then
						__FUNC_8D27_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8D27_)
				end

				if arg1.interrupted then
					__FUNC_8BAF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8BAF_)
			end

			if arg1.interrupted then
				__FUNC_8A34_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8A34_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_88DD_(registerVal17, {})
		local function __FUNC_9321_(arg0, arg1)
			local function __FUNC_9478_(arg0, arg1)
				local function __FUNC_95F3_(arg0, arg1)
					local function __FUNC_9748_(arg0, arg1)
						local function __FUNC_98C3_(arg0, arg1)
							local function __FUNC_9A18_(arg0, arg1)
								local function __FUNC_9B93_(arg0, arg1)
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
									__FUNC_9B93_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9B93_)
							end

							if arg1.interrupted then
								__FUNC_9A18_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9A18_)
						end

						if arg1.interrupted then
							__FUNC_98C3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_98C3_)
					end

					if arg1.interrupted then
						__FUNC_9748_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9748_)
				end

				if arg1.interrupted then
					__FUNC_95F3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_95F3_)
			end

			if arg1.interrupted then
				__FUNC_9478_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9478_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_9321_(registerVal18, {})
		local function __FUNC_9D45_(arg0, arg1)
			local function __FUNC_9E9C_(arg0, arg1)
				local function __FUNC_A017_(arg0, arg1)
					local function __FUNC_A16C_(arg0, arg1)
						local function __FUNC_A2E7_(arg0, arg1)
							local function __FUNC_A43C_(arg0, arg1)
								local function __FUNC_A5B7_(arg0, arg1)
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
									__FUNC_A5B7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A5B7_)
							end

							if arg1.interrupted then
								__FUNC_A43C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A43C_)
						end

						if arg1.interrupted then
							__FUNC_A2E7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A2E7_)
					end

					if arg1.interrupted then
						__FUNC_A16C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A16C_)
				end

				if arg1.interrupted then
					__FUNC_A017_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A017_)
			end

			if arg1.interrupted then
				__FUNC_9E9C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9E9C_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_9D45_(registerVal19, {})
		local function __FUNC_A769_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal20:completeAnimation()
		registerVal2.cost:setAlpha(1.000000)
		__FUNC_A769_(registerVal20, {})
	end

	registerVal24.LoseFocus = __FUNC_6EDC_
	registerVal23.DefaultState = registerVal24
	registerVal24 = {}
	local function __FUNC_A91D_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.itemImage:setRGB(0.430000, 0.430000, 0.430000)
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.image:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal11:completeAnimation()
		registerVal2.equippedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal24.DefaultClip = __FUNC_A91D_
	local function __FUNC_AEE7_()
		registerVal2:setupElementClipCounter(10.000000)
		local function __FUNC_B2E5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_B2E5_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_B499_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.itemImage:setAlpha(0.100000)
		__FUNC_B499_(registerVal6, {})
		local function __FUNC_B64D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.image:setAlpha(0.800000)
		__FUNC_B64D_(registerVal7, {})
		local function __FUNC_B801_(arg0, arg1)
			local function __FUNC_B958_(arg0, arg1)
				local function __FUNC_BAD3_(arg0, arg1)
					local function __FUNC_BC28_(arg0, arg1)
						local function __FUNC_BDA3_(arg0, arg1)
							local function __FUNC_BEF8_(arg0, arg1)
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
								__FUNC_BEF8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BEF8_)
						end

						if arg1.interrupted then
							__FUNC_BDA3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BDA3_)
					end

					if arg1.interrupted then
						__FUNC_BC28_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BC28_)
				end

				if arg1.interrupted then
					__FUNC_BAD3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BAD3_)
			end

			if arg1.interrupted then
				__FUNC_B958_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B958_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_B801_(registerVal15, {})
		local function __FUNC_C0AD_(arg0, arg1)
			local function __FUNC_C204_(arg0, arg1)
				local function __FUNC_C37F_(arg0, arg1)
					local function __FUNC_C4D4_(arg0, arg1)
						local function __FUNC_C64F_(arg0, arg1)
							local function __FUNC_C7A4_(arg0, arg1)
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
								__FUNC_C7A4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C7A4_)
						end

						if arg1.interrupted then
							__FUNC_C64F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C64F_)
					end

					if arg1.interrupted then
						__FUNC_C4D4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C4D4_)
				end

				if arg1.interrupted then
					__FUNC_C37F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C37F_)
			end

			if arg1.interrupted then
				__FUNC_C204_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C204_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_C0AD_(registerVal16, {})
		local function __FUNC_C959_(arg0, arg1)
			local function __FUNC_CAB0_(arg0, arg1)
				local function __FUNC_CC2B_(arg0, arg1)
					local function __FUNC_CDA3_(arg0, arg1)
						local function __FUNC_CF1B_(arg0, arg1)
							local function __FUNC_D070_(arg0, arg1)
								local function __FUNC_D1EB_(arg0, arg1)
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
									__FUNC_D1EB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D1EB_)
							end

							if arg1.interrupted then
								__FUNC_D070_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D070_)
						end

						if arg1.interrupted then
							__FUNC_CF1B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CF1B_)
					end

					if arg1.interrupted then
						__FUNC_CDA3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CDA3_)
				end

				if arg1.interrupted then
					__FUNC_CC2B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CC2B_)
			end

			if arg1.interrupted then
				__FUNC_CAB0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CAB0_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_C959_(registerVal17, {})
		local function __FUNC_D39D_(arg0, arg1)
			local function __FUNC_D4F4_(arg0, arg1)
				local function __FUNC_D66F_(arg0, arg1)
					local function __FUNC_D7C4_(arg0, arg1)
						local function __FUNC_D93F_(arg0, arg1)
							local function __FUNC_DA94_(arg0, arg1)
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
								__FUNC_DA94_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DA94_)
						end

						if arg1.interrupted then
							__FUNC_D93F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D93F_)
					end

					if arg1.interrupted then
						__FUNC_D7C4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D7C4_)
				end

				if arg1.interrupted then
					__FUNC_D66F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D66F_)
			end

			if arg1.interrupted then
				__FUNC_D4F4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D4F4_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_D39D_(registerVal18, {})
		local function __FUNC_DC49_(arg0, arg1)
			local function __FUNC_DDA0_(arg0, arg1)
				local function __FUNC_DF1B_(arg0, arg1)
					local function __FUNC_E070_(arg0, arg1)
						local function __FUNC_E1EB_(arg0, arg1)
							local function __FUNC_E340_(arg0, arg1)
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
								__FUNC_E340_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E340_)
						end

						if arg1.interrupted then
							__FUNC_E1EB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E1EB_)
					end

					if arg1.interrupted then
						__FUNC_E070_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E070_)
				end

				if arg1.interrupted then
					__FUNC_DF1B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DF1B_)
			end

			if arg1.interrupted then
				__FUNC_DDA0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DDA0_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_DC49_(registerVal19, {})
		local function __FUNC_E4F5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal20:completeAnimation()
		registerVal2.cost:setAlpha(0.000000)
		__FUNC_E4F5_(registerVal20, {})
	end

	registerVal24.GainFocus = __FUNC_AEE7_
	local function __FUNC_E6A9_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.itemImage:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.image:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal10:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.equippedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal20:completeAnimation()
		registerVal2.cost:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal24.Focus = __FUNC_E6A9_
	local function __FUNC_EADF_()
		registerVal2:setupElementClipCounter(10.000000)
		local function __FUNC_EED8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_EED8_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_F08D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.itemImage:setAlpha(0.200000)
		__FUNC_F08D_(registerVal6, {})
		local function __FUNC_F241_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.image:setAlpha(1.000000)
		__FUNC_F241_(registerVal7, {})
		local function __FUNC_F3F5_(arg0, arg1)
			local function __FUNC_F56F_(arg0, arg1)
				local function __FUNC_F6E7_(arg0, arg1)
					local function __FUNC_F85F_(arg0, arg1)
						local function __FUNC_F9B4_(arg0, arg1)
							local function __FUNC_FB2F_(arg0, arg1)
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
								__FUNC_FB2F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FB2F_)
						end

						if arg1.interrupted then
							__FUNC_F9B4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F9B4_)
					end

					if arg1.interrupted then
						__FUNC_F85F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F85F_)
				end

				if arg1.interrupted then
					__FUNC_F6E7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F6E7_)
			end

			if arg1.interrupted then
				__FUNC_F56F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F56F_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_F3F5_(registerVal15, {})
		local function __FUNC_FCE1_(arg0, arg1)
			local function __FUNC_FE5B_(arg0, arg1)
				local function __FUNC_FFD3_(arg0, arg1)
					local function __FUNC_1014B_(arg0, arg1)
						local function __FUNC_102A0_(arg0, arg1)
							local function __FUNC_1041B_(arg0, arg1)
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
								__FUNC_1041B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1041B_)
						end

						if arg1.interrupted then
							__FUNC_102A0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_102A0_)
					end

					if arg1.interrupted then
						__FUNC_1014B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1014B_)
				end

				if arg1.interrupted then
					__FUNC_FFD3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FFD3_)
			end

			if arg1.interrupted then
				__FUNC_FE5B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FE5B_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_FCE1_(registerVal16, {})
		local function __FUNC_105CD_(arg0, arg1)
			local function __FUNC_10724_(arg0, arg1)
				local function __FUNC_1089F_(arg0, arg1)
					local function __FUNC_10A17_(arg0, arg1)
						local function __FUNC_10B8F_(arg0, arg1)
							local function __FUNC_10CE4_(arg0, arg1)
								local function __FUNC_10E5F_(arg0, arg1)
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
									__FUNC_10E5F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10E5F_)
							end

							if arg1.interrupted then
								__FUNC_10CE4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10CE4_)
						end

						if arg1.interrupted then
							__FUNC_10B8F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10B8F_)
					end

					if arg1.interrupted then
						__FUNC_10A17_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10A17_)
				end

				if arg1.interrupted then
					__FUNC_1089F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1089F_)
			end

			if arg1.interrupted then
				__FUNC_10724_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10724_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_105CD_(registerVal17, {})
		local function __FUNC_11011_(arg0, arg1)
			local function __FUNC_11168_(arg0, arg1)
				local function __FUNC_112E3_(arg0, arg1)
					local function __FUNC_11438_(arg0, arg1)
						local function __FUNC_115B3_(arg0, arg1)
							local function __FUNC_11708_(arg0, arg1)
								local function __FUNC_11883_(arg0, arg1)
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
									__FUNC_11883_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11883_)
							end

							if arg1.interrupted then
								__FUNC_11708_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11708_)
						end

						if arg1.interrupted then
							__FUNC_115B3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_115B3_)
					end

					if arg1.interrupted then
						__FUNC_11438_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11438_)
				end

				if arg1.interrupted then
					__FUNC_112E3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_112E3_)
			end

			if arg1.interrupted then
				__FUNC_11168_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11168_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_11011_(registerVal18, {})
		local function __FUNC_11A35_(arg0, arg1)
			local function __FUNC_11B8C_(arg0, arg1)
				local function __FUNC_11D07_(arg0, arg1)
					local function __FUNC_11E5C_(arg0, arg1)
						local function __FUNC_11FD7_(arg0, arg1)
							local function __FUNC_1212C_(arg0, arg1)
								local function __FUNC_122A7_(arg0, arg1)
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
									__FUNC_122A7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_122A7_)
							end

							if arg1.interrupted then
								__FUNC_1212C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1212C_)
						end

						if arg1.interrupted then
							__FUNC_11FD7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11FD7_)
					end

					if arg1.interrupted then
						__FUNC_11E5C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11E5C_)
				end

				if arg1.interrupted then
					__FUNC_11D07_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11D07_)
			end

			if arg1.interrupted then
				__FUNC_11B8C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11B8C_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_11A35_(registerVal19, {})
		local function __FUNC_12459_(arg0, arg1)
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

		registerVal20:completeAnimation()
		registerVal2.cost:setAlpha(1.000000)
		__FUNC_12459_(registerVal20, {})
	end

	registerVal24.LoseFocus = __FUNC_EADF_
	registerVal23.Equipped = registerVal24
	registerVal24 = {}
	local function __FUNC_1260D_()
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
		registerVal6:completeAnimation()
		registerVal2.itemImage:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal10:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.IconNew:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal24.DefaultClip = __FUNC_1260D_
	local function __FUNC_12B4A_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_12DCB_(arg0, arg1)
			local function __FUNC_12F20_(arg0, arg1)
				local function __FUNC_1309B_(arg0, arg1)
					local function __FUNC_131F0_(arg0, arg1)
						local function __FUNC_1336B_(arg0, arg1)
							local function __FUNC_134C0_(arg0, arg1)
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
								__FUNC_134C0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_134C0_)
						end

						if arg1.interrupted then
							__FUNC_1336B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1336B_)
					end

					if arg1.interrupted then
						__FUNC_131F0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_131F0_)
				end

				if arg1.interrupted then
					__FUNC_1309B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1309B_)
			end

			if arg1.interrupted then
				__FUNC_12F20_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12F20_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_12DCB_(registerVal15, {})
		local function __FUNC_13675_(arg0, arg1)
			local function __FUNC_137CC_(arg0, arg1)
				local function __FUNC_13947_(arg0, arg1)
					local function __FUNC_13A9C_(arg0, arg1)
						local function __FUNC_13C17_(arg0, arg1)
							local function __FUNC_13D6C_(arg0, arg1)
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
								__FUNC_13D6C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13D6C_)
						end

						if arg1.interrupted then
							__FUNC_13C17_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13C17_)
					end

					if arg1.interrupted then
						__FUNC_13A9C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13A9C_)
				end

				if arg1.interrupted then
					__FUNC_13947_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13947_)
			end

			if arg1.interrupted then
				__FUNC_137CC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_137CC_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_13675_(registerVal16, {})
		local function __FUNC_13F21_(arg0, arg1)
			local function __FUNC_14078_(arg0, arg1)
				local function __FUNC_141F3_(arg0, arg1)
					local function __FUNC_1436B_(arg0, arg1)
						local function __FUNC_144E3_(arg0, arg1)
							local function __FUNC_14638_(arg0, arg1)
								local function __FUNC_147B3_(arg0, arg1)
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
									__FUNC_147B3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_147B3_)
							end

							if arg1.interrupted then
								__FUNC_14638_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14638_)
						end

						if arg1.interrupted then
							__FUNC_144E3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_144E3_)
					end

					if arg1.interrupted then
						__FUNC_1436B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1436B_)
				end

				if arg1.interrupted then
					__FUNC_141F3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_141F3_)
			end

			if arg1.interrupted then
				__FUNC_14078_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14078_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_13F21_(registerVal17, {})
		local function __FUNC_14965_(arg0, arg1)
			local function __FUNC_14ABC_(arg0, arg1)
				local function __FUNC_14C37_(arg0, arg1)
					local function __FUNC_14D8C_(arg0, arg1)
						local function __FUNC_14F07_(arg0, arg1)
							local function __FUNC_1505C_(arg0, arg1)
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
								__FUNC_1505C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1505C_)
						end

						if arg1.interrupted then
							__FUNC_14F07_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14F07_)
					end

					if arg1.interrupted then
						__FUNC_14D8C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14D8C_)
				end

				if arg1.interrupted then
					__FUNC_14C37_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14C37_)
			end

			if arg1.interrupted then
				__FUNC_14ABC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14ABC_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_14965_(registerVal18, {})
		local function __FUNC_15211_(arg0, arg1)
			local function __FUNC_15368_(arg0, arg1)
				local function __FUNC_154E3_(arg0, arg1)
					local function __FUNC_15638_(arg0, arg1)
						local function __FUNC_157B3_(arg0, arg1)
							local function __FUNC_15908_(arg0, arg1)
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
								__FUNC_15908_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15908_)
						end

						if arg1.interrupted then
							__FUNC_157B3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_157B3_)
					end

					if arg1.interrupted then
						__FUNC_15638_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15638_)
				end

				if arg1.interrupted then
					__FUNC_154E3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_154E3_)
			end

			if arg1.interrupted then
				__FUNC_15368_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15368_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_15211_(registerVal19, {})
		local function __FUNC_15ABD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal20:completeAnimation()
		registerVal2.cost:setAlpha(0.000000)
		__FUNC_15ABD_(registerVal20, {})
	end

	registerVal24.GainFocus = __FUNC_12B4A_
	local function __FUNC_15C71_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal20:completeAnimation()
		registerVal2.cost:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal24.Focus = __FUNC_15C71_
	local function __FUNC_15E1A_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_1609B_(arg0, arg1)
			local function __FUNC_16213_(arg0, arg1)
				local function __FUNC_1638B_(arg0, arg1)
					local function __FUNC_16503_(arg0, arg1)
						local function __FUNC_16658_(arg0, arg1)
							local function __FUNC_167D3_(arg0, arg1)
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
								__FUNC_167D3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_167D3_)
						end

						if arg1.interrupted then
							__FUNC_16658_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16658_)
					end

					if arg1.interrupted then
						__FUNC_16503_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16503_)
				end

				if arg1.interrupted then
					__FUNC_1638B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1638B_)
			end

			if arg1.interrupted then
				__FUNC_16213_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16213_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_1609B_(registerVal15, {})
		local function __FUNC_16985_(arg0, arg1)
			local function __FUNC_16AFF_(arg0, arg1)
				local function __FUNC_16C77_(arg0, arg1)
					local function __FUNC_16DEF_(arg0, arg1)
						local function __FUNC_16F44_(arg0, arg1)
							local function __FUNC_170BF_(arg0, arg1)
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
								__FUNC_170BF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_170BF_)
						end

						if arg1.interrupted then
							__FUNC_16F44_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16F44_)
					end

					if arg1.interrupted then
						__FUNC_16DEF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16DEF_)
				end

				if arg1.interrupted then
					__FUNC_16C77_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16C77_)
			end

			if arg1.interrupted then
				__FUNC_16AFF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16AFF_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_16985_(registerVal16, {})
		local function __FUNC_17271_(arg0, arg1)
			local function __FUNC_173C8_(arg0, arg1)
				local function __FUNC_17543_(arg0, arg1)
					local function __FUNC_176BB_(arg0, arg1)
						local function __FUNC_17833_(arg0, arg1)
							local function __FUNC_17988_(arg0, arg1)
								local function __FUNC_17B03_(arg0, arg1)
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
									__FUNC_17B03_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17B03_)
							end

							if arg1.interrupted then
								__FUNC_17988_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17988_)
						end

						if arg1.interrupted then
							__FUNC_17833_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17833_)
					end

					if arg1.interrupted then
						__FUNC_176BB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_176BB_)
				end

				if arg1.interrupted then
					__FUNC_17543_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17543_)
			end

			if arg1.interrupted then
				__FUNC_173C8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_173C8_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_17271_(registerVal17, {})
		local function __FUNC_17CB5_(arg0, arg1)
			local function __FUNC_17E0C_(arg0, arg1)
				local function __FUNC_17F87_(arg0, arg1)
					local function __FUNC_180DC_(arg0, arg1)
						local function __FUNC_18257_(arg0, arg1)
							local function __FUNC_183AC_(arg0, arg1)
								local function __FUNC_18527_(arg0, arg1)
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
									__FUNC_18527_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18527_)
							end

							if arg1.interrupted then
								__FUNC_183AC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_183AC_)
						end

						if arg1.interrupted then
							__FUNC_18257_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18257_)
					end

					if arg1.interrupted then
						__FUNC_180DC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_180DC_)
				end

				if arg1.interrupted then
					__FUNC_17F87_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17F87_)
			end

			if arg1.interrupted then
				__FUNC_17E0C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17E0C_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_17CB5_(registerVal18, {})
		local function __FUNC_186D9_(arg0, arg1)
			local function __FUNC_18830_(arg0, arg1)
				local function __FUNC_189AB_(arg0, arg1)
					local function __FUNC_18B00_(arg0, arg1)
						local function __FUNC_18C7B_(arg0, arg1)
							local function __FUNC_18DD0_(arg0, arg1)
								local function __FUNC_18F4B_(arg0, arg1)
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
									__FUNC_18F4B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18F4B_)
							end

							if arg1.interrupted then
								__FUNC_18DD0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18DD0_)
						end

						if arg1.interrupted then
							__FUNC_18C7B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18C7B_)
					end

					if arg1.interrupted then
						__FUNC_18B00_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18B00_)
				end

				if arg1.interrupted then
					__FUNC_189AB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_189AB_)
			end

			if arg1.interrupted then
				__FUNC_18830_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18830_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_186D9_(registerVal19, {})
		local function __FUNC_190FD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal20:completeAnimation()
		registerVal2.cost:setAlpha(1.000000)
		__FUNC_190FD_(registerVal20, {})
	end

	registerVal24.LoseFocus = __FUNC_15E1A_
	registerVal23.New = registerVal24
	registerVal24 = {}
	local function __FUNC_192B1_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal12:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal2.lockedIcon:setLeftRight(false, false, -15.500000, 15.500000)
		registerVal2.lockedIcon:setTopBottom(false, false, -16.000000, 16.000000)
		registerVal2.lockedIcon:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal24.DefaultClip = __FUNC_192B1_
	local function __FUNC_197CC_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_19A82_(arg0, arg1)
			local function __FUNC_19BD8_(arg0, arg1)
				local function __FUNC_19D53_(arg0, arg1)
					local function __FUNC_19EA8_(arg0, arg1)
						local function __FUNC_1A023_(arg0, arg1)
							local function __FUNC_1A178_(arg0, arg1)
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
								__FUNC_1A178_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A178_)
						end

						if arg1.interrupted then
							__FUNC_1A023_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A023_)
					end

					if arg1.interrupted then
						__FUNC_19EA8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19EA8_)
				end

				if arg1.interrupted then
					__FUNC_19D53_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19D53_)
			end

			if arg1.interrupted then
				__FUNC_19BD8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19BD8_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_19A82_(registerVal15, {})
		local function __FUNC_1A32D_(arg0, arg1)
			local function __FUNC_1A484_(arg0, arg1)
				local function __FUNC_1A5FF_(arg0, arg1)
					local function __FUNC_1A754_(arg0, arg1)
						local function __FUNC_1A8CF_(arg0, arg1)
							local function __FUNC_1AA24_(arg0, arg1)
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
								__FUNC_1AA24_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AA24_)
						end

						if arg1.interrupted then
							__FUNC_1A8CF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A8CF_)
					end

					if arg1.interrupted then
						__FUNC_1A754_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A754_)
				end

				if arg1.interrupted then
					__FUNC_1A5FF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A5FF_)
			end

			if arg1.interrupted then
				__FUNC_1A484_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A484_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_1A32D_(registerVal16, {})
		local function __FUNC_1ABD9_(arg0, arg1)
			local function __FUNC_1AD30_(arg0, arg1)
				local function __FUNC_1AEAB_(arg0, arg1)
					local function __FUNC_1B023_(arg0, arg1)
						local function __FUNC_1B19B_(arg0, arg1)
							local function __FUNC_1B2F0_(arg0, arg1)
								local function __FUNC_1B46B_(arg0, arg1)
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
									__FUNC_1B46B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B46B_)
							end

							if arg1.interrupted then
								__FUNC_1B2F0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B2F0_)
						end

						if arg1.interrupted then
							__FUNC_1B19B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B19B_)
					end

					if arg1.interrupted then
						__FUNC_1B023_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B023_)
				end

				if arg1.interrupted then
					__FUNC_1AEAB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AEAB_)
			end

			if arg1.interrupted then
				__FUNC_1AD30_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AD30_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_1ABD9_(registerVal17, {})
		local function __FUNC_1B61D_(arg0, arg1)
			local function __FUNC_1B774_(arg0, arg1)
				local function __FUNC_1B8EF_(arg0, arg1)
					local function __FUNC_1BA44_(arg0, arg1)
						local function __FUNC_1BBBF_(arg0, arg1)
							local function __FUNC_1BD14_(arg0, arg1)
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
								__FUNC_1BD14_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BD14_)
						end

						if arg1.interrupted then
							__FUNC_1BBBF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BBBF_)
					end

					if arg1.interrupted then
						__FUNC_1BA44_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BA44_)
				end

				if arg1.interrupted then
					__FUNC_1B8EF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B8EF_)
			end

			if arg1.interrupted then
				__FUNC_1B774_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B774_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_1B61D_(registerVal18, {})
		local function __FUNC_1BEC9_(arg0, arg1)
			local function __FUNC_1C043_(arg0, arg1)
				local function __FUNC_1C1BB_(arg0, arg1)
					local function __FUNC_1C310_(arg0, arg1)
						local function __FUNC_1C48B_(arg0, arg1)
							local function __FUNC_1C5E0_(arg0, arg1)
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
								__FUNC_1C5E0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C5E0_)
						end

						if arg1.interrupted then
							__FUNC_1C48B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C48B_)
					end

					if arg1.interrupted then
						__FUNC_1C310_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C310_)
				end

				if arg1.interrupted then
					__FUNC_1C1BB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C1BB_)
			end

			if arg1.interrupted then
				__FUNC_1C043_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C043_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.800000)
		__FUNC_1BEC9_(registerVal19, {})
	end

	registerVal24.GainFocus = __FUNC_197CC_
	local function __FUNC_1C795_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal24.Focus = __FUNC_1C795_
	local function __FUNC_1C957_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_1CC0A_(arg0, arg1)
			local function __FUNC_1CD83_(arg0, arg1)
				local function __FUNC_1CEFB_(arg0, arg1)
					local function __FUNC_1D073_(arg0, arg1)
						local function __FUNC_1D1C8_(arg0, arg1)
							local function __FUNC_1D343_(arg0, arg1)
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
								__FUNC_1D343_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D343_)
						end

						if arg1.interrupted then
							__FUNC_1D1C8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D1C8_)
					end

					if arg1.interrupted then
						__FUNC_1D073_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D073_)
				end

				if arg1.interrupted then
					__FUNC_1CEFB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CEFB_)
			end

			if arg1.interrupted then
				__FUNC_1CD83_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CD83_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_1CC0A_(registerVal15, {})
		local function __FUNC_1D4F5_(arg0, arg1)
			local function __FUNC_1D66F_(arg0, arg1)
				local function __FUNC_1D7E7_(arg0, arg1)
					local function __FUNC_1D95F_(arg0, arg1)
						local function __FUNC_1DAB4_(arg0, arg1)
							local function __FUNC_1DC2F_(arg0, arg1)
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
								__FUNC_1DC2F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DC2F_)
						end

						if arg1.interrupted then
							__FUNC_1DAB4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DAB4_)
					end

					if arg1.interrupted then
						__FUNC_1D95F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D95F_)
				end

				if arg1.interrupted then
					__FUNC_1D7E7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D7E7_)
			end

			if arg1.interrupted then
				__FUNC_1D66F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D66F_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_1D4F5_(registerVal16, {})
		local function __FUNC_1DDE1_(arg0, arg1)
			local function __FUNC_1DF38_(arg0, arg1)
				local function __FUNC_1E0B3_(arg0, arg1)
					local function __FUNC_1E22B_(arg0, arg1)
						local function __FUNC_1E3A3_(arg0, arg1)
							local function __FUNC_1E4F8_(arg0, arg1)
								local function __FUNC_1E673_(arg0, arg1)
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
									__FUNC_1E673_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E673_)
							end

							if arg1.interrupted then
								__FUNC_1E4F8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E4F8_)
						end

						if arg1.interrupted then
							__FUNC_1E3A3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E3A3_)
					end

					if arg1.interrupted then
						__FUNC_1E22B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E22B_)
				end

				if arg1.interrupted then
					__FUNC_1E0B3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E0B3_)
			end

			if arg1.interrupted then
				__FUNC_1DF38_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DF38_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_1DDE1_(registerVal17, {})
		local function __FUNC_1E825_(arg0, arg1)
			local function __FUNC_1E97C_(arg0, arg1)
				local function __FUNC_1EAF7_(arg0, arg1)
					local function __FUNC_1EC4C_(arg0, arg1)
						local function __FUNC_1EDC7_(arg0, arg1)
							local function __FUNC_1EF1C_(arg0, arg1)
								local function __FUNC_1F097_(arg0, arg1)
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
									__FUNC_1F097_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F097_)
							end

							if arg1.interrupted then
								__FUNC_1EF1C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EF1C_)
						end

						if arg1.interrupted then
							__FUNC_1EDC7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EDC7_)
					end

					if arg1.interrupted then
						__FUNC_1EC4C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EC4C_)
				end

				if arg1.interrupted then
					__FUNC_1EAF7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EAF7_)
			end

			if arg1.interrupted then
				__FUNC_1E97C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E97C_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_1E825_(registerVal18, {})
		local function __FUNC_1F249_(arg0, arg1)
			local function __FUNC_1F3A0_(arg0, arg1)
				local function __FUNC_1F51B_(arg0, arg1)
					local function __FUNC_1F670_(arg0, arg1)
						local function __FUNC_1F7EB_(arg0, arg1)
							local function __FUNC_1F940_(arg0, arg1)
								local function __FUNC_1FABB_(arg0, arg1)
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
									__FUNC_1FABB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FABB_)
							end

							if arg1.interrupted then
								__FUNC_1F940_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F940_)
						end

						if arg1.interrupted then
							__FUNC_1F7EB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F7EB_)
					end

					if arg1.interrupted then
						__FUNC_1F670_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F670_)
				end

				if arg1.interrupted then
					__FUNC_1F51B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F51B_)
			end

			if arg1.interrupted then
				__FUNC_1F3A0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F3A0_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_1F249_(registerVal19, {})
	end

	registerVal24.LoseFocus = __FUNC_1C957_
	registerVal23.Locked = registerVal24
	registerVal24 = {}
	local function __FUNC_1FC6D_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.image:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.name:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal24.DefaultClip = __FUNC_1FC6D_
	local function __FUNC_201A4_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_20515_(arg0, arg1)
			local function __FUNC_2066C_(arg0, arg1)
				local function __FUNC_207E7_(arg0, arg1)
					local function __FUNC_2093C_(arg0, arg1)
						local function __FUNC_20AB7_(arg0, arg1)
							local function __FUNC_20C0C_(arg0, arg1)
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
								__FUNC_20C0C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20C0C_)
						end

						if arg1.interrupted then
							__FUNC_20AB7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20AB7_)
					end

					if arg1.interrupted then
						__FUNC_2093C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2093C_)
				end

				if arg1.interrupted then
					__FUNC_207E7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_207E7_)
			end

			if arg1.interrupted then
				__FUNC_2066C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2066C_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_20515_(registerVal15, {})
		local function __FUNC_20DC1_(arg0, arg1)
			local function __FUNC_20F18_(arg0, arg1)
				local function __FUNC_21093_(arg0, arg1)
					local function __FUNC_211E8_(arg0, arg1)
						local function __FUNC_21363_(arg0, arg1)
							local function __FUNC_214B8_(arg0, arg1)
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
								__FUNC_214B8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_214B8_)
						end

						if arg1.interrupted then
							__FUNC_21363_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21363_)
					end

					if arg1.interrupted then
						__FUNC_211E8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_211E8_)
				end

				if arg1.interrupted then
					__FUNC_21093_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21093_)
			end

			if arg1.interrupted then
				__FUNC_20F18_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20F18_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_20DC1_(registerVal16, {})
		local function __FUNC_2166D_(arg0, arg1)
			local function __FUNC_217C4_(arg0, arg1)
				local function __FUNC_2193F_(arg0, arg1)
					local function __FUNC_21AB7_(arg0, arg1)
						local function __FUNC_21C2F_(arg0, arg1)
							local function __FUNC_21D84_(arg0, arg1)
								local function __FUNC_21EFF_(arg0, arg1)
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
									__FUNC_21EFF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21EFF_)
							end

							if arg1.interrupted then
								__FUNC_21D84_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21D84_)
						end

						if arg1.interrupted then
							__FUNC_21C2F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21C2F_)
					end

					if arg1.interrupted then
						__FUNC_21AB7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21AB7_)
				end

				if arg1.interrupted then
					__FUNC_2193F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2193F_)
			end

			if arg1.interrupted then
				__FUNC_217C4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_217C4_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_2166D_(registerVal17, {})
		local function __FUNC_220B1_(arg0, arg1)
			local function __FUNC_22208_(arg0, arg1)
				local function __FUNC_22383_(arg0, arg1)
					local function __FUNC_224D8_(arg0, arg1)
						local function __FUNC_22653_(arg0, arg1)
							local function __FUNC_227A8_(arg0, arg1)
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
								__FUNC_227A8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_227A8_)
						end

						if arg1.interrupted then
							__FUNC_22653_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22653_)
					end

					if arg1.interrupted then
						__FUNC_224D8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_224D8_)
				end

				if arg1.interrupted then
					__FUNC_22383_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22383_)
			end

			if arg1.interrupted then
				__FUNC_22208_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22208_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_220B1_(registerVal18, {})
		local function __FUNC_2295D_(arg0, arg1)
			local function __FUNC_22AB4_(arg0, arg1)
				local function __FUNC_22C2F_(arg0, arg1)
					local function __FUNC_22D84_(arg0, arg1)
						local function __FUNC_22EFF_(arg0, arg1)
							local function __FUNC_23054_(arg0, arg1)
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
								__FUNC_23054_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23054_)
						end

						if arg1.interrupted then
							__FUNC_22EFF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22EFF_)
					end

					if arg1.interrupted then
						__FUNC_22D84_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22D84_)
				end

				if arg1.interrupted then
					__FUNC_22C2F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22C2F_)
			end

			if arg1.interrupted then
				__FUNC_22AB4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22AB4_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_2295D_(registerVal19, {})
	end

	registerVal24.GainFocus = __FUNC_201A4_
	local function __FUNC_23209_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal24.Focus = __FUNC_23209_
	local function __FUNC_2348B_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_237F9_(arg0, arg1)
			local function __FUNC_23973_(arg0, arg1)
				local function __FUNC_23AEB_(arg0, arg1)
					local function __FUNC_23C63_(arg0, arg1)
						local function __FUNC_23DB8_(arg0, arg1)
							local function __FUNC_23F33_(arg0, arg1)
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
								__FUNC_23F33_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23F33_)
						end

						if arg1.interrupted then
							__FUNC_23DB8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23DB8_)
					end

					if arg1.interrupted then
						__FUNC_23C63_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23C63_)
				end

				if arg1.interrupted then
					__FUNC_23AEB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23AEB_)
			end

			if arg1.interrupted then
				__FUNC_23973_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23973_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_237F9_(registerVal15, {})
		local function __FUNC_240E5_(arg0, arg1)
			local function __FUNC_2425F_(arg0, arg1)
				local function __FUNC_243D7_(arg0, arg1)
					local function __FUNC_2454F_(arg0, arg1)
						local function __FUNC_246A4_(arg0, arg1)
							local function __FUNC_2481F_(arg0, arg1)
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
								__FUNC_2481F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2481F_)
						end

						if arg1.interrupted then
							__FUNC_246A4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_246A4_)
					end

					if arg1.interrupted then
						__FUNC_2454F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2454F_)
				end

				if arg1.interrupted then
					__FUNC_243D7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_243D7_)
			end

			if arg1.interrupted then
				__FUNC_2425F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2425F_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_240E5_(registerVal16, {})
		local function __FUNC_249D1_(arg0, arg1)
			local function __FUNC_24B28_(arg0, arg1)
				local function __FUNC_24CA3_(arg0, arg1)
					local function __FUNC_24E1B_(arg0, arg1)
						local function __FUNC_24F93_(arg0, arg1)
							local function __FUNC_250E8_(arg0, arg1)
								local function __FUNC_25263_(arg0, arg1)
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
									__FUNC_25263_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25263_)
							end

							if arg1.interrupted then
								__FUNC_250E8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_250E8_)
						end

						if arg1.interrupted then
							__FUNC_24F93_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24F93_)
					end

					if arg1.interrupted then
						__FUNC_24E1B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24E1B_)
				end

				if arg1.interrupted then
					__FUNC_24CA3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24CA3_)
			end

			if arg1.interrupted then
				__FUNC_24B28_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24B28_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_249D1_(registerVal17, {})
		local function __FUNC_25415_(arg0, arg1)
			local function __FUNC_2556C_(arg0, arg1)
				local function __FUNC_256E7_(arg0, arg1)
					local function __FUNC_2583C_(arg0, arg1)
						local function __FUNC_259B7_(arg0, arg1)
							local function __FUNC_25B0C_(arg0, arg1)
								local function __FUNC_25C87_(arg0, arg1)
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
									__FUNC_25C87_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25C87_)
							end

							if arg1.interrupted then
								__FUNC_25B0C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25B0C_)
						end

						if arg1.interrupted then
							__FUNC_259B7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_259B7_)
					end

					if arg1.interrupted then
						__FUNC_2583C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2583C_)
				end

				if arg1.interrupted then
					__FUNC_256E7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_256E7_)
			end

			if arg1.interrupted then
				__FUNC_2556C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2556C_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_25415_(registerVal18, {})
		local function __FUNC_25E39_(arg0, arg1)
			local function __FUNC_25F90_(arg0, arg1)
				local function __FUNC_2610B_(arg0, arg1)
					local function __FUNC_26260_(arg0, arg1)
						local function __FUNC_263DB_(arg0, arg1)
							local function __FUNC_26530_(arg0, arg1)
								local function __FUNC_266AB_(arg0, arg1)
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
									__FUNC_266AB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_266AB_)
							end

							if arg1.interrupted then
								__FUNC_26530_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26530_)
						end

						if arg1.interrupted then
							__FUNC_263DB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_263DB_)
					end

					if arg1.interrupted then
						__FUNC_26260_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26260_)
				end

				if arg1.interrupted then
					__FUNC_2610B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2610B_)
			end

			if arg1.interrupted then
				__FUNC_25F90_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25F90_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_25E39_(registerVal19, {})
	end

	registerVal24.LoseFocus = __FUNC_2348B_
	registerVal23.NotAvailable = registerVal24
	registerVal24 = {}
	local function __FUNC_2685D_()
		registerVal2:setupElementClipCounter(16.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.itemImage:setRGB(0.430000, 0.430000, 0.430000)
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.image:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal11:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.cost:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal22:completeAnimation()
		registerVal2.TokenRefundHint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal24.DefaultClip = __FUNC_2685D_
	local function __FUNC_26ED6_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_2733A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.itemImage:setAlpha(0.100000)
		__FUNC_2733A_(registerVal6, {})
		local function __FUNC_274ED_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.image:setAlpha(0.800000)
		__FUNC_274ED_(registerVal7, {})
		local function __FUNC_276A1_(arg0, arg1)
			local function __FUNC_277F8_(arg0, arg1)
				local function __FUNC_27973_(arg0, arg1)
					local function __FUNC_27AC8_(arg0, arg1)
						local function __FUNC_27C43_(arg0, arg1)
							local function __FUNC_27D98_(arg0, arg1)
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
								__FUNC_27D98_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27D98_)
						end

						if arg1.interrupted then
							__FUNC_27C43_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27C43_)
					end

					if arg1.interrupted then
						__FUNC_27AC8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27AC8_)
				end

				if arg1.interrupted then
					__FUNC_27973_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27973_)
			end

			if arg1.interrupted then
				__FUNC_277F8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_277F8_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_276A1_(registerVal15, {})
		local function __FUNC_27F4D_(arg0, arg1)
			local function __FUNC_280A4_(arg0, arg1)
				local function __FUNC_2821F_(arg0, arg1)
					local function __FUNC_28374_(arg0, arg1)
						local function __FUNC_284EF_(arg0, arg1)
							local function __FUNC_28644_(arg0, arg1)
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
								__FUNC_28644_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28644_)
						end

						if arg1.interrupted then
							__FUNC_284EF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_284EF_)
					end

					if arg1.interrupted then
						__FUNC_28374_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28374_)
				end

				if arg1.interrupted then
					__FUNC_2821F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2821F_)
			end

			if arg1.interrupted then
				__FUNC_280A4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_280A4_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_27F4D_(registerVal16, {})
		local function __FUNC_287F9_(arg0, arg1)
			local function __FUNC_28950_(arg0, arg1)
				local function __FUNC_28ACB_(arg0, arg1)
					local function __FUNC_28C43_(arg0, arg1)
						local function __FUNC_28DBB_(arg0, arg1)
							local function __FUNC_28F10_(arg0, arg1)
								local function __FUNC_2908B_(arg0, arg1)
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
									__FUNC_2908B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2908B_)
							end

							if arg1.interrupted then
								__FUNC_28F10_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28F10_)
						end

						if arg1.interrupted then
							__FUNC_28DBB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28DBB_)
					end

					if arg1.interrupted then
						__FUNC_28C43_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28C43_)
				end

				if arg1.interrupted then
					__FUNC_28ACB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28ACB_)
			end

			if arg1.interrupted then
				__FUNC_28950_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28950_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_287F9_(registerVal17, {})
		local function __FUNC_2923D_(arg0, arg1)
			local function __FUNC_29394_(arg0, arg1)
				local function __FUNC_2950F_(arg0, arg1)
					local function __FUNC_29664_(arg0, arg1)
						local function __FUNC_297DF_(arg0, arg1)
							local function __FUNC_29934_(arg0, arg1)
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
								__FUNC_29934_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29934_)
						end

						if arg1.interrupted then
							__FUNC_297DF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_297DF_)
					end

					if arg1.interrupted then
						__FUNC_29664_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29664_)
				end

				if arg1.interrupted then
					__FUNC_2950F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2950F_)
			end

			if arg1.interrupted then
				__FUNC_29394_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29394_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_2923D_(registerVal18, {})
		local function __FUNC_29AE9_(arg0, arg1)
			local function __FUNC_29C40_(arg0, arg1)
				local function __FUNC_29DBB_(arg0, arg1)
					local function __FUNC_29F10_(arg0, arg1)
						local function __FUNC_2A08B_(arg0, arg1)
							local function __FUNC_2A1E0_(arg0, arg1)
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
								__FUNC_2A1E0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A1E0_)
						end

						if arg1.interrupted then
							__FUNC_2A08B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A08B_)
					end

					if arg1.interrupted then
						__FUNC_29F10_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29F10_)
				end

				if arg1.interrupted then
					__FUNC_29DBB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29DBB_)
			end

			if arg1.interrupted then
				__FUNC_29C40_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29C40_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_29AE9_(registerVal19, {})
		local function __FUNC_2A395_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal20:completeAnimation()
		registerVal2.cost:setAlpha(0.000000)
		__FUNC_2A395_(registerVal20, {})
		local function __FUNC_2A549_(arg0, arg1)
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

		registerVal22:completeAnimation()
		registerVal2.TokenRefundHint:setAlpha(0.000000)
		__FUNC_2A549_(registerVal22, {})
	end

	registerVal24.GainFocus = __FUNC_26ED6_
	local function __FUNC_2A6FD_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.itemImage:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.image:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal11:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal14:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal20:completeAnimation()
		registerVal2.cost:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal22:completeAnimation()
		registerVal2.TokenRefundHint:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal24.Focus = __FUNC_2A6FD_
	local function __FUNC_2AB94_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_2B0B0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.itemImage:setAlpha(0.200000)
		__FUNC_2B0B0_(registerVal6, {})
		local function __FUNC_2B265_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.image:setAlpha(1.000000)
		__FUNC_2B265_(registerVal7, {})
		registerVal14:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		local function __FUNC_2B419_(arg0, arg1)
			local function __FUNC_2B593_(arg0, arg1)
				local function __FUNC_2B70B_(arg0, arg1)
					local function __FUNC_2B883_(arg0, arg1)
						local function __FUNC_2B9D8_(arg0, arg1)
							local function __FUNC_2BB53_(arg0, arg1)
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
								__FUNC_2BB53_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BB53_)
						end

						if arg1.interrupted then
							__FUNC_2B9D8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B9D8_)
					end

					if arg1.interrupted then
						__FUNC_2B883_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B883_)
				end

				if arg1.interrupted then
					__FUNC_2B70B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B70B_)
			end

			if arg1.interrupted then
				__FUNC_2B593_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B593_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_2B419_(registerVal15, {})
		local function __FUNC_2BD05_(arg0, arg1)
			local function __FUNC_2BE7F_(arg0, arg1)
				local function __FUNC_2BFF7_(arg0, arg1)
					local function __FUNC_2C16F_(arg0, arg1)
						local function __FUNC_2C2C4_(arg0, arg1)
							local function __FUNC_2C43F_(arg0, arg1)
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
								__FUNC_2C43F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C43F_)
						end

						if arg1.interrupted then
							__FUNC_2C2C4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C2C4_)
					end

					if arg1.interrupted then
						__FUNC_2C16F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C16F_)
				end

				if arg1.interrupted then
					__FUNC_2BFF7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BFF7_)
			end

			if arg1.interrupted then
				__FUNC_2BE7F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BE7F_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_2BD05_(registerVal16, {})
		local function __FUNC_2C5F1_(arg0, arg1)
			local function __FUNC_2C748_(arg0, arg1)
				local function __FUNC_2C8C3_(arg0, arg1)
					local function __FUNC_2CA3B_(arg0, arg1)
						local function __FUNC_2CBB3_(arg0, arg1)
							local function __FUNC_2CD08_(arg0, arg1)
								local function __FUNC_2CE83_(arg0, arg1)
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
									__FUNC_2CE83_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CE83_)
							end

							if arg1.interrupted then
								__FUNC_2CD08_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CD08_)
						end

						if arg1.interrupted then
							__FUNC_2CBB3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CBB3_)
					end

					if arg1.interrupted then
						__FUNC_2CA3B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CA3B_)
				end

				if arg1.interrupted then
					__FUNC_2C8C3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C8C3_)
			end

			if arg1.interrupted then
				__FUNC_2C748_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C748_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_2C5F1_(registerVal17, {})
		local function __FUNC_2D035_(arg0, arg1)
			local function __FUNC_2D18C_(arg0, arg1)
				local function __FUNC_2D307_(arg0, arg1)
					local function __FUNC_2D45C_(arg0, arg1)
						local function __FUNC_2D5D7_(arg0, arg1)
							local function __FUNC_2D72C_(arg0, arg1)
								local function __FUNC_2D8A7_(arg0, arg1)
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
									__FUNC_2D8A7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D8A7_)
							end

							if arg1.interrupted then
								__FUNC_2D72C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D72C_)
						end

						if arg1.interrupted then
							__FUNC_2D5D7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D5D7_)
					end

					if arg1.interrupted then
						__FUNC_2D45C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D45C_)
				end

				if arg1.interrupted then
					__FUNC_2D307_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D307_)
			end

			if arg1.interrupted then
				__FUNC_2D18C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D18C_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_2D035_(registerVal18, {})
		local function __FUNC_2DA59_(arg0, arg1)
			local function __FUNC_2DBB0_(arg0, arg1)
				local function __FUNC_2DD2B_(arg0, arg1)
					local function __FUNC_2DE80_(arg0, arg1)
						local function __FUNC_2DFFB_(arg0, arg1)
							local function __FUNC_2E150_(arg0, arg1)
								local function __FUNC_2E2CB_(arg0, arg1)
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
									__FUNC_2E2CB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E2CB_)
							end

							if arg1.interrupted then
								__FUNC_2E150_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E150_)
						end

						if arg1.interrupted then
							__FUNC_2DFFB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DFFB_)
					end

					if arg1.interrupted then
						__FUNC_2DE80_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DE80_)
				end

				if arg1.interrupted then
					__FUNC_2DD2B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DD2B_)
			end

			if arg1.interrupted then
				__FUNC_2DBB0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DBB0_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_2DA59_(registerVal19, {})
		local function __FUNC_2E47D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal20:completeAnimation()
		registerVal2.cost:setAlpha(1.000000)
		__FUNC_2E47D_(registerVal20, {})
		local function __FUNC_2E631_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal22:completeAnimation()
		registerVal2.TokenRefundHint:setAlpha(1.000000)
		__FUNC_2E631_(registerVal22, {})
	end

	registerVal24.LoseFocus = __FUNC_2AB94_
	registerVal23.PermanentUnlockRefund = registerVal24
	registerVal2.clipsPerState = registerVal23
	registerVal25 = {}
	registerVal26 = {}
	registerVal26.stateName = "Equipped"
	local function __FUNC_2E7E5_(arg0, arg2, arg3)
		local registerVal3 = IsScorestreakEquipped(arg0, arg2, arg1)
		if registerVal3 then
			registerVal3 = IsInPermanentUnlockMenu(arg1)
		end
		return (not registerVal3)
	end

	registerVal26.condition = __FUNC_2E7E5_
	registerVal27 = {}
	registerVal27.stateName = "New"
	local function __FUNC_2E880_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemNew(arg2, arg1)
		if registerVal3 then
			registerVal3 = IsInPermanentUnlockMenu(arg1)
		end
		return (not registerVal3)
	end

	registerVal27.condition = __FUNC_2E880_
	registerVal28 = {}
	registerVal28.stateName = "Locked"
	local function __FUNC_2E90F_(arg0, arg2, arg3)
		return IsCACItemLockedForGamesCom(arg0, arg2, arg1)
	end

	registerVal28.condition = __FUNC_2E90F_
	registerVal29 = {}
	registerVal29.stateName = "NotAvailable"
	local function __FUNC_2E974_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemPurchased(arg2, arg1)
		return (not registerVal3)
	end

	registerVal29.condition = __FUNC_2E974_
	local registerVal30 = {}
	registerVal30.stateName = "PermanentUnlockRefund"
	local function __FUNC_2E9D4_(arg0, arg2, arg3)
		local registerVal3 = IsInPermanentUnlockMenu(arg1)
		if registerVal3 then
			registerVal3 = IsPermanentlyUnlocked(arg2, arg1)
			if not registerVal3 then
				registerVal3 = HavePermanentUnlockTokens(arg1)
			else
			end
		end
		return true
	end

	registerVal30.condition = __FUNC_2E9D4_
	registerVal25 = {registerVal26, registerVal27, registerVal28, registerVal29, registerVal30}
	registerVal2:mergeStateConditions(registerVal25)
	local function __FUNC_2EAAB_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_2EAAB_)
	local function __FUNC_2EBC7_(arg0)
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.BoxButtonLrgInactive:close()
		arg0.BoxButtonLrgIdle:close()
		arg0.name:close()
		arg0.tokenPermanentUnlock:close()
		arg0.tokenUnlock:close()
		arg0.IconNew:close()
		arg0.lockedIcon:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.FocusBorder:close()
		arg0.cost:close()
		arg0.RestrictedItemWarning:close()
		arg0.TokenRefundHint:close()
		arg0.image:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2EBC7_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

