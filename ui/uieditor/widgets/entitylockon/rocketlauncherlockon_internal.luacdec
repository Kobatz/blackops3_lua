-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.rocketLauncherLockon_Internal = registerVal1
function CoD.rocketLauncherLockon_Internal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.rocketLauncherLockon_Internal)
	registerVal2.id = "rocketLauncherLockon_Internal"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 70.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 70.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -35.000000, 35.000000)
	registerVal3:setTopBottom(false, false, -35.000000, 35.000000)
	registerVal3:setRGB(0.640000, 1.000000, 0.810000)
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_rocket_launcher_lockon"))
	registerVal3:setShaderVector(0.000000, 3.000000, 4.000000, 0.070000, 0.850000)
	registerVal3:setShaderVector(1.000000, 3.000000, 4.350001, 0.400000, 1.000000)
	registerVal3:setShaderVector(2.000000, 1.500000, 0.090000, 180.000000, 0.000000)
	registerVal3:setShaderVector(4.000000, 70.000000, 70.000000, 0.000000, 0.000000)
	local function __FUNC_736_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal3:setShaderVector(3.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "lockOnPercent", true, __FUNC_736_)
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_887_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Image0:setRGB(0.640000, 1.000000, 0.810000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_887_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_98D_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Image0:setRGB(0.790000, 0.090000, 0.120000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_98D_
	registerVal4.LockedOn = registerVal5
	registerVal5 = {}
	local function __FUNC_A9A_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Image0:setRGB(0.640000, 1.000000, 0.810000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_A9A_
	registerVal4.AcquiringLock = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_BA1_(arg0)
		arg0.Image0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_BA1_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

