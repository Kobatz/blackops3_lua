-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BorderBakedSolid")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveStroke")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
require("ui.uieditor.widgets.AAR.RewardsScreen.IndividualRewardItem")
require("ui.uieditor.widgets.Border")
require("ui.uieditor.widgets.Notifications.RankUp.RankUpNotification_FooterBacking01")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.RewardsCarouselItemInternal = registerVal1
function CoD.RewardsCarouselItemInternal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.RewardsCarouselItemInternal)
	registerVal2.id = "RewardsCarouselItemInternal"
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
	registerVal9:setLeftRight(false, false, -84.720000, 85.720000)
	registerVal9:setTopBottom(true, false, -21.000000, 148.000000)
	registerVal9:setRGB(ColorSet.RewardWeaponLevel.r, ColorSet.RewardWeaponLevel.g, ColorSet.RewardWeaponLevel.b)
	registerVal9:setAlpha(0.200000)
	registerVal9:setImage(RegisterImage("uie_t7_hud_notficationhighlight"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.highlight = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 87.000000, 186.000000)
	registerVal10:setTopBottom(true, false, 8.480000, 107.480000)
	registerVal10:setScale(0.600000)
	local function __FUNC_1D3D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "rewardCarouselItemImage", true, __FUNC_1D3D_)
	registerVal2:addElement(registerVal10)
	registerVal2.CardImage = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(false, false, -85.220000, 85.220000)
	registerVal11:setTopBottom(true, false, 173.000000, 193.000000)
	registerVal11:setText(Engine.Localize("MENU_AAR_PARAGON_LEVEL_GAIN"))
	registerVal11:setTTF("fonts/default.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1DF0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setAlpha(registerVal1)
		end
	end

	registerVal11:linkToElementModel(registerVal2, "paragonRankDescVisible", true, __FUNC_1DF0_)
	registerVal2:addElement(registerVal11)
	registerVal2.ParagonRankUpDesc = registerVal11
	local registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(false, false, -85.220000, 85.220000)
	registerVal12:setTopBottom(true, false, 388.500000, 408.500000)
	registerVal12:setText(Engine.Localize(LocalizeIntoString("PRESENCE_PLUS_NUM_MORE", "6")))
	registerVal12:setTTF("fonts/default.ttf")
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1E85_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setAlpha(registerVal1)
		end
	end

	registerVal12:linkToElementModel(registerVal2, "extraParagonIconsVisible", true, __FUNC_1E85_)
	registerVal2:addElement(registerVal12)
	registerVal2.ExtraParagonIconsText = registerVal12
	local registerVal13 = CoD.IndividualRewardItem.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 18.370000, 257.500000)
	registerVal13:setTopBottom(true, false, 173.000000, 233.000000)
	local function __FUNC_1F19_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:setAlpha(registerVal1)
		end
	end

	registerVal13:linkToElementModel(registerVal2, "reward1InfoVisible", true, __FUNC_1F19_)
	local function __FUNC_1FAD_(arg0)
		registerVal13:setModel(arg0, arg1)
	end

	registerVal13:linkToElementModel(registerVal2, "reward1Info", false, __FUNC_1FAD_)
	registerVal2:addElement(registerVal13)
	registerVal2.IndividualRewardItem1 = registerVal13
	local registerVal14 = CoD.IndividualRewardItem.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 18.370000, 257.500000)
	registerVal14:setTopBottom(true, false, 238.000000, 299.000000)
	local function __FUNC_1FFE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14:setAlpha(registerVal1)
		end
	end

	registerVal14:linkToElementModel(registerVal2, "reward2InfoVisible", true, __FUNC_1FFE_)
	local function __FUNC_2091_(arg0)
		registerVal14:setModel(arg0, arg1)
	end

	registerVal14:linkToElementModel(registerVal2, "reward2Info", false, __FUNC_2091_)
	registerVal2:addElement(registerVal14)
	registerVal2.IndividualRewardItem2 = registerVal14
	local registerVal15 = CoD.IndividualRewardItem.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 18.370000, 257.500000)
	registerVal15:setTopBottom(true, false, 303.000000, 364.000000)
	local function __FUNC_20E2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15:setAlpha(registerVal1)
		end
	end

	registerVal15:linkToElementModel(registerVal2, "reward3InfoVisible", true, __FUNC_20E2_)
	local function __FUNC_2175_(arg0)
		registerVal15:setModel(arg0, arg1)
	end

	registerVal15:linkToElementModel(registerVal2, "reward3Info", false, __FUNC_2175_)
	registerVal2:addElement(registerVal15)
	registerVal2.IndividualRewardItem3 = registerVal15
	local registerVal16 = CoD.IndividualRewardItem.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, 18.370000, 257.500000)
	registerVal16:setTopBottom(true, false, 368.000000, 429.000000)
	local function __FUNC_21C6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16:setAlpha(registerVal1)
		end
	end

	registerVal16:linkToElementModel(registerVal2, "reward4InfoVisible", true, __FUNC_21C6_)
	local function __FUNC_2259_(arg0)
		registerVal16:setModel(arg0, arg1)
	end

	registerVal16:linkToElementModel(registerVal2, "reward4Info", false, __FUNC_2259_)
	registerVal2:addElement(registerVal16)
	registerVal2.IndividualRewardItem4 = registerVal16
	local registerVal17 = CoD.Border.new(arg0, arg1)
	registerVal17:setLeftRight(true, false, 0.000000, 340.000000)
	registerVal17:setTopBottom(true, false, 0.000000, 520.000000)
	registerVal17:setAlpha(0.000000)
	registerVal2:addElement(registerVal17)
	registerVal2.Border0 = registerVal17
	local registerVal18 = CoD.RankUpNotification_FooterBacking01.new(arg0, arg1)
	registerVal18:setLeftRight(true, false, 14.000000, 262.000000)
	registerVal18:setTopBottom(true, false, 97.690000, 134.310000)
	registerVal18:setRGB(ColorSet.RewardWeaponLevel.r, ColorSet.RewardWeaponLevel.g, ColorSet.RewardWeaponLevel.b)
	registerVal18:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal18)
	registerVal2.RankUpNotificationFooterBacking = registerVal18
	local registerVal19 = LUI.UIText.new()
	registerVal19:setLeftRight(false, false, -126.000000, 126.000000)
	registerVal19:setTopBottom(true, false, 130.000000, 152.000000)
	registerVal19:setTTF("fonts/default.ttf")
	registerVal19:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal19:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_22AA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal19:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal19:linkToElementModel(registerVal2, "rewardCarouselItemSubtitle", true, __FUNC_22AA_)
	registerVal2:addElement(registerVal19)
	registerVal2.CardDescription = registerVal19
	local registerVal20 = LUI.UIText.new()
	registerVal20:setLeftRight(false, false, -130.000000, 130.000000)
	registerVal20:setTopBottom(true, false, 105.000000, 127.000000)
	registerVal20:setRGB(0.000000, 0.000000, 0.000000)
	registerVal20:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal20:setLetterSpacing(-1.000000)
	registerVal20:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal20:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_2362_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal20:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal20:linkToElementModel(registerVal2, "rewardCarouselItemTitle", true, __FUNC_2362_)
	registerVal2:addElement(registerVal20)
	registerVal2.CardTitle = registerVal20
	local registerVal21 = {}
	local registerVal22 = {}
	local function __FUNC_241A_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal9:completeAnimation()
		registerVal2.highlight:setLeftRight(false, false, -103.940000, 102.940000)
		registerVal2.highlight:setTopBottom(true, false, -29.500000, 155.000000)
		registerVal2.highlight:setRGB(0.270000, 0.850000, 1.000000)
		registerVal2.highlight:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal13:completeAnimation()
		registerVal13.NotificationRewardBorder:completeAnimation()
		registerVal2.IndividualRewardItem1.NotificationRewardBorder:setRGB(ColorSet.RewardRankup.r, ColorSet.RewardRankup.g, ColorSet.RewardRankup.b)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal14.NotificationRewardBorder:completeAnimation()
		registerVal2.IndividualRewardItem2.NotificationRewardBorder:setRGB(ColorSet.RewardRankup.r, ColorSet.RewardRankup.g, ColorSet.RewardRankup.b)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal15.NotificationRewardBorder:completeAnimation()
		registerVal2.IndividualRewardItem3:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.IndividualRewardItem3.NotificationRewardBorder:setRGB(ColorSet.RewardRankup.r, ColorSet.RewardRankup.g, ColorSet.RewardRankup.b)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal16.NotificationRewardBorder:completeAnimation()
		registerVal2.IndividualRewardItem4:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.IndividualRewardItem4.NotificationRewardBorder:setRGB(ColorSet.RewardRankup.r, ColorSet.RewardRankup.g, ColorSet.RewardRankup.b)
		registerVal2.clipFinished(registerVal16, {})
		registerVal18:completeAnimation()
		registerVal2.RankUpNotificationFooterBacking:setRGB(ColorSet.RewardRankup.r, ColorSet.RewardRankup.g, ColorSet.RewardRankup.b)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.CardDescription:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal22.DefaultClip = __FUNC_241A_
	registerVal21.DefaultState = registerVal22
	registerVal22 = {}
	local function __FUNC_2B1D_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal9:completeAnimation()
		registerVal2.highlight:setLeftRight(false, false, -201.000000, 202.000000)
		registerVal2.highlight:setTopBottom(true, false, -49.000000, 150.000000)
		registerVal2.highlight:setRGB(ColorSet.RewardWeaponLevel.r, ColorSet.RewardWeaponLevel.g, ColorSet.RewardWeaponLevel.b)
		registerVal2.highlight:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.CardImage:setLeftRight(true, false, -5.810000, 281.680000)
		registerVal2.CardImage:setTopBottom(true, false, -1.460000, 123.230000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal13:completeAnimation()
		registerVal13.NotificationRewardBorder:completeAnimation()
		registerVal2.IndividualRewardItem1.NotificationRewardBorder:setRGB(ColorSet.RewardWeaponLevel.r, ColorSet.RewardWeaponLevel.g, ColorSet.RewardWeaponLevel.b)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal14.NotificationRewardBorder:completeAnimation()
		registerVal2.IndividualRewardItem2.NotificationRewardBorder:setRGB(ColorSet.RewardWeaponLevel.r, ColorSet.RewardWeaponLevel.g, ColorSet.RewardWeaponLevel.b)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal15.NotificationRewardBorder:completeAnimation()
		registerVal2.IndividualRewardItem3.NotificationRewardBorder:setRGB(ColorSet.RewardWeaponLevel.r, ColorSet.RewardWeaponLevel.g, ColorSet.RewardWeaponLevel.b)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal16.NotificationRewardBorder:completeAnimation()
		registerVal2.IndividualRewardItem4.NotificationRewardBorder:setRGB(ColorSet.RewardWeaponLevel.r, ColorSet.RewardWeaponLevel.g, ColorSet.RewardWeaponLevel.b)
		registerVal2.clipFinished(registerVal16, {})
		registerVal18:completeAnimation()
		registerVal2.RankUpNotificationFooterBacking:setRGB(ColorSet.RewardWeaponLevel.r, ColorSet.RewardWeaponLevel.g, ColorSet.RewardWeaponLevel.b)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.CardDescription:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal22.DefaultClip = __FUNC_2B1D_
	registerVal21.WeaponLevelUp = registerVal22
	registerVal22 = {}
	local function __FUNC_32BB_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal9:completeAnimation()
		registerVal2.highlight:setLeftRight(false, false, -103.940000, 102.940000)
		registerVal2.highlight:setTopBottom(true, false, -29.500000, 155.000000)
		registerVal2.highlight:setRGB(0.270000, 0.850000, 1.000000)
		registerVal2.highlight:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.CardImage:setLeftRight(true, false, 8.000000, 268.110000)
		registerVal2.CardImage:setTopBottom(true, false, 30.480000, 97.690000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal13:completeAnimation()
		registerVal13.NotificationRewardBorder:completeAnimation()
		registerVal2.IndividualRewardItem1.NotificationRewardBorder:setRGB(ColorSet.RewardRankup.r, ColorSet.RewardRankup.g, ColorSet.RewardRankup.b)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal14.NotificationRewardBorder:completeAnimation()
		registerVal2.IndividualRewardItem2.NotificationRewardBorder:setRGB(ColorSet.RewardRankup.r, ColorSet.RewardRankup.g, ColorSet.RewardRankup.b)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal15.NotificationRewardBorder:completeAnimation()
		registerVal2.IndividualRewardItem3:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.IndividualRewardItem3.NotificationRewardBorder:setRGB(ColorSet.RewardRankup.r, ColorSet.RewardRankup.g, ColorSet.RewardRankup.b)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal16.NotificationRewardBorder:completeAnimation()
		registerVal2.IndividualRewardItem4:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.IndividualRewardItem4.NotificationRewardBorder:setRGB(ColorSet.RewardRankup.r, ColorSet.RewardRankup.g, ColorSet.RewardRankup.b)
		registerVal2.clipFinished(registerVal16, {})
		registerVal18:completeAnimation()
		registerVal2.RankUpNotificationFooterBacking:setRGB(ColorSet.RewardRankup.r, ColorSet.RewardRankup.g, ColorSet.RewardRankup.b)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.CardDescription:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal22.DefaultClip = __FUNC_32BB_
	registerVal21.ChallengeCompleted = registerVal22
	registerVal22 = {}
	local function __FUNC_3A57_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal9:completeAnimation()
		registerVal2.highlight:setLeftRight(false, false, -103.940000, 102.940000)
		registerVal2.highlight:setTopBottom(true, false, -29.500000, 155.000000)
		registerVal2.highlight:setRGB(0.270000, 0.850000, 1.000000)
		registerVal2.highlight:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal13:completeAnimation()
		registerVal13.NotificationRewardBorder:completeAnimation()
		registerVal2.IndividualRewardItem1.NotificationRewardBorder:setRGB(ColorSet.RewardRankup.r, ColorSet.RewardRankup.g, ColorSet.RewardRankup.b)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal14.NotificationRewardBorder:completeAnimation()
		registerVal2.IndividualRewardItem2.NotificationRewardBorder:setRGB(ColorSet.RewardRankup.r, ColorSet.RewardRankup.g, ColorSet.RewardRankup.b)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal15.NotificationRewardBorder:completeAnimation()
		registerVal2.IndividualRewardItem3:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.IndividualRewardItem3.NotificationRewardBorder:setRGB(ColorSet.RewardRankup.r, ColorSet.RewardRankup.g, ColorSet.RewardRankup.b)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal16.NotificationRewardBorder:completeAnimation()
		registerVal2.IndividualRewardItem4:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.IndividualRewardItem4.NotificationRewardBorder:setRGB(ColorSet.RewardRankup.r, ColorSet.RewardRankup.g, ColorSet.RewardRankup.b)
		registerVal2.clipFinished(registerVal16, {})
		registerVal18:completeAnimation()
		registerVal2.RankUpNotificationFooterBacking:setRGB(ColorSet.RewardRankup.r, ColorSet.RewardRankup.g, ColorSet.RewardRankup.b)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.CardDescription:setRGB(ColorSet.ParagonRank.r, ColorSet.ParagonRank.g, ColorSet.ParagonRank.b)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal22.DefaultClip = __FUNC_3A57_
	registerVal21.ParagonRankUp = registerVal22
	registerVal2.clipsPerState = registerVal21
	local registerVal23 = {}
	local registerVal24 = {}
	registerVal24.stateName = "WeaponLevelUp"
	local function __FUNC_41B6_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "rewardCarouselItemType", "weaponRankup")
	end

	registerVal24.condition = __FUNC_41B6_
	local registerVal25 = {}
	registerVal25.stateName = "ChallengeCompleted"
	local function __FUNC_4253_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "rewardCarouselItemType", "challengeCompleted")
	end

	registerVal25.condition = __FUNC_4253_
	local registerVal26 = {}
	registerVal26.stateName = "ParagonRankUp"
	local function __FUNC_42F5_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "rewardCarouselItemType", "paragonRankUp")
	end

	registerVal26.condition = __FUNC_42F5_
	registerVal23 = {registerVal24, registerVal25, registerVal26}
	registerVal2:mergeStateConditions(registerVal23)
	local function __FUNC_4394_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "rewardCarouselItemType"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "rewardCarouselItemType", true, __FUNC_4394_)
	local function __FUNC_44C0_(arg0)
		arg0.BorderBakedSolid0:close()
		arg0.cacButtonBoxLrgInactiveStroke0:close()
		arg0.FEButtonPanel0:close()
		arg0.IndividualRewardItem1:close()
		arg0.IndividualRewardItem2:close()
		arg0.IndividualRewardItem3:close()
		arg0.IndividualRewardItem4:close()
		arg0.Border0:close()
		arg0.RankUpNotificationFooterBacking:close()
		arg0.CardImage:close()
		arg0.ParagonRankUpDesc:close()
		arg0.ExtraParagonIconsText:close()
		arg0.CardDescription:close()
		arg0.CardTitle:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_44C0_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

