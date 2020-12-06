-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.AAR.ChallengesTab.ChallengeWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChallengesTabWidget = registerVal1
function CoD.ChallengesTabWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChallengesTabWidget)
	registerVal2.id = "ChallengesTabWidget"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	local registerVal3 = CoD.ChallengeWidget.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 80.640000, 443.000000)
	registerVal3:setTopBottom(true, false, 112.500000, 557.500000)
	registerVal2:addElement(registerVal3)
	registerVal2.ChallengeWidget0 = registerVal3
	local registerVal4 = CoD.ChallengeWidget.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 458.820000, 821.180000)
	registerVal4:setTopBottom(true, false, 112.500000, 557.500000)
	registerVal2:addElement(registerVal4)
	registerVal2.ChallengeWidget1 = registerVal4
	local registerVal5 = CoD.ChallengeWidget.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 838.000000, 1200.360000)
	registerVal5:setTopBottom(true, false, 112.500000, 557.500000)
	registerVal2:addElement(registerVal5)
	registerVal2.ChallengeWidget2 = registerVal5
	local function __FUNC_648_(arg0)
		arg0.ChallengeWidget0:close()
		arg0.ChallengeWidget1:close()
		arg0.ChallengeWidget2:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_648_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

