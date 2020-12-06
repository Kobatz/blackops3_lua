-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CodCasterMap = registerVal1
function CoD.CodCasterMap.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CodCasterMap)
	registerVal2.id = "CodCasterMap"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 219.000000, -219.000000)
	registerVal3:setTopBottom(true, true, -4.500000, 4.500000)
	registerVal3:setAlpha(0.210000)
	registerVal3:setupCompassMap(Enum.CompassType.COMPASS_TYPE_FULL)
	registerVal2:addElement(registerVal3)
	registerVal2.minimapMap = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 219.000000, -219.000000)
	registerVal4:setTopBottom(true, true, -4.500000, 4.500000)
	registerVal4:setAlpha(0.200000)
	registerVal4:setupCompassItems(Enum.CompassType.COMPASS_TYPE_FULL)
	registerVal2:addElement(registerVal4)
	registerVal2.minimapItems = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 219.000000, -219.000000)
	registerVal5:setTopBottom(true, true, -4.500000, 4.500000)
	registerVal5:setAlpha(0.190000)
	registerVal5:setupCompassOverlay(Enum.CompassType.COMPASS_TYPE_FULL)
	registerVal2:addElement(registerVal5)
	registerVal2.minimapOverlay = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_84C_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.minimapMap:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.minimapItems:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.minimapOverlay:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_84C_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_A04_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.minimapMap:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.minimapItems:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.minimapOverlay:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_A04_
	registerVal6.Visible = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Visible"
	local function __FUNC_BBC_(arg0, arg2, arg3)
		return IsModelValueTrue(arg1, "CodCaster.showFullScreenMap")
	end

	registerVal9.condition = __FUNC_BBC_
	registerVal8 = {registerVal9}
	registerVal2:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "CodCaster.showFullScreenMap")
	local function __FUNC_C3B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CodCaster.showFullScreenMap"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_C3B_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

