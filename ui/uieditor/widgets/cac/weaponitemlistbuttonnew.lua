-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.CAC.cac_ListButtonLabelCount")
require("ui.uieditor.widgets.Prestige.Prestige_PermanentUnlockTokenStatic")
require("ui.uieditor.widgets.CAC.cac_IconTokenStatic")
require("ui.uieditor.widgets.CAC.cac_ListButtonLabel")
require("ui.uieditor.widgets.CAC.cac_lock")
require("ui.uieditor.widgets.CAC.cac_LabelNew")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.CAC.RestrictedItemWarning")
require("ui.uieditor.widgets.Prestige.Prestige_TokenRefundHintWidget")
require("ui.uieditor.widgets.BlackMarket.BM_GoldBarMed")
require("ui.uieditor.widgets.BlackMarket.BM_Contracts_LockBars")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.WeaponItemListButtonNew = registerVal1
function CoD.WeaponItemListButtonNew.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.WeaponItemListButtonNew)
	registerVal2.id = "WeaponItemListButtonNew"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 65.000000)
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
	registerVal6:setLeftRight(true, false, 0.000000, 65.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.000000)
	local function __FUNC_2CE4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "image", true, __FUNC_2CE4_)
	registerVal2:addElement(registerVal6)
	registerVal2.itemImageSolid = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 0.000000, 65.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal7:setAlpha(0.300000)
	local function __FUNC_2D98_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "image", true, __FUNC_2D98_)
	registerVal2:addElement(registerVal7)
	registerVal2.itemImage = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 63.000000, 67.000000)
	registerVal8:setTopBottom(false, false, -33.000000, 34.000000)
	registerVal8:setAlpha(0.300000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.itemImageLine = registerVal8
	local registerVal9 = CoD.cac_ListButtonLabelCount.new(arg0, arg1)
	registerVal9:setLeftRight(false, true, -116.000000, -12.000000)
	registerVal9:setTopBottom(false, false, -9.500000, 10.500000)
	local function __FUNC_2E4C_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal2, nil, false, __FUNC_2E4C_)
	local function __FUNC_2E9E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.ButtonLabelCount.itemName:setText(Engine.Localize(GetVariantCountByWeaponIndex(registerVal1)))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_2E9E_)
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Visible"
	local function __FUNC_2FC8_(arg0, arg2, arg3)
		local registerVal3 = IsInPermanentUnlockMenu(arg1)
		if not registerVal3 then
			registerVal3 = IsCACWeaponVariantAvailable(arg2, arg1)
		else
		end
		return true
	end

	registerVal13.condition = __FUNC_2FC8_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal2:addElement(registerVal9)
	registerVal2.LabelButtonCount = registerVal9
	local registerVal10 = CoD.Prestige_PermanentUnlockTokenStatic.new(arg0, arg1)
	registerVal10:setLeftRight(false, true, -41.000000, -9.000000)
	registerVal10:setTopBottom(false, false, -16.250000, 15.750000)
	registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "Visible"
	local function __FUNC_306E_(arg0, arg2, arg3)
		local registerVal3 = IsInPermanentUnlockMenu(arg1)
		if registerVal3 then
			registerVal3 = IsPermanentlyUnlocked(arg2, arg1)
		end
		return (not registerVal3)
	end

	registerVal14.condition = __FUNC_306E_
	registerVal13 = {registerVal14}
	registerVal10:mergeStateConditions(registerVal13)
	registerVal2:addElement(registerVal10)
	registerVal2.tokenPermanentUnlock = registerVal10
	local registerVal11 = CoD.cac_IconTokenStatic.new(arg0, arg1)
	registerVal11:setLeftRight(false, true, -263.500000, -231.500000)
	registerVal11:setTopBottom(false, false, -15.000000, 17.000000)
	registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "Visible"
	local function __FUNC_3104_(arg0, arg2, arg3)
		local registerVal3 = IsCampaign()
		registerVal3 = IsCACItemLocked(arg0, arg2, arg1)
		registerVal3 = IsCACItemPurchased(arg2, arg1)
		if not registerVal3 and not registerVal3 and not registerVal3 then
			registerVal3 = IsInPermanentUnlockMenu(arg1)
		else
		end
		return true
	end

	registerVal15.condition = __FUNC_3104_
	local registerVal16 = {}
	registerVal16.stateName = "VisibleCP"
	local function __FUNC_31FE_(arg0, arg2, arg3)
		local registerVal3 = IsCampaign()
		if registerVal3 then
			registerVal3 = IsCACItemLocked(arg0, arg2, arg1)
			registerVal3 = IsCACItemPurchased(arg2, arg1)
			if not registerVal3 and not registerVal3 then
				registerVal3 = IsInPermanentUnlockMenu(arg1)
			else
			end
		end
		return true
	end

	registerVal16.condition = __FUNC_31FE_
	registerVal14 = {registerVal15, registerVal16}
	registerVal11:mergeStateConditions(registerVal14)
	registerVal15 = Engine.GetGlobalModel()
	registerVal14 = Engine.GetModel(registerVal15, "lobbyRoot.lobbyNav")
	local function __FUNC_32F6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:subscribeToModel(registerVal14, __FUNC_32F6_)
	local function __FUNC_341C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:linkToElementModel(registerVal11, "itemIndex", true, __FUNC_341C_)
	registerVal2:addElement(registerVal11)
	registerVal2.tokenUnlock = registerVal11
	registerVal12 = CoD.cac_ListButtonLabel.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 79.000000, 236.000000)
	registerVal12:setTopBottom(false, false, -9.500000, 10.500000)
	local function __FUNC_353B_(arg0)
		registerVal12:setModel(arg0, arg1)
	end

	registerVal12:linkToElementModel(registerVal2, nil, false, __FUNC_353B_)
	local function __FUNC_358A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal12:linkToElementModel(registerVal2, "name", true, __FUNC_358A_)
	registerVal2:addElement(registerVal12)
	registerVal2.LabelButton = registerVal12
	registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(false, true, -16.000000, -2.000000)
	registerVal13:setTopBottom(true, false, 2.000000, 16.000000)
	registerVal13:setRGB(0.560000, 0.680000, 0.270000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setImage(RegisterImage("uie_t7_hud_cac_equipped_16"))
	registerVal2:addElement(registerVal13)
	registerVal2.equippedIcon = registerVal13
	registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(false, true, -16.000000, -2.000000)
	registerVal14:setTopBottom(true, false, 2.000000, 16.000000)
	registerVal14:setRGB(1.000000, 0.410000, 0.000000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setImage(RegisterImage("uie_t7_hud_cac_warning_16"))
	registerVal2:addElement(registerVal14)
	registerVal2.alertIcon = registerVal14
	registerVal15 = CoD.cac_lock.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 17.000000, 47.000000)
	registerVal15:setTopBottom(false, false, -16.000000, 16.000000)
	registerVal15:setAlpha(0.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.lockedIcon = registerVal15
	registerVal16 = CoD.cac_LabelNew.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, 182.000000, 247.000000)
	registerVal16:setTopBottom(false, false, -11.500000, 12.500000)
	registerVal2:addElement(registerVal16)
	registerVal2.IconNew = registerVal16
	local registerVal17 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal17:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal17:setTopBottom(true, false, -4.000000, 0.000000)
	registerVal17:setAlpha(0.000000)
	registerVal17:setZoom(1.000000)
	registerVal2:addElement(registerVal17)
	registerVal2.FocusBarT = registerVal17
	local registerVal18 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal18:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal18:setTopBottom(false, true, 0.000000, 4.000000)
	registerVal18:setAlpha(0.000000)
	registerVal18:setZoom(1.000000)
	registerVal2:addElement(registerVal18)
	registerVal2.FocusBarB = registerVal18
	local registerVal19 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal19:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal19:setTopBottom(true, true, -0.500000, 0.000000)
	registerVal19:setRGB(1.000000, 0.300000, 0.000000)
	registerVal19:setAlpha(0.000000)
	registerVal2:addElement(registerVal19)
	registerVal2.FocusBorder = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(true, true, -12.000000, 7.000000)
	registerVal20:setTopBottom(true, false, -8.750000, 4.750000)
	registerVal20:setRGB(1.000000, 0.090000, 0.000000)
	registerVal20:setAlpha(0.000000)
	registerVal20:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal20:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal20)
	registerVal2.glitch = registerVal20
	local registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(true, true, -8.500000, 8.500000)
	registerVal21:setTopBottom(false, true, -6.000000, 9.000000)
	registerVal21:setRGB(1.000000, 0.150000, 0.000000)
	registerVal21:setAlpha(0.000000)
	registerVal21:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal21:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal21)
	registerVal2.glitch2 = registerVal21
	local registerVal22 = CoD.RestrictedItemWarning.new(arg0, arg1)
	registerVal22:setLeftRight(true, false, 0.000000, 65.000000)
	registerVal22:setTopBottom(true, false, 4.930000, 61.070000)
	local function __FUNC_3660_(arg0)
		registerVal22:setModel(arg0, arg1)
	end

	registerVal22:linkToElementModel(registerVal2, nil, false, __FUNC_3660_)
	local registerVal25 = {}
	local registerVal26 = {}
	registerVal26.stateName = "Visible"
	local function __FUNC_36B2_(arg0, arg2, arg3)
		return ItemIsBannedLobby(arg0, arg2, arg1)
	end

	registerVal26.condition = __FUNC_36B2_
	registerVal25 = {registerVal26}
	registerVal22:mergeStateConditions(registerVal25)
	local function __FUNC_370F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		arg0:updateElementState(registerVal22, registerVal4)
	end

	registerVal22:linkToElementModel(registerVal22, nil, true, __FUNC_370F_)
	registerVal26 = Engine.GetGlobalModel()
	registerVal25 = Engine.GetModel(registerVal26, "lobbyRoot.Pregame.Update")
	local function __FUNC_3819_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.Update"
		arg0:updateElementState(registerVal22, registerVal4)
	end

	registerVal22:subscribeToModel(registerVal25, __FUNC_3819_)
	registerVal2:addElement(registerVal22)
	registerVal2.RestrictedItemWarning = registerVal22
	local registerVal23 = CoD.Prestige_TokenRefundHintWidget.new(arg0, arg1)
	registerVal23:setLeftRight(false, true, 10.000000, 198.000000)
	registerVal23:setTopBottom(false, false, -16.000000, 16.000000)
	registerVal23:setAlpha(0.000000)
	registerVal23.textCenterAlign:setText(Engine.Localize("MENU_PRESTIGE_UNLOCK_TOKEN_REFUND"))
	registerVal26 = {}
	local registerVal27 = {}
	registerVal27.stateName = "Below"
	local function __FUNC_3946_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal27.condition = __FUNC_3946_
	local registerVal28 = {}
	registerVal28.stateName = "Right"
	local function __FUNC_3991_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal28.condition = __FUNC_3991_
	local registerVal29 = {}
	registerVal29.stateName = "Left"
	local function __FUNC_39DC_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal29.condition = __FUNC_39DC_
	registerVal26 = {registerVal27, registerVal28, registerVal29}
	registerVal23:mergeStateConditions(registerVal26)
	registerVal2:addElement(registerVal23)
	registerVal2.TokenRefundHint = registerVal23
	local registerVal24 = LUI.UIImage.new()
	registerVal24:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal24:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal24:setRGB(0.000000, 0.000000, 0.000000)
	registerVal24:setAlpha(0.000000)
	registerVal2:addElement(registerVal24)
	registerVal2.blackMarketBackground = registerVal24
	registerVal25 = CoD.BM_GoldBarMed.new(arg0, arg1)
	registerVal25:setLeftRight(false, false, -99.000000, 99.000000)
	registerVal25:setTopBottom(false, false, -6.500000, 6.500000)
	registerVal25:setAlpha(0.000000)
	registerVal2:addElement(registerVal25)
	registerVal2.BMGoldBarMed = registerVal25
	registerVal26 = LUI.UIImage.new()
	registerVal26:setLeftRight(false, false, -23.000000, 23.000000)
	registerVal26:setTopBottom(false, false, -23.000000, 23.000000)
	registerVal26:setAlpha(0.000000)
	registerVal26:setImage(RegisterImage("uie_t7_icon_blackmarket_encryptedicon_large"))
	registerVal2:addElement(registerVal26)
	registerVal2.blackMarketBrandIcon = registerVal26
	registerVal27 = CoD.BM_Contracts_LockBars.new(arg0, arg1)
	registerVal27:setLeftRight(true, false, 148.800000, 251.800000)
	registerVal27:setTopBottom(true, false, 13.250000, 48.250000)
	registerVal27:setAlpha(0.000000)
	registerVal2:addElement(registerVal27)
	registerVal2.BMContractsLockBars = registerVal27
	registerVal28 = CoD.BM_Contracts_LockBars.new(arg0, arg1)
	registerVal28:setLeftRight(true, false, 28.800000, 132.800000)
	registerVal28:setTopBottom(true, false, 13.250000, 48.250000)
	registerVal28:setAlpha(0.000000)
	registerVal28:setYRot(180.000000)
	registerVal2:addElement(registerVal28)
	registerVal2.BMContractsLockBars0 = registerVal28
	registerVal29 = LUI.UIImage.new()
	registerVal29:setLeftRight(true, false, 107.250000, 172.750000)
	registerVal29:setTopBottom(true, false, -0.500000, 65.000000)
	registerVal29:setAlpha(0.000000)
	registerVal29:setImage(RegisterImage("uie_t7_bm_special_contracts_logo"))
	registerVal2:addElement(registerVal29)
	registerVal2.bmContractBrandIcon = registerVal29
	local registerVal30 = {}
	registerVal30.left = registerVal28
	registerVal27.navigation = registerVal30
	registerVal30 = {}
	registerVal30.right = registerVal27
	registerVal28.navigation = registerVal30
	registerVal30 = {}
	local registerVal31 = {}
	local function __FUNC_3A29_()
		registerVal2:setupElementClipCounter(21.000000)
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
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImageLine:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LabelButtonCount:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal12:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal23:completeAnimation()
		registerVal2.TokenRefundHint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal27:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
		registerVal29:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal29, {})
	end

	registerVal31.DefaultClip = __FUNC_3A29_
	local function __FUNC_425B_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_4543_(arg0, arg1)
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

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		__FUNC_4543_(registerVal4, {})
		local function __FUNC_46F5_(arg0, arg1)
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

		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		__FUNC_46F5_(registerVal7, {})
		local function __FUNC_48A9_(arg0, arg1)
			local function __FUNC_4A00_(arg0, arg1)
				local function __FUNC_4B7B_(arg0, arg1)
					local function __FUNC_4CD0_(arg0, arg1)
						local function __FUNC_4E4B_(arg0, arg1)
							local function __FUNC_4FA0_(arg0, arg1)
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
								__FUNC_4FA0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4FA0_)
						end

						if arg1.interrupted then
							__FUNC_4E4B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4E4B_)
					end

					if arg1.interrupted then
						__FUNC_4CD0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4CD0_)
				end

				if arg1.interrupted then
					__FUNC_4B7B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B7B_)
			end

			if arg1.interrupted then
				__FUNC_4A00_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A00_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_48A9_(registerVal17, {})
		local function __FUNC_5155_(arg0, arg1)
			local function __FUNC_52AC_(arg0, arg1)
				local function __FUNC_5427_(arg0, arg1)
					local function __FUNC_557C_(arg0, arg1)
						local function __FUNC_56F7_(arg0, arg1)
							local function __FUNC_584C_(arg0, arg1)
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
								__FUNC_584C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_584C_)
						end

						if arg1.interrupted then
							__FUNC_56F7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_56F7_)
					end

					if arg1.interrupted then
						__FUNC_557C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_557C_)
				end

				if arg1.interrupted then
					__FUNC_5427_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5427_)
			end

			if arg1.interrupted then
				__FUNC_52AC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_52AC_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_5155_(registerVal18, {})
		local function __FUNC_5A01_(arg0, arg1)
			local function __FUNC_5B58_(arg0, arg1)
				local function __FUNC_5CD3_(arg0, arg1)
					local function __FUNC_5E4B_(arg0, arg1)
						local function __FUNC_5FC3_(arg0, arg1)
							local function __FUNC_6118_(arg0, arg1)
								local function __FUNC_6293_(arg0, arg1)
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
									__FUNC_6293_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6293_)
							end

							if arg1.interrupted then
								__FUNC_6118_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6118_)
						end

						if arg1.interrupted then
							__FUNC_5FC3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5FC3_)
					end

					if arg1.interrupted then
						__FUNC_5E4B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E4B_)
				end

				if arg1.interrupted then
					__FUNC_5CD3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5CD3_)
			end

			if arg1.interrupted then
				__FUNC_5B58_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B58_)
		end

		registerVal19:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_5A01_(registerVal19, {})
		local function __FUNC_6445_(arg0, arg1)
			local function __FUNC_659C_(arg0, arg1)
				local function __FUNC_6717_(arg0, arg1)
					local function __FUNC_686C_(arg0, arg1)
						local function __FUNC_69E7_(arg0, arg1)
							local function __FUNC_6B3C_(arg0, arg1)
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
								__FUNC_6B3C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6B3C_)
						end

						if arg1.interrupted then
							__FUNC_69E7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_69E7_)
					end

					if arg1.interrupted then
						__FUNC_686C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_686C_)
				end

				if arg1.interrupted then
					__FUNC_6717_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6717_)
			end

			if arg1.interrupted then
				__FUNC_659C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_659C_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_6445_(registerVal20, {})
		local function __FUNC_6CF1_(arg0, arg1)
			local function __FUNC_6E48_(arg0, arg1)
				local function __FUNC_6FC3_(arg0, arg1)
					local function __FUNC_7118_(arg0, arg1)
						local function __FUNC_7293_(arg0, arg1)
							local function __FUNC_73E8_(arg0, arg1)
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
								__FUNC_73E8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_73E8_)
						end

						if arg1.interrupted then
							__FUNC_7293_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7293_)
					end

					if arg1.interrupted then
						__FUNC_7118_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7118_)
				end

				if arg1.interrupted then
					__FUNC_6FC3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6FC3_)
			end

			if arg1.interrupted then
				__FUNC_6E48_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6E48_)
		end

		registerVal21:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_6CF1_(registerVal21, {})
	end

	registerVal31.GainFocus = __FUNC_425B_
	local function __FUNC_759D_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal15:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal23:completeAnimation()
		registerVal2.TokenRefundHint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
	end

	registerVal31.Focus = __FUNC_759D_
	local function __FUNC_7980_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_7C66_(arg0, arg1)
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

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_7C66_(registerVal4, {})
		local function __FUNC_7E19_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		__FUNC_7E19_(registerVal7, {})
		local function __FUNC_7FCD_(arg0, arg1)
			local function __FUNC_8147_(arg0, arg1)
				local function __FUNC_82BF_(arg0, arg1)
					local function __FUNC_8437_(arg0, arg1)
						local function __FUNC_858C_(arg0, arg1)
							local function __FUNC_8707_(arg0, arg1)
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
								__FUNC_8707_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8707_)
						end

						if arg1.interrupted then
							__FUNC_858C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_858C_)
					end

					if arg1.interrupted then
						__FUNC_8437_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8437_)
				end

				if arg1.interrupted then
					__FUNC_82BF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_82BF_)
			end

			if arg1.interrupted then
				__FUNC_8147_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8147_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_7FCD_(registerVal17, {})
		local function __FUNC_88B9_(arg0, arg1)
			local function __FUNC_8A33_(arg0, arg1)
				local function __FUNC_8BAB_(arg0, arg1)
					local function __FUNC_8D23_(arg0, arg1)
						local function __FUNC_8E78_(arg0, arg1)
							local function __FUNC_8FF3_(arg0, arg1)
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
								__FUNC_8FF3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8FF3_)
						end

						if arg1.interrupted then
							__FUNC_8E78_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8E78_)
					end

					if arg1.interrupted then
						__FUNC_8D23_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8D23_)
				end

				if arg1.interrupted then
					__FUNC_8BAB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8BAB_)
			end

			if arg1.interrupted then
				__FUNC_8A33_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8A33_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_88B9_(registerVal18, {})
		local function __FUNC_91A5_(arg0, arg1)
			local function __FUNC_92FC_(arg0, arg1)
				local function __FUNC_9477_(arg0, arg1)
					local function __FUNC_95EF_(arg0, arg1)
						local function __FUNC_9767_(arg0, arg1)
							local function __FUNC_98BC_(arg0, arg1)
								local function __FUNC_9A37_(arg0, arg1)
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
									__FUNC_9A37_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9A37_)
							end

							if arg1.interrupted then
								__FUNC_98BC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_98BC_)
						end

						if arg1.interrupted then
							__FUNC_9767_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9767_)
					end

					if arg1.interrupted then
						__FUNC_95EF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_95EF_)
				end

				if arg1.interrupted then
					__FUNC_9477_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9477_)
			end

			if arg1.interrupted then
				__FUNC_92FC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_92FC_)
		end

		registerVal19:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_91A5_(registerVal19, {})
		local function __FUNC_9BE9_(arg0, arg1)
			local function __FUNC_9D40_(arg0, arg1)
				local function __FUNC_9EBB_(arg0, arg1)
					local function __FUNC_A010_(arg0, arg1)
						local function __FUNC_A18B_(arg0, arg1)
							local function __FUNC_A2E0_(arg0, arg1)
								local function __FUNC_A45B_(arg0, arg1)
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
									__FUNC_A45B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A45B_)
							end

							if arg1.interrupted then
								__FUNC_A2E0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A2E0_)
						end

						if arg1.interrupted then
							__FUNC_A18B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A18B_)
					end

					if arg1.interrupted then
						__FUNC_A010_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A010_)
				end

				if arg1.interrupted then
					__FUNC_9EBB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9EBB_)
			end

			if arg1.interrupted then
				__FUNC_9D40_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9D40_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_9BE9_(registerVal20, {})
		local function __FUNC_A60D_(arg0, arg1)
			local function __FUNC_A764_(arg0, arg1)
				local function __FUNC_A8DF_(arg0, arg1)
					local function __FUNC_AA34_(arg0, arg1)
						local function __FUNC_ABAF_(arg0, arg1)
							local function __FUNC_AD04_(arg0, arg1)
								local function __FUNC_AE7F_(arg0, arg1)
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
									__FUNC_AE7F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AE7F_)
							end

							if arg1.interrupted then
								__FUNC_AD04_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AD04_)
						end

						if arg1.interrupted then
							__FUNC_ABAF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ABAF_)
					end

					if arg1.interrupted then
						__FUNC_AA34_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AA34_)
				end

				if arg1.interrupted then
					__FUNC_A8DF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A8DF_)
			end

			if arg1.interrupted then
				__FUNC_A764_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A764_)
		end

		registerVal21:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_A60D_(registerVal21, {})
	end

	registerVal31.LoseFocus = __FUNC_7980_
	registerVal30.DefaultState = registerVal31
	registerVal31 = {}
	local function __FUNC_B031_()
		registerVal2:setupElementClipCounter(27.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImageLine:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LabelButtonCount:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.tokenPermanentUnlock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.LabelButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.RestrictedItemWarning:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.TokenRefundHint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.blackMarketBackground:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.BMGoldBarMed:setLeftRight(false, false, -99.000000, 99.000000)
		registerVal2.BMGoldBarMed:setTopBottom(false, false, -6.500000, 6.500000)
		registerVal2.BMGoldBarMed:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.blackMarketBrandIcon:setLeftRight(false, false, -23.000000, 23.000000)
		registerVal2.blackMarketBrandIcon:setTopBottom(false, false, -23.000000, 23.000000)
		registerVal2.blackMarketBrandIcon:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
		registerVal29:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal29, {})
	end

	registerVal31.DefaultClip = __FUNC_B031_
	local function __FUNC_BB85_()
		registerVal2:setupElementClipCounter(24.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImageLine:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LabelButtonCount:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.tokenPermanentUnlock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.LabelButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.RestrictedItemWarning:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.TokenRefundHint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.blackMarketBackground:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal26, {})
	end

	registerVal31.Focus = __FUNC_BB85_
	registerVal30.BMClassified = registerVal31
	registerVal31 = {}
	local function __FUNC_C4C6_()
		registerVal2:setupElementClipCounter(27.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImageLine:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LabelButtonCount:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.tokenPermanentUnlock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.LabelButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.RestrictedItemWarning:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.TokenRefundHint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.blackMarketBackground:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.BMGoldBarMed:setLeftRight(false, false, -99.000000, 99.000000)
		registerVal2.BMGoldBarMed:setTopBottom(false, false, -6.500000, 6.500000)
		registerVal2.BMGoldBarMed:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.blackMarketBrandIcon:setLeftRight(false, false, -23.000000, 23.000000)
		registerVal2.blackMarketBrandIcon:setTopBottom(false, false, -23.000000, 23.000000)
		registerVal2.blackMarketBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal28, {})
		registerVal29:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal29, {})
	end

	registerVal31.DefaultClip = __FUNC_C4C6_
	local function __FUNC_D014_()
		registerVal2:setupElementClipCounter(24.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImageLine:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LabelButtonCount:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.tokenPermanentUnlock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.LabelButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.RestrictedItemWarning:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.TokenRefundHint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.blackMarketBackground:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
	end

	registerVal31.Focus = __FUNC_D014_
	registerVal30.ContractClassified = registerVal31
	registerVal31 = {}
	local function __FUNC_D956_()
		registerVal2:setupElementClipCounter(20.000000)
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
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImageLine:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LabelButtonCount:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal12:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.equippedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal27:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
		registerVal29:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal29, {})
	end

	registerVal31.DefaultClip = __FUNC_D956_
	local function __FUNC_E12A_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_E413_(arg0, arg1)
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
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		__FUNC_E413_(registerVal4, {})
		local function __FUNC_E5C5_(arg0, arg1)
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

		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		__FUNC_E5C5_(registerVal7, {})
		local function __FUNC_E779_(arg0, arg1)
			local function __FUNC_E8D0_(arg0, arg1)
				local function __FUNC_EA4B_(arg0, arg1)
					local function __FUNC_EBA0_(arg0, arg1)
						local function __FUNC_ED1B_(arg0, arg1)
							local function __FUNC_EE70_(arg0, arg1)
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
								__FUNC_EE70_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EE70_)
						end

						if arg1.interrupted then
							__FUNC_ED1B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ED1B_)
					end

					if arg1.interrupted then
						__FUNC_EBA0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EBA0_)
				end

				if arg1.interrupted then
					__FUNC_EA4B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EA4B_)
			end

			if arg1.interrupted then
				__FUNC_E8D0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E8D0_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_E779_(registerVal17, {})
		local function __FUNC_F025_(arg0, arg1)
			local function __FUNC_F17C_(arg0, arg1)
				local function __FUNC_F2F7_(arg0, arg1)
					local function __FUNC_F44C_(arg0, arg1)
						local function __FUNC_F5C7_(arg0, arg1)
							local function __FUNC_F71C_(arg0, arg1)
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
								__FUNC_F71C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F71C_)
						end

						if arg1.interrupted then
							__FUNC_F5C7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F5C7_)
					end

					if arg1.interrupted then
						__FUNC_F44C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F44C_)
				end

				if arg1.interrupted then
					__FUNC_F2F7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F2F7_)
			end

			if arg1.interrupted then
				__FUNC_F17C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F17C_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_F025_(registerVal18, {})
		local function __FUNC_F8D1_(arg0, arg1)
			local function __FUNC_FA28_(arg0, arg1)
				local function __FUNC_FBA3_(arg0, arg1)
					local function __FUNC_FD1B_(arg0, arg1)
						local function __FUNC_FE93_(arg0, arg1)
							local function __FUNC_FFE8_(arg0, arg1)
								local function __FUNC_10163_(arg0, arg1)
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
									__FUNC_10163_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10163_)
							end

							if arg1.interrupted then
								__FUNC_FFE8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FFE8_)
						end

						if arg1.interrupted then
							__FUNC_FE93_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FE93_)
					end

					if arg1.interrupted then
						__FUNC_FD1B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FD1B_)
				end

				if arg1.interrupted then
					__FUNC_FBA3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FBA3_)
			end

			if arg1.interrupted then
				__FUNC_FA28_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FA28_)
		end

		registerVal19:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_F8D1_(registerVal19, {})
		local function __FUNC_10315_(arg0, arg1)
			local function __FUNC_1046C_(arg0, arg1)
				local function __FUNC_105E7_(arg0, arg1)
					local function __FUNC_1073C_(arg0, arg1)
						local function __FUNC_108B7_(arg0, arg1)
							local function __FUNC_10A0C_(arg0, arg1)
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
								__FUNC_10A0C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10A0C_)
						end

						if arg1.interrupted then
							__FUNC_108B7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_108B7_)
					end

					if arg1.interrupted then
						__FUNC_1073C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1073C_)
				end

				if arg1.interrupted then
					__FUNC_105E7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_105E7_)
			end

			if arg1.interrupted then
				__FUNC_1046C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1046C_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_10315_(registerVal20, {})
		local function __FUNC_10BC1_(arg0, arg1)
			local function __FUNC_10D18_(arg0, arg1)
				local function __FUNC_10E93_(arg0, arg1)
					local function __FUNC_10FE8_(arg0, arg1)
						local function __FUNC_11163_(arg0, arg1)
							local function __FUNC_112B8_(arg0, arg1)
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
								__FUNC_112B8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_112B8_)
						end

						if arg1.interrupted then
							__FUNC_11163_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11163_)
					end

					if arg1.interrupted then
						__FUNC_10FE8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10FE8_)
				end

				if arg1.interrupted then
					__FUNC_10E93_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10E93_)
			end

			if arg1.interrupted then
				__FUNC_10D18_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10D18_)
		end

		registerVal21:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_10BC1_(registerVal21, {})
	end

	registerVal31.GainFocus = __FUNC_E12A_
	local function __FUNC_1146D_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal31.Focus = __FUNC_1146D_
	local function __FUNC_1167D_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_11967_(arg0, arg1)
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

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_11967_(registerVal4, {})
		local function __FUNC_11B19_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		__FUNC_11B19_(registerVal7, {})
		local function __FUNC_11CCD_(arg0, arg1)
			local function __FUNC_11E47_(arg0, arg1)
				local function __FUNC_11FBF_(arg0, arg1)
					local function __FUNC_12137_(arg0, arg1)
						local function __FUNC_1228C_(arg0, arg1)
							local function __FUNC_12407_(arg0, arg1)
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
								__FUNC_12407_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12407_)
						end

						if arg1.interrupted then
							__FUNC_1228C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1228C_)
					end

					if arg1.interrupted then
						__FUNC_12137_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12137_)
				end

				if arg1.interrupted then
					__FUNC_11FBF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11FBF_)
			end

			if arg1.interrupted then
				__FUNC_11E47_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11E47_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_11CCD_(registerVal17, {})
		local function __FUNC_125B9_(arg0, arg1)
			local function __FUNC_12733_(arg0, arg1)
				local function __FUNC_128AB_(arg0, arg1)
					local function __FUNC_12A23_(arg0, arg1)
						local function __FUNC_12B78_(arg0, arg1)
							local function __FUNC_12CF3_(arg0, arg1)
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
								__FUNC_12CF3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12CF3_)
						end

						if arg1.interrupted then
							__FUNC_12B78_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12B78_)
					end

					if arg1.interrupted then
						__FUNC_12A23_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12A23_)
				end

				if arg1.interrupted then
					__FUNC_128AB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_128AB_)
			end

			if arg1.interrupted then
				__FUNC_12733_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12733_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_125B9_(registerVal18, {})
		local function __FUNC_12EA5_(arg0, arg1)
			local function __FUNC_1301F_(arg0, arg1)
				local function __FUNC_13197_(arg0, arg1)
					local function __FUNC_1330F_(arg0, arg1)
						local function __FUNC_13487_(arg0, arg1)
							local function __FUNC_135DC_(arg0, arg1)
								local function __FUNC_13757_(arg0, arg1)
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
									__FUNC_13757_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13757_)
							end

							if arg1.interrupted then
								__FUNC_135DC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_135DC_)
						end

						if arg1.interrupted then
							__FUNC_13487_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13487_)
					end

					if arg1.interrupted then
						__FUNC_1330F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1330F_)
				end

				if arg1.interrupted then
					__FUNC_13197_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13197_)
			end

			if arg1.interrupted then
				__FUNC_1301F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1301F_)
		end

		registerVal19:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.700000)
		__FUNC_12EA5_(registerVal19, {})
		local function __FUNC_13909_(arg0, arg1)
			local function __FUNC_13A60_(arg0, arg1)
				local function __FUNC_13BDB_(arg0, arg1)
					local function __FUNC_13D30_(arg0, arg1)
						local function __FUNC_13EAB_(arg0, arg1)
							local function __FUNC_14000_(arg0, arg1)
								local function __FUNC_1417B_(arg0, arg1)
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
									__FUNC_1417B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1417B_)
							end

							if arg1.interrupted then
								__FUNC_14000_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14000_)
						end

						if arg1.interrupted then
							__FUNC_13EAB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13EAB_)
					end

					if arg1.interrupted then
						__FUNC_13D30_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13D30_)
				end

				if arg1.interrupted then
					__FUNC_13BDB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13BDB_)
			end

			if arg1.interrupted then
				__FUNC_13A60_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13A60_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_13909_(registerVal20, {})
		local function __FUNC_1432D_(arg0, arg1)
			local function __FUNC_14484_(arg0, arg1)
				local function __FUNC_145FF_(arg0, arg1)
					local function __FUNC_14754_(arg0, arg1)
						local function __FUNC_148CF_(arg0, arg1)
							local function __FUNC_14A24_(arg0, arg1)
								local function __FUNC_14B9F_(arg0, arg1)
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
									__FUNC_14B9F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14B9F_)
							end

							if arg1.interrupted then
								__FUNC_14A24_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14A24_)
						end

						if arg1.interrupted then
							__FUNC_148CF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_148CF_)
					end

					if arg1.interrupted then
						__FUNC_14754_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14754_)
				end

				if arg1.interrupted then
					__FUNC_145FF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_145FF_)
			end

			if arg1.interrupted then
				__FUNC_14484_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14484_)
		end

		registerVal21:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_1432D_(registerVal21, {})
	end

	registerVal31.LoseFocus = __FUNC_1167D_
	registerVal30.Equipped = registerVal31
	registerVal31 = {}
	local function __FUNC_14D51_()
		registerVal2:setupElementClipCounter(20.000000)
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
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.300000)
		registerVal2.itemImage:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImageLine:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal11:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.IconNew:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal27:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
		registerVal29:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal29, {})
	end

	registerVal31.DefaultClip = __FUNC_14D51_
	local function __FUNC_155B9_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_1584B_(arg0, arg1)
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
		__FUNC_1584B_(registerVal4, {})
		local function __FUNC_159FD_(arg0, arg1)
			local function __FUNC_15B54_(arg0, arg1)
				local function __FUNC_15CCF_(arg0, arg1)
					local function __FUNC_15E24_(arg0, arg1)
						local function __FUNC_15F9F_(arg0, arg1)
							local function __FUNC_160F4_(arg0, arg1)
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
								__FUNC_160F4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_160F4_)
						end

						if arg1.interrupted then
							__FUNC_15F9F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15F9F_)
					end

					if arg1.interrupted then
						__FUNC_15E24_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15E24_)
				end

				if arg1.interrupted then
					__FUNC_15CCF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15CCF_)
			end

			if arg1.interrupted then
				__FUNC_15B54_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15B54_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_159FD_(registerVal17, {})
		local function __FUNC_162A9_(arg0, arg1)
			local function __FUNC_16400_(arg0, arg1)
				local function __FUNC_1657B_(arg0, arg1)
					local function __FUNC_166D0_(arg0, arg1)
						local function __FUNC_1684B_(arg0, arg1)
							local function __FUNC_169A0_(arg0, arg1)
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
								__FUNC_169A0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_169A0_)
						end

						if arg1.interrupted then
							__FUNC_1684B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1684B_)
					end

					if arg1.interrupted then
						__FUNC_166D0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_166D0_)
				end

				if arg1.interrupted then
					__FUNC_1657B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1657B_)
			end

			if arg1.interrupted then
				__FUNC_16400_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16400_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_162A9_(registerVal18, {})
		local function __FUNC_16B55_(arg0, arg1)
			local function __FUNC_16CAC_(arg0, arg1)
				local function __FUNC_16E27_(arg0, arg1)
					local function __FUNC_16F9F_(arg0, arg1)
						local function __FUNC_17117_(arg0, arg1)
							local function __FUNC_1726C_(arg0, arg1)
								local function __FUNC_173E7_(arg0, arg1)
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
									__FUNC_173E7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_173E7_)
							end

							if arg1.interrupted then
								__FUNC_1726C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1726C_)
						end

						if arg1.interrupted then
							__FUNC_17117_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17117_)
					end

					if arg1.interrupted then
						__FUNC_16F9F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16F9F_)
				end

				if arg1.interrupted then
					__FUNC_16E27_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16E27_)
			end

			if arg1.interrupted then
				__FUNC_16CAC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16CAC_)
		end

		registerVal19:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_16B55_(registerVal19, {})
		local function __FUNC_17599_(arg0, arg1)
			local function __FUNC_176F0_(arg0, arg1)
				local function __FUNC_1786B_(arg0, arg1)
					local function __FUNC_179C0_(arg0, arg1)
						local function __FUNC_17B3B_(arg0, arg1)
							local function __FUNC_17C90_(arg0, arg1)
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
								__FUNC_17C90_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17C90_)
						end

						if arg1.interrupted then
							__FUNC_17B3B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17B3B_)
					end

					if arg1.interrupted then
						__FUNC_179C0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_179C0_)
				end

				if arg1.interrupted then
					__FUNC_1786B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1786B_)
			end

			if arg1.interrupted then
				__FUNC_176F0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_176F0_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_17599_(registerVal20, {})
		local function __FUNC_17E45_(arg0, arg1)
			local function __FUNC_17F9C_(arg0, arg1)
				local function __FUNC_18117_(arg0, arg1)
					local function __FUNC_1826C_(arg0, arg1)
						local function __FUNC_183E7_(arg0, arg1)
							local function __FUNC_1853C_(arg0, arg1)
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
								__FUNC_1853C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1853C_)
						end

						if arg1.interrupted then
							__FUNC_183E7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_183E7_)
					end

					if arg1.interrupted then
						__FUNC_1826C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1826C_)
				end

				if arg1.interrupted then
					__FUNC_18117_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18117_)
			end

			if arg1.interrupted then
				__FUNC_17F9C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17F9C_)
		end

		registerVal21:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_17E45_(registerVal21, {})
	end

	registerVal31.GainFocus = __FUNC_155B9_
	local function __FUNC_186F1_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal31.Focus = __FUNC_186F1_
	local function __FUNC_188AA_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_18B3B_(arg0, arg1)
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

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_18B3B_(registerVal4, {})
		local function __FUNC_18CED_(arg0, arg1)
			local function __FUNC_18E67_(arg0, arg1)
				local function __FUNC_18FDF_(arg0, arg1)
					local function __FUNC_19157_(arg0, arg1)
						local function __FUNC_192AC_(arg0, arg1)
							local function __FUNC_19427_(arg0, arg1)
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
								__FUNC_19427_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19427_)
						end

						if arg1.interrupted then
							__FUNC_192AC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_192AC_)
					end

					if arg1.interrupted then
						__FUNC_19157_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19157_)
				end

				if arg1.interrupted then
					__FUNC_18FDF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18FDF_)
			end

			if arg1.interrupted then
				__FUNC_18E67_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18E67_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_18CED_(registerVal17, {})
		local function __FUNC_195D9_(arg0, arg1)
			local function __FUNC_19753_(arg0, arg1)
				local function __FUNC_198CB_(arg0, arg1)
					local function __FUNC_19A43_(arg0, arg1)
						local function __FUNC_19B98_(arg0, arg1)
							local function __FUNC_19D13_(arg0, arg1)
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
								__FUNC_19D13_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19D13_)
						end

						if arg1.interrupted then
							__FUNC_19B98_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19B98_)
					end

					if arg1.interrupted then
						__FUNC_19A43_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19A43_)
				end

				if arg1.interrupted then
					__FUNC_198CB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_198CB_)
			end

			if arg1.interrupted then
				__FUNC_19753_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19753_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_195D9_(registerVal18, {})
		local function __FUNC_19EC5_(arg0, arg1)
			local function __FUNC_1A01C_(arg0, arg1)
				local function __FUNC_1A197_(arg0, arg1)
					local function __FUNC_1A30F_(arg0, arg1)
						local function __FUNC_1A487_(arg0, arg1)
							local function __FUNC_1A5DC_(arg0, arg1)
								local function __FUNC_1A757_(arg0, arg1)
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
									__FUNC_1A757_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A757_)
							end

							if arg1.interrupted then
								__FUNC_1A5DC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A5DC_)
						end

						if arg1.interrupted then
							__FUNC_1A487_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A487_)
					end

					if arg1.interrupted then
						__FUNC_1A30F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A30F_)
				end

				if arg1.interrupted then
					__FUNC_1A197_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A197_)
			end

			if arg1.interrupted then
				__FUNC_1A01C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A01C_)
		end

		registerVal19:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_19EC5_(registerVal19, {})
		local function __FUNC_1A909_(arg0, arg1)
			local function __FUNC_1AA60_(arg0, arg1)
				local function __FUNC_1ABDB_(arg0, arg1)
					local function __FUNC_1AD30_(arg0, arg1)
						local function __FUNC_1AEAB_(arg0, arg1)
							local function __FUNC_1B000_(arg0, arg1)
								local function __FUNC_1B17B_(arg0, arg1)
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
									__FUNC_1B17B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B17B_)
							end

							if arg1.interrupted then
								__FUNC_1B000_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B000_)
						end

						if arg1.interrupted then
							__FUNC_1AEAB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AEAB_)
					end

					if arg1.interrupted then
						__FUNC_1AD30_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AD30_)
				end

				if arg1.interrupted then
					__FUNC_1ABDB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1ABDB_)
			end

			if arg1.interrupted then
				__FUNC_1AA60_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AA60_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_1A909_(registerVal20, {})
		local function __FUNC_1B32D_(arg0, arg1)
			local function __FUNC_1B484_(arg0, arg1)
				local function __FUNC_1B5FF_(arg0, arg1)
					local function __FUNC_1B754_(arg0, arg1)
						local function __FUNC_1B8CF_(arg0, arg1)
							local function __FUNC_1BA24_(arg0, arg1)
								local function __FUNC_1BB9F_(arg0, arg1)
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
									__FUNC_1BB9F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BB9F_)
							end

							if arg1.interrupted then
								__FUNC_1BA24_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BA24_)
						end

						if arg1.interrupted then
							__FUNC_1B8CF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B8CF_)
					end

					if arg1.interrupted then
						__FUNC_1B754_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B754_)
				end

				if arg1.interrupted then
					__FUNC_1B5FF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B5FF_)
			end

			if arg1.interrupted then
				__FUNC_1B484_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B484_)
		end

		registerVal21:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_1B32D_(registerVal21, {})
	end

	registerVal31.LoseFocus = __FUNC_188AA_
	registerVal30.New = registerVal31
	registerVal31 = {}
	local function __FUNC_1BD51_()
		registerVal2:setupElementClipCounter(18.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImageLine:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LabelButtonCount:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal12:completeAnimation()
		registerVal2.LabelButton:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal23:completeAnimation()
		registerVal2.TokenRefundHint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
	end

	registerVal31.DefaultClip = __FUNC_1BD51_
	local function __FUNC_1C464_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_1C76B_(arg0, arg1)
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

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_1C76B_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_1C91D_(arg0, arg1)
			local function __FUNC_1CA74_(arg0, arg1)
				local function __FUNC_1CBEF_(arg0, arg1)
					local function __FUNC_1CD44_(arg0, arg1)
						local function __FUNC_1CEBF_(arg0, arg1)
							local function __FUNC_1D014_(arg0, arg1)
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
								__FUNC_1D014_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D014_)
						end

						if arg1.interrupted then
							__FUNC_1CEBF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CEBF_)
					end

					if arg1.interrupted then
						__FUNC_1CD44_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CD44_)
				end

				if arg1.interrupted then
					__FUNC_1CBEF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CBEF_)
			end

			if arg1.interrupted then
				__FUNC_1CA74_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CA74_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_1C91D_(registerVal17, {})
		local function __FUNC_1D1C9_(arg0, arg1)
			local function __FUNC_1D320_(arg0, arg1)
				local function __FUNC_1D49B_(arg0, arg1)
					local function __FUNC_1D5F0_(arg0, arg1)
						local function __FUNC_1D76B_(arg0, arg1)
							local function __FUNC_1D8C0_(arg0, arg1)
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
								__FUNC_1D8C0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D8C0_)
						end

						if arg1.interrupted then
							__FUNC_1D76B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D76B_)
					end

					if arg1.interrupted then
						__FUNC_1D5F0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D5F0_)
				end

				if arg1.interrupted then
					__FUNC_1D49B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D49B_)
			end

			if arg1.interrupted then
				__FUNC_1D320_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D320_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_1D1C9_(registerVal18, {})
		local function __FUNC_1DA75_(arg0, arg1)
			local function __FUNC_1DBCC_(arg0, arg1)
				local function __FUNC_1DD47_(arg0, arg1)
					local function __FUNC_1DEBF_(arg0, arg1)
						local function __FUNC_1E037_(arg0, arg1)
							local function __FUNC_1E18C_(arg0, arg1)
								local function __FUNC_1E307_(arg0, arg1)
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
									__FUNC_1E307_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E307_)
							end

							if arg1.interrupted then
								__FUNC_1E18C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E18C_)
						end

						if arg1.interrupted then
							__FUNC_1E037_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E037_)
					end

					if arg1.interrupted then
						__FUNC_1DEBF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DEBF_)
				end

				if arg1.interrupted then
					__FUNC_1DD47_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DD47_)
			end

			if arg1.interrupted then
				__FUNC_1DBCC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DBCC_)
		end

		registerVal19:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_1DA75_(registerVal19, {})
		local function __FUNC_1E4B9_(arg0, arg1)
			local function __FUNC_1E610_(arg0, arg1)
				local function __FUNC_1E78B_(arg0, arg1)
					local function __FUNC_1E8E0_(arg0, arg1)
						local function __FUNC_1EA5B_(arg0, arg1)
							local function __FUNC_1EBB0_(arg0, arg1)
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
								__FUNC_1EBB0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EBB0_)
						end

						if arg1.interrupted then
							__FUNC_1EA5B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EA5B_)
					end

					if arg1.interrupted then
						__FUNC_1E8E0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E8E0_)
				end

				if arg1.interrupted then
					__FUNC_1E78B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E78B_)
			end

			if arg1.interrupted then
				__FUNC_1E610_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E610_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_1E4B9_(registerVal20, {})
		local function __FUNC_1ED65_(arg0, arg1)
			local function __FUNC_1EEBC_(arg0, arg1)
				local function __FUNC_1F037_(arg0, arg1)
					local function __FUNC_1F18C_(arg0, arg1)
						local function __FUNC_1F307_(arg0, arg1)
							local function __FUNC_1F45C_(arg0, arg1)
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
								__FUNC_1F45C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F45C_)
						end

						if arg1.interrupted then
							__FUNC_1F307_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F307_)
					end

					if arg1.interrupted then
						__FUNC_1F18C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F18C_)
				end

				if arg1.interrupted then
					__FUNC_1F037_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F037_)
			end

			if arg1.interrupted then
				__FUNC_1EEBC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EEBC_)
		end

		registerVal21:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_1ED65_(registerVal21, {})
	end

	registerVal31.GainFocus = __FUNC_1C464_
	local function __FUNC_1F611_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal23:completeAnimation()
		registerVal2.TokenRefundHint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
	end

	registerVal31.Focus = __FUNC_1F611_
	local function __FUNC_1F88A_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_1FB75_(arg0, arg1)
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
		__FUNC_1FB75_(registerVal4, {})
		local function __FUNC_1FD29_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		__FUNC_1FD29_(registerVal5, {})
		local function __FUNC_1FEDD_(arg0, arg1)
			local function __FUNC_20057_(arg0, arg1)
				local function __FUNC_201CF_(arg0, arg1)
					local function __FUNC_20347_(arg0, arg1)
						local function __FUNC_2049C_(arg0, arg1)
							local function __FUNC_20617_(arg0, arg1)
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
								__FUNC_20617_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20617_)
						end

						if arg1.interrupted then
							__FUNC_2049C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2049C_)
					end

					if arg1.interrupted then
						__FUNC_20347_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20347_)
				end

				if arg1.interrupted then
					__FUNC_201CF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_201CF_)
			end

			if arg1.interrupted then
				__FUNC_20057_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20057_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_1FEDD_(registerVal17, {})
		local function __FUNC_207C9_(arg0, arg1)
			local function __FUNC_20943_(arg0, arg1)
				local function __FUNC_20ABB_(arg0, arg1)
					local function __FUNC_20C33_(arg0, arg1)
						local function __FUNC_20D88_(arg0, arg1)
							local function __FUNC_20F03_(arg0, arg1)
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
								__FUNC_20F03_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20F03_)
						end

						if arg1.interrupted then
							__FUNC_20D88_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20D88_)
					end

					if arg1.interrupted then
						__FUNC_20C33_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20C33_)
				end

				if arg1.interrupted then
					__FUNC_20ABB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20ABB_)
			end

			if arg1.interrupted then
				__FUNC_20943_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20943_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_207C9_(registerVal18, {})
		local function __FUNC_210B5_(arg0, arg1)
			local function __FUNC_2120C_(arg0, arg1)
				local function __FUNC_21387_(arg0, arg1)
					local function __FUNC_214FF_(arg0, arg1)
						local function __FUNC_21677_(arg0, arg1)
							local function __FUNC_217CC_(arg0, arg1)
								local function __FUNC_21947_(arg0, arg1)
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
									__FUNC_21947_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21947_)
							end

							if arg1.interrupted then
								__FUNC_217CC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_217CC_)
						end

						if arg1.interrupted then
							__FUNC_21677_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21677_)
					end

					if arg1.interrupted then
						__FUNC_214FF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_214FF_)
				end

				if arg1.interrupted then
					__FUNC_21387_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21387_)
			end

			if arg1.interrupted then
				__FUNC_2120C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2120C_)
		end

		registerVal19:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_210B5_(registerVal19, {})
		local function __FUNC_21AF9_(arg0, arg1)
			local function __FUNC_21C50_(arg0, arg1)
				local function __FUNC_21DCB_(arg0, arg1)
					local function __FUNC_21F20_(arg0, arg1)
						local function __FUNC_2209B_(arg0, arg1)
							local function __FUNC_221F0_(arg0, arg1)
								local function __FUNC_2236B_(arg0, arg1)
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
									__FUNC_2236B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2236B_)
							end

							if arg1.interrupted then
								__FUNC_221F0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_221F0_)
						end

						if arg1.interrupted then
							__FUNC_2209B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2209B_)
					end

					if arg1.interrupted then
						__FUNC_21F20_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21F20_)
				end

				if arg1.interrupted then
					__FUNC_21DCB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21DCB_)
			end

			if arg1.interrupted then
				__FUNC_21C50_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21C50_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_21AF9_(registerVal20, {})
		local function __FUNC_2251D_(arg0, arg1)
			local function __FUNC_22674_(arg0, arg1)
				local function __FUNC_227EF_(arg0, arg1)
					local function __FUNC_22944_(arg0, arg1)
						local function __FUNC_22ABF_(arg0, arg1)
							local function __FUNC_22C14_(arg0, arg1)
								local function __FUNC_22D8F_(arg0, arg1)
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
									__FUNC_22D8F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22D8F_)
							end

							if arg1.interrupted then
								__FUNC_22C14_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22C14_)
						end

						if arg1.interrupted then
							__FUNC_22ABF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22ABF_)
					end

					if arg1.interrupted then
						__FUNC_22944_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22944_)
				end

				if arg1.interrupted then
					__FUNC_227EF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_227EF_)
			end

			if arg1.interrupted then
				__FUNC_22674_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22674_)
		end

		registerVal21:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_2251D_(registerVal21, {})
	end

	registerVal31.LoseFocus = __FUNC_1F88A_
	registerVal30.Locked = registerVal31
	registerVal31 = {}
	local function __FUNC_22F41_()
		registerVal2:setupElementClipCounter(21.000000)
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
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImageLine:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LabelButtonCount:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.LabelButton:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal27:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
		registerVal29:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal29, {})
	end

	registerVal31.DefaultClip = __FUNC_22F41_
	local function __FUNC_23774_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_23B37_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
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
		__FUNC_23B37_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal9:completeAnimation()
		registerVal2.LabelButtonCount:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal12:completeAnimation()
		registerVal2.LabelButton:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal12, {})
		local function __FUNC_23CE9_(arg0, arg1)
			local function __FUNC_23E63_(arg0, arg1)
				local function __FUNC_23FDB_(arg0, arg1)
					local function __FUNC_24153_(arg0, arg1)
						local function __FUNC_242CB_(arg0, arg1)
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
							__FUNC_242CB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_242CB_)
					end

					if arg1.interrupted then
						__FUNC_24153_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24153_)
				end

				if arg1.interrupted then
					__FUNC_23FDB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23FDB_)
			end

			if arg1.interrupted then
				__FUNC_23E63_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23E63_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_23CE9_(registerVal17, {})
		local function __FUNC_2447D_(arg0, arg1)
			local function __FUNC_245F7_(arg0, arg1)
				local function __FUNC_2476F_(arg0, arg1)
					local function __FUNC_248E7_(arg0, arg1)
						local function __FUNC_24A5F_(arg0, arg1)
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
							__FUNC_24A5F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24A5F_)
					end

					if arg1.interrupted then
						__FUNC_248E7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_248E7_)
				end

				if arg1.interrupted then
					__FUNC_2476F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2476F_)
			end

			if arg1.interrupted then
				__FUNC_245F7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_245F7_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_2447D_(registerVal18, {})
		local function __FUNC_24C11_(arg0, arg1)
			local function __FUNC_24D8B_(arg0, arg1)
				local function __FUNC_24F03_(arg0, arg1)
					local function __FUNC_25058_(arg0, arg1)
						local function __FUNC_251D3_(arg0, arg1)
							local function __FUNC_2534B_(arg0, arg1)
								local function __FUNC_254C3_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(1.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_254C3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_254C3_)
							end

							if arg1.interrupted then
								__FUNC_2534B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2534B_)
						end

						if arg1.interrupted then
							__FUNC_251D3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_251D3_)
					end

					if arg1.interrupted then
						__FUNC_25058_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25058_)
				end

				if arg1.interrupted then
					__FUNC_24F03_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24F03_)
			end

			if arg1.interrupted then
				__FUNC_24D8B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.700000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24D8B_)
		end

		registerVal19:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_24C11_(registerVal19, {})
		local function __FUNC_25675_(arg0, arg1)
			local function __FUNC_257EF_(arg0, arg1)
				local function __FUNC_25967_(arg0, arg1)
					local function __FUNC_25ABC_(arg0, arg1)
						local function __FUNC_25C37_(arg0, arg1)
							local function __FUNC_25D8C_(arg0, arg1)
								local function __FUNC_25F07_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_25F07_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25F07_)
							end

							if arg1.interrupted then
								__FUNC_25D8C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25D8C_)
						end

						if arg1.interrupted then
							__FUNC_25C37_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25C37_)
					end

					if arg1.interrupted then
						__FUNC_25ABC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25ABC_)
				end

				if arg1.interrupted then
					__FUNC_25967_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25967_)
			end

			if arg1.interrupted then
				__FUNC_257EF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.400000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_257EF_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_25675_(registerVal20, {})
		local function __FUNC_260B9_(arg0, arg1)
			local function __FUNC_26233_(arg0, arg1)
				local function __FUNC_263AB_(arg0, arg1)
					local function __FUNC_26500_(arg0, arg1)
						local function __FUNC_2667B_(arg0, arg1)
							local function __FUNC_267D0_(arg0, arg1)
								local function __FUNC_2694B_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_2694B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2694B_)
							end

							if arg1.interrupted then
								__FUNC_267D0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_267D0_)
						end

						if arg1.interrupted then
							__FUNC_2667B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2667B_)
					end

					if arg1.interrupted then
						__FUNC_26500_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26500_)
				end

				if arg1.interrupted then
					__FUNC_263AB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_263AB_)
			end

			if arg1.interrupted then
				__FUNC_26233_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.570000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26233_)
		end

		registerVal21:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_260B9_(registerVal21, {})
	end

	registerVal31.GainFocus = __FUNC_23774_
	local function __FUNC_26AFD_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.LabelButtonCount:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal12:completeAnimation()
		registerVal2.LabelButton:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal31.Focus = __FUNC_26AFD_
	local function __FUNC_26E2C_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_271EB_(arg0, arg1)
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

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_271EB_(registerVal4, {})
		local function __FUNC_2739D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		__FUNC_2739D_(registerVal5, {})
		registerVal9:completeAnimation()
		registerVal2.LabelButtonCount:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal12:completeAnimation()
		registerVal2.LabelButton:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal12, {})
		local function __FUNC_27551_(arg0, arg1)
			local function __FUNC_276CB_(arg0, arg1)
				local function __FUNC_27843_(arg0, arg1)
					local function __FUNC_279BB_(arg0, arg1)
						local function __FUNC_27B10_(arg0, arg1)
							local function __FUNC_27C8B_(arg0, arg1)
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
								__FUNC_27C8B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27C8B_)
						end

						if arg1.interrupted then
							__FUNC_27B10_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27B10_)
					end

					if arg1.interrupted then
						__FUNC_279BB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_279BB_)
				end

				if arg1.interrupted then
					__FUNC_27843_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27843_)
			end

			if arg1.interrupted then
				__FUNC_276CB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_276CB_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_27551_(registerVal17, {})
		local function __FUNC_27E3D_(arg0, arg1)
			local function __FUNC_27FB7_(arg0, arg1)
				local function __FUNC_2812F_(arg0, arg1)
					local function __FUNC_282A7_(arg0, arg1)
						local function __FUNC_283FC_(arg0, arg1)
							local function __FUNC_28577_(arg0, arg1)
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
								__FUNC_28577_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28577_)
						end

						if arg1.interrupted then
							__FUNC_283FC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_283FC_)
					end

					if arg1.interrupted then
						__FUNC_282A7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_282A7_)
				end

				if arg1.interrupted then
					__FUNC_2812F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2812F_)
			end

			if arg1.interrupted then
				__FUNC_27FB7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27FB7_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_27E3D_(registerVal18, {})
		local function __FUNC_28729_(arg0, arg1)
			local function __FUNC_28880_(arg0, arg1)
				local function __FUNC_289FB_(arg0, arg1)
					local function __FUNC_28B73_(arg0, arg1)
						local function __FUNC_28CEB_(arg0, arg1)
							local function __FUNC_28E40_(arg0, arg1)
								local function __FUNC_28FBB_(arg0, arg1)
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
									__FUNC_28FBB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28FBB_)
							end

							if arg1.interrupted then
								__FUNC_28E40_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28E40_)
						end

						if arg1.interrupted then
							__FUNC_28CEB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28CEB_)
					end

					if arg1.interrupted then
						__FUNC_28B73_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28B73_)
				end

				if arg1.interrupted then
					__FUNC_289FB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_289FB_)
			end

			if arg1.interrupted then
				__FUNC_28880_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28880_)
		end

		registerVal19:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_28729_(registerVal19, {})
		local function __FUNC_2916D_(arg0, arg1)
			local function __FUNC_292C4_(arg0, arg1)
				local function __FUNC_2943F_(arg0, arg1)
					local function __FUNC_29594_(arg0, arg1)
						local function __FUNC_2970F_(arg0, arg1)
							local function __FUNC_29864_(arg0, arg1)
								local function __FUNC_299DF_(arg0, arg1)
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
									__FUNC_299DF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_299DF_)
							end

							if arg1.interrupted then
								__FUNC_29864_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29864_)
						end

						if arg1.interrupted then
							__FUNC_2970F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2970F_)
					end

					if arg1.interrupted then
						__FUNC_29594_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29594_)
				end

				if arg1.interrupted then
					__FUNC_2943F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2943F_)
			end

			if arg1.interrupted then
				__FUNC_292C4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_292C4_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_2916D_(registerVal20, {})
		local function __FUNC_29B91_(arg0, arg1)
			local function __FUNC_29CE8_(arg0, arg1)
				local function __FUNC_29E63_(arg0, arg1)
					local function __FUNC_29FB8_(arg0, arg1)
						local function __FUNC_2A133_(arg0, arg1)
							local function __FUNC_2A288_(arg0, arg1)
								local function __FUNC_2A403_(arg0, arg1)
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
									__FUNC_2A403_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A403_)
							end

							if arg1.interrupted then
								__FUNC_2A288_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A288_)
						end

						if arg1.interrupted then
							__FUNC_2A133_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A133_)
					end

					if arg1.interrupted then
						__FUNC_29FB8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29FB8_)
				end

				if arg1.interrupted then
					__FUNC_29E63_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29E63_)
			end

			if arg1.interrupted then
				__FUNC_29CE8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29CE8_)
		end

		registerVal21:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_29B91_(registerVal21, {})
	end

	registerVal31.LoseFocus = __FUNC_26E2C_
	registerVal30.NotAvailable = registerVal31
	registerVal31 = {}
	local function __FUNC_2A5B5_()
		registerVal2:setupElementClipCounter(20.000000)
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
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImageLine:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LabelButtonCount:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal12:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.alertIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal27:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
		registerVal29:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal29, {})
	end

	registerVal31.DefaultClip = __FUNC_2A5B5_
	local function __FUNC_2AD8A_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_2B073_(arg0, arg1)
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
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		__FUNC_2B073_(registerVal4, {})
		local function __FUNC_2B225_(arg0, arg1)
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

		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		__FUNC_2B225_(registerVal7, {})
		local function __FUNC_2B3D9_(arg0, arg1)
			local function __FUNC_2B530_(arg0, arg1)
				local function __FUNC_2B6AB_(arg0, arg1)
					local function __FUNC_2B800_(arg0, arg1)
						local function __FUNC_2B97B_(arg0, arg1)
							local function __FUNC_2BAD0_(arg0, arg1)
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
								__FUNC_2BAD0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BAD0_)
						end

						if arg1.interrupted then
							__FUNC_2B97B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B97B_)
					end

					if arg1.interrupted then
						__FUNC_2B800_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B800_)
				end

				if arg1.interrupted then
					__FUNC_2B6AB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B6AB_)
			end

			if arg1.interrupted then
				__FUNC_2B530_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B530_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_2B3D9_(registerVal17, {})
		local function __FUNC_2BC85_(arg0, arg1)
			local function __FUNC_2BDDC_(arg0, arg1)
				local function __FUNC_2BF57_(arg0, arg1)
					local function __FUNC_2C0AC_(arg0, arg1)
						local function __FUNC_2C227_(arg0, arg1)
							local function __FUNC_2C37C_(arg0, arg1)
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
								__FUNC_2C37C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C37C_)
						end

						if arg1.interrupted then
							__FUNC_2C227_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C227_)
					end

					if arg1.interrupted then
						__FUNC_2C0AC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C0AC_)
				end

				if arg1.interrupted then
					__FUNC_2BF57_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BF57_)
			end

			if arg1.interrupted then
				__FUNC_2BDDC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BDDC_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_2BC85_(registerVal18, {})
		local function __FUNC_2C531_(arg0, arg1)
			local function __FUNC_2C688_(arg0, arg1)
				local function __FUNC_2C803_(arg0, arg1)
					local function __FUNC_2C97B_(arg0, arg1)
						local function __FUNC_2CAF3_(arg0, arg1)
							local function __FUNC_2CC48_(arg0, arg1)
								local function __FUNC_2CDC3_(arg0, arg1)
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
									__FUNC_2CDC3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CDC3_)
							end

							if arg1.interrupted then
								__FUNC_2CC48_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CC48_)
						end

						if arg1.interrupted then
							__FUNC_2CAF3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CAF3_)
					end

					if arg1.interrupted then
						__FUNC_2C97B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C97B_)
				end

				if arg1.interrupted then
					__FUNC_2C803_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C803_)
			end

			if arg1.interrupted then
				__FUNC_2C688_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C688_)
		end

		registerVal19:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_2C531_(registerVal19, {})
		local function __FUNC_2CF75_(arg0, arg1)
			local function __FUNC_2D0CC_(arg0, arg1)
				local function __FUNC_2D247_(arg0, arg1)
					local function __FUNC_2D39C_(arg0, arg1)
						local function __FUNC_2D517_(arg0, arg1)
							local function __FUNC_2D66C_(arg0, arg1)
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
								__FUNC_2D66C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D66C_)
						end

						if arg1.interrupted then
							__FUNC_2D517_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D517_)
					end

					if arg1.interrupted then
						__FUNC_2D39C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D39C_)
				end

				if arg1.interrupted then
					__FUNC_2D247_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D247_)
			end

			if arg1.interrupted then
				__FUNC_2D0CC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D0CC_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_2CF75_(registerVal20, {})
		local function __FUNC_2D821_(arg0, arg1)
			local function __FUNC_2D978_(arg0, arg1)
				local function __FUNC_2DAF3_(arg0, arg1)
					local function __FUNC_2DC48_(arg0, arg1)
						local function __FUNC_2DDC3_(arg0, arg1)
							local function __FUNC_2DF18_(arg0, arg1)
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
								__FUNC_2DF18_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DF18_)
						end

						if arg1.interrupted then
							__FUNC_2DDC3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DDC3_)
					end

					if arg1.interrupted then
						__FUNC_2DC48_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DC48_)
				end

				if arg1.interrupted then
					__FUNC_2DAF3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DAF3_)
			end

			if arg1.interrupted then
				__FUNC_2D978_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D978_)
		end

		registerVal21:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_2D821_(registerVal21, {})
	end

	registerVal31.GainFocus = __FUNC_2AD8A_
	local function __FUNC_2E0CD_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal31.Focus = __FUNC_2E0CD_
	local function __FUNC_2E2DD_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_2E5C2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
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
		__FUNC_2E5C2_(registerVal4, {})
		local function __FUNC_2E775_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		__FUNC_2E775_(registerVal7, {})
		local function __FUNC_2E929_(arg0, arg1)
			local function __FUNC_2EAA3_(arg0, arg1)
				local function __FUNC_2EC1B_(arg0, arg1)
					local function __FUNC_2ED93_(arg0, arg1)
						local function __FUNC_2EEE8_(arg0, arg1)
							local function __FUNC_2F063_(arg0, arg1)
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
								__FUNC_2F063_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F063_)
						end

						if arg1.interrupted then
							__FUNC_2EEE8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EEE8_)
					end

					if arg1.interrupted then
						__FUNC_2ED93_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2ED93_)
				end

				if arg1.interrupted then
					__FUNC_2EC1B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EC1B_)
			end

			if arg1.interrupted then
				__FUNC_2EAA3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EAA3_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_2E929_(registerVal17, {})
		local function __FUNC_2F215_(arg0, arg1)
			local function __FUNC_2F38F_(arg0, arg1)
				local function __FUNC_2F507_(arg0, arg1)
					local function __FUNC_2F67F_(arg0, arg1)
						local function __FUNC_2F7D4_(arg0, arg1)
							local function __FUNC_2F94F_(arg0, arg1)
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
								__FUNC_2F94F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F94F_)
						end

						if arg1.interrupted then
							__FUNC_2F7D4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F7D4_)
					end

					if arg1.interrupted then
						__FUNC_2F67F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F67F_)
				end

				if arg1.interrupted then
					__FUNC_2F507_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F507_)
			end

			if arg1.interrupted then
				__FUNC_2F38F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F38F_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_2F215_(registerVal18, {})
		local function __FUNC_2FB01_(arg0, arg1)
			local function __FUNC_2FC58_(arg0, arg1)
				local function __FUNC_2FDD3_(arg0, arg1)
					local function __FUNC_2FF4B_(arg0, arg1)
						local function __FUNC_300C3_(arg0, arg1)
							local function __FUNC_30218_(arg0, arg1)
								local function __FUNC_30393_(arg0, arg1)
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
									__FUNC_30393_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30393_)
							end

							if arg1.interrupted then
								__FUNC_30218_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30218_)
						end

						if arg1.interrupted then
							__FUNC_300C3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_300C3_)
					end

					if arg1.interrupted then
						__FUNC_2FF4B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FF4B_)
				end

				if arg1.interrupted then
					__FUNC_2FDD3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FDD3_)
			end

			if arg1.interrupted then
				__FUNC_2FC58_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FC58_)
		end

		registerVal19:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_2FB01_(registerVal19, {})
		local function __FUNC_30545_(arg0, arg1)
			local function __FUNC_3069C_(arg0, arg1)
				local function __FUNC_30817_(arg0, arg1)
					local function __FUNC_3096C_(arg0, arg1)
						local function __FUNC_30AE7_(arg0, arg1)
							local function __FUNC_30C3C_(arg0, arg1)
								local function __FUNC_30DB7_(arg0, arg1)
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
									__FUNC_30DB7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30DB7_)
							end

							if arg1.interrupted then
								__FUNC_30C3C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30C3C_)
						end

						if arg1.interrupted then
							__FUNC_30AE7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30AE7_)
					end

					if arg1.interrupted then
						__FUNC_3096C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3096C_)
				end

				if arg1.interrupted then
					__FUNC_30817_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30817_)
			end

			if arg1.interrupted then
				__FUNC_3069C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3069C_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_30545_(registerVal20, {})
		local function __FUNC_30F69_(arg0, arg1)
			local function __FUNC_310C0_(arg0, arg1)
				local function __FUNC_3123B_(arg0, arg1)
					local function __FUNC_31390_(arg0, arg1)
						local function __FUNC_3150B_(arg0, arg1)
							local function __FUNC_31660_(arg0, arg1)
								local function __FUNC_317DB_(arg0, arg1)
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
									__FUNC_317DB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_317DB_)
							end

							if arg1.interrupted then
								__FUNC_31660_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31660_)
						end

						if arg1.interrupted then
							__FUNC_3150B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3150B_)
					end

					if arg1.interrupted then
						__FUNC_31390_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31390_)
				end

				if arg1.interrupted then
					__FUNC_3123B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3123B_)
			end

			if arg1.interrupted then
				__FUNC_310C0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_310C0_)
		end

		registerVal21:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_30F69_(registerVal21, {})
	end

	registerVal31.LoseFocus = __FUNC_2E2DD_
	registerVal30.MutuallyExclusive = registerVal31
	registerVal31 = {}
	local function __FUNC_3198D_()
		registerVal2:setupElementClipCounter(21.000000)
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
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImageLine:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LabelButtonCount:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal12:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal23:completeAnimation()
		registerVal2.TokenRefundHint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal27:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
		registerVal29:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal29, {})
	end

	registerVal31.DefaultClip = __FUNC_3198D_
	local function __FUNC_321BF_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_32500_(arg0, arg1)
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

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		__FUNC_32500_(registerVal4, {})
		local function __FUNC_326B5_(arg0, arg1)
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

		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		__FUNC_326B5_(registerVal7, {})
		local function __FUNC_32869_(arg0, arg1)
			local function __FUNC_329C0_(arg0, arg1)
				local function __FUNC_32B3B_(arg0, arg1)
					local function __FUNC_32C90_(arg0, arg1)
						local function __FUNC_32E0B_(arg0, arg1)
							local function __FUNC_32F60_(arg0, arg1)
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
								__FUNC_32F60_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32F60_)
						end

						if arg1.interrupted then
							__FUNC_32E0B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32E0B_)
					end

					if arg1.interrupted then
						__FUNC_32C90_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32C90_)
				end

				if arg1.interrupted then
					__FUNC_32B3B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32B3B_)
			end

			if arg1.interrupted then
				__FUNC_329C0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_329C0_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_32869_(registerVal17, {})
		local function __FUNC_33115_(arg0, arg1)
			local function __FUNC_3326C_(arg0, arg1)
				local function __FUNC_333E7_(arg0, arg1)
					local function __FUNC_3353C_(arg0, arg1)
						local function __FUNC_336B7_(arg0, arg1)
							local function __FUNC_3380C_(arg0, arg1)
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
								__FUNC_3380C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3380C_)
						end

						if arg1.interrupted then
							__FUNC_336B7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_336B7_)
					end

					if arg1.interrupted then
						__FUNC_3353C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3353C_)
				end

				if arg1.interrupted then
					__FUNC_333E7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_333E7_)
			end

			if arg1.interrupted then
				__FUNC_3326C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3326C_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_33115_(registerVal18, {})
		local function __FUNC_339C1_(arg0, arg1)
			local function __FUNC_33B18_(arg0, arg1)
				local function __FUNC_33C93_(arg0, arg1)
					local function __FUNC_33E0B_(arg0, arg1)
						local function __FUNC_33F83_(arg0, arg1)
							local function __FUNC_340D8_(arg0, arg1)
								local function __FUNC_34253_(arg0, arg1)
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
									__FUNC_34253_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34253_)
							end

							if arg1.interrupted then
								__FUNC_340D8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_340D8_)
						end

						if arg1.interrupted then
							__FUNC_33F83_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33F83_)
					end

					if arg1.interrupted then
						__FUNC_33E0B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33E0B_)
				end

				if arg1.interrupted then
					__FUNC_33C93_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33C93_)
			end

			if arg1.interrupted then
				__FUNC_33B18_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33B18_)
		end

		registerVal19:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_339C1_(registerVal19, {})
		local function __FUNC_34405_(arg0, arg1)
			local function __FUNC_3455C_(arg0, arg1)
				local function __FUNC_346D7_(arg0, arg1)
					local function __FUNC_3482C_(arg0, arg1)
						local function __FUNC_349A7_(arg0, arg1)
							local function __FUNC_34AFC_(arg0, arg1)
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
								__FUNC_34AFC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34AFC_)
						end

						if arg1.interrupted then
							__FUNC_349A7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_349A7_)
					end

					if arg1.interrupted then
						__FUNC_3482C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3482C_)
				end

				if arg1.interrupted then
					__FUNC_346D7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_346D7_)
			end

			if arg1.interrupted then
				__FUNC_3455C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3455C_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_34405_(registerVal20, {})
		local function __FUNC_34CB1_(arg0, arg1)
			local function __FUNC_34E08_(arg0, arg1)
				local function __FUNC_34F83_(arg0, arg1)
					local function __FUNC_350D8_(arg0, arg1)
						local function __FUNC_35253_(arg0, arg1)
							local function __FUNC_353A8_(arg0, arg1)
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
								__FUNC_353A8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_353A8_)
						end

						if arg1.interrupted then
							__FUNC_35253_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35253_)
					end

					if arg1.interrupted then
						__FUNC_350D8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_350D8_)
				end

				if arg1.interrupted then
					__FUNC_34F83_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34F83_)
			end

			if arg1.interrupted then
				__FUNC_34E08_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34E08_)
		end

		registerVal21:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_34CB1_(registerVal21, {})
		local function __FUNC_3555D_(arg0, arg1)
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

		registerVal23:completeAnimation()
		registerVal2.TokenRefundHint:setAlpha(0.000000)
		__FUNC_3555D_(registerVal23, {})
	end

	registerVal31.GainFocus = __FUNC_321BF_
	local function __FUNC_35711_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal15:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal23:completeAnimation()
		registerVal2.TokenRefundHint:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal23, {})
	end

	registerVal31.Focus = __FUNC_35711_
	local function __FUNC_35AF4_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_35E33_(arg0, arg1)
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

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_35E33_(registerVal4, {})
		local function __FUNC_35FE5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		__FUNC_35FE5_(registerVal7, {})
		local function __FUNC_36199_(arg0, arg1)
			local function __FUNC_36313_(arg0, arg1)
				local function __FUNC_3648B_(arg0, arg1)
					local function __FUNC_36603_(arg0, arg1)
						local function __FUNC_36758_(arg0, arg1)
							local function __FUNC_368D3_(arg0, arg1)
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
								__FUNC_368D3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_368D3_)
						end

						if arg1.interrupted then
							__FUNC_36758_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36758_)
					end

					if arg1.interrupted then
						__FUNC_36603_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36603_)
				end

				if arg1.interrupted then
					__FUNC_3648B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3648B_)
			end

			if arg1.interrupted then
				__FUNC_36313_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36313_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_36199_(registerVal17, {})
		local function __FUNC_36A85_(arg0, arg1)
			local function __FUNC_36BFF_(arg0, arg1)
				local function __FUNC_36D77_(arg0, arg1)
					local function __FUNC_36EEF_(arg0, arg1)
						local function __FUNC_37044_(arg0, arg1)
							local function __FUNC_371BF_(arg0, arg1)
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
								__FUNC_371BF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_371BF_)
						end

						if arg1.interrupted then
							__FUNC_37044_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37044_)
					end

					if arg1.interrupted then
						__FUNC_36EEF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36EEF_)
				end

				if arg1.interrupted then
					__FUNC_36D77_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36D77_)
			end

			if arg1.interrupted then
				__FUNC_36BFF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36BFF_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_36A85_(registerVal18, {})
		local function __FUNC_37371_(arg0, arg1)
			local function __FUNC_374C8_(arg0, arg1)
				local function __FUNC_37643_(arg0, arg1)
					local function __FUNC_377BB_(arg0, arg1)
						local function __FUNC_37933_(arg0, arg1)
							local function __FUNC_37A88_(arg0, arg1)
								local function __FUNC_37C03_(arg0, arg1)
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
									__FUNC_37C03_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37C03_)
							end

							if arg1.interrupted then
								__FUNC_37A88_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37A88_)
						end

						if arg1.interrupted then
							__FUNC_37933_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37933_)
					end

					if arg1.interrupted then
						__FUNC_377BB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_377BB_)
				end

				if arg1.interrupted then
					__FUNC_37643_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37643_)
			end

			if arg1.interrupted then
				__FUNC_374C8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_374C8_)
		end

		registerVal19:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_37371_(registerVal19, {})
		local function __FUNC_37DB5_(arg0, arg1)
			local function __FUNC_37F0C_(arg0, arg1)
				local function __FUNC_38087_(arg0, arg1)
					local function __FUNC_381DC_(arg0, arg1)
						local function __FUNC_38357_(arg0, arg1)
							local function __FUNC_384AC_(arg0, arg1)
								local function __FUNC_38627_(arg0, arg1)
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
									__FUNC_38627_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38627_)
							end

							if arg1.interrupted then
								__FUNC_384AC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_384AC_)
						end

						if arg1.interrupted then
							__FUNC_38357_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38357_)
					end

					if arg1.interrupted then
						__FUNC_381DC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_381DC_)
				end

				if arg1.interrupted then
					__FUNC_38087_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38087_)
			end

			if arg1.interrupted then
				__FUNC_37F0C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37F0C_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_37DB5_(registerVal20, {})
		local function __FUNC_387D9_(arg0, arg1)
			local function __FUNC_38930_(arg0, arg1)
				local function __FUNC_38AAB_(arg0, arg1)
					local function __FUNC_38C00_(arg0, arg1)
						local function __FUNC_38D7B_(arg0, arg1)
							local function __FUNC_38ED0_(arg0, arg1)
								local function __FUNC_3904B_(arg0, arg1)
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
									__FUNC_3904B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3904B_)
							end

							if arg1.interrupted then
								__FUNC_38ED0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38ED0_)
						end

						if arg1.interrupted then
							__FUNC_38D7B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38D7B_)
					end

					if arg1.interrupted then
						__FUNC_38C00_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38C00_)
				end

				if arg1.interrupted then
					__FUNC_38AAB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38AAB_)
			end

			if arg1.interrupted then
				__FUNC_38930_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38930_)
		end

		registerVal21:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_387D9_(registerVal21, {})
		local function __FUNC_391FD_(arg0, arg1)
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

		registerVal23:completeAnimation()
		registerVal2.TokenRefundHint:setAlpha(1.000000)
		__FUNC_391FD_(registerVal23, {})
	end

	registerVal31.LoseFocus = __FUNC_35AF4_
	registerVal30.PermanentUnlockRefund = registerVal31
	registerVal2.clipsPerState = registerVal30
	local registerVal32 = {}
	local registerVal33 = {}
	registerVal33.stateName = "BMClassified"
	local function __FUNC_393B1_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isBMClassified")
	end

	registerVal33.condition = __FUNC_393B1_
	local registerVal34 = {}
	registerVal34.stateName = "ContractClassified"
	local function __FUNC_3942A_(arg0, arg2, arg3)
		return IsCACItemContractLocked(arg2, arg1)
	end

	registerVal34.condition = __FUNC_3942A_
	local registerVal35 = {}
	registerVal35.stateName = "Equipped"
	local function __FUNC_39489_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemEquipped(arg0, arg2, arg1)
		if registerVal3 then
			registerVal3 = IsInPermanentUnlockMenu(arg1)
		end
		return (not registerVal3)
	end

	registerVal35.condition = __FUNC_39489_
	local registerVal36 = {}
	registerVal36.stateName = "New"
	local function __FUNC_39520_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemNew(arg2, arg1)
		if registerVal3 then
			registerVal3 = IsInPermanentUnlockMenu(arg1)
		end
		return (not registerVal3)
	end

	registerVal36.condition = __FUNC_39520_
	local registerVal37 = {}
	registerVal37.stateName = "Locked"
	local function __FUNC_395AF_(arg0, arg2, arg3)
		return IsCACItemLockedForBeta(arg0, arg2, arg1)
	end

	registerVal37.condition = __FUNC_395AF_
	local registerVal38 = {}
	registerVal38.stateName = "NotAvailable"
	local function __FUNC_39610_(arg0, arg2, arg3)
		local registerVal3 = IsItemBlackMarketWeapon(arg2, arg1)
		if not registerVal3 then
			registerVal3 = IsCACItemPurchased(arg2, arg1)
		else
		end
		return true
	end

	registerVal38.condition = __FUNC_39610_
	local registerVal39 = {}
	registerVal39.stateName = "MutuallyExclusive"
	local function __FUNC_396B5_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemMutuallyExclusiveWithSelection(arg2, arg1)
		if registerVal3 then
			registerVal3 = IsInPermanentUnlockMenu(arg1)
		end
		return (not registerVal3)
	end

	registerVal39.condition = __FUNC_396B5_
	local registerVal40 = {}
	registerVal40.stateName = "PermanentUnlockRefund"
	local function __FUNC_3975E_(arg0, arg2, arg3)
		local registerVal3 = IsInPermanentUnlockMenu(arg1)
		if registerVal3 then
			registerVal3 = IsPermanentlyUnlocked(arg2, arg1)
			if not registerVal3 then
				registerVal3 = HavePermanentUnlockTokens(arg1)
				if registerVal3 then
					registerVal3 = IsCACItemPurchased(arg2, arg1)
				else
				end
			end
		end
		return true
	end

	registerVal40.condition = __FUNC_3975E_
	registerVal32 = {registerVal33, registerVal34, registerVal35, registerVal36, registerVal37, registerVal38, registerVal39, registerVal40}
	registerVal2:mergeStateConditions(registerVal32)
	local function __FUNC_39867_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isBMClassified", true, __FUNC_39867_)
	local function __FUNC_39988_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "ref"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "ref", true, __FUNC_39988_)
	local function __FUNC_39AA1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_39AA1_)
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal27.id = "BMContractsLockBars"
	registerVal28.id = "BMContractsLockBars0"
	local function __FUNC_39BBF_(arg0, arg1)
		local registerVal2 = arg0.BMContractsLockBars:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_39BBF_)
	local function __FUNC_39CCB_(arg0)
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.BoxButtonLrgInactive:close()
		arg0.BoxButtonLrgIdle:close()
		arg0.LabelButtonCount:close()
		arg0.tokenPermanentUnlock:close()
		arg0.tokenUnlock:close()
		arg0.LabelButton:close()
		arg0.lockedIcon:close()
		arg0.IconNew:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.FocusBorder:close()
		arg0.RestrictedItemWarning:close()
		arg0.TokenRefundHint:close()
		arg0.BMGoldBarMed:close()
		arg0.BMContractsLockBars:close()
		arg0.BMContractsLockBars0:close()
		arg0.itemImageSolid:close()
		arg0.itemImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_39CCB_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

