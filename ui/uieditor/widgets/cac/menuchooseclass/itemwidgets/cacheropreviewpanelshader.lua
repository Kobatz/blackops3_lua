-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.CACHeroPreviewPanelImage")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CACHeroPreviewPanelShader = registerVal1
function CoD.CACHeroPreviewPanelShader.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CACHeroPreviewPanelShader)
	registerVal2.id = "CACHeroPreviewPanelShader"
	registerVal2.soundSet = "CAC_EditLoadout"
	registerVal2:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 200.000000)
	local registerVal3 = CoD.CACHeroPreviewPanelImage.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 200.000000)
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_2"))
	registerVal3:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.CACHeroPreviewPanelImage0 = registerVal3
	local function __FUNC_620_(arg0)
		arg0.CACHeroPreviewPanelImage0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_620_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

