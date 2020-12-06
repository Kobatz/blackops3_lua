-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.CallingCards.CallingCards_FrameWidget")
require("ui.uieditor.widgets.StartMenu.StartMenu_Identity_SubTitle")
require("ui.uieditor.widgets.BlackMarket.BM_GoldBarMed")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.Border")
require("ui.uieditor.widgets.Challenges.Challenges_TierIcon")
require("ui.uieditor.widgets.Challenges.Challenges_XPIndicator")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.WeaponNameWidget")
require("ui.uieditor.widgets.CAC.cac_lock")
require("ui.uieditor.widgets.BlackMarket.BM_Contracts_LockBars")
local function __FUNC_5A6_(arg0)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.GetModel(registerVal3, "maxTier")
	local registerVal4 = Engine.GetGlobalModel()
	registerVal3 = Engine.GetModel(registerVal4, "currentTier")
	local registerVal5 = Engine.GetGlobalModel()
	registerVal4 = Engine.GetModel(registerVal5, "tierXP")
	if registerVal2 ~= nil and registerVal3 == nil or registerVal4 == nil then
		return {}
	end
	registerVal5 = Engine.GetModelValue(registerVal2)
	local registerVal6 = Engine.GetModelValue(registerVal3)
	local registerVal7 = Engine.GetModelValue(registerVal4)
	if registerVal5 ~= nil and registerVal6 == nil or registerVal7 == nil then
		return {}
	end
	for index9=0.000000, registerVal5, 1.000000 do
		local registerVal15 = {}
		local registerVal16 = {}
		local registerVal17 = Engine.Localize(("CHALLENGE_TIER_" .. index9))
		registerVal16.tierText = registerVal17
		registerVal16.isReached = true
		if index9 ~= registerVal6 then
		end
		registerVal16.isCurrentTier = true
		registerVal16.tierXP = registerVal7
		registerVal15.models = registerVal16
		registerVal15.properties = {}
		table.insert({}, registerVal15)
		if index9 == registerVal6 then
		end
	end
	return {}
end

local registerVal1 = DataSourceHelpers.ListSetup("TierIconList", __FUNC_5A6_, true)
DataSources.TierIconList = registerVal1
registerVal1 = InheritFrom(LUI.UIElement)
CoD.Challenges_CallingCardProfiler = registerVal1
function CoD.Challenges_CallingCardProfiler.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Challenges_CallingCardProfiler)
	registerVal2.id = "Challenges_CallingCardProfiler"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 350.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 460.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ButtonBoxLrgInactive.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 1.000000, 92.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxButtonLrgInactive = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 3.000000, -2.000000)
	registerVal4:setTopBottom(true, false, 3.000000, 89.000000)
	registerVal4:setRGB(0.110000, 0.110000, 0.110000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.bgImage = registerVal4
	local registerVal5 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.StartMenuframenoBG0 = registerVal5
	local registerVal6 = CoD.CallingCards_FrameWidget.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, 0.000000, 0.000000)
	registerVal6:setTopBottom(false, false, -196.000000, -196.000000)
	registerVal6.CardIconFrame:setScale(0.720000)
	local function __FUNC_299F_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_299F_)
	registerVal2:addElement(registerVal6)
	registerVal2.SelectedCardIcon = registerVal6
	local registerVal7 = CoD.StartMenu_Identity_SubTitle.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 16.000000, 134.000000)
	registerVal7:setTopBottom(true, false, 324.500000, 350.500000)
	registerVal7.SubTitle:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	local function __FUNC_29EE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.SubTitle:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "tierStatus", true, __FUNC_29EE_)
	registerVal2:addElement(registerVal7)
	registerVal2.SubTitle = registerVal7
	local registerVal8 = CoD.BM_GoldBarMed.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 3.000000, 348.000000)
	registerVal8:setTopBottom(true, false, 32.500000, 62.400000)
	registerVal8:setAlpha(0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.BMGoldBarMed = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, -36.250000, 32.250000)
	registerVal9:setTopBottom(true, false, 11.750000, 80.250000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setImage(RegisterImage("uie_t7_icon_blackmarket_encryptedicon_large"))
	registerVal2:addElement(registerVal9)
	registerVal2.blackMarketBrandIcon = registerVal9
	local registerVal10 = CoD.cac_ButtonBoxLrgInactiveDiags.new(arg0, arg1)
	registerVal10:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal10:setTopBottom(true, false, 1.000000, 93.250000)
	registerVal10:setAlpha(0.300000)
	registerVal2:addElement(registerVal10)
	registerVal2.BoxButtonLrgInactiveDiag = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 20.500000, 327.000000)
	registerVal11:setTopBottom(true, false, 255.500000, 267.500000)
	registerVal11:setRGB(1.000000, 0.350000, 0.000000)
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	registerVal11:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_2AC4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal11:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "statPercent", true, __FUNC_2AC4_)
	registerVal2:addElement(registerVal11)
	registerVal2.ProgressBar = registerVal11
	local registerVal12 = CoD.Border.new(arg0, arg1)
	registerVal12:setLeftRight(true, true, 19.000000, -23.000000)
	registerVal12:setTopBottom(true, false, 255.500000, 267.500000)
	registerVal2:addElement(registerVal12)
	registerVal2.ProgressBarBorder = registerVal12
	local registerVal13 = LUI.UITightText.new()
	registerVal13:setLeftRight(true, false, 20.500000, 46.500000)
	registerVal13:setTopBottom(true, false, 276.500000, 296.500000)
	registerVal13:setTTF("fonts/default.ttf")
	local function __FUNC_2C1C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal13:linkToElementModel(registerVal2, "statFractionText", true, __FUNC_2C1C_)
	registerVal2:addElement(registerVal13)
	registerVal2.ProgressFraction = registerVal13
	local registerVal14 = LUI.GridLayout.new(arg0, arg1, false, 0.000000, 0.000000, -61.000000, 0.000000, nil, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal14:setLeftRight(true, false, 16.000000, 252.000000)
	registerVal14:setTopBottom(true, false, 354.500000, 430.500000)
	registerVal14:setWidgetType(CoD.Challenges_TierIcon)
	registerVal14:setHorizontalCount(5.000000)
	registerVal14:setSpacing(-61.000000)
	registerVal14:setDataSource("TierIconList")
	registerVal2:addElement(registerVal14)
	registerVal2.TierList = registerVal14
	local registerVal15 = CoD.Challenges_XPIndicator.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 236.000000, 327.000000)
	registerVal15:setTopBottom(true, false, 270.500000, 302.500000)
	local function __FUNC_2CD6_(arg0)
		registerVal15:setModel(arg0, arg1)
	end

	registerVal15:linkToElementModel(registerVal2, nil, false, __FUNC_2CD6_)
	local function __FUNC_2D26_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15.XPText:setText(LocalizeIntoString("CPUI_XP_BONUS", registerVal1))
		end
	end

	registerVal15:linkToElementModel(registerVal2, "xp", true, __FUNC_2D26_)
	local registerVal18 = {}
	local registerVal19 = {}
	registerVal19.stateName = "Hidden"
	local function __FUNC_2E13_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueNonEmptyString(arg2, arg1, "xp")
		return (not registerVal3)
	end

	registerVal19.condition = __FUNC_2E13_
	registerVal18 = {registerVal19}
	registerVal15:mergeStateConditions(registerVal18)
	local function __FUNC_2E8C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "xp"
		arg0:updateElementState(registerVal15, registerVal4)
	end

	registerVal15:linkToElementModel(registerVal15, "xp", true, __FUNC_2E8C_)
	registerVal2:addElement(registerVal15)
	registerVal2.XPIndicator = registerVal15
	local registerVal16 = CoD.WeaponNameWidget.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, 19.000000, 337.500000)
	registerVal16:setTopBottom(true, false, 103.000000, 137.000000)
	local function __FUNC_2FA4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16.weaponNameLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal16:linkToElementModel(registerVal2, "title", true, __FUNC_2FA4_)
	registerVal2:addElement(registerVal16)
	registerVal2.EmblemName = registerVal16
	local registerVal17 = LUI.UIText.new()
	registerVal17:setLeftRight(true, false, 20.000000, 338.000000)
	registerVal17:setTopBottom(true, false, 141.000000, 161.000000)
	registerVal17:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal17:setLetterSpacing(0.500000)
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_3083_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal17:linkToElementModel(registerVal2, "description", true, __FUNC_3083_)
	registerVal2:addElement(registerVal17)
	registerVal2.EmblemSubtitle = registerVal17
	registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(true, false, 1.000000, 349.000000)
	registerVal18:setTopBottom(true, false, 32.500000, 62.400000)
	registerVal18:setRGB(0.000000, 0.000000, 0.000000)
	registerVal18:setAlpha(0.400000)
	registerVal18:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_edges"))
	registerVal18:setShaderVector(0.000000, 0.020000, 0.020000, 0.020000, 0.020000)
	registerVal2:addElement(registerVal18)
	registerVal2.TitleBg = registerVal18
	registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(true, false, 175.000000, 179.000000)
	registerVal19:setTopBottom(true, false, 136.000000, 495.000000)
	registerVal19:setZRot(-90.000000)
	registerVal19:setImage(RegisterImage("uie_t7_menu_frontend_featuredlline"))
	registerVal19:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal19)
	registerVal2.featlineleft = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(true, false, 175.000000, 179.000000)
	registerVal20:setTopBottom(true, false, 39.000000, 398.000000)
	registerVal20:setZRot(-90.000000)
	registerVal20:setImage(RegisterImage("uie_t7_menu_frontend_featuredlline"))
	registerVal20:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal20)
	registerVal2.featlineleft1 = registerVal20
	local registerVal21 = LUI.UIText.new()
	registerVal21:setLeftRight(true, false, 151.000000, 300.000000)
	registerVal21:setTopBottom(true, false, 38.000000, 60.000000)
	registerVal21:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal21:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal21:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_313A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal21:setText(Engine.Localize(PrependLocalizeString("CHALLENGE_TIER", LocalizeString(PrependString("CHALLENGE_TIER_", registerVal1)))))
		end
	end

	registerVal21:linkToElementModel(registerVal2, "maxTier", true, __FUNC_313A_)
	registerVal2:addElement(registerVal21)
	registerVal2.TierText = registerVal21
	local registerVal22 = CoD.cac_lock.new(arg0, arg1)
	registerVal22:setLeftRight(true, false, 117.000000, 149.000000)
	registerVal22:setTopBottom(true, false, 31.950000, 63.950000)
	registerVal2:addElement(registerVal22)
	registerVal2.LockedIcon = registerVal22
	local registerVal23 = LUI.UIImage.new()
	registerVal23:setLeftRight(true, false, 175.000000, 179.000000)
	registerVal23:setTopBottom(true, false, -117.000000, 242.000000)
	registerVal23:setZRot(-90.000000)
	registerVal23:setImage(RegisterImage("uie_t7_menu_frontend_featuredlline"))
	registerVal23:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal23)
	registerVal2.featlineleft0 = registerVal23
	local registerVal24 = LUI.UIImage.new()
	registerVal24:setLeftRight(true, false, 175.000000, 179.000000)
	registerVal24:setTopBottom(true, false, -147.000000, 212.000000)
	registerVal24:setZRot(-90.000000)
	registerVal24:setImage(RegisterImage("uie_t7_menu_frontend_featuredlline"))
	registerVal24:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal24)
	registerVal2.featlineleft000 = registerVal24
	local registerVal25 = CoD.BM_Contracts_LockBars.new(arg0, arg1)
	registerVal25:setLeftRight(true, false, 179.800000, 341.800000)
	registerVal25:setTopBottom(true, false, 28.000000, 63.000000)
	registerVal25:setAlpha(0.000000)
	registerVal2:addElement(registerVal25)
	registerVal2.BMContractsLockBars = registerVal25
	local registerVal26 = CoD.BM_Contracts_LockBars.new(arg0, arg1)
	registerVal26:setLeftRight(true, false, 10.800000, 163.800000)
	registerVal26:setTopBottom(true, false, 28.000000, 63.000000)
	registerVal26:setAlpha(0.000000)
	registerVal26:setYRot(180.000000)
	registerVal2:addElement(registerVal26)
	registerVal2.BMContractsLockBars0 = registerVal26
	local registerVal27 = LUI.UIImage.new()
	registerVal27:setLeftRight(true, false, 129.500000, 216.950000)
	registerVal27:setTopBottom(true, false, 4.000000, 91.450000)
	registerVal27:setAlpha(0.000000)
	registerVal27:setImage(RegisterImage("uie_t7_bm_special_contracts_logo"))
	registerVal2:addElement(registerVal27)
	registerVal2.bmContractBrandIcon = registerVal27
	local registerVal28 = {}
	registerVal28.left = registerVal26
	registerVal25.navigation = registerVal28
	registerVal28 = {}
	registerVal28.right = registerVal25
	registerVal26.navigation = registerVal28
	registerVal28 = {}
	local registerVal29 = {}
	local function __FUNC_3291_()
		registerVal2:setupElementClipCounter(21.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal6:completeAnimation()
		registerVal2.SelectedCardIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.SubTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ProgressBar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.ProgressBarBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.ProgressFraction:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.TierList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.XPIndicator:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal18:completeAnimation()
		registerVal2.TitleBg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.featlineleft:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.featlineleft1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.TierText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.LockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.featlineleft0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.featlineleft000:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal29.DefaultClip = __FUNC_3291_
	registerVal28.DefaultState = registerVal29
	registerVal29 = {}
	local function __FUNC_3AD0_()
		registerVal2:setupElementClipCounter(19.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.bgImage:setLeftRight(true, true, 3.000000, -2.000000)
		registerVal2.bgImage:setTopBottom(true, false, 3.000000, 89.000000)
		registerVal2.bgImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.SelectedCardIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.SubTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BMGoldBarMed:setLeftRight(true, false, 16.000000, 334.000000)
		registerVal2.BMGoldBarMed:setTopBottom(true, false, 32.180000, 62.080000)
		registerVal2.BMGoldBarMed:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.blackMarketBrandIcon:setLeftRight(false, false, -28.250000, 36.250000)
		registerVal2.blackMarketBrandIcon:setTopBottom(true, false, 13.750000, 78.250000)
		registerVal2.blackMarketBrandIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ProgressBar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.ProgressBarBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.ProgressFraction:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.TierList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.XPIndicator:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal18:completeAnimation()
		registerVal2.TitleBg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.featlineleft:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.featlineleft1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.TierText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.LockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.featlineleft0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.featlineleft000:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal24, {})
	end

	registerVal29.DefaultClip = __FUNC_3AD0_
	registerVal28.BMClassfied = registerVal29
	registerVal29 = {}
	local function __FUNC_4394_()
		registerVal2:setupElementClipCounter(22.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.bgImage:setLeftRight(true, true, 3.000000, -2.000000)
		registerVal2.bgImage:setTopBottom(true, false, 3.000000, 89.000000)
		registerVal2.bgImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.SelectedCardIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.SubTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BMGoldBarMed:setLeftRight(true, false, 16.000000, 334.000000)
		registerVal2.BMGoldBarMed:setTopBottom(true, false, 32.180000, 62.080000)
		registerVal2.BMGoldBarMed:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.blackMarketBrandIcon:setLeftRight(false, false, -28.250000, 36.250000)
		registerVal2.blackMarketBrandIcon:setTopBottom(true, false, 13.750000, 78.250000)
		registerVal2.blackMarketBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ProgressBar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.ProgressBarBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.ProgressFraction:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.TierList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.XPIndicator:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal18:completeAnimation()
		registerVal2.TitleBg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.featlineleft:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.featlineleft1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.TierText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.LockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.featlineleft0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.featlineleft000:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.BMContractsLockBars:setLeftRight(true, false, 179.800000, 341.800000)
		registerVal2.BMContractsLockBars:setTopBottom(true, false, 28.000000, 63.000000)
		registerVal2.BMContractsLockBars:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.BMContractsLockBars0:setLeftRight(true, false, 10.800000, 163.800000)
		registerVal2.BMContractsLockBars0:setTopBottom(true, false, 28.000000, 63.000000)
		registerVal2.BMContractsLockBars0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.bmContractBrandIcon:setLeftRight(true, false, 129.500000, 216.950000)
		registerVal2.bmContractBrandIcon:setTopBottom(true, false, 4.000000, 91.450000)
		registerVal2.bmContractBrandIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal29.DefaultClip = __FUNC_4394_
	registerVal28.ContractClassified = registerVal29
	registerVal29 = {}
	local function __FUNC_4E9E_()
		registerVal2:setupElementClipCounter(20.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal6:completeAnimation()
		registerVal2.SelectedCardIcon:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.SubTitle:setLeftRight(true, false, 16.000000, 134.000000)
		registerVal2.SubTitle:setTopBottom(true, false, 324.500000, 350.500000)
		registerVal2.SubTitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ProgressBar:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.ProgressBarBorder:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.ProgressFraction:setLeftRight(true, false, 20.500000, 80.500000)
		registerVal2.ProgressFraction:setTopBottom(true, false, 276.500000, 296.500000)
		registerVal2.ProgressFraction:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.TierList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.XPIndicator:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal18:completeAnimation()
		registerVal2.TitleBg:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.featlineleft:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.featlineleft1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.TierText:setLeftRight(true, false, 151.000000, 300.000000)
		registerVal2.TierText:setTopBottom(true, false, 38.000000, 60.000000)
		registerVal2.TierText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.LockedIcon:setLeftRight(true, false, 117.000000, 149.000000)
		registerVal2.LockedIcon:setTopBottom(true, false, 31.950000, 63.950000)
		registerVal2.LockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.featlineleft0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal25:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal29.DefaultClip = __FUNC_4E9E_
	registerVal28.Locked = registerVal29
	registerVal29 = {}
	local function __FUNC_5845_()
		registerVal2:setupElementClipCounter(19.000000)
		registerVal6:completeAnimation()
		registerVal2.SelectedCardIcon:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.SubTitle:setLeftRight(true, false, 16.000000, 134.000000)
		registerVal2.SubTitle:setTopBottom(true, false, 225.500000, 251.500000)
		registerVal2.SubTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.ProgressBar:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.ProgressBarBorder:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.ProgressFraction:setLeftRight(true, false, 20.500000, 80.500000)
		registerVal2.ProgressFraction:setTopBottom(true, false, 276.500000, 296.500000)
		registerVal2.ProgressFraction:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.TierList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.XPIndicator:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal18:completeAnimation()
		registerVal2.TitleBg:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.featlineleft:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.featlineleft1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.TierText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.LockedIcon:setLeftRight(true, false, 153.000000, 185.000000)
		registerVal2.LockedIcon:setTopBottom(true, false, 32.500000, 64.500000)
		registerVal2.LockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.featlineleft0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.featlineleft000:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal29.DefaultClip = __FUNC_5845_
	registerVal28.LockedOneTier = registerVal29
	registerVal29 = {}
	local function __FUNC_611E_()
		registerVal2:setupElementClipCounter(19.000000)
		registerVal6:completeAnimation()
		registerVal2.SelectedCardIcon:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.SubTitle:setLeftRight(true, false, 16.000000, 134.000000)
		registerVal2.SubTitle:setTopBottom(true, false, 225.500000, 251.500000)
		registerVal2.SubTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.ProgressBar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.ProgressBarBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.ProgressFraction:setLeftRight(true, false, 20.500000, 80.500000)
		registerVal2.ProgressFraction:setTopBottom(true, false, 276.500000, 296.500000)
		registerVal2.ProgressFraction:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.TierList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.XPIndicator:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal18:completeAnimation()
		registerVal2.TitleBg:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.featlineleft:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.featlineleft1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.TierText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.LockedIcon:setLeftRight(true, false, 153.000000, 185.000000)
		registerVal2.LockedIcon:setTopBottom(true, false, 32.500000, 64.500000)
		registerVal2.LockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.featlineleft0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.featlineleft000:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal29.DefaultClip = __FUNC_611E_
	registerVal28.LockedHideProgress = registerVal29
	registerVal2.clipsPerState = registerVal28
	local registerVal30 = {}
	local registerVal31 = {}
	registerVal31.stateName = "BMClassfied"
	local function __FUNC_69F6_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isBMClassified")
	end

	registerVal31.condition = __FUNC_69F6_
	local registerVal32 = {}
	registerVal32.stateName = "ContractClassified"
	local function __FUNC_6A6E_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal32.condition = __FUNC_6A6E_
	local registerVal33 = {}
	registerVal33.stateName = "Locked"
	local function __FUNC_6AB9_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "isLocked")
		if registerVal3 then
			registerVal3 = IsSelfModelValueTrue(arg2, arg1, "hideProgress")
			if not registerVal3 then
				registerVal3 = IsSelfModelValueGreaterThan(arg2, arg1, "maxTier", 0.000000)
			else
			end
		end
		return true
	end

	registerVal33.condition = __FUNC_6AB9_
	local registerVal34 = {}
	registerVal34.stateName = "LockedOneTier"
	local function __FUNC_6BC5_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "isLocked")
		if registerVal3 then
			registerVal3 = IsSelfModelValueTrue(arg2, arg1, "hideProgress")
			if not registerVal3 then
				registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "maxTier", 0.000000)
			else
			end
		end
		return true
	end

	registerVal34.condition = __FUNC_6BC5_
	local registerVal35 = {}
	registerVal35.stateName = "LockedHideProgress"
	local function __FUNC_6CCD_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "isLocked")
		if registerVal3 then
			registerVal3 = IsSelfModelValueTrue(arg2, arg1, "hideProgress")
		end
		return registerVal3
	end

	registerVal35.condition = __FUNC_6CCD_
	registerVal30 = {registerVal31, registerVal32, registerVal33, registerVal34, registerVal35}
	registerVal2:mergeStateConditions(registerVal30)
	local function __FUNC_6D72_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isBMClassified", true, __FUNC_6D72_)
	local function __FUNC_6E94_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isLocked"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isLocked", true, __FUNC_6E94_)
	local function __FUNC_6FB2_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hideProgress"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "hideProgress", true, __FUNC_6FB2_)
	local function __FUNC_70D2_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "maxTier"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "maxTier", true, __FUNC_70D2_)
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal25.id = "BMContractsLockBars"
	registerVal26.id = "BMContractsLockBars0"
	local function __FUNC_71ED_(arg0, arg1)
		local registerVal2 = arg0.BMContractsLockBars:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_71ED_)
	local function __FUNC_72FB_(arg0)
		arg0.BoxButtonLrgInactive:close()
		arg0.StartMenuframenoBG0:close()
		arg0.SelectedCardIcon:close()
		arg0.SubTitle:close()
		arg0.BMGoldBarMed:close()
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.ProgressBarBorder:close()
		arg0.TierList:close()
		arg0.XPIndicator:close()
		arg0.EmblemName:close()
		arg0.LockedIcon:close()
		arg0.BMContractsLockBars:close()
		arg0.BMContractsLockBars0:close()
		arg0.ProgressBar:close()
		arg0.ProgressFraction:close()
		arg0.EmblemSubtitle:close()
		arg0.TierText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_72FB_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

