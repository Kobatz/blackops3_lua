-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_AbilityRingBack = registerVal1
function CoD.AmmoWidget_AbilityRingBack.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_AbilityRingBack)
	registerVal2.id = "AmmoWidget_AbilityRingBack"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 9.330000, -9.330000)
	registerVal3:setTopBottom(true, true, 9.330000, -9.330000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_ammowidget_ringdeplete"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_clock_normal"))
	registerVal3:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, -0.480000, 0.930000, 0.000000, 0.000000)
	local function __FUNC_8A8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal3:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "PlayerAbilities", "playerGadget3.powerRatio", __FUNC_8A8_)
	registerVal2:addElement(registerVal3)
	registerVal2.ImgRingDeplete = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 9.330000, -9.330000)
	registerVal4:setTopBottom(true, true, 9.330000, -9.330000)
	registerVal4:setAlpha(0.270000)
	registerVal4:setZRot(-32.000000)
	registerVal4:setZoom(-24.000000)
	registerVal4:setImage(RegisterImage("uie_t7_core_hud_ammowidget_ringdeplete"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_clock_normal"))
	registerVal4:setShaderVector(1.000000, 0.670000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, -0.660000, 1.580000, 0.000000, 0.000000)
	local function __FUNC_A00_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal4:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "PlayerAbilities", "playerGadget3.powerRatio", __FUNC_A00_)
	registerVal2:addElement(registerVal4)
	registerVal2.ImgRingDeplete0 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_B58_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.ImgRingDeplete0:setAlpha(0.270000)
		registerVal2.ImgRingDeplete0:setZRot(-32.000000)
		registerVal2.ImgRingDeplete0:setZoom(-24.000000)
		registerVal2.ImgRingDeplete0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_clock_normal"))
		registerVal2.ImgRingDeplete0:setShaderVector(1.000000, 0.670000, 0.000000, 0.000000, 0.000000)
		registerVal2.ImgRingDeplete0:setShaderVector(2.000000, 0.500000, 0.000000, 0.000000, 0.000000)
		registerVal2.ImgRingDeplete0:setShaderVector(3.000000, -0.660000, 1.580000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_B58_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_E27_(arg0)
		arg0.ImgRingDeplete:close()
		arg0.ImgRingDeplete0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_E27_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

