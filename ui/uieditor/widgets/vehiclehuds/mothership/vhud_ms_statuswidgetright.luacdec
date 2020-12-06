-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.wasp.vhud_sentinel_NotificationLine")
require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_NotificationBox")
require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_missilesWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_ms_StatusWidgetRight = registerVal1
function CoD.vhud_ms_StatusWidgetRight.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_ms_StatusWidgetRight)
	registerVal2.id = "vhud_ms_StatusWidgetRight"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 83.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 162.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 25.220000, 41.220000)
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_cheap_blur"))
	registerVal3:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_FAE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(FormatNumberAsString(0.000000, registerVal1)))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "speed", true, __FUNC_FAE_)
	registerVal2:addElement(registerVal3)
	registerVal2.SpeedNumbers = registerVal3
	local registerVal4 = CoD.vhud_sentinel_NotificationLine.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 2.000000, -2.000000)
	registerVal4:setTopBottom(true, false, 40.720000, 48.720000)
	registerVal4:setRGB(0.740000, 0.940000, 0.990000)
	registerVal4:setAlpha(0.700000)
	registerVal2:addElement(registerVal4)
	registerVal2.vhudsentinelNotificationLine = registerVal4
	local registerVal5 = CoD.vhud_ms_NotificationBox.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -41.500000, 41.500000)
	registerVal5:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal5.ALTtext:setText(Engine.Localize("MENU_HUD_VEHICLE_SPEED"))
	registerVal2:addElement(registerVal5)
	registerVal2.vhudmsNotificationBox = registerVal5
	local registerVal6 = CoD.vhud_ms_missilesWidget.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -32.220000, 30.220000)
	registerVal6:setTopBottom(true, false, 61.830000, 118.830000)
	local function __FUNC_1095_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_1095_)
	registerVal2:addElement(registerVal6)
	registerVal2.vhudmsmissilesWidget = registerVal6
	local registerVal7 = CoD.vhud_ms_missilesWidget.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -32.220000, 30.220000)
	registerVal7:setTopBottom(true, false, 61.830000, 118.830000)
	registerVal7:setAlpha(0.150000)
	registerVal7:setZoom(-15.000000)
	local function __FUNC_10E6_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, nil, false, __FUNC_10E6_)
	registerVal2:addElement(registerVal7)
	registerVal2.vhudmsmissilesWidget0 = registerVal7
	local registerVal8 = CoD.vhud_sentinel_NotificationLine.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, 2.000000, -2.000000)
	registerVal8:setTopBottom(true, false, 138.670000, 146.670000)
	registerVal8:setRGB(0.740000, 0.940000, 0.990000)
	registerVal8:setAlpha(0.700000)
	registerVal2:addElement(registerVal8)
	registerVal2.vhudsentinelNotificationLine0 = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(true, false, 146.880000, 161.880000)
	registerVal9:setText(Engine.Localize("MENU_HUD_VEHICLE_MISSILES"))
	registerVal9:setTTF("fonts/default.ttf")
	registerVal9:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_cheap_blur"))
	registerVal9:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setLetterSpacing(0.500000)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal9)
	registerVal2.MISSILEStext = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_1136_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal11.DefaultClip = __FUNC_1136_
	registerVal10.DefaultState = registerVal11
	registerVal2.clipsPerState = registerVal10
	local function __FUNC_1196_(arg0)
		arg0.vhudsentinelNotificationLine:close()
		arg0.vhudmsNotificationBox:close()
		arg0.vhudmsmissilesWidget:close()
		arg0.vhudmsmissilesWidget0:close()
		arg0.vhudsentinelNotificationLine0:close()
		arg0.SpeedNumbers:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1196_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

