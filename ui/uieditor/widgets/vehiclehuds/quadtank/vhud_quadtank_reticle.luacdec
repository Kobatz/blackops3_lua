-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_LockOnNotification")
require("ui.uieditor.widgets.VehicleHUDs.genericVHUDdamageArea")
require("ui.uieditor.widgets.VehicleHUDs.agr.vhud_agr_ReticleFocusFrameRight")
require("ui.uieditor.widgets.VehicleHUDs.agr.vhud_agr_ReticleFocusFrameLeft")
require("ui.uieditor.widgets.VehicleHUDs.agr.vhud_agr_ReticleHairlineBottom")
require("ui.uieditor.widgets.VehicleHUDs.agr.vhud_agr_ReticleOutsideLine")
require("ui.uieditor.widgets.VehicleHUDs.agr.vhud_agr_ReticleOutsideDotsUR")
require("ui.uieditor.widgets.VehicleHUDs.agr.vhud_agr_ReticleOutsideDotsLR")
require("ui.uieditor.widgets.VehicleHUDs.agr.vhud_agr_OutsideLine")
require("ui.uieditor.widgets.VehicleHUDs.agr.vhud_agr_ReticleCenterHairline")
require("ui.uieditor.widgets.VehicleHUDs.agr.vhud_agr_MissilesWidgetLeft")
require("ui.uieditor.widgets.VehicleHUDs.agr.vhud_agr_RpmWidget")
require("ui.uieditor.widgets.VehicleHUDs.agr.vhud_agr_TimeBar")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_quadtank_reticle = registerVal1
function CoD.vhud_quadtank_reticle.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_quadtank_reticle)
	registerVal2.id = "vhud_quadtank_reticle"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.450000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_agr_textureoverlaygrid"))
	registerVal2:addElement(registerVal3)
	registerVal2.TextureOverlayGrid = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -9.000000, 7.000000)
	registerVal4:setTopBottom(false, false, -8.000000, 8.000000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_agr_centerpoint"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.agrCenterPoint = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -9.000000, 7.000000)
	registerVal5:setTopBottom(false, false, -8.000000, 8.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_cp_hud_vehicle_agr_centerpoint"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.agrCenterPoint0 = registerVal5
	local registerVal6 = CoD.vhud_ms_LockOnNotification.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -19.000000, 21.180000)
	registerVal6:setTopBottom(false, false, -192.680000, -152.500000)
	registerVal2:addElement(registerVal6)
	registerVal2.vhudmsLockOnNotification = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, 260.570000, 422.860000)
	registerVal7:setTopBottom(false, false, -128.790000, -69.000000)
	registerVal7:setAlpha(0.500000)
	registerVal7:setImage(RegisterImage("uie_t7_cp_hud_vehicle_agr_reticleoutsidedotsrgb"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.agrReticleOutsideDotsBlurUR = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -415.730000, -253.440000)
	registerVal8:setTopBottom(false, false, -128.790000, -69.000000)
	registerVal8:setAlpha(0.530000)
	registerVal8:setYRot(-180.000000)
	registerVal8:setImage(RegisterImage("uie_t7_cp_hud_vehicle_agr_reticleoutsidedotsrgb"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.agrReticleOutsideDotsBlurUL = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, 259.570000, 421.860000)
	registerVal9:setTopBottom(false, false, 75.250000, 135.040000)
	registerVal9:setAlpha(0.530000)
	registerVal9:setXRot(-180.000000)
	registerVal9:setImage(RegisterImage("uie_t7_cp_hud_vehicle_agr_reticleoutsidedotsrgb"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.agrReticleOutsideDotsBlurLR = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, false, -404.100000, -241.810000)
	registerVal10:setTopBottom(false, false, 75.250000, 135.040000)
	registerVal10:setAlpha(0.530000)
	registerVal10:setXRot(-180.000000)
	registerVal10:setYRot(-180.000000)
	registerVal10:setImage(RegisterImage("uie_t7_cp_hud_vehicle_agr_reticleoutsidedotsrgb"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.agrReticleOutsideDotsBlurLL = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, false, -293.830000, -115.160000)
	registerVal11:setTopBottom(false, false, -93.000000, 93.000000)
	registerVal11:setAlpha(0.350000)
	registerVal11:setYRot(-180.000000)
	registerVal11:setImage(RegisterImage("uie_t7_cp_hud_vehicle_agr_reticlefocusblur"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.agrReticleFocusBlurL = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, false, 121.810000, 300.380000)
	registerVal12:setTopBottom(false, false, -93.000000, 93.000000)
	registerVal12:setAlpha(0.350000)
	registerVal12:setImage(RegisterImage("uie_t7_cp_hud_vehicle_agr_reticlefocusblur"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.agrReticleFocusBlurR = registerVal12
	local registerVal13 = CoD.genericVHUDdamageArea.new(arg0, arg1)
	registerVal13:setLeftRight(false, false, 406.530000, 506.530000)
	registerVal13:setTopBottom(false, false, -259.000000, -159.000000)
	registerVal13:setYRot(-20.000000)
	registerVal13.lineBack:setRGB(0.490000, 1.000000, 0.740000)
	registerVal13.lineBack:setImage(RegisterImage("uie_t7_cp_hud_vehicle_quadtank_damageiconlinergb"))
	registerVal13.fill:setImage(RegisterImage("uie_t7_cp_hud_vehicle_quadtank_damageiconred"))
	registerVal13.lineFront:setRGB(0.490000, 1.000000, 0.740000)
	registerVal13.lineFront:setImage(RegisterImage("uie_t7_cp_hud_vehicle_quadtank_damageiconlinergb"))
	local function __FUNC_2A81_(arg0)
		registerVal13:setModel(arg0, arg1)
	end

	registerVal13:linkToElementModel(registerVal2, nil, false, __FUNC_2A81_)
	registerVal2:addElement(registerVal13)
	registerVal2.quadtankDamageIcon = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(false, false, 296.380000, 499.530000)
	registerVal14:setTopBottom(false, false, -310.510000, -152.500000)
	registerVal14:setAlpha(0.150000)
	registerVal14:setImage(RegisterImage("uie_t7_cp_hud_vehicle_agr_reticleoutsidelineblur"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.Image0 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(false, false, 296.380000, 499.530000)
	registerVal15:setTopBottom(false, false, 149.670000, 307.680000)
	registerVal15:setAlpha(0.150000)
	registerVal15:setXRot(-180.000000)
	registerVal15:setImage(RegisterImage("uie_t7_cp_hud_vehicle_agr_reticleoutsidelineblur"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.Image1 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(false, false, -516.170000, -313.010000)
	registerVal16:setTopBottom(false, false, -310.510000, -152.500000)
	registerVal16:setAlpha(0.150000)
	registerVal16:setYRot(180.000000)
	registerVal16:setImage(RegisterImage("uie_t7_cp_hud_vehicle_agr_reticleoutsidelineblur"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal16)
	registerVal2.Image2 = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(false, false, -516.170000, -313.010000)
	registerVal17:setTopBottom(false, false, 149.670000, 307.680000)
	registerVal17:setAlpha(0.150000)
	registerVal17:setXRot(180.000000)
	registerVal17:setYRot(180.000000)
	registerVal17:setImage(RegisterImage("uie_t7_cp_hud_vehicle_agr_reticleoutsidelineblur"))
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal17)
	registerVal2.Image3 = registerVal17
	local registerVal18 = CoD.vhud_agr_ReticleFocusFrameRight.new(arg0, arg1)
	registerVal18:setLeftRight(false, false, 64.000000, 224.730000)
	registerVal18:setTopBottom(false, false, -44.200000, 44.200000)
	registerVal18:setAlpha(0.500000)
	registerVal2:addElement(registerVal18)
	registerVal2.vhudagrReticleFocusFrameRight = registerVal18
	local registerVal19 = CoD.vhud_agr_ReticleFocusFrameLeft.new(arg0, arg1)
	registerVal19:setLeftRight(false, false, -231.010000, -70.280000)
	registerVal19:setTopBottom(false, false, -44.200000, 44.200000)
	registerVal19:setAlpha(0.500000)
	registerVal2:addElement(registerVal19)
	registerVal2.vhudagrReticleFocusFrameLeft = registerVal19
	local registerVal20 = CoD.vhud_agr_ReticleHairlineBottom.new(arg0, arg1)
	registerVal20:setLeftRight(false, false, -9.000000, 7.000000)
	registerVal20:setTopBottom(false, false, 53.000000, 93.000000)
	registerVal20:setAlpha(0.500000)
	registerVal2:addElement(registerVal20)
	registerVal2.vhudagrReticleHairlineBottom = registerVal20
	local registerVal21 = CoD.vhud_agr_ReticleHairlineBottom.new(arg0, arg1)
	registerVal21:setLeftRight(false, false, -9.000000, 7.000000)
	registerVal21:setTopBottom(false, false, -91.000000, -51.000000)
	registerVal21:setAlpha(0.500000)
	registerVal21:setZRot(180.000000)
	registerVal2:addElement(registerVal21)
	registerVal2.vhudagrReticleHairlineTop = registerVal21
	local registerVal22 = CoD.vhud_agr_ReticleOutsideLine.new(arg0, arg1)
	registerVal22:setLeftRight(false, false, 173.430000, 245.000000)
	registerVal22:setTopBottom(false, false, -175.500000, -119.830000)
	registerVal22:setAlpha(0.760000)
	registerVal2:addElement(registerVal22)
	registerVal2.vhudagrReticleOutsideLine = registerVal22
	local registerVal23 = CoD.vhud_agr_ReticleOutsideDotsUR.new(arg0, arg1)
	registerVal23:setLeftRight(false, false, 112.560000, 176.160000)
	registerVal23:setTopBottom(false, false, -60.100000, -28.300000)
	registerVal2:addElement(registerVal23)
	registerVal2.vhudagrReticleOutsideDotsUR = registerVal23
	local registerVal24 = CoD.vhud_agr_ReticleOutsideDotsLR.new(arg0, arg1)
	registerVal24:setLeftRight(false, false, 112.560000, 176.160000)
	registerVal24:setTopBottom(false, false, 26.300000, 58.100000)
	registerVal2:addElement(registerVal24)
	registerVal2.vhudagrReticleOutsideDotsLR = registerVal24
	local registerVal25 = CoD.vhud_agr_ReticleOutsideDotsUR.new(arg0, arg1)
	registerVal25:setLeftRight(false, false, -178.000000, -114.400000)
	registerVal25:setTopBottom(false, false, 26.300000, 58.100000)
	registerVal25:setZRot(-180.000000)
	registerVal2:addElement(registerVal25)
	registerVal2.vhudagrReticleOutsideDotsUR0 = registerVal25
	local registerVal26 = CoD.vhud_agr_ReticleOutsideDotsLR.new(arg0, arg1)
	registerVal26:setLeftRight(false, false, -178.000000, -114.400000)
	registerVal26:setTopBottom(false, false, -60.100000, -28.300000)
	registerVal26:setZRot(-180.000000)
	registerVal2:addElement(registerVal26)
	registerVal2.vhudagrReticleOutsideDotsLR0 = registerVal26
	local registerVal27 = CoD.vhud_agr_OutsideLine.new(arg0, arg1)
	registerVal27:setLeftRight(false, false, 301.000000, 355.250000)
	registerVal27:setTopBottom(false, false, -7.500000, 8.000000)
	registerVal2:addElement(registerVal27)
	registerVal2.vhudagrOutsideLine = registerVal27
	local registerVal28 = CoD.vhud_agr_OutsideLine.new(arg0, arg1)
	registerVal28:setLeftRight(false, false, -348.080000, -293.830000)
	registerVal28:setTopBottom(false, false, -7.500000, 8.000000)
	registerVal28:setZRot(180.000000)
	registerVal2:addElement(registerVal28)
	registerVal2.vhudagrOutsideLine0 = registerVal28
	local registerVal29 = CoD.vhud_agr_ReticleCenterHairline.new(arg0, arg1)
	registerVal29:setLeftRight(false, false, 18.180000, 35.180000)
	registerVal29:setTopBottom(false, false, -4.250000, 4.250000)
	registerVal2:addElement(registerVal29)
	registerVal2.vhudagrReticleCenterHairline = registerVal29
	local registerVal30 = CoD.vhud_agr_ReticleCenterHairline.new(arg0, arg1)
	registerVal30:setLeftRight(false, false, -35.000000, -18.000000)
	registerVal30:setTopBottom(false, false, -3.730000, 4.770000)
	registerVal30:setZRot(180.000000)
	registerVal2:addElement(registerVal30)
	registerVal2.vhudagrReticleCenterHairline0 = registerVal30
	local registerVal31 = CoD.vhud_agr_ReticleOutsideLine.new(arg0, arg1)
	registerVal31:setLeftRight(false, false, -250.570000, -179.000000)
	registerVal31:setTopBottom(false, false, -177.830000, -122.170000)
	registerVal31:setAlpha(0.760000)
	registerVal31:setZRot(109.000000)
	registerVal2:addElement(registerVal31)
	registerVal2.vhudagrReticleOutsideLine0 = registerVal31
	local registerVal32 = CoD.vhud_agr_ReticleOutsideLine.new(arg0, arg1)
	registerVal32:setLeftRight(false, false, 170.430000, 242.000000)
	registerVal32:setTopBottom(false, false, 124.170000, 179.830000)
	registerVal32:setAlpha(0.760000)
	registerVal32:setZRot(-70.000000)
	registerVal2:addElement(registerVal32)
	registerVal2.vhudagrReticleOutsideLine1 = registerVal32
	local registerVal33 = CoD.vhud_agr_ReticleOutsideLine.new(arg0, arg1)
	registerVal33:setLeftRight(false, false, -248.000000, -176.430000)
	registerVal33:setTopBottom(false, false, 121.830000, 177.500000)
	registerVal33:setAlpha(0.760000)
	registerVal33:setZRot(-180.000000)
	registerVal2:addElement(registerVal33)
	registerVal2.vhudagrReticleOutsideLine2 = registerVal33
	local registerVal34 = CoD.vhud_agr_ReticleCenterHairline.new(arg0, arg1)
	registerVal34:setLeftRight(false, false, 18.000000, 35.000000)
	registerVal34:setTopBottom(false, false, -4.250000, 4.250000)
	registerVal2:addElement(registerVal34)
	registerVal2.vhudagrReticleCenterHairline1 = registerVal34
	local registerVal35 = CoD.vhud_agr_ReticleCenterHairline.new(arg0, arg1)
	registerVal35:setLeftRight(false, false, -35.000000, -18.000000)
	registerVal35:setTopBottom(false, false, -3.730000, 4.770000)
	registerVal35:setZRot(180.000000)
	registerVal2:addElement(registerVal35)
	registerVal2.vhudagrReticleCenterHairline00 = registerVal35
	local registerVal36 = CoD.vhud_agr_MissilesWidgetLeft.new(arg0, arg1)
	registerVal36:setLeftRight(false, true, -226.470000, -140.470000)
	registerVal36:setTopBottom(false, false, -18.050000, 130.250000)
	registerVal36:setAlpha(0.900000)
	local function __FUNC_2AD2_(arg0)
		registerVal36:setModel(arg0, arg1)
	end

	registerVal36:linkToElementModel(registerVal2, nil, false, __FUNC_2AD2_)
	registerVal2:addElement(registerVal36)
	registerVal2.vhudagrMissilesWidgetLeft = registerVal36
	local registerVal37 = CoD.vhud_agr_RpmWidget.new(arg0, arg1)
	registerVal37:setLeftRight(true, false, 162.410000, 248.410000)
	registerVal37:setTopBottom(true, false, 338.950000, 380.770000)
	registerVal2:addElement(registerVal37)
	registerVal2.vhudagrRpmWidget = registerVal37
	local registerVal38 = CoD.vhud_agr_TimeBar.new(arg0, arg1)
	registerVal38:setLeftRight(false, true, -298.470000, -80.470000)
	registerVal38:setTopBottom(true, false, 81.000000, 90.000000)
	registerVal38:setYRot(-20.000000)
	local function __FUNC_2B22_(arg0)
		registerVal38:setModel(arg0, arg1)
	end

	registerVal38:linkToElementModel(registerVal2, nil, false, __FUNC_2B22_)
	registerVal2:addElement(registerVal38)
	registerVal2.vhudagrTimeBar0 = registerVal38
	local registerVal39 = {}
	local registerVal40 = {}
	local function __FUNC_2B72_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal40.DefaultClip = __FUNC_2B72_
	local function __FUNC_2BD2_()
		registerVal2:setupElementClipCounter(33.000000)
		local function __FUNC_419D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.agrCenterPoint:setAlpha(0.000000)
		__FUNC_419D_(registerVal4, {})
		local function __FUNC_4351_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.agrCenterPoint0:setAlpha(0.000000)
		__FUNC_4351_(registerVal5, {})
		local function __FUNC_4505_(arg0, arg1)
			local function __FUNC_465C_(arg0, arg1)
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

			if arg1.interrupted then
				__FUNC_465C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_465C_)
		end

		registerVal6:completeAnimation()
		registerVal2.vhudmsLockOnNotification:setAlpha(0.000000)
		__FUNC_4505_(registerVal6, {})
		local function __FUNC_4811_(arg0, arg1)
			local function __FUNC_4968_(arg0, arg1)
				local function __FUNC_4AE1_(arg0, arg1)
					local function __FUNC_4C5B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, 260.000000, 422.290000)
						arg0:setTopBottom(false, false, -128.890000, -69.110000)
						arg0:setAlpha(0.500000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_4C5B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C5B_)
				end

				if arg1.interrupted then
					__FUNC_4AE1_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 299.000000, true, false, CoD.TweenType.Back)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4AE1_)
			end

			if arg1.interrupted then
				__FUNC_4968_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4968_)
		end

		registerVal7:completeAnimation()
		registerVal2.agrReticleOutsideDotsBlurUR:setLeftRight(false, false, 260.000000, 422.290000)
		registerVal2.agrReticleOutsideDotsBlurUR:setTopBottom(false, false, -128.890000, -69.110000)
		registerVal2.agrReticleOutsideDotsBlurUR:setAlpha(0.000000)
		__FUNC_4811_(registerVal7, {})
		local function __FUNC_4E7D_(arg0, arg1)
			local function __FUNC_4FD4_(arg0, arg1)
				local function __FUNC_514D_(arg0, arg1)
					local function __FUNC_52C7_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, -415.190000, -252.910000)
						arg0:setTopBottom(false, false, -128.890000, -69.110000)
						arg0:setAlpha(0.500000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_52C7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_52C7_)
				end

				if arg1.interrupted then
					__FUNC_514D_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 299.000000, true, false, CoD.TweenType.Back)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_514D_)
			end

			if arg1.interrupted then
				__FUNC_4FD4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4FD4_)
		end

		registerVal8:completeAnimation()
		registerVal2.agrReticleOutsideDotsBlurUL:setLeftRight(false, false, -415.190000, -252.910000)
		registerVal2.agrReticleOutsideDotsBlurUL:setTopBottom(false, false, -128.890000, -69.110000)
		registerVal2.agrReticleOutsideDotsBlurUL:setAlpha(0.000000)
		__FUNC_4E7D_(registerVal8, {})
		local function __FUNC_54E9_(arg0, arg1)
			local function __FUNC_5640_(arg0, arg1)
				local function __FUNC_57B9_(arg0, arg1)
					local function __FUNC_5933_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, 260.000000, 422.290000)
						arg0:setTopBottom(false, false, 75.250000, 135.040000)
						arg0:setAlpha(0.500000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_5933_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5933_)
				end

				if arg1.interrupted then
					__FUNC_57B9_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 299.000000, true, false, CoD.TweenType.Back)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_57B9_)
			end

			if arg1.interrupted then
				__FUNC_5640_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5640_)
		end

		registerVal9:completeAnimation()
		registerVal2.agrReticleOutsideDotsBlurLR:setLeftRight(false, false, 260.000000, 422.290000)
		registerVal2.agrReticleOutsideDotsBlurLR:setTopBottom(false, false, 75.250000, 135.040000)
		registerVal2.agrReticleOutsideDotsBlurLR:setAlpha(0.000000)
		__FUNC_54E9_(registerVal9, {})
		local function __FUNC_5B55_(arg0, arg1)
			local function __FUNC_5CAC_(arg0, arg1)
				local function __FUNC_5E25_(arg0, arg1)
					local function __FUNC_5F9F_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, -403.730000, -241.440000)
						arg0:setTopBottom(false, false, 75.250000, 135.040000)
						arg0:setAlpha(0.500000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_5F9F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5F9F_)
				end

				if arg1.interrupted then
					__FUNC_5E25_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 299.000000, true, false, CoD.TweenType.Back)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E25_)
			end

			if arg1.interrupted then
				__FUNC_5CAC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5CAC_)
		end

		registerVal10:completeAnimation()
		registerVal2.agrReticleOutsideDotsBlurLL:setLeftRight(false, false, -403.730000, -241.440000)
		registerVal2.agrReticleOutsideDotsBlurLL:setTopBottom(false, false, 75.250000, 135.040000)
		registerVal2.agrReticleOutsideDotsBlurLL:setAlpha(0.000000)
		__FUNC_5B55_(registerVal10, {})
		local function __FUNC_61C1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 490.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, false, -293.510000, -114.950000)
			arg0:setTopBottom(false, false, -93.000000, 93.000000)
			arg0:setAlpha(0.350000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.agrReticleFocusBlurL:setLeftRight(false, false, -576.000000, -397.440000)
		registerVal2.agrReticleFocusBlurL:setTopBottom(false, false, -93.000000, 93.000000)
		registerVal2.agrReticleFocusBlurL:setAlpha(0.000000)
		__FUNC_61C1_(registerVal11, {})
		local function __FUNC_63E3_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 490.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, false, 122.440000, 301.000000)
			arg0:setTopBottom(false, false, -93.000000, 93.000000)
			arg0:setAlpha(0.350000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.agrReticleFocusBlurR:setLeftRight(false, false, 397.440000, 576.000000)
		registerVal2.agrReticleFocusBlurR:setTopBottom(false, false, -93.000000, 93.000000)
		registerVal2.agrReticleFocusBlurR:setAlpha(0.000000)
		__FUNC_63E3_(registerVal12, {})
		local function __FUNC_6603_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 296.180000, 499.340000)
			arg0:setTopBottom(false, false, -310.510000, -152.500000)
			arg0:setAlpha(0.150000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.Image0:setLeftRight(false, false, 640.000000, 843.160000)
		registerVal2.Image0:setTopBottom(false, false, -518.010000, -360.000000)
		registerVal2.Image0:setAlpha(0.000000)
		__FUNC_6603_(registerVal14, {})
		local function __FUNC_6825_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 296.180000, 499.340000)
			arg0:setTopBottom(false, false, 149.830000, 307.840000)
			arg0:setAlpha(0.150000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.Image1:setLeftRight(false, false, 640.000000, 843.160000)
		registerVal2.Image1:setTopBottom(false, false, 360.000000, 518.010000)
		registerVal2.Image1:setAlpha(0.000000)
		__FUNC_6825_(registerVal15, {})
		local function __FUNC_6A49_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -516.170000, -313.010000)
			arg0:setTopBottom(false, false, -310.510000, -152.500000)
			arg0:setAlpha(0.150000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.Image2:setLeftRight(false, false, -842.890000, -639.740000)
		registerVal2.Image2:setTopBottom(false, false, -518.010000, -360.000000)
		registerVal2.Image2:setAlpha(0.000000)
		__FUNC_6A49_(registerVal16, {})
		local function __FUNC_6C6D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -516.170000, -313.010000)
			arg0:setTopBottom(false, false, 149.830000, 307.840000)
			arg0:setAlpha(0.150000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.Image3:setLeftRight(false, false, -842.890000, -639.740000)
		registerVal2.Image3:setTopBottom(false, false, 360.000000, 518.010000)
		registerVal2.Image3:setAlpha(0.000000)
		__FUNC_6C6D_(registerVal17, {})
		local function __FUNC_6E91_(arg0, arg1)
			local function __FUNC_7041_(arg0, arg1)
				local function __FUNC_71BB_(arg0, arg1)
					local function __FUNC_7333_(arg0, arg1)
						local function __FUNC_74AB_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(false, false, 64.000000, 224.730000)
							arg0:setTopBottom(false, false, -44.200000, 44.200000)
							arg0:setAlpha(0.500000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_74AB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.150000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_74AB_)
					end

					if arg1.interrupted then
						__FUNC_7333_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7333_)
				end

				if arg1.interrupted then
					__FUNC_71BB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.150000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_71BB_)
			end

			if arg1.interrupted then
				__FUNC_7041_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 490.000000, true, false, CoD.TweenType.Back)
			arg0:setLeftRight(false, false, 64.000000, 224.730000)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7041_)
		end

		registerVal18:completeAnimation()
		registerVal2.vhudagrReticleFocusFrameRight:setLeftRight(false, false, 285.380000, 446.100000)
		registerVal2.vhudagrReticleFocusFrameRight:setTopBottom(false, false, -44.200000, 44.200000)
		registerVal2.vhudagrReticleFocusFrameRight:setAlpha(0.000000)
		__FUNC_6E91_(registerVal18, {})
		local function __FUNC_76CD_(arg0, arg1)
			local function __FUNC_787D_(arg0, arg1)
				local function __FUNC_79F7_(arg0, arg1)
					local function __FUNC_7B6F_(arg0, arg1)
						local function __FUNC_7CE7_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(false, false, -231.400000, -70.670000)
							arg0:setTopBottom(false, false, -44.200000, 44.200000)
							arg0:setAlpha(0.500000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_7CE7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.150000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7CE7_)
					end

					if arg1.interrupted then
						__FUNC_7B6F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7B6F_)
				end

				if arg1.interrupted then
					__FUNC_79F7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.150000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_79F7_)
			end

			if arg1.interrupted then
				__FUNC_787D_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 490.000000, true, false, CoD.TweenType.Back)
			arg0:setLeftRight(false, false, -231.400000, -70.670000)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_787D_)
		end

		registerVal19:completeAnimation()
		registerVal2.vhudagrReticleFocusFrameLeft:setLeftRight(false, false, -442.090000, -281.370000)
		registerVal2.vhudagrReticleFocusFrameLeft:setTopBottom(false, false, -44.200000, 44.200000)
		registerVal2.vhudagrReticleFocusFrameLeft:setAlpha(0.000000)
		__FUNC_76CD_(registerVal19, {})
		local function __FUNC_7F09_(arg0, arg1)
			local function __FUNC_8060_(arg0, arg1)
				local function __FUNC_81F0_(arg0, arg1)
					local function __FUNC_8348_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, -9.000000, 7.000000)
						arg0:setTopBottom(false, false, 52.000000, 92.000000)
						arg0:setAlpha(0.500000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_8348_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8348_)
				end

				if arg1.interrupted then
					__FUNC_81F0_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(false, false, 52.000000, 92.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_81F0_)
			end

			if arg1.interrupted then
				__FUNC_8060_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8060_)
		end

		registerVal20:completeAnimation()
		registerVal2.vhudagrReticleHairlineBottom:setLeftRight(false, false, -9.000000, 7.000000)
		registerVal2.vhudagrReticleHairlineBottom:setTopBottom(false, false, 93.000000, 133.000000)
		registerVal2.vhudagrReticleHairlineBottom:setAlpha(0.000000)
		__FUNC_7F09_(registerVal20, {})
		local function __FUNC_856D_(arg0, arg1)
			local function __FUNC_86C4_(arg0, arg1)
				local function __FUNC_8854_(arg0, arg1)
					local function __FUNC_89AC_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, -9.000000, 7.000000)
						arg0:setTopBottom(false, false, -92.000000, -52.000000)
						arg0:setAlpha(0.500000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_89AC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_89AC_)
				end

				if arg1.interrupted then
					__FUNC_8854_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(false, false, -92.000000, -52.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8854_)
			end

			if arg1.interrupted then
				__FUNC_86C4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_86C4_)
		end

		registerVal21:completeAnimation()
		registerVal2.vhudagrReticleHairlineTop:setLeftRight(false, false, -9.000000, 7.000000)
		registerVal2.vhudagrReticleHairlineTop:setTopBottom(false, false, -129.850000, -89.850000)
		registerVal2.vhudagrReticleHairlineTop:setAlpha(0.000000)
		__FUNC_856D_(registerVal21, {})
		local function __FUNC_8BD1_(arg0, arg1)
			local function __FUNC_8D28_(arg0, arg1)
				local function __FUNC_8F11_(arg0, arg1)
					local function __FUNC_908B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, 173.430000, 245.000000)
						arg0:setTopBottom(false, false, -175.670000, -120.000000)
						arg0:setAlpha(0.700000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_908B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_908B_)
				end

				if arg1.interrupted then
					__FUNC_8F11_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 299.000000, true, false, CoD.TweenType.Back)
				arg0:setLeftRight(false, false, 173.430000, 245.000000)
				arg0:setTopBottom(false, false, -175.670000, -120.000000)
				arg0:setAlpha(0.700000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8F11_)
			end

			if arg1.interrupted then
				__FUNC_8D28_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8D28_)
		end

		registerVal22:completeAnimation()
		registerVal2.vhudagrReticleOutsideLine:setLeftRight(false, false, 243.160000, 314.730000)
		registerVal2.vhudagrReticleOutsideLine:setTopBottom(false, false, -227.090000, -171.420000)
		registerVal2.vhudagrReticleOutsideLine:setAlpha(0.000000)
		__FUNC_8BD1_(registerVal22, {})
		local function __FUNC_92AD_(arg0, arg1)
			local function __FUNC_9404_(arg0, arg1)
				local function __FUNC_957F_(arg0, arg1)
					local function __FUNC_96F7_(arg0, arg1)
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

					if arg1.interrupted then
						__FUNC_96F7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_96F7_)
				end

				if arg1.interrupted then
					__FUNC_957F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_957F_)
			end

			if arg1.interrupted then
				__FUNC_9404_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 850.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9404_)
		end

		registerVal23:completeAnimation()
		registerVal2.vhudagrReticleOutsideDotsUR:setAlpha(0.000000)
		__FUNC_92AD_(registerVal23, {})
		local function __FUNC_98A9_(arg0, arg1)
			local function __FUNC_9A00_(arg0, arg1)
				local function __FUNC_9B7B_(arg0, arg1)
					local function __FUNC_9CF3_(arg0, arg1)
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

					if arg1.interrupted then
						__FUNC_9CF3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9CF3_)
				end

				if arg1.interrupted then
					__FUNC_9B7B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9B7B_)
			end

			if arg1.interrupted then
				__FUNC_9A00_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 850.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9A00_)
		end

		registerVal24:completeAnimation()
		registerVal2.vhudagrReticleOutsideDotsLR:setAlpha(0.000000)
		__FUNC_98A9_(registerVal24, {})
		local function __FUNC_9EA5_(arg0, arg1)
			local function __FUNC_9FFC_(arg0, arg1)
				local function __FUNC_A177_(arg0, arg1)
					local function __FUNC_A2EF_(arg0, arg1)
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

					if arg1.interrupted then
						__FUNC_A2EF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A2EF_)
				end

				if arg1.interrupted then
					__FUNC_A177_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A177_)
			end

			if arg1.interrupted then
				__FUNC_9FFC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 850.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9FFC_)
		end

		registerVal25:completeAnimation()
		registerVal2.vhudagrReticleOutsideDotsUR0:setAlpha(0.000000)
		__FUNC_9EA5_(registerVal25, {})
		local function __FUNC_A4A1_(arg0, arg1)
			local function __FUNC_A5F8_(arg0, arg1)
				local function __FUNC_A773_(arg0, arg1)
					local function __FUNC_A8EB_(arg0, arg1)
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

					if arg1.interrupted then
						__FUNC_A8EB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A8EB_)
				end

				if arg1.interrupted then
					__FUNC_A773_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A773_)
			end

			if arg1.interrupted then
				__FUNC_A5F8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 850.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A5F8_)
		end

		registerVal26:completeAnimation()
		registerVal2.vhudagrReticleOutsideDotsLR0:setAlpha(0.000000)
		__FUNC_A4A1_(registerVal26, {})
		local function __FUNC_AA9D_(arg0, arg1)
			local function __FUNC_ABF4_(arg0, arg1)
				local function __FUNC_AD6F_(arg0, arg1)
					local function __FUNC_AEE7_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, 301.000000, 355.250000)
						arg0:setTopBottom(false, false, -7.500000, 8.000000)
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_AEE7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.200000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AEE7_)
				end

				if arg1.interrupted then
					__FUNC_AD6F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AD6F_)
			end

			if arg1.interrupted then
				__FUNC_ABF4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ABF4_)
		end

		registerVal27:completeAnimation()
		registerVal2.vhudagrOutsideLine:setLeftRight(false, false, 301.000000, 355.250000)
		registerVal2.vhudagrOutsideLine:setTopBottom(false, false, -7.500000, 8.000000)
		registerVal2.vhudagrOutsideLine:setAlpha(0.000000)
		__FUNC_AA9D_(registerVal27, {})
		local function __FUNC_B109_(arg0, arg1)
			local function __FUNC_B260_(arg0, arg1)
				local function __FUNC_B3DB_(arg0, arg1)
					local function __FUNC_B553_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, -347.760000, -293.510000)
						arg0:setTopBottom(false, false, -7.500000, 8.000000)
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_B553_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.200000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B553_)
				end

				if arg1.interrupted then
					__FUNC_B3DB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B3DB_)
			end

			if arg1.interrupted then
				__FUNC_B260_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B260_)
		end

		registerVal28:completeAnimation()
		registerVal2.vhudagrOutsideLine0:setLeftRight(false, false, -347.760000, -293.510000)
		registerVal2.vhudagrOutsideLine0:setTopBottom(false, false, -7.500000, 8.000000)
		registerVal2.vhudagrOutsideLine0:setAlpha(0.000000)
		__FUNC_B109_(registerVal28, {})
		local function __FUNC_B775_(arg0, arg1)
			local function __FUNC_B8CC_(arg0, arg1)
				local function __FUNC_BA7D_(arg0, arg1)
					local function __FUNC_BBF7_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, 18.000000, 35.000000)
						arg0:setTopBottom(false, false, -4.250000, 4.250000)
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_BBF7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BBF7_)
				end

				if arg1.interrupted then
					__FUNC_BA7D_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 249.000000, true, false, CoD.TweenType.Back)
				arg0:setLeftRight(false, false, 18.000000, 35.000000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BA7D_)
			end

			if arg1.interrupted then
				__FUNC_B8CC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B8CC_)
		end

		registerVal29:completeAnimation()
		registerVal2.vhudagrReticleCenterHairline:setLeftRight(false, false, 39.180000, 56.180000)
		registerVal2.vhudagrReticleCenterHairline:setTopBottom(false, false, -4.250000, 4.250000)
		registerVal2.vhudagrReticleCenterHairline:setAlpha(0.000000)
		__FUNC_B775_(registerVal29, {})
		local function __FUNC_BE19_(arg0, arg1)
			local function __FUNC_BF70_(arg0, arg1)
				local function __FUNC_C121_(arg0, arg1)
					local function __FUNC_C29B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, -35.000000, -18.000000)
						arg0:setTopBottom(false, false, -3.730000, 4.770000)
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_C29B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C29B_)
				end

				if arg1.interrupted then
					__FUNC_C121_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 249.000000, true, false, CoD.TweenType.Back)
				arg0:setLeftRight(false, false, -35.000000, -18.000000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C121_)
			end

			if arg1.interrupted then
				__FUNC_BF70_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BF70_)
		end

		registerVal30:completeAnimation()
		registerVal2.vhudagrReticleCenterHairline0:setLeftRight(false, false, -50.870000, -33.870000)
		registerVal2.vhudagrReticleCenterHairline0:setTopBottom(false, false, -3.730000, 4.770000)
		registerVal2.vhudagrReticleCenterHairline0:setAlpha(0.000000)
		__FUNC_BE19_(registerVal30, {})
		local function __FUNC_C4BD_(arg0, arg1)
			local function __FUNC_C614_(arg0, arg1)
				local function __FUNC_C7FD_(arg0, arg1)
					local function __FUNC_C977_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, -250.570000, -179.000000)
						arg0:setTopBottom(false, false, -177.670000, -122.000000)
						arg0:setAlpha(0.700000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_C977_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C977_)
				end

				if arg1.interrupted then
					__FUNC_C7FD_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 299.000000, true, false, CoD.TweenType.Back)
				arg0:setLeftRight(false, false, -250.570000, -179.000000)
				arg0:setTopBottom(false, false, -177.670000, -122.000000)
				arg0:setAlpha(0.700000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C7FD_)
			end

			if arg1.interrupted then
				__FUNC_C614_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C614_)
		end

		registerVal31:completeAnimation()
		registerVal2.vhudagrReticleOutsideLine0:setLeftRight(false, false, -313.010000, -241.440000)
		registerVal2.vhudagrReticleOutsideLine0:setTopBottom(false, false, -227.090000, -171.430000)
		registerVal2.vhudagrReticleOutsideLine0:setAlpha(0.000000)
		__FUNC_C4BD_(registerVal31, {})
		local function __FUNC_CB99_(arg0, arg1)
			local function __FUNC_CCF0_(arg0, arg1)
				local function __FUNC_CED9_(arg0, arg1)
					local function __FUNC_D053_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, 170.430000, 242.000000)
						arg0:setTopBottom(false, false, 124.330000, 180.000000)
						arg0:setAlpha(0.700000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_D053_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D053_)
				end

				if arg1.interrupted then
					__FUNC_CED9_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 299.000000, true, false, CoD.TweenType.Back)
				arg0:setLeftRight(false, false, 170.430000, 242.000000)
				arg0:setTopBottom(false, false, 124.330000, 180.000000)
				arg0:setAlpha(0.700000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CED9_)
			end

			if arg1.interrupted then
				__FUNC_CCF0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CCF0_)
		end

		registerVal32:completeAnimation()
		registerVal2.vhudagrReticleOutsideLine1:setLeftRight(false, false, 243.160000, 314.730000)
		registerVal2.vhudagrReticleOutsideLine1:setTopBottom(false, false, 173.170000, 228.840000)
		registerVal2.vhudagrReticleOutsideLine1:setAlpha(0.000000)
		__FUNC_CB99_(registerVal32, {})
		local function __FUNC_D275_(arg0, arg1)
			local function __FUNC_D3CC_(arg0, arg1)
				local function __FUNC_D5B5_(arg0, arg1)
					local function __FUNC_D72F_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, -248.120000, -176.550000)
						arg0:setTopBottom(false, false, 122.000000, 177.670000)
						arg0:setAlpha(0.700000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_D72F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D72F_)
				end

				if arg1.interrupted then
					__FUNC_D5B5_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 299.000000, true, false, CoD.TweenType.Back)
				arg0:setLeftRight(false, false, -248.120000, -176.550000)
				arg0:setTopBottom(false, false, 122.000000, 177.670000)
				arg0:setAlpha(0.700000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D5B5_)
			end

			if arg1.interrupted then
				__FUNC_D3CC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D3CC_)
		end

		registerVal33:completeAnimation()
		registerVal2.vhudagrReticleOutsideLine2:setLeftRight(false, false, -313.010000, -241.440000)
		registerVal2.vhudagrReticleOutsideLine2:setTopBottom(false, false, 173.170000, 228.840000)
		registerVal2.vhudagrReticleOutsideLine2:setAlpha(0.000000)
		__FUNC_D275_(registerVal33, {})
		local function __FUNC_D951_(arg0, arg1)
			local function __FUNC_DAA8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 249.000000, true, false, CoD.TweenType.Back)
				end
				arg0:setLeftRight(false, false, 18.000000, 35.000000)
				arg0:setTopBottom(false, false, -4.250000, 4.250000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_DAA8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DAA8_)
		end

		registerVal34:completeAnimation()
		registerVal2.vhudagrReticleCenterHairline1:setLeftRight(false, false, 39.180000, 56.180000)
		registerVal2.vhudagrReticleCenterHairline1:setTopBottom(false, false, -4.250000, 4.250000)
		registerVal2.vhudagrReticleCenterHairline1:setAlpha(0.000000)
		__FUNC_D951_(registerVal34, {})
		local function __FUNC_DCCB_(arg0, arg1)
			local function __FUNC_DE20_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 249.000000, true, false, CoD.TweenType.Back)
				end
				arg0:setLeftRight(false, false, -35.000000, -18.000000)
				arg0:setTopBottom(false, false, -3.730000, 4.770000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_DE20_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DE20_)
		end

		registerVal35:completeAnimation()
		registerVal2.vhudagrReticleCenterHairline00:setLeftRight(false, false, -50.870000, -33.870000)
		registerVal2.vhudagrReticleCenterHairline00:setTopBottom(false, false, -3.730000, 4.770000)
		registerVal2.vhudagrReticleCenterHairline00:setAlpha(0.000000)
		__FUNC_DCCB_(registerVal35, {})
		local function __FUNC_E043_(arg0, arg1)
			local function __FUNC_E198_(arg0, arg1)
				local function __FUNC_E313_(arg0, arg1)
					local function __FUNC_E48B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.900000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_E48B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E48B_)
				end

				if arg1.interrupted then
					__FUNC_E313_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.800000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E313_)
			end

			if arg1.interrupted then
				__FUNC_E198_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E198_)
		end

		registerVal36:completeAnimation()
		registerVal2.vhudagrMissilesWidgetLeft:setAlpha(0.000000)
		__FUNC_E043_(registerVal36, {})
		local function __FUNC_E63D_(arg0, arg1)
			local function __FUNC_E794_(arg0, arg1)
				local function __FUNC_E90F_(arg0, arg1)
					local function __FUNC_EA87_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_EA87_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EA87_)
				end

				if arg1.interrupted then
					__FUNC_E90F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E90F_)
			end

			if arg1.interrupted then
				__FUNC_E794_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E794_)
		end

		registerVal37:completeAnimation()
		registerVal2.vhudagrRpmWidget:setAlpha(0.000000)
		__FUNC_E63D_(registerVal37, {})
	end

	registerVal40.StartUp = __FUNC_2BD2_
	local function __FUNC_EC39_()
		registerVal2:setupElementClipCounter(28.000000)
		local function __FUNC_FF0E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 173.430000, 335.710000)
			arg0:setTopBottom(false, false, -108.890000, -49.110000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.agrReticleOutsideDotsBlurUR:setLeftRight(false, false, 260.000000, 422.290000)
		registerVal2.agrReticleOutsideDotsBlurUR:setTopBottom(false, false, -128.890000, -69.110000)
		__FUNC_FF0E_(registerVal7, {})
		local function __FUNC_1010E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -343.620000, -181.340000)
			arg0:setTopBottom(false, false, -108.890000, -49.110000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.agrReticleOutsideDotsBlurUL:setLeftRight(false, false, -415.190000, -252.910000)
		registerVal2.agrReticleOutsideDotsBlurUL:setTopBottom(false, false, -128.890000, -69.110000)
		__FUNC_1010E_(registerVal8, {})
		local function __FUNC_1030E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 173.430000, 335.710000)
			arg0:setTopBottom(false, false, 44.200000, 103.990000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.agrReticleOutsideDotsBlurLR:setLeftRight(false, false, 260.000000, 422.290000)
		registerVal2.agrReticleOutsideDotsBlurLR:setTopBottom(false, false, 75.250000, 135.040000)
		__FUNC_1030E_(registerVal9, {})
		local function __FUNC_1050E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -343.620000, -181.340000)
			arg0:setTopBottom(false, false, 45.360000, 105.140000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.agrReticleOutsideDotsBlurLL:setLeftRight(false, false, -403.730000, -241.440000)
		registerVal2.agrReticleOutsideDotsBlurLL:setTopBottom(false, false, 75.250000, 135.040000)
		__FUNC_1050E_(registerVal10, {})
		local function __FUNC_1070E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -212.340000, -25.670000)
			arg0:setTopBottom(false, false, -93.000000, 93.000000)
			arg0:setAlpha(0.350000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.agrReticleFocusBlurL:setLeftRight(false, false, -293.510000, -114.950000)
		registerVal2.agrReticleFocusBlurL:setTopBottom(false, false, -93.000000, 93.000000)
		registerVal2.agrReticleFocusBlurL:setAlpha(0.350000)
		__FUNC_1070E_(registerVal11, {})
		local function __FUNC_10931_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 25.120000, 203.680000)
			arg0:setTopBottom(false, false, -93.000000, 93.000000)
			arg0:setAlpha(0.350000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.agrReticleFocusBlurR:setLeftRight(false, false, 122.440000, 301.000000)
		registerVal2.agrReticleFocusBlurR:setTopBottom(false, false, -93.000000, 93.000000)
		registerVal2.agrReticleFocusBlurR:setAlpha(0.350000)
		__FUNC_10931_(registerVal12, {})
		local function __FUNC_10B55_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 226.550000, 429.700000)
			arg0:setTopBottom(false, false, -266.910000, -108.890000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.Image0:setLeftRight(false, false, 296.180000, 499.340000)
		registerVal2.Image0:setTopBottom(false, false, -310.510000, -152.500000)
		__FUNC_10B55_(registerVal14, {})
		local function __FUNC_10D56_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 226.550000, 429.700000)
			arg0:setTopBottom(false, false, 109.000000, 267.010000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.Image1:setLeftRight(false, false, 296.180000, 499.340000)
		registerVal2.Image1:setTopBottom(false, false, 149.830000, 307.840000)
		__FUNC_10D56_(registerVal15, {})
		local function __FUNC_10F56_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -435.170000, -232.010000)
			arg0:setTopBottom(false, false, -266.910000, -108.890000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.Image2:setLeftRight(false, false, -516.160000, -313.010000)
		registerVal2.Image2:setTopBottom(false, false, -310.510000, -152.500000)
		__FUNC_10F56_(registerVal16, {})
		local function __FUNC_11156_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -435.170000, -232.010000)
			arg0:setTopBottom(false, false, 105.140000, 263.160000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.Image3:setLeftRight(false, false, -516.160000, -313.010000)
		registerVal2.Image3:setTopBottom(false, false, 149.830000, 307.840000)
		__FUNC_11156_(registerVal17, {})
		local function __FUNC_11356_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -7.000000, 153.730000)
			arg0:setTopBottom(false, false, -44.200000, 44.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.vhudagrReticleFocusFrameRight:setLeftRight(false, false, 64.000000, 224.730000)
		registerVal2.vhudagrReticleFocusFrameRight:setTopBottom(false, false, -44.200000, 44.200000)
		__FUNC_11356_(registerVal18, {})
		local function __FUNC_11556_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -155.730000, 5.000000)
			arg0:setTopBottom(false, false, -44.200000, 44.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal2.vhudagrReticleFocusFrameLeft:setLeftRight(false, false, -231.400000, -70.670000)
		registerVal2.vhudagrReticleFocusFrameLeft:setTopBottom(false, false, -44.200000, 44.200000)
		__FUNC_11556_(registerVal19, {})
		local function __FUNC_11756_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -9.000000, 7.000000)
			arg0:setTopBottom(false, false, 30.000000, 70.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal20:completeAnimation()
		registerVal2.vhudagrReticleHairlineBottom:setLeftRight(false, false, -9.000000, 7.000000)
		registerVal2.vhudagrReticleHairlineBottom:setTopBottom(false, false, 52.000000, 92.000000)
		__FUNC_11756_(registerVal20, {})
		local function __FUNC_11956_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -9.000000, 7.000000)
			arg0:setTopBottom(false, false, -69.110000, -29.110000)
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal21:completeAnimation()
		registerVal2.vhudagrReticleHairlineTop:setLeftRight(false, false, -9.000000, 7.000000)
		registerVal2.vhudagrReticleHairlineTop:setTopBottom(false, false, -92.000000, -52.000000)
		registerVal2.vhudagrReticleHairlineTop:setAlpha(0.500000)
		__FUNC_11956_(registerVal21, {})
		local function __FUNC_11B79_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 93.430000, 165.000000)
			arg0:setTopBottom(false, false, -120.830000, -65.170000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal22:completeAnimation()
		registerVal2.vhudagrReticleOutsideLine:setLeftRight(false, false, 173.430000, 245.000000)
		registerVal2.vhudagrReticleOutsideLine:setTopBottom(false, false, -175.670000, -120.000000)
		__FUNC_11B79_(registerVal22, {})
		local function __FUNC_11D7A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 73.360000, 136.960000)
			arg0:setTopBottom(false, false, -49.110000, -17.310000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal23:completeAnimation()
		registerVal2.vhudagrReticleOutsideDotsUR:setLeftRight(false, false, 112.560000, 176.160000)
		registerVal2.vhudagrReticleOutsideDotsUR:setTopBottom(false, false, -60.100000, -28.300000)
		__FUNC_11D7A_(registerVal23, {})
		local function __FUNC_11F7A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 73.360000, 136.960000)
			arg0:setTopBottom(false, false, 18.300000, 50.100000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal24:completeAnimation()
		registerVal2.vhudagrReticleOutsideDotsLR:setLeftRight(false, false, 112.560000, 176.160000)
		registerVal2.vhudagrReticleOutsideDotsLR:setTopBottom(false, false, 26.300000, 58.100000)
		__FUNC_11F7A_(registerVal24, {})
		local function __FUNC_1217A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -138.960000, -75.360000)
			arg0:setTopBottom(false, false, 18.300000, 50.100000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal25:completeAnimation()
		registerVal2.vhudagrReticleOutsideDotsUR0:setLeftRight(false, false, -178.000000, -114.400000)
		registerVal2.vhudagrReticleOutsideDotsUR0:setTopBottom(false, false, 26.300000, 58.100000)
		__FUNC_1217A_(registerVal25, {})
		local function __FUNC_1237A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -138.960000, -75.360000)
			arg0:setTopBottom(false, false, -49.110000, -17.310000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal26:completeAnimation()
		registerVal2.vhudagrReticleOutsideDotsLR0:setLeftRight(false, false, -179.000000, -115.400000)
		registerVal2.vhudagrReticleOutsideDotsLR0:setTopBottom(false, false, -60.100000, -28.300000)
		__FUNC_1237A_(registerVal26, {})
		local function __FUNC_1257A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 233.000000, 287.250000)
			arg0:setTopBottom(false, false, -7.500000, 8.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal27:completeAnimation()
		registerVal2.vhudagrOutsideLine:setLeftRight(false, false, 301.000000, 355.250000)
		registerVal2.vhudagrOutsideLine:setTopBottom(false, false, -7.500000, 8.000000)
		__FUNC_1257A_(registerVal27, {})
		local function __FUNC_1277A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -289.600000, -235.350000)
			arg0:setTopBottom(false, false, -7.500000, 8.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal28:completeAnimation()
		registerVal2.vhudagrOutsideLine0:setLeftRight(false, false, -347.760000, -293.510000)
		registerVal2.vhudagrOutsideLine0:setTopBottom(false, false, -7.500000, 8.000000)
		__FUNC_1277A_(registerVal28, {})
		local function __FUNC_1297A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 3.180000, 20.180000)
			arg0:setTopBottom(false, false, -4.250000, 4.250000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal29:completeAnimation()
		registerVal2.vhudagrReticleCenterHairline:setLeftRight(false, false, 18.000000, 35.000000)
		registerVal2.vhudagrReticleCenterHairline:setTopBottom(false, false, -4.250000, 4.250000)
		__FUNC_1297A_(registerVal29, {})
		local function __FUNC_12B7A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -21.000000, -4.000000)
			arg0:setTopBottom(false, false, -3.730000, 4.770000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal30:completeAnimation()
		registerVal2.vhudagrReticleCenterHairline0:setLeftRight(false, false, -35.000000, -18.000000)
		registerVal2.vhudagrReticleCenterHairline0:setTopBottom(false, false, -3.730000, 4.770000)
		__FUNC_12B7A_(registerVal30, {})
		local function __FUNC_12D7A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -179.000000, -107.430000)
			arg0:setTopBottom(false, false, -120.830000, -65.170000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal31:completeAnimation()
		registerVal2.vhudagrReticleOutsideLine0:setLeftRight(false, false, -250.570000, -179.000000)
		registerVal2.vhudagrReticleOutsideLine0:setTopBottom(false, false, -177.670000, -122.000000)
		__FUNC_12D7A_(registerVal31, {})
		local function __FUNC_12F7A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 93.430000, 165.000000)
			arg0:setTopBottom(false, false, 65.170000, 120.830000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal32:completeAnimation()
		registerVal2.vhudagrReticleOutsideLine1:setLeftRight(false, false, 170.430000, 242.000000)
		registerVal2.vhudagrReticleOutsideLine1:setTopBottom(false, false, 124.330000, 180.000000)
		__FUNC_12F7A_(registerVal32, {})
		local function __FUNC_1317A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -179.000000, -107.430000)
			arg0:setTopBottom(false, false, 65.170000, 120.830000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal33:completeAnimation()
		registerVal2.vhudagrReticleOutsideLine2:setLeftRight(false, false, -248.120000, -176.550000)
		registerVal2.vhudagrReticleOutsideLine2:setTopBottom(false, false, 122.000000, 177.670000)
		__FUNC_1317A_(registerVal33, {})
		local function __FUNC_1337A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 3.180000, 20.180000)
			arg0:setTopBottom(false, false, -4.250000, 4.250000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal34:completeAnimation()
		registerVal2.vhudagrReticleCenterHairline1:setLeftRight(false, false, 18.000000, 35.000000)
		registerVal2.vhudagrReticleCenterHairline1:setTopBottom(false, false, -4.250000, 4.250000)
		__FUNC_1337A_(registerVal34, {})
		local function __FUNC_1357A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -21.000000, -4.000000)
			arg0:setTopBottom(false, false, -3.730000, 4.770000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal35:completeAnimation()
		registerVal2.vhudagrReticleCenterHairline00:setLeftRight(false, false, -35.000000, -18.000000)
		registerVal2.vhudagrReticleCenterHairline00:setTopBottom(false, false, -3.730000, 4.770000)
		__FUNC_1357A_(registerVal35, {})
	end

	registerVal40.Zoom = __FUNC_EC39_
	registerVal39.DefaultState = registerVal40
	registerVal40 = {}
	local function __FUNC_1377A_()
		registerVal2:setupElementClipCounter(29.000000)
		registerVal4:completeAnimation()
		registerVal2.agrCenterPoint:setLeftRight(false, false, -9.000000, 7.000000)
		registerVal2.agrCenterPoint:setTopBottom(false, false, -8.000000, 8.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.agrReticleOutsideDotsBlurUR:setLeftRight(false, false, 173.430000, 335.710000)
		registerVal2.agrReticleOutsideDotsBlurUR:setTopBottom(false, false, -108.890000, -49.110000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.agrReticleOutsideDotsBlurUL:setLeftRight(false, false, -343.620000, -181.340000)
		registerVal2.agrReticleOutsideDotsBlurUL:setTopBottom(false, false, -108.890000, -49.110000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.agrReticleOutsideDotsBlurLR:setLeftRight(false, false, 173.430000, 335.710000)
		registerVal2.agrReticleOutsideDotsBlurLR:setTopBottom(false, false, 44.200000, 103.990000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.agrReticleOutsideDotsBlurLL:setLeftRight(false, false, -343.620000, -181.340000)
		registerVal2.agrReticleOutsideDotsBlurLL:setTopBottom(false, false, 45.360000, 105.140000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.agrReticleFocusBlurL:setLeftRight(false, false, -212.340000, -25.670000)
		registerVal2.agrReticleFocusBlurL:setTopBottom(false, false, -93.000000, 93.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.agrReticleFocusBlurR:setLeftRight(false, false, 25.120000, 203.680000)
		registerVal2.agrReticleFocusBlurR:setTopBottom(false, false, -93.000000, 93.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal2.Image0:setLeftRight(false, false, 226.550000, 429.700000)
		registerVal2.Image0:setTopBottom(false, false, -266.910000, -108.890000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Image1:setLeftRight(false, false, 226.550000, 429.700000)
		registerVal2.Image1:setTopBottom(false, false, 109.000000, 267.010000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.Image2:setLeftRight(false, false, -435.170000, -232.010000)
		registerVal2.Image2:setTopBottom(false, false, -266.910000, -108.890000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.Image3:setLeftRight(false, false, -435.170000, -232.010000)
		registerVal2.Image3:setTopBottom(false, false, 105.140000, 263.160000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.vhudagrReticleFocusFrameRight:setLeftRight(false, false, -7.000000, 153.730000)
		registerVal2.vhudagrReticleFocusFrameRight:setTopBottom(false, false, -44.200000, 44.200000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.vhudagrReticleFocusFrameLeft:setLeftRight(false, false, -155.730000, 5.000000)
		registerVal2.vhudagrReticleFocusFrameLeft:setTopBottom(false, false, -44.200000, 44.200000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.vhudagrReticleHairlineBottom:setLeftRight(false, false, -9.000000, 7.000000)
		registerVal2.vhudagrReticleHairlineBottom:setTopBottom(false, false, 30.000000, 70.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.vhudagrReticleHairlineTop:setLeftRight(false, false, -9.000000, 7.000000)
		registerVal2.vhudagrReticleHairlineTop:setTopBottom(false, false, -69.110000, -29.110000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.vhudagrReticleOutsideLine:setLeftRight(false, false, 93.430000, 165.000000)
		registerVal2.vhudagrReticleOutsideLine:setTopBottom(false, false, -120.830000, -65.170000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.vhudagrReticleOutsideDotsUR:setLeftRight(false, false, 73.360000, 136.960000)
		registerVal2.vhudagrReticleOutsideDotsUR:setTopBottom(false, false, -49.110000, -17.310000)
		registerVal2.vhudagrReticleOutsideDotsUR:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.vhudagrReticleOutsideDotsLR:setLeftRight(false, false, 73.360000, 136.960000)
		registerVal2.vhudagrReticleOutsideDotsLR:setTopBottom(false, false, 18.300000, 50.100000)
		registerVal2.vhudagrReticleOutsideDotsLR:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.vhudagrReticleOutsideDotsUR0:setLeftRight(false, false, -138.960000, -75.360000)
		registerVal2.vhudagrReticleOutsideDotsUR0:setTopBottom(false, false, 18.300000, 50.100000)
		registerVal2.vhudagrReticleOutsideDotsUR0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.vhudagrReticleOutsideDotsLR0:setLeftRight(false, false, -138.960000, -75.360000)
		registerVal2.vhudagrReticleOutsideDotsLR0:setTopBottom(false, false, -49.110000, -17.310000)
		registerVal2.vhudagrReticleOutsideDotsLR0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.vhudagrOutsideLine:setLeftRight(false, false, 233.000000, 287.250000)
		registerVal2.vhudagrOutsideLine:setTopBottom(false, false, -7.500000, 8.000000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.vhudagrOutsideLine0:setLeftRight(false, false, -289.600000, -235.350000)
		registerVal2.vhudagrOutsideLine0:setTopBottom(false, false, -7.500000, 8.000000)
		registerVal2.clipFinished(registerVal28, {})
		registerVal29:completeAnimation()
		registerVal2.vhudagrReticleCenterHairline:setLeftRight(false, false, 3.180000, 20.180000)
		registerVal2.vhudagrReticleCenterHairline:setTopBottom(false, false, -4.250000, 4.250000)
		registerVal2.clipFinished(registerVal29, {})
		registerVal30:completeAnimation()
		registerVal2.vhudagrReticleCenterHairline0:setLeftRight(false, false, -21.000000, -4.000000)
		registerVal2.vhudagrReticleCenterHairline0:setTopBottom(false, false, -3.730000, 4.770000)
		registerVal2.clipFinished(registerVal30, {})
		registerVal31:completeAnimation()
		registerVal2.vhudagrReticleOutsideLine0:setLeftRight(false, false, -179.000000, -107.430000)
		registerVal2.vhudagrReticleOutsideLine0:setTopBottom(false, false, -120.830000, -65.170000)
		registerVal2.clipFinished(registerVal31, {})
		registerVal32:completeAnimation()
		registerVal2.vhudagrReticleOutsideLine1:setLeftRight(false, false, 93.430000, 165.000000)
		registerVal2.vhudagrReticleOutsideLine1:setTopBottom(false, false, 65.170000, 120.830000)
		registerVal2.clipFinished(registerVal32, {})
		registerVal33:completeAnimation()
		registerVal2.vhudagrReticleOutsideLine2:setLeftRight(false, false, -179.000000, -107.430000)
		registerVal2.vhudagrReticleOutsideLine2:setTopBottom(false, false, 65.170000, 120.830000)
		registerVal2.clipFinished(registerVal33, {})
		registerVal34:completeAnimation()
		registerVal2.vhudagrReticleCenterHairline1:setLeftRight(false, false, 3.180000, 20.180000)
		registerVal2.vhudagrReticleCenterHairline1:setTopBottom(false, false, -4.250000, 4.250000)
		registerVal2.clipFinished(registerVal34, {})
		registerVal35:completeAnimation()
		registerVal2.vhudagrReticleCenterHairline00:setLeftRight(false, false, -21.000000, -4.000000)
		registerVal2.vhudagrReticleCenterHairline00:setTopBottom(false, false, -3.730000, 4.770000)
		registerVal2.clipFinished(registerVal35, {})
	end

	registerVal40.DefaultClip = __FUNC_1377A_
	local function __FUNC_14B53_()
		registerVal2:setupElementClipCounter(28.000000)
		local function __FUNC_15E10_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 259.570000, 421.860000)
			arg0:setTopBottom(false, false, -124.960000, -65.170000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.agrReticleOutsideDotsBlurUR:setLeftRight(false, false, 173.430000, 335.710000)
		registerVal2.agrReticleOutsideDotsBlurUR:setTopBottom(false, false, -108.890000, -49.110000)
		__FUNC_15E10_(registerVal7, {})
		local function __FUNC_16012_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -415.730000, -253.440000)
			arg0:setTopBottom(false, false, -128.790000, -69.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.agrReticleOutsideDotsBlurUL:setLeftRight(false, false, -343.620000, -181.340000)
		registerVal2.agrReticleOutsideDotsBlurUL:setTopBottom(false, false, -108.890000, -49.110000)
		__FUNC_16012_(registerVal8, {})
		local function __FUNC_16212_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 259.570000, 421.860000)
			arg0:setTopBottom(false, false, 75.250000, 135.040000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.agrReticleOutsideDotsBlurLR:setLeftRight(false, false, 173.430000, 335.710000)
		registerVal2.agrReticleOutsideDotsBlurLR:setTopBottom(false, false, 44.200000, 103.990000)
		__FUNC_16212_(registerVal9, {})
		local function __FUNC_16412_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -404.100000, -241.810000)
			arg0:setTopBottom(false, false, 75.250000, 135.040000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.agrReticleOutsideDotsBlurLL:setLeftRight(false, false, -343.620000, -181.340000)
		registerVal2.agrReticleOutsideDotsBlurLL:setTopBottom(false, false, 45.360000, 105.140000)
		__FUNC_16412_(registerVal10, {})
		local function __FUNC_16612_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -297.830000, -111.160000)
			arg0:setTopBottom(false, false, -93.000000, 93.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.agrReticleFocusBlurL:setLeftRight(false, false, -212.340000, -25.670000)
		registerVal2.agrReticleFocusBlurL:setTopBottom(false, false, -93.000000, 93.000000)
		__FUNC_16612_(registerVal11, {})
		local function __FUNC_16812_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 121.810000, 300.380000)
			arg0:setTopBottom(false, false, -93.000000, 93.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.agrReticleFocusBlurR:setLeftRight(false, false, 25.120000, 203.680000)
		registerVal2.agrReticleFocusBlurR:setTopBottom(false, false, -93.000000, 93.000000)
		__FUNC_16812_(registerVal12, {})
		local function __FUNC_16A12_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 295.380000, 498.530000)
			arg0:setTopBottom(false, false, -310.510000, -152.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.Image0:setLeftRight(false, false, 226.550000, 429.700000)
		registerVal2.Image0:setTopBottom(false, false, -266.910000, -108.890000)
		__FUNC_16A12_(registerVal14, {})
		local function __FUNC_16C12_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 295.370000, 498.530000)
			arg0:setTopBottom(false, false, 149.670000, 307.680000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.Image1:setLeftRight(false, false, 226.550000, 429.700000)
		registerVal2.Image1:setTopBottom(false, false, 109.000000, 267.010000)
		__FUNC_16C12_(registerVal15, {})
		local function __FUNC_16E12_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -517.310000, -314.150000)
			arg0:setTopBottom(false, false, -312.250000, -154.240000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.Image2:setLeftRight(false, false, -435.160000, -232.010000)
		registerVal2.Image2:setTopBottom(false, false, -266.910000, -108.890000)
		__FUNC_16E12_(registerVal16, {})
		local function __FUNC_17012_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -516.310000, -313.150000)
			arg0:setTopBottom(false, false, 149.670000, 307.680000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.Image3:setLeftRight(false, false, -435.160000, -232.010000)
		registerVal2.Image3:setTopBottom(false, false, 105.140000, 263.160000)
		__FUNC_17012_(registerVal17, {})
		local function __FUNC_17212_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 64.000000, 224.730000)
			arg0:setTopBottom(false, false, -44.200000, 44.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.vhudagrReticleFocusFrameRight:setLeftRight(false, false, -7.000000, 153.730000)
		registerVal2.vhudagrReticleFocusFrameRight:setTopBottom(false, false, -44.200000, 44.200000)
		__FUNC_17212_(registerVal18, {})
		local function __FUNC_17412_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -231.010000, -70.280000)
			arg0:setTopBottom(false, false, -44.200000, 44.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal2.vhudagrReticleFocusFrameLeft:setLeftRight(false, false, -155.730000, 5.000000)
		registerVal2.vhudagrReticleFocusFrameLeft:setTopBottom(false, false, -44.200000, 44.200000)
		__FUNC_17412_(registerVal19, {})
		local function __FUNC_17612_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -9.000000, 7.000000)
			arg0:setTopBottom(false, false, 53.000000, 93.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal20:completeAnimation()
		registerVal2.vhudagrReticleHairlineBottom:setLeftRight(false, false, -9.000000, 7.000000)
		registerVal2.vhudagrReticleHairlineBottom:setTopBottom(false, false, 30.000000, 70.000000)
		__FUNC_17612_(registerVal20, {})
		local function __FUNC_17812_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -9.000000, 7.000000)
			arg0:setTopBottom(false, false, -91.000000, -51.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal21:completeAnimation()
		registerVal2.vhudagrReticleHairlineTop:setLeftRight(false, false, -9.000000, 7.000000)
		registerVal2.vhudagrReticleHairlineTop:setTopBottom(false, false, -69.110000, -29.110000)
		__FUNC_17812_(registerVal21, {})
		local function __FUNC_17A12_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 173.430000, 245.000000)
			arg0:setTopBottom(false, false, -175.500000, -119.830000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal22:completeAnimation()
		registerVal2.vhudagrReticleOutsideLine:setLeftRight(false, false, 93.430000, 165.000000)
		registerVal2.vhudagrReticleOutsideLine:setTopBottom(false, false, -120.830000, -65.170000)
		__FUNC_17A12_(registerVal22, {})
		local function __FUNC_17C12_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 112.560000, 176.160000)
			arg0:setTopBottom(false, false, -60.100000, -28.300000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal23:completeAnimation()
		registerVal2.vhudagrReticleOutsideDotsUR:setLeftRight(false, false, 73.360000, 136.960000)
		registerVal2.vhudagrReticleOutsideDotsUR:setTopBottom(false, false, -49.110000, -17.310000)
		registerVal2.vhudagrReticleOutsideDotsUR:setAlpha(1.000000)
		__FUNC_17C12_(registerVal23, {})
		local function __FUNC_17E35_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 112.560000, 176.160000)
			arg0:setTopBottom(false, false, 26.300000, 58.100000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal24:completeAnimation()
		registerVal2.vhudagrReticleOutsideDotsLR:setLeftRight(false, false, 73.360000, 136.960000)
		registerVal2.vhudagrReticleOutsideDotsLR:setTopBottom(false, false, 18.300000, 50.100000)
		registerVal2.vhudagrReticleOutsideDotsLR:setAlpha(1.000000)
		__FUNC_17E35_(registerVal24, {})
		local function __FUNC_18059_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -178.000000, -114.400000)
			arg0:setTopBottom(false, false, 26.300000, 58.100000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal25:completeAnimation()
		registerVal2.vhudagrReticleOutsideDotsUR0:setLeftRight(false, false, -138.960000, -75.360000)
		registerVal2.vhudagrReticleOutsideDotsUR0:setTopBottom(false, false, 18.300000, 50.100000)
		registerVal2.vhudagrReticleOutsideDotsUR0:setAlpha(1.000000)
		__FUNC_18059_(registerVal25, {})
		local function __FUNC_1827D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -179.000000, -115.400000)
			arg0:setTopBottom(false, false, -60.100000, -28.300000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal26:completeAnimation()
		registerVal2.vhudagrReticleOutsideDotsLR0:setLeftRight(false, false, -138.960000, -75.360000)
		registerVal2.vhudagrReticleOutsideDotsLR0:setTopBottom(false, false, -49.110000, -17.310000)
		registerVal2.vhudagrReticleOutsideDotsLR0:setAlpha(1.000000)
		__FUNC_1827D_(registerVal26, {})
		local function __FUNC_184A1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 301.000000, 355.250000)
			arg0:setTopBottom(false, false, -7.500000, 8.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal27:completeAnimation()
		registerVal2.vhudagrOutsideLine:setLeftRight(false, false, 233.000000, 287.250000)
		registerVal2.vhudagrOutsideLine:setTopBottom(false, false, -7.500000, 8.000000)
		__FUNC_184A1_(registerVal27, {})
		local function __FUNC_186A2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -348.080000, -293.830000)
			arg0:setTopBottom(false, false, -7.500000, 8.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal28:completeAnimation()
		registerVal2.vhudagrOutsideLine0:setLeftRight(false, false, -289.600000, -235.350000)
		registerVal2.vhudagrOutsideLine0:setTopBottom(false, false, -7.500000, 8.000000)
		__FUNC_186A2_(registerVal28, {})
		local function __FUNC_188A2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 18.180000, 35.180000)
			arg0:setTopBottom(false, false, -4.250000, 4.250000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal29:completeAnimation()
		registerVal2.vhudagrReticleCenterHairline:setLeftRight(false, false, 3.180000, 20.180000)
		registerVal2.vhudagrReticleCenterHairline:setTopBottom(false, false, -4.250000, 4.250000)
		__FUNC_188A2_(registerVal29, {})
		local function __FUNC_18AA2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -35.000000, -18.000000)
			arg0:setTopBottom(false, false, -3.730000, 4.770000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal30:completeAnimation()
		registerVal2.vhudagrReticleCenterHairline0:setLeftRight(false, false, -21.000000, -4.000000)
		registerVal2.vhudagrReticleCenterHairline0:setTopBottom(false, false, -3.730000, 4.770000)
		__FUNC_18AA2_(registerVal30, {})
		local function __FUNC_18CA2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -250.570000, -179.000000)
			arg0:setTopBottom(false, false, -177.830000, -122.170000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal31:completeAnimation()
		registerVal2.vhudagrReticleOutsideLine0:setLeftRight(false, false, -179.000000, -107.430000)
		registerVal2.vhudagrReticleOutsideLine0:setTopBottom(false, false, -120.830000, -65.170000)
		__FUNC_18CA2_(registerVal31, {})
		local function __FUNC_18EA2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 170.430000, 242.000000)
			arg0:setTopBottom(false, false, 124.170000, 179.830000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal32:completeAnimation()
		registerVal2.vhudagrReticleOutsideLine1:setLeftRight(false, false, 93.430000, 165.000000)
		registerVal2.vhudagrReticleOutsideLine1:setTopBottom(false, false, 65.170000, 120.830000)
		__FUNC_18EA2_(registerVal32, {})
		local function __FUNC_190A2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -248.000000, -176.430000)
			arg0:setTopBottom(false, false, 121.830000, 177.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal33:completeAnimation()
		registerVal2.vhudagrReticleOutsideLine2:setLeftRight(false, false, -179.000000, -107.430000)
		registerVal2.vhudagrReticleOutsideLine2:setTopBottom(false, false, 65.170000, 120.830000)
		__FUNC_190A2_(registerVal33, {})
		local function __FUNC_192A2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 18.000000, 35.000000)
			arg0:setTopBottom(false, false, -4.250000, 4.250000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal34:completeAnimation()
		registerVal2.vhudagrReticleCenterHairline1:setLeftRight(false, false, 3.180000, 20.180000)
		registerVal2.vhudagrReticleCenterHairline1:setTopBottom(false, false, -4.250000, 4.250000)
		__FUNC_192A2_(registerVal34, {})
		local function __FUNC_194A2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -35.000000, -18.000000)
			arg0:setTopBottom(false, false, -3.730000, 4.770000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal35:completeAnimation()
		registerVal2.vhudagrReticleCenterHairline00:setLeftRight(false, false, -21.000000, -4.000000)
		registerVal2.vhudagrReticleCenterHairline00:setTopBottom(false, false, -3.730000, 4.770000)
		__FUNC_194A2_(registerVal35, {})
	end

	registerVal40.DefaultState = __FUNC_14B53_
	registerVal39.Zoom = registerVal40
	registerVal2.clipsPerState = registerVal39
	local function __FUNC_196A2_(arg0)
		arg0.vhudmsLockOnNotification:close()
		arg0.quadtankDamageIcon:close()
		arg0.vhudagrReticleFocusFrameRight:close()
		arg0.vhudagrReticleFocusFrameLeft:close()
		arg0.vhudagrReticleHairlineBottom:close()
		arg0.vhudagrReticleHairlineTop:close()
		arg0.vhudagrReticleOutsideLine:close()
		arg0.vhudagrReticleOutsideDotsUR:close()
		arg0.vhudagrReticleOutsideDotsLR:close()
		arg0.vhudagrReticleOutsideDotsUR0:close()
		arg0.vhudagrReticleOutsideDotsLR0:close()
		arg0.vhudagrOutsideLine:close()
		arg0.vhudagrOutsideLine0:close()
		arg0.vhudagrReticleCenterHairline:close()
		arg0.vhudagrReticleCenterHairline0:close()
		arg0.vhudagrReticleOutsideLine0:close()
		arg0.vhudagrReticleOutsideLine1:close()
		arg0.vhudagrReticleOutsideLine2:close()
		arg0.vhudagrReticleCenterHairline1:close()
		arg0.vhudagrReticleCenterHairline00:close()
		arg0.vhudagrMissilesWidgetLeft:close()
		arg0.vhudagrRpmWidget:close()
		arg0.vhudagrTimeBar0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_196A2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

