-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_sentinel_NotificationBox = registerVal1
function CoD.vhud_sentinel_NotificationBox.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_sentinel_NotificationBox)
	registerVal2.id = "vhud_sentinel_NotificationBox"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 81.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 30.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.080000)
	registerVal3:setZoom(-20.000000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_notificationbox"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal3:setShaderVector(0.000000, 0.460000, 0.500000, 0.000000, 0.000000)
	registerVal3:setupNineSliceShader(18.000000, 10.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.NotificationAltBox = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_notificationbox"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal4:setShaderVector(0.000000, 0.460000, 0.500000, 0.000000, 0.000000)
	registerVal4:setupNineSliceShader(18.000000, 10.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.NotificationAltBox0 = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(false, false, -100.000000, 100.000000)
	registerVal5:setTopBottom(false, false, -8.000000, 8.000000)
	registerVal5:setRGB(0.600000, 0.820000, 0.910000)
	registerVal5:setText(Engine.Localize("MENU_HUD_VEHICLE_SIGNAL"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_cheap_blur"))
	registerVal5:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_A9F_(arg0, arg1)
		ScaleWidgetToLabelCenteredWithMinimum(registerVal2, arg0, 20.000000, 81.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal5, "setText", __FUNC_A9F_)
	registerVal2:addElement(registerVal5)
	registerVal2.SignalText = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

