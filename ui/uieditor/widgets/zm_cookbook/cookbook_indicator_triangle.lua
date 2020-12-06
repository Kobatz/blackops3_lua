-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Cookbook_Indicator_Triangle = registerVal1
function CoD.Cookbook_Indicator_Triangle.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Cookbook_Indicator_Triangle)
	registerVal2.id = "Cookbook_Indicator_Triangle"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 24.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 24.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 24.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal3:setImage(RegisterImage("uie_t7_zm_cookbook_indicator_triangle"))
	registerVal2:addElement(registerVal3)
	registerVal2.IndicatorTriangle = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_6C9_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.IndicatorTriangle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_6C9_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_7D1_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.IndicatorTriangle:setRGB(1.000000, 0.040000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_7D1_
	registerVal4.Red = registerVal5
	registerVal5 = {}
	local function __FUNC_8E4_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.IndicatorTriangle:setRGB(0.160000, 0.920000, 0.150000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_8E4_
	registerVal4.Green = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Red"
	local function __FUNC_9FD_(arg0, arg2, arg3)
		local registerVal3 = HasGobbleGumCookbookIngredients(arg1)
		return (not registerVal3)
	end

	registerVal7.condition = __FUNC_9FD_
	local registerVal8 = {}
	registerVal8.stateName = "Green"
	local function __FUNC_A65_(arg0, arg2, arg3)
		return HasGobbleGumCookbookIngredients(arg1)
	end

	registerVal8.condition = __FUNC_A65_
	registerVal6 = {registerVal7, registerVal8}
	registerVal2:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "GobbleGumRecipeInfo.haveAllIngredients")
	local function __FUNC_AC9_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "GobbleGumRecipeInfo.haveAllIngredients"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_AC9_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

