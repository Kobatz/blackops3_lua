-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Promo.Promo_ThermometerAndRewards_Idol")
require("ui.uieditor.widgets.Promo.Promo_UnlockableReward")
require("ui.uieditor.widgets.Promo.Promo_UnlockableRewardLargeLock")
require("ui.uieditor.widgets.Promo.Promo_ThermometerAndRewards_EdgeMarker")
require("ui.uieditor.widgets.Promo.Promo_PlusOneText")
require("ui.uieditor.widgets.Promo.Promo_ThermometerAndRewards_Complete")
require("ui.uieditor.widgets.BlackMarket.BM_TopNavBtn")
require("ui.uieditor.widgets.CAC.cac_PurchasingExtraSlots")
local function __FUNC_43A_(arg0, arg1, arg2)
	arg0:setForceMouseEventDispatch(true)
	local registerVal4 = {}
	registerVal4 = {arg0.RewardWidget0, arg0.RewardWidget1, arg0.RewardWidget2, arg0.RewardWidget3}
	local registerVal5 = {}
	registerVal5 = {arg0.RedeemBtn0, arg0.RedeemBtn1, arg0.RedeemBtn2, arg0.RedeemBtn3}
	local registerVal6 = {}
	registerVal6 = {CoD.BlackMarketUtility.mar2018_challenge_sentinel_tier1, CoD.BlackMarketUtility.mar2018_challenge_sentinel_tier2, CoD.BlackMarketUtility.mar2018_challenge_sentinel_tier3, CoD.BlackMarketUtility.mar2018_challenge_sentinel_tier4}
	MakeNotFocusable(arg0.RedeemBtn0)
	MakeNotFocusable(arg0.RedeemBtn1)
	MakeNotFocusable(arg0.RedeemBtn2)
	MakeNotFocusable(arg0.RedeemBtn3)
	local registerVal8, registerVal9, registerVal10 = ipairs(registerVal4)
	local function __FUNC_E85_(arg0, arg1)
		if arg0.currentState == "Complete" and false then
			Engine.PlaySound("uin_thm_fill")
		end
		LUI.UIElement.clipOver(arg0, arg1)
	end

	:registerEventHandler("clip_over", __FUNC_E85_)
	if  and  <= #CoD.BlackMarketUtility.PromoRewardCompletionValues then
		local registerVal16 = {}
		registerVal16.rewardWidget = 
		registerVal16.nearCompleteValue = CoD.BlackMarketUtility.PromoRewardCompletionValues[].nearCompleteValue
		registerVal16.completeValue = CoD.BlackMarketUtility.PromoRewardCompletionValues[].completeValue
		registerVal16.rewardWidgetIndex = 
		table.insert({}, registerVal16)
	end
	CoD.RewardRedeemBtnInfoList = {}
	registerVal8, registerVal9, registerVal10 = ipairs(registerVal5)
	for index11,value12 in registerVal8, registerVal9, registerVal10 do
		local registerVal15 = {}
		registerVal15.redeemBtn = value12
		registerVal15.isFocus = false
		table.insert(CoD.RewardRedeemBtnInfoList, registerVal15)
	end
	local function __FUNC_FAB_(arg0)
		local registerVal1, registerVal2, registerVal3 = pairs({})
		for index4,value5 in registerVal1, registerVal2, registerVal3 do
			if value5.rewardWidget then
				if value5.completeValue <= arg0 then
					Engine.PlaySound("uin_thm_goal_reached")
					local registerVal8 = Engine.GetInventoryItemQuantity(arg1, registerVal6[value5.rewardWidgetIndex])
					if value5.rewardWidget.currentState ~= "Complete" and registerVal8 == 0.000000 and value5.rewardWidgetIndex ~= 1.000000 and CoD.RewardRedeemBtnInfoList[value5.rewardWidgetIndex] then
						CoD.RewardRedeemBtnInfoList[value5.rewardWidgetIndex].redeemBtn:makeFocusableWithoutResettingNavigation()
						CoD.RewardRedeemBtnInfoList[value5.rewardWidgetIndex].redeemBtn:setAlpha(1.000000)
					end
					value5.rewardWidget:setState("Complete")
				else
					if value5.nearCompleteValue <= arg0 then
						value5.rewardWidget:setState("NearComplete")
					else
						value5.rewardWidget:setState("Locked")
					end
				end
			end
		end
	end

	registerVal9 = Engine.StorageGetBuffer(arg1, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	if registerVal9 and registerVal9.lastSeenThermometerValue then
		local registerVal13 = registerVal9.lastSeenThermometerValue:get()
		local registerVal12 = math.min(registerVal13, 1.000000)
		local registerVal11 = math.max(registerVal12, 0.000000)
		registerVal9.lastSeenThermometerValue:set(CoD.GetThermometerProgress())
	end
	registerVal11, registerVal12, registerVal13, registerVal14 = arg0.ThermometerAnimation:getLocalTopBottom()
	registerVal16, registerVal17, registerVal18, registerVal19 = arg0.PromoThermometerAndRewardsEdgeMarker:getLocalTopBottom()
	local registerVal20, registerVal21, registerVal22, registerVal23 = arg0.PromoPlusOneText:getLocalTopBottom()
	local registerVal24, registerVal25, registerVal26, registerVal27 = arg0.PromoThermometerAndRewardsIdol:getLocalTopBottom()
	local function __FUNC_12F7_(arg1)
		if false then
			return 
		end
		local registerVal2 = CoD.GetThermometerProgress()
		if not registerVal2 then
		end
		local registerVal1 = math.min(0.000000, (0.000000 + arg1))
		arg0.ThermometerAnimation:setShaderVector(2.000000, (1.000000 - registerVal1), 1.000000, 0.000000, 0.000000)
		arg0.PromoThermometerAndRewardsEdgeMarker:setTopBottom(registerVal11, registerVal12, (registerVal14 - ((registerVal14 - registerVal13) * registerVal1)), ((registerVal14 - ((registerVal14 - registerVal13) * registerVal1)) + (registerVal19 - registerVal18)))
		arg0.PromoThermometerAndRewardsIdol:setTopBottom(registerVal11, registerVal12, (registerVal14 - ((registerVal14 - registerVal13) * registerVal1)), registerVal27)
		__FUNC_FAB_(registerVal1)
		if CoD.BlackMarketUtility.PromoRewardCompletionValues[#CoD.BlackMarketUtility.PromoRewardCompletionValues].completeValue <= registerVal1 then
			arg0.ThermometerComplete:setState("Completed")
			arg0.PromoThermometerAndRewardsIdol:setState("StopAnimations")
		end
	end

	__FUNC_12F7_(0.000000)
	Engine.PlaySound("uin_thm_fill")
	if arg2.id ~= "Menu.MPAAR" then
	end
	local function __FUNC_1658_(arg1)
		arg0:setState("Animating")
		local registerVal2 = CoD.GetThermometerProgress()
		if not registerVal2 then
		end
		if 0.000000 <= 0.000000 then
			if arg0.thermometerAnimTimer then
				arg0.thermometerAnimTimer:close()
				arg0.thermometerAnimTimer = nil
				arg0:setState("DefaultState")
				CoD.TurnOnRedeemBtnFocus()
			end
			arg0.PromoThermometerAndRewardsEdgeMarker:playClip("LoopAfterIntro")
			arg0.PromoPlusOneText:setTopBottom(registerVal11, registerVal12, (registerVal14 - ((registerVal14 - registerVal13) * 0.000000)), ((registerVal14 - ((registerVal14 - registerVal13) * 0.000000)) + (registerVal23 - registerVal22)))
			Engine.StopSound("uin_thm_fill")
			registerVal2 = CoD.GetThermometerProgress()
			if 1.000000 <= registerVal2 then
				Engine.PlaySound("uin_thm_meter_full")
			else
				if true then
					arg0.PromoPlusOneText:playClip("PlayAfterIntro")
				end
				Engine.PlaySound("uin_thm_pulse")
			end
			return 
		end
		__FUNC_12F7_((0.400000 / 60.000000))
	end

	local registerVal32 = LUI.UITimer.newElementTimer(16.000000, false, __FUNC_1658_)
	arg0.thermometerAnimTimer = registerVal32
	arg0:addElement(arg0.thermometerAnimTimer)
	local function __FUNC_1A03_(arg0)
		if arg0.thermometerAnimTimer then
			arg0.thermometerAnimTimer:close()
			arg0.thermometerAnimTimer = nil
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "close", __FUNC_1A03_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.Promo_ZMHD_ThermometerAndRewards = registerVal2
local function __FUNC_1A86_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Promo_ZMHD_ThermometerAndRewards)
	registerVal2.id = "Promo_ZMHD_ThermometerAndRewards"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 348.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 438.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Promo_ThermometerAndRewards_Idol.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, -130.750000, 111.760000)
	registerVal3:setTopBottom(true, false, -60.670000, 533.600000)
	registerVal2:addElement(registerVal3)
	registerVal2.PromoThermometerAndRewardsIdol = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -11.990000, 553.670000)
	registerVal4:setTopBottom(true, false, -60.670000, 142.190000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_glowlarge"))
	registerVal2:addElement(registerVal4)
	registerVal2.LargeGlow = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -31.470000, 6.480000)
	registerVal5:setTopBottom(true, false, 357.000000, 422.940000)
	registerVal5:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_lineglow"))
	registerVal2:addElement(registerVal5)
	registerVal2.Glow = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -115.370000, 96.380000)
	registerVal6:setTopBottom(true, false, -60.670000, 504.000000)
	registerVal6:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_mainbar"))
	registerVal2:addElement(registerVal6)
	registerVal2.ThermometerBacking = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, -39.430000, 14.450000)
	registerVal7:setTopBottom(true, false, -2.000000, 384.640000)
	registerVal7:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_fillbar"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
	registerVal7:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.ThermometerAnimation = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, -95.370000, 71.380000)
	registerVal8:setTopBottom(true, false, 373.100000, 506.500000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_community_bgb_chip"))
	registerVal2:addElement(registerVal8)
	registerVal2.Chip = registerVal8
	local registerVal9 = CoD.Promo_UnlockableReward.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 106.130000, 406.130000)
	registerVal9:setTopBottom(true, false, 301.000000, 376.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setScale(1.450000)
	registerVal9.PromoRewardImage.Image:setImage(RegisterImage("uie_t7_menu_community_bgb_tier01"))
	registerVal9.Lock:setImage(RegisterImage("uie_t7_menu_community_bgb_locked"))
	registerVal9.TextBox0:setText(Engine.Localize("MPUI_RARE_SUPPLY_DROP_BUNDLE"))
	registerVal2:addElement(registerVal9)
	registerVal2.RewardWidget0Off = registerVal9
	local registerVal10 = CoD.Promo_UnlockableRewardLargeLock.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 106.130000, 406.130000)
	registerVal10:setTopBottom(true, false, 301.000000, 376.000000)
	registerVal10:setScale(1.450000)
	registerVal10.PromoRewardImage.Image:setImage(RegisterImage("uie_t7_menu_community_bgb_tier01"))
	registerVal10.TextBox0:setText(Engine.Localize("CONTRACT_BGB_CC_TIER1"))
	registerVal2:addElement(registerVal10)
	registerVal2.RewardWidget0 = registerVal10
	local registerVal11 = CoD.Promo_UnlockableReward.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 106.130000, 406.130000)
	registerVal11:setTopBottom(true, false, 202.690000, 277.690000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setScale(1.450000)
	registerVal11.PromoRewardImage.Image:setImage(RegisterImage("uie_t7_menu_community_bgb_tier02"))
	registerVal11.Lock:setImage(RegisterImage("uie_t7_menu_community_bgb_locked"))
	registerVal11.TextBox0:setText(Engine.Localize("MPUI_RARE_SUPPLY_DROP_BUNDLE"))
	registerVal2:addElement(registerVal11)
	registerVal2.RewardWidget1Off = registerVal11
	local registerVal12 = CoD.Promo_UnlockableRewardLargeLock.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 106.130000, 406.130000)
	registerVal12:setTopBottom(true, false, 202.690000, 277.690000)
	registerVal12:setScale(1.450000)
	registerVal12.PromoRewardImage.Image:setImage(RegisterImage("uie_t7_menu_community_bgb_tier02"))
	registerVal12.TextBox0:setText(Engine.Localize("CONTRACT_BGB_CC_TIER2"))
	registerVal2:addElement(registerVal12)
	registerVal2.RewardWidget1 = registerVal12
	local registerVal13 = CoD.Promo_UnlockableReward.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 106.130000, 406.130000)
	registerVal13:setTopBottom(true, false, 104.690000, 179.690000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setScale(1.450000)
	registerVal13.PromoRewardImage.Image:setImage(RegisterImage("uie_t7_menu_community_bgb_tier03"))
	registerVal13.TextBox0:setText(Engine.Localize("MPUI_BM_BRIBE_MELEE_WEAPON"))
	registerVal2:addElement(registerVal13)
	registerVal2.RewardWidget2Off = registerVal13
	local registerVal14 = CoD.Promo_UnlockableRewardLargeLock.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 106.130000, 406.130000)
	registerVal14:setTopBottom(true, false, 104.690000, 179.690000)
	registerVal14:setScale(1.450000)
	registerVal14.PromoRewardImage.Image:setImage(RegisterImage("uie_t7_menu_community_bgb_tier03"))
	registerVal14.TextBox0:setText(Engine.Localize("CONTRACT_BGB_CC_TIER3"))
	registerVal2:addElement(registerVal14)
	registerVal2.RewardWidget2 = registerVal14
	local registerVal15 = CoD.Promo_UnlockableReward.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 106.130000, 406.130000)
	registerVal15:setTopBottom(true, false, 6.690000, 81.690000)
	registerVal15:setScale(1.450000)
	registerVal15.PromoRewardImage.Image:setImage(RegisterImage("uie_t7_menu_community_bgb_tier04"))
	registerVal15.TextBox0:setText(Engine.Localize("CONTRACT_BGB_CC_TIER4"))
	registerVal2:addElement(registerVal15)
	registerVal2.RewardWidget3 = registerVal15
	local registerVal16 = CoD.Promo_UnlockableRewardLargeLock.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, 106.130000, 406.130000)
	registerVal16:setTopBottom(true, false, 6.690000, 81.690000)
	registerVal16:setAlpha(0.000000)
	registerVal16:setScale(1.450000)
	registerVal16.PromoRewardImage.Image:setImage(RegisterImage("uie_t7_menu_community_bgb_tier04"))
	registerVal16.TextBox0:setText(Engine.Localize("CONTRACT_BGB_CC_TIER4"))
	registerVal2:addElement(registerVal16)
	registerVal2.RewardWidget3Off = registerVal16
	local registerVal17 = CoD.Promo_ThermometerAndRewards_EdgeMarker.new(arg0, arg1)
	registerVal17:setLeftRight(true, false, -61.810000, 39.820000)
	registerVal17:setTopBottom(true, false, -15.750000, 34.250000)
	registerVal2:addElement(registerVal17)
	registerVal2.PromoThermometerAndRewardsEdgeMarker = registerVal17
	local registerVal18 = CoD.Promo_PlusOneText.new(arg0, arg1)
	registerVal18:setLeftRight(true, false, -21.490000, -3.490000)
	registerVal18:setTopBottom(true, false, -40.750000, -15.750000)
	registerVal2:addElement(registerVal18)
	registerVal2.PromoPlusOneText = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(true, false, -55.490000, 29.600000)
	registerVal19:setTopBottom(true, false, 360.640000, 391.360000)
	registerVal19:setAlpha(0.350000)
	registerVal19:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_glowpulse4"))
	registerVal19:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal19)
	registerVal2.GlowDots = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(true, false, -55.490000, 32.510000)
	registerVal20:setTopBottom(true, false, 283.320000, 299.320000)
	registerVal20:setAlpha(0.350000)
	registerVal20:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_glowpulse5"))
	registerVal20:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal20)
	registerVal2.GlowDots2 = registerVal20
	local registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(true, false, -55.490000, 32.510000)
	registerVal21:setTopBottom(true, false, 186.320000, 202.320000)
	registerVal21:setAlpha(0.350000)
	registerVal21:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_glowpulse5"))
	registerVal21:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal21)
	registerVal2.GlowDots3 = registerVal21
	local registerVal22 = LUI.UIImage.new()
	registerVal22:setLeftRight(true, false, -55.490000, 32.510000)
	registerVal22:setTopBottom(true, false, 88.320000, 104.320000)
	registerVal22:setAlpha(0.350000)
	registerVal22:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_glowpulse5"))
	registerVal22:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal22)
	registerVal2.GlowDots4 = registerVal22
	local registerVal23 = LUI.UIImage.new()
	registerVal23:setLeftRight(true, false, -55.490000, 32.510000)
	registerVal23:setTopBottom(true, false, -8.680000, 6.690000)
	registerVal23:setAlpha(0.350000)
	registerVal23:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_glowpulse5"))
	registerVal23:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal23)
	registerVal2.GlowDots5 = registerVal23
	local registerVal24 = CoD.Promo_ThermometerAndRewards_Complete.new(arg0, arg1)
	registerVal24:setLeftRight(true, false, -130.990000, 112.010000)
	registerVal24:setTopBottom(true, false, -60.670000, 533.330000)
	registerVal2:addElement(registerVal24)
	registerVal2.ThermometerComplete = registerVal24
	local registerVal25 = CoD.BM_TopNavBtn.new(arg0, arg1)
	registerVal25:setLeftRight(true, false, -146.470000, -31.470000)
	registerVal25:setTopBottom(true, false, 318.000000, 359.000000)
	registerVal25:setAlpha(0.000000)
	registerVal25.btnDisplayTextStroke0:setText(Engine.Localize("CONTRACT_COMMUNITY_CONTRACT_CLAIM_REWARD"))
	registerVal25.btnDisplayTextStroke:setText(Engine.Localize("CONTRACT_COMMUNITY_CONTRACT_CLAIM_REWARD"))
	local function __FUNC_3D99_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal25:registerEventHandler("gain_focus", __FUNC_3D99_)
	local function __FUNC_3F2B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal25:registerEventHandler("lose_focus", __FUNC_3F2B_)
	local function __FUNC_3FFA_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfInState(registerVal2, "DefaultState")
		if registerVal4 then
			RedeemRewardAction(registerVal2, arg2, arg1, "1")
			return true
		end
	end

	local function __FUNC_40B0_(arg0, arg1, arg2)
		local registerVal3 = IsSelfInState(registerVal2, "DefaultState")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal25, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_3FFA_, __FUNC_40B0_, false)
	registerVal2:addElement(registerVal25)
	registerVal2.RedeemBtn0 = registerVal25
	local registerVal26 = CoD.BM_TopNavBtn.new(arg0, arg1)
	registerVal26:setLeftRight(true, false, -146.470000, -31.470000)
	registerVal26:setTopBottom(true, false, 219.690000, 260.690000)
	registerVal26:setAlpha(0.000000)
	registerVal26.btnDisplayTextStroke0:setText(Engine.Localize("CONTRACT_COMMUNITY_CONTRACT_CLAIM_REWARD"))
	registerVal26.btnDisplayTextStroke:setText(Engine.Localize("CONTRACT_COMMUNITY_CONTRACT_CLAIM_REWARD"))
	local function __FUNC_41FB_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal26:registerEventHandler("gain_focus", __FUNC_41FB_)
	local function __FUNC_438B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal26:registerEventHandler("lose_focus", __FUNC_438B_)
	local function __FUNC_445A_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfInState(registerVal2, "DefaultState")
		if registerVal4 then
			RedeemRewardAction(registerVal2, arg2, arg1, "2")
			return true
		end
	end

	local function __FUNC_4510_(arg0, arg1, arg2)
		local registerVal3 = IsSelfInState(registerVal2, "DefaultState")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal26, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_445A_, __FUNC_4510_, false)
	registerVal2:addElement(registerVal26)
	registerVal2.RedeemBtn1 = registerVal26
	local registerVal27 = CoD.BM_TopNavBtn.new(arg0, arg1)
	registerVal27:setLeftRight(true, false, -146.470000, -31.470000)
	registerVal27:setTopBottom(true, false, 121.690000, 162.690000)
	registerVal27:setAlpha(0.000000)
	registerVal27.btnDisplayTextStroke0:setText(Engine.Localize("CONTRACT_COMMUNITY_CONTRACT_CLAIM_REWARD"))
	registerVal27.btnDisplayTextStroke:setText(Engine.Localize("CONTRACT_COMMUNITY_CONTRACT_CLAIM_REWARD"))
	local function __FUNC_465B_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal27:registerEventHandler("gain_focus", __FUNC_465B_)
	local function __FUNC_47EB_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal27:registerEventHandler("lose_focus", __FUNC_47EB_)
	local function __FUNC_48BA_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfInState(registerVal2, "DefaultState")
		if registerVal4 then
			RedeemRewardAction(registerVal2, arg2, arg1, "3")
			return true
		end
	end

	local function __FUNC_4970_(arg0, arg1, arg2)
		local registerVal3 = IsSelfInState(registerVal2, "DefaultState")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal27, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_48BA_, __FUNC_4970_, false)
	registerVal2:addElement(registerVal27)
	registerVal2.RedeemBtn2 = registerVal27
	local registerVal28 = CoD.BM_TopNavBtn.new(arg0, arg1)
	registerVal28:setLeftRight(true, false, -146.470000, -31.470000)
	registerVal28:setTopBottom(true, false, 23.690000, 64.690000)
	registerVal28:setAlpha(0.000000)
	registerVal28.btnDisplayTextStroke0:setText(Engine.Localize("CONTRACT_COMMUNITY_CONTRACT_CLAIM_REWARD"))
	registerVal28.btnDisplayTextStroke:setText(Engine.Localize("CONTRACT_COMMUNITY_CONTRACT_CLAIM_REWARD"))
	local function __FUNC_4ABB_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal28:registerEventHandler("gain_focus", __FUNC_4ABB_)
	local function __FUNC_4C4B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal28:registerEventHandler("lose_focus", __FUNC_4C4B_)
	local function __FUNC_4D1A_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfInState(registerVal2, "DefaultState")
		if registerVal4 then
			RedeemRewardAction(registerVal2, arg2, arg1, "4")
			return true
		end
	end

	local function __FUNC_4DD0_(arg0, arg1, arg2)
		local registerVal3 = IsSelfInState(registerVal2, "DefaultState")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal28, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_4D1A_, __FUNC_4DD0_, false)
	registerVal2:addElement(registerVal28)
	registerVal2.RedeemBtn3 = registerVal28
	local registerVal29 = CoD.cac_PurchasingExtraSlots.new(arg0, arg1)
	registerVal29:setLeftRight(true, false, -345.430000, -39.430000)
	registerVal29:setTopBottom(true, false, 146.320000, 242.320000)
	registerVal29.PurchasingText:setText(Engine.Localize("MENU_PROCESSING_PURCHASE"))
	registerVal2:addElement(registerVal29)
	registerVal2.ProcessingWidget = registerVal29
	local registerVal30 = {}
	registerVal30.up = registerVal26
	registerVal25.navigation = registerVal30
	registerVal30 = {}
	registerVal30.up = registerVal27
	registerVal30.down = registerVal25
	registerVal26.navigation = registerVal30
	registerVal30 = {}
	registerVal30.up = registerVal28
	registerVal30.down = registerVal26
	registerVal27.navigation = registerVal30
	registerVal30 = {}
	registerVal30.down = registerVal27
	registerVal28.navigation = registerVal30
	registerVal30 = {}
	local registerVal31 = {}
	local function __FUNC_4F1B_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.PromoThermometerAndRewardsIdol:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal29:completeAnimation()
		registerVal2.ProcessingWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal29, {})
	end

	registerVal31.DefaultClip = __FUNC_4F1B_
	registerVal30.DefaultState = registerVal31
	registerVal31 = {}
	local function __FUNC_5091_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal29:completeAnimation()
		registerVal2.ProcessingWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal29, {})
	end

	registerVal31.DefaultClip = __FUNC_5091_
	registerVal30.Purchasing = registerVal31
	registerVal31 = {}
	local function __FUNC_5193_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal29:completeAnimation()
		registerVal2.ProcessingWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal29, {})
	end

	registerVal31.DefaultClip = __FUNC_5193_
	registerVal30.Animating = registerVal31
	registerVal2.clipsPerState = registerVal30
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal25.id = "RedeemBtn0"
	registerVal26.id = "RedeemBtn1"
	registerVal27.id = "RedeemBtn2"
	registerVal28.id = "RedeemBtn3"
	local function __FUNC_5298_(arg0, arg1)
		local registerVal2 = arg0.RedeemBtn0:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_5298_)
	local function __FUNC_539E_(arg0)
		arg0.PromoThermometerAndRewardsIdol:close()
		arg0.RewardWidget0Off:close()
		arg0.RewardWidget0:close()
		arg0.RewardWidget1Off:close()
		arg0.RewardWidget1:close()
		arg0.RewardWidget2Off:close()
		arg0.RewardWidget2:close()
		arg0.RewardWidget3:close()
		arg0.RewardWidget3Off:close()
		arg0.PromoThermometerAndRewardsEdgeMarker:close()
		arg0.PromoPlusOneText:close()
		arg0.ThermometerComplete:close()
		arg0.RedeemBtn0:close()
		arg0.RedeemBtn1:close()
		arg0.RedeemBtn2:close()
		arg0.RedeemBtn3:close()
		arg0.ProcessingWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_539E_)
	if __FUNC_43A_ then
		__FUNC_43A_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.Promo_ZMHD_ThermometerAndRewards.new = __FUNC_1A86_
