-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.agr.vhud_agr_NotificationBox")
require("ui.uieditor.widgets.VehicleHUDs.agr.vhud_agr_NotificationLine")
require("ui.uieditor.widgets.VehicleHUDs.agr.vhud_agr_NotificationMissiles")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_agr_MissilesWidgetLeft = registerVal1
function CoD.vhud_agr_MissilesWidgetLeft.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.vhud_agr_MissilesWidgetLeft)
	registerVal2.id = "vhud_agr_MissilesWidgetLeft"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 86.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 155.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(false, false, -42.000000, 38.000000)
	registerVal3:setTopBottom(false, false, -48.480000, -32.480000)
	registerVal3:setRGB(0.490000, 1.000000, 0.740000)
	registerVal3:setYRot(-50.000000)
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_cheap_blur"))
	registerVal3:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_DFC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(FormatNumberAsString(0.000000, registerVal1)))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "speed", true, __FUNC_DFC_)
	registerVal2:addElement(registerVal3)
	registerVal2.speedText = registerVal3
	local registerVal4 = CoD.vhud_agr_NotificationBox.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -43.000000, 38.000000)
	registerVal4:setTopBottom(false, false, -74.300000, -44.300000)
	registerVal4:setYRot(-50.000000)
	registerVal4.text:setText(Engine.Localize("MENU_HUD_VEHICLE_SPEED"))
	registerVal2:addElement(registerVal4)
	registerVal2.vhudagrNotificationBox = registerVal4
	local registerVal5 = CoD.vhud_agr_NotificationLine.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -42.000000, 37.000000)
	registerVal5:setTopBottom(false, false, 37.750000, 45.750000)
	registerVal5:setYRot(-50.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.vhudagrNotificationLine = registerVal5
	local registerVal6 = CoD.vhud_agr_NotificationLine.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -42.000000, 37.000000)
	registerVal6:setTopBottom(false, false, -34.950000, -26.950000)
	registerVal6:setYRot(-50.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.vhudagrNotificationLine0 = registerVal6
	local registerVal7 = CoD.vhud_agr_NotificationMissiles.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -65.870000, 60.870000)
	registerVal7:setTopBottom(false, false, -41.150000, 48.750000)
	local function __FUNC_EE5_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, nil, false, __FUNC_EE5_)
	registerVal2:addElement(registerVal7)
	registerVal2.vhudagrNotificationMissiles = registerVal7
	local registerVal8 = CoD.vhud_agr_NotificationBox.new(arg0, arg1)
	registerVal8:setLeftRight(false, false, -43.000000, 38.000000)
	registerVal8:setTopBottom(false, false, 39.750000, 69.750000)
	registerVal8:setYRot(-50.000000)
	registerVal8.text:setText(Engine.Localize("MENU_HUD_VEHICLE_MISSILES"))
	registerVal2:addElement(registerVal8)
	registerVal2.vhudagrNotificationBox0 = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_F36_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal10.DefaultClip = __FUNC_F36_
	local function __FUNC_F96_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal10.StartUp = __FUNC_F96_
	local function __FUNC_FF6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal10.Zoom = __FUNC_FF6_
	registerVal9.DefaultState = registerVal10
	registerVal2.clipsPerState = registerVal9
	local function __FUNC_1056_(arg0)
		arg0.vhudagrNotificationBox:close()
		arg0.vhudagrNotificationLine:close()
		arg0.vhudagrNotificationLine0:close()
		arg0.vhudagrNotificationMissiles:close()
		arg0.vhudagrNotificationBox0:close()
		arg0.speedText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1056_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

