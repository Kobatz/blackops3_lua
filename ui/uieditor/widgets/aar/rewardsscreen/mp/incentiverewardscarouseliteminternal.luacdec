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
CoD.IncentiveRewardsCarouselItemInternal = registerVal1
function CoD.IncentiveRewardsCarouselItemInternal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.IncentiveRewardsCarouselItemInternal)
	registerVal2.id = "IncentiveRewardsCarouselItemInternal"
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
	registerVal8:setLeftRight(true, false, 7.370000, 268.110000)
	registerVal8:setTopBottom(true, false, 8.480000, 154.330000)
	registerVal8:setImage(RegisterImage("uie_t7_rewards_backer_rank"))
	registerVal2:addElement(registerVal8)
	registerVal2.TitleBacking = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, -87.530000, 83.810000)
	registerVal9:setTopBottom(true, false, 2.000000, 119.000000)
	registerVal9:setRGB(0.000000, 0.000000, 0.000000)
	registerVal9:setZRot(50.000000)
	registerVal9:setScale(1.200000)
	registerVal9:setImage(RegisterImage("uie_t7_hud_notficationhighlight"))
	registerVal2:addElement(registerVal9)
	registerVal2.highlight = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 84.390000, 190.390000)
	registerVal10:setTopBottom(true, false, 1.000000, 107.000000)
	registerVal10:setScale(0.900000)
	local function __FUNC_1C36_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "rewardCarouselItemImage", true, __FUNC_1C36_)
	registerVal2:addElement(registerVal10)
	registerVal2.CardImage = registerVal10
	local registerVal11 = CoD.IndividualRewardItem.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 18.370000, 257.500000)
	registerVal11:setTopBottom(true, false, 173.000000, 233.000000)
	registerVal11.IndividualRewardItemImage0:setScale(0.950000)
	local function __FUNC_1CE8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setAlpha(registerVal1)
		end
	end

	registerVal11:linkToElementModel(registerVal2, "reward1InfoVisible", true, __FUNC_1CE8_)
	local function __FUNC_1D7D_(arg0)
		registerVal11:setModel(arg0, arg1)
	end

	registerVal11:linkToElementModel(registerVal2, "reward1Info", false, __FUNC_1D7D_)
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "Incentive"
	local function __FUNC_1DCE_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal15.condition = __FUNC_1DCE_
	registerVal14 = {registerVal15}
	registerVal11:mergeStateConditions(registerVal14)
	local function __FUNC_1E18_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "rewardDesc"
		arg0:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:linkToElementModel(registerVal11, "rewardDesc", true, __FUNC_1E18_)
	registerVal2:addElement(registerVal11)
	registerVal2.IndividualRewardItem1 = registerVal11
	local registerVal12 = CoD.IndividualRewardItem.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 18.370000, 257.500000)
	registerVal12:setTopBottom(true, false, 238.000000, 299.000000)
	registerVal12.IndividualRewardItemImage0:setScale(0.950000)
	local function __FUNC_1F38_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setAlpha(registerVal1)
		end
	end

	registerVal12:linkToElementModel(registerVal2, "reward2InfoVisible", true, __FUNC_1F38_)
	local function __FUNC_1FCD_(arg0)
		registerVal12:setModel(arg0, arg1)
	end

	registerVal12:linkToElementModel(registerVal2, "reward2Info", false, __FUNC_1FCD_)
	registerVal15 = {}
	local registerVal16 = {}
	registerVal16.stateName = "Incentive"
	local function __FUNC_201E_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal16.condition = __FUNC_201E_
	registerVal15 = {registerVal16}
	registerVal12:mergeStateConditions(registerVal15)
	local function __FUNC_2068_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "rewardDesc"
		arg0:updateElementState(registerVal12, registerVal4)
	end

	registerVal12:linkToElementModel(registerVal12, "rewardDesc", true, __FUNC_2068_)
	registerVal2:addElement(registerVal12)
	registerVal2.IndividualRewardItem2 = registerVal12
	local registerVal13 = CoD.IndividualRewardItem.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 18.370000, 257.500000)
	registerVal13:setTopBottom(true, false, 303.000000, 364.000000)
	registerVal13.IndividualRewardItemImage0:setScale(0.950000)
	local function __FUNC_2188_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:setAlpha(registerVal1)
		end
	end

	registerVal13:linkToElementModel(registerVal2, "reward3InfoVisible", true, __FUNC_2188_)
	local function __FUNC_221D_(arg0)
		registerVal13:setModel(arg0, arg1)
	end

	registerVal13:linkToElementModel(registerVal2, "reward3Info", false, __FUNC_221D_)
	registerVal16 = {}
	local registerVal17 = {}
	registerVal17.stateName = "Incentive"
	local function __FUNC_226E_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal17.condition = __FUNC_226E_
	registerVal16 = {registerVal17}
	registerVal13:mergeStateConditions(registerVal16)
	local function __FUNC_22B8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "rewardDesc"
		arg0:updateElementState(registerVal13, registerVal4)
	end

	registerVal13:linkToElementModel(registerVal13, "rewardDesc", true, __FUNC_22B8_)
	registerVal2:addElement(registerVal13)
	registerVal2.IndividualRewardItem3 = registerVal13
	registerVal14 = CoD.IndividualRewardItem.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 18.370000, 257.500000)
	registerVal14:setTopBottom(true, false, 368.000000, 429.000000)
	registerVal14.IndividualRewardItemImage0:setScale(0.950000)
	local function __FUNC_23D8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14:setAlpha(registerVal1)
		end
	end

	registerVal14:linkToElementModel(registerVal2, "reward4InfoVisible", true, __FUNC_23D8_)
	local function __FUNC_246D_(arg0)
		registerVal14:setModel(arg0, arg1)
	end

	registerVal14:linkToElementModel(registerVal2, "reward4Info", false, __FUNC_246D_)
	registerVal17 = {}
	local registerVal18 = {}
	registerVal18.stateName = "Incentive"
	local function __FUNC_24BE_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal18.condition = __FUNC_24BE_
	registerVal17 = {registerVal18}
	registerVal14:mergeStateConditions(registerVal17)
	local function __FUNC_2508_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "rewardDesc"
		arg0:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:linkToElementModel(registerVal14, "rewardDesc", true, __FUNC_2508_)
	registerVal2:addElement(registerVal14)
	registerVal2.IndividualRewardItem4 = registerVal14
	registerVal15 = CoD.Border.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 0.000000, 340.000000)
	registerVal15:setTopBottom(true, false, 0.000000, 520.000000)
	registerVal15:setAlpha(0.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.Border0 = registerVal15
	registerVal16 = CoD.RankUpNotification_FooterBacking01.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, 14.000000, 262.000000)
	registerVal16:setTopBottom(true, false, 99.690000, 136.310000)
	registerVal16.Image0:setImage(RegisterImage("uie_t7_hud_notif_blackmarket_left_fill"))
	registerVal16.Image1:setImage(RegisterImage("uie_t7_hud_notif_blackmarket_center_fill"))
	registerVal16.Image2:setImage(RegisterImage("uie_t7_hud_notif_blackmarket_right_fill"))
	registerVal2:addElement(registerVal16)
	registerVal2.RankUpNotificationFooterBacking = registerVal16
	registerVal17 = CoD.verticalScrollingTextBox18.new(arg0, arg1)
	registerVal17:setLeftRight(false, false, -117.000000, 117.000000)
	registerVal17:setTopBottom(true, false, 131.000000, 167.250000)
	registerVal17.textBox:setTTF("fonts/default.ttf")
	registerVal17.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	local function __FUNC_2628_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.textBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal17:linkToElementModel(registerVal2, "rewardCarouselItemSubtitle", true, __FUNC_2628_)
	registerVal2:addElement(registerVal17)
	registerVal2.verticalScrollingTextBox18 = registerVal17
	registerVal18 = LUI.UIText.new()
	registerVal18:setLeftRight(false, false, -130.000000, 130.000000)
	registerVal18:setTopBottom(true, false, 107.000000, 129.000000)
	registerVal18:setRGB(0.940000, 0.890000, 0.590000)
	registerVal18:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal18:setLetterSpacing(-1.000000)
	registerVal18:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal18:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_26FF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal18:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal18:linkToElementModel(registerVal2, "rewardCarouselItemTitle", true, __FUNC_26FF_)
	registerVal2:addElement(registerVal18)
	registerVal2.CardTitle = registerVal18
	local registerVal19 = CoD.BlackmarketRewards54i.new(arg0, arg1)
	registerVal19:setLeftRight(true, false, 50.470000, 238.140000)
	registerVal19:setTopBottom(true, false, 395.500000, 439.000000)
	registerVal19:setScale(0.900000)
	registerVal19.text:setText(Engine.Localize("MPUI_BM_CONTRACT_SPECIAL_CONTRACTS"))
	registerVal2:addElement(registerVal19)
	registerVal2.BlackmarketRewards54i = registerVal19
	local registerVal20 = {}
	local registerVal21 = {}
	local function __FUNC_27B6_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal11:completeAnimation()
		registerVal11.NotificationRewardBorder:completeAnimation()
		registerVal2.IndividualRewardItem1.NotificationRewardBorder:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal12.NotificationRewardBorder:completeAnimation()
		registerVal2.IndividualRewardItem2.NotificationRewardBorder:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal13.NotificationRewardBorder:completeAnimation()
		registerVal2.IndividualRewardItem3.NotificationRewardBorder:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal14.NotificationRewardBorder:completeAnimation()
		registerVal2.IndividualRewardItem4.NotificationRewardBorder:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal21.DefaultClip = __FUNC_27B6_
	registerVal20.DefaultState = registerVal21
	registerVal2.clipsPerState = registerVal20
	local function __FUNC_2ABA_(arg0)
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
		arg0.CardTitle:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2ABA_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

