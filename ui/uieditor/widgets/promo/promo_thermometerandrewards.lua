-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Promo.Promo_ThermometerAndRewards_Idol")
require("ui.uieditor.widgets.Promo.Promo_UnlockableReward")
require("ui.uieditor.widgets.Promo.Promo_ThermometerAndRewards_EdgeMarker")
require("ui.uieditor.widgets.Promo.Promo_PlusOneText")
require("ui.uieditor.widgets.Promo.Promo_ThermometerAndRewards_Complete")
local registerVal1 = {}
local function __FUNC_3B6_(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, "RoadToCWLRewardList")
	local registerVal3 = Engine.GetBackgroundsForCategoryName(arg0, "default")
	local registerVal4, registerVal5, registerVal6 = ipairs(registerVal3)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		local registerVal9 = Engine.Localize((value8.description .. "_TITLE"))
		if 0.000000 == 3.000000 then
		else
			local registerVal11 = IsLive()
			if value8.isContractBg and registerVal11 then
				registerVal11 = Engine.CreateModel(registerVal1, ("tier" .. (0.000000 + 1.000000)))
				local registerVal14 = {}
				registerVal14.title = registerVal9
				registerVal14.description = ""
				registerVal14.iconId = value8.id
				registerVal14.isLocked = value8.isBGLocked
				registerVal14.isContractBg = value8.isContractBg
				registerVal14.isPackage = false
				ListHelper_CreateModelsFromTable(registerVal11, registerVal14)
			end
		end
	end
	return registerVal1
end

registerVal1.getModel = __FUNC_3B6_
DataSources.RoadToCWLRewardList = registerVal1
local function __FUNC_6CE_(arg0, arg1, arg2)
	local registerVal4 = {}
	registerVal4 = {arg0.RewardWidget0, arg0.RewardWidget1, arg0.RewardWidget2, arg0.RewardWidget3}
	local registerVal6, registerVal7, registerVal8 = ipairs(registerVal4)
	local function __FUNC_E15_(arg0, arg1)
		if arg0.currentState == "Complete" and false then
			Engine.PlaySound("uin_thm_fill")
		end
		LUI.UIElement.clipOver(arg0, arg1)
	end

	:registerEventHandler("clip_over", __FUNC_E15_)
	if  and  <= #CoD.BlackMarketUtility.PromoRewardCompletionValues then
		local registerVal14 = {}
		registerVal14.rewardWidget = 
		registerVal14.nearCompleteValue = CoD.BlackMarketUtility.PromoRewardCompletionValues[].nearCompleteValue
		registerVal14.completeValue = CoD.BlackMarketUtility.PromoRewardCompletionValues[].completeValue
		table.insert({}, registerVal14)
	end
	local function __FUNC_F3B_(arg0)
		local registerVal1, registerVal2, registerVal3 = pairs({})
		for index4,value5 in registerVal1, registerVal2, registerVal3 do
			if value5.rewardWidget then
				if value5.completeValue <= arg0 then
					if value5.rewardWidget.currentState ~= "Complete" then
						Engine.PlaySound("uin_thm_goal_reached")
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

	registerVal7 = Engine.StorageGetBuffer(arg1, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	if registerVal7 and registerVal7.lastSeenThermometerValue then
		local registerVal11 = registerVal7.lastSeenThermometerValue:get()
		local registerVal10 = math.min(registerVal11, 1.000000)
		local registerVal9 = math.max(registerVal10, 0.000000)
		registerVal7.lastSeenThermometerValue:set(CoD.GetThermometerProgress())
	end
	registerVal9, registerVal10, registerVal11, registerVal12 = arg0.ThermometerAnimation:getLocalTopBottom()
	registerVal14, registerVal15, registerVal16, registerVal17 = arg0.PromoThermometerAndRewardsEdgeMarker:getLocalTopBottom()
	local registerVal18, registerVal19, registerVal20, registerVal21 = arg0.PromoPlusOneText:getLocalTopBottom()
	local registerVal22, registerVal23, registerVal24, registerVal25 = arg0.PromoThermometerAndRewardsIdol:getLocalTopBottom()
	local function __FUNC_1110_(arg1)
		if false then
			return 
		end
		local registerVal2 = CoD.GetThermometerProgress()
		if not registerVal2 then
		end
		local registerVal1 = math.min(0.000000, (0.000000 + arg1))
		arg0.ThermometerAnimation:setShaderVector(2.000000, (1.000000 - registerVal1), 1.000000, 0.000000, 0.000000)
		arg0.PromoThermometerAndRewardsEdgeMarker:setTopBottom(registerVal9, registerVal10, (registerVal12 - ((registerVal12 - registerVal11) * registerVal1)), ((registerVal12 - ((registerVal12 - registerVal11) * registerVal1)) + (registerVal17 - registerVal16)))
		arg0.PromoThermometerAndRewardsIdol:setTopBottom(registerVal9, registerVal10, (registerVal12 - ((registerVal12 - registerVal11) * registerVal1)), registerVal25)
		__FUNC_F3B_(registerVal1)
		if CoD.BlackMarketUtility.PromoRewardCompletionValues[#CoD.BlackMarketUtility.PromoRewardCompletionValues].completeValue <= registerVal1 then
			arg0.ThermometerComplete:setState("Completed")
			arg0.PromoThermometerAndRewardsIdol:setState("StopAnimations")
		end
	end

	__FUNC_1110_(0.000000)
	Engine.PlaySound("uin_thm_fill")
	if arg2.id ~= "Menu.MPAAR" then
	end
	local function __FUNC_1474_(arg1)
		local registerVal2 = CoD.GetThermometerProgress()
		if not registerVal2 then
		end
		if 0.000000 <= 0.000000 then
			if arg0.thermometerAnimTimer then
				arg0.thermometerAnimTimer:close()
				arg0.thermometerAnimTimer = nil
			end
			arg0.PromoThermometerAndRewardsEdgeMarker:playClip("LoopAfterIntro")
			arg0.PromoPlusOneText:setTopBottom(registerVal9, registerVal10, (registerVal12 - ((registerVal12 - registerVal11) * 0.000000)), ((registerVal12 - ((registerVal12 - registerVal11) * 0.000000)) + (registerVal21 - registerVal20)))
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
		__FUNC_1110_((0.400000 / 60.000000))
	end

	local registerVal30 = LUI.UITimer.newElementTimer(16.000000, false, __FUNC_1474_)
	arg0.thermometerAnimTimer = registerVal30
	arg0:addElement(arg0.thermometerAnimTimer)
	local function __FUNC_1792_(arg0)
		if arg0.thermometerAnimTimer then
			arg0.thermometerAnimTimer:close()
			arg0.thermometerAnimTimer = nil
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "close", __FUNC_1792_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.Promo_ThermometerAndRewards = registerVal2
local function __FUNC_1816_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Promo_ThermometerAndRewards)
	registerVal2.id = "Promo_ThermometerAndRewards"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 348.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 438.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Promo_ThermometerAndRewards_Idol.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, -130.750000, 111.760000)
	registerVal3:setTopBottom(true, false, -60.670000, 533.600000)
	registerVal2:addElement(registerVal3)
	registerVal2.PromoThermometerAndRewardsIdol = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -11.990000, 553.670000)
	registerVal4:setTopBottom(true, false, -96.670000, 469.000000)
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
	registerVal8:setLeftRight(true, false, -94.370000, 72.380000)
	registerVal8:setTopBottom(true, false, 362.100000, 495.500000)
	registerVal8:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_logochip"))
	registerVal2:addElement(registerVal8)
	registerVal2.Chip = registerVal8
	local registerVal9 = CoD.Promo_UnlockableReward.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 106.130000, 406.130000)
	registerVal9:setTopBottom(true, false, 301.000000, 376.000000)
	registerVal9:setScale(1.450000)
	local function __FUNC_2D59_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal2, "tier1", false, __FUNC_2D59_)
	local function __FUNC_2DAA_(arg0)
		registerVal9.PromoRewardImage.CallingCardsFrameWidget:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal2, "tier1", false, __FUNC_2DAA_)
	local function __FUNC_2E4D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.TextBox0:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "tier1.title", true, __FUNC_2E4D_)
	registerVal2:addElement(registerVal9)
	registerVal2.RewardWidget0 = registerVal9
	local registerVal10 = CoD.Promo_UnlockableReward.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 106.130000, 406.130000)
	registerVal10:setTopBottom(true, false, 104.690000, 179.690000)
	registerVal10:setScale(1.450000)
	local function __FUNC_2F24_(arg0)
		registerVal10:setModel(arg0, arg1)
	end

	registerVal10:linkToElementModel(registerVal2, "tier3", false, __FUNC_2F24_)
	local function __FUNC_2F76_(arg0)
		registerVal10.PromoRewardImage.CallingCardsFrameWidget:setModel(arg0, arg1)
	end

	registerVal10:linkToElementModel(registerVal2, "tier3", false, __FUNC_2F76_)
	local function __FUNC_3019_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.TextBox0:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "tier3.title", true, __FUNC_3019_)
	registerVal2:addElement(registerVal10)
	registerVal2.RewardWidget2 = registerVal10
	local registerVal11 = CoD.Promo_UnlockableReward.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 106.130000, 406.130000)
	registerVal11:setTopBottom(true, false, 6.690000, 81.690000)
	registerVal11:setScale(1.450000)
	registerVal11.PromoRewardImage.Image:setImage(RegisterImage("uie_t7_icon_community_reward_boxing"))
	registerVal11.TextBox0:setText(Engine.Localize(AppendAndLocalizeString("_TITLE", "WEAPON_MELEE_BOXING")))
	registerVal2:addElement(registerVal11)
	registerVal2.RewardWidget3 = registerVal11
	local registerVal12 = CoD.Promo_UnlockableReward.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 106.130000, 406.130000)
	registerVal12:setTopBottom(true, false, 202.690000, 277.690000)
	registerVal12:setScale(1.450000)
	local function __FUNC_30F0_(arg0)
		registerVal12:setModel(arg0, arg1)
	end

	registerVal12:linkToElementModel(registerVal2, "tier2", false, __FUNC_30F0_)
	local function __FUNC_3142_(arg0)
		registerVal12.PromoRewardImage.CallingCardsFrameWidget:setModel(arg0, arg1)
	end

	registerVal12:linkToElementModel(registerVal2, "tier2", false, __FUNC_3142_)
	local function __FUNC_31E5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.TextBox0:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal12:linkToElementModel(registerVal2, "tier2.title", true, __FUNC_31E5_)
	registerVal2:addElement(registerVal12)
	registerVal2.RewardWidget1 = registerVal12
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
	local registerVal21 = {}
	local registerVal22 = {}
	local function __FUNC_32BC_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.PromoThermometerAndRewardsIdol:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal22.DefaultClip = __FUNC_32BC_
	registerVal21.DefaultState = registerVal22
	registerVal2.clipsPerState = registerVal21
	local function __FUNC_33CD_(arg0)
		arg0.PromoThermometerAndRewardsIdol:close()
		arg0.RewardWidget0:close()
		arg0.RewardWidget2:close()
		arg0.RewardWidget3:close()
		arg0.RewardWidget1:close()
		arg0.PromoThermometerAndRewardsEdgeMarker:close()
		arg0.PromoPlusOneText:close()
		arg0.ThermometerComplete:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_33CD_)
	if __FUNC_6CE_ then
		__FUNC_6CE_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.Promo_ThermometerAndRewards.new = __FUNC_1816_
