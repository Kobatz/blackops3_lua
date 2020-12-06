-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AbilityWheel_VignetteInternal = registerVal1
function CoD.AbilityWheel_VignetteInternal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AbilityWheel_VignetteInternal)
	registerVal2.id = "AbilityWheel_VignetteInternal"
	registerVal2.soundSet = "AbilityWheel"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 984.000000)
	registerVal3:setTopBottom(false, true, -360.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_vignette2"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_multiplyinverse"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 984.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 360.000000)
	registerVal4:setXRot(-180.000000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_vignette2"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_multiplyinverse"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image1 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, true, -984.000000, 0.000000)
	registerVal5:setTopBottom(false, true, -360.000000, 0.000000)
	registerVal5:setYRot(-180.000000)
	registerVal5:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_vignette2"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_multiplyinverse"))
	registerVal2:addElement(registerVal5)
	registerVal2.Image00 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, true, -984.000000, 0.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 360.000000)
	registerVal6:setXRot(-180.000000)
	registerVal6:setYRot(-180.000000)
	registerVal6:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_vignette2"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_multiplyinverse"))
	registerVal2:addElement(registerVal6)
	registerVal2.Image10 = registerVal6
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

