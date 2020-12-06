-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BorderThin")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SelectedFilmSummaryGameResult = registerVal1
function CoD.SelectedFilmSummaryGameResult.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SelectedFilmSummaryGameResult)
	registerVal2.id = "SelectedFilmSummaryGameResult"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 416.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 54.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 18.000000)
	registerVal3:setTopBottom(true, false, -4.000000, 21.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setText(Engine.Localize(""))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.Spacer = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 19.000000, 32.000000)
	registerVal4:setTopBottom(true, false, 1.000000, 26.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setText(Engine.Localize("-"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.ScoreSeperator = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 10.500000, 197.000000)
	registerVal5:setTopBottom(true, false, 2.000000, 27.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_E16_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "gameResultText", true, __FUNC_E16_)
	registerVal2:addElement(registerVal5)
	registerVal2.GameResult = registerVal5
	local registerVal6 = CoD.BorderThin.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 79.000000, 244.500000)
	registerVal6:setTopBottom(true, false, -0.500000, 27.500000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.BorderThin0 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 211.000000, 311.250000)
	registerVal7:setTopBottom(true, false, 0.500000, 26.500000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setAlpha(0.650000)
	registerVal2:addElement(registerVal7)
	registerVal2.Background = registerVal7
	local registerVal8 = CoD.BorderThin.new(arg0, arg1)
	registerVal8:setLeftRight(false, true, -169.000000, -3.500000)
	registerVal8:setTopBottom(true, false, -0.500000, 27.500000)
	registerVal8:setAlpha(0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.BorderThin01 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, true, -102.000000, -1.750000)
	registerVal9:setTopBottom(true, false, 0.500000, 26.500000)
	registerVal9:setRGB(0.000000, 0.000000, 0.000000)
	registerVal9:setAlpha(0.650000)
	registerVal2:addElement(registerVal9)
	registerVal2.Background0 = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(false, true, -102.000000, -1.750000)
	registerVal10:setTopBottom(true, false, 0.500000, 26.500000)
	registerVal10:setRGB(1.000000, 0.800000, 0.400000)
	registerVal10:setTTF("fonts/default.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_ECE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "oppositionScore", true, __FUNC_ECE_)
	registerVal2:addElement(registerVal10)
	registerVal2.OppositionScore = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, 211.000000, 311.250000)
	registerVal11:setTopBottom(true, false, 1.500000, 26.500000)
	registerVal11:setRGB(1.000000, 0.800000, 0.400000)
	registerVal11:setTTF("fonts/default.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_F86_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "playerScore", true, __FUNC_F86_)
	registerVal2:addElement(registerVal11)
	registerVal2.PlayerScore = registerVal11
	local function __FUNC_103E_(arg0)
		arg0.BorderThin0:close()
		arg0.BorderThin01:close()
		arg0.GameResult:close()
		arg0.OppositionScore:close()
		arg0.PlayerScore:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_103E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

