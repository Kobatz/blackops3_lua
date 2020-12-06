-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GridItemVariantRender = registerVal1
function CoD.GridItemVariantRender.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GridItemVariantRender)
	registerVal2.id = "GridItemVariantRender"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 108.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 108.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	local function __FUNC_86E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setupWCVariantIconExtraCamRender(GetWeaponVariantExtraCamParameters(arg1, registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "variantIndex", true, __FUNC_86E_)
	registerVal2:addElement(registerVal3)
	registerVal2.itemImageRenderSolid = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	local function __FUNC_951_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setupWCVariantIconExtraCamRender(GetWeaponVariantExtraCamParameters(arg1, registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "variantIndex", true, __FUNC_951_)
	registerVal2:addElement(registerVal4)
	registerVal2.itemImageRender = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.200000)
	local function __FUNC_A35_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setImage(RegisterImage(GetWeaponItemImageFromIndex(registerVal1)))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "weaponItemIndex", true, __FUNC_A35_)
	registerVal2:addElement(registerVal5)
	registerVal2.itemImageSolid = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6:setAlpha(0.800000)
	local function __FUNC_B15_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setImage(RegisterImage(GetWeaponItemImageFromIndex(registerVal1)))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "weaponItemIndex", true, __FUNC_B15_)
	registerVal2:addElement(registerVal6)
	registerVal2.itemImage = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_BF5_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.itemImageRenderSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.itemImageRender:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.itemImageSolid:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_BF5_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_E1A_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.itemImageRenderSolid:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.itemImageRender:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_E1A_
	registerVal7.Render = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Render"
	local function __FUNC_103E_(arg0, arg2, arg3)
		local registerVal3 = IsBaseWeaponVariantIndex(registerVal2, arg2, arg1)
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_103E_
	registerVal9 = {registerVal10}
	registerVal2:mergeStateConditions(registerVal9)
	local function __FUNC_10A6_(arg0)
		arg0.itemImageRenderSolid:close()
		arg0.itemImageRender:close()
		arg0.itemImageSolid:close()
		arg0.itemImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_10A6_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

