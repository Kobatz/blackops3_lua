-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ScoreInfo_PanelCircleInternal = registerVal1
function CoD.ScoreInfo_PanelCircleInternal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ScoreInfo_PanelCircleInternal)
	registerVal2.id = "ScoreInfo_PanelCircleInternal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 88.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 88.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -44.000000, 44.000000)
	registerVal3:setTopBottom(false, false, -44.000000, 44.000000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_scorewidget_panelcircle"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_1"))
	registerVal3:setShaderVector(0.000000, 10.000000, 10.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.PanelCircle = registerVal3
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

