-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.Buttons.vhud_generic_button_layout")
require("ui.uieditor.widgets.VehicleHUDs.hcxd.vhud_hcxd_Timebar")
function LUI.createMenu.VHUD_HCXD(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("VHUD_HCXD")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "VHUD_HCXD.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_hcxd_vignette_score_streak"))
	registerVal1:addElement(registerVal3)
	registerVal1.vignette = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, -202.500000, 202.500000)
	registerVal4:setTopBottom(true, true, -117.910000, 109.910000)
	registerVal4:setAlpha(0.100000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_agr_backgroundtint"))
	registerVal1:addElement(registerVal4)
	registerVal1.vignetteCenter = registerVal4
	local registerVal5 = CoD.vhud_generic_button_layout.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_B08_(arg1)
		registerVal5:setModel(arg1, arg0)
	end

	registerVal5:subscribeToGlobalModel(arg0, "PerController", "vehicle.bindings", __FUNC_B08_)
	local function __FUNC_B5A_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("menu_loaded", __FUNC_B5A_)
	registerVal1:addElement(registerVal5)
	registerVal1.vhudgenericbuttonlayout0 = registerVal5
	local registerVal6 = CoD.vhud_hcxd_Timebar.new(registerVal1, arg0)
	registerVal6:setLeftRight(false, true, -293.520000, -75.520000)
	registerVal6:setTopBottom(true, false, 81.910000, 90.910000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.800000)
	registerVal6:setYRot(-20.000000)
	local function __FUNC_BED_(arg1)
		registerVal6:setModel(arg1, arg0)
	end

	registerVal6:subscribeToGlobalModel(arg0, "PerController", "vehicle", __FUNC_BED_)
	registerVal1:addElement(registerVal6)
	registerVal1.vhudhcxdTimebar0 = registerVal6
	local registerVal7 = CoD.vhud_hcxd_Timebar.new(registerVal1, arg0)
	registerVal7:setLeftRight(false, true, -293.520000, -75.520000)
	registerVal7:setTopBottom(true, false, 81.910000, 90.910000)
	registerVal7:setYRot(-20.000000)
	local function __FUNC_C3E_(arg1)
		registerVal7:setModel(arg1, arg0)
	end

	registerVal7:subscribeToGlobalModel(arg0, "PerController", "vehicle", __FUNC_C3E_)
	registerVal1:addElement(registerVal7)
	registerVal1.vhudhcxdTimebar = registerVal7
	local registerVal10 = {}
	registerVal10.name = "menu_loaded"
	registerVal10.controller = arg0
	registerVal1:processEvent(registerVal10)
	registerVal10 = {}
	registerVal10.name = "update_state"
	registerVal10.menu = registerVal1
	registerVal1:processEvent(registerVal10)
	local function __FUNC_C8E_(arg1)
		arg1.vhudgenericbuttonlayout0:close()
		arg1.vhudhcxdTimebar0:close()
		arg1.vhudhcxdTimebar:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "VHUD_HCXD.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_C8E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

