-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.Ground.VehicleGround_IrisOutterDigi")
require("ui.uieditor.widgets.VehicleHUDs.Ground.VehicleGround_IrisInnerContainer")
require("ui.uieditor.widgets.VehicleHUDs.dart.vhud_dart_IrisOuterThinInternal")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_dart_Iris = registerVal1
function CoD.vhud_dart_Iris.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_dart_Iris)
	registerVal2.id = "vhud_dart_Iris"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.VehicleGround_IrisOutterDigi.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.OutterDigi0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 272.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setAlpha(0.500000)
	registerVal4:setZoom(71.000000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_irisoutteredge"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.IrisOutterEdge = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, true, -272.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setAlpha(0.500000)
	registerVal5:setYRot(-180.000000)
	registerVal5:setZoom(69.000000)
	registerVal5:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_irisoutteredge"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.IrisOutterEdgeR = registerVal5
	local registerVal6 = CoD.VehicleGround_IrisInnerContainer.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6:setAlpha(0.600000)
	registerVal6:setZRot(-17.000000)
	registerVal6:setZoom(273.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.InnerContainer0 = registerVal6
	local registerVal7 = CoD.vhud_dart_IrisOuterThinInternal.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, -90.000000, 90.000000)
	registerVal7:setTopBottom(true, true, -130.000000, 130.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.vhuddartIrisOuterThinInternal = registerVal7
	local function __FUNC_A7F_(arg0)
		arg0.OutterDigi0:close()
		arg0.InnerContainer0:close()
		arg0.vhuddartIrisOuterThinInternal:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A7F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

