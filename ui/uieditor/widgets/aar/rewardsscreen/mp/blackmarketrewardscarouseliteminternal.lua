-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveStroke")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
require("ui.uieditor.widgets.AAR.RewardsScreen.MP.BlackmarketRewardsCarouselFX")
require("ui.uieditor.widgets.Notifications.RankUp.RankUpNotification_FooterBacking01")
require("ui.uieditor.widgets.verticalScrollingTextBox18")
require("ui.uieditor.widgets.AAR.RewardsScreen.MP.BlackmarketIndividualRewardItem")
require("ui.uieditor.widgets.Border")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BlackmarketRewardsCarouselItemInternal = registerVal1
function CoD.BlackmarketRewardsCarouselItemInternal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BlackmarketRewardsCarouselItemInternal)
	registerVal2.id = "BlackmarketRewardsCarouselItemInternal"
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
	local registerVal4 = CoD.cac_ButtonBoxLrgInactiveStroke.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -1.770000, 1.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.cacButtonBoxLrgInactiveStroke0 = registerVal4
	local registerVal5 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 7.370000, -7.890000)
	registerVal5:setTopBottom(true, true, 8.480000, -9.480000)
	registerVal5:setRGB(0.240000, 0.240000, 0.260000)
	registerVal5:setAlpha(0.750000)
	registerVal2:addElement(registerVal5)
	registerVal2.FEButtonPanel0 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 32.230000, 243.000000)
	registerVal6:setTopBottom(true, false, -54.670000, 154.330000)
	registerVal6:setRGB(ColorSet.RewardCamo.r, ColorSet.RewardCamo.g, ColorSet.RewardCamo.b)
	registerVal6:setAlpha(0.200000)
	registerVal6:setImage(RegisterImage("uie_t7_hud_notficationhighlight"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.highlight = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 7.370000, 268.110000)
	registerVal7:setTopBottom(true, false, 8.480000, 154.330000)
	registerVal7:setImage(RegisterImage("uie_t7_rewards_backer_rank"))
	registerVal2:addElement(registerVal7)
	registerVal2.TitleBacking = registerVal7
	local registerVal8 = CoD.BlackmarketRewardsCarouselFX.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 53.200000, 222.800000)
	registerVal8:setTopBottom(true, false, 8.480000, 98.480000)
	local function __FUNC_1AD2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.CardImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "rewardCarouselItemImage", true, __FUNC_1AD2_)
	registerVal2:addElement(registerVal8)
	registerVal2.BlackmarketRewardsCarouselFX = registerVal8
	local registerVal9 = CoD.RankUpNotification_FooterBacking01.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 14.000000, 262.000000)
	registerVal9:setTopBottom(true, false, 99.690000, 136.310000)
	registerVal9:setRGB(ColorSet.RewardChallenge.r, ColorSet.RewardChallenge.g, ColorSet.RewardChallenge.b)
	registerVal9:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.CardTitleBacking = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(false, false, -130.000000, 130.000000)
	registerVal10:setTopBottom(true, false, 107.000000, 129.000000)
	registerVal10:setRGB(0.000000, 0.000000, 0.000000)
	registerVal10:setText(Engine.Localize("MENU_PURCHASE_AVAILABLE"))
	registerVal10:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal10:setLetterSpacing(-1.000000)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal10)
	registerVal2.CardTitle = registerVal10
	local registerVal11 = CoD.verticalScrollingTextBox18.new(arg0, arg1)
	registerVal11:setLeftRight(false, false, -119.000000, 119.000000)
	registerVal11:setTopBottom(true, false, 131.000000, 171.250000)
	registerVal11.textBox:setTTF("fonts/default.ttf")
	registerVal11.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	local function __FUNC_1BA3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.textBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "rewardCarouselItemTitle", true, __FUNC_1BA3_)
	registerVal2:addElement(registerVal11)
	registerVal2.verticalScrollingTextBox18 = registerVal11
	local registerVal12 = CoD.BlackmarketIndividualRewardItem.new(arg0, arg1)
	registerVal12:setLeftRight(false, false, -110.000000, 110.000000)
	registerVal12:setTopBottom(true, false, 173.000000, 233.000000)
	registerVal12.Title:setText(Engine.Localize("MENU_EARNED_THIS_GAME"))
	local function __FUNC_1C77_(arg0)
		registerVal12:setModel(arg0, arg1)
	end

	registerVal12:linkToElementModel(registerVal2, "reward1Info", false, __FUNC_1C77_)
	registerVal2:addElement(registerVal12)
	registerVal2.BlackmarketIndividualRewardItem = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(false, false, -120.000000, 120.000000)
	registerVal13:setTopBottom(true, false, 361.500000, 422.500000)
	registerVal13:setRGB(0.000000, 0.000000, 0.000000)
	registerVal13:setAlpha(0.200000)
	registerVal2:addElement(registerVal13)
	registerVal2.CryptokeyBalanceBacking = registerVal13
	local registerVal14 = CoD.Border.new(arg0, arg1)
	registerVal14:setLeftRight(false, false, -121.000000, 120.000000)
	registerVal14:setTopBottom(true, false, 361.500000, 422.500000)
	registerVal14:setAlpha(0.250000)
	registerVal2:addElement(registerVal14)
	registerVal2.Border = registerVal14
	local registerVal15 = LUI.UIText.new()
	registerVal15:setLeftRight(true, false, 38.500000, 238.500000)
	registerVal15:setTopBottom(true, false, 341.500000, 361.500000)
	registerVal15:setText(Engine.Localize("MENU_CRYPTOKEY_BALANCE"))
	registerVal15:setTTF("fonts/default.ttf")
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal15)
	registerVal2.CryptokeyBalanceTitle = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, 100.500000, 141.500000)
	registerVal16:setTopBottom(true, false, 372.000000, 413.000000)
	registerVal16:setImage(RegisterImage("uie_t7_icon_blackmarket_cryptokey"))
	registerVal2:addElement(registerVal16)
	registerVal2.CryptoIcon = registerVal16
	local registerVal17 = LUI.UIText.new()
	registerVal17:setLeftRight(true, false, 143.500000, 242.000000)
	registerVal17:setTopBottom(true, false, 378.500000, 404.500000)
	registerVal17:setTTF("fonts/default.ttf")
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal17:setShaderVector(0.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal17:setShaderVector(1.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal17:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1CC6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal17:linkToElementModel(registerVal2, "rewardCarouselItemSubtitle", true, __FUNC_1CC6_)
	registerVal2:addElement(registerVal17)
	registerVal2.CryptokeyBalanceNum = registerVal17
	local registerVal18 = CoD.BlackmarketIndividualRewardItem.new(arg0, arg1)
	registerVal18:setLeftRight(false, false, -110.000000, 110.000000)
	registerVal18:setTopBottom(true, false, 244.000000, 304.000000)
	registerVal18.Title:setText(Engine.Localize("CONTRACT_REWARD"))
	local function __FUNC_1D7E_(arg0)
		registerVal18:setModel(arg0, arg1)
	end

	registerVal18:linkToElementModel(registerVal2, "reward2Info", false, __FUNC_1D7E_)
	registerVal2:addElement(registerVal18)
	registerVal2.BonusCryptokeyBlackmarketIndividualRewardItem = registerVal18
	local registerVal19 = {}
	local registerVal20 = {}
	local function __FUNC_1DCE_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal10:completeAnimation()
		registerVal2.CardTitle:setText(Engine.Localize("MENU_PURCHASE_AVAILABLE"))
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.verticalScrollingTextBox18:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.BlackmarketIndividualRewardItem:setLeftRight(false, false, -120.000000, 120.000000)
		registerVal2.BlackmarketIndividualRewardItem:setTopBottom(true, false, 173.000000, 233.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.CryptokeyBalanceBacking:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Border:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.CryptokeyBalanceTitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.CryptoIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.CryptokeyBalanceNum:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.BonusCryptokeyBlackmarketIndividualRewardItem:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal20.DefaultClip = __FUNC_1DCE_
	registerVal19.DefaultState = registerVal20
	registerVal20 = {}
	local function __FUNC_22DD_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal10:completeAnimation()
		registerVal2.CardTitle:setText(Engine.Localize("MENU_PURCHASE_AVAILABLE"))
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.verticalScrollingTextBox18:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.BlackmarketIndividualRewardItem:setLeftRight(false, false, -110.000000, 110.000000)
		registerVal2.BlackmarketIndividualRewardItem:setTopBottom(true, false, 173.000000, 233.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.CryptokeyBalanceBacking:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Border:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.CryptokeyBalanceTitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.CryptoIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.CryptokeyBalanceNum:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.BonusCryptokeyBlackmarketIndividualRewardItem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal20.DefaultClip = __FUNC_22DD_
	registerVal19.ShowBonusCryptokeys = registerVal20
	registerVal2.clipsPerState = registerVal19
	local registerVal21 = {}
	local registerVal22 = {}
	registerVal22.stateName = "ShowBonusCryptokeys"
	local function __FUNC_27E8_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "showBonusCryptokeys")
	end

	registerVal22.condition = __FUNC_27E8_
	registerVal21 = {registerVal22}
	registerVal2:mergeStateConditions(registerVal21)
	local function __FUNC_2867_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "showBonusCryptokeys"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "showBonusCryptokeys", true, __FUNC_2867_)
	local function __FUNC_298D_(arg0)
		arg0.cacButtonBoxLrgInactiveStroke0:close()
		arg0.FEButtonPanel0:close()
		arg0.BlackmarketRewardsCarouselFX:close()
		arg0.CardTitleBacking:close()
		arg0.verticalScrollingTextBox18:close()
		arg0.BlackmarketIndividualRewardItem:close()
		arg0.Border:close()
		arg0.BonusCryptokeyBlackmarketIndividualRewardItem:close()
		arg0.CryptokeyBalanceNum:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_298D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

