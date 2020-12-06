-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_sentinel_CenterReticle = registerVal1
function CoD.vhud_sentinel_CenterReticle.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_sentinel_CenterReticle)
	registerVal2.id = "vhud_sentinel_CenterReticle"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 40.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 24.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -20.000000, 20.000000)
	registerVal3:setTopBottom(false, false, -12.000000, 12.000000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_centerreticlecircle"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.CenterReticle = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -20.000000, 20.000000)
	registerVal4:setTopBottom(false, false, -12.000000, 12.000000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_centerreticlecircle"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.CenterReticle0 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_895_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_895_
	local function __FUNC_8F6_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_AD8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
		registerVal3:setAlpha(0.000000)
		registerVal3:registerEventHandler("transition_complete_keyframe", __FUNC_AD8_)
		local function __FUNC_C8D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
		registerVal4:setAlpha(0.000000)
		registerVal4:registerEventHandler("transition_complete_keyframe", __FUNC_C8D_)
	end

	registerVal6.StartUp = __FUNC_8F6_
	local function __FUNC_E41_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_F82_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setZoom(-400.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.CenterReticle:setZoom(0.000000)
		__FUNC_F82_(registerVal3, {})
		local function __FUNC_1134_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setZoom(-400.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.CenterReticle0:setZoom(0.000000)
		__FUNC_1134_(registerVal4, {})
	end

	registerVal6.Zoom = __FUNC_E41_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_12E8_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.CenterReticle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.CenterReticle0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_12E8_
	registerVal5.RAPS = registerVal6
	registerVal6 = {}
	local function __FUNC_1449_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.CenterReticle:setLeftRight(false, false, -19.500000, 20.500000)
		registerVal2.CenterReticle:setTopBottom(false, false, -12.000000, 12.000000)
		registerVal2.CenterReticle:setZoom(-400.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.CenterReticle0:setLeftRight(false, false, -19.500000, 20.500000)
		registerVal2.CenterReticle0:setTopBottom(false, false, -12.000000, 12.000000)
		registerVal2.CenterReticle0:setAlpha(1.000000)
		registerVal2.CenterReticle0:setZoom(-400.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_1449_
	local function __FUNC_16BB_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_190D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -19.500000, 20.500000)
			arg0:setTopBottom(false, false, -12.000000, 12.000000)
			arg0:setZoom(-400.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.CenterReticle:setLeftRight(false, false, -19.500000, 20.500000)
		registerVal2.CenterReticle:setTopBottom(false, false, -12.000000, 12.000000)
		registerVal2.CenterReticle:setZoom(-400.000000)
		__FUNC_190D_(registerVal3, {})
		local function __FUNC_1B30_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -19.500000, 20.500000)
			arg0:setTopBottom(false, false, -12.000000, 12.000000)
			arg0:setZoom(-400.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.CenterReticle0:setLeftRight(false, false, -19.500000, 20.500000)
		registerVal2.CenterReticle0:setTopBottom(false, false, -12.000000, 12.000000)
		registerVal2.CenterReticle0:setZoom(-400.000000)
		registerVal2.CenterReticle0:setScale(1.000000)
		__FUNC_1B30_(registerVal4, {})
	end

	registerVal6.DefaultState = __FUNC_16BB_
	registerVal5.Zoom = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "RAPS"
	local function __FUNC_1D77_(arg0, arg2, arg3)
		local registerVal3 = IsCampaign()
		if registerVal3 then
			registerVal3 = IsVehicleOfType(arg1, "raps")
		end
		return registerVal3
	end

	registerVal8.condition = __FUNC_1D77_
	local registerVal9 = {}
	registerVal9.stateName = "Zoom"
	local function __FUNC_1DFF_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "zoomed")
	end

	registerVal9.condition = __FUNC_1DFF_
	registerVal7 = {registerVal8, registerVal9}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "vehicle.vehicleType")
	local function __FUNC_1E6E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "vehicle.vehicleType"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_1E6E_)
	local function __FUNC_1F95_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "zoomed"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "zoomed", true, __FUNC_1F95_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

