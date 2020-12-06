-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MinimapHelperItems = registerVal1
function CoD.MinimapHelperItems.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MinimapHelperItems)
	registerVal2.id = "MinimapHelperItems"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 721.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 721.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setupCompassItems(Enum.CompassType.COMPASS_TYPE_FULL)
	registerVal2:addElement(registerVal3)
	registerVal2.items = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_6C8_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.items:setAlpha(0.950000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_6C8_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_7F4_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.items:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_7F4_
	registerVal4.CounterUAV = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "CounterUAV"
	local function __FUNC_8F1_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_COUNTER_UAV_ACTIVE)
		return registerVal3
	end

	registerVal7.condition = __FUNC_8F1_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_COUNTER_UAV_ACTIVE))
	local function __FUNC_9C7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_COUNTER_UAV_ACTIVE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_9C7_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

