-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.Turret.vhud_turret_reticle_center")
require("ui.uieditor.widgets.VehicleHUDs.agr.vhud_agr_ReticleOutsideDotsUR")
require("ui.uieditor.widgets.VehicleHUDs.Turret.vhud_turret_damageicon")
require("ui.uieditor.widgets.VehicleHUDs.Turret.vhud_turret_reticle_arrows")
require("ui.uieditor.widgets.VehicleHUDs.dart.vhud_dart_Timebar")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_turret_reticle = registerVal1
function CoD.vhud_turret_reticle.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_turret_reticle)
	registerVal2.id = "vhud_turret_reticle"
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
	registerVal4:setRGB(1.000000, 0.830000, 0.390000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_agr_centerpoint"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.agrCenterPoint = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -9.000000, 7.000000)
	registerVal5:setTopBottom(false, false, -8.000000, 8.000000)
	registerVal5:setRGB(1.000000, 0.830000, 0.390000)
	registerVal5:setImage(RegisterImage("uie_t7_cp_hud_vehicle_agr_centerpoint"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.agrCenterPoint0 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -8.000000, 8.000000)
	registerVal6:setTopBottom(false, false, 47.000000, 151.000000)
	registerVal6:setRGB(1.000000, 0.830000, 0.390000)
	registerVal6:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_reticlelower"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.ReticleLower = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, 253.000000, 358.500000)
	registerVal7:setTopBottom(false, false, -6.560000, 9.670000)
	registerVal7:setRGB(1.000000, 0.830000, 0.390000)
	registerVal7:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_outsidehashlinesr4"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.OutsideHashLineR5 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -338.500000, -233.000000)
	registerVal8:setTopBottom(false, false, -8.230000, 8.000000)
	registerVal8:setRGB(1.000000, 0.830000, 0.390000)
	registerVal8:setZRot(180.000000)
	registerVal8:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_outsidehashlinesr4"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.Image8 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, -52.750000, 52.750000)
	registerVal9:setTopBottom(false, false, -214.240000, -198.010000)
	registerVal9:setRGB(1.000000, 0.830000, 0.390000)
	registerVal9:setZRot(90.000000)
	registerVal9:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_outsidehashlinesr4"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.Image9 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, false, 121.430000, 137.430000)
	registerVal10:setTopBottom(false, false, -52.450000, 51.550000)
	registerVal10:setRGB(1.000000, 0.830000, 0.390000)
	registerVal10:setAlpha(0.500000)
	registerVal10:setZRot(90.000000)
	registerVal10:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_reticlelower"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.Image10 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, false, -132.570000, -116.570000)
	registerVal11:setTopBottom(false, false, -52.450000, 51.550000)
	registerVal11:setRGB(1.000000, 0.830000, 0.390000)
	registerVal11:setAlpha(0.500000)
	registerVal11:setYRot(180.000000)
	registerVal11:setZRot(90.000000)
	registerVal11:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_reticlelower"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.Image11 = registerVal11
	local registerVal12 = CoD.vhud_turret_reticle_center.new(arg0, arg1)
	registerVal12:setLeftRight(false, false, -27.000000, 27.000000)
	registerVal12:setTopBottom(false, false, -34.500000, 30.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.vhudturretreticlecenter = registerVal12
	local registerVal13 = CoD.vhud_agr_ReticleOutsideDotsUR.new(arg0, arg1)
	registerVal13:setLeftRight(false, false, -31.500000, 31.500000)
	registerVal13:setTopBottom(false, false, -111.430000, -79.630000)
	registerVal13:setRGB(1.000000, 0.830000, 0.390000)
	registerVal13:setZRot(75.000000)
	registerVal13:setScale(0.700000)
	registerVal2:addElement(registerVal13)
	registerVal2.vhudagrReticleOutsideDotsUR = registerVal13
	local registerVal14 = CoD.vhud_agr_ReticleOutsideDotsUR.new(arg0, arg1)
	registerVal14:setLeftRight(false, false, 48.500000, 111.500000)
	registerVal14:setTopBottom(false, false, 67.200000, 99.000000)
	registerVal14:setRGB(1.000000, 0.830000, 0.390000)
	registerVal14:setZRot(299.000000)
	registerVal14:setScale(0.700000)
	registerVal2:addElement(registerVal14)
	registerVal2.vhudagrReticleOutsideDotsUR0 = registerVal14
	local registerVal15 = CoD.vhud_agr_ReticleOutsideDotsUR.new(arg0, arg1)
	registerVal15:setLeftRight(false, false, -115.750000, -52.750000)
	registerVal15:setTopBottom(false, false, 67.200000, 99.000000)
	registerVal15:setRGB(1.000000, 0.830000, 0.390000)
	registerVal15:setZRot(-153.000000)
	registerVal15:setScale(0.700000)
	registerVal2:addElement(registerVal15)
	registerVal2.vhudagrReticleOutsideDotsUR1 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(false, false, 45.500000, 106.500000)
	registerVal16:setTopBottom(false, false, -52.450000, -35.510000)
	registerVal16:setRGB(1.000000, 0.830000, 0.390000)
	registerVal16:setAlpha(0.300000)
	registerVal16:setYRot(180.000000)
	registerVal16:setZRot(-125.000000)
	registerVal16:setScale(0.900000)
	registerVal16:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_centerlines"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
	registerVal16:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal16:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal16:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal16:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal16)
	registerVal2.UpperLineRight = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(false, false, -105.250000, -44.250000)
	registerVal17:setTopBottom(false, false, -52.450000, -35.510000)
	registerVal17:setRGB(1.000000, 0.830000, 0.390000)
	registerVal17:setAlpha(0.300000)
	registerVal17:setYRot(180.000000)
	registerVal17:setZRot(125.000000)
	registerVal17:setScale(0.900000)
	registerVal17:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_centerlines"))
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
	registerVal17:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal17:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal17:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal17:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal17)
	registerVal2.UpperLineLeft = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(false, false, -296.750000, -63.000000)
	registerVal18:setTopBottom(false, false, -174.600000, 162.100000)
	registerVal18:setRGB(1.000000, 0.830000, 0.390000)
	registerVal18:setAlpha(0.700000)
	registerVal18:setImage(RegisterImage("uie_t7_cp_hud_vehicle_turret_centertexturefade"))
	registerVal18:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal18)
	registerVal2.FadeLeft = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(false, false, 64.000000, 297.750000)
	registerVal19:setTopBottom(false, false, -174.600000, 162.100000)
	registerVal19:setRGB(1.000000, 0.830000, 0.390000)
	registerVal19:setAlpha(0.700000)
	registerVal19:setYRot(180.000000)
	registerVal19:setImage(RegisterImage("uie_t7_cp_hud_vehicle_turret_centertexturefade"))
	registerVal19:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal19)
	registerVal2.FadeRight = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(false, false, -373.750000, -140.000000)
	registerVal20:setTopBottom(false, false, -174.600000, 162.100000)
	registerVal20:setRGB(1.000000, 0.830000, 0.390000)
	registerVal20:setAlpha(0.250000)
	registerVal20:setScale(1.700000)
	registerVal20:setImage(RegisterImage("uie_t7_cp_hud_vehicle_turret_centertexturefade"))
	registerVal20:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal20)
	registerVal2.FadeLeftBLUR = registerVal20
	local registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(false, false, 152.000000, 385.750000)
	registerVal21:setTopBottom(false, false, -174.600000, 162.100000)
	registerVal21:setRGB(1.000000, 0.830000, 0.390000)
	registerVal21:setAlpha(0.250000)
	registerVal21:setYRot(180.000000)
	registerVal21:setScale(1.700000)
	registerVal21:setImage(RegisterImage("uie_t7_cp_hud_vehicle_turret_centertexturefade"))
	registerVal21:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal21)
	registerVal2.FadeRightBLUR = registerVal21
	local registerVal22 = CoD.vhud_turret_damageicon.new(arg0, arg1)
	registerVal22:setLeftRight(false, true, -235.790000, -135.790000)
	registerVal22:setTopBottom(true, false, 101.990000, 201.990000)
	registerVal22:setYRot(-20.000000)
	local function __FUNC_1EA9_(arg0)
		registerVal22:setModel(arg0, arg1)
	end

	registerVal22:linkToElementModel(registerVal2, nil, false, __FUNC_1EA9_)
	registerVal2:addElement(registerVal22)
	registerVal2.vhudturretdamageicon = registerVal22
	local registerVal23 = CoD.vhud_turret_reticle_arrows.new(arg0, arg1)
	registerVal23:setLeftRight(false, false, -32.500000, 31.500000)
	registerVal23:setTopBottom(false, false, 61.200000, 130.200000)
	registerVal23:setAlpha(0.600000)
	registerVal2:addElement(registerVal23)
	registerVal2.vhudturretreticlearrows = registerVal23
	local registerVal24 = CoD.vhud_dart_Timebar.new(arg0, arg1)
	registerVal24:setLeftRight(false, true, -289.170000, 60.830000)
	registerVal24:setTopBottom(true, false, 80.910000, 89.910000)
	registerVal24:setYRot(-20.000000)
	local function __FUNC_1EFA_(arg0)
		registerVal24:setModel(arg0, arg1)
	end

	registerVal24:linkToElementModel(registerVal2, nil, false, __FUNC_1EFA_)
	registerVal2:addElement(registerVal24)
	registerVal2.vhuddartTimebar = registerVal24
	local registerVal25 = {}
	local registerVal26 = {}
	local function __FUNC_1F4A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal26.DefaultClip = __FUNC_1F4A_
	local function __FUNC_1FAA_()
		registerVal2:setupElementClipCounter(19.000000)
		local function __FUNC_26D4_(arg0, arg1)
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
		__FUNC_26D4_(registerVal4, {})
		local function __FUNC_2889_(arg0, arg1)
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
		__FUNC_2889_(registerVal5, {})
		local function __FUNC_2A3D_(arg0, arg1)
			local function __FUNC_2B94_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2B94_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B94_)
		end

		registerVal6:completeAnimation()
		registerVal2.ReticleLower:setAlpha(0.000000)
		__FUNC_2A3D_(registerVal6, {})
		local function __FUNC_2D49_(arg0, arg1)
			local function __FUNC_2EA0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2EA0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 810.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EA0_)
		end

		registerVal7:completeAnimation()
		registerVal2.OutsideHashLineR5:setAlpha(0.000000)
		__FUNC_2D49_(registerVal7, {})
		local function __FUNC_3055_(arg0, arg1)
			local function __FUNC_31AC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_31AC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 810.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31AC_)
		end

		registerVal8:completeAnimation()
		registerVal2.Image8:setAlpha(0.000000)
		__FUNC_3055_(registerVal8, {})
		local function __FUNC_3361_(arg0, arg1)
			local function __FUNC_34B8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_34B8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 810.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34B8_)
		end

		registerVal9:completeAnimation()
		registerVal2.Image9:setAlpha(0.000000)
		__FUNC_3361_(registerVal9, {})
		local function __FUNC_366D_(arg0, arg1)
			local function __FUNC_37C4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.500000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_37C4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37C4_)
		end

		registerVal10:completeAnimation()
		registerVal2.Image10:setAlpha(0.000000)
		__FUNC_366D_(registerVal10, {})
		local function __FUNC_3979_(arg0, arg1)
			local function __FUNC_3AD0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.500000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3AD0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3AD0_)
		end

		registerVal11:completeAnimation()
		registerVal2.Image11:setAlpha(0.000000)
		__FUNC_3979_(registerVal11, {})
		local function __FUNC_3C85_(arg0, arg1)
			local function __FUNC_3DDC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 190.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3DDC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 469.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3DDC_)
		end

		registerVal12:completeAnimation()
		registerVal2.vhudturretreticlecenter:setAlpha(0.000000)
		__FUNC_3C85_(registerVal12, {})
		local function __FUNC_3F91_(arg0, arg1)
			local function __FUNC_40E8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_40E8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 469.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_40E8_)
		end

		registerVal13:completeAnimation()
		registerVal2.vhudagrReticleOutsideDotsUR:setAlpha(0.000000)
		__FUNC_3F91_(registerVal13, {})
		local function __FUNC_429D_(arg0, arg1)
			local function __FUNC_43F4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_43F4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 469.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_43F4_)
		end

		registerVal14:completeAnimation()
		registerVal2.vhudagrReticleOutsideDotsUR0:setAlpha(0.000000)
		__FUNC_429D_(registerVal14, {})
		local function __FUNC_45A9_(arg0, arg1)
			local function __FUNC_4700_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4700_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 469.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4700_)
		end

		registerVal15:completeAnimation()
		registerVal2.vhudagrReticleOutsideDotsUR1:setAlpha(0.000000)
		__FUNC_45A9_(registerVal15, {})
		local function __FUNC_48B5_(arg0, arg1)
			local function __FUNC_4A0C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.500000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4A0C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 689.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A0C_)
		end

		registerVal16:completeAnimation()
		registerVal2.UpperLineRight:setAlpha(0.000000)
		__FUNC_48B5_(registerVal16, {})
		local function __FUNC_4BC1_(arg0, arg1)
			local function __FUNC_4D18_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.300000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4D18_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 689.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D18_)
		end

		registerVal17:completeAnimation()
		registerVal2.UpperLineLeft:setAlpha(0.000000)
		__FUNC_4BC1_(registerVal17, {})
		local function __FUNC_4ECD_(arg0, arg1)
			local function __FUNC_5024_(arg0, arg1)
				local function __FUNC_519F_(arg0, arg1)
					local function __FUNC_5317_(arg0, arg1)
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
						__FUNC_5317_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5317_)
				end

				if arg1.interrupted then
					__FUNC_519F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_519F_)
			end

			if arg1.interrupted then
				__FUNC_5024_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 620.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5024_)
		end

		registerVal18:completeAnimation()
		registerVal2.FadeLeft:setAlpha(0.000000)
		__FUNC_4ECD_(registerVal18, {})
		local function __FUNC_54C9_(arg0, arg1)
			local function __FUNC_5620_(arg0, arg1)
				local function __FUNC_579B_(arg0, arg1)
					local function __FUNC_5913_(arg0, arg1)
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
						__FUNC_5913_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5913_)
				end

				if arg1.interrupted then
					__FUNC_579B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_579B_)
			end

			if arg1.interrupted then
				__FUNC_5620_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 620.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5620_)
		end

		registerVal19:completeAnimation()
		registerVal2.FadeRight:setAlpha(0.000000)
		__FUNC_54C9_(registerVal19, {})
		local function __FUNC_5AC5_(arg0, arg1)
			local function __FUNC_5C1C_(arg0, arg1)
				local function __FUNC_5D97_(arg0, arg1)
					local function __FUNC_5F0F_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.250000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_5F0F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5F0F_)
				end

				if arg1.interrupted then
					__FUNC_5D97_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.300000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5D97_)
			end

			if arg1.interrupted then
				__FUNC_5C1C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 620.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5C1C_)
		end

		registerVal20:completeAnimation()
		registerVal2.FadeLeftBLUR:setAlpha(0.000000)
		__FUNC_5AC5_(registerVal20, {})
		local function __FUNC_60C1_(arg0, arg1)
			local function __FUNC_6218_(arg0, arg1)
				local function __FUNC_6393_(arg0, arg1)
					local function __FUNC_650B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.250000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_650B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_650B_)
				end

				if arg1.interrupted then
					__FUNC_6393_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.300000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6393_)
			end

			if arg1.interrupted then
				__FUNC_6218_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 620.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6218_)
		end

		registerVal21:completeAnimation()
		registerVal2.FadeRightBLUR:setAlpha(0.000000)
		__FUNC_60C1_(registerVal21, {})
		local function __FUNC_66BD_(arg0, arg1)
			local function __FUNC_6814_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.600000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_6814_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6814_)
		end

		registerVal23:completeAnimation()
		registerVal2.vhudturretreticlearrows:setAlpha(0.000000)
		__FUNC_66BD_(registerVal23, {})
	end

	registerVal26.StartUp = __FUNC_1FAA_
	local function __FUNC_69C9_()
		registerVal2:setupElementClipCounter(17.000000)
		registerVal6:completeAnimation()
		registerVal2.ReticleLower:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_7527_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 169.800000, 275.300000)
			arg0:setTopBottom(false, false, -8.000000, 8.230000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.OutsideHashLineR5:setLeftRight(false, false, 253.000000, 358.500000)
		registerVal2.OutsideHashLineR5:setTopBottom(false, false, -6.560000, 9.670000)
		registerVal2.OutsideHashLineR5:setAlpha(1.000000)
		__FUNC_7527_(registerVal7, {})
		local function __FUNC_7749_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -270.500000, -165.000000)
			arg0:setTopBottom(false, false, -8.230000, 8.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.Image8:setLeftRight(false, false, -338.500000, -233.000000)
		registerVal2.Image8:setTopBottom(false, false, -8.230000, 8.000000)
		registerVal2.Image8:setAlpha(1.000000)
		__FUNC_7749_(registerVal8, {})
		local function __FUNC_796D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -52.750000, 52.750000)
			arg0:setTopBottom(false, false, -174.600000, -158.370000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.Image9:setLeftRight(false, false, -52.750000, 52.750000)
		registerVal2.Image9:setTopBottom(false, false, -214.240000, -198.010000)
		registerVal2.Image9:setAlpha(1.000000)
		__FUNC_796D_(registerVal9, {})
		local function __FUNC_7B91_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.Image10:setAlpha(0.500000)
		__FUNC_7B91_(registerVal10, {})
		local function __FUNC_7D45_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.Image11:setAlpha(1.000000)
		__FUNC_7D45_(registerVal11, {})
		local function __FUNC_7EF9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setScale(0.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.vhudturretreticlecenter:setScale(1.000000)
		__FUNC_7EF9_(registerVal12, {})
		local function __FUNC_80AD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -32.500000, 30.500000)
			arg0:setTopBottom(false, false, -53.880000, -22.080000)
			arg0:setAlpha(0.400000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.vhudagrReticleOutsideDotsUR:setLeftRight(false, false, -31.500000, 31.500000)
		registerVal2.vhudagrReticleOutsideDotsUR:setTopBottom(false, false, -111.430000, -79.630000)
		registerVal2.vhudagrReticleOutsideDotsUR:setAlpha(1.000000)
		__FUNC_80AD_(registerVal13, {})
		local function __FUNC_82D1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -5.500000, 57.500000)
			arg0:setTopBottom(false, false, 11.200000, 43.000000)
			arg0:setAlpha(0.400000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.vhudagrReticleOutsideDotsUR0:setLeftRight(false, false, 48.500000, 111.500000)
		registerVal2.vhudagrReticleOutsideDotsUR0:setTopBottom(false, false, 67.200000, 99.000000)
		registerVal2.vhudagrReticleOutsideDotsUR0:setAlpha(1.000000)
		__FUNC_82D1_(registerVal14, {})
		local function __FUNC_84F5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -59.000000, 5.000000)
			arg0:setTopBottom(false, false, 11.200000, 43.000000)
			arg0:setAlpha(0.400000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.vhudagrReticleOutsideDotsUR1:setLeftRight(false, false, -115.750000, -52.750000)
		registerVal2.vhudagrReticleOutsideDotsUR1:setTopBottom(false, false, 67.200000, 99.000000)
		registerVal2.vhudagrReticleOutsideDotsUR1:setAlpha(1.000000)
		__FUNC_84F5_(registerVal15, {})
		local function __FUNC_8719_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.UpperLineRight:setAlpha(0.300000)
		__FUNC_8719_(registerVal16, {})
		local function __FUNC_88CD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.UpperLineLeft:setAlpha(0.300000)
		__FUNC_88CD_(registerVal17, {})
		local function __FUNC_8A81_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 422.250000, 656.000000)
			arg0:setTopBottom(false, false, 185.400000, 522.100000)
			arg0:setAlpha(0.500000)
			arg0:setScale(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.FadeLeft:setLeftRight(false, false, 343.250000, 577.000000)
		registerVal2.FadeLeft:setTopBottom(false, false, 185.400000, 522.100000)
		registerVal2.FadeLeft:setAlpha(0.700000)
		registerVal2.FadeLeft:setScale(1.000000)
		__FUNC_8A81_(registerVal18, {})
		local function __FUNC_8CC8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 623.000000, 856.750000)
			arg0:setTopBottom(false, false, 185.400000, 522.100000)
			arg0:setAlpha(0.700000)
			arg0:setScale(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal2.FadeRight:setLeftRight(false, false, 704.000000, 937.750000)
		registerVal2.FadeRight:setTopBottom(false, false, 185.400000, 522.100000)
		registerVal2.FadeRight:setAlpha(0.700000)
		registerVal2.FadeRight:setScale(1.000000)
		__FUNC_8CC8_(registerVal19, {})
		local function __FUNC_8F10_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 301.000000, 534.750000)
			arg0:setTopBottom(false, false, 185.400000, 522.100000)
			arg0:setAlpha(0.300000)
			arg0:setScale(1.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal20:completeAnimation()
		registerVal2.FadeLeftBLUR:setLeftRight(false, false, 266.250000, 500.000000)
		registerVal2.FadeLeftBLUR:setTopBottom(false, false, 185.400000, 522.100000)
		registerVal2.FadeLeftBLUR:setAlpha(0.300000)
		registerVal2.FadeLeftBLUR:setScale(1.700000)
		__FUNC_8F10_(registerVal20, {})
		local function __FUNC_9158_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 769.430000, 1003.180000)
			arg0:setTopBottom(false, false, 185.400000, 522.100000)
			arg0:setAlpha(0.250000)
			arg0:setScale(1.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal21:completeAnimation()
		registerVal2.FadeRightBLUR:setLeftRight(false, false, 792.000000, 1025.750000)
		registerVal2.FadeRightBLUR:setTopBottom(false, false, 185.400000, 522.100000)
		registerVal2.FadeRightBLUR:setAlpha(0.250000)
		registerVal2.FadeRightBLUR:setScale(1.700000)
		__FUNC_9158_(registerVal21, {})
		local function __FUNC_93A0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 607.500000, 671.500000)
			arg0:setTopBottom(false, false, 497.200000, 566.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal23:completeAnimation()
		registerVal2.vhudturretreticlearrows:setLeftRight(false, false, 607.500000, 671.500000)
		registerVal2.vhudturretreticlearrows:setTopBottom(false, false, 421.200000, 490.200000)
		__FUNC_93A0_(registerVal23, {})
	end

	registerVal26.Zoom = __FUNC_69C9_
	registerVal25.DefaultState = registerVal26
	registerVal26 = {}
	local function __FUNC_95A2_()
		registerVal2:setupElementClipCounter(18.000000)
		registerVal4:completeAnimation()
		registerVal2.agrCenterPoint:setLeftRight(false, false, -9.000000, 7.000000)
		registerVal2.agrCenterPoint:setTopBottom(false, false, -8.000000, 8.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.ReticleLower:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.OutsideHashLineR5:setLeftRight(false, false, 169.800000, 275.300000)
		registerVal2.OutsideHashLineR5:setTopBottom(false, false, -8.000000, 8.230000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Image8:setLeftRight(false, false, -270.500000, -165.000000)
		registerVal2.Image8:setTopBottom(false, false, -8.230000, 8.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Image9:setLeftRight(false, false, -52.750000, 52.750000)
		registerVal2.Image9:setTopBottom(false, false, -174.600000, -158.370000)
		registerVal2.Image9:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Image10:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Image11:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.vhudturretreticlecenter:setScale(0.700000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.vhudagrReticleOutsideDotsUR:setLeftRight(false, false, -32.500000, 30.500000)
		registerVal2.vhudagrReticleOutsideDotsUR:setTopBottom(false, false, -53.880000, -22.080000)
		registerVal2.vhudagrReticleOutsideDotsUR:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.vhudagrReticleOutsideDotsUR0:setLeftRight(false, false, -5.500000, 57.500000)
		registerVal2.vhudagrReticleOutsideDotsUR0:setTopBottom(false, false, 11.200000, 43.000000)
		registerVal2.vhudagrReticleOutsideDotsUR0:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.vhudagrReticleOutsideDotsUR1:setLeftRight(false, false, -59.000000, 5.000000)
		registerVal2.vhudagrReticleOutsideDotsUR1:setTopBottom(false, false, 11.200000, 43.000000)
		registerVal2.vhudagrReticleOutsideDotsUR1:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.UpperLineRight:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.UpperLineLeft:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FadeLeft:setLeftRight(false, false, -217.750000, 16.000000)
		registerVal2.FadeLeft:setTopBottom(false, false, -174.600000, 162.100000)
		registerVal2.FadeLeft:setAlpha(0.500000)
		registerVal2.FadeLeft:setScale(0.800000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.FadeRight:setLeftRight(false, false, -17.000000, 216.750000)
		registerVal2.FadeRight:setTopBottom(false, false, -174.600000, 162.100000)
		registerVal2.FadeRight:setScale(0.800000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.FadeLeftBLUR:setLeftRight(false, false, -339.000000, -105.250000)
		registerVal2.FadeLeftBLUR:setTopBottom(false, false, -174.600000, 162.100000)
		registerVal2.FadeLeftBLUR:setScale(1.500000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.FadeRightBLUR:setLeftRight(false, false, 129.430000, 363.180000)
		registerVal2.FadeRightBLUR:setTopBottom(false, false, -174.600000, 162.100000)
		registerVal2.FadeRightBLUR:setScale(1.500000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal23:completeAnimation()
		registerVal2.vhudturretreticlearrows:setLeftRight(false, false, -32.500000, 31.500000)
		registerVal2.vhudturretreticlearrows:setTopBottom(false, false, 137.200000, 206.200000)
		registerVal2.clipFinished(registerVal23, {})
	end

	registerVal26.DefaultClip = __FUNC_95A2_
	local function __FUNC_A14D_()
		registerVal2:setupElementClipCounter(17.000000)
		registerVal6:completeAnimation()
		registerVal2.ReticleLower:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_ACC7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 253.000000, 358.500000)
			arg0:setTopBottom(false, false, -6.560000, 9.670000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.OutsideHashLineR5:setLeftRight(false, false, 169.800000, 275.300000)
		registerVal2.OutsideHashLineR5:setTopBottom(false, false, -8.000000, 8.230000)
		registerVal2.OutsideHashLineR5:setAlpha(1.000000)
		__FUNC_ACC7_(registerVal7, {})
		local function __FUNC_AEE9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -338.500000, -233.000000)
			arg0:setTopBottom(false, false, -8.230000, 8.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.Image8:setLeftRight(false, false, -270.500000, -165.000000)
		registerVal2.Image8:setTopBottom(false, false, -8.230000, 8.000000)
		registerVal2.Image8:setAlpha(1.000000)
		__FUNC_AEE9_(registerVal8, {})
		local function __FUNC_B10D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -52.750000, 52.750000)
			arg0:setTopBottom(false, false, -214.240000, -198.010000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.Image9:setLeftRight(false, false, -52.750000, 52.750000)
		registerVal2.Image9:setTopBottom(false, false, -174.600000, -158.370000)
		registerVal2.Image9:setAlpha(1.000000)
		__FUNC_B10D_(registerVal9, {})
		local function __FUNC_B331_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.Image10:setAlpha(0.000000)
		__FUNC_B331_(registerVal10, {})
		local function __FUNC_B4E5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.Image11:setAlpha(0.000000)
		__FUNC_B4E5_(registerVal11, {})
		local function __FUNC_B699_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.vhudturretreticlecenter:setAlpha(1.000000)
		registerVal2.vhudturretreticlecenter:setScale(0.700000)
		__FUNC_B699_(registerVal12, {})
		local function __FUNC_B86B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -31.500000, 31.500000)
			arg0:setTopBottom(false, false, -111.430000, -79.630000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.vhudagrReticleOutsideDotsUR:setLeftRight(false, false, -32.500000, 30.500000)
		registerVal2.vhudagrReticleOutsideDotsUR:setTopBottom(false, false, -53.880000, -22.080000)
		registerVal2.vhudagrReticleOutsideDotsUR:setAlpha(0.400000)
		__FUNC_B86B_(registerVal13, {})
		local function __FUNC_BA8D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 48.500000, 111.500000)
			arg0:setTopBottom(false, false, 67.200000, 99.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.vhudagrReticleOutsideDotsUR0:setLeftRight(false, false, -5.500000, 57.500000)
		registerVal2.vhudagrReticleOutsideDotsUR0:setTopBottom(false, false, 11.200000, 43.000000)
		registerVal2.vhudagrReticleOutsideDotsUR0:setAlpha(0.400000)
		__FUNC_BA8D_(registerVal14, {})
		local function __FUNC_BCB1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -115.750000, -52.750000)
			arg0:setTopBottom(false, false, 67.200000, 99.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.vhudagrReticleOutsideDotsUR1:setLeftRight(false, false, -59.000000, 5.000000)
		registerVal2.vhudagrReticleOutsideDotsUR1:setTopBottom(false, false, 11.200000, 43.000000)
		registerVal2.vhudagrReticleOutsideDotsUR1:setAlpha(0.400000)
		__FUNC_BCB1_(registerVal15, {})
		local function __FUNC_BED5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.300000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.UpperLineRight:setAlpha(0.000000)
		__FUNC_BED5_(registerVal16, {})
		local function __FUNC_C089_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.300000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.UpperLineLeft:setAlpha(0.000000)
		__FUNC_C089_(registerVal17, {})
		local function __FUNC_C23D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -296.750000, -63.000000)
			arg0:setTopBottom(false, false, -174.600000, 162.100000)
			arg0:setAlpha(0.700000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.FadeLeft:setLeftRight(false, false, -217.750000, 16.000000)
		registerVal2.FadeLeft:setTopBottom(false, false, -174.600000, 162.100000)
		registerVal2.FadeLeft:setAlpha(0.700000)
		registerVal2.FadeLeft:setScale(0.800000)
		__FUNC_C23D_(registerVal18, {})
		local function __FUNC_C484_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 64.000000, 297.750000)
			arg0:setTopBottom(false, false, -174.600000, 162.100000)
			arg0:setAlpha(0.700000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal2.FadeRight:setLeftRight(false, false, -17.000000, 216.750000)
		registerVal2.FadeRight:setTopBottom(false, false, -174.600000, 162.100000)
		registerVal2.FadeRight:setAlpha(0.700000)
		registerVal2.FadeRight:setScale(0.800000)
		__FUNC_C484_(registerVal19, {})
		local function __FUNC_C6CC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -373.750000, -140.000000)
			arg0:setTopBottom(false, false, -174.600000, 162.100000)
			arg0:setAlpha(0.250000)
			arg0:setScale(1.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal20:completeAnimation()
		registerVal2.FadeLeftBLUR:setLeftRight(false, false, -339.000000, -105.250000)
		registerVal2.FadeLeftBLUR:setTopBottom(false, false, -174.600000, 162.100000)
		registerVal2.FadeLeftBLUR:setAlpha(0.250000)
		registerVal2.FadeLeftBLUR:setScale(1.500000)
		__FUNC_C6CC_(registerVal20, {})
		local function __FUNC_C914_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 152.000000, 385.750000)
			arg0:setTopBottom(false, false, -174.600000, 162.100000)
			arg0:setAlpha(0.250000)
			arg0:setScale(1.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal21:completeAnimation()
		registerVal2.FadeRightBLUR:setLeftRight(false, false, 129.430000, 363.180000)
		registerVal2.FadeRightBLUR:setTopBottom(false, false, -174.600000, 162.100000)
		registerVal2.FadeRightBLUR:setAlpha(0.250000)
		registerVal2.FadeRightBLUR:setScale(1.500000)
		__FUNC_C914_(registerVal21, {})
		local function __FUNC_CB5C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -32.500000, 31.500000)
			arg0:setTopBottom(false, false, 61.200000, 130.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal23:completeAnimation()
		registerVal2.vhudturretreticlearrows:setLeftRight(false, false, -32.500000, 31.500000)
		registerVal2.vhudturretreticlearrows:setTopBottom(false, false, 137.200000, 206.200000)
		__FUNC_CB5C_(registerVal23, {})
	end

	registerVal26.DefaultState = __FUNC_A14D_
	registerVal25.Zoom = registerVal26
	registerVal2.clipsPerState = registerVal25
	local function __FUNC_CD5E_(arg0)
		arg0.vhudturretreticlecenter:close()
		arg0.vhudagrReticleOutsideDotsUR:close()
		arg0.vhudagrReticleOutsideDotsUR0:close()
		arg0.vhudagrReticleOutsideDotsUR1:close()
		arg0.vhudturretdamageicon:close()
		arg0.vhudturretreticlearrows:close()
		arg0.vhuddartTimebar:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_CD5E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

