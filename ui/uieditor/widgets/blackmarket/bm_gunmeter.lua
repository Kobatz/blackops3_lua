-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1BC_(arg0, arg1, arg2)
	local function __FUNC_259_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			arg0.FillAnimation:setShaderVector(2.000000, 0.000000, registerVal1, 0.000000, 0.000000)
		end
	end

	arg0:subscribeToGlobalModel(arg1, "CryptoKeyProgress", "gunMeterProgress", __FUNC_259_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.BM_GunMeter = registerVal2
local function __FUNC_331_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_GunMeter)
	registerVal2.id = "BM_GunMeter"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 350.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 101.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 41.000000, 282.000000)
	registerVal3:setTopBottom(false, false, -208.000000, 208.000000)
	registerVal3:setZRot(90.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_mainbar"))
	registerVal2:addElement(registerVal3)
	registerVal2.Meter = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 104.000000, 208.000000)
	registerVal4:setTopBottom(false, false, -200.250000, 200.250000)
	registerVal4:setZRot(90.000000)
	registerVal4:setScale(0.800000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_fillbar"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
	registerVal4:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.FillAnimation = registerVal4
	if __FUNC_1BC_ then
		__FUNC_1BC_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.BM_GunMeter.new = __FUNC_331_
