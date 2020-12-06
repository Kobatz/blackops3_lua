-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CallingCards.CallingCards_FrameWidget")
require("ui.uieditor.widgets.BlackMarket.CryptokeyTypeName")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.BlackMarket.BM_GoldBarMed")
require("ui.uieditor.widgets.CallingCards.CallingCards_BlackMarket_Set_CountWidget")
require("ui.uieditor.widgets.BlackMarket.BM_Contracts_LockBars")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_BlackMarket_Set_Widget = registerVal1
function CoD.CallingCards_BlackMarket_Set_Widget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCards_BlackMarket_Set_Widget)
	registerVal2.id = "CallingCards_BlackMarket_Set_Widget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 302.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 135.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ButtonBoxLrgInactive.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal3:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxButtonLrgInactive = registerVal3
	local registerVal4 = CoD.CallingCards_FrameWidget.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, -89.000000, 391.000000)
	registerVal4:setTopBottom(true, false, 8.000000, 128.000000)
	registerVal4.CardIconFrame:setScale(0.630000)
	local function __FUNC_1514_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_1514_)
	registerVal2:addElement(registerVal4)
	registerVal2.CallingCardImage = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 3.000000, 203.000000)
	registerVal5:setTopBottom(false, true, -22.000000, -2.000000)
	registerVal5:setTTF("fonts/default.ttf")
	local function __FUNC_1566_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "title", true, __FUNC_1566_)
	registerVal2:addElement(registerVal5)
	registerVal2.CallingCardName = registerVal5
	local registerVal6 = CoD.CryptokeyTypeName.new(arg0, arg1)
	registerVal6:setLeftRight(false, true, -97.000000, -1.000000)
	registerVal6:setTopBottom(true, false, 3.000000, 25.000000)
	registerVal6:setAlpha(0.900000)
	registerVal6:setScale(0.900000)
	local function __FUNC_161E_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, "rarityType", false, __FUNC_161E_)
	registerVal2:addElement(registerVal6)
	registerVal2.CallingCardRarityName = registerVal6
	local registerVal7 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal7:setTopBottom(true, false, -2.000000, 2.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setZoom(1.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.FocusBarT = registerVal7
	local registerVal8 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal8:setTopBottom(false, true, -2.000000, 1.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setZoom(1.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.FocusBarB = registerVal8
	local registerVal9 = CoD.BM_GoldBarMed.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, 10.000000, -10.000000)
	registerVal9:setTopBottom(false, false, -6.500000, 6.500000)
	registerVal9:setAlpha(0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.BMGoldBarMed = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, 129.000000, -131.000000)
	registerVal10:setTopBottom(false, false, -3.500000, 3.500000)
	registerVal10:setRGB(0.110000, 0.110000, 0.110000)
	registerVal10:setAlpha(0.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.black = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, false, -24.000000, 22.000000)
	registerVal11:setTopBottom(false, false, -23.000000, 23.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setImage(RegisterImage("uie_t7_icon_blackmarket_encryptedicon_large"))
	registerVal2:addElement(registerVal11)
	registerVal2.blackMarketBrandIcon = registerVal11
	local registerVal12 = CoD.CallingCards_BlackMarket_Set_CountWidget.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 4.000000, 60.000000)
	registerVal12:setTopBottom(true, false, 2.000000, 27.000000)
	local function __FUNC_166E_(arg0)
		registerVal12:setModel(arg0, arg1)
	end

	registerVal12:linkToElementModel(registerVal2, nil, false, __FUNC_166E_)
	registerVal2:addElement(registerVal12)
	registerVal2.setWidget = registerVal12
	local registerVal13 = CoD.BM_Contracts_LockBars.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 158.800000, 301.000000)
	registerVal13:setTopBottom(true, false, 49.000000, 84.000000)
	registerVal13:setAlpha(0.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.BMContractsLockBars = registerVal13
	local registerVal14 = CoD.BM_Contracts_LockBars.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 0.000000, 142.800000)
	registerVal14:setTopBottom(true, false, 49.000000, 84.000000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setYRot(180.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.BMContractsLockBars0 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, 118.000000, 182.000000)
	registerVal15:setTopBottom(true, false, 36.000000, 100.000000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setImage(RegisterImage("uie_t7_bm_special_contracts_logo"))
	registerVal2:addElement(registerVal15)
	registerVal2.bmContractBrandIcon = registerVal15
	local registerVal16 = {}
	local registerVal17 = {}
	local function __FUNC_16BE_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal4:completeAnimation()
		registerVal2.CallingCardImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.CallingCardName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CallingCardRarityName:setLeftRight(false, true, -97.000000, -1.000000)
		registerVal2.CallingCardRarityName:setTopBottom(true, false, 3.000000, 25.000000)
		registerVal2.CallingCardRarityName:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.black:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.setWidget:setLeftRight(true, false, 4.000000, 60.000000)
		registerVal2.setWidget:setTopBottom(true, false, 2.000000, 27.000000)
		registerVal2.setWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_16BE_
	local function __FUNC_1CBA_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal17.Focus = __FUNC_1CBA_
	registerVal16.DefaultState = registerVal17
	registerVal17 = {}
	local function __FUNC_1E10_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal4:completeAnimation()
		registerVal2.CallingCardImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.CallingCardName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CallingCardRarityName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.black:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.setWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_1E10_
	local function __FUNC_231A_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal17.Focus = __FUNC_231A_
	registerVal16.isBMClassified = registerVal17
	registerVal17 = {}
	local function __FUNC_252C_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal4:completeAnimation()
		registerVal2.CallingCardImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.CallingCardName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CallingCardRarityName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.black:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.setWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_252C_
	local function __FUNC_2A36_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal13:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.Focus = __FUNC_2A36_
	registerVal16.isContractClassified = registerVal17
	registerVal17 = {}
	local function __FUNC_2CB0_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal4:completeAnimation()
		registerVal2.CallingCardImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.CallingCardName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CallingCardRarityName:setLeftRight(false, false, -48.000000, 48.000000)
		registerVal2.CallingCardRarityName:setTopBottom(true, false, 47.000000, 69.000000)
		registerVal2.CallingCardRarityName:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.black:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.setWidget:setLeftRight(false, false, -29.000000, 27.000000)
		registerVal2.setWidget:setTopBottom(true, false, 71.000000, 96.000000)
		registerVal2.setWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_2CB0_
	local function __FUNC_32AE_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal17.Focus = __FUNC_32AE_
	registerVal16.CommonSet = registerVal17
	registerVal2.clipsPerState = registerVal16
	local registerVal18 = {}
	local registerVal19 = {}
	registerVal19.stateName = "isBMClassified"
	local function __FUNC_3404_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isSetBMClassified")
	end

	registerVal19.condition = __FUNC_3404_
	local registerVal20 = {}
	registerVal20.stateName = "isContractClassified"
	local function __FUNC_3481_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isSetContractClassified")
	end

	registerVal20.condition = __FUNC_3481_
	local registerVal21 = {}
	registerVal21.stateName = "CommonSet"
	local function __FUNC_3503_(arg0, arg1, arg2)
		return PropertyIsTrue(registerVal2, "commonSet")
	end

	registerVal21.condition = __FUNC_3503_
	registerVal18 = {registerVal19, registerVal20, registerVal21}
	registerVal2:mergeStateConditions(registerVal18)
	local function __FUNC_356B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isSetBMClassified"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isSetBMClassified", true, __FUNC_356B_)
	local function __FUNC_368F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isSetContractClassified"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isSetContractClassified", true, __FUNC_368F_)
	local function __FUNC_37B9_(arg0)
		arg0.BoxButtonLrgInactive:close()
		arg0.CallingCardImage:close()
		arg0.CallingCardRarityName:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.BMGoldBarMed:close()
		arg0.setWidget:close()
		arg0.BMContractsLockBars:close()
		arg0.BMContractsLockBars0:close()
		arg0.CallingCardName:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_37B9_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

