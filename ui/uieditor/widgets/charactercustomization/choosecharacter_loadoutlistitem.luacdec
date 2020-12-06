-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CharacterCustomization.ChooseCharacter_LoadoutListItem_MouseHoverIcon")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_AbilityGlow")
require("ui.uieditor.widgets.Prestige.Prestige_PermanentUnlockTokenStatic")
require("ui.uieditor.widgets.CAC.cac_IconTokenStatic")
require("ui.uieditor.widgets.Competitive.Competitive_CharacterDraft_Drafted")
require("ui.uieditor.widgets.Prestige.Prestige_TokenRefundHintWidget")
local function __FUNC_3EC_(arg0, arg1)
	arg0:setHandleMouse(true)
	arg0.m_forceMouseEventDispatch = true
	arg0.disabledAllowNav = true
end

local function __FUNC_483_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_3EC_(arg0, arg1)
	end
	local function __FUNC_57E_(arg0, arg1, arg2, arg3)
		local registerVal4 = FirstTimeSetup_ChangedCharacter(arg2)
		if registerVal4 then
			FirstTimeSetup_SetComplete(arg2)
			return false
		end
	end

	arg2:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_RIGHT, nil, __FUNC_57E_)
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.ChooseCharacter_LoadoutListItem = registerVal3
local function __FUNC_61D_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChooseCharacter_LoadoutListItem)
	registerVal2.id = "ChooseCharacter_LoadoutListItem"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 90.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 90.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.ChooseCharacter_LoadoutListItem_MouseHoverIcon.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.MouseHoverIcon = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 6.510000, 83.490000)
	registerVal4:setTopBottom(true, false, 6.510000, 83.490000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_img_t7_hud_mp_weapon_hero_orangering"))
	registerVal2:addElement(registerVal4)
	registerVal2.OrangeGlow = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -11.990000, 101.990000)
	registerVal5:setTopBottom(true, false, -11.990000, 101.990000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_img_t7_hud_mp_weapon_hero_orangering"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.OrangeGlow0 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 10.000000, -10.000000)
	registerVal6:setTopBottom(true, true, 10.000000, -10.000000)
	registerVal6:setAlpha(0.000000)
	local function __FUNC_17FF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "gameImageOff", true, __FUNC_17FF_)
	registerVal2:addElement(registerVal6)
	registerVal2.itemOff = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal7:setZoom(-30.000000)
	local function __FUNC_18B0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "gameImageOn", true, __FUNC_18B0_)
	registerVal2:addElement(registerVal7)
	registerVal2.itemOn = registerVal7
	local registerVal8 = CoD.AmmoWidget_AbilityGlow.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, 4.000000, -4.000000)
	registerVal8:setTopBottom(true, true, 4.000000, -4.000000)
	registerVal8:setRGB(1.000000, 0.650000, 0.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setZoom(13.470000)
	registerVal8:setScale(1.200000)
	registerVal8:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.Glow0 = registerVal8
	local registerVal9 = CoD.Prestige_PermanentUnlockTokenStatic.new(arg0, arg1)
	registerVal9:setLeftRight(false, false, -16.000000, 16.000000)
	registerVal9:setTopBottom(false, false, -16.000000, 16.000000)
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Visible"
	local function __FUNC_1964_(arg0, arg2, arg3)
		local registerVal3 = IsInPermanentUnlockMenu(arg1)
		if registerVal3 then
			registerVal3 = IsPermanentlyUnlocked(arg2, arg1)
		end
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_1964_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal2:addElement(registerVal9)
	registerVal2.tokenPermanentUnlock = registerVal9
	local registerVal10 = CoD.cac_IconTokenStatic.new(arg0, arg1)
	registerVal10:setLeftRight(false, false, -16.000000, 16.000000)
	registerVal10:setTopBottom(false, false, -16.000000, 16.000000)
	registerVal10:setAlpha(0.000000)
	registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "Visible"
	local function __FUNC_19FC_(arg0, arg2, arg3)
		local registerVal3 = IsCampaign()
		if not registerVal3 then
			registerVal3 = IsInPermanentUnlockMenu(arg1)
		else
		end
		return true
	end

	registerVal14.condition = __FUNC_19FC_
	local registerVal15 = {}
	registerVal15.stateName = "VisibleCP"
	local function __FUNC_1A8D_(arg0, arg2, arg3)
		local registerVal3 = IsCampaign()
		if registerVal3 then
			registerVal3 = IsInPermanentUnlockMenu(arg1)
		end
		return (not registerVal3)
	end

	registerVal15.condition = __FUNC_1A8D_
	registerVal13 = {registerVal14, registerVal15}
	registerVal10:mergeStateConditions(registerVal13)
	registerVal14 = Engine.GetGlobalModel()
	registerVal13 = Engine.GetModel(registerVal14, "lobbyRoot.lobbyNav")
	local function __FUNC_1B11_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:subscribeToModel(registerVal13, __FUNC_1B11_)
	registerVal2:addElement(registerVal10)
	registerVal2.cacToken = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, false, -16.000000, 16.000000)
	registerVal11:setTopBottom(false, false, -16.000000, 16.000000)
	registerVal11:setAlpha(HideIfInPermanentUnlockMenu(0.000000))
	registerVal11:setImage(RegisterImage("uie_t7_hud_cac_lock_64"))
	registerVal2:addElement(registerVal11)
	registerVal2.lock = registerVal11
	registerVal12 = CoD.Competitive_CharacterDraft_Drafted.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 0.000000, 90.000000)
	registerVal12:setTopBottom(true, false, 0.000000, 90.000000)
	local function __FUNC_1C38_(arg0)
		registerVal12:setModel(arg0, arg1)
	end

	registerVal12:linkToElementModel(registerVal2, nil, false, __FUNC_1C38_)
	registerVal2:addElement(registerVal12)
	registerVal2.CompetitiveCharacterDraftDrafted = registerVal12
	registerVal13 = CoD.Prestige_TokenRefundHintWidget.new(arg0, arg1)
	registerVal13:setLeftRight(false, false, -94.000000, 94.000000)
	registerVal13:setTopBottom(true, false, -48.000000, -16.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13.textCenterAlign:setText(Engine.Localize("MENU_PRESTIGE_UNLOCK_TOKEN_REFUND"))
	local registerVal16 = {}
	local registerVal17 = {}
	registerVal17.stateName = "Below"
	local function __FUNC_1C8A_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal17.condition = __FUNC_1C8A_
	local registerVal18 = {}
	registerVal18.stateName = "Right"
	local function __FUNC_1CD5_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal18.condition = __FUNC_1CD5_
	local registerVal19 = {}
	registerVal19.stateName = "Left"
	local function __FUNC_1D21_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal19.condition = __FUNC_1D21_
	local registerVal20 = {}
	registerVal20.stateName = "Above"
	local function __FUNC_1D6D_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal20.condition = __FUNC_1D6D_
	registerVal16 = {registerVal17, registerVal18, registerVal19, registerVal20}
	registerVal13:mergeStateConditions(registerVal16)
	registerVal2:addElement(registerVal13)
	registerVal2.TokenRefundHint = registerVal13
	registerVal14 = {}
	registerVal15 = {}
	local function __FUNC_1DB8_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal4:completeAnimation()
		registerVal2.OrangeGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.OrangeGlow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.itemOff:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.itemOff:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.itemOff:setAlpha(1.000000)
		registerVal2.itemOff:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemOn:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.itemOn:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.itemOn:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Glow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.cacToken:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.lock:setAlpha(HideIfInPermanentUnlockMenu(0.000000))
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.CompetitiveCharacterDraftDrafted:setLeftRight(true, false, 0.000000, 90.000000)
		registerVal2.CompetitiveCharacterDraftDrafted:setTopBottom(true, false, 0.000000, 90.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.TokenRefundHint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_1DB8_
	local function __FUNC_2356_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal2.OrangeGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.itemOff:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.itemOff:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.itemOff:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_28FF_(arg0, arg1)
			local function __FUNC_2ADD_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 79.000000, true, false, CoD.TweenType.Back)
				end
				arg0:setLeftRight(true, true, -15.000000, 15.000000)
				arg0:setTopBottom(true, true, -15.000000, 15.000000)
				arg0:setAlpha(1.000000)
				arg0:setZoom(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2ADD_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, true, -20.470000, 20.470000)
			arg0:setTopBottom(true, true, -20.470000, 20.470000)
			arg0:setAlpha(1.370000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2ADD_)
		end

		registerVal7:completeAnimation()
		registerVal2.itemOn:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.itemOn:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.itemOn:setAlpha(0.000000)
		registerVal2.itemOn:setZoom(0.000000)
		__FUNC_28FF_(registerVal7, {})
		local function __FUNC_2D17_(arg0, arg1)
			local function __FUNC_2E8F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, true, 4.000000, -4.000000)
				arg0:setTopBottom(true, true, 4.000000, -4.000000)
				arg0:setAlpha(0.000000)
				arg0:setZoom(13.470000)
				arg0:setScale(1.700000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2E8F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E8F_)
		end

		registerVal8:completeAnimation()
		registerVal2.Glow0:setLeftRight(true, true, 4.000000, -4.000000)
		registerVal2.Glow0:setTopBottom(true, true, 4.000000, -4.000000)
		registerVal2.Glow0:setAlpha(0.130000)
		registerVal2.Glow0:setZoom(13.470000)
		registerVal2.Glow0:setScale(1.300000)
		__FUNC_2D17_(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.cacToken:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.lock:setAlpha(HideIfInPermanentUnlockMenu(0.000000))
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.CompetitiveCharacterDraftDrafted:setLeftRight(true, false, -17.330000, 107.330000)
		registerVal2.CompetitiveCharacterDraftDrafted:setTopBottom(true, false, -15.000000, 105.000000)
		registerVal2.CompetitiveCharacterDraftDrafted:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.TokenRefundHint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.Focus = __FUNC_2356_
	registerVal14.DefaultState = registerVal15
	registerVal15 = {}
	local function __FUNC_30EC_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal2.OrangeGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.OrangeGlow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.itemOff:setLeftRight(true, true, 10.000000, -10.000000)
		registerVal2.itemOff:setTopBottom(true, true, 10.000000, -10.000000)
		registerVal2.itemOff:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemOn:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Glow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.cacToken:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.lock:setAlpha(HideIfInPermanentUnlockMenu(1.000000))
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.TokenRefundHint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_30EC_
	local function __FUNC_3500_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_3AB8_(arg0, arg1)
			local function __FUNC_3C56_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 79.000000, true, false, CoD.TweenType.Back)
				end
				arg0:setLeftRight(true, false, -11.990000, 101.990000)
				arg0:setTopBottom(true, false, -11.990000, 101.990000)
				arg0:setAlpha(1.000000)
				arg0:setScale(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3C56_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.150000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C56_)
		end

		registerVal4:completeAnimation()
		registerVal2.OrangeGlow:setLeftRight(true, false, -11.990000, 101.990000)
		registerVal2.OrangeGlow:setTopBottom(true, false, -11.990000, 101.990000)
		registerVal2.OrangeGlow:setAlpha(0.000000)
		registerVal2.OrangeGlow:setScale(0.600000)
		__FUNC_3AB8_(registerVal4, {})
		local function __FUNC_3E8B_(arg0, arg1)
			local function __FUNC_4003_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 130.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, -11.990000, 101.990000)
				arg0:setTopBottom(true, false, -11.990000, 101.990000)
				arg0:setAlpha(0.250000)
				arg0:setScale(1.000000)
				arg0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4003_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.100000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4003_)
		end

		registerVal5:completeAnimation()
		registerVal2.OrangeGlow0:setLeftRight(true, false, -11.990000, 101.990000)
		registerVal2.OrangeGlow0:setTopBottom(true, false, -11.990000, 101.990000)
		registerVal2.OrangeGlow0:setAlpha(0.000000)
		registerVal2.OrangeGlow0:setScale(1.000000)
		registerVal2.OrangeGlow0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_3E8B_(registerVal5, {})
		local function __FUNC_42C8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 170.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, -15.000000, 15.000000)
			arg0:setTopBottom(true, true, -15.000000, 15.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.itemOff:setLeftRight(true, true, 10.000000, -10.000000)
		registerVal2.itemOff:setTopBottom(true, true, 10.000000, -10.000000)
		registerVal2.itemOff:setAlpha(1.000000)
		__FUNC_42C8_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemOn:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_44E1_(arg0, arg1)
			local function __FUNC_465B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				arg0:setScale(1.700000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_465B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_465B_)
		end

		registerVal8:completeAnimation()
		registerVal2.Glow0:setAlpha(0.000000)
		registerVal2.Glow0:setScale(1.300000)
		__FUNC_44E1_(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.cacToken:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.lock:setAlpha(HideIfInPermanentUnlockMenu(1.000000))
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.TokenRefundHint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.Focus = __FUNC_3500_
	registerVal14.Disabled = registerVal15
	registerVal15 = {}
	local function __FUNC_4830_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal2.OrangeGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.OrangeGlow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.itemOff:setLeftRight(true, true, 10.000000, -10.000000)
		registerVal2.itemOff:setTopBottom(true, true, 10.000000, -10.000000)
		registerVal2.itemOff:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemOn:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Glow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.cacToken:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.lock:setAlpha(HideIfInPermanentUnlockMenu(0.000000))
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.TokenRefundHint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_4830_
	local function __FUNC_4C44_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_51FC_(arg0, arg1)
			local function __FUNC_539A_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 79.000000, true, false, CoD.TweenType.Back)
				end
				arg0:setLeftRight(true, false, -11.990000, 101.990000)
				arg0:setTopBottom(true, false, -11.990000, 101.990000)
				arg0:setAlpha(1.000000)
				arg0:setScale(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_539A_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.150000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_539A_)
		end

		registerVal4:completeAnimation()
		registerVal2.OrangeGlow:setLeftRight(true, false, -11.990000, 101.990000)
		registerVal2.OrangeGlow:setTopBottom(true, false, -11.990000, 101.990000)
		registerVal2.OrangeGlow:setAlpha(0.000000)
		registerVal2.OrangeGlow:setScale(0.600000)
		__FUNC_51FC_(registerVal4, {})
		local function __FUNC_55CF_(arg0, arg1)
			local function __FUNC_5747_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 130.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, -11.990000, 101.990000)
				arg0:setTopBottom(true, false, -11.990000, 101.990000)
				arg0:setAlpha(0.250000)
				arg0:setScale(1.000000)
				arg0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_5747_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.100000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5747_)
		end

		registerVal5:completeAnimation()
		registerVal2.OrangeGlow0:setLeftRight(true, false, -11.990000, 101.990000)
		registerVal2.OrangeGlow0:setTopBottom(true, false, -11.990000, 101.990000)
		registerVal2.OrangeGlow0:setAlpha(0.000000)
		registerVal2.OrangeGlow0:setScale(1.000000)
		registerVal2.OrangeGlow0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_55CF_(registerVal5, {})
		local function __FUNC_5A0C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 170.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, -15.000000, 15.000000)
			arg0:setTopBottom(true, true, -15.000000, 15.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.itemOff:setLeftRight(true, true, 10.000000, -10.000000)
		registerVal2.itemOff:setTopBottom(true, true, 10.000000, -10.000000)
		registerVal2.itemOff:setAlpha(1.000000)
		__FUNC_5A0C_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemOn:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_5C25_(arg0, arg1)
			local function __FUNC_5D9F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				arg0:setScale(1.700000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_5D9F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5D9F_)
		end

		registerVal8:completeAnimation()
		registerVal2.Glow0:setAlpha(0.000000)
		registerVal2.Glow0:setScale(1.300000)
		__FUNC_5C25_(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.cacToken:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.lock:setAlpha(HideIfInPermanentUnlockMenu(0.000000))
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.TokenRefundHint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.Focus = __FUNC_4C44_
	registerVal14.NotAvailable = registerVal15
	registerVal15 = {}
	local function __FUNC_5F74_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal4:completeAnimation()
		registerVal2.OrangeGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.OrangeGlow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.itemOff:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.itemOff:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.itemOff:setAlpha(1.000000)
		registerVal2.itemOff:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemOn:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.itemOn:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.itemOn:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Glow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.cacToken:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.lock:setAlpha(HideIfInPermanentUnlockMenu(0.000000))
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.CompetitiveCharacterDraftDrafted:setLeftRight(true, false, 0.000000, 90.000000)
		registerVal2.CompetitiveCharacterDraftDrafted:setTopBottom(true, false, 0.000000, 90.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.TokenRefundHint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_5F74_
	local function __FUNC_6512_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal2.OrangeGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.itemOff:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.itemOff:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.itemOff:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_6AB7_(arg0, arg1)
			local function __FUNC_6C95_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 79.000000, true, false, CoD.TweenType.Back)
				end
				arg0:setLeftRight(true, true, -15.000000, 15.000000)
				arg0:setTopBottom(true, true, -15.000000, 15.000000)
				arg0:setAlpha(1.000000)
				arg0:setZoom(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_6C95_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, true, -20.470000, 20.470000)
			arg0:setTopBottom(true, true, -20.470000, 20.470000)
			arg0:setAlpha(1.370000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6C95_)
		end

		registerVal7:completeAnimation()
		registerVal2.itemOn:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.itemOn:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.itemOn:setAlpha(0.000000)
		registerVal2.itemOn:setZoom(0.000000)
		__FUNC_6AB7_(registerVal7, {})
		local function __FUNC_6ECF_(arg0, arg1)
			local function __FUNC_7047_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, true, 4.000000, -4.000000)
				arg0:setTopBottom(true, true, 4.000000, -4.000000)
				arg0:setAlpha(0.000000)
				arg0:setZoom(13.470000)
				arg0:setScale(1.700000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_7047_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7047_)
		end

		registerVal8:completeAnimation()
		registerVal2.Glow0:setLeftRight(true, true, 4.000000, -4.000000)
		registerVal2.Glow0:setTopBottom(true, true, 4.000000, -4.000000)
		registerVal2.Glow0:setAlpha(0.130000)
		registerVal2.Glow0:setZoom(13.470000)
		registerVal2.Glow0:setScale(1.300000)
		__FUNC_6ECF_(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.cacToken:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.lock:setAlpha(HideIfInPermanentUnlockMenu(0.000000))
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.CompetitiveCharacterDraftDrafted:setLeftRight(true, false, -17.330000, 107.330000)
		registerVal2.CompetitiveCharacterDraftDrafted:setTopBottom(true, false, -15.000000, 105.000000)
		registerVal2.CompetitiveCharacterDraftDrafted:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		local function __FUNC_72A4_(arg0, arg1)
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

		registerVal13:completeAnimation()
		registerVal2.TokenRefundHint:setAlpha(0.000000)
		__FUNC_72A4_(registerVal13, {})
	end

	registerVal15.Focus = __FUNC_6512_
	registerVal14.PermanentUnlockRefund = registerVal15
	registerVal2.clipsPerState = registerVal14
	registerVal16 = {}
	registerVal17 = {}
	registerVal17.stateName = "Disabled"
	local function __FUNC_7459_(arg0, arg2, arg3)
		return IsDisabled(arg2, arg1)
	end

	registerVal17.condition = __FUNC_7459_
	registerVal18 = {}
	registerVal18.stateName = "NotAvailable"
	local function __FUNC_74AC_(arg0, arg2, arg3)
		return IsHeroWeaponAbilityNotAvailable(arg2, arg1)
	end

	registerVal18.condition = __FUNC_74AC_
	registerVal19 = {}
	registerVal19.stateName = "PermanentUnlockRefund"
	local function __FUNC_7515_(arg0, arg2, arg3)
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

	registerVal19.condition = __FUNC_7515_
	registerVal16 = {registerVal17, registerVal18, registerVal19}
	registerVal2:mergeStateConditions(registerVal16)
	local function __FUNC_761F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabled", true, __FUNC_761F_)
	local function __FUNC_773A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_773A_)
	local function __FUNC_7857_(arg0)
		arg0.MouseHoverIcon:close()
		arg0.Glow0:close()
		arg0.tokenPermanentUnlock:close()
		arg0.cacToken:close()
		arg0.CompetitiveCharacterDraftDrafted:close()
		arg0.TokenRefundHint:close()
		arg0.itemOff:close()
		arg0.itemOn:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_7857_)
	if __FUNC_483_ then
		__FUNC_483_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ChooseCharacter_LoadoutListItem.new = __FUNC_61D_
