-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.ScoreInfo.ScoreInfo_PanelCircleInternal")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ScoreInfo_PanelCircle = registerVal1
function CoD.ScoreInfo_PanelCircle.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ScoreInfo_PanelCircle)
	registerVal2.id = "ScoreInfo_PanelCircle"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 88.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 88.000000)
	local registerVal3 = CoD.ScoreInfo_PanelCircleInternal.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 88.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 88.000000)
	registerVal3:setRGB(0.550000, 0.580000, 0.600000)
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_2_highquality"))
	registerVal3:setShaderVector(0.000000, 30.000000, 10.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.ScoreInfoPanelCircleInternal0 = registerVal3
	local function __FUNC_651_(arg0)
		arg0.ScoreInfoPanelCircleInternal0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_651_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

