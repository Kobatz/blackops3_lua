-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.AAR.ContractsTab.AAR_Contracts_Pip")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AAR_Contracts_PercentCompleteWidgetWithPips = registerVal1
function CoD.AAR_Contracts_PercentCompleteWidgetWithPips.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AAR_Contracts_PercentCompleteWidgetWithPips)
	registerVal2.id = "AAR_Contracts_PercentCompleteWidgetWithPips"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 90.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 90.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.360000, 0.360000, 0.360000)
	registerVal3:setAlpha(0.350000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_aar_whiteringback"))
	registerVal2:addElement(registerVal3)
	registerVal2.BackgroundRing = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.950000, 0.910000, 0.110000)
	registerVal4:setAlpha(0.900000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_aar_whiteringthin"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_clock_normal"))
	registerVal4:setShaderVector(0.000000, 0.500001, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.percentCompleteCircle = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(false, false, -11.000000, 11.000000)
	registerVal5:setAlpha(0.800000)
	registerVal5:setText(Engine.Localize("50%"))
	registerVal5:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.percentText = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -35.000000, 35.000000)
	registerVal6:setTopBottom(false, false, -35.000000, 35.000000)
	registerVal6:setRGB(0.360000, 0.360000, 0.360000)
	registerVal6:setAlpha(0.350000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_challenges_crosslines"))
	registerVal2:addElement(registerVal6)
	registerVal2.CrossLines = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal7:setRGB(0.950000, 0.910000, 0.110000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_aar_whiteringthin"))
	registerVal2:addElement(registerVal7)
	registerVal2.AllCompleteRing = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, 22.000000, -22.000000)
	registerVal8:setTopBottom(true, true, 26.000000, -18.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_aar_yellowstar"))
	registerVal2:addElement(registerVal8)
	registerVal2.AllCompleteIcon = registerVal8
	local registerVal9 = CoD.AAR_Contracts_Pip.new(arg0, arg1)
	registerVal9:setLeftRight(false, true, -12.000000, 4.000000)
	registerVal9:setTopBottom(false, false, -8.000000, 8.000000)
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "AllComplete"
	local function __FUNC_131F_(arg0, arg1, arg2)
		return IsThermometerProgressEqualTo(1.000000)
	end

	registerVal13.condition = __FUNC_131F_
	local registerVal14 = {}
	registerVal14.stateName = "Complete"
	local function __FUNC_1383_(arg0, arg1, arg2)
		return IsThermometerUnlockIndexGreaterThanorEqualTo(1.000000)
	end

	registerVal14.condition = __FUNC_1383_
	registerVal12 = {registerVal13, registerVal14}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal2:addElement(registerVal9)
	registerVal2.RewardPip1 = registerVal9
	local registerVal10 = CoD.AAR_Contracts_Pip.new(arg0, arg1)
	registerVal10:setLeftRight(false, false, -8.000000, 8.000000)
	registerVal10:setTopBottom(false, true, -12.000000, 4.000000)
	registerVal13 = {}
	registerVal14 = {}
	registerVal14.stateName = "AllComplete"
	local function __FUNC_13F7_(arg0, arg1, arg2)
		return IsThermometerProgressEqualTo(1.000000)
	end

	registerVal14.condition = __FUNC_13F7_
	local registerVal15 = {}
	registerVal15.stateName = "Complete"
	local function __FUNC_145B_(arg0, arg1, arg2)
		return IsThermometerUnlockIndexGreaterThanorEqualTo(2.000000)
	end

	registerVal15.condition = __FUNC_145B_
	registerVal13 = {registerVal14, registerVal15}
	registerVal10:mergeStateConditions(registerVal13)
	registerVal2:addElement(registerVal10)
	registerVal2.RewardPip2 = registerVal10
	local registerVal11 = CoD.AAR_Contracts_Pip.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, -4.000000, 12.000000)
	registerVal11:setTopBottom(false, false, -8.000000, 8.000000)
	registerVal14 = {}
	registerVal15 = {}
	registerVal15.stateName = "AllComplete"
	local function __FUNC_14CF_(arg0, arg1, arg2)
		return IsThermometerProgressEqualTo(1.000000)
	end

	registerVal15.condition = __FUNC_14CF_
	local registerVal16 = {}
	registerVal16.stateName = "Complete"
	local function __FUNC_1533_(arg0, arg1, arg2)
		return IsThermometerUnlockIndexGreaterThanorEqualTo(3.000000)
	end

	registerVal16.condition = __FUNC_1533_
	registerVal14 = {registerVal15, registerVal16}
	registerVal11:mergeStateConditions(registerVal14)
	registerVal2:addElement(registerVal11)
	registerVal2.RewardPip3 = registerVal11
	registerVal12 = CoD.AAR_Contracts_Pip.new(arg0, arg1)
	registerVal12:setLeftRight(false, false, -8.000000, 8.000000)
	registerVal12:setTopBottom(true, false, -4.000000, 12.000000)
	registerVal15 = {}
	registerVal16 = {}
	registerVal16.stateName = "AllComplete"
	local function __FUNC_15A7_(arg0, arg1, arg2)
		return IsThermometerProgressEqualTo(1.000000)
	end

	registerVal16.condition = __FUNC_15A7_
	local registerVal17 = {}
	registerVal17.stateName = "Complete"
	local function __FUNC_160B_(arg0, arg1, arg2)
		return IsThermometerUnlockIndexGreaterThanorEqualTo(4.000000)
	end

	registerVal17.condition = __FUNC_160B_
	registerVal15 = {registerVal16, registerVal17}
	registerVal12:mergeStateConditions(registerVal15)
	registerVal2:addElement(registerVal12)
	registerVal2.RewardPip4 = registerVal12
	registerVal13 = {}
	registerVal14 = {}
	local function __FUNC_167F_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.BackgroundRing:setAlpha(0.350000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.percentCompleteCircle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.percentText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CrossLines:setAlpha(0.350000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.AllCompleteRing:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.AllCompleteIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.RewardPip1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.RewardPip2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.RewardPip3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.RewardPip4:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_167F_
	registerVal13.DefaultState = registerVal14
	registerVal14 = {}
	local function __FUNC_1ABA_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.BackgroundRing:setAlpha(0.350000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.percentCompleteCircle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.percentText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CrossLines:setAlpha(0.350000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.AllCompleteRing:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.AllCompleteIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.RewardPip1:setLeftRight(false, false, -8.000000, 8.000000)
		registerVal2.RewardPip1:setTopBottom(false, true, -12.000000, 4.000000)
		registerVal2.RewardPip1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.RewardPip2:setLeftRight(false, false, -8.000000, 8.000000)
		registerVal2.RewardPip2:setTopBottom(true, false, -4.000000, 12.000000)
		registerVal2.RewardPip2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.RewardPip3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.RewardPip4:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_1ABA_
	registerVal13.TwoPips = registerVal14
	registerVal14 = {}
	local function __FUNC_1FE0_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.BackgroundRing:setAlpha(0.350000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.percentCompleteCircle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.percentText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CrossLines:setAlpha(0.350000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.AllCompleteRing:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.AllCompleteIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.RewardPip1:setLeftRight(false, true, -18.000000, -2.000000)
		registerVal2.RewardPip1:setTopBottom(false, true, -33.000000, -17.000000)
		registerVal2.RewardPip1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.RewardPip2:setLeftRight(true, false, 2.000000, 18.000000)
		registerVal2.RewardPip2:setTopBottom(false, true, -33.000000, -17.000000)
		registerVal2.RewardPip2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.RewardPip3:setLeftRight(false, false, -8.000000, 8.000000)
		registerVal2.RewardPip3:setTopBottom(true, false, -4.000000, 12.000000)
		registerVal2.RewardPip3:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.RewardPip4:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_1FE0_
	registerVal13.ThreePips = registerVal14
	registerVal14 = {}
	local function __FUNC_256C_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.BackgroundRing:setAlpha(0.350000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.percentCompleteCircle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.percentText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CrossLines:setAlpha(0.350000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.AllCompleteRing:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.AllCompleteIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.RewardPip1:setLeftRight(false, true, -12.000000, 4.000000)
		registerVal2.RewardPip1:setTopBottom(false, false, -8.000000, 8.000000)
		registerVal2.RewardPip1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.RewardPip2:setLeftRight(false, false, -8.000000, 8.000000)
		registerVal2.RewardPip2:setTopBottom(false, true, -12.000000, 4.000000)
		registerVal2.RewardPip2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.RewardPip3:setLeftRight(true, false, -4.000000, 12.000000)
		registerVal2.RewardPip3:setTopBottom(false, false, -8.000000, 8.000000)
		registerVal2.RewardPip3:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.RewardPip4:setLeftRight(false, false, -8.000000, 8.000000)
		registerVal2.RewardPip4:setTopBottom(true, false, -4.000000, 12.000000)
		registerVal2.RewardPip4:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_256C_
	registerVal13.FourPips = registerVal14
	registerVal14 = {}
	local function __FUNC_2B34_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.BackgroundRing:setAlpha(0.350000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.percentCompleteCircle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.percentText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CrossLines:setAlpha(0.350000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.AllCompleteRing:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.AllCompleteIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.RewardPip1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.RewardPip2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.RewardPip3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.RewardPip4:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_2B34_
	registerVal13.CompleteZeroPips = registerVal14
	registerVal14 = {}
	local function __FUNC_2F72_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.BackgroundRing:setAlpha(0.350000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.percentCompleteCircle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.percentText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CrossLines:setAlpha(0.350000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.AllCompleteRing:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.AllCompleteIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.RewardPip1:setLeftRight(false, false, -8.000000, 8.000000)
		registerVal2.RewardPip1:setTopBottom(false, true, -12.000000, 4.000000)
		registerVal2.RewardPip1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.RewardPip2:setLeftRight(false, false, -8.000000, 8.000000)
		registerVal2.RewardPip2:setTopBottom(true, false, -4.000000, 12.000000)
		registerVal2.RewardPip2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.RewardPip3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.RewardPip4:setLeftRight(false, false, -8.000000, 8.000000)
		registerVal2.RewardPip4:setTopBottom(true, false, 3.000000, 19.000000)
		registerVal2.RewardPip4:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_2F72_
	registerVal13.CompleteTwoPips = registerVal14
	registerVal14 = {}
	local function __FUNC_34F2_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.BackgroundRing:setAlpha(0.350000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.percentCompleteCircle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.percentText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CrossLines:setAlpha(0.350000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.AllCompleteRing:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.AllCompleteIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.RewardPip1:setLeftRight(false, true, -17.000000, -1.000000)
		registerVal2.RewardPip1:setTopBottom(false, true, -32.000000, -16.000000)
		registerVal2.RewardPip1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.RewardPip2:setLeftRight(true, false, 1.000000, 17.000000)
		registerVal2.RewardPip2:setTopBottom(false, true, -32.000000, -16.000000)
		registerVal2.RewardPip2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.RewardPip3:setLeftRight(false, false, -8.000000, 8.000000)
		registerVal2.RewardPip3:setTopBottom(true, false, -4.000000, 12.000000)
		registerVal2.RewardPip3:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.RewardPip4:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_34F2_
	registerVal13.CompleteThreePips = registerVal14
	registerVal14 = {}
	local function __FUNC_3A77_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.BackgroundRing:setAlpha(0.350000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.percentCompleteCircle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.percentText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CrossLines:setAlpha(0.350000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.AllCompleteRing:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.AllCompleteIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.RewardPip1:setLeftRight(false, true, -12.000000, 4.000000)
		registerVal2.RewardPip1:setTopBottom(false, false, -8.000000, 8.000000)
		registerVal2.RewardPip1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.RewardPip2:setLeftRight(false, false, -8.000000, 8.000000)
		registerVal2.RewardPip2:setTopBottom(false, true, -12.000000, 4.000000)
		registerVal2.RewardPip2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.RewardPip3:setLeftRight(true, false, -4.000000, 12.000000)
		registerVal2.RewardPip3:setTopBottom(false, false, -8.000000, 8.000000)
		registerVal2.RewardPip3:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.RewardPip4:setLeftRight(false, false, -8.000000, 8.000000)
		registerVal2.RewardPip4:setTopBottom(true, false, -4.000000, 12.000000)
		registerVal2.RewardPip4:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_3A77_
	registerVal13.CompleteFourPips = registerVal14
	registerVal2.clipsPerState = registerVal13
	registerVal15 = {}
	registerVal16 = {}
	registerVal16.stateName = "TwoPips"
	local function __FUNC_403C_(arg0, arg1, arg2)
		return true
	end

	registerVal16.condition = __FUNC_403C_
	registerVal17 = {}
	registerVal17.stateName = "ThreePips"
	local function __FUNC_4070_(arg0, arg1, arg2)
		return true
	end

	registerVal17.condition = __FUNC_4070_
	local registerVal18 = {}
	registerVal18.stateName = "FourPips"
	local function __FUNC_40A4_(arg0, arg1, arg2)
		return true
	end

	registerVal18.condition = __FUNC_40A4_
	local registerVal19 = {}
	registerVal19.stateName = "CompleteZeroPips"
	local function __FUNC_40D8_(arg0, arg1, arg2)
		return IsSelfInState(registerVal2, "Complete")
	end

	registerVal19.condition = __FUNC_40D8_
	local registerVal20 = {}
	registerVal20.stateName = "CompleteTwoPips"
	local function __FUNC_4141_(arg0, arg1, arg2)
		return IsSelfInState(registerVal2, "Complete")
	end

	registerVal20.condition = __FUNC_4141_
	local registerVal21 = {}
	registerVal21.stateName = "CompleteThreePips"
	local function __FUNC_41A9_(arg0, arg1, arg2)
		return IsSelfInState(registerVal2, "Complete")
	end

	registerVal21.condition = __FUNC_41A9_
	local registerVal22 = {}
	registerVal22.stateName = "CompleteFourPips"
	local function __FUNC_4211_(arg0, arg1, arg2)
		return IsSelfInState(registerVal2, "Complete")
	end

	registerVal22.condition = __FUNC_4211_
	registerVal15 = {registerVal16, registerVal17, registerVal18, registerVal19, registerVal20, registerVal21, registerVal22}
	registerVal2:mergeStateConditions(registerVal15)
	local function __FUNC_4279_(arg0)
		arg0.RewardPip1:close()
		arg0.RewardPip2:close()
		arg0.RewardPip3:close()
		arg0.RewardPip4:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_4279_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

