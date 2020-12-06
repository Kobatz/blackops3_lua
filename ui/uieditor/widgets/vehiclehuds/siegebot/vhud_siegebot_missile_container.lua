-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.siegebot.vhud_siegebot_missile_count")
require("ui.uieditor.widgets.VehicleHUDs.siegebot.vhud_siegebot_missile_label")
require("ui.uieditor.widgets.VehicleHUDs.siegebot.vhud_siegebot_NotificationLine")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_siegebot_missile_container = registerVal1
function CoD.vhud_siegebot_missile_container.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_siegebot_missile_container)
	registerVal2.id = "vhud_siegebot_missile_container"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 86.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 155.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.vhud_siegebot_missile_count.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, -1.500000, 82.500000)
	registerVal3:setTopBottom(true, false, 39.800000, 122.800000)
	registerVal3:setAlpha(0.800000)
	local function __FUNC_BD1_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_BD1_)
	registerVal2:addElement(registerVal3)
	registerVal2.vhudsiegebotmissilecount = registerVal3
	local registerVal4 = CoD.vhud_siegebot_missile_label.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, -40.000000, 121.000000)
	registerVal4:setTopBottom(true, false, 114.800000, 144.800000)
	registerVal4:setYRot(-50.000000)
	registerVal4.text:setText(Engine.Localize("MENU_HUD_VEHICLE_MISSILES_R1"))
	registerVal2:addElement(registerVal4)
	registerVal2.vhudsiegebotmissilelabel = registerVal4
	local registerVal5 = CoD.vhud_siegebot_NotificationLine.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 2.040000, 81.040000)
	registerVal5:setTopBottom(true, false, 42.430000, 50.430000)
	registerVal5:setAlpha(0.800000)
	registerVal5:setYRot(-50.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.vhudsiegebotNotificationLine = registerVal5
	local registerVal6 = CoD.vhud_siegebot_NotificationLine.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 2.040000, 81.040000)
	registerVal6:setTopBottom(true, false, 114.800000, 122.800000)
	registerVal6:setAlpha(0.800000)
	registerVal6:setYRot(-50.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.vhudsiegebotNotificationLine0 = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_C22_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.DefaultClip = __FUNC_C22_
	local function __FUNC_C82_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.StartUp = __FUNC_C82_
	local function __FUNC_CE2_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.Zoom = __FUNC_CE2_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_D42_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.DefaultClip = __FUNC_D42_
	registerVal7.EMP = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "EMP"
	local function __FUNC_DA2_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_EMP_ACTIVE)
		return registerVal3
	end

	registerVal10.condition = __FUNC_DA2_
	registerVal9 = {registerVal10}
	registerVal2:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE))
	local function __FUNC_E6F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_E6F_)
	local function __FUNC_FF5_(arg0)
		arg0.vhudsiegebotmissilecount:close()
		arg0.vhudsiegebotmissilelabel:close()
		arg0.vhudsiegebotNotificationLine:close()
		arg0.vhudsiegebotNotificationLine0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_FF5_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

