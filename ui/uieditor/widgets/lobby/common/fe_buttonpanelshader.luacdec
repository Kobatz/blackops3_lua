-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FE_ButtonPanelShader = registerVal1
function CoD.FE_ButtonPanelShader.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FE_ButtonPanelShader)
	registerVal2.id = "FE_ButtonPanelShader"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 82.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 20.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -1.000000, 1.000000)
	registerVal3:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_buttonpanelfull"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_1_nineslice"))
	registerVal3:setShaderVector(0.000000, 0.020000, 0.200000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 3.000000, 3.000000, 0.000000, 0.000000)
	registerVal3:setupNineSliceShader(8.000000, 8.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Full = registerVal3
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

