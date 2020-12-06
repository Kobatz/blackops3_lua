-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_DamageSideContainer")
require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_NotificationSeatingSide")
require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_NotificationSeatingTop")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_ms_Seating = registerVal1
function CoD.vhud_ms_Seating.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_ms_Seating)
	registerVal2.id = "vhud_ms_Seating"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 101.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 106.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -39.000000, 39.000000)
	registerVal3:setTopBottom(false, false, -36.500000, 41.500000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_damagefillbar"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
	registerVal3:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_DC6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal11 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal12 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal13 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal3:setShaderVector(2.000000, SetVectorComponent(2.000000, 1.000000, SubtractVectorComponentFrom(1.000000, 1.000000, registerVal11, registerVal12, registerVal13, CoD.GetVectorComponentFromString(registerVal1, 4.000000))))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "damage", true, __FUNC_DC6_)
	registerVal2:addElement(registerVal3)
	registerVal2.msDamageFillBar = registerVal3
	local registerVal4 = CoD.vhud_ms_DamageSideContainer.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -31.500000, 29.000000)
	registerVal4:setTopBottom(false, false, -25.500000, 0.000000)
	local function __FUNC_F78_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, "partDestroyed", false, __FUNC_F78_)
	registerVal2:addElement(registerVal4)
	registerVal2.damagedSideContainer = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -39.000000, 39.000000)
	registerVal5:setTopBottom(false, false, -36.500000, 41.500000)
	registerVal5:setAlpha(0.300000)
	registerVal5:setZoom(-15.000000)
	registerVal5:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_damageline"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.msSeating1 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -39.000000, 39.000000)
	registerVal6:setTopBottom(false, false, -36.500000, 41.500000)
	registerVal6:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_damageline"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.msSeating = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -39.000000, 39.000000)
	registerVal7:setTopBottom(false, false, -36.500000, 41.500000)
	registerVal7:setAlpha(0.250000)
	registerVal7:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_damageline"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.msSeating0 = registerVal7
	local registerVal8 = CoD.vhud_ms_NotificationSeatingSide.new(arg0, arg1)
	registerVal8:setLeftRight(false, false, 8.500000, 41.000000)
	registerVal8:setTopBottom(false, false, -20.250000, -5.250000)
	registerVal8:setAlpha(0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.vhudmsNotificationSeatingSide = registerVal8
	local registerVal9 = CoD.vhud_ms_NotificationSeatingSide.new(arg0, arg1)
	registerVal9:setLeftRight(false, false, -44.000000, -11.500000)
	registerVal9:setTopBottom(false, false, -20.250000, -5.250000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setYRot(180.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.vhudmsNotificationSeatingSide0 = registerVal9
	local registerVal10 = CoD.vhud_ms_NotificationSeatingTop.new(arg0, arg1)
	registerVal10:setLeftRight(false, false, -10.500000, 8.500000)
	registerVal10:setTopBottom(false, false, -47.250000, -19.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.vhudmsNotificationSeatingTop = registerVal10
	local function __FUNC_FCA_(arg0)
		arg0.damagedSideContainer:close()
		arg0.vhudmsNotificationSeatingSide:close()
		arg0.vhudmsNotificationSeatingSide0:close()
		arg0.vhudmsNotificationSeatingTop:close()
		arg0.msDamageFillBar:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_FCA_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

