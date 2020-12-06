-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BorderBakedSolid")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveStroke")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
require("ui.uieditor.widgets.AAR.RewardsScreen.IndividualRewardItem")
require("ui.uieditor.widgets.Border")
require("ui.uieditor.widgets.Notifications.RankUp.RankUpNotification_FooterBacking01")
require("ui.uieditor.widgets.verticalScrollingTextBox18")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SpecialistRewardsCarouselItemInternal = registerVal1
function CoD.SpecialistRewardsCarouselItemInternal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SpecialistRewardsCarouselItemInternal)
	registerVal2.id = "SpecialistRewardsCarouselItemInternal"
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
	registerVal9:setLeftRight(false, false, -65.310000, 65.310000)
	registerVal9:setTopBottom(true, false, -13.310000, 117.310000)
	registerVal9:setRGB(0.160000, 0.160000, 0.160000)
	registerVal9:setAlpha(0.400000)
	registerVal9:setImage(RegisterImage("uie_t7_hud_notif_specialist_center_fill"))
	registerVal2:addElement(registerVal9)
	registerVal2.CenterFill = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, false, -65.310000, 65.310000)
	registerVal10:setTopBottom(true, false, -13.310000, 117.310000)
	registerVal10:setRGB(ColorSet.RewardSpecialist.r, ColorSet.RewardSpecialist.g, ColorSet.RewardSpecialist.b)
	registerVal10:setAlpha(0.200000)
	registerVal10:setImage(RegisterImage("uie_t7_hud_notif_specialist_side_fill"))
	registerVal2:addElement(registerVal10)
	registerVal2.SideFill = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, false, -65.310000, 65.310000)
	registerVal11:setTopBottom(true, false, -13.310000, 117.310000)
	registerVal11:setRGB(ColorSet.RewardSpecialist.r, ColorSet.RewardSpecialist.g, ColorSet.RewardSpecialist.b)
	registerVal11:setImage(RegisterImage("uie_t7_hud_notif_specialist_side_stroke"))
	registerVal2:addElement(registerVal11)
	registerVal2.SideStroke = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, false, -106.000000, 104.770000)
	registerVal12:setTopBottom(true, false, -54.670000, 154.330000)
	registerVal12:setRGB(ColorSet.RewardSpecialist.r, ColorSet.RewardSpecialist.g, ColorSet.RewardSpecialist.b)
	registerVal12:setAlpha(0.200000)
	registerVal12:setImage(RegisterImage("uie_t7_hud_notficationhighlight"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.highlight = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 59.610000, 211.610000)
	registerVal13:setTopBottom(true, false, -25.000000, 127.000000)
	registerVal13:setScale(0.600000)
	local function __FUNC_1D4E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal13:linkToElementModel(registerVal2, "rewardCarouselItemImage", true, __FUNC_1D4E_)
	registerVal2:addElement(registerVal13)
	registerVal2.CardImage = registerVal13
	local registerVal14 = CoD.IndividualRewardItem.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 18.370000, 257.500000)
	registerVal14:setTopBottom(true, false, 173.000000, 233.000000)
	registerVal14.NotificationRewardBorder:setRGB(ColorSet.RewardSpecialist.r, ColorSet.RewardSpecialist.g, ColorSet.RewardSpecialist.b)
	local function __FUNC_1E00_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14:setAlpha(registerVal1)
		end
	end

	registerVal14:linkToElementModel(registerVal2, "reward1InfoVisible", true, __FUNC_1E00_)
	local function __FUNC_1E95_(arg0)
		registerVal14:setModel(arg0, arg1)
	end

	registerVal14:linkToElementModel(registerVal2, "reward1Info", false, __FUNC_1E95_)
	registerVal2:addElement(registerVal14)
	registerVal2.IndividualRewardItem1 = registerVal14
	local registerVal15 = CoD.IndividualRewardItem.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 18.370000, 257.500000)
	registerVal15:setTopBottom(true, false, 238.000000, 299.000000)
	registerVal15.NotificationRewardBorder:setRGB(ColorSet.RewardSpecialist.r, ColorSet.RewardSpecialist.g, ColorSet.RewardSpecialist.b)
	local function __FUNC_1EE6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15:setAlpha(registerVal1)
		end
	end

	registerVal15:linkToElementModel(registerVal2, "reward2InfoVisible", true, __FUNC_1EE6_)
	local function __FUNC_1F79_(arg0)
		registerVal15:setModel(arg0, arg1)
	end

	registerVal15:linkToElementModel(registerVal2, "reward2Info", false, __FUNC_1F79_)
	registerVal2:addElement(registerVal15)
	registerVal2.IndividualRewardItem2 = registerVal15
	local registerVal16 = CoD.IndividualRewardItem.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, 18.370000, 257.500000)
	registerVal16:setTopBottom(true, false, 303.000000, 364.000000)
	registerVal16.NotificationRewardBorder:setRGB(ColorSet.RewardSpecialist.r, ColorSet.RewardSpecialist.g, ColorSet.RewardSpecialist.b)
	local function __FUNC_1FCA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16:setAlpha(registerVal1)
		end
	end

	registerVal16:linkToElementModel(registerVal2, "reward3InfoVisible", true, __FUNC_1FCA_)
	local function __FUNC_205D_(arg0)
		registerVal16:setModel(arg0, arg1)
	end

	registerVal16:linkToElementModel(registerVal2, "reward3Info", false, __FUNC_205D_)
	registerVal2:addElement(registerVal16)
	registerVal2.IndividualRewardItem3 = registerVal16
	local registerVal17 = CoD.IndividualRewardItem.new(arg0, arg1)
	registerVal17:setLeftRight(true, false, 18.370000, 257.500000)
	registerVal17:setTopBottom(true, false, 368.000000, 429.000000)
	registerVal17.NotificationRewardBorder:setRGB(ColorSet.RewardSpecialist.r, ColorSet.RewardSpecialist.g, ColorSet.RewardSpecialist.b)
	local function __FUNC_20AE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17:setAlpha(registerVal1)
		end
	end

	registerVal17:linkToElementModel(registerVal2, "reward4InfoVisible", true, __FUNC_20AE_)
	local function __FUNC_2141_(arg0)
		registerVal17:setModel(arg0, arg1)
	end

	registerVal17:linkToElementModel(registerVal2, "reward4Info", false, __FUNC_2141_)
	registerVal2:addElement(registerVal17)
	registerVal2.IndividualRewardItem4 = registerVal17
	local registerVal18 = CoD.Border.new(arg0, arg1)
	registerVal18:setLeftRight(true, false, 0.000000, 340.000000)
	registerVal18:setTopBottom(true, false, 0.000000, 520.000000)
	registerVal18:setAlpha(0.000000)
	registerVal2:addElement(registerVal18)
	registerVal2.Border0 = registerVal18
	local registerVal19 = CoD.RankUpNotification_FooterBacking01.new(arg0, arg1)
	registerVal19:setLeftRight(true, false, 14.000000, 262.000000)
	registerVal19:setTopBottom(true, false, 99.690000, 136.310000)
	registerVal19:setRGB(ColorSet.RewardSpecialist.r, ColorSet.RewardSpecialist.g, ColorSet.RewardSpecialist.b)
	registerVal19:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal19)
	registerVal2.RankUpNotificationFooterBacking = registerVal19
	local registerVal20 = LUI.UIText.new()
	registerVal20:setLeftRight(false, false, -130.000000, 130.000000)
	registerVal20:setTopBottom(true, false, 107.000000, 129.000000)
	registerVal20:setRGB(0.000000, 0.000000, 0.000000)
	registerVal20:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal20:setLetterSpacing(-1.000000)
	registerVal20:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal20:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_2192_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal20:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal20:linkToElementModel(registerVal2, "rewardCarouselItemTitle", true, __FUNC_2192_)
	registerVal2:addElement(registerVal20)
	registerVal2.CardTitle = registerVal20
	local registerVal21 = CoD.verticalScrollingTextBox18.new(arg0, arg1)
	registerVal21:setLeftRight(false, false, -119.000000, 119.000000)
	registerVal21:setTopBottom(true, false, 131.000000, 167.250000)
	registerVal21.textBox:setTTF("fonts/default.ttf")
	registerVal21.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	local function __FUNC_224A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal21.textBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal21:linkToElementModel(registerVal2, "rewardCarouselItemSubtitle", true, __FUNC_224A_)
	registerVal2:addElement(registerVal21)
	registerVal2.verticalScrollingTextBox18 = registerVal21
	local function __FUNC_231F_(arg0)
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

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_231F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

