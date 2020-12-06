-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_PanelClip = registerVal1
function CoD.AmmoWidget_PanelClip.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_PanelClip)
	registerVal2.id = "AmmoWidget_PanelClip"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 67.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 45.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 8.000000)
	registerVal3:setTopBottom(false, false, -22.500000, 22.830000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_ammowidget_panelammol"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_1"))
	registerVal3:setShaderVector(0.000000, 30.000000, 20.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Image1 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 8.000000, -14.000000)
	registerVal4:setTopBottom(false, false, -22.500000, 22.830000)
	registerVal4:setImage(RegisterImage("uie_t7_core_hud_ammowidget_panelammom"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_1"))
	registerVal4:setShaderVector(0.000000, 30.000000, 20.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Image2 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, true, -14.000000, 0.000000)
	registerVal5:setTopBottom(false, false, -22.500000, 22.830000)
	registerVal5:setImage(RegisterImage("uie_t7_core_hud_ammowidget_panelammor"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_1"))
	registerVal5:setShaderVector(0.000000, 30.000000, 20.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.Image3 = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

