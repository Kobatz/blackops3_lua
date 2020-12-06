-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.ZM_Cookbook.Cookbook_Recipe_Fill")
require("ui.uieditor.widgets.ZM_Cookbook.GobbleGumRecipeIcon")
require("ui.uieditor.widgets.ZM_Cookbook.Cookbook_Indicator_Circle")
require("ui.uieditor.widgets.BubbleGumBuffs.GobbleGumCookbookConsumableCountNumbers")
local function __FUNC_31B_(arg0, arg1, arg2)
	local function __FUNC_47B_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		local registerVal2 = Engine.GetUnlockableInfoModelByIndex(registerVal1, ("Unlockables." .. registerVal1), Enum.eModes.MODE_ZOMBIES)
		if registerVal2 then
			arg0.GobbleGumRecipeIcon:setModel(registerVal2)
		end
	end

	arg0:linkToElementModel(arg0, "itemIndex", true, __FUNC_47B_)
	local registerVal6 = CoD.BubbleGumBuffUtility.GetGobbleGumRecipeInfoModel(arg1)
	local registerVal5 = Engine.GetModel(registerVal6, "update")
	local function __FUNC_5E7_(arg1)
		local registerVal3 = arg0:getModel()
		Engine.ForceNotifyModelSubscriptions(Engine.GetModel(registerVal3, "itemIndex"))
	end

	arg0:subscribeToModel(registerVal5, __FUNC_5E7_, false)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.GobbleGumRecipeListItem = registerVal2
local function __FUNC_6B6_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GobbleGumRecipeListItem)
	registerVal2.id = "GobbleGumRecipeListItem"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 108.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 160.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Cookbook_Recipe_Fill.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 116.500000, 206.500000)
	registerVal3:setTopBottom(true, false, 36.000000, 77.000000)
	local function __FUNC_1014_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_1014_)
	registerVal2:addElement(registerVal3)
	registerVal2.CookbookRecipeFill = registerVal3
	local registerVal4 = CoD.GobbleGumRecipeIcon.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 108.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 108.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.GobbleGumRecipeIcon = registerVal4
	local registerVal5 = CoD.Cookbook_Indicator_Circle.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 259.500000, 267.500000)
	registerVal5:setTopBottom(true, false, 51.500000, 59.500000)
	local function __FUNC_1066_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_1066_)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Red"
	local function __FUNC_10B6_(arg0, arg2, arg3)
		return IsSelfModelValueLessThan(arg2, arg1, "percentComplete", 1.000000)
	end

	registerVal9.condition = __FUNC_10B6_
	local registerVal10 = {}
	registerVal10.stateName = "Green"
	local function __FUNC_113C_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "percentComplete", 1.000000)
	end

	registerVal10.condition = __FUNC_113C_
	registerVal8 = {registerVal9, registerVal10}
	registerVal5:mergeStateConditions(registerVal8)
	local function __FUNC_11C3_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "percentComplete"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "percentComplete", true, __FUNC_11C3_)
	registerVal2:addElement(registerVal5)
	registerVal2.CookbookIndicatorCircleTop = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 215.500000, 262.500000)
	registerVal6:setTopBottom(true, false, 43.000000, 67.000000)
	registerVal6:setRGB(0.300000, 0.200000, 0.140000)
	registerVal6:setTTF("fonts/default.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	local function __FUNC_12E5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "count", true, __FUNC_12E5_)
	registerVal2:addElement(registerVal6)
	registerVal2.Requirements = registerVal6
	local registerVal7 = CoD.GobbleGumCookbookConsumableCountNumbers.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 121.000000, 202.000000)
	registerVal7:setTopBottom(true, false, 39.000000, 72.000000)
	local function __FUNC_139E_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, nil, false, __FUNC_139E_)
	registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Triple"
	local function __FUNC_13EE_(arg0, arg2, arg3)
		return IsConsumableCountGreaterThanOrEqualTo(arg2, arg1, 100.000000)
	end

	registerVal11.condition = __FUNC_13EE_
	local registerVal12 = {}
	registerVal12.stateName = "Double"
	local function __FUNC_1464_(arg0, arg2, arg3)
		return IsConsumableCountGreaterThanOrEqualTo(arg2, arg1, 10.000000)
	end

	registerVal12.condition = __FUNC_1464_
	registerVal10 = {registerVal11, registerVal12}
	registerVal7:mergeStateConditions(registerVal10)
	local function __FUNC_14DC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:linkToElementModel(registerVal7, "itemIndex", true, __FUNC_14DC_)
	registerVal2:addElement(registerVal7)
	registerVal2.GobbleGumCookbookConsumableCountNumbers = registerVal7
	registerVal8 = {}
	registerVal9 = {}
	local function __FUNC_15FB_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.CookbookRecipeFill:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GobbleGumRecipeIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.CookbookIndicatorCircleTop:setLeftRight(true, false, 259.500000, 267.500000)
		registerVal2.CookbookIndicatorCircleTop:setTopBottom(true, false, 51.500000, 59.500000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Requirements:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.DefaultClip = __FUNC_15FB_
	registerVal8.DefaultState = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_1899_(arg0)
		arg0.CookbookRecipeFill:close()
		arg0.GobbleGumRecipeIcon:close()
		arg0.CookbookIndicatorCircleTop:close()
		arg0.GobbleGumCookbookConsumableCountNumbers:close()
		arg0.Requirements:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1899_)
	if __FUNC_31B_ then
		__FUNC_31B_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.GobbleGumRecipeListItem.new = __FUNC_6B6_
