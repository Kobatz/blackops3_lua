-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_HashRotateRight")
require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_OutsideHashRing")
require("ui.uieditor.widgets.VehicleHUDs.dart.vhud_dart_CenterReticleOuterCircleDots")
require("ui.uieditor.widgets.VehicleHUDs.dart.vhud_dart_CenterTriLine")
require("ui.uieditor.widgets.VehicleHUDs.dart.vhud_CenterCircleHorizon")
require("ui.uieditor.widgets.VehicleHUDs.dart.vhud_dart_NotificationAltBox")
require("ui.uieditor.widgets.VehicleHUDs.dart.vhud_dart_NotificationAmmoLine")
require("ui.uieditor.widgets.VehicleHUDs.dart.vhud_dart_NotificationAmmoBoxWidget")
require("ui.uieditor.widgets.VehicleHUDs.dart.vhud_dart_reticle_roll")
require("ui.uieditor.widgets.VehicleHUDs.dart.vhud_dart_VignetteBlur")
require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_LockOnNotification")
require("ui.uieditor.widgets.VehicleHUDs.wasp.vhud_sentinel_NotificationSignalBox")
require("ui.uieditor.widgets.VehicleHUDs.dart.vhud_dart_Timebar")
require("ui.uieditor.widgets.VehicleHUDs.Ground.VehicleGround_CenterInnerRingElement")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_dart_reticle = registerVal1
function CoD.vhud_dart_reticle.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_dart_reticle)
	registerVal2.id = "vhud_dart_reticle"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1312.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 723.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 16.000000, -16.000000)
	registerVal3:setTopBottom(true, true, 1.500000, -1.500000)
	registerVal3:setAlpha(0.600000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_backgroundtint"))
	registerVal2:addElement(registerVal3)
	registerVal2.BackgroundTint = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 16.000000, -16.000000)
	registerVal4:setTopBottom(true, true, 1.500000, -1.500000)
	registerVal4:setAlpha(0.400000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_dart_textureoverlaygrid"))
	registerVal2:addElement(registerVal4)
	registerVal2.BackgroundTint0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -687.330000, -228.000000)
	registerVal5:setTopBottom(false, false, -361.500000, 361.500000)
	registerVal5:setAlpha(0.400000)
	registerVal5:setYRot(180.000000)
	registerVal5:setImage(RegisterImage("uie_t7_cp_hud_vehicle_dart_reticlevignette"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.IrisLeft = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -687.330000, -228.000000)
	registerVal6:setTopBottom(false, false, -361.500000, 361.500000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setYRot(180.000000)
	registerVal6:setImage(RegisterImage("uie_t7_cp_hud_vehicle_dart_reticlevignette"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.IrisLeft0 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, 226.230000, 684.400000)
	registerVal7:setTopBottom(false, false, -361.500000, 361.500000)
	registerVal7:setAlpha(0.400000)
	registerVal7:setImage(RegisterImage("uie_t7_cp_hud_vehicle_dart_reticlevignette"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.IrisRight = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, 226.230000, 684.400000)
	registerVal8:setTopBottom(false, false, -361.500000, 361.500000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_cp_hud_vehicle_dart_reticlevignette"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.IrisRight0 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, -592.240000, 589.700000)
	registerVal9:setTopBottom(false, false, -289.500000, 297.630000)
	registerVal9:setAlpha(0.100000)
	registerVal9:setImage(RegisterImage("uie_t7_cp_hud_vehicle_dart_reticleouterringdotsrgb"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.CenterReticleOuterCircleDotsSoft0 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, false, -11.630000, 11.630000)
	registerVal10:setTopBottom(false, false, -16.380000, 14.630000)
	registerVal10:setImage(RegisterImage("uie_t7_cp_hud_vehicle_dart_reticlecenter"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.CenterDot = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, false, -190.670000, 191.340000)
	registerVal11:setTopBottom(false, false, -195.760000, 186.240000)
	registerVal11:setRGB(0.310000, 0.310000, 0.310000)
	registerVal11:setAlpha(0.500000)
	registerVal11:setImage(RegisterImage("uie_t7_cp_hud_vehicle_dart_reticleouterring"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.CenterReticleOuterCircle = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, false, -234.160000, 232.010000)
	registerVal12:setTopBottom(false, false, -236.500000, 229.670000)
	registerVal12:setRGB(0.310000, 0.310000, 0.310000)
	registerVal12:setAlpha(0.800000)
	registerVal12:setImage(RegisterImage("uie_t7_cp_hud_vehicle_dart_reticleouterringblurrgb"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.OuterRingBlurRGB = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(false, false, -288.250000, 288.250000)
	registerVal13:setTopBottom(false, false, -145.000000, 143.250000)
	registerVal13:setAlpha(0.050000)
	registerVal13:setImage(RegisterImage("uie_t7_cp_hud_vehicle_dart_reticleouterringdotsrgb"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.CenterReticleOuterCircleDotsSoft = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(false, false, -230.740000, 227.410000)
	registerVal14:setTopBottom(false, false, -94.370000, 114.620000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setImage(RegisterImage("uie_t7_cp_hud_vehicle_dart_reticlehorizonlines"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.CenterReticleHorizonLine0 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(false, false, -270.170000, 266.840000)
	registerVal15:setTopBottom(false, false, -269.380000, 267.630000)
	registerVal15:setRGB(0.220000, 0.220000, 0.220000)
	registerVal15:setImage(RegisterImage("uie_t7_cp_hud_vehicle_dart_outercircleblurrgb"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.OuterCircleBlurRGB = registerVal15
	local registerVal16 = CoD.vhud_ms_HashRotateRight.new(arg0, arg1)
	registerVal16:setLeftRight(false, false, 288.250000, 513.710000)
	registerVal16:setTopBottom(false, false, -238.650000, 251.900000)
	registerVal2:addElement(registerVal16)
	registerVal2.vhudmsHashRotateRight = registerVal16
	local registerVal17 = CoD.vhud_ms_OutsideHashRing.new(arg0, arg1)
	registerVal17:setLeftRight(false, false, -450.330000, -299.000000)
	registerVal17:setTopBottom(false, false, -208.420000, 221.670000)
	registerVal17:setZRot(-180.000000)
	registerVal2:addElement(registerVal17)
	registerVal2.vhudmsHashRotateLeft = registerVal17
	local registerVal18 = CoD.vhud_dart_CenterReticleOuterCircleDots.new(arg0, arg1)
	registerVal18:setLeftRight(false, false, -199.420000, 199.090000)
	registerVal18:setTopBottom(false, false, -100.500000, 98.750000)
	registerVal2:addElement(registerVal18)
	registerVal2.vhuddartCenterReticleOuterCircleDots = registerVal18
	local registerVal19 = CoD.vhud_dart_CenterTriLine.new(arg0, arg1)
	registerVal19:setLeftRight(false, false, -68.660000, 68.340000)
	registerVal19:setTopBottom(false, false, -77.380000, 59.630000)
	registerVal19:setAlpha(0.800000)
	registerVal2:addElement(registerVal19)
	registerVal2.vhuddartCenterTriLine = registerVal19
	local registerVal20 = CoD.vhud_CenterCircleHorizon.new(arg0, arg1)
	registerVal20:setLeftRight(false, false, -44.660000, 44.340000)
	registerVal20:setTopBottom(false, false, -46.380000, 42.630000)
	registerVal2:addElement(registerVal20)
	registerVal2.vhudCenterCircleHorizon = registerVal20
	local registerVal21 = CoD.vhud_dart_NotificationAltBox.new(arg0, arg1)
	registerVal21:setLeftRight(true, false, 230.840000, 311.840000)
	registerVal21:setTopBottom(false, false, -21.110000, 8.500000)
	registerVal21:setAlpha(0.800000)
	registerVal21:setYRot(50.000000)
	registerVal21.text:setText(Engine.Localize("MENU_HUD_VEHICLE_ALT"))
	registerVal2:addElement(registerVal21)
	registerVal2.altBox = registerVal21
	local registerVal22 = CoD.vhud_dart_NotificationAltBox.new(arg0, arg1)
	registerVal22:setLeftRight(false, true, -305.170000, -224.170000)
	registerVal22:setTopBottom(false, false, -21.110000, 8.500000)
	registerVal22:setAlpha(0.800000)
	registerVal22:setYRot(-50.000000)
	registerVal22.text:setText(Engine.Localize("MENU_HUD_VEHICLE_SPEED"))
	registerVal2:addElement(registerVal22)
	registerVal2.speedBox = registerVal22
	local registerVal23 = CoD.vhud_dart_NotificationAmmoLine.new(arg0, arg1)
	registerVal23:setLeftRight(false, true, -302.170000, -223.170000)
	registerVal23:setTopBottom(false, false, 17.630000, 25.520000)
	registerVal23:setAlpha(0.800000)
	registerVal23:setYRot(-50.000000)
	registerVal2:addElement(registerVal23)
	registerVal2.vhuddartNotificationAmmoLine = registerVal23
	local registerVal24 = CoD.vhud_dart_NotificationAmmoLine.new(arg0, arg1)
	registerVal24:setLeftRight(false, true, -302.170000, -223.170000)
	registerVal24:setTopBottom(false, false, 74.630000, 82.520000)
	registerVal24:setAlpha(0.800000)
	registerVal24:setYRot(-50.000000)
	registerVal2:addElement(registerVal24)
	registerVal2.vhuddartNotificationAmmoLine0 = registerVal24
	local registerVal25 = LUI.UIImage.new()
	registerVal25:setLeftRight(false, false, -104.420000, 101.090000)
	registerVal25:setTopBottom(false, false, -103.750000, 101.750000)
	registerVal25:setRGB(0.490000, 0.490000, 0.490000)
	registerVal25:setImage(RegisterImage("uie_t7_cp_hud_vehicle_dart_reticlehorizonlineringrgb"))
	registerVal25:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal25)
	registerVal2.CenterReticleCircleBlurRGB = registerVal25
	local registerVal26 = LUI.UIImage.new()
	registerVal26:setLeftRight(false, false, -185.160000, 175.840000)
	registerVal26:setTopBottom(false, false, -183.910000, 177.090000)
	registerVal26:setRGB(0.250000, 0.250000, 0.250000)
	registerVal26:setAlpha(0.800000)
	registerVal26:setImage(RegisterImage("uie_t7_cp_hud_vehicle_dart_reticlecenterouterlinergb"))
	registerVal26:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal26)
	registerVal2.CenterReticleQuadLinesBlur = registerVal26
	local registerVal27 = CoD.vhud_dart_NotificationAmmoBoxWidget.new(arg0, arg1)
	registerVal27:setLeftRight(false, true, -286.670000, -238.670000)
	registerVal27:setTopBottom(false, false, 26.630000, 58.630000)
	registerVal27:setAlpha(0.800000)
	registerVal27:setYRot(-50.000000)
	local function __FUNC_335F_(arg0)
		registerVal27:setModel(arg0, arg1)
	end

	registerVal27:linkToElementModel(registerVal2, nil, false, __FUNC_335F_)
	registerVal2:addElement(registerVal27)
	registerVal2.vhuddartNotificationAmmoBoxWidget = registerVal27
	local registerVal28 = LUI.UIText.new()
	registerVal28:setLeftRight(false, true, -312.170000, -217.170000)
	registerVal28:setTopBottom(false, false, 3.990000, 19.990000)
	registerVal28:setRGB(0.950000, 0.870000, 0.340000)
	registerVal28:setYRot(-40.000000)
	registerVal28:setTTF("fonts/default.ttf")
	registerVal28:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_cheap_blur"))
	registerVal28:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal28:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal28:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal28:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal28:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal28:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal28:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_33AE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal28:setText(Engine.Localize(FormatNumberAsString(0.000000, registerVal1)))
		end
	end

	registerVal28:linkToElementModel(registerVal2, "speed", true, __FUNC_33AE_)
	registerVal2:addElement(registerVal28)
	registerVal2.SpeedNumbers = registerVal28
	local registerVal29 = LUI.UIText.new()
	registerVal29:setLeftRight(true, false, 230.840000, 313.840000)
	registerVal29:setTopBottom(false, false, 3.990000, 19.990000)
	registerVal29:setRGB(0.950000, 0.870000, 0.340000)
	registerVal29:setYRot(40.000000)
	registerVal29:setTTF("fonts/default.ttf")
	registerVal29:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_cheap_blur"))
	registerVal29:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal29:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal29:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal29:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal29:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal29:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal29:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_3495_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal29:setText(Engine.Localize(FormatNumberAsString(0.000000, registerVal1)))
		end
	end

	registerVal29:linkToElementModel(registerVal2, "altitude", true, __FUNC_3495_)
	registerVal2:addElement(registerVal29)
	registerVal2.AltNumbers = registerVal29
	local registerVal30 = CoD.vhud_dart_reticle_roll.new(arg0, arg1)
	registerVal30:setLeftRight(false, false, -229.000000, 229.000000)
	registerVal30:setTopBottom(false, false, -105.000000, 105.000000)
	local function __FUNC_357D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal30:setZRot(Multiple(360.000000, registerVal1))
		end
	end

	registerVal30:linkToElementModel(registerVal2, "roll", true, __FUNC_357D_)
	registerVal2:addElement(registerVal30)
	registerVal2.vhuddartreticleroll0 = registerVal30
	local registerVal31 = CoD.vhud_dart_VignetteBlur.new(arg0, arg1)
	registerVal31:setLeftRight(false, true, -407.250000, -1.000000)
	registerVal31:setTopBottom(true, false, -18.500000, 361.500000)
	registerVal2:addElement(registerVal31)
	registerVal2.vhuddartVignetteBlur = registerVal31
	local registerVal32 = CoD.vhud_dart_VignetteBlur.new(arg0, arg1)
	registerVal32:setLeftRight(false, true, -407.250000, -1.000000)
	registerVal32:setTopBottom(false, true, -361.500000, 18.500000)
	registerVal32:setXRot(180.000000)
	registerVal2:addElement(registerVal32)
	registerVal2.vhuddartVignetteBlur0 = registerVal32
	local registerVal33 = CoD.vhud_dart_VignetteBlur.new(arg0, arg1)
	registerVal33:setLeftRight(true, false, -1.460000, 404.790000)
	registerVal33:setTopBottom(true, false, -18.500000, 361.500000)
	registerVal33:setYRot(-180.000000)
	registerVal2:addElement(registerVal33)
	registerVal2.vhuddartVignetteBlur1 = registerVal33
	local registerVal34 = CoD.vhud_dart_VignetteBlur.new(arg0, arg1)
	registerVal34:setLeftRight(true, false, -1.460000, 404.790000)
	registerVal34:setTopBottom(false, true, -361.500000, 18.500000)
	registerVal34:setXRot(180.000000)
	registerVal34:setYRot(180.000000)
	registerVal2:addElement(registerVal34)
	registerVal2.vhuddartVignetteBlur2 = registerVal34
	local registerVal35 = CoD.vhud_ms_LockOnNotification.new(arg0, arg1)
	registerVal35:setLeftRight(false, false, -20.260000, 19.930000)
	registerVal35:setTopBottom(true, false, 187.740000, 227.920000)
	registerVal2:addElement(registerVal35)
	registerVal2.vhudmsLockOnNotification = registerVal35
	local registerVal36 = CoD.vhud_sentinel_NotificationSignalBox.new(arg0, arg1)
	registerVal36:setLeftRight(true, false, 230.840000, 311.840000)
	registerVal36:setTopBottom(false, false, 17.630000, 47.630000)
	registerVal36:setYRot(50.000000)
	local function __FUNC_3633_(arg0)
		registerVal36:setModel(arg0, arg1)
	end

	registerVal36:linkToElementModel(registerVal2, nil, false, __FUNC_3633_)
	registerVal2:addElement(registerVal36)
	registerVal2.vhudsentinelNotificationSignalBox = registerVal36
	local registerVal37 = CoD.vhud_dart_Timebar.new(arg0, arg1)
	registerVal37:setLeftRight(false, true, -305.170000, 44.830000)
	registerVal37:setTopBottom(true, false, 80.910000, 89.910000)
	registerVal37:setYRot(-20.000000)
	local function __FUNC_3682_(arg0)
		registerVal37:setModel(arg0, arg1)
	end

	registerVal37:linkToElementModel(registerVal2, nil, false, __FUNC_3682_)
	registerVal2:addElement(registerVal37)
	registerVal2.vhuddartTimebar = registerVal37
	local registerVal38 = CoD.vhud_dart_NotificationAmmoLine.new(arg0, arg1)
	registerVal38:setLeftRight(true, false, 232.840000, 311.840000)
	registerVal38:setTopBottom(false, false, 17.630000, 25.520000)
	registerVal38:setAlpha(0.800000)
	registerVal38:setYRot(50.000000)
	registerVal2:addElement(registerVal38)
	registerVal2.vhuddartNotificationAmmoLine00 = registerVal38
	local registerVal39 = CoD.vhud_dart_NotificationAltBox.new(arg0, arg1)
	registerVal39:setLeftRight(true, false, 230.840000, 311.840000)
	registerVal39:setTopBottom(false, false, 37.450000, 67.050000)
	registerVal39:setAlpha(0.800000)
	registerVal39:setYRot(50.000000)
	registerVal39.text:setText(Engine.Localize("MENU_HUD_VEHICLE_SIGNAL"))
	registerVal2:addElement(registerVal39)
	registerVal2.signalBox = registerVal39
	local registerVal40 = CoD.vhud_dart_NotificationAltBox.new(arg0, arg1)
	registerVal40:setLeftRight(false, true, -303.170000, -222.170000)
	registerVal40:setTopBottom(false, false, 76.580000, 106.180000)
	registerVal40:setAlpha(0.800000)
	registerVal40:setYRot(-50.000000)
	registerVal40.text:setText(Engine.Localize("MENU_HUD_VEHICLE_AMMO"))
	registerVal2:addElement(registerVal40)
	registerVal2.ammoBox = registerVal40
	local registerVal41 = CoD.VehicleGround_CenterInnerRingElement.new(arg0, arg1)
	registerVal41:setLeftRight(false, false, -269.000000, -212.000000)
	registerVal41:setTopBottom(false, false, -260.000000, -191.000000)
	registerVal41:setAlpha(0.500000)
	registerVal2:addElement(registerVal41)
	registerVal2.RingElement0 = registerVal41
	local registerVal42 = CoD.VehicleGround_CenterInnerRingElement.new(arg0, arg1)
	registerVal42:setLeftRight(false, false, 211.000000, 268.000000)
	registerVal42:setTopBottom(false, false, -260.000000, -191.000000)
	registerVal42:setAlpha(0.500000)
	registerVal42:setYRot(-180.000000)
	registerVal2:addElement(registerVal42)
	registerVal2["RingElement1"] = registerVal42
	local registerVal43 = CoD.VehicleGround_CenterInnerRingElement.new(arg0, arg1)
	registerVal43:setLeftRight(false, false, -269.000000, -212.000000)
	registerVal43:setTopBottom(false, false, 191.170000, 260.170000)
	registerVal43:setAlpha(0.500000)
	registerVal43:setXRot(180.000000)
	registerVal2:addElement(registerVal43)
	registerVal2["RingElement00"] = registerVal43
	local registerVal44 = CoD.VehicleGround_CenterInnerRingElement.new(arg0, arg1)
	registerVal44:setLeftRight(false, false, 213.510000, 270.510000)
	registerVal44:setTopBottom(false, false, 190.170000, 259.170000)
	registerVal44:setAlpha(0.500000)
	registerVal44:setXRot(180.000000)
	registerVal44:setYRot(-180.000000)
	registerVal2:addElement(registerVal44)
	registerVal2["VehicleGroundCenterInnerRingElement0"] = registerVal44
	local registerVal46 = {}
	local registerVal48 = {}
	local function __FUNC_36D2_()
		registerVal2:setupElementClipCounter(34.000000)
		local function __FUNC_488C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, false, -687.330000, -228.000000)
			arg0:setTopBottom(false, false, -361.500000, 361.500000)
			arg0:setAlpha(0.400000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.IrisLeft:setLeftRight(false, false, -1030.330000, -571.010000)
		registerVal2.IrisLeft:setTopBottom(false, false, -361.500000, 361.500000)
		registerVal2.IrisLeft:setAlpha(0.000000)
		__FUNC_488C_(registerVal5, {})
		local function __FUNC_4AAF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, false, -687.330000, -228.000000)
			arg0:setTopBottom(false, false, -361.500000, 361.500000)
			arg0:setAlpha(0.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.IrisLeft0:setLeftRight(false, false, -1030.330000, -571.000000)
		registerVal2.IrisLeft0:setTopBottom(false, false, -361.500000, 361.500000)
		registerVal2.IrisLeft0:setAlpha(0.000000)
		__FUNC_4AAF_(registerVal6, {})
		local function __FUNC_4CCF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, false, 226.230000, 684.400000)
			arg0:setTopBottom(false, false, -361.500000, 361.500000)
			arg0:setAlpha(0.400000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.IrisRight:setLeftRight(false, false, 573.230000, 1031.400000)
		registerVal2.IrisRight:setTopBottom(false, false, -361.500000, 361.500000)
		registerVal2.IrisRight:setAlpha(0.000000)
		__FUNC_4CCF_(registerVal7, {})
		local function __FUNC_4EEF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, false, 226.230000, 684.400000)
			arg0:setTopBottom(false, false, -361.500000, 361.500000)
			arg0:setAlpha(0.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.IrisRight0:setLeftRight(false, false, 573.230000, 1031.400000)
		registerVal2.IrisRight0:setTopBottom(false, false, -361.500000, 361.500000)
		registerVal2.IrisRight0:setAlpha(0.000000)
		__FUNC_4EEF_(registerVal8, {})
		local function __FUNC_510F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.150000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.CenterReticleOuterCircleDotsSoft0:setAlpha(0.000000)
		__FUNC_510F_(registerVal9, {})
		local function __FUNC_52C1_(arg0, arg1)
			local function __FUNC_543B_(arg0, arg1)
				local function __FUNC_55B3_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_55B3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_55B3_)
			end

			if arg1.interrupted then
				__FUNC_543B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_543B_)
		end

		registerVal10:completeAnimation()
		registerVal2.CenterDot:setAlpha(0.000000)
		__FUNC_52C1_(registerVal10, {})
		local function __FUNC_5765_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.500000)
			arg0:setZRot(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.CenterReticleOuterCircle:setAlpha(0.000000)
		registerVal2.CenterReticleOuterCircle:setZRot(90.000000)
		__FUNC_5765_(registerVal11, {})
		local function __FUNC_593B_(arg0, arg1)
			local function __FUNC_5AD5_(arg0, arg1)
				local function __FUNC_5C4E_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 79.000000, true, false, CoD.TweenType.Back)
					end
					arg0:setAlpha(0.800000)
					arg0:setZRot(0.000000)
					arg0:setZoom(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_5C4E_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
				arg0:setZoom(73.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5C4E_)
			end

			if arg1.interrupted then
				__FUNC_5AD5_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.800000)
			arg0:setZRot(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5AD5_)
		end

		registerVal12:completeAnimation()
		registerVal2.OuterRingBlurRGB:setAlpha(0.000000)
		registerVal2.OuterRingBlurRGB:setZRot(-180.000000)
		registerVal2.OuterRingBlurRGB:setZoom(0.000000)
		__FUNC_593B_(registerVal12, {})
		local function __FUNC_5E3E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.100000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:beginAnimation("keyframe", 270.000000, false, false, CoD.TweenType.Linear)
		registerVal13:setAlpha(0.000000)
		registerVal13:registerEventHandler("transition_complete_keyframe", __FUNC_5E3E_)
		local function __FUNC_5FF1_(arg0, arg1)
			local function __FUNC_616B_(arg0, arg1)
				local function __FUNC_6327_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(1.000000)
					arg0:setZRot(0.000000)
					arg0:setZoom(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_6327_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.670000)
				arg0:setZRot(-90.500000)
				arg0:setZoom(112.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6327_)
			end

			if arg1.interrupted then
				__FUNC_616B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.330000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_616B_)
		end

		registerVal15:completeAnimation()
		registerVal2.OuterCircleBlurRGB:setAlpha(0.000000)
		registerVal2.OuterCircleBlurRGB:setZRot(-181.000000)
		registerVal2.OuterCircleBlurRGB:setZoom(0.000000)
		__FUNC_5FF1_(registerVal15, {})
		registerVal16:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
		registerVal16:setAlpha(1.000000)
		registerVal16:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		registerVal17:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
		registerVal17:setAlpha(1.000000)
		registerVal17:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		local function __FUNC_6518_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
		registerVal18:setAlpha(0.000000)
		registerVal18:registerEventHandler("transition_complete_keyframe", __FUNC_6518_)
		local function __FUNC_66CD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 89.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.800000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
		registerVal19:setAlpha(0.000000)
		registerVal19:setZoom(103.000000)
		registerVal19:registerEventHandler("transition_complete_keyframe", __FUNC_66CD_)
		local function __FUNC_68A1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal20:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
		registerVal20:setAlpha(0.000000)
		registerVal20:registerEventHandler("transition_complete_keyframe", __FUNC_68A1_)
		local function __FUNC_6A55_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 230.840000, 311.840000)
			arg0:setTopBottom(false, false, -21.110000, 8.500000)
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal21:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
		registerVal21:setLeftRight(true, false, 230.840000, 311.840000)
		registerVal21:setTopBottom(false, false, -21.110000, 8.500000)
		registerVal21:setAlpha(0.000000)
		registerVal21:registerEventHandler("transition_complete_keyframe", __FUNC_6A55_)
		local function __FUNC_6C79_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, true, -305.170000, -224.170000)
			arg0:setTopBottom(false, false, -21.110000, 8.500000)
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal22:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
		registerVal22:setLeftRight(false, true, -305.170000, -224.170000)
		registerVal22:setTopBottom(false, false, -21.110000, 8.500000)
		registerVal22:setAlpha(0.000000)
		registerVal22:registerEventHandler("transition_complete_keyframe", __FUNC_6C79_)
		local function __FUNC_6E9D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal23:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
		registerVal23:setAlpha(0.000000)
		registerVal23:registerEventHandler("transition_complete_keyframe", __FUNC_6E9D_)
		local function __FUNC_7051_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal24:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
		registerVal24:setAlpha(0.000000)
		registerVal24:registerEventHandler("transition_complete_keyframe", __FUNC_7051_)
		local function __FUNC_7205_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setZRot(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal25:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
		registerVal25:setAlpha(0.000000)
		registerVal25:setZRot(90.000000)
		registerVal25:registerEventHandler("transition_complete_keyframe", __FUNC_7205_)
		local function __FUNC_73DB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.800000)
			arg0:setZRot(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal26:completeAnimation()
		registerVal2.CenterReticleQuadLinesBlur:setAlpha(0.000000)
		registerVal2.CenterReticleQuadLinesBlur:setZRot(-102.000000)
		registerVal2.CenterReticleQuadLinesBlur:setZoom(736.000000)
		__FUNC_73DB_(registerVal26, {})
		local function __FUNC_75CC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal27:beginAnimation("keyframe", 270.000000, false, false, CoD.TweenType.Linear)
		registerVal27:setAlpha(0.000000)
		registerVal27:registerEventHandler("transition_complete_keyframe", __FUNC_75CC_)
		local function __FUNC_7781_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal28:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
		registerVal28:setAlpha(0.000000)
		registerVal28:registerEventHandler("transition_complete_keyframe", __FUNC_7781_)
		local function __FUNC_7935_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal29:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
		registerVal29:setAlpha(0.000000)
		registerVal29:registerEventHandler("transition_complete_keyframe", __FUNC_7935_)
		local function __FUNC_7AE9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal30:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
		registerVal30:setAlpha(0.000000)
		registerVal30:registerEventHandler("transition_complete_keyframe", __FUNC_7AE9_)
		local function __FUNC_7C9D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal36:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
		registerVal36:setAlpha(0.000000)
		registerVal36:registerEventHandler("transition_complete_keyframe", __FUNC_7C9D_)
		local function __FUNC_7E51_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal37:completeAnimation()
		registerVal2.vhuddartTimebar:setAlpha(0.000000)
		__FUNC_7E51_(registerVal37, {})
		local function __FUNC_8005_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal38:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
		registerVal38:setAlpha(0.000000)
		registerVal38:registerEventHandler("transition_complete_keyframe", __FUNC_8005_)
		local function __FUNC_81B9_(arg0, arg1)
			local function __FUNC_8310_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.800000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_8310_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8310_)
		end

		registerVal39:completeAnimation()
		registerVal2.signalBox:setAlpha(0.000000)
		__FUNC_81B9_(registerVal39, {})
		local function __FUNC_84C5_(arg0, arg1)
			local function __FUNC_861C_(arg0, arg1)
				local function __FUNC_8774_(arg0, arg1)
					local function __FUNC_88EF_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.800000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_88EF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.800000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_88EF_)
				end

				if arg1.interrupted then
					__FUNC_8774_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8774_)
			end

			if arg1.interrupted then
				__FUNC_861C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_861C_)
		end

		registerVal40:completeAnimation()
		registerVal2.ammoBox:setAlpha(0.000000)
		__FUNC_84C5_(registerVal40, {})
		local function __FUNC_8AA1_(arg0, arg1)
			local function __FUNC_8C1B_(arg0, arg1)
				local function __FUNC_8D93_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -269.000000, -212.000000)
					arg0:setTopBottom(false, false, -260.000000, -191.000000)
					arg0:setAlpha(0.500000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_8D93_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8D93_)
			end

			if arg1.interrupted then
				__FUNC_8C1B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.700000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8C1B_)
		end

		registerVal41:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
		registerVal41:setLeftRight(false, false, -269.000000, -212.000000)
		registerVal41:setTopBottom(false, false, -260.000000, -191.000000)
		registerVal41:setAlpha(0.000000)
		registerVal41:registerEventHandler("transition_complete_keyframe", __FUNC_8AA1_)
		local function __FUNC_8FB5_(arg0, arg1)
			local function __FUNC_912F_(arg0, arg1)
				local function __FUNC_92A7_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.500000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_92A7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_92A7_)
			end

			if arg1.interrupted then
				__FUNC_912F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.700000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_912F_)
		end

		registerVal42:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
		registerVal42:setAlpha(0.000000)
		registerVal42:registerEventHandler("transition_complete_keyframe", __FUNC_8FB5_)
		local function __FUNC_9459_(arg0, arg1)
			local function __FUNC_95D3_(arg0, arg1)
				local function __FUNC_974B_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.500000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_974B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_974B_)
			end

			if arg1.interrupted then
				__FUNC_95D3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.700000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_95D3_)
		end

		registerVal43:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
		registerVal43:setAlpha(0.000000)
		registerVal43:registerEventHandler("transition_complete_keyframe", __FUNC_9459_)
		local function __FUNC_98FD_(arg0, arg1)
			local function __FUNC_9A77_(arg0, arg1)
				local function __FUNC_9BEF_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.500000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_9BEF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9BEF_)
			end

			if arg1.interrupted then
				__FUNC_9A77_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.700000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9A77_)
		end

		registerVal44:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
		registerVal44:setAlpha(0.000000)
		registerVal44:registerEventHandler("transition_complete_keyframe", __FUNC_98FD_)
	end

	registerVal48["DefaultClip"] = __FUNC_36D2_
	registerVal46["DefaultState"] = registerVal48
	registerVal2["clipsPerState"] = registerVal46
	local function __FUNC_9DA1_(arg0)
		arg0.vhudmsHashRotateRight:close()
		arg0.vhudmsHashRotateLeft:close()
		arg0.vhuddartCenterReticleOuterCircleDots:close()
		arg0.vhuddartCenterTriLine:close()
		arg0.vhudCenterCircleHorizon:close()
		arg0.altBox:close()
		arg0.speedBox:close()
		arg0.vhuddartNotificationAmmoLine:close()
		arg0.vhuddartNotificationAmmoLine0:close()
		arg0.vhuddartNotificationAmmoBoxWidget:close()
		arg0.vhuddartreticleroll0:close()
		arg0.vhuddartVignetteBlur:close()
		arg0.vhuddartVignetteBlur0:close()
		arg0.vhuddartVignetteBlur1:close()
		arg0.vhuddartVignetteBlur2:close()
		arg0.vhudmsLockOnNotification:close()
		arg0.vhudsentinelNotificationSignalBox:close()
		arg0.vhuddartTimebar:close()
		arg0.vhuddartNotificationAmmoLine00:close()
		arg0.signalBox:close()
		arg0.ammoBox:close()
		arg0.RingElement0:close()
		arg0.RingElement1:close()
		arg0.RingElement00:close()
		arg0.VehicleGroundCenterInnerRingElement0:close()
		arg0.SpeedNumbers:close()
		arg0.AltNumbers:close()
	end

	LUI["OverrideFunction_CallOriginalSecond"](registerVal2, "close", __FUNC_9DA1_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

