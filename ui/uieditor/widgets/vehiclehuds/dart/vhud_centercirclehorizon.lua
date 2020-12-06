-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_CenterCircleHorizon = registerVal1
function CoD.vhud_CenterCircleHorizon.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_CenterCircleHorizon)
	registerVal2.id = "vhud_CenterCircleHorizon"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 89.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 89.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 89.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 89.000000)
	registerVal3:setAlpha(0.100000)
	registerVal3:setZoom(-40.000000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_dart_reticlecentercircle"))
	registerVal2:addElement(registerVal3)
	registerVal2.CenterCircleHorizon = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 89.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 89.000000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_dart_reticlecentercircle"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.CenterCircleHorizon0 = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

