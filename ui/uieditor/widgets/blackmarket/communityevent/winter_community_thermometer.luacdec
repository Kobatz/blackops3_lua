-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Promo.Promo_ThermometerAndRewards_Idol")
require("ui.uieditor.widgets.Promo.Promo_UnlockableReward")
require("ui.uieditor.widgets.Promo.Promo_ThermometerAndRewards_EdgeMarker")
require("ui.uieditor.widgets.Promo.Promo_PlusOneText")
require("ui.uieditor.widgets.Promo.Promo_ThermometerAndRewards_Complete")
require("ui.uieditor.widgets.BlackMarket.BM_TopNavBtn")
require("ui.uieditor.widgets.CAC.cac_PurchasingExtraSlots")
local function __FUNC_3E7_(arg0, arg1, arg2)
	arg0:setForceMouseEventDispatch(true)
	local registerVal4 = {}
	registerVal4 = {arg0.RewardWidget0, arg0.RewardWidget1, arg0.RewardWidget2, arg0.RewardWidget3}
	local registerVal5 = {}
	registerVal5 = {arg0.RedeemBtn0, arg0.RedeemBtn1, arg0.RedeemBtn2, arg0.RedeemBtn3}
	local registerVal6 = {}
	registerVal6 = {CoD.BlackMarketUtility.winter_challenge_sentinel_tier1, CoD.BlackMarketUtility.winter_challenge_sentinel_tier2, CoD.BlackMarketUtility.winter_challenge_sentinel_tier3, CoD.BlackMarketUtility.winter_challenge_sentinel_tier4}
	MakeNotFocusable(arg0.RedeemBtn0)
	MakeNotFocusable(arg0.RedeemBtn1)
	MakeNotFocusable(arg0.RedeemBtn2)
	MakeNotFocusable(arg0.RedeemBtn3)
	local registerVal8, registerVal9, registerVal10 = ipairs(registerVal4)
	local function __FUNC_E2D_(arg0, arg1)
		if arg0.currentState == "Complete" and false then
			Engine.PlaySound("uin_thm_fill")
		end
		LUI.UIElement.clipOver(arg0, arg1)
	end

	:registerEventHandler("clip_over", __FUNC_E2D_)
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
	local function __FUNC_F53_(arg0)
		local registerVal1, registerVal2, registerVal3 = pairs({})
		for index4,value5 in registerVal1, registerVal2, registerVal3 do
			if value5.rewardWidget then
				if value5.completeValue <= arg0 then
					Engine.PlaySound("uin_thm_goal_reached")
					local registerVal8 = Engine.GetInventoryItemQuantity(arg1, registerVal6[value5.rewardWidgetIndex])
					if value5.rewardWidget.currentState ~= "Complete" and registerVal8 == 0.000000 and CoD.RewardRedeemBtnInfoList[value5.rewardWidgetIndex] then
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
	local function __FUNC_128B_(arg1)
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
		__FUNC_F53_(registerVal1)
		if CoD.BlackMarketUtility.PromoRewardCompletionValues[#CoD.BlackMarketUtility.PromoRewardCompletionValues].completeValue <= registerVal1 then
			arg0.ThermometerComplete:setState("Completed")
			arg0.PromoThermometerAndRewardsIdol:setState("StopAnimations")
		end
	end

	__FUNC_128B_(0.000000)
	Engine.PlaySound("uin_thm_fill")
	if arg2.id ~= "Menu.MPAAR" then
	end
	local function __FUNC_15EC_(arg1)
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
		__FUNC_128B_((0.400000 / 60.000000))
	end

	local registerVal32 = LUI.UITimer.newElementTimer(16.000000, false, __FUNC_15EC_)
	arg0.thermometerAnimTimer = registerVal32
	arg0:addElement(arg0.thermometerAnimTimer)
	local function __FUNC_1997_(arg0)
		if arg0.thermometerAnimTimer then
			arg0.thermometerAnimTimer:close()
			arg0.thermometerAnimTimer = nil
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "close", __FUNC_1997_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.Winter_Community_Thermometer = registerVal2
local function __FUNC_1A1A_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Winter_Community_Thermometer)
	registerVal2.id = "Winter_Community_Thermometer"
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
	registerVal8:setImage(RegisterImage("uie_t7_menu_community_winter_chip"))
	registerVal2:addElement(registerVal8)
	registerVal2.Chip = registerVal8
	local registerVal9 = CoD.Promo_UnlockableReward.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 106.130000, 406.130000)
	registerVal9:setTopBottom(true, false, 301.000000, 376.000000)
	registerVal9:setScale(1.450000)
	registerVal9.PromoRewardImage.Image:setImage(RegisterImage("uie_t7_menu_community_winter_tier02"))
	registerVal9.TextBox0:setText(Engine.Localize("MPUI_RARE_SUPPLY_DROP_BUNDLE"))
	registerVal2:addElement(registerVal9)
	registerVal2.RewardWidget0 = registerVal9
	local registerVal10 = CoD.Promo_UnlockableReward.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 106.130000, 406.130000)
	registerVal10:setTopBottom(true, false, 202.690000, 277.690000)
	registerVal10:setScale(1.450000)
	registerVal10.PromoRewardImage.Image:setImage(RegisterImage("uie_t7_menu_community_winter_tier02"))
	registerVal10.TextBox0:setText(Engine.Localize("MPUI_RARE_SUPPLY_DROP_BUNDLE"))
	registerVal2:addElement(registerVal10)
	registerVal2.RewardWidget1 = registerVal10
	local registerVal11 = CoD.Promo_UnlockableReward.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 106.130000, 406.130000)
	registerVal11:setTopBottom(true, false, 104.690000, 179.690000)
	registerVal11:setScale(1.450000)
	registerVal11.PromoRewardImage.Image:setImage(RegisterImage("uie_t7_menu_community_winter_tier03"))
	registerVal11.TextBox0:setText(Engine.Localize("MPUI_BM_BRIBE_MELEE_WEAPON"))
	registerVal2:addElement(registerVal11)
	registerVal2.RewardWidget2 = registerVal11
	local registerVal12 = CoD.Promo_UnlockableReward.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 106.130000, 406.130000)
	registerVal12:setTopBottom(true, false, 6.690000, 81.690000)
	registerVal12:setScale(1.450000)
	registerVal12.PromoRewardImage.Image:setImage(RegisterImage("uie_t7_menu_community_winter_tier04"))
	registerVal12.TextBox0:setText(Engine.Localize("MPUI_BM_BRIBE_RANGE_WEAPON"))
	registerVal2:addElement(registerVal12)
	registerVal2.RewardWidget3 = registerVal12
	local registerVal13 = CoD.Promo_ThermometerAndRewards_EdgeMarker.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, -61.810000, 39.820000)
	registerVal13:setTopBottom(true, false, -15.750000, 34.250000)
	registerVal2:addElement(registerVal13)
	registerVal2.PromoThermometerAndRewardsEdgeMarker = registerVal13
	local registerVal14 = CoD.Promo_PlusOneText.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, -21.490000, -3.490000)
	registerVal14:setTopBottom(true, false, -40.750000, -15.750000)
	registerVal2:addElement(registerVal14)
	registerVal2.PromoPlusOneText = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, -55.490000, 29.600000)
	registerVal15:setTopBottom(true, false, 360.640000, 391.360000)
	registerVal15:setAlpha(0.350000)
	registerVal15:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_glowpulse4"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.GlowDots = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, -55.490000, 32.510000)
	registerVal16:setTopBottom(true, false, 283.320000, 299.320000)
	registerVal16:setAlpha(0.350000)
	registerVal16:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_glowpulse5"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal16)
	registerVal2.GlowDots2 = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(true, false, -55.490000, 32.510000)
	registerVal17:setTopBottom(true, false, 186.320000, 202.320000)
	registerVal17:setAlpha(0.350000)
	registerVal17:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_glowpulse5"))
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal17)
	registerVal2.GlowDots3 = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(true, false, -55.490000, 32.510000)
	registerVal18:setTopBottom(true, false, 88.320000, 104.320000)
	registerVal18:setAlpha(0.350000)
	registerVal18:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_glowpulse5"))
	registerVal18:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal18)
	registerVal2.GlowDots4 = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(true, false, -55.490000, 32.510000)
	registerVal19:setTopBottom(true, false, -8.680000, 6.690000)
	registerVal19:setAlpha(0.350000)
	registerVal19:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_glowpulse5"))
	registerVal19:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal19)
	registerVal2.GlowDots5 = registerVal19
	local registerVal20 = CoD.Promo_ThermometerAndRewards_Complete.new(arg0, arg1)
	registerVal20:setLeftRight(true, false, -130.990000, 112.010000)
	registerVal20:setTopBottom(true, false, -60.670000, 533.330000)
	registerVal2:addElement(registerVal20)
	registerVal2.ThermometerComplete = registerVal20
	local registerVal21 = CoD.BM_TopNavBtn.new(arg0, arg1)
	registerVal21:setLeftRight(true, false, -146.470000, -31.470000)
	registerVal21:setTopBottom(true, false, 318.000000, 359.000000)
	registerVal21:setAlpha(0.000000)
	registerVal21.btnDisplayTextStroke0:setText(Engine.Localize("CONTRACT_COMMUNITY_CONTRACT_CLAIM_REWARD"))
	registerVal21.btnDisplayTextStroke:setText(Engine.Localize("CONTRACT_COMMUNITY_CONTRACT_CLAIM_REWARD"))
	local function __FUNC_384A_(arg2, arg3)
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

	registerVal21:registerEventHandler("gain_focus", __FUNC_384A_)
	local function __FUNC_39DB_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal21:registerEventHandler("lose_focus", __FUNC_39DB_)
	local function __FUNC_3AAA_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfInState(registerVal2, "DefaultState")
		if registerVal4 then
			RedeemRewardAction(registerVal2, arg2, arg1, "1")
			MakeElementNotFocusable(registerVal2, "RedeemBtn0", arg2)
			HideElement(registerVal2, "RedeemBtn0")
			return true
		end
	end

	local function __FUNC_3BCE_(arg0, arg1, arg2)
		local registerVal3 = IsSelfInState(registerVal2, "DefaultState")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal21, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_3AAA_, __FUNC_3BCE_, false)
	registerVal2:addElement(registerVal21)
	registerVal2.RedeemBtn0 = registerVal21
	local registerVal22 = CoD.BM_TopNavBtn.new(arg0, arg1)
	registerVal22:setLeftRight(true, false, -146.470000, -31.470000)
	registerVal22:setTopBottom(true, false, 219.690000, 260.690000)
	registerVal22:setAlpha(0.000000)
	registerVal22.btnDisplayTextStroke0:setText(Engine.Localize("CONTRACT_COMMUNITY_CONTRACT_CLAIM_REWARD"))
	registerVal22.btnDisplayTextStroke:setText(Engine.Localize("CONTRACT_COMMUNITY_CONTRACT_CLAIM_REWARD"))
	local function __FUNC_3D17_(arg2, arg3)
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

	registerVal22:registerEventHandler("gain_focus", __FUNC_3D17_)
	local function __FUNC_3EA7_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal22:registerEventHandler("lose_focus", __FUNC_3EA7_)
	local function __FUNC_3F76_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfInState(registerVal2, "DefaultState")
		if registerVal4 then
			RedeemRewardAction(registerVal2, arg2, arg1, "2")
			return true
		end
	end

	local function __FUNC_402C_(arg0, arg1, arg2)
		local registerVal3 = IsSelfInState(registerVal2, "DefaultState")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal22, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_3F76_, __FUNC_402C_, false)
	registerVal2:addElement(registerVal22)
	registerVal2.RedeemBtn1 = registerVal22
	local registerVal23 = CoD.BM_TopNavBtn.new(arg0, arg1)
	registerVal23:setLeftRight(true, false, -146.470000, -31.470000)
	registerVal23:setTopBottom(true, false, 121.690000, 162.690000)
	registerVal23:setAlpha(0.000000)
	registerVal23.btnDisplayTextStroke0:setText(Engine.Localize("CONTRACT_COMMUNITY_CONTRACT_CLAIM_REWARD"))
	registerVal23.btnDisplayTextStroke:setText(Engine.Localize("CONTRACT_COMMUNITY_CONTRACT_CLAIM_REWARD"))
	local function __FUNC_4177_(arg2, arg3)
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

	registerVal23:registerEventHandler("gain_focus", __FUNC_4177_)
	local function __FUNC_4307_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal23:registerEventHandler("lose_focus", __FUNC_4307_)
	local function __FUNC_43D6_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfInState(registerVal2, "DefaultState")
		if registerVal4 then
			RedeemRewardAction(registerVal2, arg2, arg1, "3")
			MakeElementNotFocusable(registerVal2, "RedeemBtn2", arg2)
			HideElement(registerVal2, "RedeemBtn2")
			return true
		end
	end

	local function __FUNC_44FA_(arg0, arg1, arg2)
		local registerVal3 = IsSelfInState(registerVal2, "DefaultState")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal23, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_43D6_, __FUNC_44FA_, false)
	registerVal2:addElement(registerVal23)
	registerVal2.RedeemBtn2 = registerVal23
	local registerVal24 = CoD.BM_TopNavBtn.new(arg0, arg1)
	registerVal24:setLeftRight(true, false, -146.470000, -31.470000)
	registerVal24:setTopBottom(true, false, 23.690000, 64.690000)
	registerVal24:setAlpha(0.000000)
	registerVal24.btnDisplayTextStroke0:setText(Engine.Localize("CONTRACT_COMMUNITY_CONTRACT_CLAIM_REWARD"))
	registerVal24.btnDisplayTextStroke:setText(Engine.Localize("CONTRACT_COMMUNITY_CONTRACT_CLAIM_REWARD"))
	local function __FUNC_4643_(arg2, arg3)
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

	registerVal24:registerEventHandler("gain_focus", __FUNC_4643_)
	local function __FUNC_47D3_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal24:registerEventHandler("lose_focus", __FUNC_47D3_)
	local function __FUNC_48A2_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfInState(registerVal2, "DefaultState")
		if registerVal4 then
			RedeemRewardAction(registerVal2, arg2, arg1, "4")
			MakeElementNotFocusable(registerVal2, "RedeemBtn3", arg2)
			HideElement(registerVal2, "RedeemBtn3")
			return true
		end
	end

	local function __FUNC_49C6_(arg0, arg1, arg2)
		local registerVal3 = IsSelfInState(registerVal2, "DefaultState")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal24, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_48A2_, __FUNC_49C6_, false)
	registerVal2:addElement(registerVal24)
	registerVal2.RedeemBtn3 = registerVal24
	local registerVal25 = CoD.cac_PurchasingExtraSlots.new(arg0, arg1)
	registerVal25:setLeftRight(true, false, -345.430000, -39.430000)
	registerVal25:setTopBottom(true, false, 146.320000, 242.320000)
	registerVal25.PurchasingText:setText(Engine.Localize("MENU_PROCESSING_PURCHASE"))
	registerVal2:addElement(registerVal25)
	registerVal2.ProcessingWidget = registerVal25
	local registerVal26 = {}
	registerVal26.up = registerVal22
	registerVal21.navigation = registerVal26
	registerVal26 = {}
	registerVal26.up = registerVal23
	registerVal26.down = registerVal21
	registerVal22.navigation = registerVal26
	registerVal26 = {}
	registerVal26.up = registerVal24
	registerVal26.down = registerVal22
	registerVal23.navigation = registerVal26
	registerVal26 = {}
	registerVal26.down = registerVal23
	registerVal24.navigation = registerVal26
	registerVal26 = {}
	local registerVal27 = {}
	local function __FUNC_4B0F_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.PromoThermometerAndRewardsIdol:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal25:completeAnimation()
		registerVal2.ProcessingWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
	end

	registerVal27.DefaultClip = __FUNC_4B0F_
	registerVal26.DefaultState = registerVal27
	registerVal27 = {}
	local function __FUNC_4C85_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal25:completeAnimation()
		registerVal2.ProcessingWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal25, {})
	end

	registerVal27.DefaultClip = __FUNC_4C85_
	registerVal26.Purchasing = registerVal27
	registerVal27 = {}
	local function __FUNC_4D87_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal25:completeAnimation()
		registerVal2.ProcessingWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
	end

	registerVal27.DefaultClip = __FUNC_4D87_
	registerVal26.Animating = registerVal27
	registerVal2.clipsPerState = registerVal26
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal21.id = "RedeemBtn0"
	registerVal22.id = "RedeemBtn1"
	registerVal23.id = "RedeemBtn2"
	registerVal24.id = "RedeemBtn3"
	local function __FUNC_4E8C_(arg0, arg1)
		local registerVal2 = arg0.RedeemBtn0:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_4E8C_)
	local function __FUNC_4F92_(arg0)
		arg0.PromoThermometerAndRewardsIdol:close()
		arg0.RewardWidget0:close()
		arg0.RewardWidget1:close()
		arg0.RewardWidget2:close()
		arg0.RewardWidget3:close()
		arg0.PromoThermometerAndRewardsEdgeMarker:close()
		arg0.PromoPlusOneText:close()
		arg0.ThermometerComplete:close()
		arg0.RedeemBtn0:close()
		arg0.RedeemBtn1:close()
		arg0.RedeemBtn2:close()
		arg0.RedeemBtn3:close()
		arg0.ProcessingWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_4F92_)
	if __FUNC_3E7_ then
		__FUNC_3E7_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.Winter_Community_Thermometer.new = __FUNC_1A1A_
