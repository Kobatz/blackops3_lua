-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.agr.vhud_agr_NotificationBox")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_agr_RpmWidget = registerVal1
function CoD.vhud_agr_RpmWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_agr_RpmWidget)
	registerVal2.id = "vhud_agr_RpmWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 86.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 42.000000)
	local registerVal3 = CoD.vhud_agr_NotificationBox.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -86.000000, -5.000000)
	registerVal3:setTopBottom(false, false, -20.910000, 9.090000)
	registerVal3:setYRot(50.000000)
	registerVal3.text:setText(Engine.Localize("MENU_HUD_VEHICLE_RPM"))
	registerVal2:addElement(registerVal3)
	registerVal2.vhudagrNotificationBox0 = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, true, -86.000000, -5.000000)
	registerVal4:setTopBottom(false, false, 4.910000, 20.910000)
	registerVal4:setRGB(0.490000, 1.000000, 0.740000)
	registerVal4:setYRot(50.000000)
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_cheap_blur"))
	registerVal4:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_9F9_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(FormatNumberAsString(0.000000, registerVal1)))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "engineRPM", true, __FUNC_9F9_)
	registerVal2:addElement(registerVal4)
	registerVal2.TextBox10 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_AE1_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_AE1_
	local function __FUNC_B42_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.StartUp = __FUNC_B42_
	local function __FUNC_BA2_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.Zoom = __FUNC_BA2_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_C02_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_C02_
	local function __FUNC_C62_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultState = __FUNC_C62_
	registerVal5.Zoom = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_CC2_(arg0)
		arg0.vhudagrNotificationBox0:close()
		arg0.TextBox10:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_CC2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

