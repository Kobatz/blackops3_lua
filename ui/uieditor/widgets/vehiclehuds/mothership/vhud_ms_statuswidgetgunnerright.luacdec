-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.wasp.vhud_sentinel_NotificationLine")
require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_NotificationBox")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_ms_StatusWidgetGunnerRight = registerVal1
function CoD.vhud_ms_StatusWidgetGunnerRight.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_ms_StatusWidgetGunnerRight)
	registerVal2.id = "vhud_ms_StatusWidgetGunnerRight"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 83.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 162.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(false, false, -55.780000, -39.780000)
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_cheap_blur"))
	registerVal3:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_125A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "speed", true, __FUNC_125A_)
	registerVal2:addElement(registerVal3)
	registerVal2.SpeedNumbers = registerVal3
	local registerVal4 = CoD.vhud_sentinel_NotificationLine.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 2.000000, 81.000000)
	registerVal4:setTopBottom(true, false, 40.720000, 48.720000)
	registerVal4:setRGB(0.740000, 0.940000, 0.990000)
	registerVal4:setAlpha(0.700000)
	registerVal2:addElement(registerVal4)
	registerVal2.vhudsentinelNotificationLine = registerVal4
	local registerVal5 = CoD.vhud_ms_NotificationBox.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 81.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal5.ALTtext:setText(Engine.Localize("MENU_HUD_VEHICLE_SPEED"))
	registerVal2:addElement(registerVal5)
	registerVal2.vhudmsNotificationBox = registerVal5
	local registerVal6 = CoD.vhud_sentinel_NotificationLine.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 2.000000, 81.000000)
	registerVal6:setTopBottom(true, false, 138.720000, 146.720000)
	registerVal6:setRGB(0.740000, 0.940000, 0.990000)
	registerVal6:setAlpha(0.700000)
	registerVal2:addElement(registerVal6)
	registerVal2.vhudsentinelNotificationLine0 = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, false, 147.000000, 162.000000)
	registerVal7:setText(Engine.Localize("MENU_STATUS_CAPS"))
	registerVal7:setTTF("fonts/default.ttf")
	registerVal7:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_cheap_blur"))
	registerVal7:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setLetterSpacing(0.500000)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.statusText = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, -4.500000, 85.500000)
	registerVal8:setTopBottom(true, false, 84.300000, 102.710000)
	registerVal8:setRGB(0.740000, 0.940000, 0.990000)
	registerVal8:setAlpha(0.150000)
	registerVal8:setZRot(90.000000)
	registerVal8:setZoom(-15.000000)
	registerVal8:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_timebar"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.Bar0 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, -4.500000, 85.500000)
	registerVal9:setTopBottom(true, false, 84.300000, 102.710000)
	registerVal9:setRGB(0.740000, 0.940000, 0.990000)
	registerVal9:setZRot(90.000000)
	registerVal9:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_timebar"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.Bar = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, -4.500000, 85.500000)
	registerVal10:setTopBottom(true, false, 84.300000, 102.710000)
	registerVal10:setRGB(0.740000, 0.940000, 0.990000)
	registerVal10:setZRot(90.000000)
	registerVal10:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_timebarsolid"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	registerVal10:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_1312_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal10:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "weaponHeat", true, __FUNC_1312_)
	registerVal2:addElement(registerVal10)
	registerVal2.solidbar = registerVal10
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_1468_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal10:completeAnimation()
		registerVal2.solidbar:setRGB(0.740000, 0.940000, 0.990000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_1468_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_1578_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal10:completeAnimation()
		registerVal2.solidbar:setRGB(0.990000, 0.200000, 0.270000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_1578_
	registerVal11.Overheating = registerVal12
	registerVal2.clipsPerState = registerVal11
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "Overheating"
	local function __FUNC_1688_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "weaponOverheating")
	end

	registerVal14.condition = __FUNC_1688_
	registerVal13 = {registerVal14}
	registerVal2:mergeStateConditions(registerVal13)
	local function __FUNC_1705_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "weaponOverheating"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "weaponOverheating", true, __FUNC_1705_)
	local function __FUNC_182B_(arg0)
		arg0.vhudsentinelNotificationLine:close()
		arg0.vhudmsNotificationBox:close()
		arg0.vhudsentinelNotificationLine0:close()
		arg0.SpeedNumbers:close()
		arg0.solidbar:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_182B_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

