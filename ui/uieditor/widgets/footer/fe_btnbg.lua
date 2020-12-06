-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.fe_BTNBG = registerVal1
function CoD.fe_BTNBG.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.fe_BTNBG)
	registerVal2.id = "fe_BTNBG"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 114.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 65.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 26.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_fe_footer_btn_frame_leftshader_bg"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_1"))
	registerVal3:setShaderVector(0.000000, 0.000000, 20.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.left = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, -26.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_fe_footer_btn_frame_shaderrightbg"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_1"))
	registerVal4:setShaderVector(0.000000, 0.000000, 20.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Right = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 26.000000, -26.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_fe_footer_btn_frame_linesshadertopandbotbg"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_1"))
	registerVal5:setShaderVector(0.000000, 3.000000, 20.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.line = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_93B_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.left:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Right:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.line:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_93B_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_AD9_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.left:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.left:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Right:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.Right:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.line:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.line:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_AD9_
	local function __FUNC_CFA_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_EF8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.left:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.left:setAlpha(1.000000)
		__FUNC_EF8_(registerVal3, {})
		local function __FUNC_10D1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.Right:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.Right:setAlpha(1.000000)
		__FUNC_10D1_(registerVal4, {})
		local function __FUNC_12A9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.line:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.line:setAlpha(1.000000)
		__FUNC_12A9_(registerVal5, {})
	end

	registerVal7.DefaultState = __FUNC_CFA_
	registerVal6.Transparent = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Transparent"
	local function __FUNC_1481_(arg0, arg2, arg3)
		return IsGlobalModelValueEqualTo(arg2, arg1, "hideWorldForStreamer", 1.000000)
	end

	registerVal9.condition = __FUNC_1481_
	registerVal8 = {registerVal9}
	registerVal2:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "hideWorldForStreamer")
	local function __FUNC_150E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hideWorldForStreamer"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_150E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

