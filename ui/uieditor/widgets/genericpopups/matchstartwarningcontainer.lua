-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BorderBakedSolid")
require("ui.uieditor.widgets.ArabicAlignTextBox")
require("ui.uieditor.widgets.GenericPopups.MatchStartWarning_TimerBkgd")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MatchStartWarningContainer = registerVal1
function CoD.MatchStartWarningContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MatchStartWarningContainer)
	registerVal2.id = "MatchStartWarningContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 200.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 50.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.010000, 0.010000, 0.010000)
	registerVal2:addElement(registerVal3)
	registerVal2.background = registerVal3
	local registerVal4 = CoD.BorderBakedSolid.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -1.000000, 1.000000)
	registerVal4:setTopBottom(true, true, -1.000000, 1.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BorderBakedSolid0 = registerVal4
	local registerVal5 = CoD.ArabicAlignTextBox.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 22.000000)
	registerVal5.textBox:setText(Engine.Localize("MENU_MATCH_BEGINNING_IN"))
	registerVal5.textBox:setTTF("fonts/default.ttf")
	registerVal5.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal2:addElement(registerVal5)
	registerVal2.text = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 75.000000, 125.000000)
	registerVal6:setTopBottom(true, false, 24.000000, 46.000000)
	registerVal6:setRGB(0.370000, 0.100000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.timerBackground = registerVal6
	local registerVal7 = CoD.MatchStartWarning_TimerBkgd.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -25.000000, 25.000000)
	registerVal7:setTopBottom(true, false, 24.000000, 46.000000)
	registerVal7:setRGB(1.000000, 0.000000, 0.000000)
	registerVal7:setAlpha(0.500000)
	registerVal2:addElement(registerVal7)
	registerVal2.MatchStartWarningTimerBkgd = registerVal7
	local registerVal8 = CoD.BorderBakedSolid.new(arg0, arg1)
	registerVal8:setLeftRight(false, false, -27.000000, 27.000000)
	registerVal8:setTopBottom(true, false, 22.000000, 48.000000)
	registerVal8:setRGB(1.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.BorderBakedSolid00 = registerVal8
	local registerVal9 = CoD.BorderBakedSolid.new(arg0, arg1)
	registerVal9:setLeftRight(false, false, -27.000000, 27.000000)
	registerVal9:setTopBottom(true, false, 22.000000, 48.000000)
	registerVal9:setRGB(1.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.BorderBakedSolid000 = registerVal9
	local registerVal10 = CoD.ArabicAlignTextBox.new(arg0, arg1)
	registerVal10:setLeftRight(false, false, -50.000000, 50.000000)
	registerVal10:setTopBottom(true, false, 25.000000, 47.000000)
	registerVal10.textBox:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal10.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	local function __FUNC_CBB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.textBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "LobbyRoot", "lobbyTimeRemaining", __FUNC_CBB_)
	registerVal2:addElement(registerVal10)
	registerVal2.timerText = registerVal10
	local function __FUNC_D8F_(arg0)
		arg0.BorderBakedSolid0:close()
		arg0.text:close()
		arg0.MatchStartWarningTimerBkgd:close()
		arg0.BorderBakedSolid00:close()
		arg0.BorderBakedSolid000:close()
		arg0.timerText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_D8F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

