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
require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_ModRight")
require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_Timebar")
require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_Seating")
require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_StatusWidgetRight")
require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_StatusWidgetLeft")
require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_StatusWidgetBottom")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_ms_Reticle = registerVal1
function CoD.vhud_ms_Reticle.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_ms_Reticle)
	registerVal2.id = "vhud_ms_Reticle"
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
	registerVal21:setTopBottom(false, true, -138.500000, -74.500000)
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
	local function __FUNC_36A7_(arg0)
		registerVal30:setModel(arg0, arg1)
	end

	registerVal30:linkToElementModel(registerVal2, "missileLockedOn", false, __FUNC_36A7_)
	registerVal2:addElement(registerVal30)
	registerVal2.vhudmsLockOnNotification = registerVal30
	local registerVal31 = LUI.UIImage.new()
	registerVal31:setLeftRight(false, false, -14.750000, 17.750000)
	registerVal31:setTopBottom(false, false, -115.880000, -26.500000)
	registerVal31:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_centerdiamondtop"))
	registerVal31:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal31)
	registerVal2.msCenterDiamondT = registerVal31
	local registerVal32 = LUI.UIImage.new()
	registerVal32:setLeftRight(false, false, -13.750000, 18.750000)
	registerVal32:setTopBottom(false, false, 24.180000, 113.550000)
	registerVal32:setZRot(180.000000)
	registerVal32:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_centerdiamondtop"))
	registerVal32:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal32)
	registerVal2.msCenterDiamondB = registerVal32
	local registerVal33 = LUI.UIImage.new()
	registerVal33:setLeftRight(false, false, -74.430000, -25.430000)
	registerVal33:setTopBottom(false, false, -17.630000, 15.040000)
	registerVal33:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_centerdiamondside"))
	registerVal33:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal33)
	registerVal2.msCenterDiamondSideL = registerVal33
	local registerVal34 = LUI.UIImage.new()
	registerVal34:setLeftRight(false, false, 28.070000, 77.070000)
	registerVal34:setTopBottom(false, false, -16.630000, 16.040000)
	registerVal34:setZRot(180.000000)
	registerVal34:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_centerdiamondside"))
	registerVal34:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal34)
	registerVal2.msCenterDiamondSideR = registerVal34
	local registerVal35 = CoD.vhud_ms_ReticleLineHostLL.new(arg0, arg1)
	registerVal35:setLeftRight(false, false, -341.300000, -185.870000)
	registerVal35:setTopBottom(false, false, 111.550000, 168.810000)
	registerVal35:setZoom(20.000000)
	registerVal2:addElement(registerVal35)
	registerVal2.vhudmsReticleLineHostLL = registerVal35
	local registerVal36 = CoD.vhud_ms_ReticleLineHostLR.new(arg0, arg1)
	registerVal36:setLeftRight(false, false, 176.420000, 331.850000)
	registerVal36:setTopBottom(false, false, 111.550000, 168.810000)
	registerVal36:setZoom(20.000000)
	registerVal2:addElement(registerVal36)
	registerVal2.vhudmsReticleLineHostLR = registerVal36
	local registerVal37 = CoD.vhud_ms_ReticleLineHostUL.new(arg0, arg1)
	registerVal37:setLeftRight(false, false, -336.210000, -180.790000)
	registerVal37:setTopBottom(false, false, -173.140000, -115.880000)
	registerVal37:setZoom(20.000000)
	registerVal2:addElement(registerVal37)
	registerVal2.vhudmsReticleLineHostUL = registerVal37
	local registerVal38 = CoD.vhud_ms_ReticleLineHostUR.new(arg0, arg1)
	registerVal38:setLeftRight(false, false, 176.420000, 331.850000)
	registerVal38:setTopBottom(false, false, -175.260000, -118.000000)
	registerVal38:setZoom(20.000000)
	registerVal2:addElement(registerVal38)
	registerVal2.vhudmsReticleLineHostUR = registerVal38
	local registerVal39 = CoD.vhud_ms_ModLeft.new(arg0, arg1)
	registerVal39:setLeftRight(true, false, 101.000000, 745.000000)
	registerVal39:setTopBottom(true, false, 30.320000, 106.320000)
	registerVal39:setRGB(0.740000, 0.940000, 0.990000)
	registerVal39:setXRot(-54.000000)
	registerVal39:setYRot(50.000000)
	registerVal39:setZRot(6.000000)
	registerVal39:setZoom(-80.000000)
	registerVal2:addElement(registerVal39)
	registerVal2.vhudmsModLeft = registerVal39
	local registerVal40 = CoD.vhud_ms_ModRight.new(arg0, arg1)
	registerVal40:setLeftRight(false, true, -743.620000, -99.620000)
	registerVal40:setTopBottom(true, false, 41.000000, 117.000000)
	registerVal40:setRGB(0.740000, 0.940000, 0.990000)
	registerVal40:setAlpha(0.000000)
	registerVal40:setXRot(-54.000000)
	registerVal40:setYRot(-62.000000)
	registerVal40:setZRot(-6.000000)
	registerVal40:setZoom(-80.000000)
	registerVal2:addElement(registerVal40)
	registerVal2.vhudmsModRight = registerVal40
	local registerVal41 = CoD.vhud_ms_Timebar.new(arg0, arg1)
	registerVal41:setLeftRight(false, true, -297.620000, -64.000000)
	registerVal41:setTopBottom(true, false, 81.000000, 89.630000)
	registerVal41:setAlpha(0.700000)
	registerVal41:setYRot(-20.000000)
	local function __FUNC_36F6_(arg0)
		registerVal41:setModel(arg0, arg1)
	end

	registerVal41:linkToElementModel(registerVal2, nil, false, __FUNC_36F6_)
	registerVal2:addElement(registerVal41)
	registerVal2.vhudmsTimebar = registerVal41
	local registerVal42 = CoD.vhud_ms_Seating.new(arg0, arg1)
	registerVal42:setLeftRight(false, true, -238.750000, -137.750000)
	registerVal42:setTopBottom(true, false, 92.320000, 198.320000)
	registerVal42:setRGB(0.740000, 0.940000, 0.990000)
	registerVal42:setAlpha(0.900000)
	local function __FUNC_3746_(arg0)
		registerVal42:setModel(arg0, arg1)
	end

	registerVal42:linkToElementModel(registerVal2, nil, false, __FUNC_3746_)
	registerVal2:addElement(registerVal42)
	registerVal2.vhudmsSeating = registerVal42
	local registerVal43 = CoD.vhud_ms_StatusWidgetRight.new(arg0, arg1)
	registerVal43:setLeftRight(false, true, -234.750000, -152.000000)
	registerVal43:setTopBottom(false, false, -16.630000, 145.300000)
	registerVal43:setAlpha(0.900000)
	registerVal43:setYRot(-50.000000)
	local function __FUNC_3796_(arg0)
		registerVal43:setModel(arg0, arg1)
	end

	registerVal43:linkToElementModel(registerVal2, nil, false, __FUNC_3796_)
	registerVal2:addElement(registerVal43)
	registerVal2.vhudmsStatusWidgetRight = registerVal43
	local registerVal44 = CoD.vhud_ms_StatusWidgetLeft.new(arg0, arg1)
	registerVal44:setLeftRight(true, false, 153.210000, 240.210000)
	registerVal44:setTopBottom(false, false, -20.200000, 21.450000)
	registerVal44:setAlpha(0.900000)
	registerVal44:setYRot(50.000000)
	local function __FUNC_37E6_(arg0)
		registerVal44:setModel(arg0, arg1)
	end

	registerVal44:linkToElementModel(registerVal2, nil, false, __FUNC_37E6_)
	registerVal2:addElement(registerVal44)
	registerVal2["vhudmsStatusWidgetLeft"] = registerVal44
	local registerVal45 = CoD["vhud_ms_StatusWidgetBottom"].new(arg0, arg1)
	registerVal45:setLeftRight(false, false, -67.000000, 72.250000)
	registerVal45:setTopBottom(false, false, 155.810000, 185.810000)
	registerVal45:setAlpha(0.700000)
	local function __FUNC_3836_(arg0)
		registerVal45:setModel(arg0, arg1)
	end

	registerVal45:linkToElementModel(registerVal2, nil, false, __FUNC_3836_)
	registerVal2:addElement(registerVal45)
	registerVal2["vhudmsStatusWidgetBottom"] = registerVal45
	local registerVal47 = {}
	local registerVal49 = {}
	local function __FUNC_3886_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal49["DefaultClip"] = __FUNC_3886_
	local function __FUNC_38E6_()
		registerVal2:setupElementClipCounter(42.000000)
		local function __FUNC_5783_(arg0, arg1)
			local function __FUNC_58D8_(arg0, arg1)
				local function __FUNC_5AE5_(arg0, arg1)
					local function __FUNC_5C5F_(arg0, arg1)
						local function __FUNC_5DB4_(arg0, arg1)
							local function __FUNC_5F2F_(arg0, arg1)
								local function __FUNC_60A7_(arg0, arg1)
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
									__FUNC_60A7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_60A7_)
							end

							if arg1.interrupted then
								__FUNC_5F2F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.500000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5F2F_)
						end

						if arg1.interrupted then
							__FUNC_5DB4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5DB4_)
					end

					if arg1.interrupted then
						__FUNC_5C5F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5C5F_)
				end

				if arg1.interrupted then
					__FUNC_5AE5_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 580.000000, false, true, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -268.000000, -211.000000)
				arg0:setTopBottom(false, false, -187.000000, -118.000000)
				arg0:setAlpha(1.000000)
				arg0:setZoom(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5AE5_)
			end

			if arg1.interrupted then
				__FUNC_58D8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_58D8_)
		end

		registerVal4:completeAnimation()
		registerVal2.RingElement0:setLeftRight(false, false, -200.000000, -143.000000)
		registerVal2.RingElement0:setTopBottom(false, false, -138.000000, -69.000000)
		registerVal2.RingElement0:setAlpha(0.000000)
		registerVal2.RingElement0:setZoom(-146.000000)
		__FUNC_5783_(registerVal4, {})
		local function __FUNC_62EB_(arg0, arg1)
			local function __FUNC_6440_(arg0, arg1)
				local function __FUNC_664D_(arg0, arg1)
					local function __FUNC_67C7_(arg0, arg1)
						local function __FUNC_691C_(arg0, arg1)
							local function __FUNC_6A97_(arg0, arg1)
								local function __FUNC_6C0F_(arg0, arg1)
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
									__FUNC_6C0F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6C0F_)
							end

							if arg1.interrupted then
								__FUNC_6A97_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.500000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6A97_)
						end

						if arg1.interrupted then
							__FUNC_691C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_691C_)
					end

					if arg1.interrupted then
						__FUNC_67C7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_67C7_)
				end

				if arg1.interrupted then
					__FUNC_664D_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 580.000000, false, true, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, 211.000000, 268.000000)
				arg0:setTopBottom(false, false, -187.000000, -118.000000)
				arg0:setAlpha(1.000000)
				arg0:setZoom(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_664D_)
			end

			if arg1.interrupted then
				__FUNC_6440_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6440_)
		end

		registerVal5:completeAnimation()
		registerVal2.RingElement1:setLeftRight(false, false, 128.000000, 185.000000)
		registerVal2.RingElement1:setTopBottom(false, false, -138.000000, -69.000000)
		registerVal2.RingElement1:setAlpha(0.000000)
		registerVal2.RingElement1:setZoom(-186.000000)
		__FUNC_62EB_(registerVal5, {})
		local function __FUNC_6E53_(arg0, arg1)
			local function __FUNC_6FA8_(arg0, arg1)
				local function __FUNC_7123_(arg0, arg1)
					local function __FUNC_72D3_(arg0, arg1)
						local function __FUNC_7483_(arg0, arg1)
							local function __FUNC_7633_(arg0, arg1)
								local function __FUNC_77E1_(arg0, arg1)
									local function __FUNC_795B_(arg0, arg1)
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
										__FUNC_795B_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_795B_)
								end

								if arg1.interrupted then
									__FUNC_77E1_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 439.000000, true, false, CoD.TweenType.Back)
								arg0:setLeftRight(false, false, 105.000000, 342.380000)
								arg0:setAlpha(0.300000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_77E1_)
							end

							if arg1.interrupted then
								__FUNC_7633_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(false, false, -73.140000, 164.250000)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7633_)
						end

						if arg1.interrupted then
							__FUNC_7483_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(false, false, 206.820000, 444.200000)
						arg0:setAlpha(0.300000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7483_)
					end

					if arg1.interrupted then
						__FUNC_72D3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, false, 232.020000, 469.400000)
					arg0:setAlpha(0.290000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_72D3_)
				end

				if arg1.interrupted then
					__FUNC_7123_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.030000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7123_)
			end

			if arg1.interrupted then
				__FUNC_6FA8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 879.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6FA8_)
		end

		registerVal6:completeAnimation()
		registerVal2.msBoldLightRight:setLeftRight(false, false, 576.000000, 813.380000)
		registerVal2.msBoldLightRight:setTopBottom(false, false, -257.120000, 265.120000)
		registerVal2.msBoldLightRight:setAlpha(0.000000)
		__FUNC_6E53_(registerVal6, {})
		local function __FUNC_7B7D_(arg0, arg1)
			local function __FUNC_7CD4_(arg0, arg1)
				local function __FUNC_7E4F_(arg0, arg1)
					local function __FUNC_7FFF_(arg0, arg1)
						local function __FUNC_81AF_(arg0, arg1)
							local function __FUNC_835F_(arg0, arg1)
								local function __FUNC_850D_(arg0, arg1)
									local function __FUNC_8687_(arg0, arg1)
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
										__FUNC_8687_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8687_)
								end

								if arg1.interrupted then
									__FUNC_850D_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 439.000000, true, false, CoD.TweenType.Back)
								arg0:setLeftRight(false, false, -341.000000, -103.620000)
								arg0:setAlpha(0.300000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_850D_)
							end

							if arg1.interrupted then
								__FUNC_835F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(false, false, -162.340000, 75.040000)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_835F_)
						end

						if arg1.interrupted then
							__FUNC_81AF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(false, false, -443.110000, -205.730000)
						arg0:setAlpha(0.300000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_81AF_)
					end

					if arg1.interrupted then
						__FUNC_7FFF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, false, -468.390000, -231.010000)
					arg0:setAlpha(0.290000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7FFF_)
				end

				if arg1.interrupted then
					__FUNC_7E4F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.030000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7E4F_)
			end

			if arg1.interrupted then
				__FUNC_7CD4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 879.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7CD4_)
		end

		registerVal7:completeAnimation()
		registerVal2.msBoldLightLeft:setLeftRight(false, false, -813.380000, -576.000000)
		registerVal2.msBoldLightLeft:setTopBottom(false, false, -257.120000, 265.120000)
		registerVal2.msBoldLightLeft:setAlpha(0.000000)
		__FUNC_7B7D_(registerVal7, {})
		local function __FUNC_88A9_(arg0, arg1)
			local function __FUNC_8A00_(arg0, arg1)
				local function __FUNC_8B7B_(arg0, arg1)
					local function __FUNC_8D2B_(arg0, arg1)
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
						__FUNC_8D2B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(false, false, 62.080000, 101.190000)
					arg0:setAlpha(0.300000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8D2B_)
				end

				if arg1.interrupted then
					__FUNC_8B7B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.010000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8B7B_)
			end

			if arg1.interrupted then
				__FUNC_8A00_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 879.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8A00_)
		end

		registerVal8:completeAnimation()
		registerVal2.msDoubleArrowsLower:setLeftRight(false, false, -8.000000, 14.000000)
		registerVal2.msDoubleArrowsLower:setTopBottom(false, false, 21.000000, 60.110000)
		registerVal2.msDoubleArrowsLower:setAlpha(0.000000)
		__FUNC_88A9_(registerVal8, {})
		local function __FUNC_8F4D_(arg0, arg1)
			local function __FUNC_90A4_(arg0, arg1)
				local function __FUNC_921F_(arg0, arg1)
					local function __FUNC_93CF_(arg0, arg1)
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
						__FUNC_93CF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(false, false, -103.430000, -81.310000)
					arg0:setAlpha(0.300000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_93CF_)
				end

				if arg1.interrupted then
					__FUNC_921F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.010000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_921F_)
			end

			if arg1.interrupted then
				__FUNC_90A4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 879.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_90A4_)
		end

		registerVal9:completeAnimation()
		registerVal2.msDoubleArrowsUpper:setLeftRight(false, false, -8.000000, 14.000000)
		registerVal2.msDoubleArrowsUpper:setTopBottom(false, false, -61.180000, -39.060000)
		registerVal2.msDoubleArrowsUpper:setAlpha(0.000000)
		__FUNC_8F4D_(registerVal9, {})
		local function __FUNC_95F1_(arg0, arg1)
			local function __FUNC_9748_(arg0, arg1)
				local function __FUNC_9907_(arg0, arg1)
					local function __FUNC_9AA1_(arg0, arg1)
						local function __FUNC_9C74_(arg0, arg1)
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
							__FUNC_9C74_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 169.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(false, false, -211.250000, 217.250000)
						arg0:setZRot(13.130000)
						arg0:setZoom(120.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9C74_)
					end

					if arg1.interrupted then
						__FUNC_9AA1_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.200000)
					arg0:setZRot(45.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9AA1_)
				end

				if arg1.interrupted then
					__FUNC_9907_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.130000)
				arg0:setZRot(28.640000)
				arg0:setZoom(40.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9907_)
			end

			if arg1.interrupted then
				__FUNC_9748_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1120.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9748_)
		end

		registerVal10:completeAnimation()
		registerVal2.msCenterInnerRing:setLeftRight(false, false, -210.810000, 217.690000)
		registerVal2.msCenterInnerRing:setTopBottom(false, false, -217.000000, 211.500000)
		registerVal2.msCenterInnerRing:setAlpha(0.000000)
		registerVal2.msCenterInnerRing:setZRot(0.000000)
		registerVal2.msCenterInnerRing:setZoom(113.000000)
		__FUNC_95F1_(registerVal10, {})
		local function __FUNC_9ED8_(arg0, arg1)
			local function __FUNC_A030_(arg0, arg1)
				local function __FUNC_A1AB_(arg0, arg1)
					local function __FUNC_A323_(arg0, arg1)
						local function __FUNC_A49B_(arg0, arg1)
							local function __FUNC_A613_(arg0, arg1)
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
								__FUNC_A613_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A613_)
						end

						if arg1.interrupted then
							__FUNC_A49B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A49B_)
					end

					if arg1.interrupted then
						__FUNC_A323_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A323_)
				end

				if arg1.interrupted then
					__FUNC_A1AB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A1AB_)
			end

			if arg1.interrupted then
				__FUNC_A030_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1700.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A030_)
		end

		registerVal11:completeAnimation()
		registerVal2.msCenterPoint:setLeftRight(false, false, -5.000000, 8.000000)
		registerVal2.msCenterPoint:setTopBottom(false, false, -7.000000, 6.000000)
		registerVal2.msCenterPoint:setAlpha(0.000000)
		__FUNC_9ED8_(registerVal11, {})
		local function __FUNC_A835_(arg0, arg1)
			local function __FUNC_A98C_(arg0, arg1)
				local function __FUNC_AB07_(arg0, arg1)
					local function __FUNC_AC7F_(arg0, arg1)
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
						__FUNC_AC7F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AC7F_)
				end

				if arg1.interrupted then
					__FUNC_AB07_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.300000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AB07_)
			end

			if arg1.interrupted then
				__FUNC_A98C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 879.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A98C_)
		end

		registerVal12:completeAnimation()
		registerVal2.msMidDotsR:setLeftRight(false, false, 259.790000, 336.350000)
		registerVal2.msMidDotsR:setTopBottom(false, false, -200.260000, 205.500000)
		registerVal2.msMidDotsR:setAlpha(0.000000)
		__FUNC_A835_(registerVal12, {})
		local function __FUNC_AEA1_(arg0, arg1)
			local function __FUNC_AFF8_(arg0, arg1)
				local function __FUNC_B173_(arg0, arg1)
					local function __FUNC_B2EB_(arg0, arg1)
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
						__FUNC_B2EB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B2EB_)
				end

				if arg1.interrupted then
					__FUNC_B173_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.300000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B173_)
			end

			if arg1.interrupted then
				__FUNC_AFF8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 879.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AFF8_)
		end

		registerVal13:completeAnimation()
		registerVal2.msMidDotsL:setLeftRight(false, false, -335.060000, -258.500000)
		registerVal2.msMidDotsL:setTopBottom(false, false, -208.260000, 197.500000)
		registerVal2.msMidDotsL:setAlpha(0.000000)
		__FUNC_AEA1_(registerVal13, {})
		local function __FUNC_B50D_(arg0, arg1)
			local function __FUNC_B664_(arg0, arg1)
				local function __FUNC_B7F4_(arg0, arg1)
					local function __FUNC_B9A7_(arg0, arg1)
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
						__FUNC_B9A7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, false, 287.900000, 365.020000)
					arg0:setAlpha(0.200000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B9A7_)
				end

				if arg1.interrupted then
					__FUNC_B7F4_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, 272.070000, 349.190000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B7F4_)
			end

			if arg1.interrupted then
				__FUNC_B664_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B664_)
		end

		registerVal14:completeAnimation()
		registerVal2.msOutsideArrowBlurR:setLeftRight(false, false, 256.230000, 333.350000)
		registerVal2.msOutsideArrowBlurR:setTopBottom(false, false, -39.060000, 38.060000)
		registerVal2.msOutsideArrowBlurR:setAlpha(0.000000)
		__FUNC_B50D_(registerVal14, {})
		local function __FUNC_BBC9_(arg0, arg1)
			local function __FUNC_BD20_(arg0, arg1)
				local function __FUNC_BEB0_(arg0, arg1)
					local function __FUNC_C040_(arg0, arg1)
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
						__FUNC_C040_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, false, -329.600000, -252.480000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C040_)
				end

				if arg1.interrupted then
					__FUNC_BEB0_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -295.230000, -218.110000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BEB0_)
			end

			if arg1.interrupted then
				__FUNC_BD20_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BD20_)
		end

		registerVal15:completeAnimation()
		registerVal2.msOutsideArrowBlurL:setLeftRight(false, false, -260.870000, -183.750000)
		registerVal2.msOutsideArrowBlurL:setTopBottom(false, false, -39.060000, 38.060000)
		registerVal2.msOutsideArrowBlurL:setAlpha(0.000000)
		__FUNC_BBC9_(registerVal15, {})
		local function __FUNC_C265_(arg0, arg1)
			local function __FUNC_C3BC_(arg0, arg1)
				local function __FUNC_C54C_(arg0, arg1)
					local function __FUNC_C6FF_(arg0, arg1)
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
						__FUNC_C6FF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, false, 210.390000, 243.720000)
					arg0:setAlpha(0.200000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C6FF_)
				end

				if arg1.interrupted then
					__FUNC_C54C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, 140.540000, 173.880000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C54C_)
			end

			if arg1.interrupted then
				__FUNC_C3BC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C3BC_)
		end

		registerVal16:completeAnimation()
		registerVal2.msOutsideArrowR:setLeftRight(false, false, 77.050000, 110.380000)
		registerVal2.msOutsideArrowR:setTopBottom(false, false, -26.000000, 24.000000)
		registerVal2.msOutsideArrowR:setAlpha(0.000000)
		__FUNC_C265_(registerVal16, {})
		local function __FUNC_C921_(arg0, arg1)
			local function __FUNC_CA78_(arg0, arg1)
				local function __FUNC_CC08_(arg0, arg1)
					local function __FUNC_CDBB_(arg0, arg1)
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
						__FUNC_CDBB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, false, -243.950000, -210.620000)
					arg0:setAlpha(0.200000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CDBB_)
				end

				if arg1.interrupted then
					__FUNC_CC08_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -172.940000, -139.610000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CC08_)
			end

			if arg1.interrupted then
				__FUNC_CA78_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CA78_)
		end

		registerVal17:completeAnimation()
		registerVal2.msOutsideArrowL:setLeftRight(false, false, -108.380000, -75.050000)
		registerVal2.msOutsideArrowL:setTopBottom(false, false, -29.000000, 21.000000)
		registerVal2.msOutsideArrowL:setAlpha(0.000000)
		__FUNC_C921_(registerVal17, {})
		local function __FUNC_CFDD_(arg0, arg1)
			local function __FUNC_D134_(arg0, arg1)
				local function __FUNC_D2AF_(arg0, arg1)
					local function __FUNC_D497_(arg0, arg1)
						local function __FUNC_D65A_(arg0, arg1)
							local function __FUNC_D7B0_(arg0, arg1)
								local function __FUNC_D92B_(arg0, arg1)
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
									__FUNC_D92B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D92B_)
							end

							if arg1.interrupted then
								__FUNC_D7B0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D7B0_)
						end

						if arg1.interrupted then
							__FUNC_D65A_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 639.000000, true, false, CoD.TweenType.Back)
						arg0:setLeftRight(false, true, -427.210000, 53.790000)
						arg0:setTopBottom(false, true, -140.500000, 4.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D65A_)
					end

					if arg1.interrupted then
						__FUNC_D497_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, true, -438.790000, 42.210000)
					arg0:setTopBottom(false, true, -148.820000, -3.820000)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D497_)
				end

				if arg1.interrupted then
					__FUNC_D2AF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.080000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D2AF_)
			end

			if arg1.interrupted then
				__FUNC_D134_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 879.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D134_)
		end

		registerVal18:completeAnimation()
		registerVal2.vhudmsFrameBottomRight:setLeftRight(false, true, -480.790000, 0.210000)
		registerVal2.vhudmsFrameBottomRight:setTopBottom(false, true, -179.000000, -34.000000)
		registerVal2.vhudmsFrameBottomRight:setAlpha(0.000000)
		__FUNC_CFDD_(registerVal18, {})
		local function __FUNC_DB4D_(arg0, arg1)
			local function __FUNC_DCA4_(arg0, arg1)
				local function __FUNC_DE1F_(arg0, arg1)
					local function __FUNC_E007_(arg0, arg1)
						local function __FUNC_E1CA_(arg0, arg1)
							local function __FUNC_E320_(arg0, arg1)
								local function __FUNC_E49B_(arg0, arg1)
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
									__FUNC_E49B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E49B_)
							end

							if arg1.interrupted then
								__FUNC_E320_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E320_)
						end

						if arg1.interrupted then
							__FUNC_E1CA_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 639.000000, true, false, CoD.TweenType.Back)
						arg0:setLeftRight(true, false, -41.680000, 439.320000)
						arg0:setTopBottom(false, true, -140.500000, 4.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E1CA_)
					end

					if arg1.interrupted then
						__FUNC_E007_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, -32.710000, 448.290000)
					arg0:setTopBottom(false, true, -148.820000, -3.820000)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E007_)
				end

				if arg1.interrupted then
					__FUNC_DE1F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.080000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DE1F_)
			end

			if arg1.interrupted then
				__FUNC_DCA4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 879.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DCA4_)
		end

		registerVal19:completeAnimation()
		registerVal2.vhudmsFrameBottomLeft0:setLeftRight(true, false, -0.170000, 480.830000)
		registerVal2.vhudmsFrameBottomLeft0:setTopBottom(false, true, -179.000000, -34.000000)
		registerVal2.vhudmsFrameBottomLeft0:setAlpha(0.000000)
		__FUNC_DB4D_(registerVal19, {})
		local function __FUNC_E6BD_(arg0, arg1)
			local function __FUNC_E814_(arg0, arg1)
				local function __FUNC_E9DC_(arg0, arg1)
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
					__FUNC_E9DC_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -248.510000, 270.560000)
				arg0:setTopBottom(true, false, 80.130000, 144.010000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E9DC_)
			end

			if arg1.interrupted then
				__FUNC_E814_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E814_)
		end

		registerVal20:completeAnimation()
		registerVal2.vhudmsFrameTopCenter:setLeftRight(false, false, -248.530000, 270.530000)
		registerVal2.vhudmsFrameTopCenter:setTopBottom(true, false, 94.670000, 158.560000)
		registerVal2.vhudmsFrameTopCenter:setAlpha(0.000000)
		__FUNC_E6BD_(registerVal20, {})
		local function __FUNC_EBFF_(arg0, arg1)
			local function __FUNC_ED54_(arg0, arg1)
				local function __FUNC_EEE4_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 639.000000, true, false, CoD.TweenType.Back)
					end
					arg0:setLeftRight(false, false, -245.500000, 273.500000)
					arg0:setTopBottom(false, true, -133.500000, -69.500000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_EEE4_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(false, true, -138.990000, -74.990000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EEE4_)
			end

			if arg1.interrupted then
				__FUNC_ED54_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ED54_)
		end

		registerVal21:completeAnimation()
		registerVal2.vhudmsFrameBottomCenter:setLeftRight(false, false, -245.500000, 273.500000)
		registerVal2.vhudmsFrameBottomCenter:setTopBottom(false, true, -158.880000, -94.880000)
		registerVal2.vhudmsFrameBottomCenter:setAlpha(0.000000)
		__FUNC_EBFF_(registerVal21, {})
		local function __FUNC_F107_(arg0, arg1)
			local function __FUNC_F25C_(arg0, arg1)
				local function __FUNC_F3D7_(arg0, arg1)
					local function __FUNC_F5BF_(arg0, arg1)
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
						__FUNC_F5BF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, -33.580000, 447.210000)
					arg0:setTopBottom(true, false, 5.000000, 150.000000)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F5BF_)
				end

				if arg1.interrupted then
					__FUNC_F3D7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.080000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F3D7_)
			end

			if arg1.interrupted then
				__FUNC_F25C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 879.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F25C_)
		end

		registerVal22:completeAnimation()
		registerVal2.vhudmsFrameTopLeft0:setLeftRight(true, false, -0.170000, 480.620000)
		registerVal2.vhudmsFrameTopLeft0:setTopBottom(true, false, 30.380000, 175.380000)
		registerVal2.vhudmsFrameTopLeft0:setAlpha(0.000000)
		__FUNC_F107_(registerVal22, {})
		local function __FUNC_F7DF_(arg0, arg1)
			local function __FUNC_F934_(arg0, arg1)
				local function __FUNC_FAAF_(arg0, arg1)
					local function __FUNC_FC97_(arg0, arg1)
						local function __FUNC_FE5A_(arg0, arg1)
							local function __FUNC_1000B_(arg0, arg1)
								local function __FUNC_101BB_(arg0, arg1)
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
									__FUNC_101BB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(false, true, -427.050000, 53.740000)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_101BB_)
							end

							if arg1.interrupted then
								__FUNC_1000B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(false, true, -427.030000, 53.760000)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1000B_)
						end

						if arg1.interrupted then
							__FUNC_FE5A_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 639.000000, true, false, CoD.TweenType.Back)
						arg0:setLeftRight(false, true, -427.000000, 53.790000)
						arg0:setTopBottom(true, false, -2.000000, 143.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FE5A_)
					end

					if arg1.interrupted then
						__FUNC_FC97_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, true, -438.630000, 42.160000)
					arg0:setTopBottom(true, false, 5.000000, 150.000000)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FC97_)
				end

				if arg1.interrupted then
					__FUNC_FAAF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.080000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FAAF_)
			end

			if arg1.interrupted then
				__FUNC_F934_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 879.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F934_)
		end

		registerVal23:completeAnimation()
		registerVal2.vhudmsFrameTopRight:setLeftRight(false, true, -480.790000, 0.000000)
		registerVal2.vhudmsFrameTopRight:setTopBottom(true, false, 30.380000, 175.380000)
		registerVal2.vhudmsFrameTopRight:setAlpha(0.000000)
		__FUNC_F7DF_(registerVal23, {})
		local function __FUNC_103DD_(arg0, arg1)
			local function __FUNC_10534_(arg0, arg1)
				local function __FUNC_106AF_(arg0, arg1)
					local function __FUNC_10874_(arg0, arg1)
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
						__FUNC_10874_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, false, -505.330000, -354.000000)
					arg0:setTopBottom(false, false, -209.770000, 220.330000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10874_)
				end

				if arg1.interrupted then
					__FUNC_106AF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_106AF_)
			end

			if arg1.interrupted then
				__FUNC_10534_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 889.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10534_)
		end

		registerVal24:completeAnimation()
		registerVal2.vhudmsOutsideHashRing0:setLeftRight(false, false, -475.330000, -324.000000)
		registerVal2.vhudmsOutsideHashRing0:setTopBottom(false, false, -209.600000, 220.500000)
		registerVal2.vhudmsOutsideHashRing0:setAlpha(0.000000)
		__FUNC_103DD_(registerVal24, {})
		local function __FUNC_10A99_(arg0, arg1)
			local function __FUNC_10BF0_(arg0, arg1)
				local function __FUNC_10D6B_(arg0, arg1)
					local function __FUNC_10EF8_(arg0, arg1)
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
						__FUNC_10EF8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, false, 350.540000, 576.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10EF8_)
				end

				if arg1.interrupted then
					__FUNC_10D6B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10D6B_)
			end

			if arg1.interrupted then
				__FUNC_10BF0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 889.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10BF0_)
		end

		registerVal25:completeAnimation()
		registerVal2.vhudmsHashRotateRight:setLeftRight(false, false, 318.130000, 543.590000)
		registerVal2.vhudmsHashRotateRight:setTopBottom(false, false, -241.280000, 249.280000)
		registerVal2.vhudmsHashRotateRight:setAlpha(0.000000)
		__FUNC_10A99_(registerVal25, {})
		local function __FUNC_1111D_(arg0, arg1)
			local function __FUNC_11274_(arg0, arg1)
				local function __FUNC_11404_(arg0, arg1)
					local function __FUNC_115B7_(arg0, arg1)
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
						__FUNC_115B7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 179.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, false, 179.520000, 298.780000)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_115B7_)
				end

				if arg1.interrupted then
					__FUNC_11404_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, 173.660000, 292.920000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11404_)
			end

			if arg1.interrupted then
				__FUNC_11274_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11274_)
		end

		registerVal26:completeAnimation()
		registerVal2.vhudmsGridDotsHostR:setLeftRight(false, false, 166.500000, 285.760000)
		registerVal2.vhudmsGridDotsHostR:setTopBottom(false, false, -61.130000, 58.130000)
		registerVal2.vhudmsGridDotsHostR:setAlpha(0.000000)
		__FUNC_1111D_(registerVal26, {})
		local function __FUNC_117D9_(arg0, arg1)
			local function __FUNC_11930_(arg0, arg1)
				local function __FUNC_11AC0_(arg0, arg1)
					local function __FUNC_11C73_(arg0, arg1)
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
						__FUNC_11C73_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 179.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, false, -292.730000, -173.470000)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11C73_)
				end

				if arg1.interrupted then
					__FUNC_11AC0_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -287.870000, -168.610000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11AC0_)
			end

			if arg1.interrupted then
				__FUNC_11930_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11930_)
		end

		registerVal27:completeAnimation()
		registerVal2.vhudmsGridDotsHostR0:setLeftRight(false, false, -281.940000, -162.680000)
		registerVal2.vhudmsGridDotsHostR0:setTopBottom(false, false, -61.130000, 58.130000)
		registerVal2.vhudmsGridDotsHostR0:setAlpha(0.000000)
		__FUNC_117D9_(registerVal27, {})
		local function __FUNC_11E95_(arg0, arg1)
			local function __FUNC_11FEC_(arg0, arg1)
				local function __FUNC_12167_(arg0, arg1)
					local function __FUNC_12317_(arg0, arg1)
						local function __FUNC_124C7_(arg0, arg1)
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
							__FUNC_124C7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(false, true, -176.350000, -132.130000)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_124C7_)
					end

					if arg1.interrupted then
						__FUNC_12317_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, true, -226.150000, -181.940000)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12317_)
				end

				if arg1.interrupted then
					__FUNC_12167_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.080000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12167_)
			end

			if arg1.interrupted then
				__FUNC_11FEC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 879.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11FEC_)
		end

		registerVal28:completeAnimation()
		registerVal2.vhudmsOutsideLine:setLeftRight(false, true, -256.590000, -212.380000)
		registerVal2.vhudmsOutsideLine:setTopBottom(false, false, -9.000000, 5.740000)
		registerVal2.vhudmsOutsideLine:setAlpha(0.000000)
		__FUNC_11E95_(registerVal28, {})
		local function __FUNC_126E9_(arg0, arg1)
			local function __FUNC_12840_(arg0, arg1)
				local function __FUNC_129BB_(arg0, arg1)
					local function __FUNC_12B6B_(arg0, arg1)
						local function __FUNC_12D1B_(arg0, arg1)
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
							__FUNC_12D1B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 136.690000, 180.900000)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12D1B_)
					end

					if arg1.interrupted then
						__FUNC_12B6B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 182.080000, 226.290000)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12B6B_)
				end

				if arg1.interrupted then
					__FUNC_129BB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.080000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_129BB_)
			end

			if arg1.interrupted then
				__FUNC_12840_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 879.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12840_)
		end

		registerVal29:completeAnimation()
		registerVal2.vhudmsOutsideLine0:setLeftRight(true, false, 209.810000, 254.020000)
		registerVal2.vhudmsOutsideLine0:setTopBottom(false, false, -9.000000, 5.740000)
		registerVal2.vhudmsOutsideLine0:setAlpha(0.000000)
		__FUNC_126E9_(registerVal29, {})
		local function __FUNC_12F3D_(arg0, arg1)
			local function __FUNC_13094_(arg0, arg1)
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

			if arg1.interrupted then
				__FUNC_13094_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2039.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13094_)
		end

		registerVal30:completeAnimation()
		registerVal2.vhudmsLockOnNotification:setAlpha(0.000000)
		__FUNC_12F3D_(registerVal30, {})
		local function __FUNC_13249_(arg0, arg1)
			local function __FUNC_133A0_(arg0, arg1)
				local function __FUNC_13553_(arg0, arg1)
					local function __FUNC_136CB_(arg0, arg1)
						local function __FUNC_13843_(arg0, arg1)
							local function __FUNC_139BB_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(false, false, -14.750000, 17.750000)
								arg0:setTopBottom(false, false, -115.880000, -26.500000)
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_139BB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_139BB_)
						end

						if arg1.interrupted then
							__FUNC_13843_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13843_)
					end

					if arg1.interrupted then
						__FUNC_136CB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_136CB_)
				end

				if arg1.interrupted then
					__FUNC_13553_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(false, false, -115.880000, -26.500000)
				arg0:setAlpha(0.700000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13553_)
			end

			if arg1.interrupted then
				__FUNC_133A0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1679.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_133A0_)
		end

		registerVal31:completeAnimation()
		registerVal2.msCenterDiamondT:setLeftRight(false, false, -14.750000, 17.750000)
		registerVal2.msCenterDiamondT:setTopBottom(false, false, -241.870000, -152.500000)
		registerVal2.msCenterDiamondT:setAlpha(0.000000)
		__FUNC_13249_(registerVal31, {})
		local function __FUNC_13BDD_(arg0, arg1)
			local function __FUNC_13D34_(arg0, arg1)
				local function __FUNC_13EE7_(arg0, arg1)
					local function __FUNC_1405F_(arg0, arg1)
						local function __FUNC_141D7_(arg0, arg1)
							local function __FUNC_1434F_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(false, false, -13.750000, 18.750000)
								arg0:setTopBottom(false, false, 24.180000, 113.550000)
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_1434F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1434F_)
						end

						if arg1.interrupted then
							__FUNC_141D7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_141D7_)
					end

					if arg1.interrupted then
						__FUNC_1405F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1405F_)
				end

				if arg1.interrupted then
					__FUNC_13EE7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(false, false, 24.180000, 113.550000)
				arg0:setAlpha(0.700000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13EE7_)
			end

			if arg1.interrupted then
				__FUNC_13D34_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1679.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13D34_)
		end

		registerVal32:completeAnimation()
		registerVal2.msCenterDiamondB:setLeftRight(false, false, -13.750000, 18.750000)
		registerVal2.msCenterDiamondB:setTopBottom(false, false, 159.900000, 249.280000)
		registerVal2.msCenterDiamondB:setAlpha(0.000000)
		__FUNC_13BDD_(registerVal32, {})
		local function __FUNC_14571_(arg0, arg1)
			local function __FUNC_146C8_(arg0, arg1)
				local function __FUNC_148B3_(arg0, arg1)
					local function __FUNC_14A2B_(arg0, arg1)
						local function __FUNC_14BA3_(arg0, arg1)
							local function __FUNC_14D1B_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(false, false, -74.430000, -25.430000)
								arg0:setTopBottom(false, false, -17.630000, 15.040000)
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_14D1B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14D1B_)
						end

						if arg1.interrupted then
							__FUNC_14BA3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14BA3_)
					end

					if arg1.interrupted then
						__FUNC_14A2B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14A2B_)
				end

				if arg1.interrupted then
					__FUNC_148B3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -74.430000, -25.430000)
				arg0:setTopBottom(false, false, -17.630000, 15.040000)
				arg0:setAlpha(0.700000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_148B3_)
			end

			if arg1.interrupted then
				__FUNC_146C8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1679.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_146C8_)
		end

		registerVal33:completeAnimation()
		registerVal2.msCenterDiamondSideL:setLeftRight(false, false, -254.680000, -205.680000)
		registerVal2.msCenterDiamondSideL:setTopBottom(false, false, -17.830000, 14.830000)
		registerVal2.msCenterDiamondSideL:setAlpha(0.000000)
		__FUNC_14571_(registerVal33, {})
		local function __FUNC_14F3D_(arg0, arg1)
			local function __FUNC_15094_(arg0, arg1)
				local function __FUNC_1527F_(arg0, arg1)
					local function __FUNC_153F7_(arg0, arg1)
						local function __FUNC_1556F_(arg0, arg1)
							local function __FUNC_156E7_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(false, false, 28.070000, 77.070000)
								arg0:setTopBottom(false, false, -16.630000, 16.040000)
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_156E7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_156E7_)
						end

						if arg1.interrupted then
							__FUNC_1556F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1556F_)
					end

					if arg1.interrupted then
						__FUNC_153F7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_153F7_)
				end

				if arg1.interrupted then
					__FUNC_1527F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 80.000000, true, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, 28.070000, 77.070000)
				arg0:setTopBottom(false, false, -16.630000, 16.040000)
				arg0:setAlpha(0.700000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1527F_)
			end

			if arg1.interrupted then
				__FUNC_15094_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1679.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15094_)
		end

		registerVal34:completeAnimation()
		registerVal2.msCenterDiamondSideR:setLeftRight(false, false, 202.530000, 251.530000)
		registerVal2.msCenterDiamondSideR:setTopBottom(false, false, -16.830000, 15.830000)
		registerVal2.msCenterDiamondSideR:setAlpha(0.000000)
		__FUNC_14F3D_(registerVal34, {})
		local function __FUNC_15909_(arg0, arg1)
			local function __FUNC_15A60_(arg0, arg1)
				local function __FUNC_15C49_(arg0, arg1)
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
					__FUNC_15C49_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 480.000000, true, false, CoD.TweenType.Back)
				arg0:setLeftRight(false, false, -341.000000, -185.570000)
				arg0:setTopBottom(false, false, 111.740000, 169.000000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15C49_)
			end

			if arg1.interrupted then
				__FUNC_15A60_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1279.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15A60_)
		end

		registerVal35:completeAnimation()
		registerVal2.vhudmsReticleLineHostLL:setLeftRight(false, false, -366.240000, -210.810000)
		registerVal2.vhudmsReticleLineHostLL:setTopBottom(false, false, 118.310000, 175.570000)
		registerVal2.vhudmsReticleLineHostLL:setAlpha(0.000000)
		__FUNC_15909_(registerVal35, {})
		local function __FUNC_15E6D_(arg0, arg1)
			local function __FUNC_15FC4_(arg0, arg1)
				local function __FUNC_161AD_(arg0, arg1)
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
					__FUNC_161AD_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 480.000000, true, false, CoD.TweenType.Back)
				arg0:setLeftRight(false, false, 176.420000, 331.850000)
				arg0:setTopBottom(false, false, 111.740000, 169.000000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_161AD_)
			end

			if arg1.interrupted then
				__FUNC_15FC4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1279.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15FC4_)
		end

		registerVal36:completeAnimation()
		registerVal2.vhudmsReticleLineHostLR:setLeftRight(false, false, 210.530000, 365.960000)
		registerVal2.vhudmsReticleLineHostLR:setTopBottom(false, false, 118.310000, 175.570000)
		registerVal2.vhudmsReticleLineHostLR:setAlpha(0.000000)
		__FUNC_15E6D_(registerVal36, {})
		local function __FUNC_163D1_(arg0, arg1)
			local function __FUNC_16528_(arg0, arg1)
				local function __FUNC_16711_(arg0, arg1)
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
					__FUNC_16711_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 480.000000, true, false, CoD.TweenType.Back)
				arg0:setLeftRight(false, false, -336.210000, -180.790000)
				arg0:setTopBottom(false, false, -172.590000, -115.330000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16711_)
			end

			if arg1.interrupted then
				__FUNC_16528_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1279.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16528_)
		end

		registerVal37:completeAnimation()
		registerVal2.vhudmsReticleLineHostUL:setLeftRight(false, false, -355.620000, -200.190000)
		registerVal2.vhudmsReticleLineHostUL:setTopBottom(false, false, -182.730000, -125.470000)
		registerVal2.vhudmsReticleLineHostUL:setAlpha(0.000000)
		__FUNC_163D1_(registerVal37, {})
		local function __FUNC_16935_(arg0, arg1)
			local function __FUNC_16A8C_(arg0, arg1)
				local function __FUNC_16C75_(arg0, arg1)
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
					__FUNC_16C75_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 480.000000, true, false, CoD.TweenType.Back)
				arg0:setLeftRight(false, false, 176.420000, 331.850000)
				arg0:setTopBottom(false, false, -175.260000, -118.000000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16C75_)
			end

			if arg1.interrupted then
				__FUNC_16A8C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1279.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16A8C_)
		end

		registerVal38:completeAnimation()
		registerVal2.vhudmsReticleLineHostUR:setLeftRight(false, false, 212.150000, 367.580000)
		registerVal2.vhudmsReticleLineHostUR:setTopBottom(false, false, -178.890000, -121.630000)
		registerVal2.vhudmsReticleLineHostUR:setAlpha(0.000000)
		__FUNC_16935_(registerVal38, {})
		local function __FUNC_16E99_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 759.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 101.000000, 745.000000)
			arg0:setTopBottom(true, false, 30.320000, 106.320000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal39:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
		registerVal39:setLeftRight(true, false, 4.000000, 648.000000)
		registerVal39:setTopBottom(true, false, 29.320000, 105.320000)
		registerVal39:setAlpha(0.000000)
		registerVal39:registerEventHandler("transition_complete_keyframe", __FUNC_16E99_)
		local function __FUNC_170BD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 759.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, true, -744.000000, -100.000000)
			arg0:setTopBottom(true, false, 41.000000, 117.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal40:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
		registerVal40:setLeftRight(false, true, -645.000000, -1.000000)
		registerVal40:setTopBottom(true, false, 41.000000, 117.000000)
		registerVal40:setAlpha(0.000000)
		registerVal40:registerEventHandler("transition_complete_keyframe", __FUNC_170BD_)
		local function __FUNC_172E1_(arg0, arg1)
			local function __FUNC_17438_(arg0, arg1)
				local function __FUNC_175B3_(arg0, arg1)
					local function __FUNC_17708_(arg0, arg1)
						local function __FUNC_17883_(arg0, arg1)
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
							__FUNC_17883_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.150000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17883_)
					end

					if arg1.interrupted then
						__FUNC_17708_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17708_)
				end

				if arg1.interrupted then
					__FUNC_175B3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.700000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_175B3_)
			end

			if arg1.interrupted then
				__FUNC_17438_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1279.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17438_)
		end

		registerVal41:completeAnimation()
		registerVal2.vhudmsTimebar:setAlpha(0.000000)
		__FUNC_172E1_(registerVal41, {})
		local function __FUNC_17A35_(arg0, arg1)
			local function __FUNC_17B8C_(arg0, arg1)
				local function __FUNC_17D07_(arg0, arg1)
					local function __FUNC_17E7F_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.900000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_17E7F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.150000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17E7F_)
				end

				if arg1.interrupted then
					__FUNC_17D07_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.750000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17D07_)
			end

			if arg1.interrupted then
				__FUNC_17B8C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1669.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17B8C_)
		end

		registerVal42:completeAnimation()
		registerVal2.vhudmsSeating:setAlpha(0.000000)
		__FUNC_17A35_(registerVal42, {})
		local function __FUNC_18031_(arg0, arg1)
			local function __FUNC_18188_(arg0, arg1)
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
				__FUNC_18188_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1960.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18188_)
		end

		registerVal43:completeAnimation()
		registerVal2.vhudmsStatusWidgetRight:setAlpha(0.000000)
		__FUNC_18031_(registerVal43, {})
		local function __FUNC_1833D_(arg0, arg1)
			local function __FUNC_18494_(arg0, arg1)
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
				__FUNC_18494_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1960.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18494_)
		end

		registerVal44:completeAnimation()
		registerVal2.vhudmsStatusWidgetLeft:setAlpha(0.000000)
		__FUNC_1833D_(registerVal44, {})
		local function __FUNC_18649_(arg0, arg1)
			local function __FUNC_187A0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.700000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_187A0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2000.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_187A0_)
		end

		registerVal45:completeAnimation()
		registerVal2.vhudmsStatusWidgetBottom:setAlpha(0.000000)
		__FUNC_18649_(registerVal45, {})
	end

	registerVal49["StartUp"] = __FUNC_38E6_
	local function __FUNC_18955_()
		registerVal2:setupElementClipCounter(42.000000)
		local function __FUNC_1A8CA_(arg0, arg1)
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
		__FUNC_1A8CA_(registerVal4, {})
		local function __FUNC_1AB0F_(arg0, arg1)
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
		__FUNC_1AB0F_(registerVal5, {})
		local function __FUNC_1AD53_(arg0, arg1)
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
		__FUNC_1AD53_(registerVal6, {})
		local function __FUNC_1AF97_(arg0, arg1)
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
		__FUNC_1AF97_(registerVal7, {})
		local function __FUNC_1B1DB_(arg0, arg1)
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
		__FUNC_1B1DB_(registerVal8, {})
		local function __FUNC_1B3FD_(arg0, arg1)
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
		__FUNC_1B3FD_(registerVal9, {})
		local function __FUNC_1B621_(arg0, arg1)
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
		__FUNC_1B621_(registerVal10, {})
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
		local function __FUNC_1B889_(arg0, arg1)
			local function __FUNC_1BA18_(arg0, arg1)
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
				__FUNC_1BA18_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, 351.060000, 428.180000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BA18_)
		end

		registerVal14:completeAnimation()
		registerVal2.msOutsideArrowBlurR:setLeftRight(false, false, 318.130000, 395.250000)
		registerVal2.msOutsideArrowBlurR:setTopBottom(false, false, -39.060000, 38.060000)
		registerVal2.msOutsideArrowBlurR:setAlpha(0.200000)
		__FUNC_1B889_(registerVal14, {})
		local function __FUNC_1BC3D_(arg0, arg1)
			local function __FUNC_1BDCC_(arg0, arg1)
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
				__FUNC_1BDCC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -437.170000, -360.050000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BDCC_)
		end

		registerVal15:completeAnimation()
		registerVal2.msOutsideArrowBlurL:setLeftRight(false, false, -395.200000, -318.080000)
		registerVal2.msOutsideArrowBlurL:setTopBottom(false, false, -39.060000, 38.060000)
		registerVal2.msOutsideArrowBlurL:setAlpha(0.200000)
		__FUNC_1BC3D_(registerVal15, {})
		local function __FUNC_1BFF1_(arg0, arg1)
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
		__FUNC_1BFF1_(registerVal16, {})
		local function __FUNC_1C215_(arg0, arg1)
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
		__FUNC_1C215_(registerVal17, {})
		local function __FUNC_1C439_(arg0, arg1)
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
		__FUNC_1C439_(registerVal18, {})
		local function __FUNC_1C65D_(arg0, arg1)
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
		__FUNC_1C65D_(registerVal19, {})
		local function __FUNC_1C881_(arg0, arg1)
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
		__FUNC_1C881_(registerVal20, {})
		local function __FUNC_1CAA5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -245.500000, 273.500000)
			arg0:setTopBottom(false, true, -100.000000, -36.000000)
			arg0:setAlpha(0.600000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal21:completeAnimation()
		registerVal2.vhudmsFrameBottomCenter:setLeftRight(false, false, -246.500000, 272.500000)
		registerVal2.vhudmsFrameBottomCenter:setTopBottom(false, true, -138.500000, -74.500000)
		registerVal2.vhudmsFrameBottomCenter:setAlpha(1.000000)
		__FUNC_1CAA5_(registerVal21, {})
		local function __FUNC_1CCC9_(arg0, arg1)
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
		__FUNC_1CCC9_(registerVal22, {})
		local function __FUNC_1CEED_(arg0, arg1)
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
		__FUNC_1CEED_(registerVal23, {})
		local function __FUNC_1D111_(arg0, arg1)
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
		__FUNC_1D111_(registerVal24, {})
		local function __FUNC_1D335_(arg0, arg1)
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
		__FUNC_1D335_(registerVal25, {})
		local function __FUNC_1D536_(arg0, arg1)
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
		__FUNC_1D536_(registerVal26, {})
		local function __FUNC_1D759_(arg0, arg1)
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
		__FUNC_1D759_(registerVal27, {})
		local function __FUNC_1D97D_(arg0, arg1)
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
		__FUNC_1D97D_(registerVal28, {})
		local function __FUNC_1DBA1_(arg0, arg1)
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
		__FUNC_1DBA1_(registerVal29, {})
		local function __FUNC_1DDC5_(arg0, arg1)
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
		__FUNC_1DDC5_(registerVal30, {})
		local function __FUNC_1DFE9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -14.750000, 17.750000)
			arg0:setTopBottom(false, false, -100.380000, -11.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal31:completeAnimation()
		registerVal2.msCenterDiamondT:setLeftRight(false, false, -14.750000, 17.750000)
		registerVal2.msCenterDiamondT:setTopBottom(false, false, -115.870000, -26.500000)
		registerVal2.msCenterDiamondT:setAlpha(1.000000)
		__FUNC_1DFE9_(registerVal31, {})
		local function __FUNC_1E20D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -14.750000, 17.750000)
			arg0:setTopBottom(false, false, 8.000000, 97.380000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal32:completeAnimation()
		registerVal2.msCenterDiamondB:setLeftRight(false, false, -13.750000, 18.750000)
		registerVal2.msCenterDiamondB:setTopBottom(false, false, 24.180000, 113.550000)
		registerVal2.msCenterDiamondB:setAlpha(1.000000)
		__FUNC_1E20D_(registerVal32, {})
		local function __FUNC_1E431_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -57.750000, -8.750000)
			arg0:setTopBottom(false, false, -17.830000, 14.830000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal33:completeAnimation()
		registerVal2.msCenterDiamondSideL:setLeftRight(false, false, -74.430000, -25.430000)
		registerVal2.msCenterDiamondSideL:setTopBottom(false, false, -17.630000, 15.040000)
		registerVal2.msCenterDiamondSideL:setAlpha(1.000000)
		__FUNC_1E431_(registerVal33, {})
		local function __FUNC_1E655_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 11.000000, 60.000000)
			arg0:setTopBottom(false, false, -16.830000, 15.830000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal34:completeAnimation()
		registerVal2.msCenterDiamondSideR:setLeftRight(false, false, 28.070000, 77.070000)
		registerVal2.msCenterDiamondSideR:setTopBottom(false, false, -16.630000, 16.040000)
		registerVal2.msCenterDiamondSideR:setAlpha(1.000000)
		__FUNC_1E655_(registerVal34, {})
		local function __FUNC_1E879_(arg0, arg1)
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

		registerVal35:completeAnimation()
		registerVal2.vhudmsReticleLineHostLL:setLeftRight(false, false, -341.300000, -185.870000)
		registerVal2.vhudmsReticleLineHostLL:setTopBottom(false, false, 111.740000, 169.000000)
		__FUNC_1E879_(registerVal35, {})
		local function __FUNC_1EA7A_(arg0, arg1)
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

		registerVal36:completeAnimation()
		registerVal2.vhudmsReticleLineHostLR:setLeftRight(false, false, 176.420000, 331.850000)
		registerVal2.vhudmsReticleLineHostLR:setTopBottom(false, false, 111.740000, 169.000000)
		__FUNC_1EA7A_(registerVal36, {})
		local function __FUNC_1EC7A_(arg0, arg1)
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

		registerVal37:completeAnimation()
		registerVal2.vhudmsReticleLineHostUL:setLeftRight(false, false, -336.760000, -181.330000)
		registerVal2.vhudmsReticleLineHostUL:setTopBottom(false, false, -172.590000, -115.330000)
		__FUNC_1EC7A_(registerVal37, {})
		local function __FUNC_1EE7A_(arg0, arg1)
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

		registerVal38:completeAnimation()
		registerVal2.vhudmsReticleLineHostUR:setLeftRight(false, false, 176.420000, 331.850000)
		registerVal2.vhudmsReticleLineHostUR:setTopBottom(false, false, -175.260000, -118.000000)
		__FUNC_1EE7A_(registerVal38, {})
		local function __FUNC_1F07A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 4.000000, 648.000000)
			arg0:setTopBottom(true, false, 29.940000, 105.940000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal39:completeAnimation()
		registerVal2.vhudmsModLeft:setLeftRight(true, false, 101.000000, 745.000000)
		registerVal2.vhudmsModLeft:setTopBottom(true, false, 30.320000, 106.320000)
		registerVal2.vhudmsModLeft:setAlpha(1.000000)
		__FUNC_1F07A_(registerVal39, {})
		registerVal40:completeAnimation()
		registerVal2.vhudmsModRight:setLeftRight(false, true, -744.000000, -100.000000)
		registerVal2.vhudmsModRight:setTopBottom(true, false, 41.000000, 117.000000)
		registerVal2.vhudmsModRight:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal40, {})
		registerVal41:completeAnimation()
		registerVal2.vhudmsTimebar:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal41, {})
		registerVal42:completeAnimation()
		registerVal2.vhudmsSeating:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal42, {})
		registerVal43:completeAnimation()
		registerVal2.vhudmsStatusWidgetRight:setLeftRight(false, true, -234.750000, -152.000000)
		registerVal2.vhudmsStatusWidgetRight:setTopBottom(false, false, -16.750000, 145.180000)
		registerVal2.vhudmsStatusWidgetRight:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal43, {})
		registerVal44:completeAnimation()
		registerVal2.vhudmsStatusWidgetLeft:setLeftRight(true, false, 153.210000, 240.210000)
		registerVal2.vhudmsStatusWidgetLeft:setTopBottom(false, false, -20.200000, 21.450000)
		registerVal2.vhudmsStatusWidgetLeft:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal44, {})
		local function __FUNC_1F29D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -66.630000, 72.630000)
			arg0:setTopBottom(false, false, 181.500000, 211.500000)
			arg0:setAlpha(0.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal45:completeAnimation()
		registerVal2.vhudmsStatusWidgetBottom:setLeftRight(false, false, -67.000000, 72.250000)
		registerVal2.vhudmsStatusWidgetBottom:setTopBottom(false, false, 155.810000, 185.810000)
		registerVal2.vhudmsStatusWidgetBottom:setAlpha(0.700000)
		__FUNC_1F29D_(registerVal45, {})
	end

	registerVal49["Zoom"] = __FUNC_18955_
	registerVal47["DefaultState"] = registerVal49
	registerVal49 = {}
	local function __FUNC_1F4C1_()
		registerVal2:setupElementClipCounter(41.000000)
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
		registerVal2.vhudmsFrameBottomCenter:setTopBottom(false, true, -100.000000, -36.000000)
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
		registerVal2.msCenterDiamondT:setLeftRight(false, false, -14.750000, 17.750000)
		registerVal2.msCenterDiamondT:setTopBottom(false, false, -100.380000, -11.000000)
		registerVal2.msCenterDiamondT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal31, {})
		registerVal32:completeAnimation()
		registerVal2.msCenterDiamondB:setLeftRight(false, false, -14.750000, 17.750000)
		registerVal2.msCenterDiamondB:setTopBottom(false, false, 8.000000, 97.380000)
		registerVal2.msCenterDiamondB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal32, {})
		registerVal33:completeAnimation()
		registerVal2.msCenterDiamondSideL:setLeftRight(false, false, -57.750000, -8.750000)
		registerVal2.msCenterDiamondSideL:setTopBottom(false, false, -17.830000, 14.830000)
		registerVal2.msCenterDiamondSideL:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal33, {})
		registerVal34:completeAnimation()
		registerVal2.msCenterDiamondSideR:setLeftRight(false, false, 11.000000, 60.000000)
		registerVal2.msCenterDiamondSideR:setTopBottom(false, false, -16.830000, 15.830000)
		registerVal2.msCenterDiamondSideR:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal34, {})
		registerVal35:completeAnimation()
		registerVal2.vhudmsReticleLineHostLL:setLeftRight(false, false, -270.570000, -115.140000)
		registerVal2.vhudmsReticleLineHostLL:setTopBottom(false, false, 97.380000, 154.640000)
		registerVal2.clipFinished(registerVal35, {})
		registerVal36:completeAnimation()
		registerVal2.vhudmsReticleLineHostLR:setLeftRight(false, false, 119.610000, 275.040000)
		registerVal2.vhudmsReticleLineHostLR:setTopBottom(false, false, 97.380000, 154.640000)
		registerVal2.clipFinished(registerVal36, {})
		registerVal37:completeAnimation()
		registerVal2.vhudmsReticleLineHostUL:setLeftRight(false, false, -270.570000, -115.140000)
		registerVal2.vhudmsReticleLineHostUL:setTopBottom(false, false, -153.540000, -96.280000)
		registerVal2.clipFinished(registerVal37, {})
		registerVal38:completeAnimation()
		registerVal2.vhudmsReticleLineHostUR:setLeftRight(false, false, 119.610000, 275.040000)
		registerVal2.vhudmsReticleLineHostUR:setTopBottom(false, false, -153.540000, -96.280000)
		registerVal2.clipFinished(registerVal38, {})
		registerVal39:completeAnimation()
		registerVal2.vhudmsModLeft:setLeftRight(true, false, 0.000000, 644.000000)
		registerVal2.vhudmsModLeft:setTopBottom(true, false, 29.940000, 105.940000)
		registerVal2.vhudmsModLeft:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal39, {})
		registerVal41:completeAnimation()
		registerVal2.vhudmsTimebar:setLeftRight(false, true, -297.620000, -64.000000)
		registerVal2.vhudmsTimebar:setTopBottom(true, false, 81.000000, 89.630000)
		registerVal2.vhudmsTimebar:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal41, {})
		registerVal42:completeAnimation()
		registerVal2.vhudmsSeating:setLeftRight(false, true, -238.750000, -137.750000)
		registerVal2.vhudmsSeating:setTopBottom(true, false, 92.320000, 198.320000)
		registerVal2.vhudmsSeating:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal42, {})
		registerVal43:completeAnimation()
		registerVal2.vhudmsStatusWidgetRight:setLeftRight(false, true, -234.750000, -152.000000)
		registerVal2.vhudmsStatusWidgetRight:setTopBottom(false, false, -16.750000, 145.180000)
		registerVal2.vhudmsStatusWidgetRight:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal43, {})
		registerVal44:completeAnimation()
		registerVal2.vhudmsStatusWidgetLeft:setLeftRight(true, false, 153.210000, 240.210000)
		registerVal2.vhudmsStatusWidgetLeft:setTopBottom(false, false, -20.200000, 21.450000)
		registerVal2.vhudmsStatusWidgetLeft:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal44, {})
		registerVal45:completeAnimation()
		registerVal2.vhudmsStatusWidgetBottom:setLeftRight(false, false, -66.630000, 72.630000)
		registerVal2.vhudmsStatusWidgetBottom:setTopBottom(false, false, 181.500000, 211.500000)
		registerVal2.vhudmsStatusWidgetBottom:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal45, {})
	end

	registerVal49["DefaultClip"] = __FUNC_1F4C1_
	local function __FUNC_214A3_()
		registerVal2:setupElementClipCounter(42.000000)
		local function __FUNC_233B2_(arg0, arg1)
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
		__FUNC_233B2_(registerVal4, {})
		local function __FUNC_235F7_(arg0, arg1)
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
		__FUNC_235F7_(registerVal5, {})
		local function __FUNC_2383B_(arg0, arg1)
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
		__FUNC_2383B_(registerVal6, {})
		local function __FUNC_23A7F_(arg0, arg1)
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
		__FUNC_23A7F_(registerVal7, {})
		local function __FUNC_23CC3_(arg0, arg1)
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
		__FUNC_23CC3_(registerVal8, {})
		local function __FUNC_23EE5_(arg0, arg1)
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
		__FUNC_23EE5_(registerVal9, {})
		local function __FUNC_24109_(arg0, arg1)
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
		__FUNC_24109_(registerVal10, {})
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
		local function __FUNC_2436C_(arg0, arg1)
			local function __FUNC_244FC_(arg0, arg1)
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
				__FUNC_244FC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, 351.060000, 428.180000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_244FC_)
		end

		registerVal14:completeAnimation()
		registerVal2.msOutsideArrowBlurR:setLeftRight(false, false, 431.880000, 509.000000)
		registerVal2.msOutsideArrowBlurR:setTopBottom(false, false, -39.060000, 38.060000)
		registerVal2.msOutsideArrowBlurR:setAlpha(0.200000)
		__FUNC_2436C_(registerVal14, {})
		local function __FUNC_24721_(arg0, arg1)
			local function __FUNC_248B0_(arg0, arg1)
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
				__FUNC_248B0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -437.170000, -360.050000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_248B0_)
		end

		registerVal15:completeAnimation()
		registerVal2.msOutsideArrowBlurL:setLeftRight(false, false, -518.410000, -441.290000)
		registerVal2.msOutsideArrowBlurL:setTopBottom(false, false, -39.060000, 38.060000)
		registerVal2.msOutsideArrowBlurL:setAlpha(0.200000)
		__FUNC_24721_(registerVal15, {})
		local function __FUNC_24AD5_(arg0, arg1)
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
		__FUNC_24AD5_(registerVal16, {})
		local function __FUNC_24CF9_(arg0, arg1)
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
		__FUNC_24CF9_(registerVal17, {})
		local function __FUNC_24F1D_(arg0, arg1)
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
		__FUNC_24F1D_(registerVal18, {})
		local function __FUNC_25141_(arg0, arg1)
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
		__FUNC_25141_(registerVal19, {})
		local function __FUNC_25365_(arg0, arg1)
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
		__FUNC_25365_(registerVal20, {})
		local function __FUNC_25589_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -246.500000, 272.500000)
			arg0:setTopBottom(false, true, -138.500000, -74.500000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal21:completeAnimation()
		registerVal2.vhudmsFrameBottomCenter:setLeftRight(false, false, -245.500000, 273.500000)
		registerVal2.vhudmsFrameBottomCenter:setTopBottom(false, true, -100.000000, -36.000000)
		registerVal2.vhudmsFrameBottomCenter:setAlpha(0.600000)
		__FUNC_25589_(registerVal21, {})
		local function __FUNC_257AD_(arg0, arg1)
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
		__FUNC_257AD_(registerVal22, {})
		local function __FUNC_259D1_(arg0, arg1)
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
		__FUNC_259D1_(registerVal23, {})
		local function __FUNC_25BF5_(arg0, arg1)
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
		__FUNC_25BF5_(registerVal24, {})
		local function __FUNC_25E19_(arg0, arg1)
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
		__FUNC_25E19_(registerVal25, {})
		local function __FUNC_2601A_(arg0, arg1)
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
		__FUNC_2601A_(registerVal26, {})
		local function __FUNC_2623D_(arg0, arg1)
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
		__FUNC_2623D_(registerVal27, {})
		local function __FUNC_26461_(arg0, arg1)
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
		__FUNC_26461_(registerVal28, {})
		local function __FUNC_26685_(arg0, arg1)
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
		__FUNC_26685_(registerVal29, {})
		local function __FUNC_268A9_(arg0, arg1)
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
		__FUNC_268A9_(registerVal30, {})
		local function __FUNC_26ACD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -14.750000, 17.750000)
			arg0:setTopBottom(false, false, -115.880000, -26.500000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal31:completeAnimation()
		registerVal2.msCenterDiamondT:setLeftRight(false, false, -14.750000, 17.750000)
		registerVal2.msCenterDiamondT:setTopBottom(false, false, -100.370000, -11.000000)
		registerVal2.msCenterDiamondT:setAlpha(1.000000)
		__FUNC_26ACD_(registerVal31, {})
		local function __FUNC_26CF1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -13.750000, 18.750000)
			arg0:setTopBottom(false, false, 24.180000, 113.550000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal32:completeAnimation()
		registerVal2.msCenterDiamondB:setLeftRight(false, false, -14.750000, 17.750000)
		registerVal2.msCenterDiamondB:setTopBottom(false, false, 8.000000, 97.380000)
		registerVal2.msCenterDiamondB:setAlpha(1.000000)
		__FUNC_26CF1_(registerVal32, {})
		local function __FUNC_26F15_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -74.430000, -25.430000)
			arg0:setTopBottom(false, false, -17.630000, 15.040000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal33:completeAnimation()
		registerVal2.msCenterDiamondSideL:setLeftRight(false, false, -57.750000, -8.750000)
		registerVal2.msCenterDiamondSideL:setTopBottom(false, false, -17.830000, 14.830000)
		registerVal2.msCenterDiamondSideL:setAlpha(1.000000)
		__FUNC_26F15_(registerVal33, {})
		local function __FUNC_27139_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 28.070000, 77.070000)
			arg0:setTopBottom(false, false, -16.630000, 16.040000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal34:completeAnimation()
		registerVal2.msCenterDiamondSideR:setLeftRight(false, false, 11.000000, 60.000000)
		registerVal2.msCenterDiamondSideR:setTopBottom(false, false, -16.830000, 15.830000)
		registerVal2.msCenterDiamondSideR:setAlpha(1.000000)
		__FUNC_27139_(registerVal34, {})
		local function __FUNC_2735D_(arg0, arg1)
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

		registerVal35:completeAnimation()
		registerVal2.vhudmsReticleLineHostLL:setLeftRight(false, false, -270.570000, -115.140000)
		registerVal2.vhudmsReticleLineHostLL:setTopBottom(false, false, 97.380000, 154.640000)
		__FUNC_2735D_(registerVal35, {})
		local function __FUNC_2755E_(arg0, arg1)
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

		registerVal36:completeAnimation()
		registerVal2.vhudmsReticleLineHostLR:setLeftRight(false, false, 119.610000, 275.040000)
		registerVal2.vhudmsReticleLineHostLR:setTopBottom(false, false, 97.380000, 154.640000)
		__FUNC_2755E_(registerVal36, {})
		local function __FUNC_2775E_(arg0, arg1)
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

		registerVal37:completeAnimation()
		registerVal2.vhudmsReticleLineHostUL:setLeftRight(false, false, -270.570000, -115.140000)
		registerVal2.vhudmsReticleLineHostUL:setTopBottom(false, false, -153.540000, -96.280000)
		__FUNC_2775E_(registerVal37, {})
		local function __FUNC_2795E_(arg0, arg1)
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

		registerVal38:completeAnimation()
		registerVal2.vhudmsReticleLineHostUR:setLeftRight(false, false, 119.610000, 275.040000)
		registerVal2.vhudmsReticleLineHostUR:setTopBottom(false, false, -153.540000, -96.280000)
		__FUNC_2795E_(registerVal38, {})
		local function __FUNC_27B5E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 101.000000, 745.000000)
			arg0:setTopBottom(true, false, 30.320000, 106.320000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal39:completeAnimation()
		registerVal2.vhudmsModLeft:setLeftRight(true, false, 0.000000, 644.000000)
		registerVal2.vhudmsModLeft:setTopBottom(true, false, 29.940000, 105.940000)
		registerVal2.vhudmsModLeft:setAlpha(1.000000)
		__FUNC_27B5E_(registerVal39, {})
		local function __FUNC_27D81_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, true, -744.000000, -100.000000)
			arg0:setTopBottom(true, false, 41.000000, 117.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal40:completeAnimation()
		registerVal2.vhudmsModRight:setLeftRight(false, true, -682.500000, -38.500000)
		registerVal2.vhudmsModRight:setTopBottom(true, false, 36.000000, 112.000000)
		registerVal2.vhudmsModRight:setAlpha(0.000000)
		__FUNC_27D81_(registerVal40, {})
		registerVal41:completeAnimation()
		registerVal2.vhudmsTimebar:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal41, {})
		registerVal42:completeAnimation()
		registerVal2.vhudmsSeating:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal42, {})
		registerVal43:completeAnimation()
		registerVal2.vhudmsStatusWidgetRight:setLeftRight(false, true, -234.750000, -152.000000)
		registerVal2.vhudmsStatusWidgetRight:setTopBottom(false, false, -16.750000, 145.180000)
		registerVal2.clipFinished(registerVal43, {})
		registerVal44:completeAnimation()
		registerVal2.vhudmsStatusWidgetLeft:setLeftRight(true, false, 153.210000, 240.210000)
		registerVal2.vhudmsStatusWidgetLeft:setTopBottom(false, false, -20.200000, 21.450000)
		registerVal2.vhudmsStatusWidgetLeft:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal44, {})
		local function __FUNC_27FA5_(arg0, arg1)
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

		registerVal45:completeAnimation()
		registerVal2.vhudmsStatusWidgetBottom:setLeftRight(false, false, -66.620000, 72.630000)
		registerVal2.vhudmsStatusWidgetBottom:setTopBottom(false, false, 181.500000, 211.500000)
		__FUNC_27FA5_(registerVal45, {})
	end

	registerVal49["DefaultState"] = __FUNC_214A3_
	registerVal47["Zoom"] = registerVal49
	registerVal2["clipsPerState"] = registerVal47
	local function __FUNC_281A6_(arg0)
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
		arg0.vhudmsModRight:close()
		arg0.vhudmsTimebar:close()
		arg0.vhudmsSeating:close()
		arg0.vhudmsStatusWidgetRight:close()
		arg0.vhudmsStatusWidgetLeft:close()
		arg0.vhudmsStatusWidgetBottom:close()
	end

	LUI["OverrideFunction_CallOriginalSecond"](registerVal2, "close", __FUNC_281A6_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

