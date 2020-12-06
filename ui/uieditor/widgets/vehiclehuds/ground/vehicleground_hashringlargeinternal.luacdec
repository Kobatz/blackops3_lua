-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.VehicleGround_HashRingLargeInternal = registerVal1
function CoD.VehicleGround_HashRingLargeInternal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.VehicleGround_HashRingLargeInternal)
	registerVal2.id = "VehicleGround_HashRingLargeInternal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 543.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 288.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, true, -96.000000, 0.000000)
	registerVal3:setTopBottom(false, false, -144.000000, 144.000000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_hashringlarge"))
	registerVal2:addElement(registerVal3)
	registerVal2.HashLarge = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 96.000000)
	registerVal4:setTopBottom(false, false, -144.000000, 144.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setYRot(-180.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Null = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

