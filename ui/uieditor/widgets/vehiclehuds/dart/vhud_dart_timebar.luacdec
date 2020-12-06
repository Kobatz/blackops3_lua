-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ModDNITime")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_dart_Timebar = registerVal1
function CoD.vhud_dart_Timebar.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_dart_Timebar)
	registerVal2.id = "vhud_dart_Timebar"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 218.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 9.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.vhud_ModDNITime.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, -29.130000, 22.880000)
	registerVal3:setTopBottom(true, false, -24.000000, 33.000000)
	registerVal3:setRGB(1.000000, 0.900000, 0.510000)
	registerVal2:addElement(registerVal3)
	registerVal2.vhudModDNITime0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 10.430000, 218.430000)
	registerVal4:setTopBottom(true, false, 0.000000, 8.000000)
	registerVal4:setRGB(1.000000, 0.900000, 0.510000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_timebarsolid"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_8E3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal4:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "remainingTime", true, __FUNC_8E3_)
	registerVal2:addElement(registerVal4)
	registerVal2.Bar = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 10.430000, 218.430000)
	registerVal5:setTopBottom(true, false, 0.310000, 8.310000)
	registerVal5:setRGB(1.000000, 0.900000, 0.510000)
	registerVal5:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_timebar"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.Frame = registerVal5
	local function __FUNC_A38_(arg0)
		arg0.vhudModDNITime0:close()
		arg0.Bar:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A38_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

