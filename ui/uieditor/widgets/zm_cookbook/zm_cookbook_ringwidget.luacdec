-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ZM_Cookbook_RingWidget = registerVal1
function CoD.ZM_Cookbook_RingWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ZM_Cookbook_RingWidget)
	registerVal2.id = "ZM_Cookbook_RingWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 209.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 209.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 1.000000, 210.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 209.000000)
	registerVal3:setRGB(0.300000, 0.200000, 0.140000)
	registerVal3:setAlpha(0.800000)
	registerVal3:setZRot(-112.000000)
	registerVal3:setImage(RegisterImage("uie_t7_zm_cookbook_fill_radial"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_clock_normal"))
	registerVal3:setShaderVector(0.000000, 0.700000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.ring = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_894_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ring:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_894_
	local function __FUNC_990_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.Focus = __FUNC_990_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_9F2_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ring:setRGB(1.000000, 0.750000, 0.160000)
		registerVal2.ring:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_9F2_
	registerVal4.Yellow = registerVal5
	registerVal5 = {}
	local function __FUNC_B25_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ring:setRGB(0.190000, 0.600000, 0.200000)
		registerVal2.ring:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_B25_
	registerVal4.Green = registerVal5
	registerVal5 = {}
	local function __FUNC_C5E_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ring:setRGB(0.200000, 0.530000, 0.710000)
		registerVal2.ring:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_C5E_
	registerVal4.Blue = registerVal5
	registerVal5 = {}
	local function __FUNC_D96_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ring:setRGB(0.420000, 0.190000, 0.600000)
		registerVal2.ring:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_D96_
	registerVal4.Purple = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Yellow"
	local function __FUNC_ECE_(arg0, arg2, arg3)
		local registerVal3 = IsBubbleGumType(arg2, arg1, "event")
		if registerVal3 then
			registerVal3 = IsCACItemConsumable(arg0, arg2, arg1)
		end
		return registerVal3
	end

	registerVal7.condition = __FUNC_ECE_
	local registerVal8 = {}
	registerVal8.stateName = "Green"
	local function __FUNC_F71_(arg0, arg2, arg3)
		local registerVal3 = IsBubbleGumType(arg2, arg1, "time")
		if registerVal3 then
			registerVal3 = IsCACItemConsumable(arg0, arg2, arg1)
		end
		return registerVal3
	end

	registerVal8.condition = __FUNC_F71_
	local registerVal9 = {}
	registerVal9.stateName = "Blue"
	local function __FUNC_1014_(arg0, arg2, arg3)
		local registerVal3 = IsBubbleGumType(arg2, arg1, "round")
		if registerVal3 then
			registerVal3 = IsCACItemConsumable(arg0, arg2, arg1)
		end
		return registerVal3
	end

	registerVal9.condition = __FUNC_1014_
	local registerVal10 = {}
	registerVal10.stateName = "Purple"
	local function __FUNC_10B9_(arg0, arg2, arg3)
		local registerVal3 = IsBubbleGumType(arg2, arg1, "activated")
		if registerVal3 then
			registerVal3 = IsCACItemConsumable(arg0, arg2, arg1)
		end
		return registerVal3
	end

	registerVal10.condition = __FUNC_10B9_
	registerVal6 = {registerVal7, registerVal8, registerVal9, registerVal10}
	registerVal2:mergeStateConditions(registerVal6)
	local function __FUNC_1161_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_1161_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

