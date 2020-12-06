-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_Iris")
require("ui.uieditor.widgets.VehicleHUDs.hellstorm.vhud_hellstorm_reticle")
require("ui.uieditor.widgets.VehicleHUDs.Buttons.vhud_generic_button_layout")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_hellstorm_internal = registerVal1
function CoD.vhud_hellstorm_internal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_hellstorm_internal)
	registerVal2.id = "vhud_hellstorm_internal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -200.000000, 200.000000)
	registerVal3:setTopBottom(true, true, -125.000000, 125.000000)
	registerVal3:setAlpha(0.600000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_agr_backgroundtint"))
	registerVal2:addElement(registerVal3)
	registerVal2.vignetteCenter = registerVal3
	local registerVal4 = CoD.vhud_ms_Iris.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal4:setTopBottom(false, false, -360.000000, 360.000000)
	registerVal4:setRGB(1.000000, 0.350000, 0.350000)
	local function __FUNC_976_(arg0, arg2)
		local registerVal5 = {}
		registerVal5.elementName = "VehicleGroundIris"
		registerVal5.clipName = "StartUp"
		PlayClipOnElement(registerVal2, registerVal5, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("menu_loaded", __FUNC_976_)
	registerVal2:addElement(registerVal4)
	registerVal2.VehicleGroundIris = registerVal4
	local registerVal5 = CoD.vhud_hellstorm_reticle.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal5:setTopBottom(false, false, -360.000000, 360.000000)
	local function __FUNC_A6B_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_A6B_)
	registerVal2:addElement(registerVal5)
	registerVal2.vhudhellstormreticle = registerVal5
	local registerVal6 = CoD.vhud_generic_button_layout.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_ABA_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, "bindings", false, __FUNC_ABA_)
	registerVal2:addElement(registerVal6)
	registerVal2.vhudButtonContainer = registerVal6
	local function __FUNC_B0A_(arg0)
		arg0.VehicleGroundIris:close()
		arg0.vhudhellstormreticle:close()
		arg0.vhudButtonContainer:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_B0A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

