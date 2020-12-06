-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.wasp.vhud_sentinel_CenterReticle")
require("ui.uieditor.widgets.VehicleHUDs.wasp.vhud_sentinel_horizon_elements")
require("ui.uieditor.widgets.VehicleHUDs.wasp.vhud_sentinel_TimeBar")
require("ui.uieditor.widgets.VehicleHUDs.wasp.vhud_sentinel_DamageIconWidget")
require("ui.uieditor.widgets.VehicleHUDs.wasp.vhud_sentinel_NotificationBox")
require("ui.uieditor.widgets.VehicleHUDs.wasp.vhud_sentinel_NotificationLine")
require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_LockOnNotification")
require("ui.uieditor.widgets.VehicleHUDs.wasp.vhud_sentinel_NotificationSignalBox")
require("ui.uieditor.widgets.VehicleHUDs.wasp.vhud_sentinel_AltitudeInfo")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.VHUD_Sentinel_Reticle = registerVal1
function CoD.VHUD_Sentinel_Reticle.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.VHUD_Sentinel_Reticle)
	registerVal2.id = "VHUD_Sentinel_Reticle"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -640.000000, 640.000000)
	registerVal3:setTopBottom(true, true, -360.000000, 360.000000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_backgroundtint"))
	registerVal2:addElement(registerVal3)
	registerVal2.BackgroundTint = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.450000, 0.650000, 0.670000)
	registerVal4:setAlpha(0.140000)
	registerVal2:addElement(registerVal4)
	registerVal2.Blue = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -430.000000, 450.000000)
	registerVal5:setTopBottom(false, false, -363.500000, 363.500000)
	registerVal5:setRGB(0.740000, 0.930000, 1.000000)
	registerVal5:setAlpha(0.800000)
	registerVal5:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_centertexturelines"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.BackgroundLinesTexture = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -201.000000, 201.000000)
	registerVal6:setTopBottom(false, false, -201.000000, 201.000000)
	registerVal6:setRGB(0.600000, 0.820000, 0.910000)
	registerVal6:setAlpha(0.300000)
	registerVal6:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_outsidering"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.OutsideRing = registerVal6
	local registerVal7 = CoD.vhud_sentinel_CenterReticle.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -19.630000, 20.370000)
	registerVal7:setTopBottom(false, false, -12.010000, 11.990000)
	local function __FUNC_38A5_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, nil, false, __FUNC_38A5_)
	registerVal2:addElement(registerVal7)
	registerVal2.vhudsentinelCenterReticle0 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -139.500000, 139.500000)
	registerVal8:setTopBottom(false, false, -120.440000, -104.500000)
	registerVal8:setRGB(0.600000, 0.820000, 0.910000)
	registerVal8:setAlpha(0.200000)
	registerVal8:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_centerlines"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
	registerVal8:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.CenterUpperLine = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, -139.500000, 139.500000)
	registerVal9:setTopBottom(false, false, 109.560000, 125.500000)
	registerVal9:setRGB(0.600000, 0.820000, 0.910000)
	registerVal9:setAlpha(0.200000)
	registerVal9:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_centerlines"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
	registerVal9:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.CenterLowerLine = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, false, -84.000000, 86.180000)
	registerVal10:setTopBottom(false, false, -42.950000, 45.000000)
	registerVal10:setAlpha(0.050000)
	registerVal10:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_centerreticlesolid"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.CenterReticleSolid = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, false, 60.450000, 85.180000)
	registerVal11:setTopBottom(false, false, -44.310000, 46.360000)
	registerVal11:setRGB(0.600000, 0.820000, 0.910000)
	registerVal11:setAlpha(0.600000)
	registerVal11:setXRot(180.000000)
	registerVal11:setZRot(180.000000)
	registerVal11:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_centerreticlesideline"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.CenterReticleLineR = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, false, -84.730000, -60.010000)
	registerVal12:setTopBottom(false, false, -44.310000, 46.360000)
	registerVal12:setRGB(0.600000, 0.820000, 0.910000)
	registerVal12:setAlpha(0.600000)
	registerVal12:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_centerreticlesideline"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.CenterReticleLineL = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(false, false, 222.880000, 302.500000)
	registerVal13:setTopBottom(false, false, -170.680000, 171.680000)
	registerVal13:setAlpha(0.250000)
	registerVal13:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_outsideringlineblur"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.OutsideRingLineBlurR = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(false, false, -295.120000, -215.500000)
	registerVal14:setTopBottom(false, false, -170.680000, 171.680000)
	registerVal14:setAlpha(0.250000)
	registerVal14:setZRot(180.000000)
	registerVal14:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_outsideringlineblur"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.OusideRingLineBlurL = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(false, false, -200.940000, 201.110000)
	registerVal15:setTopBottom(false, false, -124.440000, 124.830000)
	registerVal15:setAlpha(0.300000)
	registerVal15:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_outsideringline"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.OutsideRingLines = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(false, false, 316.250000, 420.000000)
	registerVal16:setTopBottom(false, false, -225.440000, 229.490000)
	registerVal16:setRGB(0.600000, 0.820000, 0.910000)
	registerVal16:setAlpha(0.900000)
	registerVal16:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_outsidehashlinesr1"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal16)
	registerVal2.OutsideHashLineR1 = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(false, false, 315.490000, 420.250000)
	registerVal17:setTopBottom(false, false, -127.870000, 129.990000)
	registerVal17:setRGB(0.600000, 0.820000, 0.910000)
	registerVal17:setAlpha(0.800000)
	registerVal17:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_outsidehashlinesr5"))
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal17)
	registerVal2.OutsideHashLineR2 = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(false, false, 315.250000, 420.000000)
	registerVal18:setTopBottom(false, false, -43.820000, 44.810000)
	registerVal18:setRGB(0.600000, 0.820000, 0.910000)
	registerVal18:setAlpha(0.700000)
	registerVal18:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_outsidehashlinesr2"))
	registerVal18:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal18)
	registerVal2.OutsideHashLineR3 = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(false, false, 316.250000, 420.250000)
	registerVal19:setTopBottom(false, false, -11.500000, 13.990000)
	registerVal19:setRGB(0.600000, 0.820000, 0.910000)
	registerVal19:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_outsidehashlinesr3"))
	registerVal19:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal19)
	registerVal2.OutsideHashLineR4 = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(false, false, -417.750000, -314.000000)
	registerVal20:setTopBottom(false, false, -226.440000, 228.490000)
	registerVal20:setRGB(0.600000, 0.820000, 0.910000)
	registerVal20:setAlpha(0.900000)
	registerVal20:setZRot(180.000000)
	registerVal20:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_outsidehashlinesr1"))
	registerVal20:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal20)
	registerVal2.OutsideHashLineR10 = registerVal20
	local registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(false, false, -418.510000, -313.750000)
	registerVal21:setTopBottom(false, false, -127.870000, 129.990000)
	registerVal21:setRGB(0.600000, 0.820000, 0.910000)
	registerVal21:setAlpha(0.800000)
	registerVal21:setZRot(180.000000)
	registerVal21:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_outsidehashlinesr5"))
	registerVal21:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal21)
	registerVal2.OutsideHashLineR20 = registerVal21
	local registerVal22 = LUI.UIImage.new()
	registerVal22:setLeftRight(false, false, -418.750000, -314.000000)
	registerVal22:setTopBottom(false, false, -42.820000, 45.810000)
	registerVal22:setRGB(0.600000, 0.820000, 0.910000)
	registerVal22:setAlpha(0.700000)
	registerVal22:setZRot(180.000000)
	registerVal22:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_outsidehashlinesr2"))
	registerVal22:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal22)
	registerVal2.OutsideHashLineR30 = registerVal22
	local registerVal23 = LUI.UIImage.new()
	registerVal23:setLeftRight(false, false, -418.750000, -314.750000)
	registerVal23:setTopBottom(false, false, -12.500000, 13.990000)
	registerVal23:setRGB(0.600000, 0.820000, 0.910000)
	registerVal23:setZRot(180.000000)
	registerVal23:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_outsidehashlinesr3"))
	registerVal23:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal23)
	registerVal2.OutsideHashLineR40 = registerVal23
	local registerVal24 = CoD.vhud_sentinel_horizon_elements.new(arg0, arg1)
	registerVal24:setLeftRight(false, false, -418.510000, 421.250000)
	registerVal24:setTopBottom(false, false, -12.000000, 12.000000)
	local function __FUNC_38F6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal24:setZRot(Multiple(360.000000, registerVal1))
		end
	end

	registerVal24:linkToElementModel(registerVal2, "roll", true, __FUNC_38F6_)
	local function __FUNC_39AB_(arg0)
		registerVal24:setModel(arg0, arg1)
	end

	registerVal24:linkToElementModel(registerVal2, nil, false, __FUNC_39AB_)
	local function __FUNC_39FA_(arg0, arg2)
		local registerVal5 = {}
		registerVal5.elementName = "vhudsentinelhorizonelements0"
		registerVal5.clipName = "StartUp"
		PlayClipOnElement(registerVal2, registerVal5, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal24:registerEventHandler("menu_loaded", __FUNC_39FA_)
	local registerVal27 = {}
	local registerVal28 = {}
	registerVal28.stateName = "Zoom"
	local function __FUNC_3AFA_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "zoomed")
	end

	registerVal28.condition = __FUNC_3AFA_
	registerVal27 = {registerVal28}
	registerVal24:mergeStateConditions(registerVal27)
	local function __FUNC_3B6A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "zoomed"
		arg0:updateElementState(registerVal24, registerVal4)
	end

	registerVal24:linkToElementModel(registerVal24, "zoomed", true, __FUNC_3B6A_)
	registerVal2:addElement(registerVal24)
	registerVal2.vhudsentinelhorizonelements0 = registerVal24
	local registerVal25 = LUI.UIImage.new()
	registerVal25:setLeftRight(false, false, 249.810000, 351.810000)
	registerVal25:setTopBottom(false, false, -120.440000, -104.500000)
	registerVal25:setRGB(0.600000, 0.820000, 0.910000)
	registerVal25:setAlpha(0.600000)
	registerVal25:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_centerlines"))
	registerVal25:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
	registerVal25:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal25:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal25:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal25:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal25)
	registerVal2.OutsideLineUR = registerVal25
	local registerVal26 = LUI.UIImage.new()
	registerVal26:setLeftRight(false, false, 249.810000, 351.810000)
	registerVal26:setTopBottom(false, false, 109.560000, 125.500000)
	registerVal26:setRGB(0.600000, 0.820000, 0.910000)
	registerVal26:setAlpha(0.800000)
	registerVal26:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_centerlines"))
	registerVal26:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
	registerVal26:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal26:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal26:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal26:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal26)
	registerVal2.OutsideLineLR = registerVal26
	registerVal27 = LUI.UIImage.new()
	registerVal27:setLeftRight(false, false, -347.500000, -245.500000)
	registerVal27:setTopBottom(false, false, -120.440000, -104.500000)
	registerVal27:setRGB(0.600000, 0.820000, 0.910000)
	registerVal27:setAlpha(0.800000)
	registerVal27:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_centerlines"))
	registerVal27:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
	registerVal27:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal27:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal27:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal27:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal27)
	registerVal2.OutsideLineUL = registerVal27
	registerVal28 = LUI.UIImage.new()
	registerVal28:setLeftRight(false, false, -347.500000, -245.500000)
	registerVal28:setTopBottom(false, false, 109.560000, 125.500000)
	registerVal28:setRGB(0.600000, 0.820000, 0.910000)
	registerVal28:setAlpha(0.800000)
	registerVal28:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_centerlines"))
	registerVal28:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
	registerVal28:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal28:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal28:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal28:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal28)
	registerVal2.OutsideLineLL = registerVal28
	local registerVal29 = LUI.UIImage.new()
	registerVal29:setLeftRight(false, false, 152.500000, 182.500000)
	registerVal29:setTopBottom(false, false, -39.130000, -24.130000)
	registerVal29:setAlpha(0.600000)
	registerVal29:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_outsidelinergb"))
	registerVal29:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal29)
	registerVal2.RGBLineUR = registerVal29
	local registerVal30 = LUI.UIImage.new()
	registerVal30:setLeftRight(false, false, 152.500000, 182.500000)
	registerVal30:setTopBottom(false, false, 25.870000, 40.870000)
	registerVal30:setAlpha(0.600000)
	registerVal30:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_outsidelinergb"))
	registerVal30:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal30)
	registerVal2.RGBLineLR = registerVal30
	local registerVal31 = LUI.UIImage.new()
	registerVal31:setLeftRight(false, false, -183.500000, -153.500000)
	registerVal31:setTopBottom(false, false, -39.130000, -24.130000)
	registerVal31:setAlpha(0.600000)
	registerVal31:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_outsidelinergb"))
	registerVal31:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal31)
	registerVal2.RGBLineUL = registerVal31
	local registerVal32 = LUI.UIImage.new()
	registerVal32:setLeftRight(false, false, -183.500000, -153.500000)
	registerVal32:setTopBottom(false, false, 25.870000, 40.870000)
	registerVal32:setAlpha(0.600000)
	registerVal32:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_outsidelinergb"))
	registerVal32:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal32)
	registerVal2.RGBLineLL = registerVal32
	local registerVal33 = CoD.vhud_sentinel_TimeBar.new(arg0, arg1)
	registerVal33:setLeftRight(false, true, -291.620000, 87.380000)
	registerVal33:setTopBottom(true, false, 80.910000, 137.910000)
	registerVal33:setRGB(0.600000, 0.820000, 0.910000)
	registerVal33:setYRot(-20.000000)
	local function __FUNC_3C84_(arg0)
		registerVal33:setModel(arg0, arg1)
	end

	registerVal33:linkToElementModel(registerVal2, nil, false, __FUNC_3C84_)
	local registerVal36 = {}
	local registerVal37 = {}
	registerVal37.stateName = "Hidden"
	local function __FUNC_3CD6_(arg0, arg1, arg2)
		return IsCampaign()
	end

	registerVal37.condition = __FUNC_3CD6_
	registerVal36 = {registerVal37}
	registerVal33:mergeStateConditions(registerVal36)
	registerVal37 = Engine.GetGlobalModel()
	registerVal36 = Engine.GetModel(registerVal37, "lobbyRoot.lobbyNav")
	local function __FUNC_3D20_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal33, registerVal4)
	end

	registerVal33:subscribeToModel(registerVal36, __FUNC_3D20_)
	registerVal2:addElement(registerVal33)
	registerVal2.vhudsentinelTimeBar = registerVal33
	local registerVal34 = CoD.vhud_sentinel_DamageIconWidget.new(arg0, arg1)
	registerVal34:setLeftRight(false, true, -257.470000, -99.030000)
	registerVal34:setTopBottom(true, false, 93.020000, 164.320000)
	registerVal34:setYRot(-20.000000)
	registerVal34:setScale(0.800000)
	local function __FUNC_3E48_(arg0)
		registerVal34:setModel(arg0, arg1)
	end

	registerVal34:linkToElementModel(registerVal2, nil, false, __FUNC_3E48_)
	registerVal2:addElement(registerVal34)
	registerVal2.vhudsentinelDamageIconWidget = registerVal34
	local registerVal35 = LUI.UIText.new()
	registerVal35:setLeftRight(false, true, -227.000000, -131.000000)
	registerVal35:setTopBottom(false, false, 5.480000, 21.480000)
	registerVal35:setRGB(0.600000, 0.820000, 0.910000)
	registerVal35:setYRot(-40.000000)
	registerVal35:setTTF("fonts/default.ttf")
	registerVal35:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_cheap_blur"))
	registerVal35:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal35:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal35:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal35:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal35:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal35:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal35:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_3E9A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal35:setText(Engine.Localize(FormatNumberAsString(0.000000, registerVal1)))
		end
	end

	registerVal35:linkToElementModel(registerVal2, "speed", true, __FUNC_3E9A_)
	registerVal2:addElement(registerVal35)
	registerVal2.SpeedNumbers = registerVal35
	registerVal36 = CoD.vhud_sentinel_NotificationBox.new(arg0, arg1)
	registerVal36:setLeftRight(false, true, -219.750000, -138.750000)
	registerVal36:setTopBottom(false, false, -20.180000, 9.820000)
	registerVal36:setRGB(0.600000, 0.820000, 0.910000)
	registerVal36:setYRot(-50.000000)
	registerVal36.SignalText:setText(Engine.Localize("MENU_HUD_VEHICLE_SPEED"))
	registerVal2:addElement(registerVal36)
	registerVal2.speedBox = registerVal36
	registerVal37 = CoD.vhud_sentinel_NotificationLine.new(arg0, arg1)
	registerVal37:setLeftRight(false, true, -217.750000, -138.750000)
	registerVal37:setTopBottom(false, false, 21.480000, 29.480000)
	registerVal37:setRGB(0.600000, 0.820000, 0.910000)
	registerVal37:setAlpha(0.700000)
	registerVal37:setYRot(-50.000000)
	registerVal2:addElement(registerVal37)
	registerVal2.vhudsentinelNotificationLine = registerVal37
	local registerVal38 = CoD.vhud_ms_LockOnNotification.new(arg0, arg1)
	registerVal38:setLeftRight(false, false, -18.870000, 21.310000)
	registerVal38:setTopBottom(true, false, 124.320000, 164.500000)
	local function __FUNC_3F81_(arg0)
		registerVal38:setModel(arg0, arg1)
	end

	registerVal38:linkToElementModel(registerVal2, "missileLockedOn", false, __FUNC_3F81_)
	registerVal2:addElement(registerVal38)
	registerVal2.vhudmsLockOnNotification = registerVal38
	local registerVal39 = CoD.vhud_sentinel_NotificationSignalBox.new(arg0, arg1)
	registerVal39:setLeftRight(false, true, -218.750000, -137.750000)
	registerVal39:setTopBottom(false, false, 21.480000, 51.480000)
	registerVal39:setRGB(0.600000, 0.820000, 0.910000)
	registerVal39:setYRot(-50.000000)
	local function __FUNC_3FD2_(arg0)
		registerVal39:setModel(arg0, arg1)
	end

	registerVal39:linkToElementModel(registerVal2, nil, false, __FUNC_3FD2_)
	registerVal2:addElement(registerVal39)
	registerVal2.vhudsentinelNotificationSignalBox = registerVal39
	local registerVal40 = CoD.vhud_sentinel_NotificationBox.new(arg0, arg1)
	registerVal40:setLeftRight(false, true, -219.750000, -138.750000)
	registerVal40:setTopBottom(false, false, 37.480000, 67.480000)
	registerVal40:setRGB(0.600000, 0.820000, 0.910000)
	registerVal40:setYRot(-50.000000)
	registerVal40.SignalText:setText(Engine.Localize("MENU_HUD_VEHICLE_SIGNAL"))
	registerVal2:addElement(registerVal40)
	registerVal2.signalBox = registerVal40
	local registerVal41 = CoD.vhud_sentinel_AltitudeInfo.new(arg0, arg1)
	registerVal41:setLeftRight(true, false, 122.630000, 209.630000)
	registerVal41:setTopBottom(false, false, -20.180000, 21.480000)
	local function __FUNC_4022_(arg0)
		registerVal41:setModel(arg0, arg1)
	end

	registerVal41:linkToElementModel(registerVal2, nil, false, __FUNC_4022_)
	local registerVal44 = {}
	local registerVal45 = {}
	registerVal45.stateName = "Hidden"
	local function __FUNC_4072_(arg0, arg2, arg3)
		local registerVal3 = IsCampaign()
		if registerVal3 then
			registerVal3 = IsVehicleOfType(arg1, "raps")
		end
		return registerVal3
	end

	registerVal45.condition = __FUNC_4072_
	registerVal44 = {registerVal45}
	registerVal41:mergeStateConditions(registerVal44)
	registerVal45 = Engine.GetGlobalModel()
	registerVal44 = Engine.GetModel(registerVal45, "lobbyRoot.lobbyNav")
	local function __FUNC_40FB_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal41, registerVal4)
	end

	registerVal41:subscribeToModel(registerVal44, __FUNC_40FB_)
	registerVal45 = Engine["GetModelForController"](arg1)
	registerVal44 = Engine.GetModel(registerVal45, "vehicle.vehicleType")
	local function __FUNC_4220_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "vehicle.vehicleType"
		arg0:updateElementState(registerVal41, registerVal4)
	end

	registerVal41:subscribeToModel(registerVal44, __FUNC_4220_)
	registerVal2:addElement(registerVal41)
	registerVal2["vhudsentinelAltitudeInfo0"] = registerVal41
	local registerVal43 = {}
	registerVal45 = {}
	local function __FUNC_4349_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal45["DefaultClip"] = __FUNC_4349_
	local function __FUNC_43AA_()
		registerVal2:setupElementClipCounter(29.000000)
		local function __FUNC_59CD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -640.000000, 640.000000)
			arg0:setTopBottom(true, true, -360.000000, 360.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.BackgroundTint:setLeftRight(true, true, -640.000000, 640.000000)
		registerVal2.BackgroundTint:setTopBottom(true, true, -360.000000, 360.000000)
		registerVal2.BackgroundTint:setAlpha(0.000000)
		__FUNC_59CD_(registerVal3, {})
		local function __FUNC_5BF1_(arg0, arg1)
			local function __FUNC_5D6B_(arg0, arg1)
				local function __FUNC_5EE3_(arg0, arg1)
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
					__FUNC_5EE3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5EE3_)
			end

			if arg1.interrupted then
				__FUNC_5D6B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.650000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5D6B_)
		end

		registerVal5:completeAnimation()
		registerVal2.BackgroundLinesTexture:setAlpha(0.000000)
		__FUNC_5BF1_(registerVal5, {})
		local function __FUNC_6095_(arg0, arg1)
			local function __FUNC_620F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -201.420000, 201.630000)
				arg0:setTopBottom(false, false, -200.500000, 202.550000)
				arg0:setAlpha(0.300000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_620F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.700000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_620F_)
		end

		registerVal6:completeAnimation()
		registerVal2.OutsideRing:setLeftRight(false, false, -201.420000, 201.630000)
		registerVal2.OutsideRing:setTopBottom(false, false, -200.500000, 202.550000)
		registerVal2.OutsideRing:setAlpha(0.000000)
		__FUNC_6095_(registerVal6, {})
		local function __FUNC_6431_(arg0, arg1)
			local function __FUNC_65DE_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 320.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(0.600000, 0.820000, 0.910000)
				arg0:setAlpha(0.200000)
				arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
				arg0:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
				arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
				arg0:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
				arg0:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_65DE_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Linear)
			arg0:setRGB(0.810000, 0.920000, 0.960000)
			arg0:setAlpha(0.520000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_65DE_)
		end

		registerVal8:completeAnimation()
		registerVal2.CenterUpperLine:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.CenterUpperLine:setAlpha(0.800000)
		registerVal2.CenterUpperLine:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
		registerVal2.CenterUpperLine:setShaderVector(0.000000, 0.500000, 0.500000, 0.000000, 0.000000)
		registerVal2.CenterUpperLine:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.CenterUpperLine:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
		registerVal2.CenterUpperLine:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_6431_(registerVal8, {})
		local function __FUNC_68F3_(arg0, arg1)
			local function __FUNC_6A6B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 320.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.200000)
				arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
				arg0:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
				arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
				arg0:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
				arg0:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_6A6B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.410000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6A6B_)
		end

		registerVal9:completeAnimation()
		registerVal2.CenterLowerLine:setAlpha(0.600000)
		registerVal2.CenterLowerLine:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
		registerVal2.CenterLowerLine:setShaderVector(0.000000, 0.500000, 0.500000, 0.000000, 0.000000)
		registerVal2.CenterLowerLine:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.CenterLowerLine:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
		registerVal2.CenterLowerLine:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_68F3_(registerVal9, {})
		local function __FUNC_6D4C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.050000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
		registerVal10:setAlpha(0.000000)
		registerVal10:registerEventHandler("transition_complete_keyframe", __FUNC_6D4C_)
		local function __FUNC_6EFF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, false, 60.450000, 85.180000)
			arg0:setTopBottom(false, false, -44.310000, 46.360000)
			arg0:setAlpha(0.600000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
		registerVal11:setLeftRight(false, false, 2.220000, 26.950000)
		registerVal11:setTopBottom(false, false, -44.310000, 46.360000)
		registerVal11:setAlpha(0.000000)
		registerVal11:registerEventHandler("transition_complete_keyframe", __FUNC_6EFF_)
		local function __FUNC_711F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, false, -84.730000, -60.010000)
			arg0:setTopBottom(false, false, -44.310000, 46.360000)
			arg0:setAlpha(0.600000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
		registerVal12:setLeftRight(false, false, -23.510000, 1.220000)
		registerVal12:setTopBottom(false, false, -44.310000, 46.360000)
		registerVal12:setAlpha(0.000000)
		registerVal12:registerEventHandler("transition_complete_keyframe", __FUNC_711F_)
		local function __FUNC_733F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 230.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, false, 222.880000, 302.500000)
			arg0:setTopBottom(false, false, -170.680000, 171.680000)
			arg0:setAlpha(0.250000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
		registerVal13:setLeftRight(false, false, 1.220000, 80.840000)
		registerVal13:setTopBottom(false, false, -170.680000, 171.680000)
		registerVal13:setAlpha(0.000000)
		registerVal13:registerEventHandler("transition_complete_keyframe", __FUNC_733F_)
		local function __FUNC_755F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 230.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, false, -296.500000, -216.880000)
			arg0:setTopBottom(false, false, -170.680000, 171.680000)
			arg0:setAlpha(0.250000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
		registerVal14:setLeftRight(false, false, -79.620000, 0.000000)
		registerVal14:setTopBottom(false, false, -170.680000, 171.680000)
		registerVal14:setAlpha(0.000000)
		registerVal14:registerEventHandler("transition_complete_keyframe", __FUNC_755F_)
		local function __FUNC_777F_(arg0, arg1)
			local function __FUNC_78F7_(arg0, arg1)
				local function __FUNC_7A6F_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.300000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_7A6F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7A6F_)
			end

			if arg1.interrupted then
				__FUNC_78F7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 190.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.300000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_78F7_)
		end

		registerVal15:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
		registerVal15:setAlpha(0.000000)
		registerVal15:registerEventHandler("transition_complete_keyframe", __FUNC_777F_)
		local function __FUNC_7C21_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 316.250000, 420.000000)
			arg0:setTopBottom(false, false, -225.440000, 229.490000)
			arg0:setAlpha(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:beginAnimation("keyframe", 389.000000, false, false, CoD.TweenType.Linear)
		registerVal16:setLeftRight(false, false, 316.250000, 420.000000)
		registerVal16:setTopBottom(false, false, -225.440000, 229.490000)
		registerVal16:setAlpha(0.000000)
		registerVal16:registerEventHandler("transition_complete_keyframe", __FUNC_7C21_)
		local function __FUNC_7E45_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 315.490000, 420.250000)
			arg0:setTopBottom(false, false, -127.870000, 129.990000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:beginAnimation("keyframe", 430.000000, false, false, CoD.TweenType.Linear)
		registerVal17:setLeftRight(false, false, 315.490000, 420.250000)
		registerVal17:setTopBottom(false, false, -127.870000, 129.990000)
		registerVal17:setAlpha(0.000000)
		registerVal17:registerEventHandler("transition_complete_keyframe", __FUNC_7E45_)
		local function __FUNC_8069_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 315.250000, 420.000000)
			arg0:setTopBottom(false, false, -43.820000, 44.810000)
			arg0:setAlpha(0.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:beginAnimation("keyframe", 469.000000, false, false, CoD.TweenType.Linear)
		registerVal18:setLeftRight(false, false, 315.250000, 420.000000)
		registerVal18:setTopBottom(false, false, -43.820000, 44.810000)
		registerVal18:setAlpha(0.000000)
		registerVal18:registerEventHandler("transition_complete_keyframe", __FUNC_8069_)
		local function __FUNC_828D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 316.250000, 420.250000)
			arg0:setTopBottom(false, false, -11.500000, 13.990000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
		registerVal19:setLeftRight(false, false, 316.250000, 420.250000)
		registerVal19:setTopBottom(false, false, -11.500000, 13.990000)
		registerVal19:setAlpha(0.000000)
		registerVal19:registerEventHandler("transition_complete_keyframe", __FUNC_828D_)
		local function __FUNC_84B1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -417.750000, -314.000000)
			arg0:setTopBottom(false, false, -226.440000, 228.490000)
			arg0:setAlpha(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal20:beginAnimation("keyframe", 389.000000, false, false, CoD.TweenType.Linear)
		registerVal20:setLeftRight(false, false, -417.750000, -314.000000)
		registerVal20:setTopBottom(false, false, -226.440000, 228.490000)
		registerVal20:setAlpha(0.000000)
		registerVal20:registerEventHandler("transition_complete_keyframe", __FUNC_84B1_)
		local function __FUNC_86D5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -418.510000, -313.750000)
			arg0:setTopBottom(false, false, -127.870000, 129.990000)
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal21:beginAnimation("keyframe", 430.000000, false, false, CoD.TweenType.Linear)
		registerVal21:setLeftRight(false, false, -418.510000, -313.750000)
		registerVal21:setTopBottom(false, false, -127.870000, 129.990000)
		registerVal21:setAlpha(0.000000)
		registerVal21:registerEventHandler("transition_complete_keyframe", __FUNC_86D5_)
		local function __FUNC_88F9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -418.750000, -314.000000)
			arg0:setTopBottom(false, false, -42.820000, 45.810000)
			arg0:setAlpha(0.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal22:beginAnimation("keyframe", 469.000000, false, false, CoD.TweenType.Linear)
		registerVal22:setLeftRight(false, false, -418.750000, -314.000000)
		registerVal22:setTopBottom(false, false, -42.820000, 45.810000)
		registerVal22:setAlpha(0.000000)
		registerVal22:registerEventHandler("transition_complete_keyframe", __FUNC_88F9_)
		local function __FUNC_8B1D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -418.750000, -314.750000)
			arg0:setTopBottom(false, false, -12.500000, 13.990000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal23:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
		registerVal23:setLeftRight(false, false, -418.750000, -314.750000)
		registerVal23:setTopBottom(false, false, -12.500000, 13.990000)
		registerVal23:setAlpha(0.000000)
		registerVal23:registerEventHandler("transition_complete_keyframe", __FUNC_8B1D_)
		local function __FUNC_8D41_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.500000)
			arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
			arg0:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
			arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
			arg0:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal25:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
		registerVal25:setAlpha(0.500000)
		registerVal25:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
		registerVal25:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal25:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal25:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
		registerVal25:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal25:registerEventHandler("transition_complete_keyframe", __FUNC_8D41_)
		local function __FUNC_9024_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.500000)
			arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
			arg0:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
			arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
			arg0:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal26:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
		registerVal26:setAlpha(0.500000)
		registerVal26:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
		registerVal26:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal26:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal26:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
		registerVal26:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal26:registerEventHandler("transition_complete_keyframe", __FUNC_9024_)
		local function __FUNC_9308_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.500000)
			arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
			arg0:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
			arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
			arg0:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal27:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
		registerVal27:setAlpha(0.500000)
		registerVal27:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
		registerVal27:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
		registerVal27:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal27:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
		registerVal27:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal27:registerEventHandler("transition_complete_keyframe", __FUNC_9308_)
		local function __FUNC_95EC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.500000)
			arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
			arg0:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
			arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
			arg0:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal28:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
		registerVal28:setAlpha(0.500000)
		registerVal28:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
		registerVal28:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
		registerVal28:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal28:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
		registerVal28:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal28:registerEventHandler("transition_complete_keyframe", __FUNC_95EC_)
		local function __FUNC_98D0_(arg0, arg1)
			local function __FUNC_9A4B_(arg0, arg1)
				local function __FUNC_9BC3_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.600000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_9BC3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9BC3_)
			end

			if arg1.interrupted then
				__FUNC_9A4B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.600000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9A4B_)
		end

		registerVal29:beginAnimation("keyframe", 569.000000, false, false, CoD.TweenType.Linear)
		registerVal29:setAlpha(0.000000)
		registerVal29:registerEventHandler("transition_complete_keyframe", __FUNC_98D0_)
		local function __FUNC_9D75_(arg0, arg1)
			local function __FUNC_9EEF_(arg0, arg1)
				local function __FUNC_A067_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.600000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_A067_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A067_)
			end

			if arg1.interrupted then
				__FUNC_9EEF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.600000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9EEF_)
		end

		registerVal30:beginAnimation("keyframe", 569.000000, false, false, CoD.TweenType.Linear)
		registerVal30:setAlpha(0.000000)
		registerVal30:registerEventHandler("transition_complete_keyframe", __FUNC_9D75_)
		local function __FUNC_A219_(arg0, arg1)
			local function __FUNC_A393_(arg0, arg1)
				local function __FUNC_A50B_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.600000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_A50B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A50B_)
			end

			if arg1.interrupted then
				__FUNC_A393_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.600000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A393_)
		end

		registerVal31:beginAnimation("keyframe", 569.000000, false, false, CoD.TweenType.Linear)
		registerVal31:setAlpha(0.000000)
		registerVal31:registerEventHandler("transition_complete_keyframe", __FUNC_A219_)
		local function __FUNC_A6BD_(arg0, arg1)
			local function __FUNC_A837_(arg0, arg1)
				local function __FUNC_A9AF_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.600000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_A9AF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A9AF_)
			end

			if arg1.interrupted then
				__FUNC_A837_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.600000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A837_)
		end

		registerVal32:beginAnimation("keyframe", 569.000000, false, false, CoD.TweenType.Linear)
		registerVal32:setAlpha(0.000000)
		registerVal32:registerEventHandler("transition_complete_keyframe", __FUNC_A6BD_)
		local function __FUNC_AB61_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal33:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
		registerVal33:setAlpha(0.000000)
		registerVal33:registerEventHandler("transition_complete_keyframe", __FUNC_AB61_)
		local function __FUNC_AD15_(arg0, arg1)
			local function __FUNC_AE8F_(arg0, arg1)
				local function __FUNC_B007_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_B007_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B007_)
			end

			if arg1.interrupted then
				__FUNC_AE8F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AE8F_)
		end

		registerVal34:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
		registerVal34:setAlpha(0.000000)
		registerVal34:registerEventHandler("transition_complete_keyframe", __FUNC_AD15_)
	end

	registerVal45["StartUp"] = __FUNC_43AA_
	local function __FUNC_B1B9_()
		registerVal2:setupElementClipCounter(26.000000)
		local function __FUNC_C47E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setZoom(-150.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.BackgroundLinesTexture:setZoom(0.000000)
		registerVal2.BackgroundLinesTexture:setScale(1.000000)
		__FUNC_C47E_(registerVal5, {})
		local function __FUNC_C653_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -201.420000, 201.630000)
			arg0:setTopBottom(false, false, -200.500000, 202.550000)
			arg0:setAlpha(0.300000)
			arg0:setZoom(-218.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.OutsideRing:setLeftRight(false, false, -201.420000, 201.630000)
		registerVal2.OutsideRing:setTopBottom(false, false, -200.500000, 202.550000)
		registerVal2.OutsideRing:setAlpha(0.300000)
		registerVal2.OutsideRing:setZoom(0.000000)
		__FUNC_C653_(registerVal6, {})
		local function __FUNC_C897_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -139.500000, 139.500000)
			arg0:setTopBottom(false, false, -55.070000, -39.130000)
			arg0:setAlpha(0.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.CenterUpperLine:setLeftRight(false, false, -139.500000, 139.500000)
		registerVal2.CenterUpperLine:setTopBottom(false, false, -120.440000, -104.500000)
		registerVal2.CenterUpperLine:setAlpha(0.200000)
		__FUNC_C897_(registerVal8, {})
		local function __FUNC_CAB9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -139.500000, 139.500000)
			arg0:setTopBottom(false, false, 40.870000, 56.810000)
			arg0:setAlpha(0.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.CenterLowerLine:setLeftRight(false, false, -139.500000, 139.500000)
		registerVal2.CenterLowerLine:setTopBottom(false, false, 109.560000, 125.500000)
		registerVal2.CenterLowerLine:setAlpha(0.200000)
		__FUNC_CAB9_(registerVal9, {})
		local function __FUNC_CCDD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -82.730000, 85.180000)
			arg0:setTopBottom(false, false, -42.950000, 45.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(98.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.CenterReticleSolid:setLeftRight(false, false, -82.730000, 85.180000)
		registerVal2.CenterReticleSolid:setTopBottom(false, false, -42.950000, 45.000000)
		registerVal2.CenterReticleSolid:setAlpha(0.050000)
		registerVal2.CenterReticleSolid:setZoom(0.000000)
		__FUNC_CCDD_(registerVal10, {})
		local function __FUNC_CF23_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 85.180000, 109.900000)
			arg0:setTopBottom(false, false, -44.310000, 46.360000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.CenterReticleLineR:setLeftRight(false, false, 60.450000, 85.180000)
		registerVal2.CenterReticleLineR:setTopBottom(false, false, -44.310000, 46.360000)
		__FUNC_CF23_(registerVal11, {})
		local function __FUNC_D122_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -109.500000, -84.770000)
			arg0:setTopBottom(false, false, -44.310000, 46.360000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.CenterReticleLineL:setLeftRight(false, false, -84.730000, -60.010000)
		registerVal2.CenterReticleLineL:setTopBottom(false, false, -44.310000, 46.360000)
		__FUNC_D122_(registerVal12, {})
		local function __FUNC_D322_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 217.400000, 297.020000)
			arg0:setTopBottom(false, false, -170.680000, 171.680000)
			arg0:setZoom(-150.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.OutsideRingLineBlurR:setLeftRight(false, false, 222.880000, 302.500000)
		registerVal2.OutsideRingLineBlurR:setTopBottom(false, false, -170.680000, 171.680000)
		registerVal2.OutsideRingLineBlurR:setZoom(0.000000)
		__FUNC_D322_(registerVal13, {})
		local function __FUNC_D544_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -296.500000, -216.880000)
			arg0:setTopBottom(false, false, -170.680000, 171.680000)
			arg0:setZoom(-150.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.OusideRingLineBlurL:setLeftRight(false, false, -295.120000, -215.500000)
		registerVal2.OusideRingLineBlurL:setTopBottom(false, false, -170.680000, 171.680000)
		registerVal2.OusideRingLineBlurL:setZoom(0.000000)
		__FUNC_D544_(registerVal14, {})
		local function __FUNC_D768_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -200.940000, 201.110000)
			arg0:setTopBottom(false, false, -124.440000, 124.830000)
			arg0:setAlpha(0.300000)
			arg0:setZoom(-121.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.OutsideRingLines:setLeftRight(false, false, -200.940000, 201.110000)
		registerVal2.OutsideRingLines:setTopBottom(false, false, -124.440000, 124.830000)
		registerVal2.OutsideRingLines:setAlpha(0.300000)
		registerVal2.OutsideRingLines:setZoom(0.000000)
		__FUNC_D768_(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.OutsideHashLineR1:setLeftRight(false, false, 316.250000, 420.000000)
		registerVal2.OutsideHashLineR1:setTopBottom(false, false, -225.440000, 229.490000)
		registerVal2.clipFinished(registerVal16, {})
		local function __FUNC_D9AF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 291.000000, 395.750000)
			arg0:setTopBottom(false, false, -127.870000, 129.990000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.OutsideHashLineR2:setLeftRight(false, false, 315.490000, 420.250000)
		registerVal2.OutsideHashLineR2:setTopBottom(false, false, -127.870000, 129.990000)
		__FUNC_D9AF_(registerVal17, {})
		local function __FUNC_DBAE_(arg0, arg1)
			local function __FUNC_DD04_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, 267.620000, 372.380000)
				arg0:setTopBottom(false, false, -43.820000, 44.820000)
				arg0:setAlpha(0.700000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_DD04_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DD04_)
		end

		registerVal18:completeAnimation()
		registerVal2.OutsideHashLineR3:setLeftRight(false, false, 315.250000, 420.000000)
		registerVal2.OutsideHashLineR3:setTopBottom(false, false, -43.820000, 44.810000)
		registerVal2.OutsideHashLineR3:setAlpha(0.700000)
		__FUNC_DBAE_(registerVal18, {})
		local function __FUNC_DF29_(arg0, arg1)
			local function __FUNC_E080_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, 239.000000, 343.000000)
				arg0:setTopBottom(false, false, -11.500000, 13.990000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_E080_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E080_)
		end

		registerVal19:completeAnimation()
		registerVal2.OutsideHashLineR4:setLeftRight(false, false, 316.250000, 420.250000)
		registerVal2.OutsideHashLineR4:setTopBottom(false, false, -11.500000, 13.990000)
		registerVal2.OutsideHashLineR4:setAlpha(1.000000)
		__FUNC_DF29_(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.OutsideHashLineR10:setLeftRight(false, false, -417.750000, -314.000000)
		registerVal2.OutsideHashLineR10:setTopBottom(false, false, -226.440000, 228.490000)
		registerVal2.OutsideHashLineR10:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal20, {})
		local function __FUNC_E2A5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -391.750000, -287.000000)
			arg0:setTopBottom(false, false, -127.870000, 129.990000)
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal21:completeAnimation()
		registerVal2.OutsideHashLineR20:setLeftRight(false, false, -418.510000, -313.750000)
		registerVal2.OutsideHashLineR20:setTopBottom(false, false, -127.870000, 129.990000)
		registerVal2.OutsideHashLineR20:setAlpha(0.800000)
		__FUNC_E2A5_(registerVal21, {})
		local function __FUNC_E4C9_(arg0, arg1)
			local function __FUNC_E620_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -368.380000, -263.620000)
				arg0:setTopBottom(false, false, -42.820000, 45.820000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_E620_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E620_)
		end

		registerVal22:completeAnimation()
		registerVal2.OutsideHashLineR30:setLeftRight(false, false, -418.750000, -314.000000)
		registerVal2.OutsideHashLineR30:setTopBottom(false, false, -42.820000, 45.810000)
		__FUNC_E4C9_(registerVal22, {})
		local function __FUNC_E822_(arg0, arg1)
			local function __FUNC_E978_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -335.750000, -231.750000)
				arg0:setTopBottom(false, false, -12.500000, 13.990000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_E978_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E978_)
		end

		registerVal23:completeAnimation()
		registerVal2.OutsideHashLineR40:setLeftRight(false, false, -418.750000, -314.750000)
		registerVal2.OutsideHashLineR40:setTopBottom(false, false, -12.500000, 13.990000)
		__FUNC_E822_(registerVal23, {})
		local function __FUNC_EB7A_(arg0, arg1)
			local function __FUNC_ED08_(arg0, arg1)
				local function __FUNC_EE60_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, 228.810000, 330.810000)
					arg0:setTopBottom(false, false, -87.760000, -71.820000)
					arg0:setAlpha(0.400000)
					arg0:setZoom(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_EE60_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EE60_)
			end

			if arg1.interrupted then
				__FUNC_ED08_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(false, false, -87.760000, -71.820000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ED08_)
		end

		registerVal25:completeAnimation()
		registerVal2.OutsideLineUR:setLeftRight(false, false, 249.810000, 351.810000)
		registerVal2.OutsideLineUR:setTopBottom(false, false, -120.440000, -104.500000)
		registerVal2.OutsideLineUR:setAlpha(0.500000)
		registerVal2.OutsideLineUR:setZoom(0.000000)
		__FUNC_EB7A_(registerVal25, {})
		local function __FUNC_F0A7_(arg0, arg1)
			local function __FUNC_F234_(arg0, arg1)
				local function __FUNC_F38C_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, 228.810000, 330.810000)
					arg0:setTopBottom(false, false, 75.210000, 91.150000)
					arg0:setAlpha(0.400000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_F38C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F38C_)
			end

			if arg1.interrupted then
				__FUNC_F234_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(false, false, 75.210000, 91.150000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F234_)
		end

		registerVal26:completeAnimation()
		registerVal2.OutsideLineLR:setLeftRight(false, false, 249.810000, 351.810000)
		registerVal2.OutsideLineLR:setTopBottom(false, false, 109.560000, 125.500000)
		registerVal2.OutsideLineLR:setAlpha(0.500000)
		__FUNC_F0A7_(registerVal26, {})
		local function __FUNC_F5B1_(arg0, arg1)
			local function __FUNC_F740_(arg0, arg1)
				local function __FUNC_F898_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -327.500000, -225.500000)
					arg0:setTopBottom(false, false, -87.760000, -71.820000)
					arg0:setAlpha(0.400000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_F898_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F898_)
			end

			if arg1.interrupted then
				__FUNC_F740_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(false, false, -87.760000, -71.820000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F740_)
		end

		registerVal27:completeAnimation()
		registerVal2.OutsideLineUL:setLeftRight(false, false, -347.500000, -245.500000)
		registerVal2.OutsideLineUL:setTopBottom(false, false, -120.440000, -104.500000)
		registerVal2.OutsideLineUL:setAlpha(0.500000)
		__FUNC_F5B1_(registerVal27, {})
		local function __FUNC_FABD_(arg0, arg1)
			local function __FUNC_FC4C_(arg0, arg1)
				local function __FUNC_FDA4_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -327.500000, -225.500000)
					arg0:setTopBottom(false, false, 75.210000, 91.150000)
					arg0:setAlpha(0.400000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_FDA4_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FDA4_)
			end

			if arg1.interrupted then
				__FUNC_FC4C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(false, false, 75.210000, 91.150000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FC4C_)
		end

		registerVal28:completeAnimation()
		registerVal2.OutsideLineLL:setLeftRight(false, false, -347.500000, -245.500000)
		registerVal2.OutsideLineLL:setTopBottom(false, false, 109.560000, 125.500000)
		registerVal2.OutsideLineLL:setAlpha(0.500000)
		__FUNC_FABD_(registerVal28, {})
		local function __FUNC_FFC9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 106.500000, 136.500000)
			arg0:setTopBottom(false, false, -39.130000, -24.130000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal29:completeAnimation()
		registerVal2.RGBLineUR:setLeftRight(false, false, 152.500000, 182.500000)
		registerVal2.RGBLineUR:setTopBottom(false, false, -39.130000, -24.130000)
		__FUNC_FFC9_(registerVal29, {})
		local function __FUNC_101CA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 106.500000, 136.500000)
			arg0:setTopBottom(false, false, 25.870000, 40.870000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal30:completeAnimation()
		registerVal2.RGBLineLR:setLeftRight(false, false, 152.500000, 182.500000)
		registerVal2.RGBLineLR:setTopBottom(false, false, 25.870000, 40.870000)
		__FUNC_101CA_(registerVal30, {})
		local function __FUNC_103CA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -139.500000, -109.500000)
			arg0:setTopBottom(false, false, -39.130000, -24.130000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal31:completeAnimation()
		registerVal2.RGBLineUL:setLeftRight(false, false, -183.500000, -153.500000)
		registerVal2.RGBLineUL:setTopBottom(false, false, -39.130000, -24.130000)
		__FUNC_103CA_(registerVal31, {})
		local function __FUNC_105CA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -139.500000, -109.500000)
			arg0:setTopBottom(false, false, 25.870000, 40.870000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal32:completeAnimation()
		registerVal2.RGBLineLL:setLeftRight(false, false, -183.500000, -153.500000)
		registerVal2.RGBLineLL:setTopBottom(false, false, 25.870000, 40.870000)
		__FUNC_105CA_(registerVal32, {})
	end

	registerVal45.Zoom = __FUNC_B1B9_
	registerVal43["DefaultState"] = registerVal45
	registerVal44 = {}
	local function __FUNC_107CA_()
		registerVal2:setupElementClipCounter(26.000000)
		registerVal5:completeAnimation()
		registerVal2.BackgroundLinesTexture:setZoom(-150.000000)
		registerVal2.BackgroundLinesTexture:setScale(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.OutsideRing:setLeftRight(false, false, -201.420000, 201.630000)
		registerVal2.OutsideRing:setTopBottom(false, false, -200.500000, 202.550000)
		registerVal2.OutsideRing:setAlpha(0.300000)
		registerVal2.OutsideRing:setZoom(-218.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.CenterUpperLine:setLeftRight(false, false, -139.500000, 139.500000)
		registerVal2.CenterUpperLine:setTopBottom(false, false, -55.070000, -39.130000)
		registerVal2.CenterUpperLine:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.CenterLowerLine:setLeftRight(false, false, -139.500000, 139.500000)
		registerVal2.CenterLowerLine:setTopBottom(false, false, 40.870000, 56.810000)
		registerVal2.CenterLowerLine:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.CenterReticleSolid:setLeftRight(false, false, -82.730000, 85.180000)
		registerVal2.CenterReticleSolid:setTopBottom(false, false, -42.950000, 45.000000)
		registerVal2.CenterReticleSolid:setAlpha(0.000000)
		registerVal2.CenterReticleSolid:setZoom(98.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.CenterReticleLineR:setLeftRight(false, false, 85.180000, 109.900000)
		registerVal2.CenterReticleLineR:setTopBottom(false, false, -44.310000, 46.360000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.CenterReticleLineL:setLeftRight(false, false, -109.500000, -84.770000)
		registerVal2.CenterReticleLineL:setTopBottom(false, false, -44.310000, 46.360000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.OutsideRingLineBlurR:setLeftRight(false, false, 217.400000, 297.020000)
		registerVal2.OutsideRingLineBlurR:setTopBottom(false, false, -170.680000, 171.680000)
		registerVal2.OutsideRingLineBlurR:setZoom(-150.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.OusideRingLineBlurL:setLeftRight(false, false, -296.500000, -216.880000)
		registerVal2.OusideRingLineBlurL:setTopBottom(false, false, -170.680000, 171.680000)
		registerVal2.OusideRingLineBlurL:setZoom(-150.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.OutsideRingLines:setLeftRight(false, false, -200.940000, 201.110000)
		registerVal2.OutsideRingLines:setTopBottom(false, false, -124.440000, 124.830000)
		registerVal2.OutsideRingLines:setAlpha(0.300000)
		registerVal2.OutsideRingLines:setZoom(-121.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.OutsideHashLineR1:setLeftRight(false, false, 316.250000, 420.000000)
		registerVal2.OutsideHashLineR1:setTopBottom(false, false, -225.440000, 229.490000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.OutsideHashLineR2:setLeftRight(false, false, 291.000000, 395.750000)
		registerVal2.OutsideHashLineR2:setTopBottom(false, false, -127.870000, 129.990000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.OutsideHashLineR3:setLeftRight(false, false, 267.620000, 372.380000)
		registerVal2.OutsideHashLineR3:setTopBottom(false, false, -43.820000, 44.820000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.OutsideHashLineR4:setLeftRight(false, false, 239.000000, 343.000000)
		registerVal2.OutsideHashLineR4:setTopBottom(false, false, -11.500000, 13.990000)
		registerVal2.OutsideHashLineR4:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.OutsideHashLineR10:setLeftRight(false, false, -417.750000, -314.000000)
		registerVal2.OutsideHashLineR10:setTopBottom(false, false, -226.440000, 228.490000)
		registerVal2.OutsideHashLineR10:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.OutsideHashLineR20:setLeftRight(false, false, -391.750000, -287.000000)
		registerVal2.OutsideHashLineR20:setTopBottom(false, false, -127.870000, 129.990000)
		registerVal2.OutsideHashLineR20:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.OutsideHashLineR30:setLeftRight(false, false, -368.380000, -263.620000)
		registerVal2.OutsideHashLineR30:setTopBottom(false, false, -42.820000, 45.820000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.OutsideHashLineR40:setLeftRight(false, false, -335.750000, -231.750000)
		registerVal2.OutsideHashLineR40:setTopBottom(false, false, -12.500000, 13.990000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal25:completeAnimation()
		registerVal2.OutsideLineUR:setLeftRight(false, false, 228.810000, 330.810000)
		registerVal2.OutsideLineUR:setTopBottom(false, false, -87.760000, -71.820000)
		registerVal2.OutsideLineUR:setAlpha(0.500000)
		registerVal2.OutsideLineUR:setZoom(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.OutsideLineLR:setLeftRight(false, false, 228.810000, 330.810000)
		registerVal2.OutsideLineLR:setTopBottom(false, false, 75.210000, 91.150000)
		registerVal2.OutsideLineLR:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.OutsideLineUL:setLeftRight(false, false, -327.500000, -225.500000)
		registerVal2.OutsideLineUL:setTopBottom(false, false, -87.760000, -71.820000)
		registerVal2.OutsideLineUL:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.OutsideLineLL:setLeftRight(false, false, -327.500000, -225.500000)
		registerVal2.OutsideLineLL:setTopBottom(false, false, 75.210000, 91.150000)
		registerVal2.OutsideLineLL:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal28, {})
		registerVal29:completeAnimation()
		registerVal2.RGBLineUR:setLeftRight(false, false, 106.500000, 136.500000)
		registerVal2.RGBLineUR:setTopBottom(false, false, -39.130000, -24.130000)
		registerVal2.clipFinished(registerVal29, {})
		registerVal30:completeAnimation()
		registerVal2.RGBLineLR:setLeftRight(false, false, 106.500000, 136.500000)
		registerVal2.RGBLineLR:setTopBottom(false, false, 25.870000, 40.870000)
		registerVal2.clipFinished(registerVal30, {})
		registerVal31:completeAnimation()
		registerVal2.RGBLineUL:setLeftRight(false, false, -139.500000, -109.500000)
		registerVal2.RGBLineUL:setTopBottom(false, false, -39.130000, -24.130000)
		registerVal2.clipFinished(registerVal31, {})
		registerVal32:completeAnimation()
		registerVal2.RGBLineLL:setLeftRight(false, false, -139.500000, -109.500000)
		registerVal2.RGBLineLL:setTopBottom(false, false, 25.870000, 40.870000)
		registerVal2.clipFinished(registerVal32, {})
	end

	registerVal44["DefaultClip"] = __FUNC_107CA_
	local function __FUNC_11AF5_()
		registerVal2:setupElementClipCounter(26.000000)
		local function __FUNC_12E56_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setZoom(0.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.BackgroundLinesTexture:setZoom(-150.000000)
		registerVal2.BackgroundLinesTexture:setScale(1.000000)
		__FUNC_12E56_(registerVal5, {})
		local function __FUNC_1302B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -201.420000, 201.630000)
			arg0:setTopBottom(false, false, -200.500000, 202.550000)
			arg0:setAlpha(0.300000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.OutsideRing:setLeftRight(false, false, -201.420000, 201.630000)
		registerVal2.OutsideRing:setTopBottom(false, false, -200.500000, 202.550000)
		registerVal2.OutsideRing:setAlpha(0.300000)
		registerVal2.OutsideRing:setZoom(-218.000000)
		__FUNC_1302B_(registerVal6, {})
		local function __FUNC_1326F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -139.500000, 139.500000)
			arg0:setTopBottom(false, false, -120.440000, -104.500000)
			arg0:setAlpha(0.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.CenterUpperLine:setLeftRight(false, false, -139.500000, 139.500000)
		registerVal2.CenterUpperLine:setTopBottom(false, false, -55.070000, -39.130000)
		registerVal2.CenterUpperLine:setAlpha(0.200000)
		__FUNC_1326F_(registerVal8, {})
		local function __FUNC_13491_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -139.500000, 139.500000)
			arg0:setTopBottom(false, false, 109.560000, 125.500000)
			arg0:setAlpha(0.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.CenterLowerLine:setLeftRight(false, false, -139.500000, 139.500000)
		registerVal2.CenterLowerLine:setTopBottom(false, false, 40.870000, 56.810000)
		registerVal2.CenterLowerLine:setAlpha(0.200000)
		__FUNC_13491_(registerVal9, {})
		local function __FUNC_136B5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -82.730000, 85.180000)
			arg0:setTopBottom(false, false, -42.950000, 45.000000)
			arg0:setAlpha(0.050000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.CenterReticleSolid:setLeftRight(false, false, -82.730000, 85.180000)
		registerVal2.CenterReticleSolid:setTopBottom(false, false, -42.950000, 45.000000)
		registerVal2.CenterReticleSolid:setAlpha(0.000000)
		registerVal2.CenterReticleSolid:setZoom(98.000000)
		__FUNC_136B5_(registerVal10, {})
		local function __FUNC_138FB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 60.450000, 85.180000)
			arg0:setTopBottom(false, false, -44.310000, 46.360000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.CenterReticleLineR:setLeftRight(false, false, 85.180000, 109.900000)
		registerVal2.CenterReticleLineR:setTopBottom(false, false, -44.310000, 46.360000)
		__FUNC_138FB_(registerVal11, {})
		local function __FUNC_13AFA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -84.730000, -60.010000)
			arg0:setTopBottom(false, false, -44.310000, 46.360000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.CenterReticleLineL:setLeftRight(false, false, -109.500000, -84.770000)
		registerVal2.CenterReticleLineL:setTopBottom(false, false, -44.310000, 46.360000)
		__FUNC_13AFA_(registerVal12, {})
		local function __FUNC_13CFA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 222.880000, 302.500000)
			arg0:setTopBottom(false, false, -170.680000, 171.680000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.OutsideRingLineBlurR:setLeftRight(false, false, 217.400000, 297.020000)
		registerVal2.OutsideRingLineBlurR:setTopBottom(false, false, -170.680000, 171.680000)
		registerVal2.OutsideRingLineBlurR:setZoom(-150.000000)
		__FUNC_13CFA_(registerVal13, {})
		local function __FUNC_13F1C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -295.120000, -215.500000)
			arg0:setTopBottom(false, false, -170.680000, 171.680000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.OusideRingLineBlurL:setLeftRight(false, false, -296.500000, -216.880000)
		registerVal2.OusideRingLineBlurL:setTopBottom(false, false, -170.680000, 171.680000)
		registerVal2.OusideRingLineBlurL:setZoom(-150.000000)
		__FUNC_13F1C_(registerVal14, {})
		local function __FUNC_14140_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -200.940000, 201.110000)
			arg0:setTopBottom(false, false, -124.440000, 124.830000)
			arg0:setAlpha(0.300000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.OutsideRingLines:setLeftRight(false, false, -200.940000, 201.110000)
		registerVal2.OutsideRingLines:setTopBottom(false, false, -124.440000, 124.830000)
		registerVal2.OutsideRingLines:setAlpha(0.300000)
		registerVal2.OutsideRingLines:setZoom(-121.000000)
		__FUNC_14140_(registerVal15, {})
		registerVal16:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
		registerVal16:setLeftRight(false, false, 316.250000, 420.000000)
		registerVal16:setTopBottom(false, false, -225.440000, 229.490000)
		registerVal16:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		local function __FUNC_14387_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 315.490000, 420.250000)
			arg0:setTopBottom(false, false, -127.870000, 129.990000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
		registerVal17:setLeftRight(false, false, 291.000000, 395.750000)
		registerVal17:setTopBottom(false, false, -127.870000, 129.990000)
		registerVal17:registerEventHandler("transition_complete_keyframe", __FUNC_14387_)
		local function __FUNC_14586_(arg0, arg1)
			local function __FUNC_1474C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, 315.250000, 420.000000)
				arg0:setTopBottom(false, false, -43.820000, 44.810000)
				arg0:setAlpha(0.700000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1474C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, 315.250000, 420.000000)
			arg0:setTopBottom(false, false, -43.820000, 44.810000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1474C_)
		end

		registerVal18:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
		registerVal18:setLeftRight(false, false, 267.620000, 372.380000)
		registerVal18:setTopBottom(false, false, -43.820000, 44.820000)
		registerVal18:setAlpha(0.700000)
		registerVal18:registerEventHandler("transition_complete_keyframe", __FUNC_14586_)
		local function __FUNC_14971_(arg0, arg1)
			local function __FUNC_14B00_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, 316.250000, 420.250000)
				arg0:setTopBottom(false, false, -11.500000, 13.990000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_14B00_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, 316.250000, 420.250000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14B00_)
		end

		registerVal19:completeAnimation()
		registerVal2.OutsideHashLineR4:setLeftRight(false, false, 239.000000, 343.000000)
		registerVal2.OutsideHashLineR4:setTopBottom(false, false, -11.500000, 13.990000)
		registerVal2.OutsideHashLineR4:setAlpha(1.000000)
		__FUNC_14971_(registerVal19, {})
		registerVal20:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
		registerVal20:setLeftRight(false, false, -417.750000, -314.000000)
		registerVal20:setTopBottom(false, false, -226.440000, 228.490000)
		registerVal20:setAlpha(0.900000)
		registerVal20:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		local function __FUNC_14D25_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -418.510000, -313.750000)
			arg0:setTopBottom(false, false, -127.870000, 129.990000)
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal21:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
		registerVal21:setLeftRight(false, false, -391.750000, -287.000000)
		registerVal21:setTopBottom(false, false, -127.870000, 129.990000)
		registerVal21:setAlpha(0.800000)
		registerVal21:registerEventHandler("transition_complete_keyframe", __FUNC_14D25_)
		local function __FUNC_14F49_(arg0, arg1)
			local function __FUNC_15110_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -418.750000, -314.000000)
				arg0:setTopBottom(false, false, -42.820000, 45.810000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_15110_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -418.750000, -314.000000)
			arg0:setTopBottom(false, false, -42.820000, 45.810000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15110_)
		end

		registerVal22:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
		registerVal22:setLeftRight(false, false, -368.380000, -263.620000)
		registerVal22:setTopBottom(false, false, -42.820000, 45.820000)
		registerVal22:registerEventHandler("transition_complete_keyframe", __FUNC_14F49_)
		local function __FUNC_15312_(arg0, arg1)
			local function __FUNC_154A0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -418.750000, -314.750000)
				arg0:setTopBottom(false, false, -12.500000, 13.990000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_154A0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -418.750000, -314.750000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_154A0_)
		end

		registerVal23:completeAnimation()
		registerVal2.OutsideHashLineR40:setLeftRight(false, false, -335.750000, -231.750000)
		registerVal2.OutsideHashLineR40:setTopBottom(false, false, -12.500000, 13.990000)
		__FUNC_15312_(registerVal23, {})
		local function __FUNC_156A2_(arg0, arg1)
			local function __FUNC_1588B_(arg0, arg1)
				local function __FUNC_159E0_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, 249.810000, 351.810000)
					arg0:setTopBottom(false, false, -120.440000, -104.500000)
					arg0:setAlpha(0.600000)
					arg0:setZoom(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_159E0_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_159E0_)
			end

			if arg1.interrupted then
				__FUNC_1588B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, 249.810000, 351.810000)
			arg0:setTopBottom(false, false, -87.760000, -71.820000)
			arg0:setAlpha(0.600000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1588B_)
		end

		registerVal25:completeAnimation()
		registerVal2.OutsideLineUR:setLeftRight(false, false, 228.810000, 330.810000)
		registerVal2.OutsideLineUR:setTopBottom(false, false, -87.760000, -71.820000)
		registerVal2.OutsideLineUR:setAlpha(0.400000)
		registerVal2.OutsideLineUR:setZoom(0.000000)
		__FUNC_156A2_(registerVal25, {})
		local function __FUNC_15C27_(arg0, arg1)
			local function __FUNC_15DD7_(arg0, arg1)
				local function __FUNC_15F2C_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, 249.810000, 351.810000)
					arg0:setTopBottom(false, false, 109.560000, 125.500000)
					arg0:setAlpha(0.800000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_15F2C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15F2C_)
			end

			if arg1.interrupted then
				__FUNC_15DD7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, 249.810000, 351.810000)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15DD7_)
		end

		registerVal26:completeAnimation()
		registerVal2.OutsideLineLR:setLeftRight(false, false, 228.810000, 330.810000)
		registerVal2.OutsideLineLR:setTopBottom(false, false, 75.210000, 91.150000)
		registerVal2.OutsideLineLR:setAlpha(0.400000)
		__FUNC_15C27_(registerVal26, {})
		local function __FUNC_16151_(arg0, arg1)
			local function __FUNC_16303_(arg0, arg1)
				local function __FUNC_16458_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -347.500000, -245.500000)
					arg0:setTopBottom(false, false, -120.440000, -104.500000)
					arg0:setAlpha(0.800000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_16458_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16458_)
			end

			if arg1.interrupted then
				__FUNC_16303_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -347.500000, -245.500000)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16303_)
		end

		registerVal27:completeAnimation()
		registerVal2.OutsideLineUL:setLeftRight(false, false, -327.500000, -225.500000)
		registerVal2.OutsideLineUL:setTopBottom(false, false, -87.760000, -71.820000)
		registerVal2.OutsideLineUL:setAlpha(0.400000)
		__FUNC_16151_(registerVal27, {})
		local function __FUNC_1667D_(arg0, arg1)
			local function __FUNC_1682F_(arg0, arg1)
				local function __FUNC_16984_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -347.500000, -245.500000)
					arg0:setTopBottom(false, false, 109.560000, 125.500000)
					arg0:setAlpha(0.800000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_16984_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16984_)
			end

			if arg1.interrupted then
				__FUNC_1682F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -347.500000, -245.500000)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1682F_)
		end

		registerVal28:completeAnimation()
		registerVal2.OutsideLineLL:setLeftRight(false, false, -327.500000, -225.500000)
		registerVal2.OutsideLineLL:setTopBottom(false, false, 75.210000, 91.150000)
		registerVal2.OutsideLineLL:setAlpha(0.400000)
		__FUNC_1667D_(registerVal28, {})
		local function __FUNC_16BA9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 152.500000, 182.500000)
			arg0:setTopBottom(false, false, -39.130000, -24.130000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal29:completeAnimation()
		registerVal2.RGBLineUR:setLeftRight(false, false, 106.500000, 136.500000)
		registerVal2.RGBLineUR:setTopBottom(false, false, -39.130000, -24.130000)
		__FUNC_16BA9_(registerVal29, {})
		local function __FUNC_16DAA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 152.500000, 182.500000)
			arg0:setTopBottom(false, false, 25.870000, 40.870000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal30:completeAnimation()
		registerVal2.RGBLineLR:setLeftRight(false, false, 106.500000, 136.500000)
		registerVal2.RGBLineLR:setTopBottom(false, false, 25.870000, 40.870000)
		__FUNC_16DAA_(registerVal30, {})
		local function __FUNC_16FAA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -183.500000, -153.500000)
			arg0:setTopBottom(false, false, -39.130000, -24.130000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal31:completeAnimation()
		registerVal2.RGBLineUL:setLeftRight(false, false, -139.500000, -109.500000)
		registerVal2.RGBLineUL:setTopBottom(false, false, -39.130000, -24.130000)
		__FUNC_16FAA_(registerVal31, {})
		local function __FUNC_171AA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -183.500000, -153.500000)
			arg0:setTopBottom(false, false, 25.870000, 40.870000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal32:completeAnimation()
		registerVal2.RGBLineLL:setLeftRight(false, false, -139.500000, -109.500000)
		registerVal2.RGBLineLL:setTopBottom(false, false, 25.870000, 40.870000)
		__FUNC_171AA_(registerVal32, {})
	end

	registerVal44["DefaultState"] = __FUNC_11AF5_
	registerVal43.Zoom = registerVal44
	registerVal2["clipsPerState"] = registerVal43
	local function __FUNC_173AA_(arg0)
		arg0.vhudsentinelCenterReticle0:close()
		arg0.vhudsentinelhorizonelements0:close()
		arg0.vhudsentinelTimeBar:close()
		arg0.vhudsentinelDamageIconWidget:close()
		arg0.speedBox:close()
		arg0.vhudsentinelNotificationLine:close()
		arg0.vhudmsLockOnNotification:close()
		arg0.vhudsentinelNotificationSignalBox:close()
		arg0.signalBox:close()
		arg0.vhudsentinelAltitudeInfo0:close()
		arg0.SpeedNumbers:close()
	end

	LUI["OverrideFunction_CallOriginalSecond"](registerVal2, "close", __FUNC_173AA_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

