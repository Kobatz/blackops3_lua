-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_agr_OutsideLine = registerVal1
function CoD.vhud_agr_OutsideLine.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.vhud_agr_OutsideLine)
	registerVal2.id = "vhud_agr_OutsideLine"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 54.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 16.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.150000)
	registerVal3:setZoom(-50.000000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_agr_outsidesideline"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.agrOutsideLineR0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setAlpha(0.500000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_agr_outsidesideline"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.agrOutsideLineR = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

