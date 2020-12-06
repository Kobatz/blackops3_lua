-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CallingCards.CallingCards_FrameWidget")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.BlackMarket.BM_GoldBarMed")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.WeaponNameWidget")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.CAC.cac_LabelNew")
require("ui.uieditor.widgets.BlackMarket.BM_Contracts_LockBars")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_BlackMarketMasterCardWidget = registerVal1
function CoD.CallingCards_BlackMarketMasterCardWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCards_BlackMarketMasterCardWidget)
	registerVal2.id = "CallingCards_BlackMarketMasterCardWidget"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 754.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 98.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, -1.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.StartMenuframenoBG0 = registerVal3
	local registerVal4 = CoD.cac_ButtonBoxLrgInactive.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -337.800000, -8.000000)
	registerVal4:setTopBottom(true, false, 6.000000, 91.500000)
	registerVal2:addElement(registerVal4)
	registerVal2.BoxButtonLrgInactive = registerVal4
	local registerVal5 = CoD.CallingCards_FrameWidget.new(arg0, arg1)
	registerVal5:setLeftRight(false, true, -335.000000, -10.000000)
	registerVal5:setTopBottom(false, false, -40.750000, 40.750000)
	registerVal5.CardIconFrame:setScale(0.680000)
	local function __FUNC_1936_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_1936_)
	registerVal2:addElement(registerVal5)
	registerVal2.MasterCallingCardIcon = registerVal5
	local registerVal6 = CoD.cac_ButtonBoxLrgInactiveDiags.new(arg0, arg1)
	registerVal6:setLeftRight(false, true, -338.800000, -7.000000)
	registerVal6:setTopBottom(true, false, 6.000000, 91.500000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.BoxButtonLrgInactiveDiag = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, true, -336.000000, -9.000000)
	registerVal7:setTopBottom(false, false, -41.500000, 41.500000)
	registerVal7:setRGB(0.110000, 0.110000, 0.110000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.bgImage0 = registerVal7
	local registerVal8 = CoD.BM_GoldBarMed.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, 428.000000, -14.000000)
	registerVal8:setTopBottom(false, false, -6.500000, 6.500000)
	registerVal8:setAlpha(0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.BMGoldBarMed = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, 181.500000, 227.500000)
	registerVal9:setTopBottom(true, false, 42.500000, 55.500000)
	registerVal9:setRGB(0.110000, 0.110000, 0.110000)
	registerVal9:setAlpha(0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.black = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, false, 181.500000, 227.500000)
	registerVal10:setTopBottom(true, false, 26.000000, 72.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setImage(RegisterImage("uie_t7_icon_blackmarket_encryptedicon_large"))
	registerVal2:addElement(registerVal10)
	registerVal2.blackMarketBrandIcon = registerVal10
	local registerVal11 = CoD.WeaponNameWidget.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 12.920000, 317.420000)
	registerVal11:setTopBottom(true, false, 14.000000, 40.000000)
	local function __FUNC_1986_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.weaponNameLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:subscribeToGlobalModel(arg1, "CallingCardsBlackMarketMasterCard", "title", __FUNC_1986_)
	registerVal2:addElement(registerVal11)
	registerVal2.EmblemName = registerVal11
	local registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(true, false, 11.920000, 317.420000)
	registerVal12:setTopBottom(true, false, 45.580000, 65.580000)
	registerVal12:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal12:setLetterSpacing(0.500000)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1A63_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal12:linkToElementModel(registerVal2, "description", true, __FUNC_1A63_)
	registerVal2:addElement(registerVal12)
	registerVal2.EmblemSubtitle = registerVal12
	local registerVal13 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal13:setLeftRight(false, true, -337.800000, -9.000000)
	registerVal13:setTopBottom(true, false, 6.000000, 10.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setZoom(1.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.FocusBarT = registerVal13
	local registerVal14 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal14:setLeftRight(false, true, -337.800000, -9.000000)
	registerVal14:setTopBottom(false, true, -11.500000, -8.500000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setZoom(1.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.FocusBarB = registerVal14
	local registerVal15 = CoD.cac_LabelNew.new(arg0, arg1)
	registerVal15:setLeftRight(false, true, -223.000000, -115.000000)
	registerVal15:setTopBottom(false, false, -12.000000, 12.000000)
	registerVal15:setAlpha(0.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.IconNew = registerVal15
	local registerVal16 = CoD.BM_Contracts_LockBars.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, 589.800000, 749.800000)
	registerVal16:setTopBottom(true, false, 31.000000, 66.000000)
	registerVal16:setAlpha(0.000000)
	registerVal2:addElement(registerVal16)
	registerVal2.BMContractsLockBars = registerVal16
	local registerVal17 = CoD.BM_Contracts_LockBars.new(arg0, arg1)
	registerVal17:setLeftRight(true, false, 418.000000, 573.800000)
	registerVal17:setTopBottom(true, false, 31.000000, 66.000000)
	registerVal17:setAlpha(0.000000)
	registerVal17:setYRot(180.000000)
	registerVal2:addElement(registerVal17)
	registerVal2.BMContractsLockBars0 = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(true, false, 549.000000, 613.000000)
	registerVal18:setTopBottom(true, false, 18.000000, 82.000000)
	registerVal18:setAlpha(0.000000)
	registerVal18:setImage(RegisterImage("uie_t7_bm_special_contracts_logo"))
	registerVal2:addElement(registerVal18)
	registerVal2.bmContractBrandIcon = registerVal18
	local registerVal19 = {}
	local registerVal20 = {}
	local function __FUNC_1B1A_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.MasterCallingCardIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.bgImage0:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.black:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal20.DefaultClip = __FUNC_1B1A_
	local function __FUNC_2083_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal7:completeAnimation()
		registerVal2.bgImage0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal20.Focus = __FUNC_2083_
	registerVal19.DefaultState = registerVal20
	registerVal20 = {}
	local function __FUNC_2233_()
		registerVal2:setupElementClipCounter(16.000000)
		registerVal3:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.MasterCallingCardIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.bgImage0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.black:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.EmblemName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.EmblemSubtitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal20.DefaultClip = __FUNC_2233_
	registerVal19.Invisible = registerVal20
	registerVal20 = {}
	local function __FUNC_28A6_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal5:completeAnimation()
		registerVal2.MasterCallingCardIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.bgImage0:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(0.650000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.black:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(0.650000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal20.DefaultClip = __FUNC_28A6_
	local function __FUNC_2DB7_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal7:completeAnimation()
		registerVal2.bgImage0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal20.Focus = __FUNC_2DB7_
	registerVal19.BMClassified = registerVal20
	registerVal20 = {}
	local function __FUNC_3023_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal5:completeAnimation()
		registerVal2.MasterCallingCardIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.bgImage0:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.black:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(0.650000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(0.650000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(0.650000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal20.DefaultClip = __FUNC_3023_
	local function __FUNC_3533_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal7:completeAnimation()
		registerVal2.bgImage0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal16:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal20.Focus = __FUNC_3533_
	registerVal19.ContractClassified = registerVal20
	registerVal20 = {}
	local function __FUNC_3807_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.MasterCallingCardIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.bgImage0:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.black:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.IconNew:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal20.DefaultClip = __FUNC_3807_
	local function __FUNC_3D6F_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal7:completeAnimation()
		registerVal2.bgImage0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.IconNew:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal20.Focus = __FUNC_3D6F_
	registerVal19.New = registerVal20
	registerVal2.clipsPerState = registerVal19
	local registerVal21 = {}
	local registerVal22 = {}
	registerVal22.stateName = "Invisible"
	local function __FUNC_3F74_(arg0, arg2, arg3)
		local registerVal3 = BlackMarketHideMasterCallingCards()
		if registerVal3 then
			registerVal3 = IsViewingSideBetCallingCardSet(arg1)
			if not registerVal3 then
				registerVal3 = IsViewingSpecialContractCallingCardSet(arg1)
			else
			end
		end
		return true
	end

	registerVal22.condition = __FUNC_3F74_
	local registerVal23 = {}
	registerVal23.stateName = "BMClassified"
	local function __FUNC_4067_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isBMClassified")
	end

	registerVal23.condition = __FUNC_4067_
	local registerVal24 = {}
	registerVal24.stateName = "ContractClassified"
	local function __FUNC_40DE_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isContractClassified")
	end

	registerVal24.condition = __FUNC_40DE_
	local registerVal25 = {}
	registerVal25.stateName = "New"
	local function __FUNC_415C_(arg0, arg2, arg3)
		return CallingCards_IsNew(arg2, arg1)
	end

	registerVal25.condition = __FUNC_415C_
	registerVal21 = {registerVal22, registerVal23, registerVal24, registerVal25}
	registerVal2:mergeStateConditions(registerVal21)
	local function __FUNC_41B8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isBMClassified", true, __FUNC_41B8_)
	local function __FUNC_42DC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isContractClassified"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isContractClassified", true, __FUNC_42DC_)
	local function __FUNC_4406_(arg0)
		arg0.StartMenuframenoBG0:close()
		arg0.BoxButtonLrgInactive:close()
		arg0.MasterCallingCardIcon:close()
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.BMGoldBarMed:close()
		arg0.EmblemName:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.IconNew:close()
		arg0.BMContractsLockBars:close()
		arg0.BMContractsLockBars0:close()
		arg0.EmblemSubtitle:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_4406_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

