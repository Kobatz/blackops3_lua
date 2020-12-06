-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.InfoPaneItemNameLabel")
require("ui.uieditor.widgets.Border")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.systemOverlay_DailyChallenge = registerVal1
function CoD.systemOverlay_DailyChallenge.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.systemOverlay_DailyChallenge)
	registerVal2.id = "systemOverlay_DailyChallenge"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 320.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 438.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 320.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.bg = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 438.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 320.000000)
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_gradient"))
	registerVal4:setShaderVector(0.000000, 0.150000, 0.160000, 0.180000, 1.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 1.000000)
	registerVal4:setShaderVector(2.000000, 0.800000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.RewardGradient = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(false, false, -200.000000, 495.370000)
	registerVal5:setTopBottom(true, false, 11.660000, 51.660000)
	registerVal5:setText(Engine.Localize("MENU_DAILY_CHALLENGE"))
	registerVal5:setTTF("fonts/escom.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.DailyChallenge = registerVal5
	local registerVal6 = CoD.InfoPaneItemNameLabel.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -200.000000, 495.370000)
	registerVal6:setTopBottom(true, false, 66.660000, 106.660000)
	local function __FUNC_14A0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "title", true, __FUNC_14A0_)
	registerVal2:addElement(registerVal6)
	registerVal2.ChallengeName = registerVal6
	local registerVal7 = CoD.Border.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 440.000000, -144.630000)
	registerVal7:setTopBottom(true, false, 166.500000, 191.500000)
	registerVal2:addElement(registerVal7)
	registerVal2.ProgressBarBorder = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, 442.000000, -144.630000)
	registerVal8:setTopBottom(true, false, 167.500000, 190.500000)
	registerVal8:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	registerVal8:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_1578_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal8:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "progressPercentage", true, __FUNC_1578_)
	registerVal2:addElement(registerVal8)
	registerVal2.ProgressBar = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(false, false, -198.000000, 2.000000)
	registerVal9:setTopBottom(true, false, 196.500000, 221.500000)
	registerVal9:setTTF("fonts/default.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_16D0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "fractionText", true, __FUNC_16D0_)
	registerVal2:addElement(registerVal9)
	registerVal2.ProgressFraction = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(false, false, -198.000000, 495.370000)
	registerVal10:setTopBottom(true, false, 125.240000, 149.240000)
	registerVal10:setTTF("fonts/default.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_178A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "description", true, __FUNC_178A_)
	registerVal2:addElement(registerVal10)
	registerVal2.ChallengeDescription = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, false, -495.370000, -367.370000)
	registerVal11:setTopBottom(true, false, 89.000000, 217.000000)
	local function __FUNC_1842_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "image", true, __FUNC_1842_)
	registerVal2:addElement(registerVal11)
	registerVal2.RewardImage = registerVal11
	local registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(false, false, -529.370000, -329.370000)
	registerVal12:setTopBottom(true, false, 224.110000, 249.110000)
	registerVal12:setTTF("fonts/default.ttf")
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_18F4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal12:linkToElementModel(registerVal2, "rewardText", true, __FUNC_18F4_)
	registerVal2:addElement(registerVal12)
	registerVal2.RewardDescription = registerVal12
	local registerVal13 = LUI.UIText.new()
	registerVal13:setLeftRight(false, false, -507.650000, -351.100000)
	registerVal13:setTopBottom(true, false, 53.250000, 83.250000)
	registerVal13:setText(Engine.Localize("MPUI_REWARD"))
	registerVal13:setTTF("fonts/default.ttf")
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal13)
	registerVal2.RewardTitle = registerVal13
	local registerVal14 = LUI.UIText.new()
	registerVal14:setLeftRight(false, false, -198.000000, 495.370000)
	registerVal14:setTopBottom(true, false, 196.500000, 221.500000)
	registerVal14:setRGB(ColorSet.RewardChallenge.r, ColorSet.RewardChallenge.g, ColorSet.RewardChallenge.b)
	registerVal14:setAlpha(0.000000)
	registerVal14:setText(Engine.Localize("MPUI_AAR_CONTRACT_COMPLETE_CAPS"))
	registerVal14:setTTF("fonts/default.ttf")
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal14)
	registerVal2.CompleteText = registerVal14
	local registerVal15 = {}
	local registerVal16 = {}
	local function __FUNC_19AE_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal5:completeAnimation()
		registerVal2.DailyChallenge:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ChallengeName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ProgressBarBorder:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.ProgressBar:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.ProgressFraction:setLeftRight(false, false, -198.000000, 495.370000)
		registerVal2.ProgressFraction:setTopBottom(true, false, 196.500000, 221.500000)
		registerVal2.ProgressFraction:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.ChallengeDescription:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.RewardDescription:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.RewardTitle:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.CompleteText:setRGB(ColorSet.GroupName.r, ColorSet.GroupName.g, ColorSet.GroupName.b)
		registerVal2.CompleteText:setAlpha(0.000000)
		registerVal2.CompleteText:setText(Engine.Localize("MPUI_AAR_CONTRACT_COMPLETE_CAPS"))
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_19AE_
	registerVal15.DefaultState = registerVal16
	registerVal16 = {}
	local function __FUNC_1F8A_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal5:completeAnimation()
		registerVal2.DailyChallenge:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ChallengeName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ProgressBarBorder:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.ProgressBar:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.ProgressFraction:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.ChallengeDescription:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.RewardDescription:setRGB(ColorSet.RewardChallenge.r, ColorSet.RewardChallenge.g, ColorSet.RewardChallenge.b)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.RewardTitle:setRGB(ColorSet.RewardChallenge.r, ColorSet.RewardChallenge.g, ColorSet.RewardChallenge.b)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.CompleteText:setRGB(ColorSet.RewardChallenge.r, ColorSet.RewardChallenge.g, ColorSet.RewardChallenge.b)
		registerVal2.CompleteText:setAlpha(1.000000)
		registerVal2.CompleteText:setText(Engine.Localize("MPUI_AAR_CONTRACT_COMPLETE_CAPS"))
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_1F8A_
	registerVal15.Complete = registerVal16
	registerVal2.clipsPerState = registerVal15
	local registerVal17 = {}
	local registerVal18 = {}
	registerVal18.stateName = "Complete"
	local function __FUNC_256C_(arg0, arg2, arg3)
		return IsSelfModelValueGreaterThanOrEqualTo(arg2, arg1, "progressPercentage", 1.000000)
	end

	registerVal18.condition = __FUNC_256C_
	registerVal17 = {registerVal18}
	registerVal2:mergeStateConditions(registerVal17)
	local function __FUNC_2603_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "progressPercentage"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "progressPercentage", true, __FUNC_2603_)
	local function __FUNC_2728_(arg0)
		arg0.ChallengeName:close()
		arg0.ProgressBarBorder:close()
		arg0.ProgressBar:close()
		arg0.ProgressFraction:close()
		arg0.ChallengeDescription:close()
		arg0.RewardImage:close()
		arg0.RewardDescription:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2728_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

