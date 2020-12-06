-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_dart_CenterReticleHorizonLine = registerVal1
function CoD.vhud_dart_CenterReticleHorizonLine.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_dart_CenterReticleHorizonLine)
	registerVal2.id = "vhud_dart_CenterReticleHorizonLine"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 458.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 209.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -229.000000, 229.000000)
	registerVal3:setTopBottom(false, false, -12.050000, 12.050000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_dart_reticlehorizonlines"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.CenterReticle = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -229.000000, 229.000000)
	registerVal4:setTopBottom(false, false, -12.050000, 12.050000)
	registerVal4:setAlpha(0.080000)
	registerVal4:setZoom(-40.000000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_dart_reticlehorizonlines"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.CenterReticle0 = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

