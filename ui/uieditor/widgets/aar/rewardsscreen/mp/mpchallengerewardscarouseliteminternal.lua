-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BorderBakedSolid")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveStroke")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
require("ui.uieditor.widgets.AAR.RewardsScreen.IndividualRewardItem")
require("ui.uieditor.widgets.Border")
require("ui.uieditor.widgets.Notifications.RankUp.RankUpNotification_FooterBacking01")
require("ui.uieditor.widgets.verticalScrollingTextBox18")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MPChallengeRewardsCarouselItemInternal = registerVal1
function CoD.MPChallengeRewardsCarouselItemInternal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MPChallengeRewardsCarouselItemInternal)
	registerVal2.id = "MPChallengeRewardsCarouselItemInternal"
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
	registerVal9:setLeftRight(false, false, -106.000000, 104.770000)
	registerVal9:setTopBottom(true, false, -54.670000, 154.330000)
	registerVal9:setAlpha(0.250000)
	registerVal9:setZRot(50.000000)
	registerVal9:setScale(1.200000)
	registerVal9:setImage(RegisterImage("uie_t7_hud_notficationhighlight"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.highlight = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 217.610000, 57.610000)
	registerVal10:setTopBottom(true, false, -24.000000, 136.000000)
	registerVal10:setScale(0.600000)
	local function __FUNC_18F8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "rewardCarouselItemImage", true, __FUNC_18F8_)
	registerVal2:addElement(registerVal10)
	registerVal2.CardImage = registerVal10
	local registerVal11 = CoD.IndividualRewardItem.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 18.370000, 257.500000)
	registerVal11:setTopBottom(true, false, 173.000000, 233.000000)
	local function __FUNC_19AC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setAlpha(registerVal1)
		end
	end

	registerVal11:linkToElementModel(registerVal2, "reward1InfoVisible", true, __FUNC_19AC_)
	local function __FUNC_1A41_(arg0)
		registerVal11:setModel(arg0, arg1)
	end

	registerVal11:linkToElementModel(registerVal2, "reward1Info", false, __FUNC_1A41_)
	registerVal2:addElement(registerVal11)
	registerVal2.IndividualRewardItem1 = registerVal11
	local registerVal12 = CoD.IndividualRewardItem.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 18.370000, 257.500000)
	registerVal12:setTopBottom(true, false, 238.000000, 299.000000)
	local function __FUNC_1A92_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setAlpha(registerVal1)
		end
	end

	registerVal12:linkToElementModel(registerVal2, "reward2InfoVisible", true, __FUNC_1A92_)
	local function __FUNC_1B25_(arg0)
		registerVal12:setModel(arg0, arg1)
	end

	registerVal12:linkToElementModel(registerVal2, "reward2Info", false, __FUNC_1B25_)
	registerVal2:addElement(registerVal12)
	registerVal2.IndividualRewardItem2 = registerVal12
	local registerVal13 = CoD.IndividualRewardItem.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 18.370000, 257.500000)
	registerVal13:setTopBottom(true, false, 303.000000, 364.000000)
	local function __FUNC_1B76_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:setAlpha(registerVal1)
		end
	end

	registerVal13:linkToElementModel(registerVal2, "reward3InfoVisible", true, __FUNC_1B76_)
	local function __FUNC_1C09_(arg0)
		registerVal13:setModel(arg0, arg1)
	end

	registerVal13:linkToElementModel(registerVal2, "reward3Info", false, __FUNC_1C09_)
	registerVal2:addElement(registerVal13)
	registerVal2.IndividualRewardItem3 = registerVal13
	local registerVal14 = CoD.IndividualRewardItem.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 18.370000, 257.500000)
	registerVal14:setTopBottom(true, false, 368.000000, 429.000000)
	local function __FUNC_1C5A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14:setAlpha(registerVal1)
		end
	end

	registerVal14:linkToElementModel(registerVal2, "reward4InfoVisible", true, __FUNC_1C5A_)
	local function __FUNC_1CED_(arg0)
		registerVal14:setModel(arg0, arg1)
	end

	registerVal14:linkToElementModel(registerVal2, "reward4Info", false, __FUNC_1CED_)
	registerVal2:addElement(registerVal14)
	registerVal2.IndividualRewardItem4 = registerVal14
	local registerVal15 = CoD.Border.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 0.000000, 340.000000)
	registerVal15:setTopBottom(true, false, 0.000000, 520.000000)
	registerVal15:setAlpha(0.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.Border0 = registerVal15
	local registerVal16 = CoD.RankUpNotification_FooterBacking01.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, 14.000000, 262.000000)
	registerVal16:setTopBottom(true, false, 99.690000, 136.310000)
	registerVal16:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal16)
	registerVal2.RankUpNotificationFooterBacking = registerVal16
	local registerVal17 = CoD.verticalScrollingTextBox18.new(arg0, arg1)
	registerVal17:setLeftRight(false, false, -117.000000, 117.000000)
	registerVal17:setTopBottom(true, false, 131.000000, 167.250000)
	registerVal17.textBox:setTTF("fonts/default.ttf")
	registerVal17.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	local function __FUNC_1D3E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.textBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal17:linkToElementModel(registerVal2, "rewardCarouselItemSubtitle", true, __FUNC_1D3E_)
	registerVal2:addElement(registerVal17)
	registerVal2.verticalScrollingTextBox18 = registerVal17
	local registerVal18 = LUI.UIText.new()
	registerVal18:setLeftRight(false, false, -130.000000, 130.000000)
	registerVal18:setTopBottom(true, false, 107.000000, 129.000000)
	registerVal18:setRGB(0.000000, 0.000000, 0.000000)
	registerVal18:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal18:setLetterSpacing(-1.000000)
	registerVal18:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal18:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1E13_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal18:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal18:linkToElementModel(registerVal2, "rewardCarouselItemTitle", true, __FUNC_1E13_)
	registerVal2:addElement(registerVal18)
	registerVal2.CardTitle = registerVal18
	local registerVal19 = {}
	local registerVal20 = {}
	local function __FUNC_1ECA_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal9:completeAnimation()
		registerVal2.highlight:setRGB(ColorSet.RewardChallenge.r, ColorSet.RewardChallenge.g, ColorSet.RewardChallenge.b)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal11.NotificationRewardBorder:completeAnimation()
		registerVal2.IndividualRewardItem1.NotificationRewardBorder:setRGB(ColorSet.RewardChallenge.r, ColorSet.RewardChallenge.g, ColorSet.RewardChallenge.b)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal12.NotificationRewardBorder:completeAnimation()
		registerVal2.IndividualRewardItem2.NotificationRewardBorder:setRGB(ColorSet.RewardChallenge.r, ColorSet.RewardChallenge.g, ColorSet.RewardChallenge.b)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal13.NotificationRewardBorder:completeAnimation()
		registerVal2.IndividualRewardItem3.NotificationRewardBorder:setRGB(ColorSet.RewardChallenge.r, ColorSet.RewardChallenge.g, ColorSet.RewardChallenge.b)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal14.NotificationRewardBorder:completeAnimation()
		registerVal2.IndividualRewardItem4.NotificationRewardBorder:setRGB(ColorSet.RewardChallenge.r, ColorSet.RewardChallenge.g, ColorSet.RewardChallenge.b)
		registerVal2.clipFinished(registerVal14, {})
		registerVal16:completeAnimation()
		registerVal2.RankUpNotificationFooterBacking:setRGB(ColorSet.RewardChallenge.r, ColorSet.RewardChallenge.g, ColorSet.RewardChallenge.b)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal20.DefaultClip = __FUNC_1ECA_
	registerVal19.DefaultState = registerVal20
	registerVal20 = {}
	local function __FUNC_2499_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal9:completeAnimation()
		registerVal2.highlight:setRGB(ColorSet.RewardArenaChallenge.r, ColorSet.RewardArenaChallenge.g, ColorSet.RewardArenaChallenge.b)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal11.NotificationRewardBorder:completeAnimation()
		registerVal2.IndividualRewardItem1.NotificationRewardBorder:setRGB(ColorSet.RewardArenaChallenge.r, ColorSet.RewardArenaChallenge.g, ColorSet.RewardArenaChallenge.b)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal12.NotificationRewardBorder:completeAnimation()
		registerVal2.IndividualRewardItem2.NotificationRewardBorder:setRGB(ColorSet.RewardArenaChallenge.r, ColorSet.RewardArenaChallenge.g, ColorSet.RewardArenaChallenge.b)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal13.NotificationRewardBorder:completeAnimation()
		registerVal2.IndividualRewardItem3.NotificationRewardBorder:setRGB(ColorSet.RewardArenaChallenge.r, ColorSet.RewardArenaChallenge.g, ColorSet.RewardArenaChallenge.b)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal14.NotificationRewardBorder:completeAnimation()
		registerVal2.IndividualRewardItem4.NotificationRewardBorder:setRGB(ColorSet.RewardArenaChallenge.r, ColorSet.RewardArenaChallenge.g, ColorSet.RewardArenaChallenge.b)
		registerVal2.clipFinished(registerVal14, {})
		registerVal16:completeAnimation()
		registerVal2.RankUpNotificationFooterBacking:setRGB(ColorSet.RewardArenaChallenge.r, ColorSet.RewardArenaChallenge.g, ColorSet.RewardArenaChallenge.b)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal20.DefaultClip = __FUNC_2499_
	registerVal19.ArenaChallenge = registerVal20
	registerVal2.clipsPerState = registerVal19
	local registerVal21 = {}
	local registerVal22 = {}
	registerVal22.stateName = "ArenaChallenge"
	local function __FUNC_2A6E_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "rewardCarouselItemType", "arena")
	end

	registerVal22.condition = __FUNC_2A6E_
	registerVal21 = {registerVal22}
	registerVal2:mergeStateConditions(registerVal21)
	local function __FUNC_2B04_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "rewardCarouselItemType"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "rewardCarouselItemType", true, __FUNC_2B04_)
	local function __FUNC_2C30_(arg0)
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
		arg0.CardImage:close()
		arg0.CardTitle:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2C30_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

