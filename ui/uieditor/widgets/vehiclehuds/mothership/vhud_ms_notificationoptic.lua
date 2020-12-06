-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_ms_NotificationOptic = registerVal1
function CoD.vhud_ms_NotificationOptic.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_ms_NotificationOptic)
	registerVal2.id = "vhud_ms_NotificationOptic"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 81.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 30.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.870000, 1.000000)
	registerVal3:setAlpha(0.400000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.GlowOrangeOver = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.740000, 0.940000, 0.990000)
	registerVal4:setAlpha(0.080000)
	registerVal4:setYRot(-20.000000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_notificationsignalbox"))
	registerVal2:addElement(registerVal4)
	registerVal2.NotificationAltBox0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setRGB(0.740000, 0.940000, 0.990000)
	registerVal5:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_notificationsignalbox"))
	registerVal2:addElement(registerVal5)
	registerVal2.NotificationAltBox00 = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(false, false, -8.000000, 8.000000)
	registerVal6:setText(Engine.Localize("MENU_HUD_VEHICLE_OPTIC"))
	registerVal6:setTTF("fonts/default.ttf")
	registerVal6:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_cheap_blur"))
	registerVal6:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_C57_(arg0, arg1)
		ScaleWidgetToLabelCenteredWithMinimum(registerVal2, arg0, 25.000000, 81.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal6, "setText", __FUNC_C57_)
	registerVal2:addElement(registerVal6)
	registerVal2.OPTIC = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -3.540000, 3.540000)
	registerVal7:setTopBottom(false, false, -13.830000, -9.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_img_t7_menu_startmenu_option_arrow"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.arrowUp = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_CD1_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.GlowOrangeOver:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal7:completeAnimation()
		registerVal2.arrowUp:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_CD1_
	local function __FUNC_E2B_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal9.StartUp = __FUNC_E2B_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_E8A_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.GlowOrangeOver:setRGB(0.420000, 0.930000, 1.000000)
		registerVal2.GlowOrangeOver:setAlpha(0.400000)
		registerVal2.GlowOrangeOver:setScale(1.200000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal7:completeAnimation()
		registerVal2.arrowUp:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_E8A_
	registerVal8.Active = registerVal9
	registerVal2.clipsPerState = registerVal8
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

