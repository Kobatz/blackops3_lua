-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.EndGameFlow.FFASideArrow")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer_ExposedValues")
require("ui.uieditor.widgets.EndGameFlow.KillcamWidgetNumbers")
require("ui.uieditor.widgets.HUD.Outcome.FFA_TextLabels")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FFATopPlayerInfo = registerVal1
function CoD.FFATopPlayerInfo.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FFATopPlayerInfo)
	registerVal2.id = "FFATopPlayerInfo"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 692.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 143.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FFASideArrow.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 508.000000, 721.000000)
	registerVal3:setTopBottom(true, false, -1.000000, 143.000000)
	registerVal3:setRGB(0.500000, 0.500000, 0.500000)
	registerVal2:addElement(registerVal3)
	registerVal2.FFASideArrow0 = registerVal3
	local registerVal4 = CoD.FE_ButtonPanelShaderContainer_ExposedValues.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, -118.840000, 509.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 142.000000)
	registerVal4:setRGB(0.500000, 0.500000, 0.500000)
	registerVal4.FEButtonPanel:setShaderVector(0.000000, 24.980000, 25.000000, 0.000000, 0.000000)
	registerVal4.FEButtonPanel.Full:setShaderVector(0.000000, 0.018317, 0.103093, 0.000000, 0.000000)
	registerVal4.FEButtonPanel.Full:setShaderVector(1.000000, 10.000000, 10.000000, 0.000000, 0.000000)
	registerVal4.FEButtonPanel.Full:setupNineSliceShader(10.000000, 10.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.LeftPanel = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -118.840000, -54.840000)
	registerVal5:setTopBottom(true, false, -1.000000, 47.000000)
	registerVal5:setRGB(0.640000, 0.640000, 0.640000)
	registerVal5:setImage(RegisterImage("uie_t7_hud_mp_notifications_endgame_ribbon1"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_multiplyinverse"))
	registerVal2:addElement(registerVal5)
	registerVal2.RibbonSolid = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -118.840000, -54.840000)
	registerVal6:setTopBottom(true, false, -1.000000, 47.000000)
	registerVal6:setImage(RegisterImage("uie_t7_hud_mp_notifications_endgame_ribbon1"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.Ribbon = registerVal6
	local registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(true, false, 548.070000, 620.500000)
	registerVal7:setTopBottom(true, false, 40.250000, 88.250000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setText(Engine.Localize("30"))
	registerVal7:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal7)
	registerVal2.Score0 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 65.000000, 193.000000)
	registerVal8:setTopBottom(true, false, 7.250000, 135.250000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_headicon_dead"))
	registerVal2:addElement(registerVal8)
	registerVal2.TempEmblem = registerVal8
	local registerVal9 = CoD.KillcamWidgetNumbers.new(arg0, arg1)
	registerVal9:setLeftRight(false, false, 153.000000, 357.000000)
	registerVal9:setTopBottom(false, false, -46.380000, 47.880000)
	registerVal9:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal9:setShaderVector(0.000000, 0.200000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(4.000000, 0.000000, 0.020000, 0.000000, 0.000000)
	registerVal9.Numbers:setText(Engine.Localize("XX"))
	registerVal2:addElement(registerVal9)
	registerVal2.Score = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, -56.840000, 175.000000)
	registerVal10:setTopBottom(true, false, 0.000000, 142.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.emblem = registerVal10
	local registerVal11 = CoD.FFA_TextLabels.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 186.000000, 428.000000)
	registerVal11:setTopBottom(true, false, 36.000000, 63.000000)
	registerVal11.itemName:setText(Engine.Localize("WWWWWWWWWWWWWW"))
	registerVal2:addElement(registerVal11)
	registerVal2.FFAGamerTag = registerVal11
	local registerVal12 = CoD.FFA_TextLabels.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 186.000000, 245.000000)
	registerVal12:setTopBottom(true, false, 64.000000, 90.000000)
	registerVal12.itemName:setText(Engine.Localize("3ARC"))
	registerVal2:addElement(registerVal12)
	registerVal2.FFAClanTag = registerVal12
	local function __FUNC_10FB_(arg0)
		arg0.FFASideArrow0:close()
		arg0.LeftPanel:close()
		arg0.Score:close()
		arg0.FFAGamerTag:close()
		arg0.FFAClanTag:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_10FB_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

