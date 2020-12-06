-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.BlackMarket.BM_GoldBarMed")
require("ui.uieditor.widgets.CallingCards.CallingCards_FrameWidget")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.CAC.cac_lock")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.CAC.cac_LabelNew")
require("ui.uieditor.widgets.BlackMarket.DuplicateCounter")
require("ui.uieditor.widgets.BlackMarket.BM_Contracts_LockBars")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCardsSet_BlackMarketWidget = registerVal1
function CoD.CallingCardsSet_BlackMarketWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCardsSet_BlackMarketWidget)
	registerVal2.id = "CallingCardsSet_BlackMarketWidget"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 240.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 84.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 240.000000)
	registerVal3:setTopBottom(true, false, 60.000000, 85.000000)
	registerVal3:setAlpha(0.100000)
	registerVal2:addElement(registerVal3)
	registerVal2.textBg = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 4.000000, 236.000000)
	registerVal4:setTopBottom(true, false, 63.000000, 82.000000)
	registerVal4:setAlpha(0.850000)
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setLetterSpacing(0.500000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1BDB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "title", true, __FUNC_1BDB_)
	registerVal2:addElement(registerVal4)
	registerVal2.text = registerVal4
	local registerVal5 = CoD.cac_ButtonBoxLrgInactive.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal5:setTopBottom(true, true, -2.000000, -22.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.BoxButtonLrgInactive = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, -24.000000)
	registerVal6:setRGB(0.110000, 0.110000, 0.110000)
	registerVal2:addElement(registerVal6)
	registerVal2.bgImage = registerVal6
	local registerVal7 = CoD.BM_GoldBarMed.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 21.000000, -21.000000)
	registerVal7:setTopBottom(true, false, 23.500000, 36.500000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.BMGoldBarMed = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -23.000000, 23.000000)
	registerVal8:setTopBottom(true, false, 23.500000, 36.500000)
	registerVal8:setRGB(0.110000, 0.110000, 0.110000)
	registerVal8:setAlpha(0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.black = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, -23.000000, 23.000000)
	registerVal9:setTopBottom(true, false, 7.000000, 53.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setImage(RegisterImage("uie_t7_icon_blackmarket_encryptedicon_large"))
	registerVal2:addElement(registerVal9)
	registerVal2.blackMarketBrandIcon = registerVal9
	local registerVal10 = CoD.CallingCards_FrameWidget.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, -120.000000, 360.000000)
	registerVal10:setTopBottom(true, false, -30.000000, 90.000000)
	registerVal10.CardIconFrame:setScale(0.500000)
	local function __FUNC_1C92_(arg0)
		registerVal10:setModel(arg0, arg1)
	end

	registerVal10:linkToElementModel(registerVal2, nil, false, __FUNC_1C92_)
	registerVal2:addElement(registerVal10)
	registerVal2.CardIcon = registerVal10
	local registerVal11 = CoD.cac_ButtonBoxLrgInactiveDiags.new(arg0, arg1)
	registerVal11:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal11:setTopBottom(true, false, -2.000000, 62.000000)
	registerVal11:setAlpha(0.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.BoxButtonLrgInactiveDiag0 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 120.000000, 124.000000)
	registerVal12:setTopBottom(true, false, -40.000000, 209.000000)
	registerVal12:setZRot(-90.000000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_featuredlline"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.featlineleft0000 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, true, 1.000000, -1.000000)
	registerVal13:setTopBottom(true, false, 13.050000, 42.950000)
	registerVal13:setRGB(0.000000, 0.000000, 0.000000)
	registerVal13:setAlpha(0.400000)
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_edges"))
	registerVal13:setShaderVector(0.000000, 0.020000, 0.020000, 0.020000, 0.020000)
	registerVal2:addElement(registerVal13)
	registerVal2.TitleBg = registerVal13
	local registerVal14 = CoD.cac_lock.new(arg0, arg1)
	registerVal14:setLeftRight(false, false, -16.000000, 16.000000)
	registerVal14:setTopBottom(true, false, 12.000000, 44.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.lockedIcon = registerVal14
	local registerVal15 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal15:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal15:setTopBottom(true, false, -2.000000, 2.000000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setZoom(1.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.FocusBarT = registerVal15
	local registerVal16 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal16:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal16:setTopBottom(false, true, -2.000000, 1.000000)
	registerVal16:setAlpha(0.000000)
	registerVal16:setZoom(1.000000)
	registerVal2:addElement(registerVal16)
	registerVal2.FocusBarB = registerVal16
	local registerVal17 = CoD.cac_LabelNew.new(arg0, arg1)
	registerVal17:setLeftRight(false, false, -54.000000, 54.000000)
	registerVal17:setTopBottom(false, false, -24.000000, 0.000000)
	registerVal17:setAlpha(0.000000)
	registerVal2:addElement(registerVal17)
	registerVal2.IconNew = registerVal17
	local registerVal18 = CoD.DuplicateCounter.new(arg0, arg1)
	registerVal18:setLeftRight(true, false, 2.000000, 22.000000)
	registerVal18:setTopBottom(true, false, 0.000000, 20.000000)
	local function __FUNC_1CE2_(arg0)
		registerVal18:setModel(arg0, arg1)
	end

	registerVal18:linkToElementModel(registerVal2, "rarityType", false, __FUNC_1CE2_)
	registerVal2:addElement(registerVal18)
	registerVal2.DuplicateCounter = registerVal18
	local registerVal19 = CoD.BM_Contracts_LockBars.new(arg0, arg1)
	registerVal19:setLeftRight(true, false, 128.800000, 231.800000)
	registerVal19:setTopBottom(true, false, 11.000000, 46.000000)
	registerVal19:setAlpha(0.000000)
	registerVal2:addElement(registerVal19)
	registerVal2.BMContractsLockBars = registerVal19
	local registerVal20 = CoD.BM_Contracts_LockBars.new(arg0, arg1)
	registerVal20:setLeftRight(true, false, 8.800000, 112.800000)
	registerVal20:setTopBottom(true, false, 11.000000, 46.000000)
	registerVal20:setAlpha(0.000000)
	registerVal20:setYRot(180.000000)
	registerVal2:addElement(registerVal20)
	registerVal2.BMContractsLockBars0 = registerVal20
	local registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(true, false, 88.000000, 152.000000)
	registerVal21:setTopBottom(true, false, -2.000000, 62.000000)
	registerVal21:setAlpha(0.000000)
	registerVal21:setImage(RegisterImage("uie_t7_bm_special_contracts_logo"))
	registerVal2:addElement(registerVal21)
	registerVal2.bmContractBrandIcon = registerVal21
	local registerVal22 = {}
	local registerVal23 = {}
	local function __FUNC_1D32_()
		registerVal2:setupElementClipCounter(15.000000)
		registerVal6:completeAnimation()
		registerVal2.bgImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.black:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.CardIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.TitleBg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.DuplicateCounter:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
	end

	registerVal23.DefaultClip = __FUNC_1D32_
	local function __FUNC_2332_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal10:completeAnimation()
		registerVal2.CardIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal23.Focus = __FUNC_2332_
	registerVal22.DefaultState = registerVal23
	registerVal23 = {}
	local function __FUNC_24DE_()
		registerVal2:setupElementClipCounter(16.000000)
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.bgImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(0.650000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.black:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(0.650000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.CardIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.TitleBg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.DuplicateCounter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
	end

	registerVal23.DefaultClip = __FUNC_24DE_
	local function __FUNC_2B45_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.CardIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal14:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal23.Focus = __FUNC_2B45_
	registerVal22.BMClassified = registerVal23
	registerVal23 = {}
	local function __FUNC_2E6D_()
		registerVal2:setupElementClipCounter(16.000000)
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.bgImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.black:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.CardIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.TitleBg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.DuplicateCounter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(0.650000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(0.650000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(0.650000)
		registerVal2.clipFinished(registerVal21, {})
	end

	registerVal23.DefaultClip = __FUNC_2E6D_
	local function __FUNC_34D5_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.CardIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal14:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal19:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal21, {})
	end

	registerVal23.Focus = __FUNC_34D5_
	registerVal22.ContractClassified = registerVal23
	registerVal23 = {}
	local function __FUNC_3921_()
		registerVal2:setupElementClipCounter(15.000000)
		registerVal6:completeAnimation()
		registerVal2.bgImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.black:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.CardIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.TitleBg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.IconNew:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.DuplicateCounter:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
	end

	registerVal23.DefaultClip = __FUNC_3921_
	local function __FUNC_3F22_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal10:completeAnimation()
		registerVal2.CardIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal23.Focus = __FUNC_3F22_
	registerVal22.New = registerVal23
	registerVal23 = {}
	local function __FUNC_40CE_()
		registerVal2:setupElementClipCounter(15.000000)
		registerVal6:completeAnimation()
		registerVal2.bgImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.black:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.CardIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.TitleBg:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.lockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.DuplicateCounter:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
	end

	registerVal23.DefaultClip = __FUNC_40CE_
	local function __FUNC_46D3_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal10:completeAnimation()
		registerVal2.CardIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal23.Focus = __FUNC_46D3_
	registerVal22.Locked = registerVal23
	registerVal2.clipsPerState = registerVal22
	local registerVal24 = {}
	local registerVal25 = {}
	registerVal25.stateName = "BMClassified"
	local function __FUNC_487E_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isBMClassified")
	end

	registerVal25.condition = __FUNC_487E_
	local registerVal26 = {}
	registerVal26.stateName = "ContractClassified"
	local function __FUNC_48F6_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isContractClassified")
	end

	registerVal26.condition = __FUNC_48F6_
	local registerVal27 = {}
	registerVal27.stateName = "New"
	local function __FUNC_4974_(arg0, arg2, arg3)
		return CallingCards_IsNew(arg2, arg1)
	end

	registerVal27.condition = __FUNC_4974_
	local registerVal28 = {}
	registerVal28.stateName = "Locked"
	local function __FUNC_49D0_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isLocked")
	end

	registerVal28.condition = __FUNC_49D0_
	registerVal24 = {registerVal25, registerVal26, registerVal27, registerVal28}
	registerVal2:mergeStateConditions(registerVal24)
	local function __FUNC_4A44_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isBMClassified", true, __FUNC_4A44_)
	local function __FUNC_4B68_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isContractClassified"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isContractClassified", true, __FUNC_4B68_)
	local function __FUNC_4C92_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isLocked"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isLocked", true, __FUNC_4C92_)
	local function __FUNC_4DAE_(arg0)
		arg0.BoxButtonLrgInactive:close()
		arg0.BMGoldBarMed:close()
		arg0.CardIcon:close()
		arg0.BoxButtonLrgInactiveDiag0:close()
		arg0.lockedIcon:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.IconNew:close()
		arg0.DuplicateCounter:close()
		arg0.BMContractsLockBars:close()
		arg0.BMContractsLockBars0:close()
		arg0.text:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_4DAE_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

