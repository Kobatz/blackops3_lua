-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_NotificationOptic")
require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_NotificationFlir")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_ms_StatusWidgetBottom = registerVal1
function CoD.vhud_ms_StatusWidgetBottom.new(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = -20.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Center)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_ms_StatusWidgetBottom)
	registerVal2.id = "vhud_ms_StatusWidgetBottom"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 139.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = CoD.vhud_ms_NotificationOptic.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -71.000000, 10.000000)
	registerVal3:setTopBottom(false, false, -15.000000, 15.000000)
	registerVal3.OPTIC:setText(Engine.Localize("MENU_HUD_VEHICLE_OPTIC"))
	local function __FUNC_AAE_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_AAE_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Active"
	local function __FUNC_AFE_(arg0, arg2, arg3)
		return IsSelfModelValueEqualToEnum(arg2, arg1, "fullscreenFilter", Enum.VehicleFullscreenFilter.VEHICLE_FULLSCREEN_FILTER_INFRARED)
	end

	registerVal7.condition = __FUNC_AFE_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	local function __FUNC_BF6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fullscreenFilter"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:linkToElementModel(registerVal3, "fullscreenFilter", true, __FUNC_BF6_)
	registerVal2:addElement(registerVal3)
	registerVal2.vhudmsNotificationOptic = registerVal3
	local registerVal4 = CoD.vhud_ms_NotificationFlir.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -10.000000, 71.000000)
	registerVal4:setTopBottom(false, false, -15.000000, 15.000000)
	registerVal4.FLIR:setText(Engine.Localize("MENU_HUD_VEHICLE_IR"))
	local function __FUNC_D1A_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_D1A_)
	registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Active"
	local function __FUNC_D6A_(arg0, arg2, arg3)
		return IsSelfModelValueEqualToEnum(arg2, arg1, "fullscreenFilter", Enum.VehicleFullscreenFilter.VEHICLE_FULLSCREEN_FILTER_FLIR)
	end

	registerVal8.condition = __FUNC_D6A_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	local function __FUNC_E5E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fullscreenFilter"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:linkToElementModel(registerVal4, "fullscreenFilter", true, __FUNC_E5E_)
	registerVal2:addElement(registerVal4)
	registerVal2.vhudmsNotificationFlir0 = registerVal4
	local registerVal5 = {}
	registerVal6 = {}
	local function __FUNC_F82_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_F82_
	local function __FUNC_FE2_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.StartUp = __FUNC_FE2_
	local function __FUNC_1042_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.Zoom = __FUNC_1042_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_10A2_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_10A2_
	local function __FUNC_1102_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultState = __FUNC_1102_
	registerVal5.Zoom = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_1162_(arg0)
		arg0.vhudmsNotificationOptic:close()
		arg0.vhudmsNotificationFlir0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1162_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

