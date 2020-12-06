-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1C4_(arg0, arg1)
	local function __FUNC_25A_(arg2)
		local registerVal1 = Engine.GetModelValue(arg2)
		if registerVal1 then
			local registerVal2 = ConvertToLootDecalIndexIfDecal(arg1, registerVal1)
			if registerVal2 == registerVal1 then
				arg0.lootImage:setImage(RegisterImage(registerVal1))
			else
				arg0.lootImage:setupDrawDecalById(registerVal2)
			end
		end
	end

	arg0.lootImage:linkToElementModel(arg0, "image", true, __FUNC_25A_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.LootDecryptionImage = registerVal2
local function __FUNC_3A7_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LootDecryptionImage)
	registerVal2.id = "LootDecryptionImage"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 255.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 348.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -104.000000, 104.000000)
	registerVal3:setTopBottom(false, false, -26.000000, 26.000000)
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
	registerVal3:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.lootImage = registerVal3
	local registerVal4 = LUI.UIElement.new()
	registerVal4:setLeftRight(false, false, -112.500000, 112.500000)
	registerVal4:setTopBottom(false, false, -78.000000, 78.000000)
	registerVal4:setAlpha(0.000000)
	local function __FUNC_AEC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setupEmblemByEmblemIndex(GetLootEmblemIndexParams(arg1, registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "emblem", true, __FUNC_AEC_)
	registerVal2:addElement(registerVal4)
	registerVal2.itemImage = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_BBF_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.lootImage:setLeftRight(false, false, -103.750000, 103.750000)
		registerVal2.lootImage:setTopBottom(false, false, -45.000000, 45.000000)
		registerVal2.lootImage:setAlpha(1.000000)
		registerVal2.lootImage:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
		registerVal2.lootImage:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.itemImage:setLeftRight(false, false, -112.500000, 112.500000)
		registerVal2.itemImage:setTopBottom(false, false, -78.000000, 78.000000)
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_BBF_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_EFB_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.lootImage:setLeftRight(false, false, -104.000000, 104.000000)
		registerVal2.lootImage:setTopBottom(false, false, -26.000000, 26.000000)
		registerVal2.lootImage:setAlpha(1.000000)
		registerVal2.lootImage:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
		registerVal2.lootImage:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.itemImage:setLeftRight(false, false, -112.500000, 112.500000)
		registerVal2.itemImage:setTopBottom(false, false, -78.000000, 78.000000)
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_EFB_
	registerVal5.Dimensions4by1 = registerVal6
	registerVal6 = {}
	local function __FUNC_1237_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.lootImage:setLeftRight(false, false, -58.000000, 58.000000)
		registerVal2.lootImage:setTopBottom(false, false, -55.000000, 61.000000)
		registerVal2.lootImage:setAlpha(0.750000)
		registerVal2.lootImage:setScale(0.800000)
		registerVal2.lootImage:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
		registerVal2.lootImage:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.itemImage:setLeftRight(false, false, -112.500000, 112.500000)
		registerVal2.itemImage:setTopBottom(false, false, -78.000000, 78.000000)
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_1237_
	registerVal5.Decal = registerVal6
	registerVal6 = {}
	local function __FUNC_15A6_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.lootImage:setLeftRight(false, false, -78.000000, 78.000000)
		registerVal2.lootImage:setTopBottom(false, false, -86.300000, 86.300000)
		registerVal2.lootImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_15A6_
	registerVal5.EpicTaunt = registerVal6
	registerVal6 = {}
	local function __FUNC_1791_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.lootImage:setLeftRight(false, false, -78.000000, 78.000000)
		registerVal2.lootImage:setTopBottom(false, false, -86.300000, 86.300000)
		registerVal2.lootImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_1791_
	registerVal5.LimitedItem = registerVal6
	registerVal6 = {}
	local function __FUNC_197D_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.lootImage:setLeftRight(false, false, -58.000000, 58.000000)
		registerVal2.lootImage:setTopBottom(false, false, -58.000000, 58.000000)
		registerVal2.lootImage:setAlpha(1.000000)
		registerVal2.lootImage:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
		registerVal2.lootImage:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.itemImage:setLeftRight(false, false, -112.500000, 112.500000)
		registerVal2.itemImage:setTopBottom(false, false, -78.000000, 78.000000)
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_197D_
	registerVal5.Dimensions1by1 = registerVal6
	registerVal6 = {}
	local function __FUNC_1CB1_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.lootImage:setLeftRight(false, false, -140.000000, 140.000000)
		registerVal2.lootImage:setTopBottom(false, false, -35.000000, 35.000000)
		registerVal2.lootImage:setAlpha(0.000000)
		registerVal2.lootImage:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
		registerVal2.lootImage:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.itemImage:setLeftRight(false, false, -77.880000, 77.880000)
		registerVal2.itemImage:setTopBottom(false, false, -54.000000, 54.000000)
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_1CB1_
	registerVal5.Emblem = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Dimensions4by1"
	local function __FUNC_1FEF_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "category", "calling_card")
	end

	registerVal8.condition = __FUNC_1FEF_
	local registerVal9 = {}
	registerVal9.stateName = "Decal"
	local function __FUNC_207D_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "category", "decal")
	end

	registerVal9.condition = __FUNC_207D_
	local registerVal10 = {}
	registerVal10.stateName = "EpicTaunt"
	local function __FUNC_2106_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "category", "taunt")
		if registerVal3 then
			registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "rarity", "epic")
		end
		return registerVal3
	end

	registerVal10.condition = __FUNC_2106_
	local registerVal11 = {}
	registerVal11.stateName = "LimitedItem"
	local function __FUNC_21CC_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "rarity", "limited")
	end

	registerVal11.condition = __FUNC_21CC_
	local registerVal12 = {}
	registerVal12.stateName = "Dimensions1by1"
	local function __FUNC_2256_(arg0, arg2, arg3)
		return IsSelfModelValueEqualToAnyValue5(arg2, arg1, "category", "attachment_variant", "gesture", "taunt", "specialist_outfit", "reticle")
	end

	registerVal12.condition = __FUNC_2256_
	local registerVal13 = {}
	registerVal13.stateName = "Emblem"
	local function __FUNC_2350_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "category", "emblem")
	end

	registerVal13.condition = __FUNC_2350_
	registerVal7 = {registerVal8, registerVal9, registerVal10, registerVal11, registerVal12, registerVal13}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_23DB_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "category"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "category", true, __FUNC_23DB_)
	local function __FUNC_24F6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "rarity"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "rarity", true, __FUNC_24F6_)
	local function __FUNC_2610_(arg0)
		arg0.itemImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2610_)
	if __FUNC_1C4_ then
		__FUNC_1C4_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.LootDecryptionImage.new = __FUNC_3A7_
