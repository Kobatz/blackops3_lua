-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.Ground.VehicleGround_CenterInnerRingElement")
require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_FrameBottomRight")
require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_FrameBottomLeft")
require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_FrameTopCenter")
require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_FrameBottomCenter")
require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_FrameTopLeft")
require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_FrameTopRightxml")
require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_OutsideHashRing")
require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_HashRotateRight")
require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_GridDotsHostR")
require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_OutsideLine")
require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_LockOnNotification")
require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_ReticleLineHostLL")
require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_ReticleLineHostLR")
require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_ReticleLineHostUL")
require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_ReticleLineHostUR")
require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_ModLeft")
require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_StatusWidgetLeft")
require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_StatusWidgetGunnerRight")
require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_StatusWidgetBottom")
require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_Timebar")
require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_Seating")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_ms_ReticleGunner = registerVal1
function CoD.vhud_ms_ReticleGunner.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_ms_ReticleGunner)
	registerVal2.id = "vhud_ms_ReticleGunner"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.550000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_textureoverlaygrid"))
	registerVal2:addElement(registerVal3)
	registerVal2.TextureOverlayGrid = registerVal3
	local registerVal4 = CoD.VehicleGround_CenterInnerRingElement.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -268.000000, -211.000000)
	registerVal4:setTopBottom(false, false, -187.000000, -118.000000)
	registerVal4:setAlpha(0.700000)
	registerVal2:addElement(registerVal4)
	registerVal2.RingElement0 = registerVal4
	local registerVal5 = CoD.VehicleGround_CenterInnerRingElement.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, 211.000000, 268.000000)
	registerVal5:setTopBottom(false, false, -187.000000, -118.000000)
	registerVal5:setAlpha(0.700000)
	registerVal5:setYRot(-180.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.RingElement1 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, 105.000000, 342.380000)
	registerVal6:setTopBottom(false, false, -257.120000, 265.120000)
	registerVal6:setAlpha(0.300000)
	registerVal6:setZoom(50.000000)
	registerVal6:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_rightboldlight"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.msBoldLightRight = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -341.000000, -103.620000)
	registerVal7:setTopBottom(false, false, -257.120000, 265.120000)
	registerVal7:setAlpha(0.300000)
	registerVal7:setZRot(-177.000000)
	registerVal7:setZoom(50.000000)
	registerVal7:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_rightboldlight"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.msBoldLightLeft = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -8.000000, 14.000000)
	registerVal8:setTopBottom(false, false, 176.390000, 215.500000)
	registerVal8:setRGB(0.740000, 0.940000, 0.990000)
	registerVal8:setAlpha(0.300000)
	registerVal8:setZRot(180.000000)
	registerVal8:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_arrowdouble"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.msDoubleArrowsLower = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, -9.750000, 14.750000)
	registerVal9:setTopBottom(false, false, -224.440000, -199.940000)
	registerVal9:setRGB(0.740000, 0.940000, 0.990000)
	registerVal9:setAlpha(0.300000)
	registerVal9:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_arrowsingle"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.msDoubleArrowsUpper = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, false, -211.250000, 217.250000)
	registerVal10:setTopBottom(false, false, -217.000000, 211.500000)
	registerVal10:setAlpha(0.200000)
	registerVal10:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_centerinnerring"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.msCenterInnerRing = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, false, -5.000000, 8.000000)
	registerVal11:setTopBottom(false, false, -7.000000, 6.000000)
	registerVal11:setYRot(180.000000)
	registerVal11:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_centerpoint"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.msCenterPoint = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, false, -640.000000, -640.000000)
	registerVal12:setTopBottom(false, false, -360.000000, -360.000000)
	registerVal12:setRGB(0.740000, 0.940000, 0.990000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_rightmiddots"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.msMidDotsR = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(false, false, -640.000000, -640.000000)
	registerVal13:setTopBottom(false, false, -360.000000, -360.000000)
	registerVal13:setRGB(0.740000, 0.940000, 0.990000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setZRot(180.000000)
	registerVal13:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_rightmiddots"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.msMidDotsL = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(false, false, 318.130000, 395.250000)
	registerVal14:setTopBottom(false, false, -39.060000, 38.060000)
	registerVal14:setAlpha(0.200000)
	registerVal14:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_outerarrowblur"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.msOutsideArrowBlurR = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(false, false, -395.200000, -318.080000)
	registerVal15:setTopBottom(false, false, -39.060000, 38.060000)
	registerVal15:setAlpha(0.200000)
	registerVal15:setYRot(180.000000)
	registerVal15:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_outerarrowblur"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.msOutsideArrowBlurL = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(false, false, 350.070000, 383.410000)
	registerVal16:setTopBottom(false, false, -26.000000, 24.000000)
	registerVal16:setRGB(0.740000, 0.940000, 0.990000)
	registerVal16:setAlpha(0.200000)
	registerVal16:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_outerarrow"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal16)
	registerVal2.msOutsideArrowR = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(false, false, -385.980000, -352.640000)
	registerVal17:setTopBottom(false, false, -29.000000, 21.000000)
	registerVal17:setRGB(0.740000, 0.940000, 0.990000)
	registerVal17:setAlpha(0.200000)
	registerVal17:setZRot(180.000000)
	registerVal17:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_outerarrow"))
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal17)
	registerVal2.msOutsideArrowL = registerVal17
	local registerVal18 = CoD.vhud_ms_FrameBottomRight.new(arg0, arg1)
	registerVal18:setLeftRight(false, true, -427.210000, 53.790000)
	registerVal18:setTopBottom(false, true, -140.500000, 4.500000)
	registerVal2:addElement(registerVal18)
	registerVal2.vhudmsFrameBottomRight = registerVal18
	local registerVal19 = CoD.vhud_ms_FrameBottomLeft.new(arg0, arg1)
	registerVal19:setLeftRight(true, false, -41.680000, 439.320000)
	registerVal19:setTopBottom(false, true, -140.500000, 4.500000)
	registerVal2:addElement(registerVal19)
	registerVal2.vhudmsFrameBottomLeft0 = registerVal19
	local registerVal20 = CoD.vhud_ms_FrameTopCenter.new(arg0, arg1)
	registerVal20:setLeftRight(false, false, -250.030000, 269.030000)
	registerVal20:setTopBottom(true, false, 75.120000, 139.000000)
	registerVal2:addElement(registerVal20)
	registerVal2.vhudmsFrameTopCenter = registerVal20
	local registerVal21 = CoD.vhud_ms_FrameBottomCenter.new(arg0, arg1)
	registerVal21:setLeftRight(false, false, -246.500000, 272.500000)
	registerVal21:setTopBottom(true, false, 581.500000, 645.500000)
	registerVal2:addElement(registerVal21)
	registerVal2.vhudmsFrameBottomCenter = registerVal21
	local registerVal22 = CoD.vhud_ms_FrameTopLeft.new(arg0, arg1)
	registerVal22:setLeftRight(true, false, -41.680000, 439.110000)
	registerVal22:setTopBottom(true, false, -2.000000, 143.000000)
	registerVal2:addElement(registerVal22)
	registerVal2.vhudmsFrameTopLeft0 = registerVal22
	local registerVal23 = CoD.vhud_ms_FrameTopRightxml.new(arg0, arg1)
	registerVal23:setLeftRight(false, true, -427.210000, 53.580000)
	registerVal23:setTopBottom(true, false, -2.000000, 143.000000)
	registerVal2:addElement(registerVal23)
	registerVal2.vhudmsFrameTopRight = registerVal23
	local registerVal24 = CoD.vhud_ms_OutsideHashRing.new(arg0, arg1)
	registerVal24:setLeftRight(false, false, -475.330000, -324.000000)
	registerVal24:setTopBottom(false, false, -209.600000, 220.500000)
	registerVal24:setZRot(-180.000000)
	registerVal2:addElement(registerVal24)
	registerVal2.vhudmsOutsideHashRing0 = registerVal24
	local registerVal25 = CoD.vhud_ms_HashRotateRight.new(arg0, arg1)
	registerVal25:setLeftRight(false, false, 318.130000, 543.590000)
	registerVal25:setTopBottom(false, false, -241.280000, 249.280000)
	registerVal2:addElement(registerVal25)
	registerVal2.vhudmsHashRotateRight = registerVal25
	local registerVal26 = CoD.vhud_ms_GridDotsHostR.new(arg0, arg1)
	registerVal26:setLeftRight(false, false, 194.500000, 313.760000)
	registerVal26:setTopBottom(false, false, -61.130000, 58.130000)
	registerVal2:addElement(registerVal26)
	registerVal2.vhudmsGridDotsHostR = registerVal26
	local registerVal27 = CoD.vhud_ms_GridDotsHostR.new(arg0, arg1)
	registerVal27:setLeftRight(false, false, -305.130000, -185.870000)
	registerVal27:setTopBottom(false, false, -61.130000, 58.130000)
	registerVal27:setZRot(180.000000)
	registerVal2:addElement(registerVal27)
	registerVal2.vhudmsGridDotsHostR0 = registerVal27
	local registerVal28 = CoD.vhud_ms_OutsideLine.new(arg0, arg1)
	registerVal28:setLeftRight(false, true, -137.610000, -93.400000)
	registerVal28:setTopBottom(false, false, -9.000000, 5.740000)
	registerVal2:addElement(registerVal28)
	registerVal2.vhudmsOutsideLine = registerVal28
	local registerVal29 = CoD.vhud_ms_OutsideLine.new(arg0, arg1)
	registerVal29:setLeftRight(true, false, 101.390000, 145.610000)
	registerVal29:setTopBottom(false, false, -9.000000, 5.740000)
	registerVal2:addElement(registerVal29)
	registerVal2.vhudmsOutsideLine0 = registerVal29
	local registerVal30 = CoD.vhud_ms_LockOnNotification.new(arg0, arg1)
	registerVal30:setLeftRight(false, false, -17.000000, 23.180000)
	registerVal30:setTopBottom(true, false, 167.320000, 207.500000)
	local function __FUNC_3703_(arg0)
		registerVal30:setModel(arg0, arg1)
	end

	registerVal30:linkToElementModel(registerVal2, nil, false, __FUNC_3703_)
	registerVal2:addElement(registerVal30)
	registerVal2.vhudmsLockOnNotification = registerVal30
	local registerVal31 = CoD.vhud_ms_ReticleLineHostLL.new(arg0, arg1)
	registerVal31:setLeftRight(false, false, -341.300000, -185.870000)
	registerVal31:setTopBottom(false, false, 111.550000, 168.810000)
	registerVal31:setZoom(20.000000)
	registerVal31.Image0:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_reticleclient"))
	registerVal31.msReticleHostLowerL:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_reticleclient"))
	registerVal2:addElement(registerVal31)
	registerVal2.vhudmsReticleLineHostLL = registerVal31
	local registerVal32 = CoD.vhud_ms_ReticleLineHostLR.new(arg0, arg1)
	registerVal32:setLeftRight(false, false, 176.420000, 331.850000)
	registerVal32:setTopBottom(false, false, 111.550000, 168.810000)
	registerVal32:setZoom(20.000000)
	registerVal32.Host:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_reticleclient"))
	registerVal32.msReticleHostLowerR:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_reticleclient"))
	registerVal2:addElement(registerVal32)
	registerVal2.vhudmsReticleLineHostLR = registerVal32
	local registerVal33 = CoD.vhud_ms_ReticleLineHostUL.new(arg0, arg1)
	registerVal33:setLeftRight(false, false, -336.210000, -180.790000)
	registerVal33:setTopBottom(false, false, -173.140000, -115.880000)
	registerVal33:setZoom(20.000000)
	registerVal33.Image0:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_reticleclient"))
	registerVal33.msReticleHostUpperL:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_reticleclient"))
	registerVal2:addElement(registerVal33)
	registerVal2.vhudmsReticleLineHostUL = registerVal33
	local registerVal34 = CoD.vhud_ms_ReticleLineHostUR.new(arg0, arg1)
	registerVal34:setLeftRight(false, false, 176.420000, 331.850000)
	registerVal34:setTopBottom(false, false, -175.260000, -118.000000)
	registerVal34:setZoom(20.000000)
	registerVal34.Image0:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_reticleclient"))
	registerVal34.msReticleHostUpperR:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_reticleclient"))
	registerVal2:addElement(registerVal34)
	registerVal2.vhudmsReticleLineHostUR = registerVal34
	local registerVal35 = CoD.vhud_ms_ModLeft.new(arg0, arg1)
	registerVal35:setLeftRight(true, false, 100.000000, 744.000000)
	registerVal35:setTopBottom(true, false, 30.320000, 106.320000)
	registerVal35:setRGB(0.740000, 0.940000, 0.990000)
	registerVal35:setXRot(-54.000000)
	registerVal35:setYRot(50.000000)
	registerVal35:setZRot(6.000000)
	registerVal35:setZoom(-80.000000)
	registerVal2:addElement(registerVal35)
	registerVal2.vhudmsModLeft = registerVal35
	local registerVal36 = CoD.vhud_ms_StatusWidgetLeft.new(arg0, arg1)
	registerVal36:setLeftRight(true, false, 153.210000, 240.210000)
	registerVal36:setTopBottom(false, false, -20.200000, 21.450000)
	registerVal36:setAlpha(0.900000)
	registerVal36:setYRot(50.000000)
	local function __FUNC_3752_(arg0)
		registerVal36:setModel(arg0, arg1)
	end

	registerVal36:linkToElementModel(registerVal2, nil, false, __FUNC_3752_)
	registerVal2:addElement(registerVal36)
	registerVal2.vhudmsStatusWidgetLeft = registerVal36
	local registerVal37 = CoD.vhud_ms_StatusWidgetGunnerRight.new(arg0, arg1)
	registerVal37:setLeftRight(false, true, -234.750000, -151.750000)
	registerVal37:setTopBottom(false, false, -17.630000, 144.370000)
	registerVal37:setAlpha(0.900000)
	registerVal37:setYRot(-50.000000)
	local function __FUNC_37A2_(arg0)
		registerVal37:setModel(arg0, arg1)
	end

	registerVal37:linkToElementModel(registerVal2, nil, false, __FUNC_37A2_)
	registerVal2:addElement(registerVal37)
	registerVal2.vhudmsStatusWidgetGunnerRight = registerVal37
	local registerVal38 = LUI.UIImage.new()
	registerVal38:setLeftRight(false, false, 14.000000, 38.000000)
	registerVal38:setTopBottom(false, false, -36.060000, -12.060000)
	registerVal38:setAlpha(0.400000)
	registerVal38:setZRot(180.000000)
	registerVal38:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_centerhairlineclient"))
	registerVal38:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal38)
	registerVal2.CenterHairUR = registerVal38
	local registerVal39 = LUI.UIImage.new()
	registerVal39:setLeftRight(false, false, -33.750000, -9.750000)
	registerVal39:setTopBottom(false, false, -36.060000, -12.060000)
	registerVal39:setAlpha(0.400000)
	registerVal39:setYRot(-180.000000)
	registerVal39:setZRot(180.000000)
	registerVal39:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_centerhairlineclient"))
	registerVal39:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal39)
	registerVal2.CenterHairUL = registerVal39
	local registerVal40 = LUI.UIImage.new()
	registerVal40:setLeftRight(false, false, 14.000000, 38.000000)
	registerVal40:setTopBottom(false, false, 12.000000, 36.000000)
	registerVal40:setAlpha(0.400000)
	registerVal40:setXRot(-180.000000)
	registerVal40:setZRot(180.000000)
	registerVal40:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_centerhairlineclient"))
	registerVal40:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal40)
	registerVal2.CenterHairLR = registerVal40
	local registerVal41 = LUI.UIImage.new()
	registerVal41:setLeftRight(false, false, -33.750000, -9.750000)
	registerVal41:setTopBottom(false, false, 12.180000, 36.180000)
	registerVal41:setAlpha(0.400000)
	registerVal41:setXRot(-180.000000)
	registerVal41:setYRot(-180.000000)
	registerVal41:setZRot(180.000000)
	registerVal41:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_centerhairlineclient"))
	registerVal41:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal41)
	registerVal2.CenterHairLL = registerVal41
	local registerVal42 = CoD.vhud_ms_StatusWidgetBottom.new(arg0, arg1)
	registerVal42:setLeftRight(false, false, -67.000000, 72.250000)
	registerVal42:setTopBottom(false, false, 155.810000, 185.810000)
	registerVal42:setAlpha(0.700000)
	local function __FUNC_37F2_(arg0)
		registerVal42:setModel(arg0, arg1)
	end

	registerVal42:linkToElementModel(registerVal2, nil, false, __FUNC_37F2_)
	registerVal2:addElement(registerVal42)
	registerVal2.vhudmsStatusWidgetBottom = registerVal42
	local registerVal43 = CoD.vhud_ms_Timebar.new(arg0, arg1)
	registerVal43:setLeftRight(false, true, -297.620000, -64.000000)
	registerVal43:setTopBottom(true, false, 81.000000, 89.630000)
	registerVal43:setAlpha(0.900000)
	registerVal43:setYRot(-20.000000)
	local function __FUNC_3842_(arg0)
		registerVal43:setModel(arg0, arg1)
	end

	registerVal43:linkToElementModel(registerVal2, nil, false, __FUNC_3842_)
	registerVal2:addElement(registerVal43)
	registerVal2.vhudmsTimebar0 = registerVal43
	local registerVal44 = CoD.vhud_ms_Seating.new(arg0, arg1)
	registerVal44:setLeftRight(false, true, -238.750000, -137.750000)
	registerVal44:setTopBottom(true, false, 92.320000, 198.320000)
	registerVal44:setRGB(0.740000, 0.940000, 0.990000)
	registerVal44:setAlpha(0.900000)
	local function __FUNC_3892_(arg0)
		registerVal44:setModel(arg0, arg1)
	end

	registerVal44:linkToElementModel(registerVal2, nil, false, __FUNC_3892_)
	registerVal2:addElement(registerVal44)
	registerVal2["vhudmsSeating0"] = registerVal44
	local registerVal46 = {}
	local registerVal48 = {}
	local function __FUNC_38E2_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal48["DefaultClip"] = __FUNC_38E2_
	local function __FUNC_3942_()
		registerVal2:setupElementClipCounter(40.000000)
		local function __FUNC_55AE_(arg0, arg1)
			local function __FUNC_5704_(arg0, arg1)
				local function __FUNC_5911_(arg0, arg1)
					local function __FUNC_5A8B_(arg0, arg1)
						local function __FUNC_5BE0_(arg0, arg1)
							local function __FUNC_5D5B_(arg0, arg1)
								local function __FUNC_5ED3_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setLeftRight(false, false, -268.000000, -211.000000)
									arg0:setTopBottom(false, false, -187.000000, -118.000000)
									arg0:setAlpha(0.700000)
									arg0:setZoom(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_5ED3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5ED3_)
							end

							if arg1.interrupted then
								__FUNC_5D5B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.500000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5D5B_)
						end

						if arg1.interrupted then
							__FUNC_5BE0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5BE0_)
					end

					if arg1.interrupted then
						__FUNC_5A8B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5A8B_)
				end

				if arg1.interrupted then
					__FUNC_5911_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 580.000000, false, true, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -268.000000, -211.000000)
				arg0:setTopBottom(false, false, -187.000000, -118.000000)
				arg0:setAlpha(1.000000)
				arg0:setZoom(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5911_)
			end

			if arg1.interrupted then
				__FUNC_5704_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5704_)
		end

		registerVal4:completeAnimation()
		registerVal2.RingElement0:setLeftRight(false, false, -200.000000, -143.000000)
		registerVal2.RingElement0:setTopBottom(false, false, -138.000000, -69.000000)
		registerVal2.RingElement0:setAlpha(0.000000)
		registerVal2.RingElement0:setZoom(-146.000000)
		__FUNC_55AE_(registerVal4, {})
		local function __FUNC_6117_(arg0, arg1)
			local function __FUNC_626C_(arg0, arg1)
				local function __FUNC_6479_(arg0, arg1)
					local function __FUNC_65F3_(arg0, arg1)
						local function __FUNC_6748_(arg0, arg1)
							local function __FUNC_68C3_(arg0, arg1)
								local function __FUNC_6A3B_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setLeftRight(false, false, 211.000000, 268.000000)
									arg0:setTopBottom(false, false, -187.000000, -118.000000)
									arg0:setAlpha(0.700000)
									arg0:setZoom(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_6A3B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6A3B_)
							end

							if arg1.interrupted then
								__FUNC_68C3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.500000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_68C3_)
						end

						if arg1.interrupted then
							__FUNC_6748_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6748_)
					end

					if arg1.interrupted then
						__FUNC_65F3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_65F3_)
				end

				if arg1.interrupted then
					__FUNC_6479_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 580.000000, false, true, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, 211.000000, 268.000000)
				arg0:setTopBottom(false, false, -187.000000, -118.000000)
				arg0:setAlpha(1.000000)
				arg0:setZoom(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6479_)
			end

			if arg1.interrupted then
				__FUNC_626C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_626C_)
		end

		registerVal5:completeAnimation()
		registerVal2.RingElement1:setLeftRight(false, false, 128.000000, 185.000000)
		registerVal2.RingElement1:setTopBottom(false, false, -138.000000, -69.000000)
		registerVal2.RingElement1:setAlpha(0.000000)
		registerVal2.RingElement1:setZoom(-186.000000)
		__FUNC_6117_(registerVal5, {})
		local function __FUNC_6C7F_(arg0, arg1)
			local function __FUNC_6DD4_(arg0, arg1)
				local function __FUNC_6F4F_(arg0, arg1)
					local function __FUNC_70FF_(arg0, arg1)
						local function __FUNC_72AF_(arg0, arg1)
							local function __FUNC_745F_(arg0, arg1)
								local function __FUNC_760D_(arg0, arg1)
									local function __FUNC_7787_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setLeftRight(false, false, 105.000000, 342.380000)
										arg0:setTopBottom(false, false, -257.120000, 265.120000)
										arg0:setAlpha(0.300000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_7787_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7787_)
								end

								if arg1.interrupted then
									__FUNC_760D_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 439.000000, true, false, CoD.TweenType.Back)
								arg0:setLeftRight(false, false, 105.000000, 342.380000)
								arg0:setAlpha(0.300000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_760D_)
							end

							if arg1.interrupted then
								__FUNC_745F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(false, false, -73.140000, 164.250000)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_745F_)
						end

						if arg1.interrupted then
							__FUNC_72AF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(false, false, 206.820000, 444.200000)
						arg0:setAlpha(0.300000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_72AF_)
					end

					if arg1.interrupted then
						__FUNC_70FF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, false, 232.020000, 469.400000)
					arg0:setAlpha(0.290000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_70FF_)
				end

				if arg1.interrupted then
					__FUNC_6F4F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.030000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6F4F_)
			end

			if arg1.interrupted then
				__FUNC_6DD4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 879.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6DD4_)
		end

		registerVal6:completeAnimation()
		registerVal2.msBoldLightRight:setLeftRight(false, false, 576.000000, 813.380000)
		registerVal2.msBoldLightRight:setTopBottom(false, false, -257.120000, 265.120000)
		registerVal2.msBoldLightRight:setAlpha(0.000000)
		__FUNC_6C7F_(registerVal6, {})
		local function __FUNC_79A9_(arg0, arg1)
			local function __FUNC_7B00_(arg0, arg1)
				local function __FUNC_7C7B_(arg0, arg1)
					local function __FUNC_7E2B_(arg0, arg1)
						local function __FUNC_7FDB_(arg0, arg1)
							local function __FUNC_818B_(arg0, arg1)
								local function __FUNC_8339_(arg0, arg1)
									local function __FUNC_84B3_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setLeftRight(false, false, -341.000000, -103.620000)
										arg0:setTopBottom(false, false, -257.120000, 265.120000)
										arg0:setAlpha(0.300000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_84B3_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_84B3_)
								end

								if arg1.interrupted then
									__FUNC_8339_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 439.000000, true, false, CoD.TweenType.Back)
								arg0:setLeftRight(false, false, -341.000000, -103.620000)
								arg0:setAlpha(0.300000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8339_)
							end

							if arg1.interrupted then
								__FUNC_818B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(false, false, -162.340000, 75.040000)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_818B_)
						end

						if arg1.interrupted then
							__FUNC_7FDB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(false, false, -443.110000, -205.730000)
						arg0:setAlpha(0.300000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7FDB_)
					end

					if arg1.interrupted then
						__FUNC_7E2B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, false, -468.390000, -231.010000)
					arg0:setAlpha(0.290000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7E2B_)
				end

				if arg1.interrupted then
					__FUNC_7C7B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.030000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7C7B_)
			end

			if arg1.interrupted then
				__FUNC_7B00_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 879.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7B00_)
		end

		registerVal7:completeAnimation()
		registerVal2.msBoldLightLeft:setLeftRight(false, false, -813.380000, -576.000000)
		registerVal2.msBoldLightLeft:setTopBottom(false, false, -257.120000, 265.120000)
		registerVal2.msBoldLightLeft:setAlpha(0.000000)
		__FUNC_79A9_(registerVal7, {})
		local function __FUNC_86D5_(arg0, arg1)
			local function __FUNC_882C_(arg0, arg1)
				local function __FUNC_89A7_(arg0, arg1)
					local function __FUNC_8B57_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 639.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, -8.000000, 14.000000)
						arg0:setTopBottom(false, false, 176.390000, 215.500000)
						arg0:setAlpha(0.300000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_8B57_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(false, false, 62.080000, 101.190000)
					arg0:setAlpha(0.300000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8B57_)
				end

				if arg1.interrupted then
					__FUNC_89A7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.010000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_89A7_)
			end

			if arg1.interrupted then
				__FUNC_882C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 879.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_882C_)
		end

		registerVal8:completeAnimation()
		registerVal2.msDoubleArrowsLower:setLeftRight(false, false, -8.000000, 14.000000)
		registerVal2.msDoubleArrowsLower:setTopBottom(false, false, 21.000000, 60.110000)
		registerVal2.msDoubleArrowsLower:setAlpha(0.000000)
		__FUNC_86D5_(registerVal8, {})
		local function __FUNC_8D79_(arg0, arg1)
			local function __FUNC_8ED0_(arg0, arg1)
				local function __FUNC_904B_(arg0, arg1)
					local function __FUNC_91FB_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 639.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, -8.000000, 14.000000)
						arg0:setTopBottom(false, false, -221.000000, -198.890000)
						arg0:setAlpha(0.300000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_91FB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(false, false, -103.430000, -81.310000)
					arg0:setAlpha(0.300000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_91FB_)
				end

				if arg1.interrupted then
					__FUNC_904B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.010000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_904B_)
			end

			if arg1.interrupted then
				__FUNC_8ED0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 879.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8ED0_)
		end

		registerVal9:completeAnimation()
		registerVal2.msDoubleArrowsUpper:setLeftRight(false, false, -8.000000, 14.000000)
		registerVal2.msDoubleArrowsUpper:setTopBottom(false, false, -61.180000, -39.060000)
		registerVal2.msDoubleArrowsUpper:setAlpha(0.000000)
		__FUNC_8D79_(registerVal9, {})
		local function __FUNC_941D_(arg0, arg1)
			local function __FUNC_9574_(arg0, arg1)
				local function __FUNC_9733_(arg0, arg1)
					local function __FUNC_98CD_(arg0, arg1)
						local function __FUNC_9AA0_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(false, false, -211.250000, 217.250000)
							arg0:setTopBottom(false, false, -217.000000, 211.500000)
							arg0:setAlpha(0.200000)
							arg0:setZRot(0.000000)
							arg0:setZoom(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_9AA0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 169.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(false, false, -211.250000, 217.250000)
						arg0:setZRot(13.130000)
						arg0:setZoom(120.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9AA0_)
					end

					if arg1.interrupted then
						__FUNC_98CD_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.200000)
					arg0:setZRot(45.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_98CD_)
				end

				if arg1.interrupted then
					__FUNC_9733_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.130000)
				arg0:setZRot(28.640000)
				arg0:setZoom(40.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9733_)
			end

			if arg1.interrupted then
				__FUNC_9574_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1120.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9574_)
		end

		registerVal10:completeAnimation()
		registerVal2.msCenterInnerRing:setLeftRight(false, false, -210.810000, 217.690000)
		registerVal2.msCenterInnerRing:setTopBottom(false, false, -217.000000, 211.500000)
		registerVal2.msCenterInnerRing:setAlpha(0.000000)
		registerVal2.msCenterInnerRing:setZRot(0.000000)
		registerVal2.msCenterInnerRing:setZoom(113.000000)
		__FUNC_941D_(registerVal10, {})
		local function __FUNC_9D04_(arg0, arg1)
			local function __FUNC_9E5C_(arg0, arg1)
				local function __FUNC_9FD7_(arg0, arg1)
					local function __FUNC_A14F_(arg0, arg1)
						local function __FUNC_A2C7_(arg0, arg1)
							local function __FUNC_A43F_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(false, false, -5.000000, 8.000000)
								arg0:setTopBottom(false, false, -7.000000, 6.000000)
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_A43F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A43F_)
						end

						if arg1.interrupted then
							__FUNC_A2C7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A2C7_)
					end

					if arg1.interrupted then
						__FUNC_A14F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A14F_)
				end

				if arg1.interrupted then
					__FUNC_9FD7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9FD7_)
			end

			if arg1.interrupted then
				__FUNC_9E5C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1700.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9E5C_)
		end

		registerVal11:completeAnimation()
		registerVal2.msCenterPoint:setLeftRight(false, false, -5.000000, 8.000000)
		registerVal2.msCenterPoint:setTopBottom(false, false, -7.000000, 6.000000)
		registerVal2.msCenterPoint:setAlpha(0.000000)
		__FUNC_9D04_(registerVal11, {})
		local function __FUNC_A661_(arg0, arg1)
			local function __FUNC_A7B8_(arg0, arg1)
				local function __FUNC_A933_(arg0, arg1)
					local function __FUNC_AAAB_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 419.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, 259.790000, 336.350000)
						arg0:setTopBottom(false, false, -200.260000, 205.500000)
						arg0:setAlpha(0.300000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_AAAB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AAAB_)
				end

				if arg1.interrupted then
					__FUNC_A933_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.300000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A933_)
			end

			if arg1.interrupted then
				__FUNC_A7B8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 879.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A7B8_)
		end

		registerVal12:completeAnimation()
		registerVal2.msMidDotsR:setLeftRight(false, false, 259.790000, 336.350000)
		registerVal2.msMidDotsR:setTopBottom(false, false, -200.260000, 205.500000)
		registerVal2.msMidDotsR:setAlpha(0.000000)
		__FUNC_A661_(registerVal12, {})
		local function __FUNC_ACCD_(arg0, arg1)
			local function __FUNC_AE24_(arg0, arg1)
				local function __FUNC_AF9F_(arg0, arg1)
					local function __FUNC_B117_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 419.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, -335.060000, -258.500000)
						arg0:setTopBottom(false, false, -208.260000, 197.500000)
						arg0:setAlpha(0.300000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_B117_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B117_)
				end

				if arg1.interrupted then
					__FUNC_AF9F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.300000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AF9F_)
			end

			if arg1.interrupted then
				__FUNC_AE24_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 879.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AE24_)
		end

		registerVal13:completeAnimation()
		registerVal2.msMidDotsL:setLeftRight(false, false, -335.060000, -258.500000)
		registerVal2.msMidDotsL:setTopBottom(false, false, -208.260000, 197.500000)
		registerVal2.msMidDotsL:setAlpha(0.000000)
		__FUNC_ACCD_(registerVal13, {})
		local function __FUNC_B339_(arg0, arg1)
			local function __FUNC_B490_(arg0, arg1)
				local function __FUNC_B620_(arg0, arg1)
					local function __FUNC_B7D3_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 419.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, 318.130000, 395.250000)
						arg0:setTopBottom(false, false, -39.060000, 38.060000)
						arg0:setAlpha(0.200000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_B7D3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, false, 287.900000, 365.020000)
					arg0:setAlpha(0.200000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B7D3_)
				end

				if arg1.interrupted then
					__FUNC_B620_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, 272.070000, 349.190000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B620_)
			end

			if arg1.interrupted then
				__FUNC_B490_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B490_)
		end

		registerVal14:completeAnimation()
		registerVal2.msOutsideArrowBlurR:setLeftRight(false, false, 256.230000, 333.350000)
		registerVal2.msOutsideArrowBlurR:setTopBottom(false, false, -39.060000, 38.060000)
		registerVal2.msOutsideArrowBlurR:setAlpha(0.000000)
		__FUNC_B339_(registerVal14, {})
		local function __FUNC_B9F5_(arg0, arg1)
			local function __FUNC_BB4C_(arg0, arg1)
				local function __FUNC_BCDC_(arg0, arg1)
					local function __FUNC_BE6C_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 419.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, -395.200000, -318.080000)
						arg0:setTopBottom(false, false, -39.060000, 38.060000)
						arg0:setAlpha(0.200000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_BE6C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, false, -329.600000, -252.480000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BE6C_)
				end

				if arg1.interrupted then
					__FUNC_BCDC_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -295.230000, -218.110000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BCDC_)
			end

			if arg1.interrupted then
				__FUNC_BB4C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BB4C_)
		end

		registerVal15:completeAnimation()
		registerVal2.msOutsideArrowBlurL:setLeftRight(false, false, -260.870000, -183.750000)
		registerVal2.msOutsideArrowBlurL:setTopBottom(false, false, -39.060000, 38.060000)
		registerVal2.msOutsideArrowBlurL:setAlpha(0.000000)
		__FUNC_B9F5_(registerVal15, {})
		local function __FUNC_C091_(arg0, arg1)
			local function __FUNC_C1E8_(arg0, arg1)
				local function __FUNC_C378_(arg0, arg1)
					local function __FUNC_C52B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, 350.070000, 383.410000)
						arg0:setTopBottom(false, false, -26.000000, 24.000000)
						arg0:setAlpha(0.200000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_C52B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, false, 210.390000, 243.720000)
					arg0:setAlpha(0.200000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C52B_)
				end

				if arg1.interrupted then
					__FUNC_C378_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, 140.540000, 173.880000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C378_)
			end

			if arg1.interrupted then
				__FUNC_C1E8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C1E8_)
		end

		registerVal16:completeAnimation()
		registerVal2.msOutsideArrowR:setLeftRight(false, false, 77.050000, 110.380000)
		registerVal2.msOutsideArrowR:setTopBottom(false, false, -26.000000, 24.000000)
		registerVal2.msOutsideArrowR:setAlpha(0.000000)
		__FUNC_C091_(registerVal16, {})
		local function __FUNC_C74D_(arg0, arg1)
			local function __FUNC_C8A4_(arg0, arg1)
				local function __FUNC_CA34_(arg0, arg1)
					local function __FUNC_CBE7_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, -385.980000, -352.640000)
						arg0:setTopBottom(false, false, -29.000000, 21.000000)
						arg0:setAlpha(0.200000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_CBE7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, false, -243.950000, -210.620000)
					arg0:setAlpha(0.200000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CBE7_)
				end

				if arg1.interrupted then
					__FUNC_CA34_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -172.940000, -139.610000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CA34_)
			end

			if arg1.interrupted then
				__FUNC_C8A4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C8A4_)
		end

		registerVal17:completeAnimation()
		registerVal2.msOutsideArrowL:setLeftRight(false, false, -108.380000, -75.050000)
		registerVal2.msOutsideArrowL:setTopBottom(false, false, -29.000000, 21.000000)
		registerVal2.msOutsideArrowL:setAlpha(0.000000)
		__FUNC_C74D_(registerVal17, {})
		local function __FUNC_CE09_(arg0, arg1)
			local function __FUNC_CF60_(arg0, arg1)
				local function __FUNC_D0DB_(arg0, arg1)
					local function __FUNC_D2C3_(arg0, arg1)
						local function __FUNC_D486_(arg0, arg1)
							local function __FUNC_D5DC_(arg0, arg1)
								local function __FUNC_D757_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setLeftRight(false, true, -427.210000, 53.790000)
									arg0:setTopBottom(false, true, -140.500000, 4.500000)
									arg0:setAlpha(1.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_D757_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D757_)
							end

							if arg1.interrupted then
								__FUNC_D5DC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D5DC_)
						end

						if arg1.interrupted then
							__FUNC_D486_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 639.000000, true, false, CoD.TweenType.Back)
						arg0:setLeftRight(false, true, -427.210000, 53.790000)
						arg0:setTopBottom(false, true, -140.500000, 4.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D486_)
					end

					if arg1.interrupted then
						__FUNC_D2C3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, true, -438.790000, 42.210000)
					arg0:setTopBottom(false, true, -148.820000, -3.820000)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D2C3_)
				end

				if arg1.interrupted then
					__FUNC_D0DB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.080000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D0DB_)
			end

			if arg1.interrupted then
				__FUNC_CF60_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 879.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CF60_)
		end

		registerVal18:completeAnimation()
		registerVal2.vhudmsFrameBottomRight:setLeftRight(false, true, -480.790000, 0.210000)
		registerVal2.vhudmsFrameBottomRight:setTopBottom(false, true, -179.000000, -34.000000)
		registerVal2.vhudmsFrameBottomRight:setAlpha(0.000000)
		__FUNC_CE09_(registerVal18, {})
		local function __FUNC_D979_(arg0, arg1)
			local function __FUNC_DAD0_(arg0, arg1)
				local function __FUNC_DC4B_(arg0, arg1)
					local function __FUNC_DE33_(arg0, arg1)
						local function __FUNC_DFF6_(arg0, arg1)
							local function __FUNC_E14C_(arg0, arg1)
								local function __FUNC_E2C7_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setLeftRight(true, false, -41.680000, 439.320000)
									arg0:setTopBottom(false, true, -140.500000, 4.500000)
									arg0:setAlpha(1.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_E2C7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E2C7_)
							end

							if arg1.interrupted then
								__FUNC_E14C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E14C_)
						end

						if arg1.interrupted then
							__FUNC_DFF6_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 639.000000, true, false, CoD.TweenType.Back)
						arg0:setLeftRight(true, false, -41.680000, 439.320000)
						arg0:setTopBottom(false, true, -140.500000, 4.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DFF6_)
					end

					if arg1.interrupted then
						__FUNC_DE33_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, -32.710000, 448.290000)
					arg0:setTopBottom(false, true, -148.820000, -3.820000)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DE33_)
				end

				if arg1.interrupted then
					__FUNC_DC4B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.080000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DC4B_)
			end

			if arg1.interrupted then
				__FUNC_DAD0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 879.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DAD0_)
		end

		registerVal19:completeAnimation()
		registerVal2.vhudmsFrameBottomLeft0:setLeftRight(true, false, -0.170000, 480.830000)
		registerVal2.vhudmsFrameBottomLeft0:setTopBottom(false, true, -179.000000, -34.000000)
		registerVal2.vhudmsFrameBottomLeft0:setAlpha(0.000000)
		__FUNC_D979_(registerVal19, {})
		local function __FUNC_E4E9_(arg0, arg1)
			local function __FUNC_E640_(arg0, arg1)
				local function __FUNC_E808_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 639.000000, true, false, CoD.TweenType.Back)
					end
					arg0:setLeftRight(false, false, -248.500000, 270.560000)
					arg0:setTopBottom(true, false, 76.120000, 140.000000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_E808_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -248.510000, 270.560000)
				arg0:setTopBottom(true, false, 80.130000, 144.010000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E808_)
			end

			if arg1.interrupted then
				__FUNC_E640_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E640_)
		end

		registerVal20:completeAnimation()
		registerVal2.vhudmsFrameTopCenter:setLeftRight(false, false, -248.530000, 270.530000)
		registerVal2.vhudmsFrameTopCenter:setTopBottom(true, false, 94.670000, 158.560000)
		registerVal2.vhudmsFrameTopCenter:setAlpha(0.000000)
		__FUNC_E4E9_(registerVal20, {})
		local function __FUNC_EA2B_(arg0, arg1)
			local function __FUNC_EB80_(arg0, arg1)
				local function __FUNC_ED10_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 639.000000, true, false, CoD.TweenType.Back)
					end
					arg0:setLeftRight(false, false, -245.500000, 273.500000)
					arg0:setTopBottom(true, false, 586.500000, 650.500000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_ED10_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, 581.010000, 645.010000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ED10_)
			end

			if arg1.interrupted then
				__FUNC_EB80_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EB80_)
		end

		registerVal21:completeAnimation()
		registerVal2.vhudmsFrameBottomCenter:setLeftRight(false, false, -245.500000, 273.500000)
		registerVal2.vhudmsFrameBottomCenter:setTopBottom(true, false, 561.120000, 625.120000)
		registerVal2.vhudmsFrameBottomCenter:setAlpha(0.000000)
		__FUNC_EA2B_(registerVal21, {})
		local function __FUNC_EF33_(arg0, arg1)
			local function __FUNC_F088_(arg0, arg1)
				local function __FUNC_F203_(arg0, arg1)
					local function __FUNC_F3EB_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 639.000000, true, false, CoD.TweenType.Back)
						end
						arg0:setLeftRight(true, false, -42.790000, 438.000000)
						arg0:setTopBottom(true, false, -2.000000, 143.000000)
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_F3EB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, -33.580000, 447.210000)
					arg0:setTopBottom(true, false, 5.000000, 150.000000)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F3EB_)
				end

				if arg1.interrupted then
					__FUNC_F203_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.080000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F203_)
			end

			if arg1.interrupted then
				__FUNC_F088_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 879.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F088_)
		end

		registerVal22:completeAnimation()
		registerVal2.vhudmsFrameTopLeft0:setLeftRight(true, false, -0.170000, 480.620000)
		registerVal2.vhudmsFrameTopLeft0:setTopBottom(true, false, 30.380000, 175.380000)
		registerVal2.vhudmsFrameTopLeft0:setAlpha(0.000000)
		__FUNC_EF33_(registerVal22, {})
		local function __FUNC_F60B_(arg0, arg1)
			local function __FUNC_F760_(arg0, arg1)
				local function __FUNC_F8DB_(arg0, arg1)
					local function __FUNC_FAC3_(arg0, arg1)
						local function __FUNC_FC86_(arg0, arg1)
							local function __FUNC_FE37_(arg0, arg1)
								local function __FUNC_FFE7_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 249.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setLeftRight(false, true, -427.210000, 53.580000)
									arg0:setTopBottom(true, false, -2.000000, 143.000000)
									arg0:setAlpha(1.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_FFE7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(false, true, -427.050000, 53.740000)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FFE7_)
							end

							if arg1.interrupted then
								__FUNC_FE37_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(false, true, -427.030000, 53.760000)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FE37_)
						end

						if arg1.interrupted then
							__FUNC_FC86_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 639.000000, true, false, CoD.TweenType.Back)
						arg0:setLeftRight(false, true, -427.000000, 53.790000)
						arg0:setTopBottom(true, false, -2.000000, 143.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FC86_)
					end

					if arg1.interrupted then
						__FUNC_FAC3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, true, -438.630000, 42.160000)
					arg0:setTopBottom(true, false, 5.000000, 150.000000)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FAC3_)
				end

				if arg1.interrupted then
					__FUNC_F8DB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.080000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F8DB_)
			end

			if arg1.interrupted then
				__FUNC_F760_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 879.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F760_)
		end

		registerVal23:completeAnimation()
		registerVal2.vhudmsFrameTopRight:setLeftRight(false, true, -480.790000, 0.000000)
		registerVal2.vhudmsFrameTopRight:setTopBottom(true, false, 30.380000, 175.380000)
		registerVal2.vhudmsFrameTopRight:setAlpha(0.000000)
		__FUNC_F60B_(registerVal23, {})
		local function __FUNC_10209_(arg0, arg1)
			local function __FUNC_10360_(arg0, arg1)
				local function __FUNC_104DB_(arg0, arg1)
					local function __FUNC_106A0_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, -475.330000, -324.000000)
						arg0:setTopBottom(false, false, -209.600000, 220.500000)
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_106A0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, false, -505.330000, -354.000000)
					arg0:setTopBottom(false, false, -209.770000, 220.330000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_106A0_)
				end

				if arg1.interrupted then
					__FUNC_104DB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_104DB_)
			end

			if arg1.interrupted then
				__FUNC_10360_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 889.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10360_)
		end

		registerVal24:completeAnimation()
		registerVal2.vhudmsOutsideHashRing0:setLeftRight(false, false, -475.330000, -324.000000)
		registerVal2.vhudmsOutsideHashRing0:setTopBottom(false, false, -209.600000, 220.500000)
		registerVal2.vhudmsOutsideHashRing0:setAlpha(0.000000)
		__FUNC_10209_(registerVal24, {})
		local function __FUNC_108C5_(arg0, arg1)
			local function __FUNC_10A1C_(arg0, arg1)
				local function __FUNC_10B97_(arg0, arg1)
					local function __FUNC_10D24_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, 313.930000, 539.390000)
						arg0:setTopBottom(false, false, -241.280000, 249.280000)
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_10D24_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, false, 350.540000, 576.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10D24_)
				end

				if arg1.interrupted then
					__FUNC_10B97_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10B97_)
			end

			if arg1.interrupted then
				__FUNC_10A1C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 889.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10A1C_)
		end

		registerVal25:completeAnimation()
		registerVal2.vhudmsHashRotateRight:setLeftRight(false, false, 318.130000, 543.590000)
		registerVal2.vhudmsHashRotateRight:setTopBottom(false, false, -241.280000, 249.280000)
		registerVal2.vhudmsHashRotateRight:setAlpha(0.000000)
		__FUNC_108C5_(registerVal25, {})
		local function __FUNC_10F49_(arg0, arg1)
			local function __FUNC_110A0_(arg0, arg1)
				local function __FUNC_11230_(arg0, arg1)
					local function __FUNC_113E3_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 460.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, 194.500000, 313.760000)
						arg0:setTopBottom(false, false, -61.130000, 58.130000)
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_113E3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 179.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, false, 179.520000, 298.780000)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_113E3_)
				end

				if arg1.interrupted then
					__FUNC_11230_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, 173.660000, 292.920000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11230_)
			end

			if arg1.interrupted then
				__FUNC_110A0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_110A0_)
		end

		registerVal26:completeAnimation()
		registerVal2.vhudmsGridDotsHostR:setLeftRight(false, false, 166.500000, 285.760000)
		registerVal2.vhudmsGridDotsHostR:setTopBottom(false, false, -61.130000, 58.130000)
		registerVal2.vhudmsGridDotsHostR:setAlpha(0.000000)
		__FUNC_10F49_(registerVal26, {})
		local function __FUNC_11605_(arg0, arg1)
			local function __FUNC_1175C_(arg0, arg1)
				local function __FUNC_118EC_(arg0, arg1)
					local function __FUNC_11A9F_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 460.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, -305.130000, -185.870000)
						arg0:setTopBottom(false, false, -61.130000, 58.130000)
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_11A9F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 179.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, false, -292.730000, -173.470000)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11A9F_)
				end

				if arg1.interrupted then
					__FUNC_118EC_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -287.870000, -168.610000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_118EC_)
			end

			if arg1.interrupted then
				__FUNC_1175C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1175C_)
		end

		registerVal27:completeAnimation()
		registerVal2.vhudmsGridDotsHostR0:setLeftRight(false, false, -281.940000, -162.680000)
		registerVal2.vhudmsGridDotsHostR0:setTopBottom(false, false, -61.130000, 58.130000)
		registerVal2.vhudmsGridDotsHostR0:setAlpha(0.000000)
		__FUNC_11605_(registerVal27, {})
		local function __FUNC_11CC1_(arg0, arg1)
			local function __FUNC_11E18_(arg0, arg1)
				local function __FUNC_11F93_(arg0, arg1)
					local function __FUNC_12143_(arg0, arg1)
						local function __FUNC_122F3_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 279.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(false, true, -137.610000, -93.400000)
							arg0:setTopBottom(false, false, -9.000000, 5.740000)
							arg0:setAlpha(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_122F3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(false, true, -176.350000, -132.130000)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_122F3_)
					end

					if arg1.interrupted then
						__FUNC_12143_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, true, -226.150000, -181.940000)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12143_)
				end

				if arg1.interrupted then
					__FUNC_11F93_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.080000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11F93_)
			end

			if arg1.interrupted then
				__FUNC_11E18_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 879.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11E18_)
		end

		registerVal28:completeAnimation()
		registerVal2.vhudmsOutsideLine:setLeftRight(false, true, -256.590000, -212.380000)
		registerVal2.vhudmsOutsideLine:setTopBottom(false, false, -9.000000, 5.740000)
		registerVal2.vhudmsOutsideLine:setAlpha(0.000000)
		__FUNC_11CC1_(registerVal28, {})
		local function __FUNC_12515_(arg0, arg1)
			local function __FUNC_1266C_(arg0, arg1)
				local function __FUNC_127E7_(arg0, arg1)
					local function __FUNC_12997_(arg0, arg1)
						local function __FUNC_12B47_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 279.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, false, 101.390000, 145.610000)
							arg0:setTopBottom(false, false, -9.000000, 5.740000)
							arg0:setAlpha(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_12B47_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 136.690000, 180.900000)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12B47_)
					end

					if arg1.interrupted then
						__FUNC_12997_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 182.080000, 226.290000)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12997_)
				end

				if arg1.interrupted then
					__FUNC_127E7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.080000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_127E7_)
			end

			if arg1.interrupted then
				__FUNC_1266C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 879.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1266C_)
		end

		registerVal29:completeAnimation()
		registerVal2.vhudmsOutsideLine0:setLeftRight(true, false, 209.810000, 254.020000)
		registerVal2.vhudmsOutsideLine0:setTopBottom(false, false, -9.000000, 5.740000)
		registerVal2.vhudmsOutsideLine0:setAlpha(0.000000)
		__FUNC_12515_(registerVal29, {})
		local function __FUNC_12D69_(arg0, arg1)
			local function __FUNC_12EC0_(arg0, arg1)
				local function __FUNC_13018_(arg0, arg1)
					local function __FUNC_13193_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, -17.000000, 23.180000)
						arg0:setTopBottom(true, false, 167.320000, 207.500000)
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_13193_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13193_)
				end

				if arg1.interrupted then
					__FUNC_13018_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 759.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13018_)
			end

			if arg1.interrupted then
				__FUNC_12EC0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1279.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12EC0_)
		end

		registerVal30:completeAnimation()
		registerVal2.vhudmsLockOnNotification:setLeftRight(false, false, -17.000000, 23.180000)
		registerVal2.vhudmsLockOnNotification:setTopBottom(true, false, 167.320000, 207.500000)
		registerVal2.vhudmsLockOnNotification:setAlpha(0.000000)
		__FUNC_12D69_(registerVal30, {})
		local function __FUNC_133B5_(arg0, arg1)
			local function __FUNC_1350C_(arg0, arg1)
				local function __FUNC_136F5_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -341.000000, -185.570000)
					arg0:setTopBottom(false, false, 111.740000, 169.000000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_136F5_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 480.000000, true, false, CoD.TweenType.Back)
				arg0:setLeftRight(false, false, -341.000000, -185.570000)
				arg0:setTopBottom(false, false, 111.740000, 169.000000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_136F5_)
			end

			if arg1.interrupted then
				__FUNC_1350C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1279.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1350C_)
		end

		registerVal31:completeAnimation()
		registerVal2.vhudmsReticleLineHostLL:setLeftRight(false, false, -366.240000, -210.810000)
		registerVal2.vhudmsReticleLineHostLL:setTopBottom(false, false, 118.310000, 175.570000)
		registerVal2.vhudmsReticleLineHostLL:setAlpha(0.000000)
		__FUNC_133B5_(registerVal31, {})
		local function __FUNC_13919_(arg0, arg1)
			local function __FUNC_13A70_(arg0, arg1)
				local function __FUNC_13C59_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, 176.420000, 331.850000)
					arg0:setTopBottom(false, false, 111.740000, 169.000000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_13C59_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 480.000000, true, false, CoD.TweenType.Back)
				arg0:setLeftRight(false, false, 176.420000, 331.850000)
				arg0:setTopBottom(false, false, 111.740000, 169.000000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13C59_)
			end

			if arg1.interrupted then
				__FUNC_13A70_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1279.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13A70_)
		end

		registerVal32:completeAnimation()
		registerVal2.vhudmsReticleLineHostLR:setLeftRight(false, false, 210.530000, 365.960000)
		registerVal2.vhudmsReticleLineHostLR:setTopBottom(false, false, 118.310000, 175.570000)
		registerVal2.vhudmsReticleLineHostLR:setAlpha(0.000000)
		__FUNC_13919_(registerVal32, {})
		local function __FUNC_13E7D_(arg0, arg1)
			local function __FUNC_13FD4_(arg0, arg1)
				local function __FUNC_141BD_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -336.210000, -180.790000)
					arg0:setTopBottom(false, false, -172.590000, -115.330000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_141BD_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 480.000000, true, false, CoD.TweenType.Back)
				arg0:setLeftRight(false, false, -336.210000, -180.790000)
				arg0:setTopBottom(false, false, -172.590000, -115.330000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_141BD_)
			end

			if arg1.interrupted then
				__FUNC_13FD4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1279.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13FD4_)
		end

		registerVal33:completeAnimation()
		registerVal2.vhudmsReticleLineHostUL:setLeftRight(false, false, -355.620000, -200.190000)
		registerVal2.vhudmsReticleLineHostUL:setTopBottom(false, false, -182.730000, -125.470000)
		registerVal2.vhudmsReticleLineHostUL:setAlpha(0.000000)
		__FUNC_13E7D_(registerVal33, {})
		local function __FUNC_143E1_(arg0, arg1)
			local function __FUNC_14538_(arg0, arg1)
				local function __FUNC_14721_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, 176.420000, 331.850000)
					arg0:setTopBottom(false, false, -175.260000, -118.000000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_14721_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 480.000000, true, false, CoD.TweenType.Back)
				arg0:setLeftRight(false, false, 176.420000, 331.850000)
				arg0:setTopBottom(false, false, -175.260000, -118.000000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14721_)
			end

			if arg1.interrupted then
				__FUNC_14538_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1279.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14538_)
		end

		registerVal34:completeAnimation()
		registerVal2.vhudmsReticleLineHostUR:setLeftRight(false, false, 212.150000, 367.580000)
		registerVal2.vhudmsReticleLineHostUR:setTopBottom(false, false, -178.890000, -121.630000)
		registerVal2.vhudmsReticleLineHostUR:setAlpha(0.000000)
		__FUNC_143E1_(registerVal34, {})
		local function __FUNC_14945_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 759.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 100.000000, 744.000000)
			arg0:setTopBottom(true, false, 41.000000, 117.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal35:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
		registerVal35:setLeftRight(true, false, 0.000000, 644.000000)
		registerVal35:setTopBottom(true, false, 41.000000, 117.000000)
		registerVal35:setAlpha(0.000000)
		registerVal35:registerEventHandler("transition_complete_keyframe", __FUNC_14945_)
		local function __FUNC_14B69_(arg0, arg1)
			local function __FUNC_14CC0_(arg0, arg1)
				local function __FUNC_14E3B_(arg0, arg1)
					local function __FUNC_14FB3_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.700000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_14FB3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 290.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14FB3_)
				end

				if arg1.interrupted then
					__FUNC_14E3B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.700000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14E3B_)
			end

			if arg1.interrupted then
				__FUNC_14CC0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1610.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14CC0_)
		end

		registerVal36:completeAnimation()
		registerVal2.vhudmsStatusWidgetLeft:setAlpha(0.000000)
		__FUNC_14B69_(registerVal36, {})
		local function __FUNC_15165_(arg0, arg1)
			local function __FUNC_152BC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.700000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_152BC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1610.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_152BC_)
		end

		registerVal37:completeAnimation()
		registerVal2.vhudmsStatusWidgetGunnerRight:setAlpha(0.000000)
		__FUNC_15165_(registerVal37, {})
		local function __FUNC_15471_(arg0, arg1)
			local function __FUNC_155C8_(arg0, arg1)
				local function __FUNC_15743_(arg0, arg1)
					local function __FUNC_158BB_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.400000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_158BB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.100000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_158BB_)
				end

				if arg1.interrupted then
					__FUNC_15743_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.400000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15743_)
			end

			if arg1.interrupted then
				__FUNC_155C8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1610.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_155C8_)
		end

		registerVal38:completeAnimation()
		registerVal2.CenterHairUR:setAlpha(0.000000)
		__FUNC_15471_(registerVal38, {})
		local function __FUNC_15A6D_(arg0, arg1)
			local function __FUNC_15BC4_(arg0, arg1)
				local function __FUNC_15D3F_(arg0, arg1)
					local function __FUNC_15EB7_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.400000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_15EB7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.100000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15EB7_)
				end

				if arg1.interrupted then
					__FUNC_15D3F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.400000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15D3F_)
			end

			if arg1.interrupted then
				__FUNC_15BC4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1610.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15BC4_)
		end

		registerVal39:completeAnimation()
		registerVal2.CenterHairUL:setAlpha(0.000000)
		__FUNC_15A6D_(registerVal39, {})
		local function __FUNC_16069_(arg0, arg1)
			local function __FUNC_161C0_(arg0, arg1)
				local function __FUNC_1633B_(arg0, arg1)
					local function __FUNC_164B3_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.400000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_164B3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.100000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_164B3_)
				end

				if arg1.interrupted then
					__FUNC_1633B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.400000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1633B_)
			end

			if arg1.interrupted then
				__FUNC_161C0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1610.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_161C0_)
		end

		registerVal40:completeAnimation()
		registerVal2.CenterHairLR:setAlpha(0.000000)
		__FUNC_16069_(registerVal40, {})
		local function __FUNC_16665_(arg0, arg1)
			local function __FUNC_167BC_(arg0, arg1)
				local function __FUNC_16937_(arg0, arg1)
					local function __FUNC_16AAF_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.400000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_16AAF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.100000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16AAF_)
				end

				if arg1.interrupted then
					__FUNC_16937_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.400000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16937_)
			end

			if arg1.interrupted then
				__FUNC_167BC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1610.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_167BC_)
		end

		registerVal41:completeAnimation()
		registerVal2.CenterHairLL:setAlpha(0.000000)
		__FUNC_16665_(registerVal41, {})
		local function __FUNC_16C61_(arg0, arg1)
			local function __FUNC_16DDB_(arg0, arg1)
				local function __FUNC_16F53_(arg0, arg1)
					local function __FUNC_170CB_(arg0, arg1)
						local function __FUNC_17243_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.700000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_17243_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.090000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17243_)
					end

					if arg1.interrupted then
						__FUNC_170CB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.700000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_170CB_)
				end

				if arg1.interrupted then
					__FUNC_16F53_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.030000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16F53_)
			end

			if arg1.interrupted then
				__FUNC_16DDB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 759.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.700000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16DDB_)
		end

		registerVal43:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
		registerVal43:setAlpha(0.000000)
		registerVal43:registerEventHandler("transition_complete_keyframe", __FUNC_16C61_)
		local function __FUNC_173F5_(arg0, arg1)
			local function __FUNC_1756F_(arg0, arg1)
				local function __FUNC_176E7_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.900000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_176E7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.100000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_176E7_)
			end

			if arg1.interrupted then
				__FUNC_1756F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.900000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1756F_)
		end

		registerVal44:beginAnimation("keyframe", 1539.000000, false, false, CoD.TweenType.Linear)
		registerVal44:setAlpha(0.000000)
		registerVal44:registerEventHandler("transition_complete_keyframe", __FUNC_173F5_)
	end

	registerVal48["StartUp"] = __FUNC_3942_
	local function __FUNC_17899_()
		registerVal2:setupElementClipCounter(39.000000)
		local function __FUNC_1959C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -287.550000, -230.550000)
			arg0:setTopBottom(false, false, -201.440000, -132.440000)
			arg0:setAlpha(0.700000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.RingElement0:setLeftRight(false, false, -268.000000, -211.000000)
		registerVal2.RingElement0:setTopBottom(false, false, -187.000000, -118.000000)
		registerVal2.RingElement0:setAlpha(0.700000)
		registerVal2.RingElement0:setZoom(0.000000)
		__FUNC_1959C_(registerVal4, {})
		local function __FUNC_197E3_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 231.710000, 288.710000)
			arg0:setTopBottom(false, false, -201.440000, -132.440000)
			arg0:setAlpha(0.700000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.RingElement1:setLeftRight(false, false, 211.000000, 268.000000)
		registerVal2.RingElement1:setTopBottom(false, false, -187.000000, -118.000000)
		registerVal2.RingElement1:setAlpha(0.700000)
		registerVal2.RingElement1:setZoom(0.000000)
		__FUNC_197E3_(registerVal5, {})
		local function __FUNC_19A27_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 105.000000, 342.380000)
			arg0:setTopBottom(false, false, -257.120000, 265.120000)
			arg0:setAlpha(0.300000)
			arg0:setZoom(-190.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.msBoldLightRight:setLeftRight(false, false, 105.000000, 342.380000)
		registerVal2.msBoldLightRight:setTopBottom(false, false, -257.120000, 265.120000)
		registerVal2.msBoldLightRight:setAlpha(0.300000)
		registerVal2.msBoldLightRight:setZoom(50.000000)
		__FUNC_19A27_(registerVal6, {})
		local function __FUNC_19C6B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -341.000000, -103.620000)
			arg0:setTopBottom(false, false, -257.120000, 265.120000)
			arg0:setAlpha(0.300000)
			arg0:setZoom(-190.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.msBoldLightLeft:setLeftRight(false, false, -341.000000, -103.620000)
		registerVal2.msBoldLightLeft:setTopBottom(false, false, -257.120000, 265.120000)
		registerVal2.msBoldLightLeft:setAlpha(0.300000)
		registerVal2.msBoldLightLeft:setZoom(50.000000)
		__FUNC_19C6B_(registerVal7, {})
		local function __FUNC_19EAF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -8.000000, 14.000000)
			arg0:setTopBottom(false, false, 226.010000, 265.120000)
			arg0:setAlpha(0.300000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.msDoubleArrowsLower:setLeftRight(false, false, -8.000000, 14.000000)
		registerVal2.msDoubleArrowsLower:setTopBottom(false, false, 176.390000, 215.500000)
		registerVal2.msDoubleArrowsLower:setAlpha(0.300000)
		__FUNC_19EAF_(registerVal8, {})
		local function __FUNC_1A0D1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -8.000000, 14.000000)
			arg0:setTopBottom(false, false, -260.120000, -238.000000)
			arg0:setAlpha(0.300000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.msDoubleArrowsUpper:setLeftRight(false, false, -8.000000, 14.000000)
		registerVal2.msDoubleArrowsUpper:setTopBottom(false, false, -221.000000, -199.890000)
		registerVal2.msDoubleArrowsUpper:setAlpha(0.300000)
		__FUNC_1A0D1_(registerVal9, {})
		local function __FUNC_1A2F5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -211.250000, 217.250000)
			arg0:setTopBottom(false, false, -217.000000, 211.500000)
			arg0:setAlpha(0.200000)
			arg0:setZRot(-45.000000)
			arg0:setZoom(-300.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.msCenterInnerRing:setLeftRight(false, false, -211.250000, 217.250000)
		registerVal2.msCenterInnerRing:setTopBottom(false, false, -217.000000, 211.500000)
		registerVal2.msCenterInnerRing:setAlpha(0.200000)
		registerVal2.msCenterInnerRing:setZRot(0.000000)
		registerVal2.msCenterInnerRing:setZoom(0.000000)
		__FUNC_1A2F5_(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.msCenterPoint:setLeftRight(false, false, -5.000000, 8.000000)
		registerVal2.msCenterPoint:setTopBottom(false, false, -7.000000, 6.000000)
		registerVal2.msCenterPoint:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.msMidDotsR:setLeftRight(false, false, -640.000000, -640.000000)
		registerVal2.msMidDotsR:setTopBottom(false, false, -360.000000, -360.000000)
		registerVal2.msMidDotsR:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.msMidDotsL:setLeftRight(false, false, -640.000000, -640.000000)
		registerVal2.msMidDotsL:setTopBottom(false, false, -360.000000, -360.000000)
		registerVal2.msMidDotsL:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		local function __FUNC_1A55D_(arg0, arg1)
			local function __FUNC_1A6EC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, 431.880000, 509.000000)
				arg0:setTopBottom(false, false, -39.060000, 38.060000)
				arg0:setAlpha(0.200000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1A6EC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, 351.060000, 428.180000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A6EC_)
		end

		registerVal14:completeAnimation()
		registerVal2.msOutsideArrowBlurR:setLeftRight(false, false, 318.130000, 395.250000)
		registerVal2.msOutsideArrowBlurR:setTopBottom(false, false, -39.060000, 38.060000)
		registerVal2.msOutsideArrowBlurR:setAlpha(0.200000)
		__FUNC_1A55D_(registerVal14, {})
		local function __FUNC_1A911_(arg0, arg1)
			local function __FUNC_1AAA0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -518.410000, -441.290000)
				arg0:setTopBottom(false, false, -39.060000, 38.060000)
				arg0:setAlpha(0.200000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1AAA0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -437.170000, -360.050000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AAA0_)
		end

		registerVal15:completeAnimation()
		registerVal2.msOutsideArrowBlurL:setLeftRight(false, false, -395.200000, -318.080000)
		registerVal2.msOutsideArrowBlurL:setTopBottom(false, false, -39.060000, 38.060000)
		registerVal2.msOutsideArrowBlurL:setAlpha(0.200000)
		__FUNC_1A911_(registerVal15, {})
		local function __FUNC_1ACC5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 295.890000, 329.230000)
			arg0:setTopBottom(false, false, -26.370000, 23.630000)
			arg0:setAlpha(0.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.msOutsideArrowR:setLeftRight(false, false, 350.070000, 383.410000)
		registerVal2.msOutsideArrowR:setTopBottom(false, false, -26.000000, 24.000000)
		registerVal2.msOutsideArrowR:setAlpha(0.200000)
		__FUNC_1ACC5_(registerVal16, {})
		local function __FUNC_1AEE9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -334.750000, -301.420000)
			arg0:setTopBottom(false, false, -29.000000, 21.000000)
			arg0:setAlpha(0.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.msOutsideArrowL:setLeftRight(false, false, -385.980000, -352.640000)
		registerVal2.msOutsideArrowL:setTopBottom(false, false, -29.000000, 21.000000)
		registerVal2.msOutsideArrowL:setAlpha(0.200000)
		__FUNC_1AEE9_(registerVal17, {})
		local function __FUNC_1B10D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, true, -364.960000, 116.040000)
			arg0:setTopBottom(false, true, -124.500000, 20.500000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.vhudmsFrameBottomRight:setLeftRight(false, true, -427.210000, 53.790000)
		registerVal2.vhudmsFrameBottomRight:setTopBottom(false, true, -140.500000, 4.500000)
		registerVal2.vhudmsFrameBottomRight:setAlpha(1.000000)
		__FUNC_1B10D_(registerVal18, {})
		local function __FUNC_1B331_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -143.660000, 337.340000)
			arg0:setTopBottom(false, true, -124.500000, 20.500000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal2.vhudmsFrameBottomLeft0:setLeftRight(true, false, -41.680000, 439.320000)
		registerVal2.vhudmsFrameBottomLeft0:setTopBottom(false, true, -140.500000, 4.500000)
		registerVal2.vhudmsFrameBottomLeft0:setAlpha(1.000000)
		__FUNC_1B331_(registerVal19, {})
		local function __FUNC_1B555_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -250.030000, 269.030000)
			arg0:setTopBottom(true, false, 36.000000, 99.880000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal20:completeAnimation()
		registerVal2.vhudmsFrameTopCenter:setLeftRight(false, false, -250.030000, 269.030000)
		registerVal2.vhudmsFrameTopCenter:setTopBottom(true, false, 75.120000, 139.000000)
		registerVal2.vhudmsFrameTopCenter:setAlpha(1.000000)
		__FUNC_1B555_(registerVal20, {})
		local function __FUNC_1B779_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -245.500000, 273.500000)
			arg0:setTopBottom(true, false, 620.000000, 684.000000)
			arg0:setAlpha(0.600000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal21:completeAnimation()
		registerVal2.vhudmsFrameBottomCenter:setLeftRight(false, false, -246.500000, 272.500000)
		registerVal2.vhudmsFrameBottomCenter:setTopBottom(true, false, 581.500000, 645.500000)
		registerVal2.vhudmsFrameBottomCenter:setAlpha(1.000000)
		__FUNC_1B779_(registerVal21, {})
		local function __FUNC_1B99D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -131.360000, 349.430000)
			arg0:setTopBottom(true, false, -16.000000, 129.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal22:completeAnimation()
		registerVal2.vhudmsFrameTopLeft0:setLeftRight(true, false, -42.790000, 438.000000)
		registerVal2.vhudmsFrameTopLeft0:setTopBottom(true, false, -2.000000, 143.000000)
		registerVal2.vhudmsFrameTopLeft0:setAlpha(1.000000)
		__FUNC_1B99D_(registerVal22, {})
		local function __FUNC_1BBC1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, true, -350.970000, 129.820000)
			arg0:setTopBottom(true, false, -16.000000, 129.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal23:completeAnimation()
		registerVal2.vhudmsFrameTopRight:setLeftRight(false, true, -427.210000, 53.580000)
		registerVal2.vhudmsFrameTopRight:setTopBottom(true, false, -2.000000, 143.000000)
		registerVal2.vhudmsFrameTopRight:setAlpha(1.000000)
		__FUNC_1BBC1_(registerVal23, {})
		local function __FUNC_1BDE5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -441.290000, -289.960000)
			arg0:setTopBottom(false, false, -209.310000, 220.780000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal24:completeAnimation()
		registerVal2.vhudmsOutsideHashRing0:setLeftRight(false, false, -469.410000, -318.080000)
		registerVal2.vhudmsOutsideHashRing0:setTopBottom(false, false, -203.600000, 226.500000)
		registerVal2.vhudmsOutsideHashRing0:setAlpha(1.000000)
		__FUNC_1BDE5_(registerVal24, {})
		local function __FUNC_1C009_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 283.540000, 509.000000)
			arg0:setTopBottom(false, false, -241.280000, 249.280000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal25:completeAnimation()
		registerVal2.vhudmsHashRotateRight:setLeftRight(false, false, 318.130000, 543.590000)
		registerVal2.vhudmsHashRotateRight:setTopBottom(false, false, -241.280000, 249.280000)
		__FUNC_1C009_(registerVal25, {})
		local function __FUNC_1C20A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 141.740000, 261.000000)
			arg0:setTopBottom(false, false, -61.130000, 58.130000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal26:completeAnimation()
		registerVal2.vhudmsGridDotsHostR:setLeftRight(false, false, 194.500000, 313.760000)
		registerVal2.vhudmsGridDotsHostR:setTopBottom(false, false, -61.130000, 58.130000)
		registerVal2.vhudmsGridDotsHostR:setAlpha(1.000000)
		__FUNC_1C20A_(registerVal26, {})
		local function __FUNC_1C42D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -259.050000, -139.780000)
			arg0:setTopBottom(false, false, -61.130000, 58.130000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal27:completeAnimation()
		registerVal2.vhudmsGridDotsHostR0:setLeftRight(false, false, -305.130000, -185.870000)
		registerVal2.vhudmsGridDotsHostR0:setTopBottom(false, false, -61.130000, 58.130000)
		registerVal2.vhudmsGridDotsHostR0:setAlpha(1.000000)
		__FUNC_1C42D_(registerVal27, {})
		local function __FUNC_1C651_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, true, 0.000000, 44.210000)
			arg0:setTopBottom(false, false, -9.000000, 5.740000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal28:completeAnimation()
		registerVal2.vhudmsOutsideLine:setLeftRight(false, true, -137.610000, -93.390000)
		registerVal2.vhudmsOutsideLine:setTopBottom(false, false, -9.000000, 5.740000)
		registerVal2.vhudmsOutsideLine:setAlpha(1.000000)
		__FUNC_1C651_(registerVal28, {})
		local function __FUNC_1C875_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -44.210000, 0.000000)
			arg0:setTopBottom(false, false, -9.000000, 5.740000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal29:completeAnimation()
		registerVal2.vhudmsOutsideLine0:setLeftRight(true, false, 101.390000, 145.610000)
		registerVal2.vhudmsOutsideLine0:setTopBottom(false, false, -9.000000, 5.740000)
		registerVal2.vhudmsOutsideLine0:setAlpha(1.000000)
		__FUNC_1C875_(registerVal29, {})
		local function __FUNC_1CA99_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -17.000000, 23.180000)
			arg0:setTopBottom(true, false, 144.280000, 184.460000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal30:completeAnimation()
		registerVal2.vhudmsLockOnNotification:setLeftRight(false, false, -17.000000, 23.180000)
		registerVal2.vhudmsLockOnNotification:setTopBottom(true, false, 167.320000, 207.500000)
		registerVal2.vhudmsLockOnNotification:setAlpha(1.000000)
		__FUNC_1CA99_(registerVal30, {})
		local function __FUNC_1CCBD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -270.570000, -115.140000)
			arg0:setTopBottom(false, false, 97.380000, 154.640000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal31:completeAnimation()
		registerVal2.vhudmsReticleLineHostLL:setLeftRight(false, false, -341.300000, -185.870000)
		registerVal2.vhudmsReticleLineHostLL:setTopBottom(false, false, 111.740000, 169.000000)
		__FUNC_1CCBD_(registerVal31, {})
		local function __FUNC_1CEBE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 119.610000, 275.040000)
			arg0:setTopBottom(false, false, 97.380000, 154.640000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal32:completeAnimation()
		registerVal2.vhudmsReticleLineHostLR:setLeftRight(false, false, 176.420000, 331.850000)
		registerVal2.vhudmsReticleLineHostLR:setTopBottom(false, false, 111.740000, 169.000000)
		__FUNC_1CEBE_(registerVal32, {})
		local function __FUNC_1D0BE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -270.570000, -115.140000)
			arg0:setTopBottom(false, false, -153.540000, -96.280000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal33:completeAnimation()
		registerVal2.vhudmsReticleLineHostUL:setLeftRight(false, false, -336.760000, -181.330000)
		registerVal2.vhudmsReticleLineHostUL:setTopBottom(false, false, -172.590000, -115.330000)
		__FUNC_1D0BE_(registerVal33, {})
		local function __FUNC_1D2BE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 119.610000, 275.040000)
			arg0:setTopBottom(false, false, -153.540000, -96.280000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal34:completeAnimation()
		registerVal2.vhudmsReticleLineHostUR:setLeftRight(false, false, 176.420000, 331.850000)
		registerVal2.vhudmsReticleLineHostUR:setTopBottom(false, false, -175.260000, -118.000000)
		__FUNC_1D2BE_(registerVal34, {})
		local function __FUNC_1D4BE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 35.340000, 679.340000)
			arg0:setTopBottom(true, false, 36.000000, 112.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal35:completeAnimation()
		registerVal2.vhudmsModLeft:setLeftRight(true, false, 100.000000, 744.000000)
		registerVal2.vhudmsModLeft:setTopBottom(true, false, 41.000000, 117.000000)
		registerVal2.vhudmsModLeft:setAlpha(1.000000)
		__FUNC_1D4BE_(registerVal35, {})
		registerVal36:completeAnimation()
		registerVal2.vhudmsStatusWidgetLeft:setLeftRight(true, false, 153.210000, 240.210000)
		registerVal2.vhudmsStatusWidgetLeft:setTopBottom(false, false, -20.200000, 21.450000)
		registerVal2.vhudmsStatusWidgetLeft:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal36, {})
		local function __FUNC_1D6E1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 3.090000, 27.090000)
			arg0:setTopBottom(false, false, -25.500000, -1.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal38:completeAnimation()
		registerVal2.CenterHairUR:setLeftRight(false, false, 14.000000, 38.000000)
		registerVal2.CenterHairUR:setTopBottom(false, false, -36.060000, -12.060000)
		__FUNC_1D6E1_(registerVal38, {})
		local function __FUNC_1D8E2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -22.500000, 1.500000)
			arg0:setTopBottom(false, false, -25.630000, -1.630000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal39:completeAnimation()
		registerVal2.CenterHairUL:setLeftRight(false, false, -33.750000, -9.750000)
		registerVal2.CenterHairUL:setTopBottom(false, false, -36.060000, -12.060000)
		__FUNC_1D8E2_(registerVal39, {})
		local function __FUNC_1DAE2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 3.090000, 27.090000)
			arg0:setTopBottom(false, false, -0.370000, 23.630000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal40:completeAnimation()
		registerVal2.CenterHairLR:setLeftRight(false, false, 14.000000, 38.000000)
		registerVal2.CenterHairLR:setTopBottom(false, false, 12.000000, 36.000000)
		__FUNC_1DAE2_(registerVal40, {})
		local function __FUNC_1DCE2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -22.500000, 1.500000)
			arg0:setTopBottom(false, false, -0.370000, 23.630000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal41:completeAnimation()
		registerVal2.CenterHairLL:setLeftRight(false, false, -33.750000, -9.750000)
		registerVal2.CenterHairLL:setTopBottom(false, false, 12.180000, 36.180000)
		__FUNC_1DCE2_(registerVal41, {})
		registerVal43:completeAnimation()
		registerVal2.vhudmsTimebar0:setLeftRight(false, false, 342.380000, 576.000000)
		registerVal2.vhudmsTimebar0:setTopBottom(true, false, 81.000000, 89.630000)
		registerVal2.clipFinished(registerVal43, {})
		registerVal44:completeAnimation()
		registerVal2.vhudmsSeating0:setLeftRight(false, false, 401.250000, 502.250000)
		registerVal2.vhudmsSeating0:setTopBottom(true, false, 92.320000, 198.320000)
		registerVal2.clipFinished(registerVal44, {})
	end

	registerVal48["Zoom"] = __FUNC_17899_
	registerVal46["DefaultState"] = registerVal48
	registerVal48 = {}
	local function __FUNC_1DEE2_()
		registerVal2:setupElementClipCounter(40.000000)
		registerVal4:completeAnimation()
		registerVal2.RingElement0:setLeftRight(false, false, -287.550000, -230.550000)
		registerVal2.RingElement0:setTopBottom(false, false, -201.440000, -132.440000)
		registerVal2.RingElement0:setAlpha(0.700000)
		registerVal2.RingElement0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.RingElement1:setLeftRight(false, false, 231.710000, 288.710000)
		registerVal2.RingElement1:setTopBottom(false, false, -201.440000, -132.440000)
		registerVal2.RingElement1:setAlpha(0.700000)
		registerVal2.RingElement1:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.msBoldLightRight:setLeftRight(false, false, 105.000000, 342.380000)
		registerVal2.msBoldLightRight:setTopBottom(false, false, -257.120000, 265.120000)
		registerVal2.msBoldLightRight:setAlpha(0.300000)
		registerVal2.msBoldLightRight:setZoom(-190.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.msBoldLightLeft:setLeftRight(false, false, -341.000000, -103.620000)
		registerVal2.msBoldLightLeft:setTopBottom(false, false, -257.120000, 265.120000)
		registerVal2.msBoldLightLeft:setAlpha(0.300000)
		registerVal2.msBoldLightLeft:setZoom(-190.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.msDoubleArrowsLower:setLeftRight(false, false, -8.000000, 14.000000)
		registerVal2.msDoubleArrowsLower:setTopBottom(false, false, 226.010000, 265.120000)
		registerVal2.msDoubleArrowsLower:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.msDoubleArrowsUpper:setLeftRight(false, false, -8.000000, 14.000000)
		registerVal2.msDoubleArrowsUpper:setTopBottom(false, false, -260.120000, -238.000000)
		registerVal2.msDoubleArrowsUpper:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.msCenterInnerRing:setLeftRight(false, false, -211.250000, 217.250000)
		registerVal2.msCenterInnerRing:setTopBottom(false, false, -217.000000, 211.500000)
		registerVal2.msCenterInnerRing:setAlpha(0.200000)
		registerVal2.msCenterInnerRing:setZRot(-45.000000)
		registerVal2.msCenterInnerRing:setZoom(-300.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.msCenterPoint:setLeftRight(false, false, -5.000000, 8.000000)
		registerVal2.msCenterPoint:setTopBottom(false, false, -7.000000, 6.000000)
		registerVal2.msCenterPoint:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.msMidDotsR:setLeftRight(false, false, -640.000000, -640.000000)
		registerVal2.msMidDotsR:setTopBottom(false, false, -360.000000, -360.000000)
		registerVal2.msMidDotsR:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.msMidDotsL:setLeftRight(false, false, -640.000000, -640.000000)
		registerVal2.msMidDotsL:setTopBottom(false, false, -360.000000, -360.000000)
		registerVal2.msMidDotsL:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.msOutsideArrowBlurR:setLeftRight(false, false, 431.880000, 509.000000)
		registerVal2.msOutsideArrowBlurR:setTopBottom(false, false, -39.060000, 38.060000)
		registerVal2.msOutsideArrowBlurR:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.msOutsideArrowBlurL:setLeftRight(false, false, -518.410000, -441.290000)
		registerVal2.msOutsideArrowBlurL:setTopBottom(false, false, -39.060000, 38.060000)
		registerVal2.msOutsideArrowBlurL:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.msOutsideArrowR:setLeftRight(false, false, 295.890000, 329.230000)
		registerVal2.msOutsideArrowR:setTopBottom(false, false, -26.370000, 23.630000)
		registerVal2.msOutsideArrowR:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.msOutsideArrowL:setLeftRight(false, false, -334.750000, -301.420000)
		registerVal2.msOutsideArrowL:setTopBottom(false, false, -29.000000, 21.000000)
		registerVal2.msOutsideArrowL:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.vhudmsFrameBottomRight:setLeftRight(false, true, -364.960000, 116.040000)
		registerVal2.vhudmsFrameBottomRight:setTopBottom(false, true, -124.500000, 20.500000)
		registerVal2.vhudmsFrameBottomRight:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.vhudmsFrameBottomLeft0:setLeftRight(true, false, -143.660000, 337.340000)
		registerVal2.vhudmsFrameBottomLeft0:setTopBottom(false, true, -124.500000, 20.500000)
		registerVal2.vhudmsFrameBottomLeft0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.vhudmsFrameTopCenter:setLeftRight(false, false, -250.030000, 269.030000)
		registerVal2.vhudmsFrameTopCenter:setTopBottom(true, false, 36.000000, 99.880000)
		registerVal2.vhudmsFrameTopCenter:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.vhudmsFrameBottomCenter:setLeftRight(false, false, -245.500000, 273.500000)
		registerVal2.vhudmsFrameBottomCenter:setTopBottom(true, false, 620.000000, 684.000000)
		registerVal2.vhudmsFrameBottomCenter:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.vhudmsFrameTopLeft0:setLeftRight(true, false, -131.360000, 349.430000)
		registerVal2.vhudmsFrameTopLeft0:setTopBottom(true, false, -16.000000, 129.000000)
		registerVal2.vhudmsFrameTopLeft0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.vhudmsFrameTopRight:setLeftRight(false, true, -350.970000, 129.820000)
		registerVal2.vhudmsFrameTopRight:setTopBottom(true, false, -16.000000, 129.000000)
		registerVal2.vhudmsFrameTopRight:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.vhudmsOutsideHashRing0:setLeftRight(false, false, -441.290000, -289.960000)
		registerVal2.vhudmsOutsideHashRing0:setTopBottom(false, false, -209.310000, 220.780000)
		registerVal2.vhudmsOutsideHashRing0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.vhudmsHashRotateRight:setLeftRight(false, false, 283.540000, 509.000000)
		registerVal2.vhudmsHashRotateRight:setTopBottom(false, false, -241.280000, 249.280000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.vhudmsGridDotsHostR:setLeftRight(false, false, 141.740000, 261.000000)
		registerVal2.vhudmsGridDotsHostR:setTopBottom(false, false, -61.130000, 58.130000)
		registerVal2.vhudmsGridDotsHostR:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.vhudmsGridDotsHostR0:setLeftRight(false, false, -259.050000, -139.780000)
		registerVal2.vhudmsGridDotsHostR0:setTopBottom(false, false, -61.130000, 58.130000)
		registerVal2.vhudmsGridDotsHostR0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.vhudmsOutsideLine:setLeftRight(false, true, 0.000000, 44.210000)
		registerVal2.vhudmsOutsideLine:setTopBottom(false, false, -9.000000, 5.740000)
		registerVal2.vhudmsOutsideLine:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal28, {})
		registerVal29:completeAnimation()
		registerVal2.vhudmsOutsideLine0:setLeftRight(true, false, -44.210000, 0.000000)
		registerVal2.vhudmsOutsideLine0:setTopBottom(false, false, -9.000000, 5.740000)
		registerVal2.vhudmsOutsideLine0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal29, {})
		registerVal30:completeAnimation()
		registerVal2.vhudmsLockOnNotification:setLeftRight(false, false, -17.000000, 23.180000)
		registerVal2.vhudmsLockOnNotification:setTopBottom(true, false, 144.280000, 184.460000)
		registerVal2.vhudmsLockOnNotification:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal30, {})
		registerVal31:completeAnimation()
		registerVal2.vhudmsReticleLineHostLL:setLeftRight(false, false, -270.570000, -115.140000)
		registerVal2.vhudmsReticleLineHostLL:setTopBottom(false, false, 97.380000, 154.640000)
		registerVal2.clipFinished(registerVal31, {})
		registerVal32:completeAnimation()
		registerVal2.vhudmsReticleLineHostLR:setLeftRight(false, false, 119.610000, 275.040000)
		registerVal2.vhudmsReticleLineHostLR:setTopBottom(false, false, 97.380000, 154.640000)
		registerVal2.clipFinished(registerVal32, {})
		registerVal33:completeAnimation()
		registerVal2.vhudmsReticleLineHostUL:setLeftRight(false, false, -270.570000, -115.140000)
		registerVal2.vhudmsReticleLineHostUL:setTopBottom(false, false, -153.540000, -96.280000)
		registerVal2.clipFinished(registerVal33, {})
		registerVal34:completeAnimation()
		registerVal2.vhudmsReticleLineHostUR:setLeftRight(false, false, 119.610000, 275.040000)
		registerVal2.vhudmsReticleLineHostUR:setTopBottom(false, false, -153.540000, -96.280000)
		registerVal2.clipFinished(registerVal34, {})
		registerVal35:completeAnimation()
		registerVal2.vhudmsModLeft:setLeftRight(true, false, 35.340000, 679.340000)
		registerVal2.vhudmsModLeft:setTopBottom(true, false, 36.000000, 112.000000)
		registerVal2.vhudmsModLeft:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal35, {})
		registerVal36:completeAnimation()
		registerVal2.vhudmsStatusWidgetLeft:setLeftRight(true, false, 153.210000, 240.210000)
		registerVal2.vhudmsStatusWidgetLeft:setTopBottom(false, false, -20.200000, 21.450000)
		registerVal2.vhudmsStatusWidgetLeft:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal36, {})
		registerVal38:completeAnimation()
		registerVal2.CenterHairUR:setLeftRight(false, false, 3.090000, 27.090000)
		registerVal2.CenterHairUR:setTopBottom(false, false, -25.500000, -1.500000)
		registerVal2.clipFinished(registerVal38, {})
		registerVal39:completeAnimation()
		registerVal2.CenterHairUL:setLeftRight(false, false, -22.500000, 1.500000)
		registerVal2.CenterHairUL:setTopBottom(false, false, -25.630000, -1.630000)
		registerVal2.clipFinished(registerVal39, {})
		registerVal40:completeAnimation()
		registerVal2.CenterHairLR:setLeftRight(false, false, 3.090000, 27.090000)
		registerVal2.CenterHairLR:setTopBottom(false, false, -0.370000, 23.630000)
		registerVal2.clipFinished(registerVal40, {})
		registerVal41:completeAnimation()
		registerVal2.CenterHairLL:setLeftRight(false, false, -22.500000, 1.500000)
		registerVal2.CenterHairLL:setTopBottom(false, false, -0.370000, 23.630000)
		registerVal2.clipFinished(registerVal41, {})
		registerVal42:completeAnimation()
		registerVal2.vhudmsStatusWidgetBottom:setLeftRight(false, false, -66.630000, 72.630000)
		registerVal2.vhudmsStatusWidgetBottom:setTopBottom(false, false, 181.500000, 211.500000)
		registerVal2.vhudmsStatusWidgetBottom:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal42, {})
		registerVal43:completeAnimation()
		registerVal2.vhudmsTimebar0:setLeftRight(false, false, 342.380000, 576.000000)
		registerVal2.vhudmsTimebar0:setTopBottom(true, false, 81.000000, 89.630000)
		registerVal2.clipFinished(registerVal43, {})
		registerVal44:completeAnimation()
		registerVal2.vhudmsSeating0:setLeftRight(false, false, 401.250000, 502.250000)
		registerVal2.vhudmsSeating0:setTopBottom(true, false, 92.320000, 198.320000)
		registerVal2.vhudmsSeating0:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal44, {})
	end

	registerVal48["DefaultClip"] = __FUNC_1DEE2_
	local function __FUNC_1FD44_()
		registerVal2:setupElementClipCounter(39.000000)
		local function __FUNC_21A65_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -268.000000, -211.000000)
			arg0:setTopBottom(false, false, -187.000000, -118.000000)
			arg0:setAlpha(0.700000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.RingElement0:setLeftRight(false, false, -287.550000, -230.550000)
		registerVal2.RingElement0:setTopBottom(false, false, -201.440000, -132.440000)
		registerVal2.RingElement0:setAlpha(0.700000)
		registerVal2.RingElement0:setZoom(0.000000)
		__FUNC_21A65_(registerVal4, {})
		local function __FUNC_21CAB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 211.000000, 268.000000)
			arg0:setTopBottom(false, false, -187.000000, -118.000000)
			arg0:setAlpha(0.700000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.RingElement1:setLeftRight(false, false, 231.710000, 288.710000)
		registerVal2.RingElement1:setTopBottom(false, false, -201.440000, -132.440000)
		registerVal2.RingElement1:setAlpha(0.700000)
		registerVal2.RingElement1:setZoom(0.000000)
		__FUNC_21CAB_(registerVal5, {})
		local function __FUNC_21EEF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 105.000000, 342.380000)
			arg0:setTopBottom(false, false, -257.120000, 265.120000)
			arg0:setAlpha(0.300000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.msBoldLightRight:setLeftRight(false, false, 105.000000, 342.380000)
		registerVal2.msBoldLightRight:setTopBottom(false, false, -257.120000, 265.120000)
		registerVal2.msBoldLightRight:setAlpha(0.300000)
		registerVal2.msBoldLightRight:setZoom(-190.000000)
		__FUNC_21EEF_(registerVal6, {})
		local function __FUNC_22133_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -341.000000, -103.620000)
			arg0:setTopBottom(false, false, -257.120000, 265.120000)
			arg0:setAlpha(0.300000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.msBoldLightLeft:setLeftRight(false, false, -341.000000, -103.620000)
		registerVal2.msBoldLightLeft:setTopBottom(false, false, -257.120000, 265.120000)
		registerVal2.msBoldLightLeft:setAlpha(0.300000)
		registerVal2.msBoldLightLeft:setZoom(-190.000000)
		__FUNC_22133_(registerVal7, {})
		local function __FUNC_22377_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -8.000000, 14.000000)
			arg0:setTopBottom(false, false, 176.390000, 215.500000)
			arg0:setAlpha(0.300000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.msDoubleArrowsLower:setLeftRight(false, false, -8.000000, 14.000000)
		registerVal2.msDoubleArrowsLower:setTopBottom(false, false, 226.010000, 265.120000)
		registerVal2.msDoubleArrowsLower:setAlpha(0.300000)
		__FUNC_22377_(registerVal8, {})
		local function __FUNC_22599_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -8.000000, 14.000000)
			arg0:setTopBottom(false, false, -221.000000, -199.890000)
			arg0:setAlpha(0.300000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.msDoubleArrowsUpper:setLeftRight(false, false, -8.000000, 14.000000)
		registerVal2.msDoubleArrowsUpper:setTopBottom(false, false, -260.120000, -238.000000)
		registerVal2.msDoubleArrowsUpper:setAlpha(0.300000)
		__FUNC_22599_(registerVal9, {})
		local function __FUNC_227BD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -211.250000, 217.250000)
			arg0:setTopBottom(false, false, -217.000000, 211.500000)
			arg0:setAlpha(0.200000)
			arg0:setZRot(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.msCenterInnerRing:setLeftRight(false, false, -211.250000, 217.250000)
		registerVal2.msCenterInnerRing:setTopBottom(false, false, -217.000000, 211.500000)
		registerVal2.msCenterInnerRing:setAlpha(0.200000)
		registerVal2.msCenterInnerRing:setZRot(-45.000000)
		registerVal2.msCenterInnerRing:setZoom(-300.000000)
		__FUNC_227BD_(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.msCenterPoint:setLeftRight(false, false, -5.000000, 8.000000)
		registerVal2.msCenterPoint:setTopBottom(false, false, -7.000000, 6.000000)
		registerVal2.msCenterPoint:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.msMidDotsR:setLeftRight(false, false, -640.000000, -640.000000)
		registerVal2.msMidDotsR:setTopBottom(false, false, -360.000000, -360.000000)
		registerVal2.msMidDotsR:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.msMidDotsL:setLeftRight(false, false, -640.000000, -640.000000)
		registerVal2.msMidDotsL:setTopBottom(false, false, -360.000000, -360.000000)
		registerVal2.msMidDotsL:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		local function __FUNC_22A20_(arg0, arg1)
			local function __FUNC_22BB0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, 318.130000, 395.250000)
				arg0:setTopBottom(false, false, -39.060000, 38.060000)
				arg0:setAlpha(0.200000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_22BB0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, 351.060000, 428.180000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22BB0_)
		end

		registerVal14:completeAnimation()
		registerVal2.msOutsideArrowBlurR:setLeftRight(false, false, 431.880000, 509.000000)
		registerVal2.msOutsideArrowBlurR:setTopBottom(false, false, -39.060000, 38.060000)
		registerVal2.msOutsideArrowBlurR:setAlpha(0.200000)
		__FUNC_22A20_(registerVal14, {})
		local function __FUNC_22DD5_(arg0, arg1)
			local function __FUNC_22F64_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -395.200000, -318.080000)
				arg0:setTopBottom(false, false, -39.060000, 38.060000)
				arg0:setAlpha(0.200000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_22F64_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -437.170000, -360.050000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22F64_)
		end

		registerVal15:completeAnimation()
		registerVal2.msOutsideArrowBlurL:setLeftRight(false, false, -518.410000, -441.290000)
		registerVal2.msOutsideArrowBlurL:setTopBottom(false, false, -39.060000, 38.060000)
		registerVal2.msOutsideArrowBlurL:setAlpha(0.200000)
		__FUNC_22DD5_(registerVal15, {})
		local function __FUNC_23189_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 350.070000, 383.410000)
			arg0:setTopBottom(false, false, -26.000000, 24.000000)
			arg0:setAlpha(0.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.msOutsideArrowR:setLeftRight(false, false, 295.890000, 329.230000)
		registerVal2.msOutsideArrowR:setTopBottom(false, false, -26.370000, 23.630000)
		registerVal2.msOutsideArrowR:setAlpha(0.200000)
		__FUNC_23189_(registerVal16, {})
		local function __FUNC_233AD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -385.980000, -352.640000)
			arg0:setTopBottom(false, false, -29.000000, 21.000000)
			arg0:setAlpha(0.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.msOutsideArrowL:setLeftRight(false, false, -334.750000, -301.420000)
		registerVal2.msOutsideArrowL:setTopBottom(false, false, -29.000000, 21.000000)
		registerVal2.msOutsideArrowL:setAlpha(0.200000)
		__FUNC_233AD_(registerVal17, {})
		local function __FUNC_235D1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, true, -427.210000, 53.790000)
			arg0:setTopBottom(false, true, -140.500000, 4.500000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.vhudmsFrameBottomRight:setLeftRight(false, true, -364.960000, 116.040000)
		registerVal2.vhudmsFrameBottomRight:setTopBottom(false, true, -124.500000, 20.500000)
		registerVal2.vhudmsFrameBottomRight:setAlpha(1.000000)
		__FUNC_235D1_(registerVal18, {})
		local function __FUNC_237F5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -41.680000, 439.320000)
			arg0:setTopBottom(false, true, -140.500000, 4.500000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal2.vhudmsFrameBottomLeft0:setLeftRight(true, false, -143.660000, 337.340000)
		registerVal2.vhudmsFrameBottomLeft0:setTopBottom(false, true, -124.500000, 20.500000)
		registerVal2.vhudmsFrameBottomLeft0:setAlpha(1.000000)
		__FUNC_237F5_(registerVal19, {})
		local function __FUNC_23A19_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -250.030000, 269.030000)
			arg0:setTopBottom(true, false, 75.120000, 139.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal20:completeAnimation()
		registerVal2.vhudmsFrameTopCenter:setLeftRight(false, false, -250.030000, 269.030000)
		registerVal2.vhudmsFrameTopCenter:setTopBottom(true, false, 36.000000, 99.880000)
		registerVal2.vhudmsFrameTopCenter:setAlpha(1.000000)
		__FUNC_23A19_(registerVal20, {})
		local function __FUNC_23C3D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -246.500000, 272.500000)
			arg0:setTopBottom(true, false, 581.500000, 645.500000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal21:completeAnimation()
		registerVal2.vhudmsFrameBottomCenter:setLeftRight(false, false, -245.500000, 273.500000)
		registerVal2.vhudmsFrameBottomCenter:setTopBottom(true, false, 620.000000, 684.000000)
		registerVal2.vhudmsFrameBottomCenter:setAlpha(0.600000)
		__FUNC_23C3D_(registerVal21, {})
		local function __FUNC_23E61_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -42.790000, 438.000000)
			arg0:setTopBottom(true, false, -2.000000, 143.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal22:completeAnimation()
		registerVal2.vhudmsFrameTopLeft0:setLeftRight(true, false, -131.360000, 349.430000)
		registerVal2.vhudmsFrameTopLeft0:setTopBottom(true, false, -16.000000, 129.000000)
		registerVal2.vhudmsFrameTopLeft0:setAlpha(1.000000)
		__FUNC_23E61_(registerVal22, {})
		local function __FUNC_24085_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, true, -427.210000, 53.580000)
			arg0:setTopBottom(true, false, -2.000000, 143.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal23:completeAnimation()
		registerVal2.vhudmsFrameTopRight:setLeftRight(false, true, -350.970000, 129.820000)
		registerVal2.vhudmsFrameTopRight:setTopBottom(true, false, -16.000000, 129.000000)
		registerVal2.vhudmsFrameTopRight:setAlpha(1.000000)
		__FUNC_24085_(registerVal23, {})
		local function __FUNC_242A9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -469.410000, -318.080000)
			arg0:setTopBottom(false, false, -203.600000, 226.500000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal24:completeAnimation()
		registerVal2.vhudmsOutsideHashRing0:setLeftRight(false, false, -441.290000, -289.960000)
		registerVal2.vhudmsOutsideHashRing0:setTopBottom(false, false, -209.310000, 220.780000)
		registerVal2.vhudmsOutsideHashRing0:setAlpha(1.000000)
		__FUNC_242A9_(registerVal24, {})
		local function __FUNC_244CD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 318.130000, 543.590000)
			arg0:setTopBottom(false, false, -241.280000, 249.280000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal25:completeAnimation()
		registerVal2.vhudmsHashRotateRight:setLeftRight(false, false, 283.540000, 509.000000)
		registerVal2.vhudmsHashRotateRight:setTopBottom(false, false, -241.280000, 249.280000)
		__FUNC_244CD_(registerVal25, {})
		local function __FUNC_246CE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 194.500000, 313.760000)
			arg0:setTopBottom(false, false, -61.130000, 58.130000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal26:completeAnimation()
		registerVal2.vhudmsGridDotsHostR:setLeftRight(false, false, 141.740000, 261.000000)
		registerVal2.vhudmsGridDotsHostR:setTopBottom(false, false, -61.130000, 58.130000)
		registerVal2.vhudmsGridDotsHostR:setAlpha(1.000000)
		__FUNC_246CE_(registerVal26, {})
		local function __FUNC_248F1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -305.130000, -185.870000)
			arg0:setTopBottom(false, false, -61.130000, 58.130000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal27:completeAnimation()
		registerVal2.vhudmsGridDotsHostR0:setLeftRight(false, false, -259.050000, -139.780000)
		registerVal2.vhudmsGridDotsHostR0:setTopBottom(false, false, -61.130000, 58.130000)
		registerVal2.vhudmsGridDotsHostR0:setAlpha(1.000000)
		__FUNC_248F1_(registerVal27, {})
		local function __FUNC_24B15_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, true, -137.610000, -93.400000)
			arg0:setTopBottom(false, false, -9.000000, 5.740000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal28:completeAnimation()
		registerVal2.vhudmsOutsideLine:setLeftRight(false, true, 0.000000, 44.210000)
		registerVal2.vhudmsOutsideLine:setTopBottom(false, false, -9.000000, 5.740000)
		registerVal2.vhudmsOutsideLine:setAlpha(1.000000)
		__FUNC_24B15_(registerVal28, {})
		local function __FUNC_24D39_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 101.390000, 145.610000)
			arg0:setTopBottom(false, false, -9.000000, 5.740000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal29:completeAnimation()
		registerVal2.vhudmsOutsideLine0:setLeftRight(true, false, -44.210000, 0.000000)
		registerVal2.vhudmsOutsideLine0:setTopBottom(false, false, -9.000000, 5.740000)
		registerVal2.vhudmsOutsideLine0:setAlpha(1.000000)
		__FUNC_24D39_(registerVal29, {})
		local function __FUNC_24F5D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -17.000000, 23.180000)
			arg0:setTopBottom(true, false, 167.320000, 207.500000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal30:completeAnimation()
		registerVal2.vhudmsLockOnNotification:setLeftRight(false, false, -17.000000, 23.180000)
		registerVal2.vhudmsLockOnNotification:setTopBottom(true, false, 144.280000, 184.460000)
		registerVal2.vhudmsLockOnNotification:setAlpha(1.000000)
		__FUNC_24F5D_(registerVal30, {})
		local function __FUNC_25181_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -341.300000, -185.870000)
			arg0:setTopBottom(false, false, 111.740000, 169.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal31:completeAnimation()
		registerVal2.vhudmsReticleLineHostLL:setLeftRight(false, false, -270.570000, -115.140000)
		registerVal2.vhudmsReticleLineHostLL:setTopBottom(false, false, 97.380000, 154.640000)
		__FUNC_25181_(registerVal31, {})
		local function __FUNC_25382_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 176.420000, 331.850000)
			arg0:setTopBottom(false, false, 111.740000, 169.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal32:completeAnimation()
		registerVal2.vhudmsReticleLineHostLR:setLeftRight(false, false, 119.610000, 275.040000)
		registerVal2.vhudmsReticleLineHostLR:setTopBottom(false, false, 97.380000, 154.640000)
		__FUNC_25382_(registerVal32, {})
		local function __FUNC_25582_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -336.770000, -181.340000)
			arg0:setTopBottom(false, false, -172.590000, -115.330000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal33:completeAnimation()
		registerVal2.vhudmsReticleLineHostUL:setLeftRight(false, false, -270.570000, -115.140000)
		registerVal2.vhudmsReticleLineHostUL:setTopBottom(false, false, -153.540000, -96.280000)
		__FUNC_25582_(registerVal33, {})
		local function __FUNC_25782_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 176.420000, 331.850000)
			arg0:setTopBottom(false, false, -175.260000, -118.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal34:completeAnimation()
		registerVal2.vhudmsReticleLineHostUR:setLeftRight(false, false, 119.610000, 275.040000)
		registerVal2.vhudmsReticleLineHostUR:setTopBottom(false, false, -153.540000, -96.280000)
		__FUNC_25782_(registerVal34, {})
		local function __FUNC_25982_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 100.000000, 744.000000)
			arg0:setTopBottom(true, false, 41.000000, 117.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal35:completeAnimation()
		registerVal2.vhudmsModLeft:setLeftRight(true, false, 35.340000, 679.340000)
		registerVal2.vhudmsModLeft:setTopBottom(true, false, 36.000000, 112.000000)
		registerVal2.vhudmsModLeft:setAlpha(1.000000)
		__FUNC_25982_(registerVal35, {})
		registerVal36:completeAnimation()
		registerVal2.vhudmsStatusWidgetLeft:setLeftRight(true, false, 153.210000, 240.210000)
		registerVal2.vhudmsStatusWidgetLeft:setTopBottom(false, false, -20.200000, 21.450000)
		registerVal2.vhudmsStatusWidgetLeft:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal36, {})
		local function __FUNC_25BA5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 14.000000, 38.000000)
			arg0:setTopBottom(false, false, -36.060000, -12.060000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal38:completeAnimation()
		registerVal2.CenterHairUR:setLeftRight(false, false, 3.090000, 27.090000)
		registerVal2.CenterHairUR:setTopBottom(false, false, -25.500000, -1.500000)
		__FUNC_25BA5_(registerVal38, {})
		local function __FUNC_25DA6_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -33.750000, -9.750000)
			arg0:setTopBottom(false, false, -36.060000, -12.060000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal39:completeAnimation()
		registerVal2.CenterHairUL:setLeftRight(false, false, -22.500000, 1.500000)
		registerVal2.CenterHairUL:setTopBottom(false, false, -25.630000, -1.630000)
		__FUNC_25DA6_(registerVal39, {})
		local function __FUNC_25FA6_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 14.000000, 38.000000)
			arg0:setTopBottom(false, false, 12.000000, 36.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal40:completeAnimation()
		registerVal2.CenterHairLR:setLeftRight(false, false, 3.090000, 27.090000)
		registerVal2.CenterHairLR:setTopBottom(false, false, -0.370000, 23.630000)
		__FUNC_25FA6_(registerVal40, {})
		local function __FUNC_261A6_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -33.750000, -9.750000)
			arg0:setTopBottom(false, false, 12.180000, 36.180000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal41:completeAnimation()
		registerVal2.CenterHairLL:setLeftRight(false, false, -22.500000, 1.500000)
		registerVal2.CenterHairLL:setTopBottom(false, false, -0.370000, 23.630000)
		__FUNC_261A6_(registerVal41, {})
		local function __FUNC_263A6_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -67.000000, 72.250000)
			arg0:setTopBottom(false, false, 155.810000, 185.810000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal42:completeAnimation()
		registerVal2.vhudmsStatusWidgetBottom:setLeftRight(false, false, -66.630000, 72.630000)
		registerVal2.vhudmsStatusWidgetBottom:setTopBottom(false, false, 181.500000, 211.500000)
		__FUNC_263A6_(registerVal42, {})
		registerVal44:completeAnimation()
		registerVal2.vhudmsSeating0:setLeftRight(false, false, 401.250000, 502.250000)
		registerVal2.vhudmsSeating0:setTopBottom(true, false, 92.320000, 198.320000)
		registerVal2.vhudmsSeating0:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal44, {})
	end

	registerVal48["DefaultState"] = __FUNC_1FD44_
	registerVal46["Zoom"] = registerVal48
	registerVal2["clipsPerState"] = registerVal46
	local function __FUNC_265A6_(arg0)
		arg0.RingElement0:close()
		arg0.RingElement1:close()
		arg0.vhudmsFrameBottomRight:close()
		arg0.vhudmsFrameBottomLeft0:close()
		arg0.vhudmsFrameTopCenter:close()
		arg0.vhudmsFrameBottomCenter:close()
		arg0.vhudmsFrameTopLeft0:close()
		arg0.vhudmsFrameTopRight:close()
		arg0.vhudmsOutsideHashRing0:close()
		arg0.vhudmsHashRotateRight:close()
		arg0.vhudmsGridDotsHostR:close()
		arg0.vhudmsGridDotsHostR0:close()
		arg0.vhudmsOutsideLine:close()
		arg0.vhudmsOutsideLine0:close()
		arg0.vhudmsLockOnNotification:close()
		arg0.vhudmsReticleLineHostLL:close()
		arg0.vhudmsReticleLineHostLR:close()
		arg0.vhudmsReticleLineHostUL:close()
		arg0.vhudmsReticleLineHostUR:close()
		arg0.vhudmsModLeft:close()
		arg0.vhudmsStatusWidgetLeft:close()
		arg0.vhudmsStatusWidgetGunnerRight:close()
		arg0.vhudmsStatusWidgetBottom:close()
		arg0.vhudmsTimebar0:close()
		arg0.vhudmsSeating0:close()
	end

	LUI["OverrideFunction_CallOriginalSecond"](registerVal2, "close", __FUNC_265A6_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

