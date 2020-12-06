-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.EndGameFlow.Top3PlayerScoreBlurBox")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
require("ui.uieditor.widgets.Notifications.PlayerCard.PlayerCard")
require("ui.uieditor.widgets.EndGameFlow.KillcamWidgetFctnLine")
require("ui.uieditor.widgets.EndGameFlow.KillcamWidgetNumbers")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Top3PlayersScreenScoreWidget = registerVal1
function CoD.Top3PlayersScreenScoreWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Top3PlayersScreenScoreWidget)
	registerVal2.id = "Top3PlayersScreenScoreWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 276.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 107.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FE_ButtonPanelShaderContainer.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 1.000000, 267.000000)
	registerVal3:setTopBottom(true, false, -3.000000, 105.000000)
	registerVal3:setRGB(0.500000, 0.500000, 0.500000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.LeftPanel = registerVal3
	local registerVal4 = CoD.Top3PlayerScoreBlurBox.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 1.000000, 267.000000)
	registerVal4:setTopBottom(true, false, -3.000000, 105.000000)
	registerVal4:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_2"))
	registerVal4:setShaderVector(0.000000, 10.000000, 10.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Top3PlayerScoreBlurBox0 = registerVal4
	local registerVal5 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 1.000000, 267.000000)
	registerVal5:setTopBottom(true, false, -3.000000, 105.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.500000)
	registerVal2:addElement(registerVal5)
	registerVal2.VSpanel = registerVal5
	local registerVal6 = CoD.PlayerCard.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 0.000000, 276.000000)
	registerVal6:setTopBottom(true, false, 36.000000, 95.000000)
	local function __FUNC_11B2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.CalloutHeading:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "heading", true, __FUNC_11B2_)
	registerVal2:addElement(registerVal6)
	registerVal2.PlayerCard = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 0.000000, 276.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 36.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setText(Engine.Localize("2140"))
	registerVal7:setTTF("fonts/default.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.Score0 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 46.000000, 102.000000)
	registerVal8:setTopBottom(true, false, -4.000000, 38.000000)
	registerVal8:setRGB(0.600000, 0.600000, 0.600000)
	registerVal8:setImage(RegisterImage("uie_t7_hud_mp_notifications_endgame_ribbon1"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_multiplyinverse"))
	registerVal2:addElement(registerVal8)
	registerVal2.RibbonImageInvert = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 46.000000, 102.000000)
	registerVal9:setTopBottom(true, false, -4.000000, 38.000000)
	registerVal9:setImage(RegisterImage("uie_t7_hud_mp_notifications_endgame_ribbon1"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.RibbonImage = registerVal9
	local registerVal10 = CoD.KillcamWidgetFctnLine.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, -3.000000, 271.000000)
	registerVal10:setTopBottom(true, false, -12.000000, -4.000000)
	registerVal10:setRGB(0.000000, 0.000000, 0.000000)
	registerVal10:setAlpha(0.200000)
	registerVal2:addElement(registerVal10)
	registerVal2.LeftPanelLnT0 = registerVal10
	local registerVal11 = CoD.KillcamWidgetFctnLine.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, -3.000000, 271.000000)
	registerVal11:setTopBottom(true, false, 107.000000, 115.000000)
	registerVal11:setRGB(0.000000, 0.000000, 0.000000)
	registerVal11:setAlpha(0.200000)
	registerVal11:setXRot(180.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.LeftPanelLnT00 = registerVal11
	local registerVal12 = CoD.KillcamWidgetNumbers.new(arg0, arg1)
	registerVal12:setLeftRight(false, false, -57.500000, 73.000000)
	registerVal12:setTopBottom(false, false, -54.500000, -14.500000)
	registerVal12:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal12:setShaderVector(0.000000, 0.200000, 0.000000, 0.000000, 0.000000)
	registerVal12:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal12:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal12:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal12:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal12.Numbers:setText(Engine.Localize("2150"))
	registerVal2:addElement(registerVal12)
	registerVal2.Score = registerVal12
	local function __FUNC_128E_(arg0)
		arg0.LeftPanel:close()
		arg0.Top3PlayerScoreBlurBox0:close()
		arg0.VSpanel:close()
		arg0.PlayerCard:close()
		arg0.LeftPanelLnT0:close()
		arg0.LeftPanelLnT00:close()
		arg0.Score:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_128E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

