-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.Ground.VehicleGround_IrisOutterDigi")
require("ui.uieditor.widgets.VehicleHUDs.Ground.VehicleGround_IrisOutterThinInternal")
require("ui.uieditor.widgets.VehicleHUDs.Ground.VehicleGround_IrisInnerContainer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.VehicleGround_Iris = registerVal1
function CoD.VehicleGround_Iris.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.VehicleGround_Iris)
	registerVal2.id = "VehicleGround_Iris"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.VehicleGround_IrisOutterDigi.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.OutterDigi0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 272.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setAlpha(0.300000)
	registerVal4:setZoom(71.000000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_irisoutteredge"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.IrisOutterEdge = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, true, -272.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setAlpha(0.300000)
	registerVal5:setYRot(-180.000000)
	registerVal5:setZoom(69.000000)
	registerVal5:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_irisoutteredge"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.IrisOutterEdgeR = registerVal5
	local registerVal6 = CoD.VehicleGround_IrisOutterThinInternal.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, -69.500000, 1351.500000)
	registerVal6:setTopBottom(true, false, -135.100000, 807.900000)
	registerVal6:setRGB(0.470000, 0.560000, 0.830000)
	registerVal6:setAlpha(0.350000)
	registerVal6:setZoom(68.510000)
	registerVal2:addElement(registerVal6)
	registerVal2.OutterThinInternal0 = registerVal6
	local registerVal7 = CoD.VehicleGround_IrisInnerContainer.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal7:setTopBottom(false, false, -391.000000, 329.000000)
	registerVal7:setAlpha(0.610000)
	registerVal7:setZRot(-21.690000)
	registerVal7:setZoom(266.320000)
	registerVal2:addElement(registerVal7)
	registerVal2.InnerContainer0 = registerVal7
	local registerVal8 = CoD.VehicleGround_IrisOutterDigi.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal8:setAlpha(0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.OutterDigiAnimateIn = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_C95_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal10.DefaultClip = __FUNC_C95_
	local function __FUNC_CF6_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_1353_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 1519.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(true, true, 0.000000, 0.000000)
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.500000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:beginAnimation("keyframe", 959.000000, false, false, CoD.TweenType.Linear)
		registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal3:setRGB(1.000000, 1.000000, 1.000000)
		registerVal3:setAlpha(0.000000)
		registerVal3:setZoom(24.000000)
		registerVal3:registerEventHandler("transition_complete_keyframe", __FUNC_1353_)
		local function __FUNC_15AC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 1429.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(71.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:beginAnimation("keyframe", 1590.000000, false, false, CoD.TweenType.Linear)
		registerVal4:setRGB(1.000000, 1.000000, 1.000000)
		registerVal4:setAlpha(0.000000)
		registerVal4:setZoom(71.000000)
		registerVal4:registerEventHandler("transition_complete_keyframe", __FUNC_15AC_)
		local function __FUNC_17AC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 1429.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(69.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:beginAnimation("keyframe", 1590.000000, false, false, CoD.TweenType.Linear)
		registerVal5:setRGB(1.000000, 1.000000, 1.000000)
		registerVal5:setAlpha(0.000000)
		registerVal5:setZoom(69.000000)
		registerVal5:registerEventHandler("transition_complete_keyframe", __FUNC_17AC_)
		local function __FUNC_19AC_(arg0, arg1)
			local function __FUNC_1B6B_(arg0, arg1)
				local function __FUNC_1D27_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 419.000000, true, true, CoD.TweenType.Linear)
					end
					arg0:setRGB(1.000000, 1.000000, 1.000000)
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
					__FUNC_1D27_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 480.000000, true, true, CoD.TweenType.Linear)
				arg0:setAlpha(0.880000)
				arg0:setZRot(-11.030000)
				arg0:setZoom(-53.560000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D27_)
			end

			if arg1.interrupted then
				__FUNC_1B6B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 960.000000, true, true, CoD.TweenType.Linear)
			arg0:setAlpha(0.530000)
			arg0:setZRot(12.450000)
			arg0:setZoom(-210.760000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B6B_)
		end

		registerVal6:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
		registerVal2.OutterThinInternal0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.OutterThinInternal0:setAlpha(0.000000)
		registerVal2.OutterThinInternal0:setZRot(-66.000000)
		registerVal2.OutterThinInternal0:setZoom(-444.000000)
		registerVal6:registerEventHandler("transition_complete_keyframe", __FUNC_19AC_)
		local function __FUNC_1F3C_(arg0, arg1)
			local function __FUNC_20FB_(arg0, arg1)
				local function __FUNC_2294_(arg0, arg1)
					local function __FUNC_2430_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 509.000000, true, true, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, -640.000000, 640.000000)
						arg0:setTopBottom(false, false, -391.000000, 329.000000)
						arg0:setAlpha(0.900000)
						arg0:setZRot(0.000000)
						arg0:setZoom(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_2430_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 589.000000, true, true, CoD.TweenType.Linear)
					arg0:setZRot(42.450000)
					arg0:setZoom(-49.200000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2430_)
				end

				if arg1.interrupted then
					__FUNC_2294_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 210.000000, true, true, CoD.TweenType.Linear)
				arg0:setZRot(-21.010000)
				arg0:setZoom(-190.760000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2294_)
			end

			if arg1.interrupted then
				__FUNC_20FB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 789.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.900000)
			arg0:setZRot(-10.410000)
			arg0:setZoom(-244.810000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20FB_)
		end

		registerVal7:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
		registerVal2.InnerContainer0:setLeftRight(false, false, -640.000000, 640.000000)
		registerVal2.InnerContainer0:setTopBottom(false, false, -391.000000, 329.000000)
		registerVal2.InnerContainer0:setAlpha(1.000000)
		registerVal2.InnerContainer0:setZRot(80.000000)
		registerVal2.InnerContainer0:setZoom(-355.000000)
		registerVal7:registerEventHandler("transition_complete_keyframe", __FUNC_1F3C_)
		local function __FUNC_2694_(arg0, arg1)
			local function __FUNC_280F_(arg0, arg1)
				local function __FUNC_2987_(arg0, arg1)
					local function __FUNC_2AFF_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, true, 0.000000, 0.000000)
						arg0:setTopBottom(true, true, 0.000000, 0.000000)
						arg0:setRGB(1.000000, 1.000000, 1.000000)
						arg0:setAlpha(0.000000)
						arg0:setZoom(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_2AFF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 1359.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AFF_)
				end

				if arg1.interrupted then
					__FUNC_2987_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.900000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2987_)
			end

			if arg1.interrupted then
				__FUNC_280F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1240.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_280F_)
		end

		registerVal8:beginAnimation("keyframe", 1940.000000, false, false, CoD.TweenType.Linear)
		registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal8:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal8:setRGB(1.000000, 1.000000, 1.000000)
		registerVal8:setAlpha(0.000000)
		registerVal8:setZoom(0.000000)
		registerVal8:registerEventHandler("transition_complete_keyframe", __FUNC_2694_)
	end

	registerVal10.StartUp = __FUNC_CF6_
	local function __FUNC_2D53_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_32F3_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 319.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(true, true, 0.000000, 0.000000)
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.OutterDigi0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.OutterDigi0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.OutterDigi0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.OutterDigi0:setAlpha(0.500000)
		registerVal2.OutterDigi0:setZoom(0.000000)
		__FUNC_32F3_(registerVal3, {})
		local function __FUNC_3547_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 1179.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.IrisOutterEdge:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.IrisOutterEdge:setAlpha(0.250000)
		__FUNC_3547_(registerVal4, {})
		local function __FUNC_3722_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 1179.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.IrisOutterEdgeR:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.IrisOutterEdgeR:setAlpha(0.250000)
		__FUNC_3722_(registerVal5, {})
		local function __FUNC_38FE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 579.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.230000, 0.350000, 0.750000)
			arg0:setAlpha(0.100000)
			arg0:setZRot(0.000000)
			arg0:setZoom(100.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.OutterThinInternal0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.OutterThinInternal0:setAlpha(0.900000)
		registerVal2.OutterThinInternal0:setZRot(0.000000)
		registerVal2.OutterThinInternal0:setZoom(0.000000)
		__FUNC_38FE_(registerVal6, {})
		local function __FUNC_3B28_(arg0, arg1)
			local function __FUNC_3CE7_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 210.000000, true, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -640.000000, 640.000000)
				arg0:setTopBottom(false, false, -391.000000, 329.000000)
				arg0:setRGB(1.000000, 1.000000, 1.000000)
				arg0:setAlpha(0.600000)
				arg0:setZRot(-17.000000)
				arg0:setZoom(273.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3CE7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 189.000000, true, true, CoD.TweenType.Linear)
			arg0:setAlpha(0.760000)
			arg0:setZRot(-71.000000)
			arg0:setZoom(125.790000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3CE7_)
		end

		registerVal7:completeAnimation()
		registerVal2.InnerContainer0:setLeftRight(false, false, -640.000000, 640.000000)
		registerVal2.InnerContainer0:setTopBottom(false, false, -391.000000, 329.000000)
		registerVal2.InnerContainer0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.InnerContainer0:setAlpha(0.900000)
		registerVal2.InnerContainer0:setZRot(0.000000)
		registerVal2.InnerContainer0:setZoom(0.000000)
		__FUNC_3B28_(registerVal7, {})
		local function __FUNC_3F76_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 589.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(true, true, 0.000000, 0.000000)
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.OutterDigiAnimateIn:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.OutterDigiAnimateIn:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.OutterDigiAnimateIn:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.OutterDigiAnimateIn:setAlpha(0.000000)
		registerVal2.OutterDigiAnimateIn:setZoom(0.000000)
		__FUNC_3F76_(registerVal8, {})
	end

	registerVal10.Zoom = __FUNC_2D53_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_41CB_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.OutterDigi0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.OutterDigi0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.OutterDigi0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.IrisOutterEdge:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.IrisOutterEdgeR:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.OutterThinInternal0:setRGB(0.230000, 0.350000, 0.750000)
		registerVal2.OutterThinInternal0:setAlpha(0.100000)
		registerVal2.OutterThinInternal0:setZRot(0.000000)
		registerVal2.OutterThinInternal0:setZoom(100.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.InnerContainer0:setLeftRight(false, false, -640.000000, 640.000000)
		registerVal2.InnerContainer0:setTopBottom(false, false, -391.000000, 329.000000)
		registerVal2.InnerContainer0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.InnerContainer0:setAlpha(0.600000)
		registerVal2.InnerContainer0:setZRot(-17.000000)
		registerVal2.InnerContainer0:setZoom(273.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.OutterDigiAnimateIn:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.OutterDigiAnimateIn:setAlpha(0.000000)
		registerVal2.OutterDigiAnimateIn:setZoom(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_41CB_
	local function __FUNC_46DF_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_4C57_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 589.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.500000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.OutterDigi0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.OutterDigi0:setAlpha(0.000000)
		registerVal2.OutterDigi0:setZoom(0.000000)
		__FUNC_4C57_(registerVal3, {})
		local function __FUNC_4E54_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 889.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.IrisOutterEdge:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.IrisOutterEdge:setAlpha(0.500000)
		__FUNC_4E54_(registerVal4, {})
		local function __FUNC_5032_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 889.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.IrisOutterEdgeR:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.IrisOutterEdgeR:setAlpha(0.500000)
		__FUNC_5032_(registerVal5, {})
		local function __FUNC_520E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 600.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.900000)
			arg0:setZRot(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.OutterThinInternal0:setRGB(0.230000, 0.350000, 0.750000)
		registerVal2.OutterThinInternal0:setAlpha(0.100000)
		registerVal2.OutterThinInternal0:setZRot(0.000000)
		registerVal2.OutterThinInternal0:setZoom(100.000000)
		__FUNC_520E_(registerVal6, {})
		local function __FUNC_5429_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 709.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -640.000000, 640.000000)
			arg0:setTopBottom(false, false, -391.000000, 329.000000)
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.900000)
			arg0:setZRot(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.InnerContainer0:setLeftRight(false, false, -640.000000, 640.000000)
		registerVal2.InnerContainer0:setTopBottom(false, false, -391.000000, 329.000000)
		registerVal2.InnerContainer0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.InnerContainer0:setAlpha(0.600000)
		registerVal2.InnerContainer0:setZRot(-17.000000)
		registerVal2.InnerContainer0:setZoom(273.000000)
		__FUNC_5429_(registerVal7, {})
		local function __FUNC_56B5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 1340.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(true, true, 0.000000, 0.000000)
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.OutterDigiAnimateIn:setLeftRight(true, true, -35.000000, 35.000000)
		registerVal2.OutterDigiAnimateIn:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.OutterDigiAnimateIn:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.OutterDigiAnimateIn:setAlpha(0.000000)
		registerVal2.OutterDigiAnimateIn:setZoom(0.000000)
		__FUNC_56B5_(registerVal8, {})
	end

	registerVal10.DefaultState = __FUNC_46DF_
	registerVal9.Zoom = registerVal10
	registerVal2.clipsPerState = registerVal9
	local function __FUNC_590B_(arg0)
		arg0.OutterDigi0:close()
		arg0.OutterThinInternal0:close()
		arg0.InnerContainer0:close()
		arg0.OutterDigiAnimateIn:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_590B_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

