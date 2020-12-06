-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.WaveformBlackHat = registerVal1
function CoD.WaveformBlackHat.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.WaveformBlackHat)
	registerVal2.id = "WaveformBlackHat"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 206.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 173.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 206.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 173.000000)
	registerVal3:setRGB(0.000000, 0.930000, 1.000000)
	registerVal3:setImage(RegisterImage("uie_gradient_noise"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_blackhat_waveform"))
	local function __FUNC_806_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal3:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "Blackhat", "offsetShaderValue", __FUNC_806_)
	registerVal2:addElement(registerVal3)
	registerVal2.ShaderImage = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_95C_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_A83_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.000000, 0.910000, 1.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.ShaderImage:setRGB(0.000000, 0.620000, 1.000000)
		registerVal2.ShaderImage:setAlpha(0.300000)
		__FUNC_A83_(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_95C_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_C63_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ShaderImage:setRGB(1.000000, 0.520000, 0.000000)
		registerVal2.ShaderImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_C63_
	registerVal4.Hacking = registerVal5
	registerVal5 = {}
	local function __FUNC_D9C_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ShaderImage:setRGB(1.000000, 0.000000, 0.020000)
		registerVal2.ShaderImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_D9C_
	registerVal4.Breaching = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Hacking"
	local function __FUNC_ED8_(arg0, arg2, arg3)
		return IsBlackhatHacking(arg1)
	end

	registerVal7.condition = __FUNC_ED8_
	local registerVal8 = {}
	registerVal8.stateName = "Breaching"
	local function __FUNC_F2F_(arg0, arg2, arg3)
		return IsBlackhatBreaching(arg1)
	end

	registerVal8.condition = __FUNC_F2F_
	registerVal6 = {registerVal7, registerVal8}
	registerVal2:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "hudItems.blackhat.status")
	local function __FUNC_F85_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hudItems.blackhat.status"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_F85_)
	local function __FUNC_10B2_(arg0)
		arg0.ShaderImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_10B2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

