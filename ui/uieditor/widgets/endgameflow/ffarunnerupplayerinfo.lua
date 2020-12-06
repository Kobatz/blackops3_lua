-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.EndGameFlow.FFASideArrow")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer_ExposedValues")
require("ui.uieditor.widgets.EndGameFlow.KillcamWidgetNumbers")
require("ui.uieditor.widgets.HUD.Outcome.FFA_TextLabels")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FFARunnerUpPlayerInfo = registerVal1
function CoD.FFARunnerUpPlayerInfo.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FFARunnerUpPlayerInfo)
	registerVal2.id = "FFARunnerUpPlayerInfo"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 567.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 94.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FFASideArrow.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -109.000000, 22.330000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.500000, 0.500000, 0.500000)
	registerVal2:addElement(registerVal3)
	registerVal2.FFASideArrow0 = registerVal3
	local registerVal4 = CoD.FE_ButtonPanelShaderContainer_ExposedValues.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -65.950000, -108.000000)
	registerVal4:setTopBottom(true, true, 0.000000, -1.000000)
	registerVal4:setRGB(0.500000, 0.500000, 0.500000)
	registerVal4.FEButtonPanel:setShaderVector(0.000000, 24.980000, 25.000000, 0.000000, 0.000000)
	registerVal4.FEButtonPanel.Full:setShaderVector(0.000000, 0.018317, 0.103093, 0.000000, 0.000000)
	registerVal4.FEButtonPanel.Full:setShaderVector(1.000000, 10.000000, 10.000000, 0.000000, 0.000000)
	registerVal4.FEButtonPanel.Full:setupNineSliceShader(10.000000, 10.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.LeftPanel = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 466.070000, 537.000000)
	registerVal5:setTopBottom(true, false, 28.250000, 73.250000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setText(Engine.Localize("30"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal5)
	registerVal2.Score0 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 56.000000, 145.000000)
	registerVal6:setTopBottom(true, false, 8.500000, 85.000000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.Emblem = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 34.110000, 142.890000)
	registerVal7:setTopBottom(true, false, 0.000000, 93.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_headicon_dead"))
	registerVal2:addElement(registerVal7)
	registerVal2.TempEmblem = registerVal7
	local registerVal8 = CoD.KillcamWidgetNumbers.new(arg0, arg1)
	registerVal8:setLeftRight(false, true, -113.000000, 7.000000)
	registerVal8:setTopBottom(false, false, -26.000000, 28.000000)
	registerVal8:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal8:setShaderVector(0.000000, 0.200000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(4.000000, 0.000000, 0.020000, 0.000000, 0.000000)
	registerVal8.Numbers:setText(Engine.Localize("XX"))
	registerVal2:addElement(registerVal8)
	registerVal2.Score = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, -7.320000, 142.890000)
	registerVal9:setTopBottom(true, false, 1.000000, 93.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.emblem = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, -64.950000, -8.950000)
	registerVal10:setTopBottom(true, false, 0.000000, 42.000000)
	registerVal10:setRGB(0.600000, 0.600000, 0.600000)
	registerVal10:setImage(RegisterImage("uie_t7_hud_mp_notifications_endgame_ribbon1"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_multiplyinverse"))
	registerVal2:addElement(registerVal10)
	registerVal2.RibbonImageInvert = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, -64.950000, -8.950000)
	registerVal11:setTopBottom(true, false, 0.000000, 42.000000)
	registerVal11:setImage(RegisterImage("uie_t7_hud_mp_notifications_endgame_ribbon1"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.Ribbon = registerVal11
	local registerVal12 = CoD.FFA_TextLabels.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 152.000000, 377.000000)
	registerVal12:setTopBottom(true, false, 24.000000, 52.000000)
	registerVal12.itemName:setText(Engine.Localize("WWWWWWWWWWWWWW"))
	registerVal2:addElement(registerVal12)
	registerVal2.FFAGamerTag = registerVal12
	local registerVal13 = CoD.FFA_TextLabels.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 152.000000, 212.000000)
	registerVal13:setTopBottom(true, false, 53.000000, 78.000000)
	registerVal13.itemName:setText(Engine.Localize("3ARC"))
	registerVal2:addElement(registerVal13)
	registerVal2.FFAClanTag = registerVal13
	local function __FUNC_1190_(arg0)
		arg0.FFASideArrow0:close()
		arg0.LeftPanel:close()
		arg0.Score:close()
		arg0.FFAGamerTag:close()
		arg0.FFAClanTag:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1190_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

