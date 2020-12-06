-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Common.common_PanelBox01")
require("ui.uieditor.widgets.AAR.ContractsTab.AAR_Contracts_BlackjackInfoWidget")
require("ui.uieditor.widgets.AAR.ContractsTab.AAR_Contracts_WeeklyContractsWidget")
require("ui.uieditor.widgets.AAR.ContractsTab.AAR_Contracts_DailyContractWidget")
require("ui.uieditor.widgets.AAR.ContractsTab.AAR_Contracts_SpecialContractWidget")
require("ui.uieditor.widgets.AAR.ContractsTab.AAR_Contracts_CommunityWidget")
local function __FUNC_3E2_(arg0, arg1)
	local function __FUNC_51B_(arg0, arg1)
		LuaUtils.CycleContracts()
	end

	arg0:registerEventHandler("contracts_time_remaining_tick", __FUNC_51B_)
	arg0:addElement(LUI.UITimer.new(250.000000, "contracts_time_remaining_tick", false, arg0))
	LuaUtils.CycleContracts()
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.ContractsTabWidget = registerVal2
local function __FUNC_582_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_3E2_ then
		__FUNC_3E2_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ContractsTabWidget)
	registerVal2.id = "ContractsTabWidget"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 550.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.common_PanelBox01.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 33.000000, 309.000000)
	registerVal3:setTopBottom(true, false, 234.000000, 532.590000)
	registerVal3.Backing:setAlpha(0.050000)
	registerVal3.Image:setAlpha(0.250000)
	registerVal2:addElement(registerVal3)
	registerVal2.commonPanelBox01 = registerVal3
	local registerVal4 = CoD.common_PanelBox01.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 319.000000, 818.000000)
	registerVal4:setTopBottom(true, false, 234.000000, 532.590000)
	registerVal4.Backing:setAlpha(0.050000)
	registerVal4.Image:setAlpha(0.250000)
	registerVal2:addElement(registerVal4)
	registerVal2.commonPanelBox02 = registerVal4
	local registerVal5 = CoD.common_PanelBox01.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 828.000000, 1246.000000)
	registerVal5:setTopBottom(true, false, 12.000000, 533.000000)
	registerVal5.Backing:setAlpha(0.050000)
	registerVal5.Image:setAlpha(0.250000)
	registerVal2:addElement(registerVal5)
	registerVal2.commonPanelBox03 = registerVal5
	local registerVal6 = CoD.common_PanelBox01.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 33.000000, 818.000000)
	registerVal6:setTopBottom(true, false, 11.590000, 224.000000)
	registerVal6.Backing:setAlpha(0.050000)
	registerVal6.Image:setAlpha(0.250000)
	registerVal2:addElement(registerVal6)
	registerVal2.commonPanelBox030 = registerVal6
	local registerVal7 = CoD.common_PanelBox01.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 33.000000, 420.000000)
	registerVal7:setTopBottom(true, false, 11.590000, 224.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7.Backing:setAlpha(0.050000)
	registerVal7.Image:setAlpha(0.250000)
	registerVal2:addElement(registerVal7)
	registerVal2.commonPanelBox031 = registerVal7
	local registerVal8 = CoD.AAR_Contracts_BlackjackInfoWidget.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 830.000000, 1244.000000)
	registerVal8:setTopBottom(true, false, 13.000000, 530.000000)
	registerVal8.BMContractsAARtitle.SubTitle:setText(Engine.Localize("MPUI_BM_CONTRACT_BLACKJACK"))
	registerVal2:addElement(registerVal8)
	registerVal2.BlackjackInfo = registerVal8
	local registerVal9 = CoD.AAR_Contracts_WeeklyContractsWidget.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 321.000000, 818.000000)
	registerVal9:setTopBottom(true, false, 234.000000, 530.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.WeeklyContractsWidget = registerVal9
	local registerVal10 = CoD.AAR_Contracts_DailyContractWidget.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 36.000000, 308.000000)
	registerVal10:setTopBottom(true, false, 234.000000, 530.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.DailyContractWidget = registerVal10
	local registerVal11 = CoD.AAR_Contracts_SpecialContractWidget.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 35.000000, 817.000000)
	registerVal11:setTopBottom(true, false, 13.000000, 224.000000)
	registerVal11.BMContractsAARtitle.SubTitle:setText(Engine.Localize("MPUI_BM_CONTRACT_SPECIAL"))
	local function __FUNC_154D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal11.SpecialContractPercentCompleteWidget.percentCompleteCircle:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal11:subscribeToGlobalModel(arg1, "CurrentSpecialContract", "percentComplete", __FUNC_154D_)
	local function __FUNC_1709_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.SpecialContractPercentCompleteWidget.percentText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:subscribeToGlobalModel(arg1, "CurrentSpecialContract", "fractionText", __FUNC_1709_)
	local function __FUNC_181D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.SpecialContractName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:subscribeToGlobalModel(arg1, "CurrentSpecialContract", "name", __FUNC_181D_)
	local function __FUNC_18FF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.SpecialContractDesc:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:subscribeToGlobalModel(arg1, "CurrentSpecialContract", "description", __FUNC_18FF_)
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "Hidden"
	local function __FUNC_19DF_(arg0, arg1, arg2)
		return IsDvarValueEqualTo("enable_weapon_contract", false)
	end

	registerVal15.condition = __FUNC_19DF_
	local registerVal16 = {}
	registerVal16.stateName = "Short"
	local function __FUNC_1A58_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal16.condition = __FUNC_1A58_
	local registerVal17 = {}
	registerVal17.stateName = "Completed"
	local function __FUNC_1AA5_(arg0, arg2, arg3)
		local registerVal3 = IsDvarValueEqualTo("ui_enablePromoMenu", false)
		if registerVal3 then
			registerVal3 = IsModelValueTrue(arg1, "CurrentSpecialContract.isComplete")
		end
		return registerVal3
	end

	registerVal17.condition = __FUNC_1AA5_
	local registerVal18 = {}
	registerVal18.stateName = "CompletedShort"
	local function __FUNC_1B79_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal18.condition = __FUNC_1B79_
	registerVal14 = {registerVal15, registerVal16, registerVal17, registerVal18}
	registerVal11:mergeStateConditions(registerVal14)
	registerVal15 = Engine.GetModelForController(arg1)
	registerVal14 = Engine.GetModel(registerVal15, "CurrentSpecialContract.isComplete")
	local function __FUNC_1BC5_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CurrentSpecialContract.isComplete"
		arg0:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:subscribeToModel(registerVal14, __FUNC_1BC5_)
	registerVal2:addElement(registerVal11)
	registerVal2.SpecialContractWidget = registerVal11
	local registerVal12 = CoD.AAR_Contracts_CommunityWidget.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 35.000000, 419.000000)
	registerVal12:setTopBottom(true, false, 13.000000, 224.000000)
	registerVal12.SpecialContractName:setText(LocalizeToUpperString("CONTRACT_COMMUNITY_TITLE_ROADTOCHAMPS"))
	registerVal12.SpecialContractDesc:setText(Engine.Localize("MPUI_CONTRACTS_RTC_DESC"))
	registerVal2:addElement(registerVal12)
	registerVal2.CommunityWidget = registerVal12
	local registerVal13 = {}
	registerVal14 = {}
	local function __FUNC_1CFB_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.commonPanelBox01:setLeftRight(true, false, 33.000000, 309.000000)
		registerVal2.commonPanelBox01:setTopBottom(true, false, 206.000000, 532.590000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.commonPanelBox02:setLeftRight(true, false, 319.000000, 818.000000)
		registerVal2.commonPanelBox02:setTopBottom(true, false, 206.000000, 532.590000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.commonPanelBox030:setLeftRight(true, false, 33.000000, 818.000000)
		registerVal2.commonPanelBox030:setTopBottom(true, false, 11.590000, 196.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.commonPanelBox031:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.WeeklyContractsWidget:setLeftRight(true, false, 321.000000, 818.000000)
		registerVal2.WeeklyContractsWidget:setTopBottom(true, false, 206.000000, 530.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.DailyContractWidget:setLeftRight(true, false, 36.000000, 308.000000)
		registerVal2.DailyContractWidget:setTopBottom(true, false, 206.000000, 530.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.SpecialContractWidget:setLeftRight(true, false, 35.000000, 817.000000)
		registerVal2.SpecialContractWidget:setTopBottom(true, false, 13.000000, 196.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.CommunityWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_1CFB_
	registerVal13.DefaultState = registerVal14
	registerVal14 = {}
	local function __FUNC_224F_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.commonPanelBox01:setLeftRight(true, false, 33.000000, 309.000000)
		registerVal2.commonPanelBox01:setTopBottom(true, false, 237.000000, 532.590000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.commonPanelBox02:setLeftRight(true, false, 319.000000, 818.000000)
		registerVal2.commonPanelBox02:setTopBottom(true, false, 237.000000, 532.590000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.commonPanelBox030:setLeftRight(true, false, 431.000000, 818.000000)
		registerVal2.commonPanelBox030:setTopBottom(true, false, 11.590000, 226.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.commonPanelBox031:setLeftRight(true, false, 33.000000, 420.000000)
		registerVal2.commonPanelBox031:setTopBottom(true, false, 11.590000, 226.000000)
		registerVal2.commonPanelBox031:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.WeeklyContractsWidget:setLeftRight(true, false, 321.000000, 818.000000)
		registerVal2.WeeklyContractsWidget:setTopBottom(true, false, 237.000000, 547.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.DailyContractWidget:setLeftRight(true, false, 35.000000, 309.000000)
		registerVal2.DailyContractWidget:setTopBottom(true, false, 237.000000, 541.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.SpecialContractWidget:setLeftRight(true, false, 433.000000, 817.000000)
		registerVal2.SpecialContractWidget:setTopBottom(true, false, 14.000000, 226.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.CommunityWidget:setLeftRight(true, false, 35.000000, 419.000000)
		registerVal2.CommunityWidget:setTopBottom(true, false, 13.000000, 226.000000)
		registerVal2.CommunityWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_224F_
	registerVal13.CommunityVisible = registerVal14
	registerVal2.clipsPerState = registerVal13
	registerVal15 = {}
	registerVal16 = {}
	registerVal16.stateName = "CommunityVisible"
	local function __FUNC_2857_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal16.condition = __FUNC_2857_
	registerVal15 = {registerVal16}
	registerVal2:mergeStateConditions(registerVal15)
	local function __FUNC_28A1_(arg0)
		arg0.commonPanelBox01:close()
		arg0.commonPanelBox02:close()
		arg0.commonPanelBox03:close()
		arg0.commonPanelBox030:close()
		arg0.commonPanelBox031:close()
		arg0.BlackjackInfo:close()
		arg0.WeeklyContractsWidget:close()
		arg0.DailyContractWidget:close()
		arg0.SpecialContractWidget:close()
		arg0.CommunityWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_28A1_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ContractsTabWidget.new = __FUNC_582_
