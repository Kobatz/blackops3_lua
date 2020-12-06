-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.Ground.VehicleGround_VignetteContainer")
require("ui.uieditor.widgets.VehicleHUDs.Ground.VehicleGround_Iris")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_sentinel_iris = registerVal1
function CoD.vhud_sentinel_iris.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_sentinel_iris)
	registerVal2.id = "vhud_sentinel_iris"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1685.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 950.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.300000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_agr_backgroundtint"))
	registerVal2:addElement(registerVal3)
	registerVal2.vignetteCenter = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, -579.810000, -255.050000)
	registerVal4:setTopBottom(false, false, -360.000000, 360.000000)
	registerVal4:setAlpha(0.150000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_reticlevignetteblackblur"))
	registerVal2:addElement(registerVal4)
	registerVal2.VignetteR1 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 252.490000, 577.250000)
	registerVal5:setTopBottom(false, false, -360.000000, 360.000000)
	registerVal5:setAlpha(0.150000)
	registerVal5:setZRot(180.000000)
	registerVal5:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_reticlevignetteblackblur"))
	registerVal2:addElement(registerVal5)
	registerVal2.VignetteL1 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, true, -556.810000, -152.050000)
	registerVal6:setTopBottom(false, false, -449.000000, 449.000000)
	registerVal6:setAlpha(0.500000)
	registerVal6:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_reticlevignetteblackblur"))
	registerVal2:addElement(registerVal6)
	registerVal2.VignetteR2 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 150.750000, 555.500000)
	registerVal7:setTopBottom(false, false, -449.000000, 449.000000)
	registerVal7:setAlpha(0.500000)
	registerVal7:setZRot(180.000000)
	registerVal7:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_reticlevignetteblackblur"))
	registerVal2:addElement(registerVal7)
	registerVal2.VignetteL2 = registerVal7
	local registerVal8 = CoD.VehicleGround_VignetteContainer.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, 202.500000, -202.500000)
	registerVal8:setTopBottom(true, true, 115.000000, -115.000000)
	registerVal8:setAlpha(0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.VignetteContainer = registerVal8
	local registerVal9 = CoD.VehicleGround_Iris.new(arg0, arg1)
	registerVal9:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal9:setTopBottom(false, false, -360.000000, 360.000000)
	registerVal9:setRGB(1.000000, 0.350000, 0.350000)
	registerVal9:setAlpha(0.000000)
	local function __FUNC_DE8_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal2, nil, false, __FUNC_DE8_)
	local function __FUNC_E3A_(arg0, arg2)
		local registerVal5 = {}
		registerVal5.elementName = "VehicleGroundIris"
		registerVal5.clipName = "StartUp"
		PlayClipOnElement(registerVal2, registerVal5, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("menu_loaded", __FUNC_E3A_)
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Zoom"
	local function __FUNC_F2F_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "zoomed")
	end

	registerVal13.condition = __FUNC_F2F_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	local function __FUNC_F9E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "zoomed"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:linkToElementModel(registerVal9, "zoomed", true, __FUNC_F9E_)
	registerVal2:addElement(registerVal9)
	registerVal2.VehicleGroundIris = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_10B8_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal8:completeAnimation()
		registerVal2.VignetteContainer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.VehicleGroundIris:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal11.DefaultClip = __FUNC_10B8_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_124F_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_1408_(arg0, arg1)
			local function __FUNC_1583_(arg0, arg1)
				local function __FUNC_16FB_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 590.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.700000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_16FB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 919.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.630000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16FB_)
			end

			if arg1.interrupted then
				__FUNC_1583_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 490.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1583_)
		end

		registerVal8:completeAnimation()
		registerVal2.VignetteContainer:setAlpha(0.700000)
		__FUNC_1408_(registerVal8, {})
		local function __FUNC_18AD_(arg0, arg1)
			local function __FUNC_1A27_(arg0, arg1)
				local function __FUNC_1B9F_(arg0, arg1)
					local function __FUNC_1D17_(arg0, arg1)
						local function __FUNC_1E8F_(arg0, arg1)
							local function __FUNC_2007_(arg0, arg1)
								local function __FUNC_217F_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 460.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.350000, 0.350000)
									arg0:setAlpha(0.800000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_217F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.580000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_217F_)
							end

							if arg1.interrupted then
								__FUNC_2007_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.520000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2007_)
						end

						if arg1.interrupted then
							__FUNC_1E8F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.670000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E8F_)
					end

					if arg1.interrupted then
						__FUNC_1D17_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 420.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.920000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D17_)
				end

				if arg1.interrupted then
					__FUNC_1B9F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.860000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B9F_)
			end

			if arg1.interrupted then
				__FUNC_1A27_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 620.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.590000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A27_)
		end

		registerVal9:completeAnimation()
		registerVal2.VehicleGroundIris:setRGB(1.000000, 0.350000, 0.350000)
		registerVal2.VehicleGroundIris:setAlpha(0.800000)
		__FUNC_18AD_(registerVal9, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal11.DefaultClip = __FUNC_124F_
	registerVal10.LeavingOperationZone_CP = registerVal11
	registerVal11 = {}
	local function __FUNC_235F_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal8:completeAnimation()
		registerVal2.VignetteContainer:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.VehicleGroundIris:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_235F_
	registerVal10.Campaign = registerVal11
	registerVal2.clipsPerState = registerVal10
	registerVal12 = {}
	registerVal13 = {}
	registerVal13.stateName = "LeavingOperationZone_CP"
	local function __FUNC_24C9_(arg0, arg2, arg3)
		local registerVal3 = IsCampaign()
		if registerVal3 then
			registerVal3 = IsSelfModelValueTrue(arg2, arg1, "outOfRange")
		end
		return registerVal3
	end

	registerVal13.condition = __FUNC_24C9_
	local registerVal14 = {}
	registerVal14.stateName = "Campaign"
	local function __FUNC_2562_(arg0, arg1, arg2)
		return IsCampaign()
	end

	registerVal14.condition = __FUNC_2562_
	registerVal12 = {registerVal13, registerVal14}
	registerVal2:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetGlobalModel()
	registerVal12 = Engine.GetModel(registerVal13, "lobbyRoot.lobbyNav")
	local function __FUNC_25AC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal12, __FUNC_25AC_)
	local function __FUNC_26D4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "outOfRange"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "outOfRange", true, __FUNC_26D4_)
	local function __FUNC_27F4_(arg0)
		arg0.VignetteContainer:close()
		arg0.VehicleGroundIris:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_27F4_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

