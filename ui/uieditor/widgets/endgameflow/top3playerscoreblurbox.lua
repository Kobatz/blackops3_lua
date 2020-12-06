-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Top3PlayerScoreBlurBox = registerVal1
function CoD.Top3PlayerScoreBlurBox.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Top3PlayerScoreBlurBox)
	registerVal2.id = "Top3PlayerScoreBlurBox"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 266.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 108.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_fe_scoreboardbuttonblur"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_1"))
	registerVal3:setShaderVector(0.000000, 0.000000, 20.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

