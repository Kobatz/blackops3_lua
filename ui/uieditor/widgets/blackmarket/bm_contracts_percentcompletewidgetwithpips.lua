-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BlackMarket.BM_Contracts_Pip")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_Contracts_PercentCompleteWidgetWithPips = registerVal1
function CoD.BM_Contracts_PercentCompleteWidgetWithPips.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_Contracts_PercentCompleteWidgetWithPips)
	registerVal2.id = "BM_Contracts_PercentCompleteWidgetWithPips"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 90.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 90.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_contract_complete"))
	registerVal2:addElement(registerVal3)
	registerVal2.AllCompleteIcon = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_contract_inprogressbacker"))
	registerVal2:addElement(registerVal4)
	registerVal2.BackgroundRing = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, -1.000000, -1.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_blackmarket_contract_inprogress"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_clock_normal"))
	registerVal5:setShaderVector(0.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(3.000000, 0.050000, 0.050000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.percentCompleteCircle = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(false, false, -11.000000, 11.000000)
	registerVal6:setRGB(0.600000, 1.000000, 0.930000)
	registerVal6:setScale(0.900000)
	registerVal6:setText(Engine.Localize("50%"))
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal6:setShaderVector(0.000000, 0.040000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setLetterSpacing(0.500000)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.percentText = registerVal6
	local registerVal7 = CoD.BM_Contracts_Pip.new(arg0, arg1)
	registerVal7:setLeftRight(false, true, -19.000000, -3.000000)
	registerVal7:setTopBottom(false, true, -53.000000, -37.000000)
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "AllComplete"
	local function __FUNC_122F_(arg0, arg1, arg2)
		return IsThermometerProgressEqualTo(1.000000)
	end

	registerVal11.condition = __FUNC_122F_
	local registerVal12 = {}
	registerVal12.stateName = "Complete"
	local function __FUNC_1293_(arg0, arg1, arg2)
		return IsThermometerUnlockIndexGreaterThanorEqualTo(1.000000)
	end

	registerVal12.condition = __FUNC_1293_
	registerVal10 = {registerVal11, registerVal12}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal2:addElement(registerVal7)
	registerVal2.RewardPip1 = registerVal7
	local registerVal8 = CoD.BM_Contracts_Pip.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 37.000000, 53.000000)
	registerVal8:setTopBottom(false, true, -17.000000, -1.000000)
	registerVal11 = {}
	registerVal12 = {}
	registerVal12.stateName = "AllComplete"
	local function __FUNC_1307_(arg0, arg1, arg2)
		return IsThermometerProgressEqualTo(1.000000)
	end

	registerVal12.condition = __FUNC_1307_
	local registerVal13 = {}
	registerVal13.stateName = "Complete"
	local function __FUNC_136B_(arg0, arg1, arg2)
		return IsThermometerUnlockIndexGreaterThanorEqualTo(2.000000)
	end

	registerVal13.condition = __FUNC_136B_
	registerVal11 = {registerVal12, registerVal13}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal2:addElement(registerVal8)
	registerVal2.RewardPip2 = registerVal8
	local registerVal9 = CoD.BM_Contracts_Pip.new(arg0, arg1)
	registerVal9:setLeftRight(false, false, -45.000000, -29.000000)
	registerVal9:setTopBottom(true, false, 37.000000, 53.000000)
	registerVal12 = {}
	registerVal13 = {}
	registerVal13.stateName = "AllComplete"
	local function __FUNC_13DF_(arg0, arg1, arg2)
		return IsThermometerProgressEqualTo(1.000000)
	end

	registerVal13.condition = __FUNC_13DF_
	local registerVal14 = {}
	registerVal14.stateName = "Complete"
	local function __FUNC_1443_(arg0, arg1, arg2)
		return IsThermometerUnlockIndexGreaterThanorEqualTo(3.000000)
	end

	registerVal14.condition = __FUNC_1443_
	registerVal12 = {registerVal13, registerVal14}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal2:addElement(registerVal9)
	registerVal2.RewardPip3 = registerVal9
	registerVal10 = CoD.BM_Contracts_Pip.new(arg0, arg1)
	registerVal10:setLeftRight(false, false, -8.000000, 8.000000)
	registerVal10:setTopBottom(true, false, 2.000000, 18.000000)
	registerVal13 = {}
	registerVal14 = {}
	registerVal14.stateName = "AllComplete"
	local function __FUNC_14B7_(arg0, arg1, arg2)
		return IsThermometerProgressEqualTo(1.000000)
	end

	registerVal14.condition = __FUNC_14B7_
	local registerVal15 = {}
	registerVal15.stateName = "Complete"
	local function __FUNC_151B_(arg0, arg1, arg2)
		return IsThermometerUnlockIndexGreaterThanorEqualTo(4.000000)
	end

	registerVal15.condition = __FUNC_151B_
	registerVal13 = {registerVal14, registerVal15}
	registerVal10:mergeStateConditions(registerVal13)
	registerVal2:addElement(registerVal10)
	registerVal2.RewardPip4 = registerVal10
	registerVal11 = {}
	registerVal12 = {}
	local function __FUNC_158F_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.AllCompleteIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BackgroundRing:setAlpha(0.350000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.percentCompleteCircle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.percentText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.RewardPip1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.RewardPip2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.RewardPip3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.RewardPip4:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_158F_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_1915_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.AllCompleteIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BackgroundRing:setAlpha(0.350000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.percentCompleteCircle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.percentText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.RewardPip1:setLeftRight(false, false, -8.000000, 8.000000)
		registerVal2.RewardPip1:setTopBottom(false, true, -17.000000, -1.000000)
		registerVal2.RewardPip1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.RewardPip2:setLeftRight(false, false, -8.000000, 8.000000)
		registerVal2.RewardPip2:setTopBottom(true, false, 2.000000, 18.000000)
		registerVal2.RewardPip2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.RewardPip3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.RewardPip4:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_1915_
	registerVal11.TwoPips = registerVal12
	registerVal12 = {}
	local function __FUNC_1D82_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.AllCompleteIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BackgroundRing:setAlpha(0.350000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.percentCompleteCircle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.percentText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.RewardPip1:setLeftRight(false, true, -23.000000, -7.000000)
		registerVal2.RewardPip1:setTopBottom(false, true, -37.000000, -21.000000)
		registerVal2.RewardPip1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.RewardPip2:setLeftRight(true, false, 4.000000, 20.000000)
		registerVal2.RewardPip2:setTopBottom(false, true, -37.000000, -21.000000)
		registerVal2.RewardPip2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.RewardPip3:setLeftRight(false, false, -8.000000, 8.000000)
		registerVal2.RewardPip3:setTopBottom(true, false, 2.000000, 18.000000)
		registerVal2.RewardPip3:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.RewardPip4:setLeftRight(false, false, -8.000000, 8.000000)
		registerVal2.RewardPip4:setTopBottom(true, false, 2.000000, 18.000000)
		registerVal2.RewardPip4:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_1D82_
	registerVal11.ThreePips = registerVal12
	registerVal12 = {}
	local function __FUNC_22A2_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.AllCompleteIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BackgroundRing:setAlpha(0.350000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.percentCompleteCircle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.percentText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.RewardPip1:setLeftRight(false, true, -19.000000, -3.000000)
		registerVal2.RewardPip1:setTopBottom(false, false, -8.000000, 8.000000)
		registerVal2.RewardPip1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.RewardPip2:setLeftRight(false, false, -8.000000, 8.000000)
		registerVal2.RewardPip2:setTopBottom(false, true, -17.000000, -1.000000)
		registerVal2.RewardPip2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.RewardPip3:setLeftRight(true, false, 0.000000, 16.000000)
		registerVal2.RewardPip3:setTopBottom(false, false, -8.000000, 8.000000)
		registerVal2.RewardPip3:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.RewardPip4:setLeftRight(false, false, -8.000000, 8.000000)
		registerVal2.RewardPip4:setTopBottom(true, false, 2.000000, 18.000000)
		registerVal2.RewardPip4:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_22A2_
	registerVal11.FourPips = registerVal12
	registerVal12 = {}
	local function __FUNC_27BD_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.AllCompleteIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BackgroundRing:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.percentCompleteCircle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.percentText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.RewardPip1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.RewardPip2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.RewardPip3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.RewardPip4:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_27BD_
	registerVal11.CompleteZeroPips = registerVal12
	registerVal12 = {}
	local function __FUNC_2B40_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.AllCompleteIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BackgroundRing:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.percentCompleteCircle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.percentText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.RewardPip1:setLeftRight(false, false, -9.000000, 7.000000)
		registerVal2.RewardPip1:setTopBottom(false, true, -17.000000, -1.000000)
		registerVal2.RewardPip1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.RewardPip2:setLeftRight(false, false, -9.000000, 7.000000)
		registerVal2.RewardPip2:setTopBottom(true, false, 1.000000, 17.000000)
		registerVal2.RewardPip2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.RewardPip3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.RewardPip4:setLeftRight(false, false, -8.000000, 8.000000)
		registerVal2.RewardPip4:setTopBottom(true, false, 3.000000, 19.000000)
		registerVal2.RewardPip4:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_2B40_
	registerVal11.CompleteTwoPips = registerVal12
	registerVal12 = {}
	local function __FUNC_3008_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.AllCompleteIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BackgroundRing:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.percentCompleteCircle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.percentText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.RewardPip1:setLeftRight(false, true, -23.000000, -7.000000)
		registerVal2.RewardPip1:setTopBottom(false, true, -37.000000, -21.000000)
		registerVal2.RewardPip1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.RewardPip2:setLeftRight(true, false, 4.000000, 20.000000)
		registerVal2.RewardPip2:setTopBottom(false, true, -37.000000, -21.000000)
		registerVal2.RewardPip2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.RewardPip3:setLeftRight(false, false, -9.000000, 7.000000)
		registerVal2.RewardPip3:setTopBottom(true, false, 1.000000, 17.000000)
		registerVal2.RewardPip3:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.RewardPip4:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_3008_
	registerVal11.CompleteThreePips = registerVal12
	registerVal12 = {}
	local function __FUNC_34D5_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.AllCompleteIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BackgroundRing:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.percentCompleteCircle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.percentText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.RewardPip1:setLeftRight(false, true, -19.000000, -3.000000)
		registerVal2.RewardPip1:setTopBottom(false, false, -8.000000, 8.000000)
		registerVal2.RewardPip1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.RewardPip2:setLeftRight(false, false, -9.000000, 7.000000)
		registerVal2.RewardPip2:setTopBottom(false, true, -17.000000, -1.000000)
		registerVal2.RewardPip2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.RewardPip3:setLeftRight(true, false, 0.000000, 16.000000)
		registerVal2.RewardPip3:setTopBottom(false, false, -8.000000, 8.000000)
		registerVal2.RewardPip3:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.RewardPip4:setLeftRight(false, false, -8.000000, 8.000000)
		registerVal2.RewardPip4:setTopBottom(true, false, 1.000000, 17.000000)
		registerVal2.RewardPip4:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_34D5_
	registerVal11.CompleteFourPips = registerVal12
	registerVal2.clipsPerState = registerVal11
	registerVal13 = {}
	registerVal14 = {}
	registerVal14.stateName = "TwoPips"
	local function __FUNC_39F1_(arg0, arg1, arg2)
		return true
	end

	registerVal14.condition = __FUNC_39F1_
	registerVal15 = {}
	registerVal15.stateName = "ThreePips"
	local function __FUNC_3A24_(arg0, arg1, arg2)
		return true
	end

	registerVal15.condition = __FUNC_3A24_
	local registerVal16 = {}
	registerVal16.stateName = "FourPips"
	local function __FUNC_3A58_(arg0, arg1, arg2)
		return true
	end

	registerVal16.condition = __FUNC_3A58_
	local registerVal17 = {}
	registerVal17.stateName = "CompleteZeroPips"
	local function __FUNC_3A8C_(arg0, arg1, arg2)
		return IsSelfInState(registerVal2, "Complete")
	end

	registerVal17.condition = __FUNC_3A8C_
	local registerVal18 = {}
	registerVal18.stateName = "CompleteTwoPips"
	local function __FUNC_3AF5_(arg0, arg1, arg2)
		return IsSelfInState(registerVal2, "Complete")
	end

	registerVal18.condition = __FUNC_3AF5_
	local registerVal19 = {}
	registerVal19.stateName = "CompleteThreePips"
	local function __FUNC_3B5D_(arg0, arg1, arg2)
		return IsSelfInState(registerVal2, "Complete")
	end

	registerVal19.condition = __FUNC_3B5D_
	local registerVal20 = {}
	registerVal20.stateName = "CompleteFourPips"
	local function __FUNC_3BC5_(arg0, arg1, arg2)
		return IsSelfInState(registerVal2, "Complete")
	end

	registerVal20.condition = __FUNC_3BC5_
	registerVal13 = {registerVal14, registerVal15, registerVal16, registerVal17, registerVal18, registerVal19, registerVal20}
	registerVal2:mergeStateConditions(registerVal13)
	local function __FUNC_3C2D_(arg0)
		arg0.RewardPip1:close()
		arg0.RewardPip2:close()
		arg0.RewardPip3:close()
		arg0.RewardPip4:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3C2D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

