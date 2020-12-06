-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.Challenges.Challenges_background2")
require("ui.uieditor.widgets.Border")
require("ui.uieditor.widgets.Challenges.Challenges_NearCompletion_CroppedImage")
require("ui.uieditor.widgets.horizontalScrollingTextBox_20pt")
require("ui.uieditor.widgets.horizontalScrollingTextBox_18pt")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Challenges_NearCompletionWidget = registerVal1
function CoD.Challenges_NearCompletionWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Challenges_NearCompletionWidget)
	registerVal2.id = "Challenges_NearCompletionWidget"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 590.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 80.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ButtonBoxLrgInactive.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal3:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal3:setRGB(0.870000, 0.970000, 1.000000)
	registerVal3:setAlpha(0.400000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxButtonLrgInactive = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BlackTint0 = registerVal4
	local registerVal5 = CoD.cac_ButtonBoxLrgInactive.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal5:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal5:setRGB(0.870000, 0.970000, 1.000000)
	registerVal5:setAlpha(0.500000)
	registerVal2:addElement(registerVal5)
	registerVal2.BoxButtonLrgInactive0 = registerVal5
	local registerVal6 = CoD.Challenges_background2.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6:setAlpha(0.300000)
	registerVal2:addElement(registerVal6)
	registerVal2.Challengesbackground2 = registerVal6
	local registerVal7 = CoD.Border.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 120.000000, -119.110000)
	registerVal7:setTopBottom(false, false, 20.000000, 31.500000)
	registerVal2:addElement(registerVal7)
	registerVal2.ProgressBarBorder = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, 121.770000, -119.110000)
	registerVal8:setTopBottom(false, false, 20.500000, 31.480000)
	registerVal8:setRGB(1.000000, 0.350000, 0.000000)
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	registerVal8:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.ProgressBar = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(false, true, -118.110000, 0.000000)
	registerVal9:setTopBottom(false, false, 17.250000, 34.250000)
	registerVal9:setTTF("fonts/default.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal9)
	registerVal2.ProgressFraction = registerVal9
	local registerVal10 = CoD.Challenges_NearCompletion_CroppedImage.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 5.890000, 101.890000)
	registerVal10:setTopBottom(false, false, -24.000000, 24.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.ChallengeIcon = registerVal10
	local registerVal11 = CoD.horizontalScrollingTextBox_20pt.new(arg0, arg1)
	registerVal11:setLeftRight(true, true, 121.770000, -14.610000)
	registerVal11:setTopBottom(false, false, -31.000000, -11.000000)
	registerVal11.textBox:setRGB(0.930000, 0.740000, 0.290000)
	registerVal11.textBox:setTTF("fonts/escom.ttf")
	registerVal11.textBox:setLetterSpacing(2.000000)
	registerVal11.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal2:addElement(registerVal11)
	registerVal2.ChallengeTitle = registerVal11
	local registerVal12 = CoD.horizontalScrollingTextBox_18pt.new(arg0, arg1)
	registerVal12:setLeftRight(true, true, 121.770000, -10.500000)
	registerVal12:setTopBottom(false, false, -11.000000, 9.000000)
	registerVal12.textBox:setTTF("fonts/default.ttf")
	registerVal12.textBox:setLineSpacing(-2.000000)
	registerVal12.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal2:addElement(registerVal12)
	registerVal2.ChallengeDescription = registerVal12
	local function __FUNC_11CA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal8:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal2.ProgressBar:linkToElementModel(registerVal2, "statPercent", true, __FUNC_11CA_)
	local function __FUNC_1320_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.ProgressFraction:linkToElementModel(registerVal2, "statFractionText", true, __FUNC_1320_)
	local function __FUNC_13DA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.Image:setImage(RegisterImage(GetBackgroundByID(registerVal1)))
		end
	end

	registerVal2.ChallengeIcon:linkToElementModel(registerVal2, "iconId", true, __FUNC_13DA_)
	local function __FUNC_14CA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.textBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.ChallengeTitle:linkToElementModel(registerVal2, "title", true, __FUNC_14CA_)
	local function __FUNC_159F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.textBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.ChallengeDescription:linkToElementModel(registerVal2, "description", true, __FUNC_159F_)
	local function __FUNC_1673_(arg0)
		arg0.BoxButtonLrgInactive:close()
		arg0.BoxButtonLrgInactive0:close()
		arg0.Challengesbackground2:close()
		arg0.ProgressBarBorder:close()
		arg0.ChallengeIcon:close()
		arg0.ChallengeTitle:close()
		arg0.ChallengeDescription:close()
		arg0.ProgressBar:close()
		arg0.ProgressFraction:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1673_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

