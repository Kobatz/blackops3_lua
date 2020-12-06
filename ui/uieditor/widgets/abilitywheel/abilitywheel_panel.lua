-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AbilityWheel_Panel = registerVal1
function CoD.AbilityWheel_Panel.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AbilityWheel_Panel)
	registerVal2.id = "AbilityWheel_Panel"
	registerVal2.soundSet = "AbilityWheel"
	registerVal2:setLeftRight(true, false, 0.000000, 544.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 544.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_panelul"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_1"))
	registerVal3:setShaderVector(0.000000, 0.000000, 20.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Image18 = registerVal3
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

