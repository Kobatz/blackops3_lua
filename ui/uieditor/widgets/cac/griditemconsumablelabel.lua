-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GridItemConsumableLabel = registerVal1
function CoD.GridItemConsumableLabel.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GridItemConsumableLabel)
	registerVal2.id = "GridItemConsumableLabel"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 32.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -32.000000, 32.000000)
	registerVal3:setTopBottom(false, false, -32.000000, 32.000000)
	registerVal3:setScale(0.500000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_gobblegum_comsumable"))
	registerVal2:addElement(registerVal3)
	registerVal2.ComsumableBacking = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -32.000000, 32.000000)
	registerVal4:setTopBottom(false, false, -32.000000, 32.000000)
	registerVal4:setScale(0.500000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_gobblegum_noncomsumable"))
	registerVal2:addElement(registerVal4)
	registerVal2.NoComsumable = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(false, false, -10.500000, 10.500000)
	registerVal5:setTopBottom(false, false, -10.000000, 8.000000)
	registerVal5:setRGB(0.820000, 0.850000, 0.880000)
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_9B1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "remaining", true, __FUNC_9B1_)
	registerVal2:addElement(registerVal5)
	registerVal2.ComsumableCountLabel = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_A6A_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.ComsumableBacking:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.NoComsumable:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ComsumableCountLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_A6A_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_C32_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.ComsumableBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.NoComsumable:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ComsumableCountLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_C32_
	registerVal6.Invisible = registerVal7
	registerVal7 = {}
	local function __FUNC_DF5_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.ComsumableBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.NoComsumable:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ComsumableCountLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_DF5_
	registerVal6.Nocomsumable = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Invisible"
	local function __FUNC_FBE_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemConsumable(arg0, arg2, arg1)
		return (not registerVal3)
	end

	registerVal9.condition = __FUNC_FBE_
	local registerVal10 = {}
	registerVal10.stateName = "Nocomsumable"
	local function __FUNC_1021_(arg0, arg2, arg3)
		local registerVal3 = DoesCACItemHaveConsumablesRemaining(arg0, arg2, arg1)
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_1021_
	registerVal8 = {registerVal9, registerVal10}
	registerVal2:mergeStateConditions(registerVal8)
	local function __FUNC_1095_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_1095_)
	local function __FUNC_11B3_(arg0)
		arg0.ComsumableCountLabel:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_11B3_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

