-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
require("ui.uieditor.widgets.AAR.ContractsTab.AAR_Contracts_timer")
require("ui.uieditor.widgets.AAR.ContractsTab.AAR_Contracts_PercentCompleteWidgetWithPips")
local function __FUNC_2D8_(arg0, arg1)
	local function __FUNC_426_()
		arg0.PercentCompleteWidget.percentCompleteCircle:setShaderVector(0.000000, GetPromoCircleFill(arg1, 0.000000, 0.000000, 0.000000, 0.000000))
		arg0.PercentCompleteWidget.percentText:setText(Engine.Localize(GetPromoCirclePercentText("MPUI_PERCENT")))
	end

	local registerVal3 = CoD.GetThermometerProgress()
	if 0.000000 <= registerVal3 then
		__FUNC_426_()
	else
		local function __FUNC_5D1_(arg1)
			local registerVal1 = CoD.GetThermometerProgress()
			__FUNC_426_()
			if 0.000000 <= registerVal1 and arg0.thermometerUpdateTimer then
				arg0.thermometerUpdateTimer:close()
				arg0.thermometerUpdateTimer = nil
			end
		end

		registerVal3 = LUI.UITimer.newElementTimer(2000.000000, false, __FUNC_5D1_)
		arg0.thermometerUpdateTimer = registerVal3
		arg0:addElement(arg0.thermometerUpdateTimer)
	end
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.AAR_Contracts_CommunityWidget = registerVal2
local function __FUNC_6BA_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AAR_Contracts_CommunityWidget)
	registerVal2.id = "AAR_Contracts_CommunityWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 384.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 211.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, -2.000000)
	registerVal3:setTopBottom(true, false, 2.000000, 32.500000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.400000)
	registerVal2:addElement(registerVal3)
	registerVal2.FEButtonPanel0 = registerVal3
	local registerVal4 = CoD.AAR_Contracts_timer.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 9.000000, 176.500000)
	registerVal4:setTopBottom(true, false, 7.000000, 26.000000)
	registerVal4.Weekly:setText(Engine.Localize("MENU_TAB_COMMUNITY_CAPS"))
	registerVal4.Timer:setText(Engine.Localize("$(contractDailyRemaining)"))
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "HideTimer"
	local function __FUNC_1597_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal8.condition = __FUNC_1597_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal2:addElement(registerVal4)
	registerVal2.BMContractsAARtitle = registerVal4
	local registerVal5 = CoD.AAR_Contracts_PercentCompleteWidgetWithPips.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 5.000000, 95.000000)
	registerVal5:setTopBottom(true, false, 38.060000, 128.060000)
	registerVal5:setScale(0.900000)
	registerVal5.percentCompleteCircle:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5.percentText:setText(Engine.Localize(""))
	registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "TwoPips"
	local function __FUNC_15E0_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal9.condition = __FUNC_15E0_
	local registerVal10 = {}
	registerVal10.stateName = "ThreePips"
	local function __FUNC_162D_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal10.condition = __FUNC_162D_
	local registerVal11 = {}
	registerVal11.stateName = "FourPips"
	local function __FUNC_1679_(arg0, arg1, arg2)
		local registerVal3 = IsThermometerProgressEqualTo(1.000000)
		return (not registerVal3)
	end

	registerVal11.condition = __FUNC_1679_
	local registerVal12 = {}
	registerVal12.stateName = "CompleteZeroPips"
	local function __FUNC_16E3_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal12.condition = __FUNC_16E3_
	local registerVal13 = {}
	registerVal13.stateName = "CompleteTwoPips"
	local function __FUNC_172D_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal13.condition = __FUNC_172D_
	local registerVal14 = {}
	registerVal14.stateName = "CompleteThreePips"
	local function __FUNC_1779_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal14.condition = __FUNC_1779_
	local registerVal15 = {}
	registerVal15.stateName = "CompleteFourPips"
	local function __FUNC_17C5_(arg0, arg1, arg2)
		return IsThermometerProgressEqualTo(1.000000)
	end

	registerVal15.condition = __FUNC_17C5_
	registerVal8 = {registerVal9, registerVal10, registerVal11, registerVal12, registerVal13, registerVal14, registerVal15}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal2:addElement(registerVal5)
	registerVal2.PercentCompleteWidget = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 109.500000, 364.500000)
	registerVal6:setTopBottom(true, false, 56.060000, 75.060000)
	registerVal6:setRGB(0.940000, 0.890000, 0.590000)
	registerVal6:setText(Engine.Localize("MPUI_CONTRACTS_SPECIAL_TITLE_CAPS"))
	registerVal6:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal6:setLetterSpacing(-0.500000)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.SpecialContractName = registerVal6
	registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 110.500000, 353.500000)
	registerVal7:setTopBottom(true, false, 77.060000, 95.060000)
	registerVal7:setRGB(0.750000, 0.750000, 0.750000)
	registerVal7:setText("")
	registerVal7:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.SpecialContractDesc = registerVal7
	registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 71.000000, 336.000000)
	registerVal8:setTopBottom(true, false, 130.000000, 134.000000)
	registerVal8:setAlpha(0.250000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.CategoryListLine000 = registerVal8
	registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, true, -43.000000, 6.000000)
	registerVal9:setTopBottom(true, false, 1.000000, 33.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setImage(RegisterImage("uie_t7_bm_contracts_completed_ribbon"))
	registerVal2:addElement(registerVal9)
	registerVal2.CompletedIcon = registerVal9
	registerVal10 = {}
	registerVal11 = {}
	local function __FUNC_182B_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel0:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
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
		registerVal2.CompletedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_182B_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_1ABB_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel0:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
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
		registerVal2.CompletedIcon:setLeftRight(false, true, -44.000000, 5.000000)
		registerVal2.CompletedIcon:setTopBottom(true, false, 1.000000, 33.000000)
		registerVal2.CompletedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_1ABB_
	registerVal10.Complete = registerVal11
	registerVal2.clipsPerState = registerVal10
	registerVal12 = {}
	registerVal13 = {}
	registerVal13.stateName = "Complete"
	local function __FUNC_1DCC_(arg0, arg1, arg2)
		return IsThermometerProgressEqualTo(1.000000)
	end

	registerVal13.condition = __FUNC_1DCC_
	registerVal12 = {registerVal13}
	registerVal2:mergeStateConditions(registerVal12)
	local function __FUNC_1E33_(arg0)
		arg0.FEButtonPanel0:close()
		arg0.BMContractsAARtitle:close()
		arg0.PercentCompleteWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1E33_)
	if __FUNC_2D8_ then
		__FUNC_2D8_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.AAR_Contracts_CommunityWidget.new = __FUNC_6BA_
