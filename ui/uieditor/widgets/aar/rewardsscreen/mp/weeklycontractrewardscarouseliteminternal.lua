-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BorderBakedSolid")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveStroke")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
require("ui.uieditor.widgets.AAR.RewardsScreen.IndividualRewardItem")
require("ui.uieditor.widgets.Border")
require("ui.uieditor.widgets.Notifications.RankUp.RankUpNotification_FooterBacking01")
require("ui.uieditor.widgets.verticalScrollingTextBox18")
require("ui.uieditor.widgets.AAR.RewardsScreen.MP.BlackmarketRewards54i")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.WeeklyContractRewardsCarouselItemInternal = registerVal1
function CoD.WeeklyContractRewardsCarouselItemInternal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.WeeklyContractRewardsCarouselItemInternal)
	registerVal2.id = "WeeklyContractRewardsCarouselItemInternal"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 276.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 444.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.800000)
	registerVal2:addElement(registerVal3)
	registerVal2.Bg = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 1.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrgstrokefull"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal4:setShaderVector(0.000000, 0.057971, 0.036117, 0.000000, 0.000000)
	registerVal4:setupNineSliceShader(16.000000, 16.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BoxButtonLrgInactiveStroke = registerVal4
	local registerVal5 = CoD.BorderBakedSolid.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 1.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.BorderBakedSolid0 = registerVal5
	local registerVal6 = CoD.cac_ButtonBoxLrgInactiveStroke.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, -1.770000, 1.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.cacButtonBoxLrgInactiveStroke0 = registerVal6
	local registerVal7 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 7.370000, -7.890000)
	registerVal7:setTopBottom(true, true, 8.480000, -9.480000)
	registerVal7:setRGB(0.240000, 0.240000, 0.260000)
	registerVal7:setAlpha(0.750000)
	registerVal2:addElement(registerVal7)
	registerVal2.FEButtonPanel0 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 7.370000, 268.000000)
	registerVal8:setTopBottom(true, false, 332.940000, 385.060000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_bm_rewards_backer_rank"))
	registerVal2:addElement(registerVal8)
	registerVal2.TitleBacking0 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 7.370000, 268.110000)
	registerVal9:setTopBottom(true, false, 8.480000, 154.330000)
	registerVal9:setImage(RegisterImage("uie_t7_rewards_backer_rank"))
	registerVal2:addElement(registerVal9)
	registerVal2.TitleBacking = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, false, -87.530000, 83.810000)
	registerVal10:setTopBottom(true, false, 2.000000, 119.000000)
	registerVal10:setRGB(0.000000, 0.000000, 0.000000)
	registerVal10:setZRot(50.000000)
	registerVal10:setScale(1.200000)
	registerVal10:setImage(RegisterImage("uie_t7_hud_notficationhighlight"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.highlight = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 84.390000, 190.390000)
	registerVal11:setTopBottom(true, false, 1.000000, 107.000000)
	registerVal11:setScale(0.900000)
	local function __FUNC_1FCC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "rewardCarouselItemImage", true, __FUNC_1FCC_)
	registerVal2:addElement(registerVal11)
	registerVal2.CardImage = registerVal11
	local registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(false, false, -138.000000, 138.000000)
	registerVal12:setTopBottom(true, false, 350.500000, 367.500000)
	registerVal12:setRGB(0.940000, 0.890000, 0.590000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setTTF("fonts/default.ttf")
	registerVal12:setLetterSpacing(-0.500000)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_2080_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal12:linkToElementModel(registerVal2, "requirementCompleteText", true, __FUNC_2080_)
	registerVal2:addElement(registerVal12)
	registerVal2.RequirementsComplete = registerVal12
	local registerVal13 = CoD.IndividualRewardItem.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 18.370000, 257.500000)
	registerVal13:setTopBottom(true, false, 173.000000, 233.000000)
	registerVal13.NotificationRewardBorder:setRGB(0.940000, 0.890000, 0.590000)
	registerVal13.IndividualRewardItemImage0:setScale(0.950000)
	local function __FUNC_213A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:setAlpha(registerVal1)
		end
	end

	registerVal13:linkToElementModel(registerVal2, "reward1InfoVisible", true, __FUNC_213A_)
	local function __FUNC_21CD_(arg0)
		registerVal13:setModel(arg0, arg1)
	end

	registerVal13:linkToElementModel(registerVal2, "reward1Info", false, __FUNC_21CD_)
	local registerVal16 = {}
	local registerVal17 = {}
	registerVal17.stateName = "Incentive"
	local function __FUNC_221E_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal17.condition = __FUNC_221E_
	registerVal16 = {registerVal17}
	registerVal13:mergeStateConditions(registerVal16)
	local function __FUNC_2268_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "rewardDesc"
		arg0:updateElementState(registerVal13, registerVal4)
	end

	registerVal13:linkToElementModel(registerVal13, "rewardDesc", true, __FUNC_2268_)
	registerVal2:addElement(registerVal13)
	registerVal2.IndividualRewardItem1 = registerVal13
	local registerVal14 = CoD.IndividualRewardItem.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 18.370000, 257.500000)
	registerVal14:setTopBottom(true, false, 238.000000, 299.000000)
	registerVal14.NotificationRewardBorder:setRGB(0.940000, 0.890000, 0.590000)
	registerVal14.IndividualRewardItemImage0:setScale(0.950000)
	local function __FUNC_2388_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14:setAlpha(registerVal1)
		end
	end

	registerVal14:linkToElementModel(registerVal2, "reward2InfoVisible", true, __FUNC_2388_)
	local function __FUNC_241D_(arg0)
		registerVal14:setModel(arg0, arg1)
	end

	registerVal14:linkToElementModel(registerVal2, "reward2Info", false, __FUNC_241D_)
	registerVal17 = {}
	local registerVal18 = {}
	registerVal18.stateName = "Incentive"
	local function __FUNC_246E_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal18.condition = __FUNC_246E_
	registerVal17 = {registerVal18}
	registerVal14:mergeStateConditions(registerVal17)
	local function __FUNC_24B8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "rewardDesc"
		arg0:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:linkToElementModel(registerVal14, "rewardDesc", true, __FUNC_24B8_)
	registerVal2:addElement(registerVal14)
	registerVal2.IndividualRewardItem2 = registerVal14
	local registerVal15 = CoD.IndividualRewardItem.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 18.370000, 257.500000)
	registerVal15:setTopBottom(true, false, 303.000000, 364.000000)
	registerVal15.IndividualRewardItemImage0:setScale(0.950000)
	local function __FUNC_25D8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15:setAlpha(registerVal1)
		end
	end

	registerVal15:linkToElementModel(registerVal2, "reward3InfoVisible", true, __FUNC_25D8_)
	local function __FUNC_266D_(arg0)
		registerVal15:setModel(arg0, arg1)
	end

	registerVal15:linkToElementModel(registerVal2, "reward3Info", false, __FUNC_266D_)
	registerVal18 = {}
	local registerVal19 = {}
	registerVal19.stateName = "Incentive"
	local function __FUNC_26BE_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal19.condition = __FUNC_26BE_
	registerVal18 = {registerVal19}
	registerVal15:mergeStateConditions(registerVal18)
	local function __FUNC_2708_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "rewardDesc"
		arg0:updateElementState(registerVal15, registerVal4)
	end

	registerVal15:linkToElementModel(registerVal15, "rewardDesc", true, __FUNC_2708_)
	registerVal2:addElement(registerVal15)
	registerVal2.IndividualRewardItem3 = registerVal15
	registerVal16 = CoD.IndividualRewardItem.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, 18.370000, 257.500000)
	registerVal16:setTopBottom(true, false, 368.000000, 429.000000)
	registerVal16.IndividualRewardItemImage0:setScale(0.950000)
	local function __FUNC_2828_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16:setAlpha(registerVal1)
		end
	end

	registerVal16:linkToElementModel(registerVal2, "reward4InfoVisible", true, __FUNC_2828_)
	local function __FUNC_28BD_(arg0)
		registerVal16:setModel(arg0, arg1)
	end

	registerVal16:linkToElementModel(registerVal2, "reward4Info", false, __FUNC_28BD_)
	registerVal19 = {}
	local registerVal20 = {}
	registerVal20.stateName = "Incentive"
	local function __FUNC_290E_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal20.condition = __FUNC_290E_
	registerVal19 = {registerVal20}
	registerVal16:mergeStateConditions(registerVal19)
	local function __FUNC_2958_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "rewardDesc"
		arg0:updateElementState(registerVal16, registerVal4)
	end

	registerVal16:linkToElementModel(registerVal16, "rewardDesc", true, __FUNC_2958_)
	registerVal2:addElement(registerVal16)
	registerVal2.IndividualRewardItem4 = registerVal16
	registerVal17 = CoD.Border.new(arg0, arg1)
	registerVal17:setLeftRight(true, false, 0.000000, 340.000000)
	registerVal17:setTopBottom(true, false, 0.000000, 520.000000)
	registerVal17:setAlpha(0.000000)
	registerVal2:addElement(registerVal17)
	registerVal2.Border0 = registerVal17
	registerVal18 = CoD.RankUpNotification_FooterBacking01.new(arg0, arg1)
	registerVal18:setLeftRight(true, false, 14.000000, 262.000000)
	registerVal18:setTopBottom(true, false, 99.690000, 136.310000)
	registerVal18.Image0:setImage(RegisterImage("uie_t7_hud_notif_blackmarket_left_fill"))
	registerVal18.Image1:setImage(RegisterImage("uie_t7_hud_notif_blackmarket_center_fill"))
	registerVal18.Image2:setImage(RegisterImage("uie_t7_hud_notif_blackmarket_right_fill"))
	registerVal2:addElement(registerVal18)
	registerVal2.RankUpNotificationFooterBacking = registerVal18
	registerVal19 = CoD.verticalScrollingTextBox18.new(arg0, arg1)
	registerVal19:setLeftRight(false, false, -117.000000, 117.000000)
	registerVal19:setTopBottom(true, false, 131.000000, 167.250000)
	registerVal19.textBox:setTTF("fonts/default.ttf")
	registerVal19.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	local function __FUNC_2A78_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal19.textBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal19:linkToElementModel(registerVal2, "rewardCarouselItemSubtitle", true, __FUNC_2A78_)
	registerVal2:addElement(registerVal19)
	registerVal2.verticalScrollingTextBox18 = registerVal19
	registerVal20 = LUI.UIText.new()
	registerVal20:setLeftRight(false, false, -130.000000, 130.000000)
	registerVal20:setTopBottom(true, false, 107.000000, 129.000000)
	registerVal20:setRGB(0.940000, 0.890000, 0.590000)
	registerVal20:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal20:setLetterSpacing(-1.000000)
	registerVal20:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal20:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_2B4F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal20:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal20:linkToElementModel(registerVal2, "rewardCarouselItemTitle", true, __FUNC_2B4F_)
	registerVal2:addElement(registerVal20)
	registerVal2.CardTitle = registerVal20
	local registerVal21 = CoD.BlackmarketRewards54i.new(arg0, arg1)
	registerVal21:setLeftRight(true, false, 50.470000, 238.140000)
	registerVal21:setTopBottom(true, false, 395.500000, 439.000000)
	registerVal21:setScale(0.900000)
	registerVal21.text:setText(Engine.Localize("MPUI_BM_CONTRACT_WEEKLY_CONTRACTS"))
	registerVal2:addElement(registerVal21)
	registerVal2.BlackmarketRewards54i = registerVal21
	local registerVal22 = {}
	local registerVal23 = {}
	local function __FUNC_2C06_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal23.DefaultClip = __FUNC_2C06_
	registerVal22.DefaultState = registerVal23
	registerVal23 = {}
	local function __FUNC_2C66_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal8:completeAnimation()
		registerVal2.TitleBacking0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal12:completeAnimation()
		registerVal2.RequirementsComplete:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal23.DefaultClip = __FUNC_2C66_
	registerVal22.FirstContract = registerVal23
	registerVal23 = {}
	local function __FUNC_2DCB_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal8:completeAnimation()
		registerVal2.TitleBacking0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal12:completeAnimation()
		registerVal2.RequirementsComplete:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal23.DefaultClip = __FUNC_2DCB_
	registerVal22.SecondContract = registerVal23
	registerVal2.clipsPerState = registerVal22
	local registerVal24 = {}
	local registerVal25 = {}
	registerVal25.stateName = "FirstContract"
	local function __FUNC_2F2F_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "rewardCarouselItemType", "first")
	end

	registerVal25.condition = __FUNC_2F2F_
	local registerVal26 = {}
	registerVal26.stateName = "SecondContract"
	local function __FUNC_2FC4_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "rewardCarouselItemType", "second")
	end

	registerVal26.condition = __FUNC_2FC4_
	registerVal24 = {registerVal25, registerVal26}
	registerVal2:mergeStateConditions(registerVal24)
	local function __FUNC_305D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "rewardCarouselItemType"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "rewardCarouselItemType", true, __FUNC_305D_)
	local function __FUNC_3188_(arg0)
		arg0.BorderBakedSolid0:close()
		arg0.cacButtonBoxLrgInactiveStroke0:close()
		arg0.FEButtonPanel0:close()
		arg0.IndividualRewardItem1:close()
		arg0.IndividualRewardItem2:close()
		arg0.IndividualRewardItem3:close()
		arg0.IndividualRewardItem4:close()
		arg0.Border0:close()
		arg0.RankUpNotificationFooterBacking:close()
		arg0.verticalScrollingTextBox18:close()
		arg0.BlackmarketRewards54i:close()
		arg0.CardImage:close()
		arg0.RequirementsComplete:close()
		arg0.CardTitle:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3188_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

