-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.wasp.vhud_sentinel_NotificationBox")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_sentinel_AltitudeInfo = registerVal1
function CoD.vhud_sentinel_AltitudeInfo.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_sentinel_AltitudeInfo)
	registerVal2.id = "vhud_sentinel_AltitudeInfo"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 87.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 42.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(false, false, -43.500000, 37.500000)
	registerVal3:setTopBottom(false, false, 4.830000, 20.830000)
	registerVal3:setRGB(0.600000, 0.820000, 0.910000)
	registerVal3:setYRot(40.000000)
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_cheap_blur"))
	registerVal3:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_A3D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(FormatNumberAsString(0.000000, registerVal1)))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "altitude", true, __FUNC_A3D_)
	registerVal2:addElement(registerVal3)
	registerVal2.ALTnumbers = registerVal3
	local registerVal4 = CoD.vhud_sentinel_NotificationBox.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -43.500000, 37.500000)
	registerVal4:setTopBottom(false, false, -20.830000, 9.170000)
	registerVal4:setRGB(0.600000, 0.820000, 0.910000)
	registerVal4:setYRot(50.000000)
	registerVal4.SignalText:setText(Engine.Localize("MENU_HUD_VEHICLE_ALT"))
	registerVal2:addElement(registerVal4)
	registerVal2.ALTBox = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_B25_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.ALTnumbers:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ALTBox:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_B25_
	local function __FUNC_C7A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.StartUp = __FUNC_C7A_
	local function __FUNC_CDA_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.Zoom = __FUNC_CDA_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_D3A_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.ALTnumbers:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ALTBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_D3A_
	registerVal5.Hidden = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_E8E_(arg0)
		arg0.ALTBox:close()
		arg0.ALTnumbers:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_E8E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

