-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Cookbook_Distills_Required = registerVal1
function CoD.Cookbook_Distills_Required.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Cookbook_Distills_Required)
	registerVal2.id = "Cookbook_Distills_Required"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 79.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 31.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 31.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 31.000000)
	registerVal3:setImage(RegisterImage("uie_t7_zm_cookbook_distill_icon"))
	registerVal2:addElement(registerVal3)
	registerVal2.DistillIcon = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 27.000000, 79.000000)
	registerVal4:setTopBottom(true, false, 3.000000, 28.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	local function __FUNC_908_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "GobbleGumRecipeInfo", "recipeDistillCost", __FUNC_908_)
	registerVal2:addElement(registerVal4)
	registerVal2.DistillAmount = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_9C2_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.DistillAmount:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_9C2_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_ACB_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.DistillAmount:setRGB(0.900000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_ACB_
	registerVal5.NotEnoughDistills = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "NotEnoughDistills"
	local function __FUNC_BD8_(arg0, arg2, arg3)
		CoD.BubbleGumBuffUtility.GetRecipeDistillCost()
		return IsModelValueLessThan(arg1, "GobbleGumDistills.totalDistills", CoD.BubbleGumBuffUtility.GetRecipeDistillCost)
	end

	registerVal8.condition = __FUNC_BD8_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "GobbleGumDistills.totalDistills")
	local function __FUNC_CC8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "GobbleGumDistills.totalDistills"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_CC8_)
	local function __FUNC_DFD_(arg0)
		arg0.DistillAmount:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_DFD_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

