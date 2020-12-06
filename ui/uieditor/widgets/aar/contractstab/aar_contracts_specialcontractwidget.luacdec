-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
require("ui.uieditor.widgets.BlackMarket.BM_Contracts_AAR_title")
require("ui.uieditor.widgets.AAR.ContractsTab.AAR_Contracts_PercentCompleteWidget")
require("ui.uieditor.widgets.SpecialContracts.SpecialContracts_RewardImage")
require("ui.uieditor.widgets.BlackMarket.BM_CompleteRibbon")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AAR_Contracts_SpecialContractWidget = registerVal1
function CoD.AAR_Contracts_SpecialContractWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AAR_Contracts_SpecialContractWidget)
	registerVal2.id = "AAR_Contracts_SpecialContractWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 775.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 180.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, -2.000000)
	registerVal3:setTopBottom(true, false, 1.000000, 31.500000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.400000)
	registerVal2:addElement(registerVal3)
	registerVal2.FEButtonPanel0 = registerVal3
	local registerVal4 = CoD.BM_Contracts_AAR_title.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 1.000000, 567.210000)
	registerVal4:setTopBottom(true, false, 0.000000, 33.000000)
	registerVal4.SubTitle:setText(Engine.Localize("MPUI_BM_CONTRACT_SPECIAL"))
	registerVal4.SubTitle:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal4)
	registerVal2.BMContractsAARtitle = registerVal4
	local registerVal5 = CoD.AAR_Contracts_PercentCompleteWidget.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, -8.000000, 116.000000)
	registerVal5:setTopBottom(true, false, 32.500000, 156.500000)
	registerVal5:setScale(0.700000)
	registerVal5.percentCompleteCircle:setShaderVector(0.000000, 0.500001, 0.000000, 0.000000, 0.000000)
	registerVal5.percentText:setText(Engine.Localize("888/888"))
	local function __FUNC_1616_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:subscribeToGlobalModel(arg1, "CurrentSpecialContract", nil, __FUNC_1616_)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Complete"
	local function __FUNC_1666_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isComplete")
	end

	registerVal9.condition = __FUNC_1666_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	local function __FUNC_16DA_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isComplete"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "isComplete", true, __FUNC_16DA_)
	registerVal2:addElement(registerVal5)
	registerVal2.SpecialContractPercentCompleteWidget = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 143.500000, 398.500000)
	registerVal6:setTopBottom(true, false, 75.000000, 94.000000)
	registerVal6:setRGB(0.940000, 0.890000, 0.590000)
	registerVal6:setText(Engine.Localize("MPUI_CONTRACTS_SPECIAL_TITLE_CAPS"))
	registerVal6:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal6:setLetterSpacing(-0.500000)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.SpecialContractName = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 143.500000, 445.500000)
	registerVal7:setTopBottom(true, false, 96.000000, 114.000000)
	registerVal7:setRGB(0.750000, 0.750000, 0.750000)
	registerVal7:setText("")
	registerVal7:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.SpecialContractDesc = registerVal7
	registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 421.000000, 512.000000)
	registerVal8:setTopBottom(true, false, 103.000000, 107.000000)
	registerVal8:setAlpha(0.250000)
	registerVal8:setZRot(90.000000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.CategoryListLine000 = registerVal8
	registerVal9 = CoD.SpecialContracts_RewardImage.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 514.040000, 702.040000)
	registerVal9:setTopBottom(true, false, 49.060000, 153.060000)
	registerVal9.CallingCard.CardIconFrame:setScale(0.490000)
	local function __FUNC_17F8_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:subscribeToGlobalModel(arg1, "CurrentSpecialContract", nil, __FUNC_17F8_)
	local function __FUNC_184A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.ItemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "CurrentSpecialContract", "image", __FUNC_184A_)
	registerVal2:addElement(registerVal9)
	registerVal2.RewardImage = registerVal9
	local registerVal10 = CoD.BM_CompleteRibbon.new(arg0, arg1)
	registerVal10:setLeftRight(false, true, -188.960000, -35.460000)
	registerVal10:setTopBottom(true, false, 4.500000, 28.500000)
	registerVal10.Text:setText(Engine.Localize("MPUI_BM_CONTRACTS_AVAILABLE"))
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "Completed"
	local function __FUNC_191B_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal14.condition = __FUNC_191B_
	registerVal13 = {registerVal14}
	registerVal10:mergeStateConditions(registerVal13)
	registerVal2:addElement(registerVal10)
	registerVal2.BMCompleteRibbon = registerVal10
	local registerVal11 = CoD.BM_CompleteRibbon.new(arg0, arg1)
	registerVal11:setLeftRight(false, true, -580.960000, -427.460000)
	registerVal11:setTopBottom(true, false, 4.500000, 28.500000)
	registerVal11.Text:setText(Engine.Localize("MPUI_BM_CONTRACTS_AVAILABLE"))
	registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "Completed"
	local function __FUNC_1964_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal15.condition = __FUNC_1964_
	registerVal14 = {registerVal15}
	registerVal11:mergeStateConditions(registerVal14)
	registerVal2:addElement(registerVal11)
	registerVal2.BMCompleteRibbon0 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 732.000000, 781.000000)
	registerVal12:setTopBottom(true, false, 1.000000, 33.000000)
	registerVal12:setImage(RegisterImage("uie_t7_bm_contracts_completed_ribbon"))
	registerVal2:addElement(registerVal12)
	registerVal2.CompletedIcon = registerVal12
	registerVal13 = {}
	registerVal14 = {}
	local function __FUNC_19B0_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel0:setLeftRight(true, true, 0.000000, -2.000000)
		registerVal2.FEButtonPanel0:setTopBottom(true, false, 2.000000, 32.500000)
		registerVal2.FEButtonPanel0:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BMContractsAARtitle:setLeftRight(true, true, 1.000000, -149.790000)
		registerVal2.BMContractsAARtitle:setTopBottom(true, false, 0.000000, 33.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.SpecialContractName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.SpecialContractDesc:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.CategoryListLine000:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal9.ItemImage:completeAnimation()
		registerVal9.CallingCard.CardIconFrame:completeAnimation()
		registerVal2.RewardImage:setLeftRight(true, false, 514.040000, 702.040000)
		registerVal2.RewardImage:setTopBottom(true, false, 49.060000, 153.060000)
		registerVal2.RewardImage:setAlpha(1.000000)
		registerVal2.RewardImage.ItemImage:setScale(1.000000)
		registerVal2.RewardImage.CallingCard.CardIconFrame:setScale(0.490000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BMCompleteRibbon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.BMCompleteRibbon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.CompletedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_19B0_
	registerVal13.DefaultState = registerVal14
	registerVal14 = {}
	local function __FUNC_1FD5_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BMContractsAARtitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.SpecialContractPercentCompleteWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.SpecialContractName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.SpecialContractDesc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.CategoryListLine000:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.RewardImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BMCompleteRibbon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.BMCompleteRibbon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.CompletedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_1FD5_
	registerVal13.Hidden = registerVal14
	registerVal14 = {}
	local function __FUNC_2441_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel0:setLeftRight(true, false, 0.000000, 383.000000)
		registerVal2.FEButtonPanel0:setTopBottom(true, false, 0.750000, 31.250000)
		registerVal2.FEButtonPanel0:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BMContractsAARtitle:setLeftRight(true, false, 1.000000, 383.000000)
		registerVal2.BMContractsAARtitle:setTopBottom(true, false, 0.000000, 33.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.SpecialContractPercentCompleteWidget:setLeftRight(true, false, -12.000000, 112.000000)
		registerVal2.SpecialContractPercentCompleteWidget:setTopBottom(true, false, 21.540000, 145.540000)
		registerVal2.SpecialContractPercentCompleteWidget:setScale(0.650000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.SpecialContractName:setLeftRight(true, false, 112.000000, 336.000000)
		registerVal2.SpecialContractName:setTopBottom(true, false, 57.910000, 75.090000)
		registerVal2.SpecialContractName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.SpecialContractDesc:setLeftRight(true, false, 113.500000, 349.500000)
		registerVal2.SpecialContractDesc:setTopBottom(true, false, 75.090000, 93.090000)
		registerVal2.SpecialContractDesc:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.CategoryListLine000:setLeftRight(true, false, 71.000000, 336.000000)
		registerVal2.CategoryListLine000:setTopBottom(true, false, 130.000000, 134.000000)
		registerVal2.CategoryListLine000:setAlpha(0.250000)
		registerVal2.CategoryListLine000:setZRot(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal9.ItemImage:completeAnimation()
		registerVal9.CallingCard.CardIconFrame:completeAnimation()
		registerVal2.RewardImage:setLeftRight(true, false, 136.900000, 270.100000)
		registerVal2.RewardImage:setTopBottom(true, false, 132.000000, 205.170000)
		registerVal2.RewardImage:setAlpha(1.000000)
		registerVal2.RewardImage.ItemImage:setScale(0.710000)
		registerVal2.RewardImage.CallingCard.CardIconFrame:setScale(0.420000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BMCompleteRibbon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.BMCompleteRibbon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.CompletedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_2441_
	registerVal13.Short = registerVal14
	registerVal14 = {}
	local function __FUNC_2C8A_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel0:setLeftRight(true, true, 0.000000, -2.000000)
		registerVal2.FEButtonPanel0:setTopBottom(true, false, 2.000000, 32.500000)
		registerVal2.FEButtonPanel0:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BMContractsAARtitle:setLeftRight(true, false, 1.000000, 567.210000)
		registerVal2.BMContractsAARtitle:setTopBottom(true, false, 0.000000, 33.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.CategoryListLine000:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal9.ItemImage:completeAnimation()
		registerVal9.CallingCard.CardIconFrame:completeAnimation()
		registerVal2.RewardImage:setLeftRight(true, false, 514.040000, 702.040000)
		registerVal2.RewardImage:setTopBottom(true, false, 49.060000, 153.060000)
		registerVal2.RewardImage:setAlpha(1.000000)
		registerVal2.RewardImage.ItemImage:setScale(1.000000)
		registerVal2.RewardImage.CallingCard.CardIconFrame:setScale(0.390000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BMCompleteRibbon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.BMCompleteRibbon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.CompletedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_2C8A_
	registerVal13.Completed = registerVal14
	registerVal14 = {}
	local function __FUNC_31EB_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel0:setLeftRight(true, false, 0.000000, 383.000000)
		registerVal2.FEButtonPanel0:setTopBottom(true, false, 1.000000, 31.500000)
		registerVal2.FEButtonPanel0:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BMContractsAARtitle:setLeftRight(true, false, 1.000000, 177.000000)
		registerVal2.BMContractsAARtitle:setTopBottom(true, false, 0.000000, 33.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.SpecialContractPercentCompleteWidget:setLeftRight(true, false, -12.000000, 112.000000)
		registerVal2.SpecialContractPercentCompleteWidget:setTopBottom(true, false, 21.540000, 145.540000)
		registerVal2.SpecialContractPercentCompleteWidget:setScale(0.650000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.SpecialContractName:setLeftRight(true, false, 112.000000, 336.000000)
		registerVal2.SpecialContractName:setTopBottom(true, false, 57.910000, 75.090000)
		registerVal2.SpecialContractName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.SpecialContractDesc:setLeftRight(true, false, 113.500000, 349.500000)
		registerVal2.SpecialContractDesc:setTopBottom(true, false, 75.090000, 93.090000)
		registerVal2.SpecialContractDesc:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.CategoryListLine000:setLeftRight(true, false, 71.000000, 336.000000)
		registerVal2.CategoryListLine000:setTopBottom(true, false, 130.000000, 134.000000)
		registerVal2.CategoryListLine000:setAlpha(0.250000)
		registerVal2.CategoryListLine000:setZRot(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal9.ItemImage:completeAnimation()
		registerVal9.CallingCard.CardIconFrame:completeAnimation()
		registerVal2.RewardImage:setLeftRight(true, false, 136.900000, 270.100000)
		registerVal2.RewardImage:setTopBottom(true, false, 132.000000, 205.170000)
		registerVal2.RewardImage:setAlpha(1.000000)
		registerVal2.RewardImage.ItemImage:setScale(0.710000)
		registerVal2.RewardImage.CallingCard.CardIconFrame:setScale(0.420000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BMCompleteRibbon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.BMCompleteRibbon0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.CompletedIcon:setLeftRight(true, false, 340.000000, 389.000000)
		registerVal2.CompletedIcon:setTopBottom(true, false, 1.000000, 33.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_31EB_
	registerVal13.CompletedShort = registerVal14
	registerVal2.clipsPerState = registerVal13
	local function __FUNC_3A70_(arg0)
		arg0.FEButtonPanel0:close()
		arg0.BMContractsAARtitle:close()
		arg0.SpecialContractPercentCompleteWidget:close()
		arg0.RewardImage:close()
		arg0.BMCompleteRibbon:close()
		arg0.BMCompleteRibbon0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3A70_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

