-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.hellstorm.vhud_hellstorm_CenterReticleWidget")
require("ui.uieditor.widgets.VehicleHUDs.hellstorm.vhud_hellstorm_timebar")
require("ui.uieditor.widgets.VehicleHUDs.hellstorm.vhud_CenterReticleCircleWidget")
require("ui.uieditor.widgets.VehicleHUDs.hellstorm.vhud_hellstorm_SpeedWidget")
require("ui.uieditor.widgets.VehicleHUDs.hellstorm.vhud_hellstorm_AltWidget")
require("ui.uieditor.widgets.VehicleHUDs.hellstorm.vhud_hellstorm_WeaponModeWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_hellstorm_reticle = registerVal1
function CoD.vhud_hellstorm_reticle.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_hellstorm_reticle)
	registerVal2.id = "vhud_hellstorm_reticle"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1279.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -3.000000, 2.000000)
	registerVal3:setTopBottom(false, false, -3.000000, 2.000000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_hellstorm_dotrgb"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.CenterDot = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -17.250000, 16.250000)
	registerVal4:setTopBottom(false, false, -302.500000, -269.000000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_hellstorm_arrow"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.ArrowTop = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -318.750000, -285.250000)
	registerVal5:setTopBottom(false, false, -17.250000, 16.250000)
	registerVal5:setZRot(90.000000)
	registerVal5:setImage(RegisterImage("uie_t7_cp_hud_vehicle_hellstorm_arrow"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.ArrowLeft = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, 280.250000, 313.750000)
	registerVal6:setTopBottom(false, false, -17.250000, 16.250000)
	registerVal6:setZRot(-90.000000)
	registerVal6:setImage(RegisterImage("uie_t7_cp_hud_vehicle_hellstorm_arrow"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.ArrowRight = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -17.250000, 16.250000)
	registerVal7:setTopBottom(false, false, 275.500000, 309.000000)
	registerVal7:setZRot(180.000000)
	registerVal7:setImage(RegisterImage("uie_t7_cp_hud_vehicle_hellstorm_arrow"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.ArrowBottom = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -169.000000, 168.000000)
	registerVal8:setTopBottom(false, false, -169.000000, 168.000000)
	registerVal8:setRGB(0.910000, 0.670000, 0.250000)
	registerVal8:setAlpha(0.400000)
	registerVal8:setImage(RegisterImage("uie_t7_cp_hud_vehicle_hellstorm_centerhashringlarge"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.CenterHash = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, -20.710000, 19.710000)
	registerVal9:setTopBottom(false, false, -188.250000, -93.250000)
	registerVal9:setRGB(0.600000, 0.820000, 0.910000)
	registerVal9:setAlpha(0.500000)
	registerVal9:setImage(RegisterImage("uie_t7_cp_hud_vehicle_hellstorm_centerreticleline"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.CenterReticleLineT = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, false, -20.710000, 19.710000)
	registerVal10:setTopBottom(false, false, 94.750000, 189.750000)
	registerVal10:setRGB(0.600000, 0.820000, 0.910000)
	registerVal10:setAlpha(0.500000)
	registerVal10:setZRot(180.000000)
	registerVal10:setImage(RegisterImage("uie_t7_cp_hud_vehicle_hellstorm_centerreticleline"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.CenterReticleLineB = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, false, 122.290000, 162.710000)
	registerVal11:setTopBottom(false, false, -48.000000, 47.000000)
	registerVal11:setRGB(0.600000, 0.820000, 0.910000)
	registerVal11:setAlpha(0.500000)
	registerVal11:setZRot(-90.000000)
	registerVal11:setImage(RegisterImage("uie_t7_cp_hud_vehicle_hellstorm_centerreticleline"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.CenterReticleLineR = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, false, -163.710000, -123.290000)
	registerVal12:setTopBottom(false, false, -48.000000, 47.000000)
	registerVal12:setRGB(0.600000, 0.820000, 0.910000)
	registerVal12:setAlpha(0.500000)
	registerVal12:setZRot(90.000000)
	registerVal12:setImage(RegisterImage("uie_t7_cp_hud_vehicle_hellstorm_centerreticleline"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.CenterReticleLineL = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(false, false, -3.000000, 2.000000)
	registerVal13:setTopBottom(false, false, -204.000000, -199.000000)
	registerVal13:setImage(RegisterImage("uie_t7_cp_hud_vehicle_hellstorm_dotrgb"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.DotTop = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(false, false, 198.210000, 203.210000)
	registerVal14:setTopBottom(false, false, -2.500000, 2.500000)
	registerVal14:setImage(RegisterImage("uie_t7_cp_hud_vehicle_hellstorm_dotrgb"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.DotRight = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(false, false, -3.000000, 2.000000)
	registerVal15:setTopBottom(false, false, 196.000000, 201.000000)
	registerVal15:setImage(RegisterImage("uie_t7_cp_hud_vehicle_hellstorm_dotrgb"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.DotBottom = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(false, false, -203.790000, -198.790000)
	registerVal16:setTopBottom(false, false, -2.500000, 2.500000)
	registerVal16:setImage(RegisterImage("uie_t7_cp_hud_vehicle_hellstorm_dotrgb"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal16)
	registerVal2.DotLeft = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(false, false, -98.500000, 97.500000)
	registerVal17:setTopBottom(false, false, -98.500000, 97.500000)
	registerVal17:setAlpha(0.300000)
	registerVal17:setImage(RegisterImage("uie_t7_cp_hud_vehicle_hellstorm_centerreticlecircle"))
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal17)
	registerVal2.CenterSolidCircle = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(false, false, 193.040000, 289.000000)
	registerVal18:setTopBottom(false, false, -178.420000, 173.420000)
	registerVal18:setAlpha(0.600000)
	registerVal18:setImage(RegisterImage("uie_t7_cp_hud_vehicle_hellstorm_outsidecurvebroken"))
	registerVal18:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal18)
	registerVal2.OutsideCurveBrokenR = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(false, false, 190.070000, 285.800000)
	registerVal19:setTopBottom(false, false, -102.940000, 96.500000)
	registerVal19:setRGB(0.600000, 0.820000, 0.910000)
	registerVal19:setAlpha(0.800000)
	registerVal19:setImage(RegisterImage("uie_t7_cp_hud_vehicle_hellstorm_outsidecurvecenter"))
	registerVal19:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal19)
	registerVal2.OutsideCurveCenterR = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(false, false, 264.020000, 343.010000)
	registerVal20:setTopBottom(false, false, -203.120000, -155.730000)
	registerVal20:setImage(RegisterImage("uie_t7_cp_hud_vehicle_hellstorm_outsidecurvebrokenline"))
	registerVal20:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal20)
	registerVal2.OutsideLineUR = registerVal20
	local registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(false, false, 264.020000, 343.010000)
	registerVal21:setTopBottom(false, false, 158.300000, 205.700000)
	registerVal21:setYRot(180.000000)
	registerVal21:setImage(RegisterImage("uie_t7_cp_hud_vehicle_hellstorm_outsidecurvebrokenline"))
	registerVal21:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal21)
	registerVal2.OutsideLineLR = registerVal21
	local registerVal22 = LUI.UIImage.new()
	registerVal22:setLeftRight(false, false, -217.930000, 216.930000)
	registerVal22:setTopBottom(false, false, -219.930000, 214.930000)
	registerVal22:setAlpha(0.500000)
	registerVal22:setImage(RegisterImage("uie_t7_cp_hud_vehicle_hellstorm_innerring"))
	registerVal22:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal22)
	registerVal2.InnerRing = registerVal22
	local registerVal23 = LUI.UIImage.new()
	registerVal23:setLeftRight(false, false, -240.930000, 237.930000)
	registerVal23:setTopBottom(false, false, -243.170000, 235.700000)
	registerVal23:setAlpha(0.500000)
	registerVal23:setImage(RegisterImage("uie_t7_cp_hud_vehicle_hellstorm_outerringblur"))
	registerVal23:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal23)
	registerVal2.OuterRingBlur = registerVal23
	local registerVal24 = LUI.UIImage.new()
	registerVal24:setLeftRight(false, false, -324.500000, 323.500000)
	registerVal24:setTopBottom(false, false, -324.000000, 324.000000)
	registerVal24:setAlpha(0.350000)
	registerVal24:setImage(RegisterImage("uie_t7_cp_hud_vehicle_hellstorm_outerringblurxlrgb"))
	registerVal24:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal24)
	registerVal2.OuterRingBlurRGB = registerVal24
	local registerVal25 = LUI.UIImage.new()
	registerVal25:setLeftRight(false, false, -292.910000, -196.950000)
	registerVal25:setTopBottom(false, false, -178.420000, 173.420000)
	registerVal25:setAlpha(0.600000)
	registerVal25:setYRot(180.000000)
	registerVal25:setImage(RegisterImage("uie_t7_cp_hud_vehicle_hellstorm_outsidecurvebroken"))
	registerVal25:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal25)
	registerVal2.OutsideCurveBrokenL = registerVal25
	local registerVal26 = LUI.UIImage.new()
	registerVal26:setLeftRight(false, false, -289.800000, -194.070000)
	registerVal26:setTopBottom(false, false, -102.940000, 96.500000)
	registerVal26:setRGB(0.600000, 0.820000, 0.910000)
	registerVal26:setAlpha(0.800000)
	registerVal26:setYRot(180.000000)
	registerVal26:setImage(RegisterImage("uie_t7_cp_hud_vehicle_hellstorm_outsidecurvecenter"))
	registerVal26:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal26)
	registerVal2.OutsideCurveCenterL = registerVal26
	local registerVal27 = LUI.UIImage.new()
	registerVal27:setLeftRight(false, false, -341.500000, -262.500000)
	registerVal27:setTopBottom(false, false, -203.120000, -155.730000)
	registerVal27:setYRot(180.000000)
	registerVal27:setImage(RegisterImage("uie_t7_cp_hud_vehicle_hellstorm_outsidecurvebrokenline"))
	registerVal27:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal27)
	registerVal2.OutsideLineUL = registerVal27
	local registerVal28 = LUI.UIImage.new()
	registerVal28:setLeftRight(false, false, -341.500000, -262.500000)
	registerVal28:setTopBottom(false, false, 158.300000, 205.700000)
	registerVal28:setImage(RegisterImage("uie_t7_cp_hud_vehicle_hellstorm_outsidecurvebrokenline"))
	registerVal28:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal28)
	registerVal2.OutsideLineLL = registerVal28
	local registerVal29 = LUI.UIImage.new()
	registerVal29:setLeftRight(false, false, 356.720000, 516.360000)
	registerVal29:setTopBottom(false, false, -267.400000, 267.400000)
	registerVal29:setRGB(0.910000, 0.670000, 0.250000)
	registerVal29:setAlpha(0.500000)
	registerVal29:setImage(RegisterImage("uie_t7_cp_hud_vehicle_hellstorm_outsideticks"))
	registerVal29:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal29)
	registerVal2.OutsideTicksR = registerVal29
	local registerVal30 = LUI.UIImage.new()
	registerVal30:setLeftRight(false, false, -501.140000, -341.500000)
	registerVal30:setTopBottom(false, false, -270.000000, 264.800000)
	registerVal30:setRGB(0.910000, 0.670000, 0.250000)
	registerVal30:setAlpha(0.500000)
	registerVal30:setZRot(180.000000)
	registerVal30:setImage(RegisterImage("uie_t7_cp_hud_vehicle_hellstorm_outsideticks"))
	registerVal30:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal30)
	registerVal2.OutsideTicksL = registerVal30
	local registerVal31 = CoD.vhud_hellstorm_CenterReticleWidget.new(arg0, arg1)
	registerVal31:setLeftRight(false, false, -35.500000, 32.500000)
	registerVal31:setTopBottom(false, false, -34.500000, 33.500000)
	registerVal31:setRGB(0.690000, 0.910000, 1.000000)
	registerVal2:addElement(registerVal31)
	registerVal2.vhudhellstormCenterReticleWidget0 = registerVal31
	local registerVal32 = LUI.UIImage.new()
	registerVal32:setLeftRight(false, false, -33.500000, 35.500000)
	registerVal32:setTopBottom(false, false, 247.900000, 264.800000)
	registerVal32:setZoom(50.000000)
	registerVal32:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_extoutterringarrowsm"))
	registerVal32:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal32)
	registerVal2.ArrowsBlurBottom = registerVal32
	local registerVal33 = LUI.UIImage.new()
	registerVal33:setLeftRight(false, false, -33.500000, 35.500000)
	registerVal33:setTopBottom(false, false, -267.400000, -250.500000)
	registerVal33:setZoom(50.000000)
	registerVal33:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_extoutterringarrowsm"))
	registerVal33:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal33)
	registerVal2.ArrowsBlurTop = registerVal33
	local registerVal34 = CoD.vhud_hellstorm_timebar.new(arg0, arg1)
	registerVal34:setLeftRight(false, true, -296.490000, -78.490000)
	registerVal34:setTopBottom(true, false, 41.000000, 50.000000)
	registerVal34:setAlpha(0.850000)
	registerVal34:setYRot(-20.000000)
	local function __FUNC_2F43_(arg0)
		registerVal34:setModel(arg0, arg1)
	end

	registerVal34:linkToElementModel(registerVal2, nil, false, __FUNC_2F43_)
	registerVal2:addElement(registerVal34)
	registerVal2.vhudhellstormtimebar = registerVal34
	local registerVal35 = LUI.UIImage.new()
	registerVal35:setLeftRight(false, false, 237.930000, 306.930000)
	registerVal35:setTopBottom(false, false, -7.950000, 8.950000)
	registerVal35:setZRot(90.000000)
	registerVal35:setZoom(50.000000)
	registerVal35:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_extoutterringarrowsm"))
	registerVal35:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal35)
	registerVal2.ArrowsBlurTop0 = registerVal35
	local registerVal36 = LUI.UIImage.new()
	registerVal36:setLeftRight(false, false, -309.930000, -240.930000)
	registerVal36:setTopBottom(false, false, -8.950000, 7.950000)
	registerVal36:setZRot(90.000000)
	registerVal36:setZoom(50.000000)
	registerVal36:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_extoutterringarrowsm"))
	registerVal36:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal36)
	registerVal2.Image0 = registerVal36
	local registerVal37 = CoD.vhud_CenterReticleCircleWidget.new(arg0, arg1)
	registerVal37:setLeftRight(false, false, -35.500000, 32.500000)
	registerVal37:setTopBottom(false, false, -34.500000, 33.500000)
	registerVal2:addElement(registerVal37)
	registerVal2.vhudCenterReticleCircleWidget = registerVal37
	local registerVal38 = CoD.vhud_hellstorm_SpeedWidget.new(arg0, arg1)
	registerVal38:setLeftRight(false, true, -187.490000, -100.490000)
	registerVal38:setTopBottom(false, false, -28.330000, 13.670000)
	registerVal38:setYRot(-50.000000)
	local function __FUNC_2F92_(arg0)
		registerVal38:setModel(arg0, arg1)
	end

	registerVal38:linkToElementModel(registerVal2, nil, false, __FUNC_2F92_)
	registerVal2:addElement(registerVal38)
	registerVal2.vhudhellstormSpeedWidget = registerVal38
	local registerVal39 = CoD.vhud_hellstorm_AltWidget.new(arg0, arg1)
	registerVal39:setLeftRight(true, false, 105.540000, 192.540000)
	registerVal39:setTopBottom(false, false, -28.330000, 13.670000)
	registerVal39:setYRot(50.000000)
	local function __FUNC_2FE2_(arg0)
		registerVal39:setModel(arg0, arg1)
	end

	registerVal39:linkToElementModel(registerVal2, nil, false, __FUNC_2FE2_)
	registerVal2:addElement(registerVal39)
	registerVal2.vhudhellstormAltWidget0 = registerVal39
	local registerVal40 = CoD.vhud_hellstorm_WeaponModeWidget.new(arg0, arg1)
	registerVal40:setLeftRight(false, false, -41.500000, 38.500000)
	registerVal40:setTopBottom(false, false, 205.700000, 254.700000)
	local function __FUNC_3032_(arg0)
		registerVal40:setModel(arg0, arg1)
	end

	registerVal40:linkToElementModel(registerVal2, nil, false, __FUNC_3032_)
	registerVal2:addElement(registerVal40)
	registerVal2.vhudhellstormWeaponModeWidget0 = registerVal40
	local registerVal41 = {}
	local registerVal42 = {}
	local function __FUNC_3082_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal42.DefaultClip = __FUNC_3082_
	registerVal41.DefaultState = registerVal42
	registerVal42 = {}
	local function __FUNC_30E2_()
		registerVal2:setupElementClipCounter(32.000000)
		registerVal4:completeAnimation()
		registerVal2.ArrowTop:setLeftRight(false, false, -17.250000, 16.250000)
		registerVal2.ArrowTop:setTopBottom(false, false, -357.500000, -324.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ArrowLeft:setLeftRight(false, false, -392.500000, -359.000000)
		registerVal2.ArrowLeft:setTopBottom(false, false, -17.250000, 16.250000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ArrowRight:setLeftRight(false, false, 350.500000, 384.000000)
		registerVal2.ArrowRight:setTopBottom(false, false, -17.250000, 16.250000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ArrowBottom:setLeftRight(false, false, -17.250000, 16.250000)
		registerVal2.ArrowBottom:setTopBottom(false, false, 324.000000, 357.500000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.CenterHash:setLeftRight(false, false, -169.000000, 168.000000)
		registerVal2.CenterHash:setTopBottom(false, false, -169.000000, 168.000000)
		registerVal2.CenterHash:setScale(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.CenterReticleLineT:setLeftRight(false, false, -20.710000, 19.710000)
		registerVal2.CenterReticleLineT:setTopBottom(false, false, -220.930000, -125.930000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.CenterReticleLineB:setLeftRight(false, false, -20.710000, 19.710000)
		registerVal2.CenterReticleLineB:setTopBottom(false, false, 125.920000, 220.920000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.CenterReticleLineR:setLeftRight(false, false, 149.790000, 190.210000)
		registerVal2.CenterReticleLineR:setTopBottom(false, false, -48.000000, 47.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.CenterReticleLineL:setLeftRight(false, false, -192.210000, -151.790000)
		registerVal2.CenterReticleLineL:setTopBottom(false, false, -48.000000, 47.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.DotTop:setLeftRight(false, false, -3.000000, 2.000000)
		registerVal2.DotTop:setTopBottom(false, false, -274.900000, -269.900000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.DotRight:setLeftRight(false, false, 272.520000, 277.520000)
		registerVal2.DotRight:setTopBottom(false, false, -2.500000, 2.500000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.DotBottom:setLeftRight(false, false, -3.000000, 2.000000)
		registerVal2.DotBottom:setTopBottom(false, false, 257.700000, 262.700000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.DotLeft:setLeftRight(false, false, -270.790000, -265.790000)
		registerVal2.DotLeft:setTopBottom(false, false, -2.500000, 2.500000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.CenterSolidCircle:setScale(0.800000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.OutsideCurveBrokenR:setLeftRight(false, false, 240.540000, 336.500000)
		registerVal2.OutsideCurveBrokenR:setTopBottom(false, false, -178.420000, 173.420000)
		registerVal2.OutsideCurveBrokenR:setZoom(200.000000)
		registerVal2.OutsideCurveBrokenR:setScale(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.OutsideCurveCenterR:setLeftRight(false, false, 481.190000, 576.920000)
		registerVal2.OutsideCurveCenterR:setTopBottom(false, false, -102.940000, 96.500000)
		registerVal2.OutsideCurveCenterR:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.OutsideLineUR:setLeftRight(false, false, 391.000000, 469.990000)
		registerVal2.OutsideLineUR:setTopBottom(false, false, -269.900000, -222.500000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.OutsideLineLR:setLeftRight(false, false, 391.000000, 469.990000)
		registerVal2.OutsideLineLR:setTopBottom(false, false, 206.000000, 253.400000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.InnerRing:setScale(0.900000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.OuterRingBlur:setScale(0.900000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.OuterRingBlurRGB:setScale(1.200000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.OutsideCurveBrokenL:setLeftRight(false, false, -337.500000, -241.540000)
		registerVal2.OutsideCurveBrokenL:setTopBottom(false, false, -178.420000, 173.420000)
		registerVal2.OutsideCurveBrokenL:setZoom(200.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.OutsideCurveCenterL:setLeftRight(false, false, -581.050000, -485.320000)
		registerVal2.OutsideCurveCenterL:setTopBottom(false, false, -102.940000, 96.500000)
		registerVal2.OutsideCurveCenterL:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.OutsideLineUL:setLeftRight(false, false, -488.490000, -409.500000)
		registerVal2.OutsideLineUL:setTopBottom(false, false, -283.750000, -236.350000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.OutsideLineLL:setLeftRight(false, false, -478.500000, -399.500000)
		registerVal2.OutsideLineLL:setTopBottom(false, false, 217.500000, 264.900000)
		registerVal2.clipFinished(registerVal28, {})
		registerVal29:completeAnimation()
		registerVal2.OutsideTicksR:setLeftRight(false, false, 529.060000, 688.700000)
		registerVal2.OutsideTicksR:setTopBottom(false, false, -267.400000, 267.400000)
		registerVal2.OutsideTicksR:setScale(1.300000)
		registerVal2.clipFinished(registerVal29, {})
		registerVal30:completeAnimation()
		registerVal2.OutsideTicksL:setLeftRight(false, false, -692.820000, -529.180000)
		registerVal2.OutsideTicksL:setTopBottom(false, false, -269.900000, 264.900000)
		registerVal2.OutsideTicksL:setScale(1.300000)
		registerVal2.clipFinished(registerVal30, {})
		registerVal31:completeAnimation()
		registerVal2.vhudhellstormCenterReticleWidget0:setLeftRight(false, false, -35.500000, 32.500000)
		registerVal2.vhudhellstormCenterReticleWidget0:setTopBottom(false, false, -34.500000, 33.500000)
		registerVal2.clipFinished(registerVal31, {})
		registerVal32:completeAnimation()
		registerVal2.ArrowsBlurBottom:setLeftRight(false, false, -33.500000, 35.500000)
		registerVal2.ArrowsBlurBottom:setTopBottom(false, false, 389.600000, 406.500000)
		registerVal2.clipFinished(registerVal32, {})
		registerVal33:completeAnimation()
		registerVal2.ArrowsBlurTop:setLeftRight(false, false, -33.500000, 35.500000)
		registerVal2.ArrowsBlurTop:setTopBottom(false, false, -391.200000, -374.300000)
		registerVal2.clipFinished(registerVal33, {})
		registerVal35:completeAnimation()
		registerVal2.ArrowsBlurTop0:setLeftRight(false, false, 654.200000, 723.200000)
		registerVal2.ArrowsBlurTop0:setTopBottom(false, false, -8.450000, 8.450000)
		registerVal2.clipFinished(registerVal35, {})
		registerVal36:completeAnimation()
		registerVal2.Image0:setLeftRight(false, false, -708.500000, -639.500000)
		registerVal2.Image0:setTopBottom(false, false, -8.950000, 7.950000)
		registerVal2.clipFinished(registerVal36, {})
	end

	registerVal42.DefaultClip = __FUNC_30E2_
	local function __FUNC_45A9_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal42.DefaultState = __FUNC_45A9_
	registerVal41.LowAltitude = registerVal42
	registerVal42 = {}
	local function __FUNC_460A_()
		registerVal2:setupElementClipCounter(32.000000)
		registerVal4:completeAnimation()
		registerVal2.ArrowTop:setLeftRight(false, false, -17.250000, 16.250000)
		registerVal2.ArrowTop:setTopBottom(false, false, -340.000000, -306.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ArrowLeft:setLeftRight(false, false, -370.000000, -336.500000)
		registerVal2.ArrowLeft:setTopBottom(false, false, -17.250000, 16.250000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ArrowRight:setLeftRight(false, false, 319.750000, 353.250000)
		registerVal2.ArrowRight:setTopBottom(false, false, -17.250000, 16.250000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ArrowBottom:setLeftRight(false, false, -17.250000, 16.250000)
		registerVal2.ArrowBottom:setTopBottom(false, false, 312.500000, 346.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.CenterHash:setLeftRight(false, false, -169.000000, 168.000000)
		registerVal2.CenterHash:setTopBottom(false, false, -169.000000, 168.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.CenterReticleLineT:setLeftRight(false, false, -20.710000, 19.710000)
		registerVal2.CenterReticleLineT:setTopBottom(false, false, -202.120000, -107.120000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.CenterReticleLineB:setLeftRight(false, false, -20.710000, 19.710000)
		registerVal2.CenterReticleLineB:setTopBottom(false, false, 108.000000, 203.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.CenterReticleLineR:setLeftRight(false, false, 135.290000, 175.710000)
		registerVal2.CenterReticleLineR:setTopBottom(false, false, -48.000000, 47.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.CenterReticleLineL:setLeftRight(false, false, -177.710000, -137.290000)
		registerVal2.CenterReticleLineL:setTopBottom(false, false, -48.000000, 47.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.DotTop:setLeftRight(false, false, -3.000000, 2.000000)
		registerVal2.DotTop:setTopBottom(false, false, -237.320000, -232.320000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.DotRight:setLeftRight(false, false, 229.210000, 234.210000)
		registerVal2.DotRight:setTopBottom(false, false, -2.500000, 2.500000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.DotBottom:setLeftRight(false, false, -3.000000, 2.000000)
		registerVal2.DotBottom:setTopBottom(false, false, 224.700000, 229.700000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.DotLeft:setLeftRight(false, false, -234.790000, -229.790000)
		registerVal2.DotLeft:setTopBottom(false, false, -2.500000, 2.500000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.CenterSolidCircle:setScale(0.900000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.OutsideCurveBrokenR:setLeftRight(false, false, 203.040000, 299.000000)
		registerVal2.OutsideCurveBrokenR:setTopBottom(false, false, -178.420000, 173.420000)
		registerVal2.OutsideCurveBrokenR:setZoom(40.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.OutsideCurveCenterR:setLeftRight(false, false, 309.750000, 405.480000)
		registerVal2.OutsideCurveCenterR:setTopBottom(false, false, -102.940000, 96.500000)
		registerVal2.OutsideCurveCenterR:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.OutsideLineUR:setLeftRight(false, false, 297.000000, 375.990000)
		registerVal2.OutsideLineUR:setTopBottom(false, false, -219.930000, -172.540000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.OutsideLineLR:setLeftRight(false, false, 297.000000, 375.990000)
		registerVal2.OutsideLineLR:setTopBottom(false, false, 172.300000, 219.700000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.InnerRing:setScale(0.950000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.OuterRingBlur:setScale(0.950000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.OuterRingBlurRGB:setScale(1.100000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.OutsideCurveBrokenL:setLeftRight(false, false, -302.000000, -206.040000)
		registerVal2.OutsideCurveBrokenL:setTopBottom(false, false, -178.420000, 173.420000)
		registerVal2.OutsideCurveBrokenL:setZoom(40.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.OutsideCurveCenterL:setLeftRight(false, false, -424.860000, -329.130000)
		registerVal2.OutsideCurveCenterL:setTopBottom(false, false, -102.940000, 96.500000)
		registerVal2.OutsideCurveCenterL:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.OutsideLineUL:setLeftRight(false, false, -380.990000, -302.000000)
		registerVal2.OutsideLineUL:setTopBottom(false, false, -225.820000, -178.420000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.OutsideLineLL:setLeftRight(false, false, -380.990000, -302.000000)
		registerVal2.OutsideLineLL:setTopBottom(false, false, 174.800000, 222.200000)
		registerVal2.clipFinished(registerVal28, {})
		registerVal29:completeAnimation()
		registerVal2.OutsideTicksR:setLeftRight(false, false, 401.370000, 561.010000)
		registerVal2.OutsideTicksR:setTopBottom(false, false, -267.400000, 267.400000)
		registerVal2.OutsideTicksR:setScale(1.100000)
		registerVal2.clipFinished(registerVal29, {})
		registerVal30:completeAnimation()
		registerVal2.OutsideTicksL:setLeftRight(false, false, -565.140000, -405.500000)
		registerVal2.OutsideTicksL:setTopBottom(false, false, -270.000000, 264.800000)
		registerVal2.OutsideTicksL:setScale(1.100000)
		registerVal2.clipFinished(registerVal30, {})
		registerVal31:completeAnimation()
		registerVal2.vhudhellstormCenterReticleWidget0:setLeftRight(false, false, -35.500000, 32.500000)
		registerVal2.vhudhellstormCenterReticleWidget0:setTopBottom(false, false, -34.500000, 33.500000)
		registerVal2.clipFinished(registerVal31, {})
		registerVal32:completeAnimation()
		registerVal2.ArrowsBlurBottom:setLeftRight(false, false, -33.500000, 35.500000)
		registerVal2.ArrowsBlurBottom:setTopBottom(false, false, 295.600000, 312.500000)
		registerVal2.clipFinished(registerVal32, {})
		registerVal33:completeAnimation()
		registerVal2.ArrowsBlurTop:setLeftRight(false, false, -33.500000, 35.500000)
		registerVal2.ArrowsBlurTop:setTopBottom(false, false, -292.200000, -275.300000)
		registerVal2.clipFinished(registerVal33, {})
		registerVal35:completeAnimation()
		registerVal2.ArrowsBlurTop0:setLeftRight(false, false, 412.190000, 481.190000)
		registerVal2.ArrowsBlurTop0:setTopBottom(false, false, -8.450000, 8.450000)
		registerVal2.clipFinished(registerVal35, {})
		registerVal36:completeAnimation()
		registerVal2.Image0:setLeftRight(false, false, -478.500000, -409.500000)
		registerVal2.Image0:setTopBottom(false, false, -8.950000, 7.950000)
		registerVal2.clipFinished(registerVal36, {})
	end

	registerVal42.DefaultClip = __FUNC_460A_
	local function __FUNC_5A85_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal42.DefaultState = __FUNC_5A85_
	local function __FUNC_5AE6_()
		registerVal2:setupElementClipCounter(32.000000)
		local function __FUNC_6F0A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -17.250000, 16.250000)
			arg0:setTopBottom(false, false, -357.500000, -324.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ArrowTop:setLeftRight(false, false, -17.250000, 16.250000)
		registerVal2.ArrowTop:setTopBottom(false, false, -340.000000, -306.500000)
		__FUNC_6F0A_(registerVal4, {})
		local function __FUNC_710A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -392.500000, -359.000000)
			arg0:setTopBottom(false, false, -17.250000, 16.250000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.ArrowLeft:setLeftRight(false, false, -370.000000, -336.500000)
		registerVal2.ArrowLeft:setTopBottom(false, false, -17.250000, 16.250000)
		__FUNC_710A_(registerVal5, {})
		local function __FUNC_730A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 350.500000, 384.000000)
			arg0:setTopBottom(false, false, -17.250000, 16.250000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.ArrowRight:setLeftRight(false, false, 319.750000, 353.250000)
		registerVal2.ArrowRight:setTopBottom(false, false, -17.250000, 16.250000)
		__FUNC_730A_(registerVal6, {})
		local function __FUNC_750A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -17.250000, 16.250000)
			arg0:setTopBottom(false, false, 324.000000, 357.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.ArrowBottom:setLeftRight(false, false, -17.250000, 16.250000)
		registerVal2.ArrowBottom:setTopBottom(false, false, 312.500000, 346.000000)
		__FUNC_750A_(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.CenterHash:setLeftRight(false, false, -169.000000, 168.000000)
		registerVal2.CenterHash:setTopBottom(false, false, -169.000000, 168.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_770A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -20.710000, 19.710000)
			arg0:setTopBottom(false, false, -220.930000, -125.930000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.CenterReticleLineT:setLeftRight(false, false, -20.710000, 19.710000)
		registerVal2.CenterReticleLineT:setTopBottom(false, false, -202.120000, -107.120000)
		__FUNC_770A_(registerVal9, {})
		local function __FUNC_790A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -20.710000, 19.710000)
			arg0:setTopBottom(false, false, 125.920000, 220.920000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.CenterReticleLineB:setLeftRight(false, false, -20.710000, 19.710000)
		registerVal2.CenterReticleLineB:setTopBottom(false, false, 108.000000, 203.000000)
		__FUNC_790A_(registerVal10, {})
		local function __FUNC_7B0A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 149.790000, 190.210000)
			arg0:setTopBottom(false, false, -48.000000, 47.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.CenterReticleLineR:setLeftRight(false, false, 135.290000, 175.710000)
		registerVal2.CenterReticleLineR:setTopBottom(false, false, -48.000000, 47.000000)
		__FUNC_7B0A_(registerVal11, {})
		local function __FUNC_7D0A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -192.210000, -151.790000)
			arg0:setTopBottom(false, false, -48.000000, 47.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.CenterReticleLineL:setLeftRight(false, false, -177.710000, -137.290000)
		registerVal2.CenterReticleLineL:setTopBottom(false, false, -48.000000, 47.000000)
		__FUNC_7D0A_(registerVal12, {})
		local function __FUNC_7F0A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -3.000000, 2.000000)
			arg0:setTopBottom(false, false, -274.900000, -269.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.DotTop:setLeftRight(false, false, -3.000000, 2.000000)
		registerVal2.DotTop:setTopBottom(false, false, -237.320000, -232.320000)
		__FUNC_7F0A_(registerVal13, {})
		local function __FUNC_810A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 272.520000, 277.520000)
			arg0:setTopBottom(false, false, -2.500000, 2.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.DotRight:setLeftRight(false, false, 229.210000, 234.210000)
		registerVal2.DotRight:setTopBottom(false, false, -2.500000, 2.500000)
		__FUNC_810A_(registerVal14, {})
		local function __FUNC_830A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -3.000000, 2.000000)
			arg0:setTopBottom(false, false, 257.700000, 262.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.DotBottom:setLeftRight(false, false, -3.000000, 2.000000)
		registerVal2.DotBottom:setTopBottom(false, false, 224.700000, 229.700000)
		__FUNC_830A_(registerVal15, {})
		local function __FUNC_850A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -270.790000, -265.790000)
			arg0:setTopBottom(false, false, -2.500000, 2.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.DotLeft:setLeftRight(false, false, -234.790000, -229.790000)
		registerVal2.DotLeft:setTopBottom(false, false, -2.500000, 2.500000)
		__FUNC_850A_(registerVal16, {})
		local function __FUNC_870A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setScale(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.CenterSolidCircle:setScale(0.900000)
		__FUNC_870A_(registerVal17, {})
		local function __FUNC_88BD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 240.540000, 336.500000)
			arg0:setTopBottom(false, false, -178.420000, 173.420000)
			arg0:setZoom(200.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.OutsideCurveBrokenR:setLeftRight(false, false, 203.040000, 299.000000)
		registerVal2.OutsideCurveBrokenR:setTopBottom(false, false, -178.420000, 173.420000)
		registerVal2.OutsideCurveBrokenR:setZoom(40.000000)
		registerVal2.OutsideCurveBrokenR:setScale(1.000000)
		__FUNC_88BD_(registerVal18, {})
		local function __FUNC_8B03_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 481.190000, 576.920000)
			arg0:setTopBottom(false, false, -102.940000, 96.500000)
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal2.OutsideCurveCenterR:setLeftRight(false, false, 309.750000, 405.480000)
		registerVal2.OutsideCurveCenterR:setTopBottom(false, false, -102.940000, 96.500000)
		registerVal2.OutsideCurveCenterR:setAlpha(0.500000)
		__FUNC_8B03_(registerVal19, {})
		local function __FUNC_8D25_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 391.000000, 469.990000)
			arg0:setTopBottom(false, false, -269.900000, -222.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal20:completeAnimation()
		registerVal2.OutsideLineUR:setLeftRight(false, false, 297.000000, 375.990000)
		registerVal2.OutsideLineUR:setTopBottom(false, false, -219.930000, -172.540000)
		__FUNC_8D25_(registerVal20, {})
		local function __FUNC_8F26_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 391.000000, 469.990000)
			arg0:setTopBottom(false, false, 206.000000, 253.400000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal21:completeAnimation()
		registerVal2.OutsideLineLR:setLeftRight(false, false, 297.000000, 375.990000)
		registerVal2.OutsideLineLR:setTopBottom(false, false, 172.300000, 219.700000)
		__FUNC_8F26_(registerVal21, {})
		local function __FUNC_9126_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setScale(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal22:completeAnimation()
		registerVal2.InnerRing:setScale(0.950000)
		__FUNC_9126_(registerVal22, {})
		local function __FUNC_92D9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setScale(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal23:completeAnimation()
		registerVal2.OuterRingBlur:setScale(0.950000)
		__FUNC_92D9_(registerVal23, {})
		local function __FUNC_948D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setScale(1.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal24:completeAnimation()
		registerVal2.OuterRingBlurRGB:setScale(1.100000)
		__FUNC_948D_(registerVal24, {})
		local function __FUNC_9641_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -337.500000, -241.540000)
			arg0:setTopBottom(false, false, -178.420000, 173.420000)
			arg0:setZoom(200.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal25:completeAnimation()
		registerVal2.OutsideCurveBrokenL:setLeftRight(false, false, -302.000000, -206.040000)
		registerVal2.OutsideCurveBrokenL:setTopBottom(false, false, -178.420000, 173.420000)
		registerVal2.OutsideCurveBrokenL:setZoom(40.000000)
		__FUNC_9641_(registerVal25, {})
		local function __FUNC_9864_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -581.050000, -485.320000)
			arg0:setTopBottom(false, false, -102.940000, 96.500000)
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal26:completeAnimation()
		registerVal2.OutsideCurveCenterL:setLeftRight(false, false, -424.860000, -329.130000)
		registerVal2.OutsideCurveCenterL:setTopBottom(false, false, -102.940000, 96.500000)
		registerVal2.OutsideCurveCenterL:setAlpha(0.500000)
		__FUNC_9864_(registerVal26, {})
		local function __FUNC_9A89_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -488.490000, -409.500000)
			arg0:setTopBottom(false, false, -283.750000, -236.350000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal27:completeAnimation()
		registerVal2.OutsideLineUL:setLeftRight(false, false, -380.990000, -302.000000)
		registerVal2.OutsideLineUL:setTopBottom(false, false, -225.820000, -178.420000)
		__FUNC_9A89_(registerVal27, {})
		local function __FUNC_9C8A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -478.500000, -399.500000)
			arg0:setTopBottom(false, false, 217.500000, 264.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal28:completeAnimation()
		registerVal2.OutsideLineLL:setLeftRight(false, false, -380.990000, -302.000000)
		registerVal2.OutsideLineLL:setTopBottom(false, false, 174.800000, 222.200000)
		__FUNC_9C8A_(registerVal28, {})
		local function __FUNC_9E8A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 529.060000, 688.700000)
			arg0:setTopBottom(false, false, -267.400000, 267.400000)
			arg0:setScale(1.300000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal29:completeAnimation()
		registerVal2.OutsideTicksR:setLeftRight(false, false, 401.370000, 561.010000)
		registerVal2.OutsideTicksR:setTopBottom(false, false, -267.400000, 267.400000)
		registerVal2.OutsideTicksR:setScale(1.100000)
		__FUNC_9E8A_(registerVal29, {})
		local function __FUNC_A0AD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -688.820000, -529.180000)
			arg0:setTopBottom(false, false, -269.900000, 264.900000)
			arg0:setScale(1.300000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal30:completeAnimation()
		registerVal2.OutsideTicksL:setLeftRight(false, false, -565.140000, -405.500000)
		registerVal2.OutsideTicksL:setTopBottom(false, false, -270.000000, 264.800000)
		registerVal2.OutsideTicksL:setScale(1.100000)
		__FUNC_A0AD_(registerVal30, {})
		registerVal31:completeAnimation()
		registerVal2.vhudhellstormCenterReticleWidget0:setLeftRight(false, false, -35.500000, 32.500000)
		registerVal2.vhudhellstormCenterReticleWidget0:setTopBottom(false, false, -34.500000, 33.500000)
		registerVal2.clipFinished(registerVal31, {})
		local function __FUNC_A2D1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -33.500000, 35.500000)
			arg0:setTopBottom(false, false, 389.600000, 406.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal32:completeAnimation()
		registerVal2.ArrowsBlurBottom:setLeftRight(false, false, -33.500000, 35.500000)
		registerVal2.ArrowsBlurBottom:setTopBottom(false, false, 295.600000, 312.500000)
		__FUNC_A2D1_(registerVal32, {})
		local function __FUNC_A4D2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -33.500000, 35.500000)
			arg0:setTopBottom(false, false, -391.200000, -374.300000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal33:completeAnimation()
		registerVal2.ArrowsBlurTop:setLeftRight(false, false, -33.500000, 35.500000)
		registerVal2.ArrowsBlurTop:setTopBottom(false, false, -292.200000, -275.300000)
		__FUNC_A4D2_(registerVal33, {})
		local function __FUNC_A6D2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 654.200000, 723.200000)
			arg0:setTopBottom(false, false, -8.450000, 8.450000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal35:completeAnimation()
		registerVal2.ArrowsBlurTop0:setLeftRight(false, false, 412.190000, 481.190000)
		registerVal2.ArrowsBlurTop0:setTopBottom(false, false, -8.450000, 8.450000)
		__FUNC_A6D2_(registerVal35, {})
		local function __FUNC_A8D2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -708.500000, -639.500000)
			arg0:setTopBottom(false, false, -8.950000, 7.950000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal36:completeAnimation()
		registerVal2.Image0:setLeftRight(false, false, -478.500000, -409.500000)
		registerVal2.Image0:setTopBottom(false, false, -8.950000, 7.950000)
		__FUNC_A8D2_(registerVal36, {})
	end

	registerVal42.LowAltitude = __FUNC_5AE6_
	registerVal41.MediumAltitude = registerVal42
	registerVal42 = {}
	local function __FUNC_AAD2_()
		registerVal2:setupElementClipCounter(30.000000)
		registerVal4:completeAnimation()
		registerVal2.ArrowTop:setLeftRight(false, false, -17.250000, 16.250000)
		registerVal2.ArrowTop:setTopBottom(false, false, -302.500000, -269.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ArrowLeft:setLeftRight(false, false, -318.750000, -285.250000)
		registerVal2.ArrowLeft:setTopBottom(false, false, -17.250000, 16.250000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ArrowRight:setLeftRight(false, false, 280.250000, 313.750000)
		registerVal2.ArrowRight:setTopBottom(false, false, -17.250000, 16.250000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ArrowBottom:setLeftRight(false, false, -17.250000, 16.250000)
		registerVal2.ArrowBottom:setTopBottom(false, false, 275.500000, 309.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.CenterHash:setLeftRight(false, false, -169.000000, 168.000000)
		registerVal2.CenterHash:setTopBottom(false, false, -169.000000, 168.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.CenterReticleLineT:setLeftRight(false, false, -20.710000, 19.710000)
		registerVal2.CenterReticleLineT:setTopBottom(false, false, -188.250000, -93.250000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.CenterReticleLineB:setLeftRight(false, false, -20.710000, 19.710000)
		registerVal2.CenterReticleLineB:setTopBottom(false, false, 94.750000, 189.750000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.CenterReticleLineR:setLeftRight(false, false, 122.290000, 162.710000)
		registerVal2.CenterReticleLineR:setTopBottom(false, false, -48.000000, 47.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.CenterReticleLineL:setLeftRight(false, false, -163.710000, -123.290000)
		registerVal2.CenterReticleLineL:setTopBottom(false, false, -48.000000, 47.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.DotTop:setLeftRight(false, false, -3.000000, 2.000000)
		registerVal2.DotTop:setTopBottom(false, false, -204.000000, -199.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.DotRight:setLeftRight(false, false, 198.210000, 203.210000)
		registerVal2.DotRight:setTopBottom(false, false, -2.500000, 2.500000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.DotBottom:setLeftRight(false, false, -3.000000, 2.000000)
		registerVal2.DotBottom:setTopBottom(false, false, 196.000000, 201.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.DotLeft:setLeftRight(false, false, -203.790000, -198.790000)
		registerVal2.DotLeft:setTopBottom(false, false, -2.500000, 2.500000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.CenterSolidCircle:setLeftRight(false, false, -98.500000, 97.500000)
		registerVal2.CenterSolidCircle:setTopBottom(false, false, -98.500000, 97.500000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.OutsideCurveBrokenR:setLeftRight(false, false, 193.040000, 289.000000)
		registerVal2.OutsideCurveBrokenR:setTopBottom(false, false, -178.420000, 173.420000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.OutsideCurveCenterR:setLeftRight(false, false, 190.070000, 285.800000)
		registerVal2.OutsideCurveCenterR:setTopBottom(false, false, -102.940000, 96.500000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.OutsideLineUR:setLeftRight(false, false, 264.020000, 343.010000)
		registerVal2.OutsideLineUR:setTopBottom(false, false, -203.120000, -155.730000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.OutsideLineLR:setLeftRight(false, false, 264.020000, 343.010000)
		registerVal2.OutsideLineLR:setTopBottom(false, false, 158.300000, 205.700000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.InnerRing:setLeftRight(false, false, -217.930000, 216.930000)
		registerVal2.InnerRing:setTopBottom(false, false, -219.930000, 214.930000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.OuterRingBlur:setLeftRight(false, false, -240.930000, 237.930000)
		registerVal2.OuterRingBlur:setTopBottom(false, false, -243.170000, 235.700000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.OuterRingBlurRGB:setLeftRight(false, false, -324.500000, 323.500000)
		registerVal2.OuterRingBlurRGB:setTopBottom(false, false, -324.000000, 324.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.OutsideCurveBrokenL:setLeftRight(false, false, -292.910000, -196.950000)
		registerVal2.OutsideCurveBrokenL:setTopBottom(false, false, -178.420000, 173.420000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.OutsideCurveCenterL:setLeftRight(false, false, -289.800000, -194.070000)
		registerVal2.OutsideCurveCenterL:setTopBottom(false, false, -102.940000, 96.500000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.OutsideLineUL:setLeftRight(false, false, -341.500000, -262.500000)
		registerVal2.OutsideLineUL:setTopBottom(false, false, -203.120000, -155.730000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.OutsideLineLL:setLeftRight(false, false, -341.500000, -262.500000)
		registerVal2.OutsideLineLL:setTopBottom(false, false, 158.300000, 205.700000)
		registerVal2.clipFinished(registerVal28, {})
		registerVal29:completeAnimation()
		registerVal2.OutsideTicksR:setLeftRight(false, false, 356.720000, 516.360000)
		registerVal2.OutsideTicksR:setTopBottom(false, false, -267.400000, 267.400000)
		registerVal2.clipFinished(registerVal29, {})
		registerVal30:completeAnimation()
		registerVal2.OutsideTicksL:setLeftRight(false, false, -501.140000, -341.500000)
		registerVal2.OutsideTicksL:setTopBottom(false, false, -270.000000, 264.800000)
		registerVal2.clipFinished(registerVal30, {})
		registerVal31:completeAnimation()
		registerVal2.vhudhellstormCenterReticleWidget0:setLeftRight(false, false, -35.500000, 32.500000)
		registerVal2.vhudhellstormCenterReticleWidget0:setTopBottom(false, false, -34.500000, 33.500000)
		registerVal2.clipFinished(registerVal31, {})
		registerVal32:completeAnimation()
		registerVal2.ArrowsBlurBottom:setLeftRight(false, false, -33.500000, 35.500000)
		registerVal2.ArrowsBlurBottom:setTopBottom(false, false, 247.900000, 264.800000)
		registerVal2.clipFinished(registerVal32, {})
		registerVal33:completeAnimation()
		registerVal2.ArrowsBlurTop:setLeftRight(false, false, -33.500000, 35.500000)
		registerVal2.ArrowsBlurTop:setTopBottom(false, false, -267.400000, -250.500000)
		registerVal2.clipFinished(registerVal33, {})
	end

	registerVal42.DefaultClip = __FUNC_AAD2_
	local function __FUNC_BE19_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal42.DefaultState = __FUNC_BE19_
	local function __FUNC_BE7A_()
		registerVal2:setupElementClipCounter(32.000000)
		local function __FUNC_D413_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -17.250000, 16.250000)
			arg0:setTopBottom(false, false, -340.000000, -306.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ArrowTop:setLeftRight(false, false, -17.250000, 16.250000)
		registerVal2.ArrowTop:setTopBottom(false, false, -302.500000, -269.000000)
		__FUNC_D413_(registerVal4, {})
		local function __FUNC_D612_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -370.000000, -336.500000)
			arg0:setTopBottom(false, false, -17.250000, 16.250000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.ArrowLeft:setLeftRight(false, false, -318.750000, -285.250000)
		registerVal2.ArrowLeft:setTopBottom(false, false, -17.250000, 16.250000)
		__FUNC_D612_(registerVal5, {})
		local function __FUNC_D812_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 319.750000, 353.250000)
			arg0:setTopBottom(false, false, -17.250000, 16.250000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.ArrowRight:setLeftRight(false, false, 280.250000, 313.750000)
		registerVal2.ArrowRight:setTopBottom(false, false, -17.250000, 16.250000)
		__FUNC_D812_(registerVal6, {})
		local function __FUNC_DA12_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -17.250000, 16.250000)
			arg0:setTopBottom(false, false, 312.500000, 346.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.ArrowBottom:setLeftRight(false, false, -17.250000, 16.250000)
		registerVal2.ArrowBottom:setTopBottom(false, false, 275.500000, 309.000000)
		__FUNC_DA12_(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.CenterHash:setLeftRight(false, false, -169.000000, 168.000000)
		registerVal2.CenterHash:setTopBottom(false, false, -169.000000, 168.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_DC12_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -20.710000, 19.710000)
			arg0:setTopBottom(false, false, -202.120000, -107.120000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.CenterReticleLineT:setLeftRight(false, false, -20.710000, 19.710000)
		registerVal2.CenterReticleLineT:setTopBottom(false, false, -188.250000, -93.250000)
		__FUNC_DC12_(registerVal9, {})
		local function __FUNC_DE12_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -20.710000, 19.710000)
			arg0:setTopBottom(false, false, 108.000000, 203.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.CenterReticleLineB:setLeftRight(false, false, -20.710000, 19.710000)
		registerVal2.CenterReticleLineB:setTopBottom(false, false, 94.750000, 189.750000)
		__FUNC_DE12_(registerVal10, {})
		local function __FUNC_E012_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 135.290000, 175.710000)
			arg0:setTopBottom(false, false, -48.000000, 47.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.CenterReticleLineR:setLeftRight(false, false, 122.290000, 162.710000)
		registerVal2.CenterReticleLineR:setTopBottom(false, false, -48.000000, 47.000000)
		__FUNC_E012_(registerVal11, {})
		local function __FUNC_E212_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -177.710000, -137.290000)
			arg0:setTopBottom(false, false, -48.000000, 47.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.CenterReticleLineL:setLeftRight(false, false, -163.710000, -123.290000)
		registerVal2.CenterReticleLineL:setTopBottom(false, false, -48.000000, 47.000000)
		__FUNC_E212_(registerVal12, {})
		local function __FUNC_E412_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -3.000000, 2.000000)
			arg0:setTopBottom(false, false, -237.320000, -232.320000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.DotTop:setLeftRight(false, false, -3.000000, 2.000000)
		registerVal2.DotTop:setTopBottom(false, false, -204.000000, -199.000000)
		__FUNC_E412_(registerVal13, {})
		local function __FUNC_E612_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 229.210000, 234.210000)
			arg0:setTopBottom(false, false, -2.500000, 2.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.DotRight:setLeftRight(false, false, 198.210000, 203.210000)
		registerVal2.DotRight:setTopBottom(false, false, -2.500000, 2.500000)
		__FUNC_E612_(registerVal14, {})
		local function __FUNC_E812_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -3.000000, 2.000000)
			arg0:setTopBottom(false, false, 224.700000, 229.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.DotBottom:setLeftRight(false, false, -3.000000, 2.000000)
		registerVal2.DotBottom:setTopBottom(false, false, 196.000000, 201.000000)
		__FUNC_E812_(registerVal15, {})
		local function __FUNC_EA12_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -234.790000, -229.790000)
			arg0:setTopBottom(false, false, -2.500000, 2.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.DotLeft:setLeftRight(false, false, -203.790000, -198.790000)
		registerVal2.DotLeft:setTopBottom(false, false, -2.500000, 2.500000)
		__FUNC_EA12_(registerVal16, {})
		local function __FUNC_EC12_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -98.500000, 97.500000)
			arg0:setTopBottom(false, false, -98.500000, 97.500000)
			arg0:setScale(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.CenterSolidCircle:setLeftRight(false, false, -98.500000, 97.500000)
		registerVal2.CenterSolidCircle:setTopBottom(false, false, -98.500000, 97.500000)
		registerVal2.CenterSolidCircle:setScale(1.000000)
		__FUNC_EC12_(registerVal17, {})
		local function __FUNC_EE2B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 203.040000, 299.000000)
			arg0:setTopBottom(false, false, -178.420000, 173.420000)
			arg0:setZoom(40.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.OutsideCurveBrokenR:setLeftRight(false, false, 193.040000, 289.000000)
		registerVal2.OutsideCurveBrokenR:setTopBottom(false, false, -178.420000, 173.420000)
		registerVal2.OutsideCurveBrokenR:setZoom(0.000000)
		registerVal2.OutsideCurveBrokenR:setScale(1.000000)
		__FUNC_EE2B_(registerVal18, {})
		local function __FUNC_F06F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 309.750000, 405.480000)
			arg0:setTopBottom(false, false, -102.940000, 96.500000)
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal2.OutsideCurveCenterR:setLeftRight(false, false, 190.070000, 285.800000)
		registerVal2.OutsideCurveCenterR:setTopBottom(false, false, -102.940000, 96.500000)
		registerVal2.OutsideCurveCenterR:setAlpha(0.800000)
		__FUNC_F06F_(registerVal19, {})
		local function __FUNC_F291_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 297.000000, 375.990000)
			arg0:setTopBottom(false, false, -219.930000, -172.540000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal20:completeAnimation()
		registerVal2.OutsideLineUR:setLeftRight(false, false, 264.020000, 343.010000)
		registerVal2.OutsideLineUR:setTopBottom(false, false, -203.120000, -155.730000)
		__FUNC_F291_(registerVal20, {})
		local function __FUNC_F492_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 297.000000, 375.990000)
			arg0:setTopBottom(false, false, 172.300000, 219.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal21:completeAnimation()
		registerVal2.OutsideLineLR:setLeftRight(false, false, 264.020000, 343.010000)
		registerVal2.OutsideLineLR:setTopBottom(false, false, 158.300000, 205.700000)
		__FUNC_F492_(registerVal21, {})
		local function __FUNC_F692_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -217.930000, 216.930000)
			arg0:setTopBottom(false, false, -219.930000, 214.930000)
			arg0:setScale(0.950000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal22:completeAnimation()
		registerVal2.InnerRing:setLeftRight(false, false, -217.930000, 216.930000)
		registerVal2.InnerRing:setTopBottom(false, false, -219.930000, 214.930000)
		registerVal2.InnerRing:setScale(1.000000)
		__FUNC_F692_(registerVal22, {})
		local function __FUNC_F8B5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -240.930000, 237.930000)
			arg0:setTopBottom(false, false, -243.170000, 235.700000)
			arg0:setScale(0.950000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal23:completeAnimation()
		registerVal2.OuterRingBlur:setLeftRight(false, false, -240.930000, 237.930000)
		registerVal2.OuterRingBlur:setTopBottom(false, false, -243.170000, 235.700000)
		registerVal2.OuterRingBlur:setScale(1.000000)
		__FUNC_F8B5_(registerVal23, {})
		local function __FUNC_FAD9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -324.500000, 323.500000)
			arg0:setTopBottom(false, false, -324.000000, 324.000000)
			arg0:setScale(1.100000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal24:completeAnimation()
		registerVal2.OuterRingBlurRGB:setLeftRight(false, false, -324.500000, 323.500000)
		registerVal2.OuterRingBlurRGB:setTopBottom(false, false, -324.000000, 324.000000)
		registerVal2.OuterRingBlurRGB:setScale(1.000000)
		__FUNC_FAD9_(registerVal24, {})
		local function __FUNC_FCFD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -302.000000, -206.040000)
			arg0:setTopBottom(false, false, -178.420000, 173.420000)
			arg0:setZoom(40.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal25:completeAnimation()
		registerVal2.OutsideCurveBrokenL:setLeftRight(false, false, -292.910000, -196.950000)
		registerVal2.OutsideCurveBrokenL:setTopBottom(false, false, -178.420000, 173.420000)
		registerVal2.OutsideCurveBrokenL:setZoom(0.000000)
		registerVal2.OutsideCurveBrokenL:setScale(1.000000)
		__FUNC_FCFD_(registerVal25, {})
		local function __FUNC_FF43_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -424.860000, -329.130000)
			arg0:setTopBottom(false, false, -102.940000, 96.500000)
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal26:completeAnimation()
		registerVal2.OutsideCurveCenterL:setLeftRight(false, false, -289.800000, -194.070000)
		registerVal2.OutsideCurveCenterL:setTopBottom(false, false, -102.940000, 96.500000)
		registerVal2.OutsideCurveCenterL:setAlpha(0.800000)
		__FUNC_FF43_(registerVal26, {})
		local function __FUNC_10165_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -380.990000, -302.000000)
			arg0:setTopBottom(false, false, -225.820000, -178.420000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal27:completeAnimation()
		registerVal2.OutsideLineUL:setLeftRight(false, false, -341.500000, -262.500000)
		registerVal2.OutsideLineUL:setTopBottom(false, false, -203.120000, -155.730000)
		__FUNC_10165_(registerVal27, {})
		local function __FUNC_10366_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -380.990000, -302.000000)
			arg0:setTopBottom(false, false, 174.800000, 222.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal28:completeAnimation()
		registerVal2.OutsideLineLL:setLeftRight(false, false, -341.500000, -262.500000)
		registerVal2.OutsideLineLL:setTopBottom(false, false, 158.300000, 205.700000)
		__FUNC_10366_(registerVal28, {})
		local function __FUNC_10566_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 401.370000, 561.010000)
			arg0:setTopBottom(false, false, -267.400000, 267.400000)
			arg0:setScale(1.100000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal29:completeAnimation()
		registerVal2.OutsideTicksR:setLeftRight(false, false, 356.720000, 516.360000)
		registerVal2.OutsideTicksR:setTopBottom(false, false, -267.400000, 267.400000)
		registerVal2.OutsideTicksR:setScale(1.000000)
		__FUNC_10566_(registerVal29, {})
		local function __FUNC_10789_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -565.140000, -405.500000)
			arg0:setTopBottom(false, false, -270.000000, 264.800000)
			arg0:setScale(1.100000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal30:completeAnimation()
		registerVal2.OutsideTicksL:setLeftRight(false, false, -501.140000, -341.500000)
		registerVal2.OutsideTicksL:setTopBottom(false, false, -270.000000, 264.800000)
		registerVal2.OutsideTicksL:setScale(1.000000)
		__FUNC_10789_(registerVal30, {})
		registerVal31:completeAnimation()
		registerVal2.vhudhellstormCenterReticleWidget0:setLeftRight(false, false, -35.500000, 32.500000)
		registerVal2.vhudhellstormCenterReticleWidget0:setTopBottom(false, false, -34.500000, 33.500000)
		registerVal2.clipFinished(registerVal31, {})
		local function __FUNC_109AD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -33.500000, 35.500000)
			arg0:setTopBottom(false, false, 295.600000, 312.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal32:completeAnimation()
		registerVal2.ArrowsBlurBottom:setLeftRight(false, false, -33.500000, 35.500000)
		registerVal2.ArrowsBlurBottom:setTopBottom(false, false, 247.900000, 264.800000)
		__FUNC_109AD_(registerVal32, {})
		local function __FUNC_10BAE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -33.500000, 35.500000)
			arg0:setTopBottom(false, false, -292.200000, -275.300000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal33:completeAnimation()
		registerVal2.ArrowsBlurTop:setLeftRight(false, false, -33.500000, 35.500000)
		registerVal2.ArrowsBlurTop:setTopBottom(false, false, -267.400000, -250.500000)
		__FUNC_10BAE_(registerVal33, {})
		local function __FUNC_10DAE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 412.190000, 481.190000)
			arg0:setTopBottom(false, false, -8.450000, 8.450000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal35:completeAnimation()
		registerVal2.ArrowsBlurTop0:setLeftRight(false, false, 237.930000, 306.930000)
		registerVal2.ArrowsBlurTop0:setTopBottom(false, false, -7.950000, 8.950000)
		__FUNC_10DAE_(registerVal35, {})
		local function __FUNC_10FAE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -478.500000, -409.500000)
			arg0:setTopBottom(false, false, -8.950000, 7.950000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal36:completeAnimation()
		registerVal2.Image0:setLeftRight(false, false, -309.930000, -240.930000)
		registerVal2.Image0:setTopBottom(false, false, -8.950000, 7.950000)
		__FUNC_10FAE_(registerVal36, {})
	end

	registerVal42.MediumAltitude = __FUNC_BE7A_
	registerVal41.HighAltitude = registerVal42
	registerVal2.clipsPerState = registerVal41
	local registerVal43 = {}
	local registerVal44 = {}
	registerVal44.stateName = "LowAltitude"
	local function __FUNC_111AE_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueGreaterThanOrEqualTo(arg2, arg1, "ammo", 1.000000)
		if registerVal3 then
			registerVal3 = IsSelfModelValueLessThanOrEqualTo(arg2, arg1, "altitude", 5000.000000)
		end
		return registerVal3
	end

	registerVal44.condition = __FUNC_111AE_
	local registerVal45 = {}
	registerVal45.stateName = "MediumAltitude"
	local function __FUNC_11297_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueGreaterThanOrEqualTo(arg2, arg1, "ammo", 1.000000)
		if registerVal3 then
			registerVal3 = IsSelfModelValueLessThanOrEqualTo(arg2, arg1, "altitude", 9000.000000)
		end
		return registerVal3
	end

	registerVal45.condition = __FUNC_11297_
	local registerVal46 = {}
	registerVal46.stateName = "HighAltitude"
	local function __FUNC_1137F_(arg0, arg2, arg3)
		return IsSelfModelValueGreaterThanOrEqualTo(arg2, arg1, "ammo", 1.000000)
	end

	registerVal46.condition = __FUNC_1137F_
	registerVal43 = {registerVal44, registerVal45, registerVal46}
	registerVal2:mergeStateConditions(registerVal43)
	local function __FUNC_11405_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "ammo"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "ammo", true, __FUNC_11405_)
	local function __FUNC_1151E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "altitude"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "altitude", true, __FUNC_1151E_)
	local function __FUNC_1163A_(arg0)
		arg0.vhudhellstormCenterReticleWidget0:close()
		arg0.vhudhellstormtimebar:close()
		arg0.vhudCenterReticleCircleWidget:close()
		arg0.vhudhellstormSpeedWidget:close()
		arg0.vhudhellstormAltWidget0:close()
		arg0.vhudhellstormWeaponModeWidget0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1163A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

