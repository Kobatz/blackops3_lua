-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.BlackMarket.BM_GoldBarMed")
require("ui.uieditor.widgets.CallingCards.CallingCards_FrameWidget")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.CAC.cac_lock")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.CAC.cac_LabelNew")
require("ui.uieditor.widgets.BlackMarket.DuplicateCounter")
require("ui.uieditor.widgets.Promo_Ribbon")
require("ui.uieditor.widgets.BlackMarket.BM_Contracts_LockBars")
local function __FUNC_47E_(arg0, arg1)
	local function __FUNC_512_(arg0, arg2)
		local registerVal2 = arg0:getModel()
		local registerVal3 = Engine.GetModel(registerVal2, "maxTier")
		local registerVal4 = Engine.GetModel(registerVal2, "currentTier")
		local registerVal5 = Engine.GetModel(registerVal2, "xp")
		if registerVal3 and registerVal4 and registerVal5 then
			SetGlobalModelValue("maxTier", Engine.GetModelValue(registerVal3))
			SetGlobalModelValue("currentTier", Engine.GetModelValue(registerVal4))
			SetGlobalModelValue("tierXP", Engine.GetModelValue(registerVal5))
			local registerVal8 = {}
			registerVal8.name = "update_tier_list"
			registerVal8.controller = arg1
			arg0:dispatchEventToParent(registerVal8)
		end
		if not arg0.packageCardUpdateTimer and arg0.includedItems and 0.000000 < #arg0.includedItems then
			local registerVal6 = Engine.GetModel(registerVal2, "iconId")
			Engine.SetModelValue(registerVal6, arg0.includedItems[1.000000])
			arg0.lastUsedIndex = 1.000000
			local function __FUNC_8E8_(arg1)
				arg0.lastUsedIndex = (arg0.lastUsedIndex + 1.000000)
				if #arg0.includedItems < arg0.lastUsedIndex then
					arg0.lastUsedIndex = 1.000000
				end
				Engine.SetModelValue(registerVal6, arg0.includedItems[arg0.lastUsedIndex])
			end

			local registerVal7 = LUI.UITimer.newElementTimer(4000.000000, false, __FUNC_8E8_)
			arg0.packageCardUpdateTimer = registerVal7
			arg0:addElement(arg0.packageCardUpdateTimer)
		end
	end

	arg0:registerEventHandler("gain_focus", __FUNC_512_)
	local function __FUNC_A02_(arg0, arg1)
		if arg0.packageCardUpdateTimer then
			arg0.packageCardUpdateTimer:close()
			arg0.packageCardUpdateTimer = nil
		end
	end

	arg0:registerEventHandler("lose_focus", __FUNC_A02_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.CallingCards_CardWidget = registerVal2
local function __FUNC_A88_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCards_CardWidget)
	registerVal2.id = "CallingCards_CardWidget"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 240.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 60.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ButtonBoxLrgInactive.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal3:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal3:setAlpha(0.800000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxButtonLrgInactive = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.110000, 0.110000, 0.110000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Background = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setRGB(0.110000, 0.110000, 0.110000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.bgImage = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 97.000000, 143.000000)
	registerVal6:setTopBottom(true, false, 23.500000, 36.500000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.black = registerVal6
	local registerVal7 = CoD.BM_GoldBarMed.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 21.000000, 219.000000)
	registerVal7:setTopBottom(true, false, 23.500000, 36.500000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.BMGoldBarMed = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 97.000000, 143.000000)
	registerVal8:setTopBottom(true, false, 7.000000, 53.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_icon_blackmarket_encryptedicon_large"))
	registerVal2:addElement(registerVal8)
	registerVal2.blackMarketBrandIcon = registerVal8
	local registerVal9 = CoD.CallingCards_FrameWidget.new(arg0, arg1)
	registerVal9:setLeftRight(false, false, 0.000000, 0.000000)
	registerVal9:setTopBottom(false, false, 0.000000, 0.000000)
	registerVal9.CardIconFrame:setScale(0.500000)
	local function __FUNC_2213_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal2, nil, false, __FUNC_2213_)
	registerVal2:addElement(registerVal9)
	registerVal2.CallingCardsFrameWidget = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal10:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal10:setAlpha(0.000000)
	local function __FUNC_2262_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "packageImage", true, __FUNC_2262_)
	registerVal2:addElement(registerVal10)
	registerVal2.PackageImage = registerVal10
	local registerVal11 = CoD.cac_ButtonBoxLrgInactiveDiags.new(arg0, arg1)
	registerVal11:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal11:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal11:setAlpha(0.150000)
	registerVal2:addElement(registerVal11)
	registerVal2.BoxButtonLrgInactiveDiag = registerVal11
	local registerVal12 = CoD.cac_lock.new(arg0, arg1)
	registerVal12:setLeftRight(false, false, -16.000000, 16.000000)
	registerVal12:setTopBottom(false, false, -16.000000, 16.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.LockedIcon = registerVal12
	local registerVal13 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal13:setLeftRight(true, true, -0.500000, 0.500000)
	registerVal13:setTopBottom(false, true, -3.000000, 1.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setZoom(1.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.FocusBarB = registerVal13
	local registerVal14 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal14:setLeftRight(true, true, -0.500000, 0.500000)
	registerVal14:setTopBottom(true, false, -1.000000, 3.000000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setZoom(1.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.FocusBarT = registerVal14
	local registerVal15 = CoD.cac_LabelNew.new(arg0, arg1)
	registerVal15:setLeftRight(false, false, -54.000000, 54.000000)
	registerVal15:setTopBottom(false, false, -11.500000, 12.500000)
	registerVal15:setAlpha(0.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.IconNew = registerVal15
	local registerVal16 = CoD.DuplicateCounter.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, 2.000000, 22.000000)
	registerVal16:setTopBottom(true, false, 0.000000, 20.000000)
	local function __FUNC_2314_(arg0)
		registerVal16:setModel(arg0, arg1)
	end

	registerVal16:linkToElementModel(registerVal2, "rarityType", false, __FUNC_2314_)
	registerVal2:addElement(registerVal16)
	registerVal2.DuplicateCounter = registerVal16
	local registerVal17 = CoD.Promo_Ribbon.new(arg0, arg1)
	registerVal17:setLeftRight(true, false, -8.000000, 115.500000)
	registerVal17:setTopBottom(true, false, -2.000000, 33.000000)
	registerVal17:setAlpha(0.000000)
	local function __FUNC_2366_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.Text:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal17:linkToElementModel(registerVal2, "packageLabel", true, __FUNC_2366_)
	registerVal2:addElement(registerVal17)
	registerVal2.BMPromoRibbon = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(true, false, 192.330000, 237.670000)
	registerVal18:setTopBottom(true, false, 7.330000, 52.670000)
	registerVal18:setAlpha(0.000000)
	registerVal18:setImage(RegisterImage("uie_t7_icon_contextual_purchase"))
	registerVal2:addElement(registerVal18)
	registerVal2.DownloadIcon = registerVal18
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
	registerVal22.left = registerVal20
	registerVal19.navigation = registerVal22
	registerVal22 = {}
	registerVal22.right = registerVal19
	registerVal20.navigation = registerVal22
	registerVal22 = {}
	local registerVal23 = {}
	local function __FUNC_2438_()
		registerVal2:setupElementClipCounter(16.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Background:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.CallingCardsFrameWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.PackageImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.LockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.DuplicateCounter:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.BMPromoRibbon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.DownloadIcon:setAlpha(0.000000)
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

	registerVal23.DefaultClip = __FUNC_2438_
	local function __FUNC_2ABA_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal2.Background:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.CallingCardsFrameWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.PackageImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.LockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal23.Focus = __FUNC_2ABA_
	registerVal22.DefaultState = registerVal23
	registerVal23 = {}
	local function __FUNC_2E4C_()
		registerVal2:setupElementClipCounter(18.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Background:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.bgImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.black:setLeftRight(true, false, 100.000000, 140.000000)
		registerVal2.black:setTopBottom(true, false, 26.500000, 33.500000)
		registerVal2.black:setRGB(0.110000, 0.110000, 0.110000)
		registerVal2.black:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.CallingCardsFrameWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.PackageImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.LockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal16:completeAnimation()
		registerVal2.DuplicateCounter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.BMPromoRibbon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.DownloadIcon:setAlpha(0.000000)
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

	registerVal23.DefaultClip = __FUNC_2E4C_
	local function __FUNC_364E_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Background:setRGB(0.110000, 0.110000, 0.110000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.black:setLeftRight(true, false, 91.000000, 148.000000)
		registerVal2.black:setTopBottom(true, false, 23.500000, 36.500000)
		registerVal2.black:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.CallingCardsFrameWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.PackageImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.LockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal23.Focus = __FUNC_364E_
	registerVal22.BMClassified = registerVal23
	registerVal23 = {}
	local function __FUNC_3B9C_()
		registerVal2:setupElementClipCounter(18.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Background:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.bgImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.black:setLeftRight(true, false, 100.000000, 140.000000)
		registerVal2.black:setTopBottom(true, false, 26.500000, 33.500000)
		registerVal2.black:setRGB(0.110000, 0.110000, 0.110000)
		registerVal2.black:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.CallingCardsFrameWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.PackageImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.LockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal16:completeAnimation()
		registerVal2.DuplicateCounter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.BMPromoRibbon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.DownloadIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
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

	registerVal23.DefaultClip = __FUNC_3B9C_
	local function __FUNC_4399_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Background:setRGB(0.110000, 0.110000, 0.110000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.black:setLeftRight(true, false, 91.000000, 148.000000)
		registerVal2.black:setTopBottom(true, false, 23.500000, 36.500000)
		registerVal2.black:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.CallingCardsFrameWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.PackageImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.LockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
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

	registerVal23.Focus = __FUNC_4399_
	registerVal22.ContractClassified = registerVal23
	registerVal23 = {}
	local function __FUNC_4A0C_()
		registerVal2:setupElementClipCounter(15.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Background:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.bgImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal9:completeAnimation()
		registerVal2.CallingCardsFrameWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.PackageImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.LockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal16:completeAnimation()
		registerVal2.DuplicateCounter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.BMPromoRibbon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.DownloadIcon:setAlpha(0.000000)
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

	registerVal23.DefaultClip = __FUNC_4A0C_
	local function __FUNC_5036_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal2.Background:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.bgImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal9:completeAnimation()
		registerVal2.CallingCardsFrameWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.PackageImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.LockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal23.Focus = __FUNC_5036_
	registerVal22.Locked = registerVal23
	registerVal23 = {}
	local function __FUNC_53C0_()
		registerVal2:setupElementClipCounter(16.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Background:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.CallingCardsFrameWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.PackageImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.LockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.DuplicateCounter:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.BMPromoRibbon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.DownloadIcon:setAlpha(1.000000)
		registerVal2.DownloadIcon:setScale(1.000000)
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

	registerVal23.DefaultClip = __FUNC_53C0_
	local function __FUNC_5A70_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal4:completeAnimation()
		registerVal2.Background:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.CallingCardsFrameWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.PackageImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.LockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal17:completeAnimation()
		registerVal2.BMPromoRibbon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.DownloadIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal23.Focus = __FUNC_5A70_
	registerVal22.Package = registerVal23
	registerVal23 = {}
	local function __FUNC_5EB9_()
		registerVal2:setupElementClipCounter(17.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Background:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.bgImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal8:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.CallingCardsFrameWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.PackageImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.LockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.IconNew:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.DuplicateCounter:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.BMPromoRibbon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.DownloadIcon:setAlpha(0.000000)
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

	registerVal23.DefaultClip = __FUNC_5EB9_
	local function __FUNC_6594_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Background:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.bgImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal8:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.CallingCardsFrameWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.PackageImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.LockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.IconNew:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal23.Focus = __FUNC_6594_
	registerVal22.New = registerVal23
	registerVal2.clipsPerState = registerVal22
	local registerVal24 = {}
	local registerVal25 = {}
	registerVal25.stateName = "BMClassified"
	local function __FUNC_6A34_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isBMClassified")
	end

	registerVal25.condition = __FUNC_6A34_
	local registerVal26 = {}
	registerVal26.stateName = "ContractClassified"
	local function __FUNC_6AAE_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal26.condition = __FUNC_6AAE_
	local registerVal27 = {}
	registerVal27.stateName = "Locked"
	local function __FUNC_6AF9_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isLocked")
	end

	registerVal27.condition = __FUNC_6AF9_
	local registerVal28 = {}
	registerVal28.stateName = "Package"
	local function __FUNC_6B6C_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isPackage")
	end

	registerVal28.condition = __FUNC_6B6C_
	local registerVal29 = {}
	registerVal29.stateName = "New"
	local function __FUNC_6BE1_(arg0, arg2, arg3)
		return CallingCards_IsNew(arg2, arg1)
	end

	registerVal29.condition = __FUNC_6BE1_
	registerVal24 = {registerVal25, registerVal26, registerVal27, registerVal28, registerVal29}
	registerVal2:mergeStateConditions(registerVal24)
	local function __FUNC_6C3C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isBMClassified", true, __FUNC_6C3C_)
	local function __FUNC_6D60_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isLocked"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isLocked", true, __FUNC_6D60_)
	local function __FUNC_6E7E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isPackage"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isPackage", true, __FUNC_6E7E_)
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal19.id = "BMContractsLockBars"
	registerVal20.id = "BMContractsLockBars0"
	local function __FUNC_6F9B_(arg0, arg1)
		local registerVal2 = arg0.BMContractsLockBars:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_6F9B_)
	local function __FUNC_70A7_(arg0)
		arg0.BoxButtonLrgInactive:close()
		arg0.BMGoldBarMed:close()
		arg0.CallingCardsFrameWidget:close()
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.LockedIcon:close()
		arg0.FocusBarB:close()
		arg0.FocusBarT:close()
		arg0.IconNew:close()
		arg0.DuplicateCounter:close()
		arg0.BMPromoRibbon:close()
		arg0.BMContractsLockBars:close()
		arg0.BMContractsLockBars0:close()
		arg0.PackageImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_70A7_)
	if __FUNC_47E_ then
		__FUNC_47E_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.CallingCards_CardWidget.new = __FUNC_A88_
