-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.GridItemBGBGlow")
require("ui.uieditor.widgets.CAC.GridItemConsumableLabel")
require("ui.uieditor.widgets.CAC.cac_FocusBarContainer")
local function __FUNC_29C_(arg0, arg1, arg2)
	local registerVal3 = CoD.BubbleGumBuffUtility.GetGobbleGumRecipeInfoModel(arg1)
	if registerVal3 then
		local registerVal6 = Engine.CreateModel(registerVal3, "update")
		local function __FUNC_3C3_(arg1)
			local registerVal1 = arg0:getModel()
			if registerVal1 then
				local registerVal2 = arg0:getModel()
				registerVal1 = Engine.GetModel(registerVal2, "itemIndex")
			end
			if registerVal1 then
				Engine.ForceNotifyModelSubscriptions(registerVal1)
			end
		end

		arg0:subscribeToModel(registerVal6, __FUNC_3C3_, false)
	end
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.GobbleGumCookBookIcon = registerVal2
local function __FUNC_4B2_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GobbleGumCookBookIcon)
	registerVal2.id = "GobbleGumCookBookIcon"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 108.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 108.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -69.940000, 69.940000)
	registerVal3:setTopBottom(false, false, -47.000000, 132.330000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setScale(1.200000)
	registerVal3:setImage(RegisterImage("uie_t7_zm_cookbook_gg_shadow"))
	registerVal2:addElement(registerVal3)
	registerVal2.shadow = registerVal3
	local registerVal4 = CoD.GridItemBGBGlow.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -21.000000, 21.000000)
	registerVal4:setTopBottom(true, true, -21.000000, 21.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setScale(0.800000)
	local function __FUNC_EA3_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_EA3_)
	registerVal2:addElement(registerVal4)
	registerVal2.GridItemBGBGlow = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 1.000000, 1.000000)
	registerVal5:setTopBottom(true, true, 2.000000, 2.000000)
	registerVal5:setScale(0.800000)
	registerVal5:setupUIStreamedImage(0.000000)
	local function __FUNC_EF2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "image", true, __FUNC_EF2_)
	registerVal2:addElement(registerVal5)
	registerVal2.itemImage = registerVal5
	local registerVal6 = CoD.GridItemConsumableLabel.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 23.000000, 45.000000)
	registerVal6:setTopBottom(true, true, 7.000000, -83.000000)
	registerVal6:setScale(0.800000)
	local function __FUNC_FA4_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_FA4_)
	local function __FUNC_FF6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.ComsumableCountLabel:setText(Engine.Localize(GetConsumableCountFromIndex(arg1, registerVal1)))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_FF6_)
	registerVal2:addElement(registerVal6)
	registerVal2.ConsumableLabel = registerVal6
	local registerVal7 = CoD.cac_FocusBarContainer.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal7:setTopBottom(true, false, -4.000000, 0.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setZoom(1.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.FocusWhiteT = registerVal7
	local registerVal8 = CoD.cac_FocusBarContainer.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal8:setTopBottom(false, true, 0.000000, 4.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setZoom(1.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.FocusWhiteB = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, -20.000000, 20.000000)
	registerVal9:setTopBottom(false, false, -20.000000, 20.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setImage(RegisterImage("uie_t7_icon_contextual_purchase"))
	registerVal2:addElement(registerVal9)
	registerVal2.dlcDownloadImage = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_1109_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.shadow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GridItemBGBGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.itemImage:setScale(0.800000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal11.DefaultClip = __FUNC_1109_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_12F2_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.shadow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GridItemBGBGlow:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.itemImage:setScale(0.800000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal11.DefaultClip = __FUNC_12F2_
	registerVal10.NoConsumablesRemaining = registerVal11
	registerVal2.clipsPerState = registerVal10
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "NoConsumablesRemaining"
	local function __FUNC_14DA_(arg0, arg2, arg3)
		local registerVal3 = DoesCACItemHaveConsumablesRemaining(arg0, arg2, arg1)
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_14DA_
	registerVal12 = {registerVal13}
	registerVal2:mergeStateConditions(registerVal12)
	local function __FUNC_154D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_154D_)
	local function __FUNC_166B_(arg0)
		arg0.GridItemBGBGlow:close()
		arg0.ConsumableLabel:close()
		arg0.FocusWhiteT:close()
		arg0.FocusWhiteB:close()
		arg0.itemImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_166B_)
	if __FUNC_29C_ then
		__FUNC_29C_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.GobbleGumCookBookIcon.new = __FUNC_4B2_
