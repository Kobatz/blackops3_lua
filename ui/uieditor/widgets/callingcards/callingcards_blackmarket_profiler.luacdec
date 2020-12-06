-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.CallingCards.CallingCards_FrameWidget")
require("ui.uieditor.widgets.BlackMarket.BM_GoldBarMed")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.WeaponNameWidget")
require("ui.uieditor.widgets.BlackMarket.CryptokeyTypeName")
require("ui.uieditor.widgets.CallingCards.CallingCards_BlackMarket_SideBetExplaination")
require("ui.uieditor.widgets.CAC.cac_lock")
require("ui.uieditor.widgets.BlackMarket.BM_Contracts_LockBars")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_BlackMarket_Profiler = registerVal1
function CoD.CallingCards_BlackMarket_Profiler.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCards_BlackMarket_Profiler)
	registerVal2.id = "CallingCards_BlackMarket_Profiler"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 350.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 460.000000)
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
	registerVal6:setLeftRight(true, false, -64.500000, 415.500000)
	registerVal6:setTopBottom(true, false, -14.000000, 106.000000)
	registerVal6.CardIconFrame:setScale(0.720000)
	local function __FUNC_1AFD_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_1AFD_)
	registerVal2:addElement(registerVal6)
	registerVal2.SelectedCardIcon = registerVal6
	local registerVal7 = CoD.BM_GoldBarMed.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 3.000000, 348.000000)
	registerVal7:setTopBottom(true, false, 32.500000, 62.400000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.BMGoldBarMed = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -36.250000, 32.250000)
	registerVal8:setTopBottom(true, false, 11.750000, 80.250000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_icon_blackmarket_encryptedicon_large"))
	registerVal2:addElement(registerVal8)
	registerVal2.blackMarketBrandIcon = registerVal8
	local registerVal9 = CoD.cac_ButtonBoxLrgInactiveDiags.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(true, false, 1.000000, 93.250000)
	registerVal9:setAlpha(0.300000)
	registerVal2:addElement(registerVal9)
	registerVal2.BoxButtonLrgInactiveDiag = registerVal9
	local registerVal10 = CoD.WeaponNameWidget.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 19.000000, 337.500000)
	registerVal10:setTopBottom(true, false, 103.000000, 137.000000)
	local function __FUNC_1B4E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.weaponNameLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "title", true, __FUNC_1B4E_)
	registerVal2:addElement(registerVal10)
	registerVal2.EmblemName = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, 20.000000, 338.000000)
	registerVal11:setTopBottom(true, false, 141.000000, 161.000000)
	registerVal11:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal11:setLetterSpacing(0.500000)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1C2B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "description", true, __FUNC_1C2B_)
	registerVal2:addElement(registerVal11)
	registerVal2.EmblemSubtitle = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 175.000000, 179.000000)
	registerVal12:setTopBottom(true, false, -117.000000, 242.000000)
	registerVal12:setZRot(-90.000000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_featuredlline"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.featlineleft0 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 175.000000, 179.000000)
	registerVal13:setTopBottom(true, false, -147.000000, 212.000000)
	registerVal13:setZRot(-90.000000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_frontend_featuredlline"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.featlineleft000 = registerVal13
	local registerVal14 = CoD.CryptokeyTypeName.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 20.000000, 116.000000)
	registerVal14:setTopBottom(false, true, -73.000000, -51.000000)
	local function __FUNC_1CE2_(arg0)
		registerVal14:setModel(arg0, arg1)
	end

	registerVal14:linkToElementModel(registerVal2, "rarityType", false, __FUNC_1CE2_)
	registerVal2:addElement(registerVal14)
	registerVal2.LootRarityType = registerVal14
	local registerVal15 = CoD.CallingCards_BlackMarket_SideBetExplaination.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 19.000000, 338.000000)
	registerVal15:setTopBottom(false, true, -190.000000, 10.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.CallingCardsBlackMarketSideBetExplaination0 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, true, 1.000000, -1.000000)
	registerVal16:setTopBottom(true, false, 32.500000, 62.400000)
	registerVal16:setRGB(0.000000, 0.000000, 0.000000)
	registerVal16:setAlpha(0.400000)
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_edges"))
	registerVal16:setShaderVector(0.000000, 0.020000, 0.020000, 0.020000, 0.020000)
	registerVal2:addElement(registerVal16)
	registerVal2.TitleBg = registerVal16
	local registerVal17 = CoD.cac_lock.new(arg0, arg1)
	registerVal17:setLeftRight(true, false, 159.000000, 191.000000)
	registerVal17:setTopBottom(true, false, 31.950000, 63.950000)
	registerVal2:addElement(registerVal17)
	registerVal2.LockedIcon = registerVal17
	local registerVal18 = CoD.BM_Contracts_LockBars.new(arg0, arg1)
	registerVal18:setLeftRight(true, false, 179.800000, 341.800000)
	registerVal18:setTopBottom(true, false, 28.000000, 63.000000)
	registerVal18:setAlpha(0.000000)
	registerVal2:addElement(registerVal18)
	registerVal2.BMContractsLockBars = registerVal18
	local registerVal19 = CoD.BM_Contracts_LockBars.new(arg0, arg1)
	registerVal19:setLeftRight(true, false, 10.800000, 163.800000)
	registerVal19:setTopBottom(true, false, 28.000000, 63.000000)
	registerVal19:setAlpha(0.000000)
	registerVal19:setYRot(180.000000)
	registerVal2:addElement(registerVal19)
	registerVal2.BMContractsLockBars0 = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(true, false, 129.500000, 216.950000)
	registerVal20:setTopBottom(true, false, 4.000000, 91.450000)
	registerVal20:setAlpha(0.000000)
	registerVal20:setImage(RegisterImage("uie_t7_bm_special_contracts_logo"))
	registerVal2:addElement(registerVal20)
	registerVal2.bmContractBrandIcon = registerVal20
	local registerVal21 = {}
	local registerVal22 = {}
	local function __FUNC_1D32_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal6:completeAnimation()
		registerVal2.SelectedCardIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal12:completeAnimation()
		registerVal2.featlineleft0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.featlineleft000:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal16:completeAnimation()
		registerVal2.TitleBg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.LockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal22.DefaultClip = __FUNC_1D32_
	registerVal21.DefaultState = registerVal22
	registerVal22 = {}
	local function __FUNC_224A_()
		registerVal2:setupElementClipCounter(13.000000)
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
		registerVal2.BMGoldBarMed:setLeftRight(true, false, 16.000000, 334.000000)
		registerVal2.BMGoldBarMed:setTopBottom(true, false, 32.180000, 62.080000)
		registerVal2.BMGoldBarMed:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.blackMarketBrandIcon:setLeftRight(false, false, -28.250000, 36.250000)
		registerVal2.blackMarketBrandIcon:setTopBottom(true, false, 13.750000, 78.250000)
		registerVal2.blackMarketBrandIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal12:completeAnimation()
		registerVal2.featlineleft0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.featlineleft000:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal16:completeAnimation()
		registerVal2.TitleBg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.LockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal22.DefaultClip = __FUNC_224A_
	registerVal21.BMClassfied = registerVal22
	registerVal22 = {}
	local function __FUNC_290A_()
		registerVal2:setupElementClipCounter(13.000000)
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
		registerVal2.BMGoldBarMed:setLeftRight(true, false, 16.000000, 334.000000)
		registerVal2.BMGoldBarMed:setTopBottom(true, false, 32.180000, 62.080000)
		registerVal2.BMGoldBarMed:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.blackMarketBrandIcon:setLeftRight(false, false, -28.250000, 36.250000)
		registerVal2.blackMarketBrandIcon:setTopBottom(true, false, 13.750000, 78.250000)
		registerVal2.blackMarketBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal12:completeAnimation()
		registerVal2.featlineleft0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.featlineleft000:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal16:completeAnimation()
		registerVal2.TitleBg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.LockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal22.DefaultClip = __FUNC_290A_
	registerVal21.ContractClassified = registerVal22
	registerVal22 = {}
	local function __FUNC_2FCA_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal6:completeAnimation()
		registerVal2.SelectedCardIcon:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal12:completeAnimation()
		registerVal2.featlineleft0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.featlineleft000:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal16:completeAnimation()
		registerVal2.TitleBg:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.LockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal22.DefaultClip = __FUNC_2FCA_
	registerVal21.Locked = registerVal22
	registerVal2.clipsPerState = registerVal21
	local registerVal23 = {}
	local registerVal24 = {}
	registerVal24.stateName = "BMClassfied"
	local function __FUNC_34EC_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isBMClassified")
	end

	registerVal24.condition = __FUNC_34EC_
	local registerVal25 = {}
	registerVal25.stateName = "ContractClassified"
	local function __FUNC_3566_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isContractClassified")
	end

	registerVal25.condition = __FUNC_3566_
	local registerVal26 = {}
	registerVal26.stateName = "Locked"
	local function __FUNC_35E4_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isLocked")
	end

	registerVal26.condition = __FUNC_35E4_
	registerVal23 = {registerVal24, registerVal25, registerVal26}
	registerVal2:mergeStateConditions(registerVal23)
	local function __FUNC_3658_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isBMClassified", true, __FUNC_3658_)
	local function __FUNC_377C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isContractClassified"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isContractClassified", true, __FUNC_377C_)
	local function __FUNC_38A6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isLocked"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isLocked", true, __FUNC_38A6_)
	local function __FUNC_39C2_(arg0)
		arg0.BoxButtonLrgInactive:close()
		arg0.StartMenuframenoBG0:close()
		arg0.SelectedCardIcon:close()
		arg0.BMGoldBarMed:close()
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.EmblemName:close()
		arg0.LootRarityType:close()
		arg0.CallingCardsBlackMarketSideBetExplaination0:close()
		arg0.LockedIcon:close()
		arg0.BMContractsLockBars:close()
		arg0.BMContractsLockBars0:close()
		arg0.EmblemSubtitle:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_39C2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

