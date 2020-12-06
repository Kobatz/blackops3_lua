-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ShockCharge = registerVal1
function CoD.ShockCharge.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ShockCharge)
	registerVal2.id = "ShockCharge"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal3:setTopBottom(false, false, 0.000000, 360.000000)
	registerVal3:setAlpha(0.000000)
	local function __FUNC_867_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "HUDItems", "shockImageBottom", __FUNC_867_)
	registerVal2:addElement(registerVal3)
	registerVal2.shockImageBottom = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, 0.000000, 640.000000)
	registerVal4:setTopBottom(false, false, -360.000000, 360.000000)
	registerVal4:setAlpha(0.000000)
	local function __FUNC_918_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "HUDItems", "shockImageRight", __FUNC_918_)
	registerVal2:addElement(registerVal4)
	registerVal2.shockImageRight = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -640.000000, 0.000000)
	registerVal5:setTopBottom(false, false, -360.000000, 360.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setYRot(180.000000)
	local function __FUNC_9CC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "HUDItems", "shockImageLeft", __FUNC_9CC_)
	registerVal2:addElement(registerVal5)
	registerVal2.shockImageLeft = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal6:setTopBottom(false, false, -360.000000, 0.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setYRot(180.000000)
	registerVal6:setZRot(180.000000)
	local function __FUNC_A80_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "HUDItems", "shockImageTop", __FUNC_A80_)
	registerVal2:addElement(registerVal6)
	registerVal2.shockImageTop = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_B34_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.shockImageBottom:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.shockImageRight:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.shockImageLeft:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.shockImageTop:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_B34_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_D50_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_E6A_(arg0, arg1)
			local function __FUNC_FE3_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_FE3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.910000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FE3_)
		end

		registerVal6:completeAnimation()
		registerVal2.shockImageTop:setAlpha(0.000000)
		__FUNC_E6A_(registerVal6, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal8.DefaultClip = __FUNC_D50_
	registerVal7.ShockTop = registerVal8
	registerVal8 = {}
	local function __FUNC_1195_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_12AF_(arg0, arg1)
			local function __FUNC_1427_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1427_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.910000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1427_)
		end

		registerVal5:completeAnimation()
		registerVal2.shockImageLeft:setAlpha(0.000000)
		__FUNC_12AF_(registerVal5, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal8.DefaultClip = __FUNC_1195_
	registerVal7.ShockLeft = registerVal8
	registerVal8 = {}
	local function __FUNC_15D9_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_16F4_(arg0, arg1)
			local function __FUNC_186F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_186F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.910000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_186F_)
		end

		registerVal4:completeAnimation()
		registerVal2.shockImageRight:setAlpha(0.000000)
		__FUNC_16F4_(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal8.DefaultClip = __FUNC_15D9_
	registerVal7.ShockRight = registerVal8
	registerVal8 = {}
	local function __FUNC_1A21_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_1B3D_(arg0, arg1)
			local function __FUNC_1CB7_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1CB7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.910000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CB7_)
		end

		registerVal3:completeAnimation()
		registerVal2.shockImageBottom:setAlpha(0.000000)
		__FUNC_1B3D_(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal8.DefaultClip = __FUNC_1A21_
	registerVal7.ShockBottom = registerVal8
	registerVal2.clipsPerState = registerVal7
	local function __FUNC_1E69_(arg0)
		arg0.shockImageBottom:close()
		arg0.shockImageRight:close()
		arg0.shockImageLeft:close()
		arg0.shockImageTop:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1E69_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

