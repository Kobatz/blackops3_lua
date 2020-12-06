-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FE_ListSubHeaderPanelShader = registerVal1
function CoD.FE_ListSubHeaderPanelShader.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FE_ListSubHeaderPanelShader)
	registerVal2.id = "FE_ListSubHeaderPanelShader"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 32.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 30.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -7.000000, 9.000000)
	registerVal3:setTopBottom(true, true, -1.000000, 1.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_listsubheadpanelfull"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_1_nineslice"))
	registerVal3:setShaderVector(0.000000, 0.333333, 0.125000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 30.000000, 20.000000, 0.000000, 0.000000)
	registerVal3:setupNineSliceShader(16.000000, 4.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Image = registerVal3
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

