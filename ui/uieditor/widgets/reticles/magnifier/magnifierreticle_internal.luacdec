-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MagnifierReticle_Internal = registerVal1
function CoD.MagnifierReticle_Internal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MagnifierReticle_Internal)
	registerVal2.id = "MagnifierReticle_Internal"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 400.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 9.850000, 385.210000)
	registerVal3:setTopBottom(true, false, 8.140000, 390.860000)
	registerVal3:setRGB(0.390000, 1.000000, 1.000000)
	registerVal3:setScale(1.100000)
	registerVal3:setImage(RegisterImage("uie_t7_magnifier_ring"))
	registerVal2:addElement(registerVal3)
	registerVal2.OutterRing = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 71.500000, 328.500000)
	registerVal4:setTopBottom(true, false, 71.000000, 328.000000)
	registerVal4:setRGB(0.390000, 1.000000, 1.000000)
	registerVal4:setImage(RegisterImage("uie_t7_magnifier_1x_ring"))
	registerVal2:addElement(registerVal4)
	registerVal2.OneXring = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 183.610000, 219.610000)
	registerVal5:setTopBottom(true, false, 302.000000, 338.000000)
	registerVal5:setRGB(0.390000, 1.000000, 1.000000)
	registerVal5:setImage(RegisterImage("uie_t7_magnifier_1x"))
	registerVal2:addElement(registerVal5)
	registerVal2.OneX = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 173.000000, 228.000000)
	registerVal6:setTopBottom(true, false, 172.000000, 227.000000)
	registerVal6:setRGB(0.390000, 1.000000, 1.000000)
	registerVal6:setImage(RegisterImage("uie_t7_magnifier_outterreticle_big"))
	registerVal2:addElement(registerVal6)
	registerVal2.OutterReticle = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 181.000000, 223.100000)
	registerVal7:setTopBottom(true, false, 241.670000, 382.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_magnifier_zoomout_bar"))
	registerVal2:addElement(registerVal7)
	registerVal2.ZoomBAr = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 183.640000, 219.610000)
	registerVal8:setTopBottom(true, false, 336.980000, 372.950000)
	registerVal8:setRGB(0.390000, 1.000000, 1.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_magnifier_3x"))
	registerVal2:addElement(registerVal8)
	registerVal2.ThreeX = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 180.150000, 223.100000)
	registerVal9:setTopBottom(true, false, 241.670000, 349.040000)
	registerVal9:setRGB(0.390000, 0.870000, 0.870000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setImage(RegisterImage("uie_t7_magnifier_zoomin_bars"))
	registerVal2:addElement(registerVal9)
	registerVal2.ZoomInBar = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_BD2_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.OutterRing:setAlpha(1.000000)
		registerVal2.OutterRing:setScale(1.100000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.OneXring:setAlpha(0.750000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.ZoomBAr:setRGB(0.390000, 1.000000, 1.000000)
		registerVal2.ZoomBAr:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.ThreeX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.ZoomInBar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_BD2_
	local function __FUNC_E9E_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.OutterRing:setScale(1.100000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_13A6_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 33.000000, 367.000000)
			arg0:setTopBottom(true, false, 32.500000, 366.500000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.OneXring:setLeftRight(true, false, 72.500000, 329.500000)
		registerVal2.OneXring:setTopBottom(true, false, 71.000000, 328.000000)
		registerVal2.OneXring:setAlpha(0.750000)
		__FUNC_13A6_(registerVal4, {})
		local function __FUNC_15C9_(arg0, arg1)
			local function __FUNC_177B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 183.630000, 219.630000)
				arg0:setTopBottom(true, false, 336.980000, 372.980000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_177B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 319.700000, 355.700000)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_177B_)
		end

		registerVal5:completeAnimation()
		registerVal2.OneX:setLeftRight(true, false, 183.630000, 219.630000)
		registerVal2.OneX:setTopBottom(true, false, 300.980000, 336.980000)
		registerVal2.OneX:setAlpha(1.000000)
		__FUNC_15C9_(registerVal5, {})
		local function __FUNC_199D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 160.330000, 241.000000)
			arg0:setTopBottom(true, false, 160.000000, 240.670000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.OutterReticle:setLeftRight(true, false, 173.000000, 228.000000)
		registerVal2.OutterReticle:setTopBottom(true, false, 172.000000, 227.000000)
		__FUNC_199D_(registerVal6, {})
		local function __FUNC_1B9E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.390000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.ZoomBAr:setRGB(0.390000, 1.000000, 1.000000)
		registerVal2.ZoomBAr:setAlpha(0.000000)
		__FUNC_1B9E_(registerVal7, {})
		local function __FUNC_1D7F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 183.640000, 219.610000)
			arg0:setTopBottom(true, false, 336.980000, 372.950000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.ThreeX:setLeftRight(true, false, 183.640000, 219.610000)
		registerVal2.ThreeX:setTopBottom(true, false, 300.980000, 336.950000)
		registerVal2.ThreeX:setAlpha(0.000000)
		__FUNC_1D7F_(registerVal8, {})
		local function __FUNC_1FA1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.ZoomInBar:setAlpha(0.000000)
		__FUNC_1FA1_(registerVal9, {})
		registerVal2.nextClip = "Zoom"
	end

	registerVal11.Zoom = __FUNC_E9E_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_2155_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.OutterRing:setRGB(0.390000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.OneXring:setLeftRight(true, false, 33.000000, 367.000000)
		registerVal2.OneXring:setTopBottom(true, false, 32.500000, 366.500000)
		registerVal2.OneXring:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.OneX:setLeftRight(true, false, 183.630000, 219.630000)
		registerVal2.OneX:setTopBottom(true, false, 336.980000, 372.980000)
		registerVal2.OneX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.OutterReticle:setLeftRight(true, false, 160.330000, 241.000000)
		registerVal2.OutterReticle:setTopBottom(true, false, 160.000000, 240.670000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ZoomBAr:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.ThreeX:setLeftRight(true, false, 183.640000, 219.610000)
		registerVal2.ThreeX:setTopBottom(true, false, 336.980000, 372.950000)
		registerVal2.ThreeX:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.ZoomInBar:setRGB(0.390000, 1.000000, 1.000000)
		registerVal2.ZoomInBar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_2155_
	local function __FUNC_263A_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.OutterRing:setAlpha(1.000000)
		registerVal2.OutterRing:setScale(1.100000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_2B99_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 71.000000, 328.000000)
			arg0:setTopBottom(true, false, 71.000000, 328.000000)
			arg0:setAlpha(0.750000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.OneXring:setLeftRight(true, false, 33.000000, 367.000000)
		registerVal2.OneXring:setTopBottom(true, false, 32.500000, 366.500000)
		registerVal2.OneXring:setAlpha(1.000000)
		__FUNC_2B99_(registerVal4, {})
		local function __FUNC_2DB3_(arg0, arg1)
			local function __FUNC_2F40_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 183.630000, 219.630000)
				arg0:setTopBottom(true, false, 300.980000, 336.980000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2F40_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 319.700000, 355.700000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F40_)
		end

		registerVal5:completeAnimation()
		registerVal2.OneX:setLeftRight(true, false, 183.630000, 219.630000)
		registerVal2.OneX:setTopBottom(true, false, 336.980000, 372.980000)
		registerVal2.OneX:setAlpha(0.000000)
		__FUNC_2DB3_(registerVal5, {})
		local function __FUNC_3165_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 173.000000, 228.000000)
			arg0:setTopBottom(true, false, 172.000000, 227.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.OutterReticle:setLeftRight(true, false, 160.330000, 241.000000)
		registerVal2.OutterReticle:setTopBottom(true, false, 160.000000, 240.670000)
		__FUNC_3165_(registerVal6, {})
		local function __FUNC_3366_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 181.000000, 223.100000)
			arg0:setTopBottom(true, false, 241.670000, 382.000000)
			arg0:setRGB(0.390000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.ZoomBAr:setLeftRight(true, false, 181.000000, 223.100000)
		registerVal2.ZoomBAr:setTopBottom(true, false, 241.670000, 382.000000)
		registerVal2.ZoomBAr:setRGB(0.390000, 1.000000, 1.000000)
		registerVal2.ZoomBAr:setAlpha(0.000000)
		__FUNC_3366_(registerVal7, {})
		local function __FUNC_35B7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 183.640000, 219.610000)
			arg0:setTopBottom(true, false, 300.980000, 336.950000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.ThreeX:setLeftRight(true, false, 183.640000, 219.610000)
		registerVal2.ThreeX:setTopBottom(true, false, 336.980000, 372.950000)
		registerVal2.ThreeX:setAlpha(1.000000)
		__FUNC_35B7_(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.ZoomInBar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultState = __FUNC_263A_
	registerVal10.Zoom = registerVal11
	registerVal2.clipsPerState = registerVal10
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Zoom"
	local function __FUNC_37D9_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "sightIsMagnified")
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_37D9_
	registerVal12 = {registerVal13}
	registerVal2:mergeStateConditions(registerVal12)
	local function __FUNC_3858_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "sightIsMagnified"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "sightIsMagnified", true, __FUNC_3858_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

