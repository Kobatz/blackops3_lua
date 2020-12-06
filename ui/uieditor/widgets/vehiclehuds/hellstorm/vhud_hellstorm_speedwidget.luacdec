-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_NotificationBox")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_hellstorm_SpeedWidget = registerVal1
function CoD.vhud_hellstorm_SpeedWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_hellstorm_SpeedWidget)
	registerVal2.id = "vhud_hellstorm_SpeedWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 87.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 42.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(false, false, -43.500000, 43.500000)
	registerVal3:setTopBottom(true, false, 25.650000, 42.000000)
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_cheap_blur"))
	registerVal3:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_9AD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(FormatNumberAsString(0.000000, registerVal1)))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "speed", true, __FUNC_9AD_)
	registerVal2:addElement(registerVal3)
	registerVal2.speednumbers = registerVal3
	local registerVal4 = CoD.vhud_ms_NotificationBox.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -43.500000, 43.500000)
	registerVal4:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal4.ALTtext:setText(Engine.Localize("MENU_HUD_VEHICLE_SPEED"))
	registerVal2:addElement(registerVal4)
	registerVal2.vhudmsNotificationBox0 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_A95_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_A95_
	local function __FUNC_AF6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.StartUp = __FUNC_AF6_
	local function __FUNC_B56_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.Zoom = __FUNC_B56_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_BB6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_BB6_
	local function __FUNC_C16_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultState = __FUNC_C16_
	registerVal5.Zoom = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_C76_(arg0)
		arg0.vhudmsNotificationBox0:close()
		arg0.speednumbers:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_C76_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

