-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1C4_(arg0, arg1, arg2)
	local registerVal3 = CoD.BubbleGumBuffUtility.GetGobbleGumRecipeInfoModel(arg1)
	if registerVal3 then
		local registerVal6 = Engine.CreateModel(registerVal3, "update")
		local function __FUNC_2EB_(arg1)
			local registerVal1 = arg0:getModel()
			if registerVal1 then
				local registerVal2 = arg0:getModel()
				registerVal1 = Engine.GetModel(registerVal2, "itemIndex")
			end
			if registerVal1 then
				Engine.ForceNotifyModelSubscriptions(registerVal1)
			end
		end

		arg0:subscribeToModel(registerVal6, __FUNC_2EB_, false)
	end
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.GobbleGumRecipeIcon = registerVal2
local function __FUNC_3DA_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GobbleGumRecipeIcon)
	registerVal2.id = "GobbleGumRecipeIcon"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 108.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 108.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -11.260000, 119.700000)
	registerVal3:setTopBottom(true, false, 0.980000, 168.860000)
	registerVal3:setImage(RegisterImage("uie_t7_zm_cookbook_gg_shadow"))
	registerVal2:addElement(registerVal3)
	registerVal2.shadow = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setupUIStreamedImage(0.000000)
	local function __FUNC_959_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "image", true, __FUNC_959_)
	registerVal2:addElement(registerVal4)
	registerVal2.itemImage = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_A0C_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.itemImage:setScale(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_A0C_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_B36_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.itemImage:setScale(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_B36_
	registerVal5.NoConsumablesRemaining = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "NoConsumablesRemaining"
	local function __FUNC_C5E_(arg0, arg2, arg3)
		local registerVal3 = DoesCACItemHaveConsumablesRemaining(arg0, arg2, arg1)
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_C5E_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_CD1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_CD1_)
	local function __FUNC_DEF_(arg0)
		arg0.itemImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_DEF_)
	if __FUNC_1C4_ then
		__FUNC_1C4_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.GobbleGumRecipeIcon.new = __FUNC_3DA_
